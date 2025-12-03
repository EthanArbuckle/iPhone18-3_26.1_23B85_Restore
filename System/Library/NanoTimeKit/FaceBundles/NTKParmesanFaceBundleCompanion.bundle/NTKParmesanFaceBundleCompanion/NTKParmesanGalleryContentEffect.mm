@interface NTKParmesanGalleryContentEffect
- (NTKParmesanGalleryContentEffect)init;
- (NTKParmesanGalleryContentEffect)initWithStyleOption:(int64_t)option palette:(id)palette;
@end

@implementation NTKParmesanGalleryContentEffect

- (NTKParmesanGalleryContentEffect)initWithStyleOption:(int64_t)option palette:(id)palette
{
  *(&self->super.isa + OBJC_IVAR___NTKParmesanGalleryContentEffect_styleOption) = option;
  *(&self->super.isa + OBJC_IVAR___NTKParmesanGalleryContentEffect_palette) = palette;
  paletteCopy = palette;
  v7 = sub_23BFBE158(option, paletteCopy);
  v8 = (self + OBJC_IVAR___NTKParmesanGalleryContentEffect_style);
  *v8 = v7;
  v8[1] = v9;
  v8[2] = v10;
  v8[3] = v11;
  v14.receiver = self;
  v14.super_class = type metadata accessor for ParmesanGalleryContentEffect();
  v12 = [(NTKParmesanGalleryContentEffect *)&v14 init];

  return v12;
}

- (NTKParmesanGalleryContentEffect)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end