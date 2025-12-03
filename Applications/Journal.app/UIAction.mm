@interface UIAction
- (void)journal_performWithSender:(id)sender;
@end

@implementation UIAction

- (void)journal_performWithSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1003D0308(v6);

  sub_100004F84(v6, &qword_100AD13D0);
}

@end