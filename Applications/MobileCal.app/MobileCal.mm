int main(int argc, const char **argv, const char **envp)
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  UIApplicationMain(argc, argv, v7, 0);

  objc_autoreleasePoolPop(v5);
  return 0;
}

void sub_100002F8C(id a1)
{
  v3 = sub_100002FE0();
  v1 = [v3 eventSources];
  v2 = CUIKNowDate();
}

id sub_100002FE0()
{
  if (qword_100251D88 != -1)
  {
    sub_100003024();
  }

  v1 = qword_100251D90;

  return v1;
}

void sub_100003038(id a1)
{
  v1 = +[NSProcessInfo processInfo];
  v2 = [v1 environment];
  v5 = [v2 objectForKeyedSubscript:@"MobileCalEventStoreDataPath"];

  [EKEventStore setPredicatePropertyLoadMode:2];
  v3 = [CUIKCalendarModel eventStoreAppropriateForDataPath:v5];
  v4 = qword_100251D90;
  qword_100251D90 = v3;
}

void CalUILogInitialize()
{
  if (qword_100251A00 != -1)
  {
    sub_10000310C();
  }
}

void sub_100003120(id a1)
{
  v1 = os_log_create(CalendarLogSubsystem, "CalendarUI");
  v2 = kCalUILogHandle;
  kCalUILogHandle = v1;

  v3 = os_log_create(CalendarLogSubsystem, "Inbox");
  v4 = kCalUILogInboxHandle;
  kCalUILogInboxHandle = v3;

  v5 = os_log_create(CalendarLogSubsystem, "Testing");
  v6 = kCalUILogTestHandle;
  kCalUILogTestHandle = v5;

  kCalUILogCarplayHandle = os_log_create(CalendarLogSubsystem, "Carplay");

  _objc_release_x1();
}

void sub_100003224(id a1)
{
  qword_100251CC0 = os_log_create("com.apple.mobilecal.signposts", "TelemetrySignposts");

  _objc_release_x1();
}

void sub_1000032D0(id a1)
{
  qword_100251D00 = objc_alloc_init(CalendarSceneManagerSharedState);

  _objc_release_x1();
}

void sub_100003448(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

Swift::Void __swiftcall Application.registerAppIntentsDependencies()()
{
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_10015E0CC(&qword_100251340);
  AppDependencyManager.add<A>(key:dependency:)();

  sub_100003704(&v3);
  static AppDependencyManager.shared.getter();
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  sub_10015E0CC(&qword_100251350);
  AppDependencyManager.add<A>(key:dependency:)();

  sub_100003704(&v3);
  static AppDependencyManager.shared.getter();
  sub_10000376C(0, &qword_100251358);
  v3 = 0u;
  v4 = 0u;
  v5 = 0;
  AppDependencyManager.add<A>(key:dependency:)();

  sub_100003704(&v3);
  static AppDependencyManager.shared.getter();
  sub_10000376C(0, &qword_100251360);
  v3 = 0u;
  v4 = 0u;
  v5 = 0;
  AppDependencyManager.add<A>(key:dependency:)();

  sub_100003704(&v3);
}

uint64_t sub_1000036C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003704(uint64_t a1)
{
  v2 = sub_10015E0CC(&qword_100251348);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000376C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100003FC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) invisibleCalendars];
  [v1 __buildCalendarSyncHashesForCalendars:v2];
}

uint64_t type metadata accessor for RootNavigationErrorDisplayManager()
{
  result = qword_100251310;
  if (!qword_100251310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100004178(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v18 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v19 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_delegate;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_displayDuration] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_displayTimer] = 0;
  v17 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_timerQueue;
  v6 = sub_10000376C(0, &qword_100250DC0);
  v16[1] = "cle.fill";
  v16[2] = v6;
  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_100004530(&qword_100250DC8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10015E0CC(&qword_100250DD0);
  sub_100005EF8(&qword_100250DD8, &qword_100250DD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *&v1[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_timerStartTime;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v9 = &v2[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_currentlyDisplayedAccount];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v2[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_currentlyDisplayedError];
  *v10 = 0;
  v10[8] = 1;
  v11 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_pastContentDict;
  *&v2[v11] = sub_100005F4C(&_swiftEmptyArrayStorage);
  v12 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_moreContentDict;
  *&v2[v12] = sub_100005F4C(&_swiftEmptyArrayStorage);
  v13 = &v2[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_noErrorText];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v2[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_isObserving] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_secondsRemaining] = 0x402E000000000000;
  v14 = type metadata accessor for RootNavigationErrorDisplayManager();
  v21.receiver = v2;
  v21.super_class = v14;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_100004530(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100005DA8()
{
  sub_100005EA0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100005EA0()
{
  if (!qword_100251320)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100251320);
    }
  }
}

uint64_t sub_100005EF8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10015E178(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100005F4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10015E0CC(&unk_100250F80);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100167108(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100007018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak((v34 - 160));
  _Unwind_Resume(a1);
}

void sub_100007780(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) model];
  v3 = [v2 eventNotificationsForCurrentIdentityCount];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100013748;
  v4[3] = &unk_10020EE00;
  v4[4] = *(a1 + 32);
  v4[5] = v3;
  dispatch_async(&_dispatch_main_q, v4);
}

Swift::Void __swiftcall RootNavigationErrorDisplayManager.updateNoErrorText(to:)(Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin();
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_timerQueue];
  v11 = swift_allocObject();
  v11[2] = v1;
  v11[3] = countAndFlagsBits;
  v11[4] = object;
  aBlock[4] = sub_10000A3E4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A3F0;
  aBlock[3] = &unk_100212BF8;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_100004530(&qword_100251288, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015E0CC(&qword_100251290);
  sub_100005EF8(&qword_100251298, &qword_100251290);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_100008EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008F10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008F20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A088(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &a1[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_noErrorText];
  *v14 = a2;
  *(v14 + 1) = a3;

  if (!*&a1[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_currentlyDisplayedAccount + 8])
  {
    sub_10000376C(0, &qword_100250DC0);
    v21 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    aBlock[4] = sub_100013808;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000A3F0;
    aBlock[3] = &unk_100212EC8;
    v17 = _Block_copy(aBlock);
    v18 = a1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100004530(&qword_100251288, &type metadata accessor for DispatchWorkItemFlags);
    sub_10015E0CC(&qword_100251290);
    v20 = v10;
    sub_100005EF8(&qword_100251298, &qword_100251290);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v21;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v20);
  }

  return result;
}

uint64_t sub_10000A3A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A3F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000A464(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

void sub_10000BCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BCBC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _switcherFontOfSize:0 isSemibold:16.0];
  v10 = NSFontAttributeName;
  v11 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [[NSAttributedString alloc] initWithString:v4 attributes:v6];

  [v7 boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
  v9 = *(*(a1 + 40) + 8);
  if (v8 + 10.0 > *(v9 + 24))
  {
    *(v9 + 24) = v8 + 10.0;
  }
}

void sub_10000C0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C768(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251CD8;
  qword_100251CD8 = v1;

  [qword_100251CD8 setCalculationType:0];
  [qword_100251CD8 addAnchoredValue:16 forWindowSizeWidth:51.0];
  [qword_100251CD8 addAnchoredValue:32 forWindowSizeWidth:56.66];
  [qword_100251CD8 addAnchoredValue:2 forWindowSizeWidth:44.5];
  v3 = qword_100251CD8;

  [v3 addAnchoredValue:4 forWindowSizeWidth:44.5];
}

int64_t sub_10000C864(id a1, AnchoredValuePair *a2, AnchoredValuePair *a3)
{
  v4 = a2;
  v5 = a3;
  [(AnchoredValuePair *)v4 size];
  v7 = v6;
  [(AnchoredValuePair *)v5 size];
  v9 = v7 - v8;
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  if (v9 >= 0.00001)
  {
    [(AnchoredValuePair *)v4 size];
    v12 = v11;
    [(AnchoredValuePair *)v5 size];
    if (v12 > v13)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_10000EB84(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 288) defaultCalendarForNewEvents];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100013848;
  v3[3] = &unk_10020F3C0;
  v4 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_10000EC38(uint64_t a1)
{
  v2 = [*(a1 + 32) _calendarsButtonConfiguration];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B2D00;
  v4[3] = &unk_10020EC68;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_10000F43C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) model];
  v3 = [v2 defaultCalendarForNewEvents];
  *(*(*(a1 + 40) + 8) + 24) = v3 != 0;

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003FDF4;
  v4[3] = &unk_10020F3C0;
  v5 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v4);
}

uint64_t _s9MobileCal11TipsManagerC09configureC6CenteryyF_0()
{
  v0 = type metadata accessor for Tips.ConfigurationOption.AnalyticsEngine();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  v9 = *(v8 - 8);
  result = __chkstk_darwin();
  v12 = &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((byte_100251380 & 1) == 0)
  {
    v14 = v5;
    v15 = v4;
    v16 = v1;
    v17 = v0;
    byte_100251380 = 1;
    sub_10015E0CC(&qword_100251440);
    type metadata accessor for Tips.ConfigurationOption();
    *(swift_allocObject() + 16) = xmmword_1001F8D90;
    static Tips.ConfigurationOption.DisplayFrequency.system.getter();
    static Tips.ConfigurationOption.displayFrequency(_:)();
    (*(v9 + 8))(v12, v8);
    static Tips.ConfigurationOption.DatastoreLocation.tipsGroupContainer.getter();
    static Tips.ConfigurationOption.datastoreLocation(_:)();
    (*(v14 + 8))(v7, v15);
    static Tips.ConfigurationOption.AnalyticsEngine.coreAnalytics.getter();
    static Tips.ConfigurationOption.analyticsEngine(_:)();
    (*(v16 + 8))(v3, v17);
    static Tips.configure(_:)();
  }

  return result;
}

uint64_t sub_10000F840(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  v6 = sub_10015E0CC(&qword_1002513A8);
  sub_10000F8DC(v6, a5);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_10000F8DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000F9A4()
{
  v0 = sub_10015E0CC(&qword_1002515A8);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v15 - v2;
  v4 = type metadata accessor for Tips.UsesConstellation();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015E0CC(&qword_1002515B0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - v10;
  Tips.UsesConstellation.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v15 = v4;
  v16 = &protocol witness table for Tips.UsesConstellation;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_10000FC48()
{
  v0 = sub_10015E0CC(&qword_1002513A8);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v15 - v2;
  v4 = type metadata accessor for Tips.Rule();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100250DB0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000F8DC(v0, qword_100252620);
  swift_beginAccess();
  v9 = *(v1 + 16);
  v9(v3, v8, v0);
  Tips.Rule.init<A>(_:_:)();
  v15 = static Tips.RuleBuilder.buildExpression(_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (qword_100250DB8 != -1)
  {
    swift_once();
  }

  v11 = sub_10000F8DC(v0, qword_100252638);
  swift_beginAccess();
  v9(v3, v11, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v10(v7, v4);
  if (qword_100250DA8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000F8DC(v0, qword_100252608);
  swift_beginAccess();
  v9(v3, v12, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v10(v7, v4);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v13 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v13;
}

uint64_t sub_100010044@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10015E0CC(&qword_1002515B8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-v4];
  v6 = sub_10015E0CC(&qword_1002515C0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v11[-v8];
  sub_1000102B0(&qword_1002515C8, &qword_1002515C0);
  static PredicateExpressions.build_Arg<A>(_:)();
  v11[15] = 1;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = sub_10015E0CC(&qword_1002515D0);
  a1[4] = sub_1000102F8();
  sub_100010434(a1);
  sub_1000102B0(&qword_1002515F0, &qword_1002515B8);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000102B0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10015E178(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000102F8()
{
  result = qword_1002515D8;
  if (!qword_1002515D8)
  {
    sub_10015E178(&qword_1002515D0);
    sub_1000102B0(&qword_1002515E0, &qword_1002515C0);
    sub_1000103B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002515D8);
  }

  return result;
}

unint64_t sub_1000103B0()
{
  result = qword_1002515E8;
  if (!qword_1002515E8)
  {
    sub_10015E178(&qword_1002515B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002515E8);
  }

  return result;
}

uint64_t *sub_100010434(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1000108D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001090C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_queue_create("com.apple.mobilecal.calendarsButtonConfig", attr);
  v3 = qword_100251A48;
  qword_100251A48 = v2;
}

void sub_100010A7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100010A98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100251A48;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001208C;
  v6[3] = &unk_1002108E8;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

Swift::Void __swiftcall RootNavigationErrorDisplayManager.updateContent(with:)(Swift::OpaquePointer with)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  __chkstk_darwin();
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v1[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_timerQueue];
  v10 = swift_allocObject();
  v10[2]._rawValue = v1;
  v10[3]._rawValue = with._rawValue;
  aBlock[4] = sub_100011490;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A3F0;
  aBlock[3] = &unk_100212C48;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  static DispatchQoS.unspecified.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_100004530(&qword_100251288, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015E0CC(&qword_100251290);
  sub_100005EF8(&qword_100251298, &qword_100251290);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_1000111CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011210(uint64_t a1, uint64_t a2)
{
  v2 = sub_100011268(a2);
  sub_100011498(v2);
}

uint64_t sub_100011268(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_13:
    v15 = __clz(__rbit64(v4)) | (v7 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(*(a1 + 56) + 8 * v15);

    v20 = [v19 unsignedIntegerValue];
    v21 = *(&_swiftEmptyDictionarySingleton + 2);
    if (*(&_swiftEmptyDictionarySingleton + 3) <= v21)
    {
      sub_100167238(v21 + 1, 1);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v8 = &_swiftEmptyDictionarySingleton + 64;
    v9 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
    v10 = result & ~v9;
    v11 = v10 >> 6;
    if (((-1 << v10) & ~*(&_swiftEmptyDictionarySingleton + (v10 >> 6) + 8)) == 0)
    {
      v22 = 0;
      v23 = (63 - v9) >> 6;
      while (++v11 != v23 || (v22 & 1) == 0)
      {
        v24 = v11 == v23;
        if (v11 == v23)
        {
          v11 = 0;
        }

        v22 |= v24;
        v25 = *&v8[8 * v11];
        if (v25 != -1)
        {
          v12 = __clz(__rbit64(~v25)) + (v11 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_25;
    }

    v12 = __clz(__rbit64((-1 << v10) & ~*(&_swiftEmptyDictionarySingleton + (v10 >> 6) + 8))) | v10 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v4 &= v4 - 1;
    *&v8[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
    v13 = (*(&_swiftEmptyDictionarySingleton + 6) + 16 * v12);
    *v13 = v18;
    v13[1] = v17;
    *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v12) = v20;
    ++*(&_swiftEmptyDictionarySingleton + 2);
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v14 >= v5)
    {

      return &_swiftEmptyDictionarySingleton;
    }

    v4 = *(v1 + 8 * v14);
    ++v7;
    if (v4)
    {
      v7 = v14;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100011498(uint64_t a1)
{
  v2 = v1;
  v92 = type metadata accessor for DispatchWorkItemFlags();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v90 = &v84[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = type metadata accessor for DispatchQoS();
  v88 = *(v89 - 8);
  __chkstk_darwin();
  v87 = &v84[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v97 = &v1[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_currentlyDisplayedAccount];
  v96 = &v1[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_currentlyDisplayedError];
  v9 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_pastContentDict;

  v93 = v9;
  swift_beginAccess();
  v10 = 0;
  v11 = (v6 + 63) >> 6;
  v12 = &_swiftEmptyDictionarySingleton;
  v94 = &_swiftEmptyDictionarySingleton;
LABEL_4:
  v95 = v12;
LABEL_5:
  v13 = v10;
  if (!v8)
  {
    goto LABEL_7;
  }

  do
  {
    v10 = v13;
LABEL_10:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v10 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(a1 + 56) + 8 * v15);
    v20 = *(v97 + 1);
    if (!v20 || (v17 == *v97 ? (v21 = v20 == v18) : (v21 = 0), !v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v96[8] & 1) != 0 || v19 == *v96))
    {
      v86 = v2;
      v22 = *&v2[v93];
      v23 = *(v22 + 16);

      if (!v23)
      {
        goto LABEL_29;
      }

      v24 = sub_100167108(v17, v18);
      if ((v25 & 1) == 0)
      {

LABEL_29:
        v35 = v94;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v35;
        v37 = sub_100167108(v17, v18);
        v39 = v35[2];
        v40 = (v38 & 1) == 0;
        v41 = __OFADD__(v39, v40);
        v42 = v39 + v40;
        if (v41)
        {
LABEL_64:
          __break(1u);
        }

        else
        {
          if (v35[3] >= v42)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v94 = v37;
              v49 = v38;
              sub_100167898();
              LOBYTE(v38) = v49;
              v37 = v94;
            }
          }

          else
          {
            LODWORD(v94) = v38;
            sub_100167238(v42, isUniquelyReferenced_nonNull_native);
            v37 = sub_100167108(v17, v18);
            v43 = v38 & 1;
            LOBYTE(v38) = v94;
            if ((v94 & 1) != v43)
            {
              goto LABEL_70;
            }
          }

          v2 = v86;
          if (v38)
          {
            v44 = v37;

            v94 = aBlock[0];
            *(*(aBlock[0] + 56) + 8 * v44) = v19;
            v12 = v95;
            goto LABEL_5;
          }

          v45 = aBlock[0];
          *(aBlock[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
          v46 = (v45[6] + 16 * v37);
          *v46 = v17;
          v46[1] = v18;
          *(v45[7] + 8 * v37) = v19;
          v47 = v45[2];
          v41 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (!v41)
          {
            v94 = v45;
            v45[2] = v48;
            v12 = v95;
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v26 = *(*(v22 + 56) + 8 * v24);

      if (v26 != v19)
      {
        v27 = v94;
        v85 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v27;
        v29 = sub_100167108(v17, v18);
        v30 = v27[2];
        v31 = (v28 & 1) == 0;
        v32 = v30 + v31;
        if (__OFADD__(v30, v31))
        {
          goto LABEL_66;
        }

        if (v27[3] >= v32)
        {
          if (v85)
          {
            if ((v28 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          else
          {
            LODWORD(v94) = v28;
            sub_100167898();
            if ((v94 & 1) == 0)
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
          LODWORD(v94) = v28;
          sub_100167238(v32, v85);
          v33 = sub_100167108(v17, v18);
          if ((v94 & 1) != (v34 & 1))
          {
            goto LABEL_70;
          }

          v29 = v33;
          if ((v94 & 1) == 0)
          {
LABEL_43:
            v50 = aBlock[0];
            *(aBlock[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
            v51 = (v50[6] + 16 * v29);
            *v51 = v17;
            v51[1] = v18;
            *(v50[7] + 8 * v29) = v19;
            v52 = v50[2];
            v41 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (v41)
            {
              goto LABEL_67;
            }

            v94 = v50;
            v50[2] = v53;
LABEL_45:
            v2 = v86;
            v12 = v95;
            goto LABEL_5;
          }
        }

        v94 = aBlock[0];
        *(*(aBlock[0] + 56) + 8 * v29) = v19;
        goto LABEL_45;
      }

      v54 = v95;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v54;
      v56 = sub_100167108(v17, v18);
      v58 = *(v54 + 16);
      v59 = (v57 & 1) == 0;
      v41 = __OFADD__(v58, v59);
      v60 = v58 + v59;
      if (v41)
      {
        goto LABEL_68;
      }

      if (*(v54 + 24) >= v60)
      {
        if ((v55 & 1) == 0)
        {
          v95 = v56;
          v67 = v57;
          sub_100167898();
          LOBYTE(v57) = v67;
          v56 = v95;
        }
      }

      else
      {
        LODWORD(v95) = v57;
        sub_100167238(v60, v55);
        v56 = sub_100167108(v17, v18);
        v61 = v57 & 1;
        LOBYTE(v57) = v95;
        if ((v95 & 1) != v61)
        {
          goto LABEL_70;
        }
      }

      v2 = v86;
      if (v57)
      {
        v62 = v56;

        v12 = aBlock[0];
        *(*(aBlock[0] + 56) + 8 * v62) = v19;
      }

      else
      {
        v63 = aBlock[0];
        *(aBlock[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
        v64 = (v63[6] + 16 * v56);
        *v64 = v17;
        v64[1] = v18;
        *(v63[7] + 8 * v56) = v19;
        v65 = v63[2];
        v41 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v41)
        {
          goto LABEL_69;
        }

        v12 = v63;
        v63[2] = v66;
      }

      goto LABEL_4;
    }

    sub_100165E4C(v17, v18, v19, 1);

    v13 = v10;
    v12 = v95;
  }

  while (v8);
  while (1)
  {
LABEL_7:
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v10 >= v11)
    {
      break;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v13;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  v68 = v93;
  swift_beginAccess();
  *&v2[v68] = v12;

  v69 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_moreContentDict;
  swift_beginAccess();
  *&v2[v69] = v94;

  if (*(*&v2[v69] + 16) || *(*&v2[v68] + 16))
  {
    if (!*(v97 + 1))
    {

      v72 = sub_100165870(v71);
      v74 = v73;
      v76 = v75;

      if (v74)
      {
        sub_100165E4C(v72, v74, v76, 1);
      }
    }
  }

  else
  {
    sub_100011DC8(0);
    sub_10000376C(0, &qword_100250DC0);
    v77 = static OS_dispatch_queue.main.getter();
    v78 = swift_allocObject();
    *(v78 + 16) = v2;
    aBlock[4] = sub_100167C4C;
    aBlock[5] = v78;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000A3F0;
    aBlock[3] = &unk_100212E78;
    v79 = _Block_copy(aBlock);
    v80 = v2;

    v81 = v87;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100004530(&qword_100251288, &type metadata accessor for DispatchWorkItemFlags);
    sub_10015E0CC(&qword_100251290);
    sub_100005EF8(&qword_100251298, &qword_100251290);
    v82 = v90;
    v83 = v92;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v79);

    (*(v91 + 8))(v82, v83);
    return (*(v88 + 8))(v81, v89);
  }

  return result;
}

void sub_100011DC8(char a1)
{
  v3 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_displayTimer;
  [*(v1 + OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_displayTimer) invalidate];
  v4 = *(v1 + v3);
  *(v1 + v3) = 0;

  if ((a1 & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_isObserving;
    if (*(v1 + OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_isObserving) == 1)
    {
      v6 = objc_opt_self();
      v7 = [v6 defaultCenter];
      [v7 removeObserver:v1 name:UIApplicationDidEnterBackgroundNotification object:0];

      v8 = [v6 defaultCenter];
      [v8 removeObserver:v1 name:UIApplicationDidBecomeActiveNotification object:0];

      *(v1 + v5) = 0;
    }
  }
}

void sub_10001208C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _calendarsButtonConfiguration];

  if (v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000B2D14;
    v4[3] = &unk_10020EC68;
    v5 = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v4);
  }
}

void sub_100012708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013558(uint64_t a1)
{
  v9 = [*(a1 + 32) _findSomeCalendarModel];
  v2 = +[UIScreen mainScreen];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = off_10020D560;
  if (v4 != 1)
  {
    v5 = off_10020D568;
  }

  v6 = [objc_alloc(*v5) initWithModel:v9];
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = v6;
}

uint64_t sub_10001375C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = String._bridgeToObjectiveC()();

    [v1 updateLabelNoErrorWithText:v2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100013848(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = [*(a1 + 32) addEventBarButtonItem];
  [v3 setEnabled:v2];

  if (CalSolariumEnabled())
  {
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 40) + 8) + 24);
    v6 = [v4 largeAddEventBarButtonItem];
    [v6 setEnabled:v5];
  }
}

void sub_100013C24(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[UserStateLog] State -> UserNotificationCenter requestAuthorizationWithOptions error: [%@]", &v8, 0xCu);
    }
  }

  v7 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v8 = 67109120;
    LODWORD(v9) = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[UserStateLog] State -> UserNotificationCenter requestAuthorizationWithOptions callback. Access granted: [%d]", &v8, 8u);
  }

  *(*(a1 + 32) + 41) = a2;
}

uint64_t sub_100013F28()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_100168C70;
  }

  else
  {
    (*(v2 + 280))();
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_100168AB0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100014074()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000140AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000140EC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014128()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014160()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014198()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000141EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001422C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014264()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001429C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000142F0()
{
  v1 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingModule();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000143D4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000149EC(id a1)
{
  v1 = +[UIColor separatorColor];
  v2 = qword_1002516A8;
  qword_1002516A8 = v1;

  v3 = +[UIColor quaternarySystemFillColor];
  v4 = qword_1002516B0;
  qword_1002516B0 = v3;

  v5 = 0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  do
  {
    *&qword_1002516B8[v5] = v9;
    *&qword_1002516F0[v5] = v8;
    *&qword_100251728[v5] = v7;
    *&qword_100251760[v5] = v6;
    v10 = *&qword_1001F7F60[v5];
    EKUISeparatorLineThickness();
    v9 = v9 + v10 + v11;
    v12 = *&qword_1001F7F98[v5];
    EKUISeparatorLineThickness();
    v8 = v8 + v12 + v13;
    v7 = v7 + *&qword_1001F7FD0[v5] + 1.0;
    v6 = v6 + *&qword_1001F8008[v5++] + 1.0;
  }

  while (v5 != 7);
}

void sub_100014E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100014E40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] setBackgroundColor:{objc_msgSend(qword_1002516A8, "CGColor")}];
    [v3[2] setBackgroundColor:{objc_msgSend(qword_1002516A8, "CGColor")}];
    [v3 _rebuildOverlayLabels];
    [v3 _rebuildDayNumberLabels];
    v2 = [v3[56] layer];
    [v2 setNeedsDisplay];

    WeakRetained = v3;
  }
}

void sub_100016090(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v18 = v5;
  if (*(a1 + 64) > a3 || *(a1 + 72) <= a3)
  {
    [v5 setHidden:1];
  }

  else
  {
    [v5 setHidden:0];
    v6 = a3 - *(a1 + 64);
    v7 = *(a1 + 32);
    v8 = [*(*(a1 + 40) + 392) date];
    v9 = [v7 dateByAddingUnit:16 value:v6 toDate:v8 options:1024];

    v10 = [CUIKDateStrings overlayShortStringForDate:v9 inCalendar:*(a1 + 32)];
    [v18 setText:v10];

    v11 = [*(a1 + 32) components:1073741848 fromDate:v9];
    if ([v11 day] == 1)
    {
      if ([v11 month] == 1)
      {
        v12 = [v11 isLeapMonth];
        v13 = *(a1 + 48);
        v14 = [NSNumber numberWithUnsignedInteger:a3];
        [v13 addObject:v14];

        if ((v12 & 1) == 0)
        {
          *(*(a1 + 40) + 72) = 1;
        }
      }

      else
      {
        v15 = *(a1 + 48);
        v16 = [NSNumber numberWithUnsignedInteger:a3];
        [v15 addObject:v16];
      }
    }

    CUIKZeroIndexedWeekStart();
    if (CUIKDayOfWeekIsWeekend())
    {
      WeekendTextColor();
    }

    else
    {
      +[UIColor labelColor];
    }
    v17 = ;
    [v18 setTextColor:v17];

    [v18 setFont:*(a1 + 56)];
  }
}

void sub_100016750(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v20 = v5;
  if (*(a1 + 40) > a3 || *(a1 + 48) <= a3)
  {
    [v5 setHidden:1];
  }

  else
  {
    [v5 setHidden:0];
    v6 = ([*(*(a1 + 32) + 392) day] + a3 + ~*(a1 + 40)) % *(a1 + 56);
    v7 = CUIKLocalizedStringForInteger();
    [v20 setText:v7];

    v8 = qword_100251690;
    CUIKZeroIndexedWeekStart();
    if (CUIKDayOfWeekIsWeekend())
    {
      WeekendTextColor();
    }

    else
    {
      +[UIColor labelColor];
    }
    v9 = ;
    if (v6 + 1 == *(*(a1 + 32) + 464))
    {
      v10 = +[UIColor whiteColor];
      [v20 setTextColor:v10];

      [v20 setTextAlignment:1];
      v11 = qword_100251698;

      v8 = v11;
    }

    else
    {
      [v20 setTextColor:v9];
    }

    [v20 setFont:v8];
    if (!v6)
    {
      [*(*(a1 + 32) + 360) setTextColor:v9];
      v12 = [v20 font];
      [*(*(a1 + 32) + 360) setFont:v12];

      v13 = [*(a1 + 32) startDate];
      v14 = [v13 date];
      v15 = CUIKStringForDate();
      [*(*(a1 + 32) + 360) setText:v15];

      [*(*(a1 + 32) + 368) setTextColor:v9];
      v16 = [v20 font];
      [*(*(a1 + 32) + 368) setFont:v16];

      v17 = [*(a1 + 32) startDate];
      v18 = [v17 date];
      v19 = CUIKStringForMonth();
      [*(*(a1 + 32) + 368) setText:v19];

      *(*(a1 + 32) + 376) = a3;
    }
  }
}

void sub_100016A30(id a1, UIImageView *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  [(UIImageView *)v4 setHidden:1];
  [(UIImageView *)v4 setAlpha:1.0];
}

void sub_100016B6C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 368);
  v3 = *(a1 + 32);
  if (*(v3 + 464) != 1)
  {
    v4 = *(v3 + 360);

    v5 = [*(*(a1 + 32) + 32) objectAtIndexedSubscript:*(*(a1 + 32) + 376)];
    v6 = v5;
    v7 = 1.0;
    if (*(a1 + 40))
    {
      v7 = 0.0;
    }

    [v5 setAlpha:v7];

    v2 = v4;
  }

  if (*(a1 + 40))
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [v2 setAlpha:v8];
  if (*(a1 + 40))
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  [*(*(a1 + 32) + 56) setAlpha:v9];
  v10 = [*(*(a1 + 32) + 48) objectAtIndex:*(*(a1 + 32) + 376)];
  v11 = v10;
  if (*(a1 + 40))
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  [v10 setAlpha:v12];
  v13 = *(a1 + 32);
  if (*(v13 + 40) && (*(a1 + 40) & 1) == 0)
  {
    v14 = [*(v13 + 392) dayOfWeek];
    v15 = v14 - CUIKZeroIndexedWeekStart() + 6;
    v16 = CUIKGetOverlayCalendar();
    v17 = *(a1 + 32);
    v18 = *(v17 + 376);
    v19 = [*(v17 + 392) date];
    v20 = [v16 dateByAddingUnit:16 value:v18 + 7 * (v15 / 7) - v15 toDate:v19 options:1024];

    v21 = CUIKGetOverlayCalendar();
    v22 = [CUIKDateStrings overlayShortStringForDate:v20 inCalendar:v21];

    v23 = [*(*(a1 + 32) + 40) objectAtIndexedSubscript:*(*(a1 + 32) + 376)];
    v24 = [v23 text];
    v25 = [v22 isEqualToString:v24];

    if ((v25 & 1) == 0)
    {
      [v23 setAlpha:0.0];
      [v23 setText:v22];
      [v23 setAlpha:1.0];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v26 = [*(*(a1 + 32) + 64) allValues];
      v27 = [v26 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v33;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v33 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v32 + 1) + 8 * i);
            [v31 setAlpha:0.0];
            [v31 setAlpha:1.0];
          }

          v28 = [v26 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v28);
      }
    }
  }
}

void sub_100017998(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 480));
  [WeakRetained largeMonthWeekView:*(a1 + 40) didDoubleTapOnDay:*(a1 + 48)];
}

void sub_1000181A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000181DC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 sizeToFit];
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  v7 = (a1[4] + 120 + 32 * a3);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  if (IsLeftToRight)
  {
    CGRectGetMaxX(*&v8);
    [v5 bounds];
    CGRectGetWidth(v92);
  }

  else
  {
    CGRectGetMinX(*&v8);
  }

  CalRoundToScreenScale();
  *(*(a1[5] + 8) + 32) = v12;
  [v5 frame];
  CalRoundPointToScreenScale();
  [v5 setFrame:?];
  v13 = a1[4];
  if (*(v13 + 376) == a3)
  {
    [*(v13 + 360) sizeToFit];
    v14 = 368;
    [*(a1[4] + 368) sizeToFit];
    if (*(a1[4] + 464) == 1)
    {
      v90 = NSFontAttributeName;
      v15 = [v5 font];
      v91 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      [@" " sizeWithAttributes:v16];
      v18 = v17;

      if (CalTimeDirectionIsLeftToRight())
      {
        [*(a1[4] + 368) bounds];
        v19 = v18 + CGRectGetWidth(v93);
        [v5 bounds];
        *(*(a1[5] + 8) + 32) = *(*(a1[5] + 8) + 32) - (v19 + CGRectGetWidth(v94));
      }

      [*(a1[4] + 368) frame];
      CalRoundPointToScreenScale();
      [*(a1[4] + 368) setFrame:?];
    }

    else
    {
      if (CalTimeDirectionIsLeftToRight())
      {
        [v5 bounds];
        Width = CGRectGetWidth(v95);
        [*(a1[4] + 360) bounds];
        *(*(a1[5] + 8) + 32) = Width - CGRectGetWidth(v96) + *(*(a1[5] + 8) + 32);
      }

      [*(a1[4] + 360) frame];
      CalRoundPointToScreenScale();
      [*(a1[4] + 360) setFrame:?];
      v14 = 360;
    }

    v21 = *(a1[4] + v14);
    v22 = CalTimeDirectionIsLeftToRight();
    [v21 frame];
    if (v22)
    {
      MaxX = v23 + -14.0;
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v23);
    }

    [v21 frame];
    [*(a1[4] + 56) setFrame:{MaxX, v28 + -7.0, 14.0, 14.0}];
    v29 = [*(a1[4] + 56) layer];
    [v29 setCornerRadius:7.0];

    v13 = a1[4];
  }

  v30 = *(v13 + 40);
  if (v30)
  {
    v31 = [v30 objectAtIndexedSubscript:a3];
    if (*(a1[4] + 376) == a3)
    {
      v32 = CUIKGetOverlayCalendar();
      v33 = a3 - a1[6];
      v34 = [*(a1[4] + 392) date];
      v35 = [v32 dateByAddingUnit:16 value:v33 toDate:v34 options:1024];

      v36 = CUIKGetOverlayCalendar();
      v37 = [CUIKDateStrings overlayShortStringForDate:v35 inCalendar:v36];
      [v31 setText:v37];
    }

    else
    {
      v35 = 0;
    }

    [v31 sizeToFit];
    [v31 frame];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    if (a1[6] == a3 && *(a1[4] + 457) == 1)
    {
      v46 = CalTimeDirectionIsLeftToRight();
      [*(a1[4] + 384) frame];
      if (v46)
      {
        v51 = CGRectGetMaxX(*&v47);
        v52 = 2.0;
LABEL_26:
        v59 = v51 + v52;
LABEL_30:
        [v5 frame];
        v64 = v63;
        [v5 _firstLineBaselineOffsetFromBoundsTop];
        v66 = v65 + v64;
        [v31 _firstLineBaselineOffsetFromBoundsTop];
        [v31 setFrame:{v59, v66 - v67 + -1.0, v43, v45}];
        v68 = a1[4];
        if (v68[47] == a3)
        {
          if (v68[58] == 1)
          {
            v69 = &OBJC_IVAR___LargeMonthWeekView__firstOfMonthNoDayLabel;
          }

          else
          {
            v69 = &OBJC_IVAR___LargeMonthWeekView__firstOfMonthLabel;
          }

          v70 = *(v68 + *v69);
          [v70 alpha];
          if (v71 == 1.0)
          {
            [v70 frame];
            MinX = CGRectGetMinX(v98);
            [v31 frame];
            if (MinX < CGRectGetMaxX(v99))
            {
              v73 = CUIKGetOverlayCalendar();
              v74 = [CUIKDateStrings overlayShortStringForDate:v35 inCalendar:v73];
              [v31 setText:v74];

              [v31 sizeToFit];
              [v70 alpha];
              if (v75 == 1.0)
              {
                [v70 frame];
                v76 = CGRectGetMinX(v100);
                [v31 frame];
                if (v76 < CGRectGetMaxX(v101))
                {
                  [v31 setText:&stru_1002133B8];
                  [v31 sizeToFit];
                }
              }
            }
          }

          v68 = a1[4];
        }

        v77 = v68[8];
        v78 = [NSNumber numberWithUnsignedInteger:a3];
        v79 = [v77 objectForKey:v78];

        if (v79)
        {
          [v31 frame];
          CGRectGetMaxY(v102);
          CalRoundRectToScreenScale();
          [v79 setFrame:?];
        }

        v13 = a1[4];
        goto LABEL_43;
      }

      v60 = CGRectGetMinX(*&v47);
      v61 = -2.0;
    }

    else
    {
      v53 = CalTimeDirectionIsLeftToRight();
      v54 = (a1[4] + 120 + 32 * a3);
      v55 = *v54;
      v56 = v54[1];
      v57 = v54[2];
      v58 = v54[3];
      if (v53)
      {
        v51 = CGRectGetMinX(*&v55);
        v52 = 9.5;
        goto LABEL_26;
      }

      v60 = CGRectGetMaxX(*&v55);
      v61 = -9.5;
    }

    v62 = v60 + v61;
    v97.origin.x = v39;
    v97.origin.y = v41;
    v97.size.width = v43;
    v97.size.height = v45;
    v59 = v62 - CGRectGetWidth(v97);
    goto LABEL_30;
  }

LABEL_43:
  v80 = *(v13 + 48);
  if (v80)
  {
    v81 = [v80 objectAtIndexedSubscript:a3];
    v82 = CalTimeDirectionIsLeftToRight();
    [v5 frame];
    if (v82)
    {
      v87 = v83 + -14.0;
    }

    else
    {
      v87 = CGRectGetMaxX(*&v83);
    }

    [v5 frame];
    [v81 setFrame:{v87, v88 + -7.0, 14.0, 14.0}];
    v89 = [v81 layer];
    [v89 setCornerRadius:7.0];
  }
}

void sub_1000191A4(id a1)
{
  qword_100251798 = [UIColor colorWithWhite:0.0 alpha:0.05];

  _objc_release_x1();
}

id sub_10001DC28(uint64_t a1)
{
  v1 = [[EKUIReadonlyEventViewController alloc] initWithEvent:*(a1 + 32)];

  return v1;
}

id sub_10001DC6C(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  v4 = [v2 selectedOccurrences];
  v5 = [EKUIContextMenuActions menuForEvents:"menuForEvents:presentationController:isEditMenu:overrideActionBlock:completionBlock:" presentationController:v4 isEditMenu:? overrideActionBlock:? completionBlock:?];

  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count] + 1);
  [v6 addObjectsFromArray:v3];

  [v6 addObject:v5];
  v7 = [UIMenu menuWithChildren:v6];

  return v7;
}

id *sub_10001DDB0(id *result, uint64_t a2)
{
  if (a2 == 8)
  {
    return [result[4] attemptDisplayReviewPrompt];
  }

  return result;
}

void sub_10001E038(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001E0CC;
  v2[3] = &unk_10020EC68;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  [UIView performWithoutAnimation:v2];
}

id sub_10001E2FC(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    v3 = *(a1 + 48);

    return [v3 setEditing:0 animated:1];
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
    v4 = [*(a1 + 32) tableView];
    [v4 beginUpdates];

    v5 = *(a1 + 32);
    v6 = [v5 tableView];
    v7 = [v5 tableView:v6 numberOfRowsInSection:{objc_msgSend(*(*(a1 + 32) + 88), "section")}];

    v8 = [*(a1 + 32) tableView];
    if (v7)
    {
      v9 = [NSArray arrayWithObject:*(a1 + 40)];
      [v8 deleteRowsAtIndexPaths:v9 withRowAnimation:2];
    }

    else
    {
      v9 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [*(*(a1 + 32) + 88) section]);
      [v8 deleteSections:v9 withRowAnimation:2];
    }

    v10 = [*(a1 + 32) tableView];
    [v10 endUpdates];

    v11 = *(a1 + 32);

    return [v11 performSelector:"_clearSwipedRow" withObject:0 afterDelay:1.0];
  }
}

void sub_10001E5F0(void *a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v11 = 0;
    v5 = &v11;
    v6 = &v11;
    v7 = 2;
  }

  else if (a2 == 1)
  {
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v12 = 0;
    v5 = &v12;
    v6 = &v12;
    v7 = 1;
  }

  else
  {
    if (a2)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v13 = 0;
    v5 = &v13;
    v6 = &v13;
    v7 = 0;
  }

  [v4 removeEvent:v3 withSpan:v7 error:v6];
  v8 = *v5;
LABEL_9:
  v9 = a1[4];
  v10 = *(v9 + 96);
  *(v9 + 96) = 0;

  (*(a1[6] + 16))();
}

void sub_10001F9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001FA1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBadge];
}

void sub_1000212B4(uint64_t a1)
{
  [*(*(a1 + 32) + 112) setHidden:0];
  [*(*(a1 + 32) + 160) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 160);
  *(v2 + 160) = 0;
}

void *sub_100023388(void *result)
{
  v1 = result[4];
  if ((*(v1 + 152) & 1) == 0)
  {
    return [*(v1 + 144) removeFromSuperview];
  }

  return result;
}

void sub_1000235A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000235B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000235D0(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = a2;
  [v13 frame];
  if (CGRectContainsPoint(v15, *(a1 + 48)) && [v13 conformsToProtocol:&OBJC_PROTOCOL___MonthInfiniteScrollSubview])
  {
    v5 = [*(a1 + 32) scrollView];
    [v5 convertPoint:v13 toView:{*(a1 + 48), *(a1 + 56)}];
    v7 = v6;
    v9 = v8;

    v10 = [v13 dateAtPoint:{v7, v9}];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a3 = 1;
  }
}

void sub_10002392C(uint64_t a1)
{
  [*(*(a1 + 32) + 224) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 224);
  *(v2 + 224) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 216);
  *(v4 + 216) = 0;
}

void sub_1000240EC(id a1, InfiniteScrollViewSubview *a2, BOOL *a3)
{
  v3 = a2;
  if ([(InfiniteScrollViewSubview *)v3 conformsToProtocol:&OBJC_PROTOCOL___MonthInfiniteScrollSubview])
  {
    [(InfiniteScrollViewSubview *)v3 setHighlightedDayRange:0x7FFFFFFFFFFFFFFFLL, 0];
  }
}

uint64_t sub_1000241B0(uint64_t a1, void *a2)
{
  v13 = a2;
  if ([v13 conformsToProtocol:&OBJC_PROTOCOL___MonthInfiniteScrollSubview])
  {
    v3 = v13;
    v4 = [v3 calendarDate];
    if ([v4 compare:*(*(a1 + 32) + 184)] == -1)
    {
      v5 = [v3 endCalendarDate];
      v6 = [v5 compare:*(*(a1 + 32) + 176)];

      if (v6 == 1)
      {
        v7 = *(*(a1 + 32) + 176);
        v8 = [v3 calendarDate];
        v9 = [v7 differenceInDays:v8];

        v10 = [*(*(a1 + 32) + 184) differenceInDays:*(*(a1 + 32) + 176)] + (v9 & (v9 >> 63)) + 1;
        v11 = v9 & ~(v9 >> 63);
LABEL_7:
        [v3 setHighlightedDayRange:{v11, v10}];

        goto LABEL_8;
      }
    }

    else
    {
    }

    v10 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

LABEL_8:

  return _objc_release_x1();
}

id sub_100024528(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 224);
  v3 = *&CGAffineTransformIdentity.c;
  v11[0] = *&CGAffineTransformIdentity.a;
  v11[1] = v3;
  v11[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v11];
  [*(*(a1 + 32) + 224) frame];
  v4 = [*(a1 + 32) view];
  v5 = [*(a1 + 32) scrollView];
  [v4 convertPoint:v5 fromView:{*(a1 + 40), *(a1 + 48)}];
  v7 = v6;
  v9 = v8;

  [*(*(a1 + 32) + 224) setFrame:{v7, v9, *(a1 + 56), *(a1 + 64)}];
  return [*(*(a1 + 32) + 224) setAlpha:0.0];
}

uint64_t sub_100024604(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100024D9C(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100024E98;
  v4[3] = &unk_10020EB00;
  v5 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100024EA4;
  v2[3] = &unk_10020EB98;
  v3 = *(a1 + 32);
  [UIView animateWithDuration:0 delay:v4 options:v2 animations:1.0 completion:0.5];
}

void sub_1000256AC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 224);
  CGAffineTransformMakeScale(&v20, 1.3, 1.3);
  v19 = v20;
  [v2 setTransform:&v19];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v2 occurrence];
  v12 = [v11 startDate];
  v13 = [v2 occurrence];
  v14 = [v13 endDate];
  v15 = [*(*(a1 + 32) + 168) calendar];
  v16 = [v12 isSameDayAsDate:v14 inCalendar:v15];

  v17 = v8 * 0.769230769;
  if (v16)
  {
    v17 = v8 + 23.08;
    v18 = v4 + -11.54;
  }

  else
  {
    v18 = v4 + v8 * 0.769230769 * 0.15;
  }

  [v2 setFrame:{v18, v6 + -30.0, v17, v10}];
}

id sub_10002582C(uint64_t a1)
{
  [*(a1 + 32) draggedOccurrenceWasCancelled:*(*(a1 + 32) + 216) atPoint:{*(a1 + 40), *(a1 + 48)}];
  [*(a1 + 32) removeDraggingOccurrenceAnimated:1];
  v2 = *(a1 + 32);

  return [v2 removeAllWeekHighlights];
}

void sub_100025ACC(uint64_t a1)
{
  v27 = *(*(a1 + 32) + 224);
  v2 = [*(a1 + 32) scrollView];
  [v27 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) view];
  [v2 convertRect:v11 fromView:{v4, v6, v8, v10}];

  v12 = [v27 occurrence];
  v13 = [v12 startDate];
  v14 = [v27 occurrence];
  v15 = [v14 endDate];
  v16 = [*(*(a1 + 32) + 168) calendar];
  [v13 isSameDayAsDate:v15 inCalendar:v16];

  v17 = [*(a1 + 32) view];
  CalRoundRectToScreenScale();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [*(a1 + 32) scrollView];
  [v17 convertRect:v26 fromView:{v19, v21, v23, v25}];
  [v27 setFrame:?];
}

id sub_100026490(uint64_t a1)
{
  [*(a1 + 32) removeDraggingOccurrenceAnimated:1];
  [*(a1 + 32) removeAllWeekHighlights];
  v2 = *(a1 + 32);

  return [v2 selectOccurrence:0 inWeek:0];
}

void sub_1000264E0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    [v4[27] rollback];
    [*(a1 + 32) draggedOccurrenceWasCancelled:*(*(a1 + 32) + 216) atPoint:{*(a1 + 48), *(a1 + 56)}];
    [*(a1 + 32) removeDraggingOccurrenceAnimated:1];
    [*(a1 + 32) removeAllWeekHighlights];
    v5 = *(a1 + 32);

    [v5 selectOccurrence:0 inWeek:0];
  }

  else
  {
    v7 = [*(a1 + 40) dateAtPoint:{*(a1 + 64), *(a1 + 72)}];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000265FC;
    v8[3] = &unk_10020EE00;
    v8[4] = *(a1 + 32);
    v8[5] = a3;
    [v4 _animateDraggingOccurrenceToDate:v7 atLastPosition:1 dropPoint:v8 completion:{*(a1 + 48), *(a1 + 56)}];
  }
}

id sub_1000265FC(uint64_t a1)
{
  [*(a1 + 32) _saveDraggedEventWithSpan:*(a1 + 40)];
  [*(a1 + 32) removeDraggingOccurrenceAnimated:0];
  [*(a1 + 32) removeAllWeekHighlights];
  v2 = *(a1 + 32);

  return [v2 selectOccurrence:0 inWeek:0];
}

id sub_100026678(uint64_t a1)
{
  [*(*(a1 + 32) + 224) setClipsToBounds:0];
  v2 = *(*(a1 + 32) + 224);

  return [v2 setNeedsDisplay];
}

id sub_1000266C8(uint64_t a1)
{
  [*(a1 + 32) removeDraggingOccurrenceAnimated:1];
  [*(a1 + 32) removeAllWeekHighlights];
  v2 = *(a1 + 32);

  return [v2 selectOccurrence:0 inWeek:0];
}

void sub_100026C74(uint64_t a1)
{
  [*(a1 + 32) removeAllWeekHighlights];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100026D74;
  v4[3] = &unk_10020EB00;
  v5 = *(a1 + 40);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100026D80;
  v2[3] = &unk_10020EB98;
  v3 = *(a1 + 40);
  [UIView animateWithDuration:v4 animations:v2 completion:0.2];
}

uint64_t sub_100026F2C()
{

  return NSRequestConcreteImplementation();
}

uint64_t sub_100026F48()
{

  return objc_opt_class();
}

void sub_100026FB4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002517A8;
  qword_1002517A8 = v1;

  v3 = qword_1002517A8;

  [v3 addAnchoredValue:2 forWindowSizeWidth:15.0];
}

void sub_1000270C8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002517B8;
  qword_1002517B8 = v1;

  v3 = qword_1002517B8;

  [v3 addAnchoredValue:2 forWindowSizeWidth:140.0];
}

void sub_100027174(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002517C8;
  qword_1002517C8 = v1;

  v3 = qword_1002517C8;

  [v3 addAnchoredValue:2 forWindowSizeWidth:164.0];
}

void sub_10002729C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002517D8;
  qword_1002517D8 = v1;

  v3 = qword_1002517D8;

  [v3 addAnchoredValue:2 forWindowSizeWidth:28.0];
}

void sub_1000273A4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002517E8;
  qword_1002517E8 = v1;

  v3 = qword_1002517E8;

  [v3 addAnchoredValue:2 forWindowSizeWidth:13.0];
}

void sub_100027458(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002517F8;
  qword_1002517F8 = v1;

  v3 = qword_1002517F8;

  [v3 addAnchoredValue:2 forWindowSizeWidth:18.0];
}

void sub_100027514(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251808;
  qword_100251808 = v1;

  v3 = qword_100251808;

  [v3 addAnchoredValue:2 forWindowSizeWidth:37.0];
}

void sub_1000275C8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251818;
  qword_100251818 = v1;

  v3 = qword_100251818;

  [v3 addAnchoredValue:2 forWindowSizeWidth:20.0];
}

void sub_100027678(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251828;
  qword_100251828 = v1;

  v3 = qword_100251828;

  [v3 addAnchoredValue:2 forWindowSizeWidth:21.0];
}

void sub_100028B40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [a3 occurrenceBlocks];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v13 != v10)
      {
        objc_enumerationMutation(v7);
      }

      (*(*(a1 + 32) + 16))();
      if (v16)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (v16 == 1)
  {
    *a5 = v16;
  }
}

void sub_100028DB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 occurrenceView];
  [v3 setUsesSmallText:v2];
}

void sub_100028FFC(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v11 = a2;
  [v5 _dayWidth];
  v7 = v6 * v4;
  [*(a1 + 32) _dayWidth];
  v8 = *(a1 + 40);
  v10 = v7 + v9 > v8 && v7 <= v8;
  [v11 setOverlayShowsMonth:v10 animated:*(a1 + 48)];
}

void sub_1000296AC(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 occurrenceView];
  v4 = [v9 rangeStart];
  if (v4 <= [v9 rangeEnd])
  {
    while (v4 < [*(*(a1 + 32) + 32) count])
    {
      v5 = [*(*(a1 + 32) + 32) objectAtIndexedSubscript:v4];
      v6 = [v5 date];

      LODWORD(v5) = [*(a1 + 32) _shouldAnnotateAppEntitiesForDay:v6];
      if (v5)
      {
        v8 = 1;
        goto LABEL_7;
      }

      if (v4++ >= [v9 rangeEnd])
      {
        break;
      }
    }
  }

  v8 = 0;
LABEL_7:
  [v3 setShouldAnnotateAppEntities:v8];
}

void sub_100029B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100029B38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100029B50(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v12 = v5;
  v7 = [v5 occurrenceView];
  v8 = [v7 occurrence];
  LODWORD(v6) = [v6 isEqual:v8];

  if (v6)
  {
    v9 = [v12 occurrenceView];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a3 = 1;
  }
}

void sub_100029D44(uint64_t a1, void *a2)
{
  v3 = [a2 occurrenceView];
  [v3 setUserInteractionEnabled:*(*(a1 + 32) + 235)];
}

void sub_100029E40(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 occurrenceView];
  v4 = [v3 occurrence];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [v8 occurrenceView];
    [v7 setDimmed:v6];
  }
}

void sub_100029F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100029FA8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

void sub_10002A128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002A148(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 occurrenceView];
  v6 = [v5 occurrence];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_10002A30C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 occurrenceView];
  [v2 addObject:v3];
}

void sub_10002A474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002A48C(uint64_t a1, void *a2, _BYTE *a3)
{
  v31 = a2;
  if (![*(a1 + 32) isBirthday] || (objc_msgSend(v31, "occurrenceView"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "occurrence"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isBirthday"), v6, v5, !v7))
  {
    v18 = [v31 occurrenceView];
    v19 = [v18 occurrence];
    v20 = [v19 isEqual:*(a1 + 32)];

    if (!v20)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v8 = [v31 occurrenceView];
  v9 = [v8 occurrence];
  v10 = [v9 startCalendarDate];
  v11 = [v10 dayComponents];
  v12 = [*(a1 + 32) startCalendarDate];
  v13 = [v12 dayComponents];
  if (![v11 isEqual:v13])
  {
LABEL_10:

    goto LABEL_11;
  }

  v30 = [v31 occurrenceView];
  v29 = [v30 occurrence];
  v14 = [v29 birthdayContactIdentifier];
  v15 = [*(a1 + 32) birthdayContactIdentifier];
  if (![v14 isEqual:v15])
  {

    goto LABEL_10;
  }

  v25 = [v31 occurrenceView];
  v24 = [v25 occurrence];
  [v24 uniqueIdentifier];
  v16 = v28 = v9;
  [*(a1 + 32) uniqueIdentifier];
  v17 = v27 = v8;
  v26 = [v16 isEqual:v17];

  if (v26)
  {
LABEL_8:
    v21 = [v31 occurrenceView];
    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    *a3 = 1;
  }

LABEL_11:
}

void sub_10002A9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002A9C4(void *a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  if (a1[6] == a2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [a3 occurrenceBlocks];
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
          v13 = [v12 occurrenceView];
          v14 = [v13 occurrence];
          v15 = [v14 isEqual:a1[4]];

          if (v15)
          {
            v16 = [v12 occurrenceView];
            v17 = *(a1[5] + 8);
            v18 = *(v17 + 40);
            *(v17 + 40) = v16;

            *a5 = 1;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }
}

uint64_t sub_10002ADC0(uint64_t a1, void *a2)
{
  v3 = [a2 occurrenceView];
  if (v3)
  {
    v5 = v3;
    [*(*(a1 + 32) + 56) addObject:v3];
    [v5 setHidden:1];
    [v5 setOccurrence:0];
  }

  return _objc_release_x1();
}

void sub_10002AEB0(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 rangeStart]);
  v4 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = objc_opt_new();
    [*(*(a1 + 32) + 224) setObject:v4 forKeyedSubscript:v3];
  }

  v5 = [v8 occurrenceView];
  v6 = [v5 occurrence];
  v7 = [v6 calendarItemIdentifier];

  if (v5 && v7)
  {
    [v4 setObject:v5 forKeyedSubscript:v7];
    [v8 setOccurrenceView:0];
  }
}

void sub_10002D1F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 occurrenceBlocks];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) occurrenceView];
        [v12 frame];
        if (CGRectIntersectsRect(v19, *(a1 + 40)))
        {
          if ([v12 isHidden])
          {
            [v12 frame];
            if (!CGRectIsEmpty(v20))
            {
              [v12 setHidden:0];
            }
          }

          v9 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);

    if (v9)
    {
      v13 = *(*(a1 + 32) + 8);
      if (*(v13 + 24) < a4)
      {
        *(v13 + 24) = a4;
      }
    }
  }

  else
  {
  }
}

void sub_10002E474(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251838;
  qword_100251838 = v1;

  [qword_100251838 setRoundingType:4];
  [qword_100251838 addAnchoredValue:64 forWindowSizeHeight:2.0];
  [qword_100251838 addAnchoredValue:256 forWindowSizeHeight:2.0];
  [qword_100251838 addAnchoredValue:1024 forWindowSizeHeight:2.0];
  [qword_100251838 addAnchoredValue:4096 forWindowSizeHeight:3.0];
  [qword_100251838 addAnchoredValue:2048 forWindowSizeHeight:4.0];
  v3 = qword_100251838;

  [v3 addAnchoredValue:0x2000 forWindowSizeHeight:6.0];
}

void sub_10002E668(id a1, EKAllDayOccurrenceBlock *a2, BOOL *a3)
{
  v3 = [(EKAllDayOccurrenceBlock *)a2 occurrenceView];
  [v3 stopRendering];
}

void sub_10002EA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002EA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 32) useMultiDayHeaderStyle];
  if (!result || *(a1 + 48) == a2)
  {
    v8 = *(*(a1 + 40) + 8);
    if (*(v8 + 24) <= a4)
    {
      *(v8 + 24) = a4 + 1;
    }
  }

  return result;
}

void sub_10002F56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10002F5AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = [v6 occurrenceBlocks];
  v8 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
  v9 = 0.0;
  v10 = 0.0;
  if (v8)
  {
    v11 = v8;
    v12 = *v43;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [*(*(&v42 + 1) + 8 * i) occurrenceView];
        v15 = [v14 currentImageState];
        v16 = [v15 requiresLanguageAwarePadding];

        v17 = 0.0;
        if (v16)
        {
          v18 = [v14 currentImageState];
          [v18 totalLanguageAwareHeightPadding];
          v17 = v19;
        }

        if (v17 > v10)
        {
          v10 = v17;
        }
      }

      v11 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v11);
  }

  v20 = *(*(*(a1 + 40) + 8) + 40);
  v21 = [NSNumber numberWithInteger:a2];
  v22 = [v20 objectForKeyedSubscript:v21];

  if (v22)
  {
    [v22 doubleValue];
    v9 = v23;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = [v6 occurrenceBlocks];
  v25 = [v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v39;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v38 + 1) + 8 * j);
        v30 = [v29 occurrenceView];
        [*(a1 + 32) _frameForOccurrenceBlock:v29 index:a4 yPos:v9 padding:v10];
        [v30 setFrame:?];
        [v30 requestContentIfNeeded:*(a1 + 56) completion:0];
      }

      v26 = [v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v26);
  }

  [*(a1 + 32) occurrenceHeight];
  v32 = v9 + v10 + v31;
  v33 = [NSNumber numberWithDouble:v32 + 3.0];
  v34 = *(*(*(a1 + 40) + 8) + 40);
  v35 = [NSNumber numberWithInteger:a2];
  [v34 setObject:v33 forKeyedSubscript:v35];

  v36 = *(*(a1 + 48) + 8);
  if (v32 > *(v36 + 24))
  {
    *(v36 + 24) = v32;
  }
}

void sub_10002FA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002FA7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 occurrenceBlocks];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) occurrenceView];
        v12 = [v11 occurrence];
        v13 = [v12 isEqual:*(a1 + 32)];

        if (v13)
        {
          *(*(*(a1 + 40) + 8) + 24) = a4;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

void sub_1000315D4(int8x16_t *a1)
{
  if (a1[2].i64[0])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100031674;
    block[3] = &unk_10020EC68;
    v2 = a1[2];
    v1 = v2.i64[0];
    v4 = vextq_s8(v2, v2, 8uLL);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void *sub_100031680(void *result)
{
  v1 = result[4];
  if (v1)
  {
    return [*(result[5] + 24) continueSearchWithTerm:v1 animated:1 removeViewControllersIncapableOfSearchIfNeeded:0];
  }

  return result;
}

id sub_100031918(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) splitBehavior];
  v3 = 2;
  if (v2 == 2)
  {
    v3 = 3;
  }

  if (*(a1 + 40))
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  [*(*(a1 + 32) + 8) setPreferredDisplayMode:v4];
  v5 = *(a1 + 32);

  return [v5 updateSearchViewControllerToolbar];
}

void sub_100031AE8(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 searchEnding];
}

void sub_100031B2C(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setViewController:0 forColumn:0];
  [*(*(a1 + 32) + 8) setPreferredDisplayMode:1];
  [*(a1 + 32) teardownSearch];
  v2 = [*(a1 + 32) delegate];
  [v2 searchEnded];

  *(*(a1 + 32) + 56) = 0;
}

void sub_100032190(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained setShowsCancelButton:1 animated:1];

  v3 = [*(a1 + 32) delegate];
  [v3 searchBegan];
}

void sub_100032704(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 searchEnding];
}

void sub_100032748(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setViewController:0 forColumn:0];
  [*(*(a1 + 32) + 8) setPreferredDisplayMode:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  WeakRetained = objc_loadWeakRetained((v2 + 104));
  [v3 searchBarCancelButtonClicked:WeakRetained];

  [*(a1 + 32) teardownSearch];
  v5 = [*(a1 + 32) delegate];
  [v5 searchEnded];

  *(*(a1 + 32) + 56) = 0;
}

void sub_100032C14(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_detailViewControllerAppeared:" name:EKEventViewControllerDidAppearNotification object:0];

  v3 = [*(a1 + 32) application];
  [v3 startedTest:*(a1 + 40)];

  v4 = [*(a1 + 32) application];
  [v4 startedSubTest:*(a1 + 48) forTest:*(a1 + 40)];

  v5 = [*(a1 + 32) application];
  v6 = [v5 rootNavigationController];
  [v6 showEvent:*(a1 + 56) animated:1 showMode:1 context:0];

  v7 = [*(a1 + 32) application];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100032D94;
  v8[3] = &unk_10020F290;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = *(a1 + 64);
  [v7 installCACommitCompletionBlock:v8];
}

void sub_100032D94(uint64_t a1)
{
  v2 = [*(a1 + 32) application];
  [v2 finishedSubTest:*(a1 + 40) forTest:*(a1 + 48)];

  v3 = [*(a1 + 32) application];
  [v3 startedSubTest:*(a1 + 56) forTest:*(a1 + 48)];
}

void sub_100032FC8(uint64_t a1)
{
  v1 = [*(a1 + 32) model];
  v2 = [v1 eventStore];
  v3 = [EKEvent eventWithEventStore:v2];

  v4 = CUIKNowDate();
  [v3 setStartDate:v4];

  v5 = [v3 startDate];
  v6 = [v5 dateByAddingTimeInterval:3600.0];
  [v3 setEndDate:v6];

  [v3 setTitle:@"Perf test event"];
  v7 = qword_100251858;
  qword_100251858 = v3;
}

void sub_1000332C0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_detailViewControllerAppeared:" name:EKEventViewControllerDidAppearNotification object:0];

  if ([*(a1 + 32) shouldWaitForAttendeeLoading])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:*(a1 + 32) selector:"_attendeesDidFinishLoading:" name:EKEventDetailsDidFinishLoadingAttendeesNotification object:0];
  }

  v4 = [*(a1 + 32) application];
  [v4 startedTest:*(a1 + 40)];

  if ([*(a1 + 32) shouldWaitForAttendeeLoading])
  {
    v5 = [*(a1 + 32) application];
    v6 = [*(a1 + 32) eventDetailsDidShowSubtestName];
    [v5 startedSubTest:v6 forTest:*(a1 + 40)];
  }

  v8 = [*(a1 + 32) application];
  v7 = [v8 rootNavigationController];
  [v7 showEvent:*(a1 + 48) animated:1 showMode:1 context:0];
}

void sub_1000337C0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_detailViewControllerAppeared:" name:EKEventViewControllerDidAppearNotification object:0];

  v3 = [*(a1 + 32) application];
  [v3 startedTest:*(a1 + 40)];

  v4 = [*(a1 + 32) application];
  [v4 startedSubTest:*(a1 + 48) forTest:*(a1 + 40)];

  v5 = [*(a1 + 32) application];
  v6 = [v5 rootNavigationController];
  [v6 showEvent:*(a1 + 56) animated:1 showMode:1 context:0];

  v7 = [*(a1 + 32) application];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100033940;
  v8[3] = &unk_10020F290;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = *(a1 + 64);
  [v7 installCACommitCompletionBlock:v8];
}

void sub_100033940(uint64_t a1)
{
  v2 = [*(a1 + 32) application];
  [v2 finishedSubTest:*(a1 + 40) forTest:*(a1 + 48)];

  v3 = [*(a1 + 32) application];
  [v3 startedSubTest:*(a1 + 56) forTest:*(a1 + 48)];
}

void sub_100033DD4(uint64_t a1)
{
  v2 = [CarplayDataManager alloc];
  v5 = [*(*(a1 + 32) + 8) eventStore];
  v3 = [(CarplayDataManager *)v2 initWithEventStore:v5];
  v4 = qword_100251868;
  qword_100251868 = v3;
}

void sub_100034A28(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v4 = [v2 objectForKeyedSubscript:EKEventStoreChangedObjectIDsUserInfoKey];

  v3 = *(a1 + 40);
  if (v4)
  {
    [*(v3 + 64) addObjectsFromArray:v4];
  }

  else
  {
    *(v3 + 72) = 1;
  }

  [*(a1 + 40) _refreshTodayView];
}

id sub_100034B40(uint64_t a1)
{
  CUIKInvalidateToday();
  v2 = *(*(a1 + 32) + 24);
  v3 = CUIKNowDate();
  v4 = CUIKStringForDateAndDayOfWeekInCalendarTimezoneWithFormattingContext();
  [v2 updateHeaderText:v4];

  v5 = CUIKNowDate();
  v6 = CUIKStringForDateAndDayOfWeekInCalendarTimezoneWithFormattingContext();
  [*(*(a1 + 32) + 40) setSectionTitle:v6];

  v7 = *(a1 + 32);

  return [v7 _refreshTodayView];
}

id sub_1000364DC(uint64_t a1)
{
  v2 = [*(a1 + 32) application];
  [v2 startedTest:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _mainLoop];
}

void sub_100036848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100036874(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained backgroundImage];
    v3 = [UIColor colorWithPatternImage:v2];
    [v6 setBackgroundColor:v3];

    v4 = +[UIColor systemBackgroundColor];
    [v6[1] setBackgroundColor:v4];

    v5 = +[UIColor labelColor];
    [v6[1] setTextColor:v5];

    WeakRetained = v6;
  }
}

id sub_100036B18(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

id sub_100036B34(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 8) setAlpha:v1];
}

void sub_100036E08(id *a1)
{
  v2 = [objc_opt_class() testName];
  [a1[5] startedTest:v2];
  v3 = [a1[6] traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
  {
    [a1[6] setCurrentSidebarState:1];
  }

  else
  {
    [a1[7] showCalendarsAnimated:0 completion:0];
  }

  v5 = [a1[4] application];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100036F28;
  v7[3] = &unk_10020EC68;
  v8 = a1[5];
  v9 = v2;
  v6 = v2;
  [v5 installCACommitCompletionBlock:v7];
}

void sub_100038264(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"PhoneMonthListAnimator_ListToMonthAnimationCompleteNotification" object:0];
}

void sub_1000382C4(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"PhoneMonthListAnimator_MonthToListAnimationCompleteNotification" object:0];
}

void sub_100038848(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  [v2 setSplitStateOpen:1];

  v3 = [*(a1 + 32) monthViewController];
  v4 = [v3 view];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 32) listViewController];
  v6 = [v5 view];
  [v6 frame];
  v8 = v7;
  v10 = v9;

  [*(a1 + 32) listViewNormalLocation];
  v12 = v11;
  v14 = v13;
  v15 = [*(a1 + 32) listViewController];
  v16 = [v15 view];
  [v16 setFrame:{v12, v14, v8, v10}];

  v18 = [*(a1 + 32) listViewController];
  v17 = [v18 view];
  [v17 setAlpha:1.0];
}

uint64_t sub_100038984(uint64_t a1)
{
  v2 = dispatch_time(0, 200000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038A34;
  block[3] = &unk_10020EB00;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
  [*(a1 + 32) _haltAnimations];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100038A34(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  v1 = [v2 view];
  [v1 setAlpha:1.0];
}

void sub_100038A94(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  v3 = [v2 animatableDateLabel];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) paletteView];
  v5 = [v4 dayInitialsHeaderView];
  [v5 setAlpha:0.0];

  [*(a1 + 32) weekDayInitialsMonth];
  v7 = v6;
  [*(a1 + 32) weekDayInitialsMonth];
  v9 = v8;
  [*(a1 + 32) weekDayInitialsMonth];
  v11 = v10;
  v13 = [*(a1 + 32) paletteView];
  v12 = [v13 dayInitialsHeaderView];
  [v12 setFrame:{v7, 0.0, v9, v11}];
}

void sub_100038B98(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  v3 = [v2 dateLabel];
  [v3 setHidden:0];

  v4 = [*(a1 + 32) paletteView];
  v5 = [v4 animatableDateLabel];
  [v5 setAlpha:0.0];

  v6 = [*(a1 + 32) paletteView];
  v7 = [v6 dayInitialsHeaderView];
  [v7 setAlpha:1.0];

  v8 = [*(a1 + 32) paletteView];
  [v8 setSuppressLayout:0];

  v9 = [*(a1 + 32) paletteView];
  [v9 layoutIfNeeded];
}

void sub_100039148(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  [v2 setSplitStateOpen:1];

  v3 = [*(a1 + 32) monthViewController];
  v4 = [v3 view];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 32) listViewController];
  v6 = [v5 view];
  [v6 frame];
  v8 = v7;
  v10 = v9;

  [*(a1 + 32) listViewNormalLocation];
  v12 = v11;
  v14 = v13;
  v15 = [*(a1 + 32) listViewController];
  v16 = [v15 view];
  [v16 setFrame:{v12, v14, v8, v10}];

  v18 = [*(a1 + 32) listViewController];
  v17 = [v18 view];
  [v17 setAlpha:1.0];
}

void sub_100039284(uint64_t a1)
{
  v2 = dispatch_time(0, 200000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039318;
  block[3] = &unk_10020EB00;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_100039318(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  v1 = [v2 view];
  [v1 setAlpha:1.0];
}

void sub_100039378(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  v3 = [v2 animatableDateLabel];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) paletteView];
  v5 = [v4 dayInitialsHeaderView];
  [v5 setAlpha:0.0];

  [*(a1 + 32) weekDayInitialsMonth];
  v7 = v6;
  [*(a1 + 32) weekDayInitialsMonth];
  v9 = v8;
  [*(a1 + 32) weekDayInitialsMonth];
  v11 = v10;
  v13 = [*(a1 + 32) paletteView];
  v12 = [v13 dayInitialsHeaderView];
  [v12 setFrame:{v7, 0.0, v9, v11}];
}

uint64_t sub_10003947C(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  v3 = [v2 dateLabel];
  [v3 setHidden:0];

  v4 = [*(a1 + 32) paletteView];
  v5 = [v4 animatableDateLabel];
  [v5 setAlpha:0.0];

  v6 = [*(a1 + 32) paletteView];
  v7 = [v6 dayInitialsHeaderView];
  [v7 setAlpha:1.0];

  v8 = [*(a1 + 32) paletteView];
  [v8 setSuppressLayout:0];

  v9 = [*(a1 + 32) paletteView];
  [v9 layoutIfNeeded];

  [*(a1 + 32) _haltAnimations];
  result = *(a1 + 40);
  if (result)
  {
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

void sub_100039A40(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  [v2 setSplitStateOpen:0];

  v3 = [*(a1 + 32) monthViewController];
  v4 = [v3 view];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) listViewController];
  v6 = [v5 view];
  [v6 frame];
  v8 = v7;
  v10 = v9;

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) listViewController];
  v14 = [v13 view];
  [v14 setFrame:{v11, v12, v8, v10}];

  v16 = [*(a1 + 32) listViewController];
  v15 = [v16 view];
  [v15 setAlpha:0.0];
}

uint64_t sub_100039B70(uint64_t a1)
{
  [*(a1 + 32) _haltAnimations];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100039BC4(uint64_t a1)
{
  [*(a1 + 32) weekDayInitialsMonth];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) paletteView];
  v11 = [v10 dayInitialsHeaderView];
  [v11 setFrame:{v3, v5, v7, v9}];

  v12 = [*(a1 + 32) paletteView];
  v13 = [v12 dayInitialsHeaderView];
  [v13 setAlpha:1.0];

  v15 = [*(a1 + 32) paletteView];
  v14 = [v15 animatableDateLabel];
  [v14 setAlpha:1.0];
}

void sub_100039CBC(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  v3 = [v2 dateLabel];
  [v3 setHidden:0];

  v4 = [*(a1 + 32) paletteView];
  v5 = [v4 animatableDateLabel];
  [v5 setAlpha:0.0];

  v6 = [*(a1 + 32) paletteView];
  [v6 setSuppressLayout:0];

  v7 = [*(a1 + 32) paletteView];
  [v7 layoutIfNeeded];
}

void sub_10003A228(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  [v2 setSplitStateOpen:0];

  v3 = [*(a1 + 32) monthViewController];
  v4 = [v3 view];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) listViewController];
  v6 = [v5 view];
  [v6 frame];
  v8 = v7;
  v10 = v9;

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) listViewController];
  v14 = [v13 view];
  [v14 setFrame:{v11, v12, v8, v10}];

  v16 = [*(a1 + 32) listViewController];
  v15 = [v16 view];
  [v15 setAlpha:0.0];
}

void sub_10003A358(uint64_t a1)
{
  [*(a1 + 32) weekDayInitialsMonth];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) paletteView];
  v11 = [v10 dayInitialsHeaderView];
  [v11 setFrame:{v3, v5, v7, v9}];

  v12 = [*(a1 + 32) paletteView];
  v13 = [v12 dayInitialsHeaderView];
  [v13 setAlpha:1.0];

  v15 = [*(a1 + 32) paletteView];
  v14 = [v15 animatableDateLabel];
  [v14 setAlpha:1.0];
}

uint64_t sub_10003A450(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  v3 = [v2 dateLabel];
  [v3 setHidden:0];

  v4 = [*(a1 + 32) paletteView];
  v5 = [v4 animatableDateLabel];
  [v5 setAlpha:0.0];

  v6 = [*(a1 + 32) paletteView];
  [v6 setSuppressLayout:0];

  v7 = [*(a1 + 32) paletteView];
  [v7 layoutIfNeeded];

  [*(a1 + 32) _haltAnimations];
  result = *(a1 + 40);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

void sub_10003BA40(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) & 1) != 0 || (v4 = *(a1 + 32), *(v4 + 184)) && (v6[0] = _NSConcreteStackBlock, v6[1] = 3221225472, v6[2] = sub_10003BB34, v6[3] = &unk_10020EB00, v6[4] = v4, [UIView performWithoutAnimation:v6], (*(a1 + 48)))
  {
    if (*(a1 + 49) == 1 && (*(a1 + 50) & 1) == 0)
    {
      v5 = *(a1 + 32);
      if (v5[23])
      {
        [v5 setCurrentSidebarState:*(*(*(a1 + 40) + 8) + 24)];
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }
  }
}

id sub_10003BB34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003BBB4;
  v4[3] = &unk_10020F370;
  v4[4] = v1;
  return [v2 showCalendarsAnimated:0 completion:v4];
}

void sub_10003BBB4(uint64_t a1, void *a2)
{
  [a2 restorePreservedState:*(*(a1 + 32) + 184)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = 0;
}

void sub_10003BC08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 becomeFirstResponder];
  }

  [*(*(a1 + 40) + 16) setOverrideTraitCollection:*(a1 + 48) forChildViewController:*(*(a1 + 40) + 24)];
  [*(a1 + 40) layoutSearchControl];
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  v7 = *(v6 + 24);
  v8 = v7 == 0;
  if (!v7)
  {
    if (!*(*(a1 + 40) + 184) || *(a1 + 80) != 1)
    {
      v8 = 0;
      goto LABEL_12;
    }

    *(v6 + 24) = 1;
    v5 = *(a1 + 72);
    v7 = *(*(v5 + 8) + 24);
  }

  if (v7 == 2)
  {
    if (*(a1 + 56))
    {
      v9 = [*(*(a1 + 40) + 16) preferredSplitBehavior];
      v5 = *(a1 + 72);
      if (v9 == 2)
      {
        *(*(v5 + 8) + 24) = 0;
        v5 = *(a1 + 72);
      }
    }
  }

LABEL_12:
  v10 = *(*(v5 + 8) + 24);
  if (v10)
  {
    v11 = *(a1 + 40);
    if (v10 != *(v11 + 248) || *(v11 + 184))
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10003BEEC;
      v24[3] = &unk_10020F3C0;
      v24[4] = v11;
      v24[5] = v5;
      v12 = objc_retainBlock(v24);
      v13 = v12;
      if (v8)
      {
        v14 = dispatch_time(0, 0);
        dispatch_after(v14, &_dispatch_main_q, v13);
      }

      else
      {
        (v12[2])(v12);
      }
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10003BF78;
    v22[3] = &unk_10020EC68;
    v22[4] = *(a1 + 40);
    v23 = v15;
    [UIView performWithoutAnimation:v22];
  }

  if (*(a1 + 64))
  {
    if (*(a1 + 81) == 1)
    {
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_10003BF8C;
      v19 = &unk_10020EC68;
      v20 = *(a1 + 40);
      v21 = *(a1 + 64);
      dispatch_async(&_dispatch_main_q, &v16);
    }

    else
    {
      [*(*(a1 + 40) + 8) continueSearchWithTerm:? animated:? removeViewControllersIncapableOfSearchIfNeeded:?];
    }
  }

  [*(a1 + 40) setEkui_futureTraitCollection:{0, v16, v17, v18, v19, v20}];
}

id sub_10003BEEC(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10003BF68;
  v2[3] = &unk_10020F3C0;
  v3 = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void sub_10003C2C0(uint64_t a1, void *a2)
{
  v9 = a2;
  if (*(a1 + 48) != 1 || fabs(*(a1 + 40)) != 180.0)
  {
    v3 = *(a1 + 32);
    v4 = [v3 traitCollection];
    [v3 setupSearchControlForTraitCollection:v4];

    [*(a1 + 32) layoutSearchControl];
  }

  [*(a1 + 32) updatePrimaryViewControllerToolbar];
  if ((CalUIKitNavBarEnabled() & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = v5[9];
    v7 = [v5 view];
    [v7 bounds];
    [v6 layoutForWidth:v8];
  }
}

void sub_10003CC08(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [SplitViewWindowRootViewController sanitizeCalSubCal:*(a1 + 32)];
  if (v3)
  {
    [*(a1 + 40) cancelSearch];
    [v4 showAddSubscribedCalendarWithURL:v3];
  }
}

void sub_10003CC80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) model];
  v5 = [v4 eventStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003CD50;
  v7[3] = &unk_10020F460;
  v8 = v3;
  v6 = v3;
  [v5 familyCalendarsWithCompletion:v7];
}

void sub_10003CD50(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count] == 1)
  {
    v3 = [v4 firstObject];
    [*(a1 + 32) showCalendar:v3 enableDoneInitially:0];
  }
}

id sub_10003DDC0(uint64_t a1)
{
  [*(*(a1 + 32) + 88) becomeFirstResponder];
  v2 = *(a1 + 32);

  return [v2 setNeedsUpdateOfSupportedInterfaceOrientations];
}

void sub_10003DFA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 scrollToTodayAnimated:0];
  v2 = [v1 tableView];
  [v2 contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = [v1 tableView];

  [v7 setContentOffset:1 animated:{v4, v6 + 1.0}];
}

void sub_10003E668(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v3 + 8))
  {

    [v2 searchBegan];
  }

  else
  {
    [v2 cancelSearch];
    if ([*(*(a1 + 32) + 16) splitBehavior] == 1)
    {
      [*(*(a1 + 32) + 8) setAvatarViewVisible:0];
    }

    v4 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:*(*(a1 + 32) + 248)];
    v5 = [*(*(a1 + 32) + 8) paletteView];
    [v5 setShouldHideInlineFocusBanner:v4];
  }
}

void sub_10003E750(uint64_t a1)
{
  v2 = [*(a1 + 32) viewControllerForSidebarState:*(*(a1 + 32) + 248)];
  v3 = *(a1 + 32);
  if (*(v3 + 184))
  {
    v7 = v2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v3 = *(a1 + 32);
    if (isKindOfClass)
    {
      [v7 restorePreservedState:*(v3 + 184)];
      v5 = *(a1 + 32);
      v6 = *(v5 + 184);
      *(v5 + 184) = 0;

      v3 = *(a1 + 32);
    }

    v2 = v7;
  }

  if (!*(a1 + 40))
  {
    *(v3 + 170) = 0;
    v3 = *(a1 + 32);
  }

  *(v3 + 169) = 0;
}

void sub_10003EAB4(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v3 + 8))
  {

    [v2 searchEnding];
  }

  else
  {
    if ([v2[2] splitBehavior] == 1)
    {
      v4 = *(a1 + 32);
      v5 = v4[1];
      v6 = [v4 traitCollection];
      [v5 setAvatarViewVisible:{objc_msgSend(v4, "canShowAvatarViewWithTraitCollection:", v6)}];
    }

    v7 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:0];
    v8 = [*(*(a1 + 32) + 8) paletteView];
    [v8 setShouldHideInlineFocusBanner:v7];
  }
}

void *sub_10003EBB8(void *result)
{
  v1 = result;
  v2 = result[4];
  if (result[5])
  {
    [*(v2 + 16) setViewController:0 forColumn:4];
    [v1[4] teardownSearch];
    result = [v1[4] searchEnded];
  }

  else
  {
    *(v2 + 170) = 0;
  }

  *(v1[4] + 169) = 0;
  *(v1[4] + 240) = 0;
  return result;
}

void sub_10003F204(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      v5 = 0;
    }

    (*(v4 + 16))(v4, v5);
  }
}

void sub_10003F380(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      v5 = 0;
    }

    (*(v4 + 16))(v4, v5);
  }
}

void sub_10003F4FC(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      v5 = 0;
    }

    (*(v4 + 16))(v4, v5);
  }
}

void sub_10003FDF4(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 24);
  v2 = [*(*(a1 + 32) + 72) newEventBarButtonItem];
  [v2 setEnabled:v1];
}

id sub_1000400B4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v4 = CUIKCalendarModelDisplayedOccurrencesChangedForTheFirstTimeNotification;
  v5 = [*(v3 + 8) model];
  [v2 removeObserver:v3 name:v4 object:v5];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:*(a1 + 32) name:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:0];

  v7 = *(a1 + 32);

  return [v7 updateErrorState];
}

id sub_100041698(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 addSubview:*(a1 + 40)];

  [*(a1 + 40) setAlpha:0.0];
  result = CalUIKitNavBarEnabled();
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 activateSearchButtonConstraints];
  }

  return result;
}

void sub_100041708(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_10004179C;
  v1[3] = &unk_10020EB00;
  v2 = *(a1 + 32);
  [UIView animateWithDuration:v1 animations:0.25];
}

void sub_100042B60(uint64_t a1)
{
  [*(*(a1 + 32) + 8) numberOfDaysWithCachedOccurrences];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100042BF8;
  block[3] = &unk_10020EB00;
  block[4] = *(a1 + 32);
  dispatch_sync(&_dispatch_main_q, block);
}

void sub_100043250(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [*(*(a1 + 32) + 8) setSelectedOccurrences:v2];
}

id sub_1000432E4(uint64_t a1)
{
  v1 = [[EKUIReadonlyEventViewController alloc] initWithEvent:*(a1 + 32)];

  return v1;
}

id sub_100043328(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v3 selectedOccurrences];
  v6 = [EKUIContextMenuActions menuForEvents:v5 presentationController:*(a1 + 32) isEditMenu:0 overrideActionBlock:0 completionBlock:0];

  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count] + 1);
  [v7 addObjectsFromArray:v4];

  [v7 addObject:v6];
  v8 = [UIMenu menuWithChildren:v7];

  return v8;
}

void sub_100043508(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy();

  v4 = *(a1 + 32);
  if (IsCompactInViewHierarchy)
  {
    v5 = *(v4 + 64);
    v8 = [*(a1 + 40) event];
    [v5 compactMonthListViewController:v4 didSelectEvent:? showMode:?];
  }

  else
  {
    v6 = [*(a1 + 32) compactMonthListViewDelegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = [*(a1 + 32) compactMonthListViewDelegate];
    [v8 compactMonthListViewController:*(a1 + 32) wantsToCommitViewControllerFromPreview:*(a1 + 40)];
  }
}

void sub_100043F68(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    v3 = *(a1 + 48);

    [v3 setEditing:0 animated:1];
  }

  else
  {
    v5 = [*(a1 + 32) tableView];
    v4 = [NSArray arrayWithObject:*(a1 + 40)];
    [v5 deleteRowsAtIndexPaths:v4 withRowAnimation:2];
  }
}

void sub_10004429C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000442C0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2 == 2)
  {
    v6 = WeakRetained[1];
    v8 = (a1 + 32);
    v7 = *(a1 + 32);
    v14 = 0;
    v9 = &v14;
    v10 = &v14;
    v11 = 2;
  }

  else if (a2 == 1)
  {
    v6 = WeakRetained[1];
    v8 = (a1 + 32);
    v7 = *(a1 + 32);
    v15 = 0;
    v9 = &v15;
    v10 = &v15;
    v11 = 1;
  }

  else
  {
    if (a2)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v6 = WeakRetained[1];
    v8 = (a1 + 32);
    v7 = *(a1 + 32);
    v16 = 0;
    v9 = &v16;
    v10 = &v16;
    v11 = 0;
  }

  [v6 removeEvent:v7 withSpan:v11 error:v10];
  v12 = *v9;
  [v5 _purgeCachedOccurrence:*v8];
LABEL_9:
  v13 = v5[5];
  v5[5] = 0;

  (*(*(a1 + 40) + 16))();
}

void sub_1000453A0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v4 = v2;
  if (*(a1 + 49))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v2 inboxViewControllerWantsShowEvent:*(a1 + 40) animated:*(a1 + 48) showMode:v3];
}

uint64_t sub_100045944(uint64_t a1)
{
  v2 = [*(a1 + 32) doneBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) doneBlock];
    v3[2](v3, *(a1 + 32), 0);
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_1000466B0(uint64_t a1)
{
  v4 = NSFontAttributeName;
  v1 = [*(a1 + 32) _normalFont];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  [@" " sizeWithAttributes:v2];
  CalRoundToScreenScale();
  qword_1002518B8 = v3;
}

id GetFormatAnd_d_FieldRangeFor_Ed(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = +[NSDate date];
  v5 = [LargeDayNavigationViewCell _findFormatForLocale:v3 usingExampleDate:v4];

  v6 = [NSDateFormatter dateFormatFromTemplate:@"d" options:0 locale:v3];
  v7 = sub_100047274(v5);
  v8 = sub_100047274(v6);
  v9 = [v7 rangeOfString:v8];
  *a2 = v9;
  a2[1] = v10;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [DayNavigationViewCell _rangeForFirstSequenceOfDCharacters:v7];
    *a2 = v11;
    a2[1] = v10;
    if (v11 < 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v11 = v9;
    if (v9 < 0)
    {
      goto LABEL_33;
    }
  }

  v12 = v10 + v11;
  v13 = [v7 length];
  if (v12 < v13 && [v7 characterAtIndex:v12] == 100)
  {
    ++v12;
  }

  if (v12 < v13 && [v7 characterAtIndex:v12 - 1] == 100 && objc_msgSend(v7, "characterAtIndex:", v12) == 46)
  {
    ++v12;
  }

  v19 = v5;
  if (v11)
  {
    if ([v7 characterAtIndex:v11 - 1] == 100)
    {
      *a2 = --v11;
    }

    if (v11 >= 2)
    {
      v14 = [v7 characterAtIndex:v11 - 1];
      if (v14 == 8208 || v14 == 45)
      {
        --v11;
      }
    }
  }

  v15 = 0;
  while (1)
  {
    v16 = v11 - 1;
    if (v11 < 1)
    {
      break;
    }

    v17 = [v7 characterAtIndex:v11 - 1];
    if (u_isUWhiteSpace(v17) || u_ispunct(v17))
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (u_isUAlphabetic(v17))
    {
      v15 = 1;
      --v11;
      if ((v17 - 65) > 0x39)
      {
        continue;
      }

      v11 = v16;
      if ((v17 - 97) >= 0xFFFFFFFA)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_32;
  }

  v11 = 0;
LABEL_31:
  *a2 = v11;
LABEL_32:
  a2[1] = v12 - *a2;
  v5 = v19;
LABEL_33:

  return v5;
}

id sub_100047274(void *a1)
{
  v1 = a1;
  v2 = [NSMutableString stringWithCapacity:10];
  [v2 insertString:v1 atIndex:0];
  v3 = [v2 length];
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [v2 characterAtIndex:v5];
      if (v7 == 39)
      {
        v6 ^= 1u;
      }

      else if (v7 - 65 <= 0x39 && (v6 & 1) != 0 && v7 - 97 <= 0xFFFFFFF9)
      {
        v10 = v7 - 8257;
        v6 = 1;
        v8 = [NSString stringWithCharacters:&v10 length:1];
        [v2 replaceCharactersInRange:v5 withString:{1, v8}];
      }

      ++v5;
    }

    while (v4 != v5);
  }

  return v2;
}

void sub_100048A9C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v4 = [v3 notificationName];
  [v2 addObserver:v3 selector:"_animationCompleted" name:v4 object:0];

  v5 = [*(a1 + 32) application];
  v6 = [objc_opt_class() testName];
  [v5 startedTest:v6];
  v7 = [objc_opt_class() _delaySubTestName];
  v8 = [objc_opt_class() _animationSubTestName];
  [v5 startedSubTest:v7 forTest:v6];
  [*(a1 + 32) kickOffAnimation];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100048C38;
  v13[3] = &unk_10020F290;
  v14 = v5;
  v15 = v7;
  v16 = v6;
  v17 = v8;
  v9 = v8;
  v10 = v6;
  v11 = v7;
  v12 = v5;
  [v12 installCACommitCompletionBlock:v13];
}

id sub_100048C38(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:*(a1 + 40) forTest:*(a1 + 48)];
  v2 = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);

  return [v2 startedSubTest:v3 forTest:v4];
}

void sub_100048D04(uint64_t a1)
{
  v4 = [objc_opt_class() testName];
  v2 = [*(a1 + 32) application];
  v3 = [objc_opt_class() _animationSubTestName];
  [v2 finishedSubTest:v3 forTest:v4];
  [v2 finishedTest:v4];
}

void sub_100049F44(uint64_t a1)
{
  v2 = [objc_opt_class() testName];
  [*(a1 + 40) startedTest:v2];
  v3 = [*(a1 + 48) showInboxAnimated:0 completion:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004A020;
  v5[3] = &unk_10020EB00;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v4 finishedTest:v2 waitForCommit:1 extraResults:0 withTeardownBlock:v5];
}

void sub_10004AB88(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004AC00;
  block[3] = &unk_10020EB00;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100050890(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(*(a1 + 32) + 48);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) layer];
        [v6 removeAllAnimations];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void sub_100053318(uint64_t a1)
{
  v2 = [*(a1 + 32) scrollView];
  [v2 setContentOffset:0 animated:{*(a1 + 40), *(a1 + 48)}];
}

id sub_100053370(uint64_t a1)
{
  *(*(a1 + 32) + 80) = 0;
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) didEndScrolling];
  [*(*(a1 + 32) + 112) setNeedsLayout];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 reloadDataForViews:v4];
}

uint64_t sub_100054474(uint64_t a1)
{
  qword_1002518D0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_100054684(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100054B78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100054D40(uint64_t a1)
{
  v2 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[CarplayDataManager reloadEvents:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s beginning", &v4, 0xCu);
  }

  [*(a1 + 32) _fetchUpcomingOccurrences:*(a1 + 40)];
  v3 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[CarplayDataManager reloadEvents:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s complete", &v4, 0xCu);
  }
}

void sub_1000556D0(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v2 = +[NSTimeZone calendarTimeZone];
    [*(*(a1 + 32) + 32) setTimeZone:v2];
    v3 = kCalUILogCarplayHandle;
    if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Changed the cached event store's time zone to [%@]", &v4, 0xCu);
    }
  }
}

void sub_100055EE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) viewControllers];
  if ([v4 containsObject:*(a1 + 40)])
  {

    goto LABEL_4;
  }

  v5 = [*(a1 + 32) presentedViewController];
  v6 = [v5 isEqual:*(a1 + 40)];

  if (!v6)
  {
    v7 = kCalUILogHandle;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v9 = *(a1 + 40);
      if (isKindOfClass)
      {
        v9 = [*(a1 + 40) topViewController];
      }

      *buf = 138412290;
      v45 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[83058884] Showing vc %@", buf, 0xCu);
      if (isKindOfClass)
      {
      }
    }

    if (v3)
    {
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1000565A8;
      v42[3] = &unk_10020F680;
      v43 = v3;
      v10 = objc_retainBlock(v42);
    }

    else
    {
      v10 = 0;
    }

    if ([*(a1 + 40) isMemberOfClass:objc_opt_class()])
    {
      v11 = [*(a1 + 32) presentedViewController];

      if (v11)
      {
        [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
      }

      [*(a1 + 40) setModalPresentationStyle:1];
      [*(a1 + 32) presentViewController:*(a1 + 40) animated:? completion:?];
      if ((*(a1 + 48) & 1) == 0 && v10)
      {
        (v10[2])(v10);
      }

      goto LABEL_49;
    }

    v12 = [*(a1 + 40) prefersForcedModalShowViewController];
    v13 = *(a1 + 40);
    if (v12)
    {
      v14 = [v13 modalPresentationDelegate];
      v15 = [v14 presentationStyleOverrideForChildViewControllers];

      v16 = [*(a1 + 40) prefersToBePresentedFromApplicationRootViewController];
      v17 = *(a1 + 40);
      if (v16)
      {
        v18 = 1;
      }

      else
      {
        v28 = [v17 modalPresentationDelegate];

        if (!v28 || v15 == -1)
        {
          if (!CalSystemSolariumEnabled() || [*(a1 + 40) preferredModalStyleForSolarium] == -1)
          {
            v17 = *(a1 + 40);
            v18 = 6;
          }

          else
          {
            v18 = [*(a1 + 40) preferredModalStyleForSolarium];
            v17 = *(a1 + 40);
          }
        }

        else
        {
          v17 = *(a1 + 40);
          v18 = v15;
        }
      }

      [v17 setModalPresentationStyle:v18];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 40) setModalTransitionStyle:12];
      }

      v35 = objc_opt_class();
      v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@> presents <%@> with modal style %ld", v35, objc_opt_class(), [*(a1 + 40) modalPresentationStyle]);
      v36 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        v37 = v36;
        v38 = objc_opt_class();
        *buf = 138543874;
        v45 = v38;
        v46 = 2080;
        v47 = "[UINavigationController(MobileCalUniversalShowViewControllerSignatureUsage) showViewController:sender:animated:completion:]_block_invoke_2";
        v48 = 2114;
        v49 = v22;
        v39 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%{public}@ [%s] %{public}@", buf, 0x20u);
      }

      [*(a1 + 32) presentViewController:*(a1 + 40) animated:? completion:?];
      if ((*(a1 + 48) & 1) != 0 || !v10)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v19 = [v13 prefersToBePresentedFromUINavigationController];
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      if (v19)
      {
        v22 = [NSString stringWithFormat:@"<%@> presents <%@> with navigation controller", v20, v21];
        v23 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          v24 = v23;
          v25 = objc_opt_class();
          *buf = 138543874;
          v45 = v25;
          v46 = 2080;
          v47 = "[UINavigationController(MobileCalUniversalShowViewControllerSignatureUsage) showViewController:sender:animated:completion:]_block_invoke";
          v48 = 2114;
          v49 = v22;
          v26 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}@ [%s] %{public}@", buf, 0x20u);
        }

        v27 = [[UINavigationController alloc] initWithRootViewController:*(a1 + 40)];
        [v27 setModalPresentationStyle:3];
        [*(a1 + 32) presentViewController:v27 animated:0 completion:0];
        if (v10)
        {
          (v10[2])(v10);
        }

        goto LABEL_48;
      }

      v22 = [NSString stringWithFormat:@"<%@> pushes <%@>", v20, v21];
      v29 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        v30 = v29;
        v31 = objc_opt_class();
        *buf = 138543874;
        v45 = v31;
        v46 = 2080;
        v47 = "[UINavigationController(MobileCalUniversalShowViewControllerSignatureUsage) showViewController:sender:animated:completion:]_block_invoke";
        v48 = 2114;
        v49 = v22;
        v32 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}@ [%s] %{public}@", buf, 0x20u);
      }

      [*(a1 + 32) pushViewController:*(a1 + 40) animated:*(a1 + 48)];
      if (!v3)
      {
        goto LABEL_48;
      }

      if (*(a1 + 48) == 1)
      {
        [*(a1 + 32) durationForTransition:1];
        v34 = dispatch_time(0, (v33 * 1000000000.0));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000565B8;
        block[3] = &unk_10020F680;
        v41 = v3;
        dispatch_after(v34, &_dispatch_main_q, block);

LABEL_48:
LABEL_49:

        goto LABEL_50;
      }
    }

    (v10[2])(v10);
    goto LABEL_48;
  }

LABEL_4:
  if (v3)
  {
    v3[2](v3);
  }

LABEL_50:
}

id sub_10005715C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[57] == 1)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = *(a1 + 32);
    v5 = [v4 rotationAnimationStartedNotificationName];
    [v3 addObserver:v4 selector:"_rotationAnimationStarted:" name:v5 object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = *(a1 + 32);
    v8 = [v7 rotationAnimationCompleteNotificationName];
    [v6 addObserver:v7 selector:"_rotationAnimationCompleted:" name:v8 object:0];

    v2 = *(a1 + 32);
  }

  v9 = [v2 application];
  [v9 startedTest:*(a1 + 40)];

  v10 = *(a1 + 32);

  return [v10 _rotationTest];
}

void sub_1000574C8(uint64_t a1)
{
  if ((*(*(a1 + 32) + 57) & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100057558;
    block[3] = &unk_10020EB00;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1000580D4(id a1)
{
  qword_1002518E8 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_100058110(id a1)
{
  qword_1002518F8 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_100059D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100059DA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100059DBC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a2 occurrenceBlocks];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 startRange];
        v13 = [v11 length];
        v14 = *(a1 + 40);
        if (v14 >= v12 && v14 <= v12 + v13)
        {
          objc_storeStrong((*(*(a1 + 32) + 8) + 40), v11);
          *a4 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

void sub_10005A064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10005A07C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isFilledForDay:*(a1 + 40)];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

id sub_10005A74C(uint64_t a1)
{
  [*(a1 + 32) setHidden:0];
  v2 = *(a1 + 40);

  return [v2 setNeedsDisplay];
}

void sub_10005B354(uint64_t a1)
{
  v2 = objc_alloc_init(NSCache);
  v3 = qword_100251928;
  qword_100251928 = v2;

  v4 = *(a1 + 32);

  objc_storeStrong(&qword_100251920, v4);
}

id sub_10005CB68(uint64_t a1)
{
  if (([*(a1 + 32) animating] & 1) == 0)
  {
    [*(a1 + 40) setHidden:0];
  }

  [*(a1 + 32) _layoutSingleOccurrence:*(a1 + 40) index:*(a1 + 64) numRows:*(a1 + 48) drawTimeString:*(a1 + 56)];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

id sub_10005CBC8(uint64_t a1)
{
  [*(a1 + 32) _layoutSingleOccurrence:*(a1 + 40) index:*(a1 + 64) numRows:*(a1 + 48) drawTimeString:*(a1 + 56)];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t sub_10005DC54(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 > a3 || a2 > 0x13)
  {
    v5 = a2;
    return v5 > 0x13;
  }

  else
  {
    v4 = 19;
    if (a3 < 0x13)
    {
      v4 = a3;
    }

    while ((*(a4 + 20 * *(a1 + 32) + a2) & 1) == 0)
    {
      v5 = a2 + 1;
      if (a2++ >= v4)
      {
        return v5 > 0x13;
      }
    }

    return 1;
  }
}

id sub_10005DCB0(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 40)];
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 32);

  return [v2 update];
}

void sub_10005DF6C(uint64_t a1)
{
  v2 = [UIGraphicsImageRenderer alloc];
  [*(a1 + 32) bounds];
  v5 = [v2 initWithSize:{v3, v4}];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005E074;
  v9[3] = &unk_10020F858;
  v9[4] = *(a1 + 32);
  v6 = [v5 imageWithActions:v9];
  v7 = [v6 CGImage];
  v8 = [*(a1 + 32) layer];
  [v8 setContents:v7];

  [*(a1 + 32) setHasDrawnBefore:1];
  [*(a1 + 32) setAlpha:1.0];
}

void sub_10005E074(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 CGContext];
  v5 = [*(a1 + 32) traitCollection];
  [v3 drawIntoContext:v4 traitCollection:v5];
}

id sub_10005E994(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  v6 = [v5 selectedEventsForEditMenu];
  v7 = [*(a1 + 32) delegate];
  v8 = [v7 presentationControllerForEditMenu];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005EB10;
  v13[3] = &unk_10020EC18;
  v13[4] = *(a1 + 32);
  v9 = [EKUIContextMenuActions menuForEvents:v6 presentationController:v8 isEditMenu:0 overrideActionBlock:0 completionBlock:v13];

  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count] + 1);
  [v10 addObjectsFromArray:v4];

  [v10 addObject:v9];
  v11 = [UIMenu menuWithChildren:v10];

  return v11;
}

void sub_10005EB10(uint64_t a1, uint64_t a2)
{
  if (a2 == 8)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) delegate];
      [v5 attemptDisplayReviewPrompt];
    }
  }
}

void sub_10005F14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005F174(uint64_t a1)
{
  v2 = [[UIGraphicsImageRenderer alloc] initWithSize:{*(*(a1 + 32) + 40), *(*(a1 + 32) + 48)}];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005F234;
  v6[3] = &unk_10020F858;
  v6[4] = *(a1 + 32);
  v3 = [v2 imageWithActions:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10005F234(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 view];
  v5 = [v4 CGContext];

  [v6 drawIntoContext:v5 traitCollection:*(*(a1 + 32) + 56)];
}

void sub_10005F2C0(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = [*(a1 + 32) view];
    v3 = [v2 hasDrawnBefore];

    if (v3)
    {
      v4 = [*(*(*(a1 + 40) + 8) + 40) CGImage];
      v5 = [*(a1 + 32) view];
      v6 = [v5 layer];
      [v6 setContents:v4];
    }

    else
    {
      v7 = [*(a1 + 32) view];
      [v7 setAlpha:0.0];

      v8 = [*(*(*(a1 + 40) + 8) + 40) CGImage];
      v9 = [*(a1 + 32) view];
      v10 = [v9 layer];
      [v10 setContents:v8];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10005F444;
      v12[3] = &unk_10020EB00;
      v12[4] = *(a1 + 32);
      [UIView animateWithDuration:v12 animations:0.15];
    }

    v11 = [*(a1 + 32) view];
    [v11 setHasDrawnBefore:1];
  }
}

void sub_10005F444(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void sub_10005F548(id a1)
{
  qword_100251938 = objc_alloc_init(_BackgroundViewRenderManager);

  _objc_release_x1();
}

void sub_10005F79C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  objc_sync_enter(v2);
  v3 = [*(*(a1 + 32) + 16) containsObject:*(a1 + 40)];
  objc_sync_exit(v2);

  if ((v3 & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005F87C;
    block[3] = &unk_10020EB00;
    v5 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10005F87C(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 didCompleteMonthWeekViewBackgroundRendering];
  }
}

void sub_100060178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000601A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = WeakRetained[40];
    v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      do
      {
        v7 = 0;
        do
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v21 + 1) + 8 * v7);
          v9 = +[LargeMonthWeekView gridlineColor];
          [v8 setBackgroundColor:{objc_msgSend(v9, "CGColor")}];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v5);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v2[41];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          v16 = +[LargeMonthWeekView weekendColor];
          [v15 setBackgroundColor:{objc_msgSend(v16, "CGColor")}];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v12);
    }
  }
}

void sub_100060C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100060C40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100060C58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[381] == 1)
  {
    [v4 _animateGridlinesAndBackgrounds];
    v4 = *(a1 + 32);
  }

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100060D44;
  v5[3] = &unk_10020F8C8;
  v5[4] = v4;
  v6 = *(a1 + 40);
  v7 = v8;
  [v4 enumerateScrollViewSubviews:v5];
  _Block_object_dispose(v8, 8);
}

void sub_100060D44(uint64_t a1, void *a2)
{
  v4 = a2;
  v34 = v4;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [*(a1 + 32) scrollView];
    [v13 bounds];
    v37.origin.x = v14;
    v37.origin.y = v15;
    v37.size.width = v16;
    v37.size.height = v17;
    v36.origin.x = v6;
    v36.origin.y = v8;
    v36.size.width = v10;
    v36.size.height = v12;
    v18 = CGRectIntersectsRect(v36, v37);

    v4 = v34;
    if (v18)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      v19 = [*(a1 + 32) scrollView];
      [v19 contentOffset];
      v21 = v20;
      v23 = v22;
      v24 = [*(a1 + 32) scrollView];
      [v34 convertPoint:v24 fromView:{v21, v23}];
      v25 = *(*(a1 + 48) + 8);
      *(v25 + 32) = v26;
      *(v25 + 40) = v27;

      [v34 frame];
      v4 = v34;
      *(*(*(a1 + 48) + 8) + 40) = v28 - *(*(*(a1 + 48) + 8) + 40);
    }
  }

  v29 = *(a1 + 32);
  v30 = [v4 startDate];
  [v29 _subviewHeightForDate:v30];
  v32 = v31;

  [v34 frame];
  *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) + v32 - v33;
  [v34 setFrame:?];
}

void sub_100060EFC(uint64_t a1)
{
  [*(a1 + 32) updateDraggedOccurrenceView];
  v2 = *(a1 + 32);
  if (*(v2 + 381) == 1)
  {
    *(v2 + 381) = 0;
    [*(a1 + 32) _cleanupGridAnimation];
  }

  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3)
  {
    [v3 bounds];
    MaxY = CGRectGetMaxY(v16);
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 32);
    v7 = MaxY - *(v5 + 40);
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [*(a1 + 32) scrollView];
    [v8 convertPoint:v9 toView:{v6, v7}];
    v11 = v10;
    v13 = v12;

    v14 = [*(a1 + 32) scrollView];
    [v14 setContentOffset:0 animated:{v11, v13}];
  }
}

void sub_1000611A0(uint64_t a1)
{
  [*(a1 + 32) _removeAnimatedGridComponents];
  v2 = [[NSMutableArray alloc] initWithCapacity:6];
  for (i = 0; i != 6; ++i)
  {
    v4 = objc_alloc_init(UIView);
    v5 = +[LargeMonthWeekView gridlineColor];
    [v4 setBackgroundColor:v5];

    v6 = [*(*(a1 + 32) + 320) objectAtIndexedSubscript:i];
    [v6 frame];
    [v4 setFrame:?];

    v7 = [*(a1 + 32) scrollView];
    [v7 addSubview:v4];

    [v2 addObject:v4];
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 336);
  *(v8 + 336) = v2;
  v10 = v2;

  v11 = objc_alloc_init(UIView);
  v12 = objc_alloc_init(UIView);
  v13 = +[LargeMonthWeekView weekendColor];
  [v11 setBackgroundColor:v13];

  v14 = +[LargeMonthWeekView weekendColor];
  [v12 setBackgroundColor:v14];

  v15 = [*(*(a1 + 32) + 328) objectAtIndexedSubscript:0];
  [v15 frame];
  [v11 setFrame:?];

  v16 = [*(*(a1 + 32) + 328) objectAtIndexedSubscript:1];
  [v16 frame];
  [v12 setFrame:?];

  v17 = [*(a1 + 32) scrollView];
  [v17 addSubview:v11];

  v18 = [*(a1 + 32) scrollView];
  [v18 addSubview:v12];

  v22[0] = v11;
  v22[1] = v12;
  v19 = [NSArray arrayWithObjects:v22 count:2];
  v20 = *(a1 + 32);
  v21 = *(v20 + 344);
  *(v20 + 344) = v19;
}

void sub_1000626F0(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 startDate];
  v4 = [v3 month];
  if (v4 == [*(a1 + 32) month])
  {
    v5 = [v6 startDate];
    [v6 setShowsFirstDayOfMonthLabel:objc_msgSend(v5 animated:{"year") != objc_msgSend(*(a1 + 32), "year"), 1}];
  }

  else
  {
    [v6 setShowsFirstDayOfMonthLabel:1 animated:1];
  }
}

void sub_100063378(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251948;
  qword_100251948 = v1;

  [qword_100251948 setCalculationType:1];
  [qword_100251948 addAnchoredValue:2048 forWindowSizeWidth:110.5];
  [qword_100251948 addAnchoredValue:4096 forWindowSizeWidth:140.5];
  v3 = qword_100251948;

  [v3 addAnchoredValue:0x4000 forWindowSizeWidth:169.0];
}

void sub_100064938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100064950(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = a2;
  v6 = [v16 calendarDate];
  v7 = [v6 date];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = [v16 endCalendarDate];
  v11 = [v10 date];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = *(a1 + 40);
  if (v9 <= v14 && v13 > v14)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_100064EA0(uint64_t a1)
{
  if (([*(a1 + 32) isNew] & 1) != 0 || *(a1 + 72) == 3)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) model];
    v4 = [AddEventViewController editOrAddViewControllerForEventOrIntegrationWithEvent:v2 model:v3 creationMethod:*(a1 + 80) viewStart:2 eventEditViewDelegate:*(a1 + 40)];

    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v10 = [*(a1 + 40) augmentEventDetailsContext:*(a1 + 48)];
    v7 = [EKEventViewController eventDetailViewControllerWithEvent:*(a1 + 32) delegate:*(a1 + 40) context:v10 canvasView:2];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(a1 + 56) setNavigationBarHidden:1 animated:0];
    v6 = v10;
  }
}

uint64_t sub_100064FA0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) openAttendeesDetailItem];
  }

  result = *(a1 + 32);
  if (result)
  {

    return EKUIPopFallbackSizingContextWithViewHierarchy();
  }

  return result;
}

void sub_100065614(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) scrollView];
  [v3 setContentOffset:{v1, v2}];
}

void sub_100065858(uint64_t a1)
{
  v1 = [*(a1 + 32) containerView];
  [v1 setAlpha:0.0];
}

void sub_1000658A0(id *a1)
{
  v2 = [a1[4] presentedViewController];

  if (v2)
  {
    v3 = a1[4];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100065994;
    v6[3] = &unk_10020F9D0;
    v6[4] = v3;
    v7 = a1[5];
    v8 = a1[6];
    [v3 dismissViewControllerAnimated:0 completion:v6];
  }

  else
  {
    v4 = a1[6];
    if (v4)
    {
      v5 = *(v4 + 2);

      v5();
    }
  }
}

uint64_t sub_100065994(uint64_t a1)
{
  [*(a1 + 32) presentationControllerDidDismiss:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100066068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006608C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [*(a1 + 32) startCalendarDate];
  v4 = [WeakRetained subviewForDate:v3];

  if ([WeakRetained isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:*(a1 + 40)] & 1) != 0 || (objc_msgSend(WeakRetained, "isWaitingForBackgroundLoadingOfSelectedEventOccurrenceView"))
  {
    v5 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
      *v17 = 138412290;
      *&v17[4] = objc_opt_class();
      v7 = *&v17[4];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ found the source occurrence view for the selected event yet.", v17, 0xCu);
    }

    [v4 setSelectedOccurrence:{*(a1 + 32), *v17}];
    v8 = [WeakRetained shownEventViewController];
    if (v8)
    {
      v9 = *(WeakRetained + 248);

      if ((v9 & 1) == 0)
      {
        v10 = [WeakRetained draggedOccurrenceView];

        if (v10)
        {
          [WeakRetained removeDraggingOccurrenceAnimated:0];
          [WeakRetained removeAllWeekHighlights];
        }
      }
    }

    objc_storeStrong(WeakRetained + 32, *(a1 + 32));
    [WeakRetained _scrollToWeekView:v4 animated:1 completion:*(a1 + 56)];
  }

  else
  {
    v11 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = v13;
      v15 = [WeakRetained managedNavigationController];
      *v17 = 138412546;
      *&v17[4] = v13;
      *&v17[12] = 2112;
      *&v17[14] = objc_opt_class();
      v16 = *&v17[14];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@ didn't find the source occurrence view for the selected event yet. It is probably still background loading. %@ will be notified once it loads.", v17, 0x16u);
    }

    [WeakRetained setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:{1, *v17, *&v17[8]}];
  }

  [*(a1 + 48) setNeedsUpdateOfSupportedInterfaceOrientations];
}

id sub_100066C50(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 attemptDisplayReviewPrompt];
}

void sub_100066E04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) context];
  [v1 showEvent:v2 animated:1 showMode:1 context:v3];
}

void sub_100066F44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) context];
  [v1 showEvent:v2 animated:1 showMode:1 context:v3];
}

void sub_100067074(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) context];
  [v1 showEvent:v2 animated:1 showMode:1 context:v3];
}

uint64_t sub_10006722C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v18 = v3;
  if (!v4 || !*(a1 + 40) || ([v4 timeIntervalSinceReferenceDate], v6 = v5, objc_msgSend(*(a1 + 40), "timeIntervalSinceReferenceDate"), v8 = v7, objc_msgSend(v18, "calendarDate"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "absoluteTime"), v11 = v10, v9, objc_msgSend(v18, "calendarDate"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "calendarDateForEndOfWeekWithWeekStart:", CUIKOneIndexedWeekStart()), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "absoluteTime"), v15 = v14, v13, v12, v3 = v18, v15 >= v6) && v11 <= v8)
  {
    v16 = [v3 reloadData];
    v3 = v18;
  }

  return _objc_release_x1(v16, v3);
}

void sub_100067DF4(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = a2;
  [v17 frame];
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) view];
  [v10 bounds];
  v12 = v11;

  v19.origin.x = 0.0;
  v19.origin.y = v7;
  v19.size.width = v12;
  v19.size.height = v9;
  if (CGRectContainsPoint(v19, *(a1 + 48)))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = [*(a1 + 32) scrollView];
      [v14 convertPoint:*(*(*(a1 + 40) + 8) + 40) toView:{*(a1 + 48), *(a1 + 56)}];
      *v13 = v15;
      v13[1] = v16;
    }

    *a3 = 1;
  }
}

id sub_100069038(uint64_t a1)
{
  [*(a1 + 32) _updateSubviewAlphaForCircled:*(a1 + 104) pressed:*(*(a1 + 32) + 100)];
  v2 = *(*(a1 + 32) + 40);
  v3 = 72;
  if (*(a1 + 104))
  {
    v3 = 40;
  }

  v4 = 80;
  if (*(a1 + 104))
  {
    v4 = 48;
  }

  v5 = 88;
  if (*(a1 + 104))
  {
    v5 = 56;
  }

  v6 = 96;
  if (*(a1 + 104))
  {
    v6 = 64;
  }

  v7 = *(a1 + v3);
  v8 = *(a1 + v4);
  v9 = *(a1 + v5);
  v10 = *(a1 + v6);

  return [v2 setFrame:{v7, v8, v9, v10}];
}

id sub_1000690D8(uint64_t a1)
{
  [*(a1 + 32) dayCircleFrame];
  result = [*(*(a1 + 32) + 40) setFrame:?];
  *(*(a1 + 32) + 96) = 0;
  return result;
}

void sub_1000696B0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251958;
  qword_100251958 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100069BC8(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_100251968;
  qword_100251968 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100069D14(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_100251978;
  qword_100251978 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100069E14(id a1)
{
  v1 = objc_alloc_init(UILabel);
  v2 = qword_100251988;
  qword_100251988 = v1;

  v3 = qword_100251988;

  [v3 setText:@"0"];
}

void sub_10006A908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006A934(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[7];
    WeakRetained[7] = 0;
    v3 = WeakRetained;

    [v3 _updateGridExtensionImageForScrollView:v3[4]];
    WeakRetained = v3;
  }
}

void sub_10006BA24(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) dateFromComponents:*(*(a1 + 32) + 152)];
  v3 = [*(a1 + 32) lastSecondOfWeek];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  v5 = [WeakRetained weekView:*(a1 + 32) allEventsForStartDate:v2 endDate:v3];

  if (v5)
  {
    v6 = [v5 copy];
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = v6;

    v9 = *(*(a1 + 32) + 24);
    v10 = [v5 timedOccurrences];
    [v9 loadAndLayoutOccurrences:v10 reverse:*(a1 + 48)];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006BBA0;
    block[3] = &unk_10020F550;
    v11 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = *(a1 + 48);
    v13 = v11;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10006BBA0(uint64_t a1)
{
  [*(*(a1 + 32) + 16) prepareForReuse];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = [*(v2 + 96) allDayOccurrences];
  [v3 setOccurrences:v4 animated:1];

  [*(*(a1 + 32) + 24) movePreloadedItemsToVisible];
  v5 = *(*(a1 + 32) + 24);
  v6 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006BCA8;
  v7[3] = &unk_10020F680;
  v8 = *(a1 + 40);
  [v5 applyLoadedOccurrencesWithBatching:1 animated:1 reverse:v6 completion:v7];
}

uint64_t sub_10006C1C8(uint64_t a1)
{
  [*(a1 + 32) firstVisibleSecondChanged];
  [*(a1 + 32) scrollViewDidScroll:*(*(a1 + 32) + 32)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10006D080(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = +[UIColor systemBackgroundColor];
  [v3 setFill];

  v4 = 0.0;
  [v9 fillRect:{0.0, 0.0, *(a1 + 40), *(a1 + 48)}];
  v5 = [objc_opt_class() weekSeparatorColor];
  [v5 setFill];
  EKUISeparatorLineThickness();
  v6 = *(a1 + 32);
  if (v6[6] >= 2)
  {
    v7 = 1;
    do
    {
      [v6 dayWidth];
      v4 = v4 + v8;
      CalRoundRectToScreenScale();
      [v9 fillRect:?];
      ++v7;
      v6 = *(a1 + 32);
    }

    while (v6[6] > v7);
  }
}

void sub_10006ED18(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_searchViewDidAppear" name:@"ListViewController_ViewDidAppearNotification" object:0];

  v3 = *(a1 + 40);
  v6 = [*(a1 + 32) model];
  v4 = [v6 selectedDate];
  v5 = [v3 pushCalendarViewControllerWithViewType:4 andDate:v4];
}

void sub_10006EE84(uint64_t a1)
{
  v2 = [objc_opt_class() testName];
  v3 = [*(a1 + 32) application];
  [v3 startedTest:v2];

  v4 = [*(a1 + 32) application];
  v5 = [v4 rootNavigationController];

  v6 = [v5 topViewController];
  v7 = [v6 currentChildViewController];
  v8 = [v7 tableViewForTesting];

  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006EFAC;
  v11[3] = &unk_10020EB00;
  v11[4] = v9;
  [v10 scrollView:v8 completionBlock:v11];
}

void sub_10006EFAC(uint64_t a1)
{
  v1 = [*(a1 + 32) model];
  [v1 setShowDayAsList:0];
}

void sub_10006F04C(id a1)
{
  v3 = objc_alloc_init(NSMutableParagraphStyle);
  [v3 setAlignment:0];
  v1 = objc_opt_new();
  v2 = qword_1002519A0;
  qword_1002519A0 = v1;

  [qword_1002519A0 setObject:v3 forKeyedSubscript:NSParagraphStyleAttributeName];
}

void sub_10006F310(uint64_t a1)
{
  [*(a1 + 32) drawInRect:*(a1 + 40) withAttributes:{CGPointZero.x, CGPointZero.y, *(a1 + 48), *(a1 + 56)}];
  if (*(a1 + 64) > 0.0)
  {
    v2 = CalendarAppTintColor();
    [v2 setFill];

    v3 = *(a1 + 48);
    v4 = *(a1 + 56) + 2.0;
    v5 = *(a1 + 64);
    v6 = 0;

    UIRectFill(*&v6);
  }
}

void sub_10006F4C0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002519B0;
  qword_1002519B0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10006F850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006F870(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006F888(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  CalRoundToScreenScale();
  v6 = v5;
  [*(a1 + 32) fontSize];
  v8 = v7;
  v12 = [*(a1 + 32) traitCollection];
  v9 = [v2 _cachedImageForString:v3 isWeekend:v4 underlineThickness:objc_msgSend(v12 fontSize:"userInterfaceStyle") style:{v6, v8}];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_100070900(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[DividedMonthDayTransitionView dividedMonthPaletteBackgroundColor];
  [v2 setBackgroundColor:v3];

  [*(a1 + 40) setAlpha:1.0];
  v4 = [*(a1 + 48) paletteView];
  [v4 setExtraPaletteHeight:*(a1 + 56)];

  v5 = [*(a1 + 48) paletteView];
  [v5 layoutSubviews];

  v7 = +[CompactMonthViewController dividedModeBackgroundColor];
  v6 = [*(a1 + 48) scrubber];
  [v6 setBackgroundColor:v7];
}

id sub_1000709DC(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  [v2 setExtraPaletteHeight:0.0];

  v3 = [*(a1 + 32) paletteView];
  [v3 layoutSubviews];

  [*(a1 + 40) removeFromSuperview];
  v4 = *(a1 + 48);

  return [v4 removeFromSuperview];
}

void sub_100070A4C(uint64_t a1)
{
  [*(a1 + 32) weekDayInitialsMonth];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) paletteView];
  v11 = [v10 dayInitialsHeaderView];
  [v11 setFrame:{v3, v5, v7, v9}];

  v13 = [*(a1 + 32) paletteView];
  v12 = [v13 dateLabel];
  [v12 setAlpha:1.0];
}

id sub_100070B18(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  v3 = [v2 view];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = [*(a1 + 32) monthViewController];
  v11 = [v10 view];
  [v11 setFrame:{v8, v9, v5, v7}];

  v12 = [*(a1 + 32) monthViewController];
  v13 = [v12 view];
  [v13 setAlpha:1.0];

  [*(a1 + 40) setAlpha:1.0];
  [*(a1 + 40) frame];
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 40);

  return [v16 setFrame:{v14, v15}];
}

void sub_100070C14(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v3 = [*(a1 + 40) monthViewController];
  v2 = [v3 view];
  [v2 setHidden:0];
}

void sub_100070C9C(uint64_t a1)
{
  v1 = [*(a1 + 32) allDayView];
  [v1 setAlpha:0.0];
}

void sub_100071CD4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = [*(a1 + 40) scrubber];
  [v2 setAlpha:1.0];

  v4 = [*(a1 + 40) scrubber];
  v3 = +[DividedMonthDayTransitionView dividedMonthPaletteBackgroundColor];
  [v4 setBackgroundColor:v3];
}

id sub_100071D6C(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

void sub_100071DA8(uint64_t a1)
{
  [*(a1 + 32) weekDayInitialsDay];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) paletteView];
  v11 = [v10 dayInitialsHeaderView];
  [v11 setFrame:{v3, v5, v7, v9}];

  v13 = [*(a1 + 32) paletteView];
  v12 = [v13 animatableDateLabel];
  [v12 setAlpha:0.0];
}

void sub_100071E74(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  [v2 setExtraPaletteHeight:0.0];

  v3 = [*(a1 + 32) paletteView];
  [v3 layoutSubviews];
}

id sub_100071EE0(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 32) frame];
  v2 = -(*(a1 + 40) + 63.0);
  v3 = *(a1 + 32);

  return [v3 setFrame:{0.0, v2}];
}

id sub_100071F40(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  v3 = [v2 view];
  [v3 setHidden:0];

  v4 = *(a1 + 40);

  return [v4 removeFromSuperview];
}

void sub_100071FA8(uint64_t a1)
{
  v2 = [*(a1 + 32) bottomView];
  v3 = [v2 layer];
  v4 = *&CATransform3DIdentity.m33;
  v18[4] = *&CATransform3DIdentity.m31;
  v18[5] = v4;
  v5 = *&CATransform3DIdentity.m43;
  v18[6] = *&CATransform3DIdentity.m41;
  v18[7] = v5;
  v6 = *&CATransform3DIdentity.m13;
  v18[0] = *&CATransform3DIdentity.m11;
  v18[1] = v6;
  v7 = *&CATransform3DIdentity.m23;
  v18[2] = *&CATransform3DIdentity.m21;
  v18[3] = v7;
  [v3 setTransform:v18];

  v8 = [*(a1 + 32) bottomView];
  [v8 frame];
  v10 = v9;
  v12 = v11;

  [*(a1 + 32) dayViewDayLocation];
  v14 = v13;
  v16 = v15;
  v17 = [*(a1 + 32) bottomView];
  [v17 setFrame:{v14, v16, v10, v12}];
}

void sub_1000720A4(uint64_t a1)
{
  v1 = [*(a1 + 32) bottomView];
  [v1 setAlpha:1.0];
}

void sub_1000728C8(uint64_t a1)
{
  [*(a1 + 32) weekDayInitialsMonth];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) paletteView];
  v11 = [v10 dayInitialsHeaderView];
  [v11 setFrame:{v3, v5, v7, v9}];

  v12 = [*(a1 + 32) paletteView];
  v13 = [v12 dayInitialsHeaderView];
  [v13 setAlpha:1.0];

  v15 = [*(a1 + 32) paletteView];
  v14 = [v15 animatableDateLabel];
  [v14 setAlpha:1.0];
}

uint64_t sub_1000729C0(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  v3 = [v2 dateLabel];
  [v3 setHidden:0];

  v4 = [*(a1 + 32) paletteView];
  v5 = [v4 animatableDateLabel];
  [v5 setAlpha:0.0];

  v6 = *(a1 + 48);
  v7 = [*(a1 + 32) paletteView];
  [v7 setDividerLineVisible:v6];

  v8 = [*(a1 + 32) paletteView];
  [v8 setSuppressLayout:0];

  v9 = [*(a1 + 32) paletteView];
  [v9 layoutIfNeeded];

  [*(a1 + 32) _haltAnimations];
  result = *(a1 + 40);
  if (result)
  {
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

void sub_100072ACC(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  v3 = [v2 view];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = [*(a1 + 32) monthViewController];
  v10 = [v11 view];
  [v10 setFrame:{v8, v9, v5, v7}];
}

id sub_100072B88(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  [v2 frameOfListView];
  MinY = CGRectGetMinY(v13);
  v4 = [*(a1 + 32) monthViewController];
  v5 = [v4 view];
  [v5 frame];
  v6 = MinY / CGRectGetHeight(v14);

  [*(a1 + 40) frame];
  Height = CGRectGetHeight(v15);
  CATransform3DMakeTranslation(&a, 0.0, Height * 0.5, 0.0);
  CATransform3DMakeScale(&v10, 1.0, v6, 1.0);
  CATransform3DConcat(&v12, &a, &v10);
  v8 = [*(a1 + 40) layer];
  a = v12;
  [v8 setTransform:&a];

  return [*(a1 + 40) setAlpha:0.0];
}

void sub_100072CA8(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v3 = [*(a1 + 40) listViewController];
  v2 = [v3 view];
  [v2 setHidden:0];
}

void sub_100073608(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  v1 = [v2 view];
  [v1 setHidden:1];
}

void sub_100073668(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  v3 = [v2 animatableDateLabel];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) paletteView];
  v5 = [v4 dayInitialsHeaderView];
  [v5 setAlpha:0.0];

  [*(a1 + 32) weekDayInitialsMonth];
  v7 = v6;
  [*(a1 + 32) weekDayInitialsMonth];
  v9 = v8;
  [*(a1 + 32) weekDayInitialsMonth];
  v11 = v10;
  v13 = [*(a1 + 32) paletteView];
  v12 = [v13 dayInitialsHeaderView];
  [v12 setFrame:{v7, 0.0, v9, v11}];
}

uint64_t sub_10007376C(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  v3 = [v2 animatableDateLabel];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) paletteView];
  v5 = [v4 dateLabel];
  [v5 setHidden:0];

  v6 = [*(a1 + 32) paletteView];
  v7 = [v6 dayInitialsHeaderView];
  [v7 setAlpha:1.0];

  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) paletteView];
  [v9 setDividerLineVisible:v8];

  v10 = [*(a1 + 32) paletteView];
  [v10 setSuppressLayout:0];

  v11 = [*(a1 + 32) paletteView];
  [v11 layoutIfNeeded];

  [*(a1 + 32) _haltAnimations];
  result = *(a1 + 40);
  if (result)
  {
    v13 = *(result + 16);

    return v13();
  }

  return result;
}

id sub_1000738A4(uint64_t a1)
{
  [*(a1 + 32) frame];
  [*(a1 + 32) setFrame:{0.0, -*(a1 + 40)}];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

void sub_1000738F8(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v3 = [*(a1 + 40) monthViewController];
  v2 = [v3 view];
  [v2 setHidden:0];
}

void sub_100073964(uint64_t a1)
{
  v2 = [*(a1 + 32) listViewController];
  v3 = [v2 view];
  [v3 setHidden:1];

  v13 = [*(a1 + 32) listViewController];
  v4 = [v13 view];
  [v4 frame];
  v6 = v5;
  v7 = [*(a1 + 32) listViewController];
  v8 = [v7 view];
  [v8 frame];
  v10 = v9;
  v11 = [*(a1 + 32) listViewController];
  v12 = [v11 view];
  [v12 setFrame:{0.0, 0.0, v6, v10}];
}

id sub_100073A70(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  v3 = *&CATransform3DIdentity.m33;
  v8[4] = *&CATransform3DIdentity.m31;
  v8[5] = v3;
  v4 = *&CATransform3DIdentity.m43;
  v8[6] = *&CATransform3DIdentity.m41;
  v8[7] = v4;
  v5 = *&CATransform3DIdentity.m13;
  v8[0] = *&CATransform3DIdentity.m11;
  v8[1] = v5;
  v6 = *&CATransform3DIdentity.m23;
  v8[2] = *&CATransform3DIdentity.m21;
  v8[3] = v6;
  [v2 setTransform:v8];

  return [*(a1 + 32) setAlpha:1.0];
}

id sub_100073AE8(uint64_t a1)
{
  v2 = [*(a1 + 32) listViewController];
  v3 = [v2 view];
  [v3 setHidden:0];

  v4 = *(a1 + 40);

  return [v4 removeFromSuperview];
}

id sub_100073D7C(uint64_t a1)
{
  v2 = [*(a1 + 32) application];
  [v2 startedTest:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _mainLoop];
}

id sub_1000744D4(uint64_t a1)
{
  v2 = [*(a1 + 32) application];
  [v2 startedTest:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _mainLoop];
}

void sub_100076388(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007646C;
  block[3] = &unk_10020FD10;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v9;
  v15 = v10;
  v16 = v8;
  v17 = v7;
  v18 = a4;
  v11 = v7;
  v12 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10007646C(uint64_t a1)
{
  if (![*(a1 + 32) isEqual:*(*(a1 + 40) + 16)])
  {
    return;
  }

  [*(*(a1 + 40) + 32) setText:*(a1 + 48)];
  if (CalSystemSolariumEnabled())
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 40);
    v4 = 48;
LABEL_11:
    v6 = *(v3 + v4);

    [v6 setImage:v2];
    return;
  }

  v5 = *(a1 + 64);
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 != 3)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      return;
    }

LABEL_10:
    v2 = *(a1 + 56);
    v3 = *(a1 + 40);
    v4 = 40;
    goto LABEL_11;
  }

  v7 = [UIImage systemImageNamed:@"video.fill"];
  [*(*(a1 + 40) + 40) setImage:v7];
}

void sub_100076858(id a1, BOOL a2)
{
  v2 = a2;
  v3 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "cellWasTapped for conference cell completion handler called with success %d", v4, 8u);
  }
}

void sub_100076A5C(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_1002519C0;
  qword_1002519C0 = v1;

  _objc_release_x1(v1, v2);
}

UIColor *__cdecl sub_100077280(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 userInterfaceStyle]== 1)
  {
    v2 = 0.518;
    v3 = 1.0;
    v4 = 0.518;
    v5 = 0.518;
  }

  else
  {
    v2 = 0.596;
    v5 = 0.62;
    v3 = 1.0;
    v4 = 0.596;
  }

  v6 = [UIColor colorWithRed:v2 green:v4 blue:v5 alpha:v3];

  return v6;
}

UIColor *__cdecl sub_1000772F8(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 userInterfaceStyle]== 1)
  {
    v2 = 0.537;
    v3 = 0.557;
  }

  else
  {
    v2 = 0.62;
    v3 = 0.643;
  }

  v4 = [UIColor colorWithRed:v2 green:v2 blue:v3 alpha:1.0];

  return v4;
}

void sub_1000775E4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"clearMetrics" name:UIContentSizeCategoryDidChangeNotification object:0];
}

void sub_100079810(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  [*(*(a1 + 32) + 88) setAlpha:v2];
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [*(*(a1 + 32) + 88) setAlpha:v3];
  if ((*(a1 + 40) & 1) == 0)
  {
    [*(a1 + 32) _removeCommentPromptRelatedConstraintsIfNeeded];
    [*(*(a1 + 32) + 88) removeFromSuperview];
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = 0;
  }
}

id sub_10007A6D4(uint64_t a1, void *a2, int a3, double a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  if ([v7 count])
  {
    v9 = [*(a1 + 32) anyObject];
    [*(a1 + 32) removeObject:v9];
    [v9 setUserInteractionEnabled:0];
    v10 = [v9 gestureRecognizers];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10007AB18;
    v31[3] = &unk_10020FE00;
    v11 = v9;
    v32 = v11;
    [v10 enumerateObjectsUsingBlock:v31];
  }

  else
  {
    v11 = objc_opt_new();
    [v11 setOpaque:0];
    v12 = +[UIColor clearColor];
    [v11 setBackgroundColor:v12];

    [v11 setLineBreakMode:4];
    v13 = [*(a1 + 40) contentView];
    [v13 addSubview:v11];
  }

  if (a3 == 3)
  {
    v17 = 32770;
  }

  else
  {
    if (a3 == 1)
    {
      v14 = [*(a1 + 40) showAsCancelledOrDeclined];
      v15 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline addingSymbolicTraits:0x8000 options:0];
      v16 = [UIFont fontWithDescriptor:v15 size:0.0];
      [v11 setFont:v16];

      if (v14)
      {
        +[CalendarMessageCell strikethroughTitleColor:](CalendarMessageCell, "strikethroughTitleColor:", [*(a1 + 40) destination]);
      }

      else
      {
        +[UIColor labelColor];
      }
      v19 = ;
      [v11 setTextColor:v19];

      [v11 setDrawsStrikethrough:v14];
      v20 = [objc_opt_class() numberOfLinesForTitleLabels];
      goto LABEL_22;
    }

    v17 = 0x8000;
  }

  v15 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:v17 options:0];
  v18 = [UIFont fontWithDescriptor:v15 size:0.0];
  [v11 setFont:v18];

  if (a3 == 4)
  {
    if (CalSystemSolariumEnabled())
    {
      +[UIColor labelColor];
    }

    else
    {
      CalendarAppTintColor();
    }
    v21 = ;
    [v11 setTextColor:v21];

    [v11 setUserInteractionEnabled:1];
    v22 = [[UITapGestureRecognizer alloc] initWithTarget:*(a1 + 40) action:"actionLabelTap:"];
    [v11 addGestureRecognizer:v22];
  }

  else
  {
    if ((a3 & 0xFFFFFFFE) == 2)
    {
      +[UIColor labelColor];
    }

    else
    {
      +[UIColor secondaryLabelColor];
    }
    v22 = ;
    [v11 setTextColor:v22];
  }

  [v11 setDrawsStrikethrough:0];
  v20 = [objc_opt_class() numberOfLinesForBodyLabels];
LABEL_22:
  [v11 setNumberOfLines:v20];

  [v11 setFirstLineHeadIndent:a4];
  v23 = [*(a1 + 40) traitCollection];
  v24 = EKUIUsesLargeTextLayout();
  v25 = 0.0;
  if (v24)
  {
    v25 = 0.5;
  }

  [v11 setHyphenationFactor:v25];

  [v11 setText:v8];
  [v11 _setOverallWritingDirectionFollowsLayoutDirection:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v26) = 1144750080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v26];
  LODWORD(v27) = 1144750080;
  [v11 setContentHuggingPriority:1 forAxis:v27];
  LODWORD(v28) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v28];
  LODWORD(v29) = 1132068864;
  [v11 setContentHuggingPriority:0 forAxis:v29];

  return v11;
}

void sub_10007AB24(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = 0.0;
  if (!a3 && [*(a1 + 32) _shouldWrapTextUnderAuthor])
  {
    CalRoundToScreenScale();
    v7 = v6;
    CalRoundToScreenScale();
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:?];
    v5 = v7 + v8;
  }

  v9 = (*(*(a1 + 48) + 16))(v5);
  [*(a1 + 40) addObject:v9];
}

void sub_10007ABEC(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))(0.0);
  [v2 setNumberOfLines:2];
  [*(a1 + 32) addObject:v2];
}

const __CFString *CalendarMessageCellStringForButtonAction(uint64_t a1)
{
  if (a1 > 1023)
  {
    if (a1 >= 0x8000)
    {
      if (a1 >= 0x40000)
      {
        v1 = @"EKEventStatusButtonsActionUnsubscribe";
        v2 = @"EKEventStatusButtonsActionDeleteReminder";
        v14 = @"EKEventStatusButtonsActionRemove";
        if (a1 != 0x100000)
        {
          v14 = 0;
        }

        if (a1 != 0x80000)
        {
          v2 = v14;
        }

        v3 = a1 == 0x40000;
        goto LABEL_49;
      }

      if (a1 != 0x8000)
      {
        v1 = @"EKEventStatusButtonsActionReportJunk";
        v2 = @"EKEventStatusButtonsActionDeclineSharedCalendar";
        if (a1 != 0x20000)
        {
          v2 = 0;
        }

        v3 = a1 == 0x10000;
        goto LABEL_49;
      }

      return @"EKEventStatusButtonsActionNone";
    }

    if (a1 > 4095)
    {
      v1 = @"EKEventStatusButtonsActionAcceptNewTime";
      v2 = @"EKEventStatusButtonsActionRejectNewTime";
      v13 = @"EKEventStatusButtonsActionRespond";
      if (a1 != 0x4000)
      {
        v13 = 0;
      }

      if (a1 != 0x2000)
      {
        v2 = v13;
      }

      v3 = a1 == 4096;
      goto LABEL_49;
    }

    if (a1 == 1024 || a1 == 1792)
    {
      return @"EKEventStatusButtonsActionViewEvent";
    }

    v4 = a1 == 2048;
    v5 = @"EKEventStatusButtonsActionUpdate";
    goto LABEL_36;
  }

  if (a1 <= 15)
  {
    if (a1 <= 3)
    {
      if (a1)
      {
        v1 = @"EKEventStatusButtonsActionAccept";
        v2 = @"EKEventStatusButtonsActionMaybe";
        if (a1 != 2)
        {
          v2 = 0;
        }

        v3 = a1 == 1;
LABEL_49:
        if (v3)
        {
          return v1;
        }

        else
        {
          return v2;
        }
      }

      return @"EKEventStatusButtonsActionNone";
    }

    if (a1 == 4)
    {
      return @"EKEventStatusButtonsActionDeclineEvent";
    }

    if (a1 == 7)
    {
      return @"EKEventStatusButtonsActionNone";
    }

    v4 = a1 == 8;
    v5 = @"EKEventStatusButtonsActionAdd";
LABEL_36:
    if (v4)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  v6 = @"EKEventStatusButtonsActionIgnore";
  v7 = @"EKEventStatusButtonsActionViewComment";
  v8 = @"EKEventStatusButtonsActionViewComments";
  if (a1 != 512)
  {
    v8 = 0;
  }

  if (a1 != 256)
  {
    v7 = v8;
  }

  if (a1 != 128)
  {
    v6 = v7;
  }

  v9 = @"EKEventStatusButtonsActionDelete";
  v10 = @"EKEventStatusButtonsActionOK";
  v11 = @"EKEventStatusButtonsActionJoin";
  if (a1 != 64)
  {
    v11 = 0;
  }

  if (a1 != 32)
  {
    v10 = v11;
  }

  if (a1 != 16)
  {
    v9 = v10;
  }

  if (a1 <= 127)
  {
    return v9;
  }

  else
  {
    return v6;
  }
}

void sub_10007DE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007DE7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007DE94(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  obj = [*(a1 + 32) _castedDayOccurrenceViewFromGenericView:a2];
  [*(a1 + 32) convertPoint:*(a1 + 48) toView:*(a1 + 56)];
  if (v6 >= 0.0 && (v8 = v7, v7 >= 0.0) && (v9 = v6, [obj bounds], v9 <= v10))
  {
    [obj bounds];
    v12 = v11;
    if (([obj isSelectedCopyView] & 1) == 0 && v8 <= v12)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
      *a4 = 1;
    }
  }

  else
  {
    [obj isSelectedCopyView];
  }
}

void sub_10007E624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007E650(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [objc_opt_class() _headerBackgroundColor];
    [v4 setBackgroundColor:v2];

    v3 = [v4 _thinLineColor];
    [v4[2] setBackgroundColor:v3];

    WeakRetained = v4;
  }
}

void sub_10007E9AC(id a1)
{
  v1 = +[UIColor separatorColor];
  v2 = qword_1002519F0;
  qword_1002519F0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007F2A8(uint64_t a1)
{
  v2 = CUIKGetOverlayCalendar();
  v3 = [*(*(a1 + 32) + 72) date];
  v4 = [v2 components:24 fromDate:v3];
  if ([v4 day] != 1 || objc_msgSend(v4, "month") != 1 || objc_msgSend(v4, "isLeapMonth"))
  {
    v5 = [v2 dateByAddingUnit:4 value:1 toDate:v3 options:1024];

    v3 = v5;
  }

  v6 = [CUIKDateStrings overlayYearStringForDate:v3 inCalendar:v2];
  v7 = [CUIKDateStrings overlayFirstDayOfLunarMonthLocalizedStringInCalendar:v2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007F430;
  block[3] = &unk_10020F2E0;
  block[4] = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10007F430(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setText:*(a1 + 40)];
  [*(*(a1 + 32) + 56) setText:*(a1 + 48)];
  [*(a1 + 32) setNeedsLayout];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007F4EC;
  v3[3] = &unk_10020EB00;
  v3[4] = *(a1 + 32);
  return [UIView animateWithDuration:v3 animations:0.5];
}

id sub_10007F4EC(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setAlpha:1.0];
  [*(*(a1 + 32) + 40) setAlpha:1.0];
  [*(*(a1 + 32) + 56) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 56);

  return [v2 setAlpha:1.0];
}

void sub_10008032C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) presentingViewController];

  if (!v2)
  {
    v3 = [*(*(a1 + 32) + 40) sourceViewController];
    v4 = [v3 presentationStyleOverrideForChildViewControllers];

    if (v4 != -1)
    {
      [*(*(a1 + 32) + 40) setModalPresentationStyle:v4];
    }

    v5 = [*(a1 + 32) sourceViewController];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100080424;
    v8[3] = &unk_10020EB98;
    v8[4] = v6;
    [v5 enqueuableNavigationController:v7 requestsDeferShowViewControllerUntilReady:v8];
  }
}

void sub_100080424(uint64_t a1)
{
  v2 = [*(a1 + 32) sourceViewController];
  v3 = *(*(a1 + 32) + 40);
  v4 = [v3 popoverPresentationController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000804EC;
  v5[3] = &unk_10020EB00;
  v5[4] = *(a1 + 32);
  [v2 enqueueableManagedNavigationController:v3 requestsConfigurationOfPropertiesForPopoverPresentationController:v4 completion:v5];
}

void sub_1000804EC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) presentingViewController];

  v3 = kCalUILogHandle;
  if (v2)
  {
    if (!os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v4 = *(*(a1 + 32) + 40);
    v5 = v3;
    v6 = [v4 sourceViewController];
    v7 = *(*(a1 + 32) + 40);
    v8 = [v7 presentingViewController];
    *buf = 138412802;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Race condition: %@ asked to present %@ after it has already been presented, off of %@.", buf, 0x20u);
  }

  else
  {
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(*(a1 + 32) + 40);
      v10 = v3;
      v11 = [v9 sourceViewController];
      *buf = 138412290;
      v22 = objc_opt_class();
      v12 = v22;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@ is now ready to present the popover.", buf, 0xCu);
    }

    v13 = kCalUILogHandle;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v15 = *(a1 + 32);
      v16 = *(v15 + 40);
      if (isKindOfClass)
      {
        v16 = [*(v15 + 40) topViewController];
      }

      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[83058884] presenting deferred vc %@", buf, 0xCu);
      if (isKindOfClass)
      {
      }
    }

    v5 = [*(*(a1 + 32) + 40) sourceViewController];
    v17 = *(a1 + 32);
    v18 = *(v17 + 40);
    v19 = *(v17 + 48);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000807AC;
    v20[3] = &unk_10020EB00;
    v20[4] = v17;
    [v5 presentViewController:v18 animated:v19 completion:v20];
  }
}

void sub_1000807AC(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008083C;
  block[3] = &unk_10020EB00;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_10008226C(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleWeeks];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(a1 + 32);
    v6 = [v4 visibleWeeks];
    v5 = [v6 objectAtIndex:0];
    [v4 synchronizeWeekGroupScrollingToWeek:v5];
  }
}

void sub_100082ADC(uint64_t a1)
{
  [*(a1 + 32) updateDraggingOccurrenceFrameFromSource];
  [*(a1 + 32) updateDraggingOccurrenceOrigin];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 40) + 392);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) weekView];
        v8 = [v7 content];
        [v8 setNeedsLayout];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100082E2C(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(a1 + 32);
    [v2 setCalendarPreviewIsInlineDayView:1];
    [v2 setAllowsCalendarPreview:1];
    if (*(a1 + 40) == 2)
    {
      [v2 openAttendeesDetailItem];
    }
  }
}

id sub_1000854D0(uint64_t a1, void *a2)
{
  [a2 setAsyncLoading:0];
  v3 = *(a1 + 32);
  if (v3[107] == 1)
  {
    [v3 _reloadDataIfVisible];
  }

  else
  {
    [v3 _updateHeaderHeightsAnimated:*(a1 + 40)];
  }

  v4 = *(a1 + 32);

  return [v4 updateVisibleRects];
}

id sub_100086E18(uint64_t a1, void *a2)
{
  [a2 setAsyncLoading:0];
  v3 = *(a1 + 32);
  if (v3[107] == 1)
  {

    return [v3 _reloadDataIfVisible];
  }

  else
  {

    return [v3 _updateHeaderHeightsAnimated:1];
  }
}

uint64_t sub_100089A34(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10008A35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008A380(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008A398(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  [v17 frame];
  MinX = CGRectGetMinX(v19);
  [v17 frame];
  MaxX = CGRectGetMaxX(v20);
  v9 = *(a1 + 48);
  if (v9 < MinX)
  {
    v10 = [v17 week];
    IsLeftToRight = CalTimeDirectionIsLeftToRight();
    v12 = v10 - 1;
    if (!IsLeftToRight)
    {
      v12 = v10 + 1;
    }

    *(*(*(a1 + 32) + 8) + 24) = v12;
    v9 = *(a1 + 48);
  }

  if (v9 > MaxX)
  {
    v13 = [v17 week];
    v14 = CalTimeDirectionIsLeftToRight();
    v15 = v13 - 1;
    if (v14)
    {
      v15 = v13 + 1;
    }

    *(*(*(a1 + 32) + 8) + 24) = v15;
    v9 = *(a1 + 48);
  }

  if (v9 >= MinX && v9 <= MaxX)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10008B94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008B964(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 occurrenceViewForEvent:a1[4] occurrenceDate:a1[5] forceMatchingContentSection:0];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(a1[6] + 8) + 40))
  {
    *a4 = 1;
  }
}

id sub_10008DA80(uint64_t a1)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(*(a1 + 32) + 392);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _setHeaderHeightForWeekGroupView:*(*(&v19 + 1) + 8 * v6) forceLayout:{*(a1 + 48), v19}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 408) setHeaderHeight:*(a1 + 40)];
  v7 = 0.0;
  if (*(a1 + 49))
  {
    v7 = 1.0;
  }

  [*(*(a1 + 32) + 408) setAllDayAlpha:{v7, v19}];
  [*(*(a1 + 32) + 408) layoutSubviews];
  [*(*(a1 + 32) + 232) frame];
  v9 = v8;
  v11 = v10;
  [*(*(a1 + 32) + 408) frame];
  v12 = *(a1 + 32);
  v14 = v13 + v12[16] - v11;
  v15 = [v12 view];
  [v15 bounds];
  v17 = v16;

  return [*(*(a1 + 32) + 232) setFrame:{v9, v14, v17, v11}];
}

id sub_10008DC4C(uint64_t a1)
{
  if ([objc_msgSend(*(a1 + 32) "weekViewClass")])
  {
    v2 = *(a1 + 40) ^ 1;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(*(a1 + 32) + 232);

  return [v3 setHidden:v2 & 1];
}

void sub_10008DEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008DF00(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  [v8 frame];
  if (v7 <= *(a1 + 40) + 0.0001)
  {
    [v8 frame];
    if (CGRectGetMaxX(v10) > *(a1 + 40) + -0.0001)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_10008E0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008E100(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  [v8 frame];
  if (v7 < *(a1 + 40))
  {
    [v8 frame];
    if (CGRectGetMaxX(v10) >= *(a1 + 40))
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_100090050(uint64_t a1)
{
  v35 = +[NSMutableDictionary dictionary];
  [*(a1 + 32) _visibleOccurrenceViewsWithOptions:3];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v45 = 0u;
  v37 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v37)
  {
    v36 = *v43;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v3 = [*(*(&v42 + 1) + 8 * i) occurrence];
        v4 = [v3 UUID];

        if (v4)
        {
          v50[0] = @"startDate";
          v5 = [v3 startDate];
          v41 = v5;
          if (v5)
          {
            v6 = v5;
          }

          else
          {
            v6 = &stru_1002133B8;
          }

          v51[0] = v6;
          v50[1] = @"duration";
          [v3 duration];
          v40 = [NSNumber numberWithDouble:?];
          v51[1] = v40;
          v50[2] = @"allDay";
          v7 = [v3 isAllDay];
          v8 = @"NO";
          if (v7)
          {
            v8 = @"YES";
          }

          v51[2] = v8;
          v50[3] = @"UUID";
          v9 = [v3 UUID];
          v39 = v9;
          if (v9)
          {
            v10 = v9;
          }

          else
          {
            v10 = &stru_1002133B8;
          }

          v51[3] = v10;
          v50[4] = @"uniqueID";
          v11 = [v3 uniqueID];
          v38 = v11;
          if (v11)
          {
            v12 = v11;
          }

          else
          {
            v12 = &stru_1002133B8;
          }

          v51[4] = v12;
          v50[5] = @"externalID";
          v13 = [v3 externalID];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = &stru_1002133B8;
          }

          v51[5] = v15;
          v50[6] = @"externalURL";
          v16 = [v3 externalURL];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = &stru_1002133B8;
          }

          v51[6] = v18;
          v50[7] = @"calendarIdentifier";
          v19 = [v3 calendar];
          v20 = [v19 calendarIdentifier];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = &stru_1002133B8;
          }

          v51[7] = v22;
          v50[8] = @"sourceIdentifier";
          v23 = [v3 calendar];
          v24 = [v23 source];
          v25 = [v24 sourceIdentifier];
          v26 = v25;
          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = &stru_1002133B8;
          }

          v51[8] = v27;
          v28 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:9];

          v29 = [v3 UUID];
          [v35 setObject:v28 forKeyedSubscript:v29];
        }
      }

      v37 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v37);
  }

  v30 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v31 = v30;
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    *buf = 138543618;
    v47 = v33;
    v48 = 2114;
    v49 = v35;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ Visible Events when viewDidAppear. %{public}@", buf, 0x16u);
  }
}

void sub_100091470(id *a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:a1[4] selector:"_viewControllerAppeared:" name:EKEventEditViewControllerDidAppear object:0];

  v3 = [a1[4] application];
  [v3 startedTest:a1[5]];

  v4 = [a1[4] application];
  [v4 startedSubTest:a1[6] forTest:a1[5]];

  v5 = [a1[4] application];
  v6 = [v5 rootNavigationController];
  [v6 addEventPressed];

  v7 = [a1[4] application];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000915F0;
  v14[3] = &unk_10020F290;
  v13 = a1[4];
  v8 = a1[6];
  v9 = a1[5];
  v10 = a1[7];
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v13;
  *(&v12 + 1) = v8;
  v15 = v12;
  v16 = v11;
  [v7 installCACommitCompletionBlock:v14];
}

void sub_1000915F0(uint64_t a1)
{
  v2 = [*(a1 + 32) application];
  [v2 finishedSubTest:*(a1 + 40) forTest:*(a1 + 48)];

  v3 = [*(a1 + 32) application];
  [v3 startedSubTest:*(a1 + 56) forTest:*(a1 + 48)];
}

void sub_100091968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100091994(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained dividedListMode])
    {
      [objc_opt_class() dividedModeBackgroundColor];
    }

    else
    {
      +[UIColor systemBackgroundColor];
    }
    v3 = ;
    v4 = [v2 scrollView];
    [v4 setBackgroundColor:v3];

    v5 = *(v2 + 409);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100091A98;
    v7[3] = &unk_100210060;
    v8 = v3;
    v6 = v3;
    [v5 enumerateObjectsUsingBlock:v7];
  }
}

void sub_10009333C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009335C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) subviewForDate:a2];
  if (v7)
  {
    v18 = v7;
    v8 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    v9 = [*(a1 + 32) scrollView];
    [v8 floatValue];
    [v9 convertPoint:*(*(a1 + 32) + 505) fromView:{0.0, v10}];
    v12 = v11;

    [v18 frame];
    v14 = v13 - v12;
    v15 = [*(a1 + 32) scrollView];
    v16 = [*(a1 + 32) scrollView];
    [v16 contentOffset];
    [v15 setContentOffset:{0.0, v14 + v17}];

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;

    v7 = v18;
  }
}

void sub_100093B08(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && ![*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    if ((v2[319] & 1) == 0)
    {
      [v2 finishChangeScale];
      v3 = [*(a1 + 40) pinchToZoomAllowed];
      v4 = [*(a1 + 40) pinchRecognizer];
      [v4 setEnabled:v3];

      v5 = +[NSNotificationCenter defaultCenter];
      [v5 postNotificationName:@"MonthViewScaleAnimationFinishedNotification" object:0];
    }
  }
}

uint64_t sub_100093C0C(uint64_t a1)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

id sub_100093C54(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 _updateListViewFrame];
    v4 = 1.0;
  }

  else
  {
    [*(v3 + 289) frame];
    v6 = v5;
    v8 = v7;
    v9 = [*(a1 + 32) view];
    [v9 bounds];
    Height = CGRectGetHeight(v15);

    v4 = 0.0;
    [*(*(a1 + 32) + 289) setFrame:{0.0, Height, v6, v8}];
  }

  v11 = [*(*(a1 + 32) + 281) view];
  [v11 setAlpha:v4];

  v12 = *(*(a1 + 32) + 297);

  return [v12 setAlpha:v4];
}

uint64_t sub_100093D4C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 281) view];
  [v2 setAlpha:1.0];

  [*(*(a1 + 32) + 297) setAlpha:1.0];
  [*(*(a1 + 32) + 289) setUserInteractionEnabled:{objc_msgSend(*(a1 + 32), "dividedListMode")}];
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(*(a1 + 32) + 289) setHidden:1];
    [*(*(a1 + 32) + 281) setDisabled:1];
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 321);
  *(v3 + 321) = 0;

  [*(a1 + 32) _updateNavigationControllerBackButton];
  *(*(a1 + 32) + 319) = 0;
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_100094204(uint64_t a1, int a2)
{
  [*(a1 + 32) setDisableTodayPulse:0];
  if (a2)
  {
    v8 = CUIKTodayComponents();
    v4 = [*(a1 + 40) month];
    if (v4 == [v8 month] && (v5 = objc_msgSend(*(a1 + 40), "year"), v5 == objc_msgSend(v8, "year")))
    {
      v6 = [*(a1 + 56) calendarDateForDay];
    }

    else
    {
      v6 = [*(a1 + 40) calendarDateForMonth];
    }

    v7 = v6;
    [*(*(a1 + 48) + 8) setSelectedDate:v6];

    [*(a1 + 48) _animateChangeToWeekSize:*(a1 + 64) divided:*(a1 + 72)];
  }
}

void sub_100094BEC(uint64_t a1)
{
  [*(a1 + 32) finishChangeScale];
  v2 = [*(a1 + 32) pinchToZoomAllowed];
  v3 = [*(a1 + 32) pinchRecognizer];
  [v3 setEnabled:v2];
}

void sub_100094D24(uint64_t a1)
{
  if ([*(a1 + 32) dividedListMode])
  {
    v2 = *(a1 + 32);
    v4 = [v2 model];
    v3 = [v4 selectedDay];
    [v2 reinitializeAllViewsWithCalendarDate:v3];
  }
}

id sub_1000955F0(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 316) == 1)
  {
    *(v1 + 316) = 0;
    *(*(result + 4) + 315) = 0;
    return [*(result + 4) _loadEventsForAllSubviews];
  }

  return result;
}

void sub_100095BF0(uint64_t a1)
{
  v2 = [*(a1 + 32) scrollView];
  [v2 setContentOffset:1 animated:{*(a1 + 40), *(a1 + 48)}];
}

void sub_100097788(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 resetTimeZone:v2];
  [v3 resetTodayBits];
}

void sub_100097BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100097BC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100097BD8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  [*(a1 + 32) locationInView:v11];
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 bounds];
    v13.x = v8;
    v13.y = v10;
    if (CGRectContainsPoint(v14, v13) && ([v11 isHidden] & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_100097E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100097E64(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  [*(a1 + 32) locationInView:v11];
  v8 = v7;
  v10 = v9;
  if (([v11 isHidden] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 bounds];
      v13.x = v8;
      v13.y = v10;
      if (CGRectContainsPoint(v14, v13))
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *a4 = 1;
      }
    }
  }
}

void sub_100098124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009813C(uint64_t a1, void *a2, _BYTE *a3)
{
  v22 = a2;
  v6 = [*(a1 + 32) scrollView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [*(a1 + 32) scrollView];
  [v11 contentOffset];
  v13 = v12;
  v14 = [*(a1 + 32) scrollView];
  [v14 safeAreaInsets];
  v16 = v13 + v15;

  [*(*(a1 + 32) + 289) frame];
  v18 = v17;
  v19 = [*(a1 + 32) scrollView];
  [v19 safeAreaInsets];
  v21 = v18 - v20;

  v24.origin.x = v8;
  v24.origin.y = v16;
  v24.size.width = v10;
  v24.size.height = v21;
  if (CGRectContainsPoint(v24, *(a1 + 48)))
  {
    [v22 frame];
    if (CGRectContainsPoint(v25, *(a1 + 48)))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a3 = 1;
    }
  }
}

void sub_1000993C8(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 calendarDate];
  [v3 absoluteTime];
  v5 = v4;

  v6 = [v9 endCalendarDate];
  [v6 absoluteTime];
  v8 = v7;

  if (v5 <= *(a1 + 40) && v8 >= *(a1 + 48))
  {
    [*(a1 + 32) _loadEventDataForMonthWeekView:v9];
  }
}

void sub_100099574(id *a1)
{
  v2 = [a1[4] _loadEventsForStartDate:a1[5] endDate:a1[6]];
  v3 = *(a1[4] + 1);
  v4 = [a1[5] date];
  v5 = [a1[6] date];
  v6 = [v3 occurrencesForStartDate:v4 endDate:v5 preSorted:1 waitForLoad:1];
  v7 = [v6 occurrences];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000996E8;
  v10[3] = &unk_1002101C0;
  v11 = a1[5];
  v12 = a1[7];
  v13 = a1[6];
  v14 = v2;
  v15 = a1[4];
  v16 = v7;
  v8 = v7;
  v9 = v2;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_1000996E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = [*(a1 + 40) calendarDate];
  if ([v2 isEqual:?])
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 40) endCalendarDate];
    LODWORD(v3) = [v3 isEqual:v4];

    if (v3)
    {
      v5 = *(a1 + 56);
      if (v5)
      {
        [*(a1 + 40) setEventData:v5 animated:{objc_msgSend(*(a1 + 64), "_shouldAnimateDots")}];
      }

      v6 = *(a1 + 40);
      v7 = *(a1 + 72);
      v8 = [*(a1 + 64) _shouldAnimateDots];

      [v6 setOccurrences:v7 animated:v8];
    }
  }

  else
  {
  }
}

void sub_10009A3EC(uint64_t a1)
{
  [*(*(a1 + 32) + 8) numberOfDaysWithCachedOccurrences];
  v7 = 0;
  v6 = 0;
  [*(a1 + 32) _dayIndexesForRangeStart:*(a1 + 40) rangeEnd:*(a1 + 48) outFirstDayIndex:&v7 outLastDayIndex:&v6];
  v2 = v7;
  if (v7 <= v6)
  {
    do
    {
      v3 = [*(*(a1 + 32) + 8) cachedSpecialDayDataForSection:v2];
    }

    while (v2++ < v6);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009A4E8;
  block[3] = &unk_10020EB00;
  block[4] = *(a1 + 32);
  dispatch_sync(&_dispatch_main_q, block);
}

void sub_10009A960(uint64_t a1, void *a2)
{
  v39 = a2;
  v3 = [*(a1 + 32) traitCollection];
  [UITraitCollection _setCurrentTraitCollection:v3];

  [v39 frame];
  v5 = [NSNumber numberWithDouble:v4];
  [*(a1 + 40) addObject:v5];
  if ([*(a1 + 32) dividedListMode])
  {
    [objc_opt_class() dividedModeBackgroundColor];
  }

  else
  {
    +[UIColor systemBackgroundColor];
  }
  v6 = ;
  [v39 setBackgroundColor:v6];

  [v39 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ([*(a1 + 32) dividedListMode])
  {
    v15 = [*(a1 + 32) scrollView];
    [v39 rectForCells];
    [v15 convertRect:v39 fromView:?];
    v8 = v16;
    v10 = v17;
    v12 = v18;
    v14 = v19;
  }

  v42.origin.x = v8;
  v42.origin.y = v10;
  v42.size.width = v12;
  v42.size.height = v14;
  if (CGRectContainsRect(*(a1 + 64), v42))
  {
    [v39 setHidden:1];
  }

  else
  {
    [v39 frame];
    v43.origin.x = v20;
    v43.origin.y = v21;
    v43.size.width = v22;
    v43.size.height = v23;
    v41 = CGRectIntersection(*(a1 + 64), v43);
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
    if (!CGRectIsNull(v41))
    {
      if (height > 10.0)
      {
        [v39 setTemporarilyHideWeekNumber:1];
      }

      v28 = [*(a1 + 32) scrollView];
      [v28 convertRect:v39 toView:{x, y, width, height}];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v37 = [[UIView alloc] initWithFrame:{v30, v32, v34, v36}];
      v38 = +[UIColor systemBackgroundColor];
      [v37 setBackgroundColor:v38];

      [v39 addSubview:v37];
      [*(a1 + 48) addObject:v37];
    }
  }

  [*(a1 + 56) addObject:v39];
}

void sub_10009AE88(id a1, InfiniteScrollViewSubview *a2, BOOL *a3)
{
  v4 = a2;
  if ([(InfiniteScrollViewSubview *)v4 isHidden])
  {
    [(InfiniteScrollViewSubview *)v4 setHidden:0];
  }

  v3 = +[UIColor clearColor];
  [(InfiniteScrollViewSubview *)v4 setBackgroundColor:v3];
}

id sub_10009B450(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 329) setAlpha:v1];
}

void sub_10009BDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10009BE20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v13 = v3;
  v5 = [v3 calendarDate];
  [v5 absoluteTime];
  if (v4 <= v6)
  {
    v7 = [v13 calendarDate];
    [v7 absoluteTime];
    v9 = v8;
    v10 = *(a1 + 56);

    if (v9 <= v10)
    {
      [v13 frame];
      if (v11 < *(*(*(a1 + 32) + 8) + 24))
      {
        [v13 frame];
        *(*(*(a1 + 32) + 8) + 24) = v12;
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  else
  {
  }
}

uint64_t sub_10009C040(uint64_t a1)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v3 = *(a1 + 40);
    if (v3 == 3)
    {
      v5 = *(a1 + 32);

      return [v5 editButtonTapped];
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 32);

      return [v4 openAttendeesDetailItem];
    }
  }

  return result;
}

uint64_t sub_10009C294(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10009C4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009C4FC(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  [v10 frame];
  if (CGRectContainsPoint(v12, *(a1 + 48)))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = [*(a1 + 32) scrollView];
      [v7 convertPoint:*(*(*(a1 + 40) + 8) + 40) toView:{*(a1 + 48), *(a1 + 56)}];
      *v6 = v8;
      v6[1] = v9;
    }

    *a3 = 1;
  }
}

void sub_10009D0BC(id *a1)
{
  v2 = [a1[4] view];
  [v2 setHidden:0];

  v3 = [a1[5] transitionView];
  [v3 removeFromSuperview];

  [a1[6] setAnimatingViewTransition:0];
  [a1[7] setAnimatingViewTransition:0];
  [a1[8] completeTransition:1];
  v4 = [a1[9] view];
  [v4 setHidden:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"YearMonthAnimator_MonthToYearAnimationCompleteNotification" object:0];
}

void sub_10009D190(id *a1)
{
  v2 = [a1[4] view];
  [v2 setHidden:0];

  v3 = [a1[5] view];
  [v3 setHidden:0];

  v4 = [a1[6] transitionView];
  [v4 removeFromSuperview];

  [a1[7] setAnimatingViewTransition:0];
  [a1[8] setAnimatingViewTransition:0];
  [a1[9] completeTransition:1];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"YearMonthAnimator_YearToMonthAnimationCompleteNotification" object:0];
}

void sub_10009E5F4(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_100251A08;
  qword_100251A08 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009F288(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a3 + 1;
  v7 = *(a1 + 32);
  v8 = v5;
  if ([v5 isSelected] != (v6 == v7))
  {
    [v8 setSelected:v6 == v7];
  }
}