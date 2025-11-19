@interface NSObject(VSBinderStorage)
- (VSBinder)vs_binderCreatingIfNeeded:()VSBinderStorage;
- (VSUnbinder)vs_unbinderCreatingIfNeeded:()VSBinderStorage;
@end

@implementation NSObject(VSBinderStorage)

- (VSBinder)vs_binderCreatingIfNeeded:()VSBinderStorage
{
  v4 = a1;
  objc_sync_enter(v4);
  v5 = objc_getAssociatedObject(v4, vs_binderCreatingIfNeeded__kVSBinderKey);
  v6 = v5;
  if (a3 && !v5)
  {
    v6 = [[VSBinder alloc] initWithBoundObject:v4];
    objc_setAssociatedObject(v4, vs_binderCreatingIfNeeded__kVSBinderKey, v6, 0x301);
  }

  objc_sync_exit(v4);

  return v6;
}

- (VSUnbinder)vs_unbinderCreatingIfNeeded:()VSBinderStorage
{
  v4 = a1;
  objc_sync_enter(v4);
  v5 = objc_getAssociatedObject(v4, vs_unbinderCreatingIfNeeded__kVSUnbinderKey);
  v6 = v5;
  if (a3 && !v5)
  {
    v6 = objc_alloc_init(VSUnbinder);
    objc_setAssociatedObject(v4, vs_unbinderCreatingIfNeeded__kVSUnbinderKey, v6, 0x301);
  }

  objc_sync_exit(v4);

  return v6;
}

@end