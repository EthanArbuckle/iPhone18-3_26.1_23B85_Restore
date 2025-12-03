@interface AppStoreReviewEligibilityUserDefaultsTracker
- (int64_t)countOf:(int64_t)of;
- (void)incrementCountOf:(int64_t)of;
- (void)resetCounts;
@end

@implementation AppStoreReviewEligibilityUserDefaultsTracker

- (int64_t)countOf:(int64_t)of
{
  _objc_retain(self);
  v6 = sub_10026CBB0(of);
  _objc_release(self);
  return v6;
}

- (void)incrementCountOf:(int64_t)of
{
  _objc_retain(self);
  sub_10026D718(of);
  _objc_release(self);
}

- (void)resetCounts
{
  _objc_retain(self);
  sub_10026D8DC();
  _objc_release(self);
}

@end