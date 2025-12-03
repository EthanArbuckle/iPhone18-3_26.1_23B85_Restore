@interface NowPlayingCollectionViewSecondaryBackground
- (_TtC12NowPlayingUI43NowPlayingCollectionViewSecondaryBackground)initWithCoder:(id)coder;
- (_TtC12NowPlayingUI43NowPlayingCollectionViewSecondaryBackground)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation NowPlayingCollectionViewSecondaryBackground

- (void)applyLayoutAttributes:(id)attributes
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  attributesCopy = attributes;
  v5 = v8.receiver;
  [(NowPlayingCollectionViewSecondaryBackground *)&v8 applyLayoutAttributes:attributesCopy];
  type metadata accessor for NowPlayingSecondaryBackgroundAttributes();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    [v5 setBackgroundColor:{*(v6 + OBJC_IVAR____TtC12NowPlayingUI39NowPlayingSecondaryBackgroundAttributes_backgroundColor), v8.receiver, v8.super_class}];
  }

  else
  {
    clearColor = [objc_opt_self() clearColor];
    [v5 setBackgroundColor:clearColor];

    attributesCopy = v5;
    v5 = clearColor;
  }
}

- (_TtC12NowPlayingUI43NowPlayingCollectionViewSecondaryBackground)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(NowPlayingCollectionViewSecondaryBackground *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12NowPlayingUI43NowPlayingCollectionViewSecondaryBackground)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(NowPlayingCollectionViewSecondaryBackground *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end