@interface CondensedAdLockupWithIconBackgroundView
- (NSArray)accessibilityElements;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)isa;
@end

@implementation CondensedAdLockupWithIconBackgroundView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10009C064();
}

- (NSArray)accessibilityElements
{
  sub_10000C518(&unk_1009259C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007A5A00;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_lockupView);
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
  [(CondensedAdLockupWithIconBackgroundView *)&v8 setAccessibilityElements:isa];
}

@end