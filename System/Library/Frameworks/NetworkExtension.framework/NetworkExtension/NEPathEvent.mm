@interface NEPathEvent
- (id)initWithType:(void *)type bundleID:;
@end

@implementation NEPathEvent

- (id)initWithType:(void *)type bundleID:
{
  typeCopy = type;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = NEPathEvent;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    self = v7;
    if (v7)
    {
      v7[1] = a2;
      objc_storeStrong(v7 + 2, type);
    }
  }

  return self;
}

@end