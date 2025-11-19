@interface CoreDataStoreServerHandlingPolicy
- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)a3;
- (_TtC10FinanceKit33CoreDataStoreServerHandlingPolicy)init;
- (id)allowableClassesForClientWithContext:(id)a3;
@end

@implementation CoreDataStoreServerHandlingPolicy

- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B73991EC(v4);

  return v6 & 1;
}

- (id)allowableClassesForClientWithContext:(id)a3
{
  if (sub_1B73993D4())
  {
    v3 = sub_1B7800F78();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_TtC10FinanceKit33CoreDataStoreServerHandlingPolicy)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CoreDataStoreServerHandlingPolicy();
  return [(CoreDataStoreServerHandlingPolicy *)&v3 init];
}

@end