@interface BKAppStoreReviewManager
+ (void)cleanAppStoreReviewCache;
- (void)applicationDidForeground;
- (void)attemptToPresentStoreReviewIn:(id)a3 tracker:(id)a4;
- (void)userAddContentToWTRCollectionWithNotification:(id)a3;
- (void)userCustomizedReadingGolsWithNotification:(id)a3;
- (void)userDidRateContentWithNotification:(id)a3;
- (void)userMarkedBookAsFinishedWithNotification:(id)a3;
- (void)userPurchasedContentWithNotification:(id)a3;
@end

@implementation BKAppStoreReviewManager

- (void)applicationDidForeground
{
  v2 = *(&self->super.isa + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig);
  v4 = self;
  if (sub_100231284(0xD00000000000001DLL, 0x80000001008C5090, v2))
  {
    v3 = *(&v4->super.isa + OBJC_IVAR___BKAppStoreReviewManager_sharedStoreReview);
    [v3 applicationDidForeground];
  }
}

- (void)attemptToPresentStoreReviewIn:(id)a3 tracker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002326A0(v6, a4);
}

- (void)userCustomizedReadingGolsWithNotification:(id)a3
{
  v4 = sub_100797E24();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig);
  v9 = self;
  LOBYTE(v8) = sub_100231284(0xD00000000000002DLL, 0x80000001008C51C0, v8);
  (*(v5 + 104))(v7, enum case for LocationType.postReadingGoalChange(_:), v4);
  sub_100233F24(v8 & 1, v7);

  (*(v5 + 8))(v7, v4);
}

- (void)userPurchasedContentWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002334EC(v4);
}

- (void)userDidRateContentWithNotification:(id)a3
{
  v4 = sub_100797E24();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig);
  v9 = self;
  LOBYTE(v8) = sub_100231284(0xD000000000000021, 0x80000001008C5190, v8);
  (*(v5 + 104))(v7, enum case for LocationType.postRatingAContent(_:), v4);
  sub_100233F24(v8 & 1, v7);

  (*(v5 + 8))(v7, v4);
}

- (void)userAddContentToWTRCollectionWithNotification:(id)a3
{
  v4 = sub_100797E24();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig);
  v9 = self;
  LOBYTE(v8) = sub_100231284(0xD000000000000021, 0x80000001008C51F0, v8);
  (*(v5 + 104))(v7, enum case for LocationType.postWTR(_:), v4);
  sub_100233F24(v8 & 1, v7);

  (*(v5 + 8))(v7, v4);
}

- (void)userMarkedBookAsFinishedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100233A48(v4);
}

+ (void)cleanAppStoreReviewCache
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_1007A2214();
  [v1 removeObjectForKey:v2];

  v3 = [v0 standardUserDefaults];
  v4 = sub_1007A2214();
  [v3 removeObjectForKey:v4];

  v5 = [v0 standardUserDefaults];
  v6 = sub_1007A2214();
  [v5 removeObjectForKey:v6];
}

@end