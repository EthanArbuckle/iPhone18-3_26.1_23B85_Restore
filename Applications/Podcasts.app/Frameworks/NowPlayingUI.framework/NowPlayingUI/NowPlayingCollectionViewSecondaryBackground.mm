@interface NowPlayingCollectionViewSecondaryBackground
- (_TtC12NowPlayingUI43NowPlayingCollectionViewSecondaryBackground)initWithCoder:(id)a3;
- (_TtC12NowPlayingUI43NowPlayingCollectionViewSecondaryBackground)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation NowPlayingCollectionViewSecondaryBackground

- (void)applyLayoutAttributes:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v8.receiver;
  [(NowPlayingCollectionViewSecondaryBackground *)&v8 applyLayoutAttributes:v4];
  type metadata accessor for NowPlayingSecondaryBackgroundAttributes();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    [v5 setBackgroundColor:{*(v6 + OBJC_IVAR____TtC12NowPlayingUI39NowPlayingSecondaryBackgroundAttributes_backgroundColor), v8.receiver, v8.super_class}];
  }

  else
  {
    v7 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor:v7];

    v4 = v5;
    v5 = v7;
  }
}

- (_TtC12NowPlayingUI43NowPlayingCollectionViewSecondaryBackground)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(NowPlayingCollectionViewSecondaryBackground *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12NowPlayingUI43NowPlayingCollectionViewSecondaryBackground)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(NowPlayingCollectionViewSecondaryBackground *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end