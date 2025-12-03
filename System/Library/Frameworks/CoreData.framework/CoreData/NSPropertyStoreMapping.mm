@interface NSPropertyStoreMapping
- (BOOL)isEqual:(id)equal;
- (NSPropertyStoreMapping)initWithProperty:(id)property;
- (id)description;
- (void)dealloc;
@end

@implementation NSPropertyStoreMapping

- (NSPropertyStoreMapping)initWithProperty:(id)property
{
  v5 = +[NSStoreMappingGenerator defaultMappingGenerator];
  name = [property name];
  if (v5)
  {
    lowercaseString = [name lowercaseString];
  }

  else
  {
    lowercaseString = 0;
  }

  v9.receiver = self;
  v9.super_class = NSPropertyStoreMapping;
  result = [(NSStoreMapping *)&v9 initWithExternalName:lowercaseString];
  if (result)
  {
    result->_property = property;
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

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  if (!self->_property)
  {
    property = [equal property];
    return property == 0;
  }

  if ([-[NSPropertyStoreMapping property](self "property")] && !-[NSStoreMapping externalName](self, "externalName"))
  {
    property = [equal externalName];
    return property == 0;
  }

  externalName = [(NSStoreMapping *)self externalName];
  externalName2 = [equal externalName];

  return [externalName isEqual:externalName2];
}

@end