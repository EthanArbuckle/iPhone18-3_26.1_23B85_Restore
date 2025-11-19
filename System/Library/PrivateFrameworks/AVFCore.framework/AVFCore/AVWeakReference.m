@interface AVWeakReference
+ (AVWeakReference)allocWithZone:(_NSZone *)a3;
+ (void)initialize;
- (AVWeakReference)initWithReferencedObject:(id)a3;
- (id)referencedObject;
@end

@implementation AVWeakReference

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _concreteAVWeakReferenceClass = objc_opt_class();
  }
}

+ (AVWeakReference)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    v6 = _concreteAVWeakReferenceClass;

    return [v6 allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___AVWeakReference;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (AVWeakReference)initWithReferencedObject:(id)a3
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