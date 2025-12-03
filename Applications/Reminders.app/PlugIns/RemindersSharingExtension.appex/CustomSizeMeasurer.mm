@interface CustomSizeMeasurer
- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (_TtC25RemindersSharingExtensionP33_8326BBA138680702F00C183C494E669A18CustomSizeMeasurer)init;
@end

@implementation CustomSizeMeasurer

- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  subviewCopy = subview;
  selfCopy = self;
  sub_100009E7C(subviewCopy, width, height);
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