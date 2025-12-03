@interface NSObject(BannerKitAdditions)
- (id)uniquePresentableIdentifier;
- (void)uniquePresentableIdentifier;
@end

@implementation NSObject(BannerKitAdditions)

- (id)uniquePresentableIdentifier
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(NSObject(BannerKitAdditions) *)a2 uniquePresentableIdentifier];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_getAssociatedObject(selfCopy, "com.apple.BannerKit.presentableUniqueIdentifier");
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)uniquePresentableIdentifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"NSObject+BannerKit.m" lineNumber:22 description:{@"Attempt to obtain unique presentable identifier from object that isn't a presentable: %@", a2}];
}

@end