@interface NTKParmesanGalleryPlaceholderDataSource
+ (NSString)heroPlaceholderName;
+ (NSString)placeholderCustomDataKey;
+ (NSString)randomPlaceholderName;
+ (id)configurationForName:(id)name;
+ (id)placeholderNamesForDevice:(id)device;
- (NTKParmesanGalleryPlaceholderDataSource)init;
@end

@implementation NTKParmesanGalleryPlaceholderDataSource

- (NTKParmesanGalleryPlaceholderDataSource)init
{
  *&self->delegate[OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource_delegate] = 0;
  swift_unknownObjectWeakInit();
  v3 = self + OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource_contentOption;
  *v3 = 0;
  v3[8] = 1;
  v4 = (&self->super.isa + OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource_forcedPlaceholderName);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.isa + OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource____lazy_storage___faceBundle) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ParmesanGalleryPlaceholderDataSource();
  return [(NTKParmesanGalleryPlaceholderDataSource *)&v6 init];
}

+ (NSString)placeholderCustomDataKey
{
  v2 = sub_23BFFA2C0();

  return v2;
}

+ (NSString)heroPlaceholderName
{
  v2 = sub_23BFFA2C0();

  return v2;
}

+ (NSString)randomPlaceholderName
{
  result = sub_23BFC3728(6uLL);
  if (result > 5)
  {
    __break(1u);
  }

  else
  {
    sub_23BF7477C(byte_284EBE850[result + 32]);
    v3 = sub_23BFFA2C0();

    return v3;
  }

  return result;
}

+ (id)placeholderNamesForDevice:(id)device
{
  deviceCopy = device;
  sub_23BFC37B4(deviceCopy);

  v4 = sub_23BFFA450();

  return v4;
}

+ (id)configurationForName:(id)name
{
  sub_23BFFA300();
  v3 = sub_23BF74730();
  if (v3 == 12)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = type metadata accessor for ParmesanGalleryPlaceholderConfiguration();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR___NTKParmesanGalleryPlaceholderConfiguration_placeholderStyle] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

@end