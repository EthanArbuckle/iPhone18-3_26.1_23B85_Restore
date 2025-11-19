@interface NSPropertyStoreMapping
- (BOOL)isEqual:(id)a3;
- (NSPropertyStoreMapping)initWithProperty:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation NSPropertyStoreMapping

- (NSPropertyStoreMapping)initWithProperty:(id)a3
{
  v5 = +[NSStoreMappingGenerator defaultMappingGenerator];
  v6 = [a3 name];
  if (v5)
  {
    v7 = [v6 lowercaseString];
  }

  else
  {
    v7 = 0;
  }

  v9.receiver = self;
  v9.super_class = NSPropertyStoreMapping;
  result = [(NSStoreMapping *)&v9 initWithExternalName:v7];
  if (result)
  {
    result->_property = a3;
  }

  return result;
}

- (void)dealloc
{
  if (self)
  {
    self->_property = 0;
  }

  v2.receiver = self;
  v2.super_class = NSPropertyStoreMapping;
  [(NSStoreMapping *)&v2 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = NSPropertyStoreMapping;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ -> %@", -[NSPropertyStoreMapping description](&v6, sel_description), -[NSPropertyDescription name](self->_property, "name")];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  if (!self->_property)
  {
    v9 = [a3 property];
    return v9 == 0;
  }

  if ([-[NSPropertyStoreMapping property](self "property")] && !-[NSStoreMapping externalName](self, "externalName"))
  {
    v9 = [a3 externalName];
    return v9 == 0;
  }

  v7 = [(NSStoreMapping *)self externalName];
  v8 = [a3 externalName];

  return [v7 isEqual:v8];
}

@end