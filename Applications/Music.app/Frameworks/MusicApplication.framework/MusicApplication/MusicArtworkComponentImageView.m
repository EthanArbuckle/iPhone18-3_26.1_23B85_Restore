@interface MusicArtworkComponentImageView
- (CGRect)frame;
- (MusicArtworkComponentImageView)initWithCoder:(id)a3;
- (MusicArtworkComponentImageView)initWithFrame:(CGRect)a3;
- (MusicArtworkComponentImageView)initWithImage:(id)a3;
- (MusicArtworkComponentImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (void)didMoveToSuperview;
- (void)setFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MusicArtworkComponentImageView

- (void)didMoveToSuperview
{
  v2 = self;
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
  [(MusicArtworkComponentImageView *)&v23 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v22.receiver = v9;
  v22.super_class = v8;
  [(MusicArtworkComponentImageView *)&v22 setFrame:x, y, width, height];
  [(MusicArtworkComponentImageView *)v9 frame];
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_7E420(a3);
}

- (MusicArtworkComponentImageView)initWithImage:(id)a3
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
  return [(MusicArtworkComponentImageView *)&v7 initWithImage:a3];
}

- (MusicArtworkComponentImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  return sub_7EDE8(a3, a4);
}

- (MusicArtworkComponentImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (MusicArtworkComponentImageView)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_805D0(v3);

  return v4;
}

@end