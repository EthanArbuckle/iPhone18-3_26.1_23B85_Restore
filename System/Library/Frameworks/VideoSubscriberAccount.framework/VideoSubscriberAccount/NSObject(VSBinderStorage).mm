@interface NSObject(VSBinderStorage)
- (VSBinder)vs_binderCreatingIfNeeded:()VSBinderStorage;
- (VSUnbinder)vs_unbinderCreatingIfNeeded:()VSBinderStorage;
@end

@implementation NSObject(VSBinderStorage)

- (VSBinder)vs_binderCreatingIfNeeded:()VSBinderStorage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_getAssociatedObject(selfCopy, vs_binderCreatingIfNeeded__kVSBinderKey);
  v6 = v5;
  if (a3 && !v5)
  {
    v6 = [[VSBinder alloc] initWithBoundObject:selfCopy];
    objc_setAssociatedObject(selfCopy, vs_binderCreatingIfNeeded__kVSBinderKey, v6, 0x301);
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (VSUnbinder)vs_unbinderCreatingIfNeeded:()VSBinderStorage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_getAssociatedObject(selfCopy, vs_unbinderCreatingIfNeeded__kVSUnbinderKey);
  v6 = v5;
  if (a3 && !v5)
  {
    v6 = objc_alloc_init(VSUnbinder);
    objc_setAssociatedObject(selfCopy, vs_unbinderCreatingIfNeeded__kVSUnbinderKey, v6, 0x301);
  }

  objc_sync_exit(selfCopy);

  return v6;
}

@end