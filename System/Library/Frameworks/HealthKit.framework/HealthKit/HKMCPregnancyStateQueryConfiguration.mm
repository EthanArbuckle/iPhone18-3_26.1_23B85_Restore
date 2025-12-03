@interface HKMCPregnancyStateQueryConfiguration
- (HKMCPregnancyStateQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCPregnancyStateQueryConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HKMCPregnancyStateQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setIsRunningForMaintenance:{-[HKMCPregnancyStateQueryConfiguration isRunningForMaintenance](self, "isRunningForMaintenance")}];
  return v4;
}

- (HKMCPregnancyStateQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKMCPregnancyStateQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_isRunningForMaintenance = [coderCopy decodeBoolForKey:@"IsRunningForMaintenance"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMCPregnancyStateQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_isRunningForMaintenance forKey:{@"IsRunningForMaintenance", v5.receiver, v5.super_class}];
}

@end