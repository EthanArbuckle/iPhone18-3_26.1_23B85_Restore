@interface NTKParmesanContentEditOption
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(int64_t)value forDevice:(id)device;
+ (id)optionWithContent:(int64_t)content device:(id)device;
- (NSString)description;
- (NTKParmesanContentEditOption)init;
- (NTKParmesanContentEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (int64_t)content;
@end

@implementation NTKParmesanContentEditOption

+ (id)optionWithContent:(int64_t)content device:(id)device
{
  swift_getObjCClassMetadata();
  deviceCopy = device;
  v7 = sub_23BF72A98(content, deviceCopy);

  return v7;
}

- (int64_t)content
{
  result = [(NTKValueEditOption *)self _value];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
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

- (NSString)description
{
  selfCopy = self;
  result = [(NTKParmesanContentEditOption *)selfCopy localizedName];
  if (result)
  {
    v4 = result;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NTKParmesanContentEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device
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

  return sub_23BF73518(v8, device);
}

- (NTKParmesanContentEditOption)init
{
  v3 = OBJC_IVAR___NTKParmesanContentEditOption_positionsToFaceBundleStrings;
  *(&self->super.super.super.super.isa + v3) = sub_23BF73028();
  v5.receiver = self;
  v5.super_class = type metadata accessor for ParmesanContentEditOption();
  return [(NTKParmesanContentEditOption *)&v5 init];
}

@end