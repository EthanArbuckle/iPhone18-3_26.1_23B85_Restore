@interface NSOperationQueue.DelayReadyOperation
- (BOOL)isReady;
- (_TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation)init;
- (void)cancel;
- (void)main;
@end

@implementation NSOperationQueue.DelayReadyOperation

- (void)main
{
  selfCopy = self;
  NSOperationQueue.DelayReadyOperation.main()();
}

- (void)cancel
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.super.isa + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action);
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action);
  v6 = *(&self->super._iop.__prevOp + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action);
  *v4 = 0;
  v4[1] = 0;
  selfCopy = self;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  v8 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_queue);
  *(&selfCopy->super.super.isa + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_queue) = 0;

  *(&selfCopy->super.super.isa + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_context) = 0;

  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [(NSOperation *)&v9 cancel];
}

- (BOOL)isReady
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  if ([(NSOperation *)&v5 isReady])
  {
    v3 = v2[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_readyFromAfter];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end