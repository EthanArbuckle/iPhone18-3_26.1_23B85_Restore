@interface NTKParmesanAssetLayout
- (BOOL)isEqual:(id)a3;
- (BOOL)linkFromSrcDirectory:(id)a3 toDstDirectory:(id)a4;
- (NSString)baseImageName;
- (NTKParmesanAssetLayout)init;
- (NTKParmesanAssetLayout)initWithOriginalCrop:(id)a3 baseImageName:(id)a4 mask:(id)a5 timeLayout:(id)a6 colorAnalysis:(id)a7 imageAOTBrightness:(double)a8 userEdited:(BOOL)a9;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)setBaseImageName:(id)a3;
- (void)setColorAnalysis:(id)a3;
- (void)setMask:(id)a3;
- (void)setOriginalCrop:(id)a3;
- (void)setTimeLayout:(id)a3;
@end

@implementation NTKParmesanAssetLayout

- (void)setOriginalCrop:(id)a3
{
  v4 = *(self + OBJC_IVAR___NTKParmesanAssetLayout_originalCrop);
  *(self + OBJC_IVAR___NTKParmesanAssetLayout_originalCrop) = a3;
  v3 = a3;
}

- (NSString)baseImageName
{

  v2 = sub_23BFFA2C0();

  return v2;
}

- (void)setBaseImageName:(id)a3
{
  v4 = sub_23BFFA300();
  v5 = (self + OBJC_IVAR___NTKParmesanAssetLayout_baseImageName);
  *v5 = v4;
  v5[1] = v6;
}

- (void)setMask:(id)a3
{
  v4 = *(self + OBJC_IVAR___NTKParmesanAssetLayout_mask);
  *(self + OBJC_IVAR___NTKParmesanAssetLayout_mask) = a3;
  v3 = a3;
}

- (void)setTimeLayout:(id)a3
{
  v4 = *(self + OBJC_IVAR___NTKParmesanAssetLayout_timeLayout);
  *(self + OBJC_IVAR___NTKParmesanAssetLayout_timeLayout) = a3;
  v3 = a3;
}

- (void)setColorAnalysis:(id)a3
{
  v4 = *(self + OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis);
  *(self + OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis) = a3;
  v3 = a3;
}

- (NTKParmesanAssetLayout)initWithOriginalCrop:(id)a3 baseImageName:(id)a4 mask:(id)a5 timeLayout:(id)a6 colorAnalysis:(id)a7 imageAOTBrightness:(double)a8 userEdited:(BOOL)a9
{
  v15 = sub_23BFFA300();
  v17 = v16;
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  return sub_23BFB4CE0(v18, v15, v17, a5, v20, a7, a9, a8);
}

- (NTKParmesanAssetLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_23BFFA960();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v5 = self;
  }

  sub_23BF6D608(v11, v9);
  if (!v10)
  {
    sub_23BF4B2D4(v9, &qword_27E1E0530);
    goto LABEL_8;
  }

  type metadata accessor for ParmesanAssetLayout();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = sub_23BFB6E8C(self, v8);

LABEL_9:
  sub_23BF4B2D4(v11, &qword_27E1E0530);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_23BFB6184();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_23BFB62EC(v6);

  sub_23BF4C484(v6, v6[3]);
  v4 = sub_23BFFACA0();
  sub_23BF4A9A4(v6);
  return v4;
}

- (BOOL)linkFromSrcDirectory:(id)a3 toDstDirectory:(id)a4
{
  v5 = sub_23BFFA300();
  v7 = v6;
  v8 = sub_23BFFA300();
  v10 = v9;
  v11 = self;
  LOBYTE(v8) = sub_23BFB6764(v5, v7, v8, v10);

  return v8 & 1;
}

@end