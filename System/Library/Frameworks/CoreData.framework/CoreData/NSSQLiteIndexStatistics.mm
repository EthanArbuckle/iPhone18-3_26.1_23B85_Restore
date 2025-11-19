@interface NSSQLiteIndexStatistics
- (NSSQLiteIndexStatistics)initWithName:(id)a3 storeID:(id)a4;
- (NSSQLiteIndexStatistics)initWithResultDictionary:(id)a3 storeID:(id)a4;
- (void)dealloc;
@end

@implementation NSSQLiteIndexStatistics

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSQLiteIndexStatistics;
  [(NSSQLiteIndexStatistics *)&v3 dealloc];
}

- (NSSQLiteIndexStatistics)initWithName:(id)a3 storeID:(id)a4
{
  v8.receiver = self;
  v8.super_class = NSSQLiteIndexStatistics;
  v6 = [(NSSQLiteIndexStatistics *)&v8 init];
  if (v6)
  {
    v6->_indexName = [a3 copy];
    v6->_storeIdentifier = [a4 copy];
  }

  return v6;
}

- (NSSQLiteIndexStatistics)initWithResultDictionary:(id)a3 storeID:(id)a4
{
  v5 = -[NSSQLiteIndexStatistics initWithName:storeID:](self, "initWithName:storeID:", [a3 objectForKeyedSubscript:@"indexName"], a4);
  if (v5)
  {
    v5->_executionCount = [objc_msgSend(a3 objectForKeyedSubscript:{@"executionCount", "longLongValue"}];
    v5->_instructionCount = [objc_msgSend(a3 objectForKeyedSubscript:{@"instructionCount", "longLongValue"}];
    v5->_rowCount = [objc_msgSend(a3 objectForKeyedSubscript:{@"rowCount", "longLongValue"}];
  }

  return v5;
}

@end