@interface CADSPMutablePropertyWireModel
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setBoxName:(id)a3 ofEndpoint:(unsigned int)a4;
- (void)setBoxPropertyAddress:(CADSPPropertyAddress)a3 ofEndpoint:(unsigned int)a4;
@end

@implementation CADSPMutablePropertyWireModel

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CADSPMutablePropertyWireModel;
  return [(CADSPPropertyWireModel *)&v4 mutableCopyWithZone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CADSPPropertyWireModel allocWithZone:a3];
  std::string::operator=(&v4->_this, &self->super._this);
  v5 = *&self->super._this.source.var0;
  LODWORD(v4->_this.var0) = self->super._this.var0;
  *&v4->_this.source.var0 = v5;
  std::string::operator=(&v4[1], &self[1]);
  v6 = *(&self[1].super._this.source.boxName.__rep_.__l + 2);
  v4[1]._this.source.var0 = self[1].super._this.source.var0;
  *(&v4[1]._this.source.boxName.__rep_.__l + 2) = v6;
  LOBYTE(v4[1]._this.var0) = self[1].super._this.var0;
  return v4;
}

- (void)setBoxPropertyAddress:(CADSPPropertyAddress)a3 ofEndpoint:(unsigned int)a4
{
  v4 = 40;
  if (!a4)
  {
    v4 = 0;
  }

  *(&self->super._this.source.var0 + v4) = a3;
}

- (void)setBoxName:(id)a3 ofEndpoint:(unsigned int)a4
{
  v8 = a3;
  v6 = [v8 UTF8String];
  v7 = 40;
  if (!a4)
  {
    v7 = 0;
  }

  std::string::__assign_external(&self->super._this.source.boxName.__rep_.__s.__data_[v7], v6);
}

@end