@interface StaticConversationSenderHeaderView
- (UIFont)subtitleFont;
- (UIFont)titleFont;
- (int64_t)appearance;
- (void)configureViewHierarchy;
- (void)layoutSubviews;
- (void)setAppearance:(int64_t)a3;
- (void)setupViews;
- (void)updateWith:(id)a3;
@end

@implementation StaticConversationSenderHeaderView

- (int64_t)appearance
{
  _objc_retain(self);
  v4 = sub_100459A9C();
  _objc_release(self);
  return v4;
}

- (void)setAppearance:(int64_t)a3
{
  _objc_retain(self);
  sub_100459B58(a3);
  _objc_release(self);
}

- (UIFont)titleFont
{
  _objc_retain(self);
  v4 = sub_10045A09C();
  _objc_release(self);

  return v4;
}

- (UIFont)subtitleFont
{
  _objc_retain(self);
  v4 = sub_10045A224();
  _objc_release(self);

  return v4;
}

- (void)layoutSubviews
{
  _objc_retain(self);
  sub_10045A2AC();
  _objc_release(self);
}

- (void)updateWith:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_10045A46C(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)setupViews
{
  _objc_retain(self);
  sub_10045A6E4();
  _objc_release(self);
}

- (void)configureViewHierarchy
{
  _objc_retain(self);
  sub_10045B178();
  _objc_release(self);
}

@end