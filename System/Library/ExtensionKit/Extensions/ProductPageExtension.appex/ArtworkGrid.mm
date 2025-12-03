@interface ArtworkGrid
- (CGRect)frame;
- (_TtC20ProductPageExtension11ArtworkGrid)initWithFrame:(CGRect)frame;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v7 = v8.receiver;
  [(ArtworkGrid *)&v8 setFrame:x, y, width, height];
  sub_10070ED18();
  [v7 setNeedsLayout];
}

- (_TtC20ProductPageExtension11ArtworkGrid)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = objc_allocWithZone(swift_getObjectType());
  v8 = sub_10070F0AC(0, x, y, width, height);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10070F488();
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_100710DDC();
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  changeCopy = change;
  [(ArtworkGrid *)&v8 traitCollectionDidChange:changeCopy];
  traitCollection = [v4 traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (!changeCopy || layoutDirection != [changeCopy layoutDirection])
  {
    [v4 setNeedsLayout];
  }
}

@end