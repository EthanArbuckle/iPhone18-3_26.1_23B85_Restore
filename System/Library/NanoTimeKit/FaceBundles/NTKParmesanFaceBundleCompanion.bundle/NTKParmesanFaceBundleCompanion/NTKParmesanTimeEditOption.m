@interface NTKParmesanTimeEditOption
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(int64_t)a3 forDevice:(id)a4;
+ (id)optionWithTime:(int64_t)a3 device:(id)a4;
+ (id)optionsDescription;
- (NSString)localizedName;
- (NTKParmesanTimeEditOption)init;
- (NTKParmesanTimeEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4;
- (NTKParmesanTimeLayout)timeLayout;
- (id)_valueToFaceBundleStringDict;
- (int64_t)time;
@end

@implementation NTKParmesanTimeEditOption

+ (id)optionWithTime:(int64_t)a3 device:(id)a4
{
  swift_getObjCClassMetadata();
  v6 = a4;
  v7 = sub_23BF72A98(a3, v6);

  return v7;
}

- (int64_t)time
{
  v2 = self;
  v3 = sub_23BFA41AC();

  return v3;
}

- (NTKParmesanTimeLayout)timeLayout
{
  v2 = self;
  v3 = sub_23BFA41AC();
  v4 = sub_23BFA3D38(v3);

  return v4;
}

- (NSString)localizedName
{
  v2 = self;
  sub_23BFA429C();
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
  sub_23BFA4DBC(a3);
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
  v3 = sub_23BFC3CC0();
  sub_23BFEAE08(v3);

  v4 = sub_23BFFA450();

  return v4;
}

+ (id)optionsDescription
{
  sub_23BF700D8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_23BFFA2C0();
  v4 = sub_23BFFA2C0();
  v5 = [ObjCClassFromMetadata localizedStringForKey:v3 comment:v4];

  if (!v5)
  {
    sub_23BFFA300();
    v6 = sub_23BFFA2C0();

    v5 = v6;
  }

  return v5;
}

- (NTKParmesanTimeEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4
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

  return sub_23BFA48B8(v8, a4);
}

- (NTKParmesanTimeEditOption)init
{
  v3 = OBJC_IVAR___NTKParmesanTimeEditOption_positionsToFaceBundleStrings;
  *(&self->super.super.super.super.isa + v3) = sub_23BFA44B8();
  v5.receiver = self;
  v5.super_class = type metadata accessor for ParmesanTimeEditOption();
  return [(NTKParmesanTimeEditOption *)&v5 init];
}

@end