@interface ExpandableConversationSenderHeaderView
- (double)calculateMaximumHeight;
- (double)calculateMinimumHeight;
- (void)configureViewHierarchy;
- (void)recalculateHeights;
- (void)setupViews;
- (void)updateLayoutWithProgress:(double)progress;
- (void)updateWith:(id)with expansionStatus:(int64_t)status;
@end

@implementation ExpandableConversationSenderHeaderView

- (void)updateWith:(id)with expansionStatus:(int64_t)status
{
  _objc_retain(with);
  _objc_retain(self);
  sub_1002D6BBC(with, status);
  _objc_release(self);
  _objc_release(with);
}

- (void)updateLayoutWithProgress:(double)progress
{
  _objc_retain(self);
  sub_1002D5628(progress);
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