@interface CADSPMutableParameterModel
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)removeDefaultValue;
@end

@implementation CADSPMutableParameterModel

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CADSPMutableParameterModel;
  return [(CADSPParameterModel *)&v4 mutableCopyWithZone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [CADSPParameterModel allocWithZone:a3];
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