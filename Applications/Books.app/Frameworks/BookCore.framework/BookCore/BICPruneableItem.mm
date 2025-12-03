@interface BICPruneableItem
+ (id)pruneableItemFromEntryLocation:(id)location cost:(unint64_t)cost pruneScore:(unint64_t)score;
+ (unint64_t)pruneScoreFrom:(CGSize)from lastUsedDate:(id)date oldVersion:(BOOL)version expired:(BOOL)expired processed:(BOOL)processed;
+ (void)_setTimeBuckets:(id)buckets;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation BICPruneableItem

+ (void)_setTimeBuckets:(id)buckets
{
  bucketsCopy = buckets;
  v4 = [bucketsCopy objectAtIndexedSubscript:0];
  [v4 doubleValue];
  qword_33EB00 = v5;

  v6 = [bucketsCopy objectAtIndexedSubscript:1];
  [v6 doubleValue];
  qword_33EB08 = v7;

  v8 = [bucketsCopy objectAtIndexedSubscript:2];
  [v8 doubleValue];
  qword_33EB10 = v9;

  v11 = [bucketsCopy objectAtIndexedSubscript:3];

  [v11 doubleValue];
  qword_33EB18 = v10;
}

+ (unint64_t)pruneScoreFrom:(CGSize)from lastUsedDate:(id)date oldVersion:(BOOL)version expired:(BOOL)expired processed:(BOOL)processed
{
  processedCopy = processed;
  height = from.height;
  width = from.width;
  [date timeIntervalSinceNow];
  v13 = -v12;
  v14 = 16000000;
  if (processedCopy)
  {
    v14 = 0;
  }

  if (*&qword_33EB00 >= v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 32000000;
  }

  if (*&qword_33EB08 < v13)
  {
    v15 += 32000000;
  }

  if (*&qword_33EB10 < v13)
  {
    v15 += 32000000;
  }

  v16 = v15 + 32000000;
  if (*&qword_33EB18 >= v13)
  {
    v16 = v15;
  }

  result = 0xFFFFFFFFLL;
  if (!version && !expired)
  {
    if (v12 <= 0.0)
    {
      return v14 + (width * height) + v16;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

+ (id)pruneableItemFromEntryLocation:(id)location cost:(unint64_t)cost pruneScore:(unint64_t)score
{
  locationCopy = location;
  v8 = objc_alloc_init(BICPruneableItem);
  [(BICPruneableItem *)v8 setEntryLocation:locationCopy];

  [(BICPruneableItem *)v8 setCost:cost];
  [(BICPruneableItem *)v8 setPruneScore:score];

  return v8;
}

- (id)description
{
  cost = [(BICPruneableItem *)self cost];
  pruneScore = [(BICPruneableItem *)self pruneScore];
  entryLocation = [(BICPruneableItem *)self entryLocation];
  v6 = [NSString stringWithFormat:@"cost: %-10ld pruneScore: %-10ld Loc: %@", cost, pruneScore, entryLocation];

  return v6;
}

- (int64_t)compare:(id)compare
{
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [compare pruneScore]);
  v5 = [NSNumber numberWithUnsignedInteger:[(BICPruneableItem *)self pruneScore]];
  v6 = [v4 compare:v5];

  return v6;
}

@end