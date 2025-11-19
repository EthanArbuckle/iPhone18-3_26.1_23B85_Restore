@interface UserProfileLinkFactory
- (id)createModelForType:(int64_t)a3;
- (id)linkProviderForType:(int64_t)a3;
@end

@implementation UserProfileLinkFactory

- (id)linkProviderForType:(int64_t)a3
{
  if (a3 > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(__objc2_class *)*off_101652BC0[a3] sharedInstance];
  }

  return v5;
}

- (id)createModelForType:(int64_t)a3
{
  v3 = [(UserProfileLinkFactory *)self linkProviderForType:a3];
  v4 = [v3 createUserProfileLink];

  return v4;
}

@end