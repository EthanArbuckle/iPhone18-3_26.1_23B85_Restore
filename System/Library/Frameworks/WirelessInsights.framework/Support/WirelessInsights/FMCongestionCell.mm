@interface FMCongestionCell
- (BOOL)canReceiveCongestionMetric;
- (BOOL)isCongested;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMatchForMetric:(id)a3;
- (id)description;
- (id)dlBottleneckScoreAsString;
- (id)init:(id)a3 subscriptionID:(id)a4 mcc:(id)a5 mnc:(id)a6 gci:(id)a7 rat:(id)a8 arfcnOrUarfcn:(id)a9;
- (id)ulBottleneckScoreAsString;
- (unint64_t)hash;
@end

@implementation FMCongestionCell

- (id)dlBottleneckScoreAsString
{
  v3 = [(FMCongestionCell *)self congestionMetric];

  if (!v3)
  {
    return @"unknown";
  }

  v4 = [(FMCongestionCell *)self congestionMetric];
  v5 = [v4 dlBottleneckScoreHigh];

  if (v5)
  {
    return @"high";
  }

  v7 = [(FMCongestionCell *)self congestionMetric];
  v8 = [v7 dlBottleneckScoreMedium];

  if (v8)
  {
    return @"medium";
  }

  v9 = [(FMCongestionCell *)self congestionMetric];
  v10 = [v9 dlBottleneckScoreLow];

  if (v10)
  {
    return @"low";
  }

  v11 = [(FMCongestionCell *)self congestionMetric];
  v12 = [v11 dlBottleneckScoreNo];

  if (v12)
  {
    return @"no";
  }

  v13 = [(FMCongestionCell *)self congestionMetric];
  v14 = [v13 dlBottleneckScoreInvalid];

  if (v14)
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
  v3 = [(FMCongestionCell *)self congestionMetric];

  if (!v3)
  {
    return @"unknown";
  }

  v4 = [(FMCongestionCell *)self congestionMetric];
  v5 = [v4 ulBottleneckScoreHigh];

  if (v5)
  {
    return @"high";
  }

  v7 = [(FMCongestionCell *)self congestionMetric];
  v8 = [v7 ulBottleneckScoreMedium];

  if (v8)
  {
    return @"medium";
  }

  v9 = [(FMCongestionCell *)self congestionMetric];
  v10 = [v9 ulBottleneckScoreLow];

  if (v10)
  {
    return @"low";
  }

  v11 = [(FMCongestionCell *)self congestionMetric];
  v12 = [v11 ulBottleneckScoreNo];

  if (v12)
  {
    return @"no";
  }

  v13 = [(FMCongestionCell *)self congestionMetric];
  v14 = [v13 ulBottleneckScoreInvalid];

  if (v14)
  {
    return @"invalid";
  }

  else
  {
    return @"none";
  }
}

- (id)init:(id)a3 subscriptionID:(id)a4 mcc:(id)a5 mnc:(id)a6 gci:(id)a7 rat:(id)a8 arfcnOrUarfcn:(id)a9
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v16 = a8;
  v17 = a9;
  v28.receiver = self;
  v28.super_class = FMCongestionCell;
  v18 = [(FMCongestionCell *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_timestamp, a3);
    objc_storeStrong(&v19->_lastUpdatedTimestamp, a3);
    objc_storeStrong(&v19->_subscriptionID, a4);
    objc_storeStrong(&v19->_mcc, a5);
    objc_storeStrong(&v19->_mnc, a6);
    objc_storeStrong(&v19->_gci, a7);
    objc_storeStrong(&v19->_rat, a8);
    objc_storeStrong(&v19->_arfcnOrUarfcn, a9);
    congestionMetric = v19->_congestionMetric;
    v19->_congestionMetric = 0;

    v21 = v19;
  }

  return v19;
}

- (id)description
{
  v3 = [(FMCongestionCell *)self timestamp];
  v4 = [(FMCongestionCell *)self lastUpdatedTimestamp];
  v5 = [(FMCongestionCell *)self subscriptionID];
  v6 = [(FMCongestionCell *)self mcc];
  v7 = [(FMCongestionCell *)self mnc];
  v8 = [(FMCongestionCell *)self gci];
  v9 = [(FMCongestionCell *)self rat];
  v10 = [(FMCongestionCell *)self arfcnOrUarfcn];
  v11 = [(FMCongestionCell *)self congestionMetric];
  v12 = [NSString stringWithFormat:@"timestamp %@, lastUpdatedTimestamp %@, subscriptionID %@, mcc %@, mnc %@, gci %@, rat %@, arfcnOrUarfcn %@, congestionMetric %@", v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)isMatchForMetric:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(FMCongestionCell *)self gci];
    v6 = [v4 gci];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(FMCongestionCell *)self subscriptionID];
      v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 subsId]);
      v9 = [v7 isEqualToNumber:v8];
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
  v3 = [(FMCongestionCell *)self congestionMetric];

  if (v3)
  {
    v4 = [(FMCongestionCell *)self congestionMetric];
    LOBYTE(v3) = [v4 isCongested];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(FMCongestionCell *)self subscriptionID];
      v7 = [v5 subscriptionID];
      if (![v6 isEqualToNumber:v7])
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

      v19 = [(FMCongestionCell *)self arfcnOrUarfcn];
      if (v19 || ([v5 arfcnOrUarfcn], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v18 = [(FMCongestionCell *)self arfcnOrUarfcn];
        v17 = [v5 arfcnOrUarfcn];
        v12 = [v18 isEqualToNumber:v17];

        v13 = v19;
        if (v19)
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
  v3 = [(FMCongestionCell *)self subscriptionID];
  v4 = [v3 hash];

  v5 = [(FMCongestionCell *)self mcc];
  v6 = [v5 hash];

  v7 = [(FMCongestionCell *)self mnc];
  v8 = [v7 hash];

  v9 = [(FMCongestionCell *)self gci];
  v10 = [v9 hash];

  v11 = [(FMCongestionCell *)self rat];
  v12 = [v11 hash];

  v13 = [(FMCongestionCell *)self arfcnOrUarfcn];
  v14 = [v13 hash];
  v15 = v8 + 1024 * v4 + 32 * (v6 - v4) - (v6 - v4) + -32 * v4;
  v16 = v12 - &v10[32 * v15 - v15] + 32 * &v10[32 * v15 - v15];
  v17 = v14 + 32 * v16 - v16;

  return v17 + 887503681;
}

@end