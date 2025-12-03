@interface RCExternallySignalledAsyncOperation
- (RCExternallySignalledAsyncOperation)init;
- (RCExternallySignalledAsyncOperation)initWithBlock:(id)block;
- (void)main;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation RCExternallySignalledAsyncOperation

- (RCExternallySignalledAsyncOperation)initWithBlock:(id)block
{
  v3 = _Block_copy(block);
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

- (void)setExecuting:(BOOL)executing
{
  selfCopy = self;
  sub_10010F30C(executing, 0x7475636578457369, 0xEB00000000676E69, &OBJC_IVAR___RCExternallySignalledAsyncOperation__executing);
}

- (void)setFinished:(BOOL)finished
{
  selfCopy = self;
  sub_10010F30C(finished, 0x6873696E69467369, 0xEA00000000006465, &OBJC_IVAR___RCExternallySignalledAsyncOperation__finished);
}

- (void)start
{
  selfCopy = self;
  if ([(RCExternallySignalledAsyncOperation *)selfCopy isCancelled])
  {
    [(RCExternallySignalledAsyncOperation *)selfCopy setExecuting:0];
    [(RCExternallySignalledAsyncOperation *)selfCopy setFinished:1];
  }

  else
  {
    [(RCExternallySignalledAsyncOperation *)selfCopy setExecuting:1];
    [(RCExternallySignalledAsyncOperation *)selfCopy main];
  }
}

- (void)main
{
  v3 = *(&self->super.super.isa + OBJC_IVAR___RCExternallySignalledAsyncOperation_executionBlock);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  selfCopy = self;

  v3(sub_10010F57C, v4);
}

@end