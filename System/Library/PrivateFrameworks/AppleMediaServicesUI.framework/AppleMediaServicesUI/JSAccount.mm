@interface JSAccount
- (BOOL)hasFamilySharingEnabled;
- (BOOL)hasiCloudFamily;
- (BOOL)isHSA2;
@end

@implementation JSAccount

- (BOOL)isHSA2
{
  selfCopy = self;
  v3 = sub_10004F7D4();

  return v3 & 1;
}

- (BOOL)hasFamilySharingEnabled
{
  selfCopy = self;
  v3 = sub_1000FF734();

  return v3 & 1;
}

- (BOOL)hasiCloudFamily
{
  selfCopy = self;
  v3 = sub_1000FF774();

  return v3 & 1;
}

@end