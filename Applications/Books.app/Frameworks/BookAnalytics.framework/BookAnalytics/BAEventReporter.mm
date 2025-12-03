@interface BAEventReporter
+ (BAEventReporter)sharedReporter;
- (BAEventReporter)init;
- (int64_t)seriesTypeForContentID:(id)d;
- (void)emitAccountDidChangeEventWithTracker:(id)tracker type:(unint64_t)type reason:(unint64_t)reason;
- (void)emitAllInSeriesViewEventWithTracker:(id)tracker collectionID:(id)d collectionItemCount:(int64_t)count;
- (void)emitAnnotationActionEventWithTracker:(id)tracker contentData:(id)data viewData:(id)viewData;
- (void)emitBrowseCollectionScreenViewEventWithTracker:(id)tracker startDate:(id)date summaryData:(id)data;
- (void)emitCollectionDescriptionEventWithTracker:(id)tracker collectionID:(id)d;
- (void)emitCollectionScreenViewEventWithTracker:(id)tracker startDate:(id)date collectionID:(id)d collectionItemCount:(int64_t)count;
- (void)emitContextualActionSheetExposureEventWithTracker:(id)tracker startDate:(id)date propertyProvider:(id)provider;
- (void)emitDragDropEventWithContentIDs:(id)ds;
- (void)emitExitLinkTapEventWithTracker:(id)tracker url:(id)url;
- (void)emitGetStartedActionEventWithTracker:(id)tracker type:(int64_t)type;
- (void)emitInBookSearchEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData;
- (void)emitLibraryDataEditEventWithTracker:(id)tracker contentIDs:(id)ds actionType:(int64_t)type result:(BOOL)result;
- (void)emitLibraryViewEventWithTracker:(id)tracker startDate:(id)date librarySummary:(id)summary displayType:(int64_t)type sortType:(int64_t)sortType;
- (void)emitMarkAsFinishedEventWithTracker:(id)tracker contentData:(id)data markedData:(id)markedData;
- (void)emitNotificationEngagementEventWithTracker:(id)tracker engagementData:(id)data notificationData:(id)notificationData;
- (void)emitPurchaseAttemptEventWithTracker:(id)tracker contentData:(id)data purchaseData:(id)purchaseData upSellData:(id)sellData;
- (void)emitPurchaseFailEventWithTracker:(_TtC13BookAnalytics9BATracker *)tracker contentData:(BAContentData *)data purchaseData:(BAPurchaseData *)purchaseData upSellData:(BAUpSellData *)sellData failData:(BAPurchaseFailData *)failData completion:(id)completion;
- (void)emitPurchaseSuccessEventWithTracker:(_TtC13BookAnalytics9BATracker *)tracker contentData:(BAContentData *)data purchaseData:(BAPurchaseData *)purchaseData upSellData:(BAUpSellData *)sellData completion:(id)completion;
- (void)emitRatingEventWithTracker:(id)tracker rating:(id)rating contentID:(id)d contentAcquisitionType:(int64_t)type contentType:(int64_t)contentType supplementalContentCount:(id)count productionType:(int64_t)productionType;
- (void)emitReadEventWithTracker:(_TtC13BookAnalytics9BATracker *)tracker readingSessionData:(BAReadingSessionData *)data contentData:(BAContentData *)contentData readingSettingsData:(BAReadingSettingsData *)settingsData upSellData:(BAUpSellData *)sellData contentSettingsData:(BAContentSettingsData *)contentSettingsData doNotDisturbData:(BADoNotDisturbData *)disturbData startTime:(NSDate *)self0 completion:(id)self1;
- (void)emitReadingAutoNightSettingChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData isOn:(BOOL)on;
- (void)emitReadingBackgroundColorChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData backgroundColorData:(id)colorData;
- (void)emitReadingBrightnessChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData brightness:(int)brightness;
- (void)emitReadingFontChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData fontName:(id)name;
- (void)emitReadingFontSizeChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData fontSize:(float)size;
- (void)emitReadingOrientationChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData;
- (void)emitReadingScrollViewSettingChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData fontSize:(float)size isOn:(BOOL)on;
- (void)emitRemoveFromWantListEventWithTracker:(id)tracker contentData:(id)data;
- (void)emitRemoveFromWantListEventWithTracker:(id)tracker contentID:(id)d contentType:(int64_t)type;
- (void)emitScrubEventWithTracker:(id)tracker contentData:(id)data readingSettingsData:(id)settingsData startPosition:(id)position endPosition:(id)endPosition totalLength:(id)length;
- (void)emitShareEventWithTracker:(id)tracker propertyProvider:(id)provider;
- (void)emitShareSheetExposureEventWithTracker:(id)tracker startDate:(id)date propertyProvider:(id)provider;
- (void)emitUnifiedMessageActionEventWithTracker:(id)tracker startDate:(id)date messageType:(int64_t)type messageIdentifier:(id)identifier hasActionable:(BOOL)actionable actionIdentifier:(id)actionIdentifier placementName:(id)name;
- (void)emitUnifiedMessageExposureEventWithTracker:(id)tracker startDate:(id)date messageType:(int64_t)type messageIdentifier:(id)identifier hasActionable:(BOOL)actionable actionIdentifier:(id)actionIdentifier placementName:(id)name;
- (void)emitViewSupplementalContentWithTracker:(id)tracker contentID:(id)d sourceIsAction:(BOOL)action supplementalContentCount:(id)count;
- (void)emitWantListAddEventWithTracker:(id)tracker contentData:(id)data;
@end

@implementation BAEventReporter

- (void)emitCollectionDescriptionEventWithTracker:(id)tracker collectionID:(id)d
{
  v5 = sub_1E1780();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v9 = *(tracker + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_4C768;
  *(v10 + 24) = v8;
  trackerCopy = tracker;

  sub_1E10C0();
}

- (void)emitLibraryDataEditEventWithTracker:(id)tracker contentIDs:(id)ds actionType:(int64_t)type result:(BOOL)result
{
  v10 = sub_1E18C0();
  selfCopy = self;
  trackerCopy = tracker;
  if (tracker)
  {
    goto LABEL_4;
  }

  v12 = sub_BFB78();
  if (v12)
  {
    trackerCopy = v12;
LABEL_4:
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = trackerCopy;
    *(v13 + 32) = type;
    *(v13 + 40) = result;
    v14 = *&trackerCopy[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v15 = swift_allocObject();
    *(v15 + 16) = sub_4C674;
    *(v15 + 24) = v13;
    trackerCopy2 = tracker;
    v17 = trackerCopy;

    sub_1E10C0();

    goto LABEL_5;
  }

LABEL_5:
}

- (void)emitMarkAsFinishedEventWithTracker:(id)tracker contentData:(id)data markedData:(id)markedData
{
  trackerCopy = tracker;
  dataCopy = data;
  markedDataCopy = markedData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC018emitMarkAsFinishedC05using4with10markedDatayAA9BATrackerCSg_AA014BridgedContentL0CAA0n6MarkedL0CSgtF_0(tracker, dataCopy, markedData);
}

- (void)emitRemoveFromWantListEventWithTracker:(id)tracker contentID:(id)d contentType:(int64_t)type
{
  v7 = sub_1E1780();
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = tracker;
  v10[3] = v7;
  v10[4] = v9;
  v10[5] = type;
  v11 = *(tracker + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_4C670;
  *(v12 + 24) = v10;
  trackerCopy = tracker;

  sub_1E10C0();
}

- (void)emitRemoveFromWantListEventWithTracker:(id)tracker contentData:(id)data
{
  trackerCopy = tracker;
  dataCopy = data;
  sub_A3F08(v14);
  v7 = swift_allocObject();
  v8 = v14[3];
  v7[3] = v14[2];
  v7[4] = v8;
  v9 = v14[5];
  v7[5] = v14[4];
  v7[6] = v9;
  v10 = v14[1];
  v7[1] = v14[0];
  v7[2] = v10;
  v11 = *&trackerCopy[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v12 = swift_allocObject();
  *(v12 + 16) = sub_4C6FC;
  *(v12 + 24) = v7;
  sub_13A5C(v14, &v13);

  sub_1E10C0();

  sub_14424(v14);
}

- (void)emitWantListAddEventWithTracker:(id)tracker contentData:(id)data
{
  trackerCopy = tracker;
  dataCopy = data;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC015emitWantListAddC05using4withyAA9BATrackerCSg_AA18BridgedContentDataCtF_0(tracker);
}

+ (BAEventReporter)sharedReporter
{
  if (qword_27D138 != -1)
  {
    swift_once();
  }

  v3 = qword_281AC0;

  return v3;
}

- (int64_t)seriesTypeForContentID:(id)d
{
  v4 = sub_1E1780();
  v6 = v5;
  selfCopy = self;
  v8 = sub_7DDD0(v4, v6);

  return v8;
}

- (void)emitAccountDidChangeEventWithTracker:(id)tracker type:(unint64_t)type reason:(unint64_t)reason
{
  trackerCopy = tracker;
  selfCopy = self;
  sub_7DEC8(trackerCopy, type, reason);
}

- (void)emitDragDropEventWithContentIDs:(id)ds
{
  v4 = sub_1E18C0();
  selfCopy = self;
  sub_7E138(v4);
}

- (void)emitInBookSearchEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData
{
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  sub_A6684(&v22);
  v9 = v22;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v13 = v26;
  LOBYTE(data) = v27;
  sub_A3F08(v28);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 20) = v10;
  *(v14 + 24) = v11;
  *(v14 + 28) = v12;
  *(v14 + 29) = v13;
  *(v14 + 30) = data;
  v15 = v28[5];
  *(v14 + 96) = v28[4];
  *(v14 + 112) = v15;
  v16 = v28[3];
  *(v14 + 64) = v28[2];
  *(v14 + 80) = v16;
  v17 = v28[1];
  *(v14 + 32) = v28[0];
  *(v14 + 48) = v17;
  v18 = *&trackerCopy[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v19 = swift_allocObject();
  *(v19 + 16) = sub_7EEEC;
  *(v19 + 24) = v14;
  sub_13A5C(v28, v21);

  sub_1E10C0();

  sub_14424(v28);
}

- (void)emitRatingEventWithTracker:(id)tracker rating:(id)rating contentID:(id)d contentAcquisitionType:(int64_t)type contentType:(int64_t)contentType supplementalContentCount:(id)count productionType:(int64_t)productionType
{
  v14 = sub_1E1780();
  v16 = v15;
  trackerCopy = tracker;
  ratingCopy = rating;
  countCopy = count;
  selfCopy = self;
  sub_7CA0C(tracker, ratingCopy, v14, v16, type, contentType, count, productionType);
}

- (void)emitShareEventWithTracker:(id)tracker propertyProvider:(id)provider
{
  trackerCopy = tracker;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_7D39C(tracker, provider);

  swift_unknownObjectRelease();
}

- (BAEventReporter)init
{
  v3 = OBJC_IVAR___BAEventReporter_dataProviders;
  sub_3D68(&qword_281B08, &qword_1EDD08);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = &_swiftEmptyArrayStorage;
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for EventReporter();
  return [(BAEventReporter *)&v6 init];
}

- (void)emitReadEventWithTracker:(_TtC13BookAnalytics9BATracker *)tracker readingSessionData:(BAReadingSessionData *)data contentData:(BAContentData *)contentData readingSettingsData:(BAReadingSettingsData *)settingsData upSellData:(BAUpSellData *)sellData contentSettingsData:(BAContentSettingsData *)contentSettingsData doNotDisturbData:(BADoNotDisturbData *)disturbData startTime:(NSDate *)self0 completion:(id)self1
{
  selfCopy = self;
  contentSettingsDataCopy = contentSettingsData;
  v16 = sub_3D68(&qword_287EC0, &qword_205170);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &selfCopy - v18;
  v20 = _Block_copy(completion);
  v21 = swift_allocObject();
  v21[2] = tracker;
  v21[3] = data;
  v21[4] = contentData;
  v21[5] = settingsData;
  v22 = selfCopy;
  v23 = contentSettingsDataCopy;
  v21[6] = sellData;
  v21[7] = v23;
  v21[8] = disturbData;
  v21[9] = time;
  v21[10] = v20;
  v21[11] = v22;
  v24 = sub_1E1900();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_1EFF00;
  v25[5] = v21;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_1EFF08;
  v26[5] = v25;
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  settingsDataCopy = settingsData;
  sellDataCopy = sellData;
  v32 = contentSettingsDataCopy;
  disturbDataCopy = disturbData;
  timeCopy = time;
  v35 = selfCopy;
  sub_D0848(0, 0, v19, &unk_1EFF10, v26);
}

- (void)emitReadingAutoNightSettingChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData isOn:(BOOL)on
{
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC033emitReadingAutoNightSettingChangeC05using18readingSessionData07contentN04isOnyAA9BATrackerCSg_AA07BridgedfmN0CAA0s7ContentN0CSbtF_0(tracker, dataCopy, contentDataCopy, on);
}

- (void)emitReadingBackgroundColorChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData backgroundColorData:(id)colorData
{
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  colorDataCopy = colorData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC032emitReadingBackgroundColorChangeC05using18readingSessionData07contentM0010backgroundhM0yAA9BATrackerCSg_AA07BridgedflM0CAA0q7ContentM0CAA0qghM0CtF_0(tracker, dataCopy, contentDataCopy, colorDataCopy);
}

- (void)emitReadingBrightnessChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData brightness:(int)brightness
{
  dataCopy = data;
  contentDataCopy = contentData;
  selfCopy = self;
  trackerCopy = tracker;
  if (!tracker)
  {
    v13 = sub_BFB78();
    if (!v13)
    {
      goto LABEL_5;
    }

    trackerCopy = v13;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = dataCopy;
  *(v14 + 24) = contentDataCopy;
  *(v14 + 32) = brightness;
  v15 = *&trackerCopy[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v16 = swift_allocObject();
  *(v16 + 16) = sub_92C94;
  *(v16 + 24) = v14;
  trackerCopy2 = tracker;
  v18 = dataCopy;
  v19 = contentDataCopy;
  v20 = trackerCopy2;

  sub_1E10C0();

LABEL_5:
}

- (void)emitReadingFontChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData fontName:(id)name
{
  v10 = sub_1E1780();
  v12 = v11;
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC021emitReadingFontChangeC05using18readingSessionData07contentL08fontNameyAA9BATrackerCSg_AA07BridgedfkL0CAA0q7ContentL0CSStF_0(tracker, dataCopy, contentDataCopy, v10, v12);
}

- (void)emitReadingOrientationChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData
{
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  selfCopy = self;
  sub_A6684(&v20);
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  sub_A3F08(v13);
  _s13BookAnalytics13EventReporterC028emitReadingOrientationChangeC05using18readingSessionData07contentL0yAA9BATrackerCSg_AA0fkL0VAA07ContentL0VtF_0(tracker, &v14, v13);

  v26[2] = v13[2];
  v26[3] = v13[3];
  v26[4] = v13[4];
  v26[5] = v13[5];
  v26[0] = v13[0];
  v26[1] = v13[1];
  sub_14424(v26);
}

- (void)emitReadingFontSizeChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData fontSize:(float)size
{
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC025emitReadingFontSizeChangeC05using18readingSessionData07contentM004fontH0yAA9BATrackerCSg_AA07BridgedflM0CAA0q7ContentM0CSftF_0(tracker, size);
}

- (void)emitReadingScrollViewSettingChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData fontSize:(float)size isOn:(BOOL)on
{
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC034emitReadingScrollViewSettingChangeC05using18readingSessionData07contentN08fontSize4isOnyAA9BATrackerCSg_AA07BridgedfmN0CAA0u7ContentN0CSfSbtF_0(tracker, size, dataCopy, contentDataCopy, on);
}

- (void)emitAllInSeriesViewEventWithTracker:(id)tracker collectionID:(id)d collectionItemCount:(int64_t)count
{
  v7 = sub_1E1780();
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = count;
  v10[3] = v7;
  v10[4] = v9;
  v11 = *(tracker + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_98B94;
  *(v12 + 24) = v10;
  trackerCopy = tracker;

  sub_1E10C0();
}

- (void)emitBrowseCollectionScreenViewEventWithTracker:(id)tracker startDate:(id)date summaryData:(id)data
{
  v7 = sub_1E09E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  sub_1E09B0();
  (*(v8 + 16))(v11, v13, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  *(v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = data;
  v16 = *(tracker + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_98BB0;
  *(v17 + 24) = v15;
  dataCopy = data;
  trackerCopy = tracker;

  sub_1E10C0();

  (*(v8 + 8))(v13, v7);
}

- (void)emitCollectionScreenViewEventWithTracker:(id)tracker startDate:(id)date collectionID:(id)d collectionItemCount:(int64_t)count
{
  v8 = sub_1E09E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  sub_1E09B0();
  v15 = sub_1E1780();
  v17 = v16;
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = count;
  *(v19 + 3) = v15;
  *(v19 + 4) = v17;
  (*(v9 + 32))(&v19[v18], v12, v8);
  v20 = *(tracker + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_98BAC;
  *(v21 + 24) = v19;
  trackerCopy = tracker;

  sub_1E10C0();

  (*(v9 + 8))(v14, v8);
}

- (void)emitContextualActionSheetExposureEventWithTracker:(id)tracker startDate:(id)date propertyProvider:(id)provider
{
  v8 = sub_1E09E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E09B0();
  trackerCopy = tracker;
  swift_unknownObjectRetain();
  selfCopy = self;
  EventReporter.emitContextualActionSheetExposureEvent(using:from:with:)(tracker, v12, provider);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v8);
}

- (void)emitLibraryViewEventWithTracker:(id)tracker startDate:(id)date librarySummary:(id)summary displayType:(int64_t)type sortType:(int64_t)sortType
{
  sortTypeCopy = sortType;
  v9 = sub_1E09E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  sub_1E09B0();
  type metadata accessor for BridgedLibraryItemTypeData();
  v16 = sub_1E18C0();
  (*(v10 + 16))(v13, v15, v9);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = type;
  *(v18 + 4) = sortTypeCopy;
  (*(v10 + 32))(&v18[v17], v13, v9);
  v19 = *(tracker + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_98BA4;
  *(v20 + 24) = v18;
  trackerCopy = tracker;

  sub_1E10C0();

  (*(v10 + 8))(v15, v9);
}

- (void)emitShareSheetExposureEventWithTracker:(id)tracker startDate:(id)date propertyProvider:(id)provider
{
  v8 = sub_1E09E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  sub_1E09B0();
  (*(v9 + 16))(v12, v14, v8);
  v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = self;
  *(v16 + 3) = provider;
  *(v16 + 4) = tracker;
  (*(v9 + 32))(&v16[v15], v12, v8);
  v17 = *(tracker + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_98BA0;
  *(v18 + 24) = v16;
  trackerCopy = tracker;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v21 = trackerCopy;

  sub_1E10C0();
  swift_unknownObjectRelease();

  (*(v9 + 8))(v14, v8);
}

- (void)emitUnifiedMessageExposureEventWithTracker:(id)tracker startDate:(id)date messageType:(int64_t)type messageIdentifier:(id)identifier hasActionable:(BOOL)actionable actionIdentifier:(id)actionIdentifier placementName:(id)name
{
  actionableCopy = actionable;
  typeCopy = type;
  trackerCopy = tracker;
  v11 = sub_1E09E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  sub_1E09B0();
  if (!identifier)
  {
    v30 = 0;
    if (!actionIdentifier)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v30 = sub_1E1780();
  identifier = v18;
  if (actionIdentifier)
  {
LABEL_3:
    actionIdentifier = sub_1E18C0();
  }

LABEL_4:
  v19 = sub_1E1780();
  v21 = v20;
  (*(v12 + 16))(v15, v17, v11);
  v22 = v11;
  v23 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v30;
  *(v24 + 16) = typeCopy;
  *(v24 + 24) = v25;
  *(v24 + 32) = identifier;
  *(v24 + 40) = actionableCopy;
  *(v24 + 48) = actionIdentifier;
  *(v24 + 56) = v19;
  *(v24 + 64) = v21;
  (*(v12 + 32))(v24 + v23, v15, v22);
  v26 = trackerCopy;
  v27 = *&trackerCopy[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v28 = swift_allocObject();
  *(v28 + 16) = sub_98B98;
  *(v28 + 24) = v24;
  v29 = v26;

  sub_1E10C0();

  (*(v12 + 8))(v17, v22);
}

- (void)emitPurchaseAttemptEventWithTracker:(id)tracker contentData:(id)data purchaseData:(id)purchaseData upSellData:(id)sellData
{
  v10 = swift_allocObject();
  v10[2] = data;
  v10[3] = purchaseData;
  v10[4] = sellData;
  v11 = *(tracker + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_D14B0;
  *(v12 + 24) = v10;
  dataCopy = data;
  purchaseDataCopy = purchaseData;
  sellDataCopy = sellData;
  v16 = dataCopy;
  v17 = purchaseDataCopy;
  v19 = sellDataCopy;
  trackerCopy = tracker;

  sub_1E10C0();
}

- (void)emitPurchaseSuccessEventWithTracker:(_TtC13BookAnalytics9BATracker *)tracker contentData:(BAContentData *)data purchaseData:(BAPurchaseData *)purchaseData upSellData:(BAUpSellData *)sellData completion:(id)completion
{
  v13 = sub_3D68(&qword_287EC0, &qword_205170);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(completion);
  v18 = swift_allocObject();
  v18[2] = tracker;
  v18[3] = data;
  v18[4] = purchaseData;
  v18[5] = sellData;
  v18[6] = v17;
  v18[7] = self;
  v19 = sub_1E1900();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1F5E00;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1F5E08;
  v21[5] = v20;
  trackerCopy = tracker;
  dataCopy = data;
  purchaseDataCopy = purchaseData;
  sellDataCopy = sellData;
  selfCopy = self;
  sub_D0848(0, 0, v16, &unk_1F5E10, v21);
}

- (void)emitPurchaseFailEventWithTracker:(_TtC13BookAnalytics9BATracker *)tracker contentData:(BAContentData *)data purchaseData:(BAPurchaseData *)purchaseData upSellData:(BAUpSellData *)sellData failData:(BAPurchaseFailData *)failData completion:(id)completion
{
  v15 = sub_3D68(&qword_287EC0, &qword_205170);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v30 - v17;
  v19 = _Block_copy(completion);
  v20 = swift_allocObject();
  v20[2] = tracker;
  v20[3] = data;
  v20[4] = purchaseData;
  v20[5] = sellData;
  v20[6] = failData;
  v20[7] = v19;
  v20[8] = self;
  v21 = sub_1E1900();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1F5DC8;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1EFF08;
  v23[5] = v22;
  trackerCopy = tracker;
  dataCopy = data;
  purchaseDataCopy = purchaseData;
  sellDataCopy = sellData;
  failDataCopy = failData;
  selfCopy = self;
  sub_D0848(0, 0, v18, &unk_1EFF10, v23);
}

- (void)emitAnnotationActionEventWithTracker:(id)tracker contentData:(id)data viewData:(id)viewData
{
  trackerCopy = tracker;
  dataCopy = data;
  viewDataCopy = viewData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC020emitAnnotationActionC05using11contentData04viewJ0yAA9BATrackerC_AA014BridgedContentJ0CAA0m4ViewJ0CtF_0(trackerCopy);
}

- (void)emitExitLinkTapEventWithTracker:(id)tracker url:(id)url
{
  v5 = sub_1E0930();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  sub_1E0910();
  (*(v6 + 16))(v9, v11, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v9, v5);
  v14 = *(tracker + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_E06D8;
  *(v15 + 24) = v13;
  trackerCopy = tracker;

  sub_1E10C0();

  (*(v6 + 8))(v11, v5);
}

- (void)emitGetStartedActionEventWithTracker:(id)tracker type:(int64_t)type
{
  v6 = swift_allocObject();
  *(v6 + 16) = type;
  v7 = *(tracker + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_E06E4;
  *(v8 + 24) = v6;
  trackerCopy = tracker;

  sub_1E10C0();
}

- (void)emitNotificationEngagementEventWithTracker:(id)tracker engagementData:(id)data notificationData:(id)notificationData
{
  v8 = swift_allocObject();
  *(v8 + 16) = notificationData;
  *(v8 + 24) = data;
  v9 = *(tracker + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_E06E0;
  *(v10 + 24) = v8;
  dataCopy = data;
  notificationDataCopy = notificationData;
  v12 = dataCopy;
  trackerCopy = tracker;

  sub_1E10C0();
}

- (void)emitScrubEventWithTracker:(id)tracker contentData:(id)data readingSettingsData:(id)settingsData startPosition:(id)position endPosition:(id)endPosition totalLength:(id)length
{
  trackerCopy = tracker;
  dataCopy = data;
  settingsDataCopy = settingsData;
  positionCopy = position;
  endPositionCopy = endPosition;
  lengthCopy = length;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC09emitScrubC05using11contentData015readingSettingsI013startPosition03endM011totalLengthyAA9BATrackerC_AA014BridgedContentI0CAA0r7ReadingkI0CSo8NSNumberCA2RtF_0(trackerCopy, dataCopy, settingsDataCopy, positionCopy, endPositionCopy, lengthCopy);
}

- (void)emitUnifiedMessageActionEventWithTracker:(id)tracker startDate:(id)date messageType:(int64_t)type messageIdentifier:(id)identifier hasActionable:(BOOL)actionable actionIdentifier:(id)actionIdentifier placementName:(id)name
{
  v13 = sub_1E1780();
  v15 = v14;
  if (identifier)
  {
    identifier = sub_1E1780();
    v17 = v16;
    if (!actionIdentifier)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = 0;
  if (actionIdentifier)
  {
LABEL_3:
    actionIdentifier = sub_1E18C0();
  }

LABEL_4:
  v18 = sub_1E1780();
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = type;
  *(v21 + 24) = v13;
  *(v21 + 32) = v15;
  *(v21 + 40) = identifier;
  *(v21 + 48) = v17;
  *(v21 + 56) = actionable;
  *(v21 + 64) = actionIdentifier;
  *(v21 + 72) = v18;
  *(v21 + 80) = v20;
  v22 = *(tracker + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_E06D4;
  *(v23 + 24) = v21;
  trackerCopy = tracker;

  sub_1E10C0();
}

- (void)emitViewSupplementalContentWithTracker:(id)tracker contentID:(id)d sourceIsAction:(BOOL)action supplementalContentCount:(id)count
{
  v10 = sub_1E1780();
  v12 = v11;
  trackerCopy = tracker;
  countCopy = count;
  selfCopy = self;
  EventReporter.emitViewSupplementalContent(using:for:sourceIsAction:with:)(tracker, v10, v12, action, count);
}

@end