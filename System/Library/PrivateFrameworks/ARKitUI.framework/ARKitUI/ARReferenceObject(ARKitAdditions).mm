@interface ARReferenceObject(ARKitAdditions)
+ (void)initialize;
- (id)_writeToArchiveWithPreviewImage:()ARKitAdditions error:;
@end

@implementation ARReferenceObject(ARKitAdditions)

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ARReferenceObject_ARKitAdditions__initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

- (id)_writeToArchiveWithPreviewImage:()ARKitAdditions error:
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v8 = MEMORY[0x277CE53A8];
  trackingData = [self trackingData];
  [v8 boundsForTrackingData:trackingData];

  [self referenceOriginTransform];
  v37 = v11;
  v38 = v10;
  v35 = v13;
  v36 = v12;
  v14 = *MEMORY[0x277D860B0];
  v15 = *(MEMORY[0x277D860B0] + 16);
  v16 = *(MEMORY[0x277D860B0] + 32);
  ARMatrix4x4FromRotationAndTranslation();
  v17 = 0;
  v39[0] = v18;
  v39[1] = v19;
  v39[2] = v20;
  v39[3] = v21;
  memset(buf, 0, sizeof(buf));
  v41 = 0u;
  v42 = 0u;
  do
  {
    *&buf[v17 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(v39[v17])), v37, *&v39[v17], 1), v36, v39[v17], 2), v35, v39[v17], 3);
    ++v17;
  }

  while (v17 != 4);
  if (v6)
  {
    v22 = UIImageJPEGRepresentation(v6, 0.8);
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_opt_new();
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "version")}];
  [v23 setObject:v24 forKeyedSubscript:@"Version"];

  [v23 setObject:@"trackingData.cv3dmap" forKeyedSubscript:@"TrackingDataReference"];
  v25 = ARMatrix4x4Dictionary();
  [v23 setObject:v25 forKeyedSubscript:@"ReferenceOrigin"];

  if ([v22 length])
  {
    [v23 setObject:@"preview.jpg" forKeyedSubscript:@"ImageReference"];
  }

  v26 = [MEMORY[0x277CCAC58] dataWithPropertyList:v23 format:100 options:0 error:{a4, *&v35}];
  if (v26)
  {
    [v7 addData:v26 withPath:@"Info.plist"];
    trackingData2 = [self trackingData];
    [v7 addData:trackingData2 withPath:@"trackingData.cv3dmap"];

    if ([v22 length])
    {
      [v7 addData:v22 withPath:@"preview.jpg"];
    }

    v28 = v7;
  }

  else
  {
    if (_ARLogGeneral_onceToken_2 != -1)
    {
      [ARReferenceObject(ARKitAdditions) _writeToArchiveWithPreviewImage:error:];
    }

    v29 = _ARLogGeneral_logObj_2;
    if (os_log_type_enabled(_ARLogGeneral_logObj_2, OS_LOG_TYPE_ERROR))
    {
      v30 = v29;
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138543618;
      *&buf[4] = v32;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_23D3AE000, v30, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to serialize object metadata.", buf, 0x16u);
    }

    v28 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v28;
}

@end