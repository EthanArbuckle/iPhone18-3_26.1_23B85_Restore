@interface LAACL
- (BOOL)isEqual:(id)equal;
- (LAACL)initWithData:(id)data;
- (NSData)data;
- (NSDictionary)constraints;
- (void)dealloc;
- (void)initWithSecAccessControl:(void *)result;
@end

@implementation LAACL

- (LAACL)initWithData:(id)data
{
  dataCopy = data;
  v7.receiver = self;
  v7.super_class = LAACL;
  v5 = [(LAACL *)&v7 init];
  if (v5)
  {
    v5->_acl = [MEMORY[0x1E69AD210] deserializeACL:dataCopy];
  }

  return v5;
}

- (void)dealloc
{
  acl = self->_acl;
  if (acl)
  {
    CFRelease(acl);
  }

  v4.receiver = self;
  v4.super_class = LAACL;
  [(LAACL *)&v4 dealloc];
}

- (NSDictionary)constraints
{
  constraints = self->_constraints;
  if (!constraints)
  {
    v4 = [MEMORY[0x1E69AD210] constraintsFromACL:self->_acl];
    v5 = self->_constraints;
    self->_constraints = v4;

    constraints = self->_constraints;
  }

  return constraints;
}

- (NSData)data
{
  data = self->_data;
  if (!data)
  {
    v4 = [MEMORY[0x1E69AD210] serializeACL:self->_acl];
    v5 = self->_data;
    self->_data = v4;

    data = self->_data;
  }

  return data;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    data = [v5 data];
    data2 = [(LAACL *)self data];
    if (data == data2)
    {
      v10 = 1;
    }

    else
    {
      data3 = [v5 data];
      data4 = [(LAACL *)self data];
      v10 = [data3 isEqualToData:data4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)initWithSecAccessControl:(void *)result
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = LAACL;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      result[1] = a2;
    }
  }

  return result;
}

@end