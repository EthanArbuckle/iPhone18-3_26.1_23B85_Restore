@interface MDLObjectContainer
- (MDLObjectContainer)init;
@end

@implementation MDLObjectContainer

- (MDLObjectContainer)init
{
  v6.receiver = self;
  v6.super_class = MDLObjectContainer;
  v2 = [(MDLObjectContainer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    objects = v2->_objects;
    v2->_objects = v3;
  }

  return v2;
}

@end