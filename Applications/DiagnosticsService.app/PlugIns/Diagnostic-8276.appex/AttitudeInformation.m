@interface AttitudeInformation
- (AttitudeInformation)init;
- (double)l2Norm;
- (id)init:(id)a3;
- (id)subtract:(id)a3;
@end

@implementation AttitudeInformation

- (id)init:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AttitudeInformation;
  v5 = [(AttitudeInformation *)&v12 init];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    [v4 pitch];
    v6->information[0] = v8;
    [v4 roll];
    v6->information[1] = v9;
    [v4 yaw];
    v6->information[2] = v10;
    v7 = v6;
  }

  return v7;
}

- (AttitudeInformation)init
{
  v6.receiver = self;
  v6.super_class = AttitudeInformation;
  v2 = [(AttitudeInformation *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)subtract:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = v5;
  for (i = 8; i != 32; i += 8)
  {
    *(v5 + i) = *(&self->super.isa + i) - *&v4[i];
  }

  return v6;
}

- (double)l2Norm
{
  v2 = 0.0;
  for (i = 8; i != 32; i += 8)
  {
    v2 = v2 + *(&self->super.isa + i) * *(&self->super.isa + i);
  }

  return sqrt(v2);
}

@end