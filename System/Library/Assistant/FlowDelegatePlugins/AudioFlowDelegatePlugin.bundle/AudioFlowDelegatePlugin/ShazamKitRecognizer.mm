@interface ShazamKitRecognizer
- (_TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer)init;
- (void)finishedManagedSession:(id)a3;
- (void)session:(id)a3 didFindMatch:(id)a4;
- (void)session:(id)a3 didNotFindMatchForSignature:(id)a4 error:(id)a5;
@end

@implementation ShazamKitRecognizer

- (void)session:(id)a3 didFindMatch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_DB85C(v7);
}

- (void)session:(id)a3 didNotFindMatchForSignature:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_DC078(a5);
}

- (void)finishedManagedSession:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_DA12C(v4);
}

- (_TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end