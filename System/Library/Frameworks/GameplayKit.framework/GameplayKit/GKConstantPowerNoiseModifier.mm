@interface GKConstantPowerNoiseModifier
- (GKConstantPowerNoiseModifier)initWithConstantPower:(double)power;
- (double)valueAt:(GKConstantPowerNoiseModifier *)self;
- (id)cloneModule;
@end

@implementation GKConstantPowerNoiseModifier

- (GKConstantPowerNoiseModifier)initWithConstantPower:(double)power
{
  v5.receiver = self;
  v5.super_class = GKConstantPowerNoiseModifier;
  result = [(GKNoiseModifier *)&v5 initWithInputModuleCount:1];
  if (result)
  {
    result->_power = power;
  }

  return result;
}

- (double)valueAt:(GKConstantPowerNoiseModifier *)self
{
  v8 = v2[1];
  v9 = *v2;
  v4 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:0];
  v10[0] = v9;
  v10[1] = v8;
  [v4 valueAt:v10];
  v6 = v5;

  return pow(v6, self->_power);
}

- (id)cloneModule
{
  v2 = [[GKConstantPowerNoiseModifier alloc] initWithConstantPower:self->_power];

  return v2;
}

@end