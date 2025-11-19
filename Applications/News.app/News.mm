int main(int argc, const char **argv, const char **envp)
{
  v5 = objc_autoreleasePoolPush();
  if ((TFAmIBeingDebugged() & 1) == 0 && TFSetupCrashDetector())
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setBool:1 forKey:@"should_clear_cache_on_next_launch"];

    v7 = +[NSFileManager defaultManager];
    v8 = +[FRAppDelegate stateRestorationURL];
    [v7 removeItemAtURL:v8 error:0];
  }

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  objc_autoreleasePoolPop(v5);
  v13 = UIApplicationMain(argc, argv, v10, v12);

  return v13;
}

uint64_t sub_1000044D8(uint64_t a1)
{
  qword_1000E6350 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id FRPrivateDataActionsForDataclassActionTypes(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) integerValue] - 1;
        if (v8 > 5)
        {
          v9 = 0;
        }

        else
        {
          v9 = off_1000C5A38[v8];
        }

        [v2 addObjectsFromArray:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_100004D04(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_100004DB4;
  activity_block[3] = &unk_1000C35F0;
  v9 = a2;
  activity_block[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  _os_activity_initiate(&_mh_execute_header, "handleDestructiveDataMigration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void sub_100004DB4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = +[NSFileManager defaultManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100005000;
  v16[3] = &unk_1000C5C38;
  v17 = v2;
  v4 = objc_retainBlock(v16);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005AF88;
  v14[3] = &unk_1000C18D0;
  v5 = v3;
  v15 = v5;
  v6 = objc_retainBlock(v14);
  v7 = +[NSUserDefaults standardUserDefaults];
  (v4[2])(v4, v7, @"should_clear_cache_on_next_launch", v6);

  v8 = NewsCoreUserDefaults();
  (v4[2])(v4, v8, FCClearCacheOnNextLaunchSharedPreferenceKey, v6);

  v9 = +[NSUserDefaults standardUserDefaults];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005B05C;
  v12[3] = &unk_1000C18D0;
  v10 = v5;
  v13 = v10;
  (v4[2])(v4, v9, @"should_clear_private_data_on_next_launch", v12);

  if (v2 == 1)
  {
    +[FRSpotlightManager clearIndex];
    v11 = [*(a1 + 32) defaultsDataDestructionItems];
    NSSDestroyUserDefaultsDataWithItems();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100005000(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if ((*(a1 + 32) & 1) != 0 || [v9 BOOLForKey:v7])
  {
    v8[2](v8);
    [v9 setBool:0 forKey:v7];
  }
}

void sub_10000532C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t FeldsparInternalExtrasEnabled()
{
  if (qword_1000E62E0 != -1)
  {
    sub_100005380();
  }

  return byte_1000E62E8;
}

void sub_1000053FC(id a1)
{
  if (NFInternalBuild())
  {
    v2 = +[FRPPTContext sharedContext];
    if ([v2 isRunningPPT])
    {
      byte_1000E62E8 = 0;
    }

    else
    {
      v1 = +[NSBundle fr_feldsparInternalExtrasBundle];
      byte_1000E62E8 = v1 != 0;
    }
  }

  else
  {
    byte_1000E62E8 = 0;
  }
}

void sub_1000059C4(id a1)
{
  v3 = +[UIDevice currentDevice];
  v1 = [v3 systemVersion];
  v2 = qword_1000E6170;
  qword_1000E6170 = v1;
}

id FRURLForNewsAppCachesDirectory()
{
  v0 = FCURLForContainerizedUserAccountCachesDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"News" isDirectory:1];

  v2 = +[NSFileManager defaultManager];
  v4 = 0;
  [v2 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v4];

  return v1;
}

void sub_100005C9C(id a1)
{
  v1 = +[UIDevice currentDevice];
  byte_1000E61E0 = [v1 userInterfaceIdiom] == 1;
}

void FRSetupLogging()
{
  if (qword_1000E6110 != -1)
  {
    sub_100005CF4();
  }
}

void sub_100005D34(id a1)
{
  v1 = os_log_create(FRLogSubsystemIdentifier, "FeedDataSource");
  v2 = FRFeedDataSourceLog;
  FRFeedDataSourceLog = v1;

  v3 = os_log_create(FRLogSubsystemIdentifier, "FeedLayout");
  v4 = FRFeedLayoutLog;
  FRFeedLayoutLog = v3;

  v5 = os_log_create(FRLogSubsystemIdentifier, "PresubscribeService");
  v6 = FRPresubscribeServiceLog;
  FRPresubscribeServiceLog = v5;

  v7 = os_log_create(FRLogSubsystemIdentifier, "StateRestore");
  v8 = FRStateRestoreLog;
  FRStateRestoreLog = v7;

  v9 = os_log_create(FRLogSubsystemIdentifier, "TodayAgent");
  v10 = FRTodayAgentLog;
  FRTodayAgentLog = v9;

  v11 = os_log_create(FRLogSubsystemIdentifier, "AutoScrollToTopManager");
  v12 = FRAutoScrollToTopManagerLog;
  FRAutoScrollToTopManagerLog = v11;

  v13 = os_log_create(FRLogSubsystemIdentifier, "FeedCollectionView");
  v14 = FRFeedCollectionViewLog;
  FRFeedCollectionViewLog = v13;

  v15 = os_log_create(FRLogSubsystemIdentifier, "Weather");
  v16 = FRWeatherLog;
  FRWeatherLog = v15;

  v17 = os_log_create(FRLogSubsystemIdentifier, "FeedManager");
  v18 = FRFeedManagerLog;
  FRFeedManagerLog = v17;

  v19 = os_log_create(FRLogSubsystemIdentifier, "FeedRefreshAnimationManager");
  v20 = FRFeedRefreshAnimationManagerLog;
  FRFeedRefreshAnimationManagerLog = v19;

  v21 = os_log_create(FRLogSubsystemIdentifier, "OfflineTransition");
  v22 = FROfflineTransitionLog;
  FROfflineTransitionLog = v21;

  v23 = os_log_create(FRLogSubsystemIdentifier, "Article");
  v24 = FRArticleLog;
  FRArticleLog = v23;

  v25 = os_log_create(FRLogSubsystemIdentifier, "ArticlePrefetch");
  v26 = FRArticlePrefetchLog;
  FRArticlePrefetchLog = v25;

  v27 = os_log_create(FRLogSubsystemIdentifier, "BackgroundFetch");
  v28 = FRBackgroundFetchLog;
  FRBackgroundFetchLog = v27;

  v29 = os_log_create(FRLogSubsystemIdentifier, "Navigation");
  v30 = FRNavigationLog;
  FRNavigationLog = v29;

  v31 = os_log_create(FRLogSubsystemIdentifier, "Portrait");
  v32 = FRPortraitLog;
  FRPortraitLog = v31;

  FRDESLog = os_log_create(FRLogSubsystemIdentifier, "DES");

  _objc_release_x1();
}

id FRURLForNewsPersonalizationDirectory()
{
  v0 = FRURLForNewsAppCachesDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"Personalization_Data" isDirectory:1];

  v2 = +[NSFileManager defaultManager];
  v4 = 0;
  [v2 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v4];

  return v1;
}

void sub_100006460(uint64_t a1)
{
  [*(a1 + 32) setIsUserIDLoaded:1];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

id FRAppDelegate.bundleAssemblies.getter()
{
  v21 = &_swiftEmptyArrayStorage;
  sub_100066EC8(&qword_1000E5BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B7010;
  *(inited + 56) = type metadata accessor for Assembly();
  *(inited + 64) = sub_100006D04(&qword_1000E5BC8, &type metadata accessor for Assembly);
  sub_100006D4C((inited + 32));
  Assembly.init()();
  *(inited + 96) = type metadata accessor for Assembly();
  *(inited + 104) = sub_100006D04(&qword_1000E5BD0, &type metadata accessor for Assembly);
  sub_100006D4C((inited + 72));
  Assembly.init()();

  sub_100006EF8(v2, &qword_1000E5BC0, &unk_1000B7030, &qword_1000E5BD8);
  result = [v0 tfBundleAssemblies];
  if (result)
  {
    v4 = result;
    swift_setDeallocating();
    sub_100066EC8(&qword_1000E5BD8);
    swift_arrayDestroy();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 32;
      v8 = &_swiftEmptyArrayStorage;
      while (1)
      {
        sub_100007368(v7, v20);
        sub_100007368(v20, v19);
        sub_100066EC8(&qword_1000E5C40);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_100007410(v20, &v15);
        if (swift_dynamicCast())
        {
          sub_100006CE8(v13, v19);
          sub_100006CE8(v19, &v16);
          goto LABEL_10;
        }

        v14 = 0;
        memset(v13, 0, sizeof(v13));
        sub_100066F1C(v13, &qword_1000E5C48);
        v16 = 0u;
        v17 = 0u;
        v18 = 0;
        sub_100066F1C(&v16, &qword_1000E5C48);
LABEL_5:
        v7 += 32;
        if (!--v6)
        {

          goto LABEL_17;
        }
      }

      v9 = type metadata accessor for BridgedBundleAssembly();
      swift_allocObject();
      swift_unknownObjectRetain();
      v10 = BridgedBundleAssembly.init(_:)();
      *(&v17 + 1) = v9;
      v18 = &protocol witness table for BridgedBundleAssembly;
      swift_unknownObjectRelease();
      *&v16 = v10;
      sub_1000073C4(v20);
LABEL_10:
      sub_100006CE8(&v16, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100006DB0(0, v8[2] + 1, 1, v8, &qword_1000E5BC0, &unk_1000B7030, &qword_1000E5BD8);
      }

      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        v8 = sub_100006DB0((v11 > 1), v12 + 1, 1, v8, &qword_1000E5BC0, &unk_1000B7030, &qword_1000E5BD8);
      }

      v8[2] = v12 + 1;
      sub_100006CE8(v19, &v8[5 * v12 + 4]);
      goto LABEL_5;
    }

    v8 = &_swiftEmptyArrayStorage;
LABEL_17:
    *&v19[0] = v8;
    sub_100006EF8(v21, &qword_1000E5BC0, &unk_1000B7030, &qword_1000E5BD8);
    return *&v19[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100006CE8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100006D04(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100006D4C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_100006DB0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100066EC8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100066EC8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_100006EF8(void *result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = result[2];
  v6 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v8 <= v6[3] >> 1)
  {
    if (v12[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v7 <= v8)
  {
    v16 = v7 + v5;
  }

  else
  {
    v16 = v7;
  }

  result = sub_100006DB0(result, v16, 1, v6, a2, a3, a4);
  v6 = result;
  if (!v12[2])
  {
LABEL_13:

    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100066EC8(a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_14:
    *v4 = v6;
    return result;
  }

  v13 = v6[2];
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    v6[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100007368(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000073C4(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

_OWORD *sub_100007410(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id FRAppDelegate.assemblies.getter()
{
  sub_100066EC8(&qword_1000E5C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B7020;
  v2 = type metadata accessor for DiagnosticAssembly();
  v3 = swift_allocObject();
  *(inited + 56) = v2;
  *(inited + 64) = sub_100006D04(&qword_1000E5C58, type metadata accessor for DiagnosticAssembly);
  *(inited + 32) = v3;
  v24 = inited;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1000B7010;
  *(v4 + 56) = type metadata accessor for CookingAssembly();
  *(v4 + 64) = sub_100006D04(&qword_1000E5C60, &type metadata accessor for CookingAssembly);
  sub_100006D4C((v4 + 32));
  CookingAssembly.init()();
  *(v4 + 96) = type metadata accessor for NewsIntegrationAssembly();
  *(v4 + 104) = sub_100006D04(&qword_1000E5C68, &type metadata accessor for NewsIntegrationAssembly);
  sub_100006D4C((v4 + 72));
  NewsIntegrationAssembly.init()();

  sub_100006EF8(v5, &qword_1000E5C50, &unk_1000B7058, &qword_1000E5C70);
  result = [v0 tfAssemblies];
  if (result)
  {
    v7 = result;
    swift_setDeallocating();
    sub_100066EC8(&qword_1000E5C70);
    swift_arrayDestroy();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v8 + 32;
      v11 = &_swiftEmptyArrayStorage;
      while (1)
      {
        sub_100007368(v10, v23);
        sub_100007368(v23, v22);
        sub_100066EC8(&qword_1000E5C78);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_100007410(v23, &v18);
        if (swift_dynamicCast())
        {
          sub_100006CE8(v16, v22);
          sub_100006CE8(v22, &v19);
          goto LABEL_10;
        }

        v17 = 0;
        memset(v16, 0, sizeof(v16));
        sub_100066F1C(v16, &unk_1000E5C80);
        v19 = 0u;
        v20 = 0u;
        v21 = 0;
        sub_100066F1C(&v19, &unk_1000E5C80);
LABEL_5:
        v10 += 32;
        if (!--v9)
        {

          goto LABEL_17;
        }
      }

      v12 = type metadata accessor for BridgedAssembly();
      swift_allocObject();
      swift_unknownObjectRetain();
      v13 = BridgedAssembly.init(_:)();
      *(&v20 + 1) = v12;
      v21 = &protocol witness table for BridgedAssembly;
      swift_unknownObjectRelease();
      *&v19 = v13;
      sub_1000073C4(v23);
LABEL_10:
      sub_100006CE8(&v19, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100006DB0(0, v11[2] + 1, 1, v11, &qword_1000E5C50, &unk_1000B7058, &qword_1000E5C70);
      }

      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        v11 = sub_100006DB0((v14 > 1), v15 + 1, 1, v11, &qword_1000E5C50, &unk_1000B7058, &qword_1000E5C70);
      }

      v11[2] = v15 + 1;
      sub_100006CE8(v22, &v11[5 * v15 + 4]);
      goto LABEL_5;
    }

    v11 = &_swiftEmptyArrayStorage;
LABEL_17:
    *&v22[0] = v11;
    sub_100006EF8(v24, &qword_1000E5C50, &unk_1000B7058, &qword_1000E5C70);
    return *&v22[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100007D44()
{
  ProxyContainer.public.getter();
  type metadata accessor for DiagnosticFileCollectionCoordinator();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  type metadata accessor for DiagnosticFileCollector();
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100008790(uint64_t a1)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  sub_100008890(a1, v5);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = FCDiagnosticsLog;
  Logger.init(_:)();
  v3 = objc_allocWithZone(type metadata accessor for DiagnosticFileCollectionCoordinator());
  return DiagnosticFileCollectionCoordinator.init(resolver:diagnosticFileCollectionNotificationName:diagnosticFilesNotificationName:logger:)();
}

uint64_t sub_100008890(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t FRShouldPrefetchIgnoringNetworkInterface(void *a1)
{
  v1 = a1;
  if ([v1 isNetworkReachable] && (objc_msgSend(v1, "isLowDataModeEnabled") & 1) == 0)
  {
    v3 = +[NSProcessInfo processInfo];
    if ([v3 isLowPowerModeEnabled])
    {
      v2 = 0;
    }

    else
    {
      v4 = +[FRPPTContext sharedContext];
      v2 = [v4 isPrefetchDisabled] ^ 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100008AE4(id a1)
{
  v1 = +[UIDevice currentDevice];
  byte_1000E61F0 = [v1 userInterfaceIdiom] == 0;
}

void sub_100008C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100008F74(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [v3 bridgedAppDelegate];
  if (result)
  {
    v6 = result;
    v7 = [result *a3];

    _bridgeAnyObjectToAny(_:)();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000094BC(uint64_t a1)
{
  +[SUUIClientContext defaultContext];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A340;
  v2 = block[3] = &unk_1000C18D0;
  v5 = v2;
  dispatch_async(&_dispatch_main_q, block);
  if ((+[FCGeoUtilities isRunningInSupportedRegion]& 1) == 0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100049C64;
    v3[3] = &unk_1000C18D0;
    v3[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v3);
  }
}

void sub_1000095D4(id a1, NSError *a2)
{
  v2 = a2;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100009628();
  }
}

void sub_1000096C0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x26u);
}

void sub_100009700(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x26u);
}

void sub_100009724(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100009748(id a1)
{
  v1 = +[FCAppleAccount sharedAccount];
  [v1 loadStoreFrontWithCompletionHandler:&stru_1000C4EE8];
}

void sub_100009798(id a1)
{
  v1 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Did finish loading the storefront", v2, 2u);
  }
}

void sub_100009808(uint64_t a1)
{
  v2 = [*(a1 + 32) feldsparContext];
  v3 = [v2 gizmoSyncManager];
  [v3 syncWithGizmo];

  v5 = [*(a1 + 32) feldsparContext];
  v4 = [v5 favoritesPersonalizer];
  [v4 refreshAutoFavoritesInBackgroundDisregardingCache:1];
}

void sub_100009A7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_100009B18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009B28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009B38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009B48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009B58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009B68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009B78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009B88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009B98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009BA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009BB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009BC8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009BD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009BE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009BF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009C08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009C18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009C28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009C60@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  *(a2 + 24) = a3;
  *(a2 + 28) = 2114;
  *(a2 + 30) = result;
  return result;
}

void sub_100009C74(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100009CA0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_100009CDC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = &__NSArray0__struct;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Found metadata seen IDs = %@ saved IDs = %@.", buf, 0x16u);
  }

  if (WeakRetained)
  {
    if ([v8 count])
    {
      dispatch_group_enter(*(a1 + 32));
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000401CC;
      v13[3] = &unk_1000C18D0;
      v14 = *(a1 + 32);
      [WeakRetained _syncSeenIdentifiers:v8 withCompletion:v13];
    }

    if ([v9 count])
    {
      dispatch_group_enter(*(a1 + 32));
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000401D4;
      v11[3] = &unk_1000C18D0;
      v12 = *(a1 + 32);
      [WeakRetained _syncSavedIdentifiersOnGizmo:v9 articleIdentifiersOnGizmo:v7 withCompletion:v11];
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000A340(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 key_window];
  v4 = [v3 rootViewController];

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100009BE8;
  v11 = sub_100009F48;
  v12 = [[SUUIExplicitRestrictionAlertController alloc] initWithClientContext:*(a1 + 32) presentingViewController:v4];
  v5 = v8[5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A514;
  v6[3] = &unk_1000C2658;
  v6[4] = &v7;
  [v5 presentExplicitRestrictionAlertIfNeededOfType:0 completionBlock:v6];
  _Block_object_dispose(&v7, 8);
}

void sub_10000A470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A514(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10000A534(uint64_t a1)
{
  +[NSThread isMainThread];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSyncingWatchData:0];
}

void sub_10000B04C(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 key_window];
  v4 = [v3 windowScene];
  v5 = [v4 session];
  v6 = [v5 persistentIdentifier];

  [*(a1 + 32) endSessionForReason:4 byStartingNewSession:1 resetUserID:0 forSceneID:v6];
}

void sub_10000B214(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudContext];
  v3 = [v2 userInfo];
  v4 = [v3 userStartDate];

  if (!v4)
  {
    v5 = [*(a1 + 32) lastAppOpenDate];

    if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100068484();
    }

    v6 = [*(a1 + 32) lastAppOpenDate];
    v7 = [*(a1 + 32) cloudContext];
    v8 = [v7 userInfo];
    [v8 setUserStartDate:v6];
  }
}

void sub_10000B84C()
{
  v0 = FCAnalyticsLog;
  if (os_log_type_enabled(FCAnalyticsLog, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "No scene ID passed in to end", v1, 2u);
  }
}

void sub_10000B8B4()
{
  v0 = FCAnalyticsLog;
  if (os_log_type_enabled(FCAnalyticsLog, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "No Session in progress for the scene to end", v1, 2u);
  }
}

void sub_10000BD84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSUUID UUID];
  v6 = [v4 UUIDString];

  v5 = [*(a1 + 32) sceneSessionDictionary];
  [v5 setObject:v6 forKeyedSubscript:v3];
}

void sub_10000C4AC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 embedConfigurationAssetID];
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000687A4();
    }

    goto LABEL_7;
  }

  if (a3 || ([*(a1 + 32) isCancelled] & 1) != 0)
  {
LABEL_7:
    [*(a1 + 32) finishedPerformingOperationWithError:0];
    goto LABEL_8;
  }

  v6 = [*(a1 + 32) resourceManager];
  v18 = v5;
  v7 = [NSArray arrayWithObjects:&v18 count:1];
  v8 = [*(a1 + 32) relativePriority];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10000C63C;
  v15 = &unk_1000C1998;
  v9 = v5;
  v10 = *(a1 + 32);
  v16 = v9;
  v17 = v10;
  v11 = [v6 fetchResourcesWithIdentifiers:v7 downloadAssets:0 relativePriority:v8 callBackQueue:&_dispatch_main_q completionBlock:&v12];

  [*(a1 + 32) associateChildOperation:{v11, v12, v13, v14, v15}];
LABEL_8:
}

void sub_10000C63C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:*(a1 + 32)];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 assetHandle];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000C758;
    v12[3] = &unk_1000C1970;
    v13 = v7;
    v11 = *(a1 + 32);
    v9 = v11.i64[0];
    v14 = vextq_s8(v11, v11, 8uLL);
    v15 = v5;
    v10 = [v8 downloadIfNeededWithCompletion:v12];
  }

  else
  {
    [*(a1 + 40) finishedPerformingOperationWithError:v5];
  }
}

void sub_10000C758(uint64_t a1)
{
  v2 = [*(a1 + 32) assetHandle];
  v4 = [v2 filePath];

  if (v4)
  {
    v3 = [NSData dataWithContentsOfFile:v4];
    [*(a1 + 40) setEmbedConfigurationData:v3];

    [*(a1 + 40) setEmbedConfigurationIdentifier:*(a1 + 48)];
  }

  [*(a1 + 40) finishedPerformingOperationWithError:*(a1 + 56)];
}

uint64_t sub_10000D040(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void sub_10000D378(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 analyticsReferralFactory];
    v6 = [*(a1 + 40) objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
    v8 = [v5 analyticsReferralForURL:v4 sourceApplication:v6];

    v7 = [*(a1 + 32) retryHandler];
    [v7 handleOpenURL:v4 options:*(a1 + 40) analyticsReferral:v8];
  }
}

void FRShowEnableNotificationsAlert(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = +[FRAppDelegate sharedDelegate];
  v14 = [v13 resolver];

  v15 = [v14 resolveProtocol:&OBJC_PROTOCOL___TSNotificationManagerType];
  v16 = [v15 subscribeNotificationPromptForTagID:v12];

  if (v16 == 2)
  {
    if (v11)
    {
      v11[2](v11, 1);
    }
  }

  else if (v16 == 1)
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000D8EC;
    v36[3] = &unk_1000C1A78;
    v37 = v9;
    v29 = objc_retainBlock(v36);
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"Turn On" value:&stru_1000C67A8 table:0];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10000DA50;
    v34[3] = &unk_1000C1AA0;
    v20 = v11;
    v35 = v20;
    v31 = [UIAlertAction actionWithTitle:v19 style:0 handler:v34];

    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"Not Now" value:&stru_1000C67A8 table:0];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000DA6C;
    v32[3] = &unk_1000C1AA0;
    v33 = v20;
    v30 = [UIAlertAction actionWithTitle:v22 style:1 handler:v32];

    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"Find out about important stories from %@." value:&stru_1000C67A8 table:0];
    v25 = [NSString stringWithFormat:v24, v10];

    if (!a2)
    {
      v28 = +[NSBundle mainBundle];
      v26 = [v28 localizedStringForKey:@"FRGetNotificationsAlertTitle" value:&stru_1000C67A8 table:0];
      v38[0] = v30;
      v38[1] = v31;
      v27 = [NSArray arrayWithObjects:v38 count:2];
      (v29[2])(v29, v26, v25, v27, v31);
    }
  }

  else
  {
    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = v11 == 0;
    }

    if (!v17)
    {
      v11[2](v11, 0);
    }
  }
}

void sub_10000D8EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = [UIAlertController alertControllerWithTitle:a2 message:a3 preferredStyle:1];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v11 addAction:{*(*(&v17 + 1) + 8 * v16), v17}];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }

  if (v10)
  {
    [v11 setPreferredAction:v10];
  }

  [*(a1 + 32) presentViewController:v11 animated:1 completion:{0, v17}];
}

uint64_t sub_10000DA50(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_10000DA6C(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = +[NSDate date];
  [v2 setObject:v3 forKey:FCNotificationManagerLastDeclinedNotificationDateKey];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_10000DD48(id a1)
{
  v15[0] = @"FRSystemFont-Ultralight";
  v14 = [NSNumber numberWithDouble:UIFontWeightUltraLight];
  v16[0] = v14;
  v15[1] = @"FRSystemFont-Thin";
  v13 = [NSNumber numberWithDouble:UIFontWeightThin];
  v16[1] = v13;
  v15[2] = @"FRSystemFont-Light";
  v1 = [NSNumber numberWithDouble:UIFontWeightLight];
  v16[2] = v1;
  v15[3] = @"FRSystemFont-Regular";
  v2 = [NSNumber numberWithDouble:UIFontWeightRegular];
  v16[3] = v2;
  v15[4] = @"FRSystemFont-Medium";
  v3 = [NSNumber numberWithDouble:UIFontWeightMedium];
  v16[4] = v3;
  v15[5] = @"FRSystemFont-Semibold";
  v4 = [NSNumber numberWithDouble:UIFontWeightSemibold];
  v16[5] = v4;
  v15[6] = @"FRSystemFont-Bold";
  v5 = [NSNumber numberWithDouble:UIFontWeightBold];
  v16[6] = v5;
  v15[7] = @"FRSystemFont-Heavy";
  v6 = [NSNumber numberWithDouble:UIFontWeightHeavy];
  v16[7] = v6;
  v15[8] = @"FRSystemFont-Black";
  v7 = [NSNumber numberWithDouble:UIFontWeightBlack];
  v16[8] = v7;
  v15[9] = @"FRSystemFont-Condensed-Bold";
  v8 = [NSNumber numberWithDouble:UIFontWeightBold];
  v16[9] = v8;
  v15[10] = @"FRSystemFont-Condensed-Semibold";
  v9 = [NSNumber numberWithDouble:UIFontWeightSemibold];
  v16[10] = v9;
  v15[11] = @"FRSystemFont-Condensed-Black";
  v10 = [NSNumber numberWithDouble:UIFontWeightBlack];
  v16[11] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:12];
  v12 = qword_1000E6118;
  qword_1000E6118 = v11;
}

uint64_t sub_10000F0AC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = FCProtocolCast();
  v9 = v5;
  FCPerformIfNonNil();

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void sub_10000F1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F1D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = FCProtocolCast();
  v4 = v2;
  FCPerformIfNonNil();
}

void sub_10000F294(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) name];
  if (v4)
  {
    v5 = [*(a1 + 40) name];
  }

  else
  {
    v5 = &stru_1000C67A8;
  }

  v6 = [*(a1 + 40) identifier];
  v7 = [NSString stringWithFormat:@"%@%@", v5, v6];
  v8 = [v3 trimTheArticle:v7];

  if (v4)
  {
  }

  v9 = *(a1 + 32);
  v10 = [v15 name];
  if (v10)
  {
    v11 = [v15 name];
  }

  else
  {
    v11 = &stru_1000C67A8;
  }

  v12 = [v15 identifier];
  v13 = [NSString stringWithFormat:@"%@%@", v11, v12];
  v14 = [v9 trimTheArticle:v13];

  if (v10)
  {
  }

  *(*(*(a1 + 48) + 8) + 24) = [v8 compare:v14 options:65];
}

uint64_t sub_10000F5D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) tagOpenedDate];
  v8 = [v5 identifier];
  v9 = [v7 objectForKey:v8];

  v10 = [*(a1 + 32) tagOpenedDate];
  v11 = [v6 identifier];
  v12 = [v10 objectForKey:v11];

  if (v9 && !v12)
  {
    goto LABEL_3;
  }

  if (!v9 && v12)
  {
    goto LABEL_6;
  }

  if (v9 | v12)
  {
    v13 = [v12 compare:v9];
    goto LABEL_17;
  }

  v14 = *(a1 + 40);
  v15 = [v5 identifier];
  v16 = [v14 indexOfObject:v15];

  v17 = *(a1 + 40);
  v18 = [v6 identifier];
  v19 = [v17 indexOfObject:v18];

  if (v16 == 0x7FFFFFFFFFFFFFFFLL && v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v13 = 1;
    goto LABEL_17;
  }

  if (v16 != 0x7FFFFFFFFFFFFFFFLL && v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_3:
    v13 = -1;
  }

  else if (v16 == 0x7FFFFFFFFFFFFFFFLL && v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = *(a1 + 32);
    v21 = [v5 name];
    if (v21)
    {
      v22 = [v5 name];
    }

    else
    {
      v22 = &stru_1000C67A8;
    }

    v24 = [v5 identifier];
    v25 = [NSString stringWithFormat:@"%@%@", v22, v24];
    v26 = [v20 trimTheArticle:v25];

    if (v21)
    {
    }

    v27 = *(a1 + 32);
    v28 = [v6 name];
    if (v28)
    {
      v29 = [v6 name];
    }

    else
    {
      v29 = &stru_1000C67A8;
    }

    v30 = [v6 identifier];
    v31 = [NSString stringWithFormat:@"%@%@", v29, v30];
    v32 = [v27 trimTheArticle:v31];

    if (v28)
    {
    }

    v13 = [v26 compare:v32 options:65];
  }

  else if (v16 == v19)
  {
    v13 = 0;
  }

  else if (v16 > v19)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

LABEL_17:

  return v13;
}

id sub_10000FCA0(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = (*(*(a1 + 40) + 16))();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  return v6;
}

void sub_1000103B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000103F8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 filePath];
  if (v7)
  {
    v8 = [NSURL fileURLWithPath:v7 isDirectory:0];
    if (v8)
    {
      v9 = +[NSUUID UUID];
      v10 = [v9 UUIDString];

      v11 = [*(a1 + 32) URLByAppendingPathComponent:v10 isDirectory:0];
      v12 = *(a1 + 40);
      v13 = *(*(a1 + 56) + 8);
      obj = *(v13 + 40);
      [v12 copyItemAtURL:v8 toURL:v11 error:&obj];
      objc_storeStrong((v13 + 40), obj);
      v14 = *(a1 + 48);
      v15 = [v6 remoteURL];
      [v14 setObject:v11 forKeyedSubscript:v15];

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        *a4 = 1;
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000693A8();
  }
}

id sub_100010EA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100010F18;
  v3[3] = &unk_1000C18D0;
  v3[4] = v1;
  return [v1 _processSignals:v3];
}

id sub_100010F24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100010F94;
  v3[3] = &unk_1000C18D0;
  v3[4] = v1;
  return [v1 _processSignals:v3];
}

void sub_100011698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011728(uint64_t a1)
{
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
  {
    sub_100069C8C(a1, v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100011788(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a5);
  dispatch_group_leave(*(a1 + 32));
  v14 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v16 = v14;
    v17 = [v15 shortOperationDescription];
    v18 = 138543362;
    v19 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ did consider external signals", &v18, 0xCu);
  }
}

void sub_100011908(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  dispatch_group_leave(*(a1 + 32));
  v8 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = v8;
    v11 = [v9 shortOperationDescription];
    v12 = 138543362;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ did consider internal signals", &v12, 0xCu);
  }
}

void sub_100011A30(uint64_t a1)
{
  v113[0] = _NSConcreteStackBlock;
  v113[1] = 3221225472;
  v113[2] = sub_10001260C;
  v113[3] = &unk_1000C1C50;
  v2 = *(a1 + 40);
  v113[4] = *(a1 + 32);
  v114 = v2;
  v3 = sub_10001260C(v113);
  v4 = +[NSMutableDictionary dictionary];
  v5 = [*(a1 + 32) subscriptionController];
  v6 = [v5 subscriptionsWithType:3];

  v7 = +[NSMutableSet set];
  v110[0] = _NSConcreteStackBlock;
  v110[1] = 3221225472;
  v110[2] = sub_100012768;
  v110[3] = &unk_1000C1C78;
  v8 = v4;
  v111 = v8;
  v9 = v7;
  v112 = v9;
  [v6 enumerateObjectsUsingBlock:v110];
  v10 = [*(a1 + 32) subscriptionController];
  v11 = [v10 subscriptionsWithType:4];
  v12 = v11;
  if (!v11)
  {
    v11 = &__NSArray0__struct;
  }

  v13 = [v11 fc_setByTransformingWithBlock:&stru_1000C1CB8];

  if (!v3)
  {
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100069D34();
    }
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v15 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069E04();
  }

  if (!v9)
  {
LABEL_13:
    v16 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100069ED4();
    }
  }

LABEL_16:
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (v13)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v17 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069FA4();
  }

  if (!v13)
  {
LABEL_22:
    v18 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006A074();
    }
  }

LABEL_25:
  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v19 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006A144();
    }
  }

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006A214();
    }
  }

  if (!*(*(*(a1 + 88) + 8) + 40))
  {
    v21 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006A2E4();
    }
  }

  if (!*(*(*(a1 + 96) + 8) + 40))
  {
    v22 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006A3B4();
    }
  }

  v23 = [v3 count];
  v24 = [*(*(*(a1 + 56) + 8) + 40) count];
  v25 = &v24[[v9 count] + v23];
  v26 = [*(*(*(a1 + 64) + 8) + 40) count];
  v27 = &v25[[v13 count] + v26];
  v28 = [*(*(*(a1 + 72) + 8) + 40) count];
  v29 = [*(*(*(a1 + 80) + 8) + 40) count] + v28;
  v30 = &v27[[*(*(*(a1 + 88) + 8) + 40) count] + v29];
  v31 = [*(*(*(a1 + 96) + 8) + 40) count] + v30;
  v32 = FCOperationLog;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [*(a1 + 32) shortOperationDescription];
    *buf = 138543618;
    v118 = v33;
    v119 = 2048;
    v120 = v31;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ finished processing signals with %lu candidates", buf, 0x16u);
  }

  if (v31)
  {
    v34 = v3;
    v93 = v3;
    if (!v3)
    {
      v34 = +[NSSet set];
    }

    v84 = v34;
    v116[0] = v34;
    v35 = *(*(*(a1 + 56) + 8) + 40);
    v90 = v35;
    if (!v35)
    {
      v35 = +[NSSet set];
    }

    v82 = v35;
    v116[1] = v35;
    v36 = v9;
    v92 = v9;
    if (!v9)
    {
      v36 = +[NSSet set];
    }

    v80 = v36;
    v116[2] = v36;
    v37 = *(*(*(a1 + 72) + 8) + 40);
    v38 = v37;
    if (!v37)
    {
      v38 = +[NSSet set];
    }

    v88 = v13;
    v89 = v8;
    v78 = v38;
    v116[3] = v38;
    v39 = *(*(*(a1 + 80) + 8) + 40);
    v40 = v39;
    if (!v39)
    {
      v40 = +[NSSet set];
    }

    v86 = v6;
    v116[4] = v40;
    v41 = *(*(*(a1 + 88) + 8) + 40);
    v42 = v41;
    if (!v41)
    {
      v42 = +[NSSet set];
    }

    v116[5] = v42;
    v43 = *(*(*(a1 + 96) + 8) + 40);
    v44 = v43;
    if (!v43)
    {
      v44 = +[NSSet set];
    }

    v116[6] = v44;
    v45 = [NSArray arrayWithObjects:v116 count:7];
    v87 = [NSSet fc_unionOfSetsInArray:v45];

    if (v43)
    {
      if (v41)
      {
        goto LABEL_60;
      }
    }

    else
    {

      if (v41)
      {
        goto LABEL_60;
      }
    }

LABEL_60:
    if (!v39)
    {
    }

    if (!v37)
    {
    }

    if (!v92)
    {
    }

    if (!v90)
    {
    }

    if (!v3)
    {
    }

    v46 = [*(*(*(a1 + 64) + 8) + 40) fc_setByUnioningSet:v88];
    v91 = [v46 fc_setByMinusingSet:v87];

    v47 = FCOperationLog;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [*(a1 + 32) shortOperationDescription];
      *buf = 138543362;
      v118 = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ looking for valid candidates", buf, 0xCu);
    }

    v83 = *(a1 + 32);
    v49 = v3;
    if (!v3)
    {
      v49 = +[NSSet set];
    }

    v81 = v49;
    v115[0] = v49;
    v50 = *(*(*(a1 + 56) + 8) + 40);
    v85 = v50;
    if (!v50)
    {
      v50 = +[NSSet set];
    }

    v115[1] = v50;
    v51 = v92;
    if (!v92)
    {
      v51 = +[NSSet set];
    }

    v77 = v51;
    v115[2] = v51;
    v52 = v91;
    if (!v91)
    {
      v52 = +[NSSet set];
    }

    v76 = v52;
    v115[3] = v52;
    v53 = *(*(*(a1 + 72) + 8) + 40);
    v54 = v53;
    if (!v53)
    {
      v54 = +[NSSet set];
    }

    v75 = v54;
    v115[4] = v54;
    v55 = *(*(*(a1 + 80) + 8) + 40);
    v56 = v55;
    if (!v55)
    {
      v56 = +[NSSet set];
    }

    v79 = v50;
    v74 = v56;
    v115[5] = v56;
    v57 = *(*(*(a1 + 88) + 8) + 40);
    v58 = v57;
    if (!v57)
    {
      v58 = +[NSSet set];
    }

    v73 = v58;
    v115[6] = v58;
    v59 = *(*(*(a1 + 96) + 8) + 40);
    v60 = v59;
    if (!v59)
    {
      v60 = +[NSSet set];
    }

    v115[7] = v60;
    v61 = [NSArray arrayWithObjects:v115 count:8];
    v62 = [NSSet fc_unionOfSetsInArray:v61];
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = sub_100012828;
    v105[3] = &unk_1000C1CE0;
    v107 = *(a1 + 56);
    v106 = v92;
    v108 = *(a1 + 80);
    v109 = *(a1 + 96);
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = sub_1000128D0;
    v104[3] = &unk_1000C1D08;
    v104[4] = v109;
    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = sub_1000128E4;
    v94[3] = &unk_1000C1DD0;
    v63 = *(a1 + 40);
    v94[4] = *(a1 + 32);
    v95 = v63;
    v96 = v89;
    v64 = v91;
    v97 = v64;
    v65 = v93;
    v66 = *(a1 + 56);
    v98 = v65;
    v101 = v66;
    v99 = v106;
    v67 = *(a1 + 88);
    v102 = *(a1 + 72);
    v103 = v67;
    v100 = *(a1 + 48);
    [v83 _findValidAutoFavoritesWithCandidates:v62 channelsAllowedProvider:v105 topicsAllowedProvider:v104 completion:v94];

    if (!v59)
    {
    }

    v6 = v86;
    if (!v57)
    {
    }

    v3 = v93;
    v8 = v89;
    if (!v55)
    {
    }

    v13 = v88;
    if (!v53)
    {
    }

    v9 = v92;
    if (v91)
    {
      if (v92)
      {
        goto LABEL_98;
      }
    }

    else
    {

      if (v92)
      {
        goto LABEL_98;
      }
    }

LABEL_98:
    if (v85)
    {
      if (v93)
      {
LABEL_100:

        goto LABEL_105;
      }
    }

    else
    {

      if (v93)
      {
        goto LABEL_100;
      }
    }

    goto LABEL_100;
  }

  v68 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v69 = *(a1 + 32);
    v70 = v68;
    v71 = [v69 shortOperationDescription];
    *buf = 138543362;
    v118 = v71;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ done because there are no candidates", buf, 0xCu);
  }

  v72 = *(a1 + 48);
  if (v72)
  {
    (*(v72 + 16))();
  }

LABEL_105:
}

id sub_10001260C(uint64_t a1)
{
  v2 = [*(a1 + 32) subscriptionController];
  v3 = [v2 subscriptionsWithType:0];

  v4 = [v3 count];
  if (v4 < [*(a1 + 40) numSubscriptionsToDisableDefaultTopics])
  {
    goto LABEL_2;
  }

  v10 = [*(a1 + 40) numEventsToDisableDefaultTopics];
  if (v10)
  {
    v11 = v10;
    if (v10 >= 1)
    {
      v12 = [*(a1 + 32) aggregateStore];
      v5 = [v12 baselineAggregateWithConfigurableValues:*(a1 + 40)];

      if ([v5 eventCount] >= v11)
      {
        v8 = +[NSSet set];
        goto LABEL_3;
      }
    }

LABEL_2:
    v5 = [*(a1 + 32) whitelist];
    v6 = [v5 defaultTags];
    v7 = [v6 allKeys];
    v8 = [NSSet setWithArray:v7];

LABEL_3:
    goto LABEL_4;
  }

  v8 = +[NSSet set];
LABEL_4:

  return v8;
}

void sub_100012768(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 dateAdded];
  v4 = *(a1 + 32);
  v5 = [v8 tagID];
  [v4 setObject:v3 forKeyedSubscript:v5];

  if ([v8 subscriptionOrigin] == 3)
  {
    v6 = *(a1 + 40);
    v7 = [v8 tagID];
    [v6 addObject:v7];
  }
}

uint64_t sub_100012828(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(*(a1 + 40) + 8) + 40) containsObject:v3] & 1) != 0 || (objc_msgSend(*(a1 + 32), "containsObject:", v3) & 1) != 0 || (objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "containsObject:", v3) & 1) != 0 || (objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "containsObject:", v3))
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(*(*(a1 + 64) + 8) + 40) containsObject:v3];
  }

  return v4;
}

void sub_1000128E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 shortOperationDescription];
    *buf = 138543618;
    v59 = v7;
    v60 = 2048;
    v61 = [v3 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ found %lu valid candidates", buf, 0x16u);
  }

  [*(a1 + 40) autoUnfavoriteFactor];
  v9 = v8;
  [*(a1 + 40) autoGroupableFactor];
  v11 = v9 / v10;
  [*(a1 + 40) appUsagePriorFactorExponent];
  v13 = v12;
  [*(a1 + 40) appUsageTagFavorabilityExponent];
  v14 = *(a1 + 32);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100012E10;
  v52[3] = &unk_1000C1D30;
  v52[4] = v14;
  v54 = v13;
  v55 = v15;
  v16 = *(a1 + 48);
  v53 = *(a1 + 56);
  v56 = v11;
  v57 = v9;
  v17 = [v14 auditCandidates:v3 autoSubscriptionAddedDateByTagId:v16 multiplierProvider:v52];
  v18 = [v17 copy];
  v19 = [v17 count];
  if (v19 > [*(a1 + 40) maxNumberOfSuggestions])
  {
    v20 = [*(a1 + 32) tagRanker];
    v21 = [v17 allObjects];
    v22 = [v20 scoresForTagIDs:v21];

    v23 = [v17 allObjects];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100012E94;
    v50[3] = &unk_1000C1D58;
    v51 = v22;
    v24 = v22;
    v25 = [v23 sortedArrayUsingComparator:v50];
    v26 = [v25 fc_safeSubarrayWithCountFromFront:{objc_msgSend(*(a1 + 40), "maxNumberOfSuggestions")}];
    v27 = [NSSet setWithArray:v26];

    v17 = v27;
  }

  v28 = objc_alloc_init(FRPersonalizationAutoFavorites);
  v43 = _NSConcreteStackBlock;
  v44 = 3221225472;
  v45 = sub_100012F30;
  v46 = &unk_1000C1DA8;
  v29 = v17;
  v47 = v29;
  v30 = *(a1 + 56);
  v31 = *(a1 + 32);
  v48 = v30;
  v49 = v31;
  v32 = [NSDictionary fc_dictionary:&v43];
  [(FRPersonalizationAutoFavorites *)v28 setAutoFavoriteTagIDsToScores:v32, v43, v44, v45, v46];

  v33 = [*(a1 + 56) fc_setByIntersectingSet:v29];
  [(FRPersonalizationAutoFavorites *)v28 setGroupableFavoriteTagIDs:v33];

  v34 = [*(a1 + 64) fc_setByIntersectingSet:v18];
  [(FRPersonalizationAutoFavorites *)v28 setDefaultCandidates:v34];

  v35 = [*(*(*(a1 + 88) + 8) + 40) fc_setByIntersectingSet:v18];
  [(FRPersonalizationAutoFavorites *)v28 setInternalSignalAutoFavoriteCandidates:v35];

  v36 = [*(a1 + 72) fc_setByIntersectingSet:v18];
  [(FRPersonalizationAutoFavorites *)v28 setExistingInternalSignalAutoFavoriteCandidates:v36];

  v37 = [*(a1 + 56) fc_setByIntersectingSet:v18];
  [(FRPersonalizationAutoFavorites *)v28 setGroupableCandidates:v37];

  v38 = [*(*(*(a1 + 96) + 8) + 40) fc_setByIntersectingSet:v18];
  [(FRPersonalizationAutoFavorites *)v28 setPortraitAutoFavoriteCandidates:v38];

  v39 = [*(*(*(a1 + 104) + 8) + 40) fc_setByIntersectingSet:v18];
  [(FRPersonalizationAutoFavorites *)v28 setAppUsageAutoFavoriteCandidates:v39];

  v40 = [*(*(*(a1 + 112) + 8) + 40) fc_setByIntersectingSet:v18];
  [(FRPersonalizationAutoFavorites *)v28 setSafariAutoFavoriteCandidates:v40];

  v41 = [*(*(*(a1 + 120) + 8) + 40) fc_setByIntersectingSet:v18];
  [(FRPersonalizationAutoFavorites *)v28 setLocationAutoFavoriteCandidates:v41];

  [*(a1 + 32) setResultAutoFavorites:v28];
  v42 = *(a1 + 80);
  if (v42)
  {
    (*(v42 + 16))();
  }
}

double sub_100012E10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = a2;
  [v3 metricMultiplierForTagID:v6 withPriorFactorExponent:v4 tagFavorabilityExponent:v5];
  v8 = v7;
  LODWORD(v3) = [*(a1 + 40) containsObject:v6];

  v9 = 72;
  if (v3)
  {
    v9 = 64;
  }

  return v8 * *(a1 + v9);
}

id sub_100012E94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:a3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &off_1000CB510;
  }

  v10 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &off_1000CB510;
  }

  v12 = [v9 compare:v11];

  return v12;
}

void sub_100012F30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) fc_setByMinusingSet:*(a1 + 40)];
  v5 = [*(a1 + 48) aggregateStore];
  v6 = [v4 allObjects];
  v7 = [FCPersonalizationFeature featuresFromTagIDs:v6];
  v8 = [v5 aggregatesForFeatures:v7];

  v9 = [*(a1 + 48) aggregateStore];
  v10 = [*(a1 + 48) configurableValues];
  v11 = [v9 baselineAggregateWithConfigurableValues:v10];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000130BC;
  v15[3] = &unk_1000C1D80;
  v15[4] = *(a1 + 48);
  v16 = v8;
  v17 = v3;
  v18 = v11;
  v12 = v11;
  v13 = v3;
  v14 = v8;
  [v4 enumerateObjectsUsingBlock:v15];
}

void sub_1000130BC(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) whitelist];
  v4 = [*(a1 + 32) configurableValues];
  v5 = [v4 defaultScoringConfig];
  [v5 baselineRatePrior];
  FCPersonalizationBaselineClicksMultiplerForTagID();

  v6 = *(a1 + 40);
  v7 = [FCPersonalizationFeature featureFromTagID:v12];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = *(a1 + 56);
  v10 = [*(a1 + 32) aggregateStore];
  [v10 decayRate];
  if (v8)
  {
    [v8 personalizationValueWithBaseline:v9 decayRate:? baselineClicksMultiplier:?];
  }

  else
  {
    [v9 personalizationValueWithBaseline:0 decayRate:?];
  }

  v11 = [NSNumber numberWithDouble:?];
  [*(a1 + 48) setObject:v11 forKeyedSubscript:v12];
}

void sub_10001356C(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) subscriptionController];
  v4 = [v3 mutedTagIDs];
  if ([v4 containsObject:v15])
  {
    goto LABEL_4;
  }

  v5 = [*(a1 + 32) subscriptionController];
  v6 = [v5 subscribedTagIDs];
  if ([v6 containsObject:v15])
  {

LABEL_4:
    goto LABEL_5;
  }

  v7 = [*(a1 + 32) subscriptionController];
  v8 = [v7 ignoredTagIDs];
  v9 = [v8 containsObject:v15];

  if ((v9 & 1) == 0)
  {
    v10 = [*(a1 + 40) defaultTags];
    v11 = [v10 objectForKeyedSubscript:v15];
    if (v11)
    {
    }

    else
    {
      v12 = [*(a1 + 40) optionalTags];
      v13 = [v12 objectForKeyedSubscript:v15];

      if (!v13)
      {
        v14 = *(a1 + 56);
        goto LABEL_13;
      }
    }

    v14 = *(a1 + 48);
LABEL_13:
    [v14 addObject:v15];
  }

LABEL_5:
}

void sub_1000136E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:v8];
        if ([v9 isSubscribable] && +[FCTagController isTagAllowed:](FCTagController, "isTagAllowed:", v9) && (objc_msgSend(v9, "isSports") & 1) == 0)
        {
          v10 = [v9 tagType];
          if (v10 == 1)
          {
            if (([v9 isHidden] & 1) == 0 && (*(*(a1 + 56) + 16))())
            {
LABEL_16:
              [*(a1 + 32) addObject:v8];
            }
          }

          else if (v10 == 2 && ([v9 isHidden] & 1) == 0 && ((*(*(a1 + 48) + 16))() & 1) != 0)
          {
            goto LABEL_16;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_100013890(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_1000138B0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100013B00(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [v23 featureKey];
  v4 = [FCPersonalizationFeature featureForIdentifier:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 tagID];
    [*(a1 + 32) internalUsageSignalWeight];
    v7 = v6;
    [*(a1 + 40) ctrForTagID:v5 withAggregate:v23 baselineAggregate:*(a1 + 48)];
    v9 = v7 * v8;
    v10 = *(a1 + 40);
    [*(a1 + 32) appUsagePriorFactorExponent];
    v12 = v11;
    [*(a1 + 32) appUsageTagFavorabilityExponent];
    [v10 metricMultiplierForTagID:v5 withPriorFactorExponent:v12 tagFavorabilityExponent:v13];
    v15 = v14;
    if ([*(a1 + 40) shouldAcceptAggregate:v23 withCtr:v9 minEvents:*(a1 + 72) minClicks:*(a1 + 80) minRate:*(a1 + 88) baseRate:*(a1 + 96) multiplier:v14])
    {
      v16 = 56;
    }

    else
    {
      v17 = *(a1 + 72);
      v18 = *(a1 + 80);
      v19 = *(a1 + 88);
      v20 = *(a1 + 96);
      v21 = *(a1 + 40);
      [*(a1 + 32) autoGroupableFactor];
      if (![v21 shouldAcceptAggregate:v23 withCtr:v9 minEvents:v17 minClicks:v18 minRate:v19 baseRate:v20 multiplier:v15 / v22])
      {
LABEL_7:

        goto LABEL_8;
      }

      v16 = 64;
    }

    [*(a1 + v16) addObject:v5];
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100013FAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 shortOperationDescription];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ did consider location", &v9, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

void sub_1000140A0(void *a1, void *a2)
{
  v3 = a2;
  v4 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = v4;
    v7 = [v5 shortOperationDescription];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ did fetch local areas provider", &v9, 0xCu);
  }

  v8 = [v3 autoFavoriteTagIDsForLocation:a1[5]];
  (*(a1[6] + 16))();
}

double sub_1000143BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 portraitSignalWeight];
  v6 = v5;
  v7 = *(a1 + 40);
  [*(a1 + 32) portraitPriorFactorExponent];
  v9 = v8;
  [*(a1 + 32) portraitTagFavorabilityExponent];
  [v7 metricMultiplierForTagID:v4 withPriorFactorExponent:v9 tagFavorabilityExponent:v10];
  v12 = v11;

  return v6 * v12;
}

void sub_1000146A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000146D0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v8 = FCBiomeLog;
  if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v9 shortOperationDescription];
    v45 = 138543362;
    v46 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ did consider Biome", &v45, 0xCu);
  }

  v12 = [*(a1 + 32) bundleIDMapping];

  if (!v12)
  {
    v13 = FCBiomeLog;
    if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006A610(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = &__NSArray0__struct;
  }

  v23 = [*(a1 + 32) urlMapping];

  if (!v23)
  {
    v24 = FCBiomeLog;
    if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006A648(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    v32 = *(*(a1 + 56) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = &__NSArray0__struct;
  }

  v34 = [*(*(*(a1 + 48) + 8) + 40) count];
  v35 = [*(*(*(a1 + 56) + 8) + 40) count];
  v36 = FCBiomeLog;
  v37 = os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT);
  if (&v35[v34])
  {
    if (v37)
    {
      v41 = *(*(*(a1 + 48) + 8) + 40);
      v42 = v36;
      v43 = [v41 count];
      v44 = [*(*(*(a1 + 56) + 8) + 40) count];
      v45 = 134217984;
      v46 = &v43[v44];
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Got back %lu results from Biome", &v45, 0xCu);
    }

    [*(a1 + 32) processAppSignals:*(*(*(a1 + 48) + 8) + 40) safariSignals:*(*(*(a1 + 56) + 8) + 40) completion:*(a1 + 40)];
  }

  else
  {
    if (v37)
    {
      LOWORD(v45) = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Didn't get any results back from Biome", &v45, 2u);
    }

    v38 = *(a1 + 40);
    if (v38)
    {
      v39 = +[NSSet set];
      v40 = +[NSSet set];
      (*(v38 + 16))(v38, v39, v40);
    }
  }
}

void sub_100015014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 shortOperationDescription];
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ did process app signals", &v12, 0xCu);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }
}

void sub_100015124(id a1, NSDictionary *a2, NSMutableDictionary *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000151B8;
  v5[3] = &unk_1000C1FE0;
  v6 = a3;
  v4 = v6;
  [(NSDictionary *)a2 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_1000151B8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  [v11 addObject:v6];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v7];
}

void sub_10001526C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000153F8;
  v14[3] = &unk_1000C2080;
  v7 = *(a1 + 32);
  v8 = v6;
  v21 = *(a1 + 80);
  v18 = v8;
  v20 = v22;
  v19 = *(a1 + 72);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v7;
  *(&v13 + 1) = v9;
  v15 = v13;
  v16 = v12;
  v17 = *(a1 + 64);
  [v5 enumerateObjectsUsingBlock:v14];

  _Block_object_dispose(v22, 8);
}

void sub_1000153F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  v5 = [v3 content];
  v6 = [v3 date];

  if ((v4 - 2) < 2)
  {
    v7 = [*(a1 + 32) tagScoresForBundleID:v5];
    if ([v7 count])
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100015708;
      v30[3] = &unk_1000C2008;
      v8 = v31;
      v9 = *(a1 + 72);
      v11 = *(a1 + 88);
      v10 = (a1 + 88);
      v32 = v10[8];
      v31[0] = v9;
      v31[1] = v11;
      v12 = [v7 fc_dictionaryByTransformingValuesWithBlock:v30];
      (*(*(v10 - 1) + 16))();
      if (*(v10 - 5) && [v6 compare:?] == -1)
      {
        goto LABEL_12;
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100015788;
      v28[3] = &unk_1000C2030;
      v13 = &v29;
      v12 = v12;
      v29 = v12;
      v14 = v28;
LABEL_11:
      [FRPersonalizationFeatureBundle personalizationFeatureBundleForFeaturesGenerator:v14, v17, v18, v19, v20, v21, v22, v23, v24, v25];

LABEL_12:
      ++*(*(*v10 + 8) + 24);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v4 == 1)
  {
    v7 = [*(a1 + 56) tagScoresForURL:v5];
    if ([v7 count])
    {
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_1000157E8;
      v25 = &unk_1000C2058;
      v8 = v26;
      v15 = *(a1 + 72);
      v16 = *(a1 + 88);
      v10 = (a1 + 88);
      v27 = v10[8];
      v26[0] = v15;
      v26[1] = v16;
      v12 = [v7 fc_dictionaryByTransformingValuesWithKeyAndValueBlock:&v22];
      (*(*(v10 - 1) + 16))();
      if (*(v10 - 5) && [v6 compare:?] == -1)
      {
        goto LABEL_12;
      }

      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100015868;
      v20 = &unk_1000C2030;
      v13 = &v21;
      v12 = v12;
      v21 = v12;
      v14 = &v17;
      goto LABEL_11;
    }

LABEL_13:
  }
}

NSNumber *sub_100015708(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  if (*(a1 + 48))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*(*(a1 + 40) + 8) + 24);
  }

  v5 = v3 * (*(*(a1 + 32) + 16))(*(a1 + 32), v4);

  return [NSNumber numberWithDouble:v5];
}

id sub_100015788(uint64_t a1)
{
  v1 = [*(a1 + 32) allKeys];
  v2 = [FCPersonalizationFeature featuresFromTagIDs:v1];

  return v2;
}

NSNumber *sub_1000157E8(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 doubleValue];
  if (*(a1 + 48))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
  }

  v6 = v4 * (*(*(a1 + 32) + 16))(*(a1 + 32), v5);

  return [NSNumber numberWithDouble:v6];
}

id sub_100015868(uint64_t a1)
{
  v1 = [*(a1 + 32) allKeys];
  v2 = [FCPersonalizationFeature featuresFromTagIDs:v1];

  return v2;
}

long double sub_1000158C8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 40);
  [*(a1 + 32) appUsageOccurrenceDecayMultiplier];
  return v3 * pow(v4, a2);
}

long double sub_100015908(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 40);
  [*(a1 + 32) safariOccurrenceDecayMultiplier];
  return v3 * pow(v4, a2);
}

void sub_100016000(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 resultCursor];
  [v8 setLastInternalSignalAutoFavorites:v7];

  v9 = [*(a1 + 32) resultCursor];
  [v9 setLastInternalSignalGroupableFavorites:v6];

  v10 = *(a1 + 40);

  dispatch_group_leave(v10);
}

void sub_100016094(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) resultCursor];
  v3 = [v6 lastInternalSignalAutoFavorites];
  v4 = [*(a1 + 32) resultCursor];
  v5 = [v4 lastInternalSignalGroupableFavorites];
  (*(v2 + 16))(v2, v3, v5);
}

void sub_100016134(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) resultCursor];
  v3 = [v6 lastInternalSignalAutoFavorites];
  v4 = [*(a1 + 32) resultCursor];
  v5 = [v4 lastInternalSignalGroupableFavorites];
  (*(v2 + 16))(v2, v3, v5);
}

void sub_100016514(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = +[NSUserDefaults standardUserDefaults];
  v13 = [v12 BOOLForKey:FCPersonalizationSimulateSuggestions];

  if (v13)
  {
    v14 = [v20 setByAddingObjectsFromArray:&off_1000CB340];

    v15 = [v10 setByAddingObjectsFromArray:&off_1000CB358];

    v16 = [v9 setByAddingObjectsFromArray:&off_1000CB370];

    v17 = [v11 setByAddingObjectsFromArray:&off_1000CB388];

    v18 = v14;
    v9 = v16;
    v10 = v15;
    v11 = v17;
  }

  else
  {
    v18 = v20;
  }

  v21 = v18;
  v19 = *(a1 + 32);
  if (v19)
  {
    (*(v19 + 16))(v19, v21, v9, v10, v11);
  }
}

void sub_100016684(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 resultCursor];
  [v8 setLastAppUsageAutoFavoriteResults:v7];

  v9 = [*(a1 + 32) resultCursor];
  [v9 setLastSafariAutoFavoriteResults:v6];

  v10 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100016778;
  v11[3] = &unk_1000C2148;
  v11[4] = v10;
  v12 = *(a1 + 40);
  [v10 considerLocation:v11];
}

void sub_100016778(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 resultCursor];
  [v5 setLastLocationAutoFavoriteResults:v4];

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void sub_1000167E0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) resultCursor];
  v4 = [v3 lastPortraitAutoFavoriteResults];
  v5 = [*(a1 + 32) resultCursor];
  v6 = [v5 lastAppUsageAutoFavoriteResults];
  v7 = [*(a1 + 32) resultCursor];
  v8 = [v7 lastSafariAutoFavoriteResults];
  v9 = [*(a1 + 32) resultCursor];
  v10 = [v9 lastLocationAutoFavoriteResults];
  (*(v2 + 16))(v2, v4, v6, v8, v10);

  v11 = +[NSDate date];
  v12 = [*(a1 + 32) resultCursor];
  [v12 setLastExternalSignalProcessingDate:v11];

  v13 = [*(a1 + 32) resultCursor];
  v14 = [v13 lastExternalSignalProcessingDate];
  v15 = [*(a1 + 32) resultCursor];
  [v15 setCoreDuetLastQueryDate:v14];

  v18 = [*(a1 + 32) resultCursor];
  v16 = [v18 lastExternalSignalProcessingDate];
  v17 = [*(a1 + 32) resultCursor];
  [v17 setPortraitLastQueryDate:v16];
}

id sub_100017088(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [FCTagIDFeature featureFromTagID:v3];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = [*(a1 + 64) objectForKeyedSubscript:v3];
  LOBYTE(a1) = [v4 shouldRejectTagID:v3 withAggregate:v7 baseline:v8 currentDate:v9 addedDate:v10 maxIdleTime:*(a1 + 80) minEvents:*(a1 + 88) minRate:*(a1 + 96) baseRate:*(a1 + 104) multiplier:(*(*(a1 + 72) + 16))()];

  if (a1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v3;
  }

  return v11;
}

void sub_100017954(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

void sub_100017970(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100017B04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100017BEC;
  v6[3] = &unk_1000C21F8;
  v9 = *(a1 + 48);
  v11 = *(a1 + 64);
  v7 = *(a1 + 40);
  v10 = *(a1 + 56);
  v8 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_100017BEC(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = *(a1 + 48);
  v7 = [NSNumber numberWithDouble:*(a1 + 64)];
  v8 = [NSString stringWithFormat:@"Considering signal %@ from Portait with threshold %@", v15, v7];
  (*(v6 + 16))(v6, v8);

  if ([*(a1 + 32) containsObject:v15])
  {
    v9 = *(a1 + 48);
    v10 = [NSString stringWithFormat:@"Portrait signal from %@ not added because it is disabled", v15];
    (*(v9 + 16))(v9, v10);
  }

  else
  {
    [v5 doubleValue];
    v12 = v11 * (*(*(a1 + 56) + 16))();
    if (v12 >= *(a1 + 64))
    {
      [*(a1 + 40) addObject:v15];
      v13 = *(a1 + 48);
      v10 = [NSNumber numberWithDouble:v12];
      [NSString stringWithFormat:@"Autofavorite %@ based on Portrait Signal with score %@", v15, v10];
    }

    else
    {
      v13 = *(a1 + 48);
      v10 = [NSNumber numberWithDouble:v12];
      [NSString stringWithFormat:@"Portrait signal from %@ not added to auto-favorites with score %@", v15, v10];
    }
    v14 = ;
    (*(v13 + 16))(v13, v14);
  }
}

void sub_100018040(uint64_t a1)
{
  v2 = FRPortraitLog;
  if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "No topics found for articleID: %{public}@ when considering portrait feedback for explicit engagement", &v4, 0xCu);
  }
}

void sub_1000180E8(uint64_t a1)
{
  v2 = FRPortraitLog;
  if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "No topics found for articleID: %{public}@ when considering portrait feedback for explicit engagement", &v4, 0xCu);
  }
}

void sub_100018190(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = FRPortraitLog;
  if (v4)
  {
    if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006AF54();
    }
  }

  else if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully submitted portrait feedback for explicit engagement with articleID: %{public}@ and topicIDs: %{public}@", &v8, 0x16u);
  }
}

void sub_1000184E4(uint64_t a1)
{
  v2 = FRPortraitLog;
  if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "No topics found for articleID: %{public}@ when considering portrait feedback for explicit rejection", &v4, 0xCu);
  }
}

void sub_10001858C(uint64_t a1)
{
  v2 = FRPortraitLog;
  if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "No topics found for articleID: %{public}@ when considering portrait feedback for explicit rejection", &v4, 0xCu);
  }
}

void sub_100018634(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = FRPortraitLog;
  if (v4)
  {
    if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006AFBC();
    }
  }

  else if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully submitted portrait feedback for explicit rejection with articleID: %{public}@ and topicIDs: %{public}@", &v8, 0x16u);
  }
}

void sub_100018940(uint64_t a1)
{
  v2 = FRPortraitLog;
  if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "No topics found for articleID: %{public}@ when considering portrait feedback for implicit engagement", &v4, 0xCu);
  }
}

void sub_1000189E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = FRPortraitLog;
  if (v4)
  {
    if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006B024();
    }
  }

  else if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully submitted portrait feedback for implicit engagement with articleID: %{public}@ and topicIDs: %{public}@", &v8, 0x16u);
  }
}

void sub_100018CF4(uint64_t a1)
{
  v2 = FRPortraitLog;
  if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "No topics found for articleID: %{public}@ when considering portrait feedback for implicit rejection", &v4, 0xCu);
  }
}

void sub_100018D9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = FRPortraitLog;
  if (v4)
  {
    if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006B08C();
    }
  }

  else if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully submitted portrait feedback for implicit rejection with articleID: %{public}@ and topicIDs: %{public}@", &v8, 0x16u);
  }
}

TSClearDataManager *__cdecl sub_1000195DC(id a1, TFResolver *a2)
{
  v2 = a2;
  v16 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCPrivateDataContext];
  v3 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCAppleAccount];
  v15 = [(TFResolver *)v2 resolveClass:objc_opt_class()];
  v4 = [FRMenuBarClearDataManager alloc];
  v5 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCClearableReadingHistory];
  v14 = [v16 personalizationData];
  v6 = [(TFResolver *)v2 resolveClass:objc_opt_class()];
  v7 = [v15 newsletterManager];
  v8 = [v15 userEventHistory];
  v9 = [v8 storage];
  v10 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___TSNewsActivityManagerType];
  v11 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCClearableUserEmbedding];

  v12 = [(FRMenuBarClearDataManager *)v4 initWithAccount:v3 clearReadingHistoryManager:v5 personalizationData:v14 analyticsController:v6 newsletterManager:v7 userEventHistoryStorage:v9 userActivityManager:v10 clearableUserEmbedding:v11];

  return v12;
}

void sub_10001A400(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  [*(a1 + 32) size];
  CGContextTranslateCTM(CurrentContext, 0.0, -v3);
  CGContextSaveGState(CurrentContext);
  CGContextClipToMask(CurrentContext, *(a1 + 48), [*(a1 + 32) CGImage]);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeMultiply);
  CGContextSetFillColorWithColor(CurrentContext, [*(a1 + 40) CGColor]);
  CGContextFillRect(CurrentContext, *(a1 + 48));

  CGContextRestoreGState(CurrentContext);
}

void sub_10001A5C4(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, -*(a1 + 56));
  CGContextSaveGState(CurrentContext);
  CGContextClipToMask(CurrentContext, *(a1 + 64), [*(a1 + 32) CGImage]);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeMultiply);
  CGContextSetFillColorWithColor(CurrentContext, [*(a1 + 40) CGColor]);
  CGContextFillRect(CurrentContext, *(a1 + 64));

  CGContextRestoreGState(CurrentContext);
}

id sub_10001A888(uint64_t a1)
{
  [*(a1 + 32) size];
  v3 = v2;
  [*(a1 + 32) size];
  v5 = v4;
  [*(a1 + 40) setFill];
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = v3;
  v9.size.height = v5;
  UIRectFill(v9);
  v6 = *(a1 + 32);

  return [v6 drawInRect:{0.0, 0.0, v3, v5}];
}

id sub_10001AAF0(uint64_t a1)
{
  [*(a1 + 32) setFill];
  [*(a1 + 40) size];
  v3 = v2;
  [*(a1 + 40) size];
  v5 = v4;
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = v3;
  v9.size.height = v5;
  UIRectFill(v9);
  v6 = *(a1 + 40);

  return [v6 drawInRect:1 blendMode:0.0 alpha:{0.0, v3, v5, 1.0}];
}

id sub_10001AD3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 setFill];
    UIRectFill(*(a1 + 48));
  }

  v3 = [UIBezierPath bezierPathWithRoundedRect:*(a1 + 48) cornerRadius:*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)];
  [v3 addClip];

  v4 = *(a1 + 40);
  v5 = *(a1 + 88);

  return [v4 drawInRect:{0.0, 0.0, v5, v5}];
}

void sub_10001B0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001B0FC(uint64_t a1, CGContext *a2)
{
  v26.origin.x = FRRectWithSize();
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  v27 = CGRectInset(v26, 1.0, 1.0);
  v24 = [UIBezierPath bezierPathWithRoundedRect:v27.origin.x cornerRadius:v27.origin.y, v27.size.width, v27.size.height, *(a1 + 80) * *(a1 + 88)];
  CGContextBeginPath(a2);
  v8 = v24;
  CGContextAddPath(a2, [v24 CGPath]);
  CGContextClip(a2);
  v9 = *(a1 + 32);
  if (v9)
  {
    CGContextSetFillColorWithColor(a2, [v9 CGColor]);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    CGContextFillRect(a2, v28);
  }

  CGContextSetInterpolationQuality(a2, kCGInterpolationHigh);
  v10 = FRCenterOfRect(x, y, width, height);
  v12 = FRRectWithCenterAndSize(v10, v11, *(a1 + 96));
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [*(a1 + 40) CGImage];
  v29.origin.x = v12;
  v29.origin.y = v14;
  v29.size.width = v16;
  v29.size.height = v18;
  CGContextDrawImage(a2, v29, v19);
  if (*(a1 + 48))
  {
    [v24 bounds];
    CGContextAddEllipseInRect(a2, v30);
    CGContextSetStrokeColorWithColor(a2, [*(a1 + 48) CGColor]);
    CGContextSetLineWidth(a2, *(a1 + 88));
    CGContextStrokePath(a2);
  }

  Image = CGBitmapContextCreateImage(a2);
  v21 = [[UIImage alloc] initWithCGImage:Image scale:*(a1 + 112) orientation:*(a1 + 88)];
  v22 = *(*(a1 + 56) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  CGImageRelease(Image);
}

void sub_10001B660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001B678(uint64_t a1, CGContextRef c)
{
  CGContextSetInterpolationQuality(c, kCGInterpolationHigh);
  CGContextScaleCTM(c, 1.0, -1.0);
  CGContextTranslateCTM(c, 0.0, -*(a1 + 48));
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) CGImage];
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = v4;
  v12.size.height = v5;
  CGContextDrawImage(c, v12, v6);
  Image = CGBitmapContextCreateImage(c);
  v8 = [[UIImage alloc] initWithCGImage:Image scale:*(a1 + 80) orientation:*(a1 + 72)];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  CGImageRelease(Image);
}

void sub_10001BD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001BD60(uint64_t a1, CGContextRef c)
{
  CGContextSetInterpolationQuality(c, kCGInterpolationHigh);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = [*(a1 + 32) CGImage];
  v18.origin.x = 0.0;
  v18.origin.y = v4;
  v18.size.width = v5;
  v18.size.height = v6;
  CGContextDrawImage(c, v18, v7);
  v8 = +[UIColor clearColor];
  CGContextSetFillColorWithColor(c, [v8 CGColor]);

  v19.size.height = *(a1 + 56);
  v19.size.width = *(a1 + 64);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  CGContextFillRect(c, v19);
  v9 = *(a1 + 88);
  v10 = (*(a1 + 80) - v9) * 0.5;
  v11 = *(a1 + 56) - v9 * 0.5;
  v12 = [*(a1 + 40) CGImage];
  v20.origin.x = v10;
  v20.origin.y = v11;
  v20.size.width = v9;
  v20.size.height = v9;
  CGContextDrawImage(c, v20, v12);
  Image = CGBitmapContextCreateImage(c);
  v14 = [[UIImage alloc] initWithCGImage:Image scale:objc_msgSend(*(a1 + 32) orientation:{"imageOrientation"), *(a1 + 96)}];
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  CGImageRelease(Image);
}

void sub_10001C0E8(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetFillColorWithColor(CurrentContext, [*(a1 + 32) CGColor]);
  v3 = [UIBezierPath bezierPathWithRoundedRect:*(a1 + 40) cornerRadius:*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)];
  [v3 fillWithBlendMode:0 alpha:1.0];
}

void sub_10001C7D4(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, -*(a1 + 48));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, v3, v4, *(a1 + 56)];
  [v6 addClip];
  v5 = [*(a1 + 32) CGImage];
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = v3;
  v8.size.height = v4;
  CGContextDrawImage(CurrentContext, v8, v5);
}

id sub_10001D0BC(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, -*(a1 + 56));
  CGContextDrawImage(CurrentContext, *(a1 + 64), [*(a1 + 32) CGImage]);
  Data = CGBitmapContextGetData(CurrentContext);
  Width = CGBitmapContextGetWidth(CurrentContext);
  Height = CGBitmapContextGetHeight(CurrentContext);
  BytesPerRow = CGBitmapContextGetBytesPerRow(CurrentContext);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001D1F8;
  v8[3] = &unk_1000C23F0;
  v15 = *(a1 + 120);
  v9 = vextq_s8(*(a1 + 96), *(a1 + 96), 8uLL);
  v10 = Data;
  v11 = Height;
  v12 = Width;
  v13 = BytesPerRow;
  v14 = *(a1 + 112);
  v8[4] = *(a1 + 40);
  return [FRMacros useManagedContextWithSize:0 opaque:1 forceSRGB:v8 scale:*(a1 + 48) contextBlock:*(a1 + 56)];
}

void sub_10001D1F8(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  dest.data = CGBitmapContextGetData(CurrentContext);
  dest.width = CGBitmapContextGetWidth(CurrentContext);
  dest.height = CGBitmapContextGetHeight(CurrentContext);
  dest.rowBytes = CGBitmapContextGetBytesPerRow(CurrentContext);
  if (*(a1 + 96) == 1)
  {
    v3 = vcvtmd_u64_f64(*(a1 + 40) * *(a1 + 48) * 3.0 * 2.50662827 * 0.25 + 0.5);
    vImageBoxConvolve_ARGB8888((a1 + 56), &dest, 0, 0, 0, v3 | 1, v3 | 1, 0, 8u);
    vImageBoxConvolve_ARGB8888(&dest, (a1 + 56), 0, 0, 0, v3 | 1, v3 | 1, 0, 8u);
    vImageBoxConvolve_ARGB8888((a1 + 56), &dest, 0, 0, 0, v3 | 1, v3 | 1, 0, 8u);
  }

  if (*(a1 + 97) == 1)
  {
    v4 = *(a1 + 88);
    v18 = v4 * 0.9278 + 0.0722;
    v19 = v4 * -0.0722 + 0.0722;
    v20 = v19;
    v22 = vmlaq_n_f64(vdupq_n_s64(0x3FE6E2EB1C432CA5uLL), xmmword_1000B6E50, v4);
    v23 = v22.f64[0];
    v29 = 0x3FF0000000000000;
    v21 = 0;
    v24 = 0;
    v5 = vmlaq_n_f64(vdupq_n_s64(0x3FCB367A0F9096BCuLL), xmmword_1000B6E60, v4);
    v25 = v5.f64[0];
    v26 = v5;
    v27 = 0u;
    v28 = 0u;
    v6 = 0;
    v7 = &v18;
    v8 = vdupq_n_s64(0x4070000000000000uLL);
    do
    {
      v9 = *v7;
      v10 = *(v7 + 2);
      v7 += 4;
      *&v16[v6] = vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v9, v8)), vmulq_f64(v10, v8)))));
      v6 += 4;
    }

    while (v6 != 16);
    if (*(a1 + 96) == 1)
    {
      p_dest = &dest;
      v12 = (a1 + 56);
    }

    else
    {
      p_dest = (a1 + 56);
      v12 = &dest;
    }

    vImageMatrixMultiply_ARGB8888(p_dest, v12, v16, 256, 0, 0, 0);
  }

  v13 = UIGraphicsGetImageFromCurrentImageContext();
  v14 = *(*(a1 + 32) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

void sub_10001D48C(uint64_t a1, CGContext *a2)
{
  v45 = *(a1 + 32);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  v7 = *(a1 + 40);
  CGContextScaleCTM(a2, 1.0, -1.0);
  CGContextTranslateCTM(a2, 0.0, -*(a1 + 128));
  CGContextSaveGState(a2);
  Width = CGRectGetWidth(*(a1 + 136));
  if (vabdd_f64(Width, CGRectGetHeight(*(a1 + 136))) >= 0.00999999978)
  {
    CGContextDrawImage(a2, *(a1 + 136), [*(a1 + 48) CGImage]);
  }

  else
  {
    v9 = *(a1 + 120);
    v10 = *(a1 + 128);
    v48.origin.x = 0.0;
    v48.origin.y = 0.0;
    v48.size.width = v9;
    v48.size.height = v9;
    Height = CGRectGetHeight(v48);
    CGContextTranslateCTM(a2, 0.0, v10 - Height);
    v12 = [UIBezierPath bezierPathWithRect:0.0, 0.0, v9, v9];
    [v12 addClip];
    [*(a1 + 48) filledRectForRect:{0.0, 0.0, v9, v9}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [*(a1 + 48) CGImage];
    v49.origin.x = v14;
    v49.origin.y = v16;
    v49.size.width = v18;
    v49.size.height = v20;
    CGContextDrawImage(a2, v49, v21);
  }

  CGContextRestoreGState(a2);
  if (*(a1 + 184) == 1)
  {
    CGContextSaveGState(a2);
    v22 = *(a1 + 56);
    if (v22)
    {
      CGContextClipToMask(a2, *(a1 + 136), [v22 CGImage]);
    }

    CGContextDrawImage(a2, *(a1 + 136), [*(a1 + 64) CGImage]);
    CGContextRestoreGState(a2);
  }

  if (*(a1 + 185) == 1)
  {
    v23 = [UIColor colorWithWhite:1.0 alpha:0.84];

    v24 = [UIColor colorWithWhite:0.2 alpha:0.5];
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = v45;
  }

  v46 = v25;
  if (v25)
  {
    CGContextSaveGState(a2);
    v26 = *(a1 + 56);
    if (v26)
    {
      CGContextClipToMask(a2, *(a1 + 136), [v26 CGImage]);
    }

    CGContextSetFillColorWithColor(a2, [v46 CGColor]);
    CGContextFillRect(a2, *(a1 + 136));
    if (*(a1 + 186) == 1 && *(a1 + 187) == 1)
    {
      v27 = [v46 colorWithAlphaComponent:0.85];
      CGContextSetFillColorWithColor(a2, [v27 CGColor]);

      CGContextFillRect(a2, *(a1 + 136));
    }

    CGContextRestoreGState(a2);
  }

  if (*(a1 + 72))
  {
    CGContextSaveGState(a2);
    CGContextSetInterpolationQuality(a2, kCGInterpolationHigh);
    if (*(a1 + 185) == 1)
    {
      [v24 setFill];
      CGContextClipToMask(a2, *(a1 + 88), [*(a1 + 72) CGImage]);
      CGContextFillRect(a2, *(a1 + 88));
    }

    else
    {
      CGContextDrawImage(a2, *(a1 + 88), [*(a1 + 72) CGImage]);
    }

    goto LABEL_31;
  }

  if (CGRectIsEmpty(*(a1 + 88)))
  {
    goto LABEL_32;
  }

  CGContextSaveGState(a2);
  CGContextTranslateCTM(a2, 0.0, *(a1 + 128));
  CGContextScaleCTM(a2, 1.0, -1.0);
  if (*(a1 + 185) == 1)
  {
    v28 = [*(a1 + 40) mutableCopy];
    [v28 addAttribute:NSForegroundColorAttributeName value:v24 range:{0, objc_msgSend(*(a1 + 40), "length")}];
    v29 = [v28 copy];

    v7 = v29;
  }

  [v7 boundingRectWithSize:35 options:0 context:{*(a1 + 104), *(a1 + 112)}];
  v51 = CGRectIntegral(v50);
  x = v51.origin.x;
  y = v51.origin.y;
  v32 = v51.size.width;
  v33 = v51.size.height;
  v34 = CGRectGetHeight(v51);
  if (v34 < CGRectGetHeight(*(a1 + 88)))
  {
    v52.origin.x = *(a1 + 88);
    v35 = *(a1 + 96);
    v52.size.width = *(a1 + 104);
    v52.size.height = *(a1 + 112);
    v52.origin.y = v35;
    v36 = CGRectGetHeight(v52);
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = v32;
    v53.size.height = v33;
    v37 = v36 - CGRectGetHeight(v53);
    v38 = 0.5;
LABEL_29:
    v5 = v35 + v37 * v38;
    goto LABEL_30;
  }

  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = v32;
  v54.size.height = v33;
  v39 = CGRectGetHeight(v54);
  if (v39 > CGRectGetHeight(*(a1 + 88)))
  {
    v55.origin.x = *(a1 + 88);
    v35 = *(a1 + 96);
    v55.size.width = *(a1 + 104);
    v55.size.height = *(a1 + 112);
    v55.origin.y = v35;
    v40 = CGRectGetHeight(v55);
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = v32;
    v56.size.height = v33;
    v37 = v40 - CGRectGetHeight(v56);
    v38 = -0.5;
    goto LABEL_29;
  }

LABEL_30:
  v57.origin.x = v4;
  v57.origin.y = v5;
  v57.size.width = v6;
  v57.size.height = v33;
  v58 = CGRectIntegral(v57);
  [v7 drawWithRect:35 options:0 context:{v58.origin.x, v58.origin.y, v58.size.width, v58.size.height}];
LABEL_31:
  CGContextRestoreGState(a2);
LABEL_32:
  Image = CGBitmapContextCreateImage(a2);
  v42 = [[UIImage alloc] initWithCGImage:Image scale:*(a1 + 176) orientation:*(a1 + 168)];
  v43 = *(*(a1 + 80) + 8);
  v44 = *(v43 + 40);
  *(v43 + 40) = v42;

  CGImageRelease(Image);
}

void sub_10001DA34(uint64_t a1, CGContextRef c)
{
  components[0] = xmmword_1000B6E80;
  components[1] = unk_1000B6E90;
  CGContextSetStrokeColorSpace(c, *(a1 + 56));
  CGContextSetStrokeColor(c, components);
  CGContextSetLineWidth(c, 1.0 / *(a1 + 64));
  CGContextAddPath(c, [*(a1 + 32) CGPath]);
  CGContextReplacePathWithStrokedPath(c);
  CGContextClip(c);
  [*(*(*(a1 + 40) + 8) + 40) drawAtPoint:{CGPointZero.x, CGPointZero.y}];
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001DCF8;
  v30[3] = &unk_1000C23C8;
  v7 = *(a1 + 56);
  v31 = v4;
  v32 = v7;
  v33 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = v4;
  v10 = [FRMacros imageFromNewGraphicsContextWithSize:0 opaque:v30 scale:v6 contextBlock:v8, v5];
  v11 = *(a1 + 64);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001DDB0;
  v26[3] = &unk_1000C2468;
  v29 = v11;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v27 = v12;
  v28 = v13;
  v14 = [FRMacros imageFromNewGraphicsContextWithSize:0 opaque:v26 scale:*(a1 + 72) contextBlock:*(a1 + 80), v11];
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10001DE30;
  v23[3] = &unk_1000C1920;
  v24 = v14;
  v25 = v10;
  v17 = *(a1 + 80);
  v18 = v10;
  v19 = v14;
  v20 = [FRMacros imageFromNewGraphicsContextWithSize:0 opaque:v23 scale:v16 contextBlock:v17, v15];
  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;
}

void sub_10001DCF8(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [*(a1 + 32) drawAtPoint:{CGPointZero.x, CGPointZero.y}];
  CGContextSetBlendMode(CurrentContext, kCGBlendModeSourceAtop);
  v3[0] = xmmword_1000B6EA0;
  v3[1] = unk_1000B6EB0;
  CGContextSetFillColorSpace(CurrentContext, *(a1 + 40));
  CGContextSetFillColor(CurrentContext, v3);
  v4.size.width = *(a1 + 48);
  v4.size.height = *(a1 + 56);
  v4.origin.x = 0.0;
  v4.origin.y = 0.0;
  CGContextFillRect(CurrentContext, v4);
}

id sub_10001DDB0(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(CurrentContext, 1.0 / *(a1 + 48));
  CGContextAddPath(CurrentContext, [*(a1 + 32) CGPath]);
  CGContextClip(CurrentContext);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  y = CGPointZero.y;

  return [v3 drawAtPoint:{CGPointZero.x, y}];
}

id sub_10001DE30(uint64_t a1)
{
  y = CGPointZero.y;
  [*(a1 + 32) drawAtPoint:{CGPointZero.x, y}];
  v3 = *(a1 + 40);

  return [v3 drawAtPoint:0 blendMode:CGPointZero.x alpha:{y, 1.0}];
}

void sub_10001E97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001EA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001EBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001ECCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001EDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001EF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F070(id a1)
{
  qword_1000E6138 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];

  _objc_release_x1();
}

void sub_10001F100(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000E6148;
  qword_1000E6148 = v1;

  v3 = qword_1000E6148;

  [v3 setDateFormat:@"EEEE"];
}

void sub_10001F198(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000E6158;
  qword_1000E6158 = v1;

  [qword_1000E6158 setTimeStyle:1];
  v3 = qword_1000E6158;

  [v3 setDateStyle:0];
}

void sub_10001F238(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000E6168;
  qword_1000E6168 = v1;

  [qword_1000E6168 setTimeStyle:0];
  v3 = qword_1000E6168;

  [v3 setDateStyle:1];
}

BOOL sub_10001F3F4(id a1, CAFilter *a2)
{
  v2 = [(CAFilter *)a2 name];
  v3 = [v2 isEqualToString:@"kFRAXUndoInvertColorsFilter"];

  return v3;
}

void sub_10001FC70(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  v2 = qword_1000E6180;
  qword_1000E6180 = v1;
}

void sub_100020758(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) feldsparContext];
    v5 = [v4 cloudContext];
    v6 = [v5 subscriptionController];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          v13 = [v12 asChannel];
          if ([v13 supportsNotifications] && objc_msgSend(v6, "hasSubscriptionToTag:", v12))
          {
            [v6 setNotificationsEnabled:1 forTag:v12 error:0];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

void sub_100020A18(uint64_t a1, void *a2)
{
  v3 = a2;
  +[NSThread isMainThread];
  v4 = +[NSMutableSet set];
  v5 = [v3 notificationsConfig];

  v6 = [v5 preSubscribedNotificationsChannelIDs];

  if ([v6 count])
  {
    [v4 addObjectsFromArray:v6];
  }

  if ([v4 count])
  {
    v7 = [*(a1 + 32) feldsparContext];
    v8 = [v7 cloudContext];
    v9 = [v8 tagController];
    v10 = [v4 allObjects];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100020BC4;
    v12[3] = &unk_1000C2608;
    v14 = *(a1 + 40);
    v13 = v6;
    [v9 fetchTagsForTagIDs:v10 qualityOfService:25 callbackQueue:&_dispatch_main_q completionHandler:v12];
  }

  else
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, 0);
    }
  }
}

void sub_100020BC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  +[NSThread isMainThread];
  if (v6)
  {
    v7 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006C05C(v6, v7);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_6:
      v9();
    }
  }

  else
  {
    if (![v5 count])
    {
      v12 = *(a1 + 40);
      if (!v12)
      {
        goto LABEL_11;
      }

      v9 = *(v12 + 16);
      goto LABEL_6;
    }

    v10 = [v5 nf_objectsForKeysWithoutMarker:*(a1 + 32)];
    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, v10, 0);
    }
  }

LABEL_11:
}

void sub_100020DAC(uint64_t a1)
{
  v2 = +[SUUIClientContext defaultContext];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100009B58;
  v9 = sub_100009F00;
  v10 = [[SUUIExplicitRestrictionAlertController alloc] initWithClientContext:v2 presentingViewController:*(a1 + 32)];
  v3 = v6[5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020ED4;
  v4[3] = &unk_1000C2658;
  v4[4] = &v5;
  [v3 presentExplicitRestrictionAlertIfNeededOfType:5 completionBlock:v4];
  _Block_object_dispose(&v5, 8);
}

void sub_100020EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100020ED4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

FCOfflineIssueList *__cdecl sub_100021E60(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [FCOfflineIssueList alloc];
  v4 = FCURLForContainerizedUserAccountDocumentDirectory();
  v5 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCAppActivityMonitor];
  v6 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCBackgroundTaskable];

  v7 = [v3 initWithStoreDirectoryFileURL:v4 appActivityMonitor:v5 backgroundTaskable:v6];

  return v7;
}

FCTagController *__cdecl sub_100021F50(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 tagController];

  return v4;
}

FCSportsEventController *__cdecl sub_100021FC4(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 sportsEventController];

  return v4;
}

FCArticleController *__cdecl sub_100022038(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 articleController];

  return v4;
}

FCSubscriptionController *__cdecl sub_1000220AC(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 subscriptionController];

  return v4;
}

FCNotificationController *__cdecl sub_100022120(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 notificationController];

  return v4;
}

FCPuzzleController *__cdecl sub_100022194(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 puzzleController];

  return v4;
}

FCPuzzleTypeController *__cdecl sub_100022208(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 puzzleTypeController];

  return v4;
}

FCPurchaseController *__cdecl sub_10002227C(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 purchaseController];

  return v4;
}

FCPurchaseProviderType *__cdecl sub_1000222F0(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 purchaseProvider];

  return v4;
}

FCPurchaseManagerType *__cdecl sub_100022364(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 purchaseManager];

  return v4;
}

FCEntitlementService *__cdecl sub_1000223D8(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 entitlementService];

  return v4;
}

FCPPTContext *__cdecl sub_10002244C(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 pptContext];

  return v4;
}

FCPaidAccessCheckerType *__cdecl sub_1000224C0(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 paidAccessChecker];

  return v4;
}

FCAssetManager *__cdecl sub_100022534(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 assetManager];

  return v4;
}

FCTranslationManager *__cdecl sub_1000225D0(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 translationManager];

  return v4;
}

FCLocalAreasManager *__cdecl sub_100022644(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 localAreasManager];

  return v4;
}

FCBundleSubscriptionManager *__cdecl sub_1000226B8(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 bundleSubscriptionManager];

  return v4;
}

FCPersonalizationData *__cdecl sub_10002272C(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 personalizationData];

  return v4;
}

FCIssueReadingHistory *__cdecl sub_1000227A0(id a1, TFResolver *a2)
{
  v2 = [(TFResolver *)a2 resolveProtocol:&OBJC_PROTOCOL___FCPrivateDataContext];
  v3 = [v2 issueReadingHistory];

  return v3;
}

FCClearableReadingHistory *__cdecl sub_1000227F8(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];
  v4 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCUserEventHistoryStorageType];
  v5 = [(TFResolver *)v2 resolveClass:objc_opt_class()];
  v6 = [(TFResolver *)v2 resolveClass:objc_opt_class()];
  v7 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCClearableUserEmbedding];

  v8 = [[TFMultiDelegate alloc] initWithDelegate:v3 delegateProtocol:&OBJC_PROTOCOL___FCClearableReadingHistory];
  [v8 addDelegate:v4];
  [v8 addDelegate:v5];
  [v8 addDelegate:v6];
  [v8 addDelegate:v7];
  v9 = [v8 delegate];

  return v9;
}

FCArticleDownloadServiceType *__cdecl sub_100022954(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCContentContext];
  v4 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCANFHelper];

  v5 = [[FCArticleDownloadService alloc] initWithContext:v3 ANFHelper:v4];

  return v5;
}

FCIssueDownloadServiceType *__cdecl sub_1000229EC(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCContentContext];
  v4 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCANFHelper];
  v5 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCArticleDownloadServiceType];

  v6 = [[FCIssueDownloadService alloc] initWithContext:v3 ANFHelper:v4 articleDownloadService:v5];

  return v6;
}

FCPuzzleDownloadServiceType *__cdecl sub_100022AA4(id a1, TFResolver *a2)
{
  v2 = [(TFResolver *)a2 resolveProtocol:&OBJC_PROTOCOL___FCContentContext];
  v3 = [[FCPuzzleDownloadService alloc] initWithContext:v2];

  return v3;
}

FCRecipeDownloadServiceType *__cdecl sub_100022B08(id a1, TFResolver *a2)
{
  v2 = [(TFResolver *)a2 resolveProtocol:&OBJC_PROTOCOL___FCContentContext];
  v3 = [[FCRecipeDownloadService alloc] initWithContext:v2];

  return v3;
}

FCAVAssetPrewarming *__cdecl sub_100022B6C(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 avAssetPrewarmer];

  return v4;
}

FCAVAssetFactoryType *__cdecl sub_100022BE0(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v4 = [v3 avAssetFactory];

  return v4;
}

TSSharedImageCacheType *__cdecl sub_100022C54(id a1, TFResolver *a2)
{
  v2 = objc_alloc_init(FRSharedImageCache);

  return v2;
}

TSSharedImageCacheType *__cdecl sub_100022C84(id a1, TFResolver *a2)
{
  v2 = [[FRSharedImageCache alloc] initWithPersistenceEnabled:1];

  return v2;
}

FCReceiptRefresherType *__cdecl sub_100022CBC(id a1, TFResolver *a2)
{
  v2 = objc_alloc_init(FCReceiptRefresher);

  return v2;
}

id sub_100022CF4(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [FCNotificationPoolService alloc];
  v4 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCContentContext];
  v5 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCContentVariantProviding];

  v6 = [v3 initWithContext:v4 contentVariantProvider:v5];

  return v6;
}

FRCachesClearableReadingHistory *__cdecl sub_100022D98(id a1, TFResolver *a2)
{
  v2 = objc_opt_new();

  return v2;
}

void sub_100022E70(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1000E61A0 = [v1 BOOLForKey:@"personalization_frozen"];
}

void sub_10002340C(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = FCPersonalizationLog;
  v6 = os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v6)
    {
      sub_10006C190(v5);
    }
  }

  else if (v6)
  {
    sub_10006C0E8(v5, v4);
  }
}

void sub_100023480(uint64_t a1)
{
  v2 = [FCKeyValueStore alloc];
  v3 = [*(a1 + 32) path];
  v18 = [v2 initWithName:@"PersonalizationConfiguration" directory:v3 version:6 options:8 classRegistry:0];

  v4 = [[FRPersonalizationConfiguration alloc] initWithKeyValueStore:v18];
  [*(a1 + 40) setConfigurationStore:v4];

  v5 = [FRPersonalizationAutoFavoritesCursor alloc];
  v6 = [*(a1 + 40) configurationStore];
  v7 = [v6 coreDuetLastQueryDate];
  v8 = [*(a1 + 40) configurationStore];
  v9 = [v8 portraitLastQueryDate];
  v10 = [(FRPersonalizationAutoFavoritesCursor *)v5 initWithCoreDuetLastQueryDate:v7 portraitLastQueryDate:v9];
  [*(a1 + 40) setAutoFavoritesCursor:v10];

  v11 = [*(a1 + 40) appConfigurationManager];
  v12 = [v11 possiblyUnfetchedAppConfiguration];
  v13 = [v12 personalizationTreatment];
  [*(a1 + 40) setConfigurableValues:v13];

  v14 = [*(a1 + 40) configurationStore];
  v15 = [v14 autoFavorites];
  v16 = *(a1 + 40);
  v17 = *(v16 + 32);
  *(v16 + 32) = v15;

  [*(a1 + 40) _saveReadableAllowlist];
}

void sub_10002362C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) cloudContext];
  v5 = [v4 subscriptionList];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100023700;
  v7[3] = &unk_1000C30C0;
  v8 = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  [v5 syncWithCompletion:v7];
}

void sub_100023700(uint64_t a1)
{
  v2 = [*(a1 + 32) subscriptionController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000237A0;
  v3[3] = &unk_1000C3098;
  v4 = *(a1 + 40);
  [v2 removeAllAutoFavoriteSubscriptions:v3];
}

void sub_1000237A0(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:0 forKey:FCPersonalizationClearSuggestions];

  (*(*(a1 + 32) + 16))();
  v3 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Did clear suggestions", v4, 2u);
  }
}

void sub_100023848(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) appConfigurationManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002390C;
  v6[3] = &unk_1000C3110;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [v4 fetchAppConfigurationIfNeededWithCompletion:v6];
}

void sub_10002390C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100023994;
  v2[3] = &unk_1000C3098;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 fetchMappingResourcesWithCompletionHandler:v2];
}

void sub_100023994(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Did fetch mapping resources", v2, 2u);
  }
}

void sub_100023A0C(uint64_t a1, void *a2)
{
  v3 = a2;
  [objc_opt_class() logPPMessage:&stru_1000C3150];
  v4 = [FCFileCoordinatedTodayPersonalizationUpdate alloc];
  v5 = FCURLForTodayPersonalizationUpdateStore();
  v6 = [v4 initWithFileURL:v5];

  v7 = [v6 consumeUpdates];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100023B80;
  v10[3] = &unk_1000C31A0;
  v11 = *(a1 + 32);
  [v7 enumerateObjectsUsingBlock:v10];
  [objc_opt_class() logPPMessage:&stru_1000C31C0];
  v3[2](v3);

  v8 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Did process events from Today widget", v9, 2u);
  }
}

void sub_100023B80(uint64_t a1, void *a2)
{
  v3 = [a2 events];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023C20;
  v4[3] = &unk_1000C3178;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void sub_100023C20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = [v3 aggregateStore];
  v5 = [FCPersonalizationFeature featuresFromTodayPersonalizationEvent:v4];
  [v4 action];
  v6 = FCPersonalizationActionFromTodayPersonalizationAction();
  v7 = [v4 overallOrder];
  v8 = [v4 sectionOrder];
  v9 = [v4 groupType];

  v10 = [*(a1 + 32) configurableValues];
  [v11 updateFeatures:v5 withAction:v6 displayRank:v7 groupRank:v8 groupType:v9 individually:1 configurableValues:v10];
}

void sub_100023D28(uint64_t a1)
{
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Will save readable allowlist.", buf, 2u);
  }

  v35[0] = @"defaultTags";
  v3 = [*(a1 + 32) configurationStore];
  v4 = [v3 whitelist];
  v5 = [v4 defaultTags];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  v36[0] = v7;
  v35[1] = @"optionalTags";
  v8 = [*(a1 + 32) configurationStore];
  v9 = [v8 whitelist];
  v10 = [v9 optionalTags];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &__NSDictionary0__struct;
  }

  v36[1] = v12;
  v35[2] = @"lastUpdated";
  v13 = +[NSDate date];
  [v13 timeIntervalSince1970];
  v15 = [NSString stringWithFormat:@"%f", v14];
  v36[2] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];

  v32 = 0;
  v17 = [NSJSONSerialization dataWithJSONObject:v16 options:1 error:&v32];
  v18 = v32;
  v19 = v18;
  if (v17)
  {
    v20 = [*(a1 + 32) cloudContext];
    v21 = [v20 privateDataDirectory];
    v22 = [NSURL fileURLWithPath:v21];
    v23 = [v22 URLByAppendingPathComponent:@"allowlist"];
    v24 = [v23 URLByAppendingPathExtension:@"json"];

    if (v24)
    {
      v25 = [v24 path];
      v31[0] = v19;
      v26 = [v17 writeToFile:v25 options:1 error:v31];
      v27 = v31[0];

      v28 = FCPersonalizationLog;
      if (v26)
      {
        if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
          v30 = [v24 path];
          *buf = 138412290;
          v34 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Successfully saved readable allowlist at %@.", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
      {
        sub_10006C1D4();
      }

      v19 = v27;
    }

    else
    {
      sub_100024138();
    }
  }

  else
  {
    v31[1] = _NSConcreteStackBlock;
    v31[2] = 3221225472;
    v31[3] = sub_1000240EC;
    v31[4] = &unk_1000C18D0;
    v19 = v18;
    v31[5] = v19;
    sub_1000240EC();
    v24 = v19;
  }
}

void sub_1000240EC()
{
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    sub_10006C248();
  }
}

void sub_100024138()
{
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    sub_10006C2C0();
  }
}

id sub_100024708(uint64_t a1)
{
  v2 = [*(a1 + 32) appConfigurationManager];
  v3 = [v2 appConfiguration];

  v4 = [v3 personalizationBundleIdMappingResourceId];
  v5 = v4;
  v6 = @"P-BM-143441";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [v3 personalizationUrlMappingResourceId];
  v9 = v8;
  v10 = @"P-UM-143441";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [v3 personalizationWhitelistResourceId];
  v13 = v12;
  v14 = @"P-W-143441";
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [v3 personalizationFavorabilityResourceId];
  v17 = v16;
  v18 = @"P-PF-143441";
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = objc_opt_class();
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100024B18;
  v57[3] = &unk_1000C3258;
  v58 = v3;
  v21 = v3;
  [v20 logPPMessage:v57];
  v22 = objc_opt_class();
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100024CDC;
  v52[3] = &unk_1000C32A8;
  v23 = v7;
  v53 = v23;
  v24 = v11;
  v54 = v24;
  v25 = v15;
  v55 = v25;
  v26 = v19;
  v56 = v26;
  [v22 logPPMessage:v52];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100024EA4;
  v47[3] = &unk_1000C32D0;
  v27 = v23;
  v48 = v27;
  v28 = v24;
  v49 = v28;
  v29 = v25;
  v50 = v29;
  v30 = v26;
  v51 = v30;
  v31 = [NSArray fc_array:v47];
  v32 = [FCResourcesFetchOperation alloc];
  v33 = [*(a1 + 32) cloudContext];
  v34 = [v32 initWithContext:v33 resourceIDs:v31 downloadAssets:1];

  [v34 setCachePolicy:1];
  [v34 setQualityOfService:*(a1 + 48)];
  [v34 setRelativePriority:*(a1 + 56)];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100024F18;
  v41[3] = &unk_1000C3348;
  v35 = *(a1 + 40);
  v41[4] = *(a1 + 32);
  v42 = v27;
  v43 = v28;
  v44 = v29;
  v45 = v30;
  v46 = v35;
  v36 = v30;
  v37 = v29;
  v38 = v28;
  v39 = v27;
  [v34 setFetchCompletionBlock:v41];

  return v34;
}

id sub_100024B18(uint64_t a1)
{
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100024BEC;
  v7 = &unk_1000C3230;
  v8 = *(a1 + 32);
  v1 = [NSDictionary fc_dictionary:&v4];
  v2 = [NSString stringWithFormat:@"App config specified resource IDs: %@", v1, v4, v5, v6, v7];

  return v2;
}

void sub_100024BEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 personalizationBundleIdMappingResourceId];
  [v4 fc_safelySetObjectAllowingNil:v5 forKeyAllowingNil:@"Bundle ID Mapping Resource ID"];

  v6 = [*(a1 + 32) personalizationUrlMappingResourceId];
  [v4 fc_safelySetObjectAllowingNil:v6 forKeyAllowingNil:@"URL Mapping Resource ID"];

  v7 = [*(a1 + 32) personalizationWhitelistResourceId];
  [v4 fc_safelySetObjectAllowingNil:v7 forKeyAllowingNil:@"Whitelist Resource ID"];

  v8 = [*(a1 + 32) personalizationFavorabilityResourceId];
  [v4 fc_safelySetObjectAllowingNil:v8 forKeyAllowingNil:@"Favorability Resource ID"];
}

id sub_100024CDC(id *a1)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100024E10;
  v11[3] = &unk_1000C3280;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v12 = v7;
  v13 = v6;
  v8 = [NSDictionary fc_dictionary:v11];
  v9 = [NSString stringWithFormat:@"Querying for resource IDs: %@", v8];

  return v9;
}

void sub_100024E10(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 fc_safelySetObjectAllowingNil:v3 forKeyAllowingNil:@"Bundle ID Mapping Resource ID"];
  [v4 fc_safelySetObjectAllowingNil:a1[5] forKeyAllowingNil:@"URL Mapping Resource ID"];
  [v4 fc_safelySetObjectAllowingNil:a1[6] forKeyAllowingNil:@"Whitelist Resource ID"];
  [v4 fc_safelySetObjectAllowingNil:a1[7] forKeyAllowingNil:@"Favorability Resource ID"];
}

void sub_100024EA4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 fc_safelyAddObject:v3];
  [v4 fc_safelyAddObject:a1[5]];
  [v4 fc_safelyAddObject:a1[6]];
  [v4 fc_safelyAddObject:a1[7]];
}

void sub_100024F18(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 fetchedObject];
  v5 = FCDynamicCast();

  if ([v5 count])
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100025460;
    v41[3] = &unk_1000C3230;
    v42 = v3;
    v6 = [NSDictionary fc_dictionary:v41];
    v7 = [v6 objectForKeyedSubscript:*(a1 + 40)];
    if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006C3C4();
    }

    v8 = [v6 objectForKeyedSubscript:*(a1 + 48)];
    if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006C488();
    }

    v9 = [v6 objectForKeyedSubscript:*(a1 + 56)];
    if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006C54C();
    }

    v10 = [v6 objectForKeyedSubscript:*(a1 + 64)];
    if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006C610();
    }

    v34 = [v7 fileURL];
    if (!v34 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006C6D4();
    }

    v30 = v7;
    v11 = [v8 fileURL];
    if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006C798();
    }

    v33 = v3;
    v12 = [v9 fileURL];
    if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006C85C();
    }

    v32 = v5;
    v13 = [v10 fileURL];
    if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006C920();
    }

    v28 = v9;
    v14 = [NSData dataWithContentsOfURL:v34];
    if (!v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006C9E4();
    }

    v31 = v6;
    v15 = [NSData dataWithContentsOfURL:v11];
    if (!v15 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006CAA8();
    }

    v29 = v8;
    v16 = [NSData dataWithContentsOfURL:v12];
    if (!v16 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006CB6C();
    }

    v17 = &v42;
    v18 = [NSData dataWithContentsOfURL:v13];
    if (!v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006CC30();
    }

    v19 = [*(a1 + 32) storeQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100025580;
    block[3] = &unk_1000C3320;
    v20 = *(a1 + 32);
    v36 = v15;
    v37 = v20;
    v38 = v14;
    v39 = v16;
    v40 = v18;
    v21 = v18;
    v22 = v16;
    v23 = v14;
    v24 = v15;
    dispatch_sync(v19, block);

    v5 = v32;
    v3 = v33;
  }

  else
  {
    v25 = objc_opt_class();
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100025424;
    v43[3] = &unk_1000C3258;
    v17 = &v44;
    v44 = v3;
    [v25 logPPMessage:v43];
  }

  v26 = *(a1 + 72);
  if (v26)
  {
    (*(v26 + 16))();
  }
}

void sub_100025460(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) fetchedObject];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002550C;
  v6[3] = &unk_1000C32F8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_10002550C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 resourceID];
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006CCF4();
  }

  [*(a1 + 32) fc_safelySetObjectAllowingNil:v3 forKeyAllowingNil:v4];
}

void sub_100025580(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) configurationStore];
    [v2 setURLMappingData:*(a1 + 32)];
  }

  if (*(a1 + 48))
  {
    v3 = [*(a1 + 40) configurationStore];
    [v3 setBundleIDMappingData:*(a1 + 48)];
  }

  if (*(a1 + 56))
  {
    v4 = [*(a1 + 40) configurationStore];
    [v4 setWhitelistData:*(a1 + 56)];
  }

  if (*(a1 + 64))
  {
    v5 = [*(a1 + 40) configurationStore];
    [v5 setFavorabilityScoresData:*(a1 + 64)];
  }
}

uint64_t sub_1000257E8(uint64_t a1)
{
  v2 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished preparing personalization data source for use", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100025868(uint64_t a1)
{
  v2 = [*(a1 + 32) storeQueue];
  dispatch_async(v2, *(a1 + 40));
}

void sub_100025C48(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_100025C84(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_100025D84;
    v9 = &unk_1000C3398;
    v10 = *(a1 + 32);
    FCPerformIfNonNil();
  }

  v3 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished preparing favorites", v5, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100025D84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:*(a1 + 32) forKey:FCPrimaryLanguageKey];

  v5 = *(a1 + 32);
  v6 = [v3 userInfo];

  [v6 setCanonicalLanguage:v5];
}

uint64_t sub_100025E24(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_100025F24;
    v9 = &unk_1000C3398;
    v10 = *(a1 + 32);
    FCPerformIfNonNil();
  }

  v3 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished preparing favorites", v5, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100025F24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:*(a1 + 32) forKey:FCPrimaryLanguageKey];

  v5 = *(a1 + 32);
  v6 = [v3 userInfo];

  [v6 setCanonicalLanguage:v5];
}

void sub_100026114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100026138(uint64_t a1)
{
  v2 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Not preparing favorites because the language didn't change", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000261B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    v10 = v6;
    v12 = *(a1 + 32);
    v11 = v5;
    objc_copyWeak(&v13, (a1 + 40));
    FCPerformIfNonNil();
    v9 = &v10;

    objc_destroyWeak(&v13);
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100026344;
    v14[3] = &unk_1000C3098;
    v9 = &v15;
    v15 = *(a1 + 32);
    sub_100026344(v14);
  }
}

uint64_t sub_100026344(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002635C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100026810;
    v32[3] = &unk_1000C3098;
    v33 = *(a1 + 48);
    sub_100026810(v32);
  }

  else
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100026828;
    v31[3] = &unk_1000C3230;
    v31[4] = v3;
    v4 = [NSDictionary fc_dictionary:v31];
    v5 = [v4 allKeys];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000269F0;
    v29[3] = &unk_1000C3410;
    v30 = *(a1 + 40);
    v6 = [NSDictionary fc_dictionaryWithKeys:v5 allowingNil:1 valueBlock:v29];

    v7 = FCTranslationLog;
    if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found subscriptions to translate: %@", &buf, 0xCu);
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100026ADC;
    v27[3] = &unk_1000C3438;
    v8 = v6;
    v28 = v8;
    v9 = [NSMutableArray fc_array:v27];
    v10 = FCTranslationLog;
    if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Querying tags for translation %@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x3032000000;
    v36 = sub_100009B68;
    v37 = sub_100009F08;
    v38 = 0;
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v12 = [v3 cloudContext];
    v13 = [v12 tagController];
    v14 = [v3 storeQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100026BE0;
    v24[3] = &unk_1000C3460;
    p_buf = &buf;
    v15 = v11;
    v25 = v15;
    [v13 fetchTagsForTagIDs:v9 qualityOfService:25 callbackQueue:v14 completionHandler:v24];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100026C40;
    block[3] = &unk_1000C34D8;
    objc_copyWeak(&v23, (a1 + 56));
    v22 = &buf;
    v19 = v8;
    v20 = v4;
    v21 = *(a1 + 48);
    v16 = v4;
    v17 = v8;
    dispatch_group_notify(v15, &_dispatch_main_q, block);

    objc_destroyWeak(&v23);
    _Block_object_dispose(&buf, 8);
  }
}

uint64_t sub_100026810(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100026828(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) subscriptionController];
  v5 = [v4 subscriptionsWithType:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000268F0;
  v7[3] = &unk_1000C33E8;
  v8 = v3;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v7];
}

void sub_1000268F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 tagID];
  if (v4)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000269B0;
    v5[3] = &unk_1000C18D0;
    v6 = v3;
    sub_1000269B0(v5);
  }
}

void sub_1000269B0(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006CE88(a1);
  }
}

id sub_1000269F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) favoriteTranslationForTagID:v3];
  v5 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking for translation for: %@, found %@", &v7, 0x16u);
  }

  return v4;
}

void sub_100026ADC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100026B74;
  v6[3] = &unk_1000C1948;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_100026B74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 fc_safelyAddObject:a2];
  [*(a1 + 32) fc_safelyAddObject:v6];
}

void sub_100026BE0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100026C40(uint64_t a1)
{
  v2 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Processing subscriptions for translation", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100026DB4;
  v12 = &unk_1000C34B0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v13 = v4;
  v15 = v5;
  v14 = *(a1 + 40);
  FCPerformIfNonNil();

  v6 = FCDispatchQueueForQualityOfService();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027164;
  v7[3] = &unk_1000C3098;
  v8 = *(a1 + 48);
  dispatch_async(v6, v7);
}

void sub_100026DB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100026EAC;
  v9[3] = &unk_1000C3488;
  v9[4] = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished translating subscriptions", buf, 2u);
  }
}

void sub_100026EAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v5];
  v8 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v6];
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = FCTranslationLog;
      if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v19 = v7;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to translate %@ to %@", buf, 0x16u);
      }

      v11 = [*(a1 + 32) subscriptionController];
      v12 = [*(a1 + 40) objectForKeyedSubscript:v5];
      v17 = 0;
      [v11 addSubscriptionToTag:v9 notificationsEnabled:objc_msgSend(v12 error:{"notificationsEnabled"), &v17}];
      v13 = v17;

      if (v13)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10006CF4C();
        }

        goto LABEL_18;
      }

      v15 = [*(a1 + 32) subscriptionController];
      [v15 removeSubscriptionToTag:v7];
LABEL_12:

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D010();
    if (v9)
    {
      goto LABEL_10;
    }
  }

  else if (v9)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_17;
  }

LABEL_14:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D0D4();
  }

  v14 = 1;
LABEL_17:
  v13 = FCTranslationLog;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v16 = v7 ? 0 : v14;
    if (v16 == 1)
    {
      v15 = [NSString stringWithFormat:@"%@ and %@", v5, v6];
    }

    else
    {
      v15 = v7 ? v6 : v5;
    }

    *buf = 138412802;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v15;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to translate %@ to %@, %@ didn't return a tag", buf, 0x20u);
    if (v16)
    {
      goto LABEL_12;
    }
  }

LABEL_18:
}

uint64_t sub_100027164(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100027474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002748C(uint64_t a1)
{
  v2 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = +[FCAppleAccount sharedAccount];
    v5 = [v4 primaryLanguageCode];
    v6 = [*(a1 + 32) cloudContext];
    v7 = [v6 userInfo];
    v8 = [v7 canonicalLanguage];
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not processing auto favorites, primary language %@ doesn't match canonical language %@", &v10, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000275D4(uint64_t a1)
{
  v2 = [*(a1 + 32) autofavorites];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_100027624(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || ([*(a1 + 32) configurationStore], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "autoFavorites"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, !v3))
  {
    v6 = FCProgressivePersonalizationLog;
    if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Auto-favorites have never been generated", buf, 2u);
    }

    v7 = [*(a1 + 32) autoFavoritesQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000277A0;
    v9[3] = &unk_1000C35C8;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v7 enqueueBlock:v9];
  }

  else
  {
    v4 = FCProgressivePersonalizationLog;
    if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Auto-favorites have been generated in the past so nothing to prepare", buf, 2u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

void sub_1000277A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _createNewAutoFavoritesOperation];
  [v4 setQualityOfService:25];
  [v4 setRelativePriority:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100027940;
  v10[3] = &unk_1000C35A0;
  v10[4] = *(a1 + 32);
  v5 = v3;
  v11 = v5;
  v12 = *(a1 + 40);
  [v4 setAutoFavoritesCompletionHandler:v10];
  v6 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 operationID];
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Preparing personalization auto-favorites for use with operation %@", buf, 0xCu);
  }

  v9 = +[NSOperationQueue fc_sharedConcurrentQueue];
  [v9 addOperation:v4];
}

void sub_100027940(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finished preparing personalization auto-favorites for use", buf, 2u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100027A6C;
  v12[3] = &unk_1000C3578;
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  [v11 _processAutoFavoritesOperationResult:v7 cursor:v8 error:v9 completion:v12];
}

uint64_t sub_100027A6C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100027CB4()
{
  v0 = FCAutoFavoritesLog;
  if (os_log_type_enabled(FCAutoFavoritesLog, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Not running autofavorites operation because news personalization based autofavorites are enabled", v1, 2u);
  }
}

void sub_100027D1C(uint64_t a1)
{
  v2 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = +[FCAppleAccount sharedAccount];
    v5 = [v4 primaryLanguageCode];
    v6 = [*(a1 + 32) cloudContext];
    v7 = [v6 userInfo];
    v8 = [v7 canonicalLanguage];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not processing auto favorites, primary language %@ doesn't match canonical language %@", &v9, 0x16u);
  }
}

void sub_100027E54(uint64_t a1)
{
  v2 = [*(a1 + 32) autoFavoritesQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100027EEC;
  v3[3] = &unk_1000C36C8;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 enqueueBlock:v3];
}

void sub_100027EEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 autoFavoritesCursor];
  v6 = [*(a1 + 32) _createNewAutoFavoritesOperation];
  [v6 setQualityOfService:9];
  [v6 setRelativePriority:-1];
  [v6 setDisregardCache:*(a1 + 40)];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002806C;
  v12[3] = &unk_1000C36A0;
  v12[4] = *(a1 + 32);
  v13 = v5;
  v7 = v5;
  [v6 setAutoFavoritesCompletionHandler:v12];
  v4[2](v4);

  v8 = objc_opt_class();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000282D4;
  v10[3] = &unk_1000C3258;
  v11 = v6;
  v9 = v6;
  [v8 logPPMessage:v10];
  [FCTaskScheduler scheduleLowPriorityOperation:v9];
}

void sub_10002806C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) autoFavoritesQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100028184;
  v16[3] = &unk_1000C3678;
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v17 = v11;
  v18 = v12;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  [v10 enqueueBlock:v16];
}

void sub_100028184(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) autoFavoritesCursor];

  if (v4 == v5)
  {
    [objc_opt_class() logPPMessage:&stru_1000C3650];
    [*(a1 + 40) _processAutoFavoritesOperationResult:*(a1 + 48) cursor:*(a1 + 56) error:*(a1 + 64) completion:v3];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002826C;
    v6[3] = &unk_1000C1BD8;
    v6[4] = *(a1 + 40);
    v7 = v3;
    sub_10002826C(v6);
  }
}

uint64_t sub_10002826C(uint64_t a1)
{
  [objc_opt_class() logPPMessage:&stru_1000C3630];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id sub_1000282D4(uint64_t a1)
{
  v1 = [*(a1 + 32) operationID];
  v2 = [NSString stringWithFormat:@"Refreshing personalization auto-favorites with operation %@", v1];

  return v2;
}

void sub_1000287F0(uint64_t a1)
{
  v2 = [*(a1 + 40) coreDuetLastQueryDate];
  v3 = [*(a1 + 32) configurationStore];
  [v3 setCoreDuetLastQueryDate:v2];

  v5 = [*(a1 + 40) portraitLastQueryDate];
  v4 = [*(a1 + 32) configurationStore];
  [v4 setPortraitLastQueryDate:v5];
}

uint64_t sub_100028890(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) locationAutoFavoriteCandidates];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = 9;
    goto LABEL_8;
  }

  v7 = [*(a1 + 32) internalSignalAutoFavoriteCandidates];
  if ([v7 containsObject:v3])
  {
    goto LABEL_6;
  }

  v8 = [*(a1 + 32) existingInternalSignalAutoFavoriteCandidates];
  if ([v8 containsObject:v3])
  {

LABEL_6:
LABEL_7:
    v6 = 3;
    goto LABEL_8;
  }

  v10 = [*(a1 + 32) groupableCandidates];
  v11 = [v10 containsObject:v3];

  if (v11)
  {
    goto LABEL_7;
  }

  v12 = [*(a1 + 32) portraitAutoFavoriteCandidates];
  v13 = [v12 containsObject:v3];

  if (v13)
  {
    v6 = 8;
  }

  else
  {
    v14 = [*(a1 + 32) appUsageAutoFavoriteCandidates];
    v15 = [v14 containsObject:v3];

    if (v15)
    {
      v6 = 2;
    }

    else
    {
      v16 = [*(a1 + 32) safariAutoFavoriteCandidates];
      v17 = [v16 containsObject:v3];

      if (v17)
      {
        v6 = 1;
      }

      else
      {
        v18 = [*(a1 + 32) defaultCandidates];
        v19 = [v18 containsObject:v3];

        if (v19)
        {
          v6 = 7;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10006D198();
          }

          v6 = 6;
        }
      }
    }
  }

LABEL_8:

  return v6;
}

void sub_100028BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100028BDC(uint64_t a1)
{
  v2 = [*(a1 + 32) whitelist];
  v3 = [v2 defaultTags];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) whitelist];
    v7 = [v6 optionalTags];
    v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

    if (!v8)
    {
      return;
    }

    v5 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v5;
}

void sub_100028D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100028D98(uint64_t a1)
{
  v2 = [*(a1 + 32) whitelist];
  v3 = [v2 defaultTags];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) whitelist];
    v7 = [v6 optionalTags];
    v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

    if (!v8)
    {
      return;
    }

    v5 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v5;
}

void sub_100028F58(uint64_t a1)
{
  v2 = [*(a1 + 32) subscriptionController];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029018;
  v6[3] = &unk_1000C3768;
  v5 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 addAutoFavoriteSubscriptionForTagIDs:v3 groupableSubscriptionForTagIDs:v4 originProvider:v5 completion:v6];
}

uint64_t sub_100029018(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100029180(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002928C;
  block[3] = &unk_1000C18D0;
  block[4] = *(a1 + 32);
  dispatch_sync(v5, block);

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029314;
  v6[3] = &unk_1000C18D0;
  v6[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v6);
  v4[2](v4);
}

void sub_10002928C(uint64_t a1)
{
  [*(a1 + 32) setAutofavorites:0];
  [*(a1 + 32) setAutoFavoritesCursor:0];
  v2 = [*(a1 + 32) configurationStore];
  [v2 setCoreDuetLastQueryDate:0];

  v3 = [*(a1 + 32) configurationStore];
  [v3 setPortraitLastQueryDate:0];
}

BOOL UIBackgroundFetchResultFromFCFetchResult(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

BOOL FCFetchResultFromUIBackgroundFetchResult(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

void sub_100029C38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 safariAutoFavoriteCandidates];
  [v4 fc_safelyUnionSet:v5];

  v6 = [*(a1 + 32) appUsageAutoFavoriteCandidates];
  [v4 minusSet:v6];

  v7 = [*(a1 + 32) autoFavoriteTagIDs];
  [v4 fc_safelyIntersectSet:v7];
}

void sub_100029D74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 portraitAutoFavoriteCandidates];
  [v4 fc_safelyUnionSet:v5];

  v6 = [*(a1 + 32) appUsageAutoFavoriteCandidates];
  [v4 minusSet:v6];

  v7 = [*(a1 + 32) safariAutoFavoriteCandidates];
  [v4 minusSet:v7];

  v8 = [*(a1 + 32) autoFavoriteTagIDs];
  [v4 fc_safelyIntersectSet:v8];
}

void sub_100029ED0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 portraitAutoFavoriteCandidates];
  [v4 fc_safelyUnionSet:v5];

  v6 = [*(a1 + 32) appUsageAutoFavoriteCandidates];
  [v4 minusSet:v6];

  v7 = [*(a1 + 32) safariAutoFavoriteCandidates];
  [v4 minusSet:v7];

  v8 = [*(a1 + 32) portraitAutoFavoriteCandidates];
  [v4 minusSet:v8];

  v9 = [*(a1 + 32) autoFavoriteTagIDs];
  [v4 fc_safelyIntersectSet:v9];
}

void sub_10002A04C(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) internalSignalAutoFavoriteCandidates];
  v4 = v3;
  if (!v3)
  {
    v4 = objc_opt_new();
  }

  v5 = [*(a1 + 32) existingInternalSignalAutoFavoriteCandidates];
  v6 = [v4 fc_setByUnioningSet:v5];
  v7 = [*(a1 + 32) defaultCandidates];
  v8 = [v6 fc_setByUnioningSet:v7];
  [v14 fc_safelyUnionSet:v8];

  if (!v3)
  {
  }

  v9 = [*(a1 + 32) appUsageAutoFavoriteCandidates];
  [v14 minusSet:v9];

  v10 = [*(a1 + 32) safariAutoFavoriteCandidates];
  [v14 minusSet:v10];

  v11 = [*(a1 + 32) portraitAutoFavoriteCandidates];
  [v14 minusSet:v11];

  v12 = [*(a1 + 32) locationAutoFavoriteCandidates];
  [v14 minusSet:v12];

  v13 = [*(a1 + 32) autoFavoriteTagIDs];
  [v14 fc_safelyIntersectSet:v13];
}

void sub_10002AE80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_10002AEA0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsPresentingAlert:0];
  [WeakRetained updateAlertDidDismiss:a2];
}

void sub_10002BF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002BF4C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = [a2 componentsSeparatedByString:@"="];
  v6 = [v12 firstObject];
  v7 = [v6 stringByRemovingPercentEncoding];

  if ([v7 isEqualToString:*(a1 + 32)])
  {
    v8 = [v12 lastObject];
    v9 = [v8 stringByRemovingPercentEncoding];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

void sub_10002EBA0(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 keyWindow];
  v17 = [v3 rootViewController];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"“%@” wants to open “%@”" value:&stru_1000C67A8 table:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"News" value:&stru_1000C67A8 table:0];
  v8 = [*(a1 + 32) localizedName];
  v9 = [NSString stringWithFormat:v5, v7, v8];

  v10 = [UIAlertController alertControllerWithTitle:v9 message:0 preferredStyle:1];
  objc_initWeak(&location, v10);
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Cancel" value:&stru_1000C67A8 table:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002EEF0;
  v20[3] = &unk_1000C3830;
  objc_copyWeak(&v21, &location);
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v20];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Open" value:&stru_1000C67A8 table:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002EF50;
  v18[3] = &unk_1000C3858;
  objc_copyWeak(&v19, &location);
  v18[4] = *(a1 + 40);
  v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:v18];

  [v10 addAction:v16];
  [v10 addAction:v13];
  [v10 setPreferredAction:v13];
  [v17 presentViewController:v10 animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void sub_10002EEB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_10002EEF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_10002EF50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];

  v3 = +[UIApplication sharedApplication];
  [v3 openURL:*(a1 + 32) options:&__NSDictionary0__struct completionHandler:0];
}

id sub_10002F9F0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setOnboardingVersion:a2];
  v3 = *(a1 + 32);

  return [v3 _presubscribe];
}

void sub_10002FB94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 shortOperationDescription];
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ determining user ID", buf, 0xCu);
  }

  v8 = [*(a1 + 32) analyticsController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002FCE8;
  v10[3] = &unk_1000C3098;
  v11 = v3;
  v9 = v3;
  [v8 notifyWhenUserIDHasBeenDeterminedWithBlock:v10];
}

void sub_10002FD90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 shortOperationDescription];
    *buf = 138543362;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ refreshing app config", buf, 0xCu);
  }

  v11 = [*(a1 + 32) cloudContext];
  v12 = [v11 appConfigurationManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002FF24;
  v15[3] = &unk_1000C3948;
  v16 = v5;
  v17 = v6;
  v13 = v6;
  v14 = v5;
  [v12 refreshAppConfigurationIfNeededWithCompletionQueue:&_dispatch_main_q refreshCompletion:v15];
}

uint64_t sub_10002FF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

void sub_10002FFE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 shortOperationDescription];
    *buf = 138543362;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ refreshing the onboarding version", buf, 0xCu);
  }

  v11 = [*(a1 + 32) cloudContext];
  v12 = [v11 userInfo];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100030170;
  v15[3] = &unk_1000C3970;
  v16 = v5;
  v17 = v6;
  v13 = v6;
  v14 = v5;
  [v12 refreshOnboardingVersion:v15];
}

uint64_t sub_100030170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

id sub_1000302D0(uint64_t a1)
{
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ skipping presubscribe because user isn't new", &v8, 0xCu);
  }

  v6 = +[NFPromise asVoid];

  return v6;
}

void sub_1000303B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 shortOperationDescription];
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ presubscribing to channels", buf, 0xCu);
  }

  v8 = [*(a1 + 32) presubscribeService];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003050C;
  v10[3] = &unk_1000C3998;
  v11 = v3;
  v9 = v3;
  [v8 presubscribeToChannelsIfNeededWithCompletion:v10];
}

id tagsSortedByMostFrequentlyVisited(void *a1, void *a2, void *a3)
{
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100030EB0;
  v14 = &unk_1000C1B38;
  v15 = a2;
  v16 = a3;
  v5 = v16;
  v6 = v15;
  v7 = a1;
  v8 = objc_retainBlock(&v11);
  v9 = [v7 sortedArrayUsingComparator:{v8, v11, v12, v13, v14}];

  return v9;
}

uint64_t sub_100030EB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 identifier];
  if ([v7 containsObject:v8])
  {
    v9 = *(a1 + 32);
    v10 = [v6 identifier];
    LODWORD(v9) = [v9 containsObject:v10];

    if (v9)
    {
      v11 = *(a1 + 32);
      v12 = [v5 identifier];
      v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 indexOfObject:v12]);
      v14 = *(a1 + 32);
      v15 = [v6 identifier];
      v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 indexOfObject:v15]);
      v17 = [v13 compare:v16];

      if (!v17)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v18 = *(a1 + 32);
  v19 = [v6 identifier];
  LOBYTE(v18) = [v18 containsObject:v19];

  if (v18)
  {
    v17 = 1;
  }

  else
  {
    v20 = *(a1 + 32);
    v21 = [v5 identifier];
    LOBYTE(v20) = [v20 containsObject:v21];

    if ((v20 & 1) == 0)
    {
LABEL_10:
      v22 = [*(a1 + 40) comparatorForSubscriptions];
      v17 = (v22)[2](v22, v5, v6);

      goto LABEL_11;
    }

    v17 = -1;
  }

LABEL_11:

  return v17;
}

void sub_100031428(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 content];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_1000315D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 flintDataProvider];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_1000318D0(uint64_t a1)
{
  v2 = [*(a1 + 32) pool];
  v3 = [*(a1 + 40) articleID];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = *(a1 + 48);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100031A8C;
      v19[3] = &unk_1000C1E48;
      v7 = &v21;
      v21 = v5;
      v8 = &v20;
      v20 = v4;
      v9 = v19;
      v10 = v6;
LABEL_6:
      dispatch_async(v10, v9);
    }
  }

  else
  {
    v11 = [*(a1 + 32) pool];
    v12 = *(a1 + 56);
    v13 = [*(a1 + 40) articleID];
    [v11 setObject:v12 forKey:v13];

    [*(a1 + 32) _flushIfNeeded];
    v14 = *(a1 + 64);
    if (v14)
    {
      v15 = *(a1 + 48);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100031AA0;
      v16[3] = &unk_1000C1E48;
      v7 = &v18;
      v18 = v14;
      v8 = &v17;
      v17 = *(a1 + 56);
      v9 = v16;
      v10 = v15;
      goto LABEL_6;
    }
  }
}

id sub_100031E10(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 accessDates];
  v9 = [v8 objectForKey:v7];

  v10 = [*(a1 + 32) accessDates];
  v11 = [v10 objectForKey:v6];

  v12 = [v9 compare:v11];
  return v12;
}

id FRDiagnosticFileListURL()
{
  v0 = +[NSFileManager defaultManager];
  v1 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.news"];
  v2 = [v1 URLByAppendingPathComponent:@"news-diagnostic-file-list.txt"];

  return v2;
}

id sub_100032E10(uint64_t a1)
{
  v1 = [*(a1 + 32) resolver];
  v2 = [v1 resolveProtocol:&OBJC_PROTOCOL___FCOfflineArticleManagerType];

  return v2;
}

void sub_1000330EC(uint64_t a1)
{
  if (NFInternalBuild())
  {
    v47 = &off_1000CB3D0;
  }

  else
  {
    v47 = [&off_1000CB3D0 mutableCopy];
    [v47 addObject:@"Personalization_Data/knowledgeC.db"];
  }

  v2 = +[NSFileManager defaultManager];
  v3 = FRURLForNewsAppCachesDirectory();
  v4 = [v3 path];

  v48 = v2;
  v46 = v4;
  v5 = [v2 enumeratorAtPath:v4];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_1000336BC;
      v57[3] = &unk_1000C3A48;
      v8 = v7;
      v58 = v8;
      if ([v47 fc_containsObjectPassingTest:v57])
      {
        v9 = [v4 stringByAppendingPathComponent:v8];
        [v2 removeItemAtPath:v9 error:0];
      }

      else
      {
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_1000336C8;
        v55[3] = &unk_1000C3A48;
        v56 = v8;
        if (([v47 fc_containsObjectPassingTest:v55] & 1) == 0)
        {
          [v5 skipDescendants];
        }

        v9 = v56;
      }

      v7 = [v5 nextObject];
    }

    while (v7);
  }

  v10 = [NSURL alloc];
  v11 = [*(a1 + 32) cloudContext];
  v12 = [v11 contentDirectory];
  v13 = [v10 initFileURLWithPath:v12 isDirectory:1];
  v14 = [v13 path];

  v15 = [v2 enumeratorAtPath:v14];

  v16 = [v15 nextObject];
  if (v16)
  {
    v17 = v16;
    do
    {
      if ([v17 hasPrefix:@"today-feed-database"])
      {
        v18 = [v14 stringByAppendingPathComponent:v17];
        [v2 removeItemAtPath:v18 error:0];
      }

      v19 = [v15 nextObject];

      v17 = v19;
    }

    while (v19);
  }

  v44 = v15;
  v45 = v14;
  v20 = NSTemporaryDirectory();
  v21 = [NSURL fileURLWithPath:v20];
  v22 = NSURLContentModificationDateKey;
  v64 = NSURLContentModificationDateKey;
  v23 = [NSArray arrayWithObjects:&v64 count:1];
  v24 = [v2 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:v23 options:4 error:0];

  v25 = +[NSProcessInfo processInfo];
  v26 = [v25 fc_processLaunchDate];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v27 = v24;
  v28 = [v27 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v52;
    do
    {
      v31 = 0;
      do
      {
        if (*v52 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v51 + 1) + 8 * v31);
        v50 = 0;
        v33 = [v32 getResourceValue:&v50 forKey:v22 error:{0, v44, v45}];
        v34 = v50;
        v35 = v34;
        if (v33 && [v34 fc_isEarlierThan:v26])
        {
          v36 = v27;
          v37 = v26;
          v49 = 0;
          v38 = [v48 removeItemAtURL:v32 error:&v49];
          v39 = v49;
          v40 = FCDefaultLog;
          if (v38)
          {
            if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
            {
              v41 = v40;
              v42 = [v32 absoluteString];
              *buf = 138543362;
              v60 = v42;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Removed stale file from temporary directory: %{public}@", buf, 0xCu);
              goto LABEL_27;
            }
          }

          else if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
          {
            v41 = v40;
            v42 = [v32 absoluteString];
            *buf = 138543618;
            v60 = v42;
            v61 = 2114;
            v62 = v39;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Failed to remove stale file from temporary directory: %{public}@, error=%{public}@", buf, 0x16u);
LABEL_27:
          }

          v26 = v37;
          v27 = v36;
          v22 = NSURLContentModificationDateKey;
        }

        v31 = v31 + 1;
      }

      while (v29 != v31);
      v43 = [v27 countByEnumeratingWithState:&v51 objects:v63 count:16];
      v29 = v43;
    }

    while (v43);
  }
}

uint64_t sub_10003480C(uint64_t a1)
{
  +[NSThread isMainThread];
  [*(a1 + 32) setBackgroundFetchInProgress:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100034B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 216), 8);
  _Block_object_dispose((v36 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100034BC4(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 setObject:*(a1 + 32) forKey:@"lastBackgroundFetchDate"];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_100034C5C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_group_enter(*(a1 + 32));
    v4 = [*(a1 + 40) privateDataUpdateCoordinator];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100034DF4;
    v10[3] = &unk_1000C3B10;
    v5 = v11;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11[0] = v6;
    v11[1] = v7;
    v12 = v3;
    v14 = *(a1 + 72);
    v9 = *(a1 + 48);
    v8 = v9;
    v13 = v9;
    [v4 updatePrivateDataControllersWithCompletion:v10];

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100034DD0;
    v15[3] = &unk_1000C3A98;
    v17 = *(a1 + 56);
    v5 = &v16;
    v16 = *(a1 + 32);
    sub_100034DD0(v15);
  }
}

void sub_100034DD0(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 2;
  *(*(*(a1 + 48) + 8) + 24) = 2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100034DF4(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = [*(a1 + 40) todayAgent];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100034F88;
  v15[3] = &unk_1000C18D0;
  v16 = *(a1 + 32);
  [v2 serviceWidgetIfNeededWithCompletion:v15];

  dispatch_group_enter(*(a1 + 32));
  v3 = [*(a1 + 40) subscriptionController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100034F90;
  v10[3] = &unk_1000C3AE8;
  v4 = *(a1 + 48);
  v13 = *(a1 + 64);
  v5 = *(a1 + 32);
  v14 = *(a1 + 72);
  v9 = *(a1 + 40);
  v6 = *(a1 + 56);
  *&v7 = v9;
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v11 = v8;
  v12 = v7;
  [v3 fetchSubscribedTagsWithCallbackQueue:&_dispatch_main_q preferCache:0 completion:v10];

  dispatch_group_leave(*(a1 + 32));
}

void sub_100034F90(uint64_t a1)
{
  v2 = [*(a1 + 32) prefetchConfig];
  v3 = [v2 shouldPrefetchForYouFeed];

  if ((v3 & 1) == 0)
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000352FC;
    v34[3] = &unk_1000C3550;
    v36 = *(a1 + 64);
    v35 = *(a1 + 40);
    sub_1000352FC(v34);
    v4 = v35;
    goto LABEL_5;
  }

  if (*(*(*(a1 + 72) + 8) + 24))
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100035380;
    v31[3] = &unk_1000C3550;
    v33 = *(a1 + 64);
    v32 = *(a1 + 40);
    sub_100035380(v31);
    v4 = v32;
LABEL_5:

    return;
  }

  v5 = FRBackgroundFetchLog;
  if (os_log_type_enabled(FRBackgroundFetchLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v7 = v5;
    v8 = [v6 fetchables];
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    *buf = 138412290;
    v39 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Prefetching operations in the background. Count: %@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [*(a1 + 48) fetchables];
  v11 = [v10 copy];

  v12 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        dispatch_group_enter(*(a1 + 40));
        v17 = *(a1 + 32);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100035404;
        v23[3] = &unk_1000C3AC0;
        v18 = *(a1 + 56);
        v19 = *(a1 + 64);
        v24 = v18;
        v26 = v19;
        v25 = *(a1 + 40);
        v20 = [v16 backgroundFetchWithAppConfiguration:v17 completionHandler:v23];
        v21 = *(*(a1 + 80) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v13);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000352FC(uint64_t a1)
{
  v2 = FRBackgroundFetchLog;
  if (os_log_type_enabled(FRBackgroundFetchLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Skipping For You prefetch because it's disabled in the app config.", v3, 2u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100035380(uint64_t a1)
{
  v2 = FRBackgroundFetchLog;
  if (os_log_type_enabled(FRBackgroundFetchLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Skipping For You prefetch because background fetch timed out", v3, 2u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100035404(uint64_t a1, uint64_t a2)
{
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;
  v7 = FRBackgroundFetchLog;
  if (os_log_type_enabled(FRBackgroundFetchLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Feed prefetch did complete in %f secs.", &v8, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_1000354F4(void *a1, uint64_t a2)
{
  if (a2)
  {
    *(*(a1[5] + 8) + 24) = 1;
    [*(*(a1[6] + 8) + 40) cancel];
  }

  v4 = [NSNumber numberWithUnsignedInteger:*(*(a1[7] + 8) + 24)];
  v5 = [NSNumber numberWithUnsignedInteger:*(*(a1[8] + 8) + 24)];
  v6 = [NSSet setWithObjects:v4, v5, 0];
  Results = FCAggregateFetchResultWithFetchResults();

  v8 = a1[4];
  ResultFromFCFetchResult = UIBackgroundFetchResultFromFCFetchResult(Results);
  v10 = *(v8 + 16);

  return v10(v8, ResultFromFCFetchResult, a2);
}

void sub_100035984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003599C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100035A8C;
  v13[3] = &unk_1000C3BB0;
  v13[4] = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v9 = [a4 fc_dictionaryByTransformingValuesWithBlock:v13];
  v10 = [[TSPrefetchedArticlesFetchResult alloc] initWithSelectedArticleID:v8 articleIDs:v7 prefetchedHeadlines:v9];

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

id sub_100035A8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) feldsparContext];
  v5 = [v4 cloudContext];
  v6 = [v3 headlineWithContentContext:v5];

  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) feldsparContext];
    v9 = [v8 cloudContext];
    v10 = [v7 contentWithContext:v9];

    v11 = FRArticleLog;
    if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v3 articleID];
      v14 = [v10 anfContent];
      v15 = [v14 anfDocumentAssetHandles];
      v16 = [v15 firstObject];
      v17 = [v16 uniqueKey];
      *buf = 138543618;
      v22 = v13;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully unpacked referred article headline, articleID=%{public}@, anfDocument=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100035CC8;
    v19[3] = &unk_1000C3B88;
    v20 = v3;
    v7 = sub_100035CC8(v19);
    v10 = v20;
  }

  return v7;
}

uint64_t sub_100035CC8(uint64_t a1)
{
  v2 = FRArticleLog;
  if (os_log_type_enabled(FRArticleLog, OS_LOG_TYPE_ERROR))
  {
    sub_10006EBF4(a1, v2);
  }

  return 0;
}

uint64_t sub_100036C6C(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v6;
    if ([v2 isViewLoaded])
    {
      v3 = [v2 view];
      v4 = [v3 window];

      if (v4)
      {
        [objc_opt_class() saveViewAppearanceDateForObserver:v2];
      }
    }
  }

  return _objc_release_x1();
}

uint64_t sub_100037100(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v6;
    if ([v2 isViewLoaded])
    {
      v3 = [v2 view];
      v4 = [v3 window];

      if (v4)
      {
        [objc_opt_class() recordExposureEventForObserver:v2];
      }
    }
  }

  return _objc_release_x1();
}

void sub_100037C98(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v4 = [*(a1 + 32) editorialItemCreator];
    v3 = [v4 createEditorialItemFromCachedEntry:*(a1 + 40)];
    (*(v1 + 16))(v1, v3);
  }
}

void sub_100037D24(uint64_t a1)
{
  v2 = [FREditorialItemEntry alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = [*(a1 + 88) lastSeenDocumentVersion];
  LOBYTE(v21) = *(a1 + 128);
  v22 = [(FREditorialItemEntry *)v2 initWithEditorialItemID:v3 title:v4 subtitle:v5 subtitleColorString:v6 image:0 actionUrlString:v7 lastModifiedDate:v8 documentVersion:v9 lastSeenDocumentVersion:v10 showBadge:v21];

  v11 = [*(a1 + 96) editorialItemEntryManager];
  [v11 addEditorialItem:v22];

  v12 = [TSEditorialItem alloc];
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 104);
  v18 = [NSURL URLWithString:*(a1 + 64)];
  v19 = [v12 initWithIdentifier:v13 title:v14 subtitle:v15 subtitleColor:v16 attributes:v17 actionURL:v18 thumbnailImage:0 backingTag:0 headline:*(a1 + 112)];

  v20 = *(a1 + 120);
  if (v20)
  {
    (*(v20 + 16))(v20, v19);
  }
}

void sub_100037E84(uint64_t a1, UIImage *image)
{
  v26 = UIImagePNGRepresentation(image);
  v3 = [FREditorialItemEntry alloc];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = [*(a1 + 88) lastSeenDocumentVersion];
  LOBYTE(v25) = *(a1 + 128);
  v12 = [(FREditorialItemEntry *)v3 initWithEditorialItemID:v4 title:v5 subtitle:v6 subtitleColorString:v7 image:v26 actionUrlString:v8 lastModifiedDate:v9 documentVersion:v10 lastSeenDocumentVersion:v11 showBadge:v25];

  v13 = [*(a1 + 96) editorialItemEntryManager];
  [v13 addEditorialItem:v12];

  v14 = [*(a1 + 96) thumbnailCreator];
  v15 = [v14 editorialThumbnailImageWith:v26];

  v16 = [TSEditorialItem alloc];
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = *(a1 + 104);
  v22 = [NSURL URLWithString:*(a1 + 64)];
  v23 = [v16 initWithIdentifier:v17 title:v18 subtitle:v19 subtitleColor:v20 attributes:v21 actionURL:v22 thumbnailImage:v15 backingTag:0 headline:*(a1 + 112)];

  v24 = *(a1 + 120);
  if (v24)
  {
    (*(v24 + 16))(v24, v23);
  }
}

uint64_t sub_1000381FC(uint64_t a1)
{
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_10006F6F0(a1, v2);
  }

  return 0;
}

uint64_t sub_10003824C(uint64_t a1)
{
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Editorial Item Provider: New Editorial ArticleID: %{public}@, showing badge", &v5, 0xCu);
  }

  return 1;
}

void sub_1000383F0(uint64_t a1)
{
  v2 = [*(a1 + 32) documentController];
  v3 = [v2 imageResourceForIdentifier:*(a1 + 40)];

  v4 = [SXImageRequest alloc];
  v5 = *(a1 + 40);
  v6 = [v3 URL];
  v7 = [v4 initWithImageIdentifier:v5 imageQualities:4 url:v6 size:1 preserveColorspace:0 loadingBlock:{CGSizeZero.width, CGSizeZero.height}];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100038518;
  v10[3] = &unk_1000C3CF0;
  v8 = *(a1 + 48);
  v11 = *(a1 + 56);
  v9 = [v8 loadImagesForImageRequest:v7 completionBlock:v10];
}

void sub_100038518(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000385DC;
    v6[3] = &unk_1000C3CC8;
    v7 = *(a1 + 32);
    [v4 enumerateObjectsUsingBlock:v6];
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

void sub_1000385DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [UIImage alloc];
  v5 = [v3 image];

  v6 = [v5 CGImage];
  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v9 = [v4 initWithCGImage:v6 scale:0 orientation:?];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9);
  }
}

void sub_1000390C4(id a1, id a2, TFResolver *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [(TFResolver *)v4 resolveClass:objc_opt_class()];
  [v5 addRoutable:v6];

  v7 = [(TFResolver *)v4 resolveClass:objc_opt_class()];

  [v5 addRoutable:v7];
}

FRURLRouterManagerType *__cdecl sub_100039180(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  return v3;
}

FRURLRouterManager *__cdecl sub_1000391E0(id a1, TFResolver *a2)
{
  v2 = objc_alloc_init(FRURLRouterManager);

  return v2;
}

FRVanityURLRouterManager *__cdecl sub_100039210(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [FRVanityURLRouterManager alloc];
  v4 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FRURLAnalyticsReferralFactory];
  v5 = [(TFResolver *)v2 resolveClass:objc_opt_class()];
  v6 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v7 = [(FRVanityURLRouterManager *)v3 initWithAnalyticsReferralFactory:v4 redirectService:v5 routerManager:v6];

  return v7;
}

FCVanityURLRedirectService *__cdecl sub_1000392EC(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [FCVanityURLRedirectService alloc];
  v4 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCContentContext];

  v5 = [v3 initWithContentContext:v4];

  return v5;
}

FRURLAnalyticsReferralFactory *__cdecl sub_100039370(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  return v3;
}

FRURLAnalyticsReferralFactory *__cdecl sub_1000393D0(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [FRURLAnalyticsReferralFactory alloc];
  v4 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v5 = [(FRURLAnalyticsReferralFactory *)v3 initWithAppActivityMonitor:v4];

  return v5;
}

FRUnrecognizedURLRouter *__cdecl sub_10003945C(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [FRUnrecognizedURLRouter alloc];
  v4 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FRURLAnalyticsReferralFactory];
  v5 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v6 = [(FRUnrecognizedURLRouter *)v3 initWithAnalyticsReferralFactory:v4 redirectService:v5];

  return v6;
}

void sub_100039508(id a1, TFResolver *a2, FRUnrecognizedURLRouter *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [(TFResolver *)v5 resolveClass:objc_opt_class()];

  [(FRUnrecognizedURLRouter *)v4 setRetryHandler:v6];
}

TSExplicitContentRestrictionAlertPresenter *__cdecl sub_100039594(id a1, TFResolver *a2)
{
  v2 = objc_alloc_init(FRExplicitContentRestrictionAlertPresenter);

  return v2;
}

FRNewsBridgeDeeplinkRouter *sub_1000395C4(uint64_t a1)
{
  v2 = [FRNewsBridgeDeeplinkRouter alloc];
  v3 = +[UIApplication sharedApplication];
  v4 = [(FRNewsBridgeDeeplinkRouter *)v2 initWithApplication:v3 bridgedAppDelegate:*(a1 + 32)];

  return v4;
}

id sub_10003963C(id a1, TFResolver *a2)
{
  v2 = objc_opt_new();

  return v2;
}

id sub_10003966C(id a1, TFResolver *a2)
{
  v2 = objc_opt_new();

  return v2;
}

FROnboardingDataManager *sub_10003969C(uint64_t a1)
{
  v2 = [FROnboardingDataManager alloc];
  v3 = [*(a1 + 32) feldsparContext];
  v4 = [(FROnboardingDataManager *)v2 initWithFeldsparContext:v3];

  return v4;
}

void sub_100039FA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 appendFormat:@"_%@", v3];
}

void sub_10003A178(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetchedObject];
  v5 = [v4 copy];

  v6 = [v5 firstObject];
  v7 = dispatch_group_create();
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_100009BA8;
  v49 = sub_100009F28;
  v8 = +[UIScreen mainScreen];
  [v8 scale];
  v9 = FCThumbnailForHeadlineMinimumSize();
  v50 = [v9 thumbnailAssetHandle];

  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_100009BA8;
  v43 = sub_100009F28;
  v10 = [v6 sourceChannel];
  v11 = [v10 theme];
  v12 = [v11 bannerImageForMask];
  v44 = [v12 assetHandle];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100009BA8;
  v37 = sub_100009F28;
  v13 = [v6 sourceChannel];
  v14 = [v13 theme];
  v15 = [v14 compactBannerImage];
  v38 = [v15 assetHandle];

  v16 = v46[5];
  if (v16)
  {
    v17 = [v16 downloadIfNeededWithGroup:v7];
  }

  v18 = v40[5];
  if (v18)
  {
    v19 = [v18 downloadIfNeededWithGroup:v7];
    v20 = v40[5];
  }

  else
  {
    v20 = 0;
  }

  v21 = v34[5];
  if (v20 == v21)
  {
    v34[5] = 0;
  }

  else
  {
    v22 = [v21 downloadIfNeededWithGroup:v7];
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10003A504;
  v26[3] = &unk_1000C4140;
  v30 = &v45;
  v31 = &v39;
  v32 = &v33;
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  v27 = v6;
  v28 = v23;
  v29 = v24;
  v25 = v6;
  dispatch_group_notify(v7, &_dispatch_main_q, v26);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
}

void sub_10003A4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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
  _Block_object_dispose((v11 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10003A504(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(*(a1 + 56) + 8) + 40) filePath];
    if (v2)
    {
      v3 = [*(*(*(a1 + 56) + 8) + 40) filePath];
      v4 = [NSURL fileURLWithPath:v3 isDirectory:0];
    }

    else
    {
      v4 = 0;
    }

    v5 = [*(*(*(a1 + 64) + 8) + 40) filePath];
    if (v5)
    {
      v6 = [*(*(*(a1 + 64) + 8) + 40) filePath];
      v7 = [NSURL fileURLWithPath:v6 isDirectory:0];
    }

    else
    {
      v7 = 0;
    }

    v8 = [*(*(*(a1 + 72) + 8) + 40) filePath];
    if (v8)
    {
      v9 = [*(*(*(a1 + 72) + 8) + 40) filePath];
      v10 = [NSURL fileURLWithPath:v9 isDirectory:0];
    }

    else
    {
      v10 = 0;
    }

    if (v4)
    {
      v11 = [NSData dataWithContentsOfURL:v4];
      [v11 bytes];
    }

    if (v7)
    {
      v12 = [NSData dataWithContentsOfURL:v7];
      [v12 bytes];
    }

    if (v10)
    {
      v13 = [NSData dataWithContentsOfURL:v10];
      [v13 bytes];
    }

    v14 = +[NSMutableDictionary dictionary];
    v15 = [*(a1 + 32) articleID];

    if (v15)
    {
      v16 = [*(a1 + 32) articleID];
      [v14 setObject:v16 forKeyedSubscript:FCNotificationPayloadArticleIDKey];
    }

    v17 = [*(a1 + 32) title];

    if (v17)
    {
      v18 = [*(a1 + 32) title];
      [v14 setObject:v18 forKeyedSubscript:FCNotificationPayloadTitleKey];
    }

    v19 = [*(a1 + 32) shortExcerpt];

    if (v19)
    {
      v20 = [*(a1 + 32) shortExcerpt];
      [v14 setObject:v20 forKeyedSubscript:FCNotificationPayloadExcerptKey];
    }

    v21 = [*(a1 + 32) sourceChannel];
    v22 = [v21 identifier];

    if (v22)
    {
      v23 = [*(a1 + 32) sourceChannel];
      v24 = [v23 identifier];
      [v14 setObject:v24 forKeyedSubscript:FCNotificationPayloadSourceChannelIDKey];
    }

    v25 = [*(a1 + 32) sourceChannel];
    v26 = [v25 name];

    if (v26)
    {
      v27 = [*(a1 + 32) sourceChannel];
      v28 = [v27 name];
      [v14 setObject:v28 forKeyedSubscript:FCNotificationPayloadPublisherNameKey];
    }

    v29 = [*(a1 + 32) sourceChannel];
    v30 = [v29 nameCompact];

    if (v30)
    {
      v31 = [*(a1 + 32) sourceChannel];
      v32 = [v31 nameCompact];
      [v14 setObject:v32 forKeyedSubscript:FCNotificationPayloadPublisherNameCompactKey];
    }

    v33 = [*(a1 + 32) publishDate];

    if (v33)
    {
      v34 = [*(a1 + 32) publishDate];
      [v34 timeIntervalSince1970];
      v35 = [NSNumber numberWithDouble:?];
      [v14 setObject:v35 forKeyedSubscript:FCNotificationPayloadPublishDateKey];
    }

    v36 = [*(*(*(a1 + 56) + 8) + 40) remoteURL];

    if (v36)
    {
      v37 = [*(*(*(a1 + 56) + 8) + 40) remoteURL];
      v38 = [v37 absoluteString];
      [v14 setObject:v38 forKeyedSubscript:FCNotificationPayloadThumbnailURLKey];
    }

    v39 = [*(*(*(a1 + 64) + 8) + 40) remoteURL];

    if (v39)
    {
      v40 = [*(*(*(a1 + 64) + 8) + 40) remoteURL];
      v41 = [v40 absoluteString];
      [v14 setObject:v41 forKeyedSubscript:FCNotificationPayloadPublisherLogoURLKey];
    }

    v42 = *(*(*(a1 + 72) + 8) + 40);
    if (v42 != *(*(*(a1 + 64) + 8) + 40))
    {
      v43 = [v42 remoteURL];

      if (v43)
      {
        v44 = [*(*(*(a1 + 72) + 8) + 40) remoteURL];
        v45 = [v44 absoluteString];
        [v14 setObject:v45 forKeyedSubscript:FCNotificationPayloadPublisherLogoCompactURLKey];
      }
    }

    v81[0] = @"SimulateRemoteNotificationType";
    v80[0] = @"LocalNotificationTypeKey";
    v80[1] = FCNotificationPayloadNewsKey;
    v46 = [v14 copy];
    v81[1] = v46;
    v47 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];

    v48 = objc_alloc_init(UNMutableNotificationContent);
    v49 = [*(a1 + 32) sourceChannel];
    v50 = [v49 name];
    [v48 setTitle:v50];

    v51 = [*(a1 + 32) title];
    [v48 setBody:v51];

    [v48 setCategoryIdentifier:FCNotificationArticleCategory];
    [v48 setUserInfo:v47];
    v67 = v4;
    v52 = v4;
    v53 = v7;
    v54 = [*(a1 + 40) _notificationAttachmentsWithThumbnailFileURL:v52 publisherLogoFileURL:v7 publisherLogoCompactFileURL:v10];
    [v48 setAttachments:v54];

    v69 = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:0 repeats:3.0];
    v55 = +[NSUUID UUID];
    [v55 UUIDString];
    v56 = v70 = v14;
    v57 = [v48 copy];
    v68 = [UNNotificationRequest requestWithIdentifier:v56 content:v57 trigger:v69];

    v58 = +[UNUserNotificationCenter currentNotificationCenter];
    [v58 addNotificationRequest:v68 withCompletionHandler:&stru_1000C40C8];

    v59 = dispatch_time(0, 10000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003AF20;
    block[3] = &unk_1000C40F0;
    v78 = *(a1 + 56);
    v79 = *(a1 + 72);
    dispatch_after(v59, &_dispatch_main_q, block);
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_10003AF88;
    v75[3] = &unk_1000C4118;
    v60 = [[NSSArticleViewControllerInternal alloc] initWithNibName:0 bundle:0];
    v76 = v60;
    [NSSArticleInternal articleFromNotificationUserInfo:v47 thumbnailFileURL:0 publisherLogoFileURL:0 publisherLogoMaskFileURL:0 completion:v75];
    v61 = +[UIApplication sharedApplication];
    v62 = [v61 key_window];

    v63 = [v62 rootViewController];
    [v63 presentViewController:v60 animated:1 completion:0];

    v64 = dispatch_time(0, 10000000000);
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_10003AF94;
    v73[3] = &unk_1000C18D0;
    v74 = v60;
    v65 = v60;
    dispatch_after(v64, &_dispatch_main_q, v73);

    v66 = dispatch_time(0, 3000000000);
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_10003AFE0;
    v71[3] = &unk_1000C3098;
    v72 = *(a1 + 48);
    dispatch_after(v66, &_dispatch_main_q, v71);
  }
}

void sub_10003AF20(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_10003AF94(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_10003AFE0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10003B4F8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006FAA4(v2, v3);
    }
  }
}

FREnableNotificationsAlertPresenter *__cdecl sub_10003BB9C(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  return v3;
}

FREnableNotificationsAlertPresenter *__cdecl sub_10003BBFC(id a1, TFResolver *a2)
{
  v2 = objc_alloc_init(FREnableNotificationsAlertPresenter);

  return v2;
}

void sub_10003BCF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 gizmoPreferencesNotifierDidNoticeUpdate:WeakRetained];
}

id sub_10003C3CC(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == 2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

void sub_10003CBA4(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003CC2C;
  v3[3] = &unk_1000C42E0;
  v3[4] = *(a1 + 40);
  [a2 enumerateKeysAndObjectsUsingBlock:v3];
  dispatch_group_leave(*(a1 + 32));
}

void sub_10003CC40(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003CCC8;
  v3[3] = &unk_1000C42E0;
  v3[4] = *(a1 + 40);
  [a2 enumerateKeysAndObjectsUsingBlock:v3];
  dispatch_group_leave(*(a1 + 32));
}

void sub_10003CCDC(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10003CFA4;
  v24[3] = &unk_1000C4330;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v28 = *(a1 + 48);
  v24[4] = v5;
  v7 = v2;
  v25 = v7;
  v8 = v3;
  v26 = v8;
  v9 = v4;
  v27 = v9;
  [v6 enumerateObjectsUsingBlock:v24];
  v10 = [*(a1 + 40) editorialItemEntryManager];
  v11 = [v10 orderedEditorialItemIDs];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003D434;
  v21[3] = &unk_1000C4358;
  v12 = v8;
  v22 = v12;
  v13 = v9;
  v23 = v13;
  [v11 enumerateObjectsUsingBlock:v21];
  v14 = [*(a1 + 40) editorialItemEntryManager];
  [v14 addOrderedEditorialItemIDs:v12];

  v15 = [*(a1 + 40) itemChangeDelegate];
  [v15 refreshEditorialItemsWithItems:v7];

  if (![*(a1 + 32) count])
  {
    v16 = [*(a1 + 40) editorialItemEntryManager];
    v17 = [v16 editorialItemsByID];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003D494;
    v19[3] = &unk_1000C4380;
    v20 = v13;
    [v17 enumerateKeysAndObjectsUsingBlock:v19];
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003D4A0;
  v18[3] = &unk_1000C43A8;
  v18[4] = *(a1 + 40);
  [v13 enumerateObjectsUsingBlock:v18];
}

void sub_10003CFA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v47 = v3;
  v5 = [v3 identifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [v47 title];
    if (v7)
    {
      [v6 setTitle:v7];
    }

    else
    {
      v10 = [v6 title];
      [v6 setTitle:v10];
    }

    v11 = [v47 subtitle];
    if (v11)
    {
      [v6 setSubtitle:v11];
    }

    else
    {
      v12 = [v6 subtitle];
      [v6 setSubtitle:v12];
    }

    v13 = [v47 subtitleColorString];
    if (v13)
    {
      [v6 setSubtitleColor:v13];
    }

    else
    {
      v14 = [v6 subtitleColor];
      [v6 setSubtitleColor:v14];
    }

    v15 = [v47 actionUrlString];
    if (v15)
    {
      v16 = [v47 actionUrlString];
      v17 = [NSURL URLWithString:v16];
      [v6 setActionURL:v17];
    }

    else
    {
      v16 = [v6 actionURL];
      [v6 setActionURL:v16];
    }

    v18 = [*(a1 + 32) editorialItemEntryManager];
    v19 = [v18 editorialItemsByID];
    v20 = [v6 identifier];
    v9 = [v19 objectForKey:v20];

    v21 = [*(a1 + 32) _editorialItemHasBadge:v6];
    v45 = a1;
    if ((v21 & 1) == 0 && v9)
    {
      v22 = [v9 actionUrlString];
      v23 = [v6 actionURL];
      v24 = [v23 absoluteString];
      v25 = [v22 isEqualToString:v24];

      if (v25)
      {
        v21 = 0;
      }

      else
      {
        v26 = +[NSMutableArray array];
        v27 = [NSNumber numberWithInteger:0];
        [v26 addObject:v27];

        [v6 setAttributes:v26];
        v21 = 1;
      }
    }

    v44 = v21;
    v43 = [FREditorialItemEntry alloc];
    v41 = [v47 identifier];
    v28 = [v6 title];
    v29 = [v6 subtitle];
    v30 = [v6 subtitleColor];
    [v9 image];
    v31 = v46 = v6;
    v42 = [v46 actionURL];
    v32 = [v42 absoluteString];
    v33 = [v9 lastModifiedDate];
    v34 = [v9 documentVersion];
    v35 = [v9 lastSeenDocumentVersion];
    LOBYTE(v40) = v44;
    v36 = [(FREditorialItemEntry *)v43 initWithEditorialItemID:v41 title:v28 subtitle:v29 subtitleColorString:v30 image:v31 actionUrlString:v32 lastModifiedDate:v33 documentVersion:v34 lastSeenDocumentVersion:v35 showBadge:v40];

    v6 = v46;
    v37 = [*(v45 + 32) editorialItemEntryManager];
    [v37 addEditorialItem:v36];

    [*(v45 + 40) addObject:v46];
    v38 = *(v45 + 48);
    v39 = [v46 identifier];
    [v38 addObject:v39];
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = [v47 identifier];
    [v8 addObject:v9];
  }
}

void sub_10003D434(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void sub_10003D4A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 editorialItemEntryManager];
  [v4 removeItemWithIdentifier:v3];
}

void sub_10003D5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003D5E0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 intValue];
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_10003D764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003D77C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 editorialItemEntryManager];
  v6 = [v5 editorialItemsByID];
  v44 = [v6 objectForKey:v4];

  v7 = [v44 editorialItemID];
  LODWORD(v4) = [v7 fc_isValidArticleID];

  if (v4)
  {
    v8 = [*(a1 + 32) cloudContext];
    v9 = [v8 articleController];
    v10 = [v44 editorialItemID];
    v11 = [v9 articleWithID:v10];
    v12 = [v11 headline];

    if (!v12)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v13 = [v44 image];

    v43 = a1;
    if (v13)
    {
      v14 = [*(a1 + 32) thumbnailCreator];
      v15 = [v44 image];
      v13 = [v14 editorialThumbnailImageWith:v15];
    }

    v16 = v12;
    v17 = +[NSMutableArray array];
    if ([v44 showBadge])
    {
      v18 = [NSNumber numberWithInteger:0];
      [v17 addObject:v18];
    }

    v19 = [TSEditorialItem alloc];
    v20 = [v44 editorialItemID];
    v21 = [v44 title];
    v22 = [v44 subtitle];
    v23 = [v44 subtitleColorString];
    v24 = [v44 actionUrlString];
    v25 = [NSURL URLWithString:v24];
    v26 = [v19 initWithIdentifier:v20 title:v21 subtitle:v22 subtitleColor:v23 attributes:v17 actionURL:v25 thumbnailImage:v13 backingTag:0 headline:v16];

    v27 = v16;
    [*(v43 + 40) addObject:v26];
  }

  else
  {
    v28 = [v44 editorialItemID];
    v29 = [v28 fc_isValidTagID];

    v30 = v44;
    if (!v29)
    {
      goto LABEL_16;
    }

    v31 = [*(a1 + 32) cloudContext];
    v32 = [v31 tagController];
    v33 = [v44 editorialItemID];
    v27 = [v32 slowCachedTagForID:v33];

    if (!v27)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_15;
    }

    v13 = +[NSMutableArray array];
    if ([v44 showBadge])
    {
      v34 = [NSNumber numberWithInteger:0];
      [v13 addObject:v34];
    }

    v35 = [TSEditorialItem alloc];
    v36 = [v44 editorialItemID];
    v37 = [v44 title];
    v38 = [v44 subtitle];
    v39 = [v44 subtitleColorString];
    v40 = [v44 actionUrlString];
    v41 = [NSURL URLWithString:v40];
    v42 = [v35 initWithIdentifier:v36 title:v37 subtitle:v38 subtitleColor:v39 attributes:v13 actionURL:v41 thumbnailImage:0 backingTag:v27 headline:0];

    [*(a1 + 40) addObject:v42];
  }

LABEL_15:
  v30 = v44;
LABEL_16:
}

void sub_10003DFB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

void sub_10003DFE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 editorialItemEntryManager];
  v6 = [v5 editorialItemsByID];
  v14 = [v6 objectForKey:v4];

  v7 = [v14 editorialItemID];
  LOBYTE(v4) = [v7 fc_isValidArticleID];

  if (v4)
  {
    v8 = v14;
    v9 = 40;
  }

  else
  {
    v10 = [v14 editorialItemID];
    v11 = [v10 fc_isValidTagID];

    if (!v11)
    {
      goto LABEL_6;
    }

    v8 = v14;
    v9 = 48;
  }

  v12 = *(a1 + v9);
  v13 = [v8 editorialItemID];
  [v12 setObject:v14 forKeyedSubscript:v13];

LABEL_6:
}

void sub_10003E0E8(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v5 = v3;
  FCPerformIfNonNil();
}

void sub_10003E1D4(id *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 error];

  if (v5)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003E338;
    v12[3] = &unk_1000C1920;
    v6 = &v13;
    v13 = a1[4];
    v14 = a1[5];
    sub_10003E338(v12);
    v7 = v14;
  }

  else
  {
    v8 = [a1[4] fetchedObject];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10003E38C;
    v9[3] = &unk_1000C4470;
    v6 = v10;
    v10[0] = a1[6];
    v10[1] = v4;
    v11 = a1[7];
    [v8 enumerateObjectsUsingBlock:v9];

    dispatch_group_leave(a1[5]);
    v7 = v11;
  }
}