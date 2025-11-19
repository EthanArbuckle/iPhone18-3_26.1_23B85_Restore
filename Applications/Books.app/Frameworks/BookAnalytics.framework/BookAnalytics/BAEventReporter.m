@interface BAEventReporter
+ (BAEventReporter)sharedReporter;
- (BAEventReporter)init;
- (int64_t)seriesTypeForContentID:(id)a3;
- (void)emitAccountDidChangeEventWithTracker:(id)a3 type:(unint64_t)a4 reason:(unint64_t)a5;
- (void)emitAllInSeriesViewEventWithTracker:(id)a3 collectionID:(id)a4 collectionItemCount:(int64_t)a5;
- (void)emitAnnotationActionEventWithTracker:(id)a3 contentData:(id)a4 viewData:(id)a5;
- (void)emitBrowseCollectionScreenViewEventWithTracker:(id)a3 startDate:(id)a4 summaryData:(id)a5;
- (void)emitCollectionDescriptionEventWithTracker:(id)a3 collectionID:(id)a4;
- (void)emitCollectionScreenViewEventWithTracker:(id)a3 startDate:(id)a4 collectionID:(id)a5 collectionItemCount:(int64_t)a6;
- (void)emitContextualActionSheetExposureEventWithTracker:(id)a3 startDate:(id)a4 propertyProvider:(id)a5;
- (void)emitDragDropEventWithContentIDs:(id)a3;
- (void)emitExitLinkTapEventWithTracker:(id)a3 url:(id)a4;
- (void)emitGetStartedActionEventWithTracker:(id)a3 type:(int64_t)a4;
- (void)emitInBookSearchEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5;
- (void)emitLibraryDataEditEventWithTracker:(id)a3 contentIDs:(id)a4 actionType:(int64_t)a5 result:(BOOL)a6;
- (void)emitLibraryViewEventWithTracker:(id)a3 startDate:(id)a4 librarySummary:(id)a5 displayType:(int64_t)a6 sortType:(int64_t)a7;
- (void)emitMarkAsFinishedEventWithTracker:(id)a3 contentData:(id)a4 markedData:(id)a5;
- (void)emitNotificationEngagementEventWithTracker:(id)a3 engagementData:(id)a4 notificationData:(id)a5;
- (void)emitPurchaseAttemptEventWithTracker:(id)a3 contentData:(id)a4 purchaseData:(id)a5 upSellData:(id)a6;
- (void)emitPurchaseFailEventWithTracker:(_TtC13BookAnalytics9BATracker *)a3 contentData:(BAContentData *)a4 purchaseData:(BAPurchaseData *)a5 upSellData:(BAUpSellData *)a6 failData:(BAPurchaseFailData *)a7 completion:(id)a8;
- (void)emitPurchaseSuccessEventWithTracker:(_TtC13BookAnalytics9BATracker *)a3 contentData:(BAContentData *)a4 purchaseData:(BAPurchaseData *)a5 upSellData:(BAUpSellData *)a6 completion:(id)a7;
- (void)emitRatingEventWithTracker:(id)a3 rating:(id)a4 contentID:(id)a5 contentAcquisitionType:(int64_t)a6 contentType:(int64_t)a7 supplementalContentCount:(id)a8 productionType:(int64_t)a9;
- (void)emitReadEventWithTracker:(_TtC13BookAnalytics9BATracker *)a3 readingSessionData:(BAReadingSessionData *)a4 contentData:(BAContentData *)a5 readingSettingsData:(BAReadingSettingsData *)a6 upSellData:(BAUpSellData *)a7 contentSettingsData:(BAContentSettingsData *)a8 doNotDisturbData:(BADoNotDisturbData *)a9 startTime:(NSDate *)a10 completion:(id)a11;
- (void)emitReadingAutoNightSettingChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5 isOn:(BOOL)a6;
- (void)emitReadingBackgroundColorChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5 backgroundColorData:(id)a6;
- (void)emitReadingBrightnessChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5 brightness:(int)a6;
- (void)emitReadingFontChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5 fontName:(id)a6;
- (void)emitReadingFontSizeChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5 fontSize:(float)a6;
- (void)emitReadingOrientationChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5;
- (void)emitReadingScrollViewSettingChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5 fontSize:(float)a6 isOn:(BOOL)a7;
- (void)emitRemoveFromWantListEventWithTracker:(id)a3 contentData:(id)a4;
- (void)emitRemoveFromWantListEventWithTracker:(id)a3 contentID:(id)a4 contentType:(int64_t)a5;
- (void)emitScrubEventWithTracker:(id)a3 contentData:(id)a4 readingSettingsData:(id)a5 startPosition:(id)a6 endPosition:(id)a7 totalLength:(id)a8;
- (void)emitShareEventWithTracker:(id)a3 propertyProvider:(id)a4;
- (void)emitShareSheetExposureEventWithTracker:(id)a3 startDate:(id)a4 propertyProvider:(id)a5;
- (void)emitUnifiedMessageActionEventWithTracker:(id)a3 startDate:(id)a4 messageType:(int64_t)a5 messageIdentifier:(id)a6 hasActionable:(BOOL)a7 actionIdentifier:(id)a8 placementName:(id)a9;
- (void)emitUnifiedMessageExposureEventWithTracker:(id)a3 startDate:(id)a4 messageType:(int64_t)a5 messageIdentifier:(id)a6 hasActionable:(BOOL)a7 actionIdentifier:(id)a8 placementName:(id)a9;
- (void)emitViewSupplementalContentWithTracker:(id)a3 contentID:(id)a4 sourceIsAction:(BOOL)a5 supplementalContentCount:(id)a6;
- (void)emitWantListAddEventWithTracker:(id)a3 contentData:(id)a4;
@end

@implementation BAEventReporter

- (void)emitCollectionDescriptionEventWithTracker:(id)a3 collectionID:(id)a4
{
  v5 = sub_1E1780();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v9 = *(a3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_4C768;
  *(v10 + 24) = v8;
  v11 = a3;

  sub_1E10C0();
}

- (void)emitLibraryDataEditEventWithTracker:(id)a3 contentIDs:(id)a4 actionType:(int64_t)a5 result:(BOOL)a6
{
  v10 = sub_1E18C0();
  v18 = self;
  v11 = a3;
  if (a3)
  {
    goto LABEL_4;
  }

  v12 = sub_BFB78();
  if (v12)
  {
    v11 = v12;
LABEL_4:
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v11;
    *(v13 + 32) = a5;
    *(v13 + 40) = a6;
    v14 = *&v11[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v15 = swift_allocObject();
    *(v15 + 16) = sub_4C674;
    *(v15 + 24) = v13;
    v16 = a3;
    v17 = v11;

    sub_1E10C0();

    goto LABEL_5;
  }

LABEL_5:
}

- (void)emitMarkAsFinishedEventWithTracker:(id)a3 contentData:(id)a4 markedData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  _s13BookAnalytics13EventReporterC018emitMarkAsFinishedC05using4with10markedDatayAA9BATrackerCSg_AA014BridgedContentL0CAA0n6MarkedL0CSgtF_0(a3, v10, a5);
}

- (void)emitRemoveFromWantListEventWithTracker:(id)a3 contentID:(id)a4 contentType:(int64_t)a5
{
  v7 = sub_1E1780();
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v7;
  v10[4] = v9;
  v10[5] = a5;
  v11 = *(a3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_4C670;
  *(v12 + 24) = v10;
  v13 = a3;

  sub_1E10C0();
}

- (void)emitRemoveFromWantListEventWithTracker:(id)a3 contentData:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v11 = *&v5[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v12 = swift_allocObject();
  *(v12 + 16) = sub_4C6FC;
  *(v12 + 24) = v7;
  sub_13A5C(v14, &v13);

  sub_1E10C0();

  sub_14424(v14);
}

- (void)emitWantListAddEventWithTracker:(id)a3 contentData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  _s13BookAnalytics13EventReporterC015emitWantListAddC05using4withyAA9BATrackerCSg_AA18BridgedContentDataCtF_0(a3);
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

- (int64_t)seriesTypeForContentID:(id)a3
{
  v4 = sub_1E1780();
  v6 = v5;
  v7 = self;
  v8 = sub_7DDD0(v4, v6);

  return v8;
}

- (void)emitAccountDidChangeEventWithTracker:(id)a3 type:(unint64_t)a4 reason:(unint64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_7DEC8(v8, a4, a5);
}

- (void)emitDragDropEventWithContentIDs:(id)a3
{
  v4 = sub_1E18C0();
  v5 = self;
  sub_7E138(v4);
}

- (void)emitInBookSearchEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5
{
  v7 = a3;
  v20 = a4;
  v8 = a5;
  sub_A6684(&v22);
  v9 = v22;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v13 = v26;
  LOBYTE(a4) = v27;
  sub_A3F08(v28);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 20) = v10;
  *(v14 + 24) = v11;
  *(v14 + 28) = v12;
  *(v14 + 29) = v13;
  *(v14 + 30) = a4;
  v15 = v28[5];
  *(v14 + 96) = v28[4];
  *(v14 + 112) = v15;
  v16 = v28[3];
  *(v14 + 64) = v28[2];
  *(v14 + 80) = v16;
  v17 = v28[1];
  *(v14 + 32) = v28[0];
  *(v14 + 48) = v17;
  v18 = *&v7[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v19 = swift_allocObject();
  *(v19 + 16) = sub_7EEEC;
  *(v19 + 24) = v14;
  sub_13A5C(v28, v21);

  sub_1E10C0();

  sub_14424(v28);
}

- (void)emitRatingEventWithTracker:(id)a3 rating:(id)a4 contentID:(id)a5 contentAcquisitionType:(int64_t)a6 contentType:(int64_t)a7 supplementalContentCount:(id)a8 productionType:(int64_t)a9
{
  v14 = sub_1E1780();
  v16 = v15;
  v17 = a3;
  v18 = a4;
  v19 = a8;
  v20 = self;
  sub_7CA0C(a3, v18, v14, v16, a6, a7, a8, a9);
}

- (void)emitShareEventWithTracker:(id)a3 propertyProvider:(id)a4
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  sub_7D39C(a3, a4);

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

- (void)emitReadEventWithTracker:(_TtC13BookAnalytics9BATracker *)a3 readingSessionData:(BAReadingSessionData *)a4 contentData:(BAContentData *)a5 readingSettingsData:(BAReadingSettingsData *)a6 upSellData:(BAUpSellData *)a7 contentSettingsData:(BAContentSettingsData *)a8 doNotDisturbData:(BADoNotDisturbData *)a9 startTime:(NSDate *)a10 completion:(id)a11
{
  v36 = self;
  v37 = a8;
  v16 = sub_3D68(&qword_287EC0, &qword_205170);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v36 - v18;
  v20 = _Block_copy(a11);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v22 = v36;
  v23 = v37;
  v21[6] = a7;
  v21[7] = v23;
  v21[8] = a9;
  v21[9] = a10;
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
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = v37;
  v33 = a9;
  v34 = a10;
  v35 = v36;
  sub_D0848(0, 0, v19, &unk_1EFF10, v26);
}

- (void)emitReadingAutoNightSettingChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5 isOn:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  _s13BookAnalytics13EventReporterC033emitReadingAutoNightSettingChangeC05using18readingSessionData07contentN04isOnyAA9BATrackerCSg_AA07BridgedfmN0CAA0s7ContentN0CSbtF_0(a3, v12, v13, a6);
}

- (void)emitReadingBackgroundColorChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5 backgroundColorData:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = self;
  _s13BookAnalytics13EventReporterC032emitReadingBackgroundColorChangeC05using18readingSessionData07contentM0010backgroundhM0yAA9BATrackerCSg_AA07BridgedflM0CAA0q7ContentM0CAA0qghM0CtF_0(a3, v12, v13, v14);
}

- (void)emitReadingBrightnessChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5 brightness:(int)a6
{
  v10 = a4;
  v11 = a5;
  v21 = self;
  v12 = a3;
  if (!a3)
  {
    v13 = sub_BFB78();
    if (!v13)
    {
      goto LABEL_5;
    }

    v12 = v13;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v11;
  *(v14 + 32) = a6;
  v15 = *&v12[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v16 = swift_allocObject();
  *(v16 + 16) = sub_92C94;
  *(v16 + 24) = v14;
  v17 = a3;
  v18 = v10;
  v19 = v11;
  v20 = v17;

  sub_1E10C0();

LABEL_5:
}

- (void)emitReadingFontChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5 fontName:(id)a6
{
  v10 = sub_1E1780();
  v12 = v11;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = self;
  _s13BookAnalytics13EventReporterC021emitReadingFontChangeC05using18readingSessionData07contentL08fontNameyAA9BATrackerCSg_AA07BridgedfkL0CAA0q7ContentL0CSStF_0(a3, v14, v15, v10, v12);
}

- (void)emitReadingOrientationChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  sub_A6684(&v20);
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  sub_A3F08(v13);
  _s13BookAnalytics13EventReporterC028emitReadingOrientationChangeC05using18readingSessionData07contentL0yAA9BATrackerCSg_AA0fkL0VAA07ContentL0VtF_0(a3, &v14, v13);

  v26[2] = v13[2];
  v26[3] = v13[3];
  v26[4] = v13[4];
  v26[5] = v13[5];
  v26[0] = v13[0];
  v26[1] = v13[1];
  sub_14424(v26);
}

- (void)emitReadingFontSizeChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5 fontSize:(float)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  _s13BookAnalytics13EventReporterC025emitReadingFontSizeChangeC05using18readingSessionData07contentM004fontH0yAA9BATrackerCSg_AA07BridgedflM0CAA0q7ContentM0CSftF_0(a3, a6);
}

- (void)emitReadingScrollViewSettingChangeEventWithTracker:(id)a3 readingSessionData:(id)a4 contentData:(id)a5 fontSize:(float)a6 isOn:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = self;
  _s13BookAnalytics13EventReporterC034emitReadingScrollViewSettingChangeC05using18readingSessionData07contentN08fontSize4isOnyAA9BATrackerCSg_AA07BridgedfmN0CAA0u7ContentN0CSfSbtF_0(a3, a6, v14, v15, a7);
}

- (void)emitAllInSeriesViewEventWithTracker:(id)a3 collectionID:(id)a4 collectionItemCount:(int64_t)a5
{
  v7 = sub_1E1780();
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = v7;
  v10[4] = v9;
  v11 = *(a3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_98B94;
  *(v12 + 24) = v10;
  v13 = a3;

  sub_1E10C0();
}

- (void)emitBrowseCollectionScreenViewEventWithTracker:(id)a3 startDate:(id)a4 summaryData:(id)a5
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
  *(v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v16 = *(a3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_98BB0;
  *(v17 + 24) = v15;
  v18 = a5;
  v19 = a3;

  sub_1E10C0();

  (*(v8 + 8))(v13, v7);
}

- (void)emitCollectionScreenViewEventWithTracker:(id)a3 startDate:(id)a4 collectionID:(id)a5 collectionItemCount:(int64_t)a6
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
  *(v19 + 2) = a6;
  *(v19 + 3) = v15;
  *(v19 + 4) = v17;
  (*(v9 + 32))(&v19[v18], v12, v8);
  v20 = *(a3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_98BAC;
  *(v21 + 24) = v19;
  v22 = a3;

  sub_1E10C0();

  (*(v9 + 8))(v14, v8);
}

- (void)emitContextualActionSheetExposureEventWithTracker:(id)a3 startDate:(id)a4 propertyProvider:(id)a5
{
  v8 = sub_1E09E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E09B0();
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = self;
  EventReporter.emitContextualActionSheetExposureEvent(using:from:with:)(a3, v12, a5);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v8);
}

- (void)emitLibraryViewEventWithTracker:(id)a3 startDate:(id)a4 librarySummary:(id)a5 displayType:(int64_t)a6 sortType:(int64_t)a7
{
  v23 = a7;
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
  *(v18 + 3) = a6;
  *(v18 + 4) = v23;
  (*(v10 + 32))(&v18[v17], v13, v9);
  v19 = *(a3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_98BA4;
  *(v20 + 24) = v18;
  v21 = a3;

  sub_1E10C0();

  (*(v10 + 8))(v15, v9);
}

- (void)emitShareSheetExposureEventWithTracker:(id)a3 startDate:(id)a4 propertyProvider:(id)a5
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
  *(v16 + 3) = a5;
  *(v16 + 4) = a3;
  (*(v9 + 32))(&v16[v15], v12, v8);
  v17 = *(a3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_98BA0;
  *(v18 + 24) = v16;
  v19 = a3;
  swift_unknownObjectRetain_n();
  v20 = self;
  v21 = v19;

  sub_1E10C0();
  swift_unknownObjectRelease();

  (*(v9 + 8))(v14, v8);
}

- (void)emitUnifiedMessageExposureEventWithTracker:(id)a3 startDate:(id)a4 messageType:(int64_t)a5 messageIdentifier:(id)a6 hasActionable:(BOOL)a7 actionIdentifier:(id)a8 placementName:(id)a9
{
  v32 = a7;
  v31 = a5;
  v33 = a3;
  v11 = sub_1E09E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  sub_1E09B0();
  if (!a6)
  {
    v30 = 0;
    if (!a8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v30 = sub_1E1780();
  a6 = v18;
  if (a8)
  {
LABEL_3:
    a8 = sub_1E18C0();
  }

LABEL_4:
  v19 = sub_1E1780();
  v21 = v20;
  (*(v12 + 16))(v15, v17, v11);
  v22 = v11;
  v23 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v30;
  *(v24 + 16) = v31;
  *(v24 + 24) = v25;
  *(v24 + 32) = a6;
  *(v24 + 40) = v32;
  *(v24 + 48) = a8;
  *(v24 + 56) = v19;
  *(v24 + 64) = v21;
  (*(v12 + 32))(v24 + v23, v15, v22);
  v26 = v33;
  v27 = *&v33[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v28 = swift_allocObject();
  *(v28 + 16) = sub_98B98;
  *(v28 + 24) = v24;
  v29 = v26;

  sub_1E10C0();

  (*(v12 + 8))(v17, v22);
}

- (void)emitPurchaseAttemptEventWithTracker:(id)a3 contentData:(id)a4 purchaseData:(id)a5 upSellData:(id)a6
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v11 = *(a3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_D14B0;
  *(v12 + 24) = v10;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v13;
  v17 = v14;
  v19 = v15;
  v18 = a3;

  sub_1E10C0();
}

- (void)emitPurchaseSuccessEventWithTracker:(_TtC13BookAnalytics9BATracker *)a3 contentData:(BAContentData *)a4 purchaseData:(BAPurchaseData *)a5 upSellData:(BAUpSellData *)a6 completion:(id)a7
{
  v13 = sub_3D68(&qword_287EC0, &qword_205170);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
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
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = self;
  sub_D0848(0, 0, v16, &unk_1F5E10, v21);
}

- (void)emitPurchaseFailEventWithTracker:(_TtC13BookAnalytics9BATracker *)a3 contentData:(BAContentData *)a4 purchaseData:(BAPurchaseData *)a5 upSellData:(BAUpSellData *)a6 failData:(BAPurchaseFailData *)a7 completion:(id)a8
{
  v15 = sub_3D68(&qword_287EC0, &qword_205170);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v30 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
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
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = self;
  sub_D0848(0, 0, v18, &unk_1EFF10, v23);
}

- (void)emitAnnotationActionEventWithTracker:(id)a3 contentData:(id)a4 viewData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  _s13BookAnalytics13EventReporterC020emitAnnotationActionC05using11contentData04viewJ0yAA9BATrackerC_AA014BridgedContentJ0CAA0m4ViewJ0CtF_0(v8);
}

- (void)emitExitLinkTapEventWithTracker:(id)a3 url:(id)a4
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
  v14 = *(a3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_E06D8;
  *(v15 + 24) = v13;
  v16 = a3;

  sub_1E10C0();

  (*(v6 + 8))(v11, v5);
}

- (void)emitGetStartedActionEventWithTracker:(id)a3 type:(int64_t)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = *(a3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_E06E4;
  *(v8 + 24) = v6;
  v9 = a3;

  sub_1E10C0();
}

- (void)emitNotificationEngagementEventWithTracker:(id)a3 engagementData:(id)a4 notificationData:(id)a5
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  *(v8 + 24) = a4;
  v9 = *(a3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_E06E0;
  *(v10 + 24) = v8;
  v11 = a4;
  v14 = a5;
  v12 = v11;
  v13 = a3;

  sub_1E10C0();
}

- (void)emitScrubEventWithTracker:(id)a3 contentData:(id)a4 readingSettingsData:(id)a5 startPosition:(id)a6 endPosition:(id)a7 totalLength:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = self;
  _s13BookAnalytics13EventReporterC09emitScrubC05using11contentData015readingSettingsI013startPosition03endM011totalLengthyAA9BATrackerC_AA014BridgedContentI0CAA0r7ReadingkI0CSo8NSNumberCA2RtF_0(v14, v15, v16, v17, v18, v19);
}

- (void)emitUnifiedMessageActionEventWithTracker:(id)a3 startDate:(id)a4 messageType:(int64_t)a5 messageIdentifier:(id)a6 hasActionable:(BOOL)a7 actionIdentifier:(id)a8 placementName:(id)a9
{
  v13 = sub_1E1780();
  v15 = v14;
  if (a6)
  {
    a6 = sub_1E1780();
    v17 = v16;
    if (!a8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = 0;
  if (a8)
  {
LABEL_3:
    a8 = sub_1E18C0();
  }

LABEL_4:
  v18 = sub_1E1780();
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = v13;
  *(v21 + 32) = v15;
  *(v21 + 40) = a6;
  *(v21 + 48) = v17;
  *(v21 + 56) = a7;
  *(v21 + 64) = a8;
  *(v21 + 72) = v18;
  *(v21 + 80) = v20;
  v22 = *(a3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_E06D4;
  *(v23 + 24) = v21;
  v24 = a3;

  sub_1E10C0();
}

- (void)emitViewSupplementalContentWithTracker:(id)a3 contentID:(id)a4 sourceIsAction:(BOOL)a5 supplementalContentCount:(id)a6
{
  v10 = sub_1E1780();
  v12 = v11;
  v13 = a3;
  v14 = a6;
  v15 = self;
  EventReporter.emitViewSupplementalContent(using:for:sourceIsAction:with:)(a3, v10, v12, a5, a6);
}

@end