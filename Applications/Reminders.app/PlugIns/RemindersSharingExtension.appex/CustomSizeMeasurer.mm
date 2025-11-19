@interface CustomSizeMeasurer
- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5;
- (_TtC25RemindersSharingExtensionP33_8326BBA138680702F00C183C494E669A18CustomSizeMeasurer)init;
@end

@implementation CustomSizeMeasurer

- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_100009E7C(v10, width, height);
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (_TtC25RemindersSharingExtensionP33_8326BBA138680702F00C183C494E669A18CustomSizeMeasurer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end