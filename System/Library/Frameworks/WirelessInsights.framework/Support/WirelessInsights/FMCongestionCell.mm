@interface FMCongestionCell
- (BOOL)canReceiveCongestionMetric;
- (BOOL)isCongested;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMatchForMetric:(id)metric;
- (id)description;
- (id)dlBottleneckScoreAsString;
- (id)init:(id)init subscriptionID:(id)d mcc:(id)mcc mnc:(id)mnc gci:(id)gci rat:(id)rat arfcnOrUarfcn:(id)uarfcn;
- (id)ulBottleneckScoreAsString;
- (unint64_t)hash;
@end

@implementation FMCongestionCell

- (id)dlBottleneckScoreAsString
{
  congestionMetric = [(FMCongestionCell *)self congestionMetric];

  if (!congestionMetric)
  {
    return @"unknown";
  }

  congestionMetric2 = [(FMCongestionCell *)self congestionMetric];
  dlBottleneckScoreHigh = [congestionMetric2 dlBottleneckScoreHigh];

  if (dlBottleneckScoreHigh)
  {
    return @"high";
  }

  congestionMetric3 = [(FMCongestionCell *)self congestionMetric];
  dlBottleneckScoreMedium = [congestionMetric3 dlBottleneckScoreMedium];

  if (dlBottleneckScoreMedium)
  {
    return @"medium";
  }

  congestionMetric4 = [(FMCongestionCell *)self congestionMetric];
  dlBottleneckScoreLow = [congestionMetric4 dlBottleneckScoreLow];

  if (dlBottleneckScoreLow)
  {
    return @"low";
  }

  congestionMetric5 = [(FMCongestionCell *)self congestionMetric];
  dlBottleneckScoreNo = [congestionMetric5 dlBottleneckScoreNo];

  if (dlBottleneckScoreNo)
  {
    return @"no";
  }

  congestionMetric6 = [(FMCongestionCell *)self congestionMetric];
  dlBottleneckScoreInvalid = [congestionMetric6 dlBottleneckScoreInvalid];

  if (dlBottleneckScoreInvalid)
  {
    return @"invalid";
  }

  else
  {
    return @"none";
  }
}

- (id)ulBottleneckScoreAsString
{
  congestionMetric = [(FMCongestionCell *)self congestionMetric];

  if (!congestionMetric)
  {
    return @"unknown";
  }

  congestionMetric2 = [(FMCongestionCell *)self congestionMetric];
  ulBottleneckScoreHigh = [congestionMetric2 ulBottleneckScoreHigh];

  if (ulBottleneckScoreHigh)
  {
    return @"high";
  }

  congestionMetric3 = [(FMCongestionCell *)self congestionMetric];
  ulBottleneckScoreMedium = [congestionMetric3 ulBottleneckScoreMedium];

  if (ulBottleneckScoreMedium)
  {
    return @"medium";
  }

  congestionMetric4 = [(FMCongestionCell *)self congestionMetric];
  ulBottleneckScoreLow = [congestionMetric4 ulBottleneckScoreLow];

  if (ulBottleneckScoreLow)
  {
    return @"low";
  }

  congestionMetric5 = [(FMCongestionCell *)self congestionMetric];
  ulBottleneckScoreNo = [congestionMetric5 ulBottleneckScoreNo];

  if (ulBottleneckScoreNo)
  {
    return @"no";
  }

  congestionMetric6 = [(FMCongestionCell *)self congestionMetric];
  ulBottleneckScoreInvalid = [congestionMetric6 ulBottleneckScoreInvalid];

  if (ulBottleneckScoreInvalid)
  {
    return @"invalid";
  }

  else
  {
    return @"none";
  }
}

- (id)init:(id)init subscriptionID:(id)d mcc:(id)mcc mnc:(id)mnc gci:(id)gci rat:(id)rat arfcnOrUarfcn:(id)uarfcn
{
  initCopy = init;
  dCopy = d;
  mccCopy = mcc;
  mncCopy = mnc;
  gciCopy = gci;
  ratCopy = rat;
  uarfcnCopy = uarfcn;
  v28.receiver = self;
  v28.super_class = FMCongestionCell;
  v18 = [(FMCongestionCell *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_timestamp, init);
    objc_storeStrong(&v19->_lastUpdatedTimestamp, init);
    objc_storeStrong(&v19->_subscriptionID, d);
    objc_storeStrong(&v19->_mcc, mcc);
    objc_storeStrong(&v19->_mnc, mnc);
    objc_storeStrong(&v19->_gci, gci);
    objc_storeStrong(&v19->_rat, rat);
    objc_storeStrong(&v19->_arfcnOrUarfcn, uarfcn);
    congestionMetric = v19->_congestionMetric;
    v19->_congestionMetric = 0;

    v21 = v19;
  }

  return v19;
}

- (id)description
{
  timestamp = [(FMCongestionCell *)self timestamp];
  lastUpdatedTimestamp = [(FMCongestionCell *)self lastUpdatedTimestamp];
  subscriptionID = [(FMCongestionCell *)self subscriptionID];
  v6 = [(FMCongestionCell *)self mcc];
  v7 = [(FMCongestionCell *)self mnc];
  v8 = [(FMCongestionCell *)self gci];
  v9 = [(FMCongestionCell *)self rat];
  arfcnOrUarfcn = [(FMCongestionCell *)self arfcnOrUarfcn];
  congestionMetric = [(FMCongestionCell *)self congestionMetric];
  v12 = [NSString stringWithFormat:@"timestamp %@, lastUpdatedTimestamp %@, subscriptionID %@, mcc %@, mnc %@, gci %@, rat %@, arfcnOrUarfcn %@, congestionMetric %@", timestamp, lastUpdatedTimestamp, subscriptionID, v6, v7, v8, v9, arfcnOrUarfcn, congestionMetric];

  return v12;
}

- (BOOL)isMatchForMetric:(id)metric
{
  metricCopy = metric;
  if (metricCopy)
  {
    v5 = [(FMCongestionCell *)self gci];
    v6 = [metricCopy gci];
    if ([v5 isEqualToString:v6])
    {
      subscriptionID = [(FMCongestionCell *)self subscriptionID];
      v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [metricCopy subsId]);
      v9 = [subscriptionID isEqualToNumber:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isCongested
{
  congestionMetric = [(FMCongestionCell *)self congestionMetric];

  if (congestionMetric)
  {
    congestionMetric2 = [(FMCongestionCell *)self congestionMetric];
    LOBYTE(congestionMetric) = [congestionMetric2 isCongested];
  }

  return congestionMetric;
}

- (BOOL)canReceiveCongestionMetric
{
  v3 = [(FMCongestionCell *)self rat];
  v4 = [NSString stringWithUTF8String:"LTE"];
  if ([v3 isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(FMCongestionCell *)self rat];
    v7 = [NSString stringWithUTF8String:"NR_NSA"];
    v5 = [v6 isEqualToString:v7];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      subscriptionID = [(FMCongestionCell *)self subscriptionID];
      subscriptionID2 = [v5 subscriptionID];
      if (![subscriptionID isEqualToNumber:subscriptionID2])
      {
        v12 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v8 = [(FMCongestionCell *)self mcc];
      v9 = [v5 mcc];
      if (![v8 isEqualToNumber:v9])
      {
        v12 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v10 = [(FMCongestionCell *)self mnc];
      v11 = [v5 mnc];
      if (![v10 isEqualToNumber:v11])
      {
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v23 = [(FMCongestionCell *)self gci];
      v22 = [v5 gci];
      if (![v23 isEqualToString:?])
      {
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v21 = [(FMCongestionCell *)self rat];
      v20 = [v5 rat];
      if (![v21 isEqualToString:?])
      {
        v12 = 0;
LABEL_21:

        goto LABEL_22;
      }

      arfcnOrUarfcn = [(FMCongestionCell *)self arfcnOrUarfcn];
      if (arfcnOrUarfcn || ([v5 arfcnOrUarfcn], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        arfcnOrUarfcn2 = [(FMCongestionCell *)self arfcnOrUarfcn];
        arfcnOrUarfcn3 = [v5 arfcnOrUarfcn];
        v12 = [arfcnOrUarfcn2 isEqualToNumber:arfcnOrUarfcn3];

        v13 = arfcnOrUarfcn;
        if (arfcnOrUarfcn)
        {
LABEL_20:

          goto LABEL_21;
        }
      }

      else
      {
        v16 = 0;
        v12 = 1;
      }

      v13 = v16;
      goto LABEL_20;
    }
  }

  v12 = 0;
LABEL_26:

  return v12;
}

- (unint64_t)hash
{
  subscriptionID = [(FMCongestionCell *)self subscriptionID];
  v4 = [subscriptionID hash];

  v5 = [(FMCongestionCell *)self mcc];
  v6 = [v5 hash];

  v7 = [(FMCongestionCell *)self mnc];
  v8 = [v7 hash];

  v9 = [(FMCongestionCell *)self gci];
  v10 = [v9 hash];

  v11 = [(FMCongestionCell *)self rat];
  v12 = [v11 hash];

  arfcnOrUarfcn = [(FMCongestionCell *)self arfcnOrUarfcn];
  v14 = [arfcnOrUarfcn hash];
  v15 = v8 + 1024 * v4 + 32 * (v6 - v4) - (v6 - v4) + -32 * v4;
  v16 = v12 - &v10[32 * v15 - v15] + 32 * &v10[32 * v15 - v15];
  v17 = v14 + 32 * v16 - v16;

  return v17 + 887503681;
}

@end