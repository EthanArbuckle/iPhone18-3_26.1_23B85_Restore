@interface NSStoreMapping
- (BOOL)isEqual:(id)a3;
- (NSStoreMapping)initWithExternalName:(id)a3;
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
  v2 = [(NSStoreMapping *)self externalName];

  return [v2 hash];
}

- (NSStoreMapping)initWithExternalName:(id)a3
{
  v8.receiver = self;
  v8.super_class = NSStoreMapping;
  v4 = [(NSStoreMapping *)&v8 init];
  v5 = v4;
  if (v4)
  {
    externalName = v4->_externalName;
    if (externalName != a3)
    {

      v5->_externalName = [a3 copy];
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  v7 = [(NSStoreMapping *)self externalName];
  if (v7 == [a3 externalName])
  {
    return 1;
  }

  v8 = [(NSStoreMapping *)self externalName];
  v9 = [a3 externalName];

  return [v8 isEqualToString:v9];
}

@end