@interface CLHeadingInternal
- (CLHeadingInternal)initWithClientHeading:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLHeadingInternal

- (CLHeadingInternal)initWithClientHeading:(id *)a3
{
  v9.receiver = self;
  v9.super_class = CLHeadingInternal;
  result = [(CLHeadingInternal *)&v9 init];
  if (result)
  {
    v5 = *&a3->var0;
    *&result->fHeading.z = *&a3->var2;
    *&result->fHeading.x = v5;
    v6 = *&a3->var4;
    v7 = *&a3->var6;
    v8 = *&a3->var8;
    *&result->fHeading.calibration = *&a3->var10;
    *&result->fHeading.magnitude = v8;
    *&result->fHeading.timestamp = v7;
    *&result->fHeading.trueHeading = v6;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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