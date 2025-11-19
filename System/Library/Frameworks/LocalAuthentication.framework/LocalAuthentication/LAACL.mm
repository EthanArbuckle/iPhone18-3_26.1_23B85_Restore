@interface LAACL
- (BOOL)isEqual:(id)a3;
- (LAACL)initWithData:(id)a3;
- (NSData)data;
- (NSDictionary)constraints;
- (void)dealloc;
- (void)initWithSecAccessControl:(void *)result;
@end

@implementation LAACL

- (LAACL)initWithData:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LAACL;
  v5 = [(LAACL *)&v7 init];
  if (v5)
  {
    v5->_acl = [MEMORY[0x1E69AD210] deserializeACL:v4];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 data];
    v7 = [(LAACL *)self data];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [v5 data];
      v9 = [(LAACL *)self data];
      v10 = [v8 isEqualToData:v9];
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