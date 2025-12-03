@interface AVTFaceTrackingInfo
+ (id)dataWithARFrame:(id)frame captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation;
+ (id)trackingInfoWithARFrame:(id)frame worldAlignment:(int64_t)alignment captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation constrainHeadPose:(BOOL)pose;
+ (id)trackingInfoWithTrackingData:(id *)data;
- (__n128)rawTransform;
@end

@implementation AVTFaceTrackingInfo

- (__n128)rawTransform
{
  result = *(self + 496);
  v2 = *(self + 512);
  v3 = *(self + 528);
  v4 = *(self + 544);
  return result;
}

+ (id)trackingInfoWithARFrame:(id)frame worldAlignment:(int64_t)alignment captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation constrainHeadPose:(BOOL)pose
{
  poseCopy = pose;
  v26 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  anchors = [frameCopy anchors];
  v13 = [anchors countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v20 = poseCopy;
    v14 = *v22;
    while (2)
    {
      for (i = 0; i != v13; i = (i + 1))
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(anchors);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
          if ([v17 isTracked])
          {
            v13 = objc_alloc_init(AVTFaceTrackingInfo);
            AVTTrackingDataFromARFrame(&v13->_trackingData, frameCopy, alignment, v17, orientation, interfaceOrientation, v20, 0, 0);

            goto LABEL_13;
          }
        }
      }

      v13 = [anchors countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)dataWithARFrame:(id)frame captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation
{
  v24 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  anchors = [frameCopy anchors];
  v9 = [anchors countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(anchors);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          if ([v14 isTracked])
          {
            memset(v18, 0, sizeof(v18));
            AVTTrackingDataFromARFrame(v18, frameCopy, [frameCopy worldAlignment], v14, orientation, interfaceOrientation, 1, 0, 0);
            v15 = [MEMORY[0x1E695DEF0] dataWithBytes:v18 length:480];

            goto LABEL_13;
          }
        }
      }

      v10 = [anchors countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)trackingInfoWithTrackingData:(id *)data
{
  v4 = objc_alloc_init(AVTFaceTrackingInfo);
  memcpy(&v4->_trackingData, data, 0x1E0uLL);

  return v4;
}

@end