@interface AVRoutingWeakReference
+ (AVRoutingWeakReference)allocWithZone:(_NSZone *)a3;
+ (void)initialize;
- (AVRoutingWeakReference)initWithReferencedObject:(id)a3;
- (id)referencedObject;
@end

@implementation AVRoutingWeakReference

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _concreteAVRoutingWeakReferenceClass = objc_opt_class();
  }
}

+ (AVRoutingWeakReference)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    v6 = _concreteAVRoutingWeakReferenceClass;

    return [v6 allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___AVRoutingWeakReference;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (AVRoutingWeakReference)initWithReferencedObject:(id)a3
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