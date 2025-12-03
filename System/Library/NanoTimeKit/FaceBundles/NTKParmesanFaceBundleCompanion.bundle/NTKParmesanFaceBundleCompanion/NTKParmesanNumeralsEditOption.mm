@interface NTKParmesanNumeralsEditOption
+ (id)optionsDescription;
- (NTKParmesanNumeralsEditOption)init;
- (NTKParmesanNumeralsEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device;
@end

@implementation NTKParmesanNumeralsEditOption

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

- (NTKParmesanNumeralsEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device
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

  return sub_23BF9E7AC(v8, device);
}

- (NTKParmesanNumeralsEditOption)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ParmesanNumeralsEditOption();
  return [(NTKParmesanNumeralsEditOption *)&v3 init];
}

@end