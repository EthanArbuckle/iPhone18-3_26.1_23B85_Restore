@interface UIAction
- (void)journal_performWithSender:(id)a3;
@end

@implementation UIAction

- (void)journal_performWithSender:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1003D0308(v6);

  sub_100004F84(v6, &qword_100AD13D0);
}

@end