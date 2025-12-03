@interface ActionActivity
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtC20ProductPageExtensionP33_FDFF98F3DEFBD62812CE468C53A31FA514ActionActivity)init;
- (id)_systemImageName;
- (void)performActivity;
@end

@implementation ActionActivity

- (NSString)activityType
{
  selfCopy = self;
  sub_100762D6C();
  v3 = sub_10076FF6C();

  return v3;
}

- (NSString)activityTitle
{
  selfCopy = self;
  sub_100762D7C();
  sub_10076B8EC();

  v3 = sub_10076FF6C();

  return v3;
}

- (UIImage)activityImage
{
  selfCopy = self;
  v3 = sub_100051CE0();

  return v3;
}

- (id)_systemImageName
{
  selfCopy = self;
  sub_100762D7C();
  v3 = sub_10076B8FC();

  if (v3)
  {
    if (sub_10076BE0C())
    {
      sub_10076BE2C();
      v5 = v4;

      if (v5)
      {
        v6 = sub_10076FF6C();

        v7 = v6;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)performActivity
{
  selfCopy = self;
  sub_100051E74();
}

- (_TtC20ProductPageExtensionP33_FDFF98F3DEFBD62812CE468C53A31FA514ActionActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end