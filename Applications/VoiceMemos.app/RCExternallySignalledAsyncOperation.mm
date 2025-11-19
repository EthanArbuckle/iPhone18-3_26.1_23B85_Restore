@interface RCExternallySignalledAsyncOperation
- (RCExternallySignalledAsyncOperation)init;
- (RCExternallySignalledAsyncOperation)initWithBlock:(id)a3;
- (void)main;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation RCExternallySignalledAsyncOperation

- (RCExternallySignalledAsyncOperation)initWithBlock:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_10010EEDC(sub_10010F584, v4);
}

- (RCExternallySignalledAsyncOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setExecuting:(BOOL)a3
{
  v4 = self;
  sub_10010F30C(a3, 0x7475636578457369, 0xEB00000000676E69, &OBJC_IVAR___RCExternallySignalledAsyncOperation__executing);
}

- (void)setFinished:(BOOL)a3
{
  v4 = self;
  sub_10010F30C(a3, 0x6873696E69467369, 0xEA00000000006465, &OBJC_IVAR___RCExternallySignalledAsyncOperation__finished);
}

- (void)start
{
  v2 = self;
  if ([(RCExternallySignalledAsyncOperation *)v2 isCancelled])
  {
    [(RCExternallySignalledAsyncOperation *)v2 setExecuting:0];
    [(RCExternallySignalledAsyncOperation *)v2 setFinished:1];
  }

  else
  {
    [(RCExternallySignalledAsyncOperation *)v2 setExecuting:1];
    [(RCExternallySignalledAsyncOperation *)v2 main];
  }
}

- (void)main
{
  v3 = *(&self->super.super.isa + OBJC_IVAR___RCExternallySignalledAsyncOperation_executionBlock);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = self;

  v3(sub_10010F57C, v4);
}

@end