@interface MTFeedManager
+ (MTFeedManager)sharedInstance;
- (BOOL)isUpdating;
- (BOOL)isUpdatingShowWithUrl:(id)url storeID:(int64_t)d;
- (void)handleEventsForBackgroundURLSessionFor:(id)for completionHandler:(id)handler;
- (void)updateFeedForFeedUrl:(id)url cloudSyncFeedUrl:(id)feedUrl podcastStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated forceBootstrap:(BOOL)bootstrap useBackgroundFetch:(BOOL)fetch source:(int64_t)self0 isSubscribing:(BOOL)self1 telemetryIdentifier:(id)self2 feedDownloadedHook:(id)self3 preProcessFeedHook:(id)self4 postProcessFeedHook:(id)self5 completion:(id)self6;
- (void)updateFeedForFeedUrl:(id)url cloudSyncFeedUrl:(id)feedUrl podcastStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated forceBootstrap:(BOOL)bootstrap useBackgroundFetch:(BOOL)fetch source:(int64_t)self0 telemetryIdentifier:(id)self1 completion:(id)self2;
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

- (void)updateFeedForFeedUrl:(id)url cloudSyncFeedUrl:(id)feedUrl podcastStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated forceBootstrap:(BOOL)bootstrap useBackgroundFetch:(BOOL)fetch source:(int64_t)self0 telemetryIdentifier:(id)self1 completion:(id)self2
{
  bootstrapCopy = bootstrap;
  initiatedCopy = initiated;
  idCopy = id;
  selfCopy = self;
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
  v24 = _Block_copy(completion);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (feedUrl)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v21 + 56))(v20, v25, 1, v45);
  if (by)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  fetchCopy = fetch;
  v42 = v17;
  if (!identifier)
  {
    v34 = type metadata accessor for UUID();
    (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
    v35 = selfCopy;
    sourceCopy2 = source;
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
  v31 = selfCopy;
  v30(v17, 0, 1, v29);
  v23 = v40;
  sourceCopy2 = source;
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
  v37 = bootstrapCopy;
  v38 = selfCopy;
  FeedManager.updateFeed(forFeedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:telemetryIdentifier:completion:)(v23, v20, idCopy, v26, v28, initiatedCopy, v37, fetchCopy, sourceCopy2, v42, v24, v33);
  sub_1000112B4(v24);

  sub_100009104(v36, &unk_10057D668);
  sub_100009104(v20, &qword_100574040);
  (*(v21 + 8))(v23, v45);
}

- (void)updateFeedForFeedUrl:(id)url cloudSyncFeedUrl:(id)feedUrl podcastStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated forceBootstrap:(BOOL)bootstrap useBackgroundFetch:(BOOL)fetch source:(int64_t)self0 isSubscribing:(BOOL)self1 telemetryIdentifier:(id)self2 feedDownloadedHook:(id)self3 preProcessFeedHook:(id)self4 postProcessFeedHook:(id)self5 completion:(id)self6
{
  initiatedCopy = initiated;
  bootstrapCopy = bootstrap;
  idCopy = id;
  selfCopy = self;
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
  v27 = _Block_copy(hook);
  v53 = _Block_copy(feedHook);
  v28 = _Block_copy(processFeedHook);
  v29 = _Block_copy(completion);
  v61 = v26;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (feedUrl)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v62 + 56))(v23, v30, 1, v63);
  v31 = selfCopy;
  if (by)
  {
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v32;
    v57 = v23;
    if (identifier)
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
    if (identifier)
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
  fetchCopy = fetch;
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
  v47 = selfCopy;
  v48 = v57;
  FeedManager.updateFeed(forFeedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:isSubscribing:telemetryIdentifier:feedDownloadedHook:preProcessFeedHook:postProcessFeedHook:completion:)(v61, v57, idCopy, v54, v55, initiatedCopy, bootstrapCopy, fetchCopy, source, subscribing, v44, v53, v40, v49, v50, v43, v42, v38, v45);
  sub_1000112B4(v38);
  sub_1000112B4(v43);
  sub_1000112B4(v51[0]);
  sub_1000112B4(v46);

  sub_100009104(v44, &unk_10057D668);
  sub_100009104(v48, &qword_100574040);
  (*(v62 + 8))(v61, v63);
}

- (BOOL)isUpdatingShowWithUrl:(id)url storeID:(int64_t)d
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v8 = &v14 - v7;
  if (url)
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

  selfCopy = self;
  v12 = FeedManager.isUpdatingShow(url:storeID:)(v8, d);

  sub_100009104(v8, &qword_100574040);
  return v12 & 1;
}

- (void)handleEventsForBackgroundURLSessionFor:(id)for completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
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
  selfCopy = self;

  sub_1002D4B98(sub_1002D6FF0, v10);
}

- (BOOL)isUpdating
{
  selfCopy = self;
  v3 = FeedManager.isUpdating.getter();

  return v3 & 1;
}

@end