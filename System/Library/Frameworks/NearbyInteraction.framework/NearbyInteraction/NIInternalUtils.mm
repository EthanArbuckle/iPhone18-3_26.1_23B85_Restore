@interface NIInternalUtils
+ (BOOL)nearbyObjectUpdateRate:(int64_t)rate isGreaterThan:(int64_t)than;
+ (const)AntennaDiversityOverrideToString:(int64_t)string;
+ (const)NINearbyObjectDiscoveryPriorityToString:(int64_t)string;
+ (const)NINearbyObjectUpdateRateToShortString:(int64_t)string;
+ (const)NINearbyObjectUpdateRateToString:(int64_t)string;
+ (const)NINearbyPeerUseCaseToString:(int64_t)string;
+ (const)NIRelationshipSpecifierToString:(unint64_t)string;
+ (const)NISessionBackgroundModeToString:(int64_t)string;
+ (id)NISystemPassiveAccessIntentToString:(unsigned int)string;
+ (id)NISystemResourceAvailabilityToString:(unint64_t)string;
@end

@implementation NIInternalUtils

+ (const)NIRelationshipSpecifierToString:(unint64_t)string
{
  if (string > 0xF)
  {
    return "N/A";
  }

  else
  {
    return off_1E7F13768[string];
  }
}

+ (const)AntennaDiversityOverrideToString:(int64_t)string
{
  if (string > 2)
  {
    return "N/A";
  }

  else
  {
    return off_1E7F137E8[string];
  }
}

+ (BOOL)nearbyObjectUpdateRate:(int64_t)rate isGreaterThan:(int64_t)than
{
  v4 = 9u >> (than & 0xF);
  if (than >= 4)
  {
    LOBYTE(v4) = 0;
  }

  v5 = 8u >> (than & 0xF);
  if (than >= 4)
  {
    LOBYTE(v5) = 0;
  }

  if (rate)
  {
    LOBYTE(v5) = 0;
  }

  if (rate == 1)
  {
    LOBYTE(v5) = v4;
  }

  if (rate == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (rate == than)
  {
    v6 = 0;
  }

  return v6 & 1;
}

+ (const)NISessionBackgroundModeToString:(int64_t)string
{
  if (string >= 3)
  {
    +[NIInternalUtils NISessionBackgroundModeToString:];
  }

  return off_1E7F13800[string];
}

+ (const)NINearbyPeerUseCaseToString:(int64_t)string
{
  if (!string)
  {
    return "Generic";
  }

  if (string != 1)
  {
    +[NIInternalUtils NINearbyPeerUseCaseToString:];
  }

  return "[Redacted]";
}

+ (const)NINearbyObjectUpdateRateToString:(int64_t)string
{
  if (string >= 4)
  {
    +[NIInternalUtils NINearbyObjectUpdateRateToString:];
  }

  return off_1E7F13818[string];
}

+ (const)NINearbyObjectUpdateRateToShortString:(int64_t)string
{
  if (string >= 4)
  {
    +[NIInternalUtils NINearbyObjectUpdateRateToShortString:];
  }

  return off_1E7F13838[string];
}

+ (const)NINearbyObjectDiscoveryPriorityToString:(int64_t)string
{
  if (!string)
  {
    return "Default";
  }

  if (string != 1)
  {
    +[NIInternalUtils NINearbyObjectDiscoveryPriorityToString:];
  }

  return "Low";
}

+ (id)NISystemResourceAvailabilityToString:(unint64_t)string
{
  v4 = objc_autoreleasePoolPush();
  if (string)
  {
    v5 = [MEMORY[0x1E696AD60] stringWithString:@"Unavailable:"];
    v6 = v5;
    if (string)
    {
      [v5 appendString:@"AirplaneMode|"];
    }

    if ((string & 2) != 0)
    {
      [v6 appendString:@"GeographicalRegion|"];
    }

    if ((string & 4) != 0)
    {
      [v6 appendString:@"RecoveringFromError|"];
    }

    if ((string & 8) != 0)
    {
      [v6 appendString:@"NotReady|"];
    }

    if ((string & 0x10) != 0)
    {
      [v6 appendString:@"Unsupported|"];
    }

    v7 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 1}];
  }

  else
  {
    v7 = @"Available";
  }

  objc_autoreleasePoolPop(v4);

  return v7;
}

+ (id)NISystemPassiveAccessIntentToString:(unsigned int)string
{
  v4 = objc_autoreleasePoolPush();
  if (string)
  {
    v5 = [MEMORY[0x1E696AD60] stringWithString:@"Intent:"];
    v6 = v5;
    if (string)
    {
      [v5 appendString:@"WristRaise|"];
    }

    if ((string & 2) != 0)
    {
      [v6 appendString:@"GeofenceEntry|"];
    }

    if ((string & 4) != 0)
    {
      [v6 appendString:@"WalletInteraction|"];
    }

    v7 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 1}];
  }

  else
  {
    v7 = @"NoIntent";
  }

  objc_autoreleasePoolPop(v4);

  return v7;
}

@end