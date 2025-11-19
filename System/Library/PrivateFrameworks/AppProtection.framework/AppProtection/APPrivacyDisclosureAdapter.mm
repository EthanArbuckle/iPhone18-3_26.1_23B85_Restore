@interface APPrivacyDisclosureAdapter
- (APPrivacyDisclosureAdapter)initWithPreflightManger:(id)a3;
@end

@implementation APPrivacyDisclosureAdapter

- (APPrivacyDisclosureAdapter)initWithPreflightManger:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APPrivacyDisclosureAdapter;
  v6 = [(APPrivacyDisclosureAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preflightManager, a3);
  }

  return v7;
}

@end