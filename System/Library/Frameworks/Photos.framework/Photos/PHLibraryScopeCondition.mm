@interface PHLibraryScopeCondition
+ (Class)_mappedPLConditionClass;
- (PHLibraryScopeCondition)init;
- (PHLibraryScopeCondition)initWithProxyObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PHLibraryScopeCondition

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PLLibraryScopeCondition *)self->_proxyObject copyWithZone:zone];
  v7 = [v5 initWithProxyObject:v6];

  return v7;
}

- (PHLibraryScopeCondition)init
{
  v3 = objc_alloc_init([objc_opt_class() _mappedPLConditionClass]);
  v4 = [(PHLibraryScopeCondition *)self initWithProxyObject:v3];

  return v4;
}

- (PHLibraryScopeCondition)initWithProxyObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = PHLibraryScopeCondition;
  v6 = [(PHLibraryScopeCondition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxyObject, object);
  }

  return v7;
}

+ (Class)_mappedPLConditionClass
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class() || (v3 = objc_opt_class(), v3 == objc_opt_class()) || (v4 = objc_opt_class(), v4 == objc_opt_class()))
  {
    v5 = objc_opt_class();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end