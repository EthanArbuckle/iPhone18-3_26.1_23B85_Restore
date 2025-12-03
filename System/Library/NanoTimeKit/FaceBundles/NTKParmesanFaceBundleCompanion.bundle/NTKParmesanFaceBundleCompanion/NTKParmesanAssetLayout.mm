@interface NTKParmesanAssetLayout
- (BOOL)isEqual:(id)equal;
- (BOOL)linkFromSrcDirectory:(id)directory toDstDirectory:(id)dstDirectory;
- (NSString)baseImageName;
- (NTKParmesanAssetLayout)init;
- (NTKParmesanAssetLayout)initWithOriginalCrop:(id)crop baseImageName:(id)name mask:(id)mask timeLayout:(id)layout colorAnalysis:(id)analysis imageAOTBrightness:(double)brightness userEdited:(BOOL)edited;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)setBaseImageName:(id)name;
- (void)setColorAnalysis:(id)analysis;
- (void)setMask:(id)mask;
- (void)setOriginalCrop:(id)crop;
- (void)setTimeLayout:(id)layout;
@end

@implementation NTKParmesanAssetLayout

- (void)setOriginalCrop:(id)crop
{
  v4 = *(self + OBJC_IVAR___NTKParmesanAssetLayout_originalCrop);
  *(self + OBJC_IVAR___NTKParmesanAssetLayout_originalCrop) = crop;
  cropCopy = crop;
}

- (NSString)baseImageName
{

  v2 = sub_23BFFA2C0();

  return v2;
}

- (void)setBaseImageName:(id)name
{
  v4 = sub_23BFFA300();
  v5 = (self + OBJC_IVAR___NTKParmesanAssetLayout_baseImageName);
  *v5 = v4;
  v5[1] = v6;
}

- (void)setMask:(id)mask
{
  v4 = *(self + OBJC_IVAR___NTKParmesanAssetLayout_mask);
  *(self + OBJC_IVAR___NTKParmesanAssetLayout_mask) = mask;
  maskCopy = mask;
}

- (void)setTimeLayout:(id)layout
{
  v4 = *(self + OBJC_IVAR___NTKParmesanAssetLayout_timeLayout);
  *(self + OBJC_IVAR___NTKParmesanAssetLayout_timeLayout) = layout;
  layoutCopy = layout;
}

- (void)setColorAnalysis:(id)analysis
{
  v4 = *(self + OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis);
  *(self + OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis) = analysis;
  analysisCopy = analysis;
}

- (NTKParmesanAssetLayout)initWithOriginalCrop:(id)crop baseImageName:(id)name mask:(id)mask timeLayout:(id)layout colorAnalysis:(id)analysis imageAOTBrightness:(double)brightness userEdited:(BOOL)edited
{
  v15 = sub_23BFFA300();
  v17 = v16;
  cropCopy = crop;
  maskCopy = mask;
  layoutCopy = layout;
  analysisCopy = analysis;
  return sub_23BFB4CE0(cropCopy, v15, v17, mask, layoutCopy, analysis, edited, brightness);
}

- (NTKParmesanAssetLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
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
  selfCopy = self;
  v3 = sub_23BFB6184();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_23BFB62EC(v6);

  sub_23BF4C484(v6, v6[3]);
  v4 = sub_23BFFACA0();
  sub_23BF4A9A4(v6);
  return v4;
}

- (BOOL)linkFromSrcDirectory:(id)directory toDstDirectory:(id)dstDirectory
{
  v5 = sub_23BFFA300();
  v7 = v6;
  v8 = sub_23BFFA300();
  v10 = v9;
  selfCopy = self;
  LOBYTE(v8) = sub_23BFB6764(v5, v7, v8, v10);

  return v8 & 1;
}

@end