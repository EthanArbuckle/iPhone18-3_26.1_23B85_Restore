@interface NSUserDefaults
+ (void)crl_registerDefaults;
- (BOOL)CRLSyncDataWasRemovedUserDefault;
@end

@implementation NSUserDefaults

+ (void)crl_registerDefaults
{
  if (qword_101A348C8 != -1)
  {
    sub_10133B2AC();
  }
}

- (BOOL)CRLSyncDataWasRemovedUserDefault
{
  selfCopy = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

@end