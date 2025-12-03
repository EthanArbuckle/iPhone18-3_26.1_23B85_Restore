@interface NSSQLiteIndexStatistics
- (NSSQLiteIndexStatistics)initWithName:(id)name storeID:(id)d;
- (NSSQLiteIndexStatistics)initWithResultDictionary:(id)dictionary storeID:(id)d;
- (void)dealloc;
@end

@implementation NSSQLiteIndexStatistics

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSQLiteIndexStatistics;
  [(NSSQLiteIndexStatistics *)&v3 dealloc];
}

- (NSSQLiteIndexStatistics)initWithName:(id)name storeID:(id)d
{
  v8.receiver = self;
  v8.super_class = NSSQLiteIndexStatistics;
  v6 = [(NSSQLiteIndexStatistics *)&v8 init];
  if (v6)
  {
    v6->_indexName = [name copy];
    v6->_storeIdentifier = [d copy];
  }

  return v6;
}

- (NSSQLiteIndexStatistics)initWithResultDictionary:(id)dictionary storeID:(id)d
{
  v5 = -[NSSQLiteIndexStatistics initWithName:storeID:](self, "initWithName:storeID:", [dictionary objectForKeyedSubscript:@"indexName"], d);
  if (v5)
  {
    v5->_executionCount = [objc_msgSend(dictionary objectForKeyedSubscript:{@"executionCount", "longLongValue"}];
    v5->_instructionCount = [objc_msgSend(dictionary objectForKeyedSubscript:{@"instructionCount", "longLongValue"}];
    v5->_rowCount = [objc_msgSend(dictionary objectForKeyedSubscript:{@"rowCount", "longLongValue"}];
  }

  return v5;
}

@end