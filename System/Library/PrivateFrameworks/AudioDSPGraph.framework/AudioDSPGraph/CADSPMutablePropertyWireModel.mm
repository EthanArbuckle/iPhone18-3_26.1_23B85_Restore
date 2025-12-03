@interface CADSPMutablePropertyWireModel
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setBoxName:(id)name ofEndpoint:(unsigned int)endpoint;
- (void)setBoxPropertyAddress:(CADSPPropertyAddress)address ofEndpoint:(unsigned int)endpoint;
@end

@implementation CADSPMutablePropertyWireModel

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CADSPMutablePropertyWireModel;
  return [(CADSPPropertyWireModel *)&v4 mutableCopyWithZone:zone];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CADSPPropertyWireModel allocWithZone:zone];
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

- (void)setBoxPropertyAddress:(CADSPPropertyAddress)address ofEndpoint:(unsigned int)endpoint
{
  v4 = 40;
  if (!endpoint)
  {
    v4 = 0;
  }

  *(&self->super._this.source.var0 + v4) = address;
}

- (void)setBoxName:(id)name ofEndpoint:(unsigned int)endpoint
{
  nameCopy = name;
  uTF8String = [nameCopy UTF8String];
  v7 = 40;
  if (!endpoint)
  {
    v7 = 0;
  }

  std::string::__assign_external(&self->super._this.source.boxName.__rep_.__s.__data_[v7], uTF8String);
}

@end