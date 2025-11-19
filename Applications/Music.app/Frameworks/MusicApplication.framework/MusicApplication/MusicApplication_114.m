uint64_t sub_A2AE98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore21JSNowPlayingViewModelC10LyricsModeO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_A2AEC8@<X0>(uint64_t *a1@<X8>)
{
  result = JSNowPlayingViewModel.LyricsMode.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_A2AF0C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_ABB3C0();
  }

  return v12 & 1;
}

MusicJSCore::JSNowPlayingViewModel::TimeSyncingPrecision_optional __swiftcall JSNowPlayingViewModel.TimeSyncingPrecision.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_D4FCC8;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSNowPlayingViewModel_TimeSyncingPrecision_syllableBySyllable;
  }

  else
  {
    v4.value = MusicJSCore_JSNowPlayingViewModel_TimeSyncingPrecision_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSNowPlayingViewModel.TimeSyncingPrecision.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x694C7942656E696CLL;
  }
}

uint64_t sub_A2B034(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x694C7942656E696CLL;
  }

  if (v2)
  {
    v4 = 0xEA0000000000656ELL;
  }

  else
  {
    v4 = 0x8000000000B7D050;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x694C7942656E696CLL;
  }

  if (*a2)
  {
    v6 = 0x8000000000B7D050;
  }

  else
  {
    v6 = 0xEA0000000000656ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_A2B0E4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_A2B170()
{
  sub_AB93F0();
}

Swift::Int sub_A2B1E8()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_A2B270@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4FCC8;
  v8._object = v3;
  v5 = sub_ABB140(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_A2B2D0(unint64_t *a1@<X8>)
{
  v2 = 0x8000000000B7D050;
  v3 = 0x694C7942656E696CLL;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xEA0000000000656ELL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_A2B318(unsigned __int8 a1)
{
  v3 = 0x736C6F72746E6F63;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_mode;
  result = swift_beginAccess();
  v7 = v1[v5];
  if (v7 != 3)
  {
    if (a1 == 3)
    {
      goto LABEL_27;
    }

    if (v1[v5])
    {
      if (v7 == 1)
      {
        v8 = 0xE600000000000000;
        v9 = 0x73636972796CLL;
        v10 = a1;
        if (!a1)
        {
LABEL_18:
          v12 = 0xE800000000000000;
          if (v9 != 0x736C6F72746E6F63)
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v9 = 0x75517478654E7075;
        v8 = 0xEB00000000657565;
        v10 = a1;
        if (!a1)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v8 = 0xE800000000000000;
      v9 = 0x736C6F72746E6F63;
      v10 = a1;
      if (!a1)
      {
        goto LABEL_18;
      }
    }

    if (v10 == 1)
    {
      v12 = 0xE600000000000000;
      if (v9 != 0x73636972796CLL)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = 0xEB00000000657565;
      if (v9 != 0x75517478654E7075)
      {
        goto LABEL_23;
      }
    }

LABEL_21:
    if (v8 == v12)
    {
    }

LABEL_23:
    v13 = sub_ABB3C0();

    if (v13)
    {
      return result;
    }

    if (a1 == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      goto LABEL_11;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (a1 != 2)
  {
    return result;
  }

LABEL_11:
  v11 = sub_ABB3C0();

  if (v11)
  {
LABEL_26:
    v14 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode;
    swift_beginAccess();
    v15 = v1[v14];
    v1[v14] = 5;
    sub_A2B8C0(v15);
  }

LABEL_27:
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v16 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_AF85F0;
  *(v17 + 56) = ObjectType;
  *(v17 + 32) = v1;
  if (v1[v5] > 1u)
  {
    if (v1[v5] != 2)
    {
      v26 = 0u;
      v27 = 0u;
      v23 = objc_allocWithZone(NSNull);
      v24 = v1;
      v25 = [v23 init];
      *(v17 + 88) = sub_13C80(0, &qword_E27CD0);
      *(v17 + 64) = v25;
      if (*(&v27 + 1))
      {
        sub_9BC10(&v26);
      }

      goto LABEL_36;
    }

    v3 = 0x75517478654E7075;
    v18 = 0xEB00000000657565;
  }

  else if (v1[v5])
  {
    v18 = 0xE600000000000000;
    v3 = 0x73636972796CLL;
  }

  else
  {
    v18 = 0xE800000000000000;
  }

  *(&v27 + 1) = &type metadata for String;
  *&v26 = v3;
  *(&v26 + 1) = v18;
  sub_9ACFC(&v26, (v17 + 64));
  v19 = v1;
LABEL_36:
  sub_13C80(0, &qword_DE8ED0);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = _swiftEmptyArrayStorage;
  *(v20 + 32) = 0x6F4D657461647075;
  *(v20 + 40) = 0xEA00000000006564;
  *(v20 + 48) = v1;
  *(v20 + 56) = v16;
  *(v20 + 64) = 0;
  v21 = v1;
  v22 = v16;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v20);
}

uint64_t JSNowPlayingViewModel.mode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_mode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_A2B7B8(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void (*JSNowPlayingViewModel.mode.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_mode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_A2B8A8;
}

uint64_t sub_A2B8C0(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode;
  swift_beginAccess();
  result = v1[v4];
  if (result == 5)
  {
    if (a1 == 5)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (a1 == 5)
  {
    goto LABEL_5;
  }

  v17 = JSNowPlayingViewModel.LyricsMode.rawValue.getter(result);
  v19 = v18;
  if (v17 == JSNowPlayingViewModel.LyricsMode.rawValue.getter(a1) && v19 == v20)
  {
  }

  v22 = sub_ABB3C0();

  if ((v22 & 1) == 0)
  {
LABEL_5:
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v6 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_AF85F0;
    *(v7 + 56) = ObjectType;
    *(v7 + 32) = v1;
    v8 = v1[v4];
    if (v8 == 5)
    {
      v24 = 0u;
      v9 = objc_allocWithZone(NSNull);
      v10 = v1;
      v11 = [v9 init];
      *(v7 + 88) = sub_13C80(0, &qword_E27CD0);
      *(v7 + 64) = v11;
      if (*(&v24 + 1))
      {
        sub_9BC10(&v23);
      }
    }

    else
    {
      v12 = v1;
      *(&v24 + 1) = &type metadata for String;
      *&v23 = JSNowPlayingViewModel.LyricsMode.rawValue.getter(v8);
      *(&v23 + 1) = v13;
      sub_9ACFC(&v23, (v7 + 64));
    }

    sub_13C80(0, &qword_DE8ED0);
    v14 = swift_allocObject();
    *(v14 + 16) = v7;
    *(v14 + 24) = _swiftEmptyArrayStorage;
    *(v14 + 32) = 0xD000000000000010;
    *(v14 + 40) = 0x8000000000B822E0;
    *(v14 + 48) = v1;
    *(v14 + 56) = v6;
    *(v14 + 64) = 0;
    v15 = v1;
    v16 = v6;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v14);
  }

  return result;
}

uint64_t JSNowPlayingViewModel.lyricsMode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*JSNowPlayingViewModel.lyricsMode.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_A2BC2C;
}

void sub_A2BC44(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v3 = *a1;
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v4);
  *(v5 + v4) = v6;
  a3(v7);

  free(v3);
}

uint64_t sub_A2BC90(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_currentMetricsDictionary;
  swift_beginAccess();
  v5 = *&v1[v4];

  LOBYTE(a1) = sub_A2C9E4(a1, v5);

  if ((a1 & 1) == 0)
  {
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v7 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_AF85F0;
    *(v8 + 56) = ObjectType;
    *(v8 + 32) = v1;
    v9 = v1;

    v11 = sub_A2BEC8(v10);

    if (v11)
    {
      *(&v17 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
      *&v16 = v11;
      sub_9ACFC(&v16, (v8 + 64));
    }

    else
    {
      v17 = 0u;
      v12 = [objc_allocWithZone(NSNull) init];
      *(v8 + 88) = sub_13C80(0, &qword_E27CD0);
      *(v8 + 64) = v12;
      if (*(&v17 + 1))
      {
        sub_9BC10(&v16);
      }
    }

    sub_13C80(0, &qword_DE8ED0);
    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    *(v13 + 24) = _swiftEmptyArrayStorage;
    *(v13 + 32) = 0xD000000000000011;
    *(v13 + 40) = 0x8000000000B822C0;
    *(v13 + 48) = v9;
    *(v13 + 56) = v7;
    *(v13 + 64) = 0;
    v14 = v9;
    v15 = v7;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v13);
  }

  return result;
}

void *sub_A2BEC8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v8 = v6;
LABEL_11:
    v9 = __clz(__rbit64(v4)) | (v8 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v11 = v10[1];
    v12 = *(a1 + 56) + 24 * v9;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    *&v34 = *v10;
    *(&v34 + 1) = v11;
    swift_bridgeObjectRetain_n();

    sub_A2D4D0(v13, v14, v15);
    sub_ABAD10();
    v31 = v14;
    v32 = v13;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v35 = &type metadata for Float;
        LODWORD(v34) = v13;
      }

      else
      {
        v35 = &type metadata for String;
        *&v34 = v13;
        *(&v34 + 1) = v14;
      }
    }

    else if (v15)
    {
      v35 = &type metadata for Int;
      *&v34 = v13;
    }

    else
    {
      v35 = &type metadata for Bool;
      LOBYTE(v34) = v13 & 1;
    }

    sub_9ACFC(&v34, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_2EC004(v36);
    v19 = _swiftEmptyDictionarySingleton[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_29;
    }

    v23 = v18;
    if (_swiftEmptyDictionarySingleton[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v17;
        sub_330244();
        v17 = v28;
      }
    }

    else
    {
      sub_325C7C(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_2EC004(v36);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_31;
      }
    }

    v4 &= v4 - 1;
    if (v23)
    {
      v7 = (_swiftEmptyDictionarySingleton[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0(v7);
      sub_9ACFC(v33, v7);

      sub_A2D4E8(v32, v31, v15);

      sub_8085C(v36);
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v17 >> 6) + 8] |= 1 << v17;
      v25 = v17;
      sub_9ACA0(v36, _swiftEmptyDictionarySingleton[6] + 40 * v17);
      sub_9ACFC(v33, (_swiftEmptyDictionarySingleton[7] + 32 * v25));

      sub_A2D4E8(v32, v31, v15);

      sub_8085C(v36);
      v26 = _swiftEmptyDictionarySingleton[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_30;
      }

      _swiftEmptyDictionarySingleton[2] = v27;
    }

    v6 = v8;
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return _swiftEmptyDictionarySingleton;
    }

    v4 = *(v1 + 8 * v8);
    ++v6;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

uint64_t JSNowPlayingViewModel.currentMetricsDictionary.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_currentMetricsDictionary;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_A2BC90(v4);
}

void (*JSNowPlayingViewModel.currentMetricsDictionary.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_currentMetricsDictionary;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_A2C334;
}

void sub_A2C334(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 24);
  if (a2)
  {

    sub_A2BC90(v5);
  }

  else
  {
    sub_A2BC90(v5);
  }

  free(v2);
}

uint64_t JSNowPlayingViewModel.handleMetricsEvent(event:impressions:pageDetailsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9D0820(a1, v10);
  result = sub_A2CC10(v10);
  if (result == 30)
  {
    return result;
  }

  v12 = result;
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v13 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF8600;
  *(v14 + 56) = ObjectType;
  *(v14 + 32) = v4;
  v15 = JSNowPlayingViewModel.Action.rawValue.getter(v12);
  *(v14 + 88) = &type metadata for String;
  *(v14 + 64) = v15;
  *(v14 + 72) = v16;
  v17 = *(a1 + *(type metadata accessor for Metrics.Event(0) + 20));
  if (v17 <= 1)
  {
    if (v17)
    {
      v18 = 0x8000000000B6B920;
      v19 = 0xD000000000000010;
    }

    else
    {
      v18 = 0xE600000000000000;
      v19 = 0x6E6F74747562;
    }
  }

  else if (v17 == 2)
  {
    v18 = 0xE500000000000000;
    v19 = 0x6B63617274;
  }

  else if (v17 == 3)
  {
    v18 = 0xEB000000006E6F74;
    v19 = 0x7475426B63617274;
  }

  else
  {
    v18 = 0x8000000000B6B900;
    v19 = 0xD000000000000015;
  }

  *(v14 + 120) = &type metadata for String;
  *(v14 + 96) = v19;
  *(v14 + 104) = v18;
  if (!a2)
  {
    *(v14 + 152) = sub_13C80(0, &qword_DFA720);
    v24 = v4;
LABEL_17:
    v23 = [objc_allocWithZone(NSNull) init];
    goto LABEL_18;
  }

  objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
  v20 = a3;
  v21 = v4;

  v23 = sub_9ED890(v22, 0, a3);

  *(v14 + 152) = sub_13C80(0, &qword_DFA720);
  if (!v23)
  {
    goto LABEL_17;
  }

LABEL_18:
  *(v14 + 128) = v23;
  v25 = Metrics.Event.metricsDictionary.getter();
  if (v25)
  {
    v26 = v25;
    *(&v32 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
    *&v31 = v26;
    sub_9ACFC(&v31, (v14 + 160));
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v27 = [objc_allocWithZone(NSNull) init];
    *(v14 + 184) = sub_13C80(0, &qword_E27CD0);
    *(v14 + 160) = v27;
    if (*(&v32 + 1))
    {
      sub_9BC10(&v31);
    }
  }

  sub_13C80(0, &qword_DE8ED0);
  v28 = swift_allocObject();
  *(v28 + 16) = v14;
  *(v28 + 24) = _swiftEmptyArrayStorage;
  *(v28 + 32) = 0xD000000000000011;
  *(v28 + 40) = 0x8000000000B80EB0;
  *(v28 + 48) = v4;
  *(v28 + 56) = v13;
  *(v28 + 64) = 0;
  v29 = v4;
  v30 = v13;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BE1A0, v28);
}

id JSNowPlayingViewModel.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_mode) = 3;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode) = 5;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_currentMetricsDictionary) = _swiftEmptyDictionarySingleton;
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v3 = 0;
  v3[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_A2C840(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_2EBF88(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_ABB3C0();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_A2C9E4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v29 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v30 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(result + 56) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);

    sub_A2D4D0(v17, v18, v19);
    v20 = sub_2EBF88(v14, v15);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
LABEL_35:
      sub_A2D4E8(v17, v18, v19);
      return 0;
    }

    v23 = *(a2 + 56) + 24 * v20;
    v24 = *v23;
    if (*(v23 + 16) > 1u)
    {
      if (*(v23 + 16) == 2)
      {
        if (v19 != 2)
        {
          goto LABEL_35;
        }

        v26 = *&v24 == *&v17;
        goto LABEL_24;
      }

      if (v19 != 3)
      {
        goto LABEL_35;
      }

      if (v24 == v17 && *(v23 + 8) == v18)
      {
        sub_A2D4E8(v17, v18, 3);
        result = v29;
        v7 = v30;
      }

      else
      {
        v28 = sub_ABB3C0();
        sub_A2D4E8(v17, v18, 3);
        result = v29;
        v7 = v30;
        if ((v28 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (*(v23 + 16))
    {
      if (v19 != 1)
      {
        goto LABEL_35;
      }

      v26 = v24 == v17;
LABEL_24:
      result = v29;
      v7 = v30;
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        goto LABEL_35;
      }

      v25 = v24 ^ v17;
      result = v29;
      v7 = v30;
      if (v25)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v30 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_A2CC10(uint64_t a1)
{
  type metadata accessor for Metrics.Event.Action(0);
  v2 = swift_getEnumCaseMultiPayload() - 2;
  result = 0;
  switch(v2)
  {
    case 0:
      result = 16;
      break;
    case 1:
      sub_9D0884(a1);
      result = 20;
      break;
    case 2:
      sub_9D0884(a1);
      result = 21;
      break;
    case 4:
      result = 27;
      break;
    case 5:
      return result;
    case 6:
      result = 1;
      break;
    case 9:
      result = 2;
      break;
    case 10:
      result = 3;
      break;
    case 11:
      result = 4;
      break;
    case 14:
      result = 5;
      break;
    case 18:
      result = 6;
      break;
    case 19:
      result = 7;
      break;
    case 21:
      result = 8;
      break;
    case 22:
      result = 9;
      break;
    case 23:
      result = 10;
      break;
    case 24:
      result = 11;
      break;
    case 25:
      result = 12;
      break;
    case 27:
      result = 13;
      break;
    case 28:
      result = 14;
      break;
    case 37:
      result = 15;
      break;
    case 39:
      result = 17;
      break;
    case 40:
      result = 18;
      break;
    case 41:
      result = 19;
      break;
    case 42:
      result = 22;
      break;
    case 43:
      result = 23;
      break;
    case 44:
      result = 24;
      break;
    case 49:
      result = 25;
      break;
    case 51:
      result = 26;
      break;
    case 55:
      result = 28;
      break;
    case 56:
      result = 29;
      break;
    default:
      sub_9D0884(a1);
      result = 30;
      break;
  }

  return result;
}

uint64_t _s11MusicJSCore21JSNowPlayingViewModelC12MetricsValueO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      return a6 == 2 && *&a1 == *&a4;
    }

    else if (a6 == 3)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_ABB3C0();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = a4 ^ a1 ^ 1;
    if (a6)
    {
      v6 = 0;
    }

    v8 = a6 == 1 && a1 == a4;
    if (a3)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t _s11MusicJSCore21JSNowPlayingViewModelC6ActionO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_ABB420();

  if (v0 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v0;
  }
}

uint64_t _s11MusicJSCore21JSNowPlayingViewModelC4ModeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4FC60;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t _s11MusicJSCore21JSNowPlayingViewModelC10LyricsModeO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_ABB3C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000 || (sub_ABB3C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636974617473 && a2 == 0xE600000000000000 || (sub_ABB3C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E7953656D6974 && a2 == 0xEA00000000006465 || (sub_ABB3C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000B7D050 == a2)
  {

    return 1;
  }

  else
  {
    v6 = sub_ABB3C0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_A2D16C()
{
  result = qword_E27008;
  if (!qword_E27008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E27008);
  }

  return result;
}

unint64_t sub_A2D1C4()
{
  result = qword_E27010;
  if (!qword_E27010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E27010);
  }

  return result;
}

unint64_t sub_A2D21C()
{
  result = qword_E27018;
  if (!qword_E27018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E27018);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSNowPlayingViewModel.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSNowPlayingViewModel.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSNowPlayingViewModel.LyricsMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_A2D4D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_A2D4E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

void *JSSettingsAuthenticationSection.forgotCredentialsLink.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_forgotCredentialsLink;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t JSSettingsAuthenticationSection.description.getter()
{
  v1 = v0;
  v40._countAndFlagsBits = 60;
  v40._object = 0xE100000000000000;
  sub_AB94A0(v40);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_AB92A0();
  v6 = v5;

  v41._countAndFlagsBits = v4;
  v41._object = v6;
  sub_AB94A0(v41);

  v42._countAndFlagsBits = 8250;
  v42._object = 0xE200000000000000;
  sub_AB94A0(v42);
  sub_ABAF70();
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierLabelText);
  swift_beginAccess();
  v8 = v7[1];
  v9 = *v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  if (v9)
  {
    sub_ABAD90(28);

    v11 = *v7;
    v10 = v7[1];

    v43._countAndFlagsBits = v11;
    v43._object = v10;
    sub_AB94A0(v43);

    v44._countAndFlagsBits = 34;
    v44._object = 0xE100000000000000;
    sub_AB94A0(v44);
    v45._countAndFlagsBits = 0xD000000000000019;
    v45._object = 0x8000000000B82300;
    sub_AB94A0(v45);
  }

  v12 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierFieldPlaceholder);
  swift_beginAccess();
  v13 = v12[1];
  v14 = *v12 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v13) & 0xF;
  }

  if (v14)
  {
    sub_ABAD90(35);

    v16 = *v12;
    v15 = v12[1];

    v46._countAndFlagsBits = v16;
    v46._object = v15;
    sub_AB94A0(v46);

    v47._countAndFlagsBits = 34;
    v47._object = 0xE100000000000000;
    sub_AB94A0(v47);
    v48._countAndFlagsBits = 0xD000000000000020;
    v48._object = 0x8000000000B82320;
    sub_AB94A0(v48);
  }

  v17 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordLabelText);
  swift_beginAccess();
  v18 = v17[1];
  v19 = *v17 & 0xFFFFFFFFFFFFLL;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v18) & 0xF;
  }

  if (v19)
  {
    sub_ABAD90(26);

    v21 = *v17;
    v20 = v17[1];

    v49._countAndFlagsBits = v21;
    v49._object = v20;
    sub_AB94A0(v49);

    v50._countAndFlagsBits = 34;
    v50._object = 0xE100000000000000;
    sub_AB94A0(v50);
    v51._countAndFlagsBits = 0xD000000000000017;
    v51._object = 0x8000000000B82350;
    sub_AB94A0(v51);
  }

  v22 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordFieldPlaceholder);
  swift_beginAccess();
  v23 = v22[1];
  v24 = *v22 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v23) & 0xF;
  }

  if (v24)
  {
    sub_ABAD90(33);

    v26 = *v22;
    v25 = v22[1];

    v52._countAndFlagsBits = v26;
    v52._object = v25;
    sub_AB94A0(v52);

    v53._countAndFlagsBits = 34;
    v53._object = 0xE100000000000000;
    sub_AB94A0(v53);
    v54._countAndFlagsBits = 0xD00000000000001ELL;
    v54._object = 0x8000000000B82370;
    sub_AB94A0(v54);
  }

  v27 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_submitButtonText);
  swift_beginAccess();
  v28 = v27[1];
  v29 = *v27 & 0xFFFFFFFFFFFFLL;
  if ((v28 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v28) & 0xF;
  }

  if (v29)
  {
    sub_ABAD90(25);

    v31 = *v27;
    v30 = v27[1];

    v55._countAndFlagsBits = v31;
    v55._object = v30;
    sub_AB94A0(v55);

    v56._countAndFlagsBits = 34;
    v56._object = 0xE100000000000000;
    sub_AB94A0(v56);
    v57._countAndFlagsBits = 0xD000000000000016;
    v57._object = 0x8000000000B82390;
    sub_AB94A0(v57);
  }

  v32 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_forgotCredentialsLink;
  swift_beginAccess();
  v33 = *(v1 + v32);
  if (v33)
  {
    v34 = v33;
    sub_ABAD90(28);

    v35 = [v34 description];
    v36 = sub_AB92A0();
    v38 = v37;

    v58._countAndFlagsBits = v36;
    v58._object = v38;
    sub_AB94A0(v58);

    v59._countAndFlagsBits = 0xD00000000000001ALL;
    v59._object = 0x8000000000B823B0;
    sub_AB94A0(v59);
  }

  v60._countAndFlagsBits = 62;
  v60._object = 0xE100000000000000;
  sub_AB94A0(v60);
  return 0;
}

uint64_t JSSettingsAuthenticationSection.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a1;
  v14[1] = a2;
  sub_F46A0(a3, v15);
  if (v15[3])
  {
    sub_F46A0(v15, v13);

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000013 && 0x8000000000B823F0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierLabelText;
LABEL_7:
        v7 = (v3 + v6);
        swift_beginAccess();
        *v7 = v11;
        v7[1] = v12;

LABEL_31:
        __swift_destroy_boxed_opaque_existential_0(v13);
        sub_12E1C(v15, &unk_DE8E40);
      }

      if (a1 == 0xD00000000000001ALL && 0x8000000000B82410 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierFieldPlaceholder;
        goto LABEL_7;
      }

      if (a1 == 0xD000000000000011 && 0x8000000000B82430 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordLabelText;
        goto LABEL_7;
      }

      if (a1 == 0xD000000000000018 && 0x8000000000B82450 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordFieldPlaceholder;
        goto LABEL_7;
      }

      if (a1 == 0xD000000000000010 && 0x8000000000B82470 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_submitButtonText;
        goto LABEL_7;
      }
    }

    type metadata accessor for JSSettingsLink();
    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000015 && 0x8000000000B823D0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_forgotCredentialsLink;
        swift_beginAccess();
        v9 = *(v3 + v8);
        *(v3 + v8) = v11;

        goto LABEL_31;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
  }

  return sub_12E1C(v14, &unk_E27200);
}

id JSSettingsAuthenticationSection.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierLabelText];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierFieldPlaceholder];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordLabelText];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v7 = &v3[OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordFieldPlaceholder];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  v8 = &v3[OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_submitButtonText];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_forgotCredentialsLink] = 0;
  return JSObject.init(type:)(a1);
}

id JSSettingsAuthenticationSection.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierLabelText);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_identifierFieldPlaceholder);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordLabelText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_passwordFieldPlaceholder);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_submitButtonText);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_forgotCredentialsLink) = 0;
  return JSObject.init(type:)(a1);
}

void sub_A2DF54()
{

  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore31JSSettingsAuthenticationSection_forgotCredentialsLink);
}

id JSStoreFlowSegue.__allocating_init(nativelyHandledURL:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin();
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v13 - v5;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v15 = 3;
  v7 = objc_allocWithZone(v1);
  v8 = JSStoreFlowSegue.init(type:)(v13);
  v9 = sub_AB31C0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v6, a1, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_15F84(v6, v4, &unk_DF2AE0);
  v11 = v8;
  sub_AB5520();
  (*(v10 + 8))(a1, v9);
  sub_12E1C(v6, &unk_DF2AE0);
  return v11;
}

uint64_t JSStoreFlowSegue.sourceApplicationBundleIdentifier.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

double sub_A2E37C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_A2E3FC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t sub_A2E498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26000);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_A2E620(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_15F84(a1, &v7 - v4, &unk_DF2AE0);
  sub_15F84(v5, v3, &unk_DF2AE0);
  sub_AB54D0();
  sub_12E1C(a1, &unk_DF2AE0);
  return sub_12E1C(v5, &unk_DF2AE0);
}

uint64_t sub_A2E774(uint64_t a1, void **a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  sub_15F84(a1, &v11 - v6, &unk_DF2AE0);
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_15F84(v7, v5, &unk_DF2AE0);
  v9 = v8;
  sub_AB5520();
  return sub_12E1C(v7, &unk_DF2AE0);
}

uint64_t sub_A2E8BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265F8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265F0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_A2EAB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27160);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270C8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_A2EC88(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t sub_A2ED18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26F30);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26F28);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t JSStoreFlowSegue.didCompleteSubscriptionPurchase.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_A2EF60@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_A2EFE0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

uint64_t JSStoreFlowSegue.didCompleteSubscriptionPurchase.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

uint64_t (*JSStoreFlowSegue.didCompleteSubscriptionPurchase.modify(uint64_t *a1))()
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
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSStoreFlowSegue.$didCompleteSubscriptionPurchase.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270E8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270E0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSStoreFlowSegue.$didCompleteSubscriptionPurchase.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270E8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__didCompleteSubscriptionPurchase;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270E0);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t JSStoreFlowSegue.subscriptionStatus.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_A2F4E8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_A2F568(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t JSStoreFlowSegue.subscriptionStatus.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

void (*JSStoreFlowSegue.subscriptionStatus.modify(uint64_t *a1))(void *)
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
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BCE8C;
}

uint64_t JSStoreFlowSegue.$subscriptionStatus.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27100);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270F8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSStoreFlowSegue.$subscriptionStatus.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27100);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__subscriptionStatus;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270F8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD154;
}

uint64_t JSStoreFlowSegue.didFinishLinkingWithCarrier.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_A2FA28@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_A2FAA8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

uint64_t JSStoreFlowSegue.didFinishLinkingWithCarrier.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

uint64_t (*JSStoreFlowSegue.didFinishLinkingWithCarrier.modify(uint64_t *a1))()
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
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSStoreFlowSegue.$didFinishLinkingWithCarrier.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSStoreFlowSegue.$didFinishLinkingWithCarrier.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__didFinishLinkingWithCarrier;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t JSStoreFlowSegue.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v24 - v8;
  __chkstk_darwin();
  v11 = &v24 - v10;
  __chkstk_darwin();
  v13 = &v24 - v12;
  v31[0] = a1;
  v31[1] = a2;
  sub_15F84(a3, v32, &unk_DE8E40);
  if (v32[3])
  {
    sub_15F84(v32, v30, &unk_DE8E40);

    if (swift_dynamicCast())
    {
      v15 = v28;
      v14 = v29;
      if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        sub_AB3180();

        v16 = sub_AB31C0();
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v11, 1, v16) == 1)
        {
          sub_12E1C(v11, &unk_DF2AE0);
          (*(v17 + 56))(v13, 1, 1, v16);
        }

        else
        {
          URL.replacingSchemeWithHTTP.getter(v13);
          (*(v17 + 8))(v11, v16);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_15F84(v13, v9, &unk_DF2AE0);
        v18 = v25;
        sub_AB5520();
        sub_12E1C(v13, &unk_DF2AE0);
        __swift_destroy_boxed_opaque_existential_0(v30);
        goto LABEL_32;
      }

      if (a1 == 0xD000000000000021 && 0x8000000000B81570 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v26 = v15;
        v27 = v14;
        v19 = v25;
        sub_AB5520();
LABEL_15:
        __swift_destroy_boxed_opaque_existential_0(v30);
LABEL_32:
        sub_12E1C(v32, &unk_DE8E40);
      }

      if (a1 == 0x7265727265666572 && a2 == 0xEB000000004C5255 || (sub_ABB3C0() & 1) != 0)
      {
        sub_AB3180();

        swift_getKeyPath();
        swift_getKeyPath();
        sub_15F84(v9, v7, &unk_DF2AE0);
        v20 = v25;
        sub_AB5520();
        sub_12E1C(v9, &unk_DF2AE0);
        goto LABEL_15;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
    if (swift_dynamicCast())
    {
      v21 = v28;
      if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_31;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
    if (swift_dynamicCast())
    {
      v21 = v28;
      if (a1 == 0xD000000000000017 && 0x8000000000B824D0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
LABEL_31:
        swift_getKeyPath();
        swift_getKeyPath();
        v26 = v21;
        v22 = v25;
        sub_AB5520();
        __swift_destroy_boxed_opaque_existential_0(v30);
        goto LABEL_32;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  else
  {
  }

  JSSegue.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v31, &unk_E27200);
}

id JSStoreFlowSegue.init(type:)(uint64_t a1)
{
  v65 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  v63 = *(v1 - 8);
  v64 = v1;
  __chkstk_darwin(v1);
  v62 = v42 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270F8);
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v59 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270E0);
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v56 = v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26F28);
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270C8);
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v50 = v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  v48 = *(v11 - 8);
  v49 = v11;
  __chkstk_darwin(v11);
  v47 = v42 - v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265F0);
  v13 = *(v45 - 8);
  __chkstk_darwin(v45);
  v15 = v42 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v16 = __chkstk_darwin(v44);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v42 - v19;
  v21 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__url;
  v22 = sub_AB31C0();
  v43 = *(*(v22 - 8) + 56);
  v43(v20, 1, 1, v22);
  sub_15F84(v20, v18, &unk_DF2AE0);
  sub_AB54D0();
  sub_12E1C(v20, &unk_DF2AE0);
  v23 = *(v13 + 32);
  v42[1] = v13 + 32;
  v24 = v46;
  v25 = v45;
  v23(v46 + v21, v15, v45);
  v26 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__sourceApplicationBundleIdentifier;
  v66 = 0;
  v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
  v27 = v47;
  sub_AB54D0();
  (*(v48 + 32))(v24 + v26, v27, v49);
  v28 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__referrerURL;
  v43(v20, 1, 1, v22);
  sub_15F84(v20, v18, &unk_DF2AE0);
  sub_AB54D0();
  sub_12E1C(v20, &unk_DF2AE0);
  v29 = v24;
  v23(v24 + v28, v15, v25);
  v30 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__userInfo;
  v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270B8);
  v31 = v50;
  sub_AB54D0();
  v32 = v29;
  (*(v51 + 32))(v29 + v30, v31, v52);
  v33 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__scriptingMetricsOverlay;
  v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26F18);
  v34 = v53;
  sub_AB54D0();
  (*(v54 + 32))(v32 + v33, v34, v55);
  v35 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__didCompleteSubscriptionPurchase;
  LOBYTE(v66) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF0608);
  v36 = v56;
  sub_AB54D0();
  (*(v57 + 32))(v32 + v35, v36, v58);
  v37 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__subscriptionStatus;
  v66 = sub_97420(&_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  v38 = v59;
  sub_AB54D0();
  (*(v60 + 32))(v32 + v37, v38, v61);
  v39 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__didFinishLinkingWithCarrier;
  LOBYTE(v66) = 0;
  v40 = v62;
  sub_AB54D0();
  (*(v63 + 32))(v32 + v39, v40, v64);
  *(v32 + OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent) = 0;
  return JSObject.init(type:)(v65);
}

uint64_t sub_A30D6C()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__url;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265F0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__sourceApplicationBundleIdentifier;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__referrerURL, v2);
  v6 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__userInfo;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270C8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__scriptingMetricsOverlay;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26F28);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__didCompleteSubscriptionPurchase;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270E0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__subscriptionStatus;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E270F8);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC11MusicJSCore16JSStoreFlowSegue__didFinishLinkingWithCarrier;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  v16 = *(*(v15 - 8) + 8);

  return v16(v0 + v14, v15);
}

uint64_t type metadata accessor for JSStoreFlowSegue()
{
  result = qword_E27138;
  if (!qword_E27138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A313D8()
{
  sub_3641C(319, &qword_E266E8, &unk_DF2AE0);
  if (v0 <= 0x3F)
  {
    sub_3641C(319, &qword_E26098, &unk_DEE6F0);
    if (v1 <= 0x3F)
    {
      sub_3641C(319, &qword_E27148, &qword_E270B8);
      if (v2 <= 0x3F)
      {
        sub_3641C(319, &qword_E26F78, &qword_E26F18);
        if (v3 <= 0x3F)
        {
          sub_3641C(319, &qword_E27150, &qword_DF0608);
          if (v4 <= 0x3F)
          {
            sub_3641C(319, &qword_E27158, &qword_DFE680);
            if (v5 <= 0x3F)
            {
              sub_9E3EB4();
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

NSString sub_A31660()
{
  result = sub_AB9260();
  static JSBrick.itemsDidChangeNotification = result;
  return result;
}

uint64_t *JSBrick.itemsDidChangeNotification.unsafeMutableAddressor()
{
  if (qword_E24000 != -1)
  {
    swift_once();
  }

  return &static JSBrick.itemsDidChangeNotification;
}

id static JSBrick.itemsDidChangeNotification.getter()
{
  if (qword_E24000 != -1)
  {
    swift_once();
  }

  v1 = static JSBrick.itemsDidChangeNotification;

  return v1;
}

void *JSBrick.contentArtwork.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore7JSBrick_contentArtwork;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *JSBrick.containerDetailLink.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore7JSBrick_containerDetailLink;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t JSBrick.items.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_A318D0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_A31954(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t JSBrick.$items.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E271A0);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_A31A44()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E271A0);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_A31ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E271E8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E271A0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t JSBrick.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a1;
  v24[1] = a2;
  sub_F46A0(a3, v25);
  if (!v25[3])
  {

    goto LABEL_9;
  }

  sub_F46A0(v25, v23);

  if (!swift_dynamicCast())
  {
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24660);
    if (swift_dynamicCast())
    {
      v11 = v21;
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v12 = sub_AB5500();
        *v13 = _swiftEmptyArrayStorage;

        v12(v20, 0);

        swift_getKeyPath();
        swift_getKeyPath();
        v14 = v3;
        v15 = sub_AB5500();
        sub_9A1544(v11);
        v15(v20, 0);

        v16 = [objc_opt_self() defaultCenter];
        if (qword_E24000 != -1)
        {
          swift_once();
        }

        [v16 postNotificationName:static JSBrick.itemsDidChangeNotification object:v14];

        goto LABEL_43;
      }
    }

    type metadata accessor for JSArtwork();
    if (swift_dynamicCast())
    {
      v17 = v21;
      if (a1 == 0x41746E65746E6F63 && a2 == 0xEE006B726F777472 || (sub_ABB3C0() & 1) != 0)
      {
        v18 = OBJC_IVAR____TtC11MusicJSCore7JSBrick_contentArtwork;
LABEL_42:
        swift_beginAccess();
        v19 = *(v3 + v18);
        *(v3 + v18) = v17;

        goto LABEL_43;
      }
    }

    type metadata accessor for JSContainerDetailLink();
    if (swift_dynamicCast())
    {
      v17 = v21;
      if (a1 == 0xD000000000000013 && 0x8000000000B7E6C0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v18 = OBJC_IVAR____TtC11MusicJSCore7JSBrick_containerDetailLink;
        goto LABEL_42;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v23);
LABEL_9:
    JSViewModel.updateProperty(_:value:)(a1, a2, a3);
    return sub_12E1C(v24, &unk_E27200);
  }

  v7 = v22;
  if ((a1 != 0x7469747265707573 || a2 != 0xEA0000000000656CLL) && (sub_ABB3C0() & 1) == 0)
  {
    if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
    {
      v8 = OBJC_IVAR____TtC11MusicJSCore7JSBrick_title;
      goto LABEL_7;
    }

    if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
    {
      v8 = OBJC_IVAR____TtC11MusicJSCore7JSBrick_subtitle;
      goto LABEL_7;
    }

    if (a1 == 0xD000000000000014 && 0x8000000000B534C0 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      v8 = OBJC_IVAR____TtC11MusicJSCore7JSBrick_accessoryButtonTitle;
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  v8 = OBJC_IVAR____TtC11MusicJSCore7JSBrick_supertitle;
LABEL_7:
  v9 = (v3 + v8);
  swift_beginAccess();
  *v9 = v21;
  v9[1] = v7;

LABEL_43:
  __swift_destroy_boxed_opaque_existential_0(v23);
  sub_12E1C(v25, &unk_DE8E40);
}

id JSBrick.init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E271A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_supertitle);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_title);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_subtitle);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_accessoryButtonTitle);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_contentArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_containerDetailLink) = 0;
  v11 = OBJC_IVAR____TtC11MusicJSCore7JSBrick__items;
  v15[1] = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24660);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v11, v6, v3);
  v12 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v13 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v13 = 0;
  v13[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_A3236C()
{

  v1 = OBJC_IVAR____TtC11MusicJSCore7JSBrick__items;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E271A0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for JSBrick()
{
  result = qword_E271D0;
  if (!qword_E271D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A32594()
{
  sub_A32640();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_A32640()
{
  if (!qword_E271E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E24660);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E271E0);
    }
  }
}

id MPModelStoreBrowseContentItem.kind.getter()
{
  result = [v0 itemType];
  switch(result)
  {
    case 0uLL:
      return result;
    case 1uLL:
      result = [v0 album];
      break;
    case 2uLL:
      result = [v0 artist];
      break;
    case 3uLL:
      result = [v0 curator];
      break;
    case 4uLL:
      result = [v0 playlist];
      break;
    case 5uLL:
      result = [v0 radioStation];
      break;
    case 6uLL:
      result = [v0 socialPerson];
      break;
    case 7uLL:
      result = [v0 song];
      break;
    case 8uLL:
      result = [v0 episode];
      break;
    case 9uLL:
      result = [v0 show];
      break;
    case 0xAuLL:
      result = [v0 season];
      break;
    case 0xBuLL:
      result = [v0 showCreator];
      break;
    case 0xCuLL:
      result = [v0 movie];
      break;
    case 0xDuLL:
      result = [v0 mediaClip];
      break;
    case 0xEuLL:
      result = [v0 recordLabel];
      break;
    case 0xFuLL:
      result = [v0 creditsArtist];
      break;
    default:
      sub_ABAD90(24);
      v2._object = 0x8000000000B4AB80;
      v2._countAndFlagsBits = 0xD000000000000013;
      sub_AB94A0(v2);
      v3._countAndFlagsBits = 0xD000000000000021;
      v3._object = 0x8000000000B826A0;
      sub_AB94A0(v3);
      v4._countAndFlagsBits = 32;
      v4._object = 0xE100000000000000;
      sub_AB94A0(v4);
      type metadata accessor for MPModelStoreBrowseContentItemType(0);
      sub_ABAF70();
      sub_ABAFD0();
      __break(1u);
      JUMPOUT(0xA32A08);
  }

  return result;
}

uint64_t sub_A32A54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && *(a1 + 9))
  {
    return (*a1 + 242);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0xE)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_A32A9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 8) = 0;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_A32AF4()
{
  v0 = sub_AB7C10();
  v44 = *(v0 - 8);
  v45 = v0;
  __chkstk_darwin();
  v41 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_AB7C50();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin();
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB7C80();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v33 - v7;
  v35 = sub_AB7BE0();
  v46 = *(v35 - 8);
  __chkstk_darwin();
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v33 - v9);
  v11 = sub_ABA1D0();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_E24CB0);
  sub_13C80(0, &qword_DE8ED0);
  v15 = sub_ABA150();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_A33630();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24CC0);
  sub_A33688();
  sub_ABABB0();
  v16 = sub_ABA1E0();

  (*(v12 + 8))(v14, v11);
  *&v47[OBJC_IVAR____TtC11MusicJSCore7JSTimer_source] = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *v10 = 100;
  v17 = *(v46 + 104);
  v34 = v10;
  v18 = v35;
  v17(v10, enum case for DispatchTimeInterval.milliseconds(_:), v35);
  v33 = v16;
  swift_getObjectType();
  sub_AB7C70();
  v19 = v37;
  sub_AB7CE0();
  v20 = *(v38 + 8);
  v21 = v6;
  v22 = v39;
  v20(v21, v39);
  v23 = v36;
  sub_9B6900(v36);
  sub_ABA3E0();
  v24 = *(v46 + 8);
  v24(v23, v18);
  v25 = v24;
  v20(v19, v22);
  v26 = swift_allocObject();
  v27 = v47;
  *(v26 + 16) = v47;
  aBlock[4] = sub_A33724;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_266;
  v28 = _Block_copy(aBlock);
  v29 = v27;
  v30 = v40;
  sub_9B7340();
  v31 = v41;
  sub_9B7344();
  sub_ABA1F0();
  _Block_release(v28);
  (*(v44 + 8))(v31, v45);
  (*(v42 + 8))(v30, v43);

  sub_ABA210();
  swift_unknownObjectRelease();
  return (v25)(v34, v18);
}

uint64_t JSTimer.updateProperty(_:value:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + OBJC_IVAR____TtC11MusicJSCore7JSTimer_isFrozen) & 1) == 0)
  {
    v5 = result;
    v10[0] = result;
    v10[1] = a2;
    sub_F46A0(a3, v11);
    if (v11[3])
    {
      sub_F46A0(v11, v9);
      sub_13C80(0, &qword_DF1300);

      if (swift_dynamicCast())
      {
        if (v5 == 0x79616C6564 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
        {
          [v8 doubleValue];
          v7 = v6;

          *(v3 + OBJC_IVAR____TtC11MusicJSCore7JSTimer_delay) = v7 / 1000.0;
          __swift_destroy_boxed_opaque_existential_0(v9);
          sub_12E1C(v11, &unk_DE8E40);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {
    }

    return sub_12E1C(v10, &unk_E27200);
  }

  return result;
}

uint64_t sub_A33254()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC11MusicJSCore7JSTimer_source;
  if (*&v0[OBJC_IVAR____TtC11MusicJSCore7JSTimer_source])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_ABA200();
    swift_unknownObjectRelease();
    *&v0[v3] = 0;
    swift_unknownObjectRelease();
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v4 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF4EC0;
  *(v5 + 56) = ObjectType;
  *(v5 + 32) = v1;
  sub_13C80(0, &qword_DE8ED0);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  strcpy((v6 + 32), "handleTimeout");
  *(v6 + 46) = -4864;
  *(v6 + 48) = v1;
  *(v6 + 56) = v4;
  *(v6 + 64) = 0;
  v7 = v1;
  v8 = v4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v6);
}

id JSTimer.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore7JSTimer_delay] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore7JSTimer_isFrozen] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore7JSTimer_source] = 0;
  return JSObject.init(type:)(a1);
}

id JSTimer.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSTimer_delay) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSTimer_isFrozen) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSTimer_source) = 0;
  return JSObject.init(type:)(a1);
}

uint64_t _s11MusicJSCore7JSTimerC12invokeMethod_9argumentsySS_SayypGtF_0(uint64_t result, uint64_t a2)
{
  if ((*(v2 + OBJC_IVAR____TtC11MusicJSCore7JSTimer_isFrozen) & 1) == 0)
  {
    v4 = result;
    if (result == 0x656C756465686373 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
    {

      return sub_A32AF4();
    }

    else
    {
      result = 0x6C65636E6163;
      if (v4 == 0x6C65636E6163 && a2 == 0xE600000000000000 || (result = sub_ABB3C0(), (result & 1) != 0))
      {
        v5 = OBJC_IVAR____TtC11MusicJSCore7JSTimer_source;
        if (*(v2 + OBJC_IVAR____TtC11MusicJSCore7JSTimer_source))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_ABA200();
          swift_unknownObjectRelease();
          *(v2 + v5) = 0;

          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

unint64_t sub_A33630()
{
  result = qword_E24CB8;
  if (!qword_E24CB8)
  {
    sub_ABA1D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E24CB8);
  }

  return result;
}

unint64_t sub_A33688()
{
  result = qword_E24CC8;
  if (!qword_E24CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E24CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E24CC8);
  }

  return result;
}

uint64_t sub_A336EC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_266(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A33760()
{

  return swift_deallocObject();
}

uint64_t JSEnvironment.__allocating_init()()
{
  v0 = swift_allocObject();
  JSEnvironment.init()();
  return v0;
}

id JSEnvironment.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  result = [objc_allocWithZone(JSContext) init];
  if (result)
  {
    v3 = result;
    *(v1 + 16) = result;
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 mainBundle];
    v7 = [v6 bundleIdentifier];

    [v5 setName:v7];
    v8 = *(v1 + 16);
    v9 = CFRunLoopGetCurrent();
    [v8 _setDebuggerRunLoop:v9];

    v10 = *(v1 + 16);
    v17[4] = sub_A33B2C;
    v17[5] = 0;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_A33C74;
    v17[3] = &block_descriptor_267;
    v11 = _Block_copy(v17);
    v12 = v10;
    [v12 setExceptionHandler:v11];
    _Block_release(v11);

    if (qword_E23FA0 != -1)
    {
      swift_once();
    }

    static Signpost.interval<A>(name:log:_:)("JSEnvironment initialize", 24, 2, static OS_os_log.jsBridge, sub_A33D18, v1, &type metadata for ());
    v13 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v14 = UIApplicationDidReceiveMemoryWarningNotification;

    *(v1 + 24) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v14, 0, 1, 1, sub_A33D7C, v13);

    v15 = swift_allocObject();
    swift_weakInit();
    v16 = UIApplicationDidEnterBackgroundNotification;

    swift_allocObject();
    *(v1 + 32) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v16, 0, 1, 1, sub_A35140, v15);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_A33B2C(uint64_t a1, void *a2)
{
  v3 = sub_AB9F30();
  if (qword_E23F98 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.scripting;
  result = os_log_type_enabled(static OS_os_log.scripting, v3);
  if (result)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24AC8);
    v9 = sub_AB9350();
    v11 = sub_425E68(v9, v10, &v12);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_0, v4, v3, "JavaScript Exception: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return result;
}

void sub_A33C74(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_267(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A33D44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_A33D98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    JSGarbageCollect([*(result + 16) JSGlobalContextRef]);
  }

  return result;
}

void JSEnvironment.evaluateApplicationScript(applicationScript:)(uint64_t a1)
{
  v2 = v1;
  sub_A33F10(0);
  sub_A33F10(1);
  if (qword_E23FA0 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.jsBridge;
  __chkstk_darwin();
  v5[2] = v2;
  v5[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24AC8);
  static Signpost.interval<A>(name:log:_:)("JSEnvironment app script", 24, 2, v4, sub_A34190, v5, &v6);
}

void sub_A33F10(char a1)
{
  sub_AB4BC0();
  __chkstk_darwin();
  sub_A34AE8(a1);
}

id sub_A34150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = [*(a1 + 16) evaluateJSScript:a2];
  *a3 = result;
  return result;
}

id sub_A34190@<X0>(void *a1@<X8>)
{
  result = [*(*(v1 + 16) + 16) evaluateJSScript:*(v1 + 24)];
  *a1 = result;
  return result;
}

Swift::Void __swiftcall JSEnvironment.registerGlobalFunctions()()
{
  v12 = sub_A34404;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_A34524;
  v11 = &block_descriptor_4_2;
  v1 = _Block_copy(&v8);
  v2 = *(v0 + 16);
  sub_A34590();
  _Block_copy(v1);
  v3 = sub_ABA7C0();
  [v2 setObject:v1 forKeyedSubscript:v3];

  _Block_release(v1);
  v12 = variable initialization expression of JSThread.scriptingThreadIdentifier;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_A345DC;
  v11 = &block_descriptor_7_4;
  v4 = _Block_copy(&v8);
  _Block_copy(v4);
  v5 = sub_ABA7C0();
  [v2 setObject:v4 forKeyedSubscript:v5];

  _Block_release(v4);
  v12 = sub_A34650;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_A349CC;
  v11 = &block_descriptor_10_5;
  v6 = _Block_copy(&v8);
  _Block_copy(v6);
  v7 = sub_ABA7C0();
  [v2 setObject:v6 forKeyedSubscript:v7];

  _Block_release(v6);
  _Block_release(v6);
  _Block_release(v4);
  _Block_release(v1);
}

uint64_t sub_A34404(uint64_t a1, unint64_t a2)
{
  if (qword_E23F98 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.scripting;
  v5 = sub_AB9F50();
  result = os_log_type_enabled(v4, v5);
  if (result)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_425E68(a1, a2, &v9);
    _os_log_impl(&dword_0, v4, v5, "%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return result;
}

uint64_t sub_A34524(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_AB92A0();
  v4 = v3;

  v1(v2, v4);
}

unint64_t sub_A34590()
{
  result = qword_DE8170;
  if (!qword_DE8170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DE8170);
  }

  return result;
}

id sub_A345DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  v3 = sub_AB9260();

  return v3;
}

uint64_t sub_A34650()
{
  v51 = sub_99E8FC(_swiftEmptyArrayStorage);
  v0 = static DeviceCapabilities.diskUsage.getter();
  v1 = sub_99F414(&off_D4FD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27340);
  swift_arrayDestroy();
  v2 = 0;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v49 = v0;
  while (v6)
  {
    v8 = v6;
LABEL_10:
    v6 = (v8 - 1) & v8;
    if (*(v0 + 16))
    {
      v10 = __clz(__rbit64(v8)) | (v2 << 6);
      v11 = (*(v1 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = sub_9A1E20(*(*(v1 + 56) + v10));
      if (v15)
      {
        v50 = v6;
        v16 = v0;
        v17 = v1;
        v18 = v13;
        v19 = v12;
        v20 = *(*(v16 + 56) + 8 * v14);
        v21 = objc_allocWithZone(NSNumber);

        v22 = [v21 initWithLongLong:v20];
        if (v22)
        {
          v47 = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = v18;
          v48 = v19;
          v29 = sub_2EBF88(v18, v19);
          v31 = v51[2];
          v32 = (v30 & 1) == 0;
          v33 = __OFADD__(v31, v32);
          v34 = v31 + v32;
          if (v33)
          {
            goto LABEL_29;
          }

          v35 = v30;
          v1 = v17;
          v6 = v50;
          if (v51[3] >= v34)
          {
            v0 = v49;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_22;
            }

            v41 = v29;
            sub_A9BD90();
            v29 = v41;
            v37 = v48;
            if ((v35 & 1) == 0)
            {
              goto LABEL_25;
            }

LABEL_23:
            v38 = v29;

            v39 = v51[7];
            v40 = *(v39 + 8 * v38);
            *(v39 + 8 * v38) = v47;
          }

          else
          {
            sub_A9A68C(v34, isUniquelyReferenced_nonNull_native);
            v29 = sub_2EBF88(v28, v48);
            v0 = v49;
            if ((v35 & 1) != (v36 & 1))
            {
              goto LABEL_31;
            }

LABEL_22:
            v37 = v48;
            if (v35)
            {
              goto LABEL_23;
            }

LABEL_25:
            v51[(v29 >> 6) + 8] |= 1 << v29;
            v42 = (v51[6] + 16 * v29);
            *v42 = v28;
            v42[1] = v37;
            *(v51[7] + 8 * v29) = v47;
            v43 = v51[2];
            v33 = __OFADD__(v43, 1);
            v44 = v43 + 1;
            if (v33)
            {
              goto LABEL_30;
            }

            v51[2] = v44;
          }
        }

        else
        {
          v23 = sub_2EBF88(v18, v12);
          v25 = v24;

          v1 = v17;
          v0 = v49;
          v6 = v50;
          if (v25)
          {
            v26 = v51;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_A9BD90();
              v26 = v51;
            }

            v51 = v26;
            sub_9A5118(v23, v26);
          }
        }
      }
    }
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v45 = sub_9D6FE0(v51);

      return v45;
    }

    v8 = *(v3 + 8 * v9);
    ++v2;
    if (v8)
    {
      v2 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

Class sub_A349CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  v3.super.isa = sub_AB8FD0().super.isa;

  return v3.super.isa;
}

uint64_t JSEnvironment.deinit()
{

  return v0;
}

uint64_t JSEnvironment.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_A34AE8(char a1)
{
  v3 = sub_AB9300();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin();
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB31C0();
  v37 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v36 = v8;
  if (a1)
  {
    if (a1 == 1)
    {
      v11 = 0xD000000000000038;
    }

    else
    {
      v11 = 0x1000000000036814;
    }

    if (a1 == 1)
    {
      v12 = "omplete = value; } }";
    }

    else
    {
      v12 = "ndNotificationObserver";
    }
  }

  else
  {
    v12 = "s MusicKitHTTPRequest {}";
    v11 = 0xD00000000000178BLL;
  }

  v13 = v12 | 0x8000000000000000;
  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1 && (v14 = v10, v15 = Datavault.music.unsafeMutableAddressor(), swift_beginAccess(), (v16 = *v15) != 0))
  {
    v33 = v6;

    static URL.+ infix(_:_:)();
    v17 = [objc_opt_self() defaultManager];
    v32 = v14;
    NSFileManager.createDirectoryIfNeeded(at:)();
    if (v1)
    {
      v18 = sub_AB9260();

      sub_A350B8();
      swift_allocError();
      *v19 = v1;
      swift_willThrow();
      swift_errorRetain();

      (*(v37 + 8))(v32, v33);
    }

    else
    {
      v32 = v16;
      static URL.+ infix(_:_:)();

      v40 = v11;
      v41 = v13;
      v38 = sub_AB3160();
      v39 = v21;
      sub_AB92F0();
      sub_36A48();
      sub_ABAAF0();
      (*(v34 + 8))(v5, v35);

      v22 = v17;
      v23 = sub_AB9260();

      v24 = v36;
      sub_AB30F0(v25);
      v27 = v26;
      v28 = [v42 evaluateScript:v23 withSourceURL:v26];

      v29 = *(v37 + 8);
      v30 = v33;
      v29(v24, v33);
      v29(v14, v30);
    }
  }

  else
  {
    v20 = sub_AB9260();
  }
}

unint64_t sub_A350B8()
{
  result = qword_E27348;
  if (!qword_E27348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E27348);
  }

  return result;
}

uint64_t JSGroupedTextListItem.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore21JSGroupedTextListItem_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSGroupedTextListItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicJSCore21JSGroupedTextListItem_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t JSGroupedTextListItem.items.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_A35320@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_A353A4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t JSGroupedTextListItem.items.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

void (*JSGroupedTextListItem.items.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6A82CC;
}

uint64_t JSGroupedTextListItem.$items.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27360);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t JSGroupedTextListItem.$items.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27368);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27360);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSGroupedTextListItem.$items.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27368);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSGroupedTextListItem__items;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27360);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

uint64_t JSGroupedTextListItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  sub_F46A0(a3, v13);
  if (v13[3])
  {
    sub_F46A0(v13, v11);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = &v3[OBJC_IVAR____TtC11MusicJSCore21JSGroupedTextListItem_title];
        swift_beginAccess();
        *v6 = v9;
        *(v6 + 1) = v10;

LABEL_14:
        __swift_destroy_boxed_opaque_existential_0(v11);
        sub_12E1C(v13, &unk_DE8E40);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
    if (swift_dynamicCast())
    {
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v3;
        sub_AB5520();
        goto LABEL_14;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
  }

  return sub_12E1C(v12, &unk_E27200);
}

id JSGroupedTextListItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27360);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - v5;
  v7 = objc_allocWithZone(v1);
  v8 = &v7[OBJC_IVAR____TtC11MusicJSCore21JSGroupedTextListItem_title];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  v9 = OBJC_IVAR____TtC11MusicJSCore21JSGroupedTextListItem__items;
  v11[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  sub_AB54D0();
  (*(v4 + 32))(&v7[v9], v6, v3);
  return JSObject.init(type:)(a1);
}

id JSGroupedTextListItem.init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27360);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v10 - v5;
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore21JSGroupedTextListItem_title);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtC11MusicJSCore21JSGroupedTextListItem__items;
  v10[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v8, v6, v3);
  return JSObject.init(type:)(a1);
}

uint64_t sub_A35CC0()
{

  v1 = OBJC_IVAR____TtC11MusicJSCore21JSGroupedTextListItem__items;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27360);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id JSGroupedTextListItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSGroupedTextListItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSGroupedTextListItem()
{
  result = qword_E27398;
  if (!qword_E27398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A35E7C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSGroupedTextListItem();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

void sub_A35EC4()
{
  sub_A35F60();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_A35F60()
{
  if (!qword_E273A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DFDE70);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E273A8);
    }
  }
}

uint64_t sub_A35FC4(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v33 = a2;
  v4 = sub_AB4BC0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v7 = &v31 - v6;
  v8 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v12 = &v31 - v11;
  v13 = sub_A3EA98(a1);
  if (v13)
  {
    v14 = v13;
    if (qword_E24010 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_E273C8);
    (*(v5 + 16))(v7, v15, v4);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v19;
      *v18 = 136315138;
      v36 = v14;
      v20 = sub_AB9350();
      v22 = sub_425E68(v20, v21, &v37);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_0, v16, v17, "Skipping local storage: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    (*(v5 + 8))(v7, v4);
    return sub_A37A90(a1, v33, v34);
  }

  else
  {
    v32 = v8;
    if (*a1)
    {
      sub_A3BFB4();
    }

    sub_A3D990(a1, v12);
    sub_A3D990(v12, v10);
    v24 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v25 = swift_allocObject();
    v26 = v35;
    *(v25 + 16) = v35;
    sub_A3DB48(v12, v25 + v24);
    v27 = (v25 + ((v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    v29 = v33;
    v28 = v34;
    *v27 = v33;
    v27[1] = v28;
    if (*(v26 + 24))
    {

      sub_A40278(v10, type metadata accessor for ApplicationScriptProvider.Descriptor);
      JSThread.enqueueBlock(_:)(sub_A40434, v25);
    }

    else
    {

      sub_A36570(v30, v10, v29);

      return sub_A40278(v10, type metadata accessor for ApplicationScriptProvider.Descriptor);
    }
  }
}

void sub_A36570(uint64_t a1, Class *a2, void (*a3)(Class, void))
{
  sub_AB4BC0();
  __chkstk_darwin();
  v5 = sub_A3686C(a2);
  v6 = v5;
  a3(v5, 0);

  sub_A383EC();
}

Class sub_A3686C(Class *a1)
{
  v2 = v1;
  type metadata accessor for ApplicationScriptProvider.Compiler(0);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (*a1 && (v7 = sub_A3B2E4(), v8 >> 60 != 15))
  {
    v10 = v7;
    v11 = a1;
    v12 = v8;
    sub_A3D990(v11, v5);
    v6 = sub_A369A0(v10, v12, *(v2 + 16));
    sub_A40278(v5, type metadata accessor for ApplicationScriptProvider.Compiler);
    sub_466A4(v10, v12);
  }

  else
  {
    sub_9B2244();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
  }

  return v6;
}

Class sub_A369A0(uint64_t a1, uint64_t a2, void *a3)
{
  v138 = a3;
  v4 = sub_AB31C0();
  v142 = *(v4 - 8);
  v143 = v4;
  __chkstk_darwin();
  v141 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v124 - v6;
  v8 = sub_AB4BC0();
  v139 = *(v8 - 8);
  v140 = v8;
  __chkstk_darwin();
  v132 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v131 = &v124 - v10;
  __chkstk_darwin();
  v135 = &v124 - v11;
  __chkstk_darwin();
  v13 = &v124 - v12;
  __chkstk_darwin();
  v133 = &v124 - v14;
  __chkstk_darwin();
  v16 = &v124 - v15;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin();
  v128 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v130 = &v124 - v18;
  __chkstk_darwin();
  v134 = &v124 - v19;
  __chkstk_darwin();
  v21 = &v124 - v20;
  __chkstk_darwin();
  v23 = &v124 - v22;
  __chkstk_darwin();
  v144 = &v124 - v24;
  sub_AB9300();
  __chkstk_darwin();
  isa = (&v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_AB92F0();
  v27 = sub_AB92C0();
  if (!v28)
  {
    sub_9B2244();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
    return isa;
  }

  v29 = *(v3 + 32);
  v126 = v13;
  v136 = v3;
  v127 = v27;
  if (v29)
  {
    v30 = v143;
    if (v29 != 1)
    {
      (*(v142 + 56))(v144, 1, 1, v143);
      goto LABEL_17;
    }
  }

  else
  {
    v30 = v143;
    if (!*v3)
    {
LABEL_15:
      v38 = 1;
      v37 = v142;
      goto LABEL_16;
    }

    v32 = sub_A3A818();
    v3 = v136;
    if (v32)
    {
      if (qword_E24010 != -1)
      {
        swift_once();
      }

      v33 = v140;
      v34 = __swift_project_value_buffer(v140, qword_E273C8);
      (*(v139 + 16))(v16, v34, v33);
      v35 = sub_AB4BA0();
      LODWORD(v124) = sub_AB9F50();
      v125 = v35;
      if (os_log_type_enabled(v35, v124))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_0, v125, v124, "Path for bytecode cache exists and will be used in the JSScript creation.", v36, 2u);
        v30 = v143;
      }

      (*(v139 + 8))(v16, v140);
      v3 = v136;
    }
  }

  if (!*v3)
  {
    goto LABEL_15;
  }

  static URL.+ infix(_:_:)();

  static URL.+ infix(_:_:)();
  v37 = v142;
  (*(v142 + 8))(v7, v30);
  v38 = 0;
LABEL_16:
  (*(v37 + 56))(v23, v38, 1, v30);
  sub_36B0C(v23, v144, &unk_DF2AE0);
LABEL_17:
  v39 = sub_AB9260();
  v40 = sub_AB9260();
  v41 = [objc_opt_self() attributeWithDomain:v39 name:v40];

  v42 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_AF82B0;
  *(v43 + 32) = v41;
  v44 = objc_allocWithZone(RBSAssertion);
  v45 = v41;
  v46 = sub_AB9260();
  sub_A402D8();
  isa = sub_AB9740().super.isa;

  v47 = [v44 initWithExplanation:v46 target:v42 attributes:isa];

  v145 = 0;
  v48 = [v47 acquireWithError:&v145];
  v49 = v145;
  if (!v48)
  {
    v63 = v145;

    sub_AB3050();

    swift_willThrow();
    [v47 invalidate];

LABEL_31:
    sub_12E1C(v144, &unk_DF2AE0);
    return isa;
  }

  v124 = v47;
  v125 = v45;
  v50 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v51 = v142;
  v52 = v143;
  (*(v142 + 16))(v141, v136 + *(v50 + 32), v143);
  sub_15F84(v144, v21, &unk_DF2AE0);
  v53 = v49;
  result = [v138 virtualMachine];
  if (result)
  {
    v55 = result;
    v56 = sub_AB9260();

    sub_AB30F0(v57);
    v59 = v58;
    v60 = *(v51 + 48);
    if (v60(v21, 1, v52) == 1)
    {
      v62 = 0;
    }

    else
    {
      sub_AB30F0(v61);
      v62 = v64;
      (*(v51 + 8))(v21, v52);
    }

    v65 = objc_opt_self();
    v145 = 0;
    isa = [v65 scriptOfType:0 withSource:v56 andSourceURL:v59 andBytecodeCache:v62 inVirtualMachine:v55 error:&v145];

    if (isa)
    {
      v66 = *(v142 + 8);
      v67 = v145;
      v68 = v143;
      v66(v141, v143);

      if (([(objc_class *)isa isUsingBytecodeCache]& 1) != 0)
      {
        v69 = v140;
        if (qword_E24010 != -1)
        {
          swift_once();
        }

        v70 = __swift_project_value_buffer(v69, qword_E273C8);
        v71 = v139;
        v72 = v135;
        (*(v139 + 16))(v135, v70, v69);
        v73 = sub_AB4BA0();
        v74 = sub_AB9F20();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_0, v73, v74, "Successfully started script with cached bytecode.", v75, 2u);
        }

        (*(v71 + 8))(v72, v69);
        goto LABEL_53;
      }

      v78 = v134;
      sub_15F84(v144, v134, &unk_DF2AE0);
      v79 = v60(v78, 1, v68);
      sub_12E1C(v78, &unk_DF2AE0);
      v80 = v140;
      if (v79 == 1)
      {
        v81 = v139;
        if (qword_E24010 != -1)
        {
          swift_once();
        }

        v82 = __swift_project_value_buffer(v80, qword_E273C8);
        v83 = v131;
        (*(v81 + 16))(v131, v82, v80);
        v84 = sub_AB4BA0();
        v85 = sub_AB9F20();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_0, v84, v85, "Not using bytecode cache", v86, 2u);
        }

        (*(v81 + 8))(v83, v80);
        goto LABEL_53;
      }

      v87 = v139;
      if (qword_E24010 != -1)
      {
        swift_once();
      }

      v88 = __swift_project_value_buffer(v80, qword_E273C8);
      v89 = *(v87 + 16);
      v90 = v133;
      v142 = v88;
      v143 = v89;
      (v89)(v133);
      v91 = v130;
      sub_15F84(v144, v130, &unk_DF2AE0);
      v92 = sub_AB4BA0();
      v93 = sub_AB9F50();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v145 = v95;
        *v94 = 136315138;
        sub_15F84(v91, v128, &unk_DF2AE0);
        v96 = sub_AB9350();
        v97 = v91;
        v98 = isa;
        v100 = v99;
        sub_12E1C(v97, &unk_DF2AE0);
        v101 = sub_425E68(v96, v100, &v145);
        isa = v98;

        *(v94 + 4) = v101;
        _os_log_impl(&dword_0, v92, v93, "Caching bytecode at %s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        v80 = v140;

        v102 = *(v139 + 8);
        v102(v133, v80);
      }

      else
      {

        sub_12E1C(v91, &unk_DF2AE0);
        v102 = *(v87 + 8);
        v102(v90, v80);
      }

      v103 = v132;
      v104 = v126;
      v145 = 0;
      v105 = [(objc_class *)isa cacheBytecodeWithError:&v145];
      v106 = v145;
      if (v105)
      {
        (v143)(v104, v142, v80);
        v107 = v106;
        v108 = sub_AB4BA0();
        v109 = sub_AB9F50();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&dword_0, v108, v109, "Successfully cached bytecode", v110, 2u);
        }

        v111 = v104;
      }

      else
      {
        v112 = v145;
        sub_AB3050();

        swift_willThrow();
        v137 = 0;
        (v143)(v103, v142, v80);
        swift_errorRetain();
        v113 = sub_AB4BA0();
        v114 = sub_AB9F40();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v145 = v116;
          *v115 = 136315138;
          swift_getErrorValue();
          v117 = sub_ABB520();
          v119 = sub_425E68(v117, v118, &v145);
          v143 = isa;
          v120 = v119;

          *(v115 + 4) = v120;
          _os_log_impl(&dword_0, v113, v114, "An error has occurred while trying to cache bytecode: %s", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v116);

          isa = v143;
          v111 = v132;
          v121 = v140;
LABEL_52:
          v102(v111, v121);
LABEL_53:
          v122 = v125;
          v123 = v124;
          [v124 invalidate];

          sub_12E1C(v144, &unk_DF2AE0);
          return isa;
        }

        v111 = v103;
      }

      v121 = v80;
      goto LABEL_52;
    }

    v76 = v145;
    sub_AB3050();

    swift_willThrow();
    (*(v142 + 8))(v141, v143);
    v77 = v124;
    [v124 invalidate];

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t sub_A37A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a2;
  v7 = sub_AB31C0();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin();
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB2A90();
  v38 = *(v9 - 8);
  __chkstk_darwin();
  v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v12 = *(v11 - 8);
  v31 = v11;
  v32 = v12;
  __chkstk_darwin();
  v33 = v13;
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB4BC0();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E24010 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_E273C8);
  (*(v16 + 16))(v18, v19, v15);
  v20 = sub_AB4BA0();
  v21 = sub_AB9F50();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = v9;
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Retrieving script from server for launch", v22, 2u);
    v9 = v30;
  }

  (*(v16 + 8))(v18, v15);
  sub_A3D990(a1, v14);
  type metadata accessor for ApplicationScriptProvider.Downloader(0);
  v23 = swift_allocObject();
  sub_A3D990(v14, v23 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D920410Downloader_descriptor);
  (*(v36 + 16))(v35, &v14[*(v31 + 32)], v37);
  v24 = v34;
  sub_AB2A50();
  sub_AB2A40();
  sub_A40278(v14, type metadata accessor for ApplicationScriptProvider.Descriptor);
  (*(v38 + 32))(v23 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D920410Downloader_request, v24, v9);
  sub_A3D990(a1, v14);
  v25 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v26 = (v33 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_A3DB48(v14, v27 + v25);
  *(v27 + v26) = v4;
  v28 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v28 = v39;
  v28[1] = a3;

  sub_A39830(sub_A3FFB4, v27);
}

uint64_t sub_A37F3C(uint64_t a1, unint64_t a2, char a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, __n128), uint64_t (*a7)(uint64_t, uint64_t, __n128))
{
  v43 = a5;
  type metadata accessor for ApplicationScriptProvider.Compiler(0);
  __chkstk_darwin();
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = &v39 - v18;
  if (a3)
  {
    return a6(a1, 1, v17);
  }

  v41 = a7;
  if (*a4)
  {

    sub_A3BFB4();
    v40 = 0;
    sub_90090(a1, a2);
    sub_A3B620(a1, a2);
  }

  else
  {
    v40 = 0;
  }

  sub_A3D990(a4, v19);
  sub_A3D990(v19, v16);
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = v16;
  v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_A3DB48(v19, v26 + v21);
  v27 = (v26 + v22);
  *v27 = a1;
  v27[1] = a2;
  v28 = v43;
  *(v26 + v23) = v43;
  v29 = v28;
  v30 = (v26 + v25);
  v31 = v41;
  *v30 = a6;
  v30[1] = v31;
  if (*(v29 + 24))
  {
    sub_A3D90C(a1, a2, 0);

    JSThread.enqueueBlock(_:)(sub_A401CC, v26);

    v32 = v24;
  }

  else
  {
    v32 = v24;
    v33 = v42;
    sub_A3D990(v24, v42);
    v34 = *(v29 + 16);
    sub_A3D90C(a1, a2, 0);

    v35 = v40;
    v36 = sub_A369A0(a1, a2, v34);
    if (v35)
    {
      swift_errorRetain();
      (a6)(v35, 1);
    }

    else
    {
      v37 = v36;
      v38 = v36;
      (a6)(v37, 0);
    }

    sub_A40278(v33, type metadata accessor for ApplicationScriptProvider.Compiler);
  }

  return sub_A40278(v32, type metadata accessor for ApplicationScriptProvider.Descriptor);
}

uint64_t sub_A382B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(Class, void))
{
  type metadata accessor for ApplicationScriptProvider.Compiler(0);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A3D990(a1, v11);
  v12 = sub_A369A0(a2, a3, *(a4 + 16));
  v13 = v12;
  a5(v12, 0);

  return sub_A40278(v11, type metadata accessor for ApplicationScriptProvider.Compiler);
}

uint64_t sub_A383EC()
{
  v0 = sub_AB4BC0();
  v1 = *(v0 - 1);
  __chkstk_darwin();
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v50 - v4;
  v6 = sub_AB31C0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v16 = __chkstk_darwin();
  v18 = &v50 - v17;
  if (*(v12 + 32))
  {
    if (qword_E24010 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v0, qword_E273C8);
    (*(v1 + 16))(v3, v19, v0);
    v20 = sub_AB4BA0();
    v21 = sub_AB9F50();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "No update to script required", v22, 2u);
    }

    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    v51 = v5;
    v52 = v15;
    v53 = v14;
    v54 = v13;
    v56 = v0;
    v57 = v1;
    v24 = v12;
    v25 = *(v7 + 16);
    v25(v9, v12 + *(v10 + 32), v6, v16);
    v55 = v24;
    v27 = *(v24 + 16);
    v26 = *(v24 + 24);
    v18[32] = 1;
    (v25)(&v18[*(v10 + 32)], v9, v6);
    *(v18 + 2) = v27;
    *(v18 + 3) = v26;
    *(v18 + 1) = 0;
    swift_bridgeObjectRetain_n();
    v28 = sub_A3D5A4(v27, v26, 1);
    (*(v7 + 8))(v9, v6);
    *v18 = v28;
    v50 = v18;
    if (qword_E24010 != -1)
    {
      swift_once();
    }

    v29 = v56;
    v30 = __swift_project_value_buffer(v56, qword_E273C8);
    v31 = v57;
    v32 = v51;
    (*(v57 + 16))(v51, v30, v29);
    v33 = sub_AB4BA0();
    v34 = sub_AB9F50();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "Scheduling an update to script once backgrounded", v35, 2u);
      v31 = v57;
    }

    (*(v31 + 8))(v32, v29);
    v36 = swift_allocObject();
    *(v36 + 32) = 0u;
    *(v36 + 16) = 0u;
    v57 = v36 + 16;
    v37 = [objc_opt_self() defaultCenter];
    v56 = UIApplicationDidEnterBackgroundNotification;
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = v53;
    sub_A3D990(v55, v53);
    v40 = v50;
    v41 = v54;
    sub_A3D990(v50, v54);
    v42 = *(v52 + 80);
    v43 = (v42 + 40) & ~v42;
    v44 = (v11 + v42 + v43) & ~v42;
    v45 = swift_allocObject();
    v45[2] = v36;
    v45[3] = v37;
    v45[4] = v38;
    sub_A3DB48(v39, v45 + v43);
    sub_A3DB48(v41, v45 + v44);
    v60 = sub_A3DBAC;
    v61 = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2A0500;
    ObjectType = &block_descriptor_51_1;
    v46 = _Block_copy(aBlock);

    v47 = v37;

    v48 = [v47 addObserverForName:v56 object:0 queue:0 usingBlock:v46];
    _Block_release(v46);
    ObjectType = swift_getObjectType();

    aBlock[0] = v48;
    sub_A40278(v40, type metadata accessor for ApplicationScriptProvider.Descriptor);
    v49 = v57;
    swift_beginAccess();
    sub_44F27C(aBlock, v49);
  }
}

uint64_t sub_A38AA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = sub_AB4BC0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_15F84(a2 + 16, &v20, &unk_DE8E40);
  if (v21)
  {
    sub_9ACFC(&v20, &v22);
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    [a3 removeObserver:sub_ABB3A0()];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  else
  {
    sub_12E1C(&v20, &unk_DE8E40);
  }

  if (qword_E24010 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_E273C8);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_AB4BA0();
  v16 = sub_AB9F50();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "Music backgrounded, updating script", v17, 2u);
  }

  (*(v11 + 8))(v13, v10);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_A3ECD8(a5, a6);
  }

  return result;
}

uint64_t sub_A38D30(void *a1)
{
  type metadata accessor for ScriptBackgroundUpdateService();
  swift_allocObject();
  v2 = sub_A3CC74();
  sub_A3F76C(a1, v2, v2);
}

id sub_A38D94(uint64_t a1, uint64_t a2)
{
  memset(v4, 0, sizeof(v4));
  swift_beginAccess();
  sub_44F27C(v4, a2 + 24);
  swift_endAccess();
  return [*(a2 + 16) invalidate];
}

uint64_t sub_A38DFC(uint64_t a1, unint64_t a2, char a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v51 = a8;
  v52 = a7;
  v53 = a6;
  v50 = a5;
  v55 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27878);
  __chkstk_darwin();
  v12 = v49 - v11;
  v13 = sub_AB8F40();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = v49 - v17;
  v18 = sub_AB4BC0();
  v56 = *(v18 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v20 = v49 - v19;
  __chkstk_darwin();
  v23 = v49 - v22;
  if (a3)
  {
    if (qword_E24010 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v18, qword_E273C8);
    v25 = v56;
    (*(v56 + 16))(v23, v24, v18);
    swift_errorRetain();
    v26 = sub_AB4BA0();
    v27 = sub_AB9F30();
    sub_A3D900(a1, v55, 1);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v57[0] = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = sub_ABB520();
      v32 = sub_425E68(v30, v31, v57);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v26, v27, "Upate: error retrieving script: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    return (*(v25 + 8))(v23, v18);
  }

  v49[1] = v21;
  sub_15F84(a4, v12, &qword_E27878);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v34 = sub_12E1C(v12, &qword_E27878);
LABEL_17:
    if (*v53)
    {
      sub_A3BFB4();
      v48 = v55;
      sub_90090(a1, v55);
      v34 = sub_A3B620(a1, v48);
    }

    return v52(v34);
  }

  v35 = v54;
  (*(v14 + 32))(v54, v12, v13);
  v36 = Data.digest.getter(a1, v55);
  v38 = v37;
  Data.Digest.SHA256.getter(v36, v37);
  sub_466B8(v36, v38);
  sub_A3F724(&qword_E27880, &type metadata accessor for SHA256Digest);
  LOBYTE(v36) = sub_AB8F50();
  v41 = *(v14 + 8);
  v40 = v14 + 8;
  v39 = v41;
  v41(v16, v13);
  if ((v36 & 1) == 0)
  {
    v34 = v39(v35, v13);
    goto LABEL_17;
  }

  v42 = v39;
  if (qword_E24010 != -1)
  {
    swift_once();
  }

  v55 = v40;
  v43 = __swift_project_value_buffer(v18, qword_E273C8);
  (*(v56 + 16))(v20, v43, v18);
  v44 = sub_AB4BA0();
  v45 = sub_AB9F30();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "Update: downloaded data identical to local copy", v46, 2u);
  }

  v47 = *(v56 + 8);
  v56 += 8;
  v47(v20, v18);
  if (*v50)
  {
    sub_A3AF34();
  }

  return v42(v54, v13);
}

uint64_t sub_A39714()
{

  return swift_deallocClassInstance();
}

uint64_t sub_A39778()
{
  v1[0] = 0xD000000000000010;
  v1[1] = 0x8000000000BBAAC0;
  sub_36A48();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_12E1C(&v2, &unk_DE8E40);
    return 0;
  }
}

void sub_A39830(void (*a1)(void, void, void), uint64_t a2)
{
  v5 = sub_AB4BC0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v33 - v9;
  if (*(v2 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D920410Downloader_descriptor + 32) == 2 && (v11 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) + 32), (sub_AB3090() & 1) != 0))
  {
    v35 = v11;
    if (qword_E24010 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v5, qword_E273C8);
    (*(v6 + 16))(v10, v12, v5);

    v13 = sub_AB4BA0();
    v14 = sub_AB9F50();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = a1;
      v34 = v16;
      v37 = v16;
      *v15 = 136315138;
      v17 = sub_AB3160();
      v19 = sub_425E68(v17, v18, &v37);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_0, v13, v14, "Development mode and file URL detected.  Loading from path: '%s'", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      a1 = v36;
    }

    (*(v6 + 8))(v10, v5);
    v30 = sub_AB31F0();
    v32 = v31;
    sub_90090(v30, v31);
    a1(v30, v32, 0);
    sub_466B8(v30, v32);
    sub_466B8(v30, v32);
  }

  else
  {
    if (qword_E24010 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v5, qword_E273C8);
    (*(v6 + 16))(v8, v20, v5);

    v21 = sub_AB4BA0();
    v22 = sub_AB9F50();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = a1;
      v24 = v23;
      v25 = swift_slowAlloc();
      v35 = a2;
      v26 = v25;
      v37 = v25;
      *v24 = 136315138;
      type metadata accessor for ApplicationScriptProvider.Descriptor(0);
      v27 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
      v29 = sub_425E68(v27, v28, &v37);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_0, v21, v22, "Downloading URL: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      a2 = v35;

      a1 = v36;
    }

    (*(v6 + 8))(v8, v5);
    sub_A39CC0(0, a1, a2);
  }
}

void sub_A39CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [objc_opt_self() sharedSession];
  v9 = sub_AB2A30();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;
  v10[5] = v4;
  v13[4] = sub_A3D8C4;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_A3A124;
  v13[3] = &block_descriptor_268;
  v11 = _Block_copy(v13);

  v12 = [v8 dataTaskWithRequest:v9 completionHandler:v11];
  _Block_release(v11);

  [v12 resume];
}

uint64_t sub_A39E20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_AB4BC0();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v30[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = a1;
  v30[1] = a2;
  v29 = a4;
  sub_9007C(a1, a2);
  swift_errorRetain();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
  Result.init(success:failure:)(v30, &v29, &type metadata for Data, v19, &v31);
  v20 = v33;
  if (v33 != 255)
  {
    if (!__OFADD__(a7, 1))
    {
      v21 = v31;
      v22 = v32;
      if (*(a8 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D920410Downloader_descriptor + 32) || (v33 & 1) == 0 || *(a8 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D920410Downloader_descriptor + 8) <= a7)
      {
        (a5)(v31, v32, v33 & 1);
      }

      else
      {
        sub_A3D90C(v31, v32, 1);
        sub_A3A1EC(v21, a7 + 1);
        sub_A39CC0(a7 + 1, a5, a6);
        sub_A3D8E8(v21, v22, v20);
      }

      return sub_A3D8E8(v21, v22, v20);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_E24010 != -1)
  {
LABEL_14:
    swift_once();
  }

  v24 = __swift_project_value_buffer(v15, qword_E273C8);
  (*(v16 + 16))(v18, v24, v15);
  v25 = sub_AB4BA0();
  v26 = sub_AB9F40();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "URLDataTask completed a result without error or data", v27, 2u);
  }

  (*(v16 + 8))(v18, v15);
  sub_9B2244();
  swift_allocError();
  *v28 = 3;
  a5();
}

uint64_t sub_A3A124(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_AB3260();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_466A4(v6, v10);
}

uint64_t sub_A3A1EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB4BC0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E24010 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_E273C8);
  (*(v4 + 16))(v6, v7, v3);

  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = a2;
    v11 = v10;
    v20 = swift_slowAlloc();
    *v11 = 136315650;
    type metadata accessor for ApplicationScriptProvider.Descriptor(0);
    v12 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
    v14 = sub_425E68(v12, v13, &v20);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v15 = sub_ABB520();
    v17 = sub_425E68(v15, v16, &v20);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2048;
    *(v11 + 24) = v19;
    _os_log_impl(&dword_0, v8, v9, "Failed to download URL: %s\nError: %s.\nNumber of downloads attempted: %ld.\nTrying again.", v11, 0x20u);
    swift_arrayDestroy();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_A3A490()
{
  sub_A40278(v0 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D920410Downloader_descriptor, type metadata accessor for ApplicationScriptProvider.Descriptor);
  v1 = OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D920410Downloader_request;
  v2 = sub_AB2A90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_A3A578()
{
  result = type metadata accessor for ApplicationScriptProvider.Descriptor(319);
  if (v1 <= 0x3F)
  {
    result = sub_AB2A90();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_A3A664()
{
  v1[0] = 0xD00000000000001ALL;
  v1[1] = 0x8000000000BBAAE0;
  sub_36A48();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v1[0]);
    }
  }

  else
  {
    sub_12E1C(&v2, &unk_DE8E40);
  }

  return 0;
}

uint64_t sub_A3A70C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __swift_allocate_value_buffer(v0, qword_E273B0);
  v1 = __swift_project_value_buffer(v0, qword_E273B0);
  v2 = Datavault.music.unsafeMutableAddressor();
  swift_beginAccess();
  if (*v2)
  {

    static URL.+ infix(_:_:)();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_AB31C0();
  return (*(*(v4 - 8) + 56))(v1, v3, 1, v4);
}

id sub_A3A818()
{
  v0 = sub_AB31C0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v11 - v4;
  v6 = [objc_opt_self() defaultManager];
  static URL.+ infix(_:_:)();

  static URL.+ infix(_:_:)();
  v7 = *(v1 + 8);
  v7(v3, v0);
  sub_AB3160();
  v7(v5, v0);
  v8 = sub_AB9260();

  v9 = [v6 fileExistsAtPath:v8];

  return v9;
}

uint64_t sub_A3AA10()
{
  v0 = sub_AB31C0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  static URL.+ infix(_:_:)();

  v5 = sub_AB3160();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8._countAndFlagsBits = v5;
  v8._object = v7;
  LOBYTE(v9) = NSFileManager.directoryExists(at:)(v8).exists;
  LOWORD(v0) = v9;

  return v0 & ((v0 & 0x100) >> 8);
}

uint64_t sub_A3AB88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v23[-1] - v6;
  v8 = [objc_opt_self() defaultManager];
  static URL.+ infix(_:_:)();

  static URL.+ infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  sub_AB3160();
  v9(v7, v2);
  v10 = sub_AB9260();

  v23[0] = 0;
  v11 = [v8 attributesOfItemAtPath:v10 error:v23];

  v12 = v23[0];
  if (v11)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_A3F724(&qword_E24460, type metadata accessor for FileAttributeKey);
    v13 = sub_AB8FF0();
    v14 = v12;

    if (*(v13 + 16))
    {
      v15 = sub_85C958(NSFileModificationDate);
      if (v16)
      {
        sub_808B0(*(v13 + 56) + 32 * v15, v23);

        v17 = sub_AB3430();
        v18 = swift_dynamicCast();
        return (*(*(v17 - 8) + 56))(a1, v18 ^ 1u, 1, v17);
      }
    }
  }

  else
  {
    v20 = v23[0];
    sub_AB3050();

    swift_willThrow();
  }

  v21 = sub_AB3430();
  return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
}

void sub_A3AF34()
{
  v0 = sub_AB31C0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = v19 - v4;
  v6 = [objc_opt_self() defaultManager];
  static URL.+ infix(_:_:)();

  static URL.+ infix(_:_:)();
  v7 = *(v1 + 8);
  v7(v3, v0);
  sub_AB3160();
  v7(v5, v0);
  v8 = sub_AB9260();
  v21[0] = 0;
  v9 = [v6 attributesOfItemAtPath:v8 error:v21];

  v10 = v21[0];
  if (v9)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_A3F724(&qword_E24460, type metadata accessor for FileAttributeKey);
    v11 = sub_AB8FF0();
    v12 = v10;

    v22 = sub_AB3430();
    __swift_allocate_boxed_opaque_existential_0(v21);
    sub_AB3420();
    sub_9ACFC(v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[2] = v11;
    sub_9A3C80(v20, NSFileModificationDate, isUniquelyReferenced_nonNull_native);
    isa = sub_AB8FD0().super.isa;

    v15 = sub_AB9260();

    v21[0] = 0;
    v16 = [v6 setAttributes:isa ofItemAtPath:v15 error:v21];

    v17 = v21[0];
    if (v16)
    {

      return;
    }

    v18 = v17;
  }

  else
  {
    v18 = v21[0];
  }

  sub_AB3050();

  swift_willThrow();
}

uint64_t sub_A3B2E4()
{
  sub_AB4BC0();
  __chkstk_darwin();
  v0 = sub_AB31C0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  static URL.+ infix(_:_:)();

  static URL.+ infix(_:_:)();
  v6 = *(v1 + 8);
  v6(v3, v0);
  v7 = sub_AB31F0();
  v6(v5, v0);
  return v7;
}

uint64_t sub_A3B620(uint64_t a1, unint64_t a2)
{
  v4 = sub_AB4BC0();
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  __chkstk_darwin();
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v59 = &v57 - v7;
  __chkstk_darwin();
  v9 = &v57 - v8;
  __chkstk_darwin();
  v57 = &v57 - v10;
  v11 = sub_AB31C0();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v57 - v15;
  __chkstk_darwin();
  v18 = &v57 - v17;
  __chkstk_darwin();
  v20 = &v57 - v19;
  if (a2 >> 60 == 15)
  {
    v57 = a1;
    v21 = [objc_opt_self() defaultManager];
    static URL.+ infix(_:_:)();

    static URL.+ infix(_:_:)();
    v22 = *(v12 + 8);
    v22(v14, v11);
    sub_AB30F0(v23);
    v25 = v24;
    v22(v16, v11);
    v62 = 0;
    v26 = [v21 removeItemAtURL:v25 error:&v62];

    if (v26)
    {
      v27 = qword_E24010;
      v28 = v62;
      v30 = v60;
      v29 = v61;
      if (v27 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v30, qword_E273C8);
      (*(v29 + 16))(v9, v31, v30);
      v32 = sub_AB4BA0();
      v33 = sub_AB9F50();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_0, v32, v33, "Removed local copy of script", v34, 2u);

        sub_466A4(v57, a2);
      }

      else
      {
      }

      return (*(v29 + 8))(v9, v30);
    }

    else
    {
      v37 = v62;
      sub_AB3050();

      swift_willThrow();
      v39 = v60;
      v38 = v61;
      if (qword_E24010 != -1)
      {
        swift_once();
      }

      v40 = __swift_project_value_buffer(v39, qword_E273C8);
      v41 = v58;
      (*(v38 + 16))(v58, v40, v39);
      swift_errorRetain();
      v42 = sub_AB4BA0();
      v43 = sub_AB9F30();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v62 = v45;
        *v44 = 136315138;
        swift_getErrorValue();
        v46 = sub_ABB520();
        v48 = sub_425E68(v46, v47, &v62);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_0, v42, v43, "Error removing application script: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
      }

      else
      {
      }

      return (*(v38 + 8))(v41, v39);
    }
  }

  else
  {
    static URL.+ infix(_:_:)();

    static URL.+ infix(_:_:)();
    v35 = *(v12 + 8);
    v35(v18, v11);
    sub_AB3270();
    v36 = a1;
    v35(v20, v11);
    v49 = v61;
    if (qword_E24010 != -1)
    {
      swift_once();
    }

    v50 = v60;
    v51 = __swift_project_value_buffer(v60, qword_E273C8);
    v52 = v57;
    (*(v49 + 16))(v57, v51, v50);
    v53 = sub_AB4BA0();
    v54 = sub_AB9F50();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_0, v53, v54, "Wrote new local copy of script", v55, 2u);
    }

    sub_466A4(v36, a2);

    return (*(v49 + 8))(v52, v50);
  }
}

void sub_A3BFB4()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  static URL.+ infix(_:_:)();

  NSFileManager.createDirectoryIfNeeded(at:)();
  (*(v2 + 8))(v4, v1);

  if (!v0)
  {
    sub_A3C14C();
  }
}

void sub_A3C14C()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_AB31C0();
  v94 = *(v4 - 8);
  __chkstk_darwin();
  v93 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v78 - v6;
  v8 = sub_AB4BC0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v13 = &v78 - v12;
  __chkstk_darwin();
  v16 = &v78 - v15;
  if ((*(v3 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D92047Storage_isUpdate) & 1) == 0)
  {
    v91 = v14;
    v92 = v4;
    v18 = *(v3 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D92047Storage_version);
    v17 = *(v3 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D92047Storage_version + 8);

    v19 = sub_A3D5A4(v18, v17, 1);
    if (v19)
    {
      v88 = v13;
      v20 = v19;
      if (sub_A3AA10())
      {
        v89 = v20;
        v81 = v2;
        if (qword_E24010 != -1)
        {
          swift_once();
        }

        v21 = __swift_project_value_buffer(v8, qword_E273C8);
        v22 = *(v9 + 16);
        v83 = v21;
        v90 = v8;
        v84 = v22;
        v85 = v9 + 16;
        (v22)(v16);
        v23 = sub_AB4BA0();
        v24 = sub_AB9F50();
        v25 = os_log_type_enabled(v23, v24);
        v80 = v11;
        if (v25)
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_0, v23, v24, "Detected new local script, attempting to move", v26, 2u);
        }

        v86 = *(v9 + 8);
        v87 = v9 + 8;
        v86(v16, v90);
        v27 = [objc_allocWithZone(NSFileManager) init];
        v28 = OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D92047Storage_versionPath;
        static URL.+ infix(_:_:)();
        sub_AB3160();
        v29 = v94[1];
        v30 = v92;
        v29(v7, v92);
        v31 = sub_AB9260();

        v32 = [v27 fileExistsAtPath:v31];

        v82 = v28;
        if (v32)
        {
          static URL.+ infix(_:_:)();
          sub_AB30F0(v33);
          v35 = v34;
          v29(v7, v30);
          v95 = 0;
          v36 = v27;
          v37 = [v27 removeItemAtURL:v35 error:&v95];

          v38 = v29;
          if (v37)
          {
            v39 = v95;
          }

          else
          {
            v40 = v95;
            sub_AB3050();

            swift_willThrow();
            v81 = 0;
            v41 = v90;
            v84(v91, v83, v90);
            swift_errorRetain();
            v42 = sub_AB4BA0();
            v43 = sub_AB9F30();

            LODWORD(v94) = v43;
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              v95 = v79;
              *v44 = 136315138;
              swift_getErrorValue();
              v78 = v42;
              v45 = sub_ABB520();
              v47 = sub_425E68(v45, v46, &v95);

              *(v44 + 4) = v47;
              v48 = v78;
              _os_log_impl(&dword_0, v78, v94, "Error removing: %s", v44, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v79);

              v50 = v90;
              v49 = v91;
            }

            else
            {

              v49 = v91;
              v50 = v41;
            }

            v86(v49, v50);
          }
        }

        else
        {
          v36 = v27;
          v38 = v29;
        }

        v51 = v93;
        static URL.+ infix(_:_:)();

        sub_AB30F0(v52);
        v54 = v53;
        v55 = v92;
        v38(v51, v92);
        static URL.+ infix(_:_:)();
        sub_AB30F0(v56);
        v58 = v57;
        v38(v7, v55);
        v95 = 0;
        v59 = v36;
        LODWORD(v55) = [v36 moveItemAtURL:v54 toURL:v58 error:&v95];

        v60 = v95;
        if (v55)
        {
          v61 = v88;
          v62 = v90;
          v84(v88, v83, v90);
          v63 = v60;
          v64 = sub_AB4BA0();
          v65 = sub_AB9F50();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            *v66 = 0;
            _os_log_impl(&dword_0, v64, v65, "Upgraded local copy of script", v66, 2u);
          }

          else
          {
          }

          v86(v61, v62);
        }

        else
        {
          v67 = v95;
          sub_AB3050();

          swift_willThrow();
          v68 = v80;
          v69 = v90;
          v84(v80, v83, v90);
          swift_errorRetain();
          v70 = sub_AB4BA0();
          v71 = sub_AB9F30();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v94 = v59;
            v73 = v72;
            v74 = swift_slowAlloc();
            v95 = v74;
            *v73 = 136315138;
            swift_getErrorValue();
            v75 = sub_ABB520();
            v77 = sub_425E68(v75, v76, &v95);

            *(v73 + 4) = v77;
            _os_log_impl(&dword_0, v70, v71, "Error moving: %s", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v74);

            v59 = v94;
          }

          v86(v68, v69);
          swift_willThrow();
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_A3CAF8()
{
  v1 = OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D92047Storage_versionPath;
  v2 = sub_AB31C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_A3CBD0()
{
  result = sub_AB31C0();
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

uint64_t sub_A3CC74()
{
  v1 = v0;
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  if (qword_E24010 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_E273C8);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "ScriptBackgroundUpdateService XPC starting", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = objc_allocWithZone(NSXPCConnection);
  v11 = sub_AB9260();
  v12 = [v10 initWithServiceName:v11];

  v13 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP11MusicJSCore32MusicScriptUpdateServiceProtocol_];
  [v12 setRemoteObjectInterface:v13];

  v21 = sub_A3CFC0;
  v22 = 0;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1B5EB4;
  v20 = &block_descriptor_66_0;
  v14 = _Block_copy(&aBlock);
  [v12 setInvalidationHandler:v14];
  _Block_release(v14);
  v21 = sub_A3CFCC;
  v22 = 0;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1B5EB4;
  v20 = &block_descriptor_69_0;
  v15 = _Block_copy(&aBlock);
  [v12 setInterruptionHandler:v15];
  _Block_release(v15);
  [v12 resume];
  *(v1 + 16) = v12;
  return v1;
}

uint64_t sub_A3CFD8(const char *a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E24010 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_E273C8);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, a1, v9, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_A3D16C()
{
  [*(v0 + 16) invalidate];

  sub_12E1C(v0 + 24, &unk_DE8E40);

  return swift_deallocClassInstance();
}

uint64_t sub_A3D204(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_AB31C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_A3D2C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_AB31C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_A3D368()
{
  sub_A3D408();
  if (v0 <= 0x3F)
  {
    sub_AB31C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A3D408()
{
  if (!qword_E27830)
  {
    type metadata accessor for ApplicationScriptProvider.Storage(255);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E27830);
    }
  }
}

unint64_t sub_A3D474()
{
  result = qword_E27870;
  if (!qword_E27870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E27870);
  }

  return result;
}

uint64_t sub_A3D4C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  memset(v7, 0, sizeof(v7));
  swift_beginAccess();
  sub_44F27C(v7, a2 + 24);
  swift_endAccess();
  return a3(a1);
}

uint64_t sub_A3D540()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E273C8);
  __swift_project_value_buffer(v0, qword_E273C8);
  return static Logger.music(_:)();
}

uint64_t sub_A3D5A4(uint64_t a1, uint64_t a2, int a3)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin();
  v7 = &v19[-v6];
  v8 = sub_AB31C0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v19[-v12];
  type metadata accessor for ApplicationScriptProvider.Storage(0);
  v14 = swift_allocObject();
  if (qword_E24008 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_E273B0);
  sub_15F84(v15, v7, &unk_DF2AE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_12E1C(v7, &unk_DF2AE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v16 = *(v9 + 32);
    v16(v13, v7, v8);

    static URL.+ infix(_:_:)();

    (*(v9 + 8))(v13, v8);
    v16((v14 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D92047Storage_versionPath), v11, v8);
    *(v14 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D92047Storage_isUpdate) = v20 & 1;
    v17 = (v14 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D92047Storage_version);
    *v17 = a1;
    v17[1] = a2;
  }

  return v14;
}

uint64_t sub_A3D884()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_268(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A3D8E8(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_A3D900(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_A3D900(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_466B8(a1, a2);
  }
}

uint64_t sub_A3D90C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return sub_90090(a1, a2);
  }
}

uint64_t sub_A3D918()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_A3D958()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_A3D990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A3D9F4()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v2 + v3) & ~v2;

  v5 = v0 + v3;

  v6 = v1[10];
  v7 = sub_AB31C0();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);

  v8(v0 + v4 + v1[10], v7);

  return swift_deallocObject();
}

uint64_t sub_A3DB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A3DBAC(uint64_t a1)
{
  v3 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_A38AA4(a1, v6, v7, v8, (v1 + v5), v9);
}

uint64_t sub_A3DC50(char *a1, char *a2)
{
  v111 = a1;
  v112 = a2;
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v92 - v6;
  __chkstk_darwin();
  v9 = &v92 - v8;
  __chkstk_darwin();
  v109 = &v92 - v10;
  __chkstk_darwin();
  v12 = &v92 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin();
  v15 = &v92 - v14;
  v113 = sub_AB31C0();
  v16 = *(v113 - 8);
  __chkstk_darwin();
  v108 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v110 = &v92 - v18;
  __chkstk_darwin();
  v20 = &v92 - v19;
  if (qword_E24008 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, qword_E273B0);
  sub_15F84(v21, v15, &unk_DF2AE0);
  if ((*(v16 + 48))(v15, 1, v113) != 1)
  {
    v106 = v9;
    (*(v16 + 32))(v20, v15, v113);
    v27 = [objc_allocWithZone(NSFileManager) init];
    v28 = objc_opt_self();
    v29 = [v28 standardUserDefaults];
    v30 = sub_A3A664();

    if (v30)
    {
      if (qword_E24010 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v2, qword_E273C8);
      (*(v3 + 16))(v12, v31, v2);
      v32 = sub_AB4BA0();
      v33 = sub_AB9F50();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v107 = v27;
        *v34 = 0;
        _os_log_impl(&dword_0, v32, v33, "Removing all local scripts", v34, 2u);
        v27 = v107;
      }

      (*(v3 + 8))(v12, v2);
      v35 = [v28 standardUserDefaults];
      v115[3] = &type metadata for Bool;
      LOBYTE(v115[0]) = 0;
      v114[0] = 0xD00000000000001ALL;
      v114[1] = 0x8000000000BBAAE0;
      sub_36A48();
      NSUserDefaults.subscript.setter(v115, v114, &type metadata for String);

      sub_AB30F0(v36);
      v38 = v37;
      v115[0] = 0;
      v39 = [v27 removeItemAtURL:v37 error:v115];

      if (!v39)
      {
        v70 = v115[0];
        sub_AB3050();

        goto LABEL_37;
      }

      v40 = v115[0];
    }

    NSFileManager.createDirectoryIfNeeded(at:)();
    sub_AB3160();
    v41 = sub_AB9260();

    v115[0] = 0;
    v42 = [v27 contentsOfDirectoryAtPath:v41 error:v115];

    v43 = v115[0];
    if (v42)
    {
      v44 = sub_AB9760();
      v45 = v43;

      v48 = *(v44 + 16);
      if (!v48)
      {

        v85 = &qword_E24000;
LABEL_48:
        if (v85[2] != -1)
        {
          swift_once();
        }

        v86 = __swift_project_value_buffer(v2, qword_E273C8);
        v87 = v106;
        (*(v3 + 16))(v106, v86, v2);
        v88 = sub_AB4BA0();
        v89 = sub_AB9F10();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_0, v88, v89, "No old script versions found", v90, 2u);

          (*(v3 + 8))(v87, v2);
          return (*(v16 + 8))(v20, v113);
        }

        (*(v3 + 8))(v87, v2);
        return (*(v16 + 8))(v20, v113);
      }

      v49 = 0;
      v50 = 0;
      v102 = (v3 + 16);
      v101 = (v16 + 16);
      v107 = (v16 + 8);
      v103 = v3;
      v100 = (v3 + 8);
      v51 = -v48;
      v52 = v44 + 40;
      *&v47 = 136315138;
      v98 = v47;
      v105 = v16;
      v99 = v44 + 40;
      while (2)
      {
        LODWORD(v104) = v49;
        v16 = v52 + 16 * v50++;
        v54 = v111;
        v53 = v112;
        while (1)
        {
          if ((v50 - 1) >= *(v44 + 16))
          {
            __break(1u);
            goto LABEL_54;
          }

          v43 = *(v16 - 8);
          if (v43 != v54 || *v16 != v53)
          {
            v46 = sub_ABB3C0();
            v54 = v111;
            v53 = v112;
            if ((v46 & 1) == 0)
            {
              break;
            }
          }

          ++v50;
          v16 += 16;
          if (v51 + v50 == 1)
          {

            v3 = v103;
            v16 = v105;
            v85 = &qword_E24000;
            if ((v104 & 1) == 0)
            {
              goto LABEL_48;
            }

            v43 = *v107;
            return (v43)(v20, v113);
          }
        }

        v56 = v110;
        static URL.+ infix(_:_:)();

        if (qword_E24010 != -1)
        {
          swift_once();
        }

        v57 = __swift_project_value_buffer(v2, qword_E273C8);
        (*v102)(v109, v57, v2);
        v58 = v108;
        (*v101)(v108, v56, v113);
        v59 = sub_AB4BA0();
        v96 = sub_AB9F50();
        v60 = os_log_type_enabled(v59, v96);
        v16 = v105;
        if (v60)
        {
          v97 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v115[0] = v95;
          *v97 = v98;
          v94 = v59;
          v93 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
          v62 = v61;
          v104 = *v107;
          (v104)(v58, v113);
          v63 = sub_425E68(v93, v62, v115);

          v64 = v97;
          *(v97 + 4) = v63;
          v65 = v94;
          _os_log_impl(&dword_0, v94, v96, "Removing incompatible JS script at %s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v95);
        }

        else
        {

          v104 = *v107;
          (v104)(v58, v113);
        }

        (*v100)(v109, v2);
        v43 = v110;
        sub_AB30F0(v66);
        v68 = v67;
        v115[0] = 0;
        LODWORD(v97) = [v27 removeItemAtURL:v67 error:v115];

        v46 = v115[0];
        if (v97)
        {
          v69 = v43;
          v43 = v104;
          v46 = (v104)(v69, v113);
          v49 = 1;
          v52 = v99;
          if (v51 + v50)
          {
            continue;
          }

          return (v43)(v20, v113);
        }

        break;
      }

LABEL_54:
      v91 = v46;

      sub_AB3050();

      swift_willThrow();
      (v104)(v43, v113);
      v3 = v103;
LABEL_38:
      if (qword_E24010 != -1)
      {
        swift_once();
      }

      v72 = __swift_project_value_buffer(v2, qword_E273C8);
      (*(v3 + 16))(v5, v72, v2);
      swift_errorRetain();
      v73 = sub_AB4BA0();
      v74 = sub_AB9F40();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v112 = v5;
        v76 = v75;
        v77 = swift_slowAlloc();
        v107 = v27;
        v78 = v77;
        v115[0] = v77;
        *v76 = 136315138;
        swift_getErrorValue();
        v79 = sub_ABB520();
        v81 = sub_425E68(v79, v80, v115);
        v111 = v20;
        v82 = v16;
        v83 = v3;
        v84 = v81;

        *(v76 + 4) = v84;
        _os_log_impl(&dword_0, v73, v74, "Error while trying to clean script directory: %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v78);

        (*(v83 + 8))(v112, v2);
        return (*(v82 + 8))(v111, v113);
      }

      (*(v3 + 8))(v5, v2);
      return (*(v16 + 8))(v20, v113);
    }

    v71 = v115[0];
    sub_AB3050();

LABEL_37:
    swift_willThrow();
    goto LABEL_38;
  }

  sub_12E1C(v15, &unk_DF2AE0);
  if (qword_E24010 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v2, qword_E273C8);
  (*(v3 + 16))(v7, v22, v2);
  v23 = sub_AB4BA0();
  v24 = sub_AB9F40();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "No script directory available for Music!", v25, 2u);
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_A3EA98(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin();
  v3 = &v15 - v2;
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 2)
  {
    return 2;
  }

  if (!*a1)
  {
    return 3;
  }

  sub_A3AB88(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {

    sub_12E1C(v3, &unk_E01230);
    return 3;
  }

  (*(v5 + 32))(v7, v3, v4);
  sub_AB33B0();
  v10 = v9;
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = COERCE_DOUBLE(sub_A39778());
  v14 = v13;

  (*(v5 + 8))(v7, v4);
  if (v14)
  {
    if (v10 >= -604800.0)
    {
      return 0;
    }
  }

  else if (v12 >= -v10)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_A3ECD8(void *a1, uint64_t a2)
{
  v48 = sub_AB31C0();
  v46 = *(v48 - 8);
  __chkstk_darwin();
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_AB2A90();
  v47 = *(v49 - 8);
  __chkstk_darwin();
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v40 - v9;
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27878) - 8);
  v11 = *(v43 + 64);
  __chkstk_darwin();
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v40 - v12;
  v51 = a1;
  if (*a1 && (v14 = sub_A3B2E4(), v15 >> 60 != 15))
  {
    v17 = v13;
    v41 = a2;
    v18 = v14;
    v19 = v15;
    v20 = Data.digest.getter(v14, v15);
    v22 = v21;
    v23 = v18;
    a2 = v41;
    sub_466A4(v23, v19);
    Data.Digest.SHA256.getter(v20, v22);
    v24 = v22;
    v13 = v17;
    sub_466B8(v20, v24);
    v25 = sub_AB8F40();
    (*(*(v25 - 8) + 56))(v17, 0, 1, v25);
  }

  else
  {
    v16 = sub_AB8F40();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  v40 = v13;
  sub_A3D990(a2, v10);
  v26 = *(v7 + 80);
  v27 = a2;
  v41 = v26 | 7;
  v28 = swift_allocObject();
  sub_A3DB48(v10, v28 + ((v26 + 16) & ~v26));
  sub_A3D990(a2, v10);
  type metadata accessor for ApplicationScriptProvider.Downloader(0);
  v29 = swift_allocObject();
  sub_A3D990(v10, v29 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D920410Downloader_descriptor);
  (*(v46 + 16))(v45, &v10[*(v42 + 32)], v48);
  sub_AB2A50();
  sub_AB2A40();
  sub_A40278(v10, type metadata accessor for ApplicationScriptProvider.Descriptor);
  (*(v47 + 32))(v29 + OBJC_IVAR____TtCC11MusicJSCore25ApplicationScriptProviderP33_CA22050DB26455E75D4B4BF5241D920410Downloader_request, v6, v49);
  v30 = v13;
  v31 = v44;
  sub_15F84(v30, v44, &qword_E27878);
  sub_A3D990(v51, v10);
  v32 = v27;
  v33 = v50;
  sub_A3D990(v32, v50);
  v34 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v35 = (v11 + v26 + v34) & ~v26;
  v36 = (v8 + v26 + v35) & ~v26;
  v37 = swift_allocObject();
  sub_36B0C(v31, v37 + v34, &qword_E27878);
  sub_A3DB48(v10, v37 + v35);
  sub_A3DB48(v33, v37 + v36);
  v38 = (v37 + ((v8 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v38 = sub_A3F360;
  v38[1] = v28;

  sub_A39830(sub_A3F5EC, v37);

  return sub_12E1C(v40, &qword_E27878);
}

uint64_t sub_A3F270()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = sub_AB31C0();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_A3F360()
{
  v1 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_A38D30(v2);
}

uint64_t sub_A3F3C0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27878) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = sub_AB8F40();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  v9 = (v2 + v3 + v5) & ~v5;
  v10 = (v6 + v5 + v9) & ~v5;
  v11 = v0 + v9;

  v12 = *(v4 + 32);
  v13 = sub_AB31C0();
  v14 = *(*(v13 - 8) + 8);
  v14(v11 + v12, v13);

  v14(v0 + v10 + *(v4 + 32), v13);

  return swift_deallocObject();
}

uint64_t sub_A3F5EC(uint64_t a1, unint64_t a2, char a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27878) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = (v13 + v11 + v12) & ~v11;
  v15 = v3 + ((v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  v17 = *(v15 + 8);

  return sub_A38DFC(a1, a2, a3 & 1, v3 + v8, (v3 + v12), (v3 + v14), v16, v17);
}

uint64_t sub_A3F724(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A3F76C(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v5 = sub_AB4BC0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v41 - v9;
  v44 = sub_AB31C0();
  v11 = *(v44 - 8);
  __chkstk_darwin();
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v41 - v14;
  __chkstk_darwin();
  v43 = &v41 - v16;
  v17 = *(a2 + 16);
  v46 = a3;

  v18 = [v17 remoteObjectProxy];
  sub_ABAB50();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27888);
  if (swift_dynamicCast())
  {
    v19 = v51;
    if (*v45)
    {
      static URL.+ infix(_:_:)();

      static URL.+ infix(_:_:)();
      v41 = v19;
      v42 = *(v11 + 8);
      v20 = v44;
      v42(v13, v44);
      v21 = v43;
      v22 = v15;
      v23 = v20;
      (*(v11 + 32))(v43, v22, v20);
      *(&v48 + 1) = type metadata accessor for ScriptBackgroundUpdateService();
      *&aBlock = a2;
      swift_beginAccess();

      sub_44F27C(&aBlock, a2 + 24);
      swift_endAccess();
      sub_AB30F0(v24);
      v26 = v25;
      v27 = sub_AB9260();
      v28 = swift_allocObject();
      v28[2] = a2;
      v28[3] = sub_A3FE48;
      v28[4] = v46;
      v49 = sub_A3FE90;
      v50 = v28;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v48 = sub_1811AC;
      *(&v48 + 1) = &block_descriptor_63_8;
      v29 = _Block_copy(&aBlock);

      [v41 updateBytecodeCacheOfScriptAt:v26 version:v27 withReply:v29];
      _Block_release(v29);
      swift_unknownObjectRelease();

      v42(v21, v23);
    }

    else
    {
      if (qword_E24010 != -1)
      {
        swift_once();
      }

      v36 = __swift_project_value_buffer(v5, qword_E273C8);
      (*(v6 + 16))(v8, v36, v5);
      v37 = sub_AB4BA0();
      v38 = sub_AB9F50();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_0, v37, v38, "ScriptBackgroundUpdateService has no source to compile?", v39, 2u);
      }

      (*(v6 + 8))(v8, v5);
      aBlock = 0u;
      v48 = 0u;
      v40 = v46;
      swift_beginAccess();
      sub_44F27C(&aBlock, v40 + 24);
      swift_endAccess();
      [*(v40 + 16) invalidate];

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_E24010 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v5, qword_E273C8);
    (*(v6 + 16))(v10, v31, v5);
    v32 = sub_AB4BA0();
    v33 = sub_AB9F50();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "ScriptBackgroundUpdateService failed to get object!", v34, 2u);
    }

    (*(v6 + 8))(v10, v5);
    aBlock = 0u;
    v48 = 0u;
    v35 = v46;
    swift_beginAccess();
    sub_44F27C(&aBlock, v35 + 24);
    swift_endAccess();
    [*(v35 + 16) invalidate];
  }
}

uint64_t sub_A3FE50()
{

  return swift_deallocObject();
}

uint64_t sub_A3FE9C()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = sub_AB31C0();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_A3FFB4(uint64_t a1, unint64_t a2, char a3)
{
  v7 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = (v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_A37F3C(a1, a2, a3 & 1, (v3 + v8), v10, v12, v13);
}

uint64_t sub_A40098()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  v5 = v1[10];
  v6 = sub_AB31C0();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  sub_466B8(*(v0 + v3), *(v0 + v3 + 8));

  return swift_deallocObject();
}

uint64_t sub_A401CC()
{
  v1 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_A382B8(v0 + v2, v6, v7, v8, v9);
}

uint64_t sub_A40278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_A402D8()
{
  result = qword_E27890;
  if (!qword_E27890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E27890);
  }

  return result;
}

uint64_t sub_A40324()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = sub_AB31C0();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

void sub_A40434()
{
  v1 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_A36570(v3, (v0 + v2), v4);
}

uint64_t sub_A404EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_A4056C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_A405DC()
{
  result = type metadata accessor for ApplicationScriptProvider.Descriptor(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_A4065C()
{
  result = qword_E27928;
  if (!qword_E27928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E27928);
  }

  return result;
}

unint64_t sub_A406B4()
{
  result = qword_E27930;
  if (!qword_E27930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E27930);
  }

  return result;
}

char *sub_A40728()
{
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSPlayActivityController_didFlushEventsNotificationObserver) = 0;
  v10[0] = _swiftEmptyArrayStorage;
  v10[1] = 1;
  memset(&v10[2], 0, 24);
  v11 = 0;
  v1 = JSObject.init(type:)(v10);
  v2 = MPCJinglePlayActivityReportingControllerDidFlushEventsNotification;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v4 = v1;
  *&v4[OBJC_IVAR____TtC11MusicJSCore24JSPlayActivityController_didFlushEventsNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v2, 0, 1, 1, sub_A40BF8, v3);

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v5 = static JSBridge.shared;
  sub_13C80(0, &qword_DE8ED0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0xD000000000000016;
  *(v6 + 24) = 0x8000000000BBAB90;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v6 + 48) = 1;
  v7 = v4;
  v8 = v5;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3204, v6);

  return v7;
}

uint64_t sub_A408F0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v2 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF4EC0;
    v4 = sub_AB2BC0();
    if (v4)
    {
      v5 = v4;
      *&v14 = sub_AB92A0();
      *(&v14 + 1) = v6;
      sub_ABAD10();
      if (*(v5 + 16))
      {
        v7 = sub_2EC004(v13);
        if (v8)
        {
          sub_808B0(*(v5 + 56) + 32 * v7, &v14);
          sub_8085C(v13);

          if (*(&v15 + 1))
          {
            swift_dynamicCast();
LABEL_12:
            isa = sub_AB9890().super.super.isa;
            *(v3 + 56) = sub_13C80(0, &qword_DF1300);
            *(v3 + 32) = isa;
            sub_13C80(0, &qword_DE8ED0);
            v10 = swift_allocObject();
            *(v10 + 16) = v3;
            *(v10 + 24) = _swiftEmptyArrayStorage;
            strcpy((v10 + 32), "onEventFlush");
            *(v10 + 45) = 0;
            *(v10 + 46) = -5120;
            *(v10 + 48) = v1;
            *(v10 + 56) = v2;
            *(v10 + 64) = 0;
            v11 = v1;
            v12 = v2;
            static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v10);
          }

LABEL_11:
          sub_9BC10(&v14);
          goto LABEL_12;
        }
      }

      sub_8085C(v13);
    }

    v14 = 0u;
    v15 = 0u;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_A40BC0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_A40C00()
{

  return swift_deallocObject();
}

uint64_t sub_A40C48()
{

  return swift_deallocObject();
}

uint64_t JSVerticalStack.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore15JSVerticalStack_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSVerticalStack.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore15JSVerticalStack_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

uint64_t sub_A40E5C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB09E4(a1, v9);
  LOBYTE(a1) = v3;

  if ((a1 & 1) == 0)
  {
    v5 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSVerticalStack_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510();

      (*(v6 + 8))(v1, v8, ObjectType, v6);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t JSVerticalStack.childViewModelKinds.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_A41028@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_A410AC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_AB5520();
  sub_A40E5C(v5);
}

uint64_t JSVerticalStack.childViewModelKinds.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_AB5520();
  sub_A40E5C(v3);
}

uint64_t (*JSVerticalStack.childViewModelKinds.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = a1[1];
  return sub_A412F0;
}

uint64_t sub_A412F0(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[2];
  if (a2)
  {

    sub_AB5510();

    v6 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;
    v7 = v5;
    sub_AB5520();
    sub_A40E5C(v6);
  }

  else
  {
    sub_AB5510();

    v8 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;
    v9 = v5;
    sub_AB5520();
    sub_A40E5C(v8);
  }
}

uint64_t JSVerticalStack.$childViewModelKinds.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27980);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t JSVerticalStack.$childViewModelKinds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27988);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27980);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSVerticalStack.$childViewModelKinds.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27988);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore15JSVerticalStack__childViewModelKinds;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27980);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

Swift::Void __swiftcall JSVerticalStack.requestAdditionalChildViewModelsIfNeeded()()
{
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v1 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF4EC0;
  *(v2 + 56) = type metadata accessor for JSVerticalStack();
  *(v2 + 32) = v0;
  sub_60044();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = _swiftEmptyArrayStorage;
  *(v3 + 32) = 0xD000000000000020;
  *(v3 + 40) = 0x8000000000BBABB0;
  *(v3 + 48) = v0;
  *(v3 + 56) = v1;
  *(v3 + 64) = 0;
  v4 = v0;
  v5 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v3);
}

uint64_t type metadata accessor for JSVerticalStack()
{
  result = qword_E279B8;
  if (!qword_E279B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A41900()
{

  return swift_deallocObject();
}

Swift::Void __swiftcall JSVerticalStack.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  if (_._countAndFlagsBits == 0xD000000000000015 && 0x8000000000BBABE0 == _._object || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_808B0(arguments._rawValue + 32, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F58);
      if (swift_dynamicCast())
      {
        v4 = sub_A42068(v5);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_AB5510();

        sub_9A13A8(v4);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_AB5510();

        swift_getKeyPath();
        swift_getKeyPath();
        v2;
        sub_AB5520();
        sub_A40E5C(v5);
      }
    }
  }
}

uint64_t JSVerticalStack.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  sub_F46A0(a3, v13);
  if (v13[3])
  {
    sub_F46A0(v13, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F58);
    if (swift_dynamicCast())
    {
      if (a1 == 0x656956646C696863 && a2 == 0xEF736C65646F4D77 || (sub_ABB3C0() & 1) != 0)
      {
        sub_A42068(v10);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_AB5510();

        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v3;
        sub_AB5520();
        sub_A40E5C(v9);

        __swift_destroy_boxed_opaque_existential_0(v11);
        sub_12E1C(v13, &unk_DE8E40);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v12, &unk_E27200);
}

id JSVerticalStack.init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27980);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore15JSVerticalStack_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC11MusicJSCore15JSVerticalStack__childViewModelKinds;
  v11[1] = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27970);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v7, v6, v3);
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v9 = 0;
  v9[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_A41EE4()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore15JSVerticalStack_delegate);
  v1 = OBJC_IVAR____TtC11MusicJSCore15JSVerticalStack__childViewModelKinds;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E27980);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id JSVerticalStack.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSVerticalStack();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A42028@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSVerticalStack();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

unint64_t sub_A42068(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  result = sub_ABB060();
  v2 = result;
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v2 >= 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      v4 = _swiftEmptyArrayStorage;
      do
      {
        v5 = sub_9BAB18(v3, v1);
        v19 = type metadata accessor for JSObject();
        v18[0] = v5;
        swift_unknownObjectRetain();
        v6 = _s11MusicJSCore15JSViewModelKindO5valueACSgyp_tcfC_0(v18);
        if ((~v6 & 0xF000000000000007) != 0)
        {
          v7 = v6;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_A9877C(0, *(v4 + 2) + 1, 1, v4);
          }

          v9 = *(v4 + 2);
          v8 = *(v4 + 3);
          if (v9 >= v8 >> 1)
          {
            v4 = sub_A9877C((v8 > 1), v9 + 1, 1, v4);
          }

          swift_unknownObjectRelease();
          *(v4 + 2) = v9 + 1;
          *&v4[8 * v9 + 32] = v7;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v3;
      }

      while (v2 != v3);
    }

    else
    {
      v10 = (v1 + 32);
      v11 = type metadata accessor for JSObject();
      v4 = _swiftEmptyArrayStorage;
      do
      {
        v12 = *v10;
        v19 = v11;
        v18[0] = v12;
        v13 = v12;
        v14 = _s11MusicJSCore15JSViewModelKindO5valueACSgyp_tcfC_0(v18);
        if ((~v14 & 0xF000000000000007) != 0)
        {
          v15 = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_A9877C(0, *(v4 + 2) + 1, 1, v4);
          }

          v17 = *(v4 + 2);
          v16 = *(v4 + 3);
          if (v17 >= v16 >> 1)
          {
            v4 = sub_A9877C((v16 > 1), v17 + 1, 1, v4);
          }

          *(v4 + 2) = v17 + 1;
          *&v4[8 * v17 + 32] = v15;
        }

        else
        {
        }

        ++v10;
        --v2;
      }

      while (v2);
    }

    return v4;
  }

  __break(1u);
  return result;
}

void sub_A422A8()
{
  sub_A42344();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_A42344()
{
  if (!qword_E279C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E27970);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E279C8);
    }
  }
}

uint64_t JSFlowcaseItem.ThumbnailHorizontalAlignment.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x676E696461656CLL;
  v2 = 1952867692;
  if (a1 != 2)
  {
    v2 = 0x7468676972;
  }

  if (a1)
  {
    v1 = 0x676E696C69617274;
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

Swift::Int sub_A42428()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_A424E0()
{
  sub_AB93F0();
}

Swift::Int sub_A42584()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_A42638@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore14JSFlowcaseItemC28ThumbnailHorizontalAlignmentO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_A42668(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x676E696461656CLL;
  v4 = 0xE400000000000000;
  v5 = 1952867692;
  if (*v1 != 2)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E696C69617274;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void *JSFlowcaseItem.thumbnailArtwork.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_thumbnailArtwork;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t JSFlowcaseItem.thumbnailHorizontalAlignment.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_thumbnailHorizontalAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSFlowcaseItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a1;
  v18[1] = a2;
  sub_F46A0(a3, v19);
  if (v19[3])
  {
    sub_F46A0(v19, v17);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_headlineText;
LABEL_7:
        v8 = (v3 + v7);
        swift_beginAccess();
        *v8 = v15;
        v8[1] = v16;

LABEL_38:
        __swift_destroy_boxed_opaque_existential_0(v17);
        sub_12E1C(v19, &unk_DE8E40);
      }

      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_titleText;
        goto LABEL_7;
      }

      if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_subtitleText;
        goto LABEL_7;
      }

      if (a1 == 0xD000000000000010 && 0x8000000000B4D560 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_descriptionTitleText;
        goto LABEL_7;
      }

      if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_descriptionText;
        goto LABEL_7;
      }
    }

    type metadata accessor for JSArtwork();
    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000010 && 0x8000000000BBAC50 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v9 = OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_thumbnailArtwork;
        swift_beginAccess();
        v10 = *(v3 + v9);
        *(v3 + v9) = v15;

        goto LABEL_38;
      }
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0xD00000000000001CLL && 0x8000000000B4D5C0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v11 = _s11MusicJSCore14JSFlowcaseItemC28ThumbnailHorizontalAlignmentO8rawValueAESgSS_tcfC_0(v15, v16);
        if (v11 != 4)
        {
          v12 = v11;
          v13 = OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_thumbnailHorizontalAlignment;
          swift_beginAccess();
          *(v3 + v13) = v12;
        }

        goto LABEL_38;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
  }

  JSMediaItem.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v18, &unk_E27200);
}

id JSFlowcaseItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_headlineText];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_titleText];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_subtitleText];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_descriptionTitleText];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_descriptionText];
  *v8 = 0;
  v8[1] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_thumbnailArtwork] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_thumbnailHorizontalAlignment] = 0;
  return JSMediaItem.init(type:)(a1);
}

id JSFlowcaseItem.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_headlineText);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_titleText);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_subtitleText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_descriptionTitleText);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_descriptionText);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_thumbnailArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_thumbnailHorizontalAlignment) = 0;
  return JSMediaItem.init(type:)(a1);
}

void sub_A42CA0()
{

  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_thumbnailArtwork);
}

uint64_t _s11MusicJSCore14JSFlowcaseItemC28ThumbnailHorizontalAlignmentO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4D0C8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_A42E24()
{
  result = qword_E279D0;
  if (!qword_E279D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E279D0);
  }

  return result;
}

uint64_t type metadata accessor for JSFlowcaseItem()
{
  result = qword_E27A00;
  if (!qword_E27A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JSSearchLandingComponentController.__allocating_init()()
{
  v2[0] = _swiftEmptyArrayStorage;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0xD000000000000017;
  v2[4] = 0x8000000000BBACC0;
  v3 = 0;
  return sub_A874E4(v2, objc_allocWithZone(v0));
}

uint64_t JSSearchLandingComponentController.init()()
{
  v2[0] = _swiftEmptyArrayStorage;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0xD000000000000017;
  v2[4] = 0x8000000000BBACC0;
  v3 = 0;
  return sub_A874E4(v2, v0);
}

uint64_t type metadata accessor for JSSearchLandingComponentController()
{
  result = qword_E27A38;
  if (!qword_E27A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id JSStoreFlowPresentationCoordinator.init()()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore34JSStoreFlowPresentationCoordinator_pendingStoreFlowSegueDidDismissContexts;
  *(v0 + v1) = sub_99E3E0(_swiftEmptyArrayStorage);
  v10[0] = _swiftEmptyArrayStorage;
  v10[1] = 1;
  memset(&v10[2], 0, 24);
  v11 = 0;
  v2 = JSObject.init(type:)(v10);
  v3 = qword_E23F48;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static JSBridge.shared;
  sub_60044();
  v6 = swift_allocObject();
  *(v6 + 16) = 0xD000000000000020;
  *(v6 + 24) = 0x8000000000B7DF40;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v6 + 48) = 1;
  v7 = v4;
  v8 = v5;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3204, v6);

  return v7;
}

uint64_t JSStoreFlowPresentationCoordinator.viewControllerWillPresent(_:from:)(uint64_t a1, void *a2)
{
  v4 = sub_97420(_swiftEmptyArrayStorage);
  v16 = &type metadata for Int;
  *&v15 = sub_ABAA10();
  sub_9ACFC(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_9330C(v14, 0xD000000000000018, 0x8000000000BBAD50, isUniquelyReferenced_nonNull_native);
  if (a2)
  {
    v16 = type metadata accessor for JSStoreFlowSegue();
    *&v15 = a2;
    sub_9ACFC(&v15, v14);
    v6 = a2;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_9330C(v14, 0x6F6C4665726F7473, 0xEE00657567655377, v7);
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v8 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF4EC0;
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  *(v9 + 32) = v4;
  sub_60044();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = _swiftEmptyArrayStorage;
  *(v10 + 32) = 0xD000000000000019;
  *(v10 + 40) = 0x8000000000BBAD70;
  *(v10 + 48) = v2;
  *(v10 + 56) = v8;
  *(v10 + 64) = 0;
  v11 = v2;
  v12 = v8;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BE1A0, v10);
}

uint64_t JSStoreFlowPresentationCoordinator.viewControllerWillReload(_:from:)(uint64_t a1, void *a2)
{
  v4 = sub_97420(_swiftEmptyArrayStorage);
  v16 = &type metadata for Int;
  *&v15 = sub_ABAA10();
  sub_9ACFC(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_9330C(v14, 0xD000000000000018, 0x8000000000BBAD50, isUniquelyReferenced_nonNull_native);
  if (a2)
  {
    v16 = type metadata accessor for JSStoreFlowSegue();
    *&v15 = a2;
    sub_9ACFC(&v15, v14);
    v6 = a2;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_9330C(v14, 0x6F6C4665726F7473, 0xEE00657567655377, v7);
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v8 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF4EC0;
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  *(v9 + 32) = v4;
  sub_60044();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = _swiftEmptyArrayStorage;
  *(v10 + 32) = 0xD000000000000018;
  *(v10 + 40) = 0x8000000000BBAD90;
  *(v10 + 48) = v2;
  *(v10 + 56) = v8;
  *(v10 + 64) = 0;
  v11 = v2;
  v12 = v8;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v10);
}

uint64_t JSStoreFlowPresentationCoordinator.viewControllerDidDismiss(_:from:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = objc_allocWithZone(NSUUID);
  v6 = v2;
  v7 = [v5 init];
  v8 = [v7 UUIDString];

  v9 = sub_AB92A0();
  v11 = v10;

  v12 = sub_ABAA10();
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v9;
  v15[4] = v11;
  v15[5] = v12;
  v45 = sub_A44680;
  v46 = v15;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_1546C;
  v44 = &block_descriptor_269;
  v16 = _Block_copy(&aBlock);

  v17 = [v13 scheduledTimerWithTimeInterval:0 repeats:v16 block:5.0];
  _Block_release(v16);
  aBlock = sub_A44600;
  v42 = v4;
  v43 = v9;
  v44 = v11;
  v45 = v17;
  v18 = OBJC_IVAR____TtC11MusicJSCore34JSStoreFlowPresentationCoordinator_pendingStoreFlowSegueDidDismissContexts;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  v35 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v37[0] = *&v6[v18];
  *&v6[v18] = 0x8000000000000000;
  sub_9A2FB0(&aBlock, v9, v11, isUniquelyReferenced_nonNull_native);

  *&v6[v18] = *&v37[0];
  swift_endAccess();
  v20 = sub_97420(_swiftEmptyArrayStorage);
  v39 = &type metadata for Int;
  *&v38 = v12;
  sub_9ACFC(&v38, v37);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_9330C(v37, 0xD000000000000018, 0x8000000000BBAD50, v21);
  v40 = v20;
  if (a2)
  {
    v39 = type metadata accessor for JSStoreFlowSegue();
    *&v38 = a2;
    sub_9ACFC(&v38, v37);
    v22 = a2;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_9330C(v37, 0x6F6C4665726F7473, 0xEE00657567655377, v23);
    v40 = v20;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    if (v38 == 2)
    {
      sub_27B830(0xD00000000000001FLL, 0x8000000000BBADE0, &v38);
      sub_9BC10(&v38);
      v20 = v40;
    }

    else
    {
      v39 = &type metadata for Bool;
      LOBYTE(v38) = v38 & 1;
      sub_9ACFC(&v38, v37);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      sub_9330C(v37, 0xD00000000000001FLL, 0x8000000000BBADE0, v24);
      v40 = v20;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v25 = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
    *&v38 = v25;
    sub_9ACFC(&v38, v37);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_9330C(v37, 0xD000000000000012, 0x8000000000B4FE40, v26);
    v40 = v20;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v39 = &type metadata for Bool;
    sub_9ACFC(&v38, v37);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_9330C(v37, 0xD00000000000001BLL, 0x8000000000BBAE00, v27);
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v28 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_AF8820;
  *(v29 + 56) = ObjectType;
  *(v29 + 32) = v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  *(v29 + 64) = v20;
  *(v29 + 120) = &type metadata for String;
  *(v29 + 88) = v30;
  *(v29 + 96) = v9;
  *(v29 + 104) = v11;
  sub_60044();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = _swiftEmptyArrayStorage;
  *(v31 + 32) = 0xD00000000000002ELL;
  *(v31 + 40) = 0x8000000000BBADB0;
  *(v31 + 48) = v6;
  *(v31 + 56) = v28;
  *(v31 + 64) = 0;
  v32 = v6;
  v33 = v28;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v31);
}

void *sub_A43CD8(void *result, void *a2)
{
  if (result)
  {
    memset(v5, 0, sizeof(v5));
    memset(v7, 0, sizeof(v7));
    v6[1] = 0;
    v6[2] = 0;
    v6[0] = a2;
    v3 = result;
    v4 = a2;
    sub_44F27C(v5, v7);
    if (qword_E23FC0 != -1)
    {
      swift_once();
    }

    JSSegueCoordinator.perform(segue:with:)(v3, v6);

    return sub_16170(v6);
  }

  return result;
}

void sub_A43D94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_A43E1C(a1, a3, a4, a5);
  }
}

uint64_t sub_A43E1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_AB4BC0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 invalidate];
  v14 = OBJC_IVAR____TtC11MusicJSCore34JSStoreFlowPresentationCoordinator_pendingStoreFlowSegueDidDismissContexts;
  swift_beginAccess();
  v15 = *(v5 + v14);
  if (!*(v15 + 16))
  {
    return swift_endAccess();
  }

  v16 = sub_2EBF88(a2, a3);
  if ((v17 & 1) == 0)
  {
    return swift_endAccess();
  }

  v27 = a4;
  v18 = *(v15 + 56) + 40 * v16;
  v29 = *v18;
  v20 = *(v18 + 24);
  v19 = *(v18 + 32);
  swift_endAccess();
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  swift_beginAccess();
  v28 = v19;

  v30 = v20;

  sub_9A0854(v31, a2, a3);
  swift_endAccess();
  if (qword_E23F98 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.scripting;
  sub_AB4BD0();
  v22 = sub_AB4BA0();
  v23 = sub_AB9F50();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = v27;
    *(v24 + 12) = 2048;
    *(v24 + 14) = 0x4014000000000000;
    _os_log_impl(&dword_0, v22, v23, "[JSStoreFlowSeguePresentationCoordinator] JS did not provide a segue for %ld within %f", v24, 0x16u);
  }

  (*(v11 + 8))(v13, v10);
  v29(0);
}

Swift::Void __swiftcall JSStoreFlowPresentationCoordinator.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  if (_._countAndFlagsBits == 0xD000000000000036 && 0x8000000000BBAE20 == _._object || (sub_ABB3C0()) && *(arguments._rawValue + 2) == 2)
  {
    sub_808B0(arguments._rawValue + 64, v15);
    type metadata accessor for JSSegue();
    if (swift_dynamicCast())
    {
      v4 = v13;
    }

    else
    {
      v4 = 0;
    }

    sub_808B0(arguments._rawValue + 32, v15);
    if (swift_dynamicCast())
    {
      v5 = OBJC_IVAR____TtC11MusicJSCore34JSStoreFlowPresentationCoordinator_pendingStoreFlowSegueDidDismissContexts;
      swift_beginAccess();
      v6 = *(v2 + v5);
      if (*(v6 + 16) && (v7 = sub_2EBF88(v13, v14), (v8 & 1) != 0))
      {
        v9 = *(v6 + 56) + 40 * v7;
        v10 = *v9;
        v11 = *(v9 + 32);
        swift_endAccess();
        memset(v15, 0, sizeof(v15));
        v16 = 0;
        swift_beginAccess();
        v12 = v11;

        sub_9A0854(v15, v13, v14);
        swift_endAccess();
        [v12 invalidate];
        v10(v4);
      }

      else
      {
        swift_endAccess();
      }
    }
  }
}

double sub_A4435C@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_9A1C28(a1, a2 & 1);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_A9B1F0();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 56 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = *(v11 + 48);
    sub_9A24D8(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 1;
    result = 0.0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
  }

  return result;
}

uint64_t sub_A44428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2EBF88(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_A9BB60();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    v19 = *(v12 - 8);
    sub_52B328(v11 + *(v19 + 72) * v8, a3);
    sub_9A2DC4(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_A44580()
{

  return swift_deallocObject();
}

uint64_t sub_A445C8()
{

  return swift_deallocObject();
}

uint64_t sub_A44608()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_A44640()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_269(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t JSInlinePopupButton.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore19JSInlinePopupButton_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSInlinePopupButton.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore19JSInlinePopupButton_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

uint64_t JSInlinePopupButton.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore19JSInlinePopupButton_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_A448B0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicJSCore19JSInlinePopupButton_title);
  swift_beginAccess();
  v6 = a2;
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = v6;
  if (v7 == a1 && v8 == v6)
  {
  }

  v10 = sub_ABB3C0();

  if ((v10 & 1) == 0)
  {
    v12 = v2 + OBJC_IVAR____TtC11MusicJSCore19JSInlinePopupButton_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v16 = *v5;
      v15 = v5[1];
      v17 = *(v13 + 8);

      v17(v2, v16, v15, ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t JSInlinePopupButton.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a1;
  v9[1] = a2;
  sub_F46A0(a3, v10);
  if (v10[3])
  {
    sub_F46A0(v10, v8);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        sub_A448B0(v6, v7);
        __swift_destroy_boxed_opaque_existential_0(v8);
        sub_12E1C(v10, &unk_DE8E40);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
  }

  return sub_12E1C(v9, &unk_E27200);
}

id JSInlinePopupButton.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore19JSInlinePopupButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore19JSInlinePopupButton_title];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  return JSObject.init(type:)(a1);
}

id JSInlinePopupButton.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore19JSInlinePopupButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore19JSInlinePopupButton_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;

  return JSObject.init(type:)(a1);
}

uint64_t sub_A44BCC()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore19JSInlinePopupButton_delegate);
}

id JSInlinePopupButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSInlinePopupButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A44CDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore19JSInlinePopupButton_title);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_A44D34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_A448B0(v1, v2);
}

void *JSInlineSocialUpsell.artwork.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_artwork;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t JSInlineSocialUpsell.didSelectCloseButton(snapshotImpressions:pageDetailsProvider:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v7 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF85F0;
  *(v8 + 56) = ObjectType;
  *(v8 + 32) = v3;
  if (a1)
  {
    objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
    v9 = a2;
    v10 = v3;

    v12 = sub_9ED890(v11, 0, a2);

    *(v8 + 88) = sub_13C80(0, &qword_DFA720);
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(v8 + 88) = sub_13C80(0, &qword_DFA720);
    v13 = v3;
  }

  v12 = [objc_allocWithZone(NSNull) init];
LABEL_8:
  *(v8 + 64) = v12;
  sub_13C80(0, &qword_DE8ED0);
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = _swiftEmptyArrayStorage;
  *(v14 + 32) = 0xD00000000000001BLL;
  *(v14 + 40) = 0x8000000000B7FB10;
  *(v14 + 48) = v3;
  *(v14 + 56) = v7;
  *(v14 + 64) = 0;
  v15 = v3;
  v16 = v7;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BE1A0, v14);
}

uint64_t JSInlineSocialUpsell.initiatePrimaryButtonSelection(with:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [objc_allocWithZone(NSUUID) init];
  v6 = [v5 UUIDString];

  v7 = sub_AB92A0();
  v9 = v8;

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_F46A0(a1, v22);
  v11 = swift_allocObject();
  v12 = v22[1];
  *(v11 + 24) = v22[0];
  *(v11 + 16) = v10;
  *(v11 + 40) = v12;
  v23[0] = sub_9A0848;
  v23[1] = v11;
  v23[2] = 0;
  v23[3] = 0xE000000000000000;
  v23[4] = 0;
  v13 = OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_pendingPrimaryButtonSelectionPerformedContexts;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *&v2[v13];
  *&v2[v13] = 0x8000000000000000;
  sub_9A2FB0(v23, v7, v9, isUniquelyReferenced_nonNull_native);

  *&v2[v13] = v21;
  swift_endAccess();
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v15 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF85F0;
  *(v16 + 32) = v2;
  *(v16 + 88) = &type metadata for String;
  *(v16 + 56) = ObjectType;
  *(v16 + 64) = v7;
  *(v16 + 72) = v9;
  sub_13C80(0, &qword_DE8ED0);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = _swiftEmptyArrayStorage;
  *(v17 + 32) = 0xD000000000000027;
  *(v17 + 40) = 0x8000000000BBAF30;
  *(v17 + 48) = v2;
  *(v17 + 56) = v15;
  *(v17 + 64) = 0;
  v18 = v2;
  v19 = v15;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v17);
}

Swift::Void __swiftcall JSInlineSocialUpsell.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  if (_._countAndFlagsBits == 0xD00000000000002FLL && 0x8000000000BBAF60 == _._object || (sub_ABB3C0()) && *(arguments._rawValue + 2) == 2)
  {
    sub_808B0(arguments._rawValue + 32, v15);
    if (swift_dynamicCast())
    {
      v4 = OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_pendingPrimaryButtonSelectionPerformedContexts;
      swift_beginAccess();
      v5 = *(v2 + v4);
      if (*(v5 + 16) && (v6 = sub_2EBF88(v13, v14), (v7 & 1) != 0))
      {
        v8 = *(v5 + 56) + 40 * v6;
        v12 = *v8;
        v9 = *(v8 + 32);
        swift_endAccess();
        sub_808B0(arguments._rawValue + 64, v15);
        type metadata accessor for JSSegue();

        v10 = v9;
        if (swift_dynamicCast())
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }

        memset(v15, 0, sizeof(v15));
        v16 = 0;
        swift_beginAccess();
        sub_9A0854(v15, v13, v14);
        swift_endAccess();
        v12(v11);
      }

      else
      {
        swift_endAccess();
      }
    }
  }
}

uint64_t JSInlineSocialUpsell.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[0] = a1;
  v15[1] = a2;
  sub_F46A0(a3, v16);
  if (v16[3])
  {
    sub_F46A0(v16, v14);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_title;
LABEL_7:
        v8 = (v3 + v7);
        swift_beginAccess();
        *v8 = v12;
        v8[1] = v13;

LABEL_23:
        __swift_destroy_boxed_opaque_existential_0(v14);
        sub_12E1C(v16, &unk_DE8E40);
      }

      if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_subtitle;
        goto LABEL_7;
      }

      if (a1 == 0xD000000000000012 && 0x8000000000B57F70 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_primaryButtonTitle;
        goto LABEL_7;
      }
    }

    type metadata accessor for JSArtwork();
    if (swift_dynamicCast())
    {
      if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v9 = OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_artwork;
        swift_beginAccess();
        v10 = *(v3 + v9);
        *(v3 + v9) = v12;

        goto LABEL_23;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v15, &unk_E27200);
}

id JSInlineSocialUpsell.init(type:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_title);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_subtitle);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_primaryButtonTitle);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_artwork) = 0;
  v6 = OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_pendingPrimaryButtonSelectionPerformedContexts;
  *(v1 + v6) = sub_99E3E0(&_swiftEmptyArrayStorage);
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v8 = 0;
  v8[1] = 0;

  return JSObject.init(type:)(a1);
}

uint64_t sub_A45844()
{
}

uint64_t sub_A45948()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_A45980()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

id JSNetwork.init()()
{
  v1 = [objc_opt_self() sharedMonitor];
  v2 = [v1 networkType];
  if (v2 == stru_3D8.segname)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (!v2)
  {
    v3 = 0;
  }

  v4 = OBJC_IVAR____TtC11MusicJSCore9JSNetwork_simplifiedNetworkType;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore9JSNetwork_simplifiedNetworkType) = v3;
  v5 = [v1 telephonyOperatorName];
  if (v5)
  {
    v6 = v5;
    v7 = sub_AB92A0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = (v0 + OBJC_IVAR____TtC11MusicJSCore9JSNetwork_operatorName);
  *v10 = v7;
  v10[1] = v9;
  v11 = [objc_opt_self() currentConnectionTypeHeader];
  v12 = sub_AB92A0();
  v14 = v13;

  v15 = (v0 + OBJC_IVAR____TtC11MusicJSCore9JSNetwork_connectionTypeHeader);
  *v15 = v12;
  v15[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  *(inited + 32) = 1701869940;
  v17 = 0xE400000000000000;
  *(inited + 40) = 0xE400000000000000;
  if (*(v0 + v4))
  {
    if (*(v0 + v4) == 1)
    {
      v17 = 0xE800000000000000;
      v18 = 0x72616C756C6C6563;
    }

    else
    {
      v18 = 1768319351;
    }
  }

  else
  {
    v18 = 1701736302;
  }

  *(inited + 48) = v18;
  *(inited + 56) = v17;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "operatorName");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v19 = v10[1];
  *(inited + 96) = *v10;
  *(inited + 104) = v19;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000014;
  *(inited + 168) = &type metadata for String;
  *(inited + 136) = 0x8000000000BBB000;
  *(inited + 144) = v12;
  *(inited + 152) = v14;
  v20 = inited;

  v21 = sub_97420(v20);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_AF4EC0;
  *(v22 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  *(v22 + 32) = v21;
  v31[0] = v22;
  v31[1] = 1;
  memset(&v31[2], 0, 24);
  v32 = 0;
  v23 = JSObject.init(type:)(v31);
  v24 = qword_E23F48;
  v25 = v23;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = static JSBridge.shared;
  sub_60044();
  v27 = swift_allocObject();
  *(v27 + 16) = 0x6B726F7774654ELL;
  *(v27 + 24) = 0xE700000000000000;
  *(v27 + 32) = v25;
  *(v27 + 40) = v26;
  *(v27 + 48) = 1;
  v28 = v25;
  v29 = v26;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3204, v27);

  [v1 registerObserver:v28];

  return v28;
}

uint64_t sub_A45DAC()
{
}

void sub_A45EFC(_BYTE *a1)
{
  v2 = 1701736302;
  ObjectType = swift_getObjectType();
  v31 = [objc_opt_self() sharedMonitor];
  v4 = [v31 networkType];
  if (v4 == stru_3D8.segname)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = OBJC_IVAR____TtC11MusicJSCore9JSNetwork_simplifiedNetworkType;
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE800000000000000;
  v9 = 0x72616C756C6C6563;
  if (a1[OBJC_IVAR____TtC11MusicJSCore9JSNetwork_simplifiedNetworkType] != 1)
  {
    v9 = 1768319351;
    v8 = 0xE400000000000000;
  }

  if (a1[OBJC_IVAR____TtC11MusicJSCore9JSNetwork_simplifiedNetworkType])
  {
    v10 = v9;
  }

  else
  {
    v10 = 1701736302;
  }

  if (a1[OBJC_IVAR____TtC11MusicJSCore9JSNetwork_simplifiedNetworkType])
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v12 = 0x72616C756C6C6563;
    }

    else
    {
      v12 = 1768319351;
    }

    if (v7 == 1)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xE400000000000000;
    }

    if (v10 != v12)
    {
LABEL_29:
      v14 = sub_ABB3C0();

      if (v14)
      {
      }

      else
      {
        a1[v6] = v7;
        v15 = [objc_opt_self() currentConnectionTypeHeader];
        v16 = sub_AB92A0();
        v18 = v17;

        v19 = &a1[OBJC_IVAR____TtC11MusicJSCore9JSNetwork_connectionTypeHeader];
        *v19 = v16;
        v19[1] = v18;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
        inited = swift_initStackObject();
        v21 = inited;
        *(inited + 16) = xmmword_AF85F0;
        *(inited + 32) = 1701869940;
        v22 = 0xE400000000000000;
        *(inited + 40) = 0xE400000000000000;
        if (a1[v6])
        {
          if (a1[v6] == 1)
          {
            v22 = 0xE800000000000000;
            v2 = 0x72616C756C6C6563;
          }

          else
          {
            v2 = 1768319351;
          }
        }

        *(inited + 48) = v2;
        *(inited + 56) = v22;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 0xD000000000000014;
        *(inited + 88) = 0x8000000000BBB000;
        v24 = *v19;
        v23 = v19[1];
        *(inited + 120) = &type metadata for String;
        *(inited + 96) = v24;
        *(inited + 104) = v23;

        v25 = sub_97420(v21);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
        swift_arrayDestroy();
        if (qword_E23F48 != -1)
        {
          swift_once();
        }

        v26 = static JSBridge.shared;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_AF85F0;
        *(v27 + 56) = ObjectType;
        *(v27 + 32) = a1;
        *(v27 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
        *(v27 + 64) = v25;
        sub_60044();
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        *(v28 + 24) = _swiftEmptyArrayStorage;
        *(v28 + 32) = 0x657461647075;
        *(v28 + 40) = 0xE600000000000000;
        *(v28 + 48) = a1;
        *(v28 + 56) = v26;
        *(v28 + 64) = 0;
        v29 = a1;
        v30 = v26;
        static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v28);
      }

      return;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v10 != 1701736302)
    {
      goto LABEL_29;
    }
  }

  if (v11 != v13)
  {
    goto LABEL_29;
  }
}