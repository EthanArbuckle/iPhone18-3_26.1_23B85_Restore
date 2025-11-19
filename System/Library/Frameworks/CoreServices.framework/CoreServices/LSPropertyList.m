@interface LSPropertyList
+ (LSPropertyList)propertyListWithData:(id)a3;
- (NSString)_applicationIdentifier;
- (id)_init;
- (id)debugDescription;
- (id)description;
- (id)objectsForKeys:(id)a3;
@end

@implementation LSPropertyList

- (id)_init
{
  v3.receiver = self;
  v3.super_class = LSPropertyList;
  return [(LSPropertyList *)&v3 init];
}

- (NSString)_applicationIdentifier
{
  v3 = objc_opt_class();

  return [(LSPropertyList *)self objectForKey:@"application-identifier" ofClass:v3];
}

+ (LSPropertyList)propertyListWithData:(id)a3
{
  v3 = [a3 copy];
  v4 = [_LSLazyPropertyList lazyPropertyListWithPropertyListData:v3];

  return v4;
}

- (id)objectsForKeys:(id)a3
{
  v4 = [LSBundleInfoCachedValues alloc];
  v5 = [(LSBundleInfoCachedValues *)v4 _initWithKeys:a3 forDictionary:MEMORY[0x1E695E0F8]];

  return v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p>", objc_opt_class(), self];

  return v2;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(LSPropertyList *)self _expensiveDictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@ %p> %@", v4, self, v5];

  return v6;
}

@end