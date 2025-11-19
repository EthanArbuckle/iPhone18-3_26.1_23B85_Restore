@interface NEPathEvent
- (id)initWithType:(void *)a3 bundleID:;
@end

@implementation NEPathEvent

- (id)initWithType:(void *)a3 bundleID:
{
  v6 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = NEPathEvent;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v7;
    if (v7)
    {
      v7[1] = a2;
      objc_storeStrong(v7 + 2, a3);
    }
  }

  return a1;
}

@end