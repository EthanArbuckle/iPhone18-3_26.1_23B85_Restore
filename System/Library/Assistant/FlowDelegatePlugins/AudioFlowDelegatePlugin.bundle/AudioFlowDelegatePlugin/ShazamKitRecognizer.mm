@interface ShazamKitRecognizer
- (_TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer)init;
- (void)finishedManagedSession:(id)session;
- (void)session:(id)session didFindMatch:(id)match;
- (void)session:(id)session didNotFindMatchForSignature:(id)signature error:(id)error;
@end

@implementation ShazamKitRecognizer

- (void)session:(id)session didFindMatch:(id)match
{
  sessionCopy = session;
  matchCopy = match;
  selfCopy = self;
  sub_DB85C(matchCopy);
}

- (void)session:(id)session didNotFindMatchForSignature:(id)signature error:(id)error
{
  sessionCopy = session;
  signatureCopy = signature;
  selfCopy = self;
  errorCopy = error;
  sub_DC078(error);
}

- (void)finishedManagedSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_DA12C(sessionCopy);
}

- (_TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end