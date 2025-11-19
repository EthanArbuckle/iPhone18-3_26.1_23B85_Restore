@interface VibrancyLabelCompositingView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)text;
- (_TtC16MusicApplication28VibrancyLabelCompositingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setText:(id)a3;
@end

@implementation VibrancyLabelCompositingView

- (NSString)text
{
  if (*(self + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text + 8))
  {

    v2 = sub_AB9260();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setText:(id)a3
{
  if (a3)
  {
    v4 = sub_AB92A0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
  v7 = *(self + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
  v8 = *(self + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text + 8);
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_38FB24(v7, v8);
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for VibrancyLabelCompositingView();
  v2 = v11.receiver;
  [(VibrancyLabelCompositingView *)&v11 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*&v2[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel] setFrame:?];
  [*&v2[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_overlayLabel] setFrame:{v4, v6, v8, v10}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *(self + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel);
  v6 = self;
  [v5 sizeThatFits:{width, height}];
  v9 = v8;
  v10 = v7;
  if (*(v6 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_hasExcessiveHeightCharacters))
  {
    v11 = v7 / 3.0;
  }

  else
  {
    v11 = 0.0;
  }

  *(v6 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_paddingForExcessiveHeightCharacters) = v11;

  v12 = v10 + v11;
  v13 = v9;
  result.height = v12;
  result.width = v13;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(self + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC16MusicApplication28VibrancyLabelCompositingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end