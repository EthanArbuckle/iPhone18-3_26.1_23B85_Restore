@interface ComponentCameraIRBase
- (BOOL)isPresent;
@end

@implementation ComponentCameraIRBase

- (BOOL)isPresent
{
  v3 = [(ComponentCameraBase *)self IORegClassName];

  v4 = [(ComponentCameraBase *)self serialNumber];
  v5 = v4;
  LOBYTE(v6) = 0;
  if (v3 && v4)
  {
    v6 = [v4 isEqualToString:&stru_1000B2A68] ^ 1;
  }

  return v6;
}

@end