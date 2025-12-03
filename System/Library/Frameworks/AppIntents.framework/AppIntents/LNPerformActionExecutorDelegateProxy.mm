@interface LNPerformActionExecutorDelegateProxy
- (BOOL)hasValidConnection;
- (LNPerformActionExecutorDelegateProxy)initWithConnection:(id)connection interface:(id)interface;
- (int64_t)connectionIdentifier;
- (void)requestViewSnippetEnvironmentWithCompletionHandler:(id)handler;
@end

@implementation LNPerformActionExecutorDelegateProxy

- (LNPerformActionExecutorDelegateProxy)initWithConnection:(id)connection interface:(id)interface
{
  connectionCopy = connection;
  swift_unknownObjectRetain();
  return PerformActionExecutorDelegateProxy.init(connection:interface:)(connectionCopy, interface);
}

- (void)requestViewSnippetEnvironmentWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_18F10B344();
}

- (int64_t)connectionIdentifier
{
  selfCopy = self;
  v3 = sub_18F38B334();

  return v3;
}

- (BOOL)hasValidConnection
{
  selfCopy = self;
  v3 = sub_18F38B3B4();

  return v3;
}

@end