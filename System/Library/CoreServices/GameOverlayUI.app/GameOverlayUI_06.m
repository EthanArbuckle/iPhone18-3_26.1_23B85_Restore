unint64_t sub_1000BA694(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000BA7FC(a5, a6);
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

uint64_t sub_1000BA7A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_1000BA7FC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000BA848(a1, a2);
  sub_1000BA978(&off_1001205C8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000BA848(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000BAA64(v5, 0);
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
        v7 = sub_1000BAA64(v10, 0);
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

uint64_t sub_1000BA978(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000BAAD8(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000BAA64(uint64_t a1, uint64_t a2)
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

  sub_100002B38(&qword_100131828, &unk_1000EE200);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000BAAD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002B38(&qword_100131828, &unk_1000EE200);
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

void *sub_1000BABF8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1000BAC3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000BAC8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _TaskModifier();
  type metadata accessor for ModifiedContent();
  sub_1000BAC3C(&qword_10012CC50, &type metadata accessor for _TaskModifier);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_100005144(&qword_100131778, &qword_1000EE1A0);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for MediaArtwork.URLImageProtocol();
  sub_100005144(&qword_10012E490, &qword_1000EA900);
  sub_1000BAC3C(&qword_100131780, &type metadata accessor for MediaArtwork.URLImageProtocol);
  sub_1000057D8(&qword_100131788, &qword_10012E490, &qword_1000EA900);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_100005144(&qword_100131790, &qword_1000EE1A8);
  sub_100005144(&qword_100131798, &qword_1000EE1B0);
  swift_getOpaqueTypeConformance2();
  sub_1000B973C();
  sub_1000B97F8();
  type metadata accessor for Jet();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_100005144(&qword_100131770, &qword_1000EE198);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ContactAvatarProtocol();
  sub_1000BAC3C(&qword_1001317C0, &type metadata accessor for ContactAvatarProtocol);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_100005144(&qword_100131768, &qword_1000EE190);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for AppIconProtocol();
  sub_1000BAC3C(&qword_1001317C8, &type metadata accessor for AppIconProtocol);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_100005144(&qword_100131760, &qword_1000EE188);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for PlayerMonogramProtocol();
  sub_1000BAC3C(&qword_1001317D0, &type metadata accessor for PlayerMonogramProtocol);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for MediaArtwork.BundleImageProtocol();
  swift_getOpaqueTypeConformance2();
  sub_1000BAC3C(&qword_1001317D8, &type metadata accessor for MediaArtwork.BundleImageProtocol);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for GameOverlayUIFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GameOverlayUIFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000BB39C()
{
  result = qword_100131840;
  if (!qword_100131840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131840);
  }

  return result;
}

const char *sub_1000BB3F0()
{
  if ((*v0 & 0xFE) == 2)
  {
    return "GameCenter";
  }

  else
  {
    return "gseui";
  }
}

const char *sub_1000BB424()
{
  v1 = *v0;
  v2 = "gameoverlayui_friend_inbox_banner";
  v3 = "ma1h52";
  if (v1 != 3)
  {
    v3 = "end_active_call_tab_behavior";
  }

  if (v1 < 2)
  {
    v2 = "de7bbd8e";
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000BB484@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000BC3B4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult;
  swift_beginAccess();
  return sub_1000BC2CC(v5 + v3, a1);
}

uint64_t sub_1000BB51C()
{
  v0 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v21 - v2;
  v4 = type metadata accessor for ASKBootstrapV2.TargetType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002B38(&qword_10012E660, &unk_1000ED030);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v21 - v11;
  v13 = type metadata accessor for Bag.Profile();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  Bag.Profile.init(name:version:)();
  if (qword_10012CC30 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for BagOfflinePolicy();
  v16 = sub_100011F80(v15, qword_100131848);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v12, v16, v15);
  (*(v17 + 56))(v12, 0, 1, v15);
  v21[8] = &type metadata for ModernAppStateControllerFactory;
  v21[9] = sub_1000BC090();
  (*(v5 + 104))(v8, enum case for ASKBootstrapV2.TargetType.app(_:), v4);
  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);

  v19 = static Locale.preferredLanguages.getter();
  v21[3] = &type metadata for DeviceLanguageSource;
  v21[4] = sub_1000BC278();
  v21[0] = v19;
  return Bootstrap.init(bagProfile:bagOfflinePolicy:appStateControllerFactory:targetType:objectGraphName:tokenServiceClient:processTreatmentNamespace:prerequisites:jetpackURL:languageSource:)();
}

uint64_t sub_1000BB898()
{
  v0 = type metadata accessor for BagOfflinePolicy();
  sub_10006D8E0(v0, qword_100131848);
  sub_100011F80(v0, qword_100131848);
  return BagOfflinePolicy.init(defaultMaxAge:offlineMaxAge:)();
}

uint64_t sub_1000BB8FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000BB91C, 0, 0);
}

uint64_t sub_1000BB91C()
{
  v1 = *(v0[3] + 16);
  v2 = async function pointer to makeGamesPrerequisites(objectGraph:jsNativeIntentDispatcher:)[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1000BB9C0;
  v4 = v0[2];

  return makeGamesPrerequisites(objectGraph:jsNativeIntentDispatcher:)(v4, v1);
}

uint64_t sub_1000BB9C0(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1000BBAC0(uint64_t a1)
{
  v3 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for BootstrapResult();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult;
  swift_beginAccess();
  sub_1000BC33C(a1, v1 + v12);
  swift_endAccess();
  swift_getKeyPath();
  v16 = v1;
  sub_1000BC3B4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000BC2CC(v1 + v12, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000BBDEC(a1);
    return sub_1000BBDEC(v6);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + 16);
    BootstrapResult.objectGraph.getter();
    JSNativeIntentDispatcher.objectGraph.setter();
    sub_1000BBDEC(a1);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1000BBCD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v8 - v5;
  sub_1000BC2CC(a2, &v8 - v5);
  return sub_1000BBAC0(v6);
}

uint64_t OverlayBootstrap.deinit()
{
  sub_1000BBDEC(v0 + OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult);
  v1 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000BBDEC(uint64_t a1)
{
  v2 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OverlayBootstrap.__deallocating_deinit()
{
  sub_1000BBDEC(v0 + OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult);
  v1 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OverlayBootstrap()
{
  result = qword_100131898;
  if (!qword_100131898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BBF5C()
{
  sub_1000BC038();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000BC038()
{
  if (!qword_1001318A8)
  {
    type metadata accessor for BootstrapResult();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001318A8);
    }
  }
}

unint64_t sub_1000BC090()
{
  result = qword_100131938;
  if (!qword_100131938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131938);
  }

  return result;
}

uint64_t sub_1000BC0E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000BC17C;

  return sub_1000BB8FC(a1, v1);
}

uint64_t sub_1000BC17C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_1000BC278()
{
  result = qword_100131940;
  if (!qword_100131940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131940);
  }

  return result;
}

uint64_t sub_1000BC2CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BC33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BC3B4()
{
  result = qword_10012E450;
  if (!qword_10012E450)
  {
    type metadata accessor for OverlayBootstrap();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E450);
  }

  return result;
}

uint64_t sub_1000BC40C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001DLL;
  v3 = &off_1000E6A60;
  if (a1 <= 3u)
  {
    v4 = "action:in-game-banner-overlay";
    v5 = 0xD000000000000018;
    if (a1 != 2)
    {
      v5 = 0xD00000000000001ALL;
      v4 = "action:dashboard-overlay";
    }

    v8 = "action:access-point-overlay";
    if (a1)
    {
      v9 = 0xD00000000000001DLL;
    }

    else
    {
      v9 = 0xD00000000000001BLL;
    }

    if (!a1)
    {
      v8 = &off_1000E6A60;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = "action:authentication-overlay";
    v5 = 0xD000000000000019;
    v6 = "action:onboarding-overlay";
    v7 = 0xD000000000000028;
    if (a1 != 7)
    {
      v7 = 0xD00000000000001FLL;
      v6 = "sharing-reprompt-overlay";
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "action:multiplayer-overlay";
    v9 = 0xD000000000000025;
    if (a1 != 4)
    {
      v9 = 0xD00000000000001DLL;
      v8 = "d-multiplayer-overlay";
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "action:authentication-overlay";
        v2 = 0xD000000000000019;
      }

      else if (a2 == 7)
      {
        v3 = "action:onboarding-overlay";
        v2 = 0xD000000000000028;
      }

      else
      {
        v3 = "sharing-reprompt-overlay";
        v2 = 0xD00000000000001FLL;
      }

      goto LABEL_41;
    }

    if (a2 == 4)
    {
      v3 = "action:multiplayer-overlay";
      v2 = 0xD000000000000025;
      goto LABEL_41;
    }

    v13 = "action:authentication-overlay";
LABEL_40:
    v3 = (v13 - 32);
    goto LABEL_41;
  }

  if (a2 <= 1u)
  {
    if (!a2)
    {
      v2 = 0xD00000000000001BLL;
      goto LABEL_41;
    }

    v13 = "action:in-game-banner-overlay";
    goto LABEL_40;
  }

  if (a2 == 2)
  {
    v3 = "action:in-game-banner-overlay";
    v2 = 0xD000000000000018;
  }

  else
  {
    v3 = "action:dashboard-overlay";
    v2 = 0xD00000000000001ALL;
  }

LABEL_41:
  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

uint64_t sub_1000BC63C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v4 = type metadata accessor for AccessPointAnchoring();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1000BC734()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

void sub_1000BC7F8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = a1 & 1;

    sub_1000BDCB4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000BC948()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

void *sub_1000BC9F4()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame);
  v2 = v1;
  return v1;
}

uint64_t sub_1000BCACC()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);
}

uint64_t sub_1000BCB74(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000BCC80(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessPointAnchoring();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  sub_1000C0BA8(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (v10)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v9, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v14[-2] = v2;
    v14[-1] = a1;
    v14[1] = v2;
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v11)(a1, v4);
}

unint64_t sub_1000BCF00(unsigned __int8 a1)
{
  v1 = 0xD00000000000001DLL;
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000018;
    if (a1 != 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    if (!a1)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    v3 = 0xD000000000000028;
    if (a1 != 7)
    {
      v3 = 0xD00000000000001FLL;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 == 4)
    {
      v1 = 0xD000000000000025;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_1000BD00C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000BD05C();
  return Hasher._finalize()();
}

uint64_t sub_1000BD05C()
{
  String.hash(into:)();
}

Swift::Int sub_1000BD188()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000BD05C();
  return Hasher._finalize()();
}

unint64_t sub_1000BD1CC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C19BC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000BD1FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000BCF00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000BD228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1000BD2D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000BD314(v2, v3);
}

uint64_t sub_1000BD314(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1000BD484(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v5 = type metadata accessor for AccessPointAnchoring();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

id sub_1000BD540@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame);
  *a2 = v4;

  return v4;
}

void sub_1000BD600(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000BD630(v2);
}

void sub_1000BD630(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame;
  v5 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10003F788(0, &qword_10012E050, GKGame_ptr);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1000BD840@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_1000BD8F4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000BD924(v2);
}

void sub_1000BD924(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_10003F788(0, &qword_100130F00, SBSUIRemoteAlertScene_ptr);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1000BDAE8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1000BDBB0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_1000BDCB4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard;
  v3 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100011F80(v4, qword_100135C88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "RemoteAlertAccessPointContext: isShowingDashboard is %{BOOL}d", v7, 8u);
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + v2) & 1) == 0)
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "RemoteAlertAccessPointContext: Setting dismissDashboardRequested to false.", v10, 2u);
    }

    if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
    }
  }
}

uint64_t sub_1000BDF80@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1000BE034()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100011F80(v3, qword_100135C88);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "RemoteAlertAccessPointContext: requestDismissDashboard called. Is the Access Point expanded to show the dashboard? %{BOOL}d", v6, 8u);
  }

  if (v2)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "RemoteAlertAccessPointContext: requestDismissDashboard called. Setting dismissDashboardRequested to true.", v9, 2u);
    }

    if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) == 1)
    {
      *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return v2;
}

uint64_t sub_1000BE2C8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  v4 = type metadata accessor for AccessPointAnchoring();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler + 8);
  sub_10006C574(*(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler));
  swift_unknownObjectWeakDestroy();
  sub_1000C1B54(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_remoteTarget);
  v6 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
  v7 = type metadata accessor for AccessPointUseCase();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue);

  v9 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext___observationRegistrar;
  v10 = type metadata accessor for ObservationRegistrar();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t sub_1000BE40C()
{
  sub_1000BE2C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000BE48C()
{
  result = type metadata accessor for AccessPointAnchoring();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for AccessPointUseCase();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1000BE5F4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_1000BE6A4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t sub_1000BE6D8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested);
}

uint64_t sub_1000BE7A8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_1000BE858@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1000BE904(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1000BEA74()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_1000BEB14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1000BEBBC(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000BECCC()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1000BED8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  *(v3 + 40) = v11;
  *(v3 + 48) = v13;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  v14 = *(v3 + 24);

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = 0;
  return v3;
}

uint64_t sub_1000BEEAC()
{
  v1 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "RemoteAlertDashboardContext: requestDismissDashboard called. Setting dismissDashboardRequested to true.", v5, 2u);
  }

  if (*(v1 + 32) == 1)
  {
    *(v1 + 32) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return 1;
}

uint64_t sub_1000BF078()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 6);

  sub_1000C1B54((v0 + 56));
  v3 = OBJC_IVAR____TtC13GameOverlayUI27RemoteAlertDashboardContext___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000BF154()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BF20C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_1000BF2BC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);

  return v1;
}

uint64_t sub_1000BF2F0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 32);
}

uint64_t sub_1000BF390()
{
  v1 = *v0;
  sub_1000BEEAC();
  return 1;
}

uint64_t sub_1000BF3B8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_1000BF468@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1000BF514(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1000BF684()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_1000BF724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1000BF7CC(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000BF8DC()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 6);

  v3 = *(v0 + 7);
  swift_unknownObjectRelease();
  v4 = *(v0 + 9);

  v5 = OBJC_IVAR____TtC13GameOverlayUI32RemoteAlertAuthenticationContext___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000BF9C0()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BFA7C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_1000BFB2C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 32);
}

uint64_t sub_1000BFBCC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_1000BFC7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1000BFD28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1000BFE98()
{
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

uint64_t sub_1000BFF38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1000BFFE0(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000C00F0()
{
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);
  return swift_unknownObjectRetain();
}

uint64_t sub_1000C0194(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  *(a1 + 64) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1000C01D0()
{
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 72);
}

uint64_t sub_1000C0278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  *(v4 + 48) = v13;
  *(v4 + 56) = v15;
  *(v4 + 64) = 0;
  ObservationRegistrar.init()();
  v16 = *(v4 + 24);

  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = 0;
  *(v4 + 72) = 2;
  return v4;
}

uint64_t sub_1000C03A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC13GameOverlayUI32RemoteAlertGameModeBannerContext___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C048C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteAlertIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteAlertIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C06B0()
{
  result = qword_100131D78;
  if (!qword_100131D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131D78);
  }

  return result;
}

uint64_t sub_1000C0704()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_1000C07B4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);

  return v1;
}

uint64_t sub_1000C07E8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 40);
}

uint64_t sub_1000C0888(uint64_t a1, void *a2)
{
  v3 = sub_10002D754((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100002B38(&unk_10012E548, &qword_1000EA9B0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1000C0934(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1000C0980(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1000C0990(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1000C09B0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000C0BA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C0CAC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_1000C0D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  return _swift_task_switch(sub_1000C0D30, 0, 0);
}

uint64_t sub_1000C0D30()
{
  v21 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = type metadata accessor for Logger();
  v0[31] = sub_100011F80(v2, qword_100135C88);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[29];
    v5 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000BA5C8(v6, v5, &v20);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Notifying gamed Game Center UI is about to be presented.", v7, 0xCu);
    sub_10002E6CC(v8);
  }

  v9 = v0[28];
  if (v9)
  {
    v10 = v0[27];
    v11 = objc_opt_self();
    sub_100002B38(&qword_100131D90, &qword_1000EEA08);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000EA7D0;
    *(v12 + 32) = v10;
    *(v12 + 40) = v9;

    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[32] = isa;

    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_1000C1090;
    v14 = swift_continuation_init();
    v0[25] = sub_100002B38(&qword_100131D98, &unk_1000EEA10);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1000C1D0C;
    v0[21] = &unk_100124110;
    v0[22] = v14;
    [v11 loadGamesWithBundleIDs:isa withCompletionHandler:v0 + 18];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unexpectedly found a nil Game bundle ID.", v17, 2u);
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1000C1090()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_1000C1628;
  }

  else
  {
    v3 = sub_1000C11A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C11A0()
{
  v20 = v0;
  v1 = *(v0 + 208);

  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_12;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_11;
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
      return _swift_continuation_await(v2);
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [v4 gameDescriptor];
  *(v0 + 272) = v5;

  if (v5)
  {
    v6 = [objc_opt_self() proxyForLocalPlayer];
    v7 = [v6 utilityServicePrivate];
    *(v0 + 280) = v7;

    *(v0 + 80) = v0;
    *(v0 + 88) = sub_1000C14B0;
    v8 = swift_continuation_init();
    *(v0 + 200) = sub_100002B38(&qword_100131DA0, &unk_1000EEA20);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1000C0888;
    *(v0 + 168) = &unk_100124138;
    *(v0 + 176) = v8;
    [v7 willLaunchGameCenterUIForGameDescriptor:v5 completionHandler:v0 + 144];
    v2 = v0 + 80;

    return _swift_continuation_await(v2);
  }

LABEL_12:
  v9 = *(v0 + 248);
  v10 = *(v0 + 224);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1000BA5C8(v14, v13, &v19);
    _os_log_impl(&_mh_execute_header, v11, v12, "Unable to find a valid game descriptor for game with bundle ID %s.", v15, 0xCu);
    sub_10002E6CC(v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000C14B0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_1000C17EC;
  }

  else
  {
    v3 = sub_1000C15C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C15C0()
{
  v1 = *(v0 + 280);

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000C1628()
{
  v17 = v0;
  v1 = v0[32];
  v2 = v0[33];
  swift_willThrow();

  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[29];
    v8 = v0[30];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_1000BA5C8(v9, v8, &v16);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: Error notifying gamed: %@", v10, 0x16u);
    sub_10007D290(v11);

    sub_10002E6CC(v12);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000C17EC()
{
  v18 = v0;
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  swift_willThrow();

  swift_unknownObjectRelease();
  v4 = v0[36];
  v6 = v0[30];
  v5 = v0[31];

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[29];
    v9 = v0[30];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_1000BA5C8(v10, v9, &v17);
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: Error notifying gamed: %@", v11, 0x16u);
    sub_10007D290(v12);

    sub_10002E6CC(v13);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

unint64_t sub_1000C19BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001205F0, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

void sub_1000C1A78(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000BD924(v2);
}

uint64_t sub_1000C1AA8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

void sub_1000C1AD4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000BD630(v2);
}

void sub_1000C1B04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame);
  *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = v2;
  v4 = v2;
}

uint64_t sub_1000C1C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000C547C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

double sub_1000C1CA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000C5624(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1000BA7A0(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1000C1D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10002D754((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002B38(&unk_10012E548, &qword_1000EA9B0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10003F788(0, &qword_10012E050, GKGame_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000C1DFC(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_1000C62BC(v5, v7) & 1;
}

char *DashboardRequest.init(initialState:)(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_statusBarHeight] = 0;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_hostPID] = 0;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame] = 0;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_localPlayer] = 0;
  v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldLayoutRTL] = 0;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_preferredLocalizations] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState] = -1;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardTimeScope] = 2;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardPlayerScope] = 1;
  v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldShowPlayForChallenge] = 0;
  v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldShowPlayForTurnBasedMatch] = 0;
  v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldShowQuitForTurnBasedMatch] = 0;
  v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_isArcade] = 0;
  v4 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_launchContext];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID];
  *v7 = 0;
  v7[1] = 0;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardInternal] = 0;
  v8 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardTitle];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_activityIdentifier];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_playerIdentifier];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_playerAlias];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardSetID];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 3;
  v320.receiver = v2;
  v320.super_class = type metadata accessor for DashboardRequest();
  v15 = objc_msgSendSuper2(&v320, "init");
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (*(a1 + 16))
  {
    v19 = v16;
    v20 = v15;
    v21 = sub_1000C547C(v19, v18);
    v23 = v22;

    v24 = 0;
    if (v23)
    {
      v316 = *(*(a1 + 56) + 8 * v21);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v24 = v319;
      }
    }
  }

  else
  {
    v25 = v15;

    v24 = 0;
  }

  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_statusBarHeight] = v24;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v28 = sub_1000C547C(v26, v27);
    v30 = v29;

    if (v30)
    {
      v316 = *(*(a1 + 56) + 8 * v28);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v31 = v319;
        goto LABEL_12;
      }
    }
  }

  else
  {
  }

  v31 = 0;
LABEL_12:
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_hostPID] = v31;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v34 = sub_1000C547C(v32, v33);
    v36 = v35;

    if (v36)
    {
      v37 = *(*(a1 + 56) + 8 * v34);
      swift_unknownObjectRetain();
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        goto LABEL_18;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  v38 = 0;
LABEL_18:
  v39 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame;
  v40 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame];
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame] = v38;

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v43 = sub_1000C547C(v41, v42);
    v45 = v44;

    if (v45)
    {
      v46 = *(*(a1 + 56) + 8 * v43);
      swift_unknownObjectRetain();
      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      if (v47)
      {
        goto LABEL_24;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  v47 = 0;
LABEL_24:
  v48 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_localPlayer];
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_localPlayer] = v47;

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v51 = sub_1000C547C(v49, v50);
    v53 = v52;

    if (v53)
    {
      v316 = *(*(a1 + 56) + 8 * v51);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v54 = v319;
        goto LABEL_30;
      }
    }
  }

  else
  {
  }

  v54 = 0;
LABEL_30:
  v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldLayoutRTL] = v54;
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v57 = sub_1000C547C(v55, v56);
    v59 = v58;

    if (v59)
    {
      v316 = *(*(a1 + 56) + 8 * v57);
      swift_unknownObjectRetain();
      sub_100002B38(&qword_10012E3D0, &qword_1000EA818);
      if (swift_dynamicCast())
      {
        v60 = v319;
        goto LABEL_36;
      }
    }
  }

  else
  {
  }

  v60 = &_swiftEmptyArrayStorage;
LABEL_36:
  v61 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_preferredLocalizations];
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_preferredLocalizations] = v60;

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v64 = sub_1000C547C(v62, v63);
    v66 = v65;

    if (v66)
    {
      v316 = *(*(a1 + 56) + 8 * v64);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v67 = v319;
        goto LABEL_42;
      }
    }
  }

  else
  {
  }

  v67 = -1;
LABEL_42:
  v313 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState;
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState] = v67;
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v70 = sub_1000C547C(v68, v69);
    v72 = v71;

    if (v72)
    {
      v316 = *(*(a1 + 56) + 8 * v70);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v73 = v319;
        goto LABEL_48;
      }
    }
  }

  else
  {
  }

  v73 = -1;
LABEL_48:
  v74 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardTimeScope;
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardTimeScope] = v73;
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v77 = sub_1000C547C(v75, v76);
    v79 = v78;

    if (v79)
    {
      v316 = *(*(a1 + 56) + 8 * v77);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v80 = v319;
        goto LABEL_54;
      }
    }
  }

  else
  {
  }

  v80 = -1;
LABEL_54:
  v315 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardPlayerScope;
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardPlayerScope] = v80;
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_59;
  }

  v83 = sub_1000C547C(v81, v82);
  v85 = v84;

  if ((v85 & 1) == 0)
  {
LABEL_59:
    v87 = 0;
    v88 = 0;
    goto LABEL_60;
  }

  v319 = *(*(a1 + 56) + 8 * v83);
  swift_unknownObjectRetain();
  v86 = swift_dynamicCast();
  v87 = v316;
  v88 = v318;
  if (!v86)
  {
    v87 = 0;
    v88 = 0;
  }

LABEL_60:
  v89 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardSetID];
  v90 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardSetID + 8];
  *v89 = v87;
  *(v89 + 1) = v88;

  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v93 = sub_1000C547C(v91, v92);
    v95 = v94;

    if (v95)
    {
      v316 = *(*(a1 + 56) + 8 * v93);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v96 = v319;
        goto LABEL_66;
      }
    }
  }

  else
  {
  }

  v96 = 0;
LABEL_66:
  v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldShowPlayForChallenge] = v96;
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v99 = sub_1000C547C(v97, v98);
    v101 = v100;

    if (v101)
    {
      v316 = *(*(a1 + 56) + 8 * v99);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v102 = v319;
        goto LABEL_72;
      }
    }
  }

  else
  {
  }

  v102 = 0;
LABEL_72:
  v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldShowPlayForTurnBasedMatch] = v102;
  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v105 = sub_1000C547C(v103, v104);
    v107 = v106;

    if (v107)
    {
      v316 = *(*(a1 + 56) + 8 * v105);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v108 = v319;
        goto LABEL_78;
      }
    }
  }

  else
  {
  }

  v108 = 0;
LABEL_78:
  v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldShowQuitForTurnBasedMatch] = v108;
  v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v111 = sub_1000C547C(v109, v110);
    v113 = v112;

    if (v113)
    {
      v316 = *(*(a1 + 56) + 8 * v111);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v114 = v319;
        goto LABEL_84;
      }
    }
  }

  else
  {
  }

  v114 = 0;
LABEL_84:
  v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_isArcade] = v114;
  v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_89;
  }

  v117 = sub_1000C547C(v115, v116);
  v119 = v118;

  if ((v119 & 1) == 0)
  {
LABEL_89:
    v121 = 0;
    v122 = 0;
    goto LABEL_90;
  }

  v319 = *(*(a1 + 56) + 8 * v117);
  swift_unknownObjectRetain();
  v120 = swift_dynamicCast();
  v121 = v316;
  v122 = v318;
  if (!v120)
  {
    v121 = 0;
    v122 = 0;
  }

LABEL_90:
  v123 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_launchContext];
  v124 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_launchContext + 8];
  *v123 = v121;
  *(v123 + 1) = v122;
  v314 = v123;

  v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_95;
  }

  v127 = sub_1000C547C(v125, v126);
  v129 = v128;

  if ((v129 & 1) == 0)
  {
LABEL_95:
    v131 = 0;
    v132 = 0;
    goto LABEL_96;
  }

  v319 = *(*(a1 + 56) + 8 * v127);
  swift_unknownObjectRetain();
  v130 = swift_dynamicCast();
  v131 = v316;
  v132 = v318;
  if (!v130)
  {
    v131 = 0;
    v132 = 0;
  }

LABEL_96:
  v133 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier];
  v134 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier + 8];
  *v133 = v131;
  *(v133 + 1) = v132;
  v310 = v133;

  v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_101;
  }

  v137 = sub_1000C547C(v135, v136);
  v139 = v138;

  if ((v139 & 1) == 0)
  {
LABEL_101:
    v141 = 0;
    v142 = 0;
    goto LABEL_102;
  }

  v319 = *(*(a1 + 56) + 8 * v137);
  swift_unknownObjectRetain();
  v140 = swift_dynamicCast();
  v141 = v316;
  v142 = v318;
  if (!v140)
  {
    v141 = 0;
    v142 = 0;
  }

LABEL_102:
  v143 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID];
  v144 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID + 8];
  *v143 = v141;
  *(v143 + 1) = v142;
  v311 = v143;

  v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v147 = sub_1000C547C(v145, v146);
    v149 = v148;

    if (v149)
    {
      v150 = *(*(a1 + 56) + 8 * v147);
      swift_unknownObjectRetain();
      objc_opt_self();
      v151 = swift_dynamicCastObjCClass();
      if (v151)
      {
        goto LABEL_108;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  v151 = 0;
LABEL_108:
  v152 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardInternal];
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardInternal] = v151;

  v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_113;
  }

  v155 = sub_1000C547C(v153, v154);
  v157 = v156;

  if ((v157 & 1) == 0)
  {
LABEL_113:
    v159 = 0;
    v160 = 0;
    goto LABEL_114;
  }

  v319 = *(*(a1 + 56) + 8 * v155);
  swift_unknownObjectRetain();
  v158 = swift_dynamicCast();
  v159 = v316;
  v160 = v318;
  if (!v158)
  {
    v159 = 0;
    v160 = 0;
  }

LABEL_114:
  v161 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardTitle];
  v162 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardTitle + 8];
  *v161 = v159;
  v161[1] = v160;

  v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_119;
  }

  v165 = sub_1000C547C(v163, v164);
  v167 = v166;

  if ((v167 & 1) == 0)
  {
LABEL_119:
    v169 = 0;
    v170 = 0;
    goto LABEL_120;
  }

  v319 = *(*(a1 + 56) + 8 * v165);
  swift_unknownObjectRetain();
  v168 = swift_dynamicCast();
  v169 = v316;
  v170 = v318;
  if (!v168)
  {
    v169 = 0;
    v170 = 0;
  }

LABEL_120:
  v171 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier];
  v172 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier + 8];
  *v171 = v169;
  *(v171 + 1) = v170;
  v309 = v171;

  v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_125;
  }

  v175 = sub_1000C547C(v173, v174);
  v177 = v176;

  if ((v177 & 1) == 0)
  {
LABEL_125:
    v179 = 0;
    v180 = 0;
    goto LABEL_126;
  }

  v319 = *(*(a1 + 56) + 8 * v175);
  swift_unknownObjectRetain();
  v178 = swift_dynamicCast();
  v179 = v316;
  v180 = v318;
  if (!v178)
  {
    v179 = 0;
    v180 = 0;
  }

LABEL_126:
  v181 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_activityIdentifier];
  v182 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_activityIdentifier + 8];
  *v181 = v179;
  v181[1] = v180;

  v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_131;
  }

  v185 = sub_1000C547C(v183, v184);
  v187 = v186;

  if ((v187 & 1) == 0)
  {
LABEL_131:
    v189 = 0;
    v190 = 0;
    goto LABEL_132;
  }

  v319 = *(*(a1 + 56) + 8 * v185);
  swift_unknownObjectRetain();
  v188 = swift_dynamicCast();
  v189 = v316;
  v190 = v318;
  if (!v188)
  {
    v189 = 0;
    v190 = 0;
  }

LABEL_132:
  v191 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_playerIdentifier];
  v192 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_playerIdentifier + 8];
  *v191 = v189;
  *(v191 + 1) = v190;
  v312 = v191;

  v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v195 = sub_1000C1C58(v193, v194, a1);

  if (v195)
  {
    v319 = v195;
    v196 = swift_dynamicCast();
    v197 = v316;
    v198 = v318;
    if (!v196)
    {
      v197 = 0;
      v198 = 0;
    }
  }

  else
  {
    v197 = 0;
    v198 = 0;
  }

  v199 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_playerAlias];
  v200 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_playerAlias + 8];
  *v199 = v197;
  v199[1] = v198;

  if (!*&v15[v39] && sub_1000C1C58(0x65746E49656D6167, 0xEC0000006C616E72, a1))
  {
    objc_opt_self();
    v214 = swift_dynamicCastObjCClass();
    if (v214)
    {
      v215 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v214];
      swift_unknownObjectRelease();
      v216 = *&v15[v39];
      *&v15[v39] = v215;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  static AutomationSupport.bundleIdOverride.getter();
  if (v201)
  {
    v202 = [objc_allocWithZone(GKGameInternal) init];
    v203 = String._bridgeToObjectiveC()();

    [v202 setBundleIdentifier:v203];

    v204 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v202];
    v205 = *&v15[v39];
    *&v15[v39] = v204;
  }

  v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v208 = sub_1000C1C58(v206, v207, a1);

  if (!v208)
  {
    goto LABEL_182;
  }

  v317 = v208;
  sub_100002B38(&qword_10012DFA8, qword_1000EEA30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_182;
  }

  v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v211 = sub_1000C1C58(v209, v210, v319);

  if (v211 && (swift_dynamicCast() & 1) != 0)
  {
    v213 = v208;
    v212 = v318;
  }

  else
  {
    v213 = 0;
    v212 = 0xE000000000000000;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v213 && v217 == v212)
  {

LABEL_152:

    *&v15[v313] = 0;
    v219 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v221 = sub_1000C1C58(v219, v220, v319);

    if (v221)
    {
      v222 = swift_dynamicCast();
      v223 = v208;
      v224 = v318;
      if (!v222)
      {
        v223 = 0;
        v224 = 0;
      }
    }

    else
    {
      v223 = 0;
      v224 = 0;
    }

    v225 = v310[1];
    *v310 = v223;
    v310[1] = v224;

    v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v228 = sub_1000C1C58(v226, v227, v319);

    if (v228)
    {
      v229 = swift_dynamicCast();
      v230 = v208;
      v231 = v318;
      if (!v229)
      {
        v230 = 0;
        v231 = 0;
      }
    }

    else
    {
      v230 = 0;
      v231 = 0;
    }

    v232 = v161[1];
    *v161 = v230;
    v161[1] = v231;

    v233 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v235 = sub_1000C1C58(v233, v234, v319);

    if (v235)
    {
      v236 = swift_dynamicCast();
      v237 = v208;
      v238 = v318;
      if (!v236)
      {
        v237 = 0;
        v238 = 0;
      }
    }

    else
    {
      v237 = 0;
      v238 = 0;
    }

    v239 = v312[1];
    *v312 = v237;
    v312[1] = v238;

    v240 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v242 = sub_1000C1C58(v240, v241, v319);

    if (v242)
    {
      v243 = swift_dynamicCast();
      v244 = v208;
      v245 = v318;
      if (!v243)
      {
        v244 = 0;
        v245 = 0;
      }
    }

    else
    {
      v244 = 0;
      v245 = 0;
    }

    v246 = v311;
LABEL_170:
    v247 = v246[1];
    *v246 = v244;
    v246[1] = v245;
LABEL_171:

    goto LABEL_172;
  }

  v218 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v218)
  {
    goto LABEL_152;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v213 && v254 == v212)
  {

LABEL_185:

    *&v15[v313] = 3;
    v258 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v260 = sub_1000C1C58(v258, v259, v319);

    if (v260)
    {
      v261 = swift_dynamicCast();
      v244 = v208;
      v245 = v318;
      if (!v261)
      {
        v244 = 0;
        v245 = 0;
      }
    }

    else
    {
      v244 = 0;
      v245 = 0;
    }

    v246 = v312;
    goto LABEL_170;
  }

  v257 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v257)
  {
    goto LABEL_185;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v213 && v262 == v212)
  {

LABEL_194:

    *&v15[v313] = 1;
    v264 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v266 = sub_1000C1C58(v264, v265, v319);

    if (v266)
    {
      v267 = swift_dynamicCast();
      v268 = v208;
      v269 = v318;
      if (!v267)
      {
        v268 = 0;
        v269 = 0;
      }
    }

    else
    {
      v268 = 0;
      v269 = 0;
    }

    v270 = v309[1];
    *v309 = v268;
    v309[1] = v269;

    v271 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v273 = sub_1000C1C58(v271, v272, v319);

    if (v273)
    {
      v274 = swift_dynamicCast();
      v275 = v208;
      v276 = v318;
      if (!v274)
      {
        v275 = 0;
        v276 = 0;
      }
    }

    else
    {
      v275 = 0;
      v276 = 0;
    }

    v277 = v311[1];
    *v311 = v275;
    v311[1] = v276;

    v278 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v280 = sub_1000C1C58(v278, v279, v319);

    if (v280)
    {
      v281 = swift_dynamicCast();
      v282 = v208;
      v283 = v318;
      if (!v281)
      {
        v282 = 0;
        v283 = 0;
      }
    }

    else
    {
      v282 = 0;
      v283 = 0;
    }

    v284 = v312[1];
    *v312 = v282;
    v312[1] = v283;

    v285 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v287 = sub_1000C1C58(v285, v286, v319);

    if (v287)
    {
      v288 = swift_dynamicCast();
      v289 = v208;
      v290 = v318;
      if (!v288)
      {
        v289 = 0;
        v290 = 0;
      }
    }

    else
    {
      v289 = 0;
      v290 = 0;
    }

    v291 = v199[1];
    *v199 = v289;
    v199[1] = v290;
    goto LABEL_171;
  }

  v263 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v263)
  {
    goto LABEL_194;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v213 && v292 == v212)
  {

LABEL_215:

    *&v15[v313] = 4;
    v294 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v296 = sub_1000C1C58(v294, v295, v319);

    if (v296)
    {
      v297 = swift_dynamicCast();
      v298 = v208;
      v299 = v318;
      if (!v297)
      {
        v298 = 0;
        v299 = 0;
      }
    }

    else
    {
      v298 = 0;
      v299 = 0;
    }

    v300 = v181[1];
    *v181 = v298;
    v181[1] = v299;
    goto LABEL_171;
  }

  v293 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v293)
  {
    goto LABEL_215;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v213 && v301 == v212)
  {

LABEL_224:
    v303 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
    v304 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
    v305 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 8];
    v306 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 16];
    v307 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 24];
    *v303 = 7;
    *(v303 + 1) = 0;
    *(v303 + 2) = 0;
    *(v303 + 3) = 0;
    v308 = v303[32];
    v303[32] = 3;
    sub_100030C94(v304, v305, v306, v307, v308);
    goto LABEL_172;
  }

  v302 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v302)
  {
    goto LABEL_224;
  }

  *&v15[v313] = -1;
LABEL_172:
  *&v15[v74] = 2;
  *&v15[v315] = 1;
  if (!v314[1])
  {
    v248 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v250 = sub_1000C1C58(v248, v249, a1);

    if (v250)
    {
      v251 = swift_dynamicCast();
      v252 = v317;
      v253 = v318;
      if (!v251)
      {
        v252 = 0;
        v253 = 0;
      }
    }

    else
    {
      v252 = 0;
      v253 = 0;
    }

    v255 = v314[1];
    *v314 = v252;
    v314[1] = v253;
LABEL_182:

    return v15;
  }

  return v15;
}

uint64_t DashboardRequest.minimalInitialState()()
{
  v1 = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState)];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = &_swiftEmptyDictionarySingleton;
  sub_1000CE4E4(v1, 0x7461745377656976, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  if (*(v0 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier + 8))
  {
    v3 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier);
    v4 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier + 8);

    v5 = String._bridgeToObjectiveC()();

    v6 = swift_isUniquelyReferenced_nonNull_native();
    v21 = &_swiftEmptyDictionarySingleton;
    sub_1000CE4E4(v5, 0xD000000000000015, 0x80000001000E8330, v6);
  }

  if (*(v0 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier + 8))
  {
    v7 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier);

    v8 = String._bridgeToObjectiveC()();

    v9 = swift_isUniquelyReferenced_nonNull_native();
    v21 = &_swiftEmptyDictionarySingleton;
    sub_1000CE4E4(v8, 0xD000000000000015, 0x80000001000E83A0, v9);
  }

  v10 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21 = 0;
  v12 = [v10 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v21];

  v13 = v21;
  if (v12)
  {
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100011F80(v16, qword_100135C88);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to serialize minimal initialState dictionary", v19, 2u);
    }

    return 0;
  }

  return v14;
}

uint64_t sub_1000C3B30()
{
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame;
  v0[20] = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame;
  if (*(v1 + v2) || (v5 = (v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID), (v6 = v5[1]) == 0))
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v7 = *v5;
    v8 = objc_opt_self();
    sub_100002B38(&qword_100131D90, &qword_1000EEA08);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000EA7D0;
    *(v9 + 32) = v7;
    *(v9 + 40) = v6;

    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[21] = isa;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000C3D30;
    v11 = swift_continuation_init();
    v0[17] = sub_100002B38(&qword_100131D98, &unk_1000EEA10);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000C1D0C;
    v0[13] = &unk_1001241F0;
    v0[14] = v11;
    [v8 loadGamesWithBundleIDs:isa withCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000C3D30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1000C429C;
  }

  else
  {
    v3 = sub_1000C3E40;
  }

  return _swift_task_switch(v3, 0, 0);
}

unsigned __int8 *sub_1000C3E40()
{
  v43 = v1;
  v2 = *(v1 + 144);

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:

    v10 = *(v1 + 152);
    v0 = *(v10 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID + 8);
    if (!v0)
    {
      goto LABEL_8;
    }

    v2 = *(v10 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID);
    v11 = HIBYTE(v0) & 0xF;
    v12 = v2 & 0xFFFFFFFFFFFFLL;
    if (!((v0 & 0x2000000000000000) != 0 ? HIBYTE(v0) & 0xF : v2 & 0xFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }

    if ((v0 & 0x1000000000000000) != 0)
    {
LABEL_78:

      v16 = sub_1000C58BC(v2, v0, 10);
      v39 = v38;

      if (v39)
      {
        goto LABEL_8;
      }

LABEL_75:
      v34 = [objc_allocWithZone(GKGameInternal) init];
      v35 = objc_allocWithZone(NSNumber);
      v36 = v34;
      v37 = [v35 initWithInteger:v16];
      [v36 setAdamID:v37];

      v4 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v36];
      goto LABEL_7;
    }

    if ((v0 & 0x2000000000000000) != 0)
    {
      v42[0] = *(v10 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID);
      v42[1] = v0 & 0xFFFFFFFFFFFFFFLL;
      if (v2 == 43)
      {
        if (v11)
        {
          v15 = v11 - 1;
          if (v11 != 1)
          {
            v16 = 0;
            v26 = v42 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v15)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_73;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v2 != 45)
      {
        if (v11)
        {
          v16 = 0;
          v31 = v42;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v11)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_73;
      }

      if (v11)
      {
        v15 = v11 - 1;
        if (v11 != 1)
        {
          v16 = 0;
          v20 = v42 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v15)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        result = ((v0 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v40 = *(v10 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID);
        v41 = *(v10 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID + 8);
        result = _StringObject.sharedUTF8.getter();
      }

      v14 = *result;
      if (v14 == 43)
      {
        if (v12 >= 1)
        {
          v15 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            if (result)
            {
              v23 = result + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  goto LABEL_73;
                }

                v25 = 10 * v16;
                if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                {
                  goto LABEL_73;
                }

                v16 = v25 + v24;
                if (__OFADD__(v25, v24))
                {
                  goto LABEL_73;
                }

                ++v23;
                if (!--v15)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_72;
          }

          goto LABEL_73;
        }

        goto LABEL_83;
      }

      if (v14 != 45)
      {
        if (v12)
        {
          v16 = 0;
          if (result)
          {
            while (1)
            {
              v29 = *result - 48;
              if (v29 > 9)
              {
                goto LABEL_73;
              }

              v30 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_73;
              }

              v16 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_73;
              }

              ++result;
              if (!--v12)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_73:
        v16 = 0;
        LOBYTE(v15) = 1;
LABEL_74:
        if (v15)
        {
          goto LABEL_8;
        }

        goto LABEL_75;
      }

      if (v12 >= 1)
      {
        v15 = v12 - 1;
        if (v12 != 1)
        {
          v16 = 0;
          if (result)
          {
            v17 = result + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_73;
              }

              v19 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_73;
              }

              v16 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                goto LABEL_73;
              }

              ++v17;
              if (!--v15)
              {
                goto LABEL_74;
              }
            }
          }

LABEL_72:
          LOBYTE(v15) = 0;
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_78;
  }

  v3 = *(v2 + 32);
LABEL_6:
  v4 = v3;

LABEL_7:
  v6 = *(v1 + 152);
  v5 = *(v1 + 160);
  v7 = *(v6 + v5);
  *(v6 + v5) = v4;

LABEL_8:
  v8 = *(v1 + 8);

  return v8();
}

void sub_1000C429C()
{
  v41 = v0;
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = (v0[19] + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID);
  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_65;
  }

  v5 = *v3;
  v6 = HIBYTE(v4) & 0xF;
  v7 = v5 & 0xFFFFFFFFFFFFLL;
  if (!((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : v5 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_65;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {

    v11 = sub_1000C58BC(v5, v4, 10);
    v39 = v38;

    if (v39)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    v40[0] = v5;
    v40[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    if (v5 == 43)
    {
      if (v6)
      {
        if (--v6)
        {
          v11 = 0;
          v21 = v40 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v6)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_74:
      __break(1u);
      return;
    }

    if (v5 != 45)
    {
      if (v6)
      {
        v11 = 0;
        v26 = v40;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v28 + v27;
          if (__OFADD__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v6)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v6)
    {
      if (--v6)
      {
        v11 = 0;
        v15 = v40 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          v17 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          ++v15;
          if (!--v6)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_72;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v9 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v9 = _StringObject.sharedUTF8.getter();
  }

  v10 = *v9;
  if (v10 == 43)
  {
    if (v7 >= 1)
    {
      v6 = v7 - 1;
      if (v7 != 1)
      {
        v11 = 0;
        if (v9)
        {
          v18 = v9 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              goto LABEL_62;
            }

            v20 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_62;
            }

            v11 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_62;
            }

            ++v18;
            if (!--v6)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_54;
      }

      goto LABEL_62;
    }

    goto LABEL_73;
  }

  if (v10 == 45)
  {
    if (v7 >= 1)
    {
      v6 = v7 - 1;
      if (v7 != 1)
      {
        v11 = 0;
        if (v9)
        {
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_62;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_62;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_62;
            }

            ++v12;
            if (!--v6)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v6) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v7)
  {
    v11 = 0;
    if (v9)
    {
      while (1)
      {
        v24 = *v9 - 48;
        if (v24 > 9)
        {
          goto LABEL_62;
        }

        v25 = 10 * v11;
        if ((v11 * 10) >> 64 != (10 * v11) >> 63)
        {
          goto LABEL_62;
        }

        v11 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          goto LABEL_62;
        }

        ++v9;
        if (!--v7)
        {
          goto LABEL_54;
        }
      }
    }

    goto LABEL_54;
  }

LABEL_62:
  v11 = 0;
  LOBYTE(v6) = 1;
LABEL_63:
  if ((v6 & 1) == 0)
  {
LABEL_64:
    v29 = [objc_allocWithZone(GKGameInternal) init];
    v30 = objc_allocWithZone(NSNumber);
    v31 = v29;
    v32 = [v30 initWithInteger:v11];
    [v31 setAdamID:v32];

    v33 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v31];
    v35 = v0[19];
    v34 = v0[20];
    v36 = *(v35 + v34);
    *(v35 + v34) = v33;
  }

LABEL_65:
  v37 = v0[1];

  v37();
}

void DashboardRequest.playerFromInternal.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_localPlayer);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v5 internal];
    v20 = 0;
    v7 = [v4 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v20];

    v8 = v20;
    if (v7)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      Player.init(with:)();
      v9 = type metadata accessor for Player();
      (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
    }

    else
    {
      v12 = v8;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100011F80(v13, qword_100135C88);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "Player could not be serialized: %@", v16, 0xCu);
        sub_100005688(v17, &qword_100131110, &unk_1000EC870);
      }

      else
      {
      }

      v19 = type metadata accessor for Player();
      (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    }
  }

  else
  {
    v10 = type metadata accessor for Player();
    v11 = *(*(v10 - 8) + 56);

    v11(a1, 1, 1, v10);
  }
}

uint64_t DashboardRequest.destination.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v14[-1] - v4);
  v14[3] = &type metadata for GameOverlayUIFeatureFlags;
  v14[4] = sub_10003F1EC();
  LOBYTE(v14[0]) = 1;
  v6 = isFeatureEnabled(_:)();
  sub_10002E6CC(v14);
  if (v6)
  {
    DashboardRequest.internalDeepLinkDestination.getter(v5);
    v7 = type metadata accessor for GameDashboardDestination();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (v9(v5, 1, v7) == 1)
    {
      DashboardRequest.destinationForViewState.getter(a1);
      result = v9(v5, 1, v7);
      if (result != 1)
      {
        return sub_100005688(v5, &qword_10012E4B0, qword_1000EA960);
      }
    }

    else
    {
      return (*(v8 + 32))(a1, v5, v7);
    }
  }

  else
  {
    v11 = enum case for GameDashboardDestination.dashboard(_:);
    v12 = type metadata accessor for GameDashboardDestination();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  return result;
}

uint64_t DashboardRequest.destinationForViewState.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for Player();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState);
  if (v13 <= 2)
  {
    if (!v13)
    {
      v32 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier);
      v33 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier + 8);
      *a1 = v32;
      *(a1 + 1) = v33;
      v16 = &enum case for GameDashboardDestination.leaderboard(_:);
      goto LABEL_25;
    }

    if (v13 == 1)
    {
      v14 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier);
      v15 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier + 8);
      *a1 = v14;
      *(a1 + 1) = v15;
      v16 = &enum case for GameDashboardDestination.achievement(_:);
LABEL_25:
      v34 = *v16;
      v35 = type metadata accessor for GameDashboardDestination();
      (*(*(v35 - 8) + 104))(a1, v34, v35);
    }

LABEL_20:
    v27 = &enum case for GameDashboardDestination.dashboard(_:);
    goto LABEL_21;
  }

  if (v13 == 3)
  {
    v36 = v10;
    DashboardRequest.playerFromInternal.getter(v6);
    if ((*(v8 + 48))(v6, 1, v36) == 1)
    {
      sub_100005688(v6, &qword_10012E478, &unk_1000EA8E0);
      v37 = &enum case for GameDashboardDestination.dashboard(_:);
    }

    else
    {
      v38 = *(v8 + 32);
      v38(v12, v6, v36);
      v38(a1, v12, v36);
      v37 = &enum case for GameDashboardDestination.playerProfile(_:);
    }

    v39 = *v37;
    v40 = type metadata accessor for GameDashboardDestination();
    return (*(*(v40 - 8) + 104))(a1, v39, v40);
  }

  if (v13 != 5)
  {
    goto LABEL_20;
  }

  v17 = (v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 32) < 3u)
  {
    goto LABEL_19;
  }

  v19 = v17[2];
  v18 = v17[3];
  v20 = *v17;
  v21 = v17[1];
  v22 = v19 | v18;
  if (!(v22 | v20 | v21))
  {
    goto LABEL_19;
  }

  v23 = v22 | v21;
  v24 = (v20 - 1) <= 1 && v23 == 0;
  v25 = !v24 && v20 == 3;
  if (v25 && v23 == 0)
  {
    v27 = &enum case for GameDashboardDestination.friendRequests(_:);
  }

  else
  {
LABEL_19:
    v27 = &enum case for GameDashboardDestination.friendsList(_:);
  }

LABEL_21:
  v28 = *v27;
  v29 = type metadata accessor for GameDashboardDestination();
  v30 = *(*(v29 - 8) + 104);

  return v30(a1, v28, v29);
}

uint64_t DashboardRequest.internalDeepLinkDestination.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination;
  v4 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
  v5 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 8);
  if (*(v3 + 32) <= 1u)
  {
    if (*(v3 + 32))
    {
      *a1 = v4;
      a1[1] = v5;
      v6 = &enum case for GameDashboardDestination.multiplayerActivity(_:);
    }

    else
    {
      *a1 = v4;
      a1[1] = v5;
      v6 = &enum case for GameDashboardDestination.challengeCreation(_:);
    }

    v12 = *v6;
    v13 = type metadata accessor for GameDashboardDestination();
    v14 = *(v13 - 8);
    (*(v14 + 104))(a1, v12, v13);
    (*(v14 + 56))(a1, 0, 1, v13);
    goto LABEL_8;
  }

  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  if (*(v3 + 32) == 2)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v7;
    a1[3] = v8;
    v9 = enum case for GameDashboardDestination.activityInstance(_:);
    v10 = type metadata accessor for GameDashboardDestination();
    v11 = *(v10 - 8);
    (*(v11 + 104))(a1, v9, v10);
    (*(v11 + 56))(a1, 0, 1, v10);

LABEL_8:
  }

  v16 = v7 | v5;
  if (!(v16 | v4 | v8))
  {
    goto LABEL_33;
  }

  v17 = v16 | v8;
  if (v4 == 1 && v17 == 0)
  {
    v23 = &enum case for GameDashboardDestination.challengesHub(_:);
LABEL_37:
    v29 = *v23;
    v30 = type metadata accessor for GameDashboardDestination();
    v31 = *(v30 - 8);
    (*(v31 + 104))(a1, v29, v30);
    v25 = *(v31 + 56);
    v27 = a1;
    v28 = 0;
    v26 = v30;
    goto LABEL_38;
  }

  if (v4 == 2 && v17 == 0)
  {
    v23 = &enum case for GameDashboardDestination.friendInvites(_:);
    goto LABEL_37;
  }

  if (v4 == 3 && v17 == 0)
  {
    v23 = &enum case for GameDashboardDestination.friendRequests(_:);
    goto LABEL_37;
  }

  if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 4 || v17 != 0)
  {
    if (v4 == 6 && v17 == 0)
    {
      v23 = &enum case for GameDashboardDestination.pickActivity(_:);
    }

    else
    {
      v23 = &enum case for GameDashboardDestination.systemSettings(_:);
    }

    goto LABEL_37;
  }

LABEL_33:
  v24 = type metadata accessor for GameDashboardDestination();
  v25 = *(*(v24 - 8) + 56);
  v26 = v24;
  v27 = a1;
  v28 = 1;
LABEL_38:

  return v25(v27, v28, 1, v26);
}

id DashboardRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DashboardRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000C547C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000C5668(a1, a2, v6);
}

uint64_t sub_1000C54F4(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_1000C5510(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000C5524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000C556C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000C55B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1000C55E0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000C5720(a1, v4);
}

unint64_t sub_1000C5624(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000C57F4(a1, v4);
}

unint64_t sub_1000C5668(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000C5720(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10003F788(0, &qword_100131E98, SBSRemoteAlertHandle_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000C57F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100067644(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000708BC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unsigned __int8 *sub_1000C58BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000C5E48();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000C5E48()
{
  v0 = String.subscript.getter();
  v4 = sub_1000C5EC8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000C5EC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1000BAA64(v9, 0);
  v12 = sub_1000C6020(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000C6020(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000C6240(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000C6240(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000C6240(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1000C62BC(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*(a1 + 32) <= 1u)
  {
    if (*(a1 + 32))
    {
      if (a2[2].i8[0] == 1)
      {
        goto LABEL_16;
      }
    }

    else if (!a2[2].i8[0])
    {
LABEL_16:
      if (v3 != a2->i64[0] || v4 != a2->i64[1])
      {
        goto LABEL_20;
      }

      return 1;
    }

    return 0;
  }

  v6 = a1[2];
  v5 = a1[3];
  if (*(a1 + 32) != 2)
  {
    v13 = v6 | v4;
    if (v13 | v3 | v5)
    {
      v14 = v13 | v5;
      if (v3 == 1 && v14 == 0)
      {
        if (a2[2].i8[0] != 3 || a2->i64[0] != 1)
        {
          return 0;
        }
      }

      else if (v3 != 2 || v14)
      {
        if (v3 != 3 || v14)
        {
          if (v3 != 4 || v14)
          {
            if (v3 != 5 || v14)
            {
              if (v3 != 6 || v14)
              {
                if (a2[2].i8[0] != 3 || a2->i64[0] != 7)
                {
                  return 0;
                }
              }

              else if (a2[2].i8[0] != 3 || a2->i64[0] != 6)
              {
                return 0;
              }
            }

            else if (a2[2].i8[0] != 3 || a2->i64[0] != 5)
            {
              return 0;
            }
          }

          else if (a2[2].i8[0] != 3 || a2->i64[0] != 4)
          {
            return 0;
          }
        }

        else if (a2[2].i8[0] != 3 || a2->i64[0] != 3)
        {
          return 0;
        }
      }

      else if (a2[2].i8[0] != 3 || a2->i64[0] != 2)
      {
        return 0;
      }

      if (!(a2[1].i64[0] | a2[1].i64[1] | a2->i64[1]))
      {
        return 1;
      }
    }

    else if (a2[2].i8[0] == 3)
    {
      v16 = vorrq_s8(*a2, a2[1]);
      if (!*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)))
      {
        return 1;
      }
    }

    return 0;
  }

  if (a2[2].i8[0] != 2)
  {
    return 0;
  }

  v7 = a2[1].i64[0];
  v8 = a2[1].i64[1];
  v9 = v3 == a2->i64[0] && v4 == a2->i64[1];
  if (v9 || (v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v10 & 1) != 0))
  {
    if (v6 != v7 || v5 != v8)
    {
LABEL_20:

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  return result;
}

uint64_t sub_1000C6540(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100002B38(&qword_100132088, &qword_1000EEBF0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100011F80(v10, qword_100135C88);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000BA5C8(a1, a2, &v28);
    _os_log_impl(&_mh_execute_header, v11, v12, "Game Center banner finished animations for %s", v13, 0xCu);
    sub_10002E6CC(v14);
  }

  swift_beginAccess();
  sub_1000CC6D4(a1, a2);
  swift_endAccess();

  v16 = *(v3[19] + 16);
  v3[18] = v16;
  if (!v16)
  {
    v17 = v3[21];
    v18 = *(v17 + 2);
    if (v18)
    {
      v26 = *(v27 + 16);
      v19 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v20 = v27;
      v26(v9, &v17[v19], v6);
      while (1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3[21] = v17;
        if (!isUniquelyReferenced_nonNull_native || (v18 - 1) > *(v17 + 3) >> 1)
        {
          v17 = sub_1000CC448(isUniquelyReferenced_nonNull_native, v18, 1, v17);
          v3[21] = v17;
        }

        v22 = *(v20 + 8);
        v22(&v17[v19], v6);
        v23 = *(v20 + 72);
        if (v23 > 0 || &v17[v19] >= &v17[v19 + v23 + (*(v17 + 2) - 1) * v23])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v23)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        --*(v17 + 2);
        v3[21] = v17;
        CheckedContinuation.resume(returning:)();
        result = (v22)(v9, v6);
        v17 = v3[21];
        v18 = *(v17 + 2);
        if (!v18)
        {
          break;
        }

        v26(v9, &v17[v19], v6);
      }
    }
  }

  return result;
}

uint64_t sub_1000C6880(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return _swift_task_switch(sub_1000C68A0, v1, 0);
}

uint64_t sub_1000C68A0()
{
  v1 = [objc_allocWithZone(FBSSystemService) init];
  v2 = [v1 isPasscodeLockedOrBlocked];

  if (v2)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100011F80(v3, qword_100135C88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Skipping in-game banner request because device is locked or blocked.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);

LABEL_15:

    v17 = v0[1];

    return v17();
  }

  v8 = v0[14];
  v9 = sub_10008DFC8();
  v0[16] = v9;
  v0[17] = v10;
  if (!v10)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100011F80(v16, qword_100135C88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Enqueuing in game banner request without a valid remote context or token.";
    goto LABEL_14;
  }

  v11 = v9;
  v12 = v10;
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_1000C6B04;
  v14 = v0[15];

  return sub_1000C9D6C(v11, v12);
}

uint64_t sub_1000C6B04()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_1000C6C14, v2, 0);
}

uint64_t sub_1000C6C14()
{
  v1 = v0[14];
  v2 = *(*(v1 + *(type metadata accessor for RemoteAlertRequest() + 24)) + 16);
  v0[19] = v2;
  if (v2)
  {
    v3 = v2;
    if (sub_1000E0268())
    {
      if (qword_10012CC20 != -1)
      {
        swift_once();
      }

      v4 = qword_100135CA0;
      v0[20] = qword_100135CA0;

      return _swift_task_switch(sub_1000C6DEC, v4, 0);
    }
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100011F80(v5, qword_100135C88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "In-game banner request without a valid remote target.", v8, 2u);
  }

  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];

  sub_1000C6540(v10, v9);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000C6DEC()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);

    v5 = sub_1000C547C(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      swift_beginAccess();
      sub_1000035B4(v7 + 32, v0 + 16, &unk_100131120, &unk_1000EAAF0);

      goto LABEL_6;
    }
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  v8 = *(v0 + 120);

  return _swift_task_switch(sub_1000C6EFC, v8, 0);
}

uint64_t sub_1000C6EFC()
{
  if (v0[5])
  {
    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
    type metadata accessor for RemoteAlertAccessPointContext(0);
    v1 = swift_dynamicCast();
    v2 = v0[13];
    if (v1)
    {
      v3 = v0[13];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    sub_100005688((v0 + 2), &unk_100131120, &unk_1000EAAF0);
    v3 = 0;
  }

  v4 = v0[19];
  v5 = v0[15];
  sub_1000CA984(v0[14], v0[16], v0[17], v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000C6FF4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000C7014, v1, 0);
}

uint64_t sub_1000C7014()
{
  v1 = [objc_allocWithZone(FBSSystemService) init];
  v2 = [v1 isPasscodeLockedOrBlocked];

  if (v2)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100011F80(v3, qword_100135C88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Skipping game mode banner request because device is locked or blocked.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);

LABEL_15:

    v14 = v0[1];

    return v14();
  }

  v8 = v0[2];
  sub_10008DFC8();
  if (!v9)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100011F80(v13, qword_100135C88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Cannot enqueue game mode banner request without a valid remote context or token.";
    goto LABEL_14;
  }

  v10 = swift_task_alloc();
  v0[4] = v10;
  *v10 = v0;
  v10[1] = sub_1000C726C;
  v11 = v0[3];

  return sub_1000CA308();
}

uint64_t sub_1000C726C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1000C737C, v2, 0);
}

uint64_t sub_1000C737C()
{
  v1 = v0[2];
  v2 = *(*(v1 + *(type metadata accessor for RemoteAlertRequest() + 24)) + 16);
  if (v2)
  {
    v3 = v2;
    if (sub_1000E0268())
    {
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100011F80(v4, qword_100135C88);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Presenting Game Mode banner", v7, 2u);
      }

      v9 = v0[2];
      v8 = v0[3];

      sub_1000C7CA0(v9, 0, 0, 0);
      goto LABEL_14;
    }
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100011F80(v10, qword_100135C88);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Game mode banner request without a valid remote target.", v13, 2u);
  }

  v14 = v0[3];

  sub_1000C75A8();
LABEL_14:
  v15 = v0[1];

  return v15();
}

void sub_1000C75A8()
{
  v1 = v0;
  v2 = sub_100002B38(&qword_100132088, &qword_1000EEBF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100011F80(v7, qword_100135C88);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Game Mode banner dismissed", v10, 2u);
  }

  v11 = *(v1 + 136);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
    return;
  }

  *(v1 + 136) = v13;
  if (v13 < 0)
  {
    *(v1 + 136) = 0;
  }

  else if (v13)
  {
    return;
  }

  v14 = *(v1 + 160);
  v15 = *(v14 + 2);
  if (v15)
  {
    v22 = *(v3 + 16);
    v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22(v6, &v14[v16], v2);
    while (1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 160) = v14;
      if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > *(v14 + 3) >> 1)
      {
        v14 = sub_1000CC448(isUniquelyReferenced_nonNull_native, v15, 1, v14);
        *(v1 + 160) = v14;
      }

      v18 = *(v3 + 8);
      v18(&v14[v16], v2);
      v19 = *(v3 + 72);
      if (v19 > 0 || &v14[v16] >= &v14[v16 + v19 + (*(v14 + 2) - 1) * v19])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v19)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --*(v14 + 2);
      *(v1 + 160) = v14;
      CheckedContinuation.resume(returning:)();
      v18(v6, v2);
      v14 = *(v1 + 160);
      v15 = *(v14 + 2);
      if (!v15)
      {
        break;
      }

      v22(v6, &v14[v16], v2);
    }
  }
}

uint64_t sub_1000C7860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000035B4(a3, v24 - v10, &unk_100130F10, &qword_1000EA660);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005688(v11, &unk_100130F10, &qword_1000EA660);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100005688(a3, &unk_100130F10, &qword_1000EA660);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005688(a3, &unk_100130F10, &qword_1000EA660);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000C7B0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000D3DCC(&qword_10012CFC8, 255, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active);
  return result;
}

uint64_t sub_1000C7C3C()
{
  type metadata accessor for RemoteAlertRequestQueue();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  v0[14] = &_swiftEmptyDictionarySingleton;
  v0[15] = &_swiftEmptyDictionarySingleton;
  v0[16] = &_swiftEmptyDictionarySingleton;
  v0[17] = 0;
  v0[18] = 0;
  v0[19] = &_swiftEmptySetSingleton;
  v0[20] = &_swiftEmptyArrayStorage;
  v0[21] = &_swiftEmptyArrayStorage;
  qword_100135CD8 = v0;
  return result;
}

uint64_t sub_1000C7CA0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v80 = a3;
  v81 = a4;
  v8 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v80 - v10);
  v12 = type metadata accessor for RemoteAlertRequest();
  v82 = *(v12 - 8);
  v13 = *(v82 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v80 - v17;
  result = sub_10008DFC8();
  if (v20)
  {
    v21 = result;
    v22 = v20;
    if (a2)
    {
      swift_beginAccess();
      v23 = *(v4 + 112);
      if (*(v23 + 16))
      {
        v24 = *(v5 + 112);

        v25 = sub_1000C547C(v21, v22);
        if (v26)
        {
          v27 = v12;
          v28 = *(*(v23 + 56) + 8 * v25);

          v29 = *(v28 + 16);
          v12 = v27;

          if (v29)
          {
            if (qword_10012CC18 == -1)
            {
              goto LABEL_7;
            }

            goto LABEL_53;
          }
        }

        else
        {
        }
      }
    }

    v81 = v12;
    v41 = a1 + *(v12 + 28);
    v42 = *v41;
    if (*v41)
    {
      v43 = *(v41 + 8);

      v42(v44);
      sub_10006C574(v42);
    }

    sub_10003F2F4(a1, v16);
    swift_beginAccess();
    v45 = *(v5 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83[0] = *(v5 + 112);
    v47 = v83[0];
    *(v5 + 112) = 0x8000000000000000;
    v18 = sub_1000C547C(v21, v22);
    v49 = v47[2];
    v50 = (v48 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      __break(1u);
      goto LABEL_49;
    }

    v52 = v48;
    if (v47[3] >= v51)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *(v5 + 112) = v47;
        if (v48)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_1000CF074();
        v47 = v83[0];
        *(v5 + 112) = v83[0];
        if (v52)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_1000CD1EC(v51, isUniquelyReferenced_nonNull_native);
      v47 = v83[0];
      v53 = sub_1000C547C(v21, v22);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_55;
      }

      v18 = v53;
      *(v5 + 112) = v47;
      if (v52)
      {
LABEL_26:
        v80 = v11;
        v11 = v47[7];
        v47 = *(v11 + v18);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        *(v11 + v18) = v47;
        if (v59)
        {
LABEL_27:
          v61 = v47[2];
          v60 = v47[3];
          if (v61 >= v60 >> 1)
          {
            v47 = sub_1000CBFF4(v60 > 1, v61 + 1, 1, v47);
            *(v11 + v18) = v47;
          }

          v47[2] = v61 + 1;
          v62 = (*(v82 + 80) + 32) & ~*(v82 + 80);
          sub_10003F35C(v16, v47 + v62 + *(v82 + 72) * v61);
          swift_endAccess();
          if (qword_10012CC18 != -1)
          {
            swift_once();
          }

          v63 = type metadata accessor for Logger();
          sub_100011F80(v63, qword_100135C88);

          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v84[0] = v67;
            *v66 = 136315138;
            *(v66 + 4) = sub_1000BA5C8(v21, v22, v84);
            _os_log_impl(&_mh_execute_header, v64, v65, "Remote Alert request enqueued for token: %s", v66, 0xCu);
            sub_10002E6CC(v67);
          }

          v68 = *(v5 + 112);
          if (!*(v68 + 16))
          {
          }

          v69 = *(v5 + 112);

          v70 = sub_1000C547C(v21, v22);
          if ((v71 & 1) == 0)
          {
          }

          v72 = *(*(v68 + 56) + 8 * v70);

          v73 = *(v72 + 16);

          if (v73 != 1 || (sub_1000D0750(a1, 0, 0, 0) & 1) != 0)
          {
          }

          v74 = sub_1000C7BE8();
          v75 = sub_10002B860(v83, v21, v22);
          v77 = *v76;
          if (!*v76)
          {
            (v75)(v83, 0);

            (v74)(v84, 0);
            v79 = 1;
            v78 = v80;
            goto LABEL_45;
          }

          if (*(v77 + 16))
          {
            v78 = v80;
            sub_10003F2F4(v77 + v62, v80);
            sub_10002E60C(0, 1);
            (v75)(v83, 0);

            (v74)(v84, 0);
            v79 = 0;
LABEL_45:
            (*(v82 + 56))(v78, v79, 1, v81);
            return sub_100005688(v78, &qword_10012DC30, &qword_1000EEC90);
          }

          __break(1u);
LABEL_55:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_49:
        v47 = sub_1000CBFF4(0, v47[2] + 1, 1, v47);
        *(v11 + v18) = v47;
        goto LABEL_27;
      }
    }

    v47[(v18 >> 6) + 8] |= 1 << v18;
    v55 = (v47[6] + 16 * v18);
    *v55 = v21;
    v55[1] = v22;
    *(v47[7] + 8 * v18) = &_swiftEmptyArrayStorage;
    v56 = v47[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_7:
      v30 = type metadata accessor for Logger();
      sub_100011F80(v30, qword_100135C88);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v84[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_1000BA5C8(v21, v22, v84);
        _os_log_impl(&_mh_execute_header, v31, v32, "Duplicate request not allowed for token: %s", v33, 0xCu);
        sub_10002E6CC(v34);
      }

      v35 = v80;
      if (v80)
      {
        v36 = *(v5 + 112);
        if (*(v36 + 16))
        {
          sub_10000519C(v80);

          v37 = sub_1000C547C(v21, v22);
          v39 = v38;

          if ((v39 & 1) == 0)
          {

            return sub_10006C574(v35);
          }

          v40 = *(*(v36 + 56) + 8 * v37);

          if (*(v40 + 16))
          {
            sub_10003F2F4(v40 + ((*(v82 + 80) + 32) & ~*(v82 + 80)), v18);

            v35(v18);
            sub_10006C574(v35);
            return sub_10002D820(v18);
          }

          sub_10006C574(v35);
        }
      }
    }

    v47[2] = v58;

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1000C84F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 112);
  if (*(v7 + 16))
  {
    v8 = *(v3 + 112);

    v9 = sub_1000C547C(a1, a2);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);

      if (*(v11 + 16))
      {
        v12 = type metadata accessor for RemoteAlertRequest();
        v13 = *(v12 - 8);
        sub_10003F2F4(v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), a3);

        return (*(v13 + 56))(a3, 0, 1, v12);
      }
    }
  }

  v15 = type metadata accessor for RemoteAlertRequest();
  return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
}

uint64_t sub_1000C865C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v27[-v9];
  v11 = sub_10008DFC8();
  if (!v12)
  {
    return 0;
  }

  v13 = v11;
  v14 = v12;
  swift_beginAccess();
  v15 = *(v1 + 120);
  if (!*(v15 + 16))
  {
LABEL_7:
    v24 = type metadata accessor for RemoteAlertRequest();
    v25 = *(*(v24 - 8) + 56);
    v23 = 1;
    v25(v10, 1, 1, v24);
    sub_100005688(v10, &qword_10012DC30, &qword_1000EEC90);
    sub_10003F2F4(a1, v8);
    v25(v8, 0, 1, v24);
    swift_beginAccess();
    sub_1000D4574(v8, v13, v14);
    swift_endAccess();
    return v23;
  }

  v16 = *(v2 + 120);

  v17 = sub_1000C547C(v13, v14);
  if ((v18 & 1) == 0)
  {

    goto LABEL_7;
  }

  v19 = v17;

  v20 = *(v15 + 56);
  v21 = type metadata accessor for RemoteAlertRequest();
  v22 = *(v21 - 8);
  sub_10003F2F4(v20 + *(v22 + 72) * v19, v10);

  (*(v22 + 56))(v10, 0, 1, v21);
  sub_100005688(v10, &qword_10012DC30, &qword_1000EEC90);
  return 0;
}

uint64_t sub_1000C88DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for RemoteAlertRequest();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  swift_beginAccess();
  sub_1000E0F14(a1, a2, v7);
  swift_endAccess();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100005688(v7, &qword_10012DC30, &qword_1000EEC90);
  }

  sub_10003F35C(v7, v15);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100011F80(v17, qword_100135C88);
  sub_10003F2F4(v15, v12);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    v22 = GameOverlayUIConfig.ServiceKind.rawValue.getter();
    v24 = v23;
    sub_10002D820(v12);
    v25 = sub_1000BA5C8(v22, v24, &v27);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "Enqueuing deferring request: %s", v20, 0xCu);
    sub_10002E6CC(v21);
  }

  else
  {

    sub_10002D820(v12);
  }

  sub_1000C7CA0(v15, 0, 0, 0);
  return sub_10002D820(v15);
}

uint64_t sub_1000C8BE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + *(type metadata accessor for RemoteAlertRequest() + 24));
  swift_beginAccess();
  sub_1000035B4(v3 + 64, v22, &unk_100131120, &unk_1000EAAF0);
  v4 = v23;
  if (v23)
  {
    v5 = v24;
    v6 = sub_10002D754(v22, v23);
    v7 = *(v4 - 8);
    v8 = *(v7 + 64);
    __chkstk_darwin(v6);
    v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v7 + 16))(v10);
    sub_100005688(v22, &unk_100131120, &unk_1000EAAF0);
    v11 = (*(v5 + 16))(v4, v5);
    v13 = v12;
    (*(v7 + 8))(v10, v4);
  }

  else
  {
    sub_100005688(v22, &unk_100131120, &unk_1000EAAF0);
    v11 = 0;
    v13 = 0;
  }

  v14 = a2[3];
  v15 = a2[4];
  sub_10002D754(a2, v14);
  v16 = (*(v15 + 16))(v14, v15);
  if (v13)
  {
    if (v11 == v16 && v13 == v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1000C8E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000C8E3C, 0, 0);
}

uint64_t sub_1000C8E3C()
{
  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CA0;
  *(v0 + 32) = qword_100135CA0;

  return _swift_task_switch(sub_1000C8ED4, v1, 0);
}

uint64_t sub_1000C8ED4()
{
  v1 = v0[4];
  sub_100093AC4(v0[2], v0[3], 1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000C8F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 264) = v17;
  *(v8 + 272) = v18;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 328) = a5;
  *(v8 + 232) = a4;
  *(v8 + 240) = a6;
  v9 = *(*(sub_100002B38(&unk_100130F10, &qword_1000EA660) - 8) + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 288) = v10;
  v11 = *(v10 - 8);
  *(v8 + 296) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = type metadata accessor for MainActor();
  *(v8 + 320) = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C9080, v14, v13);
}

uint64_t sub_1000C9080()
{
  v1 = *(v0 + 320);

  if (qword_10012CC40 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 248);
  v6 = *(v0 + 328);
  v7 = *(v0 + 232);
  v8 = qword_100135CF0;
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();

  v12 = *(v8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v8 + 16);
  *(v8 + 16) = 0x8000000000000000;
  sub_1000CEC38(v7, v9, v11, isUniquelyReferenced_nonNull_native, &qword_1001320E0, &qword_1000EEC70);

  *(v8 + 16) = v36;
  swift_endAccess();
  sub_100002B38(&qword_1001320B8, &qword_1000EEC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EEB50;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001000E8560;
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000001000E8580;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = v6;
  v15 = sub_1000D1818(inited);
  swift_setDeallocating();
  sub_100002B38(&qword_1001320C0, &qword_1000EEC40);
  swift_arrayDestroy();
  if (v5)
  {
    v16 = *(v0 + 240);
    v17 = *(v0 + 248);
    *(v0 + 168) = &type metadata for String;
    *(v0 + 144) = v16;
    *(v0 + 152) = v17;
    sub_1000D1A50((v0 + 144), (v0 + 176));

    v18 = swift_isUniquelyReferenced_nonNull_native();
    v36 = v15;
    sub_1000CEDD8((v0 + 176), 0xD000000000000011, 0x80000001000E85A0, v18);
  }

  v20 = *(v0 + 264);
  v19 = *(v0 + 272);
  v21 = *(v0 + 256);
  v22 = *(v0 + 328);
  sub_1000C94C8(v15);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v21 setUserInfo:isa];

  v24 = [objc_opt_self() newHandleWithDefinition:v20 configurationContext:v19];
  if ((v22 & 1) == 0)
  {
    if (qword_10012CC28 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 312);
    v26 = *(v0 + 280);
    v27 = *(v0 + 232);
    [v24 registerObserver:{qword_100135CA8, v36}];
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);

    v29 = v24;
    v30 = static MainActor.shared.getter();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = &protocol witness table for MainActor;
    v31[4] = v27;
    v31[5] = v29;
    sub_100014BBC(0, 0, v26, &unk_1000EEC50, v31);
  }

  v32 = *(v0 + 304);
  v33 = *(v0 + 280);
  [v24 activateWithContext:{*(v0 + 256), v36}];

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1000C94C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002B38(&qword_1001320D8, &qword_1000EEC68);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000BA7A0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000D1A50(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000D1A50(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000D1A50(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000D1A50(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000C9790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1000C9828, v7, v6);
}

uint64_t sub_1000C9828()
{
  if (qword_10012CC28 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CA8;
  *(v0 + 80) = qword_100135CA8;

  return _swift_task_switch(sub_1000C98C0, v1, 0);
}

uint64_t sub_1000C98C0()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = v0[5];
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *(v1 + 112);
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = v0[5];

    v6 = __CocoaDictionary.count.getter();
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return _swift_task_switch(v6, v8, v7);
    }

    *(v1 + 112) = sub_1000CCFC8(v4, v8);
    v3 = v0[5];
  }

  else
  {
    v9 = *(v1 + 112);
    v10 = v0[5];
  }

  v11 = v0[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v1 + 112);
  sub_1000CEACC(v3, v11, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v14;
  swift_endAccess();
  v8 = v0[8];
  v7 = v0[9];
  v6 = sub_1000C99D4;

  return _swift_task_switch(v6, v8, v7);
}

uint64_t sub_1000C99D4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000C9A34()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[19];

  v5 = v0[20];

  v6 = v0[21];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

BOOL sub_1000C9AB8(uint64_t a1, unint64_t a2)
{
  v5 = v2[17];
  if (v5)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100011F80(v6, qword_100135C88);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000BA5C8(a1, a2, &v12);
      _os_log_impl(&_mh_execute_header, v7, v8, "Game Center banner for %s blocked on Game Mode banners", v9, 0xCu);
      sub_10002E6CC(v10);
    }
  }

  else
  {
    swift_beginAccess();

    sub_1000CFB80(&v13, a1, a2);
    swift_endAccess();

    v2[18] = *(v2[19] + 16);
  }

  return v5 == 0;
}

void sub_1000C9C6C()
{
  if (*(v0 + 144))
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100011F80(v1, qword_100135C88);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Game Mode banner blocked on Game Center banners", v4, 2u);
    }
  }

  else
  {
    v5 = *(v0 + 136);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 136) = v7;
    }
  }
}

uint64_t sub_1000C9D6C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000C9D90, v2, 0);
}

uint64_t sub_1000C9D90()
{
  v1 = v0[4];
  if (sub_1000C9AB8(v0[2], v0[3]))
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[4];
    sub_1000D3DCC(&qword_100132108, v2, type metadata accessor for RemoteAlertRequestQueue);
    v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_1000C9EEC;
    v8 = v0[4];

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_1000C9EEC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1000C9FFC, v2, 0);
}

uint64_t sub_1000C9FFC()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1000CA094;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_1000C9D6C(v4, v2);
}

uint64_t sub_1000CA094()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000CA188(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100132088, &qword_1000EEBF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4);
  v9 = *(a2 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 160) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1000CC448(0, v9[2] + 1, 1, v9);
    *(a2 + 160) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1000CC448(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 160) = v9;
  return result;
}

uint64_t sub_1000CA328()
{
  v1 = v0[2];
  sub_1000C9C6C();
  if (v3)
  {
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[2];
    sub_1000D3DCC(&qword_100132108, v2, type metadata accessor for RemoteAlertRequestQueue);
    v7 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v8 = swift_task_alloc();
    v0[3] = v8;
    *v8 = v0;
    v8[1] = sub_1000CA480;
    v9 = v0[2];

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_1000CA480()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000CA590, v2, 0);
}

uint64_t sub_1000CA590()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100032B60;
  v2 = *(v0 + 16);

  return sub_1000CA308();
}

uint64_t sub_1000CA620(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100132088, &qword_1000EEBF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4);
  v9 = *(a2 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 168) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1000CC448(0, v9[2] + 1, 1, v9);
    *(a2 + 168) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1000CC448(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 168) = v9;
  return result;
}

uint64_t sub_1000CA7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000CA838, v6, v5);
}

uint64_t sub_1000CA838()
{
  v2 = v0[3];
  v1 = v0[4];

  if (*(v2 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
  {
    *(v2 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
  }

  else
  {
    v3 = v0[3];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v0[2] = v3;
    sub_1000D3DCC(&qword_10012CFC8, 255, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000CA984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = *v4;
  v9 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v77 = &v68 - v11;
  v12 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v68 - v18;
  __chkstk_darwin(v17);
  v21 = &v68 - v20;
  v22 = type metadata accessor for RemoteAlertRequest();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v75 = v26;
  v76 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v79 = v4;
  if (a4)
  {
    v28 = v23;
    v29 = a4;
    goto LABEL_3;
  }

  v73 = a2;
  v70 = &v68 - v27;
  v69 = v16;
  swift_beginAccess();
  v41 = v4[14];
  v42 = *(v41 + 16);
  v72 = a1;
  v74 = v23;
  if (v42)
  {

    v43 = sub_1000C547C(v73, a3);
    if (v44)
    {
      v45 = *(*(v41 + 56) + 8 * v43);

      v46 = *(v45 + 16);
      if (v46)
      {
        v47 = v74;
        sub_10003F2F4(v45 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v74 + 72) * (v46 - 1), v19);
        v48 = v47;

        v49 = *(v47 + 56);
        v49(v19, 0, 1, v22);
        sub_10003F35C(v19, v21);
        v71 = v49;
        v49(v21, 0, 1, v22);
        v50 = (*(v47 + 48))(v21, 1, v22);
        goto LABEL_18;
      }

      v23 = v74;
    }
  }

  v51 = *(v23 + 56);
  v52 = 1;
  v71 = v51;
  v51(v19, 1, 1, v22);
  v53 = v79;
  swift_beginAccess();
  v54 = v53[15];
  if (*(v54 + 16))
  {
    v55 = v53[15];

    v56 = sub_1000C547C(v73, a3);
    if (v57)
    {
      sub_10003F2F4(*(v54 + 56) + *(v74 + 72) * v56, v21);
      v52 = 0;
    }
  }

  v71(v21, v52, 1, v22);
  v48 = v74;
  v58 = *(v74 + 48);
  if (v58(v19, 1, v22) != 1)
  {
    sub_100005688(v19, &qword_10012DC30, &qword_1000EEC90);
  }

  v50 = v58(v21, 1, v22);
LABEL_18:
  if (v50 != 1)
  {
    v66 = v70;
    sub_10003F35C(v21, v70);
    v67 = *(v66 + *(v22 + 24));
    swift_beginAccess();
    sub_1000035B4(v67 + 64, v81, &unk_100131120, &unk_1000EAAF0);
    sub_10002D820(v66);
    a1 = v72;
    if (!v82)
    {
      sub_100005688(v81, &unk_100131120, &unk_1000EAAF0);
      goto LABEL_26;
    }

    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
    type metadata accessor for RemoteAlertAccessPointContext(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_26:
      sub_1000C7CA0(a1, 0, 0, 0);
    }

    v28 = v48;
    v29 = v80;

LABEL_3:
    v30 = *(v29 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing);
    swift_retain_n();

    if (v30 == 1)
    {
      LODWORD(v73) = a4 != 0;
      v31 = type metadata accessor for TaskPriority();
      v32 = v77;
      (*(*(v31 - 8) + 56))(v77, 1, 1, v31);
      v33 = v76;
      sub_10003F2F4(a1, v76);
      v35 = sub_1000D3DCC(&qword_100132108, v34, type metadata accessor for RemoteAlertRequestQueue);
      v36 = (*(v28 + 80) + 33) & ~*(v28 + 80);
      v37 = (v75 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
      v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      v40 = v79;
      *(v39 + 16) = v79;
      *(v39 + 24) = v35;
      *(v39 + 32) = v73;
      sub_10003F35C(v33, v39 + v36);
      *(v39 + v37) = v29;
      *(v39 + v38) = v40;
      *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
      swift_retain_n();

      sub_1000C7860(0, 0, v32, &unk_1000EECD8, v39);
    }

    goto LABEL_26;
  }

  sub_100005688(v21, &qword_10012DC30, &qword_1000EEC90);
  v59 = v72;
  v60 = sub_1000C865C(v72);
  sub_1000C7CA0(v59, 0, 0, 0);
  if ((v60 & 1) == 0)
  {
  }

  result = sub_10008DFC8();
  if (v62)
  {
    v63 = result;
    v64 = v62;
    v65 = v69;
    v71(v69, 1, 1, v22);
    swift_beginAccess();
    sub_1000D4574(v65, v63, v64);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000CB110(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = a7;
  *(v7 + 104) = a5;
  *(v7 + 200) = a4;
  v9 = *(*(sub_100002B38(&qword_10012DC30, &qword_1000EEC90) - 8) + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v7 + 136) = v10;
  v11 = *(v10 - 8);
  *(v7 + 144) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  v13 = type metadata accessor for ContinuousClock();
  *(v7 + 160) = v13;
  v14 = *(v13 - 8);
  *(v7 + 168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1000CB270, a7, 0);
}

uint64_t sub_1000CB270()
{
  if (*(v0 + 200))
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100011F80(v1, qword_100135C88);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Attempting coalescing incoming request with existing banner.", v4, 2u);
    }

    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    v11 = *(v0 + 104);

    v12 = type metadata accessor for RemoteAlertRequest();
    v13 = *(v11 + *(v12 + 24));
    *(v0 + 40) = type metadata accessor for RemoteAlertAccessPointContext(0);
    *(v0 + 48) = &off_1001240E8;
    *(v0 + 16) = v9;
    swift_beginAccess();

    sub_10003EF48(v0 + 16, v13 + 104);
    swift_endAccess();
    UUID.init()();
    v14 = UUID.uuidString.getter();
    v16 = v15;
    (*(v5 + 8))(v6, v8);
    sub_10003F2F4(v11, v7);
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    swift_beginAccess();

    sub_1000D4574(v7, v14, v16);
    swift_endAccess();
    LOBYTE(v6) = sub_1000D0750(v11, 1, v14, v16);

    if ((v6 & 1) == 0)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed coalescing incoming request with existing banner.", v19, 2u);
      }
    }

    v20 = *(v0 + 176);
    v21 = *(v0 + 152);
    v22 = *(v0 + 128);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 176);
    v26 = static Duration.seconds(_:)();
    v28 = v27;
    static Clock<>.continuous.getter();
    v29 = swift_task_alloc();
    *(v0 + 184) = v29;
    *v29 = v0;
    v29[1] = sub_1000CB634;
    v30 = *(v0 + 176);

    return sub_1000CBB34(v26, v28, 0, 0, 1);
  }
}

uint64_t sub_1000CB634()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 192) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 120);
  if (v0)
  {
    v9 = sub_1000CBAB8;
  }

  else
  {
    v9 = sub_1000CB7BC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000CB7BC()
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100011F80(v1, qword_100135C88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting coalescing incoming request with existing banner.", v4, 2u);
  }

  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[13];

  v12 = type metadata accessor for RemoteAlertRequest();
  v13 = *(v11 + *(v12 + 24));
  v0[5] = type metadata accessor for RemoteAlertAccessPointContext(0);
  v0[6] = &off_1001240E8;
  v0[2] = v9;
  swift_beginAccess();

  sub_10003EF48((v0 + 2), v13 + 104);
  swift_endAccess();
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v5 + 8))(v6, v8);
  sub_10003F2F4(v11, v7);
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  swift_beginAccess();

  sub_1000D4574(v7, v14, v16);
  swift_endAccess();
  LOBYTE(v6) = sub_1000D0750(v11, 1, v14, v16);

  if ((v6 & 1) == 0)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed coalescing incoming request with existing banner.", v19, 2u);
    }
  }

  v20 = v0[22];
  v21 = v0[19];
  v22 = v0[16];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000CBAB8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

uint64_t sub_1000CBB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000CBC34, 0, 0);
}

uint64_t sub_1000CBC34()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1000D3DCC(&qword_100132110, 255, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000D3DCC(&qword_100132118, 255, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000CBDCC;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1000CBDCC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1000CBF88, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1000CBF88()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

size_t sub_1000CBFF4(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100002B38(&qword_1001320A0, &unk_1000EEC08);
  v10 = *(type metadata accessor for RemoteAlertRequest() - 8);
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
  v15 = *(type metadata accessor for RemoteAlertRequest() - 8);
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

void *sub_1000CC1CC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002B38(&qword_100132130, &qword_1000EEDA8);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100002B38(&qword_100132138, qword_1000EEDB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000CC300(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002B38(&qword_1001312C0, &qword_1000ED7F8);
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
    sub_100002B38(&qword_10012DC80, &qword_1000ED7F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000CC448(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100002B38(&qword_100132090, &qword_1000EEBF8);
  v10 = *(sub_100002B38(&qword_100132088, &qword_1000EEBF0) - 8);
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
  v15 = *(sub_100002B38(&qword_100132088, &qword_1000EEBF0) - 8);
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

void sub_1000CC638(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1000CC6D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000CC810();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1000CCE04(v9);
  *v2 = v20;
  return v13;
}

void *sub_1000CC810()
{
  v1 = v0;
  sub_100002B38(&qword_100132098, &qword_1000EEC00);
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

uint64_t sub_1000CC96C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002B38(&qword_100132098, &qword_1000EEC00);
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

uint64_t sub_1000CCBA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002B38(&qword_100132098, &qword_1000EEC00);
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

unint64_t sub_1000CCE04(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int sub_1000CCFC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002B38(&qword_1001320D0, &qword_1000EEC60);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000D1A60();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for ConnectionContext();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1000CDD1C(v12 + 1, 1);
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

uint64_t sub_1000CD1EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002B38(&qword_1001320E8, &qword_1000EEC80);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}