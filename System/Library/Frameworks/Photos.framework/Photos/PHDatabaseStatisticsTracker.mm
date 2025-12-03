@interface PHDatabaseStatisticsTracker
- (NSArray)sqlStatements;
- (int64_t)currentByteCount;
- (void)addManagedObjectContext:(id)context;
- (void)disableGatheringSqlStatements;
- (void)enableGatheringSqlStatements;
- (void)managedObjectContext:(id)context didExecuteFetchRequest:(id)request withSQLString:(id)string bindVariables:(id)variables rowCount:(int64_t)count;
- (void)removeAllSqlStatements;
@end

@implementation PHDatabaseStatisticsTracker

- (void)addManagedObjectContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_19C873924(contextCopy);
}

- (int64_t)currentByteCount
{
  selfCopy = self;
  sub_19C889B84();
  v4 = v3;

  return v4;
}

- (void)enableGatheringSqlStatements
{
  selfCopy = self;
  sub_19C889DB0();
}

- (void)disableGatheringSqlStatements
{
  selfCopy = self;
  sub_19C88A14C();
}

- (NSArray)sqlStatements
{
  selfCopy = self;
  sub_19C88A538();

  v3 = sub_19CB01CFC();

  return v3;
}

- (void)removeAllSqlStatements
{
  selfCopy = self;
  sub_19C88A5A0();
}

- (void)managedObjectContext:(id)context didExecuteFetchRequest:(id)request withSQLString:(id)string bindVariables:(id)variables rowCount:(int64_t)count
{
  v10 = sub_19CB01CAC();
  v12 = v11;
  v13 = sub_19CB01D0C();
  contextCopy = context;
  requestCopy = request;
  selfCopy = self;
  sub_19C88A658(selfCopy, v17, v10, v12, v13);
}

@end