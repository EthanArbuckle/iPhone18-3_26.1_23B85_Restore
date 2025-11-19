@interface NTKUltraCubeSegmentationGenerator
+ (id)segmentationFromImageSource:(id)a3 faceRects:(id)a4 orientation:(unsigned int)a5;
- (NTKUltraCubeSegmentationGenerator)init;
- (id)_classifyImage;
- (id)_computeSegmentationAuxiliaryDictionary;
- (id)_computeSegmentationForImageRequestHandler:(id)a3 ofQuality:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 releaseCachedResources:(BOOL)a7;
- (id)_computeThresholdAuxiliaryDictionaryIfEnabled;
- (id)_createThresholdSegmentationFromDisparityData:(id)a3;
- (id)_extractDisparityData;
- (id)_extractPortraitEffectsMatteIfSupported;
- (id)_retrieveAuxiliaryDictionary;
- (id)segmentationFromImageSource:(id)a3 faceRects:(id)a4 orientation:(unsigned int)a5;
- (unint64_t)_identifySegmentationType;
@end

@implementation NTKUltraCubeSegmentationGenerator

+ (id)segmentationFromImageSource:(id)a3 faceRects:(id)a4 orientation:(unsigned int)a5
{
  v5 = *&a5;
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(NTKUltraCubeSegmentationGenerator);
  v10 = [(NTKUltraCubeSegmentationGenerator *)v9 segmentationFromImageSource:v8 faceRects:v7 orientation:v5];

  return v10;
}

- (NTKUltraCubeSegmentationGenerator)init
{
  v12.receiver = self;
  v12.super_class = NTKUltraCubeSegmentationGenerator;
  v2 = [(NTKUltraCubeSegmentationGenerator *)&v12 init];
  if (v2)
  {
    v3 = [NSSet setWithArray:&off_4B4B0];
    personIdentifiers = v2->_personIdentifiers;
    v2->_personIdentifiers = v3;

    v5 = [NSSet setWithArray:&off_4B4C8];
    animalIdentifiers = v2->_animalIdentifiers;
    v2->_animalIdentifiers = v5;

    v7 = [NSSet setWithArray:&off_4B4E0];
    cityscapeIdentifiers = v2->_cityscapeIdentifiers;
    v2->_cityscapeIdentifiers = v7;

    v9 = [NSSet setWithArray:&off_4B4F8];
    landscapeIdentifiers = v2->_landscapeIdentifiers;
    v2->_landscapeIdentifiers = v9;
  }

  return v2;
}

- (id)segmentationFromImageSource:(id)a3 faceRects:(id)a4 orientation:(unsigned int)a5
{
  v9 = a3;
  v10 = a4;
  objc_storeStrong(&self->_imageSource, a3);
  objc_storeStrong(&self->_faceRects, a4);
  self->_orientation = a5;
  self->_identifiedType = [(NTKUltraCubeSegmentationGenerator *)self _identifySegmentationType];
  v11 = objc_autoreleasePoolPush();
  v12 = [(NTKUltraCubeSegmentationGenerator *)self _retrieveAuxiliaryDictionary];
  faceRects = self->_faceRects;
  self->_faceRects = 0;

  self->_orientation = 1;
  v14 = +[VNSession globalSession];
  [v14 releaseCachedResources];

  objc_autoreleasePoolPop(v11);
  v15 = [[NTKUltraCubeSegmentation alloc] initWithType:self->_identifiedType dictionary:v12];

  return v15;
}

- (id)_retrieveAuxiliaryDictionary
{
  identifiedType = self->_identifiedType;
  v4 = _NTKLoggingObjectForDomain();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (identifiedType)
  {
    if (v5)
    {
      v15 = 136315138;
      v16 = "[NTKUltraCubeSegmentationGenerator _retrieveAuxiliaryDictionary]";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s: check if data contains portrait effects matte", &v15, 0xCu);
    }

    v6 = [(NTKUltraCubeSegmentationGenerator *)self _extractPortraitEffectsMatteIfSupported];
    v4 = v6;
    if (v6)
    {
      self->_identifiedType = 1;
      v4 = v6;
      v7 = v4;
    }

    else
    {
      v8 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = "[NTKUltraCubeSegmentationGenerator _retrieveAuxiliaryDictionary]";
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%s: no existing matte data; try to compute our own segmentation data", &v15, 0xCu);
      }

      v9 = [(NTKUltraCubeSegmentationGenerator *)self _computeSegmentationAuxiliaryDictionary];
      v10 = _NTKLoggingObjectForDomain();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          v15 = 136315138;
          v16 = "[NTKUltraCubeSegmentationGenerator _retrieveAuxiliaryDictionary]";
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s: successfully computed segmentation data", &v15, 0xCu);
        }

        v7 = v9;
      }

      else
      {
        if (v11)
        {
          v15 = 136315138;
          v16 = "[NTKUltraCubeSegmentationGenerator _retrieveAuxiliaryDictionary]";
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s: failed to compute segmentation data; try computing threshold segmentation, if enabled", &v15, 0xCu);
        }

        v12 = [(NTKUltraCubeSegmentationGenerator *)self _computeThresholdAuxiliaryDictionaryIfEnabled];
        v7 = v12;
        if (v12)
        {
          v13 = v12;
        }
      }
    }
  }

  else
  {
    if (v5)
    {
      v15 = 136315138;
      v16 = "[NTKUltraCubeSegmentationGenerator _retrieveAuxiliaryDictionary]";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s: segmentation type is 'None', do not try to compute segmentation", &v15, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (unint64_t)_identifySegmentationType
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[NTKUltraCubeSegmentationGenerator _identifySegmentationType]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s: attempting to identify segmentation type for image", &v9, 0xCu);
  }

  if ([(NSArray *)self->_faceRects count])
  {
    return 1;
  }

  v5 = [(NTKUltraCubeSegmentationGenerator *)self _classifyImage];
  if ([v5 hasPeople])
  {
    v4 = 1;
  }

  else if ([v5 hasAnimal])
  {
    v4 = 2;
  }

  else if (([v5 hasCityscape] & 1) != 0 || objc_msgSend(v5, "hasNature"))
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringForSegmentationType(v4);
    v9 = 136315394;
    v10 = "[NTKUltraCubeSegmentationGenerator _identifySegmentationType]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s: identified the segmentation type: %@", &v9, 0x16u);
  }

  return v4;
}

- (id)_classifyImage
{
  v3 = objc_opt_new();
  v4 = objc_autoreleasePoolPush();
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v52 = "[NTKUltraCubeSegmentationGenerator _classifyImage]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s: attempting to classify image", buf, 0xCu);
  }

  v6 = [(NTKImageSource *)self->_imageSource CreateCGImageWithSubsampleFactor:1];
  if (v6)
  {
    v7 = v6;
    v8 = [[VNImageRequestHandler alloc] initWithCGImage:v6 orientation:self->_orientation options:&__NSDictionary0__struct];
    CGImageRelease(v7);
    v9 = objc_alloc_init(VNClassifyImageRequest);
    [v9 setMaximumHierarchicalObservations:10];
    [v9 setMaximumLeafObservations:10];
    v55 = v9;
    v10 = [NSArray arrayWithObjects:&v55 count:1];
    v49 = 0;
    v11 = [v8 performRequests:v10 error:&v49];
    v12 = v49;

    if (v11)
    {
      if (!v12)
      {
        v43 = v8;
        v44 = v4;
        v19 = [v9 results];
        v20 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v19 count];
          *buf = 136315394;
          v52 = "[NTKUltraCubeSegmentationGenerator _classifyImage]";
          v53 = 2048;
          v54 = v21;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%s: successful VNClassifyImageRequest; returned (%ld) results", buf, 0x16u);
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v13 = v19;
        v22 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v46;
          while (2)
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v46 != v24)
              {
                objc_enumerationMutation(v13);
              }

              v26 = *(*(&v45 + 1) + 8 * i);
              [v26 confidence];
              if (v27 < 0.5)
              {
                v40 = _NTKLoggingObjectForDomain();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v52 = "[NTKUltraCubeSegmentationGenerator _classifyImage]";
                  _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%s: classification observation confidence lower than threshold", buf, 0xCu);
                }

                goto LABEL_44;
              }

              personIdentifiers = self->_personIdentifiers;
              v29 = [v26 identifier];
              LODWORD(personIdentifiers) = [(NSSet *)personIdentifiers containsObject:v29];

              if (personIdentifiers)
              {
                v30 = _NTKLoggingObjectForDomain();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v52 = "[NTKUltraCubeSegmentationGenerator _classifyImage]";
                  _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%s: identified person", buf, 0xCu);
                }

                [v3 setHasPeople:1];
              }

              else
              {
                animalIdentifiers = self->_animalIdentifiers;
                v32 = [v26 identifier];
                LODWORD(animalIdentifiers) = [(NSSet *)animalIdentifiers containsObject:v32];

                if (animalIdentifiers)
                {
                  v33 = _NTKLoggingObjectForDomain();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    v52 = "[NTKUltraCubeSegmentationGenerator _classifyImage]";
                    _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%s: identified animal", buf, 0xCu);
                  }

                  [v3 setHasAnimal:1];
                }

                else
                {
                  cityscapeIdentifiers = self->_cityscapeIdentifiers;
                  v35 = [v26 identifier];
                  LODWORD(cityscapeIdentifiers) = [(NSSet *)cityscapeIdentifiers containsObject:v35];

                  if (cityscapeIdentifiers)
                  {
                    v36 = _NTKLoggingObjectForDomain();
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v52 = "[NTKUltraCubeSegmentationGenerator _classifyImage]";
                      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%s: identified cityscape", buf, 0xCu);
                    }

                    [v3 setHasCityscape:1];
                  }

                  else
                  {
                    landscapeIdentifiers = self->_landscapeIdentifiers;
                    v38 = [v26 identifier];
                    LODWORD(landscapeIdentifiers) = [(NSSet *)landscapeIdentifiers containsObject:v38];

                    if (landscapeIdentifiers)
                    {
                      v39 = _NTKLoggingObjectForDomain();
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315138;
                        v52 = "[NTKUltraCubeSegmentationGenerator _classifyImage]";
                        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%s: identified nature", buf, 0xCu);
                      }

                      [v3 setHasNature:1];
                    }
                  }
                }
              }
            }

            v23 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_44:

        v8 = v43;
        v4 = v44;
        v12 = 0;
        goto LABEL_45;
      }

      v13 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v52 = "[NTKUltraCubeSegmentationGenerator _classifyImage]";
        v53 = 2114;
        v54 = v12;
        v14 = "%s: failed to perform VNClassifyImageRequest: %{public}@";
        v15 = v13;
        v16 = 22;
LABEL_13:
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }

    else
    {
      v13 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v52 = "[NTKUltraCubeSegmentationGenerator _classifyImage]";
        v14 = "%s: Failed to perform VNClassifyImageRequest";
        v15 = v13;
        v16 = 12;
        goto LABEL_13;
      }
    }

LABEL_45:

    v41 = v3;
    goto LABEL_46;
  }

  v17 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v52 = "[NTKUltraCubeSegmentationGenerator _classifyImage]";
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%s: Failed to create image for classification", buf, 0xCu);
  }

  v18 = v3;
LABEL_46:
  objc_autoreleasePoolPop(v4);

  return v3;
}

- (id)_extractDisparityData
{
  imageSource = self->_imageSource;
  if (imageSource)
  {
    imageSource = CGImageSourceCopyAuxiliaryDataInfoAtIndex([imageSource CGImageSource], 0, kCGImageAuxiliaryDataTypeDisparity);
    v2 = vars8;
  }

  return imageSource;
}

- (id)_extractPortraitEffectsMatteIfSupported
{
  if ([(NSArray *)self->_faceRects count]&& self->_imageSource)
  {
    v3 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NTKUltraCubeSegmentationGenerator _extractPortraitEffectsMatteIfSupported]";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s: yes face rects; look for PortraitEffectsMatte in the image data", &v7, 0xCu);
    }

    v4 = CGImageSourceCopyAuxiliaryDataInfoAtIndex([(NTKImageSource *)self->_imageSource CGImageSource], 0, kCGImageAuxiliaryDataTypePortraitEffectsMatte);
    if (v4)
    {
      v5 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[NTKUltraCubeSegmentationGenerator _extractPortraitEffectsMatteIfSupported]";
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s: found PortraitEffectsMatte in image data, no computation needed", &v7, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_computeSegmentationAuxiliaryDictionary
{
  v3 = [(NTKImageSource *)self->_imageSource CreateCGImageWithSubsampleFactor:2];
  if (v3)
  {
    v4 = v3;
    v5 = [[VNImageRequestHandler alloc] initWithCGImage:v3 orientation:self->_orientation options:&__NSDictionary0__struct];
    Width = CGImageGetWidth(v4);
    Height = CGImageGetHeight(v4);
    CGImageRelease(v4);
    v8 = [(NTKUltraCubeSegmentationGenerator *)self _computeSegmentationForImageRequestHandler:v5 ofQuality:0 width:Width height:Height releaseCachedResources:0];
    if ([NTKUltraCubeSegmentationValidator isAuxiliaryDictionarySegmentationValid:v8])
    {
      v9 = [(NTKUltraCubeSegmentationGenerator *)self _computeSegmentationForImageRequestHandler:v5 ofQuality:1 width:Width height:Height releaseCachedResources:1];

      v8 = v9;
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_computeSegmentationForImageRequestHandler:(id)a3 ofQuality:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 releaseCachedResources:(BOOL)a7
{
  v45 = 0;
  v44 = 0;
  v12 = a3;
  v13 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringForSegmentationType(self->_identifiedType);
    *buf = 136315394;
    v51 = "[NTKUltraCubeSegmentationGenerator _computeSegmentationForImageRequestHandler:ofQuality:width:height:releaseCachedResources:]";
    v52 = 2112;
    v53 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%s: created CGImageRef; compute segementation of type %@", buf, 0x16u);
  }

  identifiedType = self->_identifiedType;
  orientation = self->_orientation;
  v43 = 0;
  v17 = NTKUltraCubeComputeSegmentation(v12, identifiedType, a4, a5, a6, orientation, &v43, &v45 + 1, &v45, &v44, a7);

  v18 = v43;
  v19 = v18;
  if (v17)
  {
    v42 = 0;
    v41 = 0;
    v20 = self->_orientation;
    v22 = v45;
    v21 = HIDWORD(v45);
    v23 = v44;
    v40 = 0;
    v24 = v18;
    v25 = v24;
    if (v20 == 1)
    {
      v26 = v24;
      v40 = v25;
      v42 = __PAIR64__(v21, v22);
      v41 = v23;
    }

    else
    {
      v29 = CGColorSpaceCreateWithName(kCGColorSpaceGenericGray);
      v30 = CGDataProviderCreateWithCFData(v25);
      v31 = CGImageCreate(v21, v22, 8uLL, 8uLL, v23, v29, 0, v30, 0, 1, kCGRenderingIntentDefault);
      CGDataProviderRelease(v30);
      CGColorSpaceRelease(v29);
      v32 = NTKCGImagePropertyOrientationToUIImageOrientation();
      sub_19524(v31, 0, v32, &v40, &v42 + 1, &v42, &v41);
      CGImageRelease(v31);
    }

    v27 = v40;
    v33 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v27 length];
      *buf = 136316162;
      v51 = "[NTKUltraCubeSegmentationGenerator _computeSegmentationForImageRequestHandler:ofQuality:width:height:releaseCachedResources:]";
      v52 = 2048;
      v53 = v34;
      v54 = 2048;
      v55 = SHIDWORD(v42);
      v56 = 2048;
      v57 = v42;
      v58 = 2048;
      v59 = v41;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%s: computing MatteAuxilaryDictionary succeeded: %ld bytes, (%ldx%ld) bpr=%ld)", buf, 0x34u);
    }

    v48[0] = kCGImagePropertyWidth;
    v35 = [NSNumber numberWithInt:HIDWORD(v42)];
    v49[0] = v35;
    v48[1] = kCGImagePropertyHeight;
    v36 = [NSNumber numberWithInt:v42];
    v49[1] = v36;
    v48[2] = kCGImagePropertyBytesPerRow;
    v37 = [NSNumber numberWithInt:v41];
    v48[3] = kCGImagePropertyPixelFormat;
    v49[2] = v37;
    v49[3] = &off_4B6D8;
    v38 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:4];

    v46[0] = kCGImageAuxiliaryDataInfoData;
    v46[1] = kCGImageAuxiliaryDataInfoDataDescription;
    v47[0] = v27;
    v47[1] = v38;
    v28 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
  }

  else
  {
    v27 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v51 = "[NTKUltraCubeSegmentationGenerator _computeSegmentationForImageRequestHandler:ofQuality:width:height:releaseCachedResources:]";
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%s: computing MatteAuxilaryDictionary failed", buf, 0xCu);
    }

    v28 = 0;
  }

  return v28;
}

- (id)_computeThresholdAuxiliaryDictionaryIfEnabled
{
  v3 = _os_feature_enabled_impl();
  v4 = _NTKLoggingObjectForDomain();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v5)
    {
      v10 = 136315138;
      v11 = "[NTKUltraCubeSegmentationGenerator _computeThresholdAuxiliaryDictionaryIfEnabled]";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s: compute threshold segmentation disabled; aborting", &v10, 0xCu);
    }

    goto LABEL_13;
  }

  if (v5)
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "compute threshold segmentation enabled; look for disparity data", &v10, 2u);
  }

  v4 = [(NTKUltraCubeSegmentationGenerator *)self _extractDisparityData];
  v6 = _NTKLoggingObjectForDomain();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (v7)
    {
      v10 = 136315138;
      v11 = "[NTKUltraCubeSegmentationGenerator _computeThresholdAuxiliaryDictionaryIfEnabled]";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s: no disparity data; no point trying to compute threshold segmentation", &v10, 0xCu);
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (v7)
  {
    v10 = 136315138;
    v11 = "[NTKUltraCubeSegmentationGenerator _computeThresholdAuxiliaryDictionaryIfEnabled]";
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s: yes disparity data; compute threshold enabled; attempt to compute threshold segmentation", &v10, 0xCu);
  }

  v8 = [(NTKUltraCubeSegmentationGenerator *)self _createThresholdSegmentationFromDisparityData:v4];
LABEL_14:

  return v8;
}

- (id)_createThresholdSegmentationFromDisparityData:(id)a3
{
  v4 = a3;
  v5 = [(NTKImageSource *)self->_imageSource CreateCGImageWithSubsampleFactor:1];
  if (v5)
  {
    v6 = v5;
    v21 = 0;
    v20 = 0;
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[NTKUltraCubeSegmentationGenerator _createThresholdSegmentationFromDisparityData:]";
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s: start computing threshold segementation", buf, 0xCu);
    }

    orientation = self->_orientation;
    v19 = 0;
    v9 = NTKUltraCubeComputeThresholdSegmentation(v6, orientation, v4, &v19, &v21 + 1, &v21, &v20);
    v10 = v19;
    v11 = _NTKLoggingObjectForDomain();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        v13 = [v10 length];
        *buf = 136316162;
        v27 = "[NTKUltraCubeSegmentationGenerator _createThresholdSegmentationFromDisparityData:]";
        v28 = 2048;
        v29 = v13;
        v30 = 2048;
        v31 = SHIDWORD(v21);
        v32 = 2048;
        v33 = v21;
        v34 = 2048;
        v35 = v20;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%s: computing MatteAuxilaryDictionary succeeded: %ld bytes, (%ldx%ld) bpr=%ld)", buf, 0x34u);
      }

      v24[0] = kCGImagePropertyWidth;
      v14 = [NSNumber numberWithInt:HIDWORD(v21)];
      v25[0] = v14;
      v24[1] = kCGImagePropertyHeight;
      v15 = [NSNumber numberWithInt:v21];
      v25[1] = v15;
      v24[2] = kCGImagePropertyBytesPerRow;
      v16 = [NSNumber numberWithInt:v20];
      v25[2] = v16;
      v25[3] = &off_4B6D8;
      v24[3] = kCGImagePropertyPixelFormat;
      v24[4] = @"NTKImageAuxiliaryThresholdSegmentation";
      v25[4] = &__kCFBooleanTrue;
      v11 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:5];

      v22[0] = kCGImageAuxiliaryDataInfoData;
      v22[1] = kCGImageAuxiliaryDataInfoDataDescription;
      v23[0] = v10;
      v23[1] = v11;
      v17 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    }

    else
    {
      if (v12)
      {
        *buf = 136315138;
        v27 = "[NTKUltraCubeSegmentationGenerator _createThresholdSegmentationFromDisparityData:]";
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%s: computing MatteAuxilaryDictionary failed", buf, 0xCu);
      }

      v17 = 0;
    }

    CGImageRelease(v6);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end