@interface CADSPBoxRelationModel
- (BOOL)isEqual:(id)equal;
- (id).cxx_construct;
- (id)copyBoxNameOfEndpoint:(unsigned int)endpoint;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CADSPBoxRelationModel

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (self == equalCopy)
  {
    v5 = 1;
    goto LABEL_8;
  }

  if (AudioDSPGraph::IR::BoxAlias::operator==(&self->_this.source.name.__rep_.__l.__data_, &equalCopy->_this.source.name.__rep_.__l.__data_) && AudioDSPGraph::IR::BoxAlias::operator==(&self->_this.source.var0, &equalCopy->_this.source.var0))
  {
    v5 = *self[1]._this.source.name.__rep_.__s.__data_ == *equalCopy[1]._this.source.name.__rep_.__s.__data_;
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CADSPMutableBoxRelationModel allocWithZone:zone];
  std::string::operator=(&v4->super._this, &self->_this);
  std::string::operator=(&v4->super._this.source.var0, &self->_this.source.var0);
  *v4[1].super._this.source.name.__rep_.__s.__data_ = *self[1]._this.source.name.__rep_.__s.__data_;
  return v4;
}

- (id)copyBoxNameOfEndpoint:(unsigned int)endpoint
{
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = 24;
  if (!endpoint)
  {
    v6 = 0;
  }

  v7 = self + v6;
  v10 = *(v7 + 1);
  v8 = v7 + 8;
  v9 = v10;
  v11 = v8[23];
  if (v11 >= 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  if (v11 >= 0)
  {
    v13 = v8[23];
  }

  else
  {
    v13 = *(v8 + 1);
  }

  return [v5 initWithBytes:v12 length:v13 encoding:4];
}

@end