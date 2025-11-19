@interface CADSPPropertyConnectionModel
- (BOOL)isEqual:(id)a3;
- (CADSPPropertyAddress)boxPropertyAddress;
- (NSString)boxName;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation CADSPPropertyConnectionModel

- (id).cxx_construct
{
  *(self + 1) = 0uLL;
  *(self + 4) = 0;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (self == v4 || AudioDSPGraph::IR::ParameterConnectionModel::operator==(&self->_this, &v4->_this));

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CADSPMutablePropertyConnectionModel allocWithZone:a3];
  v4->super._this.graphPropertyID = self->_this.graphPropertyID;
  std::string::operator=(&v4->super._this.boxName, &self->_this.boxName);
  v5 = *&self->_this.var0;
  LODWORD(v4[1].super.super.isa) = self[1].super.isa;
  *&v4->super._this.var0 = v5;
  return v4;
}

- (CADSPPropertyAddress)boxPropertyAddress
{
  isa = self[1].super.isa;
  v3 = *&self->_this.var0;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = isa;
  return result;
}

- (NSString)boxName
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  size = *(&self->_this.boxName.__rep_.__l + 23);
  if ((size & 0x8000000000000000) != 0)
  {
    data = self->_this.boxName.__rep_.__l.__data_;
    size = self->_this.boxName.__rep_.__l.__size_;
  }

  else
  {
    data = &self->_this.boxName;
  }

  v6 = [v3 initWithBytes:data length:size encoding:4];

  return v6;
}

@end