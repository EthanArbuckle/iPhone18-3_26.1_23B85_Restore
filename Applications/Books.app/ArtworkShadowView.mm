@interface ArtworkShadowView
- (CGRect)bounds;
- (_TtC5BooksP33_12E437AC0882FE18A400AEA3D6DAFFF617ArtworkShadowView)initWithCoder:(id)coder;
- (_TtC5BooksP33_12E437AC0882FE18A400AEA3D6DAFFF617ArtworkShadowView)initWithFrame:(CGRect)frame;
- (void)setBounds:(CGRect)bounds;
@end

@implementation ArtworkShadowView

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ArtworkShadowView();
  [(ArtworkShadowView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ArtworkShadowView();
  v7 = v8.receiver;
  [(ArtworkShadowView *)&v8 setBounds:x, y, width, height];
  sub_1005BD35C();
}

- (_TtC5BooksP33_12E437AC0882FE18A400AEA3D6DAFFF617ArtworkShadowView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ArtworkShadowView();
  return [(ArtworkShadowView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5BooksP33_12E437AC0882FE18A400AEA3D6DAFFF617ArtworkShadowView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ArtworkShadowView();
  coderCopy = coder;
  v5 = [(ArtworkShadowView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end