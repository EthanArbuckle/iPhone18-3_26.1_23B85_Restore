@interface CADSPMutableJackModel
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setName:(id)a3;
@end

@implementation CADSPMutableJackModel

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CADSPMutableJackModel;
  return [(CADSPJackModel *)&v4 mutableCopyWithZone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CADSPJackModel allocWithZone:a3];
  std::string::operator=(&v4->_this, &self->super._this);
  return v4;
}

- (void)setName:(id)a3
{
  v4 = a3;
  std::string::__assign_external(&self->super._this, [v4 UTF8String]);
}

@end