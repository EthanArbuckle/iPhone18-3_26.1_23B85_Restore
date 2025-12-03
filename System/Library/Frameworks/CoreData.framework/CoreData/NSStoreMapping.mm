@interface NSStoreMapping
- (BOOL)isEqual:(id)equal;
- (NSStoreMapping)initWithExternalName:(id)name;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation NSStoreMapping

- (void)dealloc
{
  if (self)
  {
    externalName = self->_externalName;
    if (externalName)
    {

      self->_externalName = [0 copy];
    }
  }

  v4.receiver = self;
  v4.super_class = NSStoreMapping;
  [(NSStoreMapping *)&v4 dealloc];
}

- (unint64_t)hash
{
  externalName = [(NSStoreMapping *)self externalName];

  return [externalName hash];
}

- (NSStoreMapping)initWithExternalName:(id)name
{
  v8.receiver = self;
  v8.super_class = NSStoreMapping;
  v4 = [(NSStoreMapping *)&v8 init];
  v5 = v4;
  if (v4)
  {
    externalName = v4->_externalName;
    if (externalName != name)
    {

      v5->_externalName = [name copy];
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  externalName = [(NSStoreMapping *)self externalName];
  if (externalName == [equal externalName])
  {
    return 1;
  }

  externalName2 = [(NSStoreMapping *)self externalName];
  externalName3 = [equal externalName];

  return [externalName2 isEqualToString:externalName3];
}

@end