@interface LPApplicationIdentification
+ (BOOL)isKnownApplication:(int64_t)a3;
+ (BOOL)isMessagesOrMessagesViewService;
+ (id)bundleIdentifiersForKnownApplication:(int64_t)a3;
+ (id)unlocalizedNameForBundleIdentifier:(id)a3;
+ (id)unlocalizedNameForKnownApplication:(int64_t)a3;
+ (int64_t)knownApplicationForBundleIdentifier:(id)a3;
@end

@implementation LPApplicationIdentification

+ (BOOL)isKnownApplication:(int64_t)a3
{
  if (knownApplication_onceToken != -1)
  {
    +[LPApplicationIdentification isKnownApplication:];
  }

  return knownApplication_knownApplication == a3;
}

+ (id)bundleIdentifiersForKnownApplication:(int64_t)a3
{
  if (a3 > 0x10)
  {
    return &unk_1F2483728;
  }

  else
  {
    return qword_1E7A356C0[a3];
  }
}

+ (int64_t)knownApplicationForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = 1;
  while (1)
  {
    v5 = [LPApplicationIdentification bundleIdentifiersForKnownApplication:v4];
    v6 = [v3 _lp_isEqualToAnyIgnoringCase:v5];

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

+ (id)unlocalizedNameForKnownApplication:(int64_t)a3
{
  if ((a3 - 4) > 9)
  {
    return 0;
  }

  else
  {
    return off_1E7A35748[a3 - 4];
  }
}

+ (id)unlocalizedNameForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 unlocalizedNameForKnownApplication:{objc_msgSend(a1, "knownApplicationForBundleIdentifier:", v4)}];

  return v5;
}

+ (BOOL)isMessagesOrMessagesViewService
{
  if ([a1 isKnownApplication:2])
  {
    return 1;
  }

  return [a1 isKnownApplication:3];
}

@end