@interface CADSPMutablePropertyConnectionModel
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setBoxName:(id)name;
@end

@implementation CADSPMutablePropertyConnectionModel

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CADSPMutablePropertyConnectionModel;
  return [(CADSPPropertyConnectionModel *)&v4 mutableCopyWithZone:zone];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CADSPPropertyConnectionModel allocWithZone:zone];
  v4->_this.graphPropertyID = self->super._this.graphPropertyID;
  std::string::operator=(&v4->_this.boxName, &self->super._this.boxName);
  v5 = *&self->super._this.var0;
  LODWORD(v4[1].super.isa) = self[1].super.super.isa;
  *&v4->_this.var0 = v5;
  return v4;
}

- (void)setBoxName:(id)name
{
  nameCopy = name;
  std::string::__assign_external(&self->super._this.boxName, [nameCopy UTF8String]);
}

@end