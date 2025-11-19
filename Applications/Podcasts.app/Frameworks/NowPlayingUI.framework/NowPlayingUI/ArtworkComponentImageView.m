@interface ArtworkComponentImageView
- (CGRect)frame;
- (_TtC12NowPlayingUI25ArtworkComponentImageView)initWithFrame:(CGRect)a3;
- (_TtC12NowPlayingUI25ArtworkComponentImageView)initWithImage:(id)a3;
- (_TtC12NowPlayingUI25ArtworkComponentImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (void)didMoveToSuperview;
- (void)setFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ArtworkComponentImageView

- (void)didMoveToSuperview
{
  v2 = self;
  sub_CEFEC();
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ArtworkComponentImageView();
  [(ArtworkComponentImageView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = type metadata accessor for ArtworkComponentImageView();
  v23.receiver = self;
  v23.super_class = v8;
  v9 = self;
  [(ArtworkComponentImageView *)&v23 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v22.receiver = v9;
  v22.super_class = v8;
  [(ArtworkComponentImageView *)&v22 setFrame:x, y, width, height];
  [(ArtworkComponentImageView *)v9 frame];
  v25.origin.x = v18;
  v25.origin.y = v19;
  v25.size.width = v20;
  v25.size.height = v21;
  v24.origin.x = v11;
  v24.origin.y = v13;
  v24.size.width = v15;
  v24.size.height = v17;
  if (!CGRectEqualToRect(v24, v25))
  {
    sub_CF3B0();
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_CF298(a3);
}

- (_TtC12NowPlayingUI25ArtworkComponentImageView)initWithImage:(id)a3
{
  swift_weakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryArtworkCatalog) = 0;
  v5 = self + OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStyle;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v5[24] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryImageView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStrokeView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ArtworkComponentImageView();
  return [(ArtworkComponentImageView *)&v7 initWithImage:a3];
}

- (_TtC12NowPlayingUI25ArtworkComponentImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  swift_weakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryArtworkCatalog) = 0;
  v7 = self + OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStyle;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = 0;
  v7[24] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryImageView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStrokeView) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ArtworkComponentImageView();
  return [(ArtworkComponentImageView *)&v9 initWithImage:a3 highlightedImage:a4];
}

- (_TtC12NowPlayingUI25ArtworkComponentImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_weakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryArtworkCatalog) = 0;
  v8 = self + OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStyle;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v8[24] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryImageView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStrokeView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ArtworkComponentImageView();
  return [(ArtworkComponentImageView *)&v10 initWithFrame:x, y, width, height];
}

@end