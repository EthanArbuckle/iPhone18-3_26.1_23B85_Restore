@interface NTKParmesanAssetMask
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)imageName;
- (NTKParmesanAssetMask)init;
- (NTKParmesanAssetMask)initWithImageName:(id)name style:(int64_t)style;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)setImageName:(id)name;
@end

@implementation NTKParmesanAssetMask

- (NSString)imageName
{

  v2 = sub_23BFFA2C0();

  return v2;
}

- (void)setImageName:(id)name
{
  v4 = sub_23BFFA300();
  v5 = (self + OBJC_IVAR___NTKParmesanAssetMask_imageName);
  *v5 = v4;
  v5[1] = v6;
}

- (NTKParmesanAssetMask)initWithImageName:(id)name style:(int64_t)style
{
  v6 = sub_23BFFA300();
  v7 = (self + OBJC_IVAR___NTKParmesanAssetMask_imageName);
  *v7 = v6;
  v7[1] = v8;
  *(self + OBJC_IVAR___NTKParmesanAssetMask_style) = style;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ParmesanAssetMask();
  return [(NTKParmesanAssetMask *)&v10 init];
}

- (NSString)description
{
  selfCopy = self;
  sub_23BFA2A88();

  v3 = sub_23BFFA2C0();

  return v3;
}

- (NTKParmesanAssetMask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)zone
{
  v4 = *(self + OBJC_IVAR___NTKParmesanAssetMask_imageName);
  v3 = *(self + OBJC_IVAR___NTKParmesanAssetMask_imageName + 8);
  v5 = *(self + OBJC_IVAR___NTKParmesanAssetMask_style);
  v6 = type metadata accessor for ParmesanAssetMask();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___NTKParmesanAssetMask_imageName];
  *v8 = v4;
  *(v8 + 1) = v3;
  *&v7[OBJC_IVAR___NTKParmesanAssetMask_style] = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  return [(NTKParmesanAssetMask *)&v10 init];
}

- (int64_t)hash
{
  sub_23BFFAE00();
  selfCopy = self;

  sub_23BFFA3A0();

  MEMORY[0x23EEC3A60](*(selfCopy + OBJC_IVAR___NTKParmesanAssetMask_style));
  v4 = sub_23BFFADE0();

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_23BFFA960();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_23BFA320C(v8);

  sub_23BF6D5A0(v8);
  return v6;
}

@end