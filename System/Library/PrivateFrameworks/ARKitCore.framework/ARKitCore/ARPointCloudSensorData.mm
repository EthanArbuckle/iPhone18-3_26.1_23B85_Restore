@interface ARPointCloudSensorData
- (ARPointCloudSensorData)initWithCoder:(id)coder;
- (ARPointCloudSensorData)initWithPointCloudData:(id)data captureFramePerSecond:(int64_t)second captureDevice:(id)device captureSession:(id)session;
- (ARPointCloudSensorData)initWithPointCloudData:(id)data projectorMode:(int64_t)mode timestamp:(double)timestamp;
- (__n128)setCameraTransform:(__n128)transform;
- (__n128)setExtrinsicsToWideSensor:(__n128)sensor;
- (double)setVisionCameraTransform:(uint64_t)transform;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARPointCloudSensorData

- (ARPointCloudSensorData)initWithPointCloudData:(id)data captureFramePerSecond:(int64_t)second captureDevice:(id)device captureSession:(id)session
{
  v39 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  deviceCopy = device;
  if (_isPointCloudBlackened(dataCopy))
  {
    if (ARShouldUseLogTypeError_onceToken_32 != -1)
    {
      [ARPointCloudSensorData initWithPointCloudData:captureFramePerSecond:captureDevice:captureSession:];
    }

    v11 = ARShouldUseLogTypeError_internalOSVersion_32;
    v12 = _ARLogGeneral_23();
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        LODWORD(time.value) = 138543618;
        *(&time.value + 4) = v15;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = self;
        v16 = "%{public}@ <%p>: Aborted generating data because the point cloud is blackened.";
        v17 = v13;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_1C241C000, v17, v18, v16, &time, 0x16u);
LABEL_24:
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v15 = NSStringFromClass(v27);
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = v15;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = self;
      v16 = "Error: %{public}@ <%p>: Aborted generating data because the point cloud is blackened.";
      v17 = v13;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

    selfCopy = 0;
    goto LABEL_26;
  }

  v13 = [MEMORY[0x1E698C170] makeWithDataBuffer:{objc_msgSend(dataCopy, "pointCloudDataBuffer")}];
  if (!v13)
  {
    if (ARShouldUseLogTypeError_onceToken_32 != -1)
    {
      [ARPointCloudSensorData initWithPointCloudData:captureFramePerSecond:captureDevice:captureSession:];
    }

    v28 = ARShouldUseLogTypeError_internalOSVersion_32;
    v29 = _ARLogGeneral_23();
    v15 = v29;
    if (v28 == 1)
    {
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = v31;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = self;
      v32 = "%{public}@ <%p>: Couldn't generate pointcloud from pointcloud data";
      v33 = v15;
      v34 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      v35 = objc_opt_class();
      v31 = NSStringFromClass(v35);
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = v31;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = self;
      v32 = "Error: %{public}@ <%p>: Couldn't generate pointcloud from pointcloud data";
      v33 = v15;
      v34 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v33, v34, v32, &time, 0x16u);

    goto LABEL_24;
  }

  v37.receiver = self;
  v37.super_class = ARPointCloudSensorData;
  v19 = [(ARPointCloudSensorData *)&v37 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_pointCloudData, data);
    objc_storeStrong(&v20->_pointCloud, v13);
    deviceType = [deviceCopy deviceType];
    cameraType = v20->_cameraType;
    v20->_cameraType = deviceType;

    v20->_cameraPosition = [deviceCopy position];
    v20->_projectorMode = [(AVPointCloudData *)v20->_pointCloudData projectorMode];
    v23 = ARPixelBufferGetMetadata([dataCopy pointCloudDataBuffer]);
    v24 = v23;
    if (v23)
    {
      v25 = [v23 objectForKeyedSubscript:*MEMORY[0x1E6990D58]];
      CMTimeMakeFromDictionary(&time, v25);
      v20->_timestamp = CMTimeGetSeconds(&time);
    }
  }

  self = v20;
  selfCopy = self;
LABEL_26:

  return selfCopy;
}

- (ARPointCloudSensorData)initWithPointCloudData:(id)data projectorMode:(int64_t)mode timestamp:(double)timestamp
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = ARPointCloudSensorData;
  v10 = [(ARPointCloudSensorData *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pointCloud, data);
    v11->_projectorMode = mode;
    v11->_timestamp = timestamp;
  }

  return v11;
}

- (double)setVisionCameraTransform:(uint64_t)transform
{
  *(transform + 64) = a2;
  v33 = __invert_f4(a2);
  v21 = v33.columns[1];
  v23 = v33.columns[0];
  v17 = v33.columns[3];
  v19 = v33.columns[2];
  *v3.i64 = ARVisionToRenderingCoordinateTransform();
  v7 = 0;
  v25 = v23;
  v26 = v21;
  v27 = v19;
  v28 = v17;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  do
  {
    *(&v29 + v7) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v3, COERCE_FLOAT(*(&v25 + v7))), v4, *&v25.f32[v7 / 4], 1), v5, *(&v25 + v7), 2), v6, *(&v25 + v7), 3);
    v7 += 16;
  }

  while (v7 != 64);
  v22 = v30;
  v24 = v29;
  v18 = v32;
  v20 = v31;
  *v8.i64 = ARRenderingToVisionCameraCoordinateTransform();
  v9 = 0;
  v25 = v8;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  do
  {
    *(&v29 + v9) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&v25 + v9))), v22, *&v25.f32[v9 / 4], 1), v20, *(&v25 + v9), 2), v18, *(&v25 + v9), 3);
    v9 += 16;
  }

  while (v9 != 64);
  result = *v29.i64;
  v14 = v30;
  v15 = v31;
  v16 = v32;
  *(transform + 128) = v29;
  *(transform + 144) = v14;
  *(transform + 160) = v15;
  *(transform + 176) = v16;
  return result;
}

- (ARPointCloudSensorData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = ARPointCloudSensorData;
  v5 = [(ARPointCloudSensorData *)&v21 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    [coderCopy ar_decodeMatrix4x4ForKey:@"visionCameraTransform"];
    *v5->_anon_40 = v7;
    *&v5->_anon_40[16] = v8;
    *&v5->_anon_40[32] = v9;
    *&v5->_anon_40[48] = v10;
    [coderCopy ar_decodeMatrix4x4ForKey:@"cameraTransform"];
    *v5->_anon_80 = v11;
    *&v5->_anon_80[16] = v12;
    *&v5->_anon_80[32] = v13;
    *&v5->_anon_80[48] = v14;
    v5->_cameraPosition = [coderCopy decodeIntegerForKey:@"cameraPosition"];
    v15 = [coderCopy decodeObjectForKey:@"cameraType"];
    cameraType = v5->_cameraType;
    v5->_cameraType = v15;

    v17 = [coderCopy decodeObjectForKey:@"pointCloud"];
    v18 = [objc_alloc(MEMORY[0x1E698C170]) initWithDictionaryRepresentation:v17];
    pointCloud = v5->_pointCloud;
    v5->_pointCloud = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:timestamp];
  [coderCopy ar_encodeMatrix4x4:@"visionCameraTransform" forKey:{*self->_anon_40, *&self->_anon_40[16], *&self->_anon_40[32], *&self->_anon_40[48]}];
  [coderCopy ar_encodeMatrix4x4:@"cameraTransform" forKey:{*self->_anon_80, *&self->_anon_80[16], *&self->_anon_80[32], *&self->_anon_80[48]}];
  [coderCopy encodeInteger:self->_cameraPosition forKey:@"cameraPosition"];
  [coderCopy encodeObject:self->_cameraType forKey:@"cameraType"];
  dictionaryRepresentation = [(ADJasperPointCloud *)self->_pointCloud dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"pointCloud"];
}

- (__n128)setCameraTransform:(__n128)transform
{
  result[8] = a2;
  result[9] = transform;
  result[10] = a4;
  result[11] = a5;
  return result;
}

- (__n128)setExtrinsicsToWideSensor:(__n128)sensor
{
  result[12] = a2;
  result[13] = sensor;
  result[14] = a4;
  result[15] = a5;
  return result;
}

@end