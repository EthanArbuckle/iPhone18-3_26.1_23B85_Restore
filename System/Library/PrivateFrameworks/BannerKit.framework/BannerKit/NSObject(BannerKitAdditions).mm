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

  v4 = a1;
  objc_sync_enter(v4);
  v5 = objc_getAssociatedObject(v4, "com.apple.BannerKit.presentableUniqueIdentifier");
  objc_sync_exit(v4);

  return v5;
}

- (void)uniquePresentableIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSObject+BannerKit.m" lineNumber:22 description:{@"Attempt to obtain unique presentable identifier from object that isn't a presentable: %@", a2}];
}

@end