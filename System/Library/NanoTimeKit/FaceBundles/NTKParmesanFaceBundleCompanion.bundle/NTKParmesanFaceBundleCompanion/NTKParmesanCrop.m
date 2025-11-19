@interface NTKParmesanCrop
- (CGRect)cgRect;
- (NSString)description;
- (NTKParmesanCrop)init;
@end

@implementation NTKParmesanCrop

- (CGRect)cgRect
{
  v2 = *(&self->super.isa + OBJC_IVAR___NTKParmesanCrop_origin);
  v3 = *(v2 + OBJC_IVAR___NTKParmesanPoint_x);
  v4 = *(v2 + OBJC_IVAR___NTKParmesanPoint_y);
  v5 = *(&self->super.isa + OBJC_IVAR___NTKParmesanCrop_size);
  v6 = *(v5 + OBJC_IVAR___NTKParmesanSize_width);
  v7 = *(v5 + OBJC_IVAR___NTKParmesanSize_height);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (NSString)description
{
  sub_23BFFA7F0();
  v2 = sub_23BFFA2C0();

  return v2;
}

- (NTKParmesanCrop)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end