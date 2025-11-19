@interface NTKParmesanGalleryContentEffect
- (NTKParmesanGalleryContentEffect)init;
- (NTKParmesanGalleryContentEffect)initWithStyleOption:(int64_t)a3 palette:(id)a4;
@end

@implementation NTKParmesanGalleryContentEffect

- (NTKParmesanGalleryContentEffect)initWithStyleOption:(int64_t)a3 palette:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___NTKParmesanGalleryContentEffect_styleOption) = a3;
  *(&self->super.isa + OBJC_IVAR___NTKParmesanGalleryContentEffect_palette) = a4;
  v6 = a4;
  v7 = sub_23BFBE158(a3, v6);
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