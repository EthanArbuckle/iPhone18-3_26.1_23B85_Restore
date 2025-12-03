@interface FMTrustedLocationDetailView
- (void)deleteRowTapWithSender:(id)sender;
- (void)dismissPresentedVCWithSender:(id)sender;
- (void)editLocationRowTapWithSender:(id)sender;
- (void)handleAction;
- (void)meRowTapWithSender:(id)sender;
@end

@implementation FMTrustedLocationDetailView

- (void)editLocationRowTapWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100331634(senderCopy);
}

- (void)deleteRowTapWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100331C7C(senderCopy);
}

- (void)meRowTapWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100338498();
}

- (void)dismissPresentedVCWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100332DC4();

  sub_100006060(&v5);
}

- (void)handleAction
{
  selfCopy = self;
  sub_100332F64();
}

@end