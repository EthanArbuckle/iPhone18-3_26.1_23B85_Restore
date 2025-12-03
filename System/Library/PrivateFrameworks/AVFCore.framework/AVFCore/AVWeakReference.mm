@interface AVWeakReference
+ (AVWeakReference)allocWithZone:(_NSZone *)zone;
+ (void)initialize;
- (AVWeakReference)initWithReferencedObject:(id)object;
- (id)referencedObject;
@end

@implementation AVWeakReference

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _concreteAVWeakReferenceClass = objc_opt_class();
  }
}

+ (AVWeakReference)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    v6 = _concreteAVWeakReferenceClass;

    return [v6 allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___AVWeakReference;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (AVWeakReference)initWithReferencedObject:(id)object
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