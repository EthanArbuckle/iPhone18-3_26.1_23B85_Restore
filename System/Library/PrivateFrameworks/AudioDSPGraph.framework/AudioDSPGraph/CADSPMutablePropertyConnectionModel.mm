@interface CADSPMutablePropertyConnectionModel
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setBoxName:(id)a3;
@end

@implementation CADSPMutablePropertyConnectionModel

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CADSPMutablePropertyConnectionModel;
  return [(CADSPPropertyConnectionModel *)&v4 mutableCopyWithZone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CADSPPropertyConnectionModel allocWithZone:a3];
  v4->_this.graphPropertyID = self->super._this.graphPropertyID;
  std::string::operator=(&v4->_this.boxName, &self->super._this.boxName);
  v5 = *&self->super._this.var0;
  LODWORD(v4[1].super.isa) = self[1].super.super.isa;
  *&v4->_this.var0 = v5;
  return v4;
}

- (void)setBoxName:(id)a3
{
  v4 = a3;
  std::string::__assign_external(&self->super._this.boxName, [v4 UTF8String]);
}

@end