@interface Spinner
- (_TtC23ShelfKitCollectionViewsP33_FDB3F2239CCD97B16BEB144B6C7466ED7Spinner)initWithFrame:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation Spinner

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for Spinner();
  v2 = v4.receiver;
  [(Spinner *)&v4 tintColorDidChange];
  v3 = [v2 tintColor];
  [v2 setColor:v3];
}

- (_TtC23ShelfKitCollectionViewsP33_FDB3F2239CCD97B16BEB144B6C7466ED7Spinner)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for Spinner();
  return [(Spinner *)&v8 initWithFrame:x, y, width, height];
}

@end