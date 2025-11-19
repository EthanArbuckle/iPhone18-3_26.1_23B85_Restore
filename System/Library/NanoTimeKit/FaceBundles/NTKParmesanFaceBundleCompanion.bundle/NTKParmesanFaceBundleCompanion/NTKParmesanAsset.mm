@interface NTKParmesanAsset
+ (id)decodeFromDictionary:(id)a3;
+ (id)decodeFromDictionary:(id)a3 inResourceDirectory:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CGSize)presentationSize;
- (NSDate)modificationDate;
- (NSDictionary)layouts;
- (NSString)accessibilityDescription;
- (NSString)description;
- (NSString)localIdentifier;
- (NSURL)resourceDirectory;
- (NTKParmesanAsset)init;
- (NTKParmesanAsset)initWithLocalIdentifier:(id)a3 modificationDate:(id)a4 presentationSize:(CGSize)a5 videoInfo:(id)a6 resourceDirectory:(id)a7 preferredTimeLayout:(id)a8 layouts:(id)a9 accessibilityDescription:(id)a10;
- (NTKParmesanAssetLayout)preferredLayout;
- (id)asDictionary;
- (id)copyWithZone:(void *)a3;
- (id)layoutFor:(id)a3;
- (id)layoutForScale:(int64_t)a3;
- (id)preferredLayoutImageURL;
- (id)uniqueSnapshotIdentifierForTimeOption:(id)a3;
- (void)setAccessibilityDescription:(id)a3;
- (void)setLayouts:(id)a3;
- (void)setLocalIdentifier:(id)a3;
- (void)setModificationDate:(id)a3;
- (void)setPreferredTimeLayout:(id)a3;
- (void)setResourceDirectory:(id)a3;
- (void)setVideoInfo:(id)a3;
@end

@implementation NTKParmesanAsset

- (NSString)localIdentifier
{

  v2 = sub_23BFFA2C0();

  return v2;
}

- (void)setLocalIdentifier:(id)a3
{
  v4 = sub_23BFFA300();
  v5 = (self + OBJC_IVAR___NTKParmesanAsset_localIdentifier);
  *v5 = v4;
  v5[1] = v6;
}

- (NSDate)modificationDate
{
  v3 = sub_23BF4A264(&qword_27E1E0B80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR___NTKParmesanAsset_modificationDate;
  swift_beginAccess();
  sub_23BF4B33C(self + v6, v5, &qword_27E1E0B80);
  v7 = sub_23BFF8D90();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_23BFF8D60();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setModificationDate:(id)a3
{
  v5 = sub_23BF4A264(&qword_27E1E0B80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  if (a3)
  {
    sub_23BFF8D80();
    v8 = sub_23BFF8D90();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_23BFF8D90();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR___NTKParmesanAsset_modificationDate;
  swift_beginAccess();
  v11 = self;
  sub_23BFE4B60(v7, self + v10, &qword_27E1E0B80);
  swift_endAccess();
}

- (void)setPreferredTimeLayout:(id)a3
{
  v4 = *(self + OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout);
  *(self + OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout) = a3;
  v3 = a3;
}

- (NSDictionary)layouts
{
  swift_beginAccess();
  type metadata accessor for ParmesanTimeLayout();
  type metadata accessor for ParmesanAssetLayout();
  sub_23BFE5284(&unk_27E1E2848, type metadata accessor for ParmesanTimeLayout);

  v2 = sub_23BFFA260();

  return v2;
}

- (void)setLayouts:(id)a3
{
  type metadata accessor for ParmesanTimeLayout();
  type metadata accessor for ParmesanAssetLayout();
  sub_23BFE5284(&unk_27E1E2848, type metadata accessor for ParmesanTimeLayout);
  v4 = sub_23BFFA270();
  v5 = OBJC_IVAR___NTKParmesanAsset_layouts;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (NSString)accessibilityDescription
{
  if (*(self + OBJC_IVAR___NTKParmesanAsset_accessibilityDescription + 8))
  {

    v2 = sub_23BFFA2C0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAccessibilityDescription:(id)a3
{
  if (a3)
  {
    v4 = sub_23BFFA300();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___NTKParmesanAsset_accessibilityDescription);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setVideoInfo:(id)a3
{
  v4 = *(self + OBJC_IVAR___NTKParmesanAsset_videoInfo);
  *(self + OBJC_IVAR___NTKParmesanAsset_videoInfo) = a3;
  v3 = a3;
}

- (NSURL)resourceDirectory
{
  v3 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR___NTKParmesanAsset_resourceDirectory;
  swift_beginAccess();
  sub_23BF4B33C(self + v6, v5, &qword_27E1E0B78);
  v7 = sub_23BFF8D10();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_23BFF8C40();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setResourceDirectory:(id)a3
{
  v5 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  if (a3)
  {
    sub_23BFF8CA0();
    v8 = sub_23BFF8D10();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_23BFF8D10();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR___NTKParmesanAsset_resourceDirectory;
  swift_beginAccess();
  v11 = self;
  sub_23BFE4B60(v7, self + v10, &qword_27E1E0B78);
  swift_endAccess();
}

- (CGSize)presentationSize
{
  v2 = *(self + OBJC_IVAR___NTKParmesanAsset_presentationSize);
  v3 = *(self + OBJC_IVAR___NTKParmesanAsset_presentationSize + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (NTKParmesanAsset)initWithLocalIdentifier:(id)a3 modificationDate:(id)a4 presentationSize:(CGSize)a5 videoInfo:(id)a6 resourceDirectory:(id)a7 preferredTimeLayout:(id)a8 layouts:(id)a9 accessibilityDescription:(id)a10
{
  height = a5.height;
  width = a5.width;
  v37[1] = self;
  v16 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v37 - v17;
  v19 = sub_23BF4A264(&qword_27E1E0B80);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v37 - v20;
  v22 = sub_23BFFA300();
  v24 = v23;
  if (a4)
  {
    sub_23BFF8D80();
    v25 = sub_23BFF8D90();
    (*(*(v25 - 8) + 56))(v21, 0, 1, v25);
  }

  else
  {
    v26 = sub_23BFF8D90();
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
  }

  v27 = a10;
  if (a7)
  {
    sub_23BFF8CA0();
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = sub_23BFF8D10();
  (*(*(v29 - 8) + 56))(v18, v28, 1, v29);
  type metadata accessor for ParmesanTimeLayout();
  type metadata accessor for ParmesanAssetLayout();
  sub_23BFE5284(&unk_27E1E2848, type metadata accessor for ParmesanTimeLayout);
  v30 = sub_23BFFA270();
  if (a10)
  {
    v31 = sub_23BFFA300();
    v27 = v32;
  }

  else
  {
    v31 = 0;
  }

  v33 = a6;
  v34 = a8;
  v35 = sub_23BFE52CC(v22, v24, v21, v33, v18, v34, v30, v31, width, height, v27);

  return v35;
}

- (NTKParmesanAsset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)uniqueSnapshotIdentifierForTimeOption:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23BFE0114();

  v6 = sub_23BFFA2C0();

  return v6;
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

  sub_23BF4B33C(v11, v9, &qword_27E1E0530);
  if (!v10)
  {
    sub_23BF4B2D4(v9, &qword_27E1E0530);
    goto LABEL_8;
  }

  type metadata accessor for ParmesanAsset();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = sub_23BFE4BC8(self, v8);

LABEL_9:
  sub_23BF4B2D4(v11, &qword_27E1E0530);
  return v6 & 1;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_23BFE0858(v6);

  sub_23BF4C484(v6, v6[3]);
  v4 = sub_23BFFACA0();
  sub_23BF4A9A4(v6);
  return v4;
}

- (NSString)description
{
  v2 = self;
  sub_23BFE0D7C();

  v3 = sub_23BFFA2C0();

  return v3;
}

- (id)asDictionary
{
  v2 = self;
  v3 = sub_23BFE0F34();

  if (v3)
  {
    v4 = sub_23BFFA260();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)decodeFromDictionary:(id)a3
{
  sub_23BFFA270();
  v4 = sub_23BFFA260();

  v5 = [a1 decodeFromDictionary:v4 inResourceDirectory:0];

  return v5;
}

+ (id)decodeFromDictionary:(id)a3 inResourceDirectory:(id)a4
{
  v5 = sub_23BFFA270();
  if (a4)
  {
    v6 = sub_23BFFA300();
    a4 = v7;
  }

  else
  {
    v6 = 0;
  }

  swift_getObjCClassMetadata();
  v8 = sub_23BFE1264(v5, v6, a4);

  return v8;
}

- (NTKParmesanAssetLayout)preferredLayout
{
  v2 = [(NTKParmesanAsset *)self layoutFor:*(self + OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout)];

  return v2;
}

- (id)preferredLayoutImageURL
{
  v3 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = *(self + OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout);
  v10 = self;
  v11 = [(NTKParmesanAsset *)v10 imageURLForTimeLayout:v9];
  if (v11)
  {
    v12 = v11;
    sub_23BFF8CA0();

    v13 = sub_23BFF8D10();
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  }

  else
  {
    v13 = sub_23BFF8D10();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  }

  sub_23BFB6DD0(v5, v8);

  sub_23BFF8D10();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v8, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_23BFF8C40();
    (*(v14 + 8))(v8, v13);
    v16 = v17;
  }

  return v16;
}

- (id)layoutFor:(id)a3
{
  v5 = OBJC_IVAR___NTKParmesanAsset_layouts;
  swift_beginAccess();
  v6 = *(self + v5);
  v7 = a3;
  v8 = self;

  v9 = sub_23BFDD8E4(v7, v6);

  return v9;
}

- (id)layoutForScale:(int64_t)a3
{
  v4 = self;
  v5 = sub_23BFE194C(a3);

  return v5;
}

@end