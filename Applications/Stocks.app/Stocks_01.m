double sub_10001D1E8(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 120;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF88)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF88)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFF88)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 120);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xFE)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0xFE)
    {
      result = 0.0;
      *(v19 + 104) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 - 255;
    }

    else
    {
      *(v19 + 56) = a2 + 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t sub_10001D408()
{
  sub_10000461C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10001D51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DebugModel();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006580(a2, v16);
  v10 = swift_allocObject();
  sub_1000061A0(v16, v10 + 16);
  *v9 = sub_10001DB54;
  v9[1] = v10;
  v11 = enum case for DebugModel.action(_:);
  v12 = v6[13];
  v12(v9, enum case for DebugModel.action(_:), v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v13 = v6[1];
  v13(v9, v5);
  *v9 = sub_10001DB5C;
  v9[1] = a3;
  v12(v9, v11, v5);

  dispatch thunk of DebugDataSource.add(_:_:)();
  v13(v9, v5);
  *v9 = sub_10001D8A0;
  v9[1] = 0;
  v12(v9, enum case for DebugModel.modal(_:), v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  return (v13)(v9, v5);
}

uint64_t sub_10001D764(void *a1)
{
  v1 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_10001E05C();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    sub_1000061A0(&v3, v5);
    sub_1000045D8(v5, v5[3]);
    dispatch thunk of FeedItemDismissalStorageType.clear()();
    return sub_10000461C(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001D7FC()
{
  if (qword_10004EA68 != -1)
  {
    swift_once();
  }

  type metadata accessor for DebugAssembly();
  sub_10001E01C(&qword_10004F7C0);
  Updatable.save<A>(setting:value:)();
  exit(0);
}

void sub_10001D8A0()
{
  v0 = [objc_allocWithZone(type metadata accessor for DiagnosticFileProvider()) init];
  v1 = sub_100019AC8();
  sub_10001DFD0(0, &qword_1000503C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003EE10;
  *(inited + 32) = static Caches.Default.location.getter();
  *(inited + 40) = v3;
  *(inited + 48) = static Caches.Shared.location.getter();
  *(inited + 56) = v4;
  *(inited + 64) = static Caches.Charts.location.getter();
  *(inited + 72) = v5;
  v17[0] = v1;
  sub_1000199D4(inited);

  v6 = v1[2];
  if (v6)
  {
    v7 = 0;
    v8 = (v17[0] + 40);
    v9 = &_swiftEmptyArrayStorage;
    while (v7 < v1[2])
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      v18 = type metadata accessor for URL();
      sub_10000EE0C(v17);

      URL.init(fileURLWithPath:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10001DC74(0, *(v9 + 2) + 1, 1, v9);
      }

      v13 = *(v9 + 2);
      v12 = *(v9 + 3);
      if (v13 >= v12 >> 1)
      {
        v9 = sub_10001DC74((v12 > 1), v13 + 1, 1, v9);
      }

      ++v7;
      *(v9 + 2) = v13 + 1;
      sub_10001DF74(v17, &v9[32 * v13 + 32]);
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v14 = objc_allocWithZone(UIActivityViewController);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_10001DF84();
    v16 = Array._bridgeToObjectiveC()().super.isa;
    [v14 initWithActivityItems:isa applicationActivities:v16];
  }
}

char *sub_10001DB64(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001DFD0(0, &qword_1000503C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001DC74(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001DFD0(0, &qword_10004F7B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10001DD8C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100011E90(0, &qword_10004F7D0, &type metadata accessor for Stock);
  v10 = *(type metadata accessor for Stock() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Stock() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

_OWORD *sub_10001DF74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10001DF84()
{
  result = qword_10004F7B0;
  if (!qword_10004F7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004F7B0);
  }

  return result;
}

void sub_10001DFD0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _ContiguousArrayStorage();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10001E01C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugAssembly();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001E05C()
{
  result = qword_10004F7C8;
  if (!qword_10004F7C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004F7C8);
  }

  return result;
}

uint64_t sub_10001E0C0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for AppIntentType.unknown(_:);
  v3 = type metadata accessor for AppIntentType();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  type metadata accessor for OpenArticleIntent();
  sub_10001E3E4(&qword_10004F8F8, &type metadata accessor for OpenArticleIntent);
  _AppIntentExecution.callAsFunction<A>(for:handler:)();
  type metadata accessor for OpenBusinessNewsIntent();
  sub_10001E3E4(&qword_10004F900, &type metadata accessor for OpenBusinessNewsIntent);
  _AppIntentExecution.callAsFunction<A>(for:handler:)();
  type metadata accessor for OpenSymbolIntent();
  sub_10001E3E4(&qword_10004F288, &type metadata accessor for OpenSymbolIntent);
  _AppIntentExecution.callAsFunction<A>(for:handler:)();
  type metadata accessor for OpenWatchlistIntent();
  sub_10001E3E4(&qword_10004F908, &type metadata accessor for OpenWatchlistIntent);
  return _AppIntentExecution.callAsFunction<A>(for:handler:)();
}

uint64_t sub_10001E31C(uint64_t a1, unsigned int *a2)
{
  v4 = *(v2 + 16);
  v5 = type metadata accessor for AppIntentType();
  v9 = *(v5 - 8);
  (*(v9 + 8))(v4, v5);
  v6 = *a2;
  v7 = *(v9 + 104);

  return v7(v4, v6, v5);
}

uint64_t sub_10001E3E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001E430(void *a1)
{
  v2 = type metadata accessor for AppConfiguration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_1000036DC(0, &qword_10004FB60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v11)
  {
    sub_1000061A0(&v10, v12);
    type metadata accessor for StateRestoreController();
    sub_1000045D8(v12, v12[3]);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.stateRestorationAllowedTimeWindow.getter();
    (*(v3 + 8))(v6, v2);
    v9 = StateRestoreController.__allocating_init(timeWindow:isStateRestorationEnabled:shouldAlwaysAllowStateRestoration:)();
    sub_10000461C(v12);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001E5C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v35 = a2;
  v2 = type metadata accessor for Logger();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 connectedScenes];

  v8 = sub_10000557C(0, &qword_10004FAE0, UIScene_ptr);
  sub_100008354(&qword_10004FAE8, &qword_10004FAE0, UIScene_ptr);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = v5;
  v36 = v8;
  if ((v9 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v11 = v39;
    v10 = v40;
    v13 = v41;
    v12 = v42;
    v14 = v43;
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v9 + 56);

    v12 = 0;
    v11 = v9;
  }

  v33 = v13;
  v18 = (v13 + 64) >> 6;
  if (v11 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v19 = v12;
  v20 = v14;
  v21 = v12;
  if (v14)
  {
LABEL_12:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v11 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (v23)
    {
      while ([v23 activationState])
      {

        v12 = v21;
        v14 = v22;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v24 = __CocoaSet.Iterator.next()();
        if (v24)
        {
          v37 = v24;
          swift_dynamicCast();
          v23 = v38;
          v21 = v12;
          v22 = v14;
          if (v38)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_100010430();

      v25 = v34;
    }

    else
    {
LABEL_19:
      sub_100010430();
      v23 = sub_10000CC40(v9, &qword_10004FAE0, UIScene_ptr);

      v25 = v34;
      if (!v23)
      {
LABEL_27:
        static Logger.appIntents.getter();
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Couldn't find valid active scene to retrieve container from, defaulting to the initial one", v29, 2u);
        }

        (*(v30 + 8))(v25, v31);
        sub_100006580(v32, v35);
        return;
      }
    }

    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26 && [v26 delegate])
    {
      type metadata accessor for SceneDelegate();
      if (swift_dynamicCastClass())
      {
        sub_10000B558();
        Container.resolver.getter();

        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    goto LABEL_27;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_19;
    }

    v20 = *(v10 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10001EA20()
{
  v0 = type metadata accessor for AppActivationURLHandler();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return AppActivationURLHandler.init()();
}

uint64_t sub_10001EA58@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_1000036DC(0, &qword_10004F9A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10[3])
  {
    v6 = a1[4];
    sub_1000045D8(a1, a1[3]);
    sub_1000036DC(0, &qword_10004FAD0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v9[3])
    {
      v7 = objc_allocWithZone(type metadata accessor for GizmoSyncManager());
      v8 = sub_1000255D4(v10, v9);
      result = sub_100006820(&qword_10004FAD8, type metadata accessor for GizmoSyncManager);
      *a2 = v8;
      a2[1] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10001EB88()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = FCURLForTodayDropbox();
  if (result)
  {
    v6 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = objc_allocWithZone(FCFileCoordinatedTodayDropbox);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    v11 = [v7 initWithFileURL:v9];

    (*(v1 + 8))(v4, v0);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001ECA4(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000557C(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000557C(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

uint64_t sub_10001EEE4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_logger, v0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Attempting widget update for today dropbox changes", v8, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000F298(1);
  }

  return result;
}

uint64_t sub_10001F0A8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_logger, v0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Attempting widget update for currency display changes", v8, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000F298(0);
  }

  return result;
}

uint64_t sub_10001F290()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_hasCompletedColdLaunch) = 1;
    sub_100010438();
  }

  return result;
}

uint64_t sub_10001F2F8()
{
  v1 = OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_cancellables);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10001F3DC()
{

  asyncMain(block:)();
}

char *sub_10001F430(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000106B0();
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

void sub_10001F548()
{
  swift_getObjectType();

  SceneStateMonitor.sceneWillResignActive()();
}

void sub_10001F634()
{
  swift_getObjectType();

  SceneStateMonitor.sceneDidDisconnect()();
}

uint64_t sub_10001F670()
{
  v1 = *(v0 + 16);

  sub_10000461C((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_10001F6D4(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v58 = type metadata accessor for Date();
  v61 = *(v58 - 8);
  v3 = *(v61 + 64);
  v4 = __chkstk_darwin(v58);
  v66 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v67 = &v50 - v6;
  sub_100020284(0, &qword_10004FD40, &type metadata accessor for BannerAdTraits, &type metadata accessor for Optional);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v59 = &v50 - v9;
  v10 = type metadata accessor for BannerAdData();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  __chkstk_darwin(v10);
  v62 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AdSizeData();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BannerAdState();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = type metadata accessor for AdState();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v73 = type metadata accessor for AdStateData();
  v63 = *(v73 - 8);
  v22 = *(v63 + 64);
  __chkstk_darwin(v73);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for AdPlacementData();
  v60 = *(v72 - 8);
  v25 = *(v60 + 64);
  __chkstk_darwin(v72);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  BannerAdImpressionInfo.placementIdentifier.getter();
  v69 = v27;
  AdPlacementData.init(placementID:)();
  BannerAdImpressionInfo.bannerAdState.getter();
  AdState.init(bannerState:)();
  v71 = v24;
  AdStateData.init(state:)();
  v74 = a2;
  BannerAdImpressionInfo.frame.getter();
  Width = CGRectGetWidth(v75);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (Width <= -2147483650.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (Width >= 2147483650.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  BannerAdImpressionInfo.frame.getter();
  Height = CGRectGetHeight(v76);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (Height <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (Height < 2147483650.0)
  {
    AdSizeData.init(width:height:)();
    v57 = "trackerConfiguration";
    sub_1000202E8(&qword_10004FD48, &type metadata accessor for AdSizeData);
    AccessTracker.push<A>(data:traits:file:line:)();
    (*(v14 + 8))(v17, v13);
    sub_100020284(0, &qword_10004FD50, &type metadata accessor for DataEventTrait, &type metadata accessor for _ContiguousArrayStorage);
    v31 = v30;
    v32 = type metadata accessor for DataEventTrait();
    v33 = *(v32 - 8);
    v34 = *(v33 + 72);
    v52 = *(v33 + 80);
    v35 = (v52 + 32) & ~v52;
    v54 = v34;
    v55 = v31;
    v36 = swift_allocObject();
    v68 = xmmword_10003EDF0;
    *(v36 + 16) = xmmword_10003EDF0;
    v37 = enum case for DataEventTrait.onlyOnce(_:);
    v51 = *(v33 + 104);
    v53 = enum case for DataEventTrait.onlyOnce(_:);
    v56 = v32;
    v51(v36 + v35, enum case for DataEventTrait.onlyOnce(_:), v32);
    sub_1000202E8(&qword_10004FD58, &type metadata accessor for AdPlacementData);
    AccessTracker.push<A>(data:traits:file:line:)();

    v38 = swift_allocObject();
    *(v38 + 16) = v68;
    v39 = v37;
    v40 = v51;
    v51(v38 + v35, v39, v32);
    sub_1000202E8(&qword_10004FD60, &type metadata accessor for AdStateData);
    AccessTracker.push<A>(data:traits:file:line:)();

    v41 = v59;
    BannerAdImpressionInfo.traits.getter();
    v42 = type metadata accessor for BannerAdTraits();
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    v43 = v62;
    BannerAdData.init(traits:)();
    v44 = swift_allocObject();
    *(v44 + 16) = v68;
    v40(v44 + v35, v53, v56);
    sub_1000202E8(&qword_10004FD68, &type metadata accessor for BannerAdData);
    v45 = v65;
    AccessTracker.push<A>(data:traits:file:line:)();

    (*(v64 + 8))(v43, v45);
    type metadata accessor for BannerAdImpressionEvent();
    v46 = v66;
    BannerAdImpressionInfo.date.getter();
    BannerAdImpressionInfo.duration.getter();
    v47 = v67;
    static Date.- infix(_:_:)();
    v48 = *(v61 + 8);
    v49 = v58;
    v48(v46, v58);
    sub_1000202E8(&unk_10004FD70, &type metadata accessor for BannerAdImpressionEvent);
    AccessTracker.explicitTime<A>(_:startTime:)();
    v48(v47, v49);
    BannerAdImpressionInfo.date.getter();
    AccessTracker.explicitSubmit<A>(_:submitTime:completion:)();
    v48(v47, v49);
    (*(v63 + 8))(v71, v73);
    (*(v60 + 8))(v69, v72);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1000200A8(uint64_t a1)
{
  v3 = type metadata accessor for BannerAdImpressionInfo();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = *v1;
  v7 = *(*v1 + 56);
  sub_1000045D8((*v1 + 24), *(*v1 + 48));
  result = dispatch thunk of TrackerConfigurationType.adInstrumentationEnabled.getter();
  if (result)
  {
    v9 = *(v6 + 16);
    (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    (*(v4 + 32))(v11 + v10, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    Tracker.transaction(block:)();
  }

  return result;
}

void sub_100020214(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionInfo() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10001F6D4(a1, v4);
}

void sub_100020284(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000202E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100020448(uint64_t a1)
{
  sub_1000204A4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000204A4()
{
  if (!qword_10004F0A0)
  {
    sub_1000204FC();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10004F0A0);
    }
  }
}

unint64_t sub_1000204FC()
{
  result = qword_10004FE20;
  if (!qword_10004FE20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004FE20);
  }

  return result;
}

uint64_t sub_100020560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A458(0, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  sub_10000A4BC();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_10000F018(a1, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional, sub_10000A458);
    sub_1000245E0(a2, a3, v10);

    return sub_10000F018(v10, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional, sub_10000A458);
  }

  else
  {
    sub_100024738(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100024988(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_100020790(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
LABEL_5:

    return v5;
  }

  v7 = v2;
  sub_10000B3B4(v10);
  sub_1000045D8(v10, v10[3]);
  a2(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v5 = result;
    sub_10000461C(v10);
    v9 = *(v2 + v3);
    *(v7 + v3) = v5;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100020850()
{
  v1 = qword_10004FE58;
  if (*(v0 + qword_10004FE58))
  {
    v2 = *(v0 + qword_10004FE58);
LABEL_5:
    swift_unknownObjectRetain();
    return v2;
  }

  v3 = v0;
  sub_10000B3B4(v6);
  sub_1000045D8(v6, v6[3]);
  sub_100024240();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = result;
    sub_10000461C(v6);
    v5 = *(v0 + v1);
    *(v3 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002090C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10004FE60;
  swift_beginAccess();
  sub_10000B4D4(v1 + v3, &v7, &qword_100050008, &unk_100050010, &protocol descriptor for StateRestorationActivityProvider);
  if (v8)
  {
    return sub_1000061A0(&v7, a1);
  }

  sub_1000062B8(&v7, &qword_100050008, &unk_100050010, &protocol descriptor for StateRestorationActivityProvider);
  sub_10000B3B4(&v7);
  sub_1000045D8(&v7, v8);
  sub_1000036DC(0, &unk_100050010);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_1000061A0(&v5, a1);
    sub_10000461C(&v7);
    sub_100006580(a1, &v7);
    swift_beginAccess();
    sub_1000064FC(&v7, v1 + v3, &qword_100050008, &unk_100050010, &protocol descriptor for StateRestorationActivityProvider);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100020A80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_10004FE78);
  *(a1 + qword_10004FE78) = a3;
  v3 = a3;
}

uint64_t sub_100020AC8()
{
  v1 = v0 + qword_10004FEB0;
  v2 = *(v0 + qword_10004FEB0);
  if (v2)
  {
    v3 = *(v1 + 8);
    v4 = *(v0 + qword_10004FEB0);
LABEL_5:
    v7 = v2;
    return v4;
  }

  sub_10000B3B4(v10);
  sub_1000045D8(v10, v10[3]);
  sub_1000036DC(0, &unk_10004F010);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v8)
  {
    sub_10000461C(v10);
    v6 = *v1;
    *v1 = v8;
    *(v1 + 8) = v9;
    v4 = v8;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100020BA8()
{
  v1 = (v0 + qword_10004FEC8);
  v2 = *(v0 + qword_10004FEC8);
  if (v2)
  {
    v3 = v1[1];
    v4 = v2;
LABEL_5:
    swift_unknownObjectRetain();
    return v4;
  }

  sub_10000B3B4(v9);
  sub_1000045D8(v9, v9[3]);
  sub_1000036DC(0, &qword_10004F440);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v4 = v7;
  if (v7)
  {
    sub_10000461C(v9);
    v6 = *v1;
    *v1 = v7;
    v1[1] = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100020C80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for URLHandlerRoute();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B3B4(v12);
  sub_1000045D8(v12, v12[3]);
  sub_10000A458(0, &qword_100050020, &type metadata accessor for AppURLContext, &type metadata accessor for URLHandlerManager);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v12);
    v10 = [a3 options];
    (*(v5 + 104))(v8, enum case for URLHandlerRoute.sceneConnect(_:), v4);
    URLHandlerManager<A>.handle(url:options:route:)();

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100020E30(uint64_t a1, UIApplicationShortcutItem a2)
{
  sub_10000B3B4(v4);
  sub_1000045D8(v4, v4[3]);
  type metadata accessor for ShortcutItemHandlerManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v4);
    ShortcutItemHandlerManager.handle(shortcutItem:)(a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100020EBC(void *a1)
{
  v1 = a1;
  sub_10000B720(v3);
  sub_1000045D8(v3, v3[3]);
  dispatch thunk of SceneStateManagerType.sceneDidDisconnect()();

  return sub_10000461C(v3);
}

uint64_t sub_100020F28(void *a1)
{
  sub_10000B3B4(v4);
  sub_1000045D8(v4, v5);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v4);
    SessionManager.tracker.getter();
    Tracker.ifSession(block:)();

    if ([a1 activationState] == -1)
    {
      v3 = [a1 session];
      [v3 setStateRestorationActivity:0];
    }

    sub_10000B720(v4);
    sub_1000045D8(v4, v5);
    dispatch thunk of SceneStateManagerType.willResignActive()();

    return sub_10000461C(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100021060()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v8._countAndFlagsBits = v5;
  v8._object = v7;
  AccessTracker.enterGroup(groupName:)(v8);

  type metadata accessor for AppSessionResignEvent();
  sub_10000EDC4(&qword_100050070, &type metadata accessor for AppSessionResignEvent);
  memset(v9, 0, sizeof(v9));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  sub_10000F018(v9, &qword_100050370, &type metadata for Any + 8, &type metadata accessor for Optional, sub_10000A554);
  AccessTracker.leaveGroup()();
}

void sub_100021208(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100020F28(v4);
}

uint64_t sub_100021270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  Date.init()();
  SessionManager.end(endDate:completion:)();

  return (*(v5 + 8))(v8, v4);
}

void sub_100021398(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100024F00();
}

uint64_t sub_1000213F8()
{
  v1 = *(v0 + qword_10004FE30);

  sub_1000062B8(v0 + qword_10004FE38, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);

  v2 = *(v0 + qword_10004FE48);

  v3 = *(v0 + qword_10004FE50);

  v4 = *(v0 + qword_10004FE58);
  swift_unknownObjectRelease();
  sub_1000062B8(v0 + qword_10004FE60, &qword_100050008, &unk_100050010, &protocol descriptor for StateRestorationActivityProvider);
  v5 = *(v0 + qword_10004FE68);

  sub_1000062B8(v0 + qword_10004FE70, &qword_1000500E8, &qword_1000500F0, &protocol descriptor for WelcomeFlowProviderType);

  v6 = *(v0 + qword_10004FE90 + 8);

  sub_10000F018(v0 + qword_10004FE98, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional, sub_10000A458);
  v7 = *(v0 + qword_10004FEA0);

  sub_1000062B8(v0 + qword_10004FEB8, &unk_100050060, &qword_10004F9B8, &protocol descriptor for SceneStateManagerType);
  v8 = *(v0 + qword_10004FEC0);
  swift_unknownObjectRelease();
  v9 = *(v0 + qword_10004FEC8);
  swift_unknownObjectRelease();
  v10 = *(v0 + qword_10004FED0);

  v11 = *(v0 + qword_10004FED8);
}

uint64_t sub_100021610(uint64_t a1)
{
  v2 = *(a1 + qword_10004FE30);

  sub_1000062B8(a1 + qword_10004FE38, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);

  v3 = *(a1 + qword_10004FE48);

  v4 = *(a1 + qword_10004FE50);

  v5 = *(a1 + qword_10004FE58);
  swift_unknownObjectRelease();
  sub_1000062B8(a1 + qword_10004FE60, &qword_100050008, &unk_100050010, &protocol descriptor for StateRestorationActivityProvider);
  v6 = *(a1 + qword_10004FE68);

  sub_1000062B8(a1 + qword_10004FE70, &qword_1000500E8, &qword_1000500F0, &protocol descriptor for WelcomeFlowProviderType);

  v7 = *(a1 + qword_10004FE90 + 8);

  sub_10000F018(a1 + qword_10004FE98, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional, sub_10000A458);
  v8 = *(a1 + qword_10004FEA0);

  sub_1000062B8(a1 + qword_10004FEB8, &unk_100050060, &qword_10004F9B8, &protocol descriptor for SceneStateManagerType);
  v9 = *(a1 + qword_10004FEC0);
  swift_unknownObjectRelease();
  v10 = *(a1 + qword_10004FEC8);
  swift_unknownObjectRelease();
  v11 = *(a1 + qword_10004FED0);

  v12 = *(a1 + qword_10004FED8);
}

uint64_t sub_10002183C(uint64_t a1, NSUserActivity a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_10000B3B4(v5);

    sub_1000045D8(v5, v5[3]);
    type metadata accessor for UserActivityHandlerManager();
    if (dispatch thunk of ResolverType.resolve<A>(_:)())
    {
      UserActivityHandlerManager.handle(userActivity:)(a2);
    }

    return sub_10000461C(v5);
  }

  return result;
}

uint64_t sub_1000218EC(uint64_t a1, void *a2, void *a3)
{
  sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10003EDF0;
  v6 = [a2 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000056B0();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v10 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_10000557C(0, &qword_100050148, UIDevice_ptr);
  result = static UIDevice.isSlow.getter();
  if ((result & 1) == 0)
  {

    return [a3 _extendStateRestoration];
  }

  return result;
}

uint64_t sub_100021A64(uint64_t a1, void *a2)
{
  sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10003EDF0;
  v4 = Double.millisecondsUntilCurrentMediaTime()();
  *(v3 + 56) = &type metadata for Double;
  *(v3 + 64) = &protocol witness table for Double;
  *(v3 + 32) = v4;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v5 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_10000557C(0, &qword_100050148, UIDevice_ptr);
  result = static UIDevice.isSlow.getter();
  if ((result & 1) == 0)
  {
    return [a2 _completeStateRestoration];
  }

  return result;
}

uint64_t sub_100021BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A458(0, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v22[-v7];
  v9 = StocksActivity.identifier.getter();
  v11 = v10;
  sub_100025240(a2, v8, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional, sub_10000A458);
  v12 = type metadata accessor for StocksActivity();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_10000F018(v8, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional, sub_10000A458);

LABEL_3:
    result = StocksActivity.affectsNavigationStack.getter();
    if (result)
    {
      sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
      v15 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v16 = *(a3 + qword_10004FEA0);
      v22[15] = 2;
      return StateMachine.fire(event:)();
    }

    return result;
  }

  v17 = StocksActivity.identifier.getter();
  v19 = v18;
  (*(v13 + 8))(v8, v12);
  if (v9 == v17 && v11 == v19)
  {
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_100021E64(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);

  v5 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v6 = sub_10000EE84();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000254AC;
  *(v7 + 24) = v4;
  v8 = zalgoIfMain.getter();
  Bootstrapper.afterBootstrap(on:run:)();
}

uint64_t sub_100021F98(uint64_t a1, void *a2, void *a3)
{
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v5 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v15 = 0;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = &v15;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100025478;
  *(v8 + 24) = v7;
  aBlock[4] = sub_100025484;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100022208;
  aBlock[3] = &unk_10004B390;
  v9 = _Block_copy(aBlock);
  v10 = a2;
  v11 = a3;

  [v6 performWithoutAnimation:v9];
  _Block_release(v9);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;
    if (v15)
    {

      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100022188(uint64_t *a1)
{
  sub_100020790(&qword_10004FE68, &type metadata accessor for UserActivityHandlerManager);
  v2 = UserActivityHandlerManager.handleAsync(userActivity:)();

  v3 = *a1;
  *a1 = v2;
}

uint64_t sub_100022230()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v12 - v6;
  static DispatchTime.now()();
  + infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v9 = zalgo.getter();
  v10 = Promise.timeout(after:on:message:)();

  v8(v7, v0);
  return v10;
}

uint64_t sub_100022378(uint64_t a1, uint64_t a2)
{
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v4 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v5 = *(a2 + qword_10004FEA0);
  StateMachine.fire(event:)();
  if (v2)
  {
  }

  sub_10000A554(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_100022478(uint64_t a1, uint64_t a2)
{
  sub_10000A458(0, &unk_100050138, &type metadata accessor for PromiseError, &type metadata accessor for Optional);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v22 = a1;
  swift_errorRetain();
  sub_1000036DC(0, &unk_10004F050);
  v8 = type metadata accessor for PromiseError();
  v9 = swift_dynamicCast();
  v10 = *(*(v8 - 8) + 56);
  if (!v9)
  {
    v10(v7, 1, 1, v8);
    sub_10000F018(v7, &unk_100050138, &type metadata accessor for PromiseError, &type metadata accessor for Optional, sub_10000A458);
    goto LABEL_5;
  }

  v11 = *(v8 - 8);
  v10(v7, 0, 1, v8);
  v12 = (*(v11 + 88))(v7, v8);
  v13 = enum case for PromiseError.timedOut(_:);
  (*(v11 + 8))(v7, v8);
  if (v12 != v13)
  {
LABEL_5:
    static os_log_type_t.error.getter();
    sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10003EDF0;
    v22 = a1;
    swift_errorRetain();
    v16 = String.init<A>(describing:)();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_1000056B0();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    goto LABEL_6;
  }

  static os_log_type_t.error.getter();
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v14 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();
LABEL_6:

  v19 = *(a2 + qword_10004FEA0);
  LOBYTE(v22) = 2;
  return StateMachine.fire(event:)();
}

uint64_t sub_100022800(void *a1, uint64_t a2)
{
  v84 = a1;
  sub_10000A4BC();
  v83 = v3;
  v80 = *(v3 - 8);
  v4 = *(v80 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v87 = &v73 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000557C(0, &qword_100050040, UIOpenURLContext_ptr);
    sub_10000CBDC(&qword_100050048, &qword_100050040, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    a2 = v90;
    v14 = v91;
    v16 = v92;
    v15 = v93;
    v17 = v94;
  }

  else
  {
    v18 = -1 << *(a2 + 32);
    v14 = a2 + 56;
    v16 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(a2 + 56);

    v15 = 0;
  }

  v73 = v16;
  v21 = (v16 + 64) >> 6;
  v82 = (v10 + 16);
  v74 = (v10 + 8);
  v81 = xmmword_10003EDF0;
  v78 = v9;
  v79 = a2;
  v77 = v13;
  v75 = v21;
  v76 = v14;
  while (a2 < 0)
  {
    v36 = __CocoaSet.Iterator.next()();
    if (!v36)
    {
      return sub_100010430();
    }

    v88 = v36;
    sub_10000557C(0, &qword_100050040, UIOpenURLContext_ptr);
    swift_dynamicCast();
    v35 = v89;
    v33 = v15;
    v34 = v17;
    if (!v89)
    {
      return sub_100010430();
    }

LABEL_19:
    v85 = v34;
    v37 = [v35 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = [v84 session];
    v39 = [v38 persistentIdentifier];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
    v43 = swift_allocObject();
    *(v43 + 16) = v81;
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = sub_1000056B0();
    *(v43 + 32) = v40;
    *(v43 + 40) = v42;
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);

    v44 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    (*v82)(v87, v13, v9);
    v45 = [v35 options];
    v46 = [v45 sourceApplication];

    if (v46)
    {
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0;
    }

    v51 = v86;
    v50 = v87;
    v52 = &v87[*(v83 + 48)];
    *v52 = v47;
    v52[1] = v49;
    v53 = qword_10004FED8;
    swift_beginAccess();
    v54 = v50;
    v55 = v7;
    sub_100024738(v54, v7);
    v56 = *&v51[v53];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = *&v51[v53];
    v58 = v88;
    *&v51[v53] = 0x8000000000000000;
    v60 = sub_100029810(v40, v42);
    v61 = v58[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_35;
    }

    v64 = v59;
    if (v58[3] >= v63)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v59)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_100024B84();
        if (v64)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_1000242B0(v63, isUniquelyReferenced_nonNull_native);
      v65 = sub_100029810(v40, v42);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_37;
      }

      v60 = v65;
      if (v64)
      {
LABEL_8:

        v22 = v88;
        v23 = v88[7] + *(v80 + 72) * v60;
        v7 = v55;
        sub_100024DA4(v55, v23);
        goto LABEL_9;
      }
    }

    v22 = v88;
    v88[(v60 >> 6) + 8] |= 1 << v60;
    v67 = (v22[6] + 16 * v60);
    *v67 = v40;
    v67[1] = v42;
    v68 = v22[7] + *(v80 + 72) * v60;
    v7 = v55;
    sub_100024738(v55, v68);
    v69 = v22[2];
    v70 = __OFADD__(v69, 1);
    v71 = v69 + 1;
    if (v70)
    {
      goto LABEL_36;
    }

    v22[2] = v71;
LABEL_9:
    v24 = v86;
    v25 = *&v86[v53];
    *&v86[v53] = v22;

    swift_endAccess();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v35;
    v27 = v24;
    v28 = v35;
    v29 = sub_10000EE84();
    v30 = zalgoIfMain.getter();
    Bootstrapper.afterBootstrap(on:run:)();

    v13 = v77;
    v9 = v78;
    (*v74)(v77, v78);
    v15 = v33;
    v17 = v85;
    a2 = v79;
    v14 = v76;
    v21 = v75;
  }

  v31 = v15;
  v32 = v17;
  v33 = v15;
  if (v17)
  {
LABEL_15:
    v34 = (v32 - 1) & v32;
    v35 = *(*(a2 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
    if (!v35)
    {
      return sub_100010430();
    }

    goto LABEL_19;
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v21)
    {
      return sub_100010430();
    }

    v32 = *(v14 + 8 * v33);
    ++v31;
    if (v32)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100022F3C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for URLHandlerRoute();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B3B4(v17);
  sub_1000045D8(v17, v17[3]);
  sub_10000A458(0, &qword_100050020, &type metadata accessor for AppURLContext, &type metadata accessor for URLHandlerManager);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v17);
    v14 = [a2 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = [a2 options];
    (*(v4 + 104))(v7, enum case for URLHandlerRoute.openURL(_:), v3);
    URLHandlerManager<A>.handle(url:options:route:)();

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000231A8(void *a1, uint64_t a2, void *a3)
{
  sub_10000557C(0, &qword_100050040, UIOpenURLContext_ptr);
  sub_10000CBDC(&qword_100050048, &qword_100050040, UIOpenURLContext_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = a1;
  sub_100022800(v6, v5);
}

uint64_t sub_100023264(uint64_t a1, void (*a2)(Swift::Bool), uint64_t a3, UIApplicationShortcutItem a4)
{
  sub_10000B3B4(v8);
  sub_1000045D8(v8, v8[3]);
  type metadata accessor for ShortcutItemHandlerManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v8);
    v7 = ShortcutItemHandlerManager.handle(shortcutItem:)(a4);
    a2(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100023314(void *a1, int a2, int a3, void *a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = sub_100024ED4;
  v9[4] = v8;
  v9[5] = a4;
  v10 = a4;
  v14 = a1;
  v11 = v10;

  v12 = sub_10000EE84();
  v13 = zalgoIfMain.getter();
  Bootstrapper.afterBootstrap(on:run:)();
}

void sub_10002342C()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10003EDF0;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000056B0();
  *(v3 + 32) = v0;
  *(v3 + 40) = v2;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v4 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

void sub_10002353C(void *a1, uint64_t a2, void *a3)
{
  v42 = a3;
  v4 = type metadata accessor for URLHandlerRoute();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A458(0, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v43 = [a1 activityType];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v19 && v22 == v21)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {

      sub_100020790(&qword_10004FE68, &type metadata accessor for UserActivityHandlerManager);
      UserActivityHandlerManager.handle(userActivity:)(a1);

      return;
    }
  }

  v25 = [a1 webpageURL];
  if (v25)
  {
    v26 = v25;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 32))(v18, v16, v11);
    v27 = [v42 session];
    v28 = [v27 persistentIdentifier];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    sub_10000A4BC();
    v33 = v32;
    v34 = &v10[*(v32 + 48)];
    (*(v12 + 16))(v10, v18, v11);
    *v34 = 0;
    *(v34 + 1) = 0;
    (*(*(v33 - 8) + 56))(v10, 0, 1, v33);
    swift_beginAccess();
    sub_100020560(v10, v29, v31);
    swift_endAccess();
    sub_10000B3B4(v44);
    sub_1000045D8(v44, v44[3]);
    sub_10000A458(0, &qword_100050020, &type metadata accessor for AppURLContext, &type metadata accessor for URLHandlerManager);
    if (dispatch thunk of ResolverType.resolve<A>(_:)())
    {

      sub_10000461C(v44);
      v36 = v39;
      v35 = v40;
      v37 = v41;
      (*(v40 + 104))(v39, enum case for URLHandlerRoute.userActivity(_:), v41);
      URLHandlerManager<A>.handle(url:options:route:)();

      (*(v35 + 8))(v36, v37);
      (*(v12 + 8))(v18, v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v38 = v43;
  }
}

void sub_100023A74(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = swift_allocObject();
  v7[2] = a4;
  v7[3] = a1;
  v7[4] = a3;
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = v9;
  v15 = v10;
  v12 = v8;
  v13 = sub_10000EE84();
  v14 = zalgoIfMain.getter();
  Bootstrapper.afterBootstrap(on:run:)();
}

id sub_100023B60(void *a1)
{
  v1 = a1;
  v2 = [sub_100020850() isStateRestorationAllowed];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_10002090C(v6);
    sub_1000045D8(v6, v6[3]);
    v3 = dispatch thunk of StateRestorationActivityProvider.stateRestorationActivity.getter();

    sub_10000461C(v6);
    v4 = v3;
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

uint64_t sub_100023C48(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v7 = sub_100020AC8();
  v9 = v8;
  ObjectType = swift_getObjectType();
  a4(v12, ObjectType, v9);

  return sub_10000461C(v12);
}

uint64_t sub_100023CDC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_100020AC8();
  swift_getObjectType();
  sub_100020BA8();
  v7 = sub_100020790(&qword_10004FED0, &type metadata accessor for Tracker);
  v9[3] = type metadata accessor for Tracker();
  v9[4] = sub_10000EDC4(&qword_10004F030, &type metadata accessor for Tracker);
  v9[0] = v7;
  dispatch thunk of MenuManagerType.validate(_:with:tracker:)();

  swift_unknownObjectRelease();
  return sub_10000461C(v9);
}

uint64_t sub_100023DFC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100020AC8();
  sub_100025240(a2, v26, &qword_100050370, &type metadata for Any + 8, &type metadata accessor for Optional, sub_10000A554);
  v6 = v27;
  if (v27)
  {
    v7 = sub_1000045D8(v26, v27);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    __chkstk_darwin(v7);
    v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    sub_10000461C(v26);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 canPerformAction:a1 withSender:v12];

  swift_unknownObjectRelease();
  if (v13)
  {
    return 1;
  }

  sub_100025240(a2, v26, &qword_100050370, &type metadata for Any + 8, &type metadata accessor for Optional, sub_10000A554);
  v15 = v27;
  if (v27)
  {
    v16 = sub_1000045D8(v26, v27);
    v17 = *(v15 - 8);
    v18 = *(v17 + 64);
    __chkstk_darwin(v16);
    v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20);
    v21 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v20, v15);
    sub_10000461C(v26);
  }

  else
  {
    v21 = 0;
  }

  v25.receiver = v2;
  v25.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v25, "canPerformAction:withSender:", a1, v21);
  swift_unknownObjectRelease();
  return v22;
}

uint64_t sub_100024104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = sub_100023DFC(a3, v10);

  sub_10000F018(v10, &qword_100050370, &type metadata for Any + 8, &type metadata accessor for Optional, sub_10000A554);
  return v8 & 1;
}

uint64_t sub_1000241C8()
{
  sub_10000B3B4(v2);
  sub_1000045D8(v2, v2[3]);
  type metadata accessor for DebugNavigationController();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v1 = result;
    sub_10000461C(v2);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100024240()
{
  result = qword_10004F9D8;
  if (!qword_10004F9D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004F9D8);
  }

  return result;
}

uint64_t sub_1000242B0(uint64_t a1, int a2)
{
  v3 = v2;
  sub_10000A4BC();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_100024E08();
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_100024738(v31, v45);
      }

      else
      {
        sub_100024E70(v31, v45);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_100024738(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1000245E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100029810(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v24 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100024B84();
      v12 = v24;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    sub_10000A4BC();
    v16 = v15;
    v23 = *(v15 - 8);
    sub_100024738(v14 + *(v23 + 72) * v9, a3);
    sub_10002479C(v9, v12);
    *v4 = v12;
    v17 = *(v23 + 56);
    v18 = a3;
    v19 = 0;
    v20 = v16;
  }

  else
  {
    sub_10000A4BC();
    v17 = *(*(v21 - 8) + 56);
    v20 = v21;
    v18 = a3;
    v19 = 1;
  }

  return v17(v18, v19, 1, v20);
}

uint64_t sub_100024738(uint64_t a1, uint64_t a2)
{
  sub_10000A4BC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002479C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      sub_10000A4BC();
      v20 = *(*(v19 - 8) + 72);
      v21 = v20 * v3;
      result = v18 + v20 * v3;
      v22 = v20 * v6;
      v23 = v18 + v20 * v6 + v20;
      if (v21 < v22 || result >= v23)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v21 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100024988(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100029810(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100024B84();
      goto LABEL_7;
    }

    sub_1000242B0(v15, a4 & 1);
    v23 = *v5;
    v24 = sub_100029810(a2, a3);
    if ((v16 & 1) == (v25 & 1))
    {
      v12 = v24;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    sub_10000A4BC();
    v21 = v19 + *(*(v20 - 8) + 72) * v12;

    return sub_100024DA4(a1, v21);
  }

LABEL_13:
  sub_100024AEC(v12, a2, a3, a1, v18);
}

uint64_t sub_100024AEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  sub_10000A4BC();
  result = sub_100024738(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_100024B84()
{
  v1 = v0;
  sub_10000A4BC();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024E08();
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_100024E70(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_100024738(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_21;
      }

      v20 = *(v5 + 64 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_100024DA4(uint64_t a1, uint64_t a2)
{
  sub_10000A4BC();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100024E08()
{
  if (!qword_100050028)
  {
    sub_10000A4BC();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_100050028);
    }
  }
}

uint64_t sub_100024E70(uint64_t a1, uint64_t a2)
{
  sub_10000A4BC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024F00()
{
  sub_10000B720(v1);
  sub_1000045D8(v1, v2);
  dispatch thunk of SceneStateManagerType.didEnterBackground()();
  sub_10000461C(v1);
  sub_10000B3B4(v1);
  sub_1000045D8(v1, v2);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v1);
    backgroundTask(withName:timeout:work:)();
    [sub_100020850() sceneDidEnterBackground];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100025014(uint64_t a1, uint64_t a2)
{
  sub_10000A458(0, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000250B8()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100020C80(v3, v0 + v2, v4);
}

void sub_100025148()
{
  if (!qword_100050120)
  {
    sub_1000251C4();
    sub_10000A7C4();
    v0 = type metadata accessor for StateMachineTransition();
    if (!v1)
    {
      atomic_store(v0, &qword_100050120);
    }
  }
}

unint64_t sub_1000251C4()
{
  result = qword_100050128;
  if (!qword_100050128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050128);
  }

  return result;
}

uint64_t sub_100025240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1000252B4(uint64_t a1, uint64_t a2)
{
  sub_10000A458(0, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025348(uint64_t a1)
{
  sub_10000A458(0, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100021BA0(a1, v1 + v5, v6);
}

uint64_t sub_100025478()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_100022188(*(v0 + 16));
}

uint64_t sub_100025484()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000254AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000254D4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100025528(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

id sub_1000255D4(uint64_t *a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for PromiseDeduperFlags();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_sharedUserDefaults;
  sub_10000557C(0, &qword_100050310, NSUserDefaults_ptr);
  *&v2[v8] = static NSUserDefaults.stocksShared.getter();
  v9 = OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_syncDeduper;
  v25 = &_swiftEmptyArrayStorage;
  sub_100006868(&qword_100050318, 255, &type metadata accessor for PromiseDeduperFlags);
  sub_10002B438(0, &qword_100050320, &type metadata accessor for PromiseDeduperFlags, &type metadata accessor for Array);
  sub_10002965C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10002B5D4(0, &unk_100050330, &type metadata for () + 8, &type metadata accessor for PromiseDeduper);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v2[v9] = PromiseDeduper.init(options:)();
  v2[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_pendingWatchNotification] = 0;
  sub_100006580(a1, &v2[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager]);
  sub_100006580(a2, &v2[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_stockMetadataManager]);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v24, "init");
  v14 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10004EA78 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v14, v13, sub_10002944C, qword_100051C10, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v15 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10004EA80 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v15, v13, sub_1000294A8, qword_100051C18, 0, CFNotificationSuspensionBehaviorCoalesce);

  v16 = objc_opt_self();
  if ([v16 isSupported])
  {
    if (qword_10004EA90 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000296E4(v17, qword_100051C20);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "activating watch connectivity session", v20, 2u);
    }

    v21 = [v16 defaultSession];
    [v21 setDelegate:v13];

    v22 = [v16 defaultSession];
    [v22 activateSession];
  }

  sub_10000461C(a2);
  sub_10000461C(a1);
  return v13;
}

id sub_100025A10()
{
  ObjectType = swift_getObjectType();
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10004EA78 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v2, v0, qword_100051C10, 0);

  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10004EA80 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v3, v0, qword_100051C18, 0);

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_100025C8C(char a1, void *a2)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000296E4(v4, qword_100051C20);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "will sync forced=%{BOOL}d", v7, 8u);
  }

  __chkstk_darwin(v8);
  firstly<A>(closure:)();
  *(swift_allocObject() + 16) = a2;
  v9 = a2;
  v10 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  *(swift_allocObject() + 16) = v9;
  v11 = v9;
  v12 = zalgo.getter();
  sub_10002B438(0, &qword_100050348, &type metadata accessor for Stock, &type metadata accessor for Array);
  Promise.then<A>(on:closure:)();

  sub_10000557C(0, &qword_10004F0B0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = a1 & 1;
  v15 = v11;
  Promise.then<A>(on:closure:)();

  v16 = zalgo.getter();
  v17 = Promise.error(on:closure:)();

  return v17;
}

uint64_t sub_100025FB0(uint64_t a1)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000296E4(v2, qword_100051C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "prewarming watchlist manager", v5, 2u);
  }

  v6 = *(a1 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager + 32);
  sub_1000045D8((a1 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager), *(a1 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager + 24));
  return dispatch thunk of WatchlistManagerType.prewarm()();
}

uint64_t sub_1000260C4()
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000296E4(v0, qword_100051C20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "adopting changes from watch", v3, 2u);
  }

  return sub_1000261B8();
}

uint64_t sub_1000261B8()
{
  v0 = type metadata accessor for CachePolicy();
  v143 = *(v0 - 8);
  v1 = *(v143 + 64);
  __chkstk_darwin(v0);
  v3 = &v132 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Watchlist();
  v141 = *(v4 - 8);
  v5 = *(v141 + 64);
  __chkstk_darwin(v4);
  v7 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000557C(0, &qword_100050310, NSUserDefaults_ptr);
  v8 = static NSUserDefaults.stocksShared.getter();
  v9 = String._bridgeToObjectiveC()();
  [v8 doubleForKey:v9];
  v11 = v10;

  v12 = objc_opt_self();
  v13 = [v12 standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  [v13 doubleForKey:v14];
  v16 = v15;

  if (v16 == 0.0)
  {
    if (qword_10004EA90 != -1)
    {
LABEL_82:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000296E4(v17, qword_100051C20);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_11;
    }

    v20 = swift_slowAlloc();
    *v20 = 134218240;
    *(v20 + 4) = v16;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v11;
    v21 = "not checking for changes from watch since this device has never written to it (localLastModified=%f), sharedLastModified=%f)";
    goto LABEL_10;
  }

  v142 = v7;
  v133 = v3;
  v134 = v0;
  if (v11 == 0.0)
  {
    if (qword_10004EA90 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000296E4(v22, qword_100051C20);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_11;
    }

    v20 = swift_slowAlloc();
    *v20 = 134218240;
    *(v20 + 4) = v16;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v11;
    v21 = "not checking for changes from watch since shared defaults have never been modified (localLastModified=%f), sharedLastModified=%f)";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 0x16u);

LABEL_11:

    sub_10002B82C(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    return Promise.init(value:)();
  }

  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v144 = sub_1000296E4(v27, qword_100051C20);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = v4;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    *v31 = 134218240;
    *(v31 + 4) = v16;
    *(v31 + 12) = 2048;
    *(v31 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v28, v29, "checking for changes from watch (localLastModified=%f), sharedLastModified=%f)", v31, 0x16u);
  }

  v153 = &_swiftEmptyArrayStorage;
  v32 = *&v145[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_sharedUserDefaults];
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 objectForKey:v33];

  if (v34)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v149 = 0u;
    v150 = 0u;
  }

  v151 = v149;
  v152 = v150;
  if (*(&v150 + 1))
  {
    sub_10002B634(0, &qword_100050380, &type metadata accessor for Array);
    if (swift_dynamicCast())
    {
      v138 = v148;
      goto LABEL_24;
    }
  }

  else
  {
    sub_100015138(&v151);
  }

  sub_10002B634(0, &qword_100050388, &type metadata accessor for _ContiguousArrayStorage);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10003EDF0;
  v36 = sub_10002A67C(&_swiftEmptyArrayStorage);
  v138 = v35;
  *(v35 + 32) = v36;
LABEL_24:
  v37 = [v12 standardUserDefaults];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 objectForKey:v38];

  if (v39)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v149 = 0u;
    v150 = 0u;
  }

  v40 = v138;
  v151 = v149;
  v152 = v150;
  if (*(&v150 + 1))
  {
    sub_10002B634(0, &qword_100050380, &type metadata accessor for Array);
    if (swift_dynamicCast())
    {
      v41 = v148;
      goto LABEL_32;
    }
  }

  else
  {
    sub_100015138(&v151);
  }

  sub_10002B634(0, &qword_100050388, &type metadata accessor for _ContiguousArrayStorage);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10003EDF0;
  *(v41 + 32) = sub_10002A67C(&_swiftEmptyArrayStorage);
LABEL_32:
  v42 = sub_10002A7BC(v40);
  v43 = sub_10002A7BC(v41);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  v46 = os_log_type_enabled(v44, v45);
  v140 = v42;
  v137 = v43;
  if (v46)
  {
    v47 = swift_slowAlloc();
    *&v151 = swift_slowAlloc();
    *v47 = 136315394;
    v48 = Array.description.getter();
    v50 = sub_1000105E4(v48, v49, &v151);

    *(v47 + 4) = v50;
    *(v47 + 12) = 2080;
    v51 = Array.description.getter();
    v53 = sub_1000105E4(v51, v52, &v151);

    *(v47 + 14) = v53;
    v42 = v140;
    _os_log_impl(&_mh_execute_header, v44, v45, "shared watchlist has symbols=%s, and this device last saved symbols=%s", v47, 0x16u);
    swift_arrayDestroy();
  }

  v139 = v4;
  if (v16 < v11)
  {
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v141;
    v58 = v145;
    if (v56)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "shared watchlist has been modified since this device last wrote to it", v59, 2u);
    }

    v62 = *(v137 + 16);
    if (v62)
    {
      v63 = 0;
      v136 = &v58[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager];
      v135 = (v57 + 8);
      v64 = (v137 + 40);
      *&v61 = 136315138;
      v132 = v61;
      do
      {
        v65 = *(v64 - 1);
        v66 = *v64;
        *&v151 = v65;
        *(&v151 + 1) = v66;
        __chkstk_darwin(v60);
        *(&v132 - 2) = &v151;

        if (sub_100025528(sub_10002B898, (&v132 - 2), v42))
        {
        }

        else
        {

          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.default.getter();

          v69 = os_log_type_enabled(v67, v68);
          v147 = v63;
          if (v69)
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *&v151 = v71;
            *v70 = v132;
            *(v70 + 4) = sub_1000105E4(v65, v66, &v151);
            _os_log_impl(&_mh_execute_header, v67, v68, "found deleted symbol: %s", v70, 0xCu);
            sub_10000461C(v71);
          }

          v72 = v136;
          v73 = *(v136 + 3);
          v146 = *(v136 + 4);
          sub_1000045D8(v136, v73);
          v74 = *(v72 + 4);
          sub_1000045D8(v72, *(v72 + 3));
          v75 = v142;
          dispatch thunk of WatchlistManagerType.defaultAllSymbolsWatchlist.getter();
          dispatch thunk of WatchlistManagerType.removeSymbol(_:from:)();

          v30 = v139;
          (*v135)(v75, v139);
          v76 = zalgo.getter();
          Promise.then<A>(on:closure:)();

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v77 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v60 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v42 = v140;
          v63 = v147;
        }

        v64 += 2;
        --v62;
      }

      while (v62);
    }
  }

  v78 = v138;
  v79 = *(v138 + 16);
  if (v79)
  {
    v80 = 0;
    v81 = v138 + 32;
    v146 = v79 - 1;
    v147 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v82 = v80;
      while (1)
      {
        if (v82 >= *(v78 + 16))
        {
          __break(1u);
          goto LABEL_82;
        }

        v83 = *(v81 + 8 * v82);
        if (*(v83 + 16))
        {
          break;
        }

LABEL_51:
        if (v79 == ++v82)
        {
          v30 = v139;
          goto LABEL_67;
        }
      }

      v84 = *(v81 + 8 * v82);

      v85 = sub_100029810(0x6C6F626D7973, 0xE600000000000000);
      if ((v86 & 1) == 0)
      {
        break;
      }

      sub_100010AE0(*(v83 + 56) + 32 * v85, &v151);
      v87 = swift_dynamicCast();
      if ((v87 & 1) == 0)
      {
        break;
      }

      v88 = v149;
      v151 = v149;
      __chkstk_darwin(v87);
      *(&v132 - 2) = &v151;
      v89 = sub_100025528(sub_10002B6BC, (&v132 - 2), v137);

      if (v89)
      {

        v78 = v138;
        goto LABEL_51;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v147 = sub_10001DB64(0, *(v147 + 2) + 1, 1, v147);
      }

      v91 = *(v147 + 2);
      v90 = *(v147 + 3);
      if (v91 >= v90 >> 1)
      {
        v147 = sub_10001DB64((v90 > 1), v91 + 1, 1, v147);
      }

      v80 = v82 + 1;
      v92 = v147;
      *(v147 + 2) = v91 + 1;
      *&v92[16 * v91 + 32] = v88;
      v93 = v146 == v82;
      v30 = v139;
      v78 = v138;
      if (v93)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_51;
  }

  v147 = &_swiftEmptyArrayStorage;
LABEL_67:
  v94 = v147;

  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *&v151 = v98;
    *v97 = 136315138;
    v99 = Array.description.getter();
    v101 = sub_1000105E4(v99, v100, &v151);

    *(v97 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v95, v96, "adding symbols %s", v97, 0xCu);
    sub_10000461C(v98);
  }

  v102 = v134;
  v103 = v143;
  v104 = v133;
  v105 = v145;
  v106 = *&v145[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_stockMetadataManager + 32];
  sub_1000045D8(&v145[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_stockMetadataManager], *&v145[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_stockMetadataManager + 24]);
  (*(v103 + 104))(v104, enum case for CachePolicy.preferCache(_:), v102);
  StockMetadataManagerType.fetchStocks(for:cachePolicy:)();
  (*(v103 + 8))(v104, v102);
  v107 = swift_allocObject();
  *(v107 + 16) = v105;
  *(v107 + 24) = v94;
  v108 = v105;
  v109 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v130 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (*(v137 + 16) == *(v140 + 16) && (sub_100029780(v137, v140) & 1) == 0)
  {

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *&v151 = swift_slowAlloc();
      *v112 = 136315394;
      v113 = Array.description.getter();
      v115 = sub_1000105E4(v113, v114, &v151);

      *(v112 + 4) = v115;
      *(v112 + 12) = 2080;
      v116 = Array.description.getter();
      v118 = v117;

      v119 = sub_1000105E4(v116, v118, &v151);

      *(v112 + 14) = v119;
      _os_log_impl(&_mh_execute_header, v110, v111, "reordering symbols - watch:%s phone:%s", v112, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v120 = &v108[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager];
    v121 = *&v108[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager + 32];
    sub_1000045D8(&v108[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager], *&v108[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager + 24]);
    v122 = *(v120 + 4);
    sub_1000045D8(v120, *(v120 + 3));
    v123 = v142;
    dispatch thunk of WatchlistManagerType.defaultAllSymbolsWatchlist.getter();
    dispatch thunk of WatchlistManagerType.reorder(symbols:in:)();

    (*(v141 + 8))(v123, v30);
    v124 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v131 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v78 = v138;
  }

  else
  {
  }

  v125 = zalgo.getter();
  when<A>(on:_:)();

  v126 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  v127 = swift_allocObject();
  *(v127 + 16) = v11;
  *(v127 + 24) = v78;
  v128 = zalgo.getter();
  v129 = Promise.always(on:closure:)();

  return v129;
}

uint64_t sub_100027550(uint64_t a1, uint64_t a2)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000296E4(v3, qword_100051C20);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "will fetch stocks from My Symbols watchlist", v6, 2u);
  }

  v7 = *(a2 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager + 32);
  sub_1000045D8((a2 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager), *(a2 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager + 24));
  return dispatch thunk of WatchlistManagerType.fetchStocksFromDefaultWatchlist()();
}

uint64_t sub_100027664(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = *a1;
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000296E4(v5, qword_100051C20);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v6, v7, "did fetch stocks from My Symbols watchlist with %ld stocks", v8, 0xCu);
  }

  else
  {
  }

  if (sub_10002798C(v4, a3 & 1))
  {
    v9 = [objc_allocWithZone(NPSManager) init];
    type metadata accessor for AppGroup();
    static AppGroup.stocks.getter();
    AppGroup.identifier.getter();

    v10 = String._bridgeToObjectiveC()();

    sub_10002A954(&off_10004AAF8);
    isa = Set._bridgeToObjectiveC()().super.isa;

    v12 = String._bridgeToObjectiveC()();
    static AppGroup.stocks.getter();
    AppGroup.identifier.getter();

    v13 = String._bridgeToObjectiveC()();

    [v9 synchronizeUserDefaultsDomain:v10 keys:isa container:v12 appGroupContainer:v13];

    sub_1000283DC();
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "watchlist contains no changes for watch", v16, 2u);
    }
  }

  sub_10002B82C(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_10002798C(uint64_t a1, int a2)
{
  v76 = a2;
  v4 = type metadata accessor for Date();
  v80 = *(v4 - 8);
  v5 = *(v80 + 64);
  __chkstk_darwin(v4);
  v79 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Stock();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v86 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  v77 = v11;
  v78 = a1;
  if (v11)
  {
    v74 = v2;
    v75 = v4;
    *&v88 = &_swiftEmptyArrayStorage;
    sub_100029960(0, v11, 0);
    v4 = v88;
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    sub_10002B5D4(0, &qword_100050360, &type metadata for Any + 8, &type metadata accessor for _DictionaryStorage);
    v15 = *(v8 + 16);
    v14 = v8 + 16;
    v84 = v15;
    v85 = v16;
    v17 = *(v14 + 56);
    v81 = (v14 - 8);
    v82 = v17;
    v18 = v11;
    v83 = v14;
    while (1)
    {
      v19 = v7;
      v84(v86, v13, v7);
      v92[0] = 0x6C6F626D7973;
      v92[1] = 0xE600000000000000;
      v92[2] = Stock.symbol.getter();
      v92[3] = v20;
      v92[5] = &type metadata for String;
      v93[0] = 0x4E796E61706D6F63;
      v93[1] = 0xEB00000000656D61;
      v93[2] = Stock.name.getter();
      v93[3] = v21;
      v93[5] = &type metadata for String;
      v94[0] = 0x65676E6168637865;
      v94[1] = 0xE800000000000000;
      v22 = Stock.exchange.getter();
      v94[5] = &type metadata for String;
      v94[2] = v22;
      v94[3] = v23;
      v24 = static _DictionaryStorage.allocate(capacity:)();

      sub_10002B7C4(v92, &v90, sub_10002B4BC);
      v25 = v90;
      v26 = sub_100029810(v90, *(&v90 + 1));
      if (v27)
      {
        break;
      }

      v7 = v24 + 8;
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v26;
      *(v24[6] + 16 * v26) = v25;
      sub_10001DF74(v91, (v24[7] + 32 * v26));
      v28 = v24[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_40;
      }

      v24[2] = v30;
      sub_10002B7C4(v93, &v90, sub_10002B4BC);
      v31 = v90;
      v32 = sub_100029810(v90, *(&v90 + 1));
      if (v33)
      {
        break;
      }

      *(v7 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      *(v24[6] + 16 * v32) = v31;
      sub_10001DF74(v91, (v24[7] + 32 * v32));
      v34 = v24[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v29)
      {
        goto LABEL_40;
      }

      v24[2] = v35;
      sub_10002B7C4(v94, &v90, sub_10002B4BC);
      v36 = v90;
      v37 = sub_100029810(v90, *(&v90 + 1));
      if (v38)
      {
        break;
      }

      *(v7 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      *(v24[6] + 16 * v37) = v36;
      sub_10001DF74(v91, (v24[7] + 32 * v37));
      v39 = v24[2];
      v29 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v29)
      {
        goto LABEL_40;
      }

      v24[2] = v40;

      sub_10002B4BC();
      swift_arrayDestroy();
      v7 = v19;
      (*v81)(v86, v19);
      *&v88 = v4;
      v42 = *(v4 + 16);
      v41 = *(v4 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_100029960((v41 > 1), v42 + 1, 1);
        v4 = v88;
      }

      *(v4 + 16) = v42 + 1;
      *(v4 + 8 * v42 + 32) = v24;
      v13 += v82;
      if (!--v18)
      {
        v12 = v4;
        v2 = v74;
        v4 = v75;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
    goto LABEL_35;
  }

LABEL_13:
  v7 = *(v2 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_sharedUserDefaults);
  v43 = String._bridgeToObjectiveC()();
  v44 = [v7 objectForKey:v43];

  if (v44)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
  }

  v90 = v88;
  v91[0] = v89;
  if (*(&v89 + 1))
  {
    sub_10002B634(0, &qword_100050380, &type metadata accessor for Array);
    if (swift_dynamicCast())
    {
      v45 = v87;
      goto LABEL_21;
    }
  }

  else
  {
    sub_100015138(&v90);
  }

  v45 = &_swiftEmptyArrayStorage;
LABEL_21:
  v46 = sub_10002A7BC(v45);

  v47 = String._bridgeToObjectiveC()();
  v48 = [v7 objectForKey:v47];

  if (v48)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
  }

  v90 = v88;
  v91[0] = v89;
  if (*(&v89 + 1))
  {
    sub_10002B634(0, &qword_100050380, &type metadata accessor for Array);
    if (swift_dynamicCast())
    {
      v49 = v87;
      goto LABEL_29;
    }
  }

  else
  {
    sub_100015138(&v90);
  }

  v49 = &_swiftEmptyArrayStorage;
LABEL_29:
  v50 = sub_10002A7BC(v49);

  v51 = sub_10002A7BC(v12);
  v52 = sub_100029780(v51, v46);

  if (v52)
  {
    v53 = sub_100029780(v51, v50);

    if ((v53 & 1) != 0 && (v76 & 1) == 0)
    {

      return 0;
    }
  }

  else
  {
  }

  if (qword_10004EA90 != -1)
  {
    goto LABEL_41;
  }

LABEL_35:
  v55 = type metadata accessor for Logger();
  sub_1000296E4(v55, qword_100051C20);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134217984;
    *(v58 + 4) = v77;

    _os_log_impl(&_mh_execute_header, v56, v57, "saving %ld stocks to group user defaults", v58, 0xCu);
  }

  else
  {
  }

  v59 = v79;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v61 = v60;
  (*(v80 + 8))(v59, v4);
  v62 = String._bridgeToObjectiveC()();
  [v7 setDouble:v62 forKey:v61];

  sub_10002B5D4(0, &qword_100050378, &type metadata for Any + 8, &type metadata accessor for Dictionary);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v64 = String._bridgeToObjectiveC()();
  [v7 setObject:isa forKey:v64];

  v65 = String._bridgeToObjectiveC()();
  [v7 setDouble:v65 forKey:v61];

  v66 = Array._bridgeToObjectiveC()().super.isa;
  v67 = String._bridgeToObjectiveC()();
  [v7 setObject:v66 forKey:v67];

  v68 = objc_opt_self();
  v69 = [v68 standardUserDefaults];
  v70 = String._bridgeToObjectiveC()();
  [v69 setDouble:v70 forKey:v61];

  v71 = [v68 standardUserDefaults];
  v72 = Array._bridgeToObjectiveC()().super.isa;

  v73 = String._bridgeToObjectiveC()();
  [v71 setObject:v72 forKey:v73];

  return 1;
}

void sub_1000283DC()
{
  v16 = [objc_opt_self() defaultSession];
  if ([v16 isPaired] && objc_msgSend(v16, "isWatchAppInstalled"))
  {
    v1 = v0;
    if ([v16 activationState] == 2)
    {
      if (qword_10004EA90 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_1000296E4(v2, qword_100051C20);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "issuing watch notification", v5, 2u);
      }

      sub_10002B438(0, &qword_100050350, sub_10002B4BC, &type metadata accessor for _ContiguousArrayStorage);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10003EDF0;
      *(inited + 32) = 0x6D617473656D6974;
      *(inited + 40) = 0xE900000000000070;
      *(inited + 72) = type metadata accessor for Date();
      sub_10000EE0C((inited + 48));
      Date.init()();
      sub_10002A67C(inited);
      swift_setDeallocating();
      sub_10002B520(inited + 32);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v1 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_pendingWatchNotification) = 0;
    }

    else
    {
      if (qword_10004EA90 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000296E4(v12, qword_100051C20);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "deferring watch notification because session is not active", v15, 2u);
      }

      *(v1 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_pendingWatchNotification) = 1;
    }
  }

  else
  {
    if (qword_10004EA90 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000296E4(v8, qword_100051C20);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "skipping watch notification because no watch is paired or the watch app isn't installed", v11, 2u);
    }
  }
}

void sub_1000287D8()
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000296E4(v0, qword_100051C20);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v6 = sub_1000105E4(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "failed to fetch latest watchlist with error: %s", v2, 0xCu);
    sub_10000461C(v3);
  }

  else
  {
  }
}

uint64_t sub_100028970(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Watchlist();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Stock();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v46 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v48 = &v37 - v14;
  v15 = *a1;
  v38 = (a2 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager);
  sub_100006580(a2 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_watchlistManager, v49);
  v39 = v51;
  v40 = v50;
  v37 = sub_1000045D8(v49, v50);
  v16 = *(a3 + 16);
  if (v16)
  {
    v44 = v10 + 2;
    v47 = v10 + 4;
    v17 = (a3 + 40);
    v52 = &_swiftEmptyArrayStorage;
    v45 = v9;
    do
    {
      if (*(v15 + 16))
      {
        v18 = *(v17 - 1);
        v19 = *v17;

        v20 = sub_100029810(v18, v19);
        if (v21)
        {
          v22 = v10[9];
          v23 = v10[2];
          v24 = v10;
          v25 = v46;
          v23(v46, *(v15 + 56) + v22 * v20, v9);

          v26 = v24;
          v27 = v24[4];
          v27(v48, v25, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_10001DD8C(0, v52[2] + 1, 1, v52);
          }

          v29 = v52[2];
          v28 = v52[3];
          v10 = v26;
          if (v29 >= v28 >> 1)
          {
            v52 = sub_10001DD8C(v28 > 1, v29 + 1, 1, v52);
          }

          v30 = v52;
          v52[2] = v29 + 1;
          v31 = v30 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + v29 * v22;
          v9 = v45;
          v27(v31, v48, v45);
        }

        else
        {
        }
      }

      v17 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {
    v52 = &_swiftEmptyArrayStorage;
  }

  v32 = v38[4];
  sub_1000045D8(v38, v38[3]);
  v33 = v41;
  dispatch thunk of WatchlistManagerType.defaultAllSymbolsWatchlist.getter();
  WatchlistManagerType.addStocks(_:watchlist:)();

  (*(v42 + 8))(v33, v43);
  v34 = zalgo.getter();
  v35 = Promise.then<A>(on:closure:)();

  sub_10000461C(v49);
  return v35;
}

uint64_t sub_100028D28()
{
  sub_10002B82C(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return Promise.init(value:)();
}

void sub_100028D90(double a1)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000296E4(v2, qword_100051C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "finished watch sync", v5, 2u);
  }

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  [v7 setDouble:v8 forKey:a1];

  v9 = [v6 standardUserDefaults];
  sub_10002B5D4(0, &qword_100050378, &type metadata for Any + 8, &type metadata accessor for Dictionary);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11 = String._bridgeToObjectiveC()();
  [v9 setObject:isa forKey:v11];
}

uint64_t sub_100028FF8()
{
  v1 = v0;
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000296E4(v2, qword_100051C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "triggering sync in response to watchlist observer callback", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_syncDeduper);
  __chkstk_darwin(v7);
  PromiseDeduper.promise(key:createBlock:)();
}

uint64_t sub_100029148(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return WatchlistManagerObserver.watchlistManagerWatchlistsDidChange(_:)(a1, ObjectType);
}

void sub_1000291F0(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_pendingWatchNotification) == 1)
  {
    if (qword_10004EA90 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000296E4(v1, qword_100051C20);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "notifying watch in response to session activation because we have a pending notification", v4, 2u);
    }

    sub_1000283DC();
  }
}

uint64_t sub_1000293F8()
{
  sub_10000557C(0, &qword_100050340, NSString_ptr);
  result = NSString.init(stringLiteral:)();
  qword_100051C10 = result;
  return result;
}

uint64_t sub_100029454()
{
  sub_10000557C(0, &qword_100050340, NSString_ptr);
  result = NSString.init(stringLiteral:)();
  qword_100051C18 = result;
  return result;
}

void sub_1000294B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    qword_1000501B0 = OS_os_log.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100029578()
{
  v0 = type metadata accessor for Logger();
  sub_10002971C(v0, qword_100051C20);
  sub_1000296E4(v0, qword_100051C20);
  if (qword_10004EA88 != -1)
  {
    swift_once();
  }

  v1 = qword_1000501B0;
  return Logger.init(_:)();
}

uint64_t sub_100029604(uint64_t a1, uint64_t a2)
{
  result = sub_100006868(&qword_100050308, a2, type metadata accessor for GizmoSyncManager);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002965C()
{
  result = qword_100050328;
  if (!qword_100050328)
  {
    sub_10002B438(255, &qword_100050320, &type metadata accessor for PromiseDeduperFlags, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050328);
  }

  return result;
}

uint64_t sub_1000296E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10002971C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100029780(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_100029810(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100029888(a1, a2, v6);
}

unint64_t sub_100029888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_100029940(char *a1, int64_t a2, char a3)
{
  result = sub_1000299A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100029960(void *a1, int64_t a2, char a3)
{
  result = sub_100029AC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100029980(void *a1, int64_t a2, char a3)
{
  result = sub_100029C24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000299A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002B82C(0, &qword_1000503C0, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100029AC4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10002B634(0, &qword_100050388, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002B5D4(0, &qword_100050378, &type metadata for Any + 8, &type metadata accessor for Dictionary);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100029C24(void *result, int64_t a2, char a3, void *a4)
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
    sub_10002B438(0, &qword_100050390, sub_10002B758, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_10002B758();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100029D84(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10002A128(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100029ED4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10002B57C();
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10002A128(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100029ED4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10002A2A8();
      goto LABEL_16;
    }

    sub_10002A3F8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10002A2A8()
{
  v1 = v0;
  sub_10002B57C();
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10002A3F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10002B57C();
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10002A624(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_10002A67C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002B5D4(0, &qword_100050360, &type metadata for Any + 8, &type metadata accessor for _DictionaryStorage);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002B7C4(v4, &v13, sub_10002B4BC);
      v5 = v13;
      v6 = v14;
      result = sub_100029810(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001DF74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_10002A7BC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = &_swiftEmptyArrayStorage;
    v4 = result + 32;
    while (1)
    {
      for (i = v2; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          return result;
        }

        v2 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }

        v6 = *(v4 + 8 * i);
        if (*(v6 + 16))
        {
          break;
        }

LABEL_5:
        if (v2 == v1)
        {
          return v3;
        }
      }

      v7 = *(v4 + 8 * i);

      v8 = sub_100029810(0x6C6F626D7973, 0xE600000000000000);
      if ((v9 & 1) == 0)
      {
        break;
      }

      sub_100010AE0(*(v6 + 56) + 32 * v8, v15);

      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_5;
      }

      v10 = v17;
      if (!v17)
      {
        goto LABEL_5;
      }

      v11 = v16;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10001DB64(0, *(v3 + 2) + 1, 1, v3);
        v3 = result;
      }

      v13 = *(v3 + 2);
      v12 = *(v3 + 3);
      if (v13 >= v12 >> 1)
      {
        result = sub_10001DB64((v12 > 1), v13 + 1, 1, v3);
        v3 = result;
      }

      *(v3 + 2) = v13 + 1;
      v14 = &v3[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      if (v2 == v1)
      {
        return v3;
      }
    }

    goto LABEL_5;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10002A954(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100029D84(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_10002A9EC(void *a1)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000296E4(v2, qword_100051C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "session did deactivate, so reactivating", v5, 2u);
  }

  return [a1 activateSession];
}

void sub_10002AAE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    swift_errorRetain();
    if (qword_10004EA90 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000296E4(v5, qword_100051C20);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_1000105E4(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "session activation did fail with error: %s", v8, 0xCu);
      sub_10000461C(v9);

      if (a1 != 2)
      {
        return;
      }
    }

    else
    {

      if (a1 != 2)
      {
        return;
      }
    }

    goto LABEL_12;
  }

  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000296E4(v13, qword_100051C20);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v14, v15, "session activation did complete with state: %ld", v16, 0xCu);
  }

  if (a1 == 2)
  {
LABEL_12:
    *(swift_allocObject() + 16) = v3;
    v17 = v3;
    asyncMain(block:)();
  }
}

uint64_t sub_10002ADA8(uint64_t a1)
{
  v2 = v1;
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000296E4(v4, qword_100051C20);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v20[0] = v8;
    *v7 = 136315138;
    v9 = Dictionary.description.getter();
    v11 = sub_1000105E4(v9, v10, v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "session did receive message: %s", v7, 0xCu);
    sub_10000461C(v8);
  }

  if (*(a1 + 16) && (v12 = sub_100029810(0xD000000000000021, 0x800000010003D950), (v13 & 1) != 0))
  {
    sub_100010AE0(*(a1 + 56) + 32 * v12, v20);
    sub_100015138(v20);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "forcing sync in response to message", v16, 2u);
    }

    v17 = *(v2 + OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_syncDeduper);
    *&v20[0] = 1668184435;
    *(&v20[0] + 1) = 0xE400000000000000;
    __chkstk_darwin(v18);
    PromiseDeduper.promise(key:createBlock:)();
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    return sub_100015138(v20);
  }
}

void sub_10002B150(void *a1)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000296E4(v2, qword_100051C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "did receive watch-wake notification", v5, 2u);
  }

  if (a1)
  {
    v6 = a1;
    sub_1000283DC();
  }
}

void sub_10002B270(char *a1)
{
  if (qword_10004EA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000296E4(v2, qword_100051C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "did receive preferences-changed notification", v5, 2u);
  }

  if (a1)
  {
    v6 = *&a1[OBJC_IVAR____TtC9StocksApp16GizmoSyncManager_syncDeduper];
    v7 = a1;
    __chkstk_darwin(v7);
    PromiseDeduper.promise(key:createBlock:)();
  }
}

void sub_10002B438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10002B4BC()
{
  if (!qword_100050358)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100050358);
    }
  }
}

uint64_t sub_10002B520(uint64_t a1)
{
  sub_10002B4BC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10002B57C()
{
  if (!qword_100050368)
  {
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_100050368);
    }
  }
}

void sub_10002B5D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void *, uint64_t, void *))
{
  if (!*a2)
  {
    v5 = a4(0, &type metadata for String, a3, &protocol witness table for String);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10002B634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_10002B5D4(255, &qword_100050378, &type metadata for Any + 8, &type metadata accessor for Dictionary);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10002B700(void *a1)
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

unint64_t sub_10002B758()
{
  result = qword_100050398;
  if (!qword_100050398)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100050398);
  }

  return result;
}

uint64_t sub_10002B7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10002B82C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10002B8B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100036538();
  v1046 = v4;
  v1045 = *(v4 - 8);
  v5 = *(v1045 + 64);
  __chkstk_darwin(v4);
  v7 = &v1005 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000365CC();
  v1040 = v8;
  v1039 = *(v8 - 8);
  v9 = *(v1039 + 64);
  __chkstk_darwin(v8);
  v1041 = &v1005 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036AFC(0, &qword_100050490, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Item.RangeControlType);
  v1044 = v11;
  v1043 = *(v11 - 8);
  v12 = *(v1043 + 64);
  __chkstk_darwin(v11);
  v1057 = (&v1005 - v13);
  sub_100036660();
  v1037 = v14;
  v1036 = *(v14 - 8);
  v15 = *(v1036 + 64);
  __chkstk_darwin(v14);
  v1038 = &v1005 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1055 = type metadata accessor for SettingsBundle();
  v1035 = *(v1055 - 8);
  v17 = *(v1035 + 64);
  __chkstk_darwin(v1055);
  v1034 = &v1005 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036AFC(0, &qword_1000504A8, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for Item.RangeControlType);
  v1099 = v19;
  v1097 = *(v19 - 1);
  v20 = *(v1097 + 8);
  __chkstk_darwin(v19);
  v1033 = (&v1005 - v21);
  sub_1000366F4();
  v1054 = v22;
  v1095 = *(v22 - 8);
  v23 = *(v1095 + 8);
  __chkstk_darwin(v22);
  v1053 = &v1005 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003710C(0, &qword_1000504C0, &type metadata accessor for Item.ResetBehavior);
  v1032 = v25;
  v1030 = *(v25 - 8);
  v26 = *(v1030 + 64);
  __chkstk_darwin(v25);
  v1031 = &v1005 - v27;
  sub_100036788();
  v1029 = v28;
  v1028 = *(v28 - 1);
  v29 = *(v1028 + 64);
  __chkstk_darwin(v28);
  v1059 = &v1005 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003681C();
  v1026 = v31;
  v1025 = *(v31 - 8);
  v32 = *(v1025 + 64);
  __chkstk_darwin(v31);
  v1027 = &v1005 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000368B0();
  v1023 = v34;
  v1022 = *(v34 - 8);
  v35 = *(v1022 + 64);
  __chkstk_darwin(v34);
  v1024 = &v1005 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1123 = type metadata accessor for DebugItem();
  v1060 = *(v1123 - 1);
  v37 = *(v1060 + 64);
  v38 = __chkstk_darwin(v1123);
  v1021 = &v1005 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v1020 = &v1005 - v41;
  __chkstk_darwin(v40);
  v1005 = &v1005 - v42;
  v1096 = type metadata accessor for PrivacyValidation();
  v1019 = *(v1096 - 8);
  v43 = v1019[8];
  __chkstk_darwin(v1096);
  v1018 = &v1005 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1062 = type metadata accessor for DebugModel();
  v1090 = *(v1062 - 8);
  v45 = *(v1090 + 64);
  __chkstk_darwin(v1062);
  v1061 = &v1005 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036944();
  v1082 = v47;
  v1081 = *(v47 - 8);
  v48 = *(v1081 + 64);
  __chkstk_darwin(v47);
  v1063 = &v1005 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036AFC(0, &qword_100050508, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for Item.ResetBehavior);
  v1108 = v50;
  v1106 = *(v50 - 8);
  v51 = *(v1106 + 64);
  __chkstk_darwin(v50);
  v1089 = &v1005 - v52;
  sub_100036AFC(0, &qword_100050510, &type metadata for String, &protocol witness table for String, &type metadata accessor for Item.ResetBehavior);
  v1080 = v53;
  v1087 = *(v53 - 8);
  v54 = *(v1087 + 64);
  __chkstk_darwin(v53);
  v1079 = &v1005 - v55;
  sub_100036AFC(0, &qword_100050518, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Item.ResetBehavior);
  v1084 = v56;
  v1083 = *(v56 - 8);
  v57 = *(v1083 + 64);
  __chkstk_darwin(v56);
  v1088 = &v1005 - v58;
  sub_100036AFC(0, &qword_100050520, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for Item.ResetBehavior);
  v1114 = v59;
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  __chkstk_darwin(v59);
  v63 = &v1005 - v62;
  v1118 = type metadata accessor for ChangeBehavior();
  v64 = *(v1118 - 8);
  v65 = *(v64 + 64);
  __chkstk_darwin(v1118);
  v1101 = &v1005 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for AppConfiguration();
  v1042 = *(v67 - 8);
  v68 = *(v1042 + 64);
  __chkstk_darwin(v67);
  v1064 = &v1005 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_1000036DC(0, &qword_100050528);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v1056 = v1129[0];
  if (!v1129[0])
  {
    __break(1u);
    goto LABEL_25;
  }

  v1017 = v1129[1];
  v72 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_1000036DC(0, &qword_10004FB60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v1127)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v1016 = v67;
  v1119 = v63;
  v73 = v60;
  sub_1000061A0(&v1126, v1129);
  sub_1000045D8(v1129, v1129[3]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v74 = a1[4];
  sub_1000045D8(a1, a1[3]);
  type metadata accessor for AppSessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v1052 = result;
  if (!result)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v1014 = v7;
  v1015 = a2;
  sub_100005650(0, &qword_100050530, &type metadata accessor for _ContiguousArrayStorage);
  v1103 = v75;
  v76 = *(type metadata accessor for Group() - 8);
  v1094 = *(v76 + 72);
  v1100 = *(v76 + 80);
  v77 = (v1100 + 32) & ~v1100;
  v1098 = v77;
  v1086 = 2 * v1094;
  v1078 = 3 * v1094;
  v1049 = 6 * v1094;
  v78 = swift_allocObject();
  v1050 = xmmword_10003FA00;
  *(v78 + 16) = xmmword_10003FA00;
  v1013 = v78;
  v1104 = (v78 + v77);
  sub_1000369D8();
  v1116 = v79;
  v80 = swift_allocObject();
  v1113 = xmmword_10003EDF0;
  *(v80 + 16) = xmmword_10003EDF0;
  v1105 = &type metadata accessor for Item;
  sub_100036AFC(0, &qword_100050538, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for Item);
  v1121 = v81;
  static Settings.AccessChecks.simulateAccessToEverything.getter();
  sub_100036A44();
  v1107 = v82;
  v83 = swift_allocObject();
  v1122 = xmmword_10003FA10;
  *(v83 + 16) = xmmword_10003FA10;
  v1109 = type metadata accessor for SettingAction();
  *(v83 + 32) = static SettingActions.restart.getter();
  v1120 = enum case for ChangeBehavior.default(_:);
  v1115 = *(v64 + 104);
  v1117 = v64 + 104;
  v84 = v1101;
  v85 = v1118;
  v1115(v1101);
  v86 = enum case for Item.ResetBehavior.reset<A>(_:);
  v87 = *(v73 + 104);
  v1112 = v73 + 104;
  v1111 = v87;
  v88 = v1119;
  v1124 = enum case for Item.ResetBehavior.reset<A>(_:);
  v87(v1119, enum case for Item.ResetBehavior.reset<A>(_:), v1114);
  v89 = v84;
  v90 = v1121;
  v91 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v80 + 56) = v90;
  v1110 = sub_100036A98(&qword_100050548, &qword_100050538, &type metadata for Bool, &protocol witness table for Bool);
  *(v80 + 64) = v1110;
  *(v80 + 32) = v91;
  Group.init(title:footer:_:)();
  v92 = swift_allocObject();
  *(v92 + 16) = v1113;
  v1102 = static Settings.PurchaseFlow.simulatePurchaseFlow.getter();
  v1093 = "Simulate Access to Everything";
  v93 = swift_allocObject();
  *(v93 + 16) = v1122;
  *(v93 + 32) = static SettingActions.restart.getter();
  v94 = v84;
  v95 = v1115;
  (v1115)(v94, v1120, v85);
  v96 = v88;
  v97 = v1114;
  v98 = v1111;
  v1111(v96, v86, v1114);
  v99 = v1121;
  v100 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v101 = v1110;
  *(v92 + 56) = v99;
  *(v92 + 64) = v101;
  *(v92 + 32) = v100;
  Group.init(title:footer:_:)();
  v1102 = "Simulate Purchase Flow";
  v102 = swift_allocObject();
  v1011 = xmmword_10003FA20;
  *(v102 + 16) = xmmword_10003FA20;
  v1093 = static Settings.Entitlements.simulateEntitlementCacheExpired.getter();
  *&v1092 = "entitlements call is set";
  v103 = v1120;
  v95(v89, v1120, v85);
  v104 = v1124;
  v98(v1119, v1124, v97);
  v105 = v1121;
  v106 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v102 + 56) = v105;
  *(v102 + 64) = v101;
  *(v102 + 32) = v106;
  sub_100036AFC(0, &qword_100050550, &type metadata for Int, &protocol witness table for Int, v1105);
  v1091 = v107;
  v1093 = static Settings.Entitlements.cacheRecoveryAttemptDuration.getter();
  v108 = v103;
  v109 = v1118;
  v110 = v1115;
  (v1115)(v89, v103, v1118);
  v111 = v1083 + 104;
  v1074 = *(v1083 + 104);
  v1074(v1088, v104, v1084);
  v1083 = v111;
  v112 = v1091;
  v113 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v102 + 96) = v112;
  v1070 = sub_100036A98(&qword_100050558, &qword_100050550, &type metadata for Int, &protocol witness table for Int);
  *(v102 + 104) = v1070;
  *(v102 + 72) = v113;
  static Settings.BundleSubscriptions.entitlementsGracePeriod.getter();
  v110(v89, v108, v109);
  v114 = v104;
  v115 = v1084;
  v116 = v1074;
  v1074(v1088, v114, v1084);
  v117 = v116;
  v118 = v89;
  v119 = v1091;
  v120 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v121 = v1070;
  *(v102 + 136) = v119;
  *(v102 + 144) = v121;
  *(v102 + 112) = v120;
  v1093 = static Settings.Entitlements.entitlementsResultOverride.getter();
  v122 = swift_allocObject();
  *(v122 + 16) = v1122;
  *(v122 + 32) = static SettingActions.resetOverrideEntitlement.getter();
  (v1115)(v118, v1120, v109);
  v123 = v1124;
  v117(v1088, v1124, v115);
  v124 = v1091;
  v125 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v102 + 176) = v124;
  *(v102 + 184) = v121;
  *(v102 + 152) = v125;
  sub_100036AFC(0, &qword_100050560, &type metadata for String, &protocol witness table for String, v1105);
  v127 = v126;
  static Settings.Entitlements.entitlementsOverride.getter();
  v1069 = *(v1087 + 104);
  v1087 += 104;
  v1069(v1079, v123, v1080);
  v1085 = v127;
  v128 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v102 + 216) = v127;
  v1073 = sub_100036A98(&qword_100050568, &qword_100050560, &type metadata for String, &protocol witness table for String);
  *(v102 + 224) = v1073;
  *(v102 + 192) = v128;
  static Settings.Entitlements.trialPeriodOverride.getter();
  v129 = v1120;
  v130 = v1118;
  v131 = v1115;
  (v1115)(v118, v1120, v1118);
  v132 = v1119;
  v1111(v1119, v1124, v1114);
  v133 = v1121;
  v134 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v135 = v1110;
  *(v102 + 256) = v133;
  *(v102 + 264) = v135;
  *(v102 + 232) = v134;
  v1093 = static Settings.Entitlements.simulateFamilyMember.getter();
  v131(v118, v129, v130);
  v136 = v1124;
  v137 = v1114;
  v138 = v1111;
  v1111(v132, v1124, v1114);
  v139 = v1121;
  v140 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v102 + 296) = v139;
  *(v102 + 304) = v135;
  *(v102 + 272) = v140;
  v1093 = static Settings.Entitlements.simulateAmplifyUser.getter();
  v141 = v1115;
  (v1115)(v118, v129, v1118);
  v138(v1119, v136, v137);
  v142 = v1121;
  v143 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v144 = v1110;
  *(v102 + 336) = v142;
  *(v102 + 344) = v144;
  *(v102 + 312) = v143;
  static Settings.Entitlements.simulateServicesBundle.getter();
  v141(v118, v1120, v1118);
  v138(v1119, v1124, v137);
  v145 = v1121;
  v146 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v102 + 376) = v145;
  *(v102 + 384) = v144;
  *(v102 + 352) = v146;
  Group.init(title:footer:_:)();
  v1102 = "Simulate Services Bundle";
  v147 = swift_allocObject();
  v1071 = xmmword_10003FA30;
  *(v147 + 16) = xmmword_10003FA30;
  static Presets.BundleSubscriptions.none.getter();
  v148 = swift_allocObject();
  *(v148 + 16) = v1122;
  *(v148 + 32) = static SettingActions.restart.getter();
  v149 = type metadata accessor for PresetItem();
  v150 = *(v149 + 48);
  v151 = *(v149 + 52);
  swift_allocObject();
  v152 = PresetItem.init(_:label:actions:)();
  *(v147 + 56) = v149;
  *(v147 + 64) = &protocol witness table for PresetItem;
  *(v147 + 32) = v152;
  static Presets.BundleSubscriptions.iTMS5.getter();
  v153 = swift_allocObject();
  *(v153 + 16) = v1122;
  *(v153 + 32) = static SettingActions.restart.getter();
  v154 = *(v149 + 48);
  v155 = *(v149 + 52);
  swift_allocObject();
  v156 = PresetItem.init(_:label:actions:)();
  *(v147 + 96) = v149;
  *(v147 + 104) = &protocol witness table for PresetItem;
  *(v147 + 72) = v156;
  static Presets.BundleSubscriptions.iTMS6.getter();
  v157 = swift_allocObject();
  *(v157 + 16) = v1122;
  *(v157 + 32) = static SettingActions.restart.getter();
  v158 = *(v149 + 48);
  v159 = *(v149 + 52);
  swift_allocObject();
  v160 = PresetItem.init(_:label:actions:)();
  *(v147 + 136) = v149;
  *(v147 + 144) = &protocol witness table for PresetItem;
  *(v147 + 112) = v160;
  static Presets.BundleSubscriptions.iTMS7.getter();
  v161 = swift_allocObject();
  *(v161 + 16) = v1122;
  *(v161 + 32) = static SettingActions.restart.getter();
  v162 = *(v149 + 48);
  v163 = *(v149 + 52);
  swift_allocObject();
  v164 = PresetItem.init(_:label:actions:)();
  *(v147 + 176) = v149;
  *(v147 + 184) = &protocol witness table for PresetItem;
  *(v147 + 152) = v164;
  static Presets.BundleSubscriptions.iTMS11.getter();
  v165 = swift_allocObject();
  *(v165 + 16) = v1122;
  *(v165 + 32) = static SettingActions.restart.getter();
  v166 = *(v149 + 48);
  v167 = *(v149 + 52);
  swift_allocObject();
  v168 = PresetItem.init(_:label:actions:)();
  *(v147 + 216) = v149;
  *(v147 + 224) = &protocol witness table for PresetItem;
  *(v147 + 192) = v168;
  Group.init(title:footer:_:)();
  v169 = v1094;
  v170 = 4 * v1094;
  v171 = swift_allocObject();
  *(v171 + 16) = v1113;
  static Settings.WebAccess.localServerIP.getter();
  v172 = v1079;
  v173 = v1080;
  v174 = v1069;
  v1069(v1079, v1124, v1080);
  v175 = v1085;
  v176 = Item<>.init(_:label:resetBehavior:actions:)();
  v177 = v1073;
  *(v171 + 56) = v175;
  *(v171 + 64) = v177;
  *(v171 + 32) = v176;
  v1065 = v170;
  Group.init(title:footer:_:)();
  v178 = swift_allocObject();
  *(v178 + 16) = v1113;
  *(v178 + 56) = v1055;
  *(v178 + 64) = &protocol witness table for SettingsBundle;
  sub_10000EE0C((v178 + 32));
  static SettingsBundle.appLaunchUpsell.getter();
  Group.init(title:footer:_:)();
  v1047 = 5 * v169;
  v179 = v1098;
  v1010 = v1098 + 5 * v169;
  v1051 = swift_allocObject();
  *(v1051 + 16) = v1071;
  v180 = swift_allocObject();
  v1066 = xmmword_10003EDE0;
  v1058 = v180;
  *(v180 + 16) = xmmword_10003EDE0;
  v1048 = 8 * v169;
  v1012 = 7 * v169;
  v181 = swift_allocObject();
  *(v181 + 16) = xmmword_10003FA40;
  v1009 = v181;
  v1075 = (v181 + v179);
  v1104 = "Bundle IAP presets";
  v182 = swift_allocObject();
  *(v182 + 16) = v1071;
  static Settings.Analytics2.Debugging.sessionName.getter();
  v183 = v1124;
  v174(v172, v1124, v173);
  v184 = v1085;
  v185 = Item<>.init(_:label:resetBehavior:actions:)();
  v186 = v1073;
  *(v182 + 56) = v184;
  *(v182 + 64) = v186;
  *(v182 + 32) = v185;
  static Settings.Analytics2.Debugging.batchDebugging.getter();
  v187 = v1101;
  v188 = v1120;
  v189 = v1118;
  v190 = v1115;
  (v1115)(v1101, v1120, v1118);
  v1111(v1119, v183, v1114);
  v191 = v1121;
  v192 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v193 = v1110;
  *(v182 + 96) = v191;
  *(v182 + 104) = v193;
  *(v182 + 72) = v192;
  static Settings.Analytics2.Debugging.batchSize.getter();
  v194 = v187;
  v195 = v187;
  v196 = v188;
  v190(v194, v188, v189);
  v197 = v1088;
  v198 = v1124;
  v1074(v1088, v1124, v1084);
  v199 = v1091;
  v200 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v201 = v1070;
  *(v182 + 136) = v199;
  *(v182 + 144) = v201;
  *(v182 + 112) = v200;
  v1102 = static Settings.Analytics2.Debugging.maxUploadRetryCount.getter();
  v1093 = "se settings to take effect";
  v202 = swift_allocObject();
  *(v202 + 16) = v1122;
  *(v202 + 32) = static SettingActions.restart.getter();
  v203 = v195;
  v204 = v195;
  v205 = v1115;
  (v1115)(v204, v196, v189);
  v1074(v197, v198, v1084);
  v206 = v203;
  v207 = v1091;
  v208 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v182 + 176) = v207;
  *(v182 + 184) = v201;
  *(v182 + 152) = v208;
  static Settings.Analytics2.Debugging.disableAnalytics.getter();
  v209 = v1118;
  v205(v206, v196, v1118);
  v1111(v1119, v198, v1114);
  v210 = v1121;
  v211 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v212 = v1110;
  *(v182 + 216) = v210;
  *(v182 + 224) = v212;
  *(v182 + 192) = v211;
  Group.init(title:footer:_:)();
  v213 = swift_allocObject();
  *(v213 + 16) = v1113;
  sub_100036AFC(0, &qword_100050570, &type metadata for Double, &protocol witness table for Double, v1105);
  v215 = v214;
  static Settings.Identification.adIdentifierRotation.getter();
  v205(v206, v1120, v209);
  v1104 = *(v1106 + 104);
  v1106 += 104;
  (v1104)(v1089, v198, v1108);
  v1105 = v215;
  v216 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v213 + 56) = v215;
  v1102 = sub_100036A98(&qword_100050578, &qword_100050570, &type metadata for Double, &protocol witness table for Double);
  *(v213 + 64) = v1102;
  *(v213 + 32) = v216;
  Group.init(title:footer:_:)();
  v217 = swift_allocObject();
  *(v217 + 16) = v1113;
  sub_100036B50();
  v219 = v218;
  static Settings.Analytics2.Instrumentation.ads.getter();
  v220 = *(v1081 + 104);
  v1081 += 104;
  v1067 = v220;
  v220(v1063, v198, v1082);
  v1068 = sub_100037434(&qword_100050588, &type metadata accessor for FeatureState);
  v221 = Item<>.init(_:label:resetBehavior:actions:)();
  v1093 = v219;
  *(v217 + 56) = v219;
  v1077 = sub_100037434(&qword_100050590, sub_100036B50);
  *(v217 + 64) = v1077;
  *(v217 + 32) = v221;
  Group.init(title:footer:_:)();
  v222 = swift_allocObject();
  *(v222 + 16) = v1113;
  static Settings.Blueprint.Impressions.scrollDelta.getter();
  v223 = swift_allocObject();
  *(v223 + 16) = v1122;
  *(v223 + 32) = static SettingActions.restart.getter();
  v224 = v1120;
  (v1115)(v206, v1120, v1118);
  (v1104)(v1089, v1124, v1108);
  v225 = v1105;
  v226 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v227 = v1102;
  *(v222 + 56) = v225;
  *(v222 + 64) = v227;
  *(v222 + 32) = v226;
  Group.init(title:footer:_:)();
  *&v1092 = "Blueprint Scroll Delta";
  v1008 = static Settings.Analytics2.Debugging.jitterOverrides.getter();
  v228 = swift_allocObject();
  v1072 = xmmword_10003EE10;
  *(v228 + 16) = xmmword_10003EE10;
  v1076 = type metadata accessor for Settings.Analytics2.Debugging.Jitter();
  v1007 = static Settings.Analytics2.Debugging.Jitter.enablement.getter();
  v229 = swift_allocObject();
  *(v229 + 16) = v1122;
  *(v229 + 32) = static SettingActions.restart.getter();
  v230 = v224;
  v231 = v1115;
  (v1115)(v206, v230, v1118);
  v232 = v1124;
  v1111(v1119, v1124, v1114);
  v233 = v1121;
  v234 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v235 = v1110;
  *(v228 + 56) = v233;
  *(v228 + 64) = v235;
  *(v228 + 32) = v234;
  v1007 = static Settings.Analytics2.Debugging.Jitter.lowerBound.getter();
  v236 = swift_allocObject();
  *(v236 + 16) = v1122;
  *(v236 + 32) = static SettingActions.restart.getter();
  v231(v206, v1120, v1118);
  v237 = v1089;
  v238 = v1108;
  v239 = v1104;
  (v1104)(v1089, v232, v1108);
  v240 = v1105;
  v241 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v242 = v1102;
  *(v228 + 96) = v240;
  *(v228 + 104) = v242;
  *(v228 + 72) = v241;
  v1076 = static Settings.Analytics2.Debugging.Jitter.upperBound.getter();
  v243 = swift_allocObject();
  *(v243 + 16) = v1122;
  *(v243 + 32) = static SettingActions.restart.getter();
  (v1115)(v206, v1120, v1118);
  (v239)(v237, v1124, v238);
  v244 = v1105;
  v245 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v228 + 136) = v244;
  *(v228 + 144) = v242;
  *(v228 + 112) = v245;
  v1076 = 0xD000000000000010;
  Group.init(title:footer:group:_:)();
  v246 = swift_allocObject();
  v1092 = xmmword_10003EE00;
  *(v246 + 16) = xmmword_10003EE00;
  v1006 = "Upper Bound (sec)";
  swift_getObjectType();
  v247 = v1018;
  dispatch thunk of PrivacyValidationProviderType.privacyValidation.getter();
  LOBYTE(v244) = PrivacyValidation.isEnabled.getter();
  v248 = v1019[1];
  v249 = v1096;
  v248(v247, v1096);
  v250 = v244 & 1;
  v251 = v1061;
  *v1061 = v250;
  v252 = *(v1090 + 104);
  LODWORD(v1008) = enum case for DebugModel.BOOL(_:);
  v1090 += 104;
  v1007 = v252;
  v252(v251);
  *(v246 + 56) = v1123;
  v253 = sub_100037434(&qword_100050598, &type metadata accessor for DebugItem);
  *(v246 + 64) = v253;
  v1019 = v246;
  sub_10000EE0C((v246 + 32));
  DebugItem.init(title:model:)();
  v254 = v1098;
  v255 = swift_allocObject();
  *(v255 + 16) = v1066;
  v1006 = v255;
  v256 = v255 + v254;
  dispatch thunk of PrivacyValidationProviderType.privacyValidation.getter();
  v257 = PrivacyValidation.denylistDescriptors.getter();
  v248(v247, v249);
  KeyPath = swift_getKeyPath();

  sub_100036BEC(v257, sub_100036BE4, KeyPath);

  v1096 = v256;
  Group.init(title:footer:_:)();
  v259 = AppConfiguration.analyticsDenylistDescriptorsPublic.getter();
  v260 = *(v259 + 16);
  if (v260)
  {
    v1125 = &_swiftEmptyArrayStorage;
    sub_100029980(0, v260, 0);
    v261 = v1125;
    v262 = (v1060 + 16);
    v263 = (v1060 + 8);
    v1018 = v259;
    v264 = (v259 + 40);
    v265 = v1005;
    do
    {
      v266 = *(v264 - 1);
      v267 = *v264;
      String.denylistDescriptorValueDebugItem.getter();
      v1125 = v261;
      v269 = v261[2];
      v268 = v261[3];
      if (v269 >= v268 >> 1)
      {
        sub_100029980((v268 > 1), v269 + 1, 1);
      }

      v270 = v1123;
      v1127 = v1123;
      v1128 = v253;
      v271 = sub_10000EE0C(&v1126);
      (*v262)(v271, v265, v270);
      v261 = v1125;
      v1125[2] = v269 + 1;
      sub_1000061A0(&v1126, &v261[5 * v269 + 4]);
      (*v263)(v265, v270);
      v264 += 2;
      --v260;
    }

    while (v260);
  }

  Group.init(title:footer:_:)();
  v272 = AppConfiguration.analyticsDenylistDescriptorsSeed.getter();
  v273 = *(v272 + 16);
  v274 = v1020;
  if (v273)
  {
    v1125 = &_swiftEmptyArrayStorage;
    sub_100029980(0, v273, 0);
    v275 = v1125;
    v276 = (v1060 + 16);
    v277 = (v1060 + 8);
    v1018 = v272;
    v278 = (v272 + 40);
    do
    {
      v279 = *(v278 - 1);
      v280 = *v278;
      String.denylistDescriptorValueDebugItem.getter();
      v1125 = v275;
      v282 = v275[2];
      v281 = v275[3];
      if (v282 >= v281 >> 1)
      {
        sub_100029980((v281 > 1), v282 + 1, 1);
      }

      v283 = v1123;
      v1127 = v1123;
      v1128 = v253;
      v284 = sub_10000EE0C(&v1126);
      (*v276)(v284, v274, v283);
      v275 = v1125;
      v1125[2] = v282 + 1;
      sub_1000061A0(&v1126, &v275[5 * v282 + 4]);
      (*v277)(v274, v283);
      v278 += 2;
      --v273;
    }

    while (v273);
  }

  Group.init(title:footer:_:)();
  v285 = AppConfiguration.analyticsDenylistDescriptorsInternal.getter();
  v286 = *(v285 + 16);
  v287 = v1021;
  if (v286)
  {
    v1125 = &_swiftEmptyArrayStorage;
    sub_100029980(0, v286, 0);
    v288 = v1125;
    v289 = (v1060 + 16);
    v290 = (v1060 + 8);
    v1060 = v285;
    v291 = (v285 + 40);
    do
    {
      v292 = *(v291 - 1);
      v293 = *v291;
      String.denylistDescriptorValueDebugItem.getter();
      v1125 = v288;
      v295 = v288[2];
      v294 = v288[3];
      if (v295 >= v294 >> 1)
      {
        sub_100029980((v294 > 1), v295 + 1, 1);
      }

      v296 = v1123;
      v1127 = v1123;
      v1128 = v253;
      v297 = sub_10000EE0C(&v1126);
      (*v289)(v297, v287, v296);
      v288 = v1125;
      v1125[2] = v295 + 1;
      sub_1000061A0(&v1126, &v288[5 * v295 + 4]);
      (*v290)(v287, v296);
      v291 += 2;
      --v286;
    }

    while (v286);
  }

  Group.init(title:footer:_:)();
  v298 = type metadata accessor for Page();
  v299 = v1019;
  v1019[12] = v298;
  v299[13] = &protocol witness table for Page;
  v300 = v298;
  v1096 = v298;
  sub_10000EE0C(v299 + 9);
  Page.init(title:_:)();
  Group.init(title:footer:_:)();
  v301 = swift_allocObject();
  *(v301 + 16) = v1113;
  v302 = AppSessionManager.wasPriorSessionCrashDetected.getter();
  v303 = v1061;
  *v1061 = v302 & 1;
  v1007(v303, v1008, v1062);
  *(v301 + 56) = v1123;
  *(v301 + 64) = v253;
  sub_10000EE0C((v301 + 32));
  DebugItem.init(title:model:)();
  Group.init(title:footer:_:)();
  v304 = v1058;
  v1058[7] = v300;
  v304[8] = &protocol witness table for Page;
  sub_10000EE0C(v304 + 4);
  Page.init(title:_:)();
  v305 = v1098;
  v1090 = v1098 + v1094;
  *(swift_allocObject() + 16) = v1113;
  v306 = swift_allocObject();
  *(v306 + 16) = v1113;
  sub_100036F50();
  v308 = v307;
  v1123 = static Settings.Container.testSuite.getter();
  v309 = swift_allocObject();
  *(v309 + 16) = v1122;
  *(v309 + 32) = static SettingActions.restart.getter();
  v310 = v1124;
  (*(v1022 + 104))(v1024, v1124, v1023);
  sub_100037434(&qword_1000505A8, &type metadata accessor for Settings.Container.TestSuite);
  v311 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v306 + 56) = v308;
  v1075 = &protocol conformance descriptor for Item<A>;
  *(v306 + 64) = sub_100037434(&qword_1000505B0, sub_100036F50);
  *(v306 + 32) = v311;
  Group.init(title:footer:_:)();
  v304[12] = v1096;
  v304[13] = &protocol witness table for Page;
  sub_10000EE0C(v304 + 9);
  Page.init(title:_:)();
  v1060 = v305 + v1086;
  v312 = swift_allocObject();
  *(v312 + 16) = v1092;
  v1123 = v312;
  v313 = (v312 + v305);
  v314 = swift_allocObject();
  *(v314 + 16) = v1113;
  sub_100036FE4();
  v316 = v315;
  static Settings.News.newsProvider.getter();
  v317 = swift_allocObject();
  *(v317 + 16) = v1122;
  *(v317 + 32) = static SettingActions.restart.getter();
  (*(v1025 + 104))(v1027, v310, v1026);
  sub_100037434(&qword_1000505C0, &type metadata accessor for NewsProvider);
  v318 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v314 + 56) = v316;
  *(v314 + 64) = sub_100037434(&qword_1000505C8, sub_100036FE4);
  *(v314 + 32) = v318;
  v1075 = v313;
  Group.init(title:footer:_:)();
  v319 = swift_allocObject();
  *(v319 + 16) = v1072;
  sub_100037078();
  v321 = v320;
  static Settings.News.appleNewsEnvironment.getter();
  v322 = swift_allocObject();
  *(v322 + 16) = v1122;
  if (qword_10004EA60 != -1)
  {
    swift_once();
  }

  v323 = qword_100051BE0;
  *(v322 + 32) = qword_100051BE0;
  v324 = v1124;
  (*(v1028 + 104))(v1059, v1124, v1029);
  sub_100037434(&qword_1000505D8, &type metadata accessor for NewsEnvironment);
  swift_retain_n();
  v325 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v319 + 56) = v321;
  *(v319 + 64) = sub_100037434(&qword_1000505E0, sub_100037078);
  *(v319 + 32) = v325;
  v1061 = static Settings.News.disableEdgeCachedFeeds.getter();
  v1059 = "Container Environment";
  v326 = swift_allocObject();
  *(v326 + 16) = v1122;
  v327 = v323;
  *(v326 + 32) = v323;
  v328 = v1101;
  v329 = v1118;
  v330 = v1115;
  (v1115)(v1101, v1120, v1118);
  v331 = v1119;
  v1111(v1119, v324, v1114);

  v332 = v328;
  v333 = v1121;
  v334 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v335 = v1110;
  *(v319 + 96) = v333;
  *(v319 + 104) = v335;
  *(v319 + 72) = v334;
  v1061 = static Settings.News.disableEdgeCachedTopStories.getter();
  v1059 = "Disable Edge-Cached Feeds";
  v336 = swift_allocObject();
  *(v336 + 16) = v1122;
  *(v336 + 32) = v327;
  v330(v332, v1120, v329);
  v337 = v1124;
  v1111(v331, v1124, v1114);
  v1062 = v327;

  v338 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v319 + 136) = v333;
  *(v319 + 144) = v335;
  *(v319 + 112) = v338;
  Group.init(title:footer:_:)();
  v339 = v1058;
  v1058[17] = v1096;
  v339[18] = &protocol witness table for Page;
  sub_10000EE0C(v339 + 14);
  Page.init(title:_:)();
  sub_10003710C(0, &qword_1000505E8, &type metadata accessor for Item);
  v341 = v340;
  v342 = v337;
  if (qword_10004EA70 != -1)
  {
    swift_once();
  }

  v1059 = (v1051 + v1098);
  v343 = swift_allocObject();
  *(v343 + 16) = v1122;

  *(v343 + 32) = static SettingActions.restart.getter();
  (*(v1030 + 104))(v1031, v337, v1032);
  sub_10001CD18();
  v344 = Item<>.init(_:label:resetBehavior:actions:)();
  v339[22] = v341;
  v339[23] = sub_100037170();
  v339[19] = v344;
  Group.init(title:footer:_:)();
  v345 = swift_allocObject();
  *(v345 + 16) = xmmword_10003FA50;
  static Settings.Features.enableAIAttribution.getter();
  v346 = swift_allocObject();
  *(v346 + 16) = v1122;
  *(v346 + 32) = static SettingActions.restart.getter();
  v347 = v1063;
  v348 = v337;
  v349 = v1082;
  v1067(v1063, v348, v1082);
  v350 = v1093;
  v351 = Item<>.init(_:label:resetBehavior:actions:)();
  v352 = v1077;
  *(v345 + 56) = v350;
  *(v345 + 64) = v352;
  *(v345 + 32) = v351;
  v1123 = static Settings.Features.appReviewPrompt.getter();
  v353 = swift_allocObject();
  *(v353 + 16) = v1122;
  *(v353 + 32) = static SettingActions.restart.getter();
  v354 = v349;
  v355 = v1067;
  v1067(v347, v342, v354);
  v356 = v1093;
  v357 = Item<>.init(_:label:resetBehavior:actions:)();
  v358 = v1077;
  *(v345 + 96) = v356;
  *(v345 + 104) = v358;
  *(v345 + 72) = v357;
  v1123 = static Settings.Features.narrativeAudio.getter();
  v359 = swift_allocObject();
  *(v359 + 16) = v1122;
  *(v359 + 32) = static SettingActions.restart.getter();
  v360 = v1124;
  v361 = v1082;
  v355(v347, v1124, v1082);
  v362 = v1093;
  v363 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v345 + 136) = v362;
  *(v345 + 144) = v358;
  *(v345 + 112) = v363;
  v1123 = static Settings.Features.configurableOffers.getter();
  v364 = swift_allocObject();
  *(v364 + 16) = v1122;
  *(v364 + 32) = static SettingActions.restart.getter();
  v365 = v360;
  v366 = v1067;
  v1067(v347, v365, v361);
  v367 = v1093;
  v368 = Item<>.init(_:label:resetBehavior:actions:)();
  v369 = v1077;
  *(v345 + 176) = v367;
  *(v345 + 184) = v369;
  *(v345 + 152) = v368;
  v1123 = static Settings.Features.cipActivation.getter();
  v370 = swift_allocObject();
  *(v370 + 16) = v1122;
  *(v370 + 32) = static SettingActions.restart.getter();
  v366(v347, v1124, v361);
  v371 = v366;
  v372 = v1093;
  v373 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v345 + 216) = v372;
  *(v345 + 224) = v369;
  *(v345 + 192) = v373;
  v1123 = static Settings.NewsFeedModule.Features.useFeedDifferentiationMode.getter();
  v1075 = "Configurable Offers";
  v374 = swift_allocObject();
  *(v374 + 16) = v1122;
  *(v374 + 32) = static SettingActions.restart.getter();
  v375 = v1124;
  v376 = v1082;
  v371(v347, v1124, v1082);
  v377 = v1093;
  v378 = Item<>.init(_:label:resetBehavior:actions:)();
  v379 = v1077;
  *(v345 + 256) = v377;
  *(v345 + 264) = v379;
  *(v345 + 232) = v378;
  v1123 = static Settings.Features.symbolsInArticles.getter();
  v1075 = "Feed 3.1: Differentiation Mode";
  v380 = swift_allocObject();
  *(v380 + 16) = v1122;
  *(v380 + 32) = static SettingActions.restart.getter();
  v381 = v375;
  v382 = v1067;
  v1067(v347, v381, v376);
  v383 = v1093;
  v384 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v345 + 296) = v383;
  *(v345 + 304) = v379;
  *(v345 + 272) = v384;
  v1123 = static Settings.Features.forYouFeedConfigRequests.getter();
  v1075 = "Follow Symbols in Articles";
  v385 = swift_allocObject();
  *(v385 + 16) = v1122;
  *(v385 + 32) = static SettingActions.restart.getter();
  v386 = v1124;
  v387 = v1082;
  v382(v347, v1124, v1082);
  v388 = v1093;
  v389 = Item<>.init(_:label:resetBehavior:actions:)();
  v390 = v1077;
  *(v345 + 336) = v388;
  *(v345 + 344) = v390;
  *(v345 + 312) = v389;
  v1123 = static Settings.Features.newsFreeExperience.getter();
  v391 = swift_allocObject();
  *(v391 + 16) = v1122;
  *(v391 + 32) = static SettingActions.restart.getter();
  v392 = v1067;
  v1067(v347, v386, v387);
  v393 = v1093;
  v394 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v345 + 376) = v393;
  *(v345 + 384) = v390;
  *(v345 + 352) = v394;
  v1123 = static Settings.Features.nffFeeds.getter();
  v395 = swift_allocObject();
  *(v395 + 16) = v1122;
  *(v395 + 32) = static SettingActions.restart.getter();
  v396 = v1082;
  v392(v347, v1124, v1082);
  v397 = v1093;
  v398 = Item<>.init(_:label:resetBehavior:actions:)();
  v399 = v1077;
  *(v345 + 416) = v397;
  *(v345 + 424) = v399;
  *(v345 + 392) = v398;
  v1123 = static Settings.Features.paidBundleViaOffer.getter();
  v1075 = "News-Free Experience";
  v400 = swift_allocObject();
  *(v400 + 16) = v1122;
  *(v400 + 32) = static SettingActions.restart.getter();
  v401 = v1063;
  v402 = v1124;
  v403 = v392;
  v392(v1063, v1124, v396);
  v404 = v1093;
  v405 = Item<>.init(_:label:resetBehavior:actions:)();
  v406 = v1077;
  *(v345 + 456) = v404;
  *(v345 + 464) = v406;
  *(v345 + 432) = v405;
  static Settings.Features.showYahooNewsAttribution.getter();
  v407 = v1082;
  v392(v401, v402, v1082);
  v408 = v1093;
  v409 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v345 + 496) = v408;
  *(v345 + 504) = v406;
  *(v345 + 472) = v409;
  static Settings.Features.widgetNewsCuration.getter();
  v403(v401, v402, v407);
  v410 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v345 + 536) = v408;
  v411 = v1077;
  *(v345 + 544) = v1077;
  *(v345 + 512) = v410;
  static Settings.Features.displayPreMarketQuote.getter();
  v412 = v1124;
  v403(v401, v1124, v407);
  v413 = v1093;
  v414 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v345 + 576) = v413;
  *(v345 + 584) = v411;
  *(v345 + 552) = v414;
  v1123 = static Settings.Features.userEventHistoryCollection.getter();
  v415 = swift_allocObject();
  *(v415 + 16) = v1122;
  *(v415 + 32) = static SettingActions.restart.getter();
  v403(v401, v412, v1082);
  v416 = v1093;
  v417 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v345 + 616) = v416;
  *(v345 + 624) = v411;
  *(v345 + 592) = v417;
  Group.init(title:footer:_:)();
  v1061 = swift_allocObject();
  *(v1061 + 1) = v1066;
  v418 = v1098;
  v419 = swift_allocObject();
  v1075 = v419;
  *(v419 + 16) = v1072;
  v1032 = v419 + v418;
  v1123 = "Collect User Event History";
  v1058 = static Settings.ForYou.configOverrides.getter();
  v420 = swift_allocObject();
  *(v420 + 16) = v1113;
  type metadata accessor for Settings.ForYou.ConfigOverrides();
  static Settings.ForYou.ConfigOverrides.url.getter();
  v421 = swift_allocObject();
  *(v421 + 16) = v1122;
  *(v421 + 32) = static SettingActions.restart.getter();
  v1069(v1079, v412, v1080);
  v422 = v1085;
  v423 = Item<>.init(_:label:resetBehavior:actions:)();
  v424 = v1073;
  *(v420 + 56) = v422;
  *(v420 + 64) = v424;
  *(v420 + 32) = v423;
  Group.init(title:footer:group:_:)();
  v425 = swift_allocObject();
  *(v425 + 16) = v1066;
  static Settings.News.disableTopStories.getter();
  v426 = swift_allocObject();
  *(v426 + 16) = v1122;
  *(v426 + 32) = static SettingActions.restart.getter();
  v427 = v1101;
  v428 = v1118;
  (v1115)(v1101, v1120, v1118);
  v1111(v1119, v1124, v1114);
  v429 = v1121;
  v430 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v431 = v1110;
  *(v425 + 56) = v429;
  *(v425 + 64) = v431;
  *(v425 + 32) = v430;
  v1058 = static Settings.News.enableForYouGroupSizeOverride.getter();
  v1031 = "Top Stories Disabled";
  v432 = swift_allocObject();
  *(v432 + 16) = v1122;
  v433 = v1062;
  *(v432 + 32) = v1062;
  v434 = v1120;
  v435 = v1115;
  (v1115)(v427, v1120, v428);
  v1111(v1119, v1124, v1114);

  v436 = v1121;
  v437 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v438 = v1110;
  *(v425 + 96) = v436;
  *(v425 + 104) = v438;
  *(v425 + 72) = v437;
  v1058 = static Settings.News.forYouGroupSizeOverride.getter();
  v1031 = "Override For You Group Size";
  v439 = swift_allocObject();
  *(v439 + 16) = v1122;
  *(v439 + 32) = v433;
  v435(v427, v434, v428);
  v440 = v1124;
  v1074(v1088, v1124, v1084);

  v441 = v1091;
  v442 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v443 = v1070;
  *(v425 + 136) = v441;
  *(v425 + 144) = v443;
  *(v425 + 112) = v442;
  static Settings.ForYou.Ticker.tapToDismiss.getter();
  v435(v427, v1120, v428);
  v444 = v1114;
  v1111(v1119, v440, v1114);
  v445 = v1121;
  v446 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v447 = v1110;
  *(v425 + 176) = v445;
  *(v425 + 184) = v447;
  *(v425 + 152) = v446;
  Group.init(title:footer:_:)();
  v448 = swift_allocObject();
  *(v448 + 16) = v1113;
  sub_1000371E4();
  v450 = v449;
  static Settings.ForYou.Feed.autoRefreshStrategy.getter();
  v1029 = "Tap To Dismiss Card";
  v451 = *(v1095 + 13);
  v1095 += 104;
  v1031 = v451;
  (v451)(v1053, v440, v1054);
  v1030 = sub_100037434(&qword_100050600, &type metadata accessor for FeedAutoRefreshStrategy);
  v1028 = v450;
  v452 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v448 + 56) = v450;
  v1058 = &protocol conformance descriptor for Item<A>;
  v1027 = sub_100037434(&qword_100050608, sub_1000371E4);
  *(v448 + 64) = v1027;
  *(v448 + 32) = v452;
  Group.init(title:footer:_:)();
  v453 = v1061;
  *(v1061 + 7) = v1096;
  *(v453 + 8) = &protocol witness table for Page;
  sub_10000EE0C(v453 + 4);
  Page.init(title:_:)();
  v454 = swift_allocObject();
  v1032 = v454;
  *(v454 + 16) = v1071;
  v1075 = (v454 + v1098);
  static Settings.StockFeed.configOverrides.getter();
  v455 = swift_allocObject();
  *(v455 + 16) = v1113;
  type metadata accessor for Settings.StockFeed.ConfigOverrides();
  static Settings.StockFeed.ConfigOverrides.url.getter();
  v456 = v444;
  v457 = swift_allocObject();
  *(v457 + 16) = v1122;
  *(v457 + 32) = static SettingActions.restart.getter();
  v458 = v1124;
  v1069(v1079, v1124, v1080);
  v459 = v1085;
  v460 = Item<>.init(_:label:resetBehavior:actions:)();
  v461 = v1073;
  *(v455 + 56) = v459;
  *(v455 + 64) = v461;
  *(v455 + 32) = v460;
  Group.init(title:footer:group:_:)();
  v462 = swift_allocObject();
  *(v462 + 16) = v1113;
  static Settings.ChartOptions.showYTD.getter();
  v463 = v1101;
  (v1115)(v1101, v1120, v1118);
  v464 = v1111;
  v1111(v1119, v458, v456);
  v465 = v1121;
  v466 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v467 = v1110;
  *(v462 + 56) = v465;
  *(v462 + 64) = v467;
  *(v462 + 32) = v466;
  Group.init(title:footer:_:)();
  v468 = swift_allocObject();
  *(v468 + 16) = v1072;
  v1026 = static Settings.StockFeed.Layout.Chunking.overrideEnabled.getter();
  v469 = v1118;
  v470 = v1115;
  (v1115)(v463, v1120, v1118);
  v464(v1119, v1124, v456);
  v471 = v1121;
  v472 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v473 = v1110;
  *(v468 + 56) = v471;
  *(v468 + 64) = v473;
  *(v468 + 32) = v472;
  static Settings.StockFeed.Layout.Chunking.overrideChunkSize.getter();
  v474 = v1120;
  v475 = v469;
  v470(v463, v1120, v469);
  v476 = v1124;
  v1074(v1088, v1124, v1084);
  v477 = v1091;
  v478 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v479 = v1070;
  *(v468 + 96) = v477;
  *(v468 + 104) = v479;
  *(v468 + 72) = v478;
  static Settings.StockFeed.Layout.overrideVerticalQuoteDetailLayout.getter();
  v470(v463, v474, v475);
  v1111(v1119, v476, v1114);
  v480 = v1121;
  v481 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v482 = v1110;
  *(v468 + 136) = v480;
  *(v468 + 144) = v482;
  *(v468 + 112) = v481;
  Group.init(title:footer:_:)();
  v483 = swift_allocObject();
  *(v483 + 16) = v1113;
  static Settings.StockFeed.Feed.autoRefreshStrategy.getter();
  (v1031)(v1053, v476, v1054);
  v484 = v1028;
  v485 = Item<>.init(_:label:resetBehavior:actions:)();
  v486 = v1027;
  *(v483 + 56) = v484;
  *(v483 + 64) = v486;
  *(v483 + 32) = v485;
  Group.init(title:footer:_:)();
  v487 = swift_allocObject();
  *(v487 + 16) = v1113;
  static Settings.StockFeed.Toolbar.overrideAlwaysShowUpdatedLabelEnabled.getter();
  (v1115)(v463, v1120, v1118);
  v1111(v1119, v476, v1114);
  v488 = v1121;
  v489 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v487 + 56) = v488;
  *(v487 + 64) = v482;
  *(v487 + 32) = v489;
  Group.init(title:footer:_:)();
  v490 = v1096;
  v491 = v1061;
  *(v1061 + 12) = v1096;
  *(v491 + 13) = &protocol witness table for Page;
  sub_10000EE0C(v491 + 9);
  Page.init(title:_:)();
  v1095 = "Always show Updated label";
  *(swift_allocObject() + 16) = v1113;
  v1075 = static Settings.NewsArticlesModules.EndOfArticleFeed.configOverrides.getter();
  v492 = swift_allocObject();
  *(v492 + 16) = v1113;
  type metadata accessor for Settings.NewsArticlesModules.EndOfArticleFeed.ConfigOverrides();
  static Settings.NewsArticlesModules.EndOfArticleFeed.ConfigOverrides.url.getter();
  v493 = swift_allocObject();
  *(v493 + 16) = v1122;
  *(v493 + 32) = static SettingActions.restart.getter();
  v1069(v1079, v1124, v1080);
  v494 = v1085;
  v495 = Item<>.init(_:label:resetBehavior:actions:)();
  v496 = v1073;
  *(v492 + 56) = v494;
  *(v492 + 64) = v496;
  *(v492 + 32) = v495;
  v497 = v1098;
  Group.init(title:footer:group:_:)();
  v498 = v1061;
  *(v1061 + 17) = v490;
  *(v498 + 18) = &protocol witness table for Page;
  sub_10000EE0C(v498 + 14);
  Page.init(title:_:)();
  v499 = swift_allocObject();
  v1054 = v499;
  *(v499 + 16) = v1011;
  v1075 = (v499 + v497);
  v500 = swift_allocObject();
  *(v500 + 16) = v1092;
  v1123 = static Settings.Welcome.Version.latestCompleted.getter();
  v1095 = "End of Article Feed";
  v501 = swift_allocObject();
  *(v501 + 16) = v1122;
  *(v501 + 32) = static SettingActions.restart.getter();
  v502 = v1115;
  (v1115)(v463, v1120, v1118);
  v503 = v1084;
  v504 = v1074;
  v1074(v1088, v1124, v1084);
  v505 = v1091;
  v506 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v507 = v1070;
  *(v500 + 56) = v505;
  *(v500 + 64) = v507;
  *(v500 + 32) = v506;
  v1123 = static Settings.Welcome.Version.debugLatestCompleted.getter();
  v1095 = "Latest Completed";
  v508 = swift_allocObject();
  *(v508 + 16) = v1122;
  *(v508 + 32) = static SettingActions.restart.getter();
  v502(v1101, v1120, v1118);
  v504(v1088, v1124, v503);
  v509 = v1091;
  v510 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v500 + 96) = v509;
  *(v500 + 104) = v507;
  *(v500 + 72) = v510;
  Group.init(title:footer:_:)();
  v1053 = "Debug Latest Completed";
  v511 = swift_allocObject();
  *(v511 + 16) = v1066;
  static Settings.Welcome.Animations.WelcomeToStocksScaleUp.initialScale.getter();
  v512 = v1033;
  *v1033 = 1008981770;
  LODWORD(v1123) = enum case for Item.RangeControlType.stepper<A>(_:);
  v513 = *(v1097 + 13);
  v1097 += 104;
  v1095 = v513;
  v514 = v1099;
  (v513)(v512);
  v515 = v1089;
  v516 = v1124;
  v517 = v1104;
  (v1104)(v1089, v1124, v1108);
  v518 = v1105;
  v519 = Item<>.init(_:label:resetBehavior:type:)();
  v520 = v1102;
  *(v511 + 56) = v518;
  *(v511 + 64) = v520;
  v521 = v520;
  *(v511 + 32) = v519;
  v1032 = static Settings.Welcome.Animations.WelcomeToStocksScaleUp.mass.getter();
  *v512 = 1036831949;
  (v1095)(v512, v1123, v514);
  (v517)(v515, v516, v1108);
  v522 = Item<>.init(_:label:resetBehavior:type:)();
  *(v511 + 96) = v518;
  *(v511 + 104) = v521;
  *(v511 + 72) = v522;
  v1032 = static Settings.Welcome.Animations.WelcomeToStocksScaleUp.damping.getter();
  v523 = v1101;
  v524 = v1120;
  v525 = v1115;
  (v1115)(v1101, v1120, v1118);
  v526 = v1108;
  (v1104)(v515, v516, v1108);
  v527 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v528 = v1102;
  *(v511 + 136) = v518;
  *(v511 + 144) = v528;
  *(v511 + 112) = v527;
  v1032 = static Settings.Welcome.Animations.WelcomeToStocksScaleUp.stiffness.getter();
  v525(v523, v524, v1118);
  v529 = v1124;
  (v1104)(v515, v1124, v526);
  v530 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v511 + 176) = v518;
  *(v511 + 184) = v528;
  *(v511 + 152) = v530;
  Group.init(title:footer:_:)();
  v1053 = "Welcome to Stocks Scale Up";
  v531 = swift_allocObject();
  *(v531 + 16) = v1071;
  static Settings.Welcome.Animations.WelcomeToStocksFadeIn.duration.getter();
  *v512 = 1036831949;
  v532 = v1123;
  v533 = v1099;
  v534 = v1095;
  (v1095)(v512, v1123, v1099);
  (v1104)(v515, v529, v1108);
  v535 = Item<>.init(_:label:resetBehavior:type:)();
  v536 = v1102;
  *(v531 + 56) = v518;
  *(v531 + 64) = v536;
  *(v531 + 32) = v535;
  static Settings.Welcome.Animations.WelcomeToStocksFadeIn.controlOneX.getter();
  *v512 = 1008981770;
  (v534)(v512, v532, v533);
  v537 = v1124;
  v538 = v1108;
  (v1104)(v515, v1124, v1108);
  v539 = v515;
  v540 = v1105;
  v541 = Item<>.init(_:label:resetBehavior:type:)();
  *(v531 + 96) = v540;
  *(v531 + 104) = v536;
  *(v531 + 72) = v541;
  static Settings.Welcome.Animations.WelcomeToStocksFadeIn.controlOneY.getter();
  *v512 = 1008981770;
  v542 = v1123;
  v543 = v1095;
  (v1095)(v512, v1123, v1099);
  v544 = v1104;
  (v1104)(v539, v537, v538);
  v545 = v1105;
  v546 = Item<>.init(_:label:resetBehavior:type:)();
  v547 = v1102;
  *(v531 + 136) = v545;
  *(v531 + 144) = v547;
  *(v531 + 112) = v546;
  static Settings.Welcome.Animations.WelcomeToStocksFadeIn.controlTwoX.getter();
  *v512 = 1008981770;
  v548 = v1099;
  (v543)(v512, v542, v1099);
  v549 = v1089;
  v550 = v1124;
  (v544)(v1089, v1124, v1108);
  v551 = v544;
  v552 = v549;
  v553 = v1105;
  v554 = Item<>.init(_:label:resetBehavior:type:)();
  *(v531 + 176) = v553;
  *(v531 + 184) = v547;
  v555 = v547;
  *(v531 + 152) = v554;
  static Settings.Welcome.Animations.WelcomeToStocksFadeIn.controlTwoY.getter();
  *v512 = 1008981770;
  (v1095)(v512, v1123, v548);
  v556 = v1108;
  (v551)(v552, v550, v1108);
  v557 = v552;
  v558 = v1105;
  v559 = Item<>.init(_:label:resetBehavior:type:)();
  *(v531 + 216) = v558;
  *(v531 + 224) = v555;
  *(v531 + 192) = v559;
  Group.init(title:footer:_:)();
  v1053 = "Welcome to Stocks Fade In";
  v560 = swift_allocObject();
  *(v560 + 16) = v1050;
  v1032 = static Settings.Welcome.Animations.ActivityIndicatorFadeIn.delay.getter();
  *v512 = 1008981770;
  v561 = v1123;
  v562 = v1095;
  (v1095)(v512, v1123, v548);
  v563 = v557;
  v564 = v1124;
  (v551)(v563, v1124, v556);
  v565 = v1105;
  v566 = Item<>.init(_:label:resetBehavior:type:)();
  v567 = v1102;
  *(v560 + 56) = v565;
  *(v560 + 64) = v567;
  *(v560 + 32) = v566;
  v1032 = static Settings.Welcome.Animations.ActivityIndicatorFadeIn.duration.getter();
  *v512 = 1008981770;
  (v562)(v512, v561, v548);
  v568 = v1089;
  v569 = v564;
  v570 = v1108;
  (v551)(v1089, v569, v1108);
  v571 = v568;
  v572 = v1105;
  v573 = Item<>.init(_:label:resetBehavior:type:)();
  *(v560 + 96) = v572;
  *(v560 + 104) = v567;
  *(v560 + 72) = v573;
  static Settings.Welcome.Animations.ActivityIndicatorFadeIn.controlOneX.getter();
  *v512 = 1008981770;
  v574 = v1123;
  (v562)(v512, v1123, v548);
  v575 = v1124;
  (v1104)(v571, v1124, v570);
  v576 = v1105;
  v577 = Item<>.init(_:label:resetBehavior:type:)();
  v578 = v1102;
  *(v560 + 136) = v576;
  *(v560 + 144) = v578;
  *(v560 + 112) = v577;
  v1032 = static Settings.Welcome.Animations.ActivityIndicatorFadeIn.controlOneY.getter();
  *v512 = 1008981770;
  (v562)(v512, v574, v1099);
  v579 = v1108;
  (v1104)(v571, v575, v1108);
  v580 = Item<>.init(_:label:resetBehavior:type:)();
  *(v560 + 176) = v576;
  *(v560 + 184) = v578;
  *(v560 + 152) = v580;
  v1032 = static Settings.Welcome.Animations.ActivityIndicatorFadeIn.controlTwoX.getter();
  *v512 = 1008981770;
  v581 = v1123;
  v582 = v1099;
  (v562)(v512, v1123, v1099);
  v583 = v1124;
  (v1104)(v571, v1124, v579);
  v584 = Item<>.init(_:label:resetBehavior:type:)();
  v585 = v1102;
  *(v560 + 216) = v576;
  *(v560 + 224) = v585;
  *(v560 + 192) = v584;
  v1032 = static Settings.Welcome.Animations.ActivityIndicatorFadeIn.controlTwoY.getter();
  *v512 = 1008981770;
  v586 = v582;
  v587 = v1095;
  (v1095)(v512, v581, v586);
  v588 = v579;
  v589 = v1104;
  (v1104)(v571, v583, v588);
  v590 = Item<>.init(_:label:resetBehavior:type:)();
  *(v560 + 256) = v576;
  *(v560 + 264) = v585;
  *(v560 + 232) = v590;
  Group.init(title:footer:_:)();
  v1053 = "Activity Indicator Fade In";
  v591 = swift_allocObject();
  *(v591 + 16) = v1071;
  v1032 = static Settings.Welcome.Animations.SpinnerFadeOut.duration.getter();
  *v512 = 1036831949;
  v592 = v581;
  v593 = v1099;
  (v587)(v512, v592, v1099);
  v594 = v1108;
  (v589)(v571, v1124, v1108);
  v595 = Item<>.init(_:label:resetBehavior:type:)();
  v596 = v1102;
  *(v591 + 56) = v576;
  *(v591 + 64) = v596;
  *(v591 + 32) = v595;
  v1032 = static Settings.Welcome.Animations.SpinnerFadeOut.controlOneX.getter();
  *v512 = 1008981770;
  v597 = v1123;
  (v587)(v512, v1123, v593);
  v598 = v1124;
  v599 = v594;
  v600 = v1104;
  (v1104)(v571, v1124, v599);
  v601 = Item<>.init(_:label:resetBehavior:type:)();
  *(v591 + 96) = v576;
  *(v591 + 104) = v596;
  *(v591 + 72) = v601;
  v1032 = static Settings.Welcome.Animations.SpinnerFadeOut.controlOneY.getter();
  *v512 = 1008981770;
  v602 = v597;
  v603 = v1099;
  (v1095)(v512, v602, v1099);
  v604 = v598;
  v605 = v1108;
  (v600)(v571, v604, v1108);
  v606 = Item<>.init(_:label:resetBehavior:type:)();
  *(v591 + 136) = v576;
  *(v591 + 144) = v596;
  *(v591 + 112) = v606;
  v1032 = static Settings.Welcome.Animations.SpinnerFadeOut.controlTwoX.getter();
  *v512 = 1008981770;
  v607 = v1123;
  (v1095)(v512, v1123, v603);
  v608 = v1104;
  (v1104)(v571, v1124, v605);
  v609 = Item<>.init(_:label:resetBehavior:type:)();
  *(v591 + 176) = v576;
  *(v591 + 184) = v596;
  *(v591 + 152) = v609;
  static Settings.Welcome.Animations.SpinnerFadeOut.controlTwoY.getter();
  *v512 = 1008981770;
  (v1095)(v512, v607, v1099);
  v610 = v571;
  v611 = v571;
  v612 = v1124;
  v613 = v1108;
  (v608)(v611, v1124, v1108);
  v614 = Item<>.init(_:label:resetBehavior:type:)();
  *(v591 + 216) = v576;
  *(v591 + 224) = v596;
  *(v591 + 192) = v614;
  Group.init(title:footer:_:)();
  v1053 = "Spinner Fade Out";
  v615 = swift_allocObject();
  *(v615 + 16) = v1071;
  v1032 = static Settings.Welcome.Animations.AppIconFadeOut.duration.getter();
  *v512 = 1036831949;
  v616 = v1095;
  (v1095)(v512, v1123, v1099);
  (v608)(v610, v612, v613);
  v617 = Item<>.init(_:label:resetBehavior:type:)();
  v618 = v1102;
  *(v615 + 56) = v576;
  *(v615 + 64) = v618;
  *(v615 + 32) = v617;
  static Settings.Welcome.Animations.AppIconFadeOut.controlOneX.getter();
  *v512 = 1008981770;
  (v616)(v512, v1123, v1099);
  v619 = v1124;
  (v608)(v610, v1124, v613);
  v620 = v610;
  v621 = v1105;
  v622 = Item<>.init(_:label:resetBehavior:type:)();
  *(v615 + 96) = v621;
  *(v615 + 104) = v618;
  *(v615 + 72) = v622;
  static Settings.Welcome.Animations.AppIconFadeOut.controlOneY.getter();
  *v512 = 1008981770;
  v623 = v1099;
  (v616)(v512, v1123, v1099);
  (v608)(v620, v619, v1108);
  v624 = v1105;
  v625 = Item<>.init(_:label:resetBehavior:type:)();
  v626 = v1102;
  *(v615 + 136) = v624;
  *(v615 + 144) = v626;
  *(v615 + 112) = v625;
  static Settings.Welcome.Animations.AppIconFadeOut.controlTwoX.getter();
  *v512 = 1008981770;
  (v616)(v512, v1123, v623);
  v627 = v1108;
  v628 = v1104;
  (v1104)(v620, v1124, v1108);
  v629 = v1105;
  v630 = Item<>.init(_:label:resetBehavior:type:)();
  *(v615 + 176) = v629;
  *(v615 + 184) = v626;
  *(v615 + 152) = v630;
  static Settings.Welcome.Animations.AppIconFadeOut.controlTwoY.getter();
  *v512 = 1008981770;
  (v616)(v512, v1123, v1099);
  (v628)(v620, v1124, v627);
  v631 = v1105;
  v632 = Item<>.init(_:label:resetBehavior:type:)();
  *(v615 + 216) = v631;
  *(v615 + 224) = v626;
  *(v615 + 192) = v632;
  Group.init(title:footer:_:)();
  v1053 = "App Icon Fade Out";
  v633 = swift_allocObject();
  *(v633 + 16) = v1066;
  static Settings.Welcome.Animations.Page2Moves.delay.getter();
  *v512 = 1008981770;
  v634 = v1099;
  (v616)(v512, v1123, v1099);
  v635 = v620;
  v636 = v1124;
  v637 = v1108;
  v638 = v1104;
  (v1104)(v635, v1124, v1108);
  v639 = v1105;
  v640 = Item<>.init(_:label:resetBehavior:type:)();
  v641 = v1102;
  *(v633 + 56) = v639;
  *(v633 + 64) = v641;
  *(v633 + 32) = v640;
  static Settings.Welcome.Animations.Page2Moves.mass.getter();
  *v512 = 1036831949;
  (v1095)(v512, v1123, v634);
  (v638)(v635, v636, v637);
  v642 = Item<>.init(_:label:resetBehavior:type:)();
  *(v633 + 96) = v639;
  *(v633 + 104) = v641;
  *(v633 + 72) = v642;
  v1047 = static Settings.Welcome.Animations.Page2Moves.damping.getter();
  v643 = v1101;
  v644 = v1120;
  v645 = v1118;
  v646 = v1115;
  (v1115)(v1101, v1120, v1118);
  (v1104)(v635, v1124, v1108);
  v647 = v643;
  v648 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v649 = v1102;
  *(v633 + 136) = v639;
  *(v633 + 144) = v649;
  *(v633 + 112) = v648;
  static Settings.Welcome.Animations.Page2Moves.stiffness.getter();
  v646(v647, v644, v645);
  v650 = v635;
  v651 = v1108;
  (v1104)(v635, v1124, v1108);
  v652 = v1105;
  v653 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v633 + 176) = v652;
  *(v633 + 184) = v649;
  *(v633 + 152) = v653;
  Group.init(title:footer:_:)();
  v1053 = "Delay Between Animations";
  v654 = swift_allocObject();
  *(v654 + 16) = v1071;
  static Settings.Welcome.Animations.Page2FadeIns.duration.getter();
  *v512 = 1036831949;
  v655 = v1123;
  v656 = v1099;
  v657 = v1095;
  (v1095)(v512, v1123, v1099);
  (v1104)(v650, v1124, v651);
  v658 = Item<>.init(_:label:resetBehavior:type:)();
  v659 = v1102;
  *(v654 + 56) = v652;
  *(v654 + 64) = v659;
  *(v654 + 32) = v658;
  static Settings.Welcome.Animations.Page2FadeIns.controlOneX.getter();
  *v512 = 1008981770;
  (v657)(v512, v655, v656);
  v660 = v1124;
  v661 = v1108;
  v662 = v1104;
  (v1104)(v650, v1124, v1108);
  v663 = v1105;
  v664 = Item<>.init(_:label:resetBehavior:type:)();
  *(v654 + 96) = v663;
  *(v654 + 104) = v659;
  *(v654 + 72) = v664;
  static Settings.Welcome.Animations.Page2FadeIns.controlOneY.getter();
  *v512 = 1008981770;
  v665 = v1123;
  (v1095)(v512, v1123, v1099);
  (v662)(v650, v660, v661);
  v666 = v650;
  v667 = v1105;
  v668 = Item<>.init(_:label:resetBehavior:type:)();
  v669 = v1102;
  *(v654 + 136) = v667;
  *(v654 + 144) = v669;
  *(v654 + 112) = v668;
  v1049 = static Settings.Welcome.Animations.Page2FadeIns.controlTwoX.getter();
  *v512 = 1008981770;
  v670 = v665;
  v671 = v1099;
  v672 = v1095;
  (v1095)(v512, v670, v1099);
  (v662)(v666, v1124, v1108);
  v673 = Item<>.init(_:label:resetBehavior:type:)();
  *(v654 + 176) = v667;
  *(v654 + 184) = v669;
  *(v654 + 152) = v673;
  v1049 = static Settings.Welcome.Animations.Page2FadeIns.controlTwoY.getter();
  *v512 = 1008981770;
  (v672)(v512, v1123, v671);
  v674 = v1124;
  v675 = v1108;
  (v662)(v666, v1124, v1108);
  v676 = v666;
  v677 = Item<>.init(_:label:resetBehavior:type:)();
  v678 = v1102;
  *(v654 + 216) = v667;
  *(v654 + 224) = v678;
  *(v654 + 192) = v677;
  Group.init(title:footer:_:)();
  v679 = swift_allocObject();
  *(v679 + 16) = v1071;
  *&v1071 = static Settings.Welcome.Animations.DismissFade.duration.getter();
  *v512 = 1036831949;
  v680 = v1123;
  v681 = v1095;
  (v1095)(v512, v1123, v671);
  v682 = v676;
  v683 = v674;
  (v1104)(v682, v674, v675);
  v684 = v1105;
  v685 = Item<>.init(_:label:resetBehavior:type:)();
  v686 = v1102;
  *(v679 + 56) = v684;
  *(v679 + 64) = v686;
  *(v679 + 32) = v685;
  static Settings.Welcome.Animations.DismissFade.controlOneX.getter();
  *v512 = 1008981770;
  v687 = v671;
  v688 = v681;
  (v681)(v512, v680, v687);
  v689 = v1089;
  v690 = v1104;
  (v1104)(v1089, v683, v675);
  v691 = v1105;
  v692 = Item<>.init(_:label:resetBehavior:type:)();
  *(v679 + 96) = v691;
  *(v679 + 104) = v686;
  *(v679 + 72) = v692;
  static Settings.Welcome.Animations.DismissFade.controlOneY.getter();
  *v512 = 1008981770;
  v693 = v680;
  v694 = v1099;
  (v688)(v512, v693, v1099);
  v695 = v1124;
  (v690)(v689, v1124, v1108);
  v696 = v1105;
  v697 = Item<>.init(_:label:resetBehavior:type:)();
  *(v679 + 136) = v696;
  *(v679 + 144) = v686;
  *(v679 + 112) = v697;
  static Settings.Welcome.Animations.DismissFade.controlTwoX.getter();
  *v512 = 1008981770;
  (v1095)(v512, v1123, v694);
  v698 = v695;
  v699 = v695;
  v700 = v1108;
  (v690)(v689, v698, v1108);
  v701 = v1105;
  v702 = Item<>.init(_:label:resetBehavior:type:)();
  *(v679 + 176) = v701;
  *(v679 + 184) = v686;
  *(v679 + 152) = v702;
  static Settings.Welcome.Animations.DismissFade.controlTwoY.getter();
  *v512 = 1008981770;
  (v1095)(v512, v1123, v1099);
  (v690)(v689, v699, v700);
  v703 = v1105;
  v704 = Item<>.init(_:label:resetBehavior:type:)();
  *(v679 + 216) = v703;
  *(v679 + 224) = v686;
  *(v679 + 192) = v704;
  Group.init(title:footer:_:)();
  v705 = v1061;
  *(v1061 + 22) = v1096;
  *(v705 + 23) = &protocol witness table for Page;
  sub_10000EE0C(v705 + 19);
  Page.init(title:_:)();
  Group.init(title:footer:_:)();
  v706 = swift_allocObject();
  *(v706 + 16) = xmmword_10003FA60;
  v707 = v1034;
  static SettingsBundle.ads.getter();
  v708 = v1055;
  v1099 = v706;
  *(v706 + 56) = v1055;
  *(v706 + 64) = &protocol witness table for SettingsBundle;
  sub_10000EE0C((v706 + 32));
  SettingsBundle.callAsFunction(title:additionalGroups:)();
  (*(v1035 + 8))(v707, v708);
  v1095 = "Page 2 Item Fade Ins";
  v709 = swift_allocObject();
  v1075 = v709;
  *(v709 + 16) = v1092;
  v1097 = (v709 + v1098);
  v710 = swift_allocObject();
  *(v710 + 16) = v1072;
  sub_100037278();
  v712 = v711;
  static Settings.AppConfiguration.source.getter();
  v713 = swift_allocObject();
  *(v713 + 16) = v1122;
  *(v713 + 32) = v1062;
  v714 = v1124;
  (*(v1036 + 104))(v1038, v1124, v1037);
  sub_100037434(&qword_100050618, &type metadata accessor for AppConfigurationSource);

  v715 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v710 + 56) = v712;
  *(v710 + 64) = sub_100037434(&qword_100050620, sub_100037278);
  *(v710 + 32) = v715;
  static Settings.AppConfiguration.ignoreCache.getter();
  v716 = v1120;
  v717 = v1115;
  (v1115)(v1101, v1120, v1118);
  v718 = v1114;
  v719 = v1111;
  v1111(v1119, v714, v1114);
  v720 = v1121;
  v721 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v722 = v1110;
  *(v710 + 96) = v720;
  *(v710 + 104) = v722;
  *(v710 + 72) = v721;
  *&v1071 = static Settings.AppConfiguration.disableABTesting.getter();
  v1061 = "App Configuration";
  v723 = swift_allocObject();
  *(v723 + 16) = v1122;
  v724 = v1062;
  *(v723 + 32) = v1062;
  v717(v1101, v716, v1118);
  v725 = v1124;
  v719(v1119, v1124, v718);
  v726 = v724;

  v727 = v1121;
  v728 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v729 = v1110;
  *(v710 + 136) = v727;
  *(v710 + 144) = v729;
  *(v710 + 112) = v728;
  Group.init(title:footer:_:)();
  *&v1071 = "Disable A/B Testing";
  v1061 = static Settings.AppConfiguration.enableSegmentationOverrides.getter();
  v730 = swift_allocObject();
  *(v730 + 16) = v1072;
  static Settings.AppConfiguration.overrideUserID.getter();
  v731 = swift_allocObject();
  *(v731 + 16) = v1122;
  *(v731 + 32) = v724;
  v732 = v1080;
  v733 = v1069;
  v1069(v1079, v725, v1080);

  v734 = v1085;
  v735 = Item<>.init(_:label:resetBehavior:actions:)();
  v736 = v1073;
  *(v730 + 56) = v734;
  *(v730 + 64) = v736;
  *(v730 + 32) = v735;
  static Settings.AppConfiguration.overrideSegmentSetIDs.getter();
  v737 = swift_allocObject();
  *(v737 + 16) = v1122;
  *(v737 + 32) = v726;
  v738 = v1079;
  v739 = v1124;
  v733(v1079, v1124, v732);
  v740 = v1085;
  v741 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v730 + 96) = v740;
  *(v730 + 104) = v736;
  *(v730 + 72) = v741;
  static Settings.AppConfiguration.additionalSegmentSetIDs.getter();
  v742 = swift_allocObject();
  *(v742 + 16) = v1122;
  *(v742 + 32) = v1062;
  v733(v738, v739, v1080);
  v743 = v1085;
  v744 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v730 + 136) = v743;
  *(v730 + 144) = v736;
  *(v730 + 112) = v744;
  Group.init(title:footer:group:_:)();
  v745 = v1099;
  v1099[12] = v1096;
  v745[13] = &protocol witness table for Page;
  sub_10000EE0C(v745 + 9);
  Page.init(title:_:)();
  v1097 = swift_allocObject();
  *(v1097 + 1) = v1113;
  v746 = swift_allocObject();
  *(v746 + 16) = v1092;
  static Settings.ForYou.Card.systemDetents.getter();
  v747 = v1101;
  v748 = v1118;
  (v1115)(v1101, v1120, v1118);
  v749 = v1111;
  v1111(v1119, v1124, v1114);
  v750 = v1121;
  v751 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v752 = v1110;
  *(v746 + 56) = v750;
  *(v746 + 64) = v752;
  *(v746 + 32) = v751;
  v1095 = static Settings.StockFeed.Card.swipeToDismiss.getter();
  v753 = swift_allocObject();
  *(v753 + 16) = v1122;
  *(v753 + 32) = static SettingActions.restart.getter();
  (v1115)(v747, v1120, v748);
  v749(v1119, v1124, v1114);
  v754 = v1121;
  v755 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v746 + 96) = v754;
  *(v746 + 104) = v752;
  *(v746 + 72) = v755;
  Group.init(title:footer:_:)();
  v756 = v1099;
  v1099[17] = v1096;
  v756[18] = &protocol witness table for Page;
  sub_10000EE0C(v756 + 14);
  Page.init(title:_:)();
  v1097 = "Swipe to Dismiss";
  *(swift_allocObject() + 16) = v1113;
  v1095 = "Compositional List";
  v757 = swift_allocObject();
  *(v757 + 16) = v1113;
  static Settings.CompositionalList.useDiffableDataSource.getter();
  v758 = swift_allocObject();
  *(v758 + 16) = v1122;
  *(v758 + 32) = static SettingActions.restart.getter();
  v759 = v1120;
  v760 = v1115;
  (v1115)(v747, v1120, v1118);
  v1111(v1119, v1124, v1114);
  v761 = v1121;
  v762 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v763 = v1110;
  *(v757 + 56) = v761;
  *(v757 + 64) = v763;
  *(v757 + 32) = v762;
  Group.init(title:footer:_:)();
  v764 = v1099;
  v1099[22] = v1096;
  v764[23] = &protocol witness table for Page;
  sub_10000EE0C(v764 + 19);
  Page.init(title:_:)();
  v1097 = "Use diffable data source";
  *(swift_allocObject() + 16) = v1113;
  v765 = swift_allocObject();
  *(v765 + 16) = v1113;
  static Settings.ComputationalGraph.supplyConfigurationFromUserDefaults.getter();
  v760(v747, v759, v1118);
  v1111(v1119, v1124, v1114);
  v766 = v1121;
  v767 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v768 = v1110;
  *(v765 + 56) = v766;
  *(v765 + 64) = v768;
  *(v765 + 32) = v767;
  Group.init(title:footer:_:)();
  v769 = v1099;
  v1099[27] = v1096;
  v769[28] = &protocol witness table for Page;
  sub_10000EE0C(v769 + 24);
  Page.init(title:_:)();
  v1095 = swift_allocObject();
  *(v1095 + 1) = v1113;
  v1097 = "om User Defaults";
  v1075 = static Settings.Earnings.configOverrides.getter();
  v770 = swift_allocObject();
  *(v770 + 16) = v1092;
  type metadata accessor for Settings.Earnings.ConfigOverrides();
  static Settings.Earnings.ConfigOverrides.earningsStartDate.getter();
  static Item.RangeControlType.slider.getter();
  v771 = v1088;
  v772 = v1124;
  v773 = v1084;
  v774 = v1074;
  v1074(v1088, v1124, v1084);
  v775 = v1091;
  v776 = Item<>.init(_:label:resetBehavior:type:)();
  v777 = v1070;
  *(v770 + 56) = v775;
  *(v770 + 64) = v777;
  *(v770 + 32) = v776;
  static Settings.Earnings.ConfigOverrides.earningsEndDate.getter();
  static Item.RangeControlType.slider.getter();
  v774(v771, v772, v773);
  v778 = v1091;
  v779 = Item<>.init(_:label:resetBehavior:type:)();
  *(v770 + 96) = v778;
  *(v770 + 104) = v777;
  *(v770 + 72) = v779;
  v780 = v1098;
  Group.init(title:footer:group:_:)();
  v781 = v1099;
  v1099[32] = v1096;
  v781[33] = &protocol witness table for Page;
  sub_10000EE0C(v781 + 29);
  Page.init(title:_:)();
  v782 = swift_allocObject();
  v1095 = v782;
  *(v782 + 16) = v1092;
  v1097 = (v782 + v780);
  v783 = swift_allocObject();
  *(v783 + 16) = v1092;
  static Settings.NewsFeedModule.Layout.enableVisualDebugging.getter();
  v784 = v1101;
  v785 = v1120;
  v786 = v1118;
  v787 = v1115;
  (v1115)(v1101, v1120, v1118);
  v788 = v772;
  v789 = v1114;
  v1111(v1119, v788, v1114);
  v790 = v784;
  v791 = v1121;
  v792 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v793 = v1110;
  *(v783 + 56) = v791;
  *(v783 + 64) = v793;
  *(v783 + 32) = v792;
  v1075 = static Settings.NewsFeedModule.Layout.enableLogDebugging.getter();
  v794 = swift_allocObject();
  *(v794 + 16) = v1122;
  *(v794 + 32) = static SettingActions.restart.getter();
  v787(v790, v785, v786);
  v795 = v789;
  v796 = v1111;
  v1111(v1119, v1124, v795);
  v797 = v1121;
  v798 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v783 + 96) = v797;
  *(v783 + 104) = v793;
  *(v783 + 72) = v798;
  Group.init(title:footer:_:)();
  v799 = swift_allocObject();
  *(v799 + 16) = v1050;
  static Settings.NewsFeedModule.Format.ignorePackageCache.getter();
  v800 = swift_allocObject();
  *(v800 + 16) = v1122;
  *(v800 + 32) = static SettingActions.restart.getter();
  (v1115)(v790, v1120, v1118);
  v801 = v1124;
  v796(v1119, v1124, v1114);
  v802 = v1121;
  v803 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v804 = v1110;
  *(v799 + 56) = v802;
  *(v799 + 64) = v804;
  *(v799 + 32) = v803;
  static Settings.NewsFeedModule.Debug.Format.host.getter();
  v805 = v1079;
  v806 = v1080;
  v807 = v1069;
  v1069(v1079, v801, v1080);
  v808 = v1085;
  v809 = Item<>.init(_:label:resetBehavior:actions:)();
  v810 = v1073;
  *(v799 + 96) = v808;
  *(v799 + 104) = v810;
  *(v799 + 72) = v809;
  static Settings.NewsFeedModule.Debug.Format.port.getter();
  v807(v805, v801, v806);
  v811 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v799 + 136) = v808;
  *(v799 + 144) = v810;
  *(v799 + 112) = v811;
  static Settings.NewsFeedModule.Format.loadPackagesFromDebugServerDropbox.getter();
  v1075 = "Debug Server Port";
  v812 = swift_allocObject();
  *(v812 + 16) = v1122;
  *(v812 + 32) = static SettingActions.restart.getter();
  v813 = v1101;
  v814 = v1120;
  v815 = v1115;
  (v1115)(v1101, v1120, v1118);
  v816 = v1111;
  v1111(v1119, v1124, v1114);
  v817 = v1121;
  v818 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v819 = v1110;
  *(v799 + 176) = v817;
  *(v799 + 184) = v819;
  *(v799 + 152) = v818;
  v1075 = static Settings.NewsFeedModule.Format.prefetchWebArchives.getter();
  *&v1071 = "om Debug Server Dropbox";
  v820 = swift_allocObject();
  *(v820 + 16) = v1122;
  *(v820 + 32) = static SettingActions.restart.getter();
  v821 = v1118;
  v815(v813, v814, v1118);
  v816(v1119, v1124, v1114);
  v822 = v1121;
  v823 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v799 + 216) = v822;
  *(v799 + 224) = v819;
  *(v799 + 192) = v823;
  v1075 = static Settings.NewsFeedModule.Format.prefetchDataResources.getter();
  *&v1071 = "ed Archive Resources";
  v824 = swift_allocObject();
  *(v824 + 16) = v1122;
  *(v824 + 32) = static SettingActions.restart.getter();
  v825 = v821;
  v826 = v1115;
  (v1115)(v813, v814, v825);
  v827 = v1124;
  v816(v1119, v1124, v1114);
  v828 = v813;
  v829 = v1121;
  v830 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v799 + 256) = v829;
  *(v799 + 264) = v819;
  v831 = v819;
  *(v799 + 232) = v830;
  Group.init(title:footer:_:)();
  v832 = v1099;
  v1099[37] = v1096;
  v832[38] = &protocol witness table for Page;
  sub_10000EE0C(v832 + 34);
  Page.init(title:_:)();
  v833 = v1098;
  v834 = swift_allocObject();
  v1095 = v834;
  *(v834 + 16) = v1072;
  v1097 = (v834 + v833);
  v835 = swift_allocObject();
  *(v835 + 16) = v1066;
  static Settings.MarketData.freezeQuotes.getter();
  v836 = v1120;
  v837 = v1118;
  v826(v813, v1120, v1118);
  v838 = v1119;
  v839 = v1114;
  v840 = v1111;
  v1111(v1119, v827, v1114);
  v841 = v1121;
  v842 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v835 + 56) = v841;
  *(v835 + 64) = v831;
  *(v835 + 32) = v842;
  v1075 = static Settings.MarketData.freezeQuoteDetails.getter();
  (v1115)(v828, v836, v837);
  v840(v838, v1124, v839);
  v843 = v1121;
  v844 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v835 + 96) = v843;
  *(v835 + 104) = v831;
  *(v835 + 72) = v844;
  v1075 = static Settings.MarketData.freezeSparklines.getter();
  v845 = v1118;
  v846 = v1115;
  (v1115)(v828, v836, v1118);
  v847 = v1124;
  v848 = v1114;
  v1111(v838, v1124, v1114);
  v849 = v828;
  v850 = v1121;
  v851 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v852 = v1110;
  *(v835 + 136) = v850;
  *(v835 + 144) = v852;
  *(v835 + 112) = v851;
  v1075 = static Settings.MarketData.freezeCharts.getter();
  v846(v849, v1120, v845);
  v853 = v848;
  v854 = v1111;
  v1111(v838, v847, v853);
  v855 = v1121;
  v856 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v835 + 176) = v855;
  *(v835 + 184) = v852;
  v857 = v852;
  *(v835 + 152) = v856;
  Group.init(title:footer:_:)();
  v858 = swift_allocObject();
  *(v858 + 16) = v1092;
  static Settings.Refreshing.MarketData.overrideEnabled.getter();
  v859 = v1120;
  v860 = v1118;
  v861 = v1115;
  (v1115)(v849, v1120, v1118);
  v854(v1119, v1124, v1114);
  v862 = v1121;
  v863 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v858 + 56) = v862;
  *(v858 + 64) = v857;
  *(v858 + 32) = v863;
  static Settings.Refreshing.MarketData.overrideInterval.getter();
  v864 = v849;
  v861(v849, v859, v860);
  v865 = v1124;
  (v1104)(v1089, v1124, v1108);
  v866 = v1105;
  v867 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v868 = v1102;
  *(v858 + 96) = v866;
  *(v858 + 104) = v868;
  *(v858 + 72) = v867;
  Group.init(title:footer:_:)();
  v1075 = "Override Interval";
  v869 = swift_allocObject();
  *(v869 + 16) = v1113;
  static Settings.MarketData.simulatePremarketData.getter();
  v861(v849, v1120, v860);
  v870 = v1119;
  v1111(v1119, v865, v1114);
  v871 = v864;
  v872 = v870;
  v873 = v1121;
  v874 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v875 = v1110;
  *(v869 + 56) = v873;
  *(v869 + 64) = v875;
  *(v869 + 32) = v874;
  Group.init(title:footer:_:)();
  v876 = v1099;
  v1099[42] = v1096;
  v876[43] = &protocol witness table for Page;
  sub_10000EE0C(v876 + 39);
  Page.init(title:_:)();
  v876[47] = type metadata accessor for If();
  v876[48] = &protocol witness table for If;
  sub_10000EE0C(v876 + 44);
  If.init(_:_:)();
  v1097 = swift_allocObject();
  *(v1097 + 1) = v1113;
  v877 = swift_allocObject();
  *(v877 + 16) = v1092;
  static Settings.AppLaunch.disableAppLaunchOnboarding.getter();
  v878 = v1120;
  v879 = v1118;
  v880 = v1115;
  (v1115)(v871, v1120, v1118);
  v881 = v865;
  v882 = v1111;
  v1111(v872, v881, v1114);
  v883 = v1121;
  v884 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v885 = v1110;
  *(v877 + 56) = v883;
  *(v877 + 64) = v885;
  *(v877 + 32) = v884;
  v1095 = static Settings.AppLaunch.showPersonalizedAdsOnNextLaunch.getter();
  v880(v871, v878, v879);
  v886 = v1124;
  v882(v1119, v1124, v1114);
  v887 = v1121;
  v888 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v877 + 96) = v887;
  *(v877 + 104) = v885;
  *(v877 + 72) = v888;
  Group.init(title:footer:_:)();
  v889 = v1099;
  v890 = v1096;
  v1099[52] = v1096;
  v889[53] = &protocol witness table for Page;
  sub_10000EE0C(v889 + 49);
  Page.init(title:_:)();
  *(swift_allocObject() + 16) = v1113;
  v891 = swift_allocObject();
  *(v891 + 16) = v1113;
  static Settings.ArticleScoring.useOnlyComputationalGraphScore.getter();
  (v1115)(v871, v1120, v1118);
  v1111(v1119, v886, v1114);
  v892 = v1121;
  v893 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v894 = v1110;
  *(v891 + 56) = v892;
  *(v891 + 64) = v894;
  *(v891 + 32) = v893;
  Group.init(title:footer:_:)();
  v895 = v1099;
  v1099[57] = v890;
  v895[58] = &protocol witness table for Page;
  sub_10000EE0C(v895 + 54);
  Page.init(title:_:)();
  *(swift_allocObject() + 16) = v1113;
  v896 = swift_allocObject();
  *(v896 + 16) = v1113;
  static Settings.ForYouFeedMasthead.premiumSealEnabled.getter();
  v897 = swift_allocObject();
  *(v897 + 16) = v1122;
  *(v897 + 32) = static SettingActions.restart.getter();
  (v1115)(v1101, v1120, v1118);
  v1111(v1119, v1124, v1114);
  v898 = v1121;
  v899 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v900 = v1110;
  *(v896 + 56) = v898;
  *(v896 + 64) = v900;
  *(v896 + 32) = v899;
  Group.init(title:footer:_:)();
  v895[62] = v1096;
  v895[63] = &protocol witness table for Page;
  sub_10000EE0C(v895 + 59);
  Page.init(title:_:)();
  v1097 = "Show Premium Seal";
  *(swift_allocObject() + 16) = v1113;
  v901 = swift_allocObject();
  *(v901 + 16) = v1113;
  static Settings.Engagement.Presentation.disableAllPresentations.getter();
  v902 = swift_allocObject();
  *(v902 + 16) = v1122;
  *(v902 + 32) = static SettingActions.restart.getter();
  (v1115)(v1101, v1120, v1118);
  v903 = v1119;
  v1111(v1119, v1124, v1114);
  v904 = v903;
  v905 = v1121;
  v906 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v907 = v1110;
  *(v901 + 56) = v905;
  *(v901 + 64) = v907;
  *(v901 + 32) = v906;
  Group.init(title:footer:_:)();
  v908 = v895;
  v909 = v1096;
  v908[67] = v1096;
  v908[68] = &protocol witness table for Page;
  sub_10000EE0C(v908 + 64);
  Page.init(title:_:)();
  *(swift_allocObject() + 16) = v1113;
  v910 = swift_allocObject();
  *(v910 + 16) = v1113;
  static Settings.PrivateData.simulateNewsSyncingEnabled.getter();
  v911 = swift_allocObject();
  *(v911 + 16) = v1122;
  *(v911 + 32) = static SettingActions.restart.getter();
  (v1115)(v1101, v1120, v1118);
  v912 = v904;
  v913 = v1124;
  v1111(v912, v1124, v1114);
  v914 = v1121;
  v915 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v910 + 56) = v914;
  *(v910 + 64) = v907;
  *(v910 + 32) = v915;
  v916 = v1098;
  Group.init(title:footer:_:)();
  v917 = v1099;
  v1099[72] = v909;
  v917[73] = &protocol witness table for Page;
  sub_10000EE0C(v917 + 69);
  Page.init(title:_:)();
  sub_10003730C();
  v919 = v918;
  static Settings.DataSource.stocksDataServiceEnabled.getter();
  v920 = swift_allocObject();
  *(v920 + 16) = v1122;
  *(v920 + 32) = static SettingActions.restart.getter();
  v921 = v913;
  (*(v1039 + 104))(v1041, v913, v1040);
  sub_100037434(&qword_100050630, &type metadata accessor for StocksDataServiceEnablement);
  v922 = Item<>.init(_:label:resetBehavior:actions:)();
  v917[77] = v919;
  v917[78] = sub_100037434(&qword_100050638, sub_10003730C);
  v917[74] = v922;
  v923 = swift_allocObject();
  *&v1122 = v923;
  *(v923 + 16) = v1092;
  v1109 = v923 + v916;
  v924 = swift_allocObject();
  *(v924 + 16) = v1072;
  v1107 = static Settings.Widget.demoMode.getter();
  v1097 = "Stocks Data Service";
  v925 = v1101;
  v926 = v1120;
  v927 = v1118;
  v928 = v1115;
  (v1115)(v1101, v1120, v1118);
  v929 = v1114;
  v930 = v1111;
  v1111(v1119, v921, v1114);
  v931 = v925;
  v932 = v1121;
  v933 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v934 = v1110;
  *(v924 + 56) = v932;
  *(v924 + 64) = v934;
  *(v924 + 32) = v933;
  static Settings.Widget.dumpEntries.getter();
  v928(v931, v926, v927);
  v935 = v1124;
  v930(v1119, v1124, v929);
  v936 = v1121;
  v937 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v924 + 96) = v936;
  *(v924 + 104) = v934;
  *(v924 + 72) = v937;
  static Settings.Widget.entryInterval.getter();
  v928(v931, v1120, v1118);
  (v1104)(v1089, v935, v1108);
  v938 = v1105;
  v939 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v940 = v1102;
  *(v924 + 136) = v938;
  *(v924 + 144) = v940;
  *(v924 + 112) = v939;
  Group.init(title:footer:_:)();
  v1107 = " between entries";
  v941 = swift_allocObject();
  *(v941 + 16) = v1092;
  static Settings.Features.widgetSpecificConfig.getter();
  v1067(v1063, v935, v1082);
  v942 = v1093;
  v943 = Item<>.init(_:label:resetBehavior:actions:)();
  v944 = v1077;
  *(v941 + 56) = v942;
  *(v941 + 64) = v944;
  *(v941 + 32) = v943;
  static Settings.News.overrideWidgetSectionConfigID.getter();
  v1069(v1079, v935, v1080);
  v945 = v1085;
  v946 = Item<>.init(_:label:resetBehavior:actions:)();
  v947 = v1073;
  *(v941 + 96) = v945;
  *(v941 + 104) = v947;
  *(v941 + 72) = v946;
  Group.init(title:footer:_:)();
  v948 = v1096;
  v949 = v1099;
  v1099[82] = v1096;
  v949[83] = &protocol witness table for Page;
  sub_10000EE0C(v949 + 79);
  Page.init(title:_:)();
  v949[87] = v948;
  v949[88] = &protocol witness table for Page;
  sub_10000EE0C(v949 + 84);
  Page.init(title:_:)();
  v950 = v1098;
  v951 = swift_allocObject();
  v1109 = v951;
  *(v951 + 16) = v1072;
  *&v1122 = v951 + v950;
  v952 = swift_allocObject();
  *(v952 + 16) = v1092;
  v1107 = static Settings.Tips.savedViaFeed.getter();
  v953 = v1101;
  v954 = v1120;
  v955 = v1118;
  v956 = v1115;
  (v1115)(v1101, v1120, v1118);
  v957 = v935;
  v958 = v1114;
  v959 = v1111;
  v1111(v1119, v957, v1114);
  v960 = v1121;
  v961 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v962 = v1110;
  *(v952 + 56) = v960;
  *(v952 + 64) = v962;
  *(v952 + 32) = v961;
  static Settings.Tips.savedViaArticleViewer.getter();
  v956(v953, v954, v955);
  v963 = v1124;
  v959(v1119, v1124, v958);
  v964 = v1121;
  v965 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v966 = v1110;
  *(v952 + 96) = v964;
  *(v952 + 104) = v966;
  *(v952 + 72) = v965;
  Group.init(title:footer:_:)();
  v1107 = "Widget config ID";
  v1097 = "Play Later In News";
  v967 = swift_allocObject();
  *(v967 + 16) = v1092;
  v1095 = static Settings.Tips.audioQueuedViaFeed.getter();
  v968 = v1115;
  (v1115)(v953, v954, v955);
  v969 = v958;
  v970 = v1111;
  v1111(v1119, v963, v969);
  v971 = v1121;
  v972 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v967 + 56) = v971;
  *(v967 + 64) = v966;
  *(v967 + 32) = v972;
  v1095 = static Settings.Tips.audioQueuedViaArticleViewer.getter();
  v968(v953, v954, v955);
  v973 = v1124;
  v970(v1119, v1124, v1114);
  v974 = v1121;
  v975 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v967 + 96) = v974;
  *(v967 + 104) = v966;
  *(v967 + 72) = v975;
  Group.init(title:footer:_:)();
  v1107 = "ore, and won't be shown again.";
  v1097 = static Settings.Tips.Earnings.configOverrides.getter();
  v976 = swift_allocObject();
  *(v976 + 16) = v1092;
  type metadata accessor for Settings.Tips.Earnings.ConfigOverrides();
  static Settings.Tips.Earnings.ConfigOverrides.tipMaxPresentedCount.getter();
  v977 = v1057;
  *v1057 = 1065353216;
  (*(v1043 + 104))(v977, v1123, v1044);
  v1074(v1088, v973, v1084);
  v978 = v1091;
  v979 = Item<>.init(_:label:resetBehavior:type:)();
  v980 = v1070;
  *(v976 + 56) = v978;
  *(v976 + 64) = v980;
  *(v976 + 32) = v979;
  static Settings.Tips.Earnings.ConfigOverrides.tipFrequencyInterval.getter();
  v981 = v1120;
  v982 = v1118;
  v983 = v1115;
  (v1115)(v953, v1120, v1118);
  (v1104)(v1089, v973, v1108);
  v984 = v1105;
  v985 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v986 = v1102;
  *(v976 + 96) = v984;
  *(v976 + 104) = v986;
  *(v976 + 72) = v985;
  Group.init(title:footer:group:_:)();
  v987 = v1096;
  v988 = v1099;
  v1099[92] = v1096;
  v988[93] = &protocol witness table for Page;
  sub_10000EE0C(v988 + 89);
  Page.init(title:_:)();
  v1123 = "Tip Frequency Interval";
  *(swift_allocObject() + 16) = v1113;
  v989 = swift_allocObject();
  *(v989 + 16) = v1113;
  static Settings.UserEventHistory.verboseLoggingEnabled.getter();
  v983(v1101, v981, v982);
  v990 = v1124;
  v1111(v1119, v1124, v1114);
  v991 = v1121;
  v992 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v993 = v1110;
  *(v989 + 56) = v991;
  *(v989 + 64) = v993;
  *(v989 + 32) = v992;
  Group.init(title:footer:_:)();
  v994 = v1099;
  v1099[97] = v987;
  v995 = v987;
  v994[98] = &protocol witness table for Page;
  v996 = v994;
  sub_10000EE0C(v994 + 94);
  Page.init(title:_:)();
  *(swift_allocObject() + 16) = v1113;
  v997 = swift_allocObject();
  *(v997 + 16) = v1113;
  sub_1000373A0();
  v999 = v998;
  static Settings.Watchlist.kvsCleanupPermission.getter();
  (*(v1045 + 104))(v1014, v990, v1046);
  sub_100037434(&qword_100050648, &type metadata accessor for KVSCleanupPermission);
  v1000 = Item<>.init(_:label:resetBehavior:actions:)();
  *(v997 + 56) = v999;
  *(v997 + 64) = sub_100037434(&unk_100050650, sub_1000373A0);
  *(v997 + 32) = v1000;
  Group.init(title:footer:_:)();
  v996[102] = v995;
  v996[103] = &protocol witness table for Page;
  sub_10000EE0C(v996 + 99);
  Page.init(title:_:)();
  Group.init(title:footer:_:)();
  v1001 = swift_allocObject();
  *(v1001 + 16) = v1113;
  static Settings.Radars.radar50783266.getter();
  (v1115)(v1101, v1120, v1118);
  v1111(v1119, v990, v1114);
  v1002 = v1121;
  v1003 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  v1004 = v1110;
  *(v1001 + 56) = v1002;
  *(v1001 + 64) = v1004;
  *(v1001 + 32) = v1003;
  Group.init(title:footer:_:)();
  swift_unknownObjectRelease();

  (*(v1042 + 8))(v1064, v1016);
  *v1015 = v1051;
  return sub_10000461C(v1129);
}

BOOL sub_1000360C0()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 1;
  }

  v4 = [v0 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return v5 == 5;
}

uint64_t sub_100036168@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  sub_100036AFC(0, &qword_100050520, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for Item.ResetBehavior);
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = *(v25 + 64);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  v24 = type metadata accessor for ChangeBehavior();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v24);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005650(0, &qword_100050530, &type metadata accessor for _ContiguousArrayStorage);
  v9 = *(type metadata accessor for Group() - 8);
  v10 = *(v9 + 72);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v20 = xmmword_10003EDF0;
  *(v11 + 16) = xmmword_10003EDF0;
  v21 = "Masthead in detail pane";
  v22 = "User Event History";
  sub_1000369D8();
  v12 = swift_allocObject();
  *(v12 + 16) = v20;
  sub_100036AFC(0, &qword_100050538, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for Item);
  v14 = v13;
  static Settings.ForYouFeedMasthead.mastheadEnabled.getter();
  sub_100036A44();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10003FA10;
  type metadata accessor for SettingAction();
  *(v15 + 32) = static SettingActions.restart.getter();
  (*(v5 + 104))(v8, enum case for ChangeBehavior.default(_:), v24);
  (*(v25 + 104))(v4, enum case for Item.ResetBehavior.reset<A>(_:), v26);
  v16 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)();
  *(v12 + 56) = v14;
  *(v12 + 64) = sub_100036A98(&qword_100050548, &qword_100050538, &type metadata for Bool, &protocol witness table for Bool);
  *(v12 + 32) = v16;
  Group.init(title:footer:_:)();
  v17 = type metadata accessor for Page();
  v18 = v27;
  v27[3] = v17;
  v18[4] = &protocol witness table for Page;
  sub_10000EE0C(v18);
  return Page.init(title:_:)();
}

void sub_100036538()
{
  if (!qword_100050470)
  {
    type metadata accessor for KVSCleanupPermission();
    sub_100037434(&qword_100050478, &type metadata accessor for KVSCleanupPermission);
    v0 = type metadata accessor for Item.ResetBehavior();
    if (!v1)
    {
      atomic_store(v0, &qword_100050470);
    }
  }
}

void sub_1000365CC()
{
  if (!qword_100050480)
  {
    type metadata accessor for StocksDataServiceEnablement();
    sub_100037434(&qword_100050488, &type metadata accessor for StocksDataServiceEnablement);
    v0 = type metadata accessor for Item.ResetBehavior();
    if (!v1)
    {
      atomic_store(v0, &qword_100050480);
    }
  }
}

void sub_100036660()
{
  if (!qword_100050498)
  {
    type metadata accessor for AppConfigurationSource();
    sub_100037434(&qword_1000504A0, &type metadata accessor for AppConfigurationSource);
    v0 = type metadata accessor for Item.ResetBehavior();
    if (!v1)
    {
      atomic_store(v0, &qword_100050498);
    }
  }
}

void sub_1000366F4()
{
  if (!qword_1000504B0)
  {
    type metadata accessor for FeedAutoRefreshStrategy();
    sub_100037434(&qword_1000504B8, &type metadata accessor for FeedAutoRefreshStrategy);
    v0 = type metadata accessor for Item.ResetBehavior();
    if (!v1)
    {
      atomic_store(v0, &qword_1000504B0);
    }
  }
}

void sub_100036788()
{
  if (!qword_1000504C8)
  {
    type metadata accessor for NewsEnvironment();
    sub_100037434(&qword_1000504D0, &type metadata accessor for NewsEnvironment);
    v0 = type metadata accessor for Item.ResetBehavior();
    if (!v1)
    {
      atomic_store(v0, &qword_1000504C8);
    }
  }
}

void sub_10003681C()
{
  if (!qword_1000504D8)
  {
    type metadata accessor for NewsProvider();
    sub_100037434(&qword_1000504E0, &type metadata accessor for NewsProvider);
    v0 = type metadata accessor for Item.ResetBehavior();
    if (!v1)
    {
      atomic_store(v0, &qword_1000504D8);
    }
  }
}

void sub_1000368B0()
{
  if (!qword_1000504E8)
  {
    type metadata accessor for Settings.Container.TestSuite();
    sub_100037434(&qword_1000504F0, &type metadata accessor for Settings.Container.TestSuite);
    v0 = type metadata accessor for Item.ResetBehavior();
    if (!v1)
    {
      atomic_store(v0, &qword_1000504E8);
    }
  }
}

void sub_100036944()
{
  if (!qword_1000504F8)
  {
    type metadata accessor for FeatureState();
    sub_100037434(&qword_100050500, &type metadata accessor for FeatureState);
    v0 = type metadata accessor for Item.ResetBehavior();
    if (!v1)
    {
      atomic_store(v0, &qword_1000504F8);
    }
  }
}

void sub_1000369D8()
{
  if (!qword_100050390)
  {
    sub_1000036DC(255, &qword_100050398);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_100050390);
    }
  }
}

void sub_100036A44()
{
  if (!qword_100050540)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_100050540);
    }
  }
}

uint64_t sub_100036A98(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100036AFC(255, a2, a3, a4, &type metadata accessor for Item);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100036AFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_100036B50()
{
  if (!qword_100050580)
  {
    type metadata accessor for FeatureState();
    sub_100037434(&qword_100050500, &type metadata accessor for FeatureState);
    v0 = type metadata accessor for Item();
    if (!v1)
    {
      atomic_store(v0, &qword_100050580);
    }
  }
}

void *sub_100036BEC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v35 = type metadata accessor for DenylistDescriptor();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v28 = v3;
    v44 = &_swiftEmptyArrayStorage;
    sub_100029980(0, v8, 0);
    v10 = -1 << *(a1 + 32);
    v39 = a1 + 56;
    v40 = v44;
    result = _HashTable.startBucket.getter();
    v11 = result;
    v12 = 0;
    v32 = v5 + 8;
    v33 = v5 + 16;
    v29 = a1 + 64;
    v30 = v8;
    v31 = v5;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v39 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v16 = v34;
      v17 = v35;
      (*(v5 + 16))(v34, *(a1 + 48) + *(v5 + 72) * v11, v35);
      v42 = type metadata accessor for DebugItem();
      v43 = sub_100037434(&qword_100050598, &type metadata accessor for DebugItem);
      sub_10000EE0C(&v41);
      v36(v16);
      (*(v5 + 8))(v16, v17);
      v18 = v40;
      v44 = v40;
      v20 = v40[2];
      v19 = v40[3];
      if (v20 >= v19 >> 1)
      {
        sub_100029980((v19 > 1), v20 + 1, 1);
        v18 = v44;
      }

      v18[2] = v20 + 1;
      v40 = v18;
      result = sub_1000061A0(&v41, &v18[5 * v20 + 4]);
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v21 = *(v39 + 8 * v15);
      if ((v21 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v11 & 0x3F));
      if (v22)
      {
        v13 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v30;
        v5 = v31;
      }

      else
      {
        v23 = v15 << 6;
        v24 = v15 + 1;
        v14 = v30;
        v25 = (v29 + 8 * v15);
        v5 = v31;
        while (v24 < (v13 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_10000CD74(v11, v38, 0);
            v13 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_10000CD74(v11, v38, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_100036F50()
{
  if (!qword_1000505A0)
  {
    type metadata accessor for Settings.Container.TestSuite();
    sub_100037434(&qword_1000504F0, &type metadata accessor for Settings.Container.TestSuite);
    v0 = type metadata accessor for Item();
    if (!v1)
    {
      atomic_store(v0, &qword_1000505A0);
    }
  }
}

void sub_100036FE4()
{
  if (!qword_1000505B8)
  {
    type metadata accessor for NewsProvider();
    sub_100037434(&qword_1000504E0, &type metadata accessor for NewsProvider);
    v0 = type metadata accessor for Item();
    if (!v1)
    {
      atomic_store(v0, &qword_1000505B8);
    }
  }
}

void sub_100037078()
{
  if (!qword_1000505D0)
  {
    type metadata accessor for NewsEnvironment();
    sub_100037434(&qword_1000504D0, &type metadata accessor for NewsEnvironment);
    v0 = type metadata accessor for Item();
    if (!v1)
    {
      atomic_store(v0, &qword_1000505D0);
    }
  }
}

void sub_10003710C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_10001CDC8();
    v7 = a3(a1, &type metadata for Storefront, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_100037170()
{
  result = qword_1000505F0;
  if (!qword_1000505F0)
  {
    sub_10003710C(255, &qword_1000505E8, &type metadata accessor for Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000505F0);
  }

  return result;
}

void sub_1000371E4()
{
  if (!qword_1000505F8)
  {
    type metadata accessor for FeedAutoRefreshStrategy();
    sub_100037434(&qword_1000504B8, &type metadata accessor for FeedAutoRefreshStrategy);
    v0 = type metadata accessor for Item();
    if (!v1)
    {
      atomic_store(v0, &qword_1000505F8);
    }
  }
}

void sub_100037278()
{
  if (!qword_100050610)
  {
    type metadata accessor for AppConfigurationSource();
    sub_100037434(&qword_1000504A0, &type metadata accessor for AppConfigurationSource);
    v0 = type metadata accessor for Item();
    if (!v1)
    {
      atomic_store(v0, &qword_100050610);
    }
  }
}

void sub_10003730C()
{
  if (!qword_100050628)
  {
    type metadata accessor for StocksDataServiceEnablement();
    sub_100037434(&qword_100050488, &type metadata accessor for StocksDataServiceEnablement);
    v0 = type metadata accessor for Item();
    if (!v1)
    {
      atomic_store(v0, &qword_100050628);
    }
  }
}

void sub_1000373A0()
{
  if (!qword_100050640)
  {
    type metadata accessor for KVSCleanupPermission();
    sub_100037434(&qword_100050478, &type metadata accessor for KVSCleanupPermission);
    v0 = type metadata accessor for Item();
    if (!v1)
    {
      atomic_store(v0, &qword_100050640);
    }
  }
}

uint64_t sub_100037434(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10003747C()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100037658()
{
  v21 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);

  v5 = *(v0 + 152);
  os_unfair_lock_lock((v1 + 20));
  v6 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v6)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEA00000000007365;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = 0x6572756C696166;
    if (v5)
    {
      v10 = 0x73736563637573;
    }

    if (v6)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x676E616863206F6ELL;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    v14 = sub_1000105E4(v11, v7, &v20);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Finished updating today data with result: %{public}s", v12, 0xCu);
    sub_10000461C(v13);
  }

  else
  {
  }

  v16 = *(v0 + 112);
  v15 = *(v0 + 120);
  if ((v5 & v6) == 1)
  {
    v17 = *(*(v0 + 64) + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_didWriteTodayDataSubject);
    sub_100007184(0, &qword_10004FA28, &type metadata for () + 8, &type metadata accessor for PassthroughSubject);
    sub_100037F88();
    Subject<>.send()();
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000378D4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100037A10, v5, v4);
}

uint64_t sub_100037A10()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  v2(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_100037A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100011158();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100037E6C(a3, v12);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100011230(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100011230(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100011230(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_100037D34(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler);
  if (result)
  {
    return [result tickleWithQualityOfService:9 data:1 completion:0];
  }

  __break(1u);
  return result;
}

uint64_t sub_100037DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainActor();
  v7 = v3;
  return sub_100010BF8(a3, &v6);
}

uint64_t sub_100037E6C(uint64_t a1, uint64_t a2)
{
  sub_100011158();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037ED0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100012308;

  return sub_100011344(a1, v5);
}

unint64_t sub_100037F88()
{
  result = qword_1000507A0;
  if (!qword_1000507A0)
  {
    sub_100007184(255, &qword_10004FA28, &type metadata for () + 8, &type metadata accessor for PassthroughSubject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000507A0);
  }

  return result;
}

__n128 sub_100038040(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10003806C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 120))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000380C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t AppDependencyManager.add<A>(key:dependency:)()
{
  return AppDependencyManager.add<A>(key:dependency:)();
}

{
  return AppDependencyManager.add<A>(key:dependency:)();
}

uint64_t Assembly.init()()
{
  return Assembly.init()();
}

{
  return Assembly.init()();
}

{
  return Assembly.init()();
}

{
  return Assembly.init()();
}

uint64_t type metadata accessor for Assembly()
{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

uint64_t Item<>.init(_:label:resetBehavior:actions:)()
{
  return Item<>.init(_:label:resetBehavior:actions:)();
}

{
  return Item<>.init(_:label:resetBehavior:actions:)();
}

uint64_t dispatch thunk of EventManager.trigger(on:behavior:block:)()
{
  return dispatch thunk of EventManager.trigger(on:behavior:block:)();
}

{
  return dispatch thunk of EventManager.trigger(on:behavior:block:)();
}

uint64_t dispatch thunk of ResolverType.resolve<A>(_:)()
{
  return dispatch thunk of ResolverType.resolve<A>(_:)();
}

{
  return dispatch thunk of ResolverType.resolve<A>(_:)();
}

uint64_t type metadata accessor for FrameworkAssembly()
{
  return type metadata accessor for FrameworkAssembly();
}

{
  return type metadata accessor for FrameworkAssembly();
}

{
  return type metadata accessor for FrameworkAssembly();
}

uint64_t RegistrationContainer.register<A>(_:name:factory:)()
{
  return RegistrationContainer.register<A>(_:name:factory:)();
}

{
  return RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)()
{
  return dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
}

{
  return dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
}

uint64_t Promise.then<A>(on:closure:)()
{
  return Promise.then<A>(on:closure:)();
}

{
  return Promise.then<A>(on:closure:)();
}