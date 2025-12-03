@interface CADSPMutableParameterModel
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)removeDefaultValue;
@end

@implementation CADSPMutableParameterModel

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CADSPMutableParameterModel;
  return [(CADSPParameterModel *)&v4 mutableCopyWithZone:zone];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [CADSPParameterModel allocWithZone:zone];
  *(result + 8) = self->super._this;
  return result;
}

- (void)removeDefaultValue
{
  if (self->super._this.defaultValue.__engaged_)
  {
    self->super._this.defaultValue.__engaged_ = 0;
  }
}

@end