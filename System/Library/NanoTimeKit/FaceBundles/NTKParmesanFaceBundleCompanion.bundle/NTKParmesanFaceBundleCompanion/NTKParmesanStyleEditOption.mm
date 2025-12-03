@interface NTKParmesanStyleEditOption
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(int64_t)value forDevice:(id)device;
+ (id)optionWithStyle:(int64_t)style device:(id)device;
- (NSString)localizedName;
- (NTKParmesanStyleEditOption)init;
- (NTKParmesanStyleEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (int64_t)style;
@end

@implementation NTKParmesanStyleEditOption

+ (id)optionWithStyle:(int64_t)style device:(id)device
{
  swift_getObjCClassMetadata();
  deviceCopy = device;
  v7 = sub_23BF72A98(style, deviceCopy);

  return v7;
}

- (int64_t)style
{
  selfCopy = self;
  v3 = sub_23BFC42E0();

  return v3;
}

- (NSString)localizedName
{
  selfCopy = self;
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

+ (id)_snapshotKeyForValue:(int64_t)value forDevice:(id)device
{
  sub_23BFC5254(value);
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

+ (id)_orderedValuesForDevice:(id)device
{
  v3 = sub_23BFC3E48();
  sub_23BFEAE08(v3);

  v4 = sub_23BFFA450();

  return v4;
}

- (NTKParmesanStyleEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device
{
  if (representation)
  {
    deviceCopy = device;
    swift_unknownObjectRetain();
    sub_23BFFA960();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    deviceCopy2 = device;
  }

  return sub_23BFC4954(v8, device);
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