@interface NavigationBarBottomPromptPaletteContentView
- (CGSize)sizeThatFits:(CGSize)result;
- (_TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView)initWithCoder:(id)coder;
- (_TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation NavigationBarBottomPromptPaletteContentView

- (_TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView_textLabel;
  *(&self->super.super.super.isa + v3) = sub_18E7B8();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 28.0;
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v2 = v8.receiver;
  [(NavigationBarBottomPromptPaletteContentView *)&v8 layoutSubviews];
  v3 = OBJC_IVAR____TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView_textLabel;
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView_textLabel];
  [v2 bounds];
  Width = CGRectGetWidth(v9);
  v6 = *&v2[v3];
  [v2 bounds];
  [v6 sizeThatFits:{CGRectGetWidth(v10), 0.0}];
  [v4 setFrame:{0.0, 0.0, Width, v7}];
}

- (_TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end