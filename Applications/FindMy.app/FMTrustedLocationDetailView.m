@interface FMTrustedLocationDetailView
- (void)deleteRowTapWithSender:(id)a3;
- (void)dismissPresentedVCWithSender:(id)a3;
- (void)editLocationRowTapWithSender:(id)a3;
- (void)handleAction;
- (void)meRowTapWithSender:(id)a3;
@end

@implementation FMTrustedLocationDetailView

- (void)editLocationRowTapWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100331634(v4);
}

- (void)deleteRowTapWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100331C7C(v4);
}

- (void)meRowTapWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100338498();
}

- (void)dismissPresentedVCWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100332DC4();

  sub_100006060(&v5);
}

- (void)handleAction
{
  v2 = self;
  sub_100332F64();
}

@end