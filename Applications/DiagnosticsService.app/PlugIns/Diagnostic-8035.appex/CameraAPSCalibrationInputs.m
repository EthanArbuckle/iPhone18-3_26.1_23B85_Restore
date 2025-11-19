@interface CameraAPSCalibrationInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation CameraAPSCalibrationInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v9 = 0;
  if (a3)
  {
    v4 = a3;
    v5 = [NSSet setWithObject:objc_opt_class()];
    v6 = [v4 dk_arrayFromRequiredKey:@"cameras" types:v5 maxLength:4 failed:&v9 validator:&stru_1000041A8];

    [(CameraAPSCalibrationInputs *)self setCameras:v6];
    v7 = v9 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

@end