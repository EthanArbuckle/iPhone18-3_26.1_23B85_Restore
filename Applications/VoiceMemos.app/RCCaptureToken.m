@interface RCCaptureToken
- (RCCaptureToken)init;
- (void)dealloc;
@end

@implementation RCCaptureToken

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR___RCCaptureToken_operationQueue);
  v3 = self;
  [v2 setSuspended:0];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for CaptureToken();
  [(RCCaptureToken *)&v4 dealloc];
}

- (RCCaptureToken)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end