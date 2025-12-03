@interface WarlockColorPalette
- (_TtC20NTKWarlockFaceBundle19WarlockColorPalette)init;
- (_TtC20NTKWarlockFaceBundle19WarlockColorPalette)initWithDomainName:(id)name inBundle:(id)bundle;
- (_TtC20NTKWarlockFaceBundle19WarlockColorPalette)initWithFaceClass:(Class)class;
- (id)swatchImageForSize:(CGSize)size;
@end

@implementation WarlockColorPalette

- (id)swatchImageForSize:(CGSize)size
{
  selfCopy = self;
  v4 = sub_138C8();

  return v4;
}

- (_TtC20NTKWarlockFaceBundle19WarlockColorPalette)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WarlockColorPalette();
  return [(WarlockColorPalette *)&v3 init];
}

- (_TtC20NTKWarlockFaceBundle19WarlockColorPalette)initWithFaceClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for WarlockColorPalette();
  return [(WarlockColorPalette *)&v5 initWithFaceClass:class];
}

- (_TtC20NTKWarlockFaceBundle19WarlockColorPalette)initWithDomainName:(id)name inBundle:(id)bundle
{
  if (name)
  {
    sub_37530();
    bundleCopy = bundle;
    v7 = sub_37500();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for WarlockColorPalette();
  v9 = [(WarlockColorPalette *)&v11 initWithDomainName:v7 inBundle:bundle];

  return v9;
}

@end