@interface _NSNoChangeToken
+ (void)initialize;
- (_NSNoChangeToken)initWithCoder:(id)coder;
@end

@implementation _NSNoChangeToken

+ (void)initialize
{
  objc_opt_self();
  if (!_NSNoChangeSingleton)
  {
    v3 = NSAllocateObject(self, 0, 0);
    _NSNoChangeSingleton = v3;
    if (v3)
    {
      v4.receiver = v3;
      v4.super_class = _NSNoChangeToken;
      objc_msgSendSuper2(&v4, sel_init);
    }
  }
}

- (_NSNoChangeToken)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _NSNoChangeToken;
  return [(_NSNoChangeToken *)&v4 init];
}

@end