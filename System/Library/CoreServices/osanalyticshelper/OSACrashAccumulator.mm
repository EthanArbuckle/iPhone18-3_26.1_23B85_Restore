@interface OSACrashAccumulator
- (BOOL)isValidEvent:(id)a3;
- (NSSet)firstPartyBundleIDs;
- (OSACrashAccumulator)initWithTargetAppVersions:(id)a3 isBaseline:(BOOL)a4;
- (void)addEvent:(id)a3 withBundleID:(id)a4;
@end

@implementation OSACrashAccumulator

- (OSACrashAccumulator)initWithTargetAppVersions:(id)a3 isBaseline:(BOOL)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = OSACrashAccumulator;
  v8 = [(OSAAccumulator *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_isBaseline = a4;
    objc_storeStrong(&v8->_targetAppVersions, a3);
    if (a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = +[NSMutableSet set];
    }

    objc_storeStrong(&v9->_firstPartyBundleIDs, v10);
    if (!a4)
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

- (BOOL)isValidEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 eventBody];
  v6 = [v5 terminationReason];
  v7 = [v6 namespaceName];
  if ([v7 isEqualToString:@"LIBXPC"])
  {
    v8 = [v4 eventBody];
    v9 = [v8 terminationReason];
    v10 = [v9 code];
    v11 = [v10 isEqualToString:@"0x3"];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 eventBody];
  LOBYTE(v6) = 0;
  if (([v12 isBeta] & 1) == 0 && (v11 & 1) == 0)
  {
    terminationReasonCodeDenyList = self->_terminationReasonCodeDenyList;
    v14 = [v4 eventBody];
    v15 = [v14 terminationReason];
    v16 = [v15 code];
    LODWORD(v6) = ![(NSSet *)terminationReasonCodeDenyList containsObject:v16];
  }

  return v6;
}

- (void)addEvent:(id)a3 withBundleID:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [v18 eventBody];
  v8 = [v7 appVersion];
  v9 = [v18 eventBody];
  v10 = [v9 bundleVersion];
  v11 = sub_10000A0C4(v8, v10);

  v12 = [(NSDictionary *)self->_targetAppVersions objectForKeyedSubscript:v6];
  v13 = [(OSAAccumulator *)self targetKey];
  if (v13)
  {
    v9 = [(OSAAccumulator *)self targetKey];
    if (![v9 isEqualToString:v6])
    {
      goto LABEL_17;
    }
  }

  v14 = [(OSACrashAccumulator *)self isValidEvent:v18];
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
    v16 = [v18 eventBody];
    if (![v16 isFirstParty])
    {

      if (!v13)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    LOBYTE(v15) = !self->_isBaseline;
  }

  if (v13)
  {
  }

  if (v15)
  {
    [v18 timestamp];
    v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [(OSAAccumulator *)self addUnsignedInteger:1 forKey:v6 onDate:v13];
    v9 = [v18 eventBody];
    if ([v9 isFirstParty])
    {
      isBaseline = self->_isBaseline;

      if (!isBaseline)
      {
        [(NSMutableSet *)self->_firstPartyBundleIDs addObject:v6];
      }

      goto LABEL_18;
    }

LABEL_17:

LABEL_18:
  }

LABEL_19:
}

@end