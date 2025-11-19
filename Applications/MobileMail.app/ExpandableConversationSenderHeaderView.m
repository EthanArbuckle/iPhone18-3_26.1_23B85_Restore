@interface ExpandableConversationSenderHeaderView
- (double)calculateMaximumHeight;
- (double)calculateMinimumHeight;
- (void)configureViewHierarchy;
- (void)recalculateHeights;
- (void)setupViews;
- (void)updateLayoutWithProgress:(double)a3;
- (void)updateWith:(id)a3 expansionStatus:(int64_t)a4;
@end

@implementation ExpandableConversationSenderHeaderView

- (void)updateWith:(id)a3 expansionStatus:(int64_t)a4
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_1002D6BBC(a3, a4);
  _objc_release(self);
  _objc_release(a3);
}

- (void)updateLayoutWithProgress:(double)a3
{
  _objc_retain(self);
  sub_1002D5628(a3);
  _objc_release(self);
}

- (void)recalculateHeights
{
  _objc_retain(self);
  sub_1002D5ED0();
  _objc_release(self);
}

- (double)calculateMinimumHeight
{
  _objc_retain(self);
  v4 = sub_1002D7244();
  _objc_release(self);
  return v4;
}

- (double)calculateMaximumHeight
{
  _objc_retain(self);
  v4 = sub_1002D73B4();
  _objc_release(self);
  return v4;
}

- (void)setupViews
{
  _objc_retain(self);
  sub_1002D743C();
  _objc_release(self);
}

- (void)configureViewHierarchy
{
  _objc_retain(self);
  sub_1002D7760();
  _objc_release(self);
}

@end