@interface NTKParmesanStyleEditOption
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(int64_t)a3 forDevice:(id)a4;
+ (id)optionWithStyle:(int64_t)a3 device:(id)a4;
- (NSString)localizedName;
- (NTKParmesanStyleEditOption)init;
- (NTKParmesanStyleEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (int64_t)style;
@end

@implementation NTKParmesanStyleEditOption

+ (id)optionWithStyle:(int64_t)a3 device:(id)a4
{
  swift_getObjCClassMetadata();
  v6 = a4;
  v7 = sub_23BF72A98(a3, v6);

  return v7;
}

- (int64_t)style
{
  v2 = self;
  v3 = sub_23BFC42E0();

  return v3;
}

- (NSString)localizedName
{
  v2 = self;
  sub_23BFC4388();
  v4 = v3;

  if (v4)
  {
    v5 = sub_23BFFA2C0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_snapshotKeyForValue:(int64_t)a3 forDevice:(id)a4
{
  sub_23BFC5254(a3);
  if (v4)
  {
    v5 = sub_23BFFA2C0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_valueToFaceBundleStringDict
{

  v2 = sub_23BFFA260();

  return v2;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v3 = sub_23BFC3E48();
  sub_23BFEAE08(v3);

  v4 = sub_23BFFA450();

  return v4;
}

- (NTKParmesanStyleEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4
{
  if (a3)
  {
    v5 = a4;
    swift_unknownObjectRetain();
    sub_23BFFA960();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v6 = a4;
  }

  return sub_23BFC4954(v8, a4);
}

- (NTKParmesanStyleEditOption)init
{
  v3 = OBJC_IVAR___NTKParmesanStyleEditOption_positionsToFaceBundleStrings;
  *(&self->super.super.super.super.isa + v3) = sub_23BFC45D0();
  v5.receiver = self;
  v5.super_class = type metadata accessor for ParmesanStyleEditOption();
  return [(NTKParmesanStyleEditOption *)&v5 init];
}

@end