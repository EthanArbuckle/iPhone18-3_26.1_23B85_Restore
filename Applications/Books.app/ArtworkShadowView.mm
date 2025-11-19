@interface ArtworkShadowView
- (CGRect)bounds;
- (_TtC5BooksP33_12E437AC0882FE18A400AEA3D6DAFFF617ArtworkShadowView)initWithCoder:(id)a3;
- (_TtC5BooksP33_12E437AC0882FE18A400AEA3D6DAFFF617ArtworkShadowView)initWithFrame:(CGRect)a3;
- (void)setBounds:(CGRect)a3;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ArtworkShadowView();
  v7 = v8.receiver;
  [(ArtworkShadowView *)&v8 setBounds:x, y, width, height];
  sub_1005BD35C();
}

- (_TtC5BooksP33_12E437AC0882FE18A400AEA3D6DAFFF617ArtworkShadowView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ArtworkShadowView();
  return [(ArtworkShadowView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5BooksP33_12E437AC0882FE18A400AEA3D6DAFFF617ArtworkShadowView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ArtworkShadowView();
  v4 = a3;
  v5 = [(ArtworkShadowView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end