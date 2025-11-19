@interface AVTFaceTrackingInfo
+ (id)dataWithARFrame:(id)a3 captureOrientation:(int64_t)a4 interfaceOrientation:(int64_t)a5;
+ (id)trackingInfoWithARFrame:(id)a3 worldAlignment:(int64_t)a4 captureOrientation:(int64_t)a5 interfaceOrientation:(int64_t)a6 constrainHeadPose:(BOOL)a7;
+ (id)trackingInfoWithTrackingData:(id *)a3;
- (__n128)rawTransform;
@end

@implementation AVTFaceTrackingInfo

- (__n128)rawTransform
{
  result = *(a1 + 496);
  v2 = *(a1 + 512);
  v3 = *(a1 + 528);
  v4 = *(a1 + 544);
  return result;
}

+ (id)trackingInfoWithARFrame:(id)a3 worldAlignment:(int64_t)a4 captureOrientation:(int64_t)a5 interfaceOrientation:(int64_t)a6 constrainHeadPose:(BOOL)a7
{
  v7 = a7;
  v26 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v11 anchors];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v20 = v7;
    v14 = *v22;
    while (2)
    {
      for (i = 0; i != v13; i = (i + 1))
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
          if ([v17 isTracked])
          {
            v13 = objc_alloc_init(AVTFaceTrackingInfo);
            AVTTrackingDataFromARFrame(&v13->_trackingData, v11, a4, v17, a5, a6, v20, 0, 0);

            goto LABEL_13;
          }
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

+ (id)dataWithARFrame:(id)a3 captureOrientation:(int64_t)a4 interfaceOrientation:(int64_t)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v7 anchors];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          if ([v14 isTracked])
          {
            memset(v18, 0, sizeof(v18));
            AVTTrackingDataFromARFrame(v18, v7, [v7 worldAlignment], v14, a4, a5, 1, 0, 0);
            v15 = [MEMORY[0x1E695DEF0] dataWithBytes:v18 length:480];

            goto LABEL_13;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

+ (id)trackingInfoWithTrackingData:(id *)a3
{
  v4 = objc_alloc_init(AVTFaceTrackingInfo);
  memcpy(&v4->_trackingData, a3, 0x1E0uLL);

  return v4;
}

@end