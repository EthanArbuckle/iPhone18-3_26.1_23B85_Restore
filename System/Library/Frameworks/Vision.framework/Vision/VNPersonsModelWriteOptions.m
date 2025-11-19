@interface VNPersonsModelWriteOptions
- (BOOL)isEqual:(id)a3;
- (VNPersonsModelWriteOptions)init;
- (VNPersonsModelWriteOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNPersonsModelWriteOptions

- (VNPersonsModelWriteOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VNPersonsModelWriteOptions *)self init];
  if (v5)
  {
    v5->_version = [v4 decodeIntegerForKey:@"version"];
    v5->_readOnly = [v4 decodeBoolForKey:@"readonly"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_version forKey:@"version"];
  [v4 encodeBool:self->_readOnly forKey:@"readonly"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    [v4 setVersion:self->_version];
    [v5 setReadOnly:self->_readOnly];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNPersonsModelWriteOptions *)self version];
      if (v6 == [(VNPersonsModelWriteOptions *)v5 version])
      {
        v7 = [(VNPersonsModelWriteOptions *)self readOnly];
        v8 = v7 ^ [(VNPersonsModelWriteOptions *)v5 readOnly]^ 1;
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  if (self->_readOnly)
  {
    return 43690;
  }

  else
  {
    return 21845;
  }
}

- (VNPersonsModelWriteOptions)init
{
  v3.receiver = self;
  v3.super_class = VNPersonsModelWriteOptions;
  result = [(VNPersonsModelWriteOptions *)&v3 init];
  if (result)
  {
    result->_version = 0;
    result->_readOnly = 0;
  }

  return result;
}

@end