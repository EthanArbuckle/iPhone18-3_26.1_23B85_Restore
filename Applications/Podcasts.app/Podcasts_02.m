uint64_t sub_100042038()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_10030364C;
  }

  else
  {
    *(v2 + 64) = *(v2 + 16);
    sub_10002C074(&unk_10057E7F0, &type metadata accessor for DownloadRemovalObserver);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_1000421C0;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_1000421C0()
{
  dispatch thunk of DownloadRemovalObserver.beginObserving()();

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003035E8, v1, v0);
}

uint64_t sub_100042258()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003036B0, v1, v0);
}

uint64_t sub_100042574(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for FeedUpdateRequest();
  v5 = *(updated - 8);
  __chkstk_darwin(updated);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR___MTFeedManager__system);
  if (v8)
  {
    v9 = objc_opt_self();
    swift_unknownObjectRetain();

    if ([v9 isEmpty:FeedUpdateRequest.podcastStoreId.getter()])
    {
      swift_getObjectType();
      dispatch thunk of URLBasedFeedUpdater.updateFeed(request:)();
    }

    else
    {
      dispatch thunk of StoreFeedUpdater.updateFeed(request:)();
    }

    return sub_10003F6FC(v8);
  }

  else
  {
    FeedUpdateRequest.startSystemCreation()();
    (*(v5 + 16))(v7, a2, updated);
    v10 = OBJC_IVAR___MTFeedManager__pendingRequests;
    swift_beginAccess();
    v11 = *(a1 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_100243E44(0, v11[2] + 1, 1, v11);
      *(a1 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_100243E44(v13 > 1, v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    (*(v5 + 32))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, updated);
    *(a1 + v10) = v11;
    return swift_endAccess();
  }
}

uint64_t sub_10004286C()
{
  v1 = *(type metadata accessor for FeedUpdateRequest() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100042574(v2, v3);
}

uint64_t sub_100042D74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100042EA0()
{
  v1 = type metadata accessor for ArtworkRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100042F78()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  sub_100009104(v4, &qword_100578010);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100043104, 0, 0);
}

uint64_t sub_100043104()
{
  v1 = v0[15];
  v2 = v0[16] + 1;
  (*(v0[8] + 8))(v0[11], v0[7]);
  v3 = v0[17];
  if (v2 != v1)
  {
    v6 = v0[16] + 1;
    v0[16] = v6;
    v7 = v0[13];
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      v8 = v0[8];
      v10 = *(v8 + 16);
      v8 += 16;
      v9 = v10;
      v11 = (*(v8 + 64) + 32) & ~*(v8 + 64);
      v10(v0[11], v7 + v11 + *(v8 + 56) * v6, v0[7]);
      static Task<>.checkCancellation()();
      v0[17] = v3;
      v12 = v0[11];
      if (v3)
      {
        (*(v0[8] + 8))(v0[11], v0[7]);

        goto LABEL_9;
      }

      v14 = v0[10];
      v15 = v0[7];
      v16 = v0[8];
      v17 = v0[3];
      v23 = v0[9];
      v24 = v0[2];
      static OSSignposter.widget.getter();
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
      v9(v14, v12, v15);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      (*(v16 + 32))(v19 + v11, v14, v15);
      *(v19 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
      v20 = v24;
      v21 = swift_task_alloc();
      v0[18] = v21;
      *v21 = v0;
      v21[1] = sub_100042F78;
    }

    return __s2os12OSSignposterV18PodcastsFoundationE4task8priority4name5blockxScPSg_s12StaticStringVxyYaYAcntYas8SendableRzlF();
  }

  static Task<>.checkCancellation()();
  if (!v3)
  {
    type metadata accessor for MainActor();
    v0[19] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10032684C, v5, v4);
  }

LABEL_9:

  v13 = v0[1];

  return v13();
}

void sub_10004390C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100043998(uint64_t a1)
{
  v1 = [*(a1 + 32) clampsController];
  [v1 reset];
}

void sub_100043A40(id a1)
{
  v1 = +[MZPreferences storeBookkeeperPreferences];
  v2 = [v1 objectForKey:@"MZKeyValueStoreClamps" withDefaultValue:0];

  if (v2)
  {
    v9 = 0;
    v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v9];
    v4 = v9;
    v5 = qword_100583AE0;
    qword_100583AE0 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (qword_100583AE0)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = objc_alloc_init(MZKeyValueStoreClampsController);
    v8 = qword_100583AE0;
    qword_100583AE0 = v7;
  }
}

void sub_100043B34(uint64_t a1, int a2, id a3)
{
  v4 = objc_retainBlock(a3);
  (*(v4 + 2))(v4, *(a1 + 32), *(a1 + 40));
}

uint64_t sub_100043B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a3)
  {
LABEL_3:
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  v4(v5, v3);
}

void sub_100043CE0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 16);

    v2 = [v1 uuids];

    if (!v2)
    {
      __break(1u);
      return;
    }

    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  if (!v5 || (v6 = *(v5 + 24), , v4 != v6))
  {
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = v7;
      *(v7 + 24) = v4;
      swift_beginAccess();
      v9 = *(v8 + 32);
      if (v9)
      {

        v9(v4);

        sub_1000112B4(v9);
      }

      else
      {
      }
    }
  }
}

void sub_100043EAC(id a1)
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v1 = [NSArray arrayWithObjects:&v4 count:3];
  v2 = [NSSet setWithArray:v1, v4, v5];
  v3 = qword_100583AE8;
  qword_100583AE8 = v2;
}

void sub_10004404C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setLastProcessedPersistentHistoryToken:*(*(*(a1 + 32) + 8) + 40)];
}

void sub_100044230(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingUserDefaultArchivedData];
  *(*(*(a1 + 40) + 8) + 24) = v2 == 0;

  v3 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
  [*(a1 + 32) setPendingUserDefaultArchivedData:v3];
}

void sub_1000442BC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR___MTBackgroundTaskManager_task;
  if (*&v1[OBJC_IVAR___MTBackgroundTaskManager_task] == UIBackgroundTaskInvalid)
  {
    static Logger.backgroundTaskManager.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Tried to end background task but there is no ongoing background task.", v12, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    static Logger.backgroundTaskManager.getter();
    v13 = v1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = Int.hashValue.getter();

      _os_log_impl(&_mh_execute_header, v14, v15, "Ending background task with identifier hash: %ld.", v16, 0xCu);
    }

    else
    {

      v14 = v13;
    }

    (*(v3 + 8))(v8, v2);
    v17 = [objc_opt_self() sharedApplication];
    [v17 endBackgroundTask:*&v1[v9]];

    *&v1[v9] = UIBackgroundTaskInvalid;
  }
}

void sub_10004454C(uint64_t a1)
{
  v2 = sub_100168088(&qword_100575EC8);
  v3 = __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  sub_100044674(a1, &v10 - v6);
  v8 = *&v7[*(v2 + 48)];
  v9 = [v8 view];

  if (v9)
  {
    sub_100044674(a1, v5);

    UIView.appEntityIdentifier.setter();
    sub_100009104(v7, &qword_100575E88);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100044674(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100575EC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000446E4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = aBlock - v6;
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 delegate];

  if (v11)
  {
    if (([v11 respondsToSelector:"window"] & 1) != 0 && (v12 = objc_msgSend(v11, "window")) != 0)
    {
      v13 = v12;
      v14 = [v12 rootViewController];
      if (v14)
      {
        v15 = v14;
        type metadata accessor for MetricsController();
        swift_allocObject();

        v16 = MetricsController.init(asPartOf:)();
        v17 = type metadata accessor for WelcomeViewControllerMetricsSender();
        v18 = objc_allocWithZone(v17);
        *&v18[OBJC_IVAR___MTWelcomeViewControllerMetricsSender_metricsController] = v16;
        v36.receiver = v18;
        v36.super_class = v17;

        v19 = objc_msgSendSuper2(&v36, "init");
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v22 + 24) = v16;
        aBlock[4] = sub_100305070;
        aBlock[5] = v22;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1003031A8;
        aBlock[3] = &unk_1004ECDB8;
        v23 = _Block_copy(aBlock);

        v24 = v15;
        v25 = v19;

        [v20 presentWelcomeIfNeededFromViewController:v24 metricsSender:v25 acknowledgementCompletionBlock:v23];
        _Block_release(v23);
        swift_unknownObjectRelease();
      }

      else
      {
        static Logger.navigation.getter();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v1 + 8))(v9, v0);
      }
    }

    else
    {
      static Logger.navigation.getter();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      (*(v1 + 8))(v7, v0);
    }
  }

  else
  {
    static Logger.navigation.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
    }

    (*(v1 + 8))(v4, v0);
  }
}

uint64_t sub_100044BDC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100044D58()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100009F1C(0, &qword_1005729D0);
    *v3 = static OS_dispatch_queue.main.getter();
    (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
    v6 = _dispatchPreconditionTest(_:)();
    (*(v1 + 8))(v3, v0);
    if (v6)
    {
      v7 = [objc_opt_self() defaultCenter];
      [v7 postNotificationName:@"MTFeedUpdateDidMakeProgress" object:v5];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100044F98(id a1)
{
  if (qword_100583A28 != -1)
  {
    sub_100044F84();
  }

  v1 = +[MTPurchaseControllerWrapper sharedInstance];
  [v1 fetchChannelUpdatesCheckingEntitlementsNotification];
}

void sub_100044FF8(id a1)
{
  v1 = +[MTPurchaseControllerWrapper sharedInstance];
  [v1 forceFetchLatestChannelUpdates];
}

uint64_t sub_100045040(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100045094(uint64_t a1, const char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.feedUpdate.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v8, v9, a2, v10, 0xCu);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t LibraryDataProvider.categoriesRecommendationsMetadataPublisher()()
{
  v0 = sub_100168088(&qword_1005738F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - v2;
  v18 = sub_100168088(&qword_1005738F8);
  v21 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v16 - v4;
  v19 = sub_100168088(&qword_100573900);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v16 - v7;
  v17 = sub_100168088(&qword_100573908);
  v20 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - v9;
  v23 = InterestObserverProvider.favoritedInterestsCategoriesPublisher.getter();
  v22 = InterestObserverProvider.dislikedInterestsCategoriesPublisher.getter();
  sub_100168088(&qword_100573918);
  sub_100009FAC(&qword_100573920, &qword_100573918);
  Publishers.CombineLatest.init(_:_:)();
  type metadata accessor for RecommendationsMetadata.Categories();
  sub_100009FAC(&qword_100573928, &qword_1005738F0);
  Publisher.map<A>(_:)();
  (*(v1 + 8))(v3, v0);
  sub_100009FAC(&qword_100573930, &qword_1005738F8);
  sub_10000F084(&qword_100573938, &type metadata accessor for RecommendationsMetadata.Categories);
  v11 = v18;
  Publisher<>.removeDuplicates()();
  (*(v21 + 8))(v5, v11);
  sub_100009FAC(&qword_100573940, &qword_100573900);
  v12 = v19;
  Publisher.first()();
  (*(v6 + 8))(v8, v12);
  sub_100009FAC(&qword_100573948, &qword_100573908);
  v13 = v17;
  v14 = Publisher.eraseToAnyPublisher()();
  (*(v20 + 8))(v10, v13);
  return v14;
}

uint64_t LibraryDataProvider.channelsRecommendationsMetadataPublisher()()
{
  v1 = sub_100168088(&qword_100573950);
  v2 = *(v1 - 8);
  v18 = v1;
  v19 = v2;
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v21 = sub_100168088(&qword_100573958);
  v25 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = &v17 - v5;
  v22 = sub_100168088(&qword_100573960);
  v24 = *(v22 - 8);
  __chkstk_darwin(v22);
  v17 = &v17 - v7;
  v20 = sub_100168088(&qword_100573968);
  v23 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v17 - v8;
  sub_1000044A0((v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_libraryObserverProvider), *(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_libraryObserverProvider + 24));
  v28 = dispatch thunk of LibraryObserverProviderProtocol.librarySubscribedChannelsPublisher.getter();
  v27 = InterestObserverProvider.favoritedInterestsChannelsPublisher.getter();
  v26 = InterestObserverProvider.dislikedInterestsChannelsPublisher.getter();
  sub_100168088(&qword_100573978);
  sub_100168088(&qword_100573980);
  sub_100009FAC(&qword_100573988, &qword_100573978);
  sub_100009FAC(&qword_100573990, &qword_100573980);
  Publishers.CombineLatest3.init(_:_:_:)();
  type metadata accessor for RecommendationsMetadata.Channels();
  sub_100009FAC(&qword_100573998, &qword_100573950);
  v10 = v18;
  Publisher.map<A>(_:)();
  (*(v19 + 8))(v4, v10);
  sub_100009FAC(&qword_1005739A0, &qword_100573958);
  sub_10000F084(&qword_1005739A8, &type metadata accessor for RecommendationsMetadata.Channels);
  v11 = v17;
  v12 = v21;
  Publisher<>.removeDuplicates()();
  (*(v25 + 8))(v6, v12);
  sub_100009FAC(&qword_1005739B0, &qword_100573960);
  v13 = v22;
  Publisher.first()();
  (*(v24 + 8))(v11, v13);
  sub_100009FAC(&qword_1005739B8, &qword_100573968);
  v14 = v20;
  v15 = Publisher.eraseToAnyPublisher()();
  (*(v23 + 8))(v9, v14);
  return v15;
}

uint64_t LibraryDataProvider.episodesRecommendationsMetadataPublisher()()
{
  v11 = type metadata accessor for EpisodeListSettings();
  v1 = *(v11 - 8);
  __chkstk_darwin(v11);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v18 = 10;
  EpisodeListSettings.init(_:sort:pubDateLimit:hidePlayedEpisodes:hideTrailers:hideVideoEpisodes:hideUnentitledContent:)();
  v4 = [*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = EpisodeListSettings.predicate.getter();
  EpisodeListSettings.sort.getter();
  EpisodeSortType.descriptors.getter();
  type metadata accessor for RecommendationsMetadataProvider();
  static RecommendationsMetadataProvider.metadataListLimit.getter();
  sub_100009F1C(0, &qword_1005729D0);
  v6 = static OS_dispatch_queue.main.getter();
  type metadata accessor for RecommendationsMetadata.Episodes();
  sub_100009F1C(0, &qword_1005739D0);
  v7 = NSManagedObjectContext.fetchListAndPublish<A, B>(entityName:predicate:sortDescriptors:limit:receiveOn:transform:)();

  v12 = v7;
  sub_100168088(&qword_1005739D8);
  sub_100009FAC(&qword_1005739E0, &qword_1005739D8);
  v8 = Publisher.eraseToAnyPublisher()();

  (*(v1 + 8))(v3, v11);
  return v8;
}

uint64_t LibraryDataProvider.showsRecommendationsMetadataPublisher()()
{
  v30 = sub_100168088(&qword_1005739E8);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v27 = &v21 - v0;
  v1 = sub_100168088(&qword_1005739F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v29 = &v21 - v3;
  v4 = sub_100168088(&qword_1005739F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = sub_100168088(&qword_100573A00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  type metadata accessor for RecommendationsMetadataProvider();
  result = static RecommendationsMetadataProvider.metadataListLimit.getter();
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v26 = sub_100046424();
    v32 = v26;

    v31 = InterestObserverProvider.dislikedInterestsShowsPublisher.getter();
    sub_100168088(&qword_100573A08);
    v24 = v8;
    v25 = v9;
    v22 = v11;
    v23 = v4;
    sub_100168088(&qword_100573A10);
    v21 = v1;
    sub_100009FAC(&qword_100573A18, &qword_100573A08);
    sub_100009FAC(&qword_100573A20, &qword_100573A10);
    v13 = v27;
    Publishers.CombineLatest.init(_:_:)();
    type metadata accessor for RecommendationsMetadata.Shows();
    sub_100009FAC(&qword_100573A28, &qword_1005739E8);
    v15 = v29;
    v14 = v30;
    Publisher.map<A>(_:)();
    (*(v28 + 8))(v13, v14);
    sub_100009FAC(&qword_100573A30, &qword_1005739F0);
    sub_10000F084(&qword_100573A38, &type metadata accessor for RecommendationsMetadata.Shows);
    v16 = v21;
    Publisher<>.removeDuplicates()();
    (*(v2 + 8))(v15, v16);
    sub_100009FAC(&qword_100573A40, &qword_1005739F8);
    v18 = v22;
    v17 = v23;
    Publisher.first()();
    (*(v5 + 8))(v7, v17);
    sub_100009FAC(&qword_100573A48, &qword_100573A00);
    v19 = v24;
    v20 = Publisher.eraseToAnyPublisher()();

    (*(v25 + 8))(v18, v19);
    return v20;
  }

  return result;
}

id sub_100046424()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = objc_opt_self();
  v3 = [v2 predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  result = [v2 sortDescriptorsForLastDatePlayed];
  if (result)
  {
    v5 = result;
    sub_100009F1C(0, &qword_10057B1F0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100009F1C(0, &qword_1005729D0);
    v6 = static OS_dispatch_queue.main.getter();
    sub_100168088(&qword_100574310);
    sub_100009F1C(0, &qword_100573AC0);
    NSManagedObjectContext.fetchListAndPublish<A, B>(entityName:predicate:sortDescriptors:limit:receiveOn:transform:)();

    sub_100168088(&qword_100574318);
    sub_100009FAC(&qword_100574320, &qword_100574318);
    v7 = Publisher.eraseToAnyPublisher()();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10004676C(id a1, NSNotification *a2)
{
  v2 = +[UNUserNotificationCenter currentNotificationCenter];
  [v2 getNotificationSettingsWithCompletionHandler:&stru_1004D88B8];
}

void sub_100046870()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  byte_10057B210 = v2;
}

uint64_t sub_100046900(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Podcasts25PlatformContentController_syncabilityController;
  swift_beginAccess();
  sub_100010430(a1 + v4, v13, &qword_10057B380);
  if (v14)
  {
    sub_100004428(v13, v10);
    sub_100009104(v13, &qword_10057B380);
    v5 = v11;
    v6 = v12;
    sub_1000044A0(v10, v11);
    (*(v6 + 8))(v5, v6);
    sub_100004590(v10);
  }

  else
  {
    sub_100009104(v13, &qword_10057B380);
  }

  sub_100010430(a1 + OBJC_IVAR____TtC8Podcasts25PlatformContentController_syncToAppController, v13, &qword_10057B388);
  v7 = v14;
  if (v14)
  {
    v8 = v15;
    sub_1000044A0(v13, v14);
    (*(v8 + 8))(v7, v8);
    sub_100004590(v13);
  }

  else
  {
    sub_100009104(v13, &qword_10057B388);
  }

  return (*(a2 + 16))(a2);
}

uint64_t sub_100046AEC(void *a1)
{
  v2 = v1;
  v73 = a1;
  v3 = type metadata accessor for OSSignposter();
  __chkstk_darwin(v3 - 8);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v5 - 8);
  v69 = &v68 - v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v89 = *(v7 - 8);
  __chkstk_darwin(v7);
  v85 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v88 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetricsPipeline();
  v86 = *(v10 - 8);
  v87 = v10;
  __chkstk_darwin(v10);
  v76 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v11;
  __chkstk_darwin(v12);
  v14 = &v68 - v13;
  v15 = type metadata accessor for AppEnterMetricsEvent.EnterKind();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v17;
  __chkstk_darwin(v19);
  v21 = &v68 - v20;
  type metadata accessor for AnalyticsIdentifierManager();
  v22 = static AnalyticsIdentifierManager.sharedInstance.getter();
  dispatch thunk of AnalyticsIdentifierManager.resetIfNeeded()();

  type metadata accessor for MetricsActivity();
  v23 = static MetricsActivity.shared.getter();
  active = MetricsActivity.hasActiveCrossfireReferral.getter();

  v82 = v7;
  if (active)
  {
    (*(v16 + 104))(v21, enum case for AppEnterMetricsEvent.EnterKind.link(_:), v15);
  }

  else
  {
    if (v2[OBJC_IVAR____TtC8Podcasts11AppDelegate_appHasBeenInBackground] == 1)
    {
      v25 = &enum case for AppEnterMetricsEvent.EnterKind.taskSwitch(_:);
    }

    else
    {
      v25 = &enum case for AppEnterMetricsEvent.EnterKind.launch(_:);
    }

    (*(v16 + 104))(v21, *v25, v15);
  }

  v75 = OBJC_IVAR____TtC8Podcasts11AppDelegate_objectGraph;

  v26 = v87;
  BaseObjectGraph.inject<A>(_:)();

  type metadata accessor for LegacyPlaybackQueueMigrator();
  v27 = swift_allocObject();
  type metadata accessor for PlaybackController();

  BaseObjectGraph.inject<A>(_:)();
  *(v27 + 16) = aBlock;
  sub_100047724();

  v77 = v27;
  sub_100047AFC();
  v72 = sub_100009F1C(0, &qword_1005729D0);
  v74 = static OS_dispatch_queue.metricsProcessingQueue.getter();
  v28 = *(v16 + 16);
  v78 = v21;
  v28(v18, v21, v15);
  v29 = v16;
  v30 = v15;
  v31 = v86;
  v32 = *(v86 + 16);
  v33 = v76;
  v81 = v14;
  v32(v76, v14, v26);
  v34 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v35 = (v79 + *(v31 + 80) + v34) & ~*(v31 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v2;
  v79 = v29;
  v80 = v30;
  (*(v29 + 32))(v36 + v34, v18, v30);
  (*(v31 + 32))(v36 + v35, v33, v26);
  v95 = sub_100305090;
  v96 = v36;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_10000F038;
  v94 = &unk_1004ECE58;
  v37 = _Block_copy(&aBlock);
  v38 = v2;
  v39 = v83;
  static DispatchQoS.unspecified.getter();
  v90 = _swiftEmptyArrayStorage;
  v40 = sub_10002C074(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  v41 = sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  v42 = v85;
  v71 = v41;
  v43 = v82;
  v76 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v44 = v74;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);

  v45 = *(v89 + 8);
  v89 += 8;
  v45(v42, v43);
  v46 = *(v88 + 8);
  v88 += 8;
  v74 = v46;
  v46(v39, v84);

  sub_100047E5C(v47);

  v48 = *&v38[OBJC_IVAR____TtC8Podcasts11AppDelegate_widgetManager];
  if (v48)
  {
    v49 = OBJC_IVAR____TtC8Podcasts13WidgetManager_artworkPrefetchTask;
    if (!*&v48[OBJC_IVAR____TtC8Podcasts13WidgetManager_artworkPrefetchTask])
    {
      v50 = v48;
      v51 = v45;
      v52 = v69;
      static TaskPriority.utility.getter();
      v53 = type metadata accessor for TaskPriority();
      (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
      static OSSignposter.widget.getter();
      v54 = swift_allocObject();
      v54[2] = 0;
      v54[3] = 0;
      v54[4] = v50;
      v55 = v50;
      v45 = v51;
      *&v48[v49] = _sScT18PodcastsFoundations5Error_pRs_rlE8priority10signposter4name5blockScTyxsAB_pGScPSg_2os12OSSignposterVs12StaticStringVxyYaKYAcntcfC();
    }
  }

  v56 = [objc_opt_self() standardUserDefaults];
  v57 = String._bridgeToObjectiveC()();
  v58 = [v56 stringForKey:v57];

  if (v58)
  {

    v59 = static OS_dispatch_queue.main.getter();
    v60 = swift_allocObject();
    v61 = v73;
    *(v60 + 16) = v38;
    *(v60 + 24) = v61;
    v95 = sub_100305164;
    v96 = v60;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_10000F038;
    v94 = &unk_1004ECED0;
    v62 = _Block_copy(&aBlock);
    v63 = v38;
    v64 = v61;

    v65 = v83;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    v66 = v85;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v62);

    v45(v66, v43);
    v74(v65, v84);
  }

  else
  {
  }

  (*(v86 + 8))(v81, v87);
  return (*(v79 + 8))(v78, v80);
}

uint64_t sub_100047570()
{
  v1 = type metadata accessor for AppEnterMetricsEvent.EnterKind();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for MetricsPipeline();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000476C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100047724()
{
  v0 = objc_opt_self();
  sub_100009F1C(0, &qword_100583588);
  [v0 registerManifestForRestoration:swift_getObjCClassFromMetadata()];
  sub_100009F1C(0, &qword_100583590);
  [v0 registerManifestForRestoration:swift_getObjCClassFromMetadata()];
  sub_100009F1C(0, &qword_100583598);
  [v0 registerManifestForRestoration:swift_getObjCClassFromMetadata()];
  sub_100009F1C(0, &qword_1005835A0);
  [v0 registerManifestForRestoration:swift_getObjCClassFromMetadata()];
  type metadata accessor for EpisodeListManifest();
  [v0 registerManifestForRestoration:swift_getObjCClassFromMetadata()];
  type metadata accessor for NetworkMediaManifest();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [v0 registerManifestForRestoration:ObjCClassFromMetadata];
}

uint64_t type metadata accessor for EpisodeListManifest()
{
  result = qword_10057D2D8;
  if (!qword_10057D2D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000478C4()
{
  result = type metadata accessor for EpisodeListSettings();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for NetworkMediaManifest()
{
  result = qword_1005769B8;
  if (!qword_1005769B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000479E4()
{
  result = type metadata accessor for MediaRequest.ContentType();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100047AFC()
{
  v1 = v0;
  v2 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v10 = [v9 BOOLForKey:kMTSuccessfullyMigratedLegacyPlaybackQueue];

  if ((v10 & 1) == 0)
  {
    static Logger.modernPlayback.getter();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = v4;
      v14 = v13;
      v15 = swift_slowAlloc();
      *v14 = 136315138;
      v23 = *v1;
      v24 = v15;
      sub_100168088(&qword_100583540);
      v16 = String.init<A>(describing:)();
      v18 = sub_1000153E0(v16, v17, &v24);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Performing legacy queue migration.", v14, 0xCu);
      sub_100004590(v15);

      v4 = v22;
    }

    (*(v6 + 8))(v8, v5);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v1;

    sub_100217A04(0, 0, v4, &unk_100410F98, v20);
  }
}

uint64_t sub_100047E1C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100047E5C(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for StorageAnalyticsResponder();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackController();
  BaseObjectGraph.inject<A>(_:)();

  BaseObjectGraph.inject<A>(_:)();
  StorageAnalyticsResponder.beginObserving()();
  (*(v6 + 8))(v8, v5);
  type metadata accessor for LibraryActionController();
  BaseObjectGraph.inject<A>(_:)();

  sub_100009F1C(0, &qword_10057AB20);
  BaseObjectGraph.inject<A>(_:)();

  type metadata accessor for RecommendationsMetadataProvider();
  BaseObjectGraph.inject<A>(_:)();

  sub_100009F1C(0, &qword_100573E00);
  BaseObjectGraph.inject<A>(_:)();

  sub_100168088(&qword_10057ABC0);
  BaseObjectGraph.inject<A>(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for DebouncedAutoDownloadProcessor();
  BaseObjectGraph.inject<A>(_:)();
  v9 = v18;
  sub_1000483AC();

  type metadata accessor for DebouncedAssetRemovalProcessor();
  BaseObjectGraph.inject<A>(_:)();
  v10 = v18;
  sub_100048A4C();

  BaseObjectGraph.inject<A>(_:)();
  v11 = v18;
  DebouncedAutoDownloadProcessor.reevaluate()();

  BaseObjectGraph.inject<A>(_:)();
  v12 = v18;
  DebouncedAssetRemovalProcessor.reevaluate()();

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = a1;
  sub_100217A04(0, 0, v4, &unk_10040C040, v15);
}

id sub_10004819C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  v2 = objc_allocWithZone(type metadata accessor for DebouncedAutoDownloadProcessor());
  result = DebouncedAutoDownloadProcessor.init(context:)(v1);
  static DebouncedAutoDownloadProcessor.sharedInstance = result;
  return result;
}

id DebouncedAutoDownloadProcessor.init(context:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR___MTDebouncedAutoDownloadProcessor____lazy_storage___debouncedProcessor] = 0;
  *&v2[OBJC_IVAR___MTDebouncedAutoDownloadProcessor_debounceInterval] = 0x3FF0000000000000;
  v2[OBJC_IVAR___MTDebouncedAutoDownloadProcessor_isRunning] = 0;
  static Logger.downloads.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Creating AutoDownload processor", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  *&v2[OBJC_IVAR___MTDebouncedAutoDownloadProcessor_context] = a1;
  v11 = type metadata accessor for DebouncedAutoDownloadProcessor();
  v13.receiver = v2;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t sub_1000483AC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.downloads.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting debounced AutoDownload processor", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_1000487BC();
  dispatch thunk of DebouncedEpisodeAndShowProcessor.start()();

  v9 = OBJC_IVAR___MTDebouncedAutoDownloadProcessor_isRunning;
  swift_beginAccess();
  *(v1 + v9) = 1;
  return 1;
}

id sub_100048530(uint64_t a1)
{
  v2 = OBJC_IVAR___MTDebouncedAutoDownloadProcessor_context;
  v3 = *(a1 + OBJC_IVAR___MTDebouncedAutoDownloadProcessor_context);
  sub_100009F1C(0, &qword_10057AB20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = [ObjCClassFromMetadata sharedInstance];
  sub_100009F1C(0, &qword_1005729D0);
  static OS_dispatch_queue.automaticAssetManagement.getter();
  type metadata accessor for DeviceCapacityMonitor();
  static DeviceCapacityMonitor.shared.getter();
  v7 = type metadata accessor for AutoDownloadProcessorDataSource();
  swift_allocObject();
  v15[13] = v7;
  v15[14] = &protocol witness table for AutoDownloadProcessorDataSource;
  v15[10] = AutoDownloadProcessorDataSource.init(context:accountDataSource:workQueue:capacityMonitor:)();
  v8 = *(a1 + v2);
  v9 = type metadata accessor for CoreDataEpisodeAndShowStorage();
  swift_allocObject();
  v10 = v8;
  v15[8] = v9;
  v15[9] = &protocol witness table for CoreDataEpisodeAndShowStorage;
  v15[5] = CoreDataEpisodeAndShowStorage.init(context:)();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v12 = *(a1 + v2);
    static DeviceCapacityMonitor.shared.getter();
    sub_100009F1C(0, &qword_1005742D0);
    v13 = [swift_getObjCClassFromMetadata() sharedInstance];
    v14 = [v13 downloadManager];

    [objc_allocWithZone(PFCoreAnalyticsChannel) init];
    static OS_dispatch_queue.automaticAssetManagement.getter();
    v15[3] = type metadata accessor for AutoDownloadProcessorDownloader();
    v15[4] = &protocol witness table for AutoDownloadProcessorDownloader;
    sub_10000E680(v15);
    AutoDownloadProcessorDownloader.init(reachability:context:capacityMonitor:downloader:analyticsChannel:workQueue:)();
    type metadata accessor for DebouncedEpisodeAndShowProcessor();
    swift_allocObject();
    return DebouncedEpisodeAndShowProcessor.init(interval:dataSource:storage:delegate:workQueue:inverseBatchSize:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000487BC()
{
  v1 = OBJC_IVAR___MTDebouncedAutoDownloadProcessor____lazy_storage___debouncedProcessor;
  if (*(v0 + OBJC_IVAR___MTDebouncedAutoDownloadProcessor____lazy_storage___debouncedProcessor))
  {
    v2 = *(v0 + OBJC_IVAR___MTDebouncedAutoDownloadProcessor____lazy_storage___debouncedProcessor);
  }

  else
  {
    v2 = sub_100048530(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_100048824()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  v2 = objc_allocWithZone(type metadata accessor for DebouncedAssetRemovalProcessor());
  result = DebouncedAssetRemovalProcessor.init(context:)(v1);
  static DebouncedAssetRemovalProcessor.sharedInstance = result;
  return result;
}

id DebouncedAssetRemovalProcessor.init(context:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR___MTDebouncedAssetRemovalProcessor_debounceInterval] = 0x3FF0000000000000;
  v2[OBJC_IVAR___MTDebouncedAssetRemovalProcessor_isRunning] = 0;
  v8 = &v2[OBJC_IVAR___MTDebouncedAssetRemovalProcessor____lazy_storage___episodeStorage];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *&v2[OBJC_IVAR___MTDebouncedAssetRemovalProcessor____lazy_storage___debouncedProcessor] = 0;
  static Logger.downloads.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Creating AssetRemoval processor", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  *&v2[OBJC_IVAR___MTDebouncedAssetRemovalProcessor_context] = a1;
  v12 = type metadata accessor for DebouncedAssetRemovalProcessor();
  v14.receiver = v2;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_100048A4C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.downloads.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting debounced AssetRemoval processor", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_100048BD0();
  dispatch thunk of DebouncedEpisodeAndShowProcessor.start()();

  v9 = OBJC_IVAR___MTDebouncedAssetRemovalProcessor_isRunning;
  swift_beginAccess();
  *(v1 + v9) = 1;
  return 1;
}

id sub_100048BD0()
{
  v1 = OBJC_IVAR___MTDebouncedAssetRemovalProcessor____lazy_storage___debouncedProcessor;
  if (*(v0 + OBJC_IVAR___MTDebouncedAssetRemovalProcessor____lazy_storage___debouncedProcessor))
  {
    v2 = *(v0 + OBJC_IVAR___MTDebouncedAssetRemovalProcessor____lazy_storage___debouncedProcessor);
  }

  else
  {
    v2 = sub_100048C38(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_100048C38(uint64_t a1)
{
  v2 = OBJC_IVAR___MTDebouncedAssetRemovalProcessor_context;
  v3 = *(a1 + OBJC_IVAR___MTDebouncedAssetRemovalProcessor_context);
  sub_10002BD04();
  v4 = v3;
  static OS_dispatch_queue.automaticAssetManagement.getter();
  v5 = type metadata accessor for AssetRemovalProcessorDataSource();
  swift_allocObject();
  v11[8] = v5;
  v11[9] = &protocol witness table for AssetRemovalProcessorDataSource;
  v11[5] = AssetRemovalProcessorDataSource.init(managedObjectContext:receiverQueue:)();
  sub_100048E50(v11);
  sub_100048E50(v9);
  v6 = *(a1 + v2);
  v7 = objc_opt_self();
  v6;
  result = [v7 sharedInstance];
  if (result)
  {
    static OS_dispatch_queue.automaticAssetManagement.getter();
    sub_100049024();
    static OS_dispatch_queue.automaticAssetManagement.getter();
    v10[3] = type metadata accessor for AssetRemovalProcessorDelegate();
    v10[4] = &protocol witness table for AssetRemovalProcessorDelegate;
    sub_10000E680(v10);
    AssetRemovalProcessorDelegate.init(episodeAndShowStorage:library:workQueue:)();
    type metadata accessor for DebouncedEpisodeAndShowProcessor();
    swift_allocObject();
    return DebouncedEpisodeAndShowProcessor.init(interval:dataSource:storage:delegate:workQueue:inverseBatchSize:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100048DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100576098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048E50@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR___MTDebouncedAssetRemovalProcessor____lazy_storage___episodeStorage;
  swift_beginAccess();
  sub_100048DE0(v1 + v3, &v9);
  if (v10)
  {
    return sub_1000109E4(&v9, a1);
  }

  sub_100048F4C(&v9);
  v5 = *(v1 + OBJC_IVAR___MTDebouncedAssetRemovalProcessor_context);
  v6 = type metadata accessor for CoreDataEpisodeAndShowStorage();
  swift_allocObject();
  v7 = v5;
  v8 = CoreDataEpisodeAndShowStorage.init(context:)();
  a1[3] = v6;
  a1[4] = &protocol witness table for CoreDataEpisodeAndShowStorage;
  *a1 = v8;
  sub_100004428(a1, &v9);
  swift_beginAccess();
  sub_100048FB4(&v9, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100048F4C(uint64_t a1)
{
  v2 = sub_100168088(&qword_100576098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100048FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100576098);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100049024()
{
  result = qword_1005760A0;
  if (!qword_1005760A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005760A0);
  }

  return result;
}

Swift::Void __swiftcall DebouncedAutoDownloadProcessor.reevaluate()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.downloads.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Requesting reevaluation of AutoDownload processor", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  sub_1000487BC();
  dispatch thunk of DebouncedEpisodeAndShowProcessor.requestEvaluation()();
}

Swift::Void __swiftcall DebouncedAssetRemovalProcessor.reevaluate()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.downloads.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Requesting reevaluation of AssetRemoval processor", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  sub_100048BD0();
  dispatch thunk of DebouncedEpisodeAndShowProcessor.requestEvaluation()();
}

uint64_t sub_100049328()
{

  return swift_deallocClassInstance();
}

id sub_100049370(id a1, SEL a2)
{
  if (qword_100572790 != -1)
  {
    swift_once();
  }

  v3 = static DownloadConsistency.application;

  return v3;
}

id sub_1000493CC()
{
  v0 = type metadata accessor for DownloadEnvironment();
  __chkstk_darwin(v0 - 8);
  if (qword_100572788 != -1)
  {
    swift_once();
  }

  v8[3] = type metadata accessor for CompoundDownloadedAssetIssueIdentifier();
  v8[4] = &protocol witness table for CompoundDownloadedAssetIssueIdentifier;
  sub_10000E680(v8);

  CompoundDownloadedAssetIssueIdentifier.init(identifiers:)();
  sub_100168088(&qword_100577B18);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100400790;
  *(v1 + 56) = type metadata accessor for DeletionDownloadConsistencyIssueResolutionStrategy();
  *(v1 + 64) = &protocol witness table for DeletionDownloadConsistencyIssueResolutionStrategy;
  sub_10000E680((v1 + 32));
  DeletionDownloadConsistencyIssueResolutionStrategy.init()();
  v7[3] = type metadata accessor for PrioritizedDownloadConsistencyResolutionStrategy();
  v7[4] = &protocol witness table for PrioritizedDownloadConsistencyResolutionStrategy;
  sub_10000E680(v7);
  PrioritizedDownloadConsistencyResolutionStrategy.init(strategies:)();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    if (qword_100572820 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = static PodcastsStateCoordinator.shared;
    v4 = objc_opt_self();
    v3;
    v5 = [v4 sharedInstance];
    [v5 privateQueueContext];

    sub_100049A04();
    static DownloadEnvironment.live.getter();
    v6 = objc_allocWithZone(type metadata accessor for DownloadConsistency());
    result = DownloadConsistency.init(issueIdentifier:resolutionStrategy:effectApplicator:downloadEnvironment:)();
    static DownloadConsistency.application = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100049640()
{
  v0 = type metadata accessor for URL();
  __chkstk_darwin(v0 - 8);
  v16[1] = v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_100168088(&qword_100577B28);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = sub_100168088(&qword_100577B30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v9 = type metadata accessor for AssetCaches();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100577B38);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100402720;
  *(v13 + 56) = type metadata accessor for AbandonedStreamIssueIdentifier();
  *(v13 + 64) = &protocol witness table for AbandonedStreamIssueIdentifier;
  sub_10000E680((v13 + 32));
  AbandonedStreamIssueIdentifier.init()();
  *(v13 + 96) = type metadata accessor for AVAssetsInLibraryIssueIdentifier();
  *(v13 + 104) = &protocol witness table for AVAssetsInLibraryIssueIdentifier;
  sub_10000E680((v13 + 72));
  AVAssetsInLibraryIssueIdentifier.init()();
  [objc_allocWithZone(PFCoreAnalyticsChannel) init];
  *(v13 + 136) = type metadata accessor for CoreDataEpisodeAssetIssueIdentifier();
  *(v13 + 144) = &protocol witness table for CoreDataEpisodeAssetIssueIdentifier;
  sub_10000E680((v13 + 112));
  CoreDataEpisodeAssetIssueIdentifier.init(analyticsChannel:)();
  static AssetCaches.shared.getter();
  AssetCaches.artwork.getter();
  (*(v10 + 8))(v12, v9);
  CacheDomain.disk.getter();
  (*(v6 + 8))(v8, v5);
  v14 = v16[0];
  CacheDomain.DiskCaches.directory.getter();
  (*(v2 + 8))(v4, v14);
  *(v13 + 176) = type metadata accessor for UnownedImageIssueIdentifier();
  *(v13 + 184) = sub_1000499AC();
  sub_10000E680((v13 + 152));
  result = UnownedImageIssueIdentifier.init(directory:)();
  qword_100577B10 = v13;
  return result;
}

unint64_t sub_1000499AC()
{
  result = qword_100577B40;
  if (!qword_100577B40)
  {
    type metadata accessor for UnownedImageIssueIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100577B40);
  }

  return result;
}

unint64_t sub_100049A04()
{
  result = qword_100577B20;
  if (!qword_100577B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100577B20);
  }

  return result;
}

id sub_100049CE0(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting all processors...", v4, 2u);
  }

  return [*(a1 + 32) startProcessors:-1];
}

void sub_100049EA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10004A2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004A5FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 createQueryObserver];
  [v2 setQueryObserver:v3];

  v4 = [v2 queryObserver];
  [v4 startObserving];

  [v2 updatePredicateDuration];
  v6 = v5;
  if (fabs(v5) > 2.22044605e-16)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained workQueue];
    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);
    [v2 setTimer:v9];

    v10 = dispatch_walltime(0, 0);
    v11 = [v2 timer];
    dispatch_source_set_timer(v11, v10, (v6 * 1000000000.0), 0);

    v12 = [v2 timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000D7D90;
    handler[3] = &unk_1004D9E80;
    objc_copyWeak(&v26, (a1 + 40));
    dispatch_source_set_event_handler(v12, handler);

    v13 = [v2 timer];
    dispatch_resume(v13);

    objc_destroyWeak(&v26);
  }

  v14 = [v2 defaultPropertiesThatAffectPredicate];
  if ([v14 count])
  {
    v15 = [MTDefaultsChangeNotifier alloc];
    v16 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
    v17 = [(MTDefaultsChangeNotifier *)v15 initWithProperties:v14 defaults:v16];
    [v2 setDefaultsNotifier:v17];

    v18 = [v2 defaultsNotifier];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1000D7DD0;
    v23 = &unk_1004DB968;
    objc_copyWeak(&v24, (a1 + 40));
    [v18 addCallback:&v20];

    v19 = [v2 defaultsNotifier];
    [v19 start];

    objc_destroyWeak(&v24);
  }
}

void sub_10004AA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL sub_10004AB94(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10004AC00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10004AC78@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_DWORD *sub_10004AD28@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10004AD50()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10004ADDC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004AE14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004AE4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004AE84()
{
  v1 = *(sub_100168088(&qword_100574040) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10004AFB0()
{

  sub_100182974(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10004AFF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B044()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004B084()
{

  sub_100004590(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004B0C4()
{
  v1 = *(sub_100168088(&qword_100578010) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for TaskPriority();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10004B1F4()
{
  sub_100004590(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004B22C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004B26C()
{
  v1 = type metadata accessor for MediaLibraryPid();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10004B350()
{
  v1 = *(sub_100168088(&unk_100581860) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for URL();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }

    v8 = *(sub_100168088(&qword_1005735E8) + 48);
    v9 = type metadata accessor for MediaLibraryPid();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004B510()
{
  v1 = type metadata accessor for MediaLibraryPid();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004B5D4()
{
  v1 = type metadata accessor for MediaLibraryPid();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004B6A8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004B6FC()
{
  v1 = type metadata accessor for DownloadJob(0);
  v20 = *(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v22 = type metadata accessor for URL();
  v2 = *(v22 - 8);
  v17 = *(v2 + 80);
  v16 = *(v2 + 64);
  v21 = v0;
  v19 = (v20 + 16) & ~v20;
  v3 = v0 + v19;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v19, v4);

  v5 = v1[6];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);

  v9 = v3 + v1[9];

  v10 = type metadata accessor for EpisodeMetadata(0);
  v11 = *(v2 + 8);
  v11(v9 + *(v10 + 44), v22);
  v12 = *(v10 + 60);
  if (!(*(v7 + 48))(v9 + v12, 1, v6))
  {
    v8(v9 + v12, v6);
  }

  if ((*(v3 + v1[10] + 24) - 1) >= 4)
  {
  }

  v13 = (v19 + v18 + v17) & ~v17;
  v14 = (v16 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11(v21 + v13, v22);

  return _swift_deallocObject(v21, v14 + 8, v20 | v17 | 7);
}

uint64_t sub_10004B9BC()
{
  v1 = type metadata accessor for DownloadJob(0);
  v20 = *(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v16 = *(v3 + 80);
  v18 = *(v3 + 64);
  v19 = (v20 + 16) & ~v20;
  v21 = v0;
  v4 = v0 + v19;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v19, v5);

  v6 = v1[6];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v15 = *(v8 + 8);
  v15(v4 + v6, v7);

  v9 = v4 + v1[9];

  v10 = type metadata accessor for EpisodeMetadata(0);
  v11 = *(v3 + 8);
  v11(v9 + *(v10 + 44), v2);
  v12 = *(v10 + 60);
  if (!(*(v8 + 48))(v9 + v12, 1, v7))
  {
    v15(v9 + v12, v7);
  }

  if ((*(v4 + v1[10] + 24) - 1) >= 4)
  {
  }

  v13 = (((v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16;

  v11(v21 + v13, v2);

  return _swift_deallocObject(v21, v13 + v18, v20 | v16 | 7);
}

uint64_t sub_10004BC98()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 32) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t sub_10004BD64()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10004BE40()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10004BF3C()
{
  v1 = type metadata accessor for DownloadJob(0);
  v15 = *(*(v1 - 1) + 80);
  v13 = *(*(v1 - 1) + 64);

  v14 = (v15 + 40) & ~v15;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v14, v2);

  v3 = v1[6];
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v14 + v3, v4);

  v7 = v0 + v14 + v1[9];

  v8 = type metadata accessor for EpisodeMetadata(0);
  v9 = *(v8 + 44);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v8 + 60);
  if (!(*(v5 + 48))(v7 + v11, 1, v4))
  {
    v6(v7 + v11, v4);
  }

  if ((*(v0 + v14 + v1[10] + 24) - 1) >= 4)
  {
  }

  return _swift_deallocObject(v0, v14 + v13, v15 | 7);
}

uint64_t sub_10004C198()
{
  v1 = type metadata accessor for DownloadJob(0);
  v15 = *(*(v1 - 1) + 80);
  v13 = *(*(v1 - 1) + 64);

  v14 = (v15 + 24) & ~v15;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v14, v2);

  v3 = v1[6];
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v14 + v3, v4);

  v7 = v0 + v14 + v1[9];

  v8 = type metadata accessor for EpisodeMetadata(0);
  v9 = *(v8 + 44);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v8 + 60);
  if (!(*(v5 + 48))(v7 + v11, 1, v4))
  {
    v6(v7 + v11, v4);
  }

  if ((*(v0 + v14 + v1[10] + 24) - 1) >= 4)
  {
  }

  return _swift_deallocObject(v0, ((v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v15 | 7);
}

uint64_t sub_10004C404()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004C43C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004C484()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004C4C4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 16) & ~v3;
  v25 = v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for DownloadJob(0);
  v24 = *(*(v8 - 1) + 80);
  v9 = (v24 + v7 + 16) & ~v24;
  v21 = *(*(v8 - 1) + 64);
  v10 = *(v2 + 8);
  v10(v0 + v5, v1);
  v23 = v1;
  v10(v0 + v6, v1);
  if (*(v0 + v7))
  {
  }

  v22 = (v24 + v7 + 16) & ~v24;
  v11 = v0 + v9;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 8))(v0 + v9, v12);

  v13 = v8[6];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v20 = *(v15 + 8);
  v20(v0 + v9 + v13, v14);

  v16 = v0 + v9 + v8[9];

  v17 = type metadata accessor for EpisodeMetadata(0);
  v10(v16 + *(v17 + 44), v23);
  v18 = *(v17 + 60);
  if (!(*(v15 + 48))(v16 + v18, 1, v14))
  {
    v20(v16 + v18, v14);
  }

  if ((*(v11 + v8[10] + 24) - 1) >= 4)
  {
  }

  return _swift_deallocObject(v0, ((v21 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v25 | v24 | 7);
}

uint64_t sub_10004C7CC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 24))
  {
  }

  v5 = (v3 + 40) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t sub_10004C8A8()
{
  v1 = type metadata accessor for DownloadJob(0);
  v15 = *(*(v1 - 1) + 80);
  v13 = *(*(v1 - 1) + 64);

  v14 = (v15 + 40) & ~v15;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v14, v2);

  v3 = v1[6];
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v14 + v3, v4);

  v7 = v0 + v14 + v1[9];

  v8 = type metadata accessor for EpisodeMetadata(0);
  v9 = *(v8 + 44);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v8 + 60);
  if (!(*(v5 + 48))(v7 + v11, 1, v4))
  {
    v6(v7 + v11, v4);
  }

  if ((*(v0 + v14 + v1[10] + 24) - 1) >= 4)
  {
  }

  return _swift_deallocObject(v0, v14 + v13, v15 | 7);
}

uint64_t sub_10004CC50()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10004CCD4@<X0>(uint64_t a1@<X8>)
{
  result = LegacyEpisodeLockup.seasonNumber.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10004CD38()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004CD78()
{
  sub_10019C0A4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_10004CDCC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004CE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for StationSortOrder();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004CEB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StationSortOrder();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004CF5C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004CF98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004CFD0()
{
  v1 = type metadata accessor for EpisodeListSettings();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_10004D088()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004D0C0()
{
  v1 = type metadata accessor for EpisodeListSettings();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004D1A0()
{
  v1 = type metadata accessor for EpisodeListSettings();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004D22C()
{
  v1 = type metadata accessor for EpisodeListSettings();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004D2F0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004D330()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004D3CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004D41C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004D464()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004D4B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004D4FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004D534()
{
  v1 = *(type metadata accessor for PageContent() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v7 = type metadata accessor for PageID();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
      v8 = *(type metadata accessor for ModernPage() + 20);
      v9 = type metadata accessor for PageMetrics();
      (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

      break;
    case 2:
      v6 = type metadata accessor for ContentUnavailablePage();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      break;
    case 1:

      break;
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10004D6F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004D730()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004D76C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004D7A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004D7E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004D824()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004D860()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004D898()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_10004D948()
{
  v1 = type metadata accessor for DownloadJob(0);
  v17 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);

  v16 = (v17 + 24) & ~v17;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v16, v2);

  v3 = v1[6];
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v16 + v3, v4);

  v7 = v0 + v16 + v1[9];

  v8 = type metadata accessor for EpisodeMetadata(0);
  v9 = *(v8 + 44);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v8 + 60);
  if (!(*(v5 + 48))(v7 + v11, 1, v4))
  {
    v6(v7 + v11, v4);
  }

  if ((*(v0 + v16 + v1[10] + 24) - 1) >= 4)
  {
  }

  v12 = (v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v17 | 7);
}

uint64_t sub_10004DBD4()
{
  v1 = type metadata accessor for DownloadJob(0);
  v16 = *(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);

  v15 = (v16 + 32) & ~v16;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v15, v2);

  v3 = v1[6];
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v15 + v3, v4);

  v7 = v0 + v15 + v1[9];

  v8 = type metadata accessor for EpisodeMetadata(0);
  v9 = *(v8 + 44);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v8 + 60);
  if (!(*(v5 + 48))(v7 + v11, 1, v4))
  {
    v6(v7 + v11, v4);
  }

  if ((*(v0 + v15 + v1[10] + 24) - 1) >= 4)
  {
  }

  v12 = (((((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v12 + 8, v16 | 7);
}

uint64_t sub_10004DE60()
{
  v1 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100004590(v0 + 16);
  if (*(v0 + 64))
  {
  }

  v5 = v0 + v3 + *(v1 + 20);

  v6 = *(v5 + 32);
  if (v6 != 255)
  {
    sub_1001C1140(*(v5 + 16), *(v5 + 24), v6);
  }

  v7 = *(v5 + 64);
  if (v7 != 255)
  {
    sub_1001C1158(*(v5 + 56), v7);
  }

  v8 = *(v5 + 80);
  if (v8 != 255)
  {
    sub_1001C1158(*(v5 + 72), v8);
  }

  v9 = *(v5 + 96);
  if (v9 != 255)
  {
    sub_1001C1158(*(v5 + 88), v9);
  }

  v10 = *(v5 + 112);
  if (v10 != 255)
  {
    sub_1001C1158(*(v5 + 104), v10);
  }

  v11 = *(v5 + 128);
  if (v11 != 255)
  {
    sub_1001C1158(*(v5 + 120), v11);
  }

  v12 = *(type metadata accessor for ArtworkModel() + 44);
  v13 = type metadata accessor for ArtworkCrop();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  v14 = *(v1 + 32);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 8))(v0 + v3 + v14, v15);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004E0EC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004E188()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E1C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E1F8()
{
  v1 = *(type metadata accessor for CarPlayTemplateInfo(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 97) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  else
  {
    sub_100004590(v0 + 56);
  }

  v5 = v0 + v3;
  v6 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  if ((*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    goto LABEL_5;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload != 8)
      {
        if (EnumCaseMultiPayload != 9)
        {
          goto LABEL_5;
        }

LABEL_17:

        goto LABEL_5;
      }

      v11 = type metadata accessor for URL();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v0 + v3, 1, v11))
      {
        (*(v12 + 8))(v0 + v3, v11);
      }

      sub_100168088(&unk_100575B10);
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10019C0A4(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64));
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (*(v5 + 40))
    {
    }

    else
    {
      sub_100004590(v0 + v3);
    }
  }

  else
  {

    v8 = *(sub_100168088(&unk_10057C230) + 48);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

LABEL_5:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004E52C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E56C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E5A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E5E0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004E638()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E670()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E6A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E700()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E74C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004E80C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ReevaluateAutoDownloadsIntent();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10004E8B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ReevaluateAutoDownloadsIntent();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004E95C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E994()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004E9D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004EA10()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004EA58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004EA90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004EAD8()
{
  v1 = type metadata accessor for MediaRequest.ContentType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 88) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, ((((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10004EBE0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004EC20()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004EC80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004ECB8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004ED08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004ED48()
{
  sub_100004590(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004ED80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004EDBC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004EE0C()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004EEE4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004EF34()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004EF74()
{
  v1 = *(type metadata accessor for PageContent() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v7 = type metadata accessor for PageID();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
      v8 = *(type metadata accessor for ModernPage() + 20);
      v9 = type metadata accessor for PageMetrics();
      (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

      break;
    case 2:
      v6 = type metadata accessor for ContentUnavailablePage();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      break;
    case 1:

      break;
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10004F138()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004F184()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004F1CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004F204()
{
  v1 = type metadata accessor for MetricsPipeline();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for MetricsData();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10004F390()
{
  v1 = type metadata accessor for ShowSettingsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100004590(v0 + v3);

  v5 = *(v1 + 32);
  sub_100168088(&qword_100577830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004F518()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004F560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 44);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_100168088(&qword_100574760);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 60);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_10004F69C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100168088(&qword_100574760);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10004F7CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for Date();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = type metadata accessor for EpisodeMetadata(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10004F944(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for EpisodeMetadata(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

id sub_10004FABC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

uint64_t sub_10004FAF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004FB28()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004FB60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004FB98()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004FBF0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004FC40()
{
  v1 = type metadata accessor for ShowOffer();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004FCF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004FD6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004FDA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004FDE0()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10004FE20()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004FE78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004FEB0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004FEF0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004FF40()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004FF78()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004FFC8()
{

  sub_1001D869C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100050014()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005004C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050084()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000500DC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050114()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005015C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100168088(&qword_100574040);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100050218(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100168088(&qword_100574040);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000502C8()
{
  v1 = sub_100168088(&qword_10057AB40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  sub_100004590(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000503C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000503FC()
{
  v1 = *(type metadata accessor for PageContent() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v7 = type metadata accessor for PageID();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
      v8 = *(type metadata accessor for ModernPage() + 20);
      v9 = type metadata accessor for PageMetrics();
      (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

      break;
    case 2:
      v6 = type metadata accessor for ContentUnavailablePage();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      break;
    case 1:

      break;
  }

  return _swift_deallocObject(v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1000505BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000505F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005062C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005066C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000506AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000506EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005073C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005078C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkModel();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000508B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000509E4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100050A2C()
{
  v1 = *(type metadata accessor for PageContent() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v7 = type metadata accessor for PageID();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
      v8 = *(type metadata accessor for ModernPage() + 20);
      v9 = type metadata accessor for PageMetrics();
      (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

      break;
    case 2:
      v6 = type metadata accessor for ContentUnavailablePage();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      break;
    case 1:

      break;
  }

  return _swift_deallocObject(v0, ((v3 + v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100050C04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100050C3C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100050C8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100050D08()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050D40()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100050D78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100050DE0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100050E68()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100050EA8()
{
  v1 = *(type metadata accessor for EpisodePlayState() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v5 = type metadata accessor for Date();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  sub_100004590(v0 + v7);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

uint64_t sub_100051014()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005104C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1000510A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000510E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredJumpBackwardInterval];
  *a2 = v4;
  return result;
}

id sub_100051128@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredJumpForwardInterval];
  *a2 = v4;
  return result;
}

id sub_100051170@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPlaying];
  *a2 = result;
  return result;
}

uint64_t sub_1000511C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100051208()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100051240()
{
  v1 = type metadata accessor for ArtworkRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  sub_100004590(v0 + 40);
  sub_100004590(v0 + 80);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

char *sub_100051320()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100168088(&qword_1005793B0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100051350()
{
  v1 = type metadata accessor for ArtworkRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_100004590(v0 + 40);
  sub_100004590(v0 + 80);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100051438()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100051470()
{
  sub_100168088(&qword_100579530);
  UnsafeMutablePointer.deinitialize(count:)();
  sub_100168088(&qword_100579538);
  UnsafeMutablePointer.deinitialize(count:)();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000514E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100051538()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000515C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowEntity();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10005162C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowEntity();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000516A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100051730()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100051778()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000517B0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000517F8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005185C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100168088(&qword_100579D40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100051918(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100168088(&qword_100579D40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100051A28()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100051A60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100051AB8()
{
  v1 = sub_100168088(&unk_10057A0C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100051B98()
{
  swift_unknownObjectRelease();

  sub_10026BE2C(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100051C00()
{
  v1 = sub_100168088(&unk_10057A0E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100051CEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100051D2C()
{
  v1 = sub_100168088(&qword_10057A148);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 | 4, v3 | 7);
}

uint64_t sub_100051DD4()
{
  v1 = sub_100168088(&qword_10057A148);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100051E68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100051EA8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100051EE0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100051F30()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100051F70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100051FB8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100051FF0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for MediaLibraryPid();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_100052158()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100004590(v0 + 48);
  (*(v2 + 8))(v0 + v4, v1);
  sub_100004590(v0 + v5);

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_100052248()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100004590(v0 + 32);
  (*(v2 + 8))(v0 + v4, v1);
  sub_100004590(v0 + v5);

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_100052338()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100052380()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000523D0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100052420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkModel();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100052544(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100052668()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000526A0()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000526E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052720()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052760()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000527A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000527D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052810()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100052858()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000528E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052980()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000529C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100168088(&qword_100574040);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100052A7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100168088(&qword_100574040);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100052B2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052B64()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100052BBC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100052CC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052D00()
{
  v1 = type metadata accessor for PlaybackIntent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100052DC4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052DFC()
{

  if (*(v0 + 56))
  {
    sub_100004590(v0 + 32);
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100052E44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052E84()
{
  v1 = type metadata accessor for PreviewingPresentationHint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_100052F5C()
{
  v1 = type metadata accessor for PreviewingPresentationHint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10005303C()
{

  if (*(v0 + 64))
  {
    sub_100004590(v0 + 40);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100053090()
{
  v1 = type metadata accessor for PlaybackController.TransportCommand();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100053170()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000531D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053208()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053250()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053298()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000532D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053318()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053364(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057C158);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000533D4()
{
  v1 = type metadata accessor for ShowSettingsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100004590(v0 + v3);

  v5 = *(v1 + 32);
  sub_100168088(&qword_100577830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005355C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000535A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000535DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005362C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053664()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000536A0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000536F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkModel();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100053814(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100053950()
{
  v1 = *(sub_100168088(&qword_100574040) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100053A7C()
{
  v1 = *(type metadata accessor for PageContent() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = *(sub_100168088(&qword_100574040) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(v5 + 64);

  v9 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v12 = type metadata accessor for PageID();
      (*(*(v12 - 8) + 8))(v9, v12);
      v13 = *(type metadata accessor for ModernPage() + 20);
      v14 = type metadata accessor for PageMetrics();
      (*(*(v14 - 8) + 8))(v9 + v13, v14);

      break;
    case 2:
      v11 = type metadata accessor for ContentUnavailablePage();
      (*(*(v11 - 8) + 8))(v9, v11);
      break;
    case 1:

      break;
  }

  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v7, 1, v15))
  {
    (*(v16 + 8))(v0 + v7, v15);
  }

  return _swift_deallocObject(v0, ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

uint64_t sub_100053D30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053D68()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100053DBC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100053E04()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100053E54()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053E8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053EC4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053F0C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100053F6C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100053FC4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053FFC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100054040()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100054118()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054158()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100054198()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000541E8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100054238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkModel();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10005435C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100054484()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000544C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100054510()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100054560()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054598()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000545F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100054628()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054688()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000546C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_100054728()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100054760()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000547A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000547D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100054834()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005486C()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100054938()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005497C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000549C8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100054A14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054A4C()
{
  v1 = type metadata accessor for PlayerItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100054B38()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054B70()
{
  v1 = type metadata accessor for PodcastStateModel();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100054C70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054CA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054CE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054D18()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100054D54()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100054D98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100054E10()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100054E7C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100054EBC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100054EF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100054F2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054F64()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100054FAC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100054FFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PlayStationIntent();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000550A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PlayStationIntent();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005519C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000551DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100055214()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100055268()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000552A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000552D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100055318()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100055358()
{
  v1 = type metadata accessor for EpisodeListSettings();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100055438()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100055494()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000554D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100055510()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100055560()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000555B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkModel();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000556D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000557F8@<X0>(uint64_t *a1@<X8>)
{
  sub_100168088(&unk_10057FAC0);
  result = FRPOutput.totalCount.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100055838()
{

  sub_10019C0A4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100055894()
{
  v1 = sub_100168088(&unk_10057FAC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_10019C0A4(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40), *(v0 + v5 + 48), *(v0 + v5 + 56), *(v0 + v5 + 64));

  return _swift_deallocObject(v0, ((v5 + 73) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000559A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000559E4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100055A54()
{
  swift_unknownObjectRelease();
  sub_1001CEA68(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100055AA0()
{
  sub_1001CEA68(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100055AE8()
{
  StationIntent = type metadata accessor for CreateStationIntent();
  v2 = *(StationIntent - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, StationIntent);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100055BAC()
{
  v1 = type metadata accessor for DeleteStationIntent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100055C84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100055CBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100055CF4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100055D34()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100055D84()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100055DC4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100055DFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100055E34()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100055E74()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100055EB8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100055F00()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100055F48()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100055F94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100055FCC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056004()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005603C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005608C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000560C4()
{
  v1 = type metadata accessor for PodcastsURLEpisodeParameters();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100056180()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000561B8()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005620C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005624C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005629C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100056348(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000563EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056424()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100056464()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000564A4()
{

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100056504()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005653C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005657C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100056628(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000566CC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100056724(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_1005809F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100056794@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000567F8@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.lineSpacing.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100056854()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000568D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005691C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005695C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000569A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000569E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056A18()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056A50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056A9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056ADC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100056B24()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056B68()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100056BC0()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_10035BE24(*(v0 + 16), v1 & 1);
  }

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100056C2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056C64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056DBC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100056E18()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100056E58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056E90()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056ED8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100056F20()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056F68()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100056FCC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057004()
{

  sub_1001D869C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100057070()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000570A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000570E8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100057120()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000571B0()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005726C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000572B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000572EC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005733C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for ActionMetrics();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1000573E0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for ActionMetrics();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100057480()
{
  v1 = type metadata accessor for ShowSettingsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100004590(v0 + v3);

  v5 = *(v1 + 32);
  sub_100168088(&qword_100577830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100057608()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057640()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMetrics();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000576E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMetrics();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100057754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100168088(&unk_100575AE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xE)
    {
      return v10 - 13;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100057818(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100168088(&unk_100575AE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 13;
  }

  return result;
}

uint64_t sub_100057914()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005794C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005798C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000579CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057A0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057A74()
{
  v1 = type metadata accessor for StationSortOrder();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100057B58()
{
  sub_10019C1BC(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100057B94()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057BF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057C50()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057C90()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100057CD8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057D28()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057D74()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100057DB4()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100057E18()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100057E70()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057EB8()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057F00()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100057FB0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057FE8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058034()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000580F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058128()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058160()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000581A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000581DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005821C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058254()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058298(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ArtworkModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for URL();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000583C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ArtworkModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for URL();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1000584F0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100058540()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058578()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000585C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000585FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OpenTranscriptIntent();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000586B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OpenTranscriptIntent();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100058770()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000587E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058824()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005885C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10005889C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100058948(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000589EC()
{
  v1 = type metadata accessor for Models.AlertAction.Button();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100058DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100058DBC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained textSettingChanged:*(a1 + 32) value:v3];
}

void sub_1000593F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_10005940C(uint64_t a1, void *a2)
{
  [a2 sizeThatFits:{*(a1 + 40), *(a1 + 48)}];
  v4 = *(*(a1 + 32) + 8);
  result = v3 + 30.0 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

void sub_100059528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGFloat sub_100059540(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  [*(a1 + 32) bounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6 + 30.0;
  [*(a1 + 32) bounds];
  Height = CGRectGetHeight(v13);
  v9 = *(*(*(a1 + 40) + 8) + 24);
  [v3 setFrame:{v9, 0.0, v7, Height}];

  v14.origin.y = 0.0;
  v14.origin.x = v9;
  v14.size.width = v7;
  v14.size.height = Height;
  MaxX = CGRectGetMaxX(v14);
  v11 = *(*(a1 + 40) + 8);
  result = MaxX + *(v11 + 24);
  *(v11 + 24) = result;
  return result;
}

void sub_1000597D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100059804(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 availableActions];

  [WeakRetained showActionSheetWithActions:v7 fromButton:v5];
}

id sub_10005989C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [objc_opt_class() moreIcon];

  v3 = [MTTouchInsetsButton buttonWithType:0];
  [v3 setImage:v2 forState:0];
  [v3 setTouchInsets:{-8.0, -12.0, -8.0, -12.0}];
  [v3 sizeToFit];

  return v3;
}

void sub_100059978(id a1)
{
  v1 = [UIImage imageNamed:@"more"];
  v2 = +[UIColor clearColor];
  v5 = [UIImage image:v1 inRect:v2 withBacking:0 opaque:0.0 scale:0.0, 24.0, 28.0, 0.0];

  v3 = [v5 imageWithRenderingMode:2];
  v4 = qword_100583A10;
  qword_100583A10 = v3;
}

void sub_100059CD8(uint64_t a1)
{
  v2 = +[MTApplication appController];
  [v2 handleiTMSUrlScheme:*(a1 + 32)];
}

void sub_100059D30(uint64_t a1)
{
  v2 = +[MTApplication appController];
  [v2 handlePodcastsUrlScheme:*(a1 + 32)];
}

void sub_10005A128(id a1)
{
  v1 = +[MTListenNowManager sharedInstance];
  [v1 startObservingChanges];
}

void sub_10005A170(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = kMTExternalCookiesHaveBeenPurged;
  v3 = [v1 BOOLForKey:kMTExternalCookiesHaveBeenPurged];

  if ((v3 & 1) == 0)
  {
    +[MTURLSessionManager purgeExternalCookies];
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setBool:1 forKey:v2];
  }
}

void sub_10005A220(uint64_t a1)
{
  v2 = +[PFClientUtil isRunningOnHomepod];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 siriDonator];
    [v4 startDonation];
  }

  else
  {
    v4 = [v3 siriDumper];
    [v4 dumpPlist];
  }
}

void sub_10005A298(id a1)
{
  v1 = +[MTPodcastDerivedPropertyObserver sharedInstance];
  [v1 startObserving];

  v2 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  [v2 start];
}

void sub_10005A538(id a1)
{
  v1 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  [v1 applicationDidEnterBackground];
}

void sub_10005A7B4(id a1)
{
  v1 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  [v1 applicationWillEnterForeground];
}

void sub_10005A7FC(id a1)
{
  v2 = +[ICUserIdentity activeAccount];
  v1 = [MPCloudController controllerWithUserIdentity:v2];
  [v1 processPendingKeyInvalidations];
}

uint64_t sub_10005ABE0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) processNotification:*(a1 + 40)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_10005AF30(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005B148;
  v15[3] = &unk_1004D8358;
  v15[4] = *(a1 + 32);
  [*(a1 + 32) setFairPlayMigrationBackgroundTask:{objc_msgSend(v2, "beginBackgroundTaskWithName:expirationHandler:", @"com.apple.podcasts.FairPlayMigration", v15)}];

  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = +[PFFairPlayRolloutController sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005B1B4;
  v13[3] = &unk_1004D84F8;
  v5 = v3;
  v14 = v5;
  [v4 didRollbackStatusChangeWithCompletion:v13];

  dispatch_group_enter(v5);
  v6 = +[PFFairPlayMigrationController sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005B338;
  v11[3] = &unk_1004D8358;
  v12 = v5;
  v7 = v5;
  [v6 migrateIfNecessaryWithCompletion:v11];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B340;
  block[3] = &unk_1004D8520;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v10 = v8;
  dispatch_group_notify(v7, &_dispatch_main_q, block);
}

id sub_10005B148(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:{objc_msgSend(*(a1 + 32), "fairPlayMigrationBackgroundTask")}];

  v3 = *(a1 + 32);

  return [v3 setFairPlayMigrationBackgroundTask:UIBackgroundTaskInvalid];
}

void sub_10005B1B4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[PFFairPlayMigrationController sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10005B280;
    v5[3] = &unk_1004D8358;
    v6 = *(a1 + 32);
    [v3 rollbackIfNecessaryWithCompletion:v5];
  }

  else
  {
    v4 = *(a1 + 32);

    dispatch_group_leave(v4);
  }
}

void sub_10005B280(uint64_t a1)
{
  v2 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MTAppDelegate_Shared]: Processing pending key invalidations.", v5, 2u);
  }

  v3 = +[ICUserIdentity activeAccount];
  v4 = [MPCloudController controllerWithUserIdentity:v3];
  [v4 processPendingKeyInvalidations];

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_10005B340(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:{objc_msgSend(*(a1 + 32), "fairPlayMigrationBackgroundTask")}];

  [*(a1 + 32) setFairPlayMigrationBackgroundTask:UIBackgroundTaskInvalid];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10005B5CC(id a1)
{
  v1 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[Foreground Sync] Application is Active! Starting all processors", v4, 2u);
  }

  v2 = +[PFDeferredLaunchTaskCoordinator sharedInstance];
  [v2 deferWork:&stru_1004D8560];

  v3 = +[PFDeferredLaunchTaskCoordinator sharedInstance];
  [v3 deferWork:&stru_1004D85C0];
}

void sub_10005B678(id a1)
{
  v1 = +[PFDownloadConsistency application];
  [v1 beginEnforcementWithCompletionHandler:&stru_1004D85A0];
}

void sub_10005B6C8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _MTLogCategoryDatabase();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v2;
      v5 = "Encountered error enforcing database consistency: %@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, v5, &v9, v8);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    v5 = "Finished checking database consistency";
    v6 = v4;
    v7 = OS_LOG_TYPE_INFO;
    v8 = 2;
    goto LABEL_6;
  }
}

void sub_10005B7AC(id a1)
{
  v1 = +[MTProcessorManager sharedInstance];
  [v1 startAllProcessors];

  v2 = +[(MTBaseProcessor *)MTFeedUpdateProcessor];
  [v2 startIfNeeded];

  v3 = +[(MTBaseProcessor *)MTPlaylistQueryManager];
  [v3 updateAllPlaylistsWithCompletion:&stru_1004D85E0];
}

void sub_10005B840(id a1)
{
  v1 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Enqueuing hidden podcasts deletion operation", v4, 2u);
  }

  v2 = +[MTLibrary sharedInstance];
  [v2 cleanUpOldHiddenPodcasts];

  v3 = +[MTLibrary sharedInstance];
  [v3 cleanUpNeutralInterests];
}

void sub_10005B8EC(id a1)
{
  v1 = +[MTForegroundSyncUtil sharedInstance];
  [v1 updatePlaybackSettingIfNeeded];

  v2 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  [v2 syncEverything];

  v3 = +[_TtC18PodcastsFoundation26AnalyticsIdentifierManager sharedInstance];
  [v3 updateIdentifiers];

  +[MTMusicSubscriptionInfoLoader deleteMusicSubscriptionInfoIfNeeded];
  v4 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v4 setInteger:0 forKey:kMTUserAppSessionsUserDefaultKey];
}

id sub_10005BAB0(uint64_t a1)
{
  v2 = objc_alloc_init(NSOperationQueue);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  [*(*(a1 + 32) + 24) setMaxConcurrentOperationCount:1];
  v5 = *(*(a1 + 32) + 24);

  return [v5 setName:@"com.apple.podcasts.libraryupdate"];
}

void sub_10005C6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005C6F8(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void sub_10005C758(uint64_t a1)
{
  v2 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%lld Feed Update Notification: Processed.", &v5, 0xCu);
  }

  v4 = +[UIApplication sharedApplication];
  [v4 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void sub_10005CADC(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsInEntity:kMTPodcastEntityName predicate:*(a1 + 40) propertiesToFetch:&__NSArray0__struct limit:1];
  v3 = [v2 firstObject];

  if (v3)
  {
    [v3 setFeedUpdateNeedsRetry:1];
    v4 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v10 = 134217984;
      v11 = v5;
      v6 = "Retry flag set for podcast with store id %lld";
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v6, &v10, v9);
    }
  }

  else
  {
    v4 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      v6 = "Failed trying to set retry flag for a nil podcast";
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 2;
      goto LABEL_6;
    }
  }
}

void sub_10005CD0C(uint64_t a1)
{
  v2 = [_TtC18PodcastsFoundation11SiriDonator alloc];
  v6 = objc_alloc_init(MTBackgroundTaskManager);
  v3 = [v2 initWithBackgroundTaskManager:v6];
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  *(v4 + 64) = v3;
}

id sub_10005CF80(uint64_t a1, void *a2)
{
  v3 = [a2 iTunesMatchEnabled];
  result = [*(a1 + 32) iTunesMatchEnabled];
  if (v3 != result)
  {
    [*(a1 + 32) setITunesMatchEnabled:v3];
    v5 = *(a1 + 32);

    return [v5 updateiTunesPlaylistForiTunesMatchState];
  }

  return result;
}

void sub_10005D0D0(uint64_t a1)
{
  v2 = [*(a1 + 32) playlistForUuid:kPlaylistITunesPlaylistUuid];
  if (*(a1 + 40) != [v2 hidden])
  {
    [v2 setHidden:?];
    [*(a1 + 32) saveInCurrentBlock];
  }
}

void sub_10005D2CC(uint64_t a1)
{
  v2 = kMTEpisodeEntityName;
  v3 = *(a1 + 32);
  v4 = [NSPredicate predicateWithFormat:@"%K IN %@", kEpisodeUuid, *(a1 + 40)];
  v5 = [v3 objectsInEntity:v2 predicate:v4 sortDescriptors:0 returnsObjectsAsFaults:0];

  [*(a1 + 48) _removeDownloadAssetsForEpisodes:v5 shouldKeep:*(a1 + 56) forced:0];
}

void sub_10005D480(uint64_t a1)
{
  v2 = kMTEpisodeEntityName;
  v3 = *(a1 + 32);
  v4 = [NSPredicate predicateWithFormat:@"%K IN %@", kEpisodeStoreTrackId, *(a1 + 40)];
  v5 = [v3 objectsInEntity:v2 predicate:v4 sortDescriptors:0 returnsObjectsAsFaults:0];

  [*(a1 + 48) _removeDownloadAssetsForEpisodes:v5 shouldKeep:*(a1 + 56) forced:0];
}

void sub_10005D630(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = kMTEpisodeEntityName;
  v4 = [MTEpisode predicateForHLSDownloadedExcludeHidden:0];
  v5 = [v2 objectsInEntity:v3 predicate:v4 sortDescriptors:0];

  [*(a1 + 40) _removeDownloadAssetsForEpisodes:v5 shouldKeep:0 forced:1];
  [*(a1 + 32) saveInCurrentBlock];
}

uint64_t sub_10005DB54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 && (*(a1 + 40) & 1) == 0)
  {
    v5 = (*(v4 + 16))(v4, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10005DFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005DFE8(uint64_t a1)
{
  v2 = [MTPodcast predicateForPodcastUUID:*(a1 + 32)];
  v3 = +[MTPodcast predicateForSubscribedAndNotHidden];
  v4 = [v2 AND:v3];

  if ([*(a1 + 40) countOfObjectsInEntity:kMTPodcastEntityName predicate:v4])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10005E26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005E284(uint64_t a1)
{
  v2 = +[MTPodcast predicateForSubscribedAndNotHidden];
  v3 = [MTPodcast predicateForIdentifer:*(a1 + 32)];
  v5 = [v2 AND:v3];

  v4 = [*(a1 + 40) objectsInEntity:kMTPodcastEntityName predicate:v5 sortDescriptors:0];
  if ([v4 count])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10005E540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10005E564(uint64_t a1)
{
  v8 = [MTPodcast predicateForPodcastWithFeedUrl:*(a1 + 32)];
  v2 = [*(a1 + 40) objectsInEntity:kMTPodcastEntityName predicate:? sortDescriptors:?];
  v3 = [v2 firstObject];
  v4 = [v3 uuid];
  v5 = [v4 length];

  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if ([v3 subscribed])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      v6 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
      v7 = [v3 uuid];
      [v6 enableSubscriptionOnPodcastUUID:v7 from:3];
    }
  }
}

void sub_10005E684(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setUrl:*(a1 + 32)];
  [v2 setLocation:@"pssf"];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005E760;
  v4[3] = &unk_1004D8838;
  v5 = *(a1 + 40);
  [v2 setCompletion:v4];
  v3 = +[MTSubscriptionManager sharedInstance];
  [v3 subscribeToPodcastWithParams:v2];
}

uint64_t sub_10005E760(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10005EB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10005EB48(uint64_t a1)
{
  v8 = [MTPodcast predicateForIdentifer:*(a1 + 32)];
  v2 = [*(a1 + 40) objectsInEntity:kMTPodcastEntityName predicate:? sortDescriptors:?];
  v3 = [v2 firstObject];
  v4 = [v3 uuid];
  v5 = [v4 length];

  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if ([v3 subscribed])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      v6 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
      v7 = [v3 uuid];
      [v6 enableSubscriptionOnPodcastUUID:v7 from:3];
    }
  }
}

void sub_10005EC68(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) feedUrl];
  [v2 setUrl:v3];

  [v2 setLocation:@"pssf"];
  v4 = [*(a1 + 32) storeIdentifier];
  [v2 setStoreCollectionId:{objc_msgSend(v4, "longLongValue")}];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005ED88;
  v6[3] = &unk_1004D8838;
  v7 = *(a1 + 40);
  [v2 setCompletion:v6];
  v5 = +[MTSubscriptionManager sharedInstance];
  [v5 subscribeToPodcastWithParams:v2];
}

uint64_t sub_10005ED88(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10005EE84(uint64_t a1)
{
  v8 = [MTPodcast predicateForIdentifer:*(a1 + 32)];
  v2 = [*(a1 + 40) objectsInEntity:kMTPodcastEntityName predicate:? sortDescriptors:?];
  v3 = [v2 firstObject];
  v4 = [v3 uuid];
  v5 = [v4 length];

  if (v5)
  {
    v6 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
    v7 = [v3 uuid];
    [v6 disableSubscriptionOnPodcastUUID:v7 from:3];
  }
}

void sub_10005F720(id a1, UNNotificationSettings *a2)
{
  v2 = a2;
  v3 = [(UNNotificationSettings *)v2 authorizationStatus]!= UNAuthorizationStatusNotDetermined;
  v4 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v4 setBool:v3 forKey:kMTDidPromptForNotificationsPermissionsKey];

  v5 = [(UNNotificationSettings *)v2 authorizationStatus];
  v6 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v6 setBool:v5 == 2 forKey:kMTNotificationStatusIsAuthorizedKey];
}

void sub_10005F878(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSError *)v4 domain];
    v10[0] = 67109890;
    v10[1] = v3;
    v11 = 2112;
    v12 = v6;
    v13 = 1024;
    v14 = [(NSError *)v4 code];
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User notifications request granted %x with error %@ - %d - %@", v10, 0x22u);
  }

  v7 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v7 setBool:1 forKey:kMTDidPromptForNotificationsPermissionsKey];

  v8 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v8 setBool:v3 forKey:kMTNotificationStatusIsAuthorizedKey];

  if (v3)
  {
    v9 = +[MTNotificationBadgeMigrationController sharedInstance];
    [v9 performMigrationIfNecessary];
  }
}

void sub_10005FBD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MTLogCategoryNotifications();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Showing the User the notifications pre-warming sheet.", buf, 2u);
    }

    v4 = [*(a1 + 32) preWarmSheetMetricsOverlayDictionary];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005FCFC;
    v6[3] = &unk_1004D8980;
    v7 = v3;
    [v4 addFinishBlock:v6];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to receive a AMSUserNotificationAuthorizationResult.", buf, 2u);
  }
}

void sub_10005FCFC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 request];
    [v5 setMetricsOverlay:v4];
  }

  v6 = objc_alloc_init(NSDate);
  v7 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v7 setObject:v6 forKey:kMTNotificationsPreWarmSheetShownDateKey];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005FE04;
  block[3] = &unk_1004D8358;
  v9 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10005FE04(uint64_t a1)
{
  v7 = +[AMSUIDynamicViewController createBagForSubProfile];
  v2 = +[UIViewController mt_rootViewController];
  v3 = [AMSUIEngagementTask alloc];
  v4 = [*(a1 + 32) request];
  v5 = [v3 initWithRequest:v4 bag:v7 presentingViewController:v2];

  v6 = [v5 presentEngagement];
  [v6 addFinishBlock:&stru_1004D8938];
}

void sub_10005FED4(id a1, AMSEngagementResult *a2, NSError *a3)
{
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v3 setBool:1 forKey:kMTDidPromptForNotificationsPermissionsKey];

  v4 = +[UNUserNotificationCenter currentNotificationCenter];
  [v4 getNotificationSettingsWithCompletionHandler:&stru_1004D8958];
}

void sub_10005FF58(id a1, UNNotificationSettings *a2)
{
  v2 = [(UNNotificationSettings *)a2 authorizationStatus]== 2;
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v3 setBool:v2 forKey:kMTNotificationStatusIsAuthorizedKey];
}

void sub_10006015C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 userId];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_1004F3018;
    }

    v10 = v9;

    v11 = [v5 clientId];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_1004F3018;
    }

    v14 = v13;

    [*(a1 + 32) setValue:v10 forKey:@"userId"];
    [*(a1 + 32) setValue:v14 forKey:@"clientId"];
  }

  else
  {
    v15 = _MTLogCategoryMetrics();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v6 description];
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to fetch AnalyticsUserIdentifier from AMS for notification manager with error %@", &v17, 0xCu);
    }
  }

  [*(a1 + 40) finishWithResult:*(a1 + 32)];
}

void sub_100060468(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 authorizationStatus] == 2)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v3 hasEnabledSettings]);
  }

  else
  {
    v4 = _MTLogCategoryNotifications();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "canSendNotifications is NO (reason: not authorized)", v5, 2u);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
  }
}

void sub_100060868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1000608A0(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

  *(*(*(a1 + 32) + 8) + 24) = UIBackgroundTaskInvalid;
}

void sub_100060900(void *a1)
{
  v2 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[DONE] processing notifications for '%@'", &v9, 0xCu);
  }

  v4 = a1[5];
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = +[UIApplication sharedApplication];
  [v5 endBackgroundTask:*(*(a1[6] + 8) + 24)];

  *(*(a1[6] + 8) + 24) = UIBackgroundTaskInvalid;
  v6 = _MTLogCategoryNotifications();
  v7 = v6;
  v8 = a1[7];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "ProcessNotifications", "", &v9, 2u);
  }
}

void sub_100060A5C(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && (a2 & 1) != 0)
  {
    v6 = [WeakRetained workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100060B40;
    block[3] = &unk_1004D8A70;
    v7 = *(a1 + 48);
    block[4] = v5;
    v10 = v7;
    v9 = *(a1 + 32);
    dispatch_async(v6, block);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100060B40(uint64_t a1)
{
  v2 = [*(a1 + 32) computeNotificationsWithSchedulingOptions:*(a1 + 48)];
  [*(a1 + 32) markEpisodesAsNotified:v2];
  v3 = dispatch_get_global_queue(21, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100060C2C;
  v6[3] = &unk_1004D8A48;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v2;
  v9 = *(a1 + 48);
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

void sub_100060DA0(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = a1;
  v3 = [*(a1 + 32) podcasts];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v22 + 1) + 8 * i) episodes];
        v9 = NSStringFromSelector("uuid");
        v10 = [v8 valueForKey:v9];

        if (v10)
        {
          [v2 addObjectsFromArray:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v11 = [NSPredicate predicateWithFormat:@"%K in %@", kEpisodeUuid, v2];
    v12 = [*(v17 + 40) objectsInEntity:kMTEpisodeEntityName predicate:v11 sortDescriptors:0];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v18 + 1) + 8 * j) setSentNotification:1];
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }

    [*(v17 + 40) saveInCurrentBlock];
  }
}

void sub_1000618E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10006190C(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      [*(a1 + 32) removeObserver:?];
      v4 = *(*(a1 + 56) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;
    }

    v6 = +[UIApplication sharedApplication];
    [v6 endIgnoringInteractionEvents];

    v7 = +[_TtC8Podcasts44MTNotificationSettingsPresentationController shared];
    [v7 presentModalWithHighlightedPodcastUuid:*(a1 + 40)];
  }
}

void sub_100061F14(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openURL:*(a1 + 32) withOptions:0];
}

void sub_100062314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100062334(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void sub_100062394(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void sub_1000627A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000627F8(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void sub_100062858(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void sub_100062B2C(void *a1)
{
  v2 = kMTEpisodeEntityName;
  v3 = a1[4];
  v4 = a1[5];
  v5 = [MTEpisode sortDescriptorsForPubDateAscending:1];
  v6 = [v3 objectsInEntity:v2 predicate:v4 sortDescriptors:v5];

  v37 = a1;
  v7 = [v6 filteredArrayUsingPredicate:a1[6]];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v7;
  v36 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v36)
  {
    v35 = *v40;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v40 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        if ((v37[8] & 2) == 0)
        {
          v10 = [*(*(&v39 + 1) + 8 * i) podcast];
          v11 = [v10 notifications];

          if (!v11)
          {
            continue;
          }

          v12 = [v9 podcast];
          v13 = [v12 subscribed];

          if (!v13)
          {
            continue;
          }
        }

        v14 = [v9 uuid];
        v34 = [v9 storeTrackId];
        v15 = [v9 bestTitle];
        v38 = [v9 bestSummary];
        [v9 pubDate];
        v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        [v9 duration];
        v18 = v17;
        v33 = [v9 byteSize];
        v19 = [v9 isVideo];
        v20 = [v9 podcast];
        v21 = [v20 uuid];

        v22 = [v9 podcast];
        v23 = [v22 title];

        v24 = [v9 podcast];
        v25 = [v24 storeCollectionId];

        v26 = +[MTPodcast allPossibleEpisodeListSortOrderProperties];
        v27 = [v9 dictionaryWithValuesForKeys:v26];

        if (v14 && v15 && v21 && v23)
        {
          v28 = [v37[7] podcastForUuid:v21];
          if (!v28)
          {
            v28 = [v37[7] addPodcastWithTitle:v23 uuid:v21];
          }

          LOBYTE(v31) = v19;
          v29 = [[MTNotificationEpisode alloc] initWithUuid:v14 storeTrackId:v34 bestTitle:v15 bestSummary:v38 pubDate:v16 duration:v33 byteSize:v18 isVideo:v31 sortPropertyValues:v27 podcastUuid:v21 podcastTitle:v23 podcastStoreCollectionId:v25];
          [v28 addEpisode:v29];
          v30 = _MTLogCategoryNotifications();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v44 = v34;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Adding episode for user notification item - episode %lld", buf, 0xCu);
          }
        }
      }

      v36 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v36);
  }
}

uint64_t sub_10006316C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100063184(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && a2 && ([*(a1 + 32) podcasts], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
    v6 = dispatch_group_create();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [*(a1 + 32) podcasts];
    v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          dispatch_group_enter(v6);
          v12 = *(a1 + 56);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1000633E4;
          v18[3] = &unk_1004D8358;
          v19 = v6;
          [WeakRetained scheduleLocalNotificationForPodcast:v11 schedulingOptions:v12 completion:v18];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v13 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000633EC;
    block[3] = &unk_1004D84D0;
    v17 = *(a1 + 40);
    dispatch_group_notify(v6, v13, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000635A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];

    v6 = NSTemporaryDirectory();
    v47[0] = v6;
    v47[1] = v5;
    v41 = v5;
    v7 = [NSArray arrayWithObjects:v47 count:2];
    v8 = [NSURL fileURLWithPathComponents:v7];
    v9 = [v3 pathExtension];
    v10 = [v8 URLByAppendingPathExtension:v9];

    v11 = +[NSFileManager defaultManager];
    v44 = 0;
    LODWORD(v7) = [v11 copyItemAtURL:v3 toURL:v10 error:&v44];

    v12 = v44;
    if (v7)
    {
      if (v12)
      {
        v13 = _MTLogCategoryNotifications();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to copy image to URL for notification with error: %@", buf, 0xCu);
        }
      }

      v14 = [UNNotificationContent mt_imageAttachmentForCacheKey:*(a1 + 32) imageURL:v10];
      if (v14)
      {
        [*(a1 + 40) addObject:v14];
      }
    }

    v39 = v12;
    v40 = v10;
    v15 = objc_alloc_init(UNMutableNotificationContent);
    v16 = [*(a1 + 48) title];
    [v15 setTitle:v16];

    v17 = [*(a1 + 48) author];
    v18 = [*(a1 + 48) album];
    v19 = [NSString stringWithFormat:@"%@ — %@", v17, v18];
    [v15 setSubtitle:v19];

    [v15 setAttachments:*(a1 + 40)];
    v20 = [MTNotificationEpisode alloc];
    v21 = [*(a1 + 48) episodeUuid];
    v22 = [*(a1 + 48) episodeStoreId];
    v23 = [*(a1 + 48) title];
    v24 = [*(a1 + 48) pubDate];
    [*(a1 + 48) duration];
    v26 = v25;
    v27 = [*(a1 + 48) isVideo];
    v28 = [*(a1 + 48) podcastUuid];
    v29 = [*(a1 + 48) author];
    LOBYTE(v38) = v27;
    v30 = -[MTNotificationEpisode initWithUuid:storeTrackId:bestTitle:bestSummary:pubDate:duration:byteSize:isVideo:sortPropertyValues:podcastUuid:podcastTitle:podcastStoreCollectionId:](v20, "initWithUuid:storeTrackId:bestTitle:bestSummary:pubDate:duration:byteSize:isVideo:sortPropertyValues:podcastUuid:podcastTitle:podcastStoreCollectionId:", v21, v22, v23, 0, v24, 0, v26, v38, &__NSDictionary0__struct, v28, v29, [*(a1 + 48) podcastStoreId]);

    [v15 mt_setUserInfoEpisode:v30];
    v31 = [*(a1 + 48) instanceIdentifier];
    v32 = [v31 UUIDString];
    v33 = [UNNotificationRequest mt_uniqueRequestIdentifierForPlayerItem:v32];

    v34 = [UNNotificationRequest requestWithIdentifier:v33 content:v15 trigger:0];
    v35 = _MTLogCategoryNotifications();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [*(a1 + 48) title];
      *buf = 138412290;
      v46 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Requesting to post player item notification for: %@", buf, 0xCu);
    }

    v37 = +[UNUserNotificationCenter currentNotificationCenter];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100063A84;
    v42[3] = &unk_1004D8C08;
    v43 = *(a1 + 48);
    [v37 addNotificationRequest:v34 withCompletionHandler:v42];
  }
}

void sub_100063A84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) title];
    v6 = [v3 domain];
    v7 = 138413058;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 1024;
    v12 = [v3 code];
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notification request for player item '%@'with error: %@ - %d - %@", &v7, 0x26u);
  }
}

void sub_100063FD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];

    v9 = NSTemporaryDirectory();
    v50[0] = v9;
    v50[1] = v8;
    v10 = [NSArray arrayWithObjects:v50 count:2];
    v11 = [NSURL fileURLWithPathComponents:v10];
    v12 = [v5 pathExtension];
    v13 = [v11 URLByAppendingPathExtension:v12];

    v14 = +[NSFileManager defaultManager];
    v47 = 0;
    LODWORD(v11) = [v14 copyItemAtURL:v5 toURL:v13 error:&v47];
    v15 = v47;

    if (!v11)
    {
      v24 = _MTLogCategoryNotifications();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = v15;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to copy image to URL for notification with error: %@", buf, 0xCu);
      }

      v25 = _MTLogCategoryNotifications();
      v16 = v25;
      v26 = *(a1 + 96);
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v26, "LOAD_NOTIFICATION_ARTWORK", "FAILED_COPY", buf, 2u);
      }

      goto LABEL_22;
    }

    v16 = [UNNotificationContent mt_imageAttachmentForCacheKey:*(a1 + 32) imageURL:v13];
    if (v16)
    {
      [*(a1 + 40) addObject:v16];
      v17 = _MTLogCategoryNotifications();
      v18 = v17;
      v19 = *(a1 + 96);
      if (v19 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v20 = "SUCCESS";
    }

    else
    {
      v27 = _MTLogCategoryNotifications();
      v18 = v27;
      v19 = *(a1 + 96);
      if (v19 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v27))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v20 = "FAILED_ATTACHMENT";
    }

    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v19, "LOAD_NOTIFICATION_ARTWORK", v20, buf, 2u);
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v21 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v6;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to load artwork for notification: %@", buf, 0xCu);
  }

  v22 = _MTLogCategoryNotifications();
  v8 = v22;
  v23 = *(a1 + 96);
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v23, "LOAD_NOTIFICATION_ARTWORK", "FAILED_LOAD", buf, 2u);
  }

LABEL_23:

  v28 = objc_alloc_init(UNMutableNotificationContent);
  v29 = [*(a1 + 48) identifier];
  [v28 setCategoryIdentifier:v29];

  v30 = [*(a1 + 48) identifier];
  [v28 setThreadIdentifier:v30];

  [v28 setTitle:*(a1 + 56)];
  [v28 setBody:*(a1 + 64)];
  if ([*(a1 + 40) count])
  {
    v31 = *(a1 + 40);
  }

  else
  {
    v31 = 0;
  }

  [v28 setAttachments:v31];
  [v28 setSummaryArgument:*(a1 + 72)];
  [v28 setSummaryArgumentCount:*(a1 + 104)];
  v32 = [*(a1 + 80) uuid];
  v33 = [*(a1 + 80) episodes];
  [v28 mt_setUserInfoPodcastUuid:v32 episodes:v33];

  v34 = [*(a1 + 80) uuid];
  v35 = [UNNotificationRequest mt_uniqueRequestIdentifierForPodcastUuid:v34];

  v36 = [UNNotificationRequest requestWithIdentifier:v35 content:v28 trigger:0];
  [v36 mt_setSchedulingOptions:*(a1 + 112)];
  v37 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [*(a1 + 80) descriptionForNotificationLogging];
    *buf = 138412290;
    v49 = v38;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Requesting to post notification for: %@", buf, 0xCu);
  }

  v39 = +[UNUserNotificationCenter currentNotificationCenter];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000645D4;
  v42[3] = &unk_1004D8C58;
  v40 = *(a1 + 72);
  v41 = *(a1 + 104);
  v43 = v40;
  v46 = v41;
  v44 = *(a1 + 80);
  v45 = *(a1 + 88);
  [v39 addNotificationRequest:v36 withCompletionHandler:v42];
}

void sub_1000645D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MTLogCategoryNotifications();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v7 = [v3 domain];
    *buf = 138413314;
    v18 = v5;
    v19 = 2048;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 1024;
    v24 = [v3 code];
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notification request for podcast '%@' with %lu episodes sent with error: %@ - %d - %@", buf, 0x30u);
  }

  v8 = +[MTFeedUpdateMetricsAction notificationScheduled];
  v9 = +[MTFeedUpdateMetricsDataKey podcastUuid];
  v10 = [*(a1 + 40) uuid];
  v16[0] = v10;
  v11 = +[MTFeedUpdateMetricsDataKey episodeCount];
  v15[1] = v11;
  v12 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v16[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  [IMMetrics recordUserAction:v8 dataSource:0 withData:v13];

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))();
  }
}

void sub_100064878(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = kMTEpisodeEntityName;
  v4 = [MTEpisode predicateForSentNotification:1];
  v5 = [v2 objectsInEntity:v3 predicate:v4 sortDescriptors:0];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) setSentNotification:{0, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [*(a1 + 32) saveInCurrentBlock];
}

id sub_100064EE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000088E0;
  v15 = sub_10003B454;
  v16 = 0;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006500C;
  v8[3] = &unk_1004D8CC8;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 performBlockAndWait:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_100064FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006500C(uint64_t a1)
{
  v8 = objc_opt_new();
  v2 = [*(a1 + 32) uuid];
  [v8 setUuid:v2];

  [v8 setStoreTrackId:{objc_msgSend(*(a1 + 32), "storeTrackId")}];
  v3 = [*(a1 + 32) podcastTitle];
  [v8 setPodcastTitle:v3];

  v4 = +[MTEpisodeLookupUtil sharedInstance];
  v5 = [v4 findEpisodeWithRequest:v8];
  v6 = [v5 uuid];

  if (v6)
  {
    v7 = [MTBaseEpisodeListManifest mediaItemForEpisodeWithUUID:v6];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  if (v6)
  {
  }
}

id sub_100065130(id a1, MTNotificationEpisode *a2)
{
  v2 = [(MTNotificationEpisode *)a2 storeTrackId];
  if (([MTStoreIdentifier isEmpty:v2]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSNumber numberWithLongLong:v2];
  }

  return v3;
}

void sub_100065408(uint64_t a1, uint64_t a2)
{
  v4 = a2 == 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained isDeviceStorageSpaceAvailableForPersistence];

  if (v4 != v6)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setIsDeviceStorageSpaceAvailableForPersistence:a2 == 0];

    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 _reCheck];
  }
}

void sub_10006581C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10006585C(uint64_t a1)
{
  v3 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v3 currentEpisodeLimitAllowsAutomaticDownloads];
  *(*(*(a1 + 56) + 8) + 24) = [v3 episodeLimitResolvedValue];
  *(*(*(a1 + 64) + 8) + 24) = [v3 deletePlayedEpisodesResolvedValue];
  v2 = os_feature_enabled_serial_sort_auto_downloads();
  if (v2)
  {
    LOBYTE(v2) = [v3 currentEpisodeLimitIsNextNEpisodes];
  }

  *(*(*(a1 + 72) + 8) + 24) = v2;
}

void sub_100065C6C(id *a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [a1[5] episodeForUuid:{v7, v14}];
        v9 = [v8 podcast];
        v10 = [v9 isDark];

        if ((v10 & 1) == 0)
        {
          v11 = [v8 podcast];
          v12 = [v11 hidden];

          if ((v12 & 1) == 0)
          {
            v13 = [objc_opt_class() _freeSpace];
            if ((v13 - [v8 byteSize]) >= 0xC800001)
            {
              [a1[7] addObject:v7];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_100065FEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 episodeUuids];
  [v1 autodownloadEpisodesChanged:v2];
}

void sub_100066110(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100583A58;
  qword_100583A58 = v1;
}

id sub_10006629C(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = kMTPodcastEntityName;
  v3 = *(a1 + 32);
  v4 = [NSPredicate predicateWithFormat:@"%K in %@", kPodcastUuid, *(a1 + 40)];
  v5 = [v3 objectsInEntity:v2 predicate:v4 sortDescriptors:0];

  v6 = objc_alloc_init(NSMutableSet);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  v9 = kPlaylistUuid;
  if (v8)
  {
    v10 = v8;
    v11 = *v31;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v30 + 1) + 8 * v12) playlists];
        v14 = [v13 valueForKey:v9];
        [v6 unionSet:v14];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v15 = *(a1 + 32);
  v16 = kMTPlaylistEntityName;
  v17 = [NSPredicate predicateWithFormat:@"%K in %@", v9, v6];
  v18 = [v15 objectsInEntity:v16 predicate:v17 sortDescriptors:0];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v26 + 1) + 8 * v23) setNeedsUpdate:1];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v21);
  }

  objc_autoreleasePoolPop(context);
  return [*(a1 + 32) saveInCurrentBlock];
}

void sub_100066644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006665C(uint64_t a1)
{
  v2 = +[MTPlaylist topLevelPlaylistsExcludingFoldersPredicate];
  v3 = [*(a1 + 32) objectsInEntity:kMTPlaylistEntityName predicate:v2 sortDescriptors:0];
  if ([v3 count])
  {
    v4 = [v3 valueForKey:kPlaylistUuid];
    v5 = [NSSet setWithArray:v4];

    v6 = [NSSet setWithArray:*(a1 + 40)];
    if ([v5 isEqualToSet:v6])
    {
      v17 = v6;
      v18 = v5;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v3;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            v13 = [v12 uuid];
            v14 = [*(a1 + 40) count];
            v15 = &v14[~[*(a1 + 40) indexOfObject:v13]];
            if (v15 != [v12 sortOrder])
            {
              [v12 setSortOrder:v15];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }

      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) saveInCurrentBlock];
      v16 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
      [v16 setIsPlaylistSyncDirty:1];

      v6 = v17;
      v5 = v18;
    }
  }
}

void sub_1000669A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000669BC(uint64_t a1)
{
  v2 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v3 = [*(a1 + 32) objectsInEntity:kMTPodcastEntityName predicate:v2 sortDescriptors:0];
  if ([v3 count])
  {
    v22 = v2;
    v4 = +[NSMutableSet set];
    v23 = +[NSMutableArray array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          v11 = [v10 uuid];
          v12 = [*(a1 + 40) indexOfObject:v11];
          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = [v5 count] + ~v12;
            if (v13 != [v10 sortOrder])
            {
              [v10 setSortOrder:v13];
              [v23 addObject:v11];
              v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 syncType]);
              [v4 addObject:v14];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) saveInCurrentBlock];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v4;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v24 + 1) + 8 * j) integerValue];
          v21 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
          [v21 markSubscriptionSyncDirty:1 for:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v17);
    }

    [*(a1 + 48) _markPlaylistsForUpdateForPodcastUuids:v23];
    v2 = v22;
  }
}

void sub_100066DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100066DF0(uint64_t a1)
{
  v2 = [*(a1 + 32) playlistForUuid:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 mutableOrderedSetValueForKey:kPlaylistEpisodes];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100066F0C;
    v6[3] = &unk_1004D8E18;
    v7 = *(a1 + 48);
    [v4 sortUsingComparator:v6];
    [v3 setContainerOrder:2];
    [v3 setNeedsUpdate:1];
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) saveInCurrentBlock];
    v5 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
    [v5 setIsPlaylistSyncDirty:1];
  }
}

id sub_100066F0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 uuid];
  if ([v7 containsObject:v8])
  {
    v9 = *(a1 + 32);
    v10 = [v5 uuid];
    v11 = [v9 indexOfObject:v10];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = *(a1 + 32);
  v13 = [v6 uuid];
  if ([v12 containsObject:v13])
  {
    v14 = *(a1 + 32);
    v15 = [v6 uuid];
    v16 = [v14 indexOfObject:v15];
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v17 = [NSNumber numberWithUnsignedInteger:v11];
  v18 = [NSNumber numberWithUnsignedInteger:v16];
  v19 = [v17 compare:v18];

  return v19;
}

void sub_100067180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100067198(uint64_t a1)
{
  v2 = [*(a1 + 32) playlistForUuid:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 mutableOrderedSetValueForKey:kPlaylistSettings];
    v5 = [v4 valueForKey:kPlaylistSettingUuid];
    v6 = [v5 set];

    v7 = [NSSet setWithArray:*(a1 + 48)];
    if ([v6 isEqualToSet:v7])
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100067314;
      v9[3] = &unk_1004D8E68;
      v10 = *(a1 + 48);
      [v4 sortUsingComparator:v9];
      [v3 setContainerOrder:2];
      [v3 setNeedsUpdate:1];
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) saveInCurrentBlock];
      v8 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
      [v8 setIsPlaylistSyncDirty:1];
    }
  }
}

id sub_100067314(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 uuid];
  v8 = [v5 indexOfObject:v7];

  v9 = *(a1 + 32);
  v10 = [v6 uuid];

  v11 = [v9 indexOfObject:v10];
  v12 = [NSNumber numberWithUnsignedInteger:v8];
  v13 = [NSNumber numberWithUnsignedInteger:v11];
  v14 = [v12 compare:v13];

  return v14;
}

void sub_100067730(id a1, id a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 updateActionSheet];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 updatePopover];
  }
}

void sub_100067864(id a1, id a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 dismissActionSheet];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 dismissPopover];
  }
}

void sub_100067A8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100067AAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 availableActions];

  [WeakRetained showActionSheetWithActions:v7 fromButton:v5];
}

void sub_100068824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100068844(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(a1 + 40) == 1)
  {
    [v3 setIgnoreSystemFilterPredicates:1];
    v3 = v8;
  }

  v4 = [v3 items];
  if ([v4 count])
  {
    v5 = [*(*(*(a1 + 32) + 8) + 40) arrayByAddingObjectsFromArray:v4];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_1000693B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000693D8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (!v5)
  {
    v9 = _MTLogCategoryDRM();
    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v11)
      {
        goto LABEL_9;
      }

      v12 = [a1[5] URL];
      v13 = [a1[4] episodeStoreId];
      v14 = [v6 localizedDescription];
      v16 = 138412802;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DRM/MTPlayerItem: Failed to create content key session for asset: %@, adamID: %lld with error: %{public}@.", &v16, 0x20u);
    }

    else
    {
      if (!v11)
      {
        goto LABEL_9;
      }

      v12 = [a1[5] URL];
      v15 = [a1[4] episodeStoreId];
      v16 = 138412546;
      v17 = v12;
      v18 = 2048;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DRM/MTPlayerItem: No session or error returned for asset: %@, adamID: %lld.", &v16, 0x16u);
    }

    goto LABEL_9;
  }

  [WeakRetained setFairPlayKeySession:v5];
  v9 = [v8 fairPlayKeyLoader];
  v10 = [a1[4] fairPlayKeySession];
  [v9 startKeyRequestWithSession:v10 completion:0];

LABEL_9:
}

void sub_100069CE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v10 = 0;
    v2 = [v1 completeAndReturnError:&v10];
    v3 = v10;
    v4 = _MTLogCategoryPlayback();
    v5 = v4;
    if (v2)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v6 = "Stream written to disk";
        v7 = v5;
        v8 = OS_LOG_TYPE_DEBUG;
        v9 = 2;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v7, v8, v6, buf, v9);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v3;
      v6 = "Error completing cache: %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 12;
      goto LABEL_7;
    }
  }
}

void sub_100069F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100069F7C(uint64_t a1)
{
  v2 = [*(a1 + 32) episodeForPlayerItem:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10006A418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006A430(uint64_t a1)
{
  v6 = [*(a1 + 32) episode];
  v2 = [v6 podcast];
  v3 = [v2 bestAvailableStoreCleanURL];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10006A950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006A978(uint64_t a1)
{
  if (*(a1 + 48) == 1 && ([*(a1 + 32) isDownloaded] & 1) == 0)
  {
    v5 = [*(a1 + 32) enclosureURL];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "invalidate asset is local but missing downloads. Switched to streaming URL %@", &v10, 0xCu);
    }
  }

  else
  {
    v2 = [*(a1 + 32) assetURL];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_10006ADAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10006ADE0(uint64_t a1)
{
  v2 = [*(a1 + 32) channelForStoreId:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = [v2 subscriptionActive];
}

void sub_10006AE40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) episodeUuid];
  v7 = [v2 episodeForUuid:v3];

  v4 = [v7 bestUrl];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10006B00C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006B0B0;
  v5[3] = &unk_1004D9108;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v7 = *(a1 + 40);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_10006B0B0(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006B140;
  v3[3] = &unk_1004D90E0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 retrieveArtwork:v3 withSize:{*(a1 + 48), *(a1 + 56)}];
}

void sub_10006B140(uint64_t a1, UIImage *image)
{
  v2 = *(a1 + 32);
  v3 = UIImagePNGRepresentation(image);
  (*(v2 + 16))(v2, v3, 0);
}

void sub_10006B408(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B4B4;
  v6[3] = &unk_1004D9158;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_10006B4C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B574;
  v6[3] = &unk_1004D9158;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_10006B588(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 imageWithSize:{*(a1 + 40), *(a1 + 48)}];
  (*(v2 + 16))(v2, v3);
}

void sub_10006B934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10006B974(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) episodeUuid];
  v16 = [v2 episodeForUuid:v3];

  v4 = v16;
  if (v16)
  {
    v5 = [v16 bestSummary];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v16 valueForKey:kEpisodePubDate];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [v16 isExplicit];
    v4 = v16;
    if (v11)
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"ATV_EXPLICIT" value:&stru_1004F3018 table:0];
      v14 = *(*(a1 + 64) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v4 = v16;
    }
  }
}

void sub_10006C048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}