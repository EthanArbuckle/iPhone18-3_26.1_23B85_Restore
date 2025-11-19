@interface CRRecentContactsLibrary
+ (id)mailSourcesBundleIdentifiers;
+ (id)messageSourcesBundleIdentifiers;
+ (id)webSourcesBundleIdentifiers;
@end

@implementation CRRecentContactsLibrary

+ (id)messageSourcesBundleIdentifiers
{
  if (qword_10195E3F8 != -1)
  {
    dispatch_once(&qword_10195E3F8, &stru_101636EA8);
  }

  v3 = qword_10195E3F0;

  return v3;
}

+ (id)webSourcesBundleIdentifiers
{
  if (qword_10195E418 != -1)
  {
    dispatch_once(&qword_10195E418, &stru_101636EE8);
  }

  v3 = qword_10195E410;

  return v3;
}

+ (id)mailSourcesBundleIdentifiers
{
  if (qword_10195E408 != -1)
  {
    dispatch_once(&qword_10195E408, &stru_101636EC8);
  }

  v3 = qword_10195E400;

  return v3;
}

@end