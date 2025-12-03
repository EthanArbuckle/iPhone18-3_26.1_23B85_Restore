@interface LPApplicationIdentification
+ (BOOL)isKnownApplication:(int64_t)application;
+ (BOOL)isMessagesOrMessagesViewService;
+ (id)bundleIdentifiersForKnownApplication:(int64_t)application;
+ (id)unlocalizedNameForBundleIdentifier:(id)identifier;
+ (id)unlocalizedNameForKnownApplication:(int64_t)application;
+ (int64_t)knownApplicationForBundleIdentifier:(id)identifier;
@end

@implementation LPApplicationIdentification

+ (BOOL)isKnownApplication:(int64_t)application
{
  if (knownApplication_onceToken != -1)
  {
    +[LPApplicationIdentification isKnownApplication:];
  }

  return knownApplication_knownApplication == application;
}

+ (id)bundleIdentifiersForKnownApplication:(int64_t)application
{
  if (application > 0x10)
  {
    return &unk_1F2483728;
  }

  else
  {
    return qword_1E7A356C0[application];
  }
}

+ (int64_t)knownApplicationForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = 1;
  while (1)
  {
    v5 = [LPApplicationIdentification bundleIdentifiersForKnownApplication:v4];
    v6 = [identifierCopy _lp_isEqualToAnyIgnoringCase:v5];

    if (v6)
    {
      break;
    }

    if (++v4 == 16)
    {
      v4 = 0;
      break;
    }
  }

  return v4;
}

+ (id)unlocalizedNameForKnownApplication:(int64_t)application
{
  if ((application - 4) > 9)
  {
    return 0;
  }

  else
  {
    return off_1E7A35748[application - 4];
  }
}

+ (id)unlocalizedNameForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self unlocalizedNameForKnownApplication:{objc_msgSend(self, "knownApplicationForBundleIdentifier:", identifierCopy)}];

  return v5;
}

+ (BOOL)isMessagesOrMessagesViewService
{
  if ([self isKnownApplication:2])
  {
    return 1;
  }

  return [self isKnownApplication:3];
}

@end