@interface CADSPPropertyWireModel
- (BOOL)isEqual:(id)a3;
- (CADSPPropertyAddress)boxPropertyAddressOfEndpoint:(unsigned int)a3;
- (id).cxx_construct;
- (id)copyBoxNameOfEndpoint:(unsigned int)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation CADSPPropertyWireModel

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 0;
  *(self + 88) = 0;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (self == v4)
  {
    v5 = 1;
    goto LABEL_8;
  }

  if (AudioDSPGraph::IR::ParameterEndpoint::operator==(&self->_this.source.boxName.__rep_.__l.__data_, &v4->_this.source.boxName.__rep_.__l.__data_) && AudioDSPGraph::IR::ParameterEndpoint::operator==(&self[1].super.isa, &v4[1].super.isa))
  {
    v5 = LOBYTE(self[1]._this.var0) == LOBYTE(v4[1]._this.var0);
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CADSPMutablePropertyWireModel allocWithZone:a3];
  std::string::operator=(&v4->super._this, &self->_this);
  v5 = *&self->_this.source.var0;
  LODWORD(v4->super._this.var0) = self->_this.var0;
  *&v4->super._this.source.var0 = v5;
  std::string::operator=(&v4[1], &self[1]);
  v6 = *(&self[1]._this.source.boxName.__rep_.__l + 2);
  v4[1].super._this.source.var0 = self[1]._this.source.var0;
  *(&v4[1].super._this.source.boxName.__rep_.__l + 2) = v6;
  LOBYTE(v4[1].super._this.var0) = self[1]._this.var0;
  return v4;
}

- (CADSPPropertyAddress)boxPropertyAddressOfEndpoint:(unsigned int)a3
{
  v3 = 40;
  if (!a3)
  {
    v3 = 0;
  }

  v4 = self + v3;
  v5 = *(v4 + 4);
  v6 = *(v4 + 10);
  result.var0 = v5;
  result.var1 = HIDWORD(v5);
  result.var2 = v6;
  return result;
}

- (id)copyBoxNameOfEndpoint:(unsigned int)a3
{
  v3 = 40;
  if (!a3)
  {
    v3 = 0;
  }

  v4 = self + v3;
  v5 = (&self->_this.source.boxName.__rep_.__l.__data_ + v3);
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = v4[31];
  if (v7 < 0)
  {
    v8 = v5;
    v5 = *v5;
    v7 = v8[1];
  }

  return [v6 initWithBytes:v5 length:v7 encoding:4];
}

@end