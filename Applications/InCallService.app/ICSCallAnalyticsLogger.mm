@interface ICSCallAnalyticsLogger
- (void)bannerDidDisconnect;
- (void)callStatusChanged:(id)a3;
- (void)createAnalyticsViewForCall:(id)a3 initialPresentationMode:(int64_t)a4 bannersEnabled:(BOOL)a5;
- (void)createAnsweredBannerAnalyticsViewWithIsHandsfreeAudioRoute:(BOOL)a3;
- (void)ringerMutedForCallUUID:(id)a3;
- (void)setBannerDismissalReasonForAnalyticsSource:(id)a3 callUUID:(id)a4;
- (void)setPresentationMode:(int64_t)a3 callUUID:(id)a4;
- (void)submitCAMetric:(id)a3 viewId:(id)a4;
@end

@implementation ICSCallAnalyticsLogger

- (void)callStatusChanged:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10000C078();

  (*(v5 + 8))(v8, v4);
}

- (void)createAnalyticsViewForCall:(id)a3 initialPresentationMode:(int64_t)a4 bannersEnabled:(BOOL)a5
{
  v6 = a3;
  v7 = self;
  sub_1001E76E0();
}

- (void)createAnsweredBannerAnalyticsViewWithIsHandsfreeAudioRoute:(BOOL)a3
{
  v4 = self;
  sub_1001E7A50(a3);
}

- (void)setBannerDismissalReasonForAnalyticsSource:(id)a3 callUUID:(id)a4
{
  v7 = sub_10014EA98(&qword_1003AAB40);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v15 - v9;
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for UUID();
    v12 = 0;
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = 1;
  }

  sub_100006848(v10, v12, 1, v11);
  v13 = a3;
  v14 = self;
  sub_1001E7B34();

  sub_1000306A4(v10, &qword_1003AAB40);
}

- (void)setPresentationMode:(int64_t)a3 callUUID:(id)a4
{
  v6 = sub_10014EA98(&qword_1003AAB40);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v13 - v8;
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    v11 = 0;
  }

  else
  {
    v10 = type metadata accessor for UUID();
    v11 = 1;
  }

  sub_100006848(v9, v11, 1, v10);
  v12 = self;
  sub_1001E7E78();

  sub_1000306A4(v9, &qword_1003AAB40);
}

- (void)ringerMutedForCallUUID:(id)a3
{
  v5 = sub_10014EA98(&qword_1003AAB40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v12 - v7;
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for UUID();
    v10 = 0;
  }

  else
  {
    v9 = type metadata accessor for UUID();
    v10 = 1;
  }

  sub_100006848(v8, v10, 1, v9);
  v11 = self;
  sub_1001E815C();

  sub_1000306A4(v8, &qword_1003AAB40);
}

- (void)bannerDidDisconnect
{
  v2 = self;
  sub_1001E842C();
}

- (void)submitCAMetric:(id)a3 viewId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001E84B8();
}

@end