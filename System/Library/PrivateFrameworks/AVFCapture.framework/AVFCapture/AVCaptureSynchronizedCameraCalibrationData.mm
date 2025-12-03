@interface AVCaptureSynchronizedCameraCalibrationData
- (AVCameraCalibrationData)cameraCalibrationData;
- (id)_initWithCameraCalibrationData:(id)data timestamp:(id *)timestamp cameraCalibrationDataWasDropped:(BOOL)dropped droppedReason:(int64_t)reason;
- (void)dealloc;
@end

@implementation AVCaptureSynchronizedCameraCalibrationData

- (id)_initWithCameraCalibrationData:(id)data timestamp:(id *)timestamp cameraCalibrationDataWasDropped:(BOOL)dropped droppedReason:(int64_t)reason
{
  v12.receiver = self;
  v12.super_class = AVCaptureSynchronizedCameraCalibrationData;
  v11 = *timestamp;
  v9 = [(AVCaptureSynchronizedData *)&v12 _initWithTimestamp:&v11];
  if (v9)
  {
    v9[2] = data;
    *(v9 + 24) = dropped;
    v9[4] = reason;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureSynchronizedCameraCalibrationData;
  [(AVCaptureSynchronizedData *)&v3 dealloc];
}

- (AVCameraCalibrationData)cameraCalibrationData
{
  v2 = self->_cameraCalibrationData;

  return v2;
}

@end