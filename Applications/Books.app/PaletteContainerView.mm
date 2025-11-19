@interface PaletteContainerView
- (NSArray)interactions;
- (_TtC5Books20PaletteContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PaletteContainerView

- (NSArray)interactions
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books20PaletteContainerView_containerView);
  v3 = self;
  isa = [v2 interactions];
  if (!isa)
  {
    sub_1001F1160(&qword_100ADAF30);
    sub_1007A25E4();
    isa = sub_1007A25D4().super.isa;
  }

  return isa;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100283370();
}

- (_TtC5Books20PaletteContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end