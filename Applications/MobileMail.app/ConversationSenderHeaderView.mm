@interface ConversationSenderHeaderView
+ (UIColor)defaultContrastingBackgroundColor;
+ (UIColor)defaultSubtitleButtonColor;
+ (UIColor)defaultTitleColor;
- (UIButton)subtitleButton;
- (UIFont)subtitleFont;
- (UIFont)titleFont;
- (UILabel)titleLabel;
- (UIView)avatarView;
- (UIView)backgroundView;
- (UIView)contentView;
- (_TtC10MobileMail33ConversationSenderHeaderViewModel)viewModel;
- (_TtP10MobileMail36ConversationSenderHeaderViewDelegate_)delegate;
- (double)avatarSize;
- (double)calculateMaximumHeight;
- (double)calculateMinimumHeight;
- (double)maximumHeight;
- (double)minimumHeight;
- (void)configureViewHierarchy;
- (void)recalculateHeights;
- (void)setDelegate:(id)delegate;
- (void)setMaximumHeight:(double)height;
- (void)setMinimumHeight:(double)height;
- (void)setViewModel:(id)model;
- (void)setupViews;
- (void)updateWith:(id)with;
@end

@implementation ConversationSenderHeaderView

- (_TtP10MobileMail36ConversationSenderHeaderViewDelegate_)delegate
{
  _objc_retain(self);
  v4 = sub_1002A7B80();
  _objc_release(self);

  return v4;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1002A7C48();
  _objc_release(self);
}

- (_TtC10MobileMail33ConversationSenderHeaderViewModel)viewModel
{
  _objc_retain(self);
  v4 = sub_1002A7DE0();
  _objc_release(self);

  return v4;
}

- (void)setViewModel:(id)model
{
  _objc_retain(model);
  _objc_retain(self);
  sub_1002A7EB8(model);
  _objc_release(self);
}

- (double)minimumHeight
{
  _objc_retain(self);
  v4 = sub_1002A8014();
  _objc_release(self);
  return v4;
}

- (void)setMinimumHeight:(double)height
{
  _objc_retain(self);
  sub_1002A80D0(height);
  _objc_release(self);
}

- (double)maximumHeight
{
  _objc_retain(self);
  v4 = sub_1002A8200();
  _objc_release(self);
  return v4;
}

- (void)setMaximumHeight:(double)height
{
  _objc_retain(self);
  sub_1002A82BC(height);
  _objc_release(self);
}

- (UIView)avatarView
{
  _objc_retain(self);
  v4 = sub_1002A8448();
  _objc_release(self);

  return v4;
}

- (UILabel)titleLabel
{
  _objc_retain(self);
  v4 = sub_1002A8544();
  _objc_release(self);

  return v4;
}

- (UIButton)subtitleButton
{
  _objc_retain(self);
  v4 = sub_1002A85F8();
  _objc_release(self);

  return v4;
}

- (UIView)backgroundView
{
  _objc_retain(self);
  v4 = sub_1002A86AC();
  _objc_release(self);

  return v4;
}

- (UIView)contentView
{
  _objc_retain(self);
  v4 = sub_1002A8760();
  _objc_release(self);

  return v4;
}

+ (UIColor)defaultTitleColor
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = sub_1002A9B5C();

  return v2;
}

+ (UIColor)defaultContrastingBackgroundColor
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = sub_1002A9D08();

  return v2;
}

+ (UIColor)defaultSubtitleButtonColor
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = sub_1002A9E50();

  return v2;
}

- (UIFont)titleFont
{
  _objc_retain(self);
  v4 = sub_1002A9F48();
  _objc_release(self);

  return v4;
}

- (UIFont)subtitleFont
{
  _objc_retain(self);
  v4 = sub_1002AA01C();
  _objc_release(self);

  return v4;
}

- (double)avatarSize
{
  _objc_retain(self);
  v4 = sub_1002AA0D4();
  _objc_release(self);
  return v4;
}

- (void)updateWith:(id)with
{
  _objc_retain(with);
  _objc_retain(self);
  sub_1002AA978(with);
  _objc_release(self);
  _objc_release(with);
}

- (void)setupViews
{
  _objc_retain(self);
  sub_1002AB258();
  _objc_release(self);
}

- (void)configureViewHierarchy
{
  _objc_retain(self);
  sub_1002ABBD0();
  _objc_release(self);
}

- (double)calculateMinimumHeight
{
  _objc_retain(self);
  sub_1002ABCB0();
  v5 = v2;
  _objc_release(self);
  return v5;
}

- (double)calculateMaximumHeight
{
  _objc_retain(self);
  v4 = sub_1002ABD70();
  _objc_release(self);
  return v4;
}

- (void)recalculateHeights
{
  _objc_retain(self);
  sub_1002ABE34();
  _objc_release(self);
}

@end