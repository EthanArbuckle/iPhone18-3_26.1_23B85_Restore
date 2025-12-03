@interface APPrivacyDisclosureAdapter
- (APPrivacyDisclosureAdapter)initWithPreflightManger:(id)manger;
@end

@implementation APPrivacyDisclosureAdapter

- (APPrivacyDisclosureAdapter)initWithPreflightManger:(id)manger
{
  mangerCopy = manger;
  v9.receiver = self;
  v9.super_class = APPrivacyDisclosureAdapter;
  v6 = [(APPrivacyDisclosureAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preflightManager, manger);
  }

  return v7;
}

@end