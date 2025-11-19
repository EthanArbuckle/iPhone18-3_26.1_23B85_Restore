@interface TodayCardChinSingleLockupView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)accessibilityElements;
- (void)handleTap;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)isa;
@end

@implementation TodayCardChinSingleLockupView

- (void)layoutSubviews
{
  v2 = self;
  sub_6A71F0();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_6A73DC(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_6A82AC(v7);

  return v9;
}

- (void)handleTap
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_clickActionHandler);
  if (v2)
  {
    v3 = self;
    v4 = sub_F714(v2);
    v2(v4);

    sub_F704(v2);
  }
}

- (NSArray)accessibilityElements
{
  sub_BD88(&qword_941C10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_77B6D0;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView);
  *(v3 + 56) = type metadata accessor for TodayCardLockupView();
  *(v3 + 32) = v4;
  v5 = v4;
  v6.super.isa = sub_769450().super.isa;

  return v6.super.isa;
}

- (void)setAccessibilityElements:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_769460();
    v6 = self;
    isa = sub_769450().super.isa;
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TodayCardChinSingleLockupView *)&v8 setAccessibilityElements:isa];
}

@end