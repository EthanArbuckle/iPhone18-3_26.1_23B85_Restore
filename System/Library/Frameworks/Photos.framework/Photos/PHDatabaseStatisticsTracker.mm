@interface PHDatabaseStatisticsTracker
- (NSArray)sqlStatements;
- (int64_t)currentByteCount;
- (void)addManagedObjectContext:(id)a3;
- (void)disableGatheringSqlStatements;
- (void)enableGatheringSqlStatements;
- (void)managedObjectContext:(id)a3 didExecuteFetchRequest:(id)a4 withSQLString:(id)a5 bindVariables:(id)a6 rowCount:(int64_t)a7;
- (void)removeAllSqlStatements;
@end

@implementation PHDatabaseStatisticsTracker

- (void)addManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19C873924(v4);
}

- (int64_t)currentByteCount
{
  v2 = self;
  sub_19C889B84();
  v4 = v3;

  return v4;
}

- (void)enableGatheringSqlStatements
{
  v2 = self;
  sub_19C889DB0();
}

- (void)disableGatheringSqlStatements
{
  v2 = self;
  sub_19C88A14C();
}

- (NSArray)sqlStatements
{
  v2 = self;
  sub_19C88A538();

  v3 = sub_19CB01CFC();

  return v3;
}

- (void)removeAllSqlStatements
{
  v2 = self;
  sub_19C88A5A0();
}

- (void)managedObjectContext:(id)a3 didExecuteFetchRequest:(id)a4 withSQLString:(id)a5 bindVariables:(id)a6 rowCount:(int64_t)a7
{
  v10 = sub_19CB01CAC();
  v12 = v11;
  v13 = sub_19CB01D0C();
  v14 = a3;
  v15 = a4;
  v16 = self;
  sub_19C88A658(v16, v17, v10, v12, v13);
}

@end