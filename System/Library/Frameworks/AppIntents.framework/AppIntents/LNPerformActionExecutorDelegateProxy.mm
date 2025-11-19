@interface LNPerformActionExecutorDelegateProxy
- (BOOL)hasValidConnection;
- (LNPerformActionExecutorDelegateProxy)initWithConnection:(id)a3 interface:(id)a4;
- (int64_t)connectionIdentifier;
- (void)requestViewSnippetEnvironmentWithCompletionHandler:(id)a3;
@end

@implementation LNPerformActionExecutorDelegateProxy

- (LNPerformActionExecutorDelegateProxy)initWithConnection:(id)a3 interface:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  return PerformActionExecutorDelegateProxy.init(connection:interface:)(v5, a4);
}

- (void)requestViewSnippetEnvironmentWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_18F10B344();
}

- (int64_t)connectionIdentifier
{
  v2 = self;
  v3 = sub_18F38B334();

  return v3;
}

- (BOOL)hasValidConnection
{
  v2 = self;
  v3 = sub_18F38B3B4();

  return v3;
}

@end