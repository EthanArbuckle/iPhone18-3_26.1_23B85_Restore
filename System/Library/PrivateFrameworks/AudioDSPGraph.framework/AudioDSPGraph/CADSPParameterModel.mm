@interface CADSPParameterModel
- (BOOL)getDefaultValue:(float *)a3;
- (BOOL)isEqual:(id)a3;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation CADSPParameterModel

- (id).cxx_construct
{
  *(self + 20) = 0;
  *(self + 1) = 0;
  *(self + 16) = 0;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (self == v4)
  {
    v7 = 1;
    goto LABEL_10;
  }

  if (self->_this.ID == v4->_this.ID && self->_this.direction == v4->_this.direction)
  {
    engaged = v4->_this.defaultValue.__engaged_;
    v6 = self->_this.defaultValue.__engaged_;
    v7 = v6 == engaged;
    if (v6 == engaged && self->_this.defaultValue.__engaged_)
    {
      v7 = self->_this.defaultValue.var0.__val_ == v4->_this.defaultValue.var0.__val_;
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  result = [CADSPMutableParameterModel allocWithZone:a3];
  *(result + 8) = self->_this;
  return result;
}

- (BOOL)getDefaultValue:(float *)a3
{
  engaged = self->_this.defaultValue.__engaged_;
  if (a3 && engaged)
  {
    *a3 = self->_this.defaultValue.var0.__val_;
  }

  return engaged;
}

@end