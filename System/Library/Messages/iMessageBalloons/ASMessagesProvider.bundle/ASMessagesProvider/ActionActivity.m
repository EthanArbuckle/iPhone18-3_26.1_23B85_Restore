@interface ActionActivity
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtC18ASMessagesProviderP33_164D8B16753152EB39F79E4A0FCFB04314ActionActivity)init;
- (id)_systemImageName;
- (void)performActivity;
@end

@implementation ActionActivity

- (NSString)activityType
{
  v2 = self;
  sub_75C1C0();
  v3 = sub_769210();

  return v3;
}

- (NSString)activityTitle
{
  v2 = self;
  sub_75C1D0();
  sub_764C60();

  v3 = sub_769210();

  return v3;
}

- (UIImage)activityImage
{
  v2 = self;
  v3 = sub_5D148();

  return v3;
}

- (id)_systemImageName
{
  v2 = self;
  sub_75C1D0();
  v3 = sub_764C70();

  if (v3)
  {
    if (sub_765190())
    {
      sub_7651B0();
      v5 = v4;

      if (v5)
      {
        v6 = sub_769210();

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
  v2 = self;
  sub_5D2DC();
}

- (_TtC18ASMessagesProviderP33_164D8B16753152EB39F79E4A0FCFB04314ActionActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end