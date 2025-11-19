@interface ArtworkGrid
- (CGRect)frame;
- (_TtC20ProductPageExtension11ArtworkGrid)initWithFrame:(CGRect)a3;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ArtworkGrid

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(ArtworkGrid *)&v6 frame];
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
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v7 = v8.receiver;
  [(ArtworkGrid *)&v8 setFrame:x, y, width, height];
  sub_10070ED18();
  [v7 setNeedsLayout];
}

- (_TtC20ProductPageExtension11ArtworkGrid)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = objc_allocWithZone(swift_getObjectType());
  v8 = sub_10070F0AC(0, x, y, width, height);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10070F488();
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100710DDC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  v5 = a3;
  [(ArtworkGrid *)&v8 traitCollectionDidChange:v5];
  v6 = [v4 traitCollection];
  v7 = [v6 layoutDirection];

  if (!v5 || v7 != [v5 layoutDirection])
  {
    [v4 setNeedsLayout];
  }
}

@end