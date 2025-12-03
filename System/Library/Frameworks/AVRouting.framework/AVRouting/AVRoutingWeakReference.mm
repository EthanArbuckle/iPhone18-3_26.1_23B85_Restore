@interface AVRoutingWeakReference
+ (AVRoutingWeakReference)allocWithZone:(_NSZone *)zone;
+ (void)initialize;
- (AVRoutingWeakReference)initWithReferencedObject:(id)object;
- (id)referencedObject;
@end

@implementation AVRoutingWeakReference

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _concreteAVRoutingWeakReferenceClass = objc_opt_class();
  }
}

+ (AVRoutingWeakReference)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    v6 = _concreteAVRoutingWeakReferenceClass;

    return [v6 allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___AVRoutingWeakReference;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (AVRoutingWeakReference)initWithReferencedObject:(id)object
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);

  return 0;
}

- (id)referencedObject
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

@end