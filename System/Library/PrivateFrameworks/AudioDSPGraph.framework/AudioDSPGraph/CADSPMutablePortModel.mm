@interface CADSPMutablePortModel
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setName:(id)name;
@end

@implementation CADSPMutablePortModel

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CADSPMutablePortModel;
  return [(CADSPPortModel *)&v4 mutableCopyWithZone:zone];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CADSPPortModel allocWithZone:zone];
  std::string::operator=(&v4->_this, &self->super._this);
  v4->_this.var0 = self->super._this.var0;
  return v4;
}

- (void)setName:(id)name
{
  nameCopy = name;
  std::string::__assign_external(&self->super._this, [nameCopy UTF8String]);
}

@end