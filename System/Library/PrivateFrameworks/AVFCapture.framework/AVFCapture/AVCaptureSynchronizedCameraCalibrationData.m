@interface AVCaptureSynchronizedCameraCalibrationData
- (AVCameraCalibrationData)cameraCalibrationData;
- (id)_initWithCameraCalibrationData:(id)a3 timestamp:(id *)a4 cameraCalibrationDataWasDropped:(BOOL)a5 droppedReason:(int64_t)a6;
- (void)dealloc;
@end

@implementation AVCaptureSynchronizedCameraCalibrationData

- (id)_initWithCameraCalibrationData:(id)a3 timestamp:(id *)a4 cameraCalibrationDataWasDropped:(BOOL)a5 droppedReason:(int64_t)a6
{
  v12.receiver = self;
  v12.super_class = AVCaptureSynchronizedCameraCalibrationData;
  v11 = *a4;
  v9 = [(AVCaptureSynchronizedData *)&v12 _initWithTimestamp:&v11];
  if (v9)
  {
    v9[2] = a3;
    *(v9 + 24) = a5;
    v9[4] = a6;
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