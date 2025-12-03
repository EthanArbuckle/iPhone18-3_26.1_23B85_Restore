@interface VNEntityIdentificationModelWriteOptions
- (BOOL)isEqual:(id)equal;
- (VNEntityIdentificationModelWriteOptions)init;
- (VNEntityIdentificationModelWriteOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNEntityIdentificationModelWriteOptions

- (VNEntityIdentificationModelWriteOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VNEntityIdentificationModelWriteOptions *)self init];
  if (v5)
  {
    v5->_version = [coderCopy decodeIntegerForKey:@"version"];
    v5->_readOnly = [coderCopy decodeBoolForKey:@"readonly"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInteger:version forKey:@"version"];
  [coderCopy encodeBool:self->_readOnly forKey:@"readonly"];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      version = [(VNEntityIdentificationModelWriteOptions *)self version];
      if (version == [(VNEntityIdentificationModelWriteOptions *)v5 version])
      {
        readOnly = [(VNEntityIdentificationModelWriteOptions *)self readOnly];
        v8 = readOnly ^ [(VNEntityIdentificationModelWriteOptions *)v5 readOnly]^ 1;
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
  v2 = 178954240;
  if (self->_readOnly)
  {
    v2 = 357908480;
  }

  return v2 ^ self->_version;
}

- (VNEntityIdentificationModelWriteOptions)init
{
  v3.receiver = self;
  v3.super_class = VNEntityIdentificationModelWriteOptions;
  result = [(VNEntityIdentificationModelWriteOptions *)&v3 init];
  if (result)
  {
    result->_version = 0;
    result->_readOnly = 0;
  }

  return result;
}

@end