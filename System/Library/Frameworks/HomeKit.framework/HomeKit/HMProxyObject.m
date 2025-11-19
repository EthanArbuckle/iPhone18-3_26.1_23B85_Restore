@interface HMProxyObject
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMemberOfClass:(Class)a3;
- (Class)superclass;
- (id)debugDescription;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)performSelector:(SEL)a3;
- (id)performSelector:(SEL)a3 withObject:(id)a4;
- (id)performSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = objc_opt_self();

  return [v4 isEqual:self];
}

- (id)performSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5
{
  v8 = objc_opt_self();

  return [v8 performSelector:a3 withObject:a4 withObject:a5];
}

- (id)performSelector:(SEL)a3 withObject:(id)a4
{
  v6 = objc_opt_self();

  return [v6 performSelector:a3 withObject:a4];
}

- (id)performSelector:(SEL)a3
{
  v4 = objc_opt_self();

  return [v4 performSelector:a3];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = objc_opt_self();

  return [v4 methodSignatureForSelector:a3];
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = objc_opt_self();

  return [v4 conformsToProtocol:a3];
}

- (BOOL)isMemberOfClass:(Class)a3
{
  v4 = objc_opt_self();

  return [v4 isMemberOfClass:a3];
}

- (Class)superclass
{
  v2 = objc_opt_self();

  return [v2 superclass];
}

@end