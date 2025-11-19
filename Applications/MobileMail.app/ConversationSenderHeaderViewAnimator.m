@interface ConversationSenderHeaderViewAnimator
+ (double)collapseProgressLimit;
+ (double)expansionProgressLimit;
- (_TtC10MobileMail38ExpandableConversationSenderHeaderView)headerView;
- (_TtP10MobileMail44ConversationSenderHeaderViewAnimatorDelegate_)delegate;
- (double)currentHeight;
- (int64_t)currentExpansionStatus;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setCurrentExpansionStatus:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setHeaderView:(id)a3;
- (void)updateHeaderWithExpansionStatus:(int64_t)a3;
@end

@implementation ConversationSenderHeaderViewAnimator

- (_TtC10MobileMail38ExpandableConversationSenderHeaderView)headerView
{
  _objc_retain(self);
  v4 = sub_1002AF0B4();
  _objc_release(self);

  return v4;
}

- (void)setHeaderView:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_1002AF184(a3);
  _objc_release(self);
}

- (_TtP10MobileMail44ConversationSenderHeaderViewAnimatorDelegate_)delegate
{
  _objc_retain(self);
  v4 = sub_1002AF288();
  _objc_release(self);

  return v4;
}

- (void)setDelegate:(id)a3
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

- (void)setCurrentExpansionStatus:(int64_t)a3
{
  _objc_retain(self);
  sub_1002AF4E8(a3);
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

- (void)updateHeaderWithExpansionStatus:(int64_t)a3
{
  _objc_retain(self);
  sub_1002B0034(a3);
  _objc_release(self);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_1002B0618(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)scrollViewDidScroll:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_1002B0778(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_1002B1A60(a3, a5, a4.x, a4.y);
  _objc_release(self);
  _objc_release(a3);
}

@end