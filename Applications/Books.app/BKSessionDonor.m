@interface BKSessionDonor
- (BKSessionDonor)init;
- (BOOL)isCarPlayConnected;
- (void)donateWithConfiguration:(id)a3 context:(id)a4 donationCompleteBlock:(id)a5;
- (void)reportProductPageViewed:(id)a3 :(id)a4 :(BOOL)a5;
- (void)reportPurchase:(id)a3;
- (void)sessionDidConnect:(id)a3;
- (void)timeTracker:(id)a3 didBeginTrackingSession:(id)a4 trackerEventType:(unint64_t)a5 asset:(id)a6 readingFeatureFlags:(int64_t)a7;
- (void)timeTracker:(id)a3 didEndTrackingSession:(id)a4 duration:(double)a5 trackerEventType:(unint64_t)a6 asset:(id)a7 readingFeatureFlags:(int64_t)a8;
- (void)userNotificationSettingsDidChange;
@end

@implementation BKSessionDonor

- (BKSessionDonor)init
{
  v3 = sub_1007A2214();
  v4 = [(BKSessionDonor *)self initWithType:v3];

  return v4;
}

- (void)donateWithConfiguration:(id)a3 context:(id)a4 donationCompleteBlock:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_1007A2254();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  v11 = a3;
  v12 = self;
  sub_100378CC0(v11, v9, a4, v12, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)reportPurchase:(id)a3
{
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_1007A2044();
  v8 = sub_1007A2744();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = qword_100AD1478;
  v10 = self;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_100ADE1B0;
  v12 = sub_10037AB8C(&qword_100ADD578, type metadata accessor for PropertyValueActor.ActorType);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v10;
  v13[5] = v7;

  sub_1003457A0(0, 0, v6, &unk_10081C980, v13);

  [(BKSessionDonor *)v10 propertyDidChange:v10 propertyConfiguration:*&v10->BMBaseDonor_opaque[OBJC_IVAR___BKSessionDonor_sessionConfiguration]];
}

- (void)reportProductPageViewed:(id)a3 :(id)a4 :(BOOL)a5
{
  v7 = sub_1007A2254();
  v9 = v8;
  v10 = sub_1007A2254();
  v12 = v11;
  v13 = self;
  sub_1003760A8(v7, v9, v10, v12, a5);
}

- (void)timeTracker:(id)a3 didBeginTrackingSession:(id)a4 trackerEventType:(unint64_t)a5 asset:(id)a6 readingFeatureFlags:(int64_t)a7
{
  v10 = sub_100796C04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796BE4();
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = self;
  sub_100379D54(v13, a6);

  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v10);
}

- (void)timeTracker:(id)a3 didEndTrackingSession:(id)a4 duration:(double)a5 trackerEventType:(unint64_t)a6 asset:(id)a7 readingFeatureFlags:(int64_t)a8
{
  v10 = sub_100796C04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796BE4();
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = self;
  sub_10037A1C0(v13);

  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v10);
}

- (BOOL)isCarPlayConnected
{
  v2 = *&self->BMBaseDonor_opaque[OBJC_IVAR___BKSessionDonor_carSessionStatus];
  if (v2)
  {
    v2 = [v2 currentSession];
    if (v2)
    {

      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

- (void)sessionDidConnect:(id)a3
{
  v3 = *&self->BMBaseDonor_opaque[OBJC_IVAR___BKSessionDonor_connectedToCarplayConfig];
  v4 = self;
  [(BKSessionDonor *)v4 propertyDidChange:v4 propertyConfiguration:v3];
  sub_1003748C4();
}

- (void)userNotificationSettingsDidChange
{
  v4 = self;
  sub_10037861C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1007999F4();
  }
}

@end