@interface NTKParmesanTypefaceEditOption
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(int64_t)value forDevice:(id)device;
+ (id)optionWithTypeface:(int64_t)typeface device:(id)device;
+ (id)optionsDescription;
- (NSString)localizedName;
- (NTKParmesanTypefaceEditOption)init;
- (NTKParmesanTypefaceEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (int64_t)typeface;
@end

@implementation NTKParmesanTypefaceEditOption

+ (id)optionWithTypeface:(int64_t)typeface device:(id)device
{
  swift_getObjCClassMetadata();
  deviceCopy = device;
  v7 = sub_23BF72A98(typeface, deviceCopy);

  return v7;
}

- (int64_t)typeface
{
  result = [(NTKValueEditOption *)self _value];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (NSString)localizedName
{
  selfCopy = self;
  sub_23BF7B1F8();
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
  v4 = sub_23BFFA2C0();

  return v4;
}

- (id)_valueToFaceBundleStringDict
{

  v2 = sub_23BFFA260();

  return v2;
}

+ (id)_orderedValuesForDevice:(id)device
{
  v3 = sub_23BFC533C(self, a2, device);
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

- (NTKParmesanTypefaceEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device
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

  return sub_23BF7B96C(v8, device);
}

- (NTKParmesanTypefaceEditOption)init
{
  v3 = OBJC_IVAR___NTKParmesanTypefaceEditOption_positionsToFaceBundleStrings;
  *(&self->super.super.super.super.isa + v3) = sub_23BF7B418();
  v5.receiver = self;
  v5.super_class = type metadata accessor for ParmesanTypefaceEditOption();
  return [(NTKParmesanTypefaceEditOption *)&v5 init];
}

@end