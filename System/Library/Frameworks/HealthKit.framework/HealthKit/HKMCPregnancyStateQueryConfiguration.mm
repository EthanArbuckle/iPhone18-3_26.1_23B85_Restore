@interface HKMCPregnancyStateQueryConfiguration
- (HKMCPregnancyStateQueryConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCPregnancyStateQueryConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HKMCPregnancyStateQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setIsRunningForMaintenance:{-[HKMCPregnancyStateQueryConfiguration isRunningForMaintenance](self, "isRunningForMaintenance")}];
  return v4;
}

- (HKMCPregnancyStateQueryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKMCPregnancyStateQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_isRunningForMaintenance = [v4 decodeBoolForKey:@"IsRunningForMaintenance"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMCPregnancyStateQueryConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_isRunningForMaintenance forKey:{@"IsRunningForMaintenance", v5.receiver, v5.super_class}];
}

@end