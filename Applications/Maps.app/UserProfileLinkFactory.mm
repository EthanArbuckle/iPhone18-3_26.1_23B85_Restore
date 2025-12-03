@interface UserProfileLinkFactory
- (id)createModelForType:(int64_t)type;
- (id)linkProviderForType:(int64_t)type;
@end

@implementation UserProfileLinkFactory

- (id)linkProviderForType:(int64_t)type
{
  if (type > 5)
  {
    sharedInstance = 0;
  }

  else
  {
    sharedInstance = [(__objc2_class *)*off_101652BC0[type] sharedInstance];
  }

  return sharedInstance;
}

- (id)createModelForType:(int64_t)type
{
  v3 = [(UserProfileLinkFactory *)self linkProviderForType:type];
  createUserProfileLink = [v3 createUserProfileLink];

  return createUserProfileLink;
}

@end