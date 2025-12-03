@interface ICSCallAnalyticsLogger
- (void)bannerDidDisconnect;
- (void)callStatusChanged:(id)changed;
- (void)createAnalyticsViewForCall:(id)call initialPresentationMode:(int64_t)mode bannersEnabled:(BOOL)enabled;
- (void)createAnsweredBannerAnalyticsViewWithIsHandsfreeAudioRoute:(BOOL)route;
- (void)ringerMutedForCallUUID:(id)d;
- (void)setBannerDismissalReasonForAnalyticsSource:(id)source callUUID:(id)d;
- (void)setPresentationMode:(int64_t)mode callUUID:(id)d;
- (void)submitCAMetric:(id)metric viewId:(id)id;
@end

@implementation ICSCallAnalyticsLogger

- (void)callStatusChanged:(id)changed
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10000C078();

  (*(v5 + 8))(v8, v4);
}

- (void)createAnalyticsViewForCall:(id)call initialPresentationMode:(int64_t)mode bannersEnabled:(BOOL)enabled
{
  callCopy = call;
  selfCopy = self;
  sub_1001E76E0();
}

- (void)createAnsweredBannerAnalyticsViewWithIsHandsfreeAudioRoute:(BOOL)route
{
  selfCopy = self;
  sub_1001E7A50(route);
}

- (void)setBannerDismissalReasonForAnalyticsSource:(id)source callUUID:(id)d
{
  v7 = sub_10014EA98(&qword_1003AAB40);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v15 - v9;
  if (d)
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
  sourceCopy = source;
  selfCopy = self;
  sub_1001E7B34();

  sub_1000306A4(v10, &qword_1003AAB40);
}

- (void)setPresentationMode:(int64_t)mode callUUID:(id)d
{
  v6 = sub_10014EA98(&qword_1003AAB40);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v13 - v8;
  if (d)
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
  selfCopy = self;
  sub_1001E7E78();

  sub_1000306A4(v9, &qword_1003AAB40);
}

- (void)ringerMutedForCallUUID:(id)d
{
  v5 = sub_10014EA98(&qword_1003AAB40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v12 - v7;
  if (d)
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
  selfCopy = self;
  sub_1001E815C();

  sub_1000306A4(v8, &qword_1003AAB40);
}

- (void)bannerDidDisconnect
{
  selfCopy = self;
  sub_1001E842C();
}

- (void)submitCAMetric:(id)metric viewId:(id)id
{
  metricCopy = metric;
  idCopy = id;
  selfCopy = self;
  sub_1001E84B8();
}

@end