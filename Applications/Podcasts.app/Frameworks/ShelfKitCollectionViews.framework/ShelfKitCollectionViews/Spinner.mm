@interface Spinner
- (_TtC23ShelfKitCollectionViewsP33_FDB3F2239CCD97B16BEB144B6C7466ED7Spinner)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation Spinner

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for Spinner();
  v2 = v4.receiver;
  [(Spinner *)&v4 tintColorDidChange];
  tintColor = [v2 tintColor];
  [v2 setColor:tintColor];
}

- (_TtC23ShelfKitCollectionViewsP33_FDB3F2239CCD97B16BEB144B6C7466ED7Spinner)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for Spinner();
  return [(Spinner *)&v8 initWithFrame:x, y, width, height];
}

@end