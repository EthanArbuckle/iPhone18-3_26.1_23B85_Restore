@interface NSObject
- (BOOL)_maps_needsUpdateWithSelector:(SEL)a3;
- (void)_maps_setNeedsUpdate:(BOOL)a3 withSelector:(SEL)a4;
@end

@implementation NSObject

- (void)_maps_setNeedsUpdate:(BOOL)a3 withSelector:(SEL)a4
{
  v5 = a3;
  v7 = objc_getAssociatedObject(self, off_5A128);
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v8 = objc_alloc_init(NSMutableSet);
      objc_setAssociatedObject(self, off_5A128, v8, &dword_0 + 1);
    }

    v9 = NSStringFromSelector(a4);
    [v8 addObject:v9];

    v10 = objc_getAssociatedObject(self, off_5A120);

    if (!v10)
    {
      objc_setAssociatedObject(self, off_5A120, &__kCFBooleanTrue, &dword_0 + 3);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_7C5C;
      block[3] = &unk_34970;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v11 = NSStringFromSelector(a4);
    [v8 removeObject:v11];
  }
}

- (BOOL)_maps_needsUpdateWithSelector:(SEL)a3
{
  v4 = objc_getAssociatedObject(self, off_5A128);
  v5 = NSStringFromSelector(a3);
  v6 = [v4 containsObject:v5];

  return v6;
}

@end