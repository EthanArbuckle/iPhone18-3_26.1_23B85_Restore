@interface NTKParmesanContentEditOption
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(int64_t)a3 forDevice:(id)a4;
+ (id)optionWithContent:(int64_t)a3 device:(id)a4;
- (NSString)description;
- (NTKParmesanContentEditOption)init;
- (NTKParmesanContentEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (int64_t)content;
@end

@implementation NTKParmesanContentEditOption

+ (id)optionWithContent:(int64_t)a3 device:(id)a4
{
  swift_getObjCClassMetadata();
  v6 = a4;
  v7 = sub_23BF72A98(a3, v6);

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

+ (id)_snapshotKeyForValue:(int64_t)a3 forDevice:(id)a4
{
  v4 = sub_23BFFA2C0();

  return v4;
}

- (id)_valueToFaceBundleStringDict
{

  v2 = sub_23BFFA260();

  return v2;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v3 = sub_23BFC533C(a1, a2, a3);
  sub_23BFEAE08(v3);

  v4 = sub_23BFFA450();

  return v4;
}

- (NSString)description
{
  v2 = self;
  result = [(NTKParmesanContentEditOption *)v2 localizedName];
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

- (NTKParmesanContentEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4
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

  return sub_23BF73518(v8, a4);
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