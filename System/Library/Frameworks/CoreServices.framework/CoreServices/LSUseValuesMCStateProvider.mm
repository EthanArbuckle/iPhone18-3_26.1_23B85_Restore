@interface LSUseValuesMCStateProvider
- (id)initWithAllowlistEnabled:(void *)enabled allowlistedBundles:(void *)bundles restrictedBundles:(void *)restrictedBundles ratingRankExceptions:(void *)exceptions maximumRating:;
@end

@implementation LSUseValuesMCStateProvider

- (id)initWithAllowlistEnabled:(void *)enabled allowlistedBundles:(void *)bundles restrictedBundles:(void *)restrictedBundles ratingRankExceptions:(void *)exceptions maximumRating:
{
  enabledCopy = enabled;
  bundlesCopy = bundles;
  restrictedBundlesCopy = restrictedBundles;
  exceptionsCopy = exceptions;
  if (self)
  {
    v23.receiver = self;
    v23.super_class = LSUseValuesMCStateProvider;
    v15 = objc_msgSendSuper2(&v23, sel_init);
    self = v15;
    if (v15)
    {
      *(v15 + 8) = a2;
      v16 = [enabledCopy copy];
      v17 = self[2];
      self[2] = v16;

      v18 = [bundlesCopy copy];
      v19 = self[3];
      self[3] = v18;

      v20 = [restrictedBundlesCopy copy];
      v21 = self[4];
      self[4] = v20;

      objc_storeStrong(self + 5, exceptions);
    }
  }

  return self;
}

@end