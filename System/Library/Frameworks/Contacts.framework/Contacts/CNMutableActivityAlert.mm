@interface CNMutableActivityAlert
- (id)freeze;
@end

@implementation CNMutableActivityAlert

- (id)freeze
{
  v3 = objc_opt_class();
  object_setClass(self, v3);

  return self;
}

@end