@interface NSSQLiteDatabaseStatistics
- (NSSQLiteDatabaseStatistics)initWithPageSize:(int64_t)size;
- (id)copy;
- (id)databaseStatisticsBySubtracting:(id)subtracting;
- (id)description;
@end

@implementation NSSQLiteDatabaseStatistics

- (id)copy
{
  result = [[NSSQLiteDatabaseStatistics alloc] initWithPageSize:self->_pageSize];
  *(result + 1) = self->_cacheHitPages;
  *(result + 2) = self->_cacheMissPages;
  *(result + 3) = self->_cacheSpillPages;
  return result;
}

- (NSSQLiteDatabaseStatistics)initWithPageSize:(int64_t)size
{
  v5.receiver = self;
  v5.super_class = NSSQLiteDatabaseStatistics;
  result = [(NSSQLiteDatabaseStatistics *)&v5 init];
  if (result)
  {
    result->_pageSize = size;
  }

  return result;
}

- (id)databaseStatisticsBySubtracting:(id)subtracting
{
  if (subtracting)
  {
    v5 = [[NSSQLiteDatabaseStatistics alloc] initWithPageSize:self->_pageSize];
    v5->_cacheHitPages = self->_cacheHitPages - *(subtracting + 1);
    v5->_cacheMissPages = self->_cacheMissPages - *(subtracting + 2);
    v5->_cacheSpillPages = self->_cacheSpillPages - *(subtracting + 3);
  }

  else
  {
    v5 = [(NSSQLiteDatabaseStatistics *)self copy];
  }

  return v5;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> cacheHitPages=%lld, cacheMissPages=%lld, cacheSpillPages=%lld, pageSize=%lld", objc_opt_class(), self, self->_cacheHitPages, self->_cacheMissPages, self->_cacheSpillPages, self->_pageSize];
  objc_autoreleasePoolPop(v3);

  return v4;
}

@end