@interface AXMTFaceKitXNUResult
- (AXMTFaceKitXNUResult)initWithFaceKitTrackedFaceDictionary:(id)dictionary semanticsDictionary:(id)semanticsDictionary sampleBuffer:(opaqueCMSampleBuffer *)buffer expressions:(id)expressions referenceDimensionsValue:(id)value;
- (CGPoint)projectedPoint;
- (CGRect)boundingBoxInImageCoordinates;
- (CGRect)boundingBoxNormalized;
- (CGSize)referenceDimensions;
- (__n128)setPose:(__n128)pose;
- (id)pointForLandmark:(id)landmark;
@end

@implementation AXMTFaceKitXNUResult

- (AXMTFaceKitXNUResult)initWithFaceKitTrackedFaceDictionary:(id)dictionary semanticsDictionary:(id)semanticsDictionary sampleBuffer:(opaqueCMSampleBuffer *)buffer expressions:(id)expressions referenceDimensionsValue:(id)value
{
  dictionaryCopy = dictionary;
  semanticsDictionaryCopy = semanticsDictionary;
  expressionsCopy = expressions;
  valueCopy = value;
  v52.receiver = self;
  v52.super_class = AXMTFaceKitXNUResult;
  v16 = [(AXMTFaceKitXNUResult *)&v52 init];
  if (v16)
  {
    v17 = [expressionsCopy copy];
    v18 = *(v16 + 7);
    *(v16 + 7) = v17;

    if (valueCopy)
    {
      [valueCopy sizeValue];
      *(v16 + 10) = v19;
      *(v16 + 11) = v20;
    }

    v16[32] = 0;
    v21 = [dictionaryCopy objectForKeyedSubscript:sub_100025EC4()];
    v22 = v21;
    if (dictionaryCopy)
    {
      size = NSZeroRect.size;
      rect.origin = NSZeroRect.origin;
      rect.size = size;
      if (!CGRectMakeWithDictionaryRepresentation(v21, &rect))
      {

        v48 = 0;
        goto LABEL_19;
      }

      v24 = rect.size;
      *(v16 + 9) = rect.origin;
      *(v16 + 10) = v24;
      if (buffer)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
        if (ImageBuffer)
        {
          v26 = ImageBuffer;
          Width = CVPixelBufferGetWidth(ImageBuffer);
          Height = CVPixelBufferGetHeight(v26);
          [v16 setImageSize:{Width, Height}];
          rect.origin.x = rect.origin.x * Width;
          rect.origin.y = (1.0 - rect.origin.y - rect.size.height) * Height;
          rect.size.width = rect.size.width * Width;
          rect.size.height = rect.size.height * Height;
          [v16 setBoundingBoxInImageCoordinates:?];
        }
      }
    }

    v50 = v22;
    v29 = [dictionaryCopy objectForKeyedSubscript:sub_1000230A0()];
    v30 = [v29 objectForKeyedSubscript:sub_100027528()];

    v31 = [v30 objectForKeyedSubscript:sub_100025A00()];
    v32 = [v30 objectForKeyedSubscript:sub_100025AF4()];
    if (v32)
    {
      [objc_opt_class() _poseTranslationMatrixFromArray:v32];
      *(v16 + 4) = v33;
    }

    [v16 _calculatePoseWithRotation:v31 translation:v32];
    v34 = (v16 + 176);
    *(v16 + 11) = v35;
    *(v16 + 12) = v36;
    *(v16 + 13) = v37;
    *(v16 + 14) = v38;
    if (qword_100054678 != -1)
    {
      sub_1000293D0();
    }

    if (dword_100054670 >= 1)
    {
      [v16 _rotatePose:*v34 forCameraSensorRotation:{*(v16 + 24), *(v16 + 26), *(v16 + 28)}];
      *v34 = v39;
      *(v16 + 12) = v40;
      *(v16 + 13) = v41;
      *(v16 + 14) = v42;
    }

    if (semanticsDictionaryCopy)
    {
      v43 = [semanticsDictionaryCopy copy];
      v44 = *(v16 + 6);
      *(v16 + 6) = v43;
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:sub_100025DD0()];
    [objc_opt_class() _projectZAxisVectorUsingRGBCameraDictionary:v45 pose:{*v34, *(v16 + 24), *(v16 + 26), *(v16 + 28)}];
    *(v16 + 12) = v46;
    *(v16 + 13) = v47;
  }

  v48 = v16;
LABEL_19:

  return v48;
}

- (id)pointForLandmark:(id)landmark
{
  landmarkCopy = landmark;
  semanticsDictionary = [(AXMTFaceKitXNUResult *)self semanticsDictionary];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v6 = qword_100054800;
  v20 = qword_100054800;
  if (!qword_100054800)
  {
    v7 = sub_100027DF8();
    v18[3] = dlsym(v7, "kCVAFaceTracking_LandmarkNames");
    qword_100054800 = v18[3];
    v6 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v6)
  {
    v16 = sub_100029794();
    _Block_object_dispose(&v17, 8);
    _Unwind_Resume(v16);
  }

  v8 = [semanticsDictionary objectForKeyedSubscript:*v6];

  if ([v8 count] && objc_msgSend(v8, "containsObject:", landmarkCopy) && (v9 = objc_msgSend(v8, "indexOfObject:", landmarkCopy), v9 != 0x7FFFFFFFFFFFFFFFLL) && (v10 = v9, -[AXMTFaceKitXNUResult landmarkPointsInImageCoordinates](self, "landmarkPointsInImageCoordinates"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10 < v12))
  {
    landmarkPointsInImageCoordinates = [(AXMTFaceKitXNUResult *)self landmarkPointsInImageCoordinates];
    v14 = [landmarkPointsInImageCoordinates objectAtIndexedSubscript:v10];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGRect)boundingBoxInImageCoordinates
{
  x = self->_boundingBoxInImageCoordinates.origin.x;
  y = self->_boundingBoxInImageCoordinates.origin.y;
  width = self->_boundingBoxInImageCoordinates.size.width;
  height = self->_boundingBoxInImageCoordinates.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)boundingBoxNormalized
{
  x = self->_boundingBoxNormalized.origin.x;
  y = self->_boundingBoxNormalized.origin.y;
  width = self->_boundingBoxNormalized.size.width;
  height = self->_boundingBoxNormalized.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (__n128)setPose:(__n128)pose
{
  result[11] = a2;
  result[12] = pose;
  result[13] = a4;
  result[14] = a5;
  return result;
}

- (CGSize)referenceDimensions
{
  width = self->_referenceDimensions.width;
  height = self->_referenceDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)projectedPoint
{
  x = self->_projectedPoint.x;
  y = self->_projectedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end