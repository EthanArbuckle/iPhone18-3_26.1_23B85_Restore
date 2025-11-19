uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1000034B4();
  v5 = UIApplicationMain(a1, a2, @"RCApplication", @"RecorderAppDelegate");
  objc_autoreleasePoolPop(v4);
  return v5;
}

void sub_1000034B4()
{
  if (RCDeviceUnlockedSinceBoot())
  {
    attr = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v0 = dispatch_queue_create([@"com.apple.VoiceMemos.RCPersistentContainer-warmup" UTF8String], attr);
    dispatch_async(v0, &stru_10028BF90);
  }
}

void sub_1000035C4(id a1)
{
  v1 = [RCApplicationContainer alloc];
  v4 = RCCloudRecordingsStoreURL();
  v2 = [(RCApplicationContainer *)v1 initWithURL:v4];
  v3 = qword_1002D70E0;
  qword_1002D70E0 = v2;
}

id sub_100003690()
{
  result = [objc_allocWithZone(type metadata accessor for TranscriptionAvailabilityProvider()) init];
  qword_1002E8DC0 = result;
  return result;
}

char *sub_100003708()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10VoiceMemos33TranscriptionAvailabilityProvider_deviceIsSupportedSubject;
  sub_1000C773C(&qword_1002CFD98);
  swift_allocObject();
  *&v0[v2] = CurrentValueSubject.init(_:)();
  *&v0[OBJC_IVAR____TtC10VoiceMemos33TranscriptionAvailabilityProvider_cancellable] = 0;
  v3 = OBJC_IVAR____TtC10VoiceMemos33TranscriptionAvailabilityProvider_observers;
  sub_1000C773C(&qword_1002D2010);
  v4 = swift_allocObject();
  *(v4 + 16) = [objc_opt_self() weakObjectsHashTable];
  *&v1[v3] = v4;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TranscriptionAvailabilityProvider();
  v5 = objc_msgSendSuper2(&v9, "init");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000396C();
  v6 = v5;

  v7 = Publisher<>.sink(receiveValue:)();

  *&v6[OBJC_IVAR____TtC10VoiceMemos33TranscriptionAvailabilityProvider_cancellable] = v7;

  return v6;
}

uint64_t sub_1000038A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000396C()
{
  result = qword_1002D2018;
  if (!qword_1002D2018)
  {
    sub_1000C7784(&qword_1002CFD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2018);
  }

  return result;
}

void sub_1000039D8(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(*(Strong + OBJC_IVAR____TtC10VoiceMemos33TranscriptionAvailabilityProvider_observers) + 16);

    v5 = [v4 allObjects];
    sub_1000C773C(&qword_1002D2020);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v7; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v9 = *(v6 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          [v9 deviceTranscriptionSupportDidChange:v1];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_100003C7C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003CBC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000C773C(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100003EE8(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RecorderAppDelegate defaultSceneDelegate]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- Could not find defaultSceneDelegate in list of connected scenes", &v1, 0xCu);
}

unint64_t sub_100003F6C()
{
  result = qword_1002D1E70;
  if (!qword_1002D1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1E70);
  }

  return result;
}

uint64_t sub_100003FC4(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D1E58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1000047F8(void *a1)
{
  v3 = OBJC_IVAR____TtC10VoiceMemos28RCUserActivityStatePublisher_userActivityChangedSubject;
  sub_1000C773C(&qword_1002D0748);
  swift_allocObject();
  *&v1[v3] = PassthroughSubject.init()();
  *&v1[OBJC_IVAR____TtC10VoiceMemos28RCUserActivityStatePublisher_currentUserActivityKVOObservation] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for RCUserActivityStatePublisher();
  v4 = objc_msgSendSuper2(&v9, "init");
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = v4;
  v6 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v7 = *&v5[OBJC_IVAR____TtC10VoiceMemos28RCUserActivityStatePublisher_currentUserActivityKVOObservation];
  *&v5[OBJC_IVAR____TtC10VoiceMemos28RCUserActivityStatePublisher_currentUserActivityKVOObservation] = v6;

  return v5;
}

id sub_100004930@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentUserActivity];
  *a2 = result;
  return result;
}

id sub_10000496C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 activityType];
  *a2 = result;
  return result;
}

uint64_t sub_1000049B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100004A44(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002D7090;
  qword_1002D7090 = v1;
}

void sub_100004E3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100004EE0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_1000052C8(id a1)
{
  v1 = [RCRecordingsModelInteractor alloc];
  v4 = +[RCApplicationModel sharedApplicationModel];
  v2 = [(RCRecordingsModelInteractor *)v1 initWithSavedRecordingsModel:v4];
  v3 = qword_1002D70A8;
  qword_1002D70A8 = v2;
}

void sub_100005398(id a1)
{
  v1 = objc_alloc_init(RCApplicationModel);
  v2 = qword_1002D7120;
  qword_1002D7120 = v1;
}

void sub_1000056B0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002D6FD8;
  qword_1002D6FD8 = v1;

  v3 = qword_1002D6FD8;

  [v3 set_horizontalSizeClassFromSplitView:0];
}

UIMenu sub_100006014(char a1, char a2, char a3, char a4, char a5)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v9 = &_swiftEmptyArrayStorage;
  v28 = &_swiftEmptyArrayStorage;
  if (a4)
  {
    sub_1000C773C(&unk_1002CE190);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1002432F0;
    *(v9 + 32) = sub_10018FDD4();
    v28 = v9;
    v10 = &selRef_redoEditing;
    if ((a1 & 1) == 0)
    {
LABEL_3:
      if (a2)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v10 = &selRef_redoEditing;
    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v14 = [objc_opt_self() sharedStyleProvider];
  v15 = [v14 copyTranscriptImage];

  v16._object = 0x800000010022F1F0;
  v16._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v16);
  sub_1000067AC(0, &qword_1002CFE60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = v15;
  swift_retain_n();
  v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v19 = String._bridgeToObjectiveC()();
  v10 = &selRef_redoEditing;

  [v18 setAccessibilityIdentifier:v19];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v9 = v28;
  if (a2)
  {
LABEL_4:
    if ((a3 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  sub_10018F824();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v9 = v28;
  if ((a3 & 1) == 0)
  {
LABEL_5:
    if ((a5 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_19:
    v20 = [objc_opt_self() sharedStyleProvider];
    v21 = [v20 shareToolbarMenuImage];

    v22._countAndFlagsBits = 0x654D65726168532FLL;
    v22._object = 0xEE006D657449756ELL;
    String.append(_:)(v22);
    sub_1000067AC(0, &qword_1002CFE60);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = v21;
    swift_retain_n();
    v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v25 = String._bridgeToObjectiveC()();

    [v24 v10[245]];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v28;
    if (!(v28 >> 62))
    {
      goto LABEL_7;
    }

LABEL_22:
    sub_1000067AC(0, &qword_1002CFE50);

    v11 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_8;
  }

LABEL_16:
  sub_10018FAFC();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v9 = v28;
  if (a5)
  {
    goto LABEL_19;
  }

LABEL_6:
  if (v9 >> 62)
  {
    goto LABEL_22;
  }

LABEL_7:

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_1000067AC(0, &qword_1002CFE50);
  v11 = v9;
LABEL_8:

  sub_1000067AC(0, &qword_1002CFE58);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v29.value.super.isa = 0;
  v29.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v12, 0, v29, 0, 0xFFFFFFFFFFFFFFFFLL, v11, v26);
}

uint64_t sub_100006768()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000067AC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10000685C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10VoiceMemos33TranscriptionAvailabilityProvider_observers);
  v4 = *(v3 + 16);

  if (([v4 containsObject:a1] & 1) == 0)
  {
    v5 = *(v3 + 16);
    [v5 addObject:a1];
  }
}

id sub_100007448(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_styleProvider;
  *&v2[v4] = [objc_opt_self() sharedStyleProvider];
  v5 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_flexibleSpace;
  sub_1000067AC(0, &qword_1002D6E20);
  v17.value.super.super.isa = 0;
  v17.is_nil = 0;
  *&v2[v5] = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemFlexibleSpace, v17, v19);
  v6 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_fixedSpace;
  v18.value.super.super.isa = 0;
  v18.is_nil = 0;
  *&v2[v6] = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemFixedSpace, v18, v20);
  v7 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_playbackSettingsButtonItem;
  *&v2[v7] = [objc_allocWithZone(UIBarButtonItem) init];
  v8 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_transcriptionButtonItem;
  *&v2[v8] = [objc_allocWithZone(UIBarButtonItem) init];
  v9 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_trimButtonItem;
  *&v2[v9] = [objc_allocWithZone(UIBarButtonItem) init];
  v10 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_undoButtonItem;
  *&v2[v10] = [objc_allocWithZone(UIBarButtonItem) init];
  v11 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_cancelButtonItem;
  *&v2[v11] = [objc_allocWithZone(UIBarButtonItem) init];
  v12 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_moreActionsButtonItem;
  *&v2[v12] = [objc_allocWithZone(UIBarButtonItem) init];
  v13 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_applyButtonItem;
  *&v2[v13] = [objc_allocWithZone(UIBarButtonItem) init];
  *&v2[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper____lazy_storage___defaultDoneButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper____lazy_storage___menuDoneButtonItem] = 0;
  v2[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__doneButtonItemShowsMenu] = 1;
  *&v2[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__activityMode] = 0;
  *&v2[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__displayMode] = 0;
  v2[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__canSave] = 0;
  v2[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__canUndo] = 0;
  v2[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__canCancel] = 0;
  v2[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__hasPlaybackSettings] = 0;
  v2[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__isTranscriptViewDisplayed] = 0;
  v2[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__hasNoTranscribableContent] = 0;
  *&v2[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__moreMenu] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v16.receiver = v2;
  v16.super_class = type metadata accessor for RCRecordingViewNavigationBarHelper();
  v14 = objc_msgSendSuper2(&v16, "init");
  sub_1000076C8();

  return v14;
}

void sub_1000076C8()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8, v2);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__activityMode) == 3)
    {
      sub_1001B2A0C();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v8 = v7;
    }

    else
    {
      sub_1001B262C();
      v8 = 0;
    }

    sub_1001B2B14();
    sub_1000067AC(0, &qword_1002D6E20);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setLeftBarButtonItems:isa];

    v10 = Array._bridgeToObjectiveC()().super.isa;

    [v6 setRightBarButtonItems:v10];

    if (v8)
    {
      v11 = String._bridgeToObjectiveC()();
    }

    else
    {
      v11 = 0;
    }

    [v6 setTitle:v11];
  }
}

__n128 initializeBufferWithCopyOfBuffer for AutoScrollType(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007C08()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_100007C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C773C(&qword_1002CE5A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1000097BC(v5, v6);
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

uint64_t sub_100007D54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100007D78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000C773C(&qword_1002CE5A8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_100008020(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100008034(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10000807C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 40);
  v4 = v3 == 2;
  v5 = a2[1].n128_u8[0];
  if (v3 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v3 & 1;
  }

  v7 = vdup_n_s32(v4);
  v8.i64[0] = v7.u32[0];
  v8.i64[1] = v7.u32[1];
  *a3 = vandq_s8(*(a1 + 24), vcgezq_s64(vshlq_n_s64(v8, 0x3FuLL)));
  *(a3 + 16) = v6;
  result = *a2;
  *(a3 + 24) = *a2;
  *(a3 + 40) = v5;
  return result;
}

__int128 *sub_1000080C4@<X0>(__int128 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 40);
  if (v2 == 2)
  {
    v3 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  else
  {
    v5 = *(result + 24);
    v3 = *(result + 16);
    LOBYTE(v2) = v2 & 1;
    v4 = *result;
  }

  *a2 = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 40) = v2;
  return result;
}

uint64_t sub_100008104(Swift::UInt a1, Swift::UInt a2, int a3, uint64_t a4, Swift::UInt a5, char a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100009A0C(a1, a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

unint64_t sub_1000081B0()
{
  result = qword_1002CF718;
  if (!qword_1002CF718)
  {
    type metadata accessor for RCRecordButtonViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF718);
  }

  return result;
}

uint64_t sub_100008208(uint64_t a1)
{
  if (!*(v1 + 24))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v5);
    sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Color.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 24) = a1;
}

uint64_t sub_100008378(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
}

uint64_t sub_1000083C4()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_10000A720(*(v0 + 16), v1 | *(v0 + 24));
}

uint64_t sub_1000083F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v5 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v5 - 8, v6);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = __chkstk_darwin(v10, v11);
  v65 = &v63 - v13;
  __chkstk_darwin(v12, v14);
  v66 = &v63 - v15;
  v63 = v16;
  if (a2 == 2)
  {
    v27 = objc_opt_self();
    v28 = [v27 mainBundle];
    v70._object = 0x800000010022E550;
    v29._object = 0x800000010022E530;
    v70._countAndFlagsBits = 0xD000000000000021;
    v29._countAndFlagsBits = 0xD000000000000011;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v70);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v31 = [v27 mainBundle];
    v71._object = 0x800000010022E5A0;
    v32._countAndFlagsBits = 0xD000000000000012;
    v32._object = 0x800000010022E580;
    v71._countAndFlagsBits = 0xD00000000000001ALL;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v71);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v24 = "Replace Layer Two AX label";
    v25 = 0x800000010022E5E0;
    v26 = [v27 mainBundle];
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v17 = objc_opt_self();
    v18 = [v17 mainBundle];
    v68._object = 0x800000010022E620;
    v19._object = 0x800000010022E600;
    v68._countAndFlagsBits = 0xD000000000000021;
    v19._countAndFlagsBits = 0xD000000000000011;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v68);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v21 = [v17 mainBundle];
    v69._object = 0x800000010022E670;
    v22._countAndFlagsBits = 0xD000000000000012;
    v22._object = 0x800000010022E650;
    v69._countAndFlagsBits = 0xD00000000000001ALL;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v69);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v24 = "Replace Layer One AX label";
    v25 = 0x800000010022E6B0;
    v26 = [v17 mainBundle];
LABEL_5:
    v34 = v26;
    v61 = v25;
    v35 = v24 | 0x8000000000000000;
    v36 = 0xD000000000000019;
    v37 = 0xD000000000000011;
    goto LABEL_7;
  }

  v38 = objc_opt_self();
  v39 = [v38 mainBundle];
  v72._object = 0xEF6C6562616C2058;
  v40._countAndFlagsBits = 0x524F4345525F5841;
  v72._countAndFlagsBits = 0x412064726F636552;
  v40._object = 0xE900000000000044;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v72);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v42 = [v38 mainBundle];
  v73._countAndFlagsBits = 0xD000000000000010;
  v73._object = 0x800000010022E510;
  v43._countAndFlagsBits = 0x414C5045525F5841;
  v43._object = 0xEA00000000004543;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v73);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v34 = [v38 mainBundle];
  v61 = 0xEF6C6562616C2058;
  v37 = 0x4D555345525F5841;
  v36 = 0x4120656D75736552;
  v35 = 0xE900000000000045;
LABEL_7:
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v37, 0, v34, v45, *&v36);

  AttributeContainer.init()();
  v46 = v63;
  AttributedString.init(_:attributes:)();
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v47 = *(v8 + 8);
        v47(v46, v7);
        v47(v66, v7);
        return (*(v8 + 32))(v64, v65, v7);
      }

      if (a1 == 4)
      {
        v57 = *(v8 + 8);
        v57(v65, v7);
        v57(v66, v7);
        return (*(v8 + 32))(v64, v46, v7);
      }

      goto LABEL_24;
    }

    v53 = [objc_opt_self() mainBundle];
    v62 = 0xED00006C6562616CLL;
    v54 = 0x504F54535F5841;
    v55 = 0x20584120706F7453;
    v56 = 0xE700000000000000;
    goto LABEL_20;
  }

  if (a1)
  {
    if (a1 != 1)
    {
LABEL_24:
      *&v67 = a1;
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    v53 = [objc_opt_self() mainBundle];
    v62 = 0xEE006C6562616C20;
    v54 = 0x45535541505F5841;
    v55 = 0x5841206573756150;
    v56 = 0xE800000000000000;
LABEL_20:
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v54, 0, v53, v58, *&v55);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v59 = *(v8 + 8);
    v59(v46, v7);
    v59(v65, v7);
    return (v59)(v66, v7);
  }

  v49 = [objc_opt_self() preferredLanguages];
  v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v50 + 16))
  {

    v51._countAndFlagsBits = 28261;
    v51._object = 0xE200000000000000;
    v52 = String.hasPrefix(_:)(v51);

    if (v52)
    {
      v67 = xmmword_1002427E0;
      sub_100008D2C();
      AttributedString.subscript.setter();
    }
  }

  else
  {
  }

  v60 = *(v8 + 8);
  v60(v46, v7);
  v60(v65, v7);
  return (*(v8 + 32))(v64, v66, v7);
}

unint64_t sub_100008D2C()
{
  result = qword_1002CF710;
  if (!qword_1002CF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF710);
  }

  return result;
}

uint64_t type metadata accessor for RCRecordButtonViewModel()
{
  result = qword_1002D5088;
  if (!qword_1002D5088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008FA4()
{
  v1 = v0;
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8, v3);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  v7 = &selRef_setupAppIntentsDataSource;
  while (2)
  {
    v8 = 0;
    v9 = *(&off_10028CA78 + v5 + 4);
    v56 = v5 + 1;
    v58 = v9;
    do
    {
      if (RCOverdubRecordingIsEnabled())
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      if (v9)
      {
        if (v9 == 4)
        {
          if (!v10)
          {
            goto LABEL_19;
          }

          Image.init(systemName:)();
          LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v18._countAndFlagsBits = 0x20454D55534552;
          v18._object = 0xE700000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
          v19._countAndFlagsBits = 0;
          v19._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
          LocalizedStringKey.init(stringInterpolation:)();
LABEL_21:
          v13 = Text.init(_:tableName:bundle:comment:)();
          v15 = v22;
          v61 = v23;
          v62 = v24;

LABEL_22:
          v25 = objc_opt_self();
          v26 = [v25 v7[32]];
          v27 = [v26 recordingControlTextFont];

          v28 = Font.init(_:)();
          if (v9 && v9 != 3)
          {
            v29 = &selRef_recordingControlFontColorResume;
          }

          else
          {
            v29 = &selRef_recordingControlFontColor;
          }

          v30 = [v25 v7[32]];
          v31 = [v30 *v29];

          v32 = Color.init(_:)();
          v60 = v15;
          sub_100007D54(v13, v15, v61 & 1);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v6 = sub_10000969C(0, *(v6 + 2) + 1, 1, v6);
          }

          v35 = *(v6 + 2);
          v34 = *(v6 + 3);
          if (v35 >= v34 >> 1)
          {
            v6 = sub_10000969C((v34 > 1), v35 + 1, 1, v6);
          }

          *(v6 + 2) = v35 + 1;
          v36 = v6;
          v37 = &v6[48 * v35];
          v38 = v60;
          *(v37 + 4) = v59;
          *(v37 + 5) = v38;
          v37[48] = v61 & 1;
          *(v37 + 7) = v62;
          *(v37 + 8) = v28;
          *(v37 + 9) = v32;
          swift_beginAccess();
          v9 = swift_isUniquelyReferenced_nonNull_native();
          v63 = *(v1 + 48);
          v39 = v63;
          v40 = v1;
          *(v1 + 48) = 0x8000000000000000;
          v42 = sub_1000097BC(v58, v8);
          v43 = v39[2];
          v44 = (v41 & 1) == 0;
          v45 = v43 + v44;
          if (__OFADD__(v43, v44))
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            v64 = v9;
            result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
            __break(1u);
            return result;
          }

          v46 = v41;
          if (v39[3] >= v45)
          {
            if ((v9 & 1) == 0)
            {
              sub_1000CBABC();
            }

            v9 = v58;
            v49 = v63;
            if ((v46 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else
          {
            sub_100007D78(v45, v9);
            v9 = v58;
            v47 = sub_1000097BC(v58, v8);
            if ((v46 & 1) != (v48 & 1))
            {
              goto LABEL_43;
            }

            v42 = v47;
            v49 = v63;
            if ((v46 & 1) == 0)
            {
LABEL_38:
              v49[(v42 >> 6) + 8] |= 1 << v42;
              v50 = (v49[6] + 16 * v42);
              *v50 = v9;
              v50[1] = v8;
              *(v49[7] + 8 * v42) = v35;
              v51 = v49[2];
              v52 = __OFADD__(v51, 1);
              v53 = v51 + 1;
              if (v52)
              {
                goto LABEL_42;
              }

              v49[2] = v53;
              goto LABEL_5;
            }
          }

          *(v49[7] + 8 * v42) = v35;
LABEL_5:
          v1 = v40;
          *(v40 + 48) = v49;
          swift_endAccess();
          sub_100008020(v59, v60, v61 & 1);

          v6 = v36;
          v7 = &selRef_setupAppIntentsDataSource;
          goto LABEL_6;
        }

        if (v9 == 3)
        {
          if (v10)
          {
            Image.init(systemName:)();
            LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v20._countAndFlagsBits = 0x204543414C504552;
            v20._object = 0xE800000000000000;
            LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v20);
            LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
            v21._countAndFlagsBits = 0;
            v21._object = 0xE000000000000000;
            LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
            LocalizedStringKey.init(stringInterpolation:)();
            goto LABEL_21;
          }

LABEL_19:
          LocalizedStringKey.init(stringLiteral:)();
LABEL_20:
          v13 = Text.init(_:tableName:bundle:comment:)();
          v15 = v14;
          v61 = v16;
          v62 = v17;
          goto LABEL_22;
        }
      }

      else if (v10 == 2)
      {
        LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
        Image.init(systemName:)();
        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

        v12._countAndFlagsBits = 0;
        v12._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
        LocalizedStringKey.init(stringInterpolation:)();
        goto LABEL_20;
      }

LABEL_6:
      ++v8;
    }

    while (v8 != 3);
    v5 = v56;
    if (v56 != 5)
    {
      continue;
    }

    break;
  }

  *(v1 + 40) = v6;
}

char *sub_10000969C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000C773C(&qword_1002D0020);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000097BC(Swift::UInt a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  v4 = Hasher._finalize()();

  return sub_1000D3454(a1, a2, v4);
}

unint64_t sub_10000983C()
{
  result = qword_1002CF690;
  if (!qword_1002CF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF690);
  }

  return result;
}

unint64_t sub_1000098A0()
{
  result = qword_1002CF6C0;
  if (!qword_1002CF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF6C0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for RCRecordButtonModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCRecordButtonModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100009A0C(Swift::UInt a1, Swift::UInt a2, int a3, uint64_t a4, Swift::UInt a5, int a6)
{
  v7 = v6;
  v63 = a5;
  v13 = type metadata accessor for AttributedString();
  __chkstk_darwin(v13 - 8, v14);
  v16 = *(v7 + 16);
  if (a4 > 4)
  {

    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  v58 = a1;
  v62 = a6;
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a3;
  v59 = a2;
  if (((1 << a4) & 0x1A) != 0)
  {
    v17 = 1;
    if (*(v16 + 16) == 1)
    {
LABEL_4:
      *(v16 + 16) = v17;
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0;
    if ((*(v16 + 16) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath, v19);
  *(&v57 - 2) = v16;
  *(&v57 - 8) = v17;
  v64 = v16;
  sub_1000081B0();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_7:
  v20 = *(v7 + 16);
  v21 = *(v7 + 57);
  if (v21 == *(v20 + 17))
  {
    *(v20 + 17) = v21;
  }

  else
  {
    v22 = swift_getKeyPath();
    __chkstk_darwin(v22, v23);
    *(&v57 - 2) = v20;
    *(&v57 - 8) = v21;
    v64 = v20;
    sub_1000081B0();

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v24 = *(v7 + 16);
  if (a4 > 2)
  {
    v26 = (v24 + 18);
    LOBYTE(v25) = 3;
    if (*(v24 + 18) == 3)
    {
LABEL_19:
      *v26 = v25;
      goto LABEL_20;
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = (v24 + 18);
    if (*(v24 + 18) == v25)
    {
      goto LABEL_19;
    }
  }

  v27 = swift_getKeyPath();
  __chkstk_darwin(v27, v28);
  *(&v57 - 2) = v24;
  *(&v57 - 8) = v25;
  v64 = v24;
  sub_1000081B0();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_20:
  if (a4 >= 3)
  {

    v32 = 0;
  }

  else
  {
    v29 = objc_opt_self();

    v30 = [v29 sharedStyleProvider];
    v31 = [v30 recordingControlInnerColor];

    v32 = Color.init(_:)();
  }

  sub_100008208(v32);

  v33 = sub_10000A3A4(a4);
  sub_10000A234(v33);

  v34 = *(v7 + 16);
  v35 = *(v7 + 40);
  v36 = swift_getKeyPath();
  __chkstk_darwin(v36, v37);
  *(&v57 - 2) = v34;
  *(&v57 - 1) = v35;
  v64 = v34;
  v38 = sub_1000081B0();

  v57 = v38;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (*(v7 + 56))
  {
    swift_beginAccess();
    v39 = *(v7 + 48);
    if (*(v39 + 16) && (v40 = sub_1000097BC(a4, v63), (v41 & 1) != 0))
    {
      v42 = 0;
      v43 = *(*(v39 + 56) + 8 * v40);
    }

    else
    {
      v43 = 0;
      v42 = 1;
    }

    sub_10000A47C(v43, v42);
  }

  v44 = *(v7 + 16);

  v45 = v63;
  v46 = sub_10000A5B8(v58, v59, v60, a4, v63);
  v47 = v46;
  v48 = v46 > 0xFFu;
  v49 = swift_getKeyPath();
  __chkstk_darwin(v49, v50);
  *(&v57 - 2) = v44;
  *(&v57 - 8) = v47 & 1;
  *(&v57 - 7) = v48;
  v65 = v44;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v51 = v61;
  sub_1000083F8(a4, v45, v61);
  sub_10000A734(v51);

  v53 = *(v7 + 16);
  v54 = (v62 ^ 1) & 1;
  if (v54 == *(v53 + OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__disabled))
  {
    *(v53 + OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__disabled) = v54;
  }

  else
  {
    v55 = swift_getKeyPath();
    __chkstk_darwin(v55, v56);
    *(&v57 - 2) = v53;
    *(&v57 - 8) = v54;
    v65 = v53;

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10000A1A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A1EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A234(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v5);
    sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Color.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 32) = a1;
}

uint64_t sub_10000A3A4(unint64_t a1)
{
  if (a1 < 3)
  {
    return 0;
  }

  if (a1 == 3)
  {
    v2 = &selRef_recordingControlInnerColor;
LABEL_7:
    v3 = [objc_opt_self() sharedStyleProvider];
    v4 = [v3 *v2];

    return Color.init(_:)();
  }

  if (a1 == 4)
  {
    v2 = &selRef_recordingControlInnerColorResume;
    goto LABEL_7;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10000A47C(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = result;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath, v4);
  sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10000A5B8(Swift::UInt a1, Swift::UInt a2, char a3, Swift::UInt a4, Swift::UInt a5)
{
  if (a3 == 2)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    if (a1 >= 5 || a4 >= 5)
    {
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    v11 = qword_100242A60[a1];
    v12 = qword_100242A60[a4];
    swift_beginAccess();
    v13 = *(v5 + 48);
    if (*(v13 + 16))
    {
      v14 = sub_1000097BC(a1, a2);
      if (v15)
      {
        v16 = *(*(v13 + 56) + 8 * v14);
        v17 = 1;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v18 = *(v5 + 48);
    v8 = *(v18 + 16);
    if (v8)
    {
      v19 = sub_1000097BC(a4, a5);
      LODWORD(v8) = 0;
      v21 = v17 ^ 1;
      if (v11 == v12)
      {
        v21 = 1;
      }

      if (v21 & 1) == 0 && (v20)
      {
        LODWORD(v8) = v16 != *(*(v18 + 56) + 8 * v19);
      }
    }
  }

  if (a5 == 2 && a4 == 0)
  {
    v23 = 256;
  }

  else
  {
    v23 = 0;
  }

  return v23 | v8;
}

uint64_t sub_10000A720(uint64_t result, __int16 a2)
{
  *(result + 57) = a2 & 1;
  *(result + 58) = HIBYTE(a2) & 1;
  return result;
}

uint64_t sub_10000A734(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__accessibilityLabel;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_10000A1EC(&qword_1002D5380, &type metadata accessor for AttributedString);
  v16[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v13);
    v14 = v16[0];
    v16[-2] = v2;
    v16[-1] = v14;
    v16[1] = v2;
    sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v11)(v16[0], v4);
}

uint64_t sub_10000A9F8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__accessibilityLabel;
  swift_beginAccess();
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

void *sub_10000AACC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for RCRecordButton()
{
  result = qword_1002D3A08;
  if (!qword_1002D3A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10000AD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a4(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_10000ADE8(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v6._object = 0x80000001002307F0;
  v3._countAndFlagsBits = 0x4345522045564153;
  v3._object = 0xEE00474E4944524FLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0xD000000000000028;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v6);

  sub_1000067AC(0, &qword_1002CFE60);
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_10000AF24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_10000B000(double a1, double a2, double a3, double a4)
{
  sub_1000C773C(&unk_1002D4320);
  __chkstk_darwin();
  v10 = &v28[-v9 - 8];
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v15 = OBJC_IVAR____TtC10VoiceMemos12RCDoneButton_styleProvider;
  *&v4[v15] = [objc_opt_self() sharedStyleProvider];
  *&v4[OBJC_IVAR____TtC10VoiceMemos12RCDoneButton_defaultPadding] = 0x4034000000000000;
  v16 = &v4[OBJC_IVAR____TtC10VoiceMemos12RCDoneButton_titleString];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *v16 = String.init(localized:table:bundle:locale:comment:)();
  v16[1] = v17;
  v18 = type metadata accessor for RCDoneButton();
  v29.receiver = v4;
  v29.super_class = v18;
  v19 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  static UIButton.Configuration.prominentGlass()();
  v20 = UIButton.Configuration.contentInsets.modify();
  *(v21 + 8) = 0x4034000000000000;
  v20(v28, 0);
  v22 = UIButton.Configuration.contentInsets.modify();
  *(v23 + 24) = 0x4034000000000000;
  v22(v28, 0);
  v24 = [*&v19[OBJC_IVAR____TtC10VoiceMemos12RCDoneButton_styleProvider] doneButtonBackgroundColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v25 = [objc_opt_self() labelColor];
  UIButton.Configuration.baseForegroundColor.setter();

  UIButton.Configuration.title.setter();
  (*(v12 + 16))(v10, v14, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  UIButton.configuration.setter();
  [v19 setPointerInteractionEnabled:1];

  (*(v12 + 8))(v14, v11);
  return v19;
}

uint64_t sub_10000B46C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000C773C(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000B4D4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10000B564(a1, v2);
}

unint64_t sub_10000B564(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

_OWORD *sub_10000B668(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_10000B8F4(double a1, double a2, double a3, double a4)
{
  sub_1000C773C(&unk_1002D4320);
  __chkstk_darwin();
  v10 = &v23 - v9;
  v11 = type metadata accessor for RCTrimButton();
  v23.receiver = v4;
  v23.super_class = v11;
  v12 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 mainBundle];
  v24._object = 0x8000000100235470;
  v16._countAndFlagsBits = 0xD00000000000001BLL;
  v16._object = 0x8000000100235450;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v24);

  v18 = v14;
  sub_100187CF8();
  v19 = type metadata accessor for UIButton.Configuration();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  UIButton.configuration.setter();

  v20 = String._bridgeToObjectiveC()();
  [v18 setAccessibilityLabel:v20];

  v21 = String._bridgeToObjectiveC()();

  [v18 setLargeContentTitle:v21];

  return v18;
}

id sub_10000BC4C(double a1, double a2, double a3, double a4)
{
  sub_1000C773C(&unk_1002D4320);
  __chkstk_darwin();
  v10 = &v23 - v9;
  v11 = type metadata accessor for RCDeleteButton();
  v23.receiver = v4;
  v23.super_class = v11;
  v12 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 mainBundle];
  v24._object = 0x8000000100235430;
  v16._countAndFlagsBits = 0xD00000000000001DLL;
  v16._object = 0x8000000100235410;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000013;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v24);

  v18 = v14;
  sub_100187CF8();
  v19 = type metadata accessor for UIButton.Configuration();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  UIButton.configuration.setter();

  v20 = String._bridgeToObjectiveC()();
  [v18 setAccessibilityLabel:v20];

  v21 = String._bridgeToObjectiveC()();

  [v18 setLargeContentTitle:v21];

  return v18;
}

id sub_10000D1B4(uint64_t a1)
{
  [*(a1 + 32) setRowSpacing:27.0];
  [*(a1 + 32) setVerticalAlignment:3];
  [*(a1 + 32) setHorizontalDistribution:5];
  v2 = [*(a1 + 32) addRowWithArrangedSubviews:*(a1 + 40)];
  [*(a1 + 32) setAlignment:0 forView:*(a1 + 48) inAxis:0];
  return [*(a1 + 32) addRowWithArrangedSubviews:*(a1 + 56)];
}

uint64_t sub_10000D528()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_10000FE04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_10000FE20(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained supportsRecordingViewElevatedUserInterfaceLevelOverride])
  {
    v5 = [v3 isUserInterfaceStyleDark];

    if (v5)
    {
      v6 = +[UIColor systemBackgroundColor];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = +[UIColor secondarySystemBackgroundColor];
LABEL_6:
  v7 = v6;

  return v7;
}

uint64_t sub_100010E68(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) ^ *(a2 + 16) ^ 1u;
  }

  return 0;
}

char *sub_100011750(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for RCRecordingTrackInfoRepository()) init];
  v3 = *&v2[OBJC_IVAR____TtC10VoiceMemos30RCRecordingTrackInfoRepository_observers];
  v4 = *(v3 + 16);

  if (([v4 containsObject:a1] & 1) == 0)
  {
    v5 = *(v3 + 16);
    [v5 addObject:a1];
  }

  return v2;
}

id sub_1000117EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10VoiceMemos30RCRecordingTrackInfoRepository_observers;
  sub_1000C773C(&qword_1002D10E0);
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_opt_self() weakObjectsHashTable];
  *&v1[v2] = v3;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  sub_1000C773C(&qword_1002D10E8);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC10VoiceMemos30RCRecordingTrackInfoRepository_trackInfoSubject] = CurrentValueSubject.init(_:)();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RCRecordingTrackInfoRepository();
  return objc_msgSendSuper2(&v5, "init");
}

void sub_1000125B4()
{
  v1 = v0;
  v2 = type metadata accessor for UIAppIntentInteraction();
  v3 = objc_allocWithZone(v2);
  sub_100012A90();
  v4 = UIAppIntentInteraction.init<A>(intent:perform:)();
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v5 addInteraction:v4];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = objc_allocWithZone(v2);
  sub_100012C70();

  v8 = UIAppIntentInteraction.init<A>(intent:perform:)();
  v9 = [v1 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v9 addInteraction:v8];

  v11 = objc_allocWithZone(v2);
  sub_100012DB0();
  v12 = UIAppIntentInteraction.init<A>(intent:perform:)();
  v13 = [v1 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  [v13 addInteraction:v12];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = objc_allocWithZone(v2);
  sub_100012F68();

  v16 = UIAppIntentInteraction.init<A>(intent:perform:)();
  v17 = [v1 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  [v17 addInteraction:v16];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = objc_allocWithZone(v2);
  sub_1000130A8();

  v20 = UIAppIntentInteraction.init<A>(intent:perform:)();
  v21 = [v1 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  [v21 addInteraction:v20];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = objc_allocWithZone(v2);
  sub_1000131E8();

  v24 = UIAppIntentInteraction.init<A>(intent:perform:)();
  v25 = [v1 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  [v25 addInteraction:v24];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = objc_allocWithZone(v2);
  sub_100013328();

  v28 = UIAppIntentInteraction.init<A>(intent:perform:)();
  v29 = [v1 view];
  if (!v29)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v30 = v29;
  [v29 addInteraction:v28];
}

uint64_t sub_100012A58()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100012A90()
{
  result = qword_1002CE1A0;
  if (!qword_1002CE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CE1A0);
  }

  return result;
}

unint64_t sub_100012AE4()
{
  result = qword_1002D2CD0;
  if (!qword_1002D2CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2CD0);
  }

  return result;
}

unint64_t sub_100012B3C()
{
  result = qword_1002D2CD8;
  if (!qword_1002D2CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2CD8);
  }

  return result;
}

unint64_t sub_100012B94()
{
  result = qword_1002D3040;
  if (!qword_1002D3040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3040);
  }

  return result;
}

uint64_t sub_100012BE8(uint64_t a1)
{
  v2 = sub_100012B94();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100012C70()
{
  result = qword_1002CF7A8;
  if (!qword_1002CF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF7A8);
  }

  return result;
}

unint64_t sub_100012CC4()
{
  result = qword_1002D2D18;
  if (!qword_1002D2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D18);
  }

  return result;
}

unint64_t sub_100012D1C()
{
  result = qword_1002D2D20;
  if (!qword_1002D2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D20);
  }

  return result;
}

uint64_t sub_100012D74(uint64_t a1)
{
  v2 = sub_100012C70();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100012DB0()
{
  result = qword_1002CF7B0;
  if (!qword_1002CF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF7B0);
  }

  return result;
}

unint64_t sub_100012E08()
{
  result = qword_1002D2E38;
  if (!qword_1002D2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2E38);
  }

  return result;
}

unint64_t sub_100012E60()
{
  result = qword_1002D2E40;
  if (!qword_1002D2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2E40);
  }

  return result;
}

uint64_t sub_100012EB4(uint64_t a1)
{
  v2 = sub_100012EF0();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100012EF0()
{
  result = qword_1002D2FB8;
  if (!qword_1002D2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2FB8);
  }

  return result;
}

unint64_t sub_100012F68()
{
  result = qword_1002CF7B8;
  if (!qword_1002CF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF7B8);
  }

  return result;
}

unint64_t sub_100012FC0()
{
  result = qword_1002D2DB8;
  if (!qword_1002D2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2DB8);
  }

  return result;
}

unint64_t sub_100013018()
{
  result = qword_1002D2DC0;
  if (!qword_1002D2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2DC0);
  }

  return result;
}

uint64_t sub_10001306C(uint64_t a1)
{
  v2 = sub_100012F68();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000130A8()
{
  result = qword_1002CF7C0;
  if (!qword_1002CF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF7C0);
  }

  return result;
}

unint64_t sub_1000130FC()
{
  result = qword_1002D2DA0;
  if (!qword_1002D2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2DA0);
  }

  return result;
}

unint64_t sub_100013158()
{
  result = qword_1002D2DA8;
  if (!qword_1002D2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2DA8);
  }

  return result;
}

uint64_t sub_1000131AC(uint64_t a1)
{
  v2 = sub_1000130A8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000131E8()
{
  result = qword_1002D3760;
  if (!qword_1002D3760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3760);
  }

  return result;
}

unint64_t sub_10001323C()
{
  result = qword_1002D3768;
  if (!qword_1002D3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3768);
  }

  return result;
}

unint64_t sub_100013298()
{
  result = qword_1002D3770;
  if (!qword_1002D3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3770);
  }

  return result;
}

uint64_t sub_1000132EC(uint64_t a1)
{
  v2 = sub_1000131E8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100013328()
{
  result = qword_1002CF7D0;
  if (!qword_1002CF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF7D0);
  }

  return result;
}

unint64_t sub_100013380()
{
  result = qword_1002D3788;
  if (!qword_1002D3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3788);
  }

  return result;
}

unint64_t sub_1000133D4()
{
  result = qword_1002D3790;
  if (!qword_1002D3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3790);
  }

  return result;
}

uint64_t sub_10001342C(uint64_t a1)
{
  v2 = sub_100013328();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

id sub_100013520()
{
  v1 = v0;
  v2 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v2 - 8, v3);
  v73 = &v72 - v4;
  v5 = &v0[OBJC_IVAR___RCRecorderAppDelegateDependencyContainer_recordingStatePublisher];
  v6 = type metadata accessor for RecordingStatePublisher();
  v7 = swift_allocObject();
  v8 = [objc_opt_self() sharedInstance];
  v7[2] = v8;
  v7[3] = 0;
  LOBYTE(v78[0]) = 0;
  sub_1000C773C(&qword_1002CFD98);
  swift_allocObject();
  v7[4] = CurrentValueSubject.init(_:)();
  v78[0] = v8;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v9 = v8;
  v10 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v11 = v7[3];
  v7[3] = v10;

  *(v5 + 3) = v6;
  *(v5 + 4) = &off_10028E8D8;
  *v5 = v7;
  sub_1000CC430(v5, v78);
  v12 = sub_10001466C(v78, v79);
  __chkstk_darwin(v12, v12);
  v14 = (&v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v76 = v6;
  v77 = &off_10028E8D8;
  v75[0] = v16;
  v17 = objc_allocWithZone(type metadata accessor for LocationManagerStateCoordinator());
  v18 = sub_10001466C(v75, v76);
  __chkstk_darwin(v18, v18);
  v20 = (&v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_1000146E0(*v20, v17);
  sub_100014B64(v75);
  sub_100014B64(v78);
  *&v1[OBJC_IVAR___RCRecorderAppDelegateDependencyContainer_locationManagerStateCoordinator] = v22;
  sub_1000CC430(v5, v78);
  v23 = sub_10001466C(v78, v79);
  __chkstk_darwin(v23, v23);
  v25 = (&v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v76 = v6;
  v77 = &off_10028E8D8;
  v75[0] = v27;
  type metadata accessor for BackgroundTaskManager();
  v28 = swift_allocObject();
  v29 = sub_10001466C(v75, v6);
  v30 = *(v6 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29, v29);
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = *(v30 + 16);
  v33(&v72 - v32);
  v34 = sub_100014BD4(*(&v72 - v32), v28);
  sub_100014B64(v75);
  sub_100014B64(v78);
  *&v1[OBJC_IVAR___RCRecorderAppDelegateDependencyContainer_backgroundTaskManager] = v34;
  sub_1000CC430(v5, v78);
  v35 = sub_10001466C(v78, v79);
  __chkstk_darwin(v35, v35);
  v37 = (&v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = *v37;
  v76 = v6;
  v77 = &off_10028E8D8;
  v75[0] = v39;
  v40 = objc_allocWithZone(type metadata accessor for RCAnalyticsManager());
  v41 = sub_10001466C(v75, v76);
  __chkstk_darwin(v41, v41);
  v43 = (&v72 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  v45 = sub_100014F2C(*v43, v40);
  sub_100014B64(v75);
  sub_100014B64(v78);
  *&v1[OBJC_IVAR___RCRecorderAppDelegateDependencyContainer_analyticsManager] = v45;
  sub_1000CC430(v5, v78);
  v46 = sub_10001466C(v78, v79);
  __chkstk_darwin(v46, v46);
  v48 = (&v72 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = *v48;
  v76 = v6;
  v77 = &off_10028E8D8;
  v75[0] = v50;
  type metadata accessor for ControlCenterWidgetStateCoordinator();
  v51 = swift_allocObject();
  v52 = sub_10001466C(v75, v6);
  __chkstk_darwin(v52, v52);
  v33(&v72 - v32);
  v53 = sub_1000160A4(*(&v72 - v32), v51);
  sub_100014B64(v75);
  sub_100014B64(v78);
  *&v1[OBJC_IVAR___RCRecorderAppDelegateDependencyContainer_controlCenterWidgetStateCoordinator] = v53;
  type metadata accessor for PlatterSuccessStatePresentationCoordinator();
  v54 = swift_allocObject();
  *&v1[OBJC_IVAR___RCRecorderAppDelegateDependencyContainer_platterSuccessStatePresentationCoordinator] = v54;
  sub_1000CC430(v5, v78);
  v55 = sub_10001466C(v78, v79);
  __chkstk_darwin(v55, v55);
  v57 = (&v72 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57);
  v59 = *v57;
  v76 = v6;
  v77 = &off_10028E8D8;
  v75[0] = v59;
  type metadata accessor for ActivityManagerStateCoordinator();
  v60 = swift_allocObject();
  v61 = sub_10001466C(v75, v6);
  __chkstk_darwin(v61, v61);
  v33(&v72 - v32);
  v62 = *(&v72 - v32);

  v63 = sub_100016378(v62, v54, v60);
  sub_100014B64(v75);
  sub_100014B64(v78);
  *&v1[OBJC_IVAR___RCRecorderAppDelegateDependencyContainer_activityManagerStateCoordinator] = v63;
  if (qword_1002CDF50 != -1)
  {
    swift_once();
  }

  v64 = qword_1002E90D0;
  v65 = type metadata accessor for TaskPriority();
  v66 = v73;
  (*(*(v65 - 8) + 56))(v73, 1, 1, v65);
  type metadata accessor for MainActor();
  v67 = v64;
  v68 = static MainActor.shared.getter();
  v69 = swift_allocObject();
  v69[2] = v68;
  v69[3] = &protocol witness table for MainActor;
  v69[4] = v67;
  sub_100179578(0, 0, v66, &unk_10024C9A0, v69);

  v70 = type metadata accessor for RecorderAppDelegateDependencyContainer();
  v74.receiver = v1;
  v74.super_class = v70;
  return objc_msgSendSuper2(&v74, "init");
}

id sub_100013F28@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 mode];
  *a2 = result;
  return result;
}

uint64_t sub_100013F70()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10001404C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002D70D8;
  qword_1002D70D8 = v1;
}

void sub_100014310(uint64_t a1)
{
  v2 = [TUCallCenter callCenterWithQueue:*(*(a1 + 32) + 24)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

void sub_100014440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10001445C()
{
  v1 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v12 - v3;
  *&v0[OBJC_IVAR____TtC10VoiceMemos25StereoOrientationProvider_interfaceOrientation] = 0;
  *&v0[OBJC_IVAR____TtC10VoiceMemos25StereoOrientationProvider_deviceOrientation] = 0;
  v5 = type metadata accessor for StereoOrientationProvider();
  v12.receiver = v0;
  v12.super_class = v5;
  v6 = objc_msgSendSuper2(&v12, "init");
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v6;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_100179578(0, 0, v4, &unk_10024CCB0, v10);

  return v8;
}

uint64_t sub_1000145C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001466C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

char *sub_1000146E0(uint64_t a1, char *a2)
{
  v4 = sub_1000C773C(&qword_1002D0B20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v21 - v7;
  v9 = sub_1000C773C(&qword_1002D0B28);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v21 - v12;
  v14 = type metadata accessor for RecordingStatePublisher();
  v23[3] = v14;
  v23[4] = &off_10028E8D8;
  v23[0] = a1;
  v15 = OBJC_IVAR___RCLocationManagerStateCoordinator_locationManager;
  *&a2[v15] = [objc_opt_self() defaultManager];
  *&a2[OBJC_IVAR___RCLocationManagerStateCoordinator_cancellable] = 0;
  v16 = type metadata accessor for LocationManagerStateCoordinator();
  v22.receiver = a2;
  v22.super_class = v16;
  v17 = objc_msgSendSuper2(&v22, "init");
  v21 = *(*sub_10000AACC(v23, v14) + 32);
  v18 = v17;
  sub_1000C773C(&qword_1002CF700);
  sub_100008034(&qword_1002CF708, &qword_1002CF700);
  Publisher.dropFirst(_:)();
  sub_100008034(&qword_1002D0B30, &qword_1002D0B20);
  Publisher<>.removeDuplicates()();
  (*(v5 + 8))(v8, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008034(&qword_1002D0B38, &qword_1002D0B28);
  v19 = Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v13, v9);
  *&v18[OBJC_IVAR___RCLocationManagerStateCoordinator_cancellable] = v19;

  sub_100014B64(v23);
  return v18;
}

void sub_100014AA8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002D70C0;
  qword_1002D70C0 = v1;
}

uint64_t sub_100014B64(uint64_t a1)
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

uint64_t sub_100014BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D0B20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v18[-1] - v7;
  v9 = sub_1000C773C(&qword_1002D0B28);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v18[-1] - v12;
  v14 = type metadata accessor for RecordingStatePublisher();
  v18[3] = v14;
  v18[4] = &off_10028E8D8;
  v18[0] = a1;
  *(a2 + 16) = UIBackgroundTaskInvalid;
  *(a2 + 24) = 0;
  v17 = *(*sub_10000AACC(v18, v14) + 32);
  sub_1000C773C(&qword_1002CF700);
  sub_100008034(&qword_1002CF708, &qword_1002CF700);
  Publisher.dropFirst(_:)();
  sub_100008034(&qword_1002D0B30, &qword_1002D0B20);
  Publisher<>.removeDuplicates()();
  (*(v5 + 8))(v8, v4);
  swift_allocObject();
  swift_weakInit();
  sub_100008034(&qword_1002D0B38, &qword_1002D0B28);
  v15 = Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v13, v9);
  *(a2 + 24) = v15;

  sub_100014B64(v18);
  return a2;
}

uint64_t type metadata accessor for RCAnalyticsManager()
{
  result = qword_1002CFDE0;
  if (!qword_1002CFDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100014F2C(uint64_t a1, char *a2)
{
  v4 = sub_1000C773C(&qword_1002D0B20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v23 - v7;
  v9 = sub_1000C773C(&qword_1002D0B28);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for RecordingStatePublisher();
  v25[3] = v14;
  v25[4] = &off_10028E8D8;
  v25[0] = a1;
  *&a2[OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_cancellable] = 0;
  v15 = OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager;
  *&a2[v15] = sub_1000D4458(&_swiftEmptyArrayStorage);
  v16 = OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_analyticsAppSessionManagerFactory;
  v17 = type metadata accessor for RCAnalyticsAppSessionManagerFactory();
  (*(*(v17 - 8) + 56))(&a2[v16], 1, 1, v17);
  v18 = type metadata accessor for RCAnalyticsManager();
  v24.receiver = a2;
  v24.super_class = v18;
  v19 = objc_msgSendSuper2(&v24, "init");
  v23 = *(*sub_10000AACC(v25, v14) + 32);
  v20 = v19;
  sub_1000C773C(&qword_1002CF700);
  sub_100008034(&qword_1002CF708, &qword_1002CF700);
  Publisher.dropFirst(_:)();
  sub_100008034(&qword_1002D0B30, &qword_1002D0B20);
  Publisher<>.removeDuplicates()();
  (*(v5 + 8))(v8, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008034(&qword_1002D0B38, &qword_1002D0B28);
  v21 = Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v13, v9);
  *&v20[OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_cancellable] = v21;

  sub_100014B64(v25);
  return v20;
}

uint64_t sub_1000152CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015304()
{
  v7 = 0;
  v0 = String.utf8CString.getter();
  sysctlbyname((v0 + 32), 0, &v7, 0, 0);

  v1 = v7;
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v7)
  {
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v2[2] = v1;
    bzero(v2 + 4, v1);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v3 = String.utf8CString.getter();
  sysctlbyname((v3 + 32), v2 + 4, &v7, 0, 0);

  if (v2[2])
  {
    v5 = sub_10001543C(v2, v4);
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_10001543C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return static String._fromUTF8Repairing(_:)(a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return static String._fromUTF8Repairing(_:)(a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return static String._fromUTF8Repairing(_:)(a1, a2);
}

uint64_t type metadata accessor for SessionManagerController()
{
  result = qword_1002D6668;
  if (!qword_1002D6668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100015554()
{
  v0 = sub_1000C773C(&qword_1002D5FA0);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v7 - v2;
  URL.init(string:)();
  v4 = type metadata accessor for URL();
  result = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = objc_allocWithZone(type metadata accessor for Endpoint());
    result = Endpoint.init(url:name:sharedContainerIdentifier:)();
    qword_1002E8D18 = result;
  }

  return result;
}

void sub_100015668()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v11[3] = &type metadata for UserInfoDefaultDataStoreProvider;
  v11[4] = &off_10028E328;
  v11[0] = v0;
  v9 = &type metadata for DefaultNowProvider;
  v10 = &off_10028E100;
  type metadata accessor for UserInfoManager();
  v1 = swift_allocObject();
  v2 = sub_10001466C(v11, &type metadata for UserInfoDefaultDataStoreProvider);
  __chkstk_darwin(v2, v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v4);
  sub_10001466C(v8, &type metadata for DefaultNowProvider);
  v6 = *v4;
  v1[5] = &type metadata for UserInfoDefaultDataStoreProvider;
  v1[6] = &off_10028E328;
  v1[2] = v6;
  v1[10] = &type metadata for DefaultNowProvider;
  v1[11] = &off_10028E100;
  v7 = v0;
  sub_100014B64(v8);
  sub_100014B64(v11);

  qword_1002E8D10 = v1;
}

uint64_t *sub_100015800(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100015864(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100015978(uint64_t a1)
{
  *(v1 + 32) = 514;
  *(v1 + 34) = 2;
  *(v1 + 40) = _swiftEmptyArrayStorage;
  *(v1 + 16) = a1;
  *(v1 + 24) = *(a1 + 56);
  swift_allocObject();
  swift_weakInit();
  swift_retain_n();

  Tracker.onSessionChange(block:)();

  return v1;
}

uint64_t sub_100015A48()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100015A80(void *a1, int64_t a2, char a3)
{
  result = sub_100015AA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100015AA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000C773C(&qword_1002D6CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000C773C(&qword_1002CEC98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100015BFC()
{
  result = qword_1002D2A58;
  if (!qword_1002D2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2A58);
  }

  return result;
}

uint64_t sub_100015C50(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  LOBYTE(v6) = a2;
  sub_10000B46C(a1 + 32, v36, &qword_1002CEC98);
  sub_100015FCC(v36, v35);
  v7 = *a3;
  v8 = sub_100015FE8();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v14) = v9;
  if (*(v7 + 24) < v13)
  {
    sub_1000CAA40(v13, v6 & 1);
    v8 = sub_100015FE8();
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v18 = v8;
  sub_1000CBC0C();
  v8 = v18;
  if (v14)
  {
LABEL_8:
    v16 = swift_allocError();
    swift_willThrow();

    v37 = v16;
    swift_errorRetain();
    sub_1000C773C(&qword_1002D5540);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100014B64(v35);
    }

    goto LABEL_25;
  }

LABEL_11:
  v19 = *a3;
  *(*a3 + 8 * (v8 >> 6) + 64) |= 1 << v8;
  sub_100015FCC(v35, *(v19 + 56) + 40 * v8);
  v20 = *(v19 + 16);
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (!v12)
  {
    *(v19 + 16) = v21;
    if (v4 != 1)
    {
      v14 = a1 + 72;
      v6 = 1;
      while (v6 < *(a1 + 16))
      {
        sub_10000B46C(v14, v36, &qword_1002CEC98);
        sub_100015FCC(v36, v35);
        v22 = *a3;
        v23 = sub_100015FE8();
        v25 = *(v22 + 16);
        v26 = (v24 & 1) == 0;
        v12 = __OFADD__(v25, v26);
        v27 = v25 + v26;
        if (v12)
        {
          goto LABEL_22;
        }

        v28 = v24;
        if (*(v22 + 24) < v27)
        {
          sub_1000CAA40(v27, 1);
          v23 = sub_100015FE8();
          if ((v28 & 1) != (v29 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v28)
        {
          goto LABEL_8;
        }

        v30 = *a3;
        *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        sub_100015FCC(v35, *(v30 + 56) + 40 * v23);
        v31 = *(v30 + 16);
        v12 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v12)
        {
          goto LABEL_23;
        }

        ++v6;
        *(v30 + 16) = v32;
        v14 += 40;
        if (v4 == v6)
        {
        }
      }

      goto LABEL_24;
    }
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  _StringGuts.grow(_:)(30);
  v33._object = 0x800000010022F150;
  v33._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v33);
  _print_unlocked<A, B>(_:_:)();
  v34._countAndFlagsBits = 39;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100015FD0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100015FE8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return sub_100016054(v0);
}

uint64_t sub_1000160A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D0B40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v13[-1] - v7;
  v9 = type metadata accessor for RecordingStatePublisher();
  v13[3] = v9;
  v13[4] = &off_10028E8D8;
  v13[0] = a1;
  *(a2 + 16) = 0;
  v12 = *(*sub_10000AACC(v13, v9) + 32);
  sub_1000C773C(&qword_1002CF700);
  sub_100008034(&qword_1002CF708, &qword_1002CF700);
  Publisher<>.removeDuplicates()();
  sub_100008034(&qword_1002D0B48, &qword_1002D0B40);
  v10 = Publisher<>.sink(receiveValue:)();
  (*(v5 + 8))(v8, v4);
  *(a2 + 16) = v10;

  sub_100014B64(v13);
  return a2;
}

uint64_t sub_100016294(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() sharedInstance];
  [v2 setIsRecording:v1];

  type metadata accessor for ControlCenter();
  static ControlCenter.shared.getter();
  dispatch thunk of ControlCenter.reloadControls(ofKind:)();
}

void *sub_100016378(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000C773C(&qword_1002D0B20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v20[-1] - v8;
  v10 = sub_1000C773C(&qword_1002D0B28);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v20[-1] - v13;
  v15 = type metadata accessor for RecordingStatePublisher();
  v20[3] = v15;
  v20[4] = &off_10028E8D8;
  v20[0] = a1;
  type metadata accessor for ActivityManager();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  a3[6] = 0;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = v16;
  swift_unknownObjectWeakInit();
  a3[6] = &off_10028EB88;
  a3[7] = 0;
  swift_unknownObjectWeakAssign();

  v19 = *(*sub_10000AACC(v20, v15) + 32);
  sub_1000C773C(&qword_1002CF700);
  sub_100008034(&qword_1002CF708, &qword_1002CF700);
  Publisher.dropFirst(_:)();
  sub_100008034(&qword_1002D0B30, &qword_1002D0B20);
  Publisher<>.removeDuplicates()();
  (*(v6 + 8))(v9, v5);
  swift_allocObject();
  swift_weakInit();
  sub_100008034(&qword_1002D0B38, &qword_1002D0B28);
  v17 = Publisher<>.sink(receiveValue:)();

  (*(v11 + 8))(v14, v10);
  a3[7] = v17;

  sub_100014B64(v20);
  return a3;
}

id sub_100016714()
{
  result = [objc_allocWithZone(type metadata accessor for TranscriptionModelAssetService()) init];
  qword_1002E90D0 = result;
  return result;
}

uint64_t sub_1000167E0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100016838()
{
  if (v0[20])
  {
    v1 = v0[20];
  }

  else
  {
    type metadata accessor for FlushManager();
    v2 = v0[4];
    v3 = v0[3];
    type metadata accessor for Client();
    v4 = objc_opt_self();

    v5 = v3;
    v6 = v2;
    v7 = [v4 mainBundle];
    Client.__allocating_init(bundle:)();
    type metadata accessor for URLSessionUploadClientFactory();
    swift_allocObject();
    URLSessionUploadClientFactory.init()();
    v1 = FlushManager.__allocating_init(appSessionManager:client:endpoint:contentType:config:clientFactory:)();
    v0[20] = v1;
  }

  return v1;
}

uint64_t sub_100016964()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos24SessionManagerController____lazy_storage___flushController;
  if (*(v0 + OBJC_IVAR____TtC10VoiceMemos24SessionManagerController____lazy_storage___flushController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos24SessionManagerController____lazy_storage___flushController);
  }

  else
  {
    v3 = sub_100016838();
    type metadata accessor for FlushAnalyticsController();
    v2 = swift_allocObject();
    *(v2 + 16) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100016B60()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos8VMPlayer____lazy_storage___standardPlayer;
  if (*(v0 + OBJC_IVAR____TtC10VoiceMemos8VMPlayer____lazy_storage___standardPlayer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos8VMPlayer____lazy_storage___standardPlayer);
  }

  else
  {
    v3 = v0;
    type metadata accessor for AudioEnginePlayer();
    swift_allocObject();
    v2 = sub_100016CB8();
    *(v2 + 32) = &off_100290428;
    swift_unknownObjectWeakAssign();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100016CB8()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  __chkstk_darwin(v1, v3);
  v25 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5, v6);
  v23 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8, v12);
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  v21 = sub_100017154();
  v19 = "ard";
  v20 = enum case for DispatchQoS.QoSClass.userInitiated(_:);
  v13 = *(v7 + 104);
  v22 = v7 + 104;
  v24 = v13;
  v13(v10);
  DispatchQoS.init(qosClass:relativePriority:)();
  v28 = &_swiftEmptyArrayStorage;
  v18[1] = sub_1000171F8(&qword_1002CDFC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v18[0] = sub_1000C773C(&unk_1002D1E10);
  sub_100008034(&qword_1002CDFD0, &unk_1002D1E10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v15 = *(v27 + 104);
  v27 += 104;
  v15(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *(v0 + 40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = "udioReadingQueue";
  v24(v10, v20, v23);
  DispatchQoS.init(qosClass:relativePriority:)();
  v28 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15(v25, v14, v26);
  *(v0 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 84) = 1065353216;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = sub_1000C8898(&_swiftEmptyArrayStorage);
  }

  else
  {
    v16 = &_swiftEmptySetSingleton;
  }

  *(v0 + 88) = v16;
  *(v0 + 96) = 0;
  *(v0 + 104) = &off_10028CA50;
  *(v0 + 112) = 0;
  return v0;
}

id sub_100017118(uint64_t a1)
{
  [*(a1 + 32) _configureAudioSettingsIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _registerAudioSessionNotificationsIfNeeded];
}

unint64_t sub_100017154()
{
  result = qword_1002D1070;
  if (!qword_1002D1070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D1070);
  }

  return result;
}

uint64_t sub_1000171B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000171F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100017488(uint64_t a1)
{
  [*(a1 + 32) _clearTemporaryAudioFilesOnce];
  v1 = +[_TtC10VoiceMemos30TranscriptionModelAssetService sharedInstance];
  [v1 isAvailableWithCompletionHandler:&stru_10028B2F0];
}

void sub_1000175A8(id a1)
{
  v1 = +[NSFileManager defaultManager];
  [v1 rc_cleanUpTemporaryDirectory];
}

void sub_100018020(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16))
  {
    v2 = [CLLocationManager alloc];
    v3 = [v2 initWithEffectiveBundleIdentifier:RCVoiceMemosBundleID delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 56)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    *(*(a1 + 32) + 8) = 0;
    *(*(a1 + 32) + 48) = 1;
  }
}

uint64_t sub_1000182AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001FF1C;

  return sub_100018364(a1, v4);
}

uint64_t sub_100018364(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100020968;

  return v6(a1);
}

uint64_t sub_10001845C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001FF1C;

  return sub_1000186D0(v2, v3, v4);
}

uint64_t sub_10001851C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001FF1C;

  return sub_1000185E8(a1, v4, v5, v6);
}

uint64_t sub_1000185E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10002001C;

  return v7();
}

uint64_t sub_1000186D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001FF1C;

  return v6();
}

uint64_t sub_1000187B8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001FF1C;

  return sub_100018864(v2);
}

uint64_t sub_100018864(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000206E0;

  return sub_10001890C();
}

uint64_t sub_10001890C()
{
  v1 = type metadata accessor for Locale();
  v0[21] = v1;
  v0[22] = *(v1 - 8);
  v0[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000189C8, 0, 0);
}

uint64_t sub_1000189C8()
{
  v28 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = objc_opt_self();
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v6 = *(v2 + 8);
  v6(v1, v3);
  v7 = [v4 generalASRLanguageForLocale:isa];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v0[24] = v8;
  v0[25] = v10;
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v0[26] = sub_100018D90(v11, qword_1002E8CB0);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[23];
    v25 = v0[21];
    v26 = v4;
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136315394;
    static Locale.current.getter();
    v16 = Locale.identifier.getter();
    v17 = v6;
    v18 = v16;
    v24 = v8;
    v20 = v19;
    v17(v14, v25);
    v21 = sub_10001901C(v18, v20, &v27);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_10001901C(v24, v10, &v27);
    _os_log_impl(&_mh_execute_header, v12, v13, "Current locale is %s, language code identifier is %s", v15, 0x16u);
    swift_arrayDestroy();

    v4 = v26;
  }

  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_10001C60C;
  v22 = swift_continuation_init();
  v0[17] = sub_1000C773C(&qword_1002D4140);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001C580;
  v0[13] = &unk_1002938D0;
  v0[14] = v22;
  [v4 supportedLanguagesForTaskHint:1009 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100018D14(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = type metadata accessor for Logger();
  sub_100018DC8(v5, a2);
  sub_100018D90(v5, a2);
  v6 = *a3;
  v7 = OSLogForCategory();

  return Logger.init(_:)();
}

uint64_t sub_100018D90(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100018DC8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_100018E2C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000C773C(&qword_1002CEC48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100018EA0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100018E2C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100018E2C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_100018FD0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100018EA0(a1, a2);
  sub_1000191F4(&off_10028C9D8);
  return v3;
}

unint64_t sub_10001901C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000190E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001931C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100014B64(v11);
  return v7;
}

unint64_t sub_1000190E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100018FD0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1000191F4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10001CB24(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10001931C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000196E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001FF1C;

  return sub_10001979C(a1, v4, v5, v6);
}

uint64_t sub_1000197BC()
{
  sub_1000198EC(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  sub_10000AACC(v0 + 2, v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10002029C;

  return v5(v1, v2);
}

uint64_t sub_1000198EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10VoiceMemos24RCAppStoreRatingPrompter____lazy_storage___gatingController;
  swift_beginAccess();
  sub_100019BC4(v1 + v4, &v14);
  if (v15)
  {
    return sub_100015FD0(&v14, a1);
  }

  sub_100003CBC(&v14, &qword_1002D0838);
  sub_1000C773C(&qword_1002D0840);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100241790;
  v7 = type metadata accessor for StoreReviewGatingController();
  static StoreReviewGatingController.defaultBagProfileName.getter();
  static StoreReviewGatingController.defaultBagProfileVersion.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() bagForProfile:v8 profileVersion:v9];

  v11 = objc_allocWithZone(v7);
  v12 = StoreReviewGatingController.init(bag:)();
  *(v6 + 56) = v7;
  *(v6 + 64) = &off_10028FBD8;
  *(v6 + 32) = v12;
  v13 = OBJC_IVAR____TtC10VoiceMemos24RCAppStoreRatingPrompter_recordingCountProvider;
  *(v6 + 96) = &type metadata for AppStoreRatingModel;
  *(v6 + 104) = &off_10028FD48;
  *(v6 + 72) = *(v2 + v13);
  a1[3] = &type metadata for RCStoreReviewGaitingController;
  a1[4] = &off_10028FD28;
  *a1 = v6;
  sub_1000CC430(a1, &v14);
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_10001A19C(&v14, v2 + v4);
  return swift_endAccess();
}

void sub_100019AF4(uint64_t a1)
{
  v2 = +[NSUserDefaults sharedSettingsUserDefaults];
  v3 = v2;
  if (v2)
  {
    v8 = v2;
    v4 = [v2 rc_deletionIsNever];
    v5 = [v8 rc_deletionIsImmediate];
    v6 = [v8 rc_recentlyDeletedWindow];
    v3 = v8;
    if ((v4 & 1) == 0)
    {
      if (v5)
      {
        [*(a1 + 32) eraseAllDeleted];
      }

      else
      {
        v7 = [NSDate dateWithTimeIntervalSinceNow:(-86400 * v6)];
        [*(a1 + 32) eraseRecordingsDeletedBeforeDate:v7];
      }

      v3 = v8;
    }
  }
}

uint64_t sub_100019BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D0838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100019C34(void *result)
{
  v1 = result[4];
  if ((*(v1 + 41) & 1) == 0 && *(v1 + 16))
  {
    *(v1 + 41) = 1;
    result = result[4];
    if ((*(result + 2) - 3) <= 1)
    {
      return [result _startMonitoringLocation];
    }
  }

  return result;
}

void sub_10001A178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10001A19C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D0838);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A20C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001FF1C;

  return sub_10001A2A0(v2);
}

uint64_t sub_10001A2C0()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  if (v2)
  {
    v0[4] = 0;
    v3 = v1[7];
    v4 = v1[8];
    sub_10000AACC(v1 + 4, v3);
    v8 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_10001FF20;

    return v8(v3, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10001A42C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001FF1C;

  return StoreReviewGatingController.didEnterForeground()();
}

void sub_10001A948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t sub_10001ADEC()
{
  result = qword_1002CF498;
  if (!qword_1002CF498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002CF498);
  }

  return result;
}

unint64_t sub_10001AE38()
{
  result = qword_1002CF490;
  if (!qword_1002CF490)
  {
    sub_10001ADEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF490);
  }

  return result;
}

void sub_10001AF10()
{
  v1 = [v0 searchController];
  v2 = [v1 searchBar];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(type metadata accessor for UIAppIntentInteraction());
  sub_10001B054();

  v4 = UIAppIntentInteraction.init<A>(intent:perform:)();
  [v2 addInteraction:v4];
}

uint64_t sub_10001B01C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10001B054()
{
  result = qword_1002CF4A0;
  if (!qword_1002CF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF4A0);
  }

  return result;
}

unint64_t sub_10001B0AC()
{
  result = qword_1002D0770;
  if (!qword_1002D0770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0770);
  }

  return result;
}

unint64_t sub_10001B104()
{
  result = qword_1002D0778;
  if (!qword_1002D0778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0778);
  }

  return result;
}

uint64_t sub_10001B158(uint64_t a1)
{
  v2 = sub_10001B054();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void sub_10001B478()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [*&v0[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_recordButtonContainer] view];
    v4 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithScrollView:v2 edge:4 style:1];
    [v3 addInteraction:v4];
  }

  v5 = OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerView;
  v6 = *&v0[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerView];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  [v8 setBackgroundColor:v9];

  v10 = OBJC_IVAR____TtC10VoiceMemos12RCFolderView_recordButtonContainer;
  v11 = *&v0[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_recordButtonContainer];
  v12 = *&v0[v5];
  v13 = [v11 view];
  [v12 addSubview:v13];

  v14 = [*&v0[v10] view];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v64 = objc_opt_self();
  sub_1000C773C(&unk_1002CE190);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100240520;
  v16 = [*&v0[v10] view];
  v17 = [v16 centerXAnchor];

  v18 = [*&v0[v5] centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v15 + 32) = v19;
  v20 = [*&v0[v10] view];
  v21 = [v20 topAnchor];

  v22 = [*&v0[v5] topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v15 + 40) = v23;
  v24 = [*&v0[v10] view];
  v25 = [v24 bottomAnchor];

  v26 = [*&v0[v5] bottomAnchor];
  v27 = [objc_opt_self() sharedStyleProvider];
  [v27 bottomSpacerViewHeight];
  v29 = v28;

  v30 = [v25 constraintEqualToAnchor:v26 constant:-v29];
  *(v15 + 48) = v30;
  sub_1000067AC(0, &unk_1002D5DF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v64 activateConstraints:isa];

  v32 = OBJC_IVAR____TtC10VoiceMemos12RCFolderView_recordingsCollectionViewControllerWrapperView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_recordingsCollectionViewControllerWrapperView]];
  [*&v0[v32] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:*&v0[v5]];
  [*&v0[v5] setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [*&v0[v5] bottomAnchor];
  v34 = [v0 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  v36 = *&v0[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerViewBottomConstraint];
  *&v0[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerViewBottomConstraint] = v35;
  v37 = v35;

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10024EFD0;
  v39 = [*&v0[v5] leadingAnchor];
  v40 = [v0 safeAreaLayoutGuide];
  v41 = [v40 leadingAnchor];

  v42 = [v39 constraintEqualToAnchor:v41];
  *(v38 + 32) = v42;
  v43 = [*&v0[v5] trailingAnchor];
  v44 = [v0 safeAreaLayoutGuide];
  v45 = [v44 trailingAnchor];

  v46 = [v43 constraintEqualToAnchor:v45];
  *(v38 + 40) = v46;
  *(v38 + 48) = v37;
  v47 = *&v0[v32];
  v48 = v37;
  v49 = [v47 topAnchor];
  v50 = [v0 topAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v38 + 56) = v51;
  v52 = [*&v0[v32] leadingAnchor];
  v53 = [v0 leadingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v38 + 64) = v54;
  v55 = [*&v0[v32] trailingAnchor];
  v56 = [v0 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v38 + 72) = v57;
  v58 = [*&v0[v32] bottomAnchor];
  v59 = [v0 bottomAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v38 + 80) = v60;
  v61 = Array._bridgeToObjectiveC()().super.isa;

  [v64 activateConstraints:v61];

  LOBYTE(v61) = v0[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_allowsNewRecordings];
  v62 = *&v0[v5];
  v63 = (v61 & 1) == 0;
  [v62 setHidden:v63];

  v0[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_isBottomContainerViewHidden] = v63;
}

id sub_10001BFBC()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__activityMode;
  v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__activityMode);
  if (v2 == 2)
  {
    if ([*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_styleProvider) hostsTrimButtonInToolbar])
    {
      v3 = 0;
      goto LABEL_6;
    }

    v2 = *(v0 + v1);
  }

  v3 = v2 != 3;
LABEL_6:
  v4 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_undoButtonItem;
  [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_undoButtonItem) setHidden:(*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__displayMode) == 0) | v3];
  v5 = *(v0 + v4);
  v6 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__canUndo);

  return [v5 setEnabled:v6];
}

uint64_t sub_10001C580(uint64_t a1)
{
  v1 = *sub_10000AACC((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_10001C60C()
{

  return _swift_task_switch(sub_10001C6EC, 0, 0);
}

uint64_t sub_10001C6EC()
{
  v24 = v0;
  v0[18] = v0[24];
  v1 = v0[20];
  v0[19] = v0[25];
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 18;
  v3 = sub_10001CA1C(sub_10001CAC8, v2, v1);

  if (*(v1 + 16))
  {

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23[0] = v7;
      *v6 = 136315138;
      v8 = Array.description.getter();
      v10 = v9;

      v11 = sub_10001901C(v8, v10, v23);

      *(v6 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "Supported language identifiers = %s", v6, 0xCu);
      sub_100014B64(v7);
    }

    else
    {
    }

    v12 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v15))
    {
      goto LABEL_16;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136315138;
    if (v3)
    {
      v18 = 0;
    }

    else
    {
      v18 = 544501614;
    }

    if (v3)
    {
      v19 = 0xE000000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    v20 = sub_10001901C(v18, v19, v23);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v15, "Transcription is %ssupported for the current language", v16, 0xCu);
    sub_100014B64(v17);
  }

  else
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_16;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Transcription is not supported on this hardware", v14, 2u);
  }

LABEL_16:

  v21 = v0[1];

  return v21(v3 & 1);
}

uint64_t sub_10001CA1C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10001CAC8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

char *sub_10001CB24(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000C773C(&qword_1002CEC48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10001CC18(char a1)
{
  v2 = *v1;
  *(*v1 + 57) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return _swift_task_switch(sub_10001CD40, v4, v3);
}

uint64_t sub_10001CD40()
{
  v1 = *(v0 + 57);

  *(v0 + 56) = RCTranscriptionFeatureFlagIsEnabled() & v1;
  CurrentValueSubject.value.setter();

  v2 = *(v0 + 8);

  return v2();
}

__n128 sub_10001D060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

char *sub_10001D0E4@<X0>(void *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = [v4 playableCountForFolder:v3];
  result = [v4 playableCountForFolder:v5];
  if (__CFADD__(v6, result))
  {
    __break(1u);
  }

  else
  {
    *a1 = &result[v6];
  }

  return result;
}

unint64_t sub_10001D204()
{
  result = qword_1002D3BE8;
  if (!qword_1002D3BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3BE8);
  }

  return result;
}

uint64_t sub_10001D258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCRecordButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D2BC@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = sub_1000C773C(&qword_1002D3CE0);
  __chkstk_darwin(v2 - 8, v3);
  v69 = &v62 - v4;
  v71 = sub_1000C773C(&qword_1002D3CE8) - 8;
  __chkstk_darwin(v71, v5);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v70 = &v62 - v9;
  __chkstk_darwin(v10, v11);
  v77 = &v62 - v12;
  v64 = sub_1000C773C(&qword_1002D3CF0);
  __chkstk_darwin(v64, v13);
  v65 = &v62 - v14;
  v67 = sub_1000C773C(&qword_1002D3CF8) - 8;
  __chkstk_darwin(v67, v15);
  v68 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v66 = &v62 - v19;
  __chkstk_darwin(v20, v21);
  v76 = &v62 - v22;
  v23 = type metadata accessor for RCRecordButton();
  v24 = v23 - 8;
  v25 = *(v23 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v23, v27);
  v28 = sub_1000C773C(&qword_1002D3D00);
  __chkstk_darwin(v28 - 8, v29);
  v31 = &v62 - v30;
  v63 = sub_1000C773C(&qword_1002D3D08) - 8;
  __chkstk_darwin(v63, v32);
  v75 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v35);
  v37 = &v62 - v36;
  __chkstk_darwin(v38, v39);
  v74 = &v62 - v40;
  v41 = *(v1 + *(v24 + 64));
  *v31 = static VerticalAlignment.center.getter();
  *(v31 + 1) = v41;
  v31[16] = 0;
  sub_1000C773C(&qword_1002D3D10);
  sub_10001D258(v1, &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v43 = swift_allocObject();
  sub_100169FD0(&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42, type metadata accessor for RCRecordButton);
  sub_10001DA7C();
  ForEach<>.init(_:content:)();
  v44 = *(v1 + *(v24 + 36));
  swift_getKeyPath();
  v78 = v44;
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = 0.0;
  if (*(v44 + 18) == 2)
  {
    v46 = 1.0;
  }

  else
  {
    v46 = 0.0;
  }

  sub_10001DBEC(v31, v37, &qword_1002D3D00);
  *&v37[*(v63 + 44)] = v46;
  v47 = v74;
  sub_10001DBEC(v37, v74, &qword_1002D3D08);
  v48 = v65;
  sub_10001DC54(v65);
  swift_getKeyPath();
  v78 = v44;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v44 + 18) == 1)
  {
    v49 = 1.0;
  }

  else
  {
    v49 = 0.0;
  }

  v50 = v66;
  sub_10001DBEC(v48, v66, &qword_1002D3CF0);
  *(v50 + *(v67 + 44)) = v49;
  v51 = v76;
  sub_10001DBEC(v50, v76, &qword_1002D3CF8);
  v52 = v69;
  sub_10001DE4C(v69);
  swift_getKeyPath();
  v78 = v44;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v44 + 18))
  {
    v45 = 1.0;
  }

  v53 = v70;
  sub_10001DBEC(v52, v70, &qword_1002D3CE0);
  *(v53 + *(v71 + 44)) = v45;
  v54 = v77;
  sub_10001DBEC(v53, v77, &qword_1002D3CE8);
  v55 = v47;
  v56 = v75;
  sub_10000B46C(v55, v75, &qword_1002D3D08);
  v57 = v68;
  sub_10000B46C(v51, v68, &qword_1002D3CF8);
  v58 = v72;
  sub_10000B46C(v54, v72, &qword_1002D3CE8);
  v59 = v73;
  sub_10000B46C(v56, v73, &qword_1002D3D08);
  v60 = sub_1000C773C(&qword_1002D3D50);
  sub_10000B46C(v57, v59 + *(v60 + 48), &qword_1002D3CF8);
  sub_10000B46C(v58, v59 + *(v60 + 64), &qword_1002D3CE8);
  sub_100003CBC(v77, &qword_1002D3CE8);
  sub_100003CBC(v76, &qword_1002D3CF8);
  sub_100003CBC(v74, &qword_1002D3D08);
  sub_100003CBC(v58, &qword_1002D3CE8);
  sub_100003CBC(v57, &qword_1002D3CF8);
  return sub_100003CBC(v75, &qword_1002D3D08);
}

unint64_t sub_10001DA7C()
{
  result = qword_1002D3D18;
  if (!qword_1002D3D18)
  {
    sub_1000C7784(&qword_1002D3CF0);
    sub_10001DB34();
    sub_100008034(&qword_1002D3D40, &qword_1002D3D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3D18);
  }

  return result;
}

unint64_t sub_10001DB34()
{
  result = qword_1002D3D20;
  if (!qword_1002D3D20)
  {
    sub_1000C7784(&qword_1002D3D28);
    sub_100008034(&qword_1002D3D30, &qword_1002D3D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3D20);
  }

  return result;
}

uint64_t sub_10001DBEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000C773C(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 sub_10001DC54@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RCRecordButton();
  v5 = *(v1 + *(v4 + 28));
  swift_getKeyPath();
  *&v14 = v5;
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v5 + 24))
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = static Color.clear.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v13[22] = v15;
  *&v13[38] = v16;
  *&v13[6] = v14;
  v7 = *(v2 + *(v4 + 48));
  v8 = (a1 + *(sub_1000C773C(&qword_1002D3CF0) + 36));
  v9 = *(type metadata accessor for RoundedRectangle() + 20);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = type metadata accessor for RoundedCornerStyle();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  *v8 = v7;
  *(v8 + 1) = v7;
  *&v8[*(sub_1000C773C(&qword_1002D3D48) + 36)] = 256;
  *a1 = v6;
  *(a1 + 8) = 256;
  *(a1 + 10) = *v13;
  *(a1 + 26) = *&v13[16];
  result = *&v13[32];
  *(a1 + 42) = *&v13[32];
  *(a1 + 56) = *(&v16 + 1);
  return result;
}

double sub_10001DE4C@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Capsule();
  __chkstk_darwin(v3 - 8, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C773C(&qword_1002D3D58);
  __chkstk_darwin(v7, v8);
  v10 = v19 - v9;
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(v6, v11, v12);
  v13 = *(v1 + *(type metadata accessor for RCRecordButton() + 28));
  swift_getKeyPath();
  *&v19[0] = v13;
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v13 + 24))
  {
    v14 = *(v13 + 24);
  }

  else
  {
    v14 = static Color.clear.getter();
  }

  sub_100169FD0(v6, v10, &type metadata accessor for Capsule);
  *&v10[*(v7 + 52)] = v14;
  *&v10[*(v7 + 56)] = 256;
  v15 = qword_1002CDF40;

  if (v15 != -1)
  {
    swift_once();
  }

  if (qword_1002CDF48 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10001DBEC(v10, a1, &qword_1002D3D58);
  v16 = (a1 + *(sub_1000C773C(&qword_1002D3CE0) + 36));
  v17 = v19[1];
  *v16 = v19[0];
  v16[1] = v17;
  result = *&v20;
  v16[2] = v20;
  return result;
}

unint64_t sub_10001E2F0()
{
  result = qword_1002D1518;
  if (!qword_1002D1518)
  {
    sub_1000C7784(&qword_1002D1508);
    sub_10001E38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1518);
  }

  return result;
}

unint64_t sub_10001E38C()
{
  result = qword_1002D1520;
  if (!qword_1002D1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1520);
  }

  return result;
}

unint64_t sub_10001E3E0()
{
  result = qword_1002D3C30;
  if (!qword_1002D3C30)
  {
    sub_1000C7784(&qword_1002D3C38);
    sub_100008034(&qword_1002D1678, &qword_1002D1680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3C30);
  }

  return result;
}

unint64_t sub_10001E568()
{
  result = qword_1002D1BA8;
  if (!qword_1002D1BA8)
  {
    sub_1000C7784(&qword_1002D1BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1BA8);
  }

  return result;
}

uint64_t sub_10001E5E4()
{
  v1[4] = v0;
  v2 = sub_1000C773C(&qword_1002D67B0);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[11] = v5;
  v1[12] = v4;

  return _swift_task_switch(sub_1001A6C78, v5, v4);
}

unint64_t sub_10001E718()
{
  result = qword_1002D2520;
  if (!qword_1002D2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2520);
  }

  return result;
}

unint64_t sub_10001E770()
{
  result = qword_1002D2528;
  if (!qword_1002D2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2528);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for LabelConfigurationMapperKey(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_10001E7D4@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RCRecordButton();
  v5 = *(a1 + *(v4 + 28));
  swift_getKeyPath();
  *&v14 = v5;
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v5 + 24))
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = static Color.clear.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v13[22] = v15;
  *&v13[38] = v16;
  *&v13[6] = v14;
  v7 = *(a1 + *(v4 + 52));
  v8 = (a2 + *(sub_1000C773C(&qword_1002D3CF0) + 36));
  v9 = *(type metadata accessor for RoundedRectangle() + 20);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = type metadata accessor for RoundedCornerStyle();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  *v8 = v7;
  *(v8 + 1) = v7;
  *&v8[*(sub_1000C773C(&qword_1002D3D48) + 36)] = 256;
  *a2 = v6;
  *(a2 + 8) = 256;
  *(a2 + 10) = *v13;
  *(a2 + 26) = *&v13[16];
  result = *&v13[32];
  *(a2 + 42) = *&v13[32];
  *(a2 + 56) = *(&v16 + 1);
  return result;
}

double sub_10001E9CC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCRecordButton() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_10001E7D4(v4, a1).n128_u64[0];
  return result;
}

void sub_10001EA94()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for RCFolderView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
    [v0 safeAreaInsets];
    if ((v0[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_isBottomContainerViewHidden] & 1) == 0)
    {
      v6 = v5;
      [*&v0[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerView] frame];
      v5 = v6 + CGRectGetHeight(v11);
    }

    [v2 setContentInset:{UIEdgeInsetsZero.top, left, v5, right}];
  }

  if ((v0[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_isBottomContainerViewHidden] & 1) == 0)
  {
    v7 = *&v0[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerViewBottomConstraint];
    if (v7)
    {
      v8 = v7;
      [v0 safeAreaInsets];
      [v8 setConstant:-v9];
    }
  }
}

id sub_10001EBC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v6 = [v5 recordingsCollectionViewLayoutListAppearance];
  v7 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:v6];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001FE9C;
  v14[3] = &unk_10028B560;
  v14[4] = v6;
  [v7 setItemSeparatorHandler:v14];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _leadingSwipeActionsConfigurationProvider];
  [v7 setLeadingSwipeActionsConfigurationProvider:v9];

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 _trailingSwipeActionsConfigurationProvider];
  [v7 setTrailingSwipeActionsConfigurationProvider:v11];

  v12 = [NSCollectionLayoutSection sectionWithListConfiguration:v7 layoutEnvironment:v4];

  return v12;
}

id sub_10001F000(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained reuseIdentifier];
  v12 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];

  objc_opt_class();
  LOBYTE(v11) = objc_opt_isKindOfClass();
  v13 = v12;
  if (v11)
  {
    v14 = objc_loadWeakRetained((a1 + 32));
    v15 = [v14 cellsHashTable];
    [v15 addObject:v13];

    v16 = [RCRecordingCellDisplayModel recordingDisplayModelWithSavedRecording:v9];
    v17 = objc_loadWeakRetained((a1 + 32));
    [v17 _configureCell:v13 usingDisplayModel:v16];

    v18 = [v7 indexPathForSelectedItem];
    v19 = [v8 isEqual:v18];

    if (v19)
    {
      [v13 setSelected:1];
      v20 = objc_loadWeakRetained((a1 + 32));
      v21 = [v20 inDidSelect];

      if (v21)
      {
        v22 = objc_loadWeakRetained((a1 + 32));
        v23 = [v13 UUID];
        [v22 didSelectCellWithUUID:v23];
      }
    }
  }

  return v13;
}

void sub_10001F964(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002D7140;
  qword_1002D7140 = v1;
}

id sub_10001FE9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[UIListSeparatorConfiguration alloc] initWithListAppearance:*(a1 + 32)];
  v5 = [v3 item];

  if (!v5)
  {
    [v4 setTopSeparatorVisibility:1];
  }

  return v4;
}

uint64_t sub_10001FF20()
{

  return _swift_task_switch(sub_100020110, 0, 0);
}

uint64_t sub_10002001C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100020110()
{
  v1 = v0[4] + 1;
  if (v1 == v0[3])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[4] = v1;
    v4 = (v0[2] + 40 * v1);
    v5 = v4[7];
    v6 = v4[8];
    sub_10000AACC(v4 + 4, v5);
    v8 = (*(v6 + 8) + **(v6 + 8));
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_10001FF20;

    return v8(v5, v6);
  }
}

uint64_t sub_10002029C()
{

  return _swift_task_switch(sub_100020398, 0, 0);
}

uint64_t sub_100020398()
{
  sub_100014B64(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000203F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100020438()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002001C;

  return sub_10002052C(a1, v4, v5, v6);
}

uint64_t sub_10002052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1000205C4, v6, v5);
}

uint64_t sub_1000205C4()
{
  if (qword_1002CDF50 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10001CC18;

  return sub_10001890C();
}

uint64_t sub_1000206E0(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

void sub_1000208A0(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[RCAppGroupStorage sharedInstance];
  v4 = [v3 transcriptionIsSupported];

  if (v4 != v2)
  {
    v5 = +[RCAppGroupStorage sharedInstance];
    [v5 setTranscriptionIsSupported:v2];

    v6 = +[RCSSavedRecordingService sharedService];
    [v6 clearAndReloadSearchMetadataWithCompletionBlock:0];
  }
}

uint64_t sub_100020968()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100020A60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100020ED4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002001C;

  return sub_100020F88(a1, v4, v5, v6);
}

uint64_t sub_100020F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100021020, v6, v5);
}

uint64_t sub_100021020()
{
  v1 = *(v0 + 16);

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 orientation];

  *(v1 + OBJC_IVAR____TtC10VoiceMemos25StereoOrientationProvider_deviceOrientation) = v3;
  v4 = [objc_opt_self() defaultCenter];
  [v4 addObserver:v1 selector:"deviceOrientationDidUpdate:" name:UIDeviceOrientationDidChangeNotification object:0];

  v5 = *(v0 + 8);

  return v5();
}

void sub_10002111C(uint64_t a1)
{
  v2 = +[RCSSavedRecordingService sharedService];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000BE14C;
  v6[3] = &unk_10028C710;
  objc_copyWeak(&v7, (a1 + 40));
  v3 = [v2 observeFinalizingRecordings:v6];
  v4 = *(a1 + 32);
  v5 = *(v4 + 240);
  *(v4 + 240) = v3;

  objc_destroyWeak(&v7);
}

uint64_t sub_1000211F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002001C;

  return sub_1000212A4(a1, v4, v5, v6);
}

uint64_t sub_1000212A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a4;
  v5 = type metadata accessor for Locale();
  v4[39] = v5;
  v4[40] = *(v5 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = type metadata accessor for MainActor();
  v4[43] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v4[44] = v6;
  *v6 = v4;
  v6[1] = sub_100022254;

  return sub_1000213BC();
}

uint64_t sub_1000213BC()
{
  v1 = type metadata accessor for Locale();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();

  return _swift_task_switch(sub_100021478, 0, 0);
}

uint64_t sub_100021478()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = objc_opt_self();
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v1, v3);
  v6 = [v4 generalASRLanguageForLocale:isa];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v0[22] = v7;
  v0[23] = v9;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100021F98;
  v10 = swift_continuation_init();
  v0[17] = sub_1000C773C(&qword_1002D4148);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100021D34;
  v0[13] = &unk_1002938F8;
  v0[14] = v10;
  [v4 installedLanguagesForTaskHint:1009 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002182C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001FF1C;

  return sub_1000218E4(a1, v4, v5, v6);
}

uint64_t sub_1000218E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_10018BB9C;

  return sub_10018C01C();
}

unint64_t sub_10002198C()
{
  result = qword_1002D28C0;
  if (!qword_1002D28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D28C0);
  }

  return result;
}

unint64_t sub_1000219E0()
{
  result = qword_1002D28A0;
  if (!qword_1002D28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D28A0);
  }

  return result;
}

uint64_t sub_100021AB0()
{
  v0 = [objc_opt_self() sharedContainer];
  if (!v0 || (v1 = v0, v2 = [v0 newBackgroundModel], v1, !v2))
  {
LABEL_28:
    v18 = 0;
    v19 = 0;
    return v19 | v18;
  }

  __chkstk_darwin(v3, v4);
  v5 = [v2 context];
  sub_1000C773C(&qword_1002D5610);
  NSManagedObjectContext.performAndWait<A>(_:)();

  result = v23;
  v7 = *(v23 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = (v23 + 32);
    while (1)
    {
      v14 = *v12;
      if (*v12 >= 0.0 && v14 < 30.0)
      {
        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      else if (v14 >= 30.0 && v14 < 60.0)
      {
        v13 = __OFADD__(v10++, 1);
        if (v13)
        {
          goto LABEL_41;
        }
      }

      else if (v14 >= 60.0 && v14 < 300.0)
      {
        v13 = __OFADD__(v9++, 1);
        if (v13)
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      else
      {
        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          goto LABEL_42;
        }
      }

      ++v12;
      if (!--v7)
      {
        goto LABEL_30;
      }
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_30:

  v20 = sub_1000224C4(v11);
  v21 = sub_1000224C4(v10);
  v22 = sub_1000224C4(v9);
  result = sub_1000224C4(v8);
  if (v20 > 0x7FFFFFFF)
  {
    goto LABEL_43;
  }

  if (v21 > 0x7FFFFFFF)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v22 > 0x7FFFFFFF)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v20 < 0xFFFFFFFF80000000 || v21 < 0xFFFFFFFF80000000 || v22 < 0xFFFFFFFF80000000 || result < 0xFFFFFFFF80000000)
  {
    goto LABEL_46;
  }

  if (result <= 0x7FFFFFFF)
  {
    v18 = v20;
    v19 = v21 << 32;
    return v19 | v18;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_100021D34(uint64_t a1)
{
  v1 = *sub_10000AACC((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_100021DAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(RCBuiltinRecordingsFolder) initWithType:0];
  v5 = [a1 playableRecordingsForFolder:v4];

  sub_100022208();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

LABEL_14:
    *a2 = _swiftEmptyArrayStorage;
    return result;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_1000224A4(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v16 = a2;
    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * i + 32);
      }

      v11 = v10;
      [v10 length];
      v13 = v12;

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1000224A4((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      _swiftEmptyArrayStorage[v15 + 4] = v13;
    }

    a2 = v16;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100021F98()
{

  return _swift_task_switch(sub_100022078, 0, 0);
}

uint64_t sub_100022078()
{
  v1 = sub_100022110(v0[22], v0[23], v0[18]);

  v2 = v0[1];

  return v2(v1 & 1);
}

uint64_t sub_100022110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_100022208()
{
  result = qword_1002D1208;
  if (!qword_1002D1208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D1208);
  }

  return result;
}

uint64_t sub_100022254(char a1)
{
  v2 = *v1;
  *(v2 + 217) = a1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 360) = v4;
  *(v2 + 368) = v3;

  return _swift_task_switch(sub_10002B0EC, v4, v3);
}

char *sub_1000223A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000C773C(&qword_1002D6C98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000224A4(char *a1, int64_t a2, char a3)
{
  result = sub_1000223A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000224C4(uint64_t a1)
{
  v1 = 500;
  if ((a1 - 501) < 0xFFFFFFFFFFFFFE70)
  {
    v1 = 501;
  }

  if ((a1 - 101) <= 0xFFFFFFFFFFFFFFCDLL)
  {
    v2 = v1;
  }

  else
  {
    v2 = 100;
  }

  if ((a1 - 51) <= 0xFFFFFFFFFFFFFFD7)
  {
    v3 = v2;
  }

  else
  {
    v3 = 50;
  }

  if ((a1 - 11) >= 0xFFFFFFFFFFFFFFF6)
  {
    v4 = 10;
  }

  else
  {
    v4 = v3;
  }

  if (a1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100022520()
{
  result = qword_1002D5608;
  if (!qword_1002D5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5608);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RecordingDurationData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_100022590()
{
  result = qword_1002D28B8;
  if (!qword_1002D28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D28B8);
  }

  return result;
}

unint64_t sub_1000225E8()
{
  result = qword_1002D2898;
  if (!qword_1002D2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2898);
  }

  return result;
}

uint64_t sub_1000226DC()
{
  v1[3] = v0;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10002279C, 0, 0);
}

uint64_t sub_10002279C()
{
  v1 = objc_opt_self();
  v2 = [v1 builtInFolderWithType:0];
  v0[7] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = [v1 builtInFolderWithType:3];
    v0[8] = v4;
    if (v4)
    {
      v5 = v4;
      v7 = v0[5];
      v6 = v0[6];
      v9 = v0[3];
      v8 = v0[4];
      v10 = swift_allocObject();
      v0[9] = v10;
      v10[2] = v9;
      v10[3] = v3;
      v10[4] = v5;
      v11 = v9;
      v12 = v3;
      v13 = v5;
      v0[10] = [v11 context];
      (*(v7 + 104))(v6, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v8);
      v14 = swift_task_alloc();
      v0[11] = v14;
      *v14 = v0;
      v14[1] = sub_100111588;
      v15 = v0[6];

      return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v15, sub_10001D0E4, v10, &type metadata for UInt);
    }
  }

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_100022998()
{

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_100022A80()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_timeController] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator____lazy_storage___transcriptView] = 0;
  v0[OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_isDisplayingTranscriptView] = 0;
  v0[OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_isWindowSceneInForeground] = 0;
  v2 = [objc_opt_self() sharedAppDelegate];
  if (v2 && (v3 = v2, v4 = [v2 defaultSceneDelegate], v3, v4) && (v5 = objc_msgSend(v4, "mainViewController"), v4, v6 = objc_msgSend(v5, "mainControllerHelper"), v5, v7 = objc_msgSend(v6, "activityStatePublisher"), v6, v7))
  {
    *(&v37 + 1) = type metadata accessor for RCUserActivityStatePublisher();
    v38 = &off_10028FA90;
    *&v36 = v7;
  }

  else
  {
    v7 = 0;
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  v8 = qword_1002CDF50;
  v31 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *(qword_1002E90D0 + OBJC_IVAR____TtC10VoiceMemos30TranscriptionModelAssetService__downloadStateValueSubject);
  v10 = type metadata accessor for TranscriptViewContextProvider();
  swift_allocObject();

  v11 = sub_100022F60(&v36, v9);

  v12 = OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_contextProvider;
  *&v1[OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_contextProvider] = v11;
  type metadata accessor for TranscriptViewDataProvider();
  swift_allocObject();
  v13 = sub_1000239E0();
  v14 = OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_dataProvider;
  *&v1[OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_dataProvider] = v13;
  type metadata accessor for TranscriptViewConfigurationProvider();
  swift_allocObject();
  v15 = sub_100023D18();
  v16 = OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_configurationProvider;
  *&v1[OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_configurationProvider] = v15;
  v17 = *&v1[v12];

  *&v1[OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_configurationMediator] = sub_10002455C(v15, v17);
  v18 = *&v1[v12];
  *(&v37 + 1) = v10;
  v38 = &off_1002902C8;
  *&v36 = v18;
  type metadata accessor for TranscriptViewInteractionHandler();
  v19 = swift_allocObject();
  v20 = sub_10001466C(&v36, v10);
  __chkstk_darwin(v20, v20);
  v22 = (&v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v34 = v10;
  v35 = &off_1002902C8;
  *&v33 = v24;
  *(v19 + 56) = 0;
  swift_unknownObjectWeakInit();
  sub_100015FD0(&v33, v19 + 16);

  sub_100014B64(&v36);
  *&v1[OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_interactionDelegate] = v19;
  v25 = *&v1[v16];
  v26 = *&v1[v14];
  v27 = *&v1[v12];

  sub_100024A80(v25, v26, v19, &off_10028D9D0, v27, &off_1002902A8);

  sub_100024CF4(&v36);
  sub_100015FD0(&v36, &v1[OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_transcriptViewPresenter]);
  v28 = type metadata accessor for TranscriptViewCoordinator();
  v32.receiver = v1;
  v32.super_class = v28;
  v29 = objc_msgSendSuper2(&v32, "init");

  *(*&v29[OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_configurationProvider] + 24) = &off_100294C30;
  swift_unknownObjectWeakAssign();
  *(*&v29[OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_dataProvider] + 24) = &off_100294C40;
  swift_unknownObjectWeakAssign();
  return v29;
}

uint64_t sub_100022F60(uint64_t a1, uint64_t a2)
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = sub_1000C8898(_swiftEmptyArrayStorage);
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  *(v2 + 16) = v5;
  sub_1000C773C(&qword_1002D0CC8);
  swift_allocObject();
  *(v2 + 24) = PassthroughSubject.init()();
  CurrentValueSubject.value.getter();
  v6 = v9;
  v7 = v10;
  *(v2 + 32) = 2;
  *(v2 + 40) = v6;
  *(v2 + 48) = v7;
  *(v2 + 49) = 0;
  *(v2 + 56) = 0;
  sub_1000232A4(a1, &v9);
  if (v11)
  {
    sub_10000AACC(&v9, v11);
    type metadata accessor for RCUserActivityStatePublisher();
    sub_100023334();
    swift_allocObject();
    swift_weakInit();
    sub_1000C773C(&qword_1002D0CE8);
    sub_100008034(&qword_1002D0CF0, &qword_1002D0CE8);
    Publisher<>.sink(receiveValue:)();

    sub_100014B64(&v9);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    sub_100023954(&v9);
  }

  v9 = a2;
  swift_allocObject();
  swift_weakInit();
  sub_1000C773C(&unk_1002D4AB0);
  sub_100008034(&qword_1002D0CE0, &unk_1002D4AB0);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_100023954(a1);
  return v2;
}

uint64_t sub_10002325C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000232A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D0CD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023314(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100023334()
{
  v1 = sub_1000C773C(&qword_1002D0740);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC10VoiceMemos28RCUserActivityStatePublisher_userActivityChangedSubject);
  sub_1000C773C(&qword_1002D0748);
  sub_100008034(&qword_1002D0750, &qword_1002D0748);
  sub_1000234CC();
  Publisher<>.removeDuplicates()();
  sub_100008034(&qword_1002D0760, &qword_1002D0740);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v6;
}

unint64_t sub_1000234CC()
{
  result = qword_1002D0758;
  if (!qword_1002D0758)
  {
    type metadata accessor for RCUserActivityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0758);
  }

  return result;
}

uint64_t sub_100023524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100023578(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000235CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *&v13 = *(result + 32);
    *(&v13 + 1) = v1;
    LOBYTE(v14) = v2;
    *(&v14 + 1) = *(result + 49);
    *(&v14 + 1) = *(result + 56);
    v4 = *(result + 48);
    v15 = *(result + 32);
    v16 = v4;
    v17[0] = v15;
    v17[1] = v4;
    v5 = v14;
    *(result + 32) = v13;
    *(result + 48) = v5;
    sub_100023764(v1, v2);
    sub_100023708(&v15, v12);
    sub_100023708(&v13, v12);
    sub_100023778(v17);
    v6 = 256;
    if (!BYTE1(v16))
    {
      v6 = 0;
    }

    v7 = v6 | v16;
    v8 = 0x10000;
    if (!BYTE2(v16))
    {
      v8 = 0;
    }

    v9 = 0x1000000;
    if (!BYTE3(v16))
    {
      v9 = 0;
    }

    v10 = v7 | v8 | v9;
    v11 = &_mh_execute_header;
    if (!BYTE4(v16))
    {
      v11 = 0;
    }

    sub_1000237CC(v15, *(&v15 + 1), v10 | v11, *(&v16 + 1));
    sub_100023778(&v15);
    sub_100023778(&v13);
  }

  return result;
}

uint64_t sub_100023764(uint64_t a1, char a2)
{
  if ((a2 & 0xC0) == 0x40)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1000237CC(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  LOWORD(v14) = result;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  if (__PAIR64__(*(v4 + 33), *(v4 + 32)) != __PAIR64__(BYTE1(result), result))
  {
    goto LABEL_31;
  }

  v5 = *(v4 + 48);
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((v5 & 0xC0) != 0x40)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v6 = *(v4 + 40);
      if (a2 | a3 ^ 0x80)
      {
        v7 = v5 & 0xC0;
        if (a3 == 128 && a2 == 1)
        {
          if (v7 != 128 || v6 != 1)
          {
            goto LABEL_31;
          }
        }

        else if (v7 != 128 || v6 != 2)
        {
          goto LABEL_31;
        }
      }

      else if ((v5 & 0xC0) != 0x80 || v6 != 0)
      {
        goto LABEL_31;
      }

      if (v5 != 128)
      {
LABEL_31:
        v10 = *(v4 + 48);
        v12[0] = *(v4 + 32);
        v12[1] = v10;
        v13[0] = v14;
        v13[1] = v15;
        v13[2] = v12[0];
        v13[3] = v10;
        v11[2] = v14;
        v11[3] = v15;
        v11[4] = v12[0];
        v11[5] = v10;
        sub_100023708(v12, v11);
        sub_100023708(&v14, v11);

        PassthroughSubject.send(_:)();

        return sub_10002C970(v13);
      }
    }
  }

  else if (v5 >= 0x40)
  {
    goto LABEL_31;
  }

  if (*(v4 + 49) != BYTE1(v15) || ((*(v4 + 50) ^ BYTE2(v15)) & 1) != 0 || ((*(v4 + 51) ^ BYTE3(v15)) & 1) != 0 || ((*(v4 + 52) ^ BYTE4(v15)) & 1) != 0 || *(v4 + 56) != a4)
  {
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_100023954(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D0CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000239E0()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0x80;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_1000C8898(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + 128) = v1;
  if (qword_1002CDF50 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();

  sub_1000C773C(&unk_1002D4AB0);
  sub_100023BC4();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v0;
}

uint64_t sub_100023B8C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100023BC4()
{
  result = qword_1002D0CE0;
  if (!qword_1002D0CE0)
  {
    sub_1000C7784(&unk_1002D4AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0CE0);
  }

  return result;
}

uint64_t sub_100023C28(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = (v2 & 0xC0) == 0x80 && v1 == 2;
    if (v5 && v2 == 128 && (v6 = *(result + 120)) != 0)
    {
      v7 = *(result + 112);

      sub_100179F30(v7, v6, 0);

      *(v4 + 112) = 0;
      *(v4 + 120) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100023D18()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 129) = 5;
  v1 = objc_opt_self();
  v2 = [v1 sharedStyleProvider];
  v3 = [v2 transcriptViewPlaybackDefaultTextColor];

  v4 = sub_100023E44(v3);
  v5 = [v1 sharedStyleProvider];
  v6 = [v5 transcriptViewPlaybackHighlightedTextColor];

  v7 = sub_100023E44(v6);
  *(v0 + 32) = v4;
  *(v0 + 40) = v7;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 255;
  *(v0 + 114) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  return v0;
}

unint64_t sub_100023E44(void *a1)
{
  v2 = sub_100023F0C();
  sub_1000067AC(0, &qword_1002CE530);
  sub_1000240E4(&qword_1002CE538, &qword_1002CE530);
  v3 = a1;
  AnyHashable.init<A>(_:)();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v2;
  sub_1000243CC(&v6, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
  return v7;
}

unint64_t sub_100023F0C()
{
  sub_1000C773C(&qword_1002CE548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100241790;
  *(inited + 32) = NSFontAttributeName;
  v1 = objc_opt_self();
  v2 = NSFontAttributeName;
  v3 = [v1 sharedStyleProvider];
  [v3 transcriptViewFont];

  sub_1000067AC(0, &qword_1002CE550);
  sub_1000240E4(&qword_1002CE558, &qword_1002CE550);
  AnyHashable.init<A>(_:)();
  *(inited + 80) = NSParagraphStyleAttributeName;
  v4 = NSParagraphStyleAttributeName;
  sub_100024134();
  sub_1000067AC(0, &qword_1002CE560);
  sub_1000240E4(&qword_1002CE568, &qword_1002CE560);
  AnyHashable.init<A>(_:)();
  v5 = sub_100024294(inited);
  swift_setDeallocating();
  sub_1000C773C(&qword_1002CE570);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_1000240E4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000067AC(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100024134()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultParagraphStyle];
  [v1 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000067AC(0, &qword_1002CE578);
  if (swift_dynamicCast())
  {
    v2 = [objc_opt_self() sharedStyleProvider];
    [v2 transcriptViewParagraphSpacing];
    [v5 setParagraphSpacing:?];

    return v5;
  }

  else
  {
    v4 = [v0 defaultParagraphStyle];

    return v4;
  }
}

unint64_t sub_100024294(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C773C(&qword_1002CE540);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000B46C(v4, &v14, &qword_1002CE570);
      v5 = v14;
      result = sub_10000B4D4(v14);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = v3[7] + 40 * result;
      v9 = v15;
      v10 = v16;
      *(v8 + 32) = v17;
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 48;
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

id sub_1000243CC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002454C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000CA490(v13, a3 & 1);
      v8 = sub_10002454C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for Key(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1000CB92C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 40 * v8;

    return sub_1000CC1D4(a1, v19);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  v21 = v18[7] + 40 * v8;
  v22 = *a1;
  v23 = *(a1 + 16);
  *(v21 + 32) = *(a1 + 32);
  *v21 = v22;
  *(v21 + 16) = v23;
  v24 = v18[2];
  v12 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v25;

  return a2;
}

char *sub_10002455C(uint64_t a1, uint64_t a2)
{
  v19 = type metadata accessor for TranscriptViewConfigurationProvider();
  v20 = &off_10028D8F8;
  v18[0] = a1;
  v16 = type metadata accessor for TranscriptViewContextProvider();
  v17 = &off_1002902C8;
  v15[0] = a2;
  v4 = objc_allocWithZone(type metadata accessor for TranscriptViewConfigurationMediator());
  v5 = sub_10001466C(v18, v19);
  __chkstk_darwin(v5, v5);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_10001466C(v15, v16);
  __chkstk_darwin(v9, v9);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10002474C(*v7, *v11, v4);
  sub_100014B64(v15);
  sub_100014B64(v18);
  return v13;
}

char *sub_10002474C(uint64_t a1, uint64_t a2, char *a3)
{
  v15[3] = type metadata accessor for TranscriptViewConfigurationProvider();
  v15[4] = &off_10028D8F8;
  v15[0] = a1;
  v6 = type metadata accessor for TranscriptViewContextProvider();
  *&a3[OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextChangedCancellable] = 0;
  *&a3[OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_autoScrollTimeoutDuration] = 0x4014000000000000;
  v14 = &off_1002902C8;
  *&a3[OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_autoScrollTimer] = 0;
  v13 = v6;
  v12[0] = a2;
  *&a3[OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_timeController] = 0;
  sub_1000CC430(v15, &a3[OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager]);
  sub_1000CC430(v12, &a3[OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider]);
  v11.receiver = a3;
  v11.super_class = type metadata accessor for TranscriptViewConfigurationMediator();
  v7 = objc_msgSendSuper2(&v11, "init");
  sub_10000AACC(v12, v13);
  v8 = v7;
  sub_100024968();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000C773C(&qword_1002D5AB0);
  sub_1000249F8();
  v9 = Publisher<>.sink(receiveValue:)();

  sub_100014B64(v15);

  *&v8[OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextChangedCancellable] = v9;

  sub_100014B64(v12);
  return v8;
}

uint64_t sub_100024930()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024968()
{
  sub_1000C773C(&qword_1002D0CC8);
  sub_100008034(&qword_1002D0CD0, &qword_1002D0CC8);
  return Publisher.eraseToAnyPublisher()();
}

unint64_t sub_1000249F8()
{
  result = qword_1002D5AB8;
  if (!qword_1002D5AB8)
  {
    sub_1000C7784(&qword_1002D5AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5AB8);
  }

  return result;
}

void *sub_100024A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[1] = a5;
  v10 = type metadata accessor for TranscriptViewConfigurationProvider();
  v28[3] = v10;
  v28[4] = &off_10028D930;
  v28[0] = a1;
  v11 = type metadata accessor for TranscriptViewDataProvider();
  v26 = v11;
  v27 = &off_100293D20;
  v25[0] = a2;
  type metadata accessor for TranscriptViewFactory();
  v12 = swift_allocObject();
  v13 = sub_10001466C(v28, v10);
  __chkstk_darwin(v13, v13);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_10001466C(v25, v26);
  __chkstk_darwin(v17, v17);
  v19 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v15;
  v22 = *v19;
  v12[5] = v10;
  v12[6] = &off_10028D930;
  v12[7] = v22;
  v12[2] = v21;
  v12[10] = v11;
  v12[11] = &off_100293D20;
  v12[13] = 0;
  swift_unknownObjectWeakInit();
  v12[15] = 0;
  swift_unknownObjectWeakInit();
  v12[16] = 0;
  v12[17] = 0;
  v12[13] = a4;
  swift_unknownObjectWeakAssign();
  v12[15] = a6;
  swift_unknownObjectWeakAssign();
  sub_100014B64(v25);
  sub_100014B64(v28);
  return v12;
}

uint64_t sub_100024CF4@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for TranscriptViewModel();
  v5 = __chkstk_darwin(v3, v4);
  __chkstk_darwin(v5, v6);
  v9 = &v53 - v8;
  v10 = v1[16];
  if (v10)
  {
    v11 = type metadata accessor for TranscriptViewPresenter();
    v12 = v10;
  }

  else
  {
    v13 = v1[5];
    v58 = v7;
    v14 = sub_10000AACC(v1 + 2, v13);
    v15 = *v14;
    v16 = a1;
    v57 = *(*v14 + 32);
    v17 = v57;
    v18 = *(v15 + 113);
    v19 = *(v15 + 114);
    v20 = sub_10000AACC(v1 + 7, v1[10]);
    v22 = *(*v20 + 64);
    v53 = *(*v20 + 72);
    v21 = v53;
    v23 = v3[10];
    v24 = type metadata accessor for UIContentUnavailableConfiguration();
    (*(*(v24 - 8) + 56))(&v9[v23], 1, 1, v24);
    *v9 = v22;
    *(v9 + 1) = v21;
    *(v9 + 2) = v17;
    *(v9 + 3) = _swiftEmptyArrayStorage;
    a1 = v16;
    *(v9 + 2) = 0u;
    *(v9 + 3) = 0u;
    v9[64] = 1;
    *(v9 + 9) = 0;
    *(v9 + 10) = 0;
    *(v9 + 44) = 256;
    *(v9 + 12) = 0;
    *(v9 + 13) = 0;
    v9[v3[11]] = v18;
    v9[v3[12]] = v19;
    sub_1000CC430((v1 + 7), v62);
    swift_unknownObjectWeakLoadStrong();
    v54 = v1[13];
    swift_unknownObjectWeakLoadStrong();
    v55 = v1[15];
    v25 = sub_10001466C(v62, v63);
    v56 = &v53;
    __chkstk_darwin(v25, v25);
    v27 = (&v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v29 = *v27;
    v30 = type metadata accessor for TranscriptViewDataProvider();
    v60 = v30;
    v61 = &off_100293D20;
    v59[0] = v29;
    type metadata accessor for TranscriptViewController();
    v31 = swift_allocObject();
    v32 = sub_10001466C(v59, v30);
    __chkstk_darwin(v32, v32);
    v34 = (&v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    v36 = *v34;
    v31[5] = v30;
    v31[6] = &off_100293D20;
    v31[2] = v36;
    v31[8] = 0;
    swift_unknownObjectWeakInit();
    v31[10] = 0;
    swift_unknownObjectWeakInit();
    v31[8] = v54;
    swift_unknownObjectWeakAssign();

    swift_unknownObjectRelease();
    v31[10] = v55;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100014B64(v59);
    sub_100014B64(v62);
    v37 = v58;
    sub_10002572C(v9, v58);
    v38 = objc_allocWithZone(type metadata accessor for TranscriptView());

    v39 = v1;
    v40 = sub_10002590C(v37, v31);

    sub_1000CC430((v39 + 2), v62);
    sub_1000CC430((v39 + 7), v59);
    v41 = sub_10001466C(v62, v63);
    __chkstk_darwin(v41, v41);
    v43 = (&v53 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v44 + 16))(v43);
    v45 = sub_10001466C(v59, v60);
    __chkstk_darwin(v45, v45);
    v47 = (&v53 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v48 + 16))(v47);
    v49 = *v43;
    v50 = *v47;
    v51 = v40;
    v12 = sub_10002A904(v49, v50, v51);
    sub_100014B64(v59);
    sub_100014B64(v62);
    v39[16] = v12;

    v11 = type metadata accessor for TranscriptViewPresenter();
    sub_10002A084(v9);
  }

  a1[3] = v11;
  a1[4] = &off_100293AC8;
  *a1 = v12;
}

uint64_t type metadata accessor for TranscriptViewModel()
{
  result = qword_1002D6A30;
  if (!qword_1002D6A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100025334()
{
  if (!qword_1002D6A40)
  {
    type metadata accessor for Key(255);
    sub_1000255C0(&qword_1002CE138, type metadata accessor for Key);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D6A40);
    }
  }
}

void sub_1000253D0()
{
  sub_100025334();
  if (v0 <= 0x3F)
  {
    sub_100025650(319, &qword_1002D6A48, &type metadata for HighlightConfiguration, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1000256A0(319, &qword_1002D6A50, type metadata accessor for UIEdgeInsets);
      if (v2 <= 0x3F)
      {
        sub_100025650(319, &qword_1002D6A58, &type metadata for AutoScrollType, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100025650(319, &qword_1002D6A60, &type metadata for TextAttachmentConfiguration, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1000256A0(319, &unk_1002D6A68, &type metadata accessor for UIContentUnavailableConfiguration);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100025578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000255C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100025650(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000256A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10002572C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025790(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t type metadata accessor for TranscriptView()
{
  result = qword_1002D4278;
  if (!qword_1002D4278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100025824()
{
  result = type metadata accessor for TranscriptViewModel();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_10002590C(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v4 = sub_1000C773C(&qword_1002D4300);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8, v9);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8, v11);
  v12 = type metadata accessor for UIContentUnavailableConfiguration();
  __chkstk_darwin(v12 - 8, v13);
  v14 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView;
  type metadata accessor for TranscriptView.TranscriptTextView();
  *&v2[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_searchButton;
  *&v2[v15] = [objc_allocWithZone(UIButton) init];
  v16 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_emptyStateView;
  sub_1000067AC(0, &qword_1002D4338);
  static UIContentUnavailableConfiguration.empty()();
  *&v2[v16] = UIContentUnavailableView.init(configuration:)();
  v17 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_topFadeView;
  v18 = type metadata accessor for TranscriptView.FadeView();
  v19 = objc_allocWithZone(v18);
  *&v2[v17] = sub_100025FBC(0);
  v20 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_bottomFadeView;
  v21 = objc_allocWithZone(v18);
  *&v2[v20] = sub_100025FBC(1);
  *&v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textBottomAnchorToLayoutMarginsBottomAnchorConstraint] = 0;
  *&v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textBottomAnchorToSearchTopAnchorConstraint] = 0;
  *&v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewTapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewPanGestureRecognizer] = 0;
  v22 = &v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_animatedContentOffsetTarget];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 1;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v23 = sub_1000C8898(_swiftEmptyArrayStorage);
  }

  else
  {
    v23 = &_swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_cancellables] = v23;
  sub_10002572C(v37, &v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel]);
  v24 = &v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller];
  *(v24 + 3) = type metadata accessor for TranscriptViewController();
  *(v24 + 4) = &off_100293FF8;
  *v24 = a2;
  v25 = swift_unknownObjectWeakInit();
  sub_100026288(v25, &v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_layoutHelper]);
  v26 = swift_unknownObjectWeakInit();
  v39 = 1;
  sub_1000262E4(v26, &v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textUpdateHelper]);
  v27 = type metadata accessor for TranscriptView();
  v38.receiver = v2;
  v38.super_class = v27;

  v28 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v29 = *&v28[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView];
  v30 = v28;
  [v29 setEditable:0];
  [v29 setScrollsToTop:0];
  [v29 setFindInteractionEnabled:1];
  [v29 setDelegate:v30];
  *&v29[OBJC_IVAR____TtCC10VoiceMemos14TranscriptView18TranscriptTextView_findInteractionObserver + 8] = &off_100293A10;
  swift_unknownObjectWeakAssign();
  [v29 setAdjustsFontForContentSizeCategory:1];
  [v29 setIsAccessibilityElement:1];
  [v29 setAccessibilityTraits:v37];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v31 = String._bridgeToObjectiveC()();

  [v29 setAccessibilityLabel:v31];

  sub_100026340();
  v32 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_emptyStateView;
  v33 = *&v30[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_emptyStateView];
  v34 = [objc_opt_self() systemBackgroundColor];
  [v33 setBackgroundColor:v34];

  [*&v30[v32] setHidden:1];
  sub_1000266A0();
  sub_100026DBC();
  sub_1000270EC();
  v35 = type metadata accessor for TranscriptViewModel();
  (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
  sub_100027308(v7);

  sub_10002A084(v37);
  sub_100003CBC(v7, &qword_1002D4300);
  return v30;
}

id sub_100025FBC(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TranscriptView.FadeView();
  v3 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 systemBackgroundColor];
  [v5 setBackgroundColor:v6];

  [v5 setUserInteractionEnabled:0];
  v7 = [v5 layer];

  v8 = sub_10002610C(a1 & 1);
  [v7 setMask:v8];

  return v5;
}

id sub_10002610C(char a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  sub_1000C773C(&unk_1002D4340);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100241790;
  v4 = objc_opt_self();
  v5 = v4;
  if (a1)
  {
    v6 = &selRef_clearColor;
  }

  else
  {
    v6 = &selRef_whiteColor;
  }

  if (a1)
  {
    v7 = &selRef_whiteColor;
  }

  else
  {
    v7 = &selRef_clearColor;
  }

  v8 = [v4 *v6];
  v9 = [v8 CGColor];

  type metadata accessor for CGColor(0);
  v11 = v10;
  *(v3 + 56) = v10;
  *(v3 + 32) = v9;
  v12 = [v5 *v7];
  v13 = [v12 CGColor];

  *(v3 + 88) = v11;
  *(v3 + 64) = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors:isa];

  return v2;
}

uint64_t sub_100026340()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C773C(&unk_1002D4320);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v15 - v9;
  [*(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_searchButton) addTarget:v1 action:"searchButtonTapped" forControlEvents:64];
  static UIButton.Configuration.glass()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() systemImageNamed:v11];

  UIButton.Configuration.image.setter();
  if (qword_1002CDF58 != -1)
  {
    swift_once();
  }

  UIButton.Configuration.title.setter();
  (*(v3 + 104))(v6, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v2);
  UIButton.Configuration.cornerStyle.setter();
  v13 = type metadata accessor for UIButton.Configuration();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  return UIButton.configuration.setter();
}

uint64_t sub_100026598()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1002D4160 = result;
  *algn_1002D4168 = v5;
  return result;
}

void sub_1000266A0()
{
  v1 = *&v0[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView];
  [v0 addSubview:v1];
  v2 = *&v0[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_searchButton];
  [v0 addSubview:v2];
  v3 = *&v0[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_emptyStateView];
  [v0 addSubview:v3];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_topFadeView]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_bottomFadeView]];
  [v0 bringSubviewToFront:v3];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setContentHuggingPriority:0 forAxis:0.0];
  [v3 setContentHuggingPriority:1 forAxis:0.0];
  LODWORD(v4) = 1132068864;
  [v3 setContentCompressionResistancePriority:1 forAxis:v4];
  v52 = objc_opt_self();
  sub_1000C773C(&unk_1002CE190);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10024CA20;
  v6 = [v1 leadingAnchor];
  v7 = [v0 layoutMarginsGuide];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8];
  *(v5 + 32) = v9;
  v10 = [v1 trailingAnchor];
  v11 = [v0 layoutMarginsGuide];
  v12 = [v11 trailingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12];
  *(v5 + 40) = v13;
  v14 = [v1 topAnchor];
  v15 = [v0 layoutMarginsGuide];
  v16 = [v15 topAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  *(v5 + 48) = v17;
  v18 = [v2 bottomAnchor];
  v19 = [v0 layoutMarginsGuide];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v5 + 56) = v21;
  v22 = [v2 centerXAnchor];
  v23 = [v0 layoutMarginsGuide];
  v24 = [v23 centerXAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v5 + 64) = v25;
  v26 = [v3 leadingAnchor];
  v27 = [v0 layoutMarginsGuide];
  v28 = [v27 leadingAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  *(v5 + 72) = v29;
  v30 = [v3 trailingAnchor];
  v31 = [v0 layoutMarginsGuide];
  v32 = [v31 trailingAnchor];

  v33 = [v30 constraintEqualToAnchor:v32];
  *(v5 + 80) = v33;
  v34 = [v3 topAnchor];
  v35 = [v0 layoutMarginsGuide];
  v36 = [v35 topAnchor];

  v37 = [v34 constraintEqualToAnchor:v36];
  *(v5 + 88) = v37;
  v38 = [v3 bottomAnchor];
  v39 = [v0 layoutMarginsGuide];
  v40 = [v39 bottomAnchor];

  v41 = [v38 constraintEqualToAnchor:v40];
  *(v5 + 96) = v41;
  sub_1000067AC(0, &unk_1002D5DF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v52 activateConstraints:isa];

  v43 = [v2 topAnchor];
  v44 = [v1 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:10.0];

  v46 = *&v0[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textBottomAnchorToSearchTopAnchorConstraint];
  *&v0[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textBottomAnchorToSearchTopAnchorConstraint] = v45;

  v47 = [v1 bottomAnchor];
  v48 = [v0 layoutMarginsGuide];
  v49 = [v48 bottomAnchor];

  v50 = [v47 constraintEqualToAnchor:v49];
  v51 = *&v0[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textBottomAnchorToLayoutMarginsBottomAnchorConstraint];
  *&v0[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textBottomAnchorToLayoutMarginsBottomAnchorConstraint] = v50;
}

uint64_t sub_100026DBC()
{
  v0 = type metadata accessor for NSNotificationCenter.Publisher();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000270A4(&qword_1002D0A08, &type metadata accessor for NSNotificationCenter.Publisher);
  Publisher<>.sink(receiveValue:)();

  v7 = *(v1 + 8);
  v7(v4, v0);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v8 = [v5 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  v7(v4, v0);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10002706C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000270A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000270EC()
{
  v1 = objc_allocWithZone(UITapGestureRecognizer);
  v2 = v0;
  v3 = [v1 initWithTarget:v2 action:"didReceiveTap:"];
  v4 = *&v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewTapGestureRecognizer];
  *&v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewTapGestureRecognizer] = v3;
  v5 = v3;

  [v5 setDelegate:v2];
  v6 = *&v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView];
  [v6 addGestureRecognizer:v5];
  v7 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v2 action:"didReceivePan:"];

  v8 = *&v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewPanGestureRecognizer];
  *&v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewPanGestureRecognizer] = v7;
  v9 = v7;

  [v9 setDelegate:v2];
  [v9 setAllowedScrollTypesMask:3];
  [v6 addGestureRecognizer:v9];
}

uint64_t sub_100027258(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000C773C(&qword_1002D4308);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_100027308(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TranscriptViewModel();
  v5 = v4 - 8;
  __chkstk_darwin(v4, v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000274F8(a1);
  v9 = v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
  swift_beginAccess();
  sub_10002572C(v9, v8);
  sub_100027C58(a1, v8);
  sub_10002A084(v8);
  sub_10002A0E0(a1);
  sub_10002A2A0(a1);
  sub_10002A48C(a1);
  v10 = *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_topFadeView);
  if (*(v9 + *(v5 + 56)) != 1)
  {
    [*(v2 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_topFadeView) setHidden:1];
    return [*(v2 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_bottomFadeView) setHidden:1];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v12 = Strong;
  [Strong bounds];
  if (CGRectGetHeight(v21) <= 0.0)
  {

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v13 = v12;
  [v13 contentOffset];
  v15 = v14;
  [v13 adjustedContentInset];
  v17 = v16;

  v18 = v15 <= v17;
LABEL_8:
  [v10 setHidden:v18];
  return [*(v2 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_bottomFadeView) setHidden:sub_10002A7A4() & 1];
}

id sub_1000274F8(uint64_t a1)
{
  v3 = type metadata accessor for UIContentUnavailableConfiguration();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v50 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6, v8);
  v49 = &v46[-v9];
  v10 = sub_1000C773C(&qword_1002D42F8);
  __chkstk_darwin(v10, v11);
  v13 = &v46[-v12];
  v14 = sub_1000C773C(&qword_1002D4300);
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v46[-v16];
  v18 = sub_1000C773C(&qword_1002D4308);
  v20 = __chkstk_darwin(v18 - 8, v19);
  v51 = &v46[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20, v22);
  v53 = &v46[-v24];
  __chkstk_darwin(v23, v25);
  v27 = &v46[-v26];
  sub_10000B46C(a1, v17, &qword_1002D4300);
  v28 = type metadata accessor for TranscriptViewModel();
  if ((*(*(v28 - 8) + 48))(v17, 1, v28) == 1)
  {
    sub_100003CBC(v17, &qword_1002D4300);
    (*(v4 + 56))(v27, 1, 1, v3);
  }

  else
  {
    sub_10000B46C(&v17[*(v28 + 40)], v27, &qword_1002D4308);
    sub_10002A084(v17);
  }

  v52 = v1;
  v29 = &v1[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel];
  swift_beginAccess();
  v30 = *(v28 + 40);
  v31 = *(v10 + 48);
  sub_10000B46C(v27, v13, &qword_1002D4308);
  sub_10000B46C(&v29[v30], &v13[v31], &qword_1002D4308);
  v32 = *(v4 + 48);
  v33 = v3;
  if (v32(v13, 1, v3) == 1)
  {
    sub_100003CBC(v27, &qword_1002D4308);
    if (v32(&v13[v31], 1, v3) == 1)
    {
      return sub_100003CBC(v13, &qword_1002D4308);
    }
  }

  else
  {
    v35 = v53;
    sub_10000B46C(v13, v53, &qword_1002D4308);
    if (v32(&v13[v31], 1, v33) != 1)
    {
      v44 = v49;
      (*(v4 + 32))(v49, &v13[v31], v33);
      sub_1000270A4(&unk_1002D4310, &type metadata accessor for UIContentUnavailableConfiguration);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = v4;
      v45 = *(v4 + 8);
      v45(v44, v33);
      sub_100003CBC(v27, &qword_1002D4308);
      v36 = v33;
      v45(v53, v33);
      result = sub_100003CBC(v13, &qword_1002D4308);
      if (v47)
      {
        return result;
      }

      goto LABEL_10;
    }

    sub_100003CBC(v27, &qword_1002D4308);
    (*(v4 + 8))(v35, v33);
  }

  v36 = v33;
  v48 = v4;
  sub_100003CBC(v13, &qword_1002D42F8);
LABEL_10:
  v37 = v51;
  sub_10000B46C(&v29[*(v28 + 40)], v51, &qword_1002D4308);
  if (v32(v37, 1, v36) == 1)
  {
    sub_100003CBC(v37, &qword_1002D4308);
    v38 = v52;
    [*&v52[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_emptyStateView] setHidden:1];
    return [v38 setUserInteractionEnabled:1];
  }

  else
  {
    v39 = v48;
    v40 = v50;
    (*(v48 + 32))(v50, v37, v36);
    v41 = v52;
    v42 = *&v52[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_emptyStateView];
    v54[3] = v36;
    v54[4] = &protocol witness table for UIContentUnavailableConfiguration;
    v43 = sub_100015800(v54);
    (*(v39 + 16))(v43, v40, v36);
    UIContentUnavailableView.configuration.setter();
    [v42 setHidden:0];
    [v41 setUserInteractionEnabled:0];
    return (*(v39 + 8))(v40, v36);
  }
}

uint64_t sub_100027B9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000C773C(&qword_1002D4308);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void sub_100027C58(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000C773C(&qword_1002D4300);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v45 - v11;
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v45 - v15;
  __chkstk_darwin(v14, v17);
  v19 = (&v45 - v18);
  v46 = a1;
  sub_100028084(a1, &v45 - v18);
  v20 = type metadata accessor for TranscriptViewModel();
  v21 = *(*(v20 - 8) + 48);
  if (v21(v19, 1, v20) == 1)
  {
    sub_100003CBC(v19, &qword_1002D4300);
    v22 = 1;
  }

  else
  {
    v24 = *v19;
    v23 = v19[1];

    sub_10002A084(v19);
    if (v24 == *a2 && v23 == a2[1])
    {

      v22 = 0;
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v22 = v26 ^ 1;
    }
  }

  sub_100028084(v46, v16);
  if (v21(v16, 1, v20) == 1)
  {
    sub_100003CBC(v16, &qword_1002D4300);
    v27 = 1;
  }

  else
  {
    v28 = *(v16 + 2);

    sub_10002A084(v16);
    v29 = a2[2];

    v30 = sub_10002C20C(v28, v29);

    v27 = v30 ^ 1;
  }

  sub_100028084(v46, v12);
  if (v21(v12, 1, v20) == 1)
  {
    sub_100003CBC(v12, &qword_1002D4300);
    v31 = 1;
  }

  else
  {
    v32 = *(v12 + 3);

    sub_10002A084(v12);
    v33 = a2[3];

    v34 = sub_1001AD808(v32, v33);

    v31 = v34 ^ 1;
  }

  sub_100028084(v46, v8);
  if (v21(v8, 1, v20) == 1)
  {
    sub_100003CBC(v8, &qword_1002D4300);
    v35 = a2;
    v36 = a2[12];
    goto LABEL_23;
  }

  v38 = *(v8 + 12);
  v37 = *(v8 + 13);
  v39 = v38;
  sub_10002A084(v8);
  v35 = a2;
  v36 = a2[12];
  if (!v38)
  {
LABEL_23:
    if (!((v36 != 0) | v22 & 1 | v27 & 1 | v31 & 1))
    {
      return;
    }

LABEL_28:
    v42 = v46;
    sub_1000280F4(v46);
    v43 = sub_100028268(v42, v35);
    sub_1000288B0(v43);

    sub_100028FAC(v42, v35);
    v44 = sub_100029724(v35);
    sub_1000288B0(v44);

    sub_100029848(v42, v35);
    sub_100029BE8(v42, v35);
    return;
  }

  if (!v36)
  {
    v41 = v39;
LABEL_27:

    goto LABEL_28;
  }

  v40 = a2[13];
  v41 = v36;
  if ((sub_1001AD3BC(v41) & 1) == 0)
  {

    goto LABEL_27;
  }

  if (((v22 | v27 | v31) & 1) != 0 || v37 != v40)
  {
    goto LABEL_28;
  }
}

uint64_t sub_100028084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D4300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000280F4(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D4300);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v14 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100028084(a1, v5);
    v8 = type metadata accessor for TranscriptViewModel();
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
    {

      sub_100003CBC(v5, &qword_1002D4300);
    }

    else
    {
      v10 = *(v5 + 12);
      v9 = *(v5 + 13);
      v11 = v10;
      sub_10002A084(v5);
      if (v10)
      {
        v12 = [v11 length];
        v13 = [v7 textStorage];
        [v13 deleteCharactersInRange:{v9, v12}];
      }

      else
      {
      }
    }
  }
}

char *sub_100028268(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D4300);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = v39 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = Strong;
  sub_100028084(a1, v11);
  v14 = type metadata accessor for TranscriptViewModel();
  v15 = *(*(v14 - 8) + 48);
  if (v15(v11, 1, v14) == 1)
  {
    sub_100003CBC(v11, &qword_1002D4300);
    goto LABEL_7;
  }

  v16 = *(v11 + 2);

  sub_10002A084(v11);
  v17 = *(a2 + 16);

  v18 = sub_10002C20C(v16, v17);

  if (v18)
  {
    sub_100028084(a1, v8);
    if (v15(v8, 1, v14) == 1)
    {

      sub_100003CBC(v8, &qword_1002D4300);
    }

    else
    {
      v29 = *(v8 + 3);

      sub_10002A084(v8);
      if ((sub_1001AD808(v29, *(a2 + 24)) & 1) == 0)
      {
        v30 = *(v29 + 16);
        if (v30)
        {
          v39[1] = v29;
          v31 = v29 + 48;
          v25 = _swiftEmptyArrayStorage;
          do
          {
            v33 = *(v31 - 16);
            v32 = *(v31 - 8);

            v35 = sub_1001359FC(v34, v17);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_100028884(0, *(v25 + 2) + 1, 1, v25);
            }

            v37 = *(v25 + 2);
            v36 = *(v25 + 3);
            if (v37 >= v36 >> 1)
            {
              v25 = sub_100028884((v36 > 1), v37 + 1, 1, v25);
            }

            *(v25 + 2) = v37 + 1;
            v38 = &v25[24 * v37];
            *(v38 + 4) = v33;
            *(v38 + 5) = v32;
            *(v38 + 6) = v35;
            v31 += 24;
            --v30;
          }

          while (v30);

          return v25;
        }
      }
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_7:
  result = [v13 text];
  if (result)
  {
    v20 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = sub_100028604();
    v23 = v22;

    v24 = *(a2 + 16);

    v25 = sub_100028884(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_100028884((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[24 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v23;
    *(v28 + 6) = v24;
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_100028604()
{

  sub_1000C773C(&qword_1002D4530);
  sub_1000286AC();
  sub_100028710();
  return _NSRange.init<A, B>(_:in:)();
}

unint64_t sub_1000286AC()
{
  result = qword_1002D4538;
  if (!qword_1002D4538)
  {
    sub_1000C7784(&qword_1002D4530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4538);
  }

  return result;
}

unint64_t sub_100028710()
{
  result = qword_1002CE400;
  if (!qword_1002CE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CE400);
  }

  return result;
}

char *sub_100028764(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000C773C(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void sub_1000288B0(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v47 = Strong;
  v5 = [Strong text];
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = v5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_100028604();
  v9 = v8;

  v10 = *(a1 + 16);
  if (!v10)
  {
LABEL_47:

    return;
  }

  v11 = (a1 + 48);
  v12 = &ComposedAudioEffectRenderer;
  while (1)
  {
    v13 = *(v11 - 2);
    v14 = *(v11 - 1);
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v16)
    {
      goto LABEL_52;
    }

    if (v13 < v7)
    {
      goto LABEL_30;
    }

    if (__OFSUB__(v13, v7))
    {
      goto LABEL_53;
    }

    if (v13 - v7 >= v9 || v17 < v7)
    {
      goto LABEL_30;
    }

    v16 = __OFSUB__(v17, v7);
    v19 = v17 - v7;
    if (v16)
    {
      goto LABEL_54;
    }

    if (v19 >= v9)
    {
LABEL_30:
      if (v9 >= 1)
      {
        v34 = v12;
        if (qword_1002CDD88 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_100018D90(v35, qword_1002E8CB0);
        v36 = static os_log_type_t.error.getter();
        v37 = Logger.logObject.getter();
        if (os_log_type_enabled(v37, v36))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v48 = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_10001901C(0xD00000000000001DLL, 0x80000001002322C0, &v48);
          _os_log_impl(&_mh_execute_header, v37, v36, "%s - Unable to set attributes. Range is out of bounds.", v38, 0xCu);
          sub_100014B64(v39);
        }

        v12 = v34;
      }

      goto LABEL_6;
    }

    v20 = *v11;
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;

      v23 = [v22 v12[177].count];
      if (!v23)
      {
        goto LABEL_36;
      }

      v46 = v23;
      v24 = [v22 v12[177].count];
      if (!v24)
      {

LABEL_36:

        goto LABEL_6;
      }

      v45 = v22;
      v25 = v24;
      v26 = [v24 textContentManager];

      if (v26)
      {
        v44 = v2;
        v43 = [v26 documentRange];
        v27 = [v26 locationFromLocation:objc_msgSend(v43 withOffset:{"location"), v13}];
        swift_unknownObjectRelease();
        if (v27)
        {
          v28 = [v26 locationFromLocation:v27 withOffset:v14];
          if (v28)
          {
            v42 = [objc_allocWithZone(NSTextRange) initWithLocation:v27 endLocation:v28];

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v42)
            {
              if ((*(v2 + 8) & 1) == 0 || (sub_100136050(v20) & 1) == 0)
              {
                [v46 invalidateRenderingAttributesForTextRange:v42];
                v40 = [v45 textStorage];
                sub_1001AD0A8(v20);

                type metadata accessor for Key(0);
                sub_100025578(&qword_1002CE138, type metadata accessor for Key);
                isa = Dictionary._bridgeToObjectiveC()().super.isa;

                [v40 addAttributes:isa range:{v13, v14}];

                v2 = v44;
                goto LABEL_42;
              }

              sub_1001AD0A8(v20);

              type metadata accessor for Key(0);
              sub_100025578(&qword_1002CE138, type metadata accessor for Key);
              v29 = Dictionary._bridgeToObjectiveC()().super.isa;

              [v46 setRenderingAttributes:v29 forTextRange:v42];

              v30 = [v46 textLayoutFragmentForLocation:{objc_msgSend(v42, "location")}];
              swift_unknownObjectRelease();
              if (v30)
              {
                v31 = [v46 textViewportLayoutController];
                v32 = [v31 renderingSurfaceForKey:v30];

                if (v32)
                {
                  objc_opt_self();
                  v33 = swift_dynamicCastObjCClass();
                  if (!v33)
                  {

                    swift_unknownObjectRelease();
                    v12 = &ComposedAudioEffectRenderer;
                    goto LABEL_6;
                  }

                  [v33 setNeedsDisplay];

                  swift_unknownObjectRelease();
LABEL_42:

LABEL_43:
                  v12 = &ComposedAudioEffectRenderer;
                  goto LABEL_6;
                }
              }

              goto LABEL_43;
            }
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }

      v12 = &ComposedAudioEffectRenderer;
    }

LABEL_6:
    v11 += 3;
    if (!--v10)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void sub_100028FAC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000C773C(&qword_1002D4300);
  __chkstk_darwin(v4 - 8, v5);
  v7 = (&v40 - v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_100028084(a1, v7);
    v10 = type metadata accessor for TranscriptViewModel();
    if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
    {
      sub_100003CBC(v7, &qword_1002D4300);
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    else
    {
      v11 = *v7;
      v12 = v7[1];

      sub_10002A084(v7);
    }

    v13 = *a2;
    v14 = a2[1];
    v15 = sub_100029604(v11, v12, *a2, v14);
    v17 = v16;
    v19 = v18;

    if ((v17 & 1) == 0)
    {
      v20 = [v9 textStorage];
      v21 = [v20 length];

      v22 = &v21[-v15];
      if (__OFSUB__(v21, v15))
      {
        __break(1u);
        return;
      }

      v23 = [v9 textStorage];
      [v23 deleteCharactersInRange:{v15, v22}];
    }

    if (v19)
    {
      sub_1001AD0A8(a2[2]);
      v24 = objc_allocWithZone(NSMutableAttributedString);
      v25 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100025578(&qword_1002CE138, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v27 = [v24 initWithString:v25 attributes:isa];

      v28 = [v9 textStorage];
      [v28 appendAttributedString:v27];
    }

    v29 = [v9 text];
    if (!v29)
    {
      goto LABEL_15;
    }

    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (v31 == v13 && v33 == v14)
    {

      return;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
LABEL_15:
      if (qword_1002CDD88 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100018D90(v35, qword_1002E8CB0);
      v36 = static os_log_type_t.error.getter();
      v37 = Logger.logObject.getter();
      if (os_log_type_enabled(v37, v36))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v41 = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_10001901C(0xD000000000000026, 0x8000000100232290, &v41);
        _os_log_impl(&_mh_execute_header, v37, v36, "%s - TextView text does not match the view model. This is a serious issue and should be investigated.", v38, 0xCu);
        sub_100014B64(v39);
      }
    }
  }
}

unint64_t sub_1000293F8()
{
  v0 = String.count.getter();
  v1 = String.count.getter();
  if (v1 < v0)
  {
    v0 = v1;
  }

  v2 = 15;
  if (v0 < 1)
  {
    return v2;
  }

  v3 = 15;
  while (1)
  {
    v4 = v0 >> 1;
    result = String.index(_:offsetBy:)();
    if (result >> 14 < v2 >> 14)
    {
      break;
    }

    v18 = v0;
    String.index(after:)();
    v19 = v2;
    v6 = String.subscript.getter();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    result = String.index(_:offsetBy:)();
    if (result >> 14 < v3 >> 14)
    {
      goto LABEL_18;
    }

    String.index(after:)();
    v20 = v3;
    v13 = String.subscript.getter();
    if (v10 == v16 && v12 == v15 && v6 >> 16 == v13 >> 16 && v8 >> 16 == v14 >> 16)
    {
    }

    else
    {
      v17 = _stringCompareInternal(_:_:_:_:expecting:)();

      v2 = v19;
      if ((v17 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v2 = String.index(after:)();
    v20 = String.index(after:)();
    v4 = v18 + ~v4;
LABEL_7:
    v0 = v4;
    v3 = v20;
    if (v4 <= 0)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100029604(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1000293F8();
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v10 = v8 >> 14;
  if (v8 >> 14 < 4 * v9)
  {
    sub_100028710();
    result = String.Index.utf16Offset<A>(in:)();
  }

  else
  {
    result = 0;
  }

  v12 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v10 < 4 * v12)
  {
    v13 = result;
    String.subscript.getter();
    static String._fromSubstring(_:)();

    return v13;
  }

  return result;
}

char *sub_100029724(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = (v1 + 48);
  v4 = _swiftEmptyArrayStorage;
  do
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v7 = *v3;

    v8 = sub_100135DD4(v5, v6);
    if (v8)
    {
      v9 = sub_1001359FC(v8, v7);

      v7 = v9;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100028884(0, *(v4 + 2) + 1, 1, v4);
    }

    v11 = *(v4 + 2);
    v10 = *(v4 + 3);
    if (v11 >= v10 >> 1)
    {
      v4 = sub_100028884((v10 > 1), v11 + 1, 1, v4);
    }

    *(v4 + 2) = v11 + 1;
    v12 = &v4[24 * v11];
    *(v12 + 4) = v5;
    *(v12 + 5) = v6;
    *(v12 + 6) = v7;
    v3 += 3;
    --v2;
  }

  while (v2);
  return v4;
}

void sub_100029848(uint64_t a1, void *a2)
{
  v4 = sub_1000C773C(&qword_1002D4300);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v30 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = a2[12];
  if (!v13)
  {

    return;
  }

  v33 = Strong;
  v14 = a2[13];
  sub_100028084(a1, v11);
  v15 = type metadata accessor for TranscriptViewModel();
  v16 = *(*(v15 - 8) + 48);
  if (v16(v11, 1, v15) != 1)
  {
    v32 = v14;
    v18 = *(v11 + 12);
    v30 = *(v11 + 13);
    v31 = v18;
    v19 = v13;
    sub_10002A084(v11);
    if (v18)
    {
      v20 = v19;
      v21 = v31;
      if (sub_1001AD3BC(v20))
      {

        v14 = v32;
        LODWORD(v18) = v30 == v32;
        goto LABEL_13;
      }

      LODWORD(v18) = 0;
    }

    v14 = v32;
    goto LABEL_13;
  }

  v17 = v13;
  sub_100003CBC(v11, &qword_1002D4300);
  LODWORD(v18) = 0;
LABEL_13:
  sub_100028084(a1, v8);
  if (v16(v8, 1, v15) == 1)
  {
    sub_100003CBC(v8, &qword_1002D4300);
LABEL_15:
    v22 = [v33 textStorage];
    [v22 insertAttributedString:v13 atIndex:v14];

    v23 = [v13 length];
    v24 = [v33 textStorage];
    sub_1001AD0A8(a2[2]);
    type metadata accessor for Key(0);
    sub_100025578(&qword_1002CE138, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v24 addAttributes:isa range:{v14, v23}];

    return;
  }

  v27 = *v8;
  v26 = *(v8 + 1);

  sub_10002A084(v8);
  if (v27 == *a2 && v26 == a2[1])
  {

    if (!v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & v29) != 1)
    {
      goto LABEL_15;
    }
  }
}

void sub_100029BE8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000C773C(&qword_1002D4300);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v32 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v33 = Strong;
  v13 = [Strong textLayoutManager];
  if (v13)
  {
    v14 = v13;
    sub_100028084(a1, v11);
    v15 = type metadata accessor for TranscriptViewModel();
    v16 = *(*(v15 - 8) + 48);
    if (v16(v11, 1, v15) == 1)
    {
      sub_100003CBC(v11, &qword_1002D4300);
    }

    else
    {
      v18 = *(v11 + 2);

      sub_10002A084(v11);
      v19 = a2[2];

      v20 = sub_10002C20C(v18, v19);

      if (v20)
      {
        sub_100028084(a1, v8);
        if (v16(v8, 1, v15) == 1)
        {
          sub_100003CBC(v8, &qword_1002D4300);
        }

        else
        {

          sub_10002A084(v8);
        }

        v25 = *a2;
        v24 = a2[1];
        sub_1000293F8();

        v34 = v25;
        v35 = v24;
        sub_100028710();
        v26 = String.Index.utf16Offset<A>(in:)();
        v27 = [v33 textStorage];
        v28 = [v27 length];

        v29 = v28 - v26;
        if (__OFSUB__(v28, v26))
        {
          __break(1u);
          return;
        }

        if (v29 <= 0)
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }

        v22 = (v29 & ~(v29 >> 63));
        goto LABEL_18;
      }
    }

    v21 = [v33 textStorage];
    v22 = [v21 length];

    v23 = 0;
LABEL_18:
    v30 = sub_100029F20(v23, v22);
    if (v30)
    {
      v31 = v30;
      [v14 ensureLayoutForRange:v30];
    }

    return;
  }

  v17 = v33;
}

id sub_100029F20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 textLayoutManager];
  if (result)
  {
    v7 = result;
    v8 = [result textContentManager];

    if (v8)
    {
      v9 = [v8 documentRange];
      v10 = [v8 locationFromLocation:objc_msgSend(v9 withOffset:{"location"), a1}];
      swift_unknownObjectRelease();
      if (v10)
      {
        v11 = [v8 locationFromLocation:v10 withOffset:a2];
        if (v11)
        {
          v12 = [objc_allocWithZone(NSTextRange) initWithLocation:v10 endLocation:v11];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return v12;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10002A084(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10002A0E0(uint64_t a1)
{
  v3 = sub_1000C773C(&qword_1002D4300);
  __chkstk_darwin(v3 - 8, v4);
  v6 = (&v14 - v5);
  sub_10000B46C(a1, &v14 - v5, &qword_1002D4300);
  v7 = type metadata accessor for TranscriptViewModel();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100003CBC(v6, &qword_1002D4300);
    v14 = 0u;
    v15 = 0u;
    v8 = 1;
  }

  else
  {
    v9 = v6[2];
    v14 = v6[3];
    v15 = v9;
    v8 = LOBYTE(v6[4].f64[0]);
    sub_10002A084(v6);
  }

  v10 = v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
  result = swift_beginAccess();
  v12 = *(v10 + 32);
  v13 = *(v10 + 48);
  if (v8)
  {
    if (*(v10 + 64))
    {
      return result;
    }

    return [*(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView) setTextContainerInset:{*&v12, *&v13, *&v14, *&v15}];
  }

  if (*(v10 + 64))
  {
    return [*(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView) setTextContainerInset:{8.0, 0.0, 8.0, 0.0, *&v14, *&v15}];
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v15, v12), vceqq_f64(v14, v13)))) & 1) == 0)
  {
    return [*(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView) setTextContainerInset:{*&v12, *&v13, *&v14, *&v15}];
  }

  return result;
}

uint64_t sub_10002A2A0(uint64_t a1)
{
  v3 = sub_1000C773C(&qword_1002D4300);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v24 - v5;
  sub_10000B46C(a1, &v24 - v5, &qword_1002D4300);
  v7 = type metadata accessor for TranscriptViewModel();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100003CBC(v6, &qword_1002D4300);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v8 = *(v6 + 9);
    v9 = *(v6 + 10);
    v11 = v6[89];
    v10 = v6[88];
    sub_10002A084(v6);
  }

  v12 = v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
  swift_beginAccess();
  result = *(v12 + 72);
  v14 = *(v12 + 80);
  v15 = *(v12 + 88);
  v16 = *(v12 + 89);
  if (v11)
  {
    if (v16)
    {
      return result;
    }

    goto LABEL_8;
  }

  if ((v16 & 1) != 0 || (v8 == result ? (v21 = v9 == v14) : (v21 = 0), !v21 ? (v22 = 0) : (v22 = 1), ((v10 | v15) & 1) == 0 ? (v23 = v22) : (v23 = v10 & v15), (v15 & 1) != 0 || (v23 & 1) == 0))
  {
LABEL_8:
    *&result = COERCE_DOUBLE(sub_1001713C4(result, v14, v15 | (v16 << 8)));
    if ((v19 & 1) == 0)
    {
      v20 = v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_animatedContentOffsetTarget;
      if ((*(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_animatedContentOffsetTarget + 16) & 1) != 0 || (v18 = *v20, *v20 != *&result) || (v18 = *(v20 + 8), v18 != v17))
      {
        *v20 = *&result;
        *(v20 + 8) = v17;
        *(v20 + 16) = 0;
        *&result = COERCE_DOUBLE([*(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView) setContentOffset:1 animated:{*&result, v17, v18}]);
      }
    }
  }

  return result;
}

void sub_10002A48C(uint64_t a1)
{
  v3 = sub_1000C773C(&qword_1002D4300);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v15 - v5;
  sub_10000B46C(a1, &v15 - v5, &qword_1002D4300);
  v7 = type metadata accessor for TranscriptViewModel();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100003CBC(v6, &qword_1002D4300);
    v8 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
    swift_beginAccess();
    v9 = (v7 + 44);
  }

  else
  {
    v10 = *(v7 + 44);
    v9 = (v7 + 44);
    v11 = v6[v10];
    sub_10002A084(v6);
    v8 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
    v12 = v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
    swift_beginAccess();
    if (*(v12 + *v9) == v11)
    {
      return;
    }
  }

  sub_10002A654();
  v13 = [*(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView) findInteraction];
  if (v13)
  {
    v14 = v13;
    if ((*(v1 + v8 + *v9) & 1) == 0)
    {
      if ([v13 isFindNavigatorVisible])
      {
        [v14 dismissFindNavigator];
      }
    }
  }
}

id sub_10002A654()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textBottomAnchorToSearchTopAnchorConstraint);
  if (v1)
  {
    v2 = v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
    swift_beginAccess();
    [v1 setActive:*(v2 + *(type metadata accessor for TranscriptViewModel() + 44))];
  }

  v3 = *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textBottomAnchorToLayoutMarginsBottomAnchorConstraint);
  if (v3)
  {
    v4 = v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
    swift_beginAccess();
    [v3 setActive:(*(v4 + *(type metadata accessor for TranscriptViewModel() + 44)) & 1) == 0];
  }

  v5 = *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_searchButton);
  v6 = v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
  swift_beginAccess();
  v7 = type metadata accessor for TranscriptViewModel();
  v8 = 0.0;
  if (*(v6 + *(v7 + 44)))
  {
    v8 = 1.0;
  }

  [v5 setAlpha:v8];
  return [v5 setHidden:(*(v6 + *(v7 + 44)) & 1) == 0];
}

uint64_t sub_10002A7A4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_8;
    }

    v3 = Strong;
    v4 = [Strong endOfDocument];
    [v3 caretRectForPosition:v4];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v22.origin.x = v6;
    v22.origin.y = v8;
    v22.size.width = v10;
    v22.size.height = v12;
    MaxY = CGRectGetMaxY(v22);
    v14 = v3;
    [v14 adjustedContentInset];
    v16 = -v15;
    [v14 bounds];
    v17 = MaxY - CGRectGetHeight(v23);
    [v14 adjustedContentInset];
    v19 = v18;

    if (v17 + v19 >= v16)
    {
      v16 = v17 + v19;
    }

    [v1 bounds];
    if (CGRectGetHeight(v24) > 0.0)
    {
      [v1 contentOffset];
      v21 = v20;

      return v16 < v21 || vabdd_f64(v21, v16) < 0.01;
    }

    else
    {
LABEL_8:

      return 0;
    }
  }

  return result;
}

uint64_t sub_10002A904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptViewConfigurationProvider();
  v29[3] = v6;
  v29[4] = &off_10028D930;
  v29[0] = a1;
  v7 = type metadata accessor for TranscriptViewDataProvider();
  v27 = v7;
  v28 = &off_100293D20;
  v26[0] = a2;
  type metadata accessor for TranscriptViewPresenter();
  v8 = swift_allocObject();
  v9 = sub_10001466C(v29, v6);
  __chkstk_darwin(v9, v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10001466C(v26, v27);
  __chkstk_darwin(v13, v13);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v11;
  v18 = *v15;
  v24 = v6;
  v25 = &off_10028D930;
  v22 = &off_100293D20;
  *&v23 = v17;
  v21 = v7;
  *&v20 = v18;
  *(v8 + 104) = 0;
  sub_100015FD0(&v23, v8 + 16);
  sub_100015FD0(&v20, v8 + 56);
  *(v8 + 96) = a3;
  sub_100014B64(v26);
  sub_100014B64(v29);
  return v8;
}