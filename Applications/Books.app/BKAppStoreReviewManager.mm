@interface BKAppStoreReviewManager
+ (void)cleanAppStoreReviewCache;
- (void)applicationDidForeground;
- (void)attemptToPresentStoreReviewIn:(id)in tracker:(id)tracker;
- (void)userAddContentToWTRCollectionWithNotification:(id)notification;
- (void)userCustomizedReadingGolsWithNotification:(id)notification;
- (void)userDidRateContentWithNotification:(id)notification;
- (void)userMarkedBookAsFinishedWithNotification:(id)notification;
- (void)userPurchasedContentWithNotification:(id)notification;
@end

@implementation BKAppStoreReviewManager

- (void)applicationDidForeground
{
  v2 = *(&self->super.isa + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig);
  selfCopy = self;
  if (sub_100231284(0xD00000000000001DLL, 0x80000001008C5090, v2))
  {
    v3 = *(&selfCopy->super.isa + OBJC_IVAR___BKAppStoreReviewManager_sharedStoreReview);
    [v3 applicationDidForeground];
  }
}

- (void)attemptToPresentStoreReviewIn:(id)in tracker:(id)tracker
{
  inCopy = in;
  trackerCopy = tracker;
  selfCopy = self;
  sub_1002326A0(inCopy, tracker);
}

- (void)userCustomizedReadingGolsWithNotification:(id)notification
{
  v4 = sub_100797E24();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig);
  selfCopy = self;
  LOBYTE(v8) = sub_100231284(0xD00000000000002DLL, 0x80000001008C51C0, v8);
  (*(v5 + 104))(v7, enum case for LocationType.postReadingGoalChange(_:), v4);
  sub_100233F24(v8 & 1, v7);

  (*(v5 + 8))(v7, v4);
}

- (void)userPurchasedContentWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1002334EC(notificationCopy);
}

- (void)userDidRateContentWithNotification:(id)notification
{
  v4 = sub_100797E24();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig);
  selfCopy = self;
  LOBYTE(v8) = sub_100231284(0xD000000000000021, 0x80000001008C5190, v8);
  (*(v5 + 104))(v7, enum case for LocationType.postRatingAContent(_:), v4);
  sub_100233F24(v8 & 1, v7);

  (*(v5 + 8))(v7, v4);
}

- (void)userAddContentToWTRCollectionWithNotification:(id)notification
{
  v4 = sub_100797E24();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig);
  selfCopy = self;
  LOBYTE(v8) = sub_100231284(0xD000000000000021, 0x80000001008C51F0, v8);
  (*(v5 + 104))(v7, enum case for LocationType.postWTR(_:), v4);
  sub_100233F24(v8 & 1, v7);

  (*(v5 + 8))(v7, v4);
}

- (void)userMarkedBookAsFinishedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100233A48(notificationCopy);
}

+ (void)cleanAppStoreReviewCache
{
  v0 = objc_opt_self();
  standardUserDefaults = [v0 standardUserDefaults];
  v2 = sub_1007A2214();
  [standardUserDefaults removeObjectForKey:v2];

  standardUserDefaults2 = [v0 standardUserDefaults];
  v4 = sub_1007A2214();
  [standardUserDefaults2 removeObjectForKey:v4];

  standardUserDefaults3 = [v0 standardUserDefaults];
  v6 = sub_1007A2214();
  [standardUserDefaults3 removeObjectForKey:v6];
}

@end