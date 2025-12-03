@interface TodayCardChinSingleLockupView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)accessibilityElements;
- (void)handleTap;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)isa;
@end

@implementation TodayCardChinSingleLockupView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100090FEC();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_1000911D8(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_100092128(touchCopy);

  return v9;
}

- (void)handleTap
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_clickActionHandler);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_10001B5AC(v2);
    v2(v4);

    sub_1000164A8(v2);
  }
}

- (NSArray)accessibilityElements
{
  sub_10000C518(&unk_1009259C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007A5A00;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29TodayCardChinSingleLockupView_lockupView);
  *(v3 + 56) = type metadata accessor for TodayCardLockupView();
  *(v3 + 32) = v4;
  v5 = v4;
  v6.super.isa = sub_100753294().super.isa;

  return v6.super.isa;
}

- (void)setAccessibilityElements:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_1007532A4();
    selfCopy = self;
    isa = sub_100753294().super.isa;
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TodayCardChinSingleLockupView *)&v8 setAccessibilityElements:isa];
}

@end