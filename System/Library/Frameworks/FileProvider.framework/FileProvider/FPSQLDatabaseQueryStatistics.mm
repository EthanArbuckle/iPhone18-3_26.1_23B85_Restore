@interface FPSQLDatabaseQueryStatistics
- (FPSQLDatabaseQueryStatistics)initWithCoder:(id)coder;
- (FPSQLDatabaseQueryStatistics)initWithMinTime:(double)time maxTime:(double)maxTime cumulatedTime:(double)cumulatedTime cumulatedSquareDiffFromMean:(double)mean count:(int64_t)count queryPlan:(id)plan;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPSQLDatabaseQueryStatistics

- (FPSQLDatabaseQueryStatistics)initWithMinTime:(double)time maxTime:(double)maxTime cumulatedTime:(double)cumulatedTime cumulatedSquareDiffFromMean:(double)mean count:(int64_t)count queryPlan:(id)plan
{
  planCopy = plan;
  v19.receiver = self;
  v19.super_class = FPSQLDatabaseQueryStatistics;
  v16 = [(FPSQLDatabaseQueryStatistics *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_minTime = time;
    v16->_maxTime = maxTime;
    v16->_cumulatedTime = cumulatedTime;
    v16->_cumulatedSquareDiffFromMean = mean;
    v16->_count = count;
    objc_storeStrong(&v16->_queryPlan, plan);
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

- (FPSQLDatabaseQueryStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = FPSQLDatabaseQueryStatistics;
  v5 = [(FPSQLDatabaseQueryStatistics *)&v14 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"minTime"];
    v5->_minTime = v6;
    [coderCopy decodeDoubleForKey:@"maxTime"];
    v5->_maxTime = v7;
    [coderCopy decodeDoubleForKey:@"cumulatedTime"];
    v5->_cumulatedTime = v8;
    [coderCopy decodeDoubleForKey:@"cumulatedSquareDiffFromMean"];
    v5->_cumulatedSquareDiffFromMean = v9;
    [coderCopy decodeDoubleForKey:@"count"];
    v5->_count = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryPlan"];
    queryPlan = v5->_queryPlan;
    v5->_queryPlan = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"minTime" forKey:self->_minTime];
  [coderCopy encodeDouble:@"maxTime" forKey:self->_maxTime];
  [coderCopy encodeDouble:@"cumulatedTime" forKey:self->_cumulatedTime];
  [coderCopy encodeDouble:@"cumulatedSquareDiffFromMean" forKey:self->_cumulatedSquareDiffFromMean];
  [coderCopy encodeDouble:@"count" forKey:self->_count];
  queryPlan = self->_queryPlan;
  if (queryPlan)
  {
    [coderCopy encodeObject:queryPlan forKey:@"queryPlan"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
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