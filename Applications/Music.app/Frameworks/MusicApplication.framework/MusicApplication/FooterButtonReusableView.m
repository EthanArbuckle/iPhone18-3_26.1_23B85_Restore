@interface FooterButtonReusableView
- (_TtC16MusicApplication24FooterButtonReusableView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation FooterButtonReusableView

- (_TtC16MusicApplication24FooterButtonReusableView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_buttonAlignment) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView____lazy_storage___button) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2FFC8();
}

@end