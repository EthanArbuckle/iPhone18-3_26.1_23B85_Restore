@interface ComponentCameraIRBase
- (BOOL)isPresent;
@end

@implementation ComponentCameraIRBase

- (BOOL)isPresent
{
  iORegClassName = [(ComponentCameraBase *)self IORegClassName];

  serialNumber = [(ComponentCameraBase *)self serialNumber];
  v5 = serialNumber;
  LOBYTE(v6) = 0;
  if (iORegClassName && serialNumber)
  {
    v6 = [serialNumber isEqualToString:&stru_1000B2A68] ^ 1;
  }

  return v6;
}

@end