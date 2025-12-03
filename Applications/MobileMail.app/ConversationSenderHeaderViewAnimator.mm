@interface ConversationSenderHeaderViewAnimator
+ (double)collapseProgressLimit;
+ (double)expansionProgressLimit;
- (_TtC10MobileMail38ExpandableConversationSenderHeaderView)headerView;
- (_TtP10MobileMail44ConversationSenderHeaderViewAnimatorDelegate_)delegate;
- (double)currentHeight;
- (int64_t)currentExpansionStatus;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setCurrentExpansionStatus:(int64_t)status;
- (void)setDelegate:(id)delegate;
- (void)setHeaderView:(id)view;
- (void)updateHeaderWithExpansionStatus:(int64_t)status;
@end

@implementation ConversationSenderHeaderViewAnimator

- (_TtC10MobileMail38ExpandableConversationSenderHeaderView)headerView
{
  _objc_retain(self);
  v4 = sub_1002AF0B4();
  _objc_release(self);

  return v4;
}

- (void)setHeaderView:(id)view
{
  _objc_retain(view);
  _objc_retain(self);
  sub_1002AF184(view);
  _objc_release(self);
}

- (_TtP10MobileMail44ConversationSenderHeaderViewAnimatorDelegate_)delegate
{
  _objc_retain(self);
  v4 = sub_1002AF288();
  _objc_release(self);

  return v4;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1002AF350();
  _objc_release(self);
}

- (int64_t)currentExpansionStatus
{
  _objc_retain(self);
  v4 = sub_1002AF42C();
  _objc_release(self);
  return v4;
}

- (void)setCurrentExpansionStatus:(int64_t)status
{
  _objc_retain(self);
  sub_1002AF4E8(status);
  _objc_release(self);
}

- (double)currentHeight
{
  _objc_retain(self);
  v4 = sub_1002AF5AC();
  _objc_release(self);
  return v4;
}

+ (double)expansionProgressLimit
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  return sub_1002AF794();
}

+ (double)collapseProgressLimit
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  return sub_1002AF7F8();
}

- (void)updateHeaderWithExpansionStatus:(int64_t)status
{
  _objc_retain(self);
  sub_1002B0034(status);
  _objc_release(self);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  _objc_retain(dragging);
  _objc_retain(self);
  sub_1002B0618(dragging);
  _objc_release(self);
  _objc_release(dragging);
}

- (void)scrollViewDidScroll:(id)scroll
{
  _objc_retain(scroll);
  _objc_retain(self);
  sub_1002B0778(scroll);
  _objc_release(self);
  _objc_release(scroll);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  _objc_retain(dragging);
  _objc_retain(self);
  sub_1002B1A60(dragging, offset, velocity.x, velocity.y);
  _objc_release(self);
  _objc_release(dragging);
}

@end