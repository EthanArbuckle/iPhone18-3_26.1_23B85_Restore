@interface MusicArtworkComponentImageView
- (CGRect)frame;
- (MusicArtworkComponentImageView)initWithCoder:(id)coder;
- (MusicArtworkComponentImageView)initWithFrame:(CGRect)frame;
- (MusicArtworkComponentImageView)initWithImage:(id)image;
- (MusicArtworkComponentImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)didMoveToSuperview;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MusicArtworkComponentImageView

- (void)didMoveToSuperview
{
  selfCopy = self;
  sub_7E158();
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ArtworkComponentImageView();
  [(MusicArtworkComponentImageView *)&v6 frame];
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
  [(MusicArtworkComponentImageView *)&v23 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v22.receiver = selfCopy;
  v22.super_class = v8;
  [(MusicArtworkComponentImageView *)&v22 setFrame:x, y, width, height];
  [(MusicArtworkComponentImageView *)selfCopy frame];
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
    sub_7E780();
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_7E420(change);
}

- (MusicArtworkComponentImageView)initWithImage:(id)image
{
  swift_weakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR___MusicArtworkComponentImageView_accessoryArtworkCatalog) = 0;
  v5 = self + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v5[24] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ArtworkComponentImageView();
  return [(MusicArtworkComponentImageView *)&v7 initWithImage:image];
}

- (MusicArtworkComponentImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  imageCopy = image;
  highlightedImageCopy = highlightedImage;
  return sub_7EDE8(image, highlightedImage);
}

- (MusicArtworkComponentImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_weakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR___MusicArtworkComponentImageView_accessoryArtworkCatalog) = 0;
  v8 = self + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v8[24] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ArtworkComponentImageView();
  return [(MusicArtworkComponentImageView *)&v10 initWithFrame:x, y, width, height];
}

- (MusicArtworkComponentImageView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_805D0(coderCopy);

  return v4;
}

@end