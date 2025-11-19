@interface BICPruneableItem
+ (id)pruneableItemFromEntryLocation:(id)a3 cost:(unint64_t)a4 pruneScore:(unint64_t)a5;
+ (unint64_t)pruneScoreFrom:(CGSize)a3 lastUsedDate:(id)a4 oldVersion:(BOOL)a5 expired:(BOOL)a6 processed:(BOOL)a7;
+ (void)_setTimeBuckets:(id)a3;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation BICPruneableItem

+ (void)_setTimeBuckets:(id)a3
{
  v3 = a3;
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 doubleValue];
  qword_33EB00 = v5;

  v6 = [v3 objectAtIndexedSubscript:1];
  [v6 doubleValue];
  qword_33EB08 = v7;

  v8 = [v3 objectAtIndexedSubscript:2];
  [v8 doubleValue];
  qword_33EB10 = v9;

  v11 = [v3 objectAtIndexedSubscript:3];

  [v11 doubleValue];
  qword_33EB18 = v10;
}

+ (unint64_t)pruneScoreFrom:(CGSize)a3 lastUsedDate:(id)a4 oldVersion:(BOOL)a5 expired:(BOOL)a6 processed:(BOOL)a7
{
  v7 = a7;
  height = a3.height;
  width = a3.width;
  [a4 timeIntervalSinceNow];
  v13 = -v12;
  v14 = 16000000;
  if (v7)
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
  if (!a5 && !a6)
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

+ (id)pruneableItemFromEntryLocation:(id)a3 cost:(unint64_t)a4 pruneScore:(unint64_t)a5
{
  v7 = a3;
  v8 = objc_alloc_init(BICPruneableItem);
  [(BICPruneableItem *)v8 setEntryLocation:v7];

  [(BICPruneableItem *)v8 setCost:a4];
  [(BICPruneableItem *)v8 setPruneScore:a5];

  return v8;
}

- (id)description
{
  v3 = [(BICPruneableItem *)self cost];
  v4 = [(BICPruneableItem *)self pruneScore];
  v5 = [(BICPruneableItem *)self entryLocation];
  v6 = [NSString stringWithFormat:@"cost: %-10ld pruneScore: %-10ld Loc: %@", v3, v4, v5];

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a3 pruneScore]);
  v5 = [NSNumber numberWithUnsignedInteger:[(BICPruneableItem *)self pruneScore]];
  v6 = [v4 compare:v5];

  return v6;
}

@end