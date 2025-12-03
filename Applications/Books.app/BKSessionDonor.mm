@interface BKSessionDonor
- (BKSessionDonor)init;
- (BOOL)isCarPlayConnected;
- (void)donateWithConfiguration:(id)configuration context:(id)context donationCompleteBlock:(id)block;
- (void)reportProductPageViewed:(id)viewed :(id)a4 :(BOOL)a5;
- (void)reportPurchase:(id)purchase;
- (void)sessionDidConnect:(id)connect;
- (void)timeTracker:(id)tracker didBeginTrackingSession:(id)session trackerEventType:(unint64_t)type asset:(id)asset readingFeatureFlags:(int64_t)flags;
- (void)timeTracker:(id)tracker didEndTrackingSession:(id)session duration:(double)duration trackerEventType:(unint64_t)type asset:(id)asset readingFeatureFlags:(int64_t)flags;
- (void)userNotificationSettingsDidChange;
@end

@implementation BKSessionDonor

- (BKSessionDonor)init
{
  v3 = sub_1007A2214();
  v4 = [(BKSessionDonor *)self initWithType:v3];

  return v4;
}

- (void)donateWithConfiguration:(id)configuration context:(id)context donationCompleteBlock:(id)block
{
  v8 = _Block_copy(block);
  if (context)
  {
    v9 = sub_1007A2254();
    context = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  configurationCopy = configuration;
  selfCopy = self;
  sub_100378CC0(configurationCopy, v9, context, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)reportPurchase:(id)purchase
{
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_1007A2044();
  v8 = sub_1007A2744();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = qword_100AD1478;
  selfCopy = self;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_100ADE1B0;
  v12 = sub_10037AB8C(&qword_100ADD578, type metadata accessor for PropertyValueActor.ActorType);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = selfCopy;
  v13[5] = v7;

  sub_1003457A0(0, 0, v6, &unk_10081C980, v13);

  [(BKSessionDonor *)selfCopy propertyDidChange:selfCopy propertyConfiguration:*&selfCopy->BMBaseDonor_opaque[OBJC_IVAR___BKSessionDonor_sessionConfiguration]];
}

- (void)reportProductPageViewed:(id)viewed :(id)a4 :(BOOL)a5
{
  v7 = sub_1007A2254();
  v9 = v8;
  v10 = sub_1007A2254();
  v12 = v11;
  selfCopy = self;
  sub_1003760A8(v7, v9, v10, v12, a5);
}

- (void)timeTracker:(id)tracker didBeginTrackingSession:(id)session trackerEventType:(unint64_t)type asset:(id)asset readingFeatureFlags:(int64_t)flags
{
  v10 = sub_100796C04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796BE4();
  trackerCopy = tracker;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100379D54(v13, asset);

  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v10);
}

- (void)timeTracker:(id)tracker didEndTrackingSession:(id)session duration:(double)duration trackerEventType:(unint64_t)type asset:(id)asset readingFeatureFlags:(int64_t)flags
{
  v10 = sub_100796C04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796BE4();
  trackerCopy = tracker;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10037A1C0(v13);

  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v10);
}

- (BOOL)isCarPlayConnected
{
  currentSession = *&self->BMBaseDonor_opaque[OBJC_IVAR___BKSessionDonor_carSessionStatus];
  if (currentSession)
  {
    currentSession = [currentSession currentSession];
    if (currentSession)
    {

      LOBYTE(currentSession) = 1;
    }
  }

  return currentSession;
}

- (void)sessionDidConnect:(id)connect
{
  v3 = *&self->BMBaseDonor_opaque[OBJC_IVAR___BKSessionDonor_connectedToCarplayConfig];
  selfCopy = self;
  [(BKSessionDonor *)selfCopy propertyDidChange:selfCopy propertyConfiguration:v3];
  sub_1003748C4();
}

- (void)userNotificationSettingsDidChange
{
  selfCopy = self;
  sub_10037861C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1007999F4();
  }
}

@end