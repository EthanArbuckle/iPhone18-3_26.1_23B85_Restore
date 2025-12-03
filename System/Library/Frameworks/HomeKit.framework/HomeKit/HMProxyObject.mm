@interface HMProxyObject
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMemberOfClass:(Class)class;
- (Class)superclass;
- (id)debugDescription;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)performSelector:(SEL)selector;
- (id)performSelector:(SEL)selector withObject:(id)object;
- (id)performSelector:(SEL)selector withObject:(id)object withObject:(id)withObject;
- (unint64_t)hash;
@end

@implementation HMProxyObject

- (id)debugDescription
{
  v2 = objc_opt_self();

  return [v2 debugDescription];
}

- (id)description
{
  v2 = objc_opt_self();

  return [v2 description];
}

- (unint64_t)hash
{
  v2 = objc_opt_self();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  v4 = objc_opt_self();

  return [v4 isEqual:self];
}

- (id)performSelector:(SEL)selector withObject:(id)object withObject:(id)withObject
{
  v8 = objc_opt_self();

  return [v8 performSelector:selector withObject:object withObject:withObject];
}

- (id)performSelector:(SEL)selector withObject:(id)object
{
  v6 = objc_opt_self();

  return [v6 performSelector:selector withObject:object];
}

- (id)performSelector:(SEL)selector
{
  v4 = objc_opt_self();

  return [v4 performSelector:selector];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = objc_opt_self();

  return [v4 methodSignatureForSelector:selector];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v4 = objc_opt_self();

  return [v4 conformsToProtocol:protocol];
}

- (BOOL)isMemberOfClass:(Class)class
{
  v4 = objc_opt_self();

  return [v4 isMemberOfClass:class];
}

- (Class)superclass
{
  v2 = objc_opt_self();

  return [v2 superclass];
}

@end