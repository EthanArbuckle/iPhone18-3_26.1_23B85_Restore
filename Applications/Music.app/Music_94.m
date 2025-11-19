void sub_100A565C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    v7 = String._bridgeToObjectiveC()();

    [v4 setPlayActivityFeatureName:v7];

    if (a4 >> 60 != 15)
    {
      sub_10002BC44(a3, a4);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100029CA4(a3, a4);
      v8 = isa;
      goto LABEL_6;
    }
  }

  else
  {
    [v4 setPlayActivityFeatureName:0];
  }

  v8 = 0;
LABEL_6:
  v10 = v8;
  [v4 setPlayActivityRecommendationData:?];
}

uint64_t sub_100A566E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100A5676C()
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MPCPlaybackIntentOptions(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MPCPlayerTracklistReplaceIntent(319);
      if (v2 <= 0x3F)
      {
        sub_10003920C(319, &unk_1011ACD88, &qword_1011ACCA8);
        if (v3 <= 0x3F)
        {
          sub_10003920C(319, &qword_1011A87B0, &unk_1011A87B8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100A56874()
{
  result = sub_100009F78(319, &qword_1011AC8D8);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MusicPlaybackIntentDescriptor();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100A568F8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100A56914(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t PlaybackTimeObserver.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PlaybackTimeObserver.init(name:)(a1, a2);
  return v4;
}

uint64_t PlaybackTimeObserver.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = xmmword_100EE94C0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  ObservationRegistrar.init()();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_100009F78(0, &qword_1011ACE88);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = CADisplayLink.init(handler:)(sub_100A56B08, v6);
  swift_unownedRelease();
  v8 = [objc_opt_self() mainRunLoop];
  [v7 addToRunLoop:v8 forMode:NSRunLoopCommonModes];

  [v7 setPaused:1];
  [v7 setPreferredFramesPerSecond:30];
  v9 = *(v3 + 128);
  *(v3 + 128) = v7;

  return v3;
}

uint64_t sub_100A56B08()
{
  swift_unownedRetainStrong();
  sub_100A56B48();
}

void sub_100A56B48()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 104);
  if (v2 == 2)
  {
    if (qword_1011A6A78 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000060E4(v3, qword_101219D20);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_100010678(*(v1 + 16), *(v1 + 24), v26);
      sub_10000959C(v7);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
LABEL_19:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v26[0] = v1;
      sub_100A57A04();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }

LABEL_14:
    *(v1 + 40) = 0;
    *(v1 + 48) = v8;
    return;
  }

  if (v2)
  {
    if (qword_1011A6A78 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101219D20);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_100010678(*(v1 + 16), *(v1 + 24), v26);
      sub_10000959C(v13);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 96);
  if (v14 <= 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v16 = *(v0 + 88);
    v17 = *(v0 + 56);
    static Date.timeIntervalSinceReferenceDate.getter();
    v19 = v16 + (v18 - v17) * v15;
    if (v19 >= v14)
    {
      v19 = v14;
    }

    v20 = fmax(v19, 0.0) / v14;
  }

  sub_100A57AA8(*&v20, 0);
  static Date.timeIntervalSinceReferenceDate.getter();
  v23 = v22;
  swift_beginAccess();
  v24 = vabdd_f64(v23, *(v0 + 152));
  v25 = fabsf(v15);
  if (v25 <= 1.0)
  {
    v25 = 1.0;
  }

  if (v24 >= (1.0 / v25))
  {
    *(v0 + 152) = v23;
  }
}

uint64_t PlaybackTimeObserver.deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t PlaybackTimeObserver.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_100A57104()
{
  if (qword_1011A6A78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219D20);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v42[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_100010678(*(v0 + 16), *(v0 + 24), v42);
    _os_log_impl(&_mh_execute_header, v2, v3, "📺 %{public}s: Updating DisplayLink…", v4, 0xCu);
    sub_10000959C(v5);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = *(v0 + 120);

    _os_log_impl(&_mh_execute_header, v6, v7, "   — isBackgrounded: %{BOOL,public}d", v8, 8u);
  }

  else
  {
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    swift_beginAccess();
    *(v11 + 4) = *(v0 + 32);

    _os_log_impl(&_mh_execute_header, v9, v10, "   — automaticallyUpdates: %{BOOL,public}d", v11, 8u);
  }

  else
  {
  }

  swift_beginAccess();
  if (*(v0 + 32) != 1 || (*(v0 + 120) & 1) != 0 || (swift_beginAccess(), v12 = *(v0 + 104), v12 == 2))
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "   — Null Snapshot", v15, 2u);
    }

    v16 = 1;
  }

  else
  {
    v24 = *(v0 + 96);
    v25 = *(v0 + 88);
    v40 = *(v0 + 72);
    v41 = *(v0 + 56);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136446210;
      v42[1] = v40;
      v42[0] = v41;
      v43 = v25;
      v44 = v24;
      v45 = v12 & 0x101;
      v46 = BYTE2(v12) & 1;
      _s3__C29MPCPlayerItemDurationSnapshotVMa_0(0);
      v30 = String.init<A>(describing:)();
      v32 = sub_100010678(v30, v31, &v47);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "   — Snapshot: %{public}s", v28, 0xCu);
      sub_10000959C(v29);
    }

    v33 = v24 & 0x7FFFFFFF;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67240192;
      *(v36 + 4) = v12 & 1;
      _os_log_impl(&_mh_execute_header, v34, v35, "   — isLiveContent: %{BOOL,public}d", v36, 8u);
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67240192;
      *(v39 + 4) = v33 == 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "   — isRateNull: %{BOOL,public}d", v39, 8u);
    }

    v16 = v12 | (v33 == 0);
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    *(v19 + 4) = v16 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, " -> should pause: %{BOOL,public}d", v19, 8u);
  }

  v20 = *(v0 + 128);
  if (v20)
  {
    [v20 setPaused:v16 & 1];
  }

  swift_beginAccess();
  if (!*(v0 + 112))
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No window scene associated! This could lead to a major power regression when the app is backgrounded!", v23, 2u);
    }
  }
}

void PlaybackTimeObserver.automaticallyUpdates.setter(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v4 != v3)
  {
    sub_100A57104();
  }
}

void (*PlaybackTimeObserver.automaticallyUpdates.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 32);
  return sub_100A57888;
}

void sub_100A57888(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  if (v3 != v4)
  {
    sub_100A57104();
  }

  free(v1);
}

uint64_t PlaybackTimeObserver.effectiveElapsedTime.getter()
{
  swift_getKeyPath();
  sub_100A57A04();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

uint64_t sub_100A57950@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100A57A04();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_100A57A04()
{
  result = qword_1011ACE90;
  if (!qword_1011ACE90)
  {
    type metadata accessor for PlaybackTimeObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ACE90);
  }

  return result;
}

uint64_t type metadata accessor for PlaybackTimeObserver()
{
  result = qword_1011ACEC0;
  if (!qword_1011ACEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A57AA8(uint64_t result, char a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 40) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = *&result;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100A57A04();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  *&result = COERCE_DOUBLE();
  return result;
}

void sub_100A57BB0()
{
  v1 = v0;
  if (qword_1011A6A78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101219D20);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_beginAccess();
    sub_10010FC20(&qword_1011ACFA0);
    v7 = String.init<A>(describing:)();
    v9 = sub_100010678(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received new snapshot=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  static Date.timeIntervalSinceReferenceDate.getter();
  v11 = v10;
  swift_beginAccess();
  *(v1 + 152) = v11;
  sub_100A56B48();
  sub_100A57104();
}

__n128 PlaybackTimeObserver.durationSnapshot.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v4;
  result = *(v1 + 88);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void PlaybackTimeObserver.durationSnapshot.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 88) = *(a1 + 32);
  *(v1 + 104) = *(a1 + 48);
  sub_100A57BB0();
}

void (*PlaybackTimeObserver.durationSnapshot.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100A57E90;
}

void sub_100A57E90(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100A57BB0();
  }
}

void sub_100A57EC4(id a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 112);
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_13;
  }

  if (a1)
  {
    sub_100009F78(0, &qword_1011ACF98);
    v5 = v4;
    a1 = a1;
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      return;
    }

    v4 = *(v2 + 112);
    if (!v4)
    {
LABEL_13:
      v26 = qword_1011A6A78;
      v27 = a1;
      if (v26 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000060E4(v28, qword_101219D20);
      v29 = v27;

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v32 = 136446466;
        *(v32 + 4) = sub_100010678(*(v2 + 16), *(v2 + 24), &v40);
        *(v32 + 12) = 2082;
        v33 = v29;
        v34 = [v33 description];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v38 = sub_100010678(v35, v37, &v40);

        *(v32 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s: Removed windowScene=%{public}s", v32, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v39 = *(v2 + 120);
      *(v2 + 120) = 0;
      if (v39 == 1)
      {
        sub_100A57104();
      }

      *(v2 + 136) = 0;

      v25 = 0;
      goto LABEL_21;
    }
  }

  v7 = qword_1011A6A78;
  v8 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000060E4(v9, qword_101219D20);
  v10 = v8;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_100010678(*(v2 + 16), *(v2 + 24), &v40);
    *(v13 + 12) = 2082;
    v14 = v10;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100010678(v16, v18, &v40);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: Received windowScene=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v20 = [v10 activationState] == 2;
  v21 = *(v2 + 120);
  *(v2 + 120) = v20;
  if (v20 != v21)
  {
    sub_100A57104();
  }

  v22 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v23 = v10;
  *(v2 + 136) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidEnterBackgroundNotification, v4, 1, 1, sub_100A58854, v22);

  v24 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v25 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneWillEnterForegroundNotification, v4, 1, 1, sub_100A5885C, v24);
LABEL_21:
  *(v2 + 144) = v25;
}

uint64_t sub_100A5841C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 120);
    *(result + 120) = 1;
    if ((v1 & 1) == 0)
    {
      sub_100A57104();
    }
  }

  return result;
}

uint64_t sub_100A58484()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 120);
    *(result + 120) = 0;
    if (v1 == 1)
    {
      sub_100A57104();
    }
  }

  return result;
}

void *PlaybackTimeObserver.windowScene.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void PlaybackTimeObserver.windowScene.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
  v4 = a1;
  sub_100A57EC4(v3);
}

void (*PlaybackTimeObserver.windowScene.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 112);
  *(v4 + 24) = v5;
  v6 = v5;
  return sub_100A58628;
}

void sub_100A58628(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = *v5;
  v8 = v4;
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    sub_100A57EC4(v7);

    v7 = *v5;
  }

  else
  {
    sub_100A57EC4(v7);
  }

  free(v3);
}

uint64_t sub_100A58700()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100A587D8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219D20);
  sub_1000060E4(v0, qword_101219D20);
  return Logger.init(subsystem:category:)();
}

void sub_100A58864()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

uint64_t static Player.CommandIssuer<>.reflection(of:)(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_10010FC20(&qword_1011A9098);
  }

  return String.init<A>(reflecting:)();
}

uint64_t Player.CommandIssuerIdentity.init(_:)(uint64_t a1)
{
  v2 = URL.absoluteString.getter();
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

{
  if (!a1)
  {
    sub_10010FC20(&qword_1011A9098);
  }

  return String.init<A>(reflecting:)();
}

uint64_t Player.CommandIssuerIdentity.init(_:)()
{
  sub_10010FC20(&qword_1011ACFA8);
  sub_100A58AAC();
  v0 = BidirectionalCollection<>.joined(separator:)();

  return v0;
}

uint64_t sub_100A58A54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000954C(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_100A58AAC()
{
  result = qword_1011ACFB0;
  if (!qword_1011ACFB0)
  {
    sub_1001109D0(&qword_1011ACFA8);
    sub_100A58B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ACFB0);
  }

  return result;
}

unint64_t sub_100A58B30()
{
  result = qword_1011ACFB8;
  if (!qword_1011ACFB8)
  {
    sub_1001109D0(&qword_1011ACFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ACFB8);
  }

  return result;
}

uint64_t Player.CommandIssuerIdentity.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_1011ACFC8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100EBDC20;
  *(v6 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v6 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  sub_100008FE4(a1, v6 + 72);

  sub_10010FC20(&qword_1011ACFA8);
  sub_100A58AAC();
  v7 = BidirectionalCollection<>.joined(separator:)();

  return v7;
}

uint64_t Player.CommandIssuer.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_1011ACFC8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBDC20;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  v8 = sub_10001C8B8((v7 + 32));
  (*(*(a2 - 8) + 16))(v8, v3, a2);
  sub_100008FE4(a1, v7 + 72);
  sub_10010FC20(&qword_1011ACFA8);
  sub_100A58AAC();
  v9 = BidirectionalCollection<>.joined(separator:)();

  return v9;
}

uint64_t static Player.CommandIssuer<>.url(_:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = URL.absoluteString.getter();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t static Player.CommandIssuer<>.combining(_:)()
{

  sub_10010FC20(&qword_1011ACFA8);
  sub_100A58AAC();
  v0 = BidirectionalCollection<>.joined(separator:)();

  return v0;
}

uint64_t Player.CommandIssuer<>.commandIssuingIdentifier.getter()
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v1;
}

{
  dispatch thunk of Identifiable.id.getter();
  return v1;
}

unint64_t sub_100A58FB8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  _StringGuts.grow(_:)(29);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x3A656C746974202CLL;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = a3;
  v10._object = a4;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0xD000000000000010;
}

unint64_t sub_100A59084(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  _StringGuts.grow(_:)(29);

  v31 = 0xD000000000000010;
  v32 = 0x8000000100E61300;
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x3A656C746974202CLL;
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = a3;
  v15._object = a4;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17 = 0xD000000000000010;
  if (a7[7])
  {
    v29 = a5;
    v18 = a7[2];
    v19 = a7[3];
    v21 = *a7;
    v20 = a7[1];
    _StringGuts.grow(_:)(26);

    strcpy(&v30, "Alert(title:");
    BYTE5(v30._object) = 0;
    HIWORD(v30._object) = -5120;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    v23._countAndFlagsBits = v21;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x67617373656D202CLL;
    v24._object = 0xEA00000000003A65;
    String.append(_:)(v24);
    if (v19)
    {
      v25 = v18;
    }

    else
    {
      v25 = 0;
    }

    if (v19)
    {
      v26 = v19;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v27._countAndFlagsBits = v25;
    v27._object = v26;
    String.append(_:)(v27);

    String.append(_:)(v30);

    sub_100020438(v29);

    sub_100A592B8(a7);
    return v31;
  }

  else
  {

    sub_100020438(a5);
  }

  return v17;
}

uint64_t sub_100A592B8(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A9570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100A59348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000089F8(a3, v22 - v9, &qword_1011A7F00);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &qword_1011A7F00);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000095E8(a3, &qword_1011A7F00);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000095E8(a3, &qword_1011A7F00);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100A595F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000089F8(a3, v22 - v9, &qword_1011A7F00);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &qword_1011A7F00);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      sub_10010FC20(&qword_1011AD9C8);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000095E8(a3, &qword_1011A7F00);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000095E8(a3, &qword_1011A7F00);
  sub_10010FC20(&qword_1011AD9C8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100A598B0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      sub_10010FC20(&qword_1011AD948);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1008B64C8(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

char *Player.state<A>(for:)(void (*a1)(char *, uint64_t, uint64_t))
{
  v3 = MPCPlaybackEngine.state<A>(for:)();
  type metadata accessor for MusicItemState();

  v4 = sub_100A6DCD0(a1, v3, v1);

  return v4;
}

uint64_t sub_100A59A1C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100A6E9A0(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&unk_1011AB610);
  sub_100020674(&qword_1011AD960, &unk_1011AB610);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t Player.configuration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine);
  v2 = [v1 playerID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000CD9C(v1);
  v4 = [v1 fallbackPlaybackIntent];
  return v3;
}

id Player.audioAnalyzer.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine) audioAnalyzer];

  return v1;
}

void *Player.sampleReceiver.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for SampleReceiver();
    v1 = swift_allocObject();
    v1[3] = 0;
    v1[4] = 0;
    v1[2] = 0;
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t (*Player.sampleReceiver.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = Player.sampleReceiver.getter();
  return sub_100A59C8C;
}

uint64_t Player.__allocating_init()()
{
  v0 = swift_allocObject();
  Player.init()();
  return v0;
}

void sub_100A59DAC(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000060E4(v1, qword_101219D38);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9 = v4;
      *v3 = 136446210;
      swift_errorRetain();
      sub_10010FC20(&qword_1011ADA20);
      v5 = String.init<A>(describing:)();
      v7 = sub_100010678(v5, v6, &v9);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Restoration Failed with error=%{public}s", v3, 0xCu);
      sub_10000959C(v4);
    }

    else
    {
    }
  }
}

void sub_100A59F54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100A59FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A5A064, v6, v5);
}

uint64_t sub_100A5A064()
{

  if (qword_1011A6AE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, static Logger.sharePlayTogether);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionInfoDidChange notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_100A67C18();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100A5A190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = Strong;
  sub_100969440(0, 0, v7, a4, v11);
}

uint64_t sub_100A5A2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A5A364, v6, v5);
}

uint64_t sub_100A5A364()
{

  if (qword_1011A6AE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, static Logger.sharePlayTogether);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_100A67C18();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100A5A490()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A5A5CC, v1, v0);
}

uint64_t sub_100A5A5CC()
{

  sub_100A67C18();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A5A634()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return _swift_task_switch(sub_1003ED444, v2, v1);
}

uint64_t Player.engineDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [*(v1 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:a1];
  return swift_unknownObjectRelease();
}

id (*Player.engineDelegate.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100A5A848;
}

id sub_100A5A848(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC9MusicCore6Player_engine);
    v7 = *(v5 + 24);

    return [v6 setDelegate:v7];
  }

  return result;
}

uint64_t sub_100A5A8AC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100A5A92C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  static Published.subscript.setter();
  return sub_100A5A9A8();
}

uint64_t sub_100A5A9A8()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_10001B5D8();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v19;
  v7 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path;
  v8 = *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];
  *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v19;
  sub_100009F78(0, &qword_1011A8538);
  v9 = v6;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v10 = *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v11 = [v10 request];
    if (v11)
    {
      v12 = *&v5[v7];
      v13 = v11;
      [v11 setPlayerPath:v12];
    }

    [v10 setNeedsReloadForSignificantRequestChange];
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v1;
  sub_100969440(0, 0, v4, &unk_100EF81E0, v16);
}

uint64_t sub_100A5ABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A5AC64, v6, v5);
}

uint64_t sub_100A5AC64()
{

  sub_100A67C18();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A5ACC8(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011AD988);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AD018);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Player.nowPlayingObserver.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver);
  }

  else
  {
    v3 = v0;
    type metadata accessor for Player.NowPlayingObserver(0);
    swift_allocObject();

    v2 = sub_100A6DDC8();

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t Player.NowPlayingObserver.__allocating_init(player:)()
{
  swift_allocObject();
  v0 = sub_100A6DDC8();

  return v0;
}

uint64_t sub_100A5AF58(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011AFA60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011ACC50);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_100A5B0F0(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return static Published.subscript.setter();
}

uint64_t sub_100A5B17C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AD980);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_10010FC20(&unk_1011AD008);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_100A5B300(void *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (!a1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  static Published.subscript.getter();

  v8 = v17;
  if (v17)
  {
    type metadata accessor for SharePlayTogetherSession(0);
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = v7;

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v2;
  v13[5] = v11;
  sub_100969440(0, 0, v6, &unk_100EF8128, v13);

LABEL_7:

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v17)
  {
    v14 = v17[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost];
  }

  else
  {
    v14 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v17) = v14;

  return static Published.subscript.setter();
}

uint64_t sub_100A5B574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A5B60C, v7, v6);
}

uint64_t sub_100A5B60C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v0[2];
  if (v1)
  {
    if (SharePlayTogetherSession.isEquivalent(to:)(v0[2]))
    {
      v2 = v0[9];
      v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
      swift_beginAccess();
      *(v2 + v3) = _swiftEmptyArrayStorage;

      v4 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
      swift_beginAccess();
      *(v2 + v4) = _swiftEmptyArrayStorage;

      goto LABEL_6;
    }
  }

  SharePlayTogetherSession.cleanup(notifyObservers:)(1);
LABEL_6:
  v5 = v0[1];

  return v5();
}

uint64_t sub_100A5B75C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AD978);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AD000);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_100A5B91C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC720);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_100A5BAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_10010FC20(a5);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100A5BB74(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC720);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

id Player.supportsDelegation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = [v8 route];

  if (!v0)
  {
    return 0;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_12;
  }

  result = [v1 endpointObject];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result externalDevice];

  if (!v4 || (v5 = [v4 deviceInfo], v4, !v5))
  {
LABEL_12:

    return 0;
  }

  v6 = [v5 deviceClass];

  return (v6 == 7 || v6 == 4);
}

uint64_t Player.isInAnySharePlaySession.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2 || (v0 = [v2 isSharedListeningSession], v2, (v0 & 1) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v2)
    {
      return 0;
    }

    result = *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
    if (!result)
    {
      __break(1u);
      return result;
    }

    if ([result isPlaceholder])
    {

      return 0;
    }

    if (v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      return v2 > 0;
    }
  }

  return 1;
}

void Player.sharePlayTogether(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
  *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken) = a1;
  v8 = a1;

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = a2;
  v10[5] = a3;
  v13[4] = sub_100A6E2F0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100A5C200;
  v13[3] = &unk_1010DADB0;
  v11 = _Block_copy(v13);
  v12 = v8;
  sub_100030444(a2);

  MRGroupSessionJoinSessionWithToken();
  _Block_release(v11);
}

uint64_t sub_100A5C100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken;
    v12 = *(result + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
    if (v12)
    {
      sub_100009F78(0, &qword_1011AD9F8);
      v13 = a5;
      v14 = v12;
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        v16 = *(v10 + v11);
        *(v10 + v11) = 0;

        if (a6)
        {
          a6(a3);
        }
      }
    }
  }

  return result;
}

void sub_100A5C200(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, a3);
}

void Player.requestSharePlayTogether(completion:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = [v12[0] route];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 endpointObject];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      sub_100009F78(0, &qword_1011A9F80);
      v8 = static OS_dispatch_queue.main.getter();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = a1;
      v10[4] = a2;
      v12[4] = sub_100A6E2FC;
      v12[5] = v10;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_100A5C758;
      v12[3] = &unk_1010DAE00;
      v11 = _Block_copy(v12);
      sub_100030444(a1);

      [v7 requestGroupSessionWithQueue:v8 completion:v11];
      _Block_release(v11);

      v4 = v8;
    }
  }
}

uint64_t sub_100A5C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    type metadata accessor for MainActor();

    sub_100030444(a5);

    swift_errorRetain();
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v15;
    v18[5] = a5;
    v18[6] = a6;
    v18[7] = a1;
    v18[8] = a2;
    v18[9] = a3;
    sub_100969440(0, 0, v13, &unk_100EF81C0, v18);
  }

  return result;
}

uint64_t sub_100A5C630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A5C6D8, v10, v9);
}

uint64_t sub_100A5C6D8()
{
  v1 = v0[3];

  sub_100A67C18();
  if (v1)
  {
    (v0[3])(v0[5], v0[6], v0[7]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_100A5C758(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t Player.getNowPlaying()()
{
  v1[17] = v0;
  v1[18] = type metadata accessor for MainActor();
  v1[19] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_100A5C88C, v3, v2);
}

uint64_t sub_100A5C88C()
{
  v1 = sub_10002E360();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
  *(v0 + 176) = v2;
  v3 = v2;

  v4 = static MainActor.shared.getter();
  *(v0 + 184) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(sub_100A5C944, v5, v7);
}

uint64_t sub_100A5C944()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_100A5CAA0;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_100A6E308;
  v1[15] = v8;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10000B378;
  v1[13] = &unk_1010DAE50;
  v9 = _Block_copy(v4);

  [v6 performWithCompletion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v3);
}

uint64_t sub_100A5CAA0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = v1[20];
    v4 = v1[21];
    v5 = sub_100A5CDF8;
  }

  else
  {

    v1[25] = v1[16];
    v3 = v1[20];
    v4 = v1[21];
    v5 = sub_100A5CBF0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100A5CBF0()
{
  v1 = *(v0 + 200);

  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = [v2 playerPath];
    v4 = [v3 isSystemMusicPath];

    if (v4 || (v5 = [v2 playerPath], v6 = objc_msgSend(v5, "representedBundleID"), v5, !v6))
    {
      v7 = *(v0 + 200);
    }

    else
    {

      v7 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = v7;

    static Published.subscript.setter();
    v8 = [v2 playerPath];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = 0;

    static Published.subscript.setter();
    v8 = 0;
  }

  v9 = *(v0 + 176);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = v8;
  v10 = v8;

  static Published.subscript.setter();

  v11 = *(v0 + 8);
  v12 = *(v0 + 200);

  return v11(v12);
}

uint64_t sub_100A5CDF8()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A5CE64(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_10010FC20(&qword_1011AB640);
    swift_allocError();
    *v4 = a2;
    swift_errorRetain();

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(a3 + 64) + 40) = a1;
    v6 = a1;

    return swift_continuation_throwingResume();
  }
}

id Player.nowPlayingConfiguration.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v1;
  v5 = v3;

  return v2;
}

void Player.nowPlayingConfiguration.setter(void *a1, void *a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  v10 = a1;
  v11 = a2;

  sub_10002B6B0();
}

uint64_t Player.NowPlayingConfiguration.BadCountedSet.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Dictionary.subscript.getter();
  if (v11)
  {
    (*(v4 + 16))(v6, a1, v3);
    v7 = 1;
LABEL_4:
    v10 = v7;
    v11 = 0;
    type metadata accessor for Dictionary();
    return Dictionary.subscript.setter();
  }

  v8 = v10;
  result = (*(v4 + 16))(v6, a1, v3);
  v7 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

Swift::UInt sub_100A5D208(Swift::UInt result, Swift::UInt a2)
{
  v3 = v2;
  v4 = *v2;
  if (*(v4 + 16))
  {
    v5 = a2;
    v6 = result;
    result = sub_100055068(result, a2);
    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * result);
      v9 = v8 - 1;
      if (__OFSUB__(v8, 1))
      {
        __break(1u);
        goto LABEL_11;
      }

      if (v9 > 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v3;
        result = sub_1000550E8(v9, v6, v5, isUniquelyReferenced_nonNull_native);
        *v3 = v15;
        return result;
      }

      result = sub_100055068(v6, v5);
      if (v11)
      {
        v5 = result;
        v12 = swift_isUniquelyReferenced_nonNull_native();
        v13 = *v3;
        v14 = *v3;
        if (v12)
        {
LABEL_8:
          result = sub_100A6CA8C(v5, v13);
          *v3 = v13;
          return result;
        }

LABEL_11:
        sub_1008BB584();
        v13 = v14;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t Player.NowPlayingConfiguration.BadCountedSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Dictionary.subscript.getter();
  if (v10 != 1)
  {
    v8 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      (*(v4 + 16))(v6, a1, v3);
      if (v8 < 1)
      {
        v9 = 0;
        v10 = 1;
      }

      else
      {
        v9 = v8;
        v10 = 0;
      }

      type metadata accessor for Dictionary();
      return Dictionary.subscript.setter();
    }
  }

  return result;
}

double Player.NowPlayingConfiguration.BadCountedSet.makeIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100A6D174(a1, &v7);
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  v3 = type metadata accessor for Dictionary.Iterator._Variant();
  (*(*(v3 - 8) + 16))(&v6, v10, v3);
  result = *&v7;
  v5 = v8;
  *a2 = v7;
  *(a2 + 16) = v5;
  *(a2 + 32) = v9;
  return result;
}

double sub_100A5D4FC@<D0>(uint64_t a1@<X8>)
{
  sub_100A6D174(*v1, &v7);
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  v3 = type metadata accessor for Dictionary.Iterator._Variant();
  (*(*(v3 - 8) + 16))(&v6, v10, v3);

  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_100A5D5C4()
{
  v0 = j___ss30_copySequenceToContiguousArrayys0dE0Vy7ElementQzGxSTRzlF_0();

  return v0;
}

BOOL Player.canPerform(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_10000954C(a1, v2);

  return sub_100A6CF80(v4, v1, v2, v3);
}

uint64_t Player.canPerform(anyOf:)(uint64_t a1)
{
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    v2 = swift_conformsToProtocol2();
    v3 = 0;
    if (v2 && a1)
    {
      v3 = (*(v2 + 16))(v5, a1, v2);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t Player.performWhenAvailable(_:options:issuer:timeout:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 376) = v6;
  *(v7 + 368) = a6;
  *(v7 + 352) = a4;
  *(v7 + 360) = a5;
  *(v7 + 608) = a3;
  *(v7 + 336) = a1;
  *(v7 + 344) = a2;
  sub_10010FC20(&qword_1011A7F00);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = sub_10010FC20(&unk_1011AFA60);
  *(v7 + 400) = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011AD120);
  *(v7 + 408) = v8;
  v9 = *(v8 - 8);
  *(v7 + 416) = v9;
  *(v7 + 424) = *(v9 + 64);
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = type metadata accessor for Player.CommandIssuance();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = type metadata accessor for MainActor();
  *(v7 + 496) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 504) = v11;
  *(v7 + 512) = v10;

  return _swift_task_switch(sub_100A5D954, v11, v10);
}

uint64_t sub_100A5D954()
{
  v76 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);
  v3 = v2[3];
  v4 = v2[4];
  v5 = sub_10000954C(v2, v3);
  if (sub_100A6CF80(v5, v1, v3, v4))
  {
    v6 = *(v0 + 336);
    sub_10010FC20(&unk_1011ACA30);
    v7 = swift_allocObject();
    *(v0 + 576) = v7;
    *(v7 + 16) = xmmword_100EBC6B0;
    sub_100008FE4(v6, v7 + 32);
    v8 = swift_task_alloc();
    *(v0 + 584) = v8;
    *v8 = v0;
    v8[1] = sub_100A5E78C;
    v9 = *(v0 + 352);
    v10 = *(v0 + 360);
    v11 = *(v0 + 608);
    v12 = *(v0 + 344);

    return Player.perform(_:options:issuer:)(v7, v12, v11, v9, v10);
  }

  else
  {
    sub_1000089F8(*(v0 + 360), v0 + 80, &qword_1011A8658);
    v14 = *(v0 + 104);
    if (v14)
    {
      v15 = *(v0 + 112);
      sub_10000954C((v0 + 80), *(v0 + 104));
      v16 = (*(v15 + 8))(v14, v15);
      v14 = v17;
      sub_10000959C(v0 + 80);
    }

    else
    {
      sub_1000095E8(v0 + 80, &qword_1011A8658);
      v16 = 0;
    }

    v18 = *(v0 + 480);
    v19 = *(v0 + 448);
    UUID.init()();
    v20 = (v18 + *(v19 + 20));
    *v20 = v16;
    v20[1] = v14;
    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    *(v0 + 520) = sub_1000060E4(v21, qword_101219D38);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "╭ ⏱️ Await for command", v24, 2u);
    }

    v26 = *(v0 + 472);
    v25 = *(v0 + 480);

    sub_100A6E310(v25, v26);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 472);
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v75 = v32;
      *v31 = 136446210;
      v33 = Player.CommandIssuance.description.getter();
      v35 = v34;
      sub_100A6E374(v30);
      v36 = sub_100010678(v33, v35, &v75);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "| issuance=%{public}s", v31, 0xCu);
      sub_10000959C(v32);
    }

    else
    {

      sub_100A6E374(v30);
    }

    v37 = *(v0 + 352);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 608);
      v42 = *(v0 + 344);
      v41 = *(v0 + 352);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v75 = v44;
      *v43 = 136446210;
      v45 = Player.CommandOptions.description.getter(v42, v40, v41);
      v47 = sub_100010678(v45, v46, &v75);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "╰ options=%{public}s", v43, 0xCu);
      sub_10000959C(v44);
    }

    sub_100008FE4(*(v0 + 336), v0 + 120);
    sub_10010FC20(&qword_1011ACA60);
    sub_10010FC20(&qword_1011AD128);
    if (swift_dynamicCast())
    {
      sub_10000959C(v0 + 160);
    }

    swift_beginAccess();
    sub_10010FC20(&qword_1011ACC50);
    Published.projectedValue.getter();
    swift_endAccess();
    v48 = *(v0 + 432);
    v49 = *(v0 + 440);
    v50 = *(v0 + 416);
    v71 = *(v0 + 424);
    v51 = *(v0 + 408);
    v68 = v51;
    v69 = v48;
    v52 = *(v0 + 384);
    v53 = *(v0 + 376);
    v70 = *(v0 + 360);
    v74 = *(v0 + 352);
    v73 = *(v0 + 608);
    v54 = *(v0 + 336);
    v72 = *(v0 + 344);
    sub_100020674(&qword_1011AD130, &unk_1011AFA60);
    AsyncPublisher.init(_:)();
    v55 = type metadata accessor for TaskPriority();
    *(v0 + 528) = v55;
    v56 = *(v55 - 8);
    v57 = *(v56 + 56);
    *(v0 + 536) = v57;
    *(v0 + 544) = (v56 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v57(v52, 1, 1, v55);
    (*(v50 + 16))(v48, v49, v51);
    sub_100008FE4(v54, v0 + 200);
    sub_1000089F8(v70, v0 + 240, &qword_1011A8658);
    v58 = v37;

    v59 = static MainActor.shared.getter();
    v60 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v61 = (v71 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 47) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    *(v64 + 16) = v59;
    *(v64 + 24) = &protocol witness table for MainActor;
    (*(v50 + 32))(v64 + v60, v69, v68);
    sub_100059A8C((v0 + 200), v64 + v61);
    *(v64 + v62) = v53;
    v65 = v64 + v63;
    *v65 = v72;
    *(v65 + 8) = v73;
    *(v65 + 16) = v74;
    v66 = v64 + ((v63 + 31) & 0xFFFFFFFFFFFFFFF8);
    v67 = *(v0 + 256);
    *v66 = *(v0 + 240);
    *(v66 + 16) = v67;
    *(v66 + 32) = *(v0 + 272);
    *(v0 + 552) = sub_100A595F4(0, 0, v52, &unk_100EF7BF8, v64);

    return _swift_task_switch(sub_100A5E0D8, 0, 0);
  }
}

uint64_t sub_100A5E0D8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 41;
  v5 = v0[69];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[48];
  v9 = v1[46];
  v1[2] = v2;
  v1[7] = v4;
  v1[3] = sub_100A5E214;
  v10 = swift_continuation_init();
  v6(v8, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = v9;
  v11[6] = v5;

  sub_100A595F4(0, 0, v8, &unk_100EF7C08, v11);

  return _swift_continuation_await(v3);
}

uint64_t sub_100A5E214()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 560) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = v1[63];
    v4 = v1[64];
    v5 = sub_100A5E578;
  }

  else
  {
    v1[71] = v1[41];
    v3 = v1[63];
    v4 = v1[64];
    v5 = sub_100A5E338;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100A5E338()
{
  v25 = v0;
  v1 = v0[60];
  v2 = v0[58];

  sub_100A6E310(v1, v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[60];
  v7 = v0[58];
  v8 = v0[55];
  v10 = v0[51];
  v9 = v0[52];
  if (v5)
  {
    v23 = v0[51];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    v21 = v8;
    v22 = v6;
    v13 = Player.CommandIssuance.description.getter();
    v15 = v14;
    sub_100A6E374(v7);
    v16 = sub_100010678(v13, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "⏱️✅ Command became available (%{public}s)", v11, 0xCu);
    sub_10000959C(v12);

    (*(v9 + 8))(v21, v23);
    v17 = v22;
  }

  else
  {

    sub_100A6E374(v7);
    (*(v9 + 8))(v8, v10);
    v17 = v6;
  }

  sub_100A6E374(v17);
  v18 = v0[71];

  v19 = v0[1];

  return v19(v18);
}

uint64_t sub_100A5E578()
{
  v20 = v0;
  v1 = v0[60];
  v2 = v0[57];

  sub_100A6E310(v1, v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[57];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v9 = Player.CommandIssuance.description.getter();
    v11 = v10;
    sub_100A6E374(v6);
    v12 = sub_100010678(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "⌛️❌ Timed out waiting for command (%{public}s)", v7, 0xCu);
    sub_10000959C(v8);
  }

  else
  {

    sub_100A6E374(v6);
  }

  v13 = v0[60];
  v14 = v0[55];
  v15 = v0[51];
  v16 = v0[52];
  swift_willThrow();
  (*(v16 + 8))(v14, v15);
  sub_100A6E374(v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100A5E78C(uint64_t a1)
{
  v3 = *v2;
  v3[74] = a1;
  v3[75] = v1;

  if (v1)
  {
    v4 = v3[63];
    v5 = v3[64];
    v6 = sub_100A5EA04;
  }

  else
  {

    v4 = v3[63];
    v5 = v3[64];
    v6 = sub_100A5E8AC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100A5E8AC()
{
  v1 = *(v0 + 592);

  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 592) + 32);
  }

LABEL_9:

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100A5EA04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A5EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 192) = v14;
  *(v8 + 200) = v15;
  *(v8 + 328) = a8;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  *(v8 + 152) = a1;
  v9 = sub_10010FC20(&qword_1011AD9A8);
  *(v8 + 208) = v9;
  *(v8 + 216) = *(v9 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = type metadata accessor for MainActor();
  *(v8 + 240) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 248) = v11;
  *(v8 + 256) = v10;

  return _swift_task_switch(sub_100A5EBF8, v11, v10);
}

uint64_t sub_100A5EBF8()
{
  sub_10010FC20(&qword_1011AD120);
  AsyncPublisher.makeAsyncIterator()();
  v0[33] = static MainActor.shared.getter();
  v1 = sub_100020674(&qword_1011AD9B0, &qword_1011AD9A8);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_100A5ED00;
  v3 = v0[26];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 17, v3, v1);
}

uint64_t sub_100A5ED00()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100A5F230;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100A5EE98;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100A5EE98()
{

  v0[36] = v0[17];
  v1 = v0[31];
  v2 = v0[32];

  return _swift_task_switch(sub_100A5EF04, v1, v2);
}

uint64_t sub_100A5EF04()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    if (v1 == 1)
    {
      (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

      **(v0 + 152) = 0;

      v2 = *(v0 + 8);

      return v2();
    }

    sub_100008FE4(*(v0 + 168), v0 + 56);
    v4 = v1;
    sub_10010FC20(&qword_1011ACA60);
    sub_10010FC20(&qword_1011AD9E0);
    v5 = swift_dynamicCast();
    v6 = *(v0 + 288);
    if (v5)
    {
      sub_100059A8C((v0 + 96), v0 + 16);
      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      sub_10000954C((v0 + 16), v7);
      v9 = (*(v8 + 24))(v4, v7, v8);
      sub_10040DEF8(v6);
      if (v9)
      {
        v10 = *(v0 + 168);

        sub_10000959C(v0 + 16);
        sub_10010FC20(&unk_1011ACA30);
        v11 = swift_allocObject();
        *(v0 + 296) = v11;
        *(v11 + 16) = xmmword_100EBC6B0;
        sub_100008FE4(v10, v11 + 32);
        v12 = swift_task_alloc();
        *(v0 + 304) = v12;
        *v12 = v0;
        v12[1] = sub_100A5F2BC;
        v13 = *(v0 + 192);
        v14 = *(v0 + 200);
        v15 = *(v0 + 328);
        v16 = *(v0 + 184);

        return Player.perform(_:options:issuer:)(v11, v16, v15, v13, v14);
      }

      sub_10040DEF8(*(v0 + 288));
      sub_10000959C(v0 + 16);
    }

    else
    {
      sub_10040DEF8(*(v0 + 288));
      sub_10040DEF8(v6);
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      sub_1000095E8(v0 + 96, &qword_1011AD9E8);
    }
  }

  *(v0 + 264) = static MainActor.shared.getter();
  v17 = sub_100020674(&qword_1011AD9B0, &qword_1011AD9A8);
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = sub_100A5ED00;
  v19 = *(v0 + 208);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 136, v19, v17);
}

uint64_t sub_100A5F230()
{
  *(v0 + 144) = *(v0 + 280);
  sub_10010FC20(&qword_1011AB640);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100A5F2BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v5 = *(v3 + 256);
  v6 = *(v3 + 248);
  if (v1)
  {
    v7 = sub_100A5F550;
  }

  else
  {
    v7 = sub_100A5F41C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100A5F41C()
{
  v1 = *(v0 + 312);

  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = *(v0 + 288);

    sub_10040DEF8(v5);
    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 312) + 32);
  }

  v4 = *(v0 + 288);

  sub_10040DEF8(v4);
LABEL_9:
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  **(v0 + 152) = v3;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100A5F550()
{
  v1 = v0[36];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];

  sub_10040DEF8(v1);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t Player.perform(_:options:issuer:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 112) = a3;
  *(v6 + 16) = a1;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return _swift_task_switch(sub_100A5F694, v8, v7);
}

{
  *(v6 + 272) = a5;
  *(v6 + 280) = v5;
  *(v6 + 256) = a2;
  *(v6 + 264) = a4;
  *(v6 + 512) = a3;
  *(v6 + 248) = a1;
  v7 = type metadata accessor for Player.CommandIssuance();
  *(v6 + 288) = v7;
  v8 = *(v7 - 8);
  *(v6 + 296) = v8;
  *(v6 + 304) = *(v8 + 64);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = type metadata accessor for MainActor();
  *(v6 + 400) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 408) = v10;
  *(v6 + 416) = v9;

  return _swift_task_switch(sub_100A5FB68, v10, v9);
}

uint64_t sub_100A5F694()
{
  v1 = *(v0 + 16);
  sub_10010FC20(&unk_1011ACA30);
  v2 = swift_allocObject();
  *(v0 + 80) = v2;
  *(v2 + 16) = xmmword_100EBC6B0;
  sub_100008FE4(v1, v2 + 32);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_100A5F774;
  v4 = *(v0 + 40);
  v5 = *(v0 + 112);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  return Player.perform(_:options:issuer:)(v2, v6, v5, v7, v4);
}

uint64_t sub_100A5F774(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_100A5F980;
  }

  else
  {

    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_100A5F890;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100A5F890()
{
  v1 = *(v0 + 96);

  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 96) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100A5F980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A5FB68()
{
  v77 = v0;
  v1 = *(*(v0 + 248) + 16);
  *(v0 + 424) = v1;
  if (v1)
  {
    sub_1000089F8(*(v0 + 272), v0 + 128, &qword_1011A8658);
    v2 = *(v0 + 152);
    if (v2)
    {
      v3 = *(v0 + 160);
      sub_10000954C((v0 + 128), *(v0 + 152));
      v4 = (*(v3 + 8))(v2, v3);
      v2 = v5;
      sub_10000959C(v0 + 128);
    }

    else
    {
      sub_1000095E8(v0 + 128, &qword_1011A8658);
      v4 = 0;
    }

    v8 = *(v0 + 384);
    v9 = *(v0 + 288);
    v10 = *(v0 + 248);
    UUID.init()();
    v11 = (v8 + *(v9 + 20));
    *v11 = v4;
    v11[1] = v2;
    *(v0 + 513) = sub_100A62840(v10) & 1;
    if (v1 == 1)
    {
      v12 = 0x646E616D6D6F63;
    }

    else
    {
      v12 = 0x73646E616D6D6F63;
    }

    if (v1 == 1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    *(v0 + 432) = sub_1000060E4(v14, qword_101219D38);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v75 = v12;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v76 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100010678(v12, v13, &v76);
      _os_log_impl(&_mh_execute_header, v15, v16, "╭ Will perform %s…", v17, 0xCu);
      sub_10000959C(v18);
    }

    sub_100A6E310(*(v0 + 384), *(v0 + 376));
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 376);
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v76 = v24;
      *v23 = 136446210;
      v25 = Player.CommandIssuance.description.getter();
      v27 = v26;
      sub_100A6E374(v22);
      v28 = sub_100010678(v25, v27, &v76);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "| issuance=%{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      sub_100A6E374(v22);
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v76 = v32;
      *v31 = 136446210;
      sub_10010FC20(&qword_1011ACA60);
      v33 = Array.description.getter();
      v35 = sub_100010678(v33, v34, &v76);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "| %{public}s", v31, 0xCu);
      sub_10000959C(v32);
    }

    v36 = *(v0 + 264);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 512);
      v41 = *(v0 + 256);
      v40 = *(v0 + 264);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v76 = v43;
      *v42 = 136446210;
      v44 = Player.CommandOptions.description.getter(v41, v39, v40);
      v46 = sub_100010678(v44, v45, &v76);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "╰ options=%{public}s", v42, 0xCu);
      sub_10000959C(v43);
    }

    v47 = *(v0 + 280);
    v48 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v47 + v48) != 2)
    {

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      v74 = v47;
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v76 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_100010678(v75, v13, &v76);
        _os_log_impl(&_mh_execute_header, v49, v50, "╭ 🕛 Pausing execution for %s", v51, 0xCu);
        sub_10000959C(v52);
      }

      sub_100A6E310(*(v0 + 384), *(v0 + 368));
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 368);
      if (v55)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v76 = v58;
        *v57 = 136446210;
        v59 = Player.CommandIssuance.description.getter();
        v61 = v60;
        sub_100A6E374(v56);
        v62 = sub_100010678(v59, v61, &v76);

        *(v57 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v53, v54, "| issuance=%{public}s", v57, 0xCu);
        sub_10000959C(v58);
      }

      else
      {

        sub_100A6E374(v56);
      }

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v76 = v66;
        *v65 = 136446210;
        if (*(v74 + v48) > 1u)
        {
          if (*(v74 + v48) == 2)
          {
            v67 = 0xA900000000000079;
            v68 = 0x6461655220859CE2;
          }

          else
          {
            v67 = 0xAE0064656C6C6174;
            v68 = 0x53208FB8EFA09AE2;
          }
        }

        else if (*(v74 + v48))
        {
          v67 = 0xAD0000676E697472;
          v68 = 0x61745320809A9FF0;
        }

        else
        {
          v67 = 0xA700000000000000;
          v68 = 0x66664F208C9DE2;
        }

        v69 = sub_100010678(v68, v67, &v76);

        *(v65 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v63, v64, "| engine state=%{public}s)", v65, 0xCu);
        sub_10000959C(v66);
      }

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "╰ Awaiting on engine to be ready", v72, 2u);
      }
    }

    v73 = swift_task_alloc();
    *(v0 + 440) = v73;
    *v73 = v0;
    v73[1] = sub_100A60574;

    return Player.startEngineIfNeeded()();
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100A60574()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_100A60694, v3, v2);
}

uint64_t sub_100A60694()
{
  v112 = v0;
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = 0xE800000000000000;
    v3 = objc_allocWithZone(MPCPlayerRequest);
    v4 = v1;
    v5 = [v3 init];
    *(v0 + 448) = v5;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      if (*(v0 + 424) == 1)
      {
        v8 = 0x646E616D6D6F63;
      }

      else
      {
        v8 = 0x73646E616D6D6F63;
      }

      if (*(v0 + 424) == 1)
      {
        v2 = 0xE700000000000000;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v111[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100010678(v8, v2, v111);
      _os_log_impl(&_mh_execute_header, v6, v7, "╭ 🔊 Resolving specified route for %s", v9, 0xCu);
      sub_10000959C(v10);
    }

    sub_100A6E310(*(v0 + 384), *(v0 + 360));
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 360);
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v111[0] = v16;
      *v15 = 136446210;
      v17 = Player.CommandIssuance.description.getter();
      v19 = v18;
      sub_100A6E374(v14);
      v20 = sub_100010678(v17, v19, v111);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "| issuance=%{public}s", v15, 0xCu);
      sub_10000959C(v16);
    }

    else
    {

      sub_100A6E374(v14);
    }

    v40 = *(v0 + 264);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 264);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v111[0] = v45;
      *v44 = 136446210;
      v46 = v43;
      v47 = [v46 description];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = sub_100010678(v48, v50, v111);

      *(v44 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "╰ 🔊 Route=%{public}s", v44, 0xCu);
      sub_10000959C(v45);
    }

    v52 = *(v0 + 264);
    v53 = objc_opt_self();
    v54 = qword_1011A6A50;
    v55 = v52;
    if (v54 != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 280);
    v57 = *(v0 + 264);
    v58 = String._bridgeToObjectiveC()();
    v59 = [v53 systemMusicPathWithRoute:v57 playerID:v58];

    [v5 setPlayerPath:v59];
    v60 = OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
    swift_beginAccess();
    [v5 setPlayingItemProperties:*(v56 + v60)];
    v61 = static MainActor.shared.getter();
    *(v0 + 456) = v61;
    if (v61)
    {
      swift_getObjectType();
      v62 = dispatch thunk of Actor.unownedExecutor.getter();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    return _swift_task_switch(sub_100A6134C, v62, v64);
  }

  else
  {
    if (*(v0 + 513))
    {
      v21 = 232;
    }

    else
    {
      v21 = 216;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = *(v0 + v21);
    *(v0 + 480) = v22;
    if (v22)
    {
      v23 = 0xE800000000000000;

      v24 = v22;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        if (*(v0 + 424) == 1)
        {
          v27 = 0x646E616D6D6F63;
        }

        else
        {
          v27 = 0x73646E616D6D6F63;
        }

        if (*(v0 + 424) == 1)
        {
          v23 = 0xE700000000000000;
        }

        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v111[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_100010678(v27, v23, v111);
        _os_log_impl(&_mh_execute_header, v25, v26, "╭ Performing %s", v28, 0xCu);
        sub_10000959C(v29);
      }

      sub_100A6E310(*(v0 + 384), *(v0 + 344));
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 344);
      if (v32)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v111[0] = v35;
        *v34 = 136446210;
        v36 = Player.CommandIssuance.description.getter();
        v38 = v37;
        sub_100A6E374(v33);
        v39 = sub_100010678(v36, v38, v111);

        *(v34 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v30, v31, "| issuance=%{public}s", v34, 0xCu);
        sub_10000959C(v35);
      }

      else
      {

        sub_100A6E374(v33);
      }

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = *(v0 + 513);
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v111[0] = v83;
        *v82 = 136446210;
        if (v81)
        {
          v84 = 0xD000000000000014;
        }

        else
        {
          v84 = 0x5220726579616C50;
        }

        if (v81)
        {
          v85 = 0x8000000100E61340;
        }

        else
        {
          v85 = 0xEF65736E6F707365;
        }

        v86 = sub_100010678(v84, v85, v111);

        *(v82 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v79, v80, "| on=%{public}s", v82, 0xCu);
        sub_10000959C(v83);
      }

      v87 = v24;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v111[0] = v91;
        *v90 = 136446210;
        v92 = [v87 playerPath];
        v93 = [v92 description];
        v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v95;

        v97 = sub_100010678(v94, v96, v111);

        *(v90 + 4) = v97;
        _os_log_impl(&_mh_execute_header, v88, v89, "╰ playerPath=%{public}s", v90, 0xCu);
        sub_10000959C(v91);
      }

      v98 = *(v0 + 336);
      v99 = *(v0 + 288);
      UUID.init()();
      v100 = (v98 + *(v99 + 20));
      *v100 = 0;
      v100[1] = 0;
      v101 = swift_task_alloc();
      *(v0 + 488) = v101;
      *v101 = v0;
      v101[1] = sub_100A61FA4;
      v102 = *(v0 + 336);
      v103 = *(v0 + 512);
      v105 = *(v0 + 248);
      v104 = *(v0 + 256);

      return sub_100A73970(v105, v102, v104, v103);
    }

    else
    {
      v65 = *(v0 + 384);
      v66 = *(v0 + 312);

      v67 = 0xE700000000000000;
      sub_100A6E310(v65, v66);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 312);
      if (v70)
      {
        if (*(v0 + 424) == 1)
        {
          v72 = 0x646E616D6D6F63;
        }

        else
        {
          v67 = 0xE800000000000000;
          v72 = 0x73646E616D6D6F63;
        }

        v73 = swift_slowAlloc();
        v111[0] = swift_slowAlloc();
        *v73 = 136315394;
        v74 = sub_100010678(v72, v67, v111);

        *(v73 + 4) = v74;
        *(v73 + 12) = 2082;
        v75 = Player.CommandIssuance.description.getter();
        v77 = v76;
        sub_100A6E374(v71);
        v78 = sub_100010678(v75, v77, v111);

        *(v73 + 14) = v78;
        _os_log_impl(&_mh_execute_header, v68, v69, "╭ ❌ Unavailable %s\n| issuance=%{public}s\n╰ error=nil MPCPlayerResponse", v73, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100A6E374(v71);
      }

      v106 = *(v0 + 248);
      sub_100A6E630();
      swift_allocError();
      *v107 = v106;
      *(v107 + 40) = 1;
      swift_willThrow();
      v108 = *(v0 + 384);

      sub_100A6E374(v108);

      v109 = *(v0 + 8);

      return v109();
    }
  }
}

uint64_t sub_100A6134C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 30;
  v23 = v0[56];
  v6 = v0[53];
  v7 = v0[48];
  v8 = v0[44];
  v11 = v0 + 37;
  v9 = v0[37];
  v10 = v11[1];
  v21 = v1[33];
  v22 = v3;
  if (v6 == 1)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v6 == 1)
  {
    v13 = 0x646E616D6D6F63;
  }

  else
  {
    v13 = 0x73646E616D6D6F63;
  }

  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_100A61578;
  v14 = swift_continuation_init();
  sub_100A6E310(v7, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v12;
  sub_100A6FDA0(v8, v17 + v15, type metadata accessor for Player.CommandIssuance);
  *(v17 + v16) = v21;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v1[14] = sub_100A6E684;
  v1[15] = v17;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10000B378;
  v1[13] = &unk_1010DAEF0;
  v18 = _Block_copy(v4);

  v19 = v21;

  [v23 performWithCompletion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v22);
}

uint64_t sub_100A61578()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  if (v2)
  {

    swift_willThrow();

    v3 = v1[51];
    v4 = v1[52];
    v5 = sub_100A61E98;
  }

  else
  {

    v1[59] = v1[30];
    v3 = v1[51];
    v4 = v1[52];
    v5 = sub_100A616E0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100A616E0()
{
  v67 = v0;
  v1 = *(v0 + 264);

  v2 = *(v0 + 472);
  *(v0 + 480) = v2;
  if (v2)
  {
    v3 = 0xE800000000000000;

    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      if (*(v0 + 424) == 1)
      {
        v7 = 0x646E616D6D6F63;
      }

      else
      {
        v7 = 0x73646E616D6D6F63;
      }

      if (*(v0 + 424) == 1)
      {
        v3 = 0xE700000000000000;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v66[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100010678(v7, v3, v66);
      _os_log_impl(&_mh_execute_header, v5, v6, "╭ Performing %s", v8, 0xCu);
      sub_10000959C(v9);
    }

    sub_100A6E310(*(v0 + 384), *(v0 + 344));
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 344);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v66[0] = v15;
      *v14 = 136446210;
      v16 = Player.CommandIssuance.description.getter();
      v18 = v17;
      sub_100A6E374(v13);
      v19 = sub_100010678(v16, v18, v66);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "| issuance=%{public}s", v14, 0xCu);
      sub_10000959C(v15);
    }

    else
    {

      sub_100A6E374(v13);
    }

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 513);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v66[0] = v38;
      *v37 = 136446210;
      if (v36)
      {
        v39 = 0xD000000000000014;
      }

      else
      {
        v39 = 0x5220726579616C50;
      }

      if (v36)
      {
        v40 = 0x8000000100E61340;
      }

      else
      {
        v40 = 0xEF65736E6F707365;
      }

      v41 = sub_100010678(v39, v40, v66);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "| on=%{public}s", v37, 0xCu);
      sub_10000959C(v38);
    }

    v42 = v4;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66[0] = v46;
      *v45 = 136446210;
      v47 = [v42 playerPath];
      v48 = [v47 description];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = sub_100010678(v49, v51, v66);

      *(v45 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, "╰ playerPath=%{public}s", v45, 0xCu);
      sub_10000959C(v46);
    }

    v53 = *(v0 + 336);
    v54 = *(v0 + 288);
    UUID.init()();
    v55 = (v53 + *(v54 + 20));
    *v55 = 0;
    v55[1] = 0;
    v56 = swift_task_alloc();
    *(v0 + 488) = v56;
    *v56 = v0;
    v56[1] = sub_100A61FA4;
    v57 = *(v0 + 336);
    v58 = *(v0 + 512);
    v60 = *(v0 + 248);
    v59 = *(v0 + 256);

    return sub_100A73970(v60, v57, v59, v58);
  }

  else
  {
    v20 = *(v0 + 384);
    v21 = *(v0 + 312);

    v22 = 0xE700000000000000;
    sub_100A6E310(v20, v21);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 312);
    if (v25)
    {
      if (*(v0 + 424) == 1)
      {
        v27 = 0x646E616D6D6F63;
      }

      else
      {
        v22 = 0xE800000000000000;
        v27 = 0x73646E616D6D6F63;
      }

      v28 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_100010678(v27, v22, v66);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2082;
      v30 = Player.CommandIssuance.description.getter();
      v32 = v31;
      sub_100A6E374(v26);
      v33 = sub_100010678(v30, v32, v66);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "╭ ❌ Unavailable %s\n| issuance=%{public}s\n╰ error=nil MPCPlayerResponse", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100A6E374(v26);
    }

    v62 = *(v0 + 248);
    sub_100A6E630();
    swift_allocError();
    *v63 = v62;
    *(v63 + 40) = 1;
    swift_willThrow();
    v64 = *(v0 + 384);

    sub_100A6E374(v64);

    v65 = *(v0 + 8);

    return v65();
  }
}

uint64_t sub_100A61E98()
{
  v1 = *(v0 + 264);

  sub_100A6E374(*(v0 + 384));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A61FA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[62] = a1;
  v4[63] = v1;

  sub_100A6E374(v3[42]);
  v5 = v3[52];
  v6 = v3[51];
  if (v1)
  {
    v7 = sub_100A62530;
  }

  else
  {
    v7 = sub_100A62100;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100A62100()
{
  v34 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[53];
  if (v3)
  {
    v5 = v4 == 1;
    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }

    if (v5)
    {
      v7 = 0x646E616D6D6F63;
    }

    else
    {
      v7 = 0x73646E616D6D6F63;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315138;
    v10 = sub_100010678(v7, v6, &v33);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "╭ ✅ Successfully performed %s", v8, 0xCu);
    sub_10000959C(v9);
  }

  else
  {
  }

  sub_100A6E310(v0[48], v0[40]);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[40];
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136446210;
    v17 = Player.CommandIssuance.description.getter();
    v19 = v18;
    sub_100A6E374(v14);
    v20 = sub_100010678(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "| issuance=%{public}s", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {

    sub_100A6E374(v14);
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[60];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136446210;
    sub_100009F78(0, &qword_1011AD150);
    v26 = Array.description.getter();
    v28 = sub_100010678(v26, v27, &v33);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "╰ statuses=%{public}s", v24, 0xCu);
    sub_10000959C(v25);
  }

  else
  {
    v29 = v0[60];
  }

  sub_100A6E374(v0[48]);
  v32 = v0[62];

  v30 = v0[1];

  return v30(v32);
}

uint64_t sub_100A62530()
{
  v23 = v0;
  v1 = v0[48];
  v2 = v0[41];

  v3 = 0xE800000000000000;
  sub_100A6E310(v1, v2);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[63];
    v7 = v0[41];
    if (v0[53] == 1)
    {
      v3 = 0xE700000000000000;
      v8 = 0x646E616D6D6F63;
    }

    else
    {
      v8 = 0x73646E616D6D6F63;
    }

    v9 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v9 = 136315650;
    v10 = sub_100010678(v8, v3, v22);

    *(v9 + 4) = v10;
    *(v9 + 12) = 2082;
    v11 = Player.CommandIssuance.description.getter();
    v13 = v12;
    sub_100A6E374(v7);
    v14 = sub_100010678(v11, v13, v22);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    v0[28] = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v15 = String.init<A>(describing:)();
    v17 = sub_100010678(v15, v16, v22);

    *(v9 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "╭ ❌ Failed to perform commands %s\n| issuance=%{public}s\n╰ error=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[41];

    sub_100A6E374(v18);
  }

  v19 = v0[60];
  swift_willThrow();

  sub_100A6E374(v0[48]);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100A62840(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_8:
    v6 = 0;
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  v2 = a1 + 32;
  while (1)
  {
    sub_100008FE4(v2, v9);
    sub_100008FE4(v9, &v8);
    sub_10010FC20(&qword_1011ACA60);
    sub_10010FC20(&qword_1011AD128);
    if (swift_dynamicCast())
    {
      break;
    }

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_1000095E8(&v10, &qword_1011AD9B8);
LABEL_4:
    sub_10000959C(v9);
    v2 += 40;
    if (!--v1)
    {
      goto LABEL_8;
    }
  }

  v3 = *(&v11 + 1);
  v4 = v12;
  sub_10000954C(&v10, *(&v11 + 1));
  v5 = (*(v4 + 16))(v3, v4);
  sub_10000959C(&v10);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_100059A8C(v9, &v10);
  v6 = 1;
LABEL_9:
  sub_1000095E8(&v10, &qword_1011AD9C0);
  return v6;
}

uint64_t sub_100A629C0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v73 = a6;
  v74 = a7;
  v12 = type metadata accessor for Player.CommandIssuance();
  __chkstk_darwin(v12 - 8);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v72 - v16;
  if (a1)
  {
    v18 = qword_1011A6A80;
    v19 = a1;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000060E4(v20, qword_101219D38);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v75 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_100010678(a3, a4, &v75);
      _os_log_impl(&_mh_execute_header, v21, v22, "╭ 🔊✅ Successfully resolved specified route for %s", v23, 0xCu);
      sub_10000959C(v24);
    }

    sub_100A6E310(a5, v17);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v75 = v28;
      *v27 = 136446210;
      v29 = Player.CommandIssuance.description.getter();
      v31 = v30;
      sub_100A6E374(v17);
      v32 = sub_100010678(v29, v31, &v75);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "| issuance=%{public}s", v27, 0xCu);
      sub_10000959C(v28);
    }

    else
    {

      sub_100A6E374(v17);
    }

    v46 = v73;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v75 = v50;
      *v49 = 136446210;
      v51 = v46;
      v52 = [v51 description];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = sub_100010678(v53, v55, &v75);

      *(v49 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "╰ 🔊 Route=%{public}s", v49, 0xCu);
      sub_10000959C(v50);
    }

    **(*(v74 + 64) + 40) = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000060E4(v33, qword_101219D38);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v75 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100010678(a3, a4, &v75);
      _os_log_impl(&_mh_execute_header, v34, v35, "╭ 🔊❌ Failed to resolve specified route for %s", v36, 0xCu);
      sub_10000959C(v37);
    }

    sub_100A6E310(a5, v14);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v75 = v41;
      *v40 = 136446210;
      v42 = Player.CommandIssuance.description.getter();
      v44 = v43;
      sub_100A6E374(v14);
      v45 = sub_100010678(v42, v44, &v75);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "| issuance=%{public}s", v40, 0xCu);
      sub_10000959C(v41);
    }

    else
    {

      sub_100A6E374(v14);
    }

    v58 = v73;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v75 = v62;
      *v61 = 136446210;
      v63 = v58;
      v64 = [v63 description];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68 = sub_100010678(v65, v67, &v75);

      *(v61 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "╰ 🔊 Route=%{public}s", v61, 0xCu);
      sub_10000959C(v62);
    }

    if (a2)
    {
      v69 = a2;
    }

    else
    {
      sub_100A6E630();
      v69 = swift_allocError();
      *v70 = 0u;
      *(v70 + 16) = 0u;
      *(v70 + 32) = 0;
      *(v70 + 40) = 2;
    }

    sub_10010FC20(&qword_1011AB640);
    swift_allocError();
    *v71 = v69;
    swift_errorRetain();
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t Player.prepareForBufferedAirPlay()()
{
  v1[60] = v0;
  v1[61] = *v0;
  sub_10010FC20(&qword_1011A7F00);
  v1[62] = swift_task_alloc();
  v1[63] = type metadata accessor for MainActor();
  v1[64] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[65] = v3;
  v1[66] = v2;

  return _swift_task_switch(sub_100A6324C, v3, v2);
}

uint64_t sub_100A6324C()
{
  v35 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v0[56];
  v2 = [v1 route];
  v0[67] = v2;

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {

      goto LABEL_9;
    }

    v4 = v3;
    v5 = v2;
    if ([v4 isDeviceRoute])
    {

LABEL_9:

      v10 = v0[1];

      return v10(v2);
    }

    v11 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
    v12 = objc_allocWithZone(MPAVRoutingController);
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 initWithDataSource:v11 name:v13];
    v0[68] = v14;

    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v0[69] = sub_1000060E4(v15, qword_101219D38);
    v16 = v5;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136446210;
      v21 = v16;
      v22 = [v21 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_100010678(v23, v25, &v34);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "🚏 Switching to buffered AirPlay onto route=%{public}s", v19, 0xCu);
      sub_10000959C(v20);
    }

    v27 = v0[60];
    v28 = OBJC_IVAR____TtC9MusicCore6Player_routingController;
    v0[70] = OBJC_IVAR____TtC9MusicCore6Player_routingController;
    v29 = *(v27 + v28);
    *(v27 + v28) = v14;
    v30 = v14;

    v31 = objc_opt_self();
    v0[71] = v31;
    v0[2] = v0;
    v0[3] = sub_100A63750;
    v32 = swift_continuation_init();
    v33 = sub_10010FC20(&unk_1011AD160);
    v0[72] = v33;
    v0[41] = v33;
    v0[34] = _NSConcreteStackBlock;
    v0[35] = 1107296256;
    v0[36] = sub_100950FD0;
    v0[37] = &unk_1010DAF18;
    v0[38] = v32;
    [v31 setActiveRoute:0 completion:v0 + 34];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = v0[57];
    sub_100A6E740();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100A63750()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 584) = v2;
  v3 = *(v1 + 528);
  v4 = *(v1 + 520);
  if (v2)
  {
    v5 = sub_100A64768;
  }

  else
  {
    v5 = sub_100A63880;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A63880()
{
  v1 = v0[72];
  v2 = v0[68];
  v3 = v0[67];
  v0[10] = v0;
  v0[11] = sub_100A63990;
  v4 = swift_continuation_init();
  v0[49] = v1;
  v0[42] = _NSConcreteStackBlock;
  v0[43] = 1107296256;
  v0[44] = sub_100950FD0;
  v0[45] = &unk_1010DAF40;
  v0[46] = v4;
  [v2 selectRoute:v3 operation:0 completion:v0 + 42];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100A63990()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 592) = v2;
  v3 = *(v1 + 528);
  v4 = *(v1 + 520);
  if (v2)
  {
    v5 = sub_100A649C8;
  }

  else
  {
    v5 = sub_100A63AC0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A63AC0()
{
  v1 = static MainActor.shared.getter();
  *(v0 + 600) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100A63B54, v2, v4);
}

uint64_t sub_100A63B54()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 18;
  v4 = v0 + 50;
  v5 = v0 + 59;
  v6 = v0[71];
  v1[18] = v2;
  v1[23] = v5;
  v1[19] = sub_100A63CA0;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[54] = sub_100A6E7C0;
  v1[55] = v8;
  v1[50] = _NSConcreteStackBlock;
  v1[51] = 1107296256;
  v1[52] = sub_1000603D0;
  v1[53] = &unk_1010DAF90;
  v9 = _Block_copy(v4);

  [v6 getActiveRouteWithTimeout:v9 completion:2.0];
  _Block_release(v9);

  return _swift_continuation_await(v3);
}

uint64_t sub_100A63CA0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 608) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = v1[66];
    v4 = v1[65];
    v5 = sub_100A64074;
  }

  else
  {

    v1[77] = v1[59];
    v3 = v1[66];
    v4 = v1[65];
    v5 = sub_100A63DF8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A63DF8()
{
  v23 = v0;
  v1 = *(v0 + 616);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 616);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136446210;
    v7 = v4;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_100010678(v9, v11, &v22);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "🚏 Awaiting updated player response for route=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v13 = *(v0 + 496);
  v14 = *(v0 + 480);
  v15 = *(v0 + 616);

  sub_100062E00(v15);

  v16 = type metadata accessor for TaskPriority();
  *(v0 + 624) = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  *(v0 + 632) = v18;
  *(v0 + 640) = (v17 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v18(v13, 1, 1, v16);

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v14;
  *(v0 + 648) = sub_100969440(0, 0, v13, &unk_100EF7C48, v20);

  return _swift_task_switch(sub_100A64124, 0, 0);
}

uint64_t sub_100A64074()
{
  v1 = v0[70];
  v2 = v0[60];

  v3 = *(v2 + v1);
  v4 = v0[68];
  if (v3 && v4 == v3)
  {
    v5 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v5 = v0[67];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100A64124()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 26;
  v4 = v0[81];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[62];
  v1[26] = v2;
  v1[27] = sub_100A64258;
  v8 = swift_continuation_init();
  v5(v7, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = 0x4014000000000000;
  v9[6] = v4;

  sub_100A59348(0, 0, v7, &unk_100EF7C58, v9);

  return _swift_continuation_await(v3);
}

uint64_t sub_100A64258()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 656) = v2;
  if (v2)
  {

    swift_willThrow();
    v3 = *(v1 + 528);
    v4 = *(v1 + 520);
    v5 = sub_100A64570;
  }

  else
  {
    v3 = *(v1 + 528);
    v4 = *(v1 + 520);
    v5 = sub_100A64384;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A64384()
{
  v23 = v0;
  v1 = v0[77];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[77];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446210;
    v6 = v6;
    v9 = [v6 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100010678(v10, v12, &v22);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "🚏✅ Successfully switched to buffered AirPlay onto route=%{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  v14 = v0[70];
  v15 = v0[60];
  v16 = *(v15 + v14);
  v17 = v0[68];
  if (v16)
  {
    v18 = v0[67];
    if (v17 == v16)
    {
      *(v15 + v14) = 0;
    }
  }

  else
  {
    v18 = v0[67];
  }

  v19 = v0[77];

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_100A64570()
{
  v23 = v0;
  v1 = v0[77];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[77];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136446210;
    v8 = v5;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100010678(v10, v12, &v22);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "🚏❌ Timed out waiting for a valid ReplaceCommand on route=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  v14 = v0[77];
  v15 = v0[70];
  v16 = v0[60];
  swift_willThrow();

  v17 = *(v16 + v15);
  v18 = v0[68];
  if (v17 && v18 == v17)
  {
    v19 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v19 = v0[67];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100A64768()
{
  v25 = v0;

  v1 = v0[73];
  v2 = v0[67];
  swift_willThrow();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[67];
    v7 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = v6;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100010678(v10, v12, v24);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    v0[58] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v14 = String.init<A>(describing:)();
    v16 = sub_100010678(v14, v15, v24);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "🚏❌ Failed switching to route=%{public}s with error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v17 = v0[70];
  v18 = v0[60];
  swift_willThrow();
  v19 = *(v18 + v17);
  v20 = v0[68];
  if (v19 && v20 == v19)
  {
    v21 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v21 = v0[67];
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100A649C8()
{
  v25 = v0;

  v1 = v0[74];
  v2 = v0[67];
  swift_willThrow();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[67];
    v7 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = v6;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100010678(v10, v12, v24);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    v0[58] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v14 = String.init<A>(describing:)();
    v16 = sub_100010678(v14, v15, v24);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "🚏❌ Failed switching to route=%{public}s with error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v17 = v0[70];
  v18 = v0[60];
  swift_willThrow();
  v19 = *(v18 + v17);
  v20 = v0[68];
  if (v19 && v20 == v19)
  {
    v21 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v21 = v0[67];
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100A64C28(void *a1, uint64_t a2)
{
  if (a1)
  {
    **(*(a2 + 64) + 40) = a1;
    v2 = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    sub_100A6E740();
    v4 = swift_allocError();
    *v5 = 1;
    sub_10010FC20(&qword_1011AB640);
    swift_allocError();
    *v6 = v4;

    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_100A64CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = sub_10010FC20(&unk_1011AFA60);
  v4[9] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011AD120);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_1011AD9A8);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v8;
  v4[19] = v7;

  return _swift_task_switch(sub_100A64EA4, v8, v7);
}

uint64_t sub_100A64EA4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  swift_beginAccess();
  sub_10010FC20(&qword_1011ACC50);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_1011AD130, &unk_1011AFA60);
  AsyncPublisher.init(_:)();
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[20] = static MainActor.shared.getter();
  v4 = sub_100020674(&qword_1011AD9B0, &qword_1011AD9A8);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_100A65060;
  v6 = v0[13];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 5, v6, v4);
}

uint64_t sub_100A65060()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100A65494;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100A651F8;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100A651F8()
{

  v0[23] = v0[5];
  v1 = v0[18];
  v2 = v0[19];

  return _swift_task_switch(sub_100A65264, v1, v2);
}

uint64_t sub_100A65264()
{
  v1 = *(v0 + 184);
  if (v1 == 1)
  {
LABEL_6:
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v9 = *(v0 + 8);

    return v9();
  }

  if (v1)
  {
    v2 = v1;
    v3 = [v2 tracklist];
    v4 = [v3 resetCommand];
    sub_10040DEF8(v1);

    if (v4 && (swift_unknownObjectRelease(), v5 = [v2 playerPath], v6 = objc_msgSend(v5, "route"), v5, v6))
    {
      v7 = *(v0 + 184);
      v8 = [v6 isDeviceRoute];
      sub_10040DEF8(v7);

      if (v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_10040DEF8(*(v0 + 184));
    }
  }

  *(v0 + 160) = static MainActor.shared.getter();
  v11 = sub_100020674(&qword_1011AD9B0, &qword_1011AD9A8);
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_100A65060;
  v13 = *(v0 + 104);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 40, v13, v11);
}

uint64_t sub_100A65494()
{
  *(v0 + 48) = *(v0 + 176);
  sub_10010FC20(&qword_1011AB640);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t Player.engineState.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Player.EngineState.description.getter(unsigned __int8 a1)
{
  v1 = 0x66664F208C9DE2;
  v2 = 0x6461655220859CE2;
  if (a1 != 2)
  {
    v2 = 0x53208FB8EFA09AE2;
  }

  if (a1)
  {
    v1 = 0x61745320809A9FF0;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100A655FC()
{
  v1 = 0x66664F208C9DE2;
  v2 = 0x6461655220859CE2;
  if (*v0 != 2)
  {
    v2 = 0x53208FB8EFA09AE2;
  }

  if (*v0)
  {
    v1 = 0x61745320809A9FF0;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_100A65694()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    v1 = [v5 tracklist];
    v2 = [v1 resetCommand];

    if (v2)
    {
      swift_unknownObjectRelease();
      v3 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
      swift_beginAccess();
      v4 = *(v0 + v3);
      *(v0 + v3) = 2;
      sub_100063C5C(v4);
    }
  }
}

uint64_t sub_100A65794()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);

    UnfairLock.locked<A>(_:)(sub_100A6EFC0);
  }

  return result;
}

void sub_100A6587C(uint64_t a1, id a2, void *a3)
{
  v5 = [a2 playerPath];
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    v7 = sub_100A6BBA0(v6);
    swift_endAccess();

    if (v7)
    {
      if (qword_1011A6A80 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000060E4(v8, qword_101219D38);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "| Cancelling ongoing timer for switching back to system route", v11, 2u);
      }

      swift_getObjectType();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = a3;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v13 = a3;
    if (a3)
    {
      v14 = [a3 tracklist];
      v15 = [v14 resetCommand];

      if (v15)
      {
        swift_unknownObjectRelease();
        v16 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
        swift_beginAccess();
        v17 = *(a1 + v16);
        *(a1 + v16) = 2;
        sub_100063C5C(v17);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100A65B00(void *a1)
{
  v1 = [a1 playerPath];
  if (v1)
  {
    v2 = v1;
    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000060E4(v3, qword_101219D38);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136446210;
      swift_errorRetain();
      sub_10010FC20(&qword_1011AB640);
      v8 = String.init<A>(describing:)();
      v10 = sub_100010678(v8, v9, &v25);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "╭ Player Response failed to load with error=%{public}s", v6, 0xCu);
      sub_10000959C(v7);
    }

    v11 = _convertErrorToNSError(_:)();
    v12 = sub_100A65E48();

    if (v12)
    {
      __chkstk_darwin(v13);
      UnfairLock.locked<A>(_:)(sub_100A6EF9C);
    }

    else
    {
      v14 = v2;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v25 = v18;
        *v17 = 136446210;
        v19 = v14;
        v20 = [v19 description];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = sub_100010678(v21, v23, &v25);

        *(v17 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v15, v16, "╰ playerPath=%{public}s", v17, 0xCu);
        sub_10000959C(v18);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100A65E48()
{
  v1 = v0;
  v2 = [v0 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = [v1 code];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v7 == v5)
  {

    if (v6 == 2)
    {
LABEL_7:
      v10 = 1;
      return v10 & 1;
    }
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) != 0 && v6 == 2)
    {
      goto LABEL_7;
    }
  }

  v35 = &_swiftEmptyArrayStorage;
  v11 = [v1 userInfo];
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v12 + 16))
  {

    goto LABEL_14;
  }

  v15 = sub_100019C28(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_10000DD18(*(v12 + 56) + 32 * v15, v34);

  sub_10010FC20(&qword_1011AD970);
  if (swift_dynamicCast())
  {
    sub_1008A67EC(v33);
  }

LABEL_15:
  v18 = [v1 userInfo];
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v19 + 16))
  {
    v22 = sub_100019C28(v20, v21);
    v24 = v23;

    if (v24)
    {
      sub_10000DD18(*(v19 + 56) + 32 * v22, v34);

      sub_100009F78(0, &qword_1011A7EC0);
      if (swift_dynamicCast())
      {
        v25 = v33;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      goto LABEL_23;
    }
  }

  else
  {
  }

LABEL_23:
  v26 = v35;
  if (v35 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v10 = sub_100A65E48();

      if ((v10 & 1) == 0)
      {
        ++v28;
        if (v31 != i)
        {
          continue;
        }
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v10 = 0;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_100A6621C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v89 = *(v4 - 8);
  v90 = v4;
  v5 = __chkstk_darwin(v4);
  v88 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v87 = (&v73 - v7);
  v91 = type metadata accessor for DispatchTime();
  v86 = *(v91 - 8);
  v8 = __chkstk_darwin(v91);
  v84 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v73 - v10;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v83 = *(v11 - 8);
  __chkstk_darwin(v11);
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchQoS();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A6A80 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_1000060E4(v15, qword_101219D38);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v92 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v75 = v11;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136446210;
    v24 = v17;
    v25 = a2;
    v26 = v24;
    v27 = [v24 description];
    v74 = v16;
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    a2 = v25;
    v32 = sub_100010678(v29, v31, aBlock);

    *(v21 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v18, v19, "| Invalid playerPath=%{public}s", v21, 0xCu);
    sub_10000959C(v23);
    v11 = v75;
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "╰ Stalling engine while attempting to reload", v35, 2u);
  }

  v36 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  v37 = *(a2 + v36);
  *(a2 + v36) = 3;
  sub_100063C5C(v37);
  v38 = OBJC_IVAR____TtC9MusicCore6Player_failingPlayerPathTimers;
  swift_beginAccess();
  v39 = *(a2 + v38);

  v40 = sub_100A598B0(v92, v39);

  if (v40)
  {
    return swift_unknownObjectRelease();
  }

  v75 = v38;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "╰ Switching back to system route in 5seconds.", v43, 2u);
  }

  sub_100009F78(0, &unk_1011AB5E0);
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100A6E9A0(&unk_1011AB5F0, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10010FC20(&qword_1011AD940);
  sub_100020674(&unk_1011AB600, &qword_1011AD940);
  v44 = v76;
  v45 = v78;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100009F78(0, &qword_1011A9F80);
  v46 = static OS_dispatch_queue.main.getter();
  v47 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  v77[1](v44, v45);
  v74 = v47;
  ObjectType = swift_getObjectType();
  v49 = swift_allocObject();
  v73 = a2;
  swift_weakInit();
  v50 = swift_allocObject();
  v51 = v92;
  *(v50 + 16) = v49;
  *(v50 + 24) = v51;
  aBlock[4] = sub_100A6EFB8;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010DB3C0;
  v52 = _Block_copy(aBlock);
  v77 = v51;

  v53 = v79;
  static DispatchQoS.unspecified.getter();
  v54 = v81;
  v78 = ObjectType;
  sub_100A59A1C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v52);
  (*(v83 + 8))(v54, v11);
  (*(v80 + 8))(v53, v82);

  v55 = v84;
  static DispatchTime.now()();
  v56 = v87;
  *v87 = 5;
  v57 = v89;
  v58 = v90;
  v59 = *(v89 + 104);
  v59(v56, enum case for DispatchTimeInterval.seconds(_:), v90);
  v60 = v85;
  + infix(_:_:)();
  v92 = *(v57 + 8);
  (v92)(v56, v58);
  v61 = *(v86 + 8);
  v61(v55, v91);
  v59(v56, enum case for DispatchTimeInterval.never(_:), v58);
  v62 = v88;
  *v88 = 0;
  v59(v62, enum case for DispatchTimeInterval.nanoseconds(_:), v58);
  v63 = v74;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v64 = v62;
  v65 = v92;
  (v92)(v64, v58);
  v65(v56, v58);
  v61(v60, v91);
  v66 = v73;
  v67 = v63;
  OS_dispatch_source.resume()();
  v68 = v75;
  swift_beginAccess();
  v69 = *(v66 + v68);
  if ((v69 & 0xC000000000000001) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_17;
  }

  if (v69 < 0)
  {
    v70 = *(v66 + v68);
  }

  else
  {
    v70 = v69 & 0xFFFFFFFFFFFFFF8;
  }

  swift_unknownObjectRetain();
  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *(v66 + v68) = sub_100A6BEA4(v70, result + 1);
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = *(v66 + v68);
    sub_1008B9F94(v67, v77, isUniquelyReferenced_nonNull_native);
    *(v66 + v68) = v94;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_100A66CC4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_100A6BBA0(a2);
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_100009F78(0, &qword_1011A8538);
    v3 = a2;
    v4 = static NSObject.== infix(_:_:)();

    if (v4)
    {
      if (qword_1011A6A80 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000060E4(v5, qword_101219D38);
      v6 = v3;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v19 = v10;
        *v9 = 136446210;
        v11 = v6;
        v12 = [v11 description];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = sub_100010678(v13, v15, &v19);

        *(v9 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v7, v8, "Engine stalled for too long trying to resolve playerPath=%{public}s. Switching back to system route.", v9, 0xCu);
        sub_10000959C(v10);
      }

      v17 = objc_opt_self();
      v18 = [v17 systemRoute];
      [v17 setActiveRoute:v18 completion:0];
    }
  }
}

uint64_t sub_100A66FAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);

    UnfairLock.locked<A>(_:)(sub_100A6FA00);
  }

  return result;
}

uint64_t sub_100A67094(id a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = [a1 tracklist];
  }

  else
  {
    v5 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = &off_1011A6000;
  if (!v50)
  {
    if (!v5)
    {
      goto LABEL_21;
    }

LABEL_11:
    v7 = v5;
    goto LABEL_13;
  }

  v7 = [v50 tracklist];

  if (v5)
  {
    if (v7)
    {
      sub_100009F78(0, &qword_1011AD9F0);
      v8 = static NSObject.== infix(_:_:)();

      if ((v8 & 1) == 0)
      {
        if (!a1)
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }

LABEL_21:
      if (a1)
      {
        goto LABEL_34;
      }

      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_13:

  if (!a1)
  {
LABEL_22:
    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000060E4(v31, qword_101219D38);
    v24 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v24, v32, "╭ Nil Now Playing Response", v33, 2u);
    }

    goto LABEL_29;
  }

LABEL_14:
  v9 = qword_1011A6A80;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, qword_101219D38);
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v50 = v16;
    *v15 = 136446210;
    v49 = a3;
    v17 = [v12 tracklist];
    v18 = [v17 uniqueIdentifier];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = v19;
    a3 = v49;
    v23 = sub_100010678(v22, v21, &v50);

    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "╭ Received Now Playing response with tracklistID=%{public}s", v15, 0xCu);
    sub_10000959C(v16);
  }

  v24 = v12;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67240192;
    v28 = [v24 playerPath];
    v29 = [v28 representedBundleID];

    if (v29)
    {

      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    v6 = &off_1011A6000;
    *(v27 + 4) = v30;

    _os_log_impl(&_mh_execute_header, v25, v26, "| is Music App=%{BOOL,public}d", v27, 8u);
  }

  else
  {

    v6 = &off_1011A6000;
  }

LABEL_29:

  if (v6[336] != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000060E4(v34, qword_101219D38);
  v35 = a3;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138543362;
    v40 = [v35 playerPath];
    *(v38 + 4) = v40;
    *v39 = v40;
    _os_log_impl(&_mh_execute_header, v36, v37, "╰ playerPath=%{public}@", v38, 0xCu);
    sub_1000095E8(v39, &qword_1011A9120);
  }

  if (!a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = 0;

    static Published.subscript.setter();
    v47 = 0;
    goto LABEL_40;
  }

LABEL_34:
  v41 = [a1 playerPath];
  v42 = [v41 isSystemMusicPath];

  if ((v42 & 1) != 0 || (v43 = [a1 playerPath], v44 = objc_msgSend(v43, "representedBundleID"), v43, !v44))
  {
    v46 = a1;
    v45 = a1;
  }

  else
  {

    v45 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v45;

  static Published.subscript.setter();
  v47 = [a1 playerPath];
LABEL_40:
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v47;

  return static Published.subscript.setter();
}

uint64_t sub_100A67780(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000060E4(v3, qword_101219D38);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136446210;
      swift_errorRetain();
      sub_10010FC20(&qword_1011AB640);
      v8 = String.init<A>(describing:)();
      v10 = sub_100010678(v8, v9, &v17);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "╭ Now Playing failed to load with error=%{public}s", v6, 0xCu);
      sub_10000959C(v7);
    }

    v11 = a1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      v16 = [v11 playerPath];
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "╰ playerPath=%{public}@", v14, 0xCu);
      sub_1000095E8(v15, &qword_1011A9120);
    }
  }

  return result;
}

void sub_100A67A10(void *a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  if (a1)
  {

    v5 = a1;
    sub_100062E00();
  }

  else
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100A6FEA4;
    *(v7 + 24) = v4;
    v9[4] = sub_100A6FEA8;
    v9[5] = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1000603D0;
    v9[3] = &unk_1010DB5C8;
    v8 = _Block_copy(v9);

    [v6 getActiveRouteWithTimeout:v8 completion:1.0];

    _Block_release(v8);
  }
}

uint64_t sub_100A67BBC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100A67A10(0);
  }

  return result;
}

void sub_100A67C18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = [v23 route];

  if (v0)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {
LABEL_14:

      return;
    }

    v2 = v1;
    v3 = [v1 endpointObject];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 isEligibleForHostingGroupSessionExcludingAcknowledgements];

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v23) = v5;

      static Published.subscript.setter();
      v6 = [v2 endpointObject];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 groupSessionInfo];

        if (!v8)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v22 = v23;
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.setter();
          sub_100A5B300(v23);
          goto LABEL_13;
        }

        if (qword_1011A6AE8 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_1000060E4(v9, static Logger.sharePlayTogether);
        v10 = v0;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138543362;
          *(v13 + 4) = v2;
          *v14 = v2;
          v15 = v10;
          _os_log_impl(&_mh_execute_header, v11, v12, "Getting session from %{public}@", v13, 0xCu);
          sub_1000095E8(v14, &qword_1011A9120);
        }

        v16 = [v2 endpointObject];
        if (v16)
        {
          v17 = v16;
          v18 = objc_allocWithZone(type metadata accessor for SharePlayTogetherSession(0));
          v19 = v8;
          sub_100A9E57C(v19, v17);
          v21 = v20;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v22 = v23;
          swift_getKeyPath();
          swift_getKeyPath();

          v0 = v21;
          static Published.subscript.setter();
          sub_100A5B300(v23);

LABEL_13:
          v0 = v22;
          goto LABEL_14;
        }

LABEL_18:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

uint64_t Player.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9MusicCore6Player__path;
  v2 = sub_10010FC20(&qword_1011AD018);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9MusicCore6Player__nowPlaying;
  v4 = sub_10010FC20(&qword_1011ACC50);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC9MusicCore6Player__nowPlayingPath;
  v7 = sub_10010FC20(&unk_1011AD008);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC9MusicCore6Player__sharePlayTogetherSession;
  v9 = sub_10010FC20(&qword_1011AD000);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC9MusicCore6Player__isHostingSharePlayTogetherSession;
  v11 = sub_10010FC20(&qword_1011ABBB8);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtC9MusicCore6Player__isEligibleForHostingSharePlayTogetherSession, v11);

  v13 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration);
  v14 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration + 8);

  v5(v0 + OBJC_IVAR____TtC9MusicCore6Player__playerResponse, v4);

  return v0;
}

uint64_t sub_100A68358@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Player(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id sub_100A68538()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Player.DataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100A685F4(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v9 - v4;
  v7 = *(v6 + 120);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);

  dispatch thunk of MusicPlayer.ItemState.item.setter();
}

uint64_t MusicItemState.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t MusicItemState.item.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  v7 = swift_endAccess();
  sub_100A685F4(v7);
  return (*(v6 + 8))(a1, v5);
}

uint64_t (*MusicItemState.item.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100A68904;
}

uint64_t sub_100A68904(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_100A685F4(result);
  }

  return result;
}

uint64_t sub_100A68968(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v6 + 16);
  v12(&v15 - v10, a1, v5);
  v12(v9, v11, v5);
  Published.init(initialValue:)();
  v13 = *(v6 + 8);
  v13(a1, v5);
  return v13(v11, v5);
}

uint64_t sub_100A68AE0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100A68BF0();
  }

  return result;
}

uint64_t sub_100A68B38()
{
  v0 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    dispatch thunk of MusicPlayer.ItemState.previewCapabilityStatus.getter();
    MusicItemState.previewCapabilityStatus.setter(v2);
  }

  return result;
}

uint64_t sub_100A68BF0()
{
  v1 = *v0;
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v62[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v62[-v7];
  v68 = type metadata accessor for MusicMovie();
  v64 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = type metadata accessor for TVEpisode();
  v66 = *(v71 - 8);
  __chkstk_darwin(v71);
  v72 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = type metadata accessor for Track();
  v70 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = type metadata accessor for Song();
  v74 = *(v80 - 8);
  v12 = __chkstk_darwin(v80);
  v79 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = *(v1 + 80);
  v14 = __chkstk_darwin(v12);
  v77 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v65 = &v62[-v17];
  v18 = __chkstk_darwin(v16);
  v69 = &v62[-v19];
  v20 = __chkstk_darwin(v18);
  v73 = &v62[-v21];
  __chkstk_darwin(v20);
  v78 = &v62[-v22];
  v23 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v83 = &v62[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v29 = &v62[-v28];
  __chkstk_darwin(v27);
  v31 = &v62[-v30];
  v85 = v0;

  dispatch thunk of MusicPlayer.ItemState.playabilityStatus.getter();

  v32 = *(v24 + 16);
  v84 = v31;
  v33 = v31;
  v34 = v23;
  v35 = v24;
  v82 = v32;
  v32(v29, v33, v34);
  v36 = (*(v24 + 88))(v29, v34);
  v37 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  if (v36 != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    if (v36 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
    {
      v50 = v83;
      v51 = v84;
      v82(v83, v84, v34);
      MusicItemState.playabilityStatus.setter(v50);
      v52 = *(v35 + 8);
      v52(v51, v34);
      return (v52)(v29, v34);
    }

    v63 = v36;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (!v86 || (v86, swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , (v86 & 1) != 0) || (, v45 = Player.supportsDelegation.getter(), , (v45 & 1) != 0))
    {
LABEL_9:
      v46 = v83;
      v47 = v84;
      v82(v83, v84, v34);
      MusicItemState.playabilityStatus.setter(v46);
      return (*(v35 + 8))(v47, v34);
    }

    MusicItemState.item.getter(v78);
    v54 = v79;
    v53 = v80;
    if (swift_dynamicCast())
    {
      v55 = v74;
    }

    else
    {
      MusicItemState.item.getter(v73);
      v54 = v75;
      v53 = v76;
      if (!swift_dynamicCast())
      {
        MusicItemState.item.getter(v69);
        v61 = v71;
        if (swift_dynamicCast())
        {
          (*(v66 + 8))(v72, v61);
        }

        else
        {
          MusicItemState.item.getter(v65);
          if (!swift_dynamicCast())
          {
            goto LABEL_9;
          }

          (*(v64 + 8))(v67, v68);
        }

LABEL_19:
        MusicItemState.item.getter(v77);
        sub_10010FC20(&qword_1011A7F28);
        if (swift_dynamicCast())
        {
          v56 = *(&v87 + 1);
          v57 = v88;
          sub_10000954C(&v86, *(&v87 + 1));
          (*(v57 + 8))(v56, v57);
          v59 = v58;
          sub_10000959C(&v86);
          if (v59)
          {

            v60 = v83;
            (*(v35 + 104))(v83, v63, v34);
LABEL_24:
            MusicItemState.playabilityStatus.setter(v60);
            return (*(v35 + 8))(v84, v34);
          }
        }

        else
        {
          v88 = 0;
          v86 = 0u;
          v87 = 0u;
          sub_1000095E8(&v86, &unk_1011AD930);
        }

        v60 = v83;
        (*(v3 + 104))(v83, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:), v2);
        (*(v35 + 104))(v60, v37, v34);
        goto LABEL_24;
      }

      v55 = v70;
    }

    (*(v55 + 8))(v54, v53);
    goto LABEL_19;
  }

  v38 = v35;
  v39 = *(v35 + 96);
  v40 = v34;
  v39(v29, v34);
  (*(v3 + 32))(v8, v29, v2);
  (*(v3 + 104))(v6, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v2);
  v41 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
  v42 = *(v3 + 8);
  v42(v6, v2);
  if ((v41 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , v86))
  {

    v43 = v83;
    (*(v38 + 104))(v83, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v40);
    MusicItemState.playabilityStatus.setter(v43);
    v42(v8, v2);
    return (*(v38 + 8))(v84, v40);
  }

  else
  {
    v48 = v83;
    v49 = v84;
    v82(v83, v84, v40);
    MusicItemState.playabilityStatus.setter(v48);
    v42(v8, v2);
    return (*(v38 + 8))(v49, v40);
  }
}

uint64_t sub_100A69748(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  v5 = a2(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  v13 = *(v4 + 80);
  v9 = v13;
  v10 = *(v4 + 88);
  v14 = v10;
  swift_getKeyPath();
  v12[0] = v9;
  v12[1] = v10;
  swift_getKeyPath();
  (*(v6 + 16))(v8, a1, v5);

  static Published.subscript.setter();
  return (*(v6 + 8))(a1, v5);
}

void (*MusicItemState.playabilityStatus.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin(v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  __chkstk_darwin(KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return sub_100A360A8;
}

uint64_t MusicItemState.$playabilityStatus.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011A90E0);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MusicItemState.$playabilityStatus.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011AD170);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011A90E0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*MusicItemState.$playabilityStatus.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_10010FC20(&unk_1011AD170);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  MusicItemState.$playabilityStatus.getter();
  return sub_100A69CC0;
}

uint64_t sub_100A69CEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100A69DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void (*MusicItemState.previewCapabilityStatus.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin(v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  __chkstk_darwin(KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t MusicItemState.$previewCapabilityStatus.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011A90D8);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MusicItemState.$previewCapabilityStatus.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AD180);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011A90D8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*MusicItemState.$previewCapabilityStatus.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_10010FC20(&qword_1011AD180);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  MusicItemState.$previewCapabilityStatus.getter();
  return sub_100A6A2C4;
}

void sub_100A6A2DC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    (*(v8 + 16))(*(*a1 + 24), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 32));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t *MusicItemState.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  v2 = *(*v0 + 128);
  v3 = sub_10010FC20(&qword_1011A90E0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 136);
  v5 = sub_10010FC20(&qword_1011A90D8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_100A6A4FC(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_100A6A558@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicItemState();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100A6A59C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 136) = a6;
  *(v6 + 128) = a1;
  *(v6 + 120) = a5;
  v7 = type metadata accessor for DispatchTime();
  *(v6 + 144) = v7;
  *(v6 + 152) = *(v7 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  *(v6 + 176) = v8;
  *(v6 + 184) = *(v8 - 8);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = type metadata accessor for DispatchWorkItemFlags();
  *(v6 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100A6A6FC, 0, 0);
}

uint64_t sub_100A6A6FC()
{
  v1 = v0[23];
  v11 = v0[22];
  v14 = v0[21];
  v2 = v0[19];
  v12 = v0[24];
  v13 = v0[20];
  v15 = v0[18];
  v3 = v0[15];
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v0[6] = sub_100A6EFE0;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10002BC98;
  v0[5] = &unk_1010DB438;
  _Block_copy(v0 + 2);
  v0[14] = _swiftEmptyArrayStorage;
  sub_100A6E9A0(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags);

  sub_10010FC20(&unk_1011AB610);
  sub_100020674(&qword_1011AD960, &unk_1011AB610);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v0[28] = DispatchWorkItem.init(flags:block:)();

  sub_100009F78(0, &qword_1011A9F80);
  (*(v1 + 104))(v12, enum case for DispatchQoS.QoSClass.userInitiated(_:), v11);
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v12, v11);
  static DispatchTime.now()();
  + infix(_:_:)();
  v7 = *(v2 + 8);
  v7(v13, v15);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v7(v14, v15);
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_100A6AA54;
  v9 = v0[17];

  return Task.value.getter(v8, v9, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100A6AA54()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100A6AD84;
  }

  else
  {
    v2 = sub_100A6AB68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A6AB68()
{
  v1 = *(v0 + 216);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    sub_10010FC20(&qword_1011AD998);
    sub_100020674(&qword_1011AD9A0, &qword_1011AD998);
    v2 = swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 216);
    swift_beginAccess();
    if ((*(v3 + 16) & 1) == 0)
    {
      dispatch thunk of DispatchWorkItem.cancel()();
      sub_10010FC20(&qword_1011AB640);
      swift_allocError();
      *v4 = v2;
      swift_errorRetain();
      swift_continuation_throwingResumeWithError();
    }

    swift_willThrow();

    v5 = *(v0 + 8);
  }

  else
  {
    dispatch thunk of DispatchWorkItem.cancel()();
    swift_continuation_throwingResume();

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_100A6AD84()
{
  v1 = v0[30];
  v2 = v0[27];
  swift_beginAccess();
  if ((*(v2 + 16) & 1) == 0)
  {
    dispatch thunk of DispatchWorkItem.cancel()();
    sub_10010FC20(&qword_1011AB640);
    swift_allocError();
    *v3 = v1;
    swift_errorRetain();
    swift_continuation_throwingResumeWithError();
  }

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100A6AEBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  swift_beginAccess();
  *(a1 + 16) = 1;
  sub_10010FC20(a3);
  sub_100020674(a5, a3);
  v8 = swift_allocError();
  sub_10010FC20(&qword_1011AB640);
  swift_allocError();
  *v9 = v8;
  return swift_continuation_throwingResumeWithError();
}

uint64_t Player.NowPlayingObserver.init(player:)()
{
  v0 = sub_100A6DDC8();

  return v0;
}

uint64_t Player.NowPlayingObserver.isSharedListeningSession.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100A6E9A0(&qword_1011AD190, type metadata accessor for Player.NowPlayingObserver);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

id sub_100A6B100(void *a1)
{
  swift_getKeyPath();
  sub_100A6E9A0(&qword_1011AD190, type metadata accessor for Player.NowPlayingObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = a1;
  v4 = *(v1 + 16);
  if (result)
  {
    result = [result isSharedListeningSession];
    if (v4 == result)
    {
      return result;
    }

    if (result == *(v1 + 16))
    {
      *(v1 + 16) = result;
      return result;
    }
  }

  else if ((v4 & 1) == 0)
  {
    return result;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100A6B284(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);
    *(result + 24) = v1;
    v4 = v1;

    sub_100A6B100(v1);
  }

  return result;
}

uint64_t Player.NowPlayingObserver.isSharedListeningSession.getter()
{
  swift_getKeyPath();
  sub_100A6E9A0(&qword_1011AD190, type metadata accessor for Player.NowPlayingObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_100A6B3B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100A6E9A0(&qword_1011AD190, type metadata accessor for Player.NowPlayingObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

void (*Player.NowPlayingObserver.isSharedListeningSession.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCC9MusicCore6Player18NowPlayingObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100A6E9A0(&qword_1011AD190, type metadata accessor for Player.NowPlayingObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100A6B5AC;
}

void sub_100A6B5AC(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t Player.NowPlayingObserver.deinit()
{

  v1 = OBJC_IVAR____TtCC9MusicCore6Player18NowPlayingObserver___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Player.NowPlayingObserver.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC9MusicCore6Player18NowPlayingObserver___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100A6B74C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100A6B7CC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void sub_100A6B850(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  static Published.subscript.setter();
  sub_100A65694();
}

uint64_t sub_100A6B8CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100019C28(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1008BAB78();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_100A6C0EC(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_100A6B964@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1008B6478(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1008BAF5C();
      v9 = v11;
    }

    sub_100016270((*(v9 + 56) + 32 * v7), a2);
    sub_100A6C5BC(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100A6BA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1008B63F4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1008BB0DC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    v20 = *(v13 - 8);
    sub_100A6FDA0(v12 + *(v20 + 72) * v7, a2, type metadata accessor for PushNotificationObserver.RegisteredHandler);
    sub_100A6C748(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_100A6BBA0(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1008B64C8(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100409DFC(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1008BB6D4();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_100A6BEA4(v4, v7);

  v9 = sub_1008B64C8(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100409DFC(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_100A6BCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1008B63F4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1008BB838();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_10010FC20(&qword_1011A85A0);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_100A6CC30(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_10010FC20(&qword_1011A85A0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

Swift::Int sub_100A6BEA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_1011A8540);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100009F78(0, &qword_1011A8538);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_10010FC20(&qword_1011AD948);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1008B86EC(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_100A6C0EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100A6C29C(int64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_100A6E9A0(&qword_1011A8548, &type metadata accessor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_100A6C5BC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = NSObject._rawHashValue(seed:)(v10);

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

void sub_100A6C748(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_100A6E9A0(&qword_1011A8548, &type metadata accessor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

Swift::Int sub_100A6CA8C(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100A6CC30(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_100A6E9A0(&qword_1011A8548, &type metadata accessor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(sub_10010FC20(&qword_1011A85A0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

BOOL sub_100A6CF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  v6 = sub_10001C8B8(v10);
  (*(*(a3 - 8) + 16))(v6, a1, a3);
  sub_10000954C(v10, v11);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9)
  {
    v7 = MPCPlayerResponse.canPerform(_:)(v10);
  }

  else
  {
    v7 = 0;
  }

  sub_10000959C(v10);
  return v7;
}

uint64_t sub_100A6D0C4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1004ECC04;

  return sub_100A6F014(a5, a6, a2);
}

uint64_t sub_100A6D174@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  return result;
}

char *sub_100A6D1AC(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v71 = a1;
  v72 = a3;
  v69 = a2;
  *&v82 = *v3;
  v5 = v82;
  v6 = sub_10010FC20(&qword_1011AD180);
  v77 = *(v6 - 8);
  v78 = v6;
  __chkstk_darwin(v6);
  v76 = &v64 - v7;
  v8 = sub_10010FC20(&qword_1011A90C8);
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v79 = &v64 - v9;
  v10 = sub_10010FC20(&qword_1011A90D0);
  __chkstk_darwin(v10 - 8);
  v83 = &v64 - v11;
  v70 = sub_10010FC20(&unk_1011AD170);
  v73 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v64 - v12;
  v13 = sub_10010FC20(&unk_1011ADA30);
  v14 = *(v13 - 8);
  v74 = v13;
  v75 = v14;
  __chkstk_darwin(v13);
  v68 = &v64 - v15;
  v66 = sub_10010FC20(&qword_1011A90D8);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v17 = &v64 - v16;
  v64 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v18 = *(v64 - 8);
  __chkstk_darwin(v64);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&qword_1011A90E0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v64 - v23;
  v25 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  __chkstk_darwin(v25);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v5;
  v3[4] = _swiftEmptyArrayStorage;
  v29 = v3 + 4;
  v30 = *(v28 + 128);
  (*(v31 + 104))(v27, enum case for MusicPlayer.PlayabilityStatus.playable(_:));
  v82 = *(v82 + 80);
  v32 = v27;
  v33 = v29;
  property wrapper backing initializer of MusicItemState.playabilityStatus(v32, v34, v35);
  (*(v22 + 32))(&v4[v30], v24, v21);
  v36 = *(*v4 + 136);
  v37 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v38 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason();
  (*(*(v38 - 8) + 104))(v20, v37, v38);
  (*(v18 + 104))(v20, enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:), v64);
  property wrapper backing initializer of MusicItemState.previewCapabilityStatus(v20, v39, v40);
  (*(v65 + 32))(&v4[v36], v17, v66);
  v41 = v69;
  (*(*(v82 - 8) + 16))(&v4[*(*v4 + 120)], v71);
  v42 = v72;
  *(v4 + 2) = v41;
  *(v4 + 3) = v42;

  sub_100A68BF0();
  dispatch thunk of MusicPlayer.ItemState.previewCapabilityStatus.getter();
  MusicItemState.previewCapabilityStatus.setter(v20);
  v43 = v67;
  dispatch thunk of MusicPlayer.ItemState.$playabilityStatus.getter();
  sub_100009F78(0, &qword_1011A9F80);
  v44 = static OS_dispatch_queue.main.getter();
  v84 = v44;
  v45 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v46 = *(v45 - 8);
  v47 = v83;
  v71 = *(v46 + 56);
  v72 = v45;
  v66 = v46 + 56;
  v71(v83, 1, 1);
  sub_100020674(&qword_1011A90E8, &unk_1011AD170);
  v48 = sub_100020724();
  v49 = v68;
  v50 = v47;
  v51 = v70;
  v65 = v48;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v50, &qword_1011A90D0);

  (*(v73 + 8))(v43, v51);
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v82;
  *(v53 + 32) = v52;
  sub_100020674(&unk_1011ADA40, &unk_1011ADA30);

  v54 = v74;
  Publisher<>.sink(receiveValue:)();

  (*(v75 + 8))(v49, v54);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  *&v82 = v33;
  v55 = v76;
  dispatch thunk of MusicPlayer.ItemState.$previewCapabilityStatus.getter();
  v56 = static OS_dispatch_queue.main.getter();
  v84 = v56;
  v57 = v83;
  (v71)(v83, 1, 1, v72);
  sub_100020674(&qword_1011A90F0, &qword_1011AD180);
  v58 = v78;
  v59 = v79;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v57, &qword_1011A90D0);

  (*(v77 + 8))(v55, v58);
  v60 = swift_allocObject();
  swift_weakInit();

  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *(v61 + 24) = v41;
  sub_100020674(qword_1011ADA50, &qword_1011A90C8);

  v62 = v81;
  Publisher<>.sink(receiveValue:)();

  (*(v80 + 8))(v59, v62);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v4;
}

char *sub_100A6DCD0(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  type metadata accessor for MusicItemState();
  swift_allocObject();
  return sub_100A6D1AC(a1, a2, a3);
}

uint64_t sub_100A6DDC8()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A90D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_10010FC20(&unk_1011AFA60);
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_10010FC20(&qword_1011ADA00);
  v9 = *(v8 - 8);
  v26 = v8;
  v27 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = sub_10010FC20(&qword_1011ADA08);
  v13 = *(v12 - 8);
  v28 = v12;
  v29 = v13;
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = &_swiftEmptySetSingleton;
  ObservationRegistrar.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v30;
  v17 = *(v1 + 24);
  *(v1 + 24) = v30;
  v24 = v16;

  sub_100A6B100(v16);
  swift_beginAccess();
  sub_10010FC20(&qword_1011ACC50);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100009F78(0, &qword_1011A9F80);
  v18 = static OS_dispatch_queue.main.getter();
  v30 = v18;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  sub_100020674(&qword_1011AD130, &unk_1011AFA60);
  sub_100020724();
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v4, &qword_1011A90D0);

  (*(v25 + 8))(v7, v5);
  sub_100020674(&qword_1011ADA10, &qword_1011ADA00);
  v20 = v26;
  Publisher.dropFirst(_:)();
  (*(v27 + 8))(v11, v20);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_1011ADA18, &qword_1011ADA08);
  v21 = v28;
  Publisher<>.sink(receiveValue:)();

  (*(v29 + 8))(v15, v21);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_100A6E310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player.CommandIssuance();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A6E374(uint64_t a1)
{
  v2 = type metadata accessor for Player.CommandIssuance();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100A6E3D0(uint64_t a1)
{
  v3 = *(sub_10010FC20(&qword_1011AD120) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 24);
  v14 = *(v1 + 16);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + v7 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002F3F4;

  return sub_100A5EADC(a1, v14, v8, v1 + v4, v1 + v5, v9, v10, v11);
}

uint64_t sub_100A6E550(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100A6D0C4(a1, v7, v4, v5, v6, v8);
}

unint64_t sub_100A6E630()
{
  result = qword_1011AD140;
  if (!qword_1011AD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AD140);
  }

  return result;
}

uint64_t sub_100A6E684(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Player.CommandIssuance() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100A629C0(a1, a2, v8, v9, v2 + v6, v10, v11);
}

unint64_t sub_100A6E740()
{
  result = qword_1011AD158;
  if (!qword_1011AD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AD158);
  }

  return result;
}

uint64_t sub_100A6E7C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100A64CFC(a1, v4, v5, v6);
}

uint64_t sub_100A6E87C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100A6E8BC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100A6A59C(v7, a1, v4, v5, v6, v8);
}

uint64_t sub_100A6E9A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100A6EA08()
{
  result = qword_1011AD198;
  if (!qword_1011AD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AD198);
  }

  return result;
}

uint64_t sub_100A6EA74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_100A6EAD8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_100A6EC38(319, &qword_1011AD850, &type metadata accessor for MusicPlayer.PlayabilityStatus);
    if (v1 <= 0x3F)
    {
      sub_100A6EC38(319, &qword_1011AD858, &type metadata accessor for MusicPlayer.PreviewCapabilityStatus);
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_100A6EC38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100A6EC94()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100A6ED48(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_100A6ED70(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a3);
  if (![a1 request])
  {
    return;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = *(a2 + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onResponseChanged);
    if ([a1 response])
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
LABEL_12:
        v10 = v9;
        v7(v6);
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }

    v9 = 0;
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100A6EECC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100A5B574(a1, v4, v5, v7, v6);
}

uint64_t sub_100A6F014(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 144) = a2;
  *(v3 + 136) = a3;
  *(v3 + 128) = a1;
  v4 = type metadata accessor for DispatchTime();
  *(v3 + 152) = v4;
  *(v3 + 160) = *(v4 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  *(v3 + 184) = v5;
  *(v3 + 192) = *(v5 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = type metadata accessor for DispatchWorkItemFlags();
  *(v3 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_100A6F174, 0, 0);
}

uint64_t sub_100A6F174()
{
  v1 = v0[24];
  v13 = v0[23];
  v16 = v0[22];
  v2 = v0[20];
  v14 = v0[25];
  v15 = v0[21];
  v17 = v0[19];
  v3 = v0[16];
  v4 = swift_allocObject();
  v0[28] = v4;
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v0[6] = sub_100A6F9BC;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10002BC98;
  v0[5] = &unk_1010DB488;
  _Block_copy(v0 + 2);
  v0[14] = _swiftEmptyArrayStorage;
  sub_100A6E9A0(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags);

  sub_10010FC20(&unk_1011AB610);
  sub_100020674(&qword_1011AD960, &unk_1011AB610);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v0[29] = DispatchWorkItem.init(flags:block:)();

  sub_100009F78(0, &qword_1011A9F80);
  (*(v1 + 104))(v14, enum case for DispatchQoS.QoSClass.userInitiated(_:), v13);
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v14, v13);
  static DispatchTime.now()();
  + infix(_:_:)();
  v7 = *(v2 + 8);
  v7(v15, v17);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v7(v16, v17);
  v8 = swift_task_alloc();
  v0[30] = v8;
  v9 = sub_10010FC20(&qword_1011AD9C8);
  v10 = sub_10010FC20(&qword_1011AB640);
  v0[31] = v10;
  *v8 = v0;
  v8[1] = sub_100A6F4F8;
  v11 = v0[18];

  return Task.value.getter(v0 + 15, v11, v9, v10, &protocol self-conformance witness table for Error);
}

uint64_t sub_100A6F4F8()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100A6F890;
  }

  else
  {
    v2 = sub_100A6F60C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A6F60C()
{
  v1 = *(v0 + 224);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    sub_10010FC20(&qword_1011AD9D0);
    sub_100020674(&qword_1011AD9D8, &qword_1011AD9D0);
    v2 = swift_allocError();
    swift_willThrow();

    v3 = *(v0 + 224);
    swift_beginAccess();
    if ((*(v3 + 16) & 1) == 0)
    {
      dispatch thunk of DispatchWorkItem.cancel()();
      swift_allocError();
      *v4 = v2;
      swift_errorRetain();
      swift_continuation_throwingResumeWithError();
    }

    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 128);
    dispatch thunk of DispatchWorkItem.cancel()();
    v8 = *(v0 + 120);
    **(*(v7 + 64) + 40) = v8;
    v9 = v8;
    swift_continuation_throwingResume();

    v10 = *(v0 + 8);

    return v10(v8);
  }
}

uint64_t sub_100A6F890()
{
  v1 = v0[32];
  v2 = v0[28];
  swift_beginAccess();
  if ((*(v2 + 16) & 1) == 0)
  {
    dispatch thunk of DispatchWorkItem.cancel()();
    swift_allocError();
    *v3 = v1;
    swift_errorRetain();
    swift_continuation_throwingResumeWithError();
  }

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100A6FA20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_100A5C630(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100A6FB14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_100A6FB68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100A5ABCC(a1, v4, v5, v6);
}

uint64_t sub_100A6FC1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100A5A2CC(a1, v4, v5, v6);
}

uint64_t sub_100A6FCD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100A59FCC(a1, v4, v5, v6);
}

uint64_t sub_100A6FDA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static Player.InsertCommand.Location.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return !a2;
    }

    if (a1 == 1)
    {
      return a2 == 1;
    }

LABEL_10:
    if (a2 >= 4)
    {
      sub_100009F78(0, &qword_1011AAEA0);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      return a2 == 3;
    }

    goto LABEL_10;
  }

  return a2 == 2;
}

uint64_t Player.CommandOptions.with(_:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v6 = a5;
  a1(&v8);
  return v8;
}

uint64_t static Player.CommandOptions.with(_:)(void (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  a1(&v2);
  return v2;
}

BOOL MPCPlayerResponse.canPerform(_:)(uint64_t a1)
{
  sub_100008FE4(a1, v9);
  sub_10010FC20(&qword_1011ACA60);
  sub_10010FC20(&qword_1011AD9E0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v7, v10);
    v2 = v11;
    v3 = v12;
    sub_10000954C(v10, v11);
    v4 = (*(v3 + 24))(v1, v2, v3);
    v5 = v4 != 0;
    if (v4)
    {
    }

    sub_10000959C(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_100A736A0(v7);
    return 0;
  }

  return v5;
}

uint64_t MPCPlayerResponse.canPerform(anyOf:)(uint64_t a1)
{
  v3 = swift_conformsToProtocol2();
  if (v3 && a1)
  {
    return (*(v3 + 16))(v1, a1, v3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t Player.CommandIssuance.init(uuid:origin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a4 + *(type metadata accessor for Player.CommandIssuance() + 20));
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(a4, a1, v9);
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t MPCPlayerResponse.perform(_:issuance:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10030C430;

  return sub_100A73970(a1, a2, a3, a4);
}

{
  *(v5 + 152) = a4;
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  return _swift_task_switch(sub_100A73060, 0, 0);
}

unint64_t Player.CommandOptions.description.getter(uint64_t a1, char a2, void *a3)
{
  type metadata accessor for MPCPlayerChangeRequestOptions(0);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x6F69747563657865;
  v6._object = 0xEA00000000003D6ELL;
  String.append(_:)(v6);

  _StringGuts.grow(_:)(24);

  if (a2)
  {
    v7 = 7562585;
  }

  else
  {
    v7 = 28494;
  }

  if (a2)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0xD000000000000016;
  v10._object = 0x8000000100E61820;
  String.append(_:)(v10);

  if (a3)
  {
    v11 = a3;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0x3D6574756F72202CLL;
    v17._object = 0xE800000000000000;
    String.append(_:)(v17);
  }

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  return 0xD000000000000016;
}

uint64_t Player.CommandIssuance.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Player.CommandIssuance.uuid.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Player.CommandIssuance.origin.getter()
{
  v1 = *(v0 + *(type metadata accessor for Player.CommandIssuance() + 20));

  return v1;
}

uint64_t Player.CommandIssuance.origin.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Player.CommandIssuance() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t Player.CommandIssuance.description.getter()
{
  v1._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3D44495555;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);

  v3 = (v0 + *(type metadata accessor for Player.CommandIssuance() + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    String.append(_:)(*(&v4 - 1));
    v6._countAndFlagsBits = 0x6E696769726F202CLL;
    v6._object = 0xE90000000000003DLL;
    String.append(_:)(v6);
  }

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0xD000000000000017;
}

id Player.PlaybackCommand.request(from:)(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = &selRef_stop;
    }

    else
    {
      v3 = a1;
      result = [a1 play];
      if (result)
      {
        return result;
      }

      v2 = &selRef_pause;
      a1 = v3;
    }
  }

  else if (a2)
  {
    v2 = &selRef_pause;
  }

  else
  {
    v2 = &selRef_play;
  }

  return [a1 *v2];
}

id Player.ChangeCommand.request(from:)(void *a1, uint64_t a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 changeItemCommand];

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (v4)
        {
          v5 = [v4 nextChapter];
          goto LABEL_22;
        }

        break;
      case 4:
        if (v4)
        {
          v5 = [v4 previousSection];
          goto LABEL_22;
        }

        return 0;
      case 5:
        if (v4)
        {
          v5 = [v4 nextSection];
          goto LABEL_22;
        }

        break;
      default:
LABEL_16:
        if (v4)
        {
          v5 = [v4 changeToItem:a2];
          goto LABEL_22;
        }

        return 0;
    }

    return 0;
  }

  if (!a2)
  {
    if (v4)
    {
      v5 = [v4 previousItem];
      goto LABEL_22;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (v4)
    {
      v5 = [v4 nextItem];
      goto LABEL_22;
    }

    return 0;
  }

  if (a2 != 2)
  {
    goto LABEL_16;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 previousChapter];
LABEL_22:
  v6 = v5;
  swift_unknownObjectRelease();
  return v6;
}

id Player.ShuffleCommand.request(from:)(void *a1, char a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 shuffleCommand];

  if (!a2)
  {
    if (v4)
    {
      v5 = [v4 advance];
      goto LABEL_9;
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (v4)
    {
      v5 = [v4 setShuffleType:1];
      goto LABEL_9;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 setShuffleType:0];
LABEL_9:
  v6 = v5;
  swift_unknownObjectRelease();
  return v6;
}