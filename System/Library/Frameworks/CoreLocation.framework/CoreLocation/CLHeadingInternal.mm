@interface CLHeadingInternal
- (CLHeadingInternal)initWithClientHeading:(id *)heading;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLHeadingInternal

- (CLHeadingInternal)initWithClientHeading:(id *)heading
{
  v9.receiver = self;
  v9.super_class = CLHeadingInternal;
  result = [(CLHeadingInternal *)&v9 init];
  if (result)
  {
    v5 = *&heading->var0;
    *&result->fHeading.z = *&heading->var2;
    *&result->fHeading.x = v5;
    v6 = *&heading->var4;
    v7 = *&heading->var6;
    v8 = *&heading->var8;
    *&result->fHeading.calibration = *&heading->var10;
    *&result->fHeading.magnitude = v8;
    *&result->fHeading.timestamp = v7;
    *&result->fHeading.trueHeading = v6;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = *&self->fHeading.timestamp;
  v8[2] = *&self->fHeading.trueHeading;
  v8[3] = v5;
  v8[4] = *&self->fHeading.magnitude;
  v9 = *&self->fHeading.calibration;
  v6 = *&self->fHeading.z;
  v8[0] = *&self->fHeading.x;
  v8[1] = v6;
  return [v4 initWithClientHeading:v8];
}

@end