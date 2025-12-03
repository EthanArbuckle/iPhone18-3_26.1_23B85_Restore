@interface CADSPParameterModel
- (BOOL)getDefaultValue:(float *)value;
- (BOOL)isEqual:(id)equal;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CADSPParameterModel

- (id).cxx_construct
{
  *(self + 20) = 0;
  *(self + 1) = 0;
  *(self + 16) = 0;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (self == equalCopy)
  {
    v7 = 1;
    goto LABEL_10;
  }

  if (self->_this.ID == equalCopy->_this.ID && self->_this.direction == equalCopy->_this.direction)
  {
    engaged = equalCopy->_this.defaultValue.__engaged_;
    v6 = self->_this.defaultValue.__engaged_;
    v7 = v6 == engaged;
    if (v6 == engaged && self->_this.defaultValue.__engaged_)
    {
      v7 = self->_this.defaultValue.var0.__val_ == equalCopy->_this.defaultValue.var0.__val_;
    }
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

LABEL_10:

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  result = [CADSPMutableParameterModel allocWithZone:zone];
  *(result + 8) = self->_this;
  return result;
}

- (BOOL)getDefaultValue:(float *)value
{
  engaged = self->_this.defaultValue.__engaged_;
  if (value && engaged)
  {
    *value = self->_this.defaultValue.var0.__val_;
  }

  return engaged;
}

@end