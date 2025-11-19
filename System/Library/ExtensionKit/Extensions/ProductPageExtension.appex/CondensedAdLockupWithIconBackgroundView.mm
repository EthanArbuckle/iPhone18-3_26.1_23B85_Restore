@interface CondensedAdLockupWithIconBackgroundView
- (NSArray)accessibilityElements;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)isa;
@end

@implementation CondensedAdLockupWithIconBackgroundView

- (void)layoutSubviews
{
  v2 = self;
  sub_1005CC01C();
}

- (NSArray)accessibilityElements
{
  sub_10000A5D4(&unk_1009434B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100783DD0;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView);
  *(v3 + 56) = type metadata accessor for TodayCardLockupView();
  *(v3 + 32) = v4;
  v5 = v4;
  v6.super.isa = sub_1007701AC().super.isa;

  return v6.super.isa;
}

- (void)setAccessibilityElements:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_1007701BC();
    v6 = self;
    isa = sub_1007701AC().super.isa;
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(CondensedAdLockupWithIconBackgroundView *)&v8 setAccessibilityElements:isa];
}

@end