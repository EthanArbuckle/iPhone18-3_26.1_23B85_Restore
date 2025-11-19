@interface WarlockColorPalette
- (_TtC20NTKWarlockFaceBundle19WarlockColorPalette)init;
- (_TtC20NTKWarlockFaceBundle19WarlockColorPalette)initWithDomainName:(id)a3 inBundle:(id)a4;
- (_TtC20NTKWarlockFaceBundle19WarlockColorPalette)initWithFaceClass:(Class)a3;
- (id)swatchImageForSize:(CGSize)a3;
@end

@implementation WarlockColorPalette

- (id)swatchImageForSize:(CGSize)a3
{
  v3 = self;
  v4 = sub_138C8();

  return v4;
}

- (_TtC20NTKWarlockFaceBundle19WarlockColorPalette)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WarlockColorPalette();
  return [(WarlockColorPalette *)&v3 init];
}

- (_TtC20NTKWarlockFaceBundle19WarlockColorPalette)initWithFaceClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for WarlockColorPalette();
  return [(WarlockColorPalette *)&v5 initWithFaceClass:a3];
}

- (_TtC20NTKWarlockFaceBundle19WarlockColorPalette)initWithDomainName:(id)a3 inBundle:(id)a4
{
  if (a3)
  {
    sub_37530();
    v6 = a4;
    v7 = sub_37500();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for WarlockColorPalette();
  v9 = [(WarlockColorPalette *)&v11 initWithDomainName:v7 inBundle:a4];

  return v9;
}

@end