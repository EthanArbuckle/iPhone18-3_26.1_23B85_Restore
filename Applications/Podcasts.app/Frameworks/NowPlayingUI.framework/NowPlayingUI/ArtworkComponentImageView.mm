@interface ArtworkComponentImageView
- (CGRect)frame;
- (_TtC12NowPlayingUI25ArtworkComponentImageView)initWithFrame:(CGRect)frame;
- (_TtC12NowPlayingUI25ArtworkComponentImageView)initWithImage:(id)image;
- (_TtC12NowPlayingUI25ArtworkComponentImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)didMoveToSuperview;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ArtworkComponentImageView

- (void)didMoveToSuperview
{
  selfCopy = self;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = type metadata accessor for ArtworkComponentImageView();
  v23.receiver = self;
  v23.super_class = v8;
  selfCopy = self;
  [(ArtworkComponentImageView *)&v23 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v22.receiver = selfCopy;
  v22.super_class = v8;
  [(ArtworkComponentImageView *)&v22 setFrame:x, y, width, height];
  [(ArtworkComponentImageView *)selfCopy frame];
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_CF298(change);
}

- (_TtC12NowPlayingUI25ArtworkComponentImageView)initWithImage:(id)image
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
  return [(ArtworkComponentImageView *)&v7 initWithImage:image];
}

- (_TtC12NowPlayingUI25ArtworkComponentImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
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
  return [(ArtworkComponentImageView *)&v9 initWithImage:image highlightedImage:highlightedImage];
}

- (_TtC12NowPlayingUI25ArtworkComponentImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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