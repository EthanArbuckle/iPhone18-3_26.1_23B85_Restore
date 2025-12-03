@interface ActionActivity
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtC22SubscribePageExtensionP33_932442DA714B10A6559014343396A9F814ActionActivity)init;
- (id)_systemImageName;
- (void)performActivity;
@end

@implementation ActionActivity

- (NSString)activityType
{
  selfCopy = self;
  sub_100746324();
  v3 = sub_100753064();

  return v3;
}

- (NSString)activityTitle
{
  selfCopy = self;
  sub_100746334();
  sub_10074ECB4();

  v3 = sub_100753064();

  return v3;
}

- (UIImage)activityImage
{
  selfCopy = self;
  v3 = sub_1001104A0();

  return v3;
}

- (id)_systemImageName
{
  selfCopy = self;
  sub_100746334();
  v3 = sub_10074ECC4();

  if (v3)
  {
    if (sub_10074F1D4())
    {
      sub_10074F1F4();
      v5 = v4;

      if (v5)
      {
        v6 = sub_100753064();

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
  sub_100110634();
}

- (_TtC22SubscribePageExtensionP33_932442DA714B10A6559014343396A9F814ActionActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end