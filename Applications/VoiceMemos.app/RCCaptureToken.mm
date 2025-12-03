@interface RCCaptureToken
- (RCCaptureToken)init;
- (void)dealloc;
@end

@implementation RCCaptureToken

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR___RCCaptureToken_operationQueue);
  selfCopy = self;
  [v2 setSuspended:0];
  v4.receiver = selfCopy;
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