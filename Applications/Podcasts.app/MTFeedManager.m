@interface MTFeedManager
+ (MTFeedManager)sharedInstance;
- (BOOL)isUpdating;
- (BOOL)isUpdatingShowWithUrl:(id)a3 storeID:(int64_t)a4;
- (void)handleEventsForBackgroundURLSessionFor:(id)a3 completionHandler:(id)a4;
- (void)updateFeedForFeedUrl:(id)a3 cloudSyncFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 triggerBy:(id)a6 userInitiated:(BOOL)a7 forceBootstrap:(BOOL)a8 useBackgroundFetch:(BOOL)a9 source:(int64_t)a10 isSubscribing:(BOOL)a11 telemetryIdentifier:(id)a12 feedDownloadedHook:(id)a13 preProcessFeedHook:(id)a14 postProcessFeedHook:(id)a15 completion:(id)a16;
- (void)updateFeedForFeedUrl:(id)a3 cloudSyncFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 triggerBy:(id)a6 userInitiated:(BOOL)a7 forceBootstrap:(BOOL)a8 useBackgroundFetch:(BOOL)a9 source:(int64_t)a10 telemetryIdentifier:(id)a11 completion:(id)a12;
@end

@implementation MTFeedManager

+ (MTFeedManager)sharedInstance
{
  if (qword_100572810 != -1)
  {
    swift_once();
  }

  v3 = static FeedManager.shared;

  return v3;
}

- (void)updateFeedForFeedUrl:(id)a3 cloudSyncFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 triggerBy:(id)a6 userInitiated:(BOOL)a7 forceBootstrap:(BOOL)a8 useBackgroundFetch:(BOOL)a9 source:(int64_t)a10 telemetryIdentifier:(id)a11 completion:(id)a12
{
  v12 = a8;
  v44 = a7;
  v43 = a5;
  v46 = self;
  v15 = sub_100168088(&unk_10057D668);
  __chkstk_darwin(v15 - 8);
  v17 = &v39 - v16;
  v18 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v18 - 8);
  v20 = &v39 - v19;
  v45 = type metadata accessor for URL();
  v21 = *(v45 - 8);
  __chkstk_darwin(v45);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _Block_copy(a12);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v21 + 56))(v20, v25, 1, v45);
  if (a6)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v41 = a9;
  v42 = v17;
  if (!a11)
  {
    v34 = type metadata accessor for UUID();
    (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
    v35 = v46;
    v32 = a10;
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_11:
    v33 = 0;
    goto LABEL_12;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = type metadata accessor for UUID();
  v30 = *(*(v29 - 8) + 56);
  v40 = v23;
  v31 = v46;
  v30(v17, 0, 1, v29);
  v23 = v40;
  v32 = a10;
  if (!v24)
  {
    goto LABEL_11;
  }

LABEL_9:
  v33 = swift_allocObject();
  *(v33 + 16) = v24;
  v24 = sub_1002D6FF4;
LABEL_12:
  v36 = v42;
  v37 = v12;
  v38 = v46;
  FeedManager.updateFeed(forFeedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:telemetryIdentifier:completion:)(v23, v20, v43, v26, v28, v44, v37, v41, v32, v42, v24, v33);
  sub_1000112B4(v24);

  sub_100009104(v36, &unk_10057D668);
  sub_100009104(v20, &qword_100574040);
  (*(v21 + 8))(v23, v45);
}

- (void)updateFeedForFeedUrl:(id)a3 cloudSyncFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 triggerBy:(id)a6 userInitiated:(BOOL)a7 forceBootstrap:(BOOL)a8 useBackgroundFetch:(BOOL)a9 source:(int64_t)a10 isSubscribing:(BOOL)a11 telemetryIdentifier:(id)a12 feedDownloadedHook:(id)a13 preProcessFeedHook:(id)a14 postProcessFeedHook:(id)a15 completion:(id)a16
{
  v58 = a7;
  v59 = a8;
  v56 = a5;
  v60 = self;
  v18 = sub_100168088(&unk_10057D668);
  __chkstk_darwin(v18 - 8);
  v20 = v51 - v19;
  v21 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v21 - 8);
  v23 = v51 - v22;
  v24 = type metadata accessor for URL();
  v62 = *(v24 - 8);
  v63 = v24;
  __chkstk_darwin(v24);
  v26 = v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _Block_copy(a13);
  v53 = _Block_copy(a14);
  v28 = _Block_copy(a15);
  v29 = _Block_copy(a16);
  v61 = v26;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v62 + 56))(v23, v30, 1, v63);
  v31 = v60;
  if (a6)
  {
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v32;
    v57 = v23;
    if (a12)
    {
LABEL_6:
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = type metadata accessor for UUID();
      v34 = *(*(v33 - 8) + 56);
      v35 = v31;
      v34(v20, 0, 1, v33);
      goto LABEL_9;
    }
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v57 = v23;
    if (a12)
    {
      goto LABEL_6;
    }
  }

  v36 = type metadata accessor for UUID();
  (*(*(v36 - 8) + 56))(v20, 1, 1, v36);
  v37 = v31;
LABEL_9:
  v38 = v29;
  v39 = v53;
  if (v27)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v27;
    v53 = sub_1002D6F7C;
    if (v39)
    {
LABEL_11:
      v41 = swift_allocObject();
      *(v41 + 16) = v39;
      v39 = sub_1002D6F34;
      goto LABEL_14;
    }
  }

  else
  {
    v53 = 0;
    v40 = 0;
    if (v39)
    {
      goto LABEL_11;
    }
  }

  v41 = 0;
LABEL_14:
  v52 = a9;
  if (v28)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = v28;
    v43 = sub_1002D6ED4;
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  v44 = v20;
  if (v38)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = v38;
    v38 = sub_1002D6ECC;
  }

  else
  {
    v45 = 0;
  }

  v49 = v39;
  v50 = v41;
  v51[0] = v39;
  v51[1] = v41;
  v46 = v53;
  v47 = v60;
  v48 = v57;
  FeedManager.updateFeed(forFeedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:isSubscribing:telemetryIdentifier:feedDownloadedHook:preProcessFeedHook:postProcessFeedHook:completion:)(v61, v57, v56, v54, v55, v58, v59, v52, a10, a11, v44, v53, v40, v49, v50, v43, v42, v38, v45);
  sub_1000112B4(v38);
  sub_1000112B4(v43);
  sub_1000112B4(v51[0]);
  sub_1000112B4(v46);

  sub_100009104(v44, &unk_10057D668);
  sub_100009104(v48, &qword_100574040);
  (*(v62 + 8))(v61, v63);
}

- (BOOL)isUpdatingShowWithUrl:(id)a3 storeID:(int64_t)a4
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v8 = &v14 - v7;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = self;
  v12 = FeedManager.isUpdatingShow(url:storeID:)(v8, a4);

  sub_100009104(v8, &qword_100574040);
  return v12 & 1;
}

- (void)handleEventsForBackgroundURLSessionFor:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = swift_allocObject();
  v10[2] = self;
  v10[3] = v6;
  v10[4] = v8;
  v10[5] = sub_10019C604;
  v10[6] = v9;
  v11 = self;

  sub_1002D4B98(sub_1002D6FF0, v10);
}

- (BOOL)isUpdating
{
  v2 = self;
  v3 = FeedManager.isUpdating.getter();

  return v3 & 1;
}

@end