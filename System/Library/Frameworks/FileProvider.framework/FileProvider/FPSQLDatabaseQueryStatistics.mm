@interface FPSQLDatabaseQueryStatistics
- (FPSQLDatabaseQueryStatistics)initWithCoder:(id)a3;
- (FPSQLDatabaseQueryStatistics)initWithMinTime:(double)a3 maxTime:(double)a4 cumulatedTime:(double)a5 cumulatedSquareDiffFromMean:(double)a6 count:(int64_t)a7 queryPlan:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPSQLDatabaseQueryStatistics

- (FPSQLDatabaseQueryStatistics)initWithMinTime:(double)a3 maxTime:(double)a4 cumulatedTime:(double)a5 cumulatedSquareDiffFromMean:(double)a6 count:(int64_t)a7 queryPlan:(id)a8
{
  v15 = a8;
  v19.receiver = self;
  v19.super_class = FPSQLDatabaseQueryStatistics;
  v16 = [(FPSQLDatabaseQueryStatistics *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_minTime = a3;
    v16->_maxTime = a4;
    v16->_cumulatedTime = a5;
    v16->_cumulatedSquareDiffFromMean = a6;
    v16->_count = a7;
    objc_storeStrong(&v16->_queryPlan, a8);
  }

  return v17;
}

- (id)description
{
  queryPlan = self->_queryPlan;
  if (!queryPlan)
  {
    queryPlan = &stru_1F1F94B20;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@" minTime %fs, maxTime %fs, totalTime %fs, mean %fs, stdDev %fs, count %llu, _queryPlan %@", *&self->_minTime, *&self->_maxTime, *&self->_cumulatedTime, self->_cumulatedTime / self->_count, sqrt(self->_cumulatedSquareDiffFromMean / self->_count), self->_count, queryPlan];
}

- (FPSQLDatabaseQueryStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FPSQLDatabaseQueryStatistics;
  v5 = [(FPSQLDatabaseQueryStatistics *)&v14 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"minTime"];
    v5->_minTime = v6;
    [v4 decodeDoubleForKey:@"maxTime"];
    v5->_maxTime = v7;
    [v4 decodeDoubleForKey:@"cumulatedTime"];
    v5->_cumulatedTime = v8;
    [v4 decodeDoubleForKey:@"cumulatedSquareDiffFromMean"];
    v5->_cumulatedSquareDiffFromMean = v9;
    [v4 decodeDoubleForKey:@"count"];
    v5->_count = v10;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queryPlan"];
    queryPlan = v5->_queryPlan;
    v5->_queryPlan = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeDouble:@"minTime" forKey:self->_minTime];
  [v5 encodeDouble:@"maxTime" forKey:self->_maxTime];
  [v5 encodeDouble:@"cumulatedTime" forKey:self->_cumulatedTime];
  [v5 encodeDouble:@"cumulatedSquareDiffFromMean" forKey:self->_cumulatedSquareDiffFromMean];
  [v5 encodeDouble:@"count" forKey:self->_count];
  queryPlan = self->_queryPlan;
  if (queryPlan)
  {
    [v5 encodeObject:queryPlan forKey:@"queryPlan"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  minTime = self->_minTime;
  maxTime = self->_maxTime;
  cumulatedTime = self->_cumulatedTime;
  cumulatedSquareDiffFromMean = self->_cumulatedSquareDiffFromMean;
  count = self->_count;
  queryPlan = self->_queryPlan;

  return [v4 initWithMinTime:count maxTime:queryPlan cumulatedTime:minTime cumulatedSquareDiffFromMean:maxTime count:cumulatedTime queryPlan:cumulatedSquareDiffFromMean];
}

@end