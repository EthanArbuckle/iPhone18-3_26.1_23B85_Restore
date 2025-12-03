@interface MTRDataTypePowerThresholdStruct
- (MTRDataTypePowerThresholdStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDataTypePowerThresholdStruct

- (MTRDataTypePowerThresholdStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRDataTypePowerThresholdStruct;
  v2 = [(MTRDataTypePowerThresholdStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    powerThreshold = v2->_powerThreshold;
    v2->_powerThreshold = 0;

    apparentPowerThreshold = v3->_apparentPowerThreshold;
    v3->_apparentPowerThreshold = 0;

    powerThresholdSource = v3->_powerThresholdSource;
    v3->_powerThresholdSource = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDataTypePowerThresholdStruct);
  powerThreshold = [(MTRDataTypePowerThresholdStruct *)self powerThreshold];
  [(MTRDataTypePowerThresholdStruct *)v4 setPowerThreshold:powerThreshold];

  apparentPowerThreshold = [(MTRDataTypePowerThresholdStruct *)self apparentPowerThreshold];
  [(MTRDataTypePowerThresholdStruct *)v4 setApparentPowerThreshold:apparentPowerThreshold];

  powerThresholdSource = [(MTRDataTypePowerThresholdStruct *)self powerThresholdSource];
  [(MTRDataTypePowerThresholdStruct *)v4 setPowerThresholdSource:powerThresholdSource];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: powerThreshold:%@ apparentPowerThreshold:%@; powerThresholdSource:%@; >", v5, self->_powerThreshold, self->_apparentPowerThreshold, self->_powerThresholdSource];;

  return v6;
}

@end