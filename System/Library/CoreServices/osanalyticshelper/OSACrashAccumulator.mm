@interface OSACrashAccumulator
- (BOOL)isValidEvent:(id)event;
- (NSSet)firstPartyBundleIDs;
- (OSACrashAccumulator)initWithTargetAppVersions:(id)versions isBaseline:(BOOL)baseline;
- (void)addEvent:(id)event withBundleID:(id)d;
@end

@implementation OSACrashAccumulator

- (OSACrashAccumulator)initWithTargetAppVersions:(id)versions isBaseline:(BOOL)baseline
{
  versionsCopy = versions;
  v14.receiver = self;
  v14.super_class = OSACrashAccumulator;
  v8 = [(OSAAccumulator *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_isBaseline = baseline;
    objc_storeStrong(&v8->_targetAppVersions, versions);
    if (baseline)
    {
      v10 = 0;
    }

    else
    {
      v10 = +[NSMutableSet set];
    }

    objc_storeStrong(&v9->_firstPartyBundleIDs, v10);
    if (!baseline)
    {
    }

    v11 = [NSSet setWithObjects:@"0xdead10cc", @"0x2bad45ec", @"0x8badf00d", 0];
    terminationReasonCodeDenyList = v9->_terminationReasonCodeDenyList;
    v9->_terminationReasonCodeDenyList = v11;
  }

  return v9;
}

- (NSSet)firstPartyBundleIDs
{
  if (self->_firstPartyBundleIDs)
  {
    v3 = [NSSet setWithSet:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isValidEvent:(id)event
{
  eventCopy = event;
  eventBody = [eventCopy eventBody];
  terminationReason = [eventBody terminationReason];
  namespaceName = [terminationReason namespaceName];
  if ([namespaceName isEqualToString:@"LIBXPC"])
  {
    eventBody2 = [eventCopy eventBody];
    terminationReason2 = [eventBody2 terminationReason];
    code = [terminationReason2 code];
    v11 = [code isEqualToString:@"0x3"];
  }

  else
  {
    v11 = 0;
  }

  eventBody3 = [eventCopy eventBody];
  LOBYTE(terminationReason) = 0;
  if (([eventBody3 isBeta] & 1) == 0 && (v11 & 1) == 0)
  {
    terminationReasonCodeDenyList = self->_terminationReasonCodeDenyList;
    eventBody4 = [eventCopy eventBody];
    terminationReason3 = [eventBody4 terminationReason];
    code2 = [terminationReason3 code];
    LODWORD(terminationReason) = ![(NSSet *)terminationReasonCodeDenyList containsObject:code2];
  }

  return terminationReason;
}

- (void)addEvent:(id)event withBundleID:(id)d
{
  eventCopy = event;
  dCopy = d;
  eventBody = [eventCopy eventBody];
  appVersion = [eventBody appVersion];
  eventBody2 = [eventCopy eventBody];
  bundleVersion = [eventBody2 bundleVersion];
  v11 = sub_10000A0C4(appVersion, bundleVersion);

  v12 = [(NSDictionary *)self->_targetAppVersions objectForKeyedSubscript:dCopy];
  targetKey = [(OSAAccumulator *)self targetKey];
  if (targetKey)
  {
    eventBody2 = [(OSAAccumulator *)self targetKey];
    if (![eventBody2 isEqualToString:dCopy])
    {
      goto LABEL_17;
    }
  }

  v14 = [(OSACrashAccumulator *)self isValidEvent:eventCopy];
  if (v11)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == 1 && ([v11 isEqualToString:v12] & 1) == 0)
  {
    eventBody3 = [eventCopy eventBody];
    if (![eventBody3 isFirstParty])
    {

      if (!targetKey)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    LOBYTE(v15) = !self->_isBaseline;
  }

  if (targetKey)
  {
  }

  if (v15)
  {
    [eventCopy timestamp];
    targetKey = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [(OSAAccumulator *)self addUnsignedInteger:1 forKey:dCopy onDate:targetKey];
    eventBody2 = [eventCopy eventBody];
    if ([eventBody2 isFirstParty])
    {
      isBaseline = self->_isBaseline;

      if (!isBaseline)
      {
        [(NSMutableSet *)self->_firstPartyBundleIDs addObject:dCopy];
      }

      goto LABEL_18;
    }

LABEL_17:

LABEL_18:
  }

LABEL_19:
}

@end