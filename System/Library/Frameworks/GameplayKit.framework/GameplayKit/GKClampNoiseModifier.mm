@interface GKClampNoiseModifier
- (GKClampNoiseModifier)initWithLowerBound:(double)bound upperBound:(double)upperBound;
- (double)valueAt:(GKClampNoiseModifier *)self;
- (id)cloneModule;
@end

@implementation GKClampNoiseModifier

- (GKClampNoiseModifier)initWithLowerBound:(double)bound upperBound:(double)upperBound
{
  v7.receiver = self;
  v7.super_class = GKClampNoiseModifier;
  result = [(GKNoiseModifier *)&v7 initWithInputModuleCount:1];
  if (result)
  {
    result->_lowerBound = bound;
    result->_upperBound = upperBound;
  }

  return result;
}

- (double)valueAt:(GKClampNoiseModifier *)self
{
  v8 = v2[1];
  v9 = *v2;
  v4 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:0];
  v10[0] = v9;
  v10[1] = v8;
  [v4 valueAt:v10];
  v6 = v5;

  return fmin(fmax(v6, self->_lowerBound), self->_upperBound);
}

- (id)cloneModule
{
  v2 = [[GKClampNoiseModifier alloc] initWithLowerBound:self->_lowerBound upperBound:self->_upperBound];

  return v2;
}

@end