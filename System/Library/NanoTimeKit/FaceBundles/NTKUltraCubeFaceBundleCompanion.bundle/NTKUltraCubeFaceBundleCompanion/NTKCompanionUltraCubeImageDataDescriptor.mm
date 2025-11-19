@interface NTKCompanionUltraCubeImageDataDescriptor
- (BOOL)_initDataAndOrientationFromAsset;
- (BOOL)_initFaceRectsByComputing;
- (BOOL)_initFaceRectsFromAsset;
- (CGSize)presentationSize;
- (CGSize)storedSize;
- (NTKCompanionUltraCubeImageDataDescriptor)initWithAsset:(id)a3;
- (NTKImageSource)imageSource;
- (NTKUltraCubeSegmentation)segmentation;
- (void)_loadFaceRegions;
@end

@implementation NTKCompanionUltraCubeImageDataDescriptor

- (NTKCompanionUltraCubeImageDataDescriptor)initWithAsset:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = NTKCompanionUltraCubeImageDataDescriptor;
  v6 = [(NTKCompanionUltraCubeImageDataDescriptor *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, a3);
    data = v7->_data;
    v7->_data = 0;

    v7->_orientation = 1;
    v9 = CGSizeZero;
    v7->_storedSize = CGSizeZero;
    v10 = *&CGAffineTransformIdentity.a;
    v11 = *&CGAffineTransformIdentity.c;
    *&v7->_presentationTransform.a = *&CGAffineTransformIdentity.a;
    *&v7->_presentationTransform.c = v11;
    v12 = *&CGAffineTransformIdentity.tx;
    *&v7->_presentationTransform.tx = v12;
    *&v7->_normalizedPresentationTransform.a = v10;
    *&v7->_normalizedPresentationTransform.c = v11;
    *&v7->_normalizedPresentationTransform.tx = v12;
    v7->_presentationSize = v9;
    faceRects = v7->_faceRects;
    v7->_faceRects = &__NSArray0__struct;

    v7->_valid = 0;
    if ([(NTKCompanionUltraCubeImageDataDescriptor *)v7 _initDataAndOrientationFromAsset])
    {
      v14 = [v5 pixelWidth];
      v15 = [v5 pixelHeight];
      v7->_presentationSize.width = v14;
      v7->_presentationSize.height = v15;
      sub_19478();
      v7->_storedSize.width = v16;
      v7->_storedSize.height = v17;
      NTKCGImagePropertyOrientationToUIImageOrientation();
      NTKImagePresentationTransform();
      v18 = *&buf[16];
      *&v7->_presentationTransform.a = *buf;
      *&v7->_presentationTransform.c = v18;
      *&v7->_presentationTransform.tx = v25;
      NTKImagePresentationTransform();
      v19 = *&buf[16];
      *&v7->_normalizedPresentationTransform.a = *buf;
      *&v7->_normalizedPresentationTransform.c = v19;
      *&v7->_normalizedPresentationTransform.tx = v25;
      [(NTKCompanionUltraCubeImageDataDescriptor *)v7 _loadFaceRegions];
      v7->_valid = 1;
    }

    else
    {
      v20 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(PHAsset *)v7->_asset localIdentifier];
        *buf = 136315394;
        *&buf[4] = "[NTKCompanionUltraCubeImageDataDescriptor initWithAsset:]";
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%s: Cannot read image data from asset %@", buf, 0x16u);
      }
    }
  }

  return v7;
}

- (NTKUltraCubeSegmentation)segmentation
{
  segmentation = self->_segmentation;
  if (!segmentation)
  {
    v4 = [(NTKCompanionUltraCubeImageDataDescriptor *)self imageSource];
    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = v4;
    v6 = [NTKUltraCubeSegmentationGenerator segmentationFromImageSource:v4 faceRects:self->_faceRects orientation:self->_orientation];
    v7 = self->_segmentation;
    self->_segmentation = v6;

    segmentation = self->_segmentation;
  }

  v4 = segmentation;
LABEL_5:

  return v4;
}

- (BOOL)_initDataAndOrientationFromAsset
{
  v3 = objc_alloc_init(PHImageRequestOptions);
  [v3 setVersion:0];
  [v3 setDeliveryMode:1];
  [v3 setNetworkAccessAllowed:1];
  [v3 setSynchronous:1];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_579C;
  v31 = sub_57AC;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_579C;
  v21 = sub_57AC;
  v22 = 0;
  v4 = +[PHImageManager defaultManager];
  asset = self->_asset;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_57B4;
  v16[3] = &unk_48D38;
  v16[4] = self;
  v16[5] = &v17;
  v16[6] = &v27;
  v16[7] = &v23;
  [v4 requestImageDataAndOrientationForAsset:asset options:v3 resultHandler:v16];

  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(PHAsset *)self->_asset localIdentifier];
    v8 = [v28[5] length];
    v9 = [PHAsset originalUniformTypeIdentifierForAsset:self->_asset];
    *buf = 136315906;
    v34 = "[NTKCompanionUltraCubeImageDataDescriptor _initDataAndOrientationFromAsset]";
    v35 = 2112;
    v36 = v7;
    v37 = 2048;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s: f == %@, size == %ld bytes, type == %@", buf, 0x2Au);
  }

  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(PHAsset *)self->_asset pixelWidth];
    v12 = [(PHAsset *)self->_asset pixelHeight];
    v13 = *(v24 + 6);
    *buf = 134218496;
    v34 = v11;
    v35 = 2048;
    v36 = v12;
    v37 = 2048;
    v38 = v13;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "w == %ld, h == %ld, o == %ld", buf, 0x20u);
  }

  objc_storeStrong(&self->_data, v28[5]);
  self->_orientation = *(v24 + 6);
  v14 = v18[5] == 0;
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

- (void)_loadFaceRegions
{
  if (![(NTKCompanionUltraCubeImageDataDescriptor *)self _initFaceRectsFromAsset]&& ![(NTKCompanionUltraCubeImageDataDescriptor *)self _initFaceRectsByComputing])
  {
    v3 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(PHAsset *)self->_asset localIdentifier];
      v5 = 136315394;
      v6 = "[NTKCompanionUltraCubeImageDataDescriptor _loadFaceRegions]";
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s: No face data in asset %@", &v5, 0x16u);
    }
  }
}

- (BOOL)_initFaceRectsFromAsset
{
  v3 = [PHFace fetchFacesInAsset:self->_asset options:0];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  height = self->_presentationSize.height;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    v36 = 0x8200502uLL;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        [v9 size];
        width = self->_presentationSize.width;
        if (width < self->_presentationSize.height)
        {
          width = self->_presentationSize.height;
        }

        v12 = v10 * width;
        [v9 centerX];
        v14 = fmax(v12 * -0.5 + v13 * self->_presentationSize.width, 0.0);
        [v9 centerY];
        v15 = self->_presentationSize.width;
        v16 = self->_presentationSize.height;
        v18 = fmax(v12 * -0.5 + v17 * v16, 0.0);
        if (v12 >= v15 - v14)
        {
          v19 = v15 - v14;
        }

        else
        {
          v19 = v12;
        }

        *v43 = 0x3FF0000000000000;
        *&v43[8] = 0;
        *&v43[16] = 0;
        if (v12 >= v16 - v18)
        {
          v20 = v16 - v18;
        }

        else
        {
          v20 = v12;
        }

        *&v43[24] = xmmword_42BF0;
        *&v43[40] = height;
        v21 = v14;
        v45 = CGRectApplyAffineTransform(*(&v18 - 1), v43);
        x = v45.origin.x;
        y = v45.origin.y;
        v24 = v45.size.width;
        v25 = v45.size.height;
        *&v45.origin.x = v15;
        *&v45.origin.y = v16;
        CGAffineTransformMakeScale(v43, (1.0 / *&v45.origin.x), (1.0 / *&v45.origin.y));
        v46.origin.x = x;
        v46.origin.y = y;
        v46.size.width = v24;
        v46.size.height = v25;
        v47 = CGRectApplyAffineTransform(v46, v43);
        v26 = v47.origin.x;
        v27 = v47.origin.y;
        v28 = v47.size.width;
        v29 = v47.size.height;
        v30 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = v36;
          *&v43[4] = "[NTKCompanionUltraCubeImageDataDescriptor _initFaceRectsFromAsset]";
          *&v43[12] = 2048;
          *&v43[14] = v26;
          *&v43[22] = 2048;
          *&v43[24] = v27;
          *&v43[32] = 2048;
          *&v43[34] = v28;
          *&v43[42] = 2048;
          *&v43[44] = v29;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%s: { %.2f, %.2f, %.2f, %.2f }", v43, 0x34u);
        }

        v31 = [NSValue valueWithRect:v26, v27, v28, v29];
        [v4 addObject:v31];
      }

      v6 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v32 = v4;
    p_super = &self->_faceRects->super;
    self->_faceRects = v32;
  }

  else
  {
    p_super = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *v43 = 136315138;
      *&v43[4] = "[NTKCompanionUltraCubeImageDataDescriptor _initFaceRectsFromAsset]";
      _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_DEFAULT, "%s: No PHFace data in asset", v43, 0xCu);
    }
  }

  v34 = [v4 count] != 0;
  return v34;
}

- (BOOL)_initFaceRectsByComputing
{
  v3 = [(NTKCompanionUltraCubeImageDataDescriptor *)self imageSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 CreateCGImageWithSubsampleFactor:1];
    v6 = v5;
    if (v5)
    {
      v7 = NTKUltraCubeComputeFaceRectsForCGImage(v5, self->_orientation);
      if ([v7 count])
      {
        objc_storeStrong(&self->_faceRects, v7);
      }

      else
      {
        v8 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315138;
          v11 = "[NTKCompanionUltraCubeImageDataDescriptor _initFaceRectsByComputing]";
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%s: No face rectangles in image data", &v10, 0xCu);
        }
      }

      CGImageRelease(v6);
      LOBYTE(v6) = [v7 count] != 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (NTKImageSource)imageSource
{
  imageSource = self->_imageSource;
  if (!imageSource)
  {
    v4 = [NTKImageSource imageSourceWithData:self->_data];
    v5 = self->_imageSource;
    self->_imageSource = v4;

    imageSource = self->_imageSource;
  }

  return imageSource;
}

- (CGSize)storedSize
{
  objc_copyStruct(v4, &self->_storedSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)presentationSize
{
  objc_copyStruct(v4, &self->_presentationSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end