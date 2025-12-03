@interface CoreDataStoreServerHandlingPolicy
- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context;
- (_TtC10FinanceKit33CoreDataStoreServerHandlingPolicy)init;
- (id)allowableClassesForClientWithContext:(id)context;
@end

@implementation CoreDataStoreServerHandlingPolicy

- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_1B73991EC(contextCopy);

  return v6 & 1;
}

- (id)allowableClassesForClientWithContext:(id)context
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