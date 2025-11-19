char *sub_100038A94(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000282B4(&qword_1000AEE18, qword_100077E38);
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

void *sub_100038BA0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000282B4(&qword_1000AEDE8, &qword_100077E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000282B4(&qword_1000AEDF0, &qword_100077E18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100038CD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000282B4(&qword_1000AEDF8, &unk_100077E20);
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

void *sub_100038DD8(void *a1, int64_t a2, char a3)
{
  result = sub_100038DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100038DF8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000282B4(&qword_1000AEDD8, &qword_100077E00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000282B4(&qword_1000AEDE0, &qword_100077E08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100038F2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000282B4(&qword_1000AEDD0, &qword_100077DF8);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_1000391EC()
{
  v1 = v0;
  sub_1000282B4(&qword_1000AEDD0, &qword_100077DF8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_100039364(uint64_t a1)
{
  v1 = &LAUISecureFaceIDGlyphCaptureStateIdle;
  if (a1 > 2)
  {
    v2 = &LAUISecureFaceIDGlyphCaptureStateEmpty;
    if (a1 != 7)
    {
      v2 = &LAUISecureFaceIDGlyphCaptureStateIdle;
    }

    if (a1 == 3)
    {
      v1 = &LAUISecureFaceIDGlyphCaptureStateCheckmark;
    }

    else
    {
      v1 = v2;
    }
  }

  else if (a1 == 1)
  {
    v1 = &LAUISecureFaceIDGlyphCaptureStateAcquiring;
  }

  else if (a1 == 2)
  {
    v1 = &LAUISecureFaceIDGlyphCaptureStateProcessing;
    if (!UIAccessibilityIsReduceTransparencyEnabled() && !UIAccessibilityIsReduceMotionEnabled())
    {
      v1 = &LAUISecureFaceIDGlyphCaptureStateVerifying;
    }
  }

  v3 = *v1;

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t sub_100039408(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000282B4(&qword_1000AEDD0, &qword_100077DF8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10002AC0C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

char *sub_10003951C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_observerOfRecording] = 0;
  *&v4[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_observerOfPlayback] = 0;
  v4[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_isRecording] = 0;
  *&v4[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_pendingGlyphStates] = &_swiftEmptyArrayStorage;
  v8 = &v4[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_confirmedGlyphState];
  *v8 = 0;
  v8[8] = 1;
  v9 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_currentStates;
  *&v4[v9] = sub_100039408(&_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_watchdog] = 0;
  *&v4[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_configuration] = a1;
  sub_1000282B4(&qword_1000AEE00, &qword_100077990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100077C80;
  type metadata accessor for SecureUIElementFaceIDRegular();
  v11 = a1;
  v12 = a2;
  *(v10 + 32) = sub_10005DFAC(v12);
  type metadata accessor for SecureUIElementFaceIdLightweight();
  *(v10 + 40) = sub_10005E3A4(v12);
  *&v4[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_supportedConfigurations] = v10;
  v13 = [a3 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = &v4[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription];
  *v17 = v14;
  v17[1] = v16;
  v35.receiver = v4;
  v35.super_class = type metadata accessor for SecureUIControllerDynamicIsland();
  v18 = objc_msgSendSuper2(&v35, "init");
  v19 = *&v18[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_supportedConfigurations];
  if (v19 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v19 = v31)
  {
    v34 = v19 & 0xC000000000000001;
    v32 = v19 + 32;
    v33 = v19 & 0xFFFFFFFFFFFFFF8;

    v21 = 0;
    while (v34)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v22 = v19;
      v23 = __OFADD__(v21++, 1);
      if (v23)
      {
        goto LABEL_23;
      }

LABEL_11:
      v24 = [v22 secureViews];
      sub_1000282B4(&qword_1000AEBE0, &qword_100077C98);
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v25 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
        v26 = v19;
        if (!v19)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_4;
        }
      }

      if (v26 < 1)
      {
        goto LABEL_24;
      }

      for (j = 0; j != v26; ++j)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v28 = *(v25 + 8 * j + 32);
        }

        v29 = v28;
        [v28 setObserver:v18];
      }

LABEL_4:
      swift_unknownObjectRelease();

      if (v21 == i)
      {

        return v18;
      }
    }

    if (v21 >= *(v33 + 16))
    {
      goto LABEL_25;
    }

    v22 = *(v32 + 8 * v21);
    v19 = swift_unknownObjectRetain();
    v23 = __OFADD__(v21++, 1);
    if (!v23)
    {
      goto LABEL_11;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v31 = v19;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return v18;
}

unint64_t sub_100039860(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_100039908(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100038CD4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_100039860(v6, a2, 0);
  *v2 = v4;
  return result;
}

void type metadata accessor for LAUIPearlGlyphState()
{
  if (!qword_1000AEDC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000AEDC0);
    }
  }
}

unint64_t sub_100039A3C()
{
  result = qword_1000AEE10;
  if (!qword_1000AEE10)
  {
    sub_10002CC44(&qword_1000AEE08, &qword_100077E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEE10);
  }

  return result;
}

id sub_100039B58(uint64_t a1)
{
  type metadata accessor for RatchetCoolOffContentViewModel(0);

  swift_unknownObjectRetain();
  v2 = sub_100040B08(a1);
  type metadata accessor for RatchetCoolOffContentViewController();
  v3 = sub_100039BD0();
  return sub_100033228(v2, v3);
}

unint64_t sub_100039BD0()
{
  result = qword_1000AEEF0;
  if (!qword_1000AEEF0)
  {
    type metadata accessor for RatchetCoolOffContentViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEEF0);
  }

  return result;
}

id sub_100039D1C()
{
  result = [objc_allocWithZone(type metadata accessor for TransitionViewModel()) init];
  qword_1000B1CD0 = result;
  return result;
}

uint64_t *sub_100039D50()
{
  if (qword_1000B06F0 != -1)
  {
    swift_once();
  }

  return &qword_1000B1CD0;
}

id sub_100039DA0()
{
  if (qword_1000B06F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B1CD0;

  return v0;
}

id sub_100039E58()
{
  v0 = [objc_opt_self() hashTableWithOptions:5];

  return v0;
}

id sub_100039EE8()
{
  v1 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_delegates;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100039F9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_delegates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10003A164()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10003A228()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10003A2A0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_1000282B4(&qword_1000AF018, &qword_100077EC8);
  return Published.init(initialValue:)();
}

uint64_t (*sub_10003A334())(char, uint64_t)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_10003FE44;
}

uint64_t sub_10003A3EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A424(unsigned __int8 *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

id sub_10003A460()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1000282B4(&qword_1000AF058, &unk_100078070);
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = *(v52 + 64);
  __chkstk_darwin(v1);
  v51 = &v41 - v3;
  v4 = sub_1000282B4(&qword_1000AF050, &qword_100078068);
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  __chkstk_darwin(v4);
  v48 = &v41 - v6;
  v7 = sub_1000282B4(&qword_1000AF048, &qword_100078060);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  __chkstk_darwin(v7);
  v45 = &v41 - v9;
  v10 = sub_1000282B4(&qword_1000AF040, &qword_100078058);
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  __chkstk_darwin(v10);
  v42 = &v41 - v12;
  v41 = sub_1000282B4(&qword_1000AF038, &qword_100078050);
  v13 = *(v41 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v41);
  v16 = &v41 - v15;
  v17 = sub_1000282B4(&qword_1000AF030, &qword_100078048);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  v22 = sub_1000282B4(&qword_1000AF028, &qword_100078040);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v41 - v25;
  v27 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_delegates;
  *&v0[v27] = [objc_opt_self() hashTableWithOptions:5];
  v28 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel__connection;
  v56 = 0;
  sub_1000282B4(&qword_1000AEF28, &unk_100077E80);
  Published.init(initialValue:)();
  (*(v23 + 32))(&v0[v28], v26, v22);
  v29 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel__remoteUIHost;
  v56 = 0;
  sub_1000282B4(&qword_1000AEF90, &unk_100077E90);
  Published.init(initialValue:)();
  (*(v18 + 32))(&v0[v29], v21, v17);
  v30 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel__mechanism;
  v56 = 0;
  sub_1000282B4(&qword_1000AEF98, &unk_100077EA0);
  Published.init(initialValue:)();
  (*(v13 + 32))(&v0[v30], v16, v41);
  v31 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel__backoffCounter;
  v56 = 0;
  sub_1000282B4(&qword_1000AF000, &qword_100077EB0);
  v32 = v42;
  Published.init(initialValue:)();
  (*(v43 + 32))(&v0[v31], v32, v44);
  v33 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel__internalInfo;
  v56 = 0;
  sub_1000282B4(&qword_1000AF008, &qword_100077EB8);
  v34 = v45;
  Published.init(initialValue:)();
  (*(v46 + 32))(&v0[v33], v34, v47);
  v35 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel__controllerToShow;
  v56 = 0;
  LOBYTE(v57) = 1;
  sub_1000282B4(&qword_1000AF010, &qword_100077EC0);
  v36 = v48;
  Published.init(initialValue:)();
  (*(v49 + 32))(&v0[v35], v36, v50);
  v37 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel__completionHandler;
  v56 = 0;
  v57 = 0;
  sub_1000282B4(&qword_1000AF018, &qword_100077EC8);
  v38 = v51;
  Published.init(initialValue:)();
  (*(v52 + 32))(&v0[v37], v38, v53);
  *&v0[OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_disposeBag] = &_swiftEmptySetSingleton;
  v39 = sub_10004FFDC();
  sub_10004FFF4(*v39);
  v55.receiver = v0;
  v55.super_class = ObjectType;
  return objc_msgSendSuper2(&v55, "init");
}

id sub_10003AAF4(unint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v38)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v39)
    {
    }

    else
    {
      v8._countAndFlagsBits = 0x6C616E7265746E69;
      v8._object = 0xEC0000006F666E49;
      String.append(_:)(v8);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v39)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v9._countAndFlagsBits = 0x696E616863656D20;
      v9._object = 0xEA00000000006D73;
      String.append(_:)(v9);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v39)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v10._countAndFlagsBits = 0x5565746F6D657220;
      v10._object = 0xED000074736F4849;
      String.append(_:)(v10);
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v39 = v14;
      *v13 = 136315138;
      v15 = sub_10002FDB8(0, 0xE000000000000000, &v39);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Missing needed informations: %s", v13, 0xCu);
      sub_10002A69C(v14);
    }

    else
    {
    }

    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a1 > 5)
      {

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v20, v21))
        {
          goto LABEL_48;
        }

        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = a1;
        v23 = "Unsupported SBUIRemoteAlertViewControllerPresentationMode %ld";
        goto LABEL_46;
      }

      if (((1 << a1) & 0x15) == 0)
      {
        if (((1 << a1) & 0xA) != 0)
        {
          type metadata accessor for BiometryCompanionViewController();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v32 = sub_100029F98(v38, v38, v38, v38, a3 & 1);
          v33 = OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType;
          swift_beginAccess();
          result = v32;
          *&v32[v33] = 1;
          return result;
        }

LABEL_53:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return 0;
      }

      v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v25 = sub_10000DC08(v24.super.isa, v38, v38, v38, a3 & 1);
    }

    else
    {
      if (a2 != 2 || a1 > 5)
      {
        goto LABEL_36;
      }

      if (((1 << a1) & 5) == 0)
      {
        if (((1 << a1) & 0xA) != 0)
        {
          type metadata accessor for ComplementaryPasscodeViewController();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          return sub_100029F98(v38, v38, v38, v38, a3 & 1);
        }

        v20 = Logger.logObject.getter();
        v36 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v20, v36))
        {
          goto LABEL_48;
        }

        v37 = swift_slowAlloc();
        *v37 = 0;
        v23 = "We present passcode view controller on primary display only";
        v28 = v36;
        v29 = v20;
        v30 = v37;
        v31 = 2;
        goto LABEL_47;
      }

      v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v25 = sub_100019AD4(v24.super.isa, v38, v38, v38, a3 & 1);
    }

    v19 = v25;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_56;
  }

  if (a2 == 3)
  {
    if (a1 <= 5)
    {
      if (((1 << a1) & 0x15) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v6 = v38;
        v7 = PinViewController;
        goto LABEL_35;
      }

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_48;
      }

      v26 = swift_slowAlloc();
      v22 = v26;
      *v26 = 134349056;
      v27 = 3;
LABEL_45:
      *(v26 + 4) = v27;
      v23 = "We do not support showing content on external display for this type %{public}ld";
LABEL_46:
      v28 = v21;
      v29 = v20;
      v30 = v22;
      v31 = 12;
LABEL_47:
      _os_log_impl(&_mh_execute_header, v29, v28, v23, v30, v31);

      goto LABEL_48;
    }

LABEL_36:

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v21))
    {
LABEL_48:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return 0;
    }

    v22 = swift_slowAlloc();
    *v22 = 134349056;
    *(v22 + 4) = a1;
    v23 = "Unsupported SBUIRemoteAlertViewControllerPresentationMode %{public}ld";
    goto LABEL_46;
  }

  if (a2 == 4)
  {
    if (a1 <= 5)
    {
      if (((1 << a1) & 0x15) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v6 = v38;
        v7 = PasswordViewController;
        goto LABEL_35;
      }

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_48;
      }

      v26 = swift_slowAlloc();
      v22 = v26;
      *v26 = 134349056;
      v27 = 4;
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  if (a2 != 5 || a1 > 5)
  {
    goto LABEL_36;
  }

  if (((1 << a1) & 0x15) == 0)
  {
    if (((1 << a1) & 0xA) != 0)
    {
      type metadata accessor for BiometryCompanionViewController();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v34 = sub_100029F98(v38, v38, v38, v38, a3 & 1);
      v35 = OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType;
      swift_beginAccess();
      result = v34;
      *&v34[v35] = 2;
      return result;
    }

    goto LABEL_53;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v38;
  v7 = FaceIdViewController;
LABEL_35:
  v17 = objc_allocWithZone(v7);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = [v17 initWithInternalInfo:isa mechanism:v38 backoffCounter:v6 remoteUIHost:v38 allowsLandscape:a3 & 1];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_56:
  swift_unknownObjectRelease();
  return v19;
}

uint64_t sub_10003B6D0()
{
  v1 = sub_1000282B4(&qword_1000AF140, &qword_100078170);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v117 = v76 - v3;
  v4 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v118 = *(v4 - 8);
  v119 = v4;
  v5 = *(v118 + 64);
  __chkstk_darwin(v4);
  v116 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1000282B4(&qword_1000AF148, &qword_100078178);
  v7 = *(*(v115 - 1) + 64);
  __chkstk_darwin(v115);
  v113 = (v76 - v8);
  v9 = sub_1000282B4(&qword_1000AF150, &qword_100078180);
  v10 = *(v9 - 8);
  v110 = v9;
  v111 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v104 = v76 - v12;
  v114 = sub_1000282B4(&qword_1000AF158, &qword_100078188);
  v13 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v106 = v76 - v14;
  v99 = sub_1000282B4(&qword_1000AF160, &qword_100078190);
  v100 = *(v99 - 8);
  v15 = *(v100 + 64);
  __chkstk_darwin(v99);
  v92 = v76 - v16;
  v112 = sub_1000282B4(&qword_1000AF168, &qword_100078198);
  v17 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v96 = v76 - v18;
  v88 = sub_1000282B4(&qword_1000AF170, &qword_1000781A0);
  v19 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v86 = v76 - v20;
  v83 = sub_1000282B4(&qword_1000AF178, &qword_1000781A8);
  v84 = *(v83 - 8);
  v21 = *(v84 + 64);
  __chkstk_darwin(v83);
  v23 = v76 - v22;
  v87 = sub_1000282B4(&qword_1000AF180, &qword_1000781B0);
  v24 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v81 = v76 - v25;
  v79 = sub_1000282B4(&qword_1000AF188, &qword_1000781B8);
  v26 = *(v79 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v79);
  v29 = v76 - v28;
  v85 = sub_1000282B4(&qword_1000AF190, &qword_1000781C0);
  v30 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v78 = v76 - v31;
  v32 = sub_1000282B4(&qword_1000AF198, &qword_1000781C8);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = v76 - v35;
  v82 = sub_1000282B4(&qword_1000AF1A0, &qword_1000781D0);
  v37 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v76[1] = v76 - v38;
  v91 = sub_1000282B4(&qword_1000AF1A8, &qword_1000781D8);
  v39 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v80 = v76 - v40;
  v93 = sub_1000282B4(&qword_1000AF1B0, &qword_1000781E0);
  v95 = *(v93 - 8);
  v41 = *(v95 + 64);
  __chkstk_darwin(v93);
  v89 = v76 - v42;
  v94 = sub_1000282B4(&qword_1000AF1B8, &qword_1000781E8);
  v97 = *(v94 - 8);
  v43 = *(v97 + 64);
  __chkstk_darwin(v94);
  v90 = v76 - v44;
  v101 = sub_1000282B4(&qword_1000AF1C0, &qword_1000781F0);
  v103 = *(v101 - 8);
  v45 = *(v103 + 64);
  __chkstk_darwin(v101);
  v120 = v76 - v46;
  v105 = sub_1000282B4(&qword_1000AF1C8, &qword_1000781F8);
  v107 = *(v105 - 8);
  v47 = *(v107 + 64);
  __chkstk_darwin(v105);
  v98 = v76 - v48;
  v49 = sub_1000282B4(&qword_1000AF1D0, &qword_100078200);
  v50 = *(v49 - 8);
  v108 = v49;
  v109 = v50;
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  v102 = v76 - v52;
  swift_beginAccess();
  sub_1000282B4(&qword_1000AF028, &qword_100078040);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10002B4A4(0, &qword_1000AF1D8, NSXPCConnection_ptr);
  sub_100034E8C(&qword_1000AF1E0, &qword_1000AF198, &qword_1000781C8);
  Publisher.compactMap<A>(_:)();
  (*(v33 + 8))(v36, v32);
  swift_beginAccess();
  sub_1000282B4(&qword_1000AF030, &qword_100078048);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_1000282B4(&qword_1000AF020, &qword_100078038);
  sub_100034E8C(&qword_1000AF1E8, &qword_1000AF188, &qword_1000781B8);
  v53 = v79;
  Publisher.compactMap<A>(_:)();
  (*(v26 + 8))(v29, v53);
  swift_beginAccess();
  sub_1000282B4(&qword_1000AF038, &qword_100078050);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_1000282B4(&qword_1000AF1F0, &unk_100078208);
  sub_100034E8C(&qword_1000AF1F8, &qword_1000AF178, &qword_1000781A8);
  v54 = v83;
  Publisher.compactMap<A>(_:)();
  (*(v84 + 8))(v23, v54);
  swift_beginAccess();
  sub_1000282B4(&qword_1000AF040, &qword_100078058);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100034E8C(&qword_1000AF200, &qword_1000AF1A0, &qword_1000781D0);
  sub_100034E8C(&qword_1000AF208, &qword_1000AF190, &qword_1000781C0);
  sub_100034E8C(&qword_1000AF210, &qword_1000AF180, &qword_1000781B0);
  sub_100034E8C(&qword_1000AF218, &qword_1000AF170, &qword_1000781A0);
  Publishers.CombineLatest4.init(_:_:_:_:)();
  swift_beginAccess();
  sub_1000282B4(&qword_1000AF048, &qword_100078060);
  v55 = v92;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_1000282B4(&qword_1000AF220, &unk_1000777C0);
  sub_100034E8C(&qword_1000AF228, &qword_1000AF160, &qword_100078190);
  v56 = v99;
  Publisher.compactMap<A>(_:)();
  (*(v100 + 8))(v55, v56);
  swift_beginAccess();
  sub_1000282B4(&qword_1000AF050, &qword_100078068);
  v57 = v104;
  Published.projectedValue.getter();
  swift_endAccess();
  type metadata accessor for LACRemoteUIController();
  sub_100034E8C(&qword_1000AF230, &qword_1000AF150, &qword_100078180);
  v58 = v110;
  Publisher.compactMap<A>(_:)();
  (*(v111 + 8))(v57, v58);
  v77 = v0;
  swift_beginAccess();
  sub_1000282B4(&qword_1000AF058, &unk_100078070);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100034E8C(&qword_1000AF238, &qword_1000AF1A8, &qword_1000781D8);
  sub_100034E8C(&qword_1000AF240, &qword_1000AF168, &qword_100078198);
  sub_100034E8C(&qword_1000AF248, &qword_1000AF158, &qword_100078188);
  sub_100034E8C(&qword_1000AF250, &qword_1000AF148, &qword_100078178);
  v59 = v89;
  Publishers.CombineLatest4.init(_:_:_:_:)();
  sub_1000282B4(&qword_1000AF258, &qword_100078218);
  sub_100034E8C(&qword_1000AF260, &qword_1000AF1B0, &qword_1000781E0);
  v60 = v90;
  v61 = v93;
  Publisher.map<A>(_:)();
  (*(v95 + 8))(v59, v61);
  sub_1000282B4(&qword_1000AF268, &unk_100078220);
  v62 = v94;
  Publishers.Map.map<A>(_:)();
  (*(v97 + 8))(v60, v62);
  v63 = v116;
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v115 = objc_opt_self();
  v64 = [v115 mainRunLoop];
  v121 = v64;
  v65 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v66 = *(v65 - 8);
  v113 = *(v66 + 56);
  v114 = v66 + 56;
  v67 = v117;
  v113(v117, 1, 1, v65);
  sub_10002B4A4(0, &qword_1000AF270, NSRunLoop_ptr);
  sub_100034E8C(&qword_1000AF278, &qword_1000AF1C0, &qword_1000781F0);
  sub_10003F9C4();
  v68 = v98;
  v69 = v101;
  v70 = v120;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_10002B444(v67, &qword_1000AF140, &qword_100078170);

  (*(v118 + 8))(v63, v119);
  (*(v103 + 8))(v70, v69);
  v71 = [v115 mainRunLoop];
  v121 = v71;
  v113(v67, 1, 1, v65);
  sub_100034E8C(&qword_1000AF288, &qword_1000AF1C8, &qword_1000781F8);
  v72 = v102;
  v73 = v105;
  Publisher.receive<A>(on:options:)();
  sub_10002B444(v67, &qword_1000AF140, &qword_100078170);

  (*(v107 + 8))(v68, v73);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100034E8C(&unk_1000AF290, &qword_1000AF1D0, &qword_100078200);
  v74 = v108;
  Publisher<>.sink(receiveValue:)();

  (*(v109 + 8))(v72, v74);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

id sub_10003CAF0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_10003CB14@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_10003CB28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v7;
  a2[5] = v6;
  a2[6] = v8;
  a2[7] = v9;
  swift_unknownObjectRetain();

  v10 = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return sub_1000299DC(v8);
}

uint64_t sub_10003CBB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[2];
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  *a2 = a1[5];
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v4;
  a2[4] = v5;
  swift_unknownObjectRetain();

  return sub_1000299DC(v4);
}

void sub_10003CC14(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10003CC8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_10003CDA0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = aBlock;
  if (aBlock)
  {
LABEL_2:

    return;
  }

  sub_10003B6D0();
  v6 = objc_allocWithZone(NSXPCConnection);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithMachServiceName:v7 options:0];

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v8;
  v9 = v0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = aBlock;
  if (aBlock)
  {
    v11 = [objc_opt_self() interfaceForXPCProtocol:&OBJC_PROTOCOL___LACRemoteUIHost];
    [v10 setRemoteObjectInterface:v11];

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = sub_10003EA40;
    v42 = v12;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_10002B620;
    v40 = &unk_100097870;
    v13 = _Block_copy(&aBlock);

    [v10 setInterruptionHandler:v13];
    _Block_release(v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = sub_10003EA64;
    v42 = v14;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_10002B620;
    v40 = &unk_100097898;
    v15 = _Block_copy(&aBlock);

    [v10 setInvalidationHandler:v15];
    _Block_release(v15);
    [v10 resume];
    v16 = *(v2 + 16);
    v31 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_log;
    v33 = v16;
    v16(&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &v9[OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_log], v1);
    v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v32 = *(v2 + 80);
    v29 = v17 + v3;
    v18 = swift_allocObject();
    v19 = *(v2 + 32);
    v34 = v17;
    v30 = v19;
    v19(v18 + v17, &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
    v41 = sub_10003EC2C;
    v42 = v18;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_10003D458;
    v40 = &unk_1000978E8;
    v20 = _Block_copy(&aBlock);

    v35 = v10;
    v21 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v20];
    _Block_release(v20);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000282B4(&qword_1000AF020, &qword_100078038);
    if (swift_dynamicCast())
    {
      v22 = v36;
    }

    else
    {
      v22 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v22;
    v23 = v9;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v24 = aBlock;
    if (aBlock)
    {
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33(v4, &v9[v31], v1);
      v26 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      v30(v27 + v34, v4, v1);
      *(v27 + v26) = v25;
      v41 = sub_10003EE10;
      v42 = v27;
      aBlock = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_10003D544;
      v40 = &unk_100097938;
      v28 = _Block_copy(&aBlock);

      [v24 connectRemoteUI:v23 requestID:0 reply:v28];

      swift_unknownObjectRelease();
      _Block_release(v28);
      return;
    }

    v5 = v35;
    goto LABEL_2;
  }
}

void sub_10003D458(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10003D4C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_10003D544(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a4;
  v8(a2, a3, a4);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_10003D624()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  [v5 suspend];

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  static Published.subscript.setter();
  v2 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_disposeBag;
  swift_beginAccess();
  v3 = *&v1[v2];
  *&v1[v2] = &_swiftEmptySetSingleton;
}

uint64_t sub_10003DA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v14, 0, sizeof(v14));
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_delegates;
  swift_beginAccess();
  v9 = *(v3 + v8);
  sub_1000299DC(a2);
  v10 = [v9 allObjects];
  sub_1000282B4(&unk_1000AF060, &unk_100078080);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13[2] = a1;
  v13[3] = v14;
  v13[4] = v7;
  sub_10003CC8C(sub_10003F1A0, v13, v11);

  return sub_10002B444(v14, &qword_1000AF430, &unk_1000777F0);
}

uint64_t sub_10003DB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_delegates;
  swift_beginAccess();
  v11 = *(v4 + v10);
  sub_1000299DC(a3);
  v12 = [v11 allObjects];
  sub_1000282B4(&unk_1000AF060, &unk_100078080);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v9;
  sub_10003CC8C(sub_10003FE0C, v15, v13);
}

uint64_t sub_10003DD08(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  sub_10003F830(a3, aBlock);
  v7 = v17;
  if (v17)
  {
    v8 = sub_10002A658(aBlock, v17);
    v9 = *(v7 - 1);
    v10 = *(v9 + 64);
    __chkstk_darwin(v8);
    v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    sub_10002A69C(aBlock);
  }

  else
  {
    v13 = 0;
  }

  v18 = sub_10003F8A0;
  v19 = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B620;
  v17 = &unk_100097B10;
  v14 = _Block_copy(aBlock);

  [v6 viewModelDidReceiveMechanismEvent:a2 value:v13 reply:v14];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_10003E180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = static os_log_type_t.debug.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 134349314;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2082;
    v13 = Dictionary.description.getter();
    v15 = sub_10002FDB8(v13, v14, &v21);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v10, v9, "transition to controller: %{public}ld, internalInfo: %{public}s", v11, 0x16u);
    sub_10002A69C(v12);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v21 = a1;
  LOBYTE(v22) = 0;
  v16 = v5;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  if (a3)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v18 = sub_10003FE24;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v21 = v18;
  v22 = v17;
  v19 = v16;
  sub_1000299DC(a3);
  return static Published.subscript.setter();
}

void sub_10003E490(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_10003E5F0(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  a7(v8);
  v10 = v9;
  return static Published.subscript.setter();
}

uint64_t sub_10003E688@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10003E704(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_10003E778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_10003E800(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return static Published.subscript.setter();
}

double sub_10003E880@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_10003E900(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_10003F82C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  if (v3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
  }

  sub_1000299DC(v3);
  v9 = v7;
  return static Published.subscript.setter();
}

uint64_t sub_10003EA08()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003EA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10003EA70(const char *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      *(v7 + 4) = v4;
      *v8 = v3;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 0xCu);
      sub_10002B444(v8, &qword_1000AE6E0, &qword_100077820);
    }
  }
}

uint64_t sub_10003EBA4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10003EC2C()
{
  v0 = *(type metadata accessor for Logger() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Could not obtaint remote object with error %{public}@", v3, 0xCu);
    sub_10002B444(v4, &qword_1000AE6E0, &qword_100077820);
  }
}

uint64_t sub_10003ED74()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10003EE10(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Logger() - 8);
  v7 = *(v3 + ((*(v6 + 64) + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  if (a3)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      v12 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not connect to remote object with error %{public}@", v10, 0xCu);
      sub_10002B444(v11, &qword_1000AE6E0, &qword_100077820);
    }

    else
    {
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_unknownObjectRetain();
    v15 = v14;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = a2;
    v16 = v15;
    swift_unknownObjectRetain();
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (a2)
    {
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10003F930;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10003D4C0;
      aBlock[3] = &unk_100097B38;
      v18 = _Block_copy(aBlock);

      [a2 internalInfoWithReply:v18];

      swift_unknownObjectRelease();
      _Block_release(v18);
    }

    else
    {
    }
  }
}

uint64_t sub_10003F160()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F1D0(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_delegates;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = [v8 allObjects];
  sub_1000282B4(&unk_1000AF060, &unk_100078080);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    while ((v10 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      aBlock[4] = sub_10003FDFC;
      aBlock[5] = v6;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002B620;
      aBlock[3] = &unk_100097AE8;
      v15 = _Block_copy(aBlock);

      [v13 viewModelDidReceiveDismissWasInvalidated:a1 & 1 completionHandler:v15];
      _Block_release(v15);
      swift_unknownObjectRelease();
      ++v12;
      if (v14 == i)
      {
        goto LABEL_14;
      }
    }

    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v13 = *(v10 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    v14 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t type metadata accessor for TransitionViewModel()
{
  result = qword_1000B07B0;
  if (!qword_1000B07B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003F454()
{
  sub_10003F748(319, &qword_1000AF098, &qword_1000AEF28, &unk_100077E80);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_10003F748(319, &qword_1000AF0A0, &qword_1000AEF90, &unk_100077E90);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_10003F748(319, &qword_1000AF0A8, &qword_1000AEF98, &unk_100077EA0);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_10003F748(319, &qword_1000AF0B0, &qword_1000AF000, &qword_100077EB0);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_10003F748(319, &qword_1000AF0B8, &qword_1000AF008, &qword_100077EB8);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_10003F748(319, &qword_1000AF0C0, &qword_1000AF010, &qword_100077EC0);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_10003F748(319, &qword_1000AF0C8, &qword_1000AF018, &qword_100077EC8);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                v14 = type metadata accessor for Logger();
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10003F748(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10002CC44(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for LACRemoteUIController()
{
  if (!qword_1000AF130)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000AF130);
    }
  }
}

uint64_t sub_10003F7EC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F830(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000282B4(&qword_1000AF430, &unk_1000777F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F8A4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v1 + 24);

    v2(v5);
    sub_10002AA04(v2);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  return sub_10002AA04(v6);
}

uint64_t sub_10003F930()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

unint64_t sub_10003F9C4()
{
  result = qword_1000AF280;
  if (!qword_1000AF280)
  {
    sub_10002B4A4(255, &qword_1000AF270, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF280);
  }

  return result;
}

uint64_t sub_10003FA2C(uint64_t *a1)
{
  v22 = *a1;
  v23 = a1[1];
  v24 = a1[2];
  v25 = a1[3];
  v1 = a1[4];
  if (v25)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v25;
    *(v2 + 24) = v1;
    v20 = sub_10003FE44;
    v21 = v2;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC10CoreAuthUI19TransitionViewModel_delegates;
    v5 = Strong;
    swift_beginAccess();
    v6 = *&v5[v4];
    sub_1000299DC(v25);

    swift_unknownObjectRetain();
    v7 = v6;

    v8 = [v7 allObjects];
    sub_1000282B4(&unk_1000AF060, &unk_100078080);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_20;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      while (1)
      {
        v19 = v27;
        v11 = 4;
        while (1)
        {
          v13 = v11 - 4;
          if ((v9 & 0xC000000000000001) == 0)
          {
            break;
          }

          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = v11 - 3;
          if (__OFADD__(v13, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_13:
          isa = Dictionary._bridgeToObjectiveC()().super.isa;
          [v14 viewModelDidReceiveAuthenticationDataWithInternalInfo:isa mechanism:{v24, v19}];

          v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          if (v25)
          {
            v27[2] = v20;
            v27[3] = v21;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            v27[0] = sub_10003CC14;
            v27[1] = &unk_100097B60;
            v12 = _Block_copy(aBlock);
          }

          else
          {
            v12 = 0;
          }

          [v14 showWithController:v22 internalInfo:v17.super.isa completionHandler:v12];
          _Block_release(v12);

          swift_unknownObjectRelease();
          ++v11;
          if (v15 == v10)
          {
            goto LABEL_21;
          }
        }

        if (v13 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_20:
        v10 = _CocoaArrayWrapper.endIndex.getter();
        if (!v10)
        {
          goto LABEL_21;
        }
      }

      v14 = *(v9 + 8 * v11);
      swift_unknownObjectRetain();
      v15 = v11 - 3;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

LABEL_21:

    swift_unknownObjectRelease();
    sub_10002AA04(v20);
  }

  else
  {
LABEL_18:
    sub_1000299DC(v25);
    return sub_10002AA04(v20);
  }
}

uint64_t sub_10003FD7C(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a1;
  v6 = a2;
  return v3(&v7, &v6);
}

uint64_t sub_10003FE94()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10003FEF4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10003FF8C;
}

void sub_10003FF8C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10004000C()
{
  v1 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel____lazy_storage___state;
  if (*(v0 + OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel____lazy_storage___state))
  {
    v5 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel____lazy_storage___state);
  }

  else
  {
    v6 = v0;
    sub_10004010C(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    swift_storeEnumTagMultiPayload();
    v7 = sub_1000282B4(&qword_1000AF308, &unk_100078230);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v5 = CurrentValueSubject.init(_:)();
    v10 = *(v0 + v4);
    *(v6 + v4) = v5;
  }

  return v5;
}

uint64_t sub_10004010C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v52 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  v18 = sub_1000409E4();
  v60[0] = LACPolicyOptionCustomRatchetCancelLocalizedTitle;
  AnyHashable.init<A>(_:)();
  if (*(v18 + 16) && (v19 = sub_10002AB74(v59), (v20 & 1) != 0))
  {
    sub_10002B308(*(v18 + 56) + 32 * v19, v60);
    sub_10002ABB8(v59);

    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = v57;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v58;
    }

    else
    {
      v23 = 0;
    }

    v53 = v22;
    v54 = v23;
  }

  else
  {

    sub_10002ABB8(v59);
    v53 = 0;
    v54 = 0;
  }

  v24 = OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_expirationDate;
  swift_beginAccess();
  sub_100034F7C(v2 + v24, v9, &qword_1000B00F0, &qword_100078560);
  v25 = *(v11 + 48);
  if (v25(v9, 1, v10) == 1)
  {
    sub_10002B444(v9, &qword_1000B00F0, &qword_100078560);
    v26 = OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_gracePeriodExpirationDate;
    swift_beginAccess();
    sub_100034F7C(v2 + v26, v7, &qword_1000B00F0, &qword_100078560);
    v27 = v25(v7, 1, v10);
    sub_10002B444(v7, &qword_1000B00F0, &qword_100078560);
    if (v27 == 1)
    {
      v28 = sub_1000409E4();
      v60[0] = LACPolicyOptionBeginRatchetLocalizedTitle;
      AnyHashable.init<A>(_:)();
      if (*(v28 + 16) && (v29 = sub_10002AB74(v59), (v30 & 1) != 0))
      {
        sub_10002B308(*(v28 + 56) + 32 * v29, v60);
        sub_10002ABB8(v59);

        swift_dynamicCast();
      }

      else
      {

        sub_10002ABB8(v59);
      }

      v36 = sub_1000409E4();
      v60[0] = LACPolicyOptionBeginRatchetLocalizedText;
      AnyHashable.init<A>(_:)();
      if (*(v36 + 16) && (v37 = sub_10002AB74(v59), (v38 & 1) != 0))
      {
        sub_10002B308(*(v36 + 56) + 32 * v37, v60);
        sub_10002ABB8(v59);

        if (swift_dynamicCast())
        {
          v39 = v56;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {

        sub_10002ABB8(v59);
        v39 = 0;
      }

      v42 = sub_1000409E4();
      v60[0] = LACPolicyOptionBeginRatchetStrictModeLocalizedText;
      AnyHashable.init<A>(_:)();
      if (*(v42 + 16) && (v43 = sub_10002AB74(v59), (v44 & 1) != 0))
      {
        sub_10002B308(*(v42 + 56) + 32 * v43, v60);
        sub_10002ABB8(v59);

        if (swift_dynamicCast())
        {
          v45 = v56;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {

        sub_10002ABB8(v59);
        v45 = 0;
      }

      v46 = OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_isStrictModeEnabled;
      if ((*(v2 + OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_isStrictModeEnabled) & 1) == 0)
      {

        v45 = v39;
      }

      if (v45)
      {
      }

      v47 = sub_1000409E4();
      v60[0] = LACPolicyOptionBeginRatchetShowsLocationWarning;
      AnyHashable.init<A>(_:)();
      if (*(v47 + 16) && (v48 = sub_10002AB74(v59), (v49 & 1) != 0))
      {
        sub_10002B308(*(v47 + 56) + 32 * v48, v60);
        sub_10002ABB8(v59);

        swift_dynamicCast();
      }

      else
      {

        sub_10002ABB8(v59);
      }

      v50 = *(v2 + v46);
      v51 = *(v2 + OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_familiarLocationsUnavailable);
      static LACUIAuthCountdownConfiguration.begin(title:message:strictModeEnabled:showsLocationWarning:familiarLocationsUnavailable:customCancelTitle:)();
    }

    else
    {
      static LACUIAuthCountdownConfiguration.gracePeriod(customCancelTitle:)();
    }
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    static Date.now.getter();
    v31 = static Date.> infix(_:_:)();
    v32 = *(v11 + 8);
    v32(v15, v10);
    if (v31)
    {
      v33 = sub_1000409E4();
      v60[0] = LACPolicyOptionCountdownLocalizedText;
      AnyHashable.init<A>(_:)();
      if (*(v33 + 16) && (v34 = sub_10002AB74(v59), (v35 & 1) != 0))
      {
        sub_10002B308(*(v33 + 56) + 32 * v34, v60);
        sub_10002ABB8(v59);

        swift_dynamicCast();
      }

      else
      {

        sub_10002ABB8(v59);
      }

      v40 = *(v2 + OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_isStrictModeEnabled);
      static LACUIAuthCountdownConfiguration.countdown(message:delayExpiration:strictModeEnabled:customCancelTitle:)();
    }

    else
    {
      static LACUIAuthCountdownConfiguration.ready(message:customCancelTitle:)();
    }

    return (v32)(v17, v10);
  }
}

uint64_t sub_100040900()
{
  sub_10004000C();
  sub_1000282B4(&qword_1000AF308, &unk_100078230);
  sub_100042460();
  v0 = Publisher.eraseToAnyPublisher()();

  return v0;
}

uint64_t sub_100040978@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_1000409E4()
{
  AnyHashable.init<A>(_:)();
  v1 = OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_internalInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16) && (v3 = sub_10002AB74(v6), (v4 & 1) != 0))
  {
    sub_10002B308(*(v2 + 56) + 32 * v3, &v7);
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  swift_endAccess();
  sub_10002ABB8(v6);
  if (*(&v8 + 1))
  {
    sub_1000282B4(&qword_1000AF220, &unk_1000777C0);
    if (swift_dynamicCast())
    {
      return 0x736E6F6974704FLL;
    }
  }

  else
  {
    sub_10002B444(&v7, &qword_1000AF430, &unk_1000777F0);
  }

  return sub_10002AEB4(&_swiftEmptyArrayStorage);
}

id sub_100040B4C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v32 = &v31 - v11;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel____lazy_storage___state] = 0;
  v12 = OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_expirationDate;
  v31 = v5;
  v13 = *(v5 + 56);
  v13(&v2[OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_expirationDate], 1, 1, v4);
  v14 = OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_gracePeriodExpirationDate;
  v13(&v2[OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_gracePeriodExpirationDate], 1, 1, v4);
  *&v2[OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_internalInfo] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v35 = 0x6F6974704F4F5444;
  v36 = 0xEA0000000000736ELL;

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v15 = sub_10002AB74(v37), (v16 & 1) == 0))
  {

    sub_10002ABB8(v37);
LABEL_11:
    v38 = 0u;
    v39 = 0u;
    sub_10002B444(&v38, &qword_1000AF430, &unk_1000777F0);
    v38 = 0u;
    v39 = 0u;
    sub_10002B444(&v38, &qword_1000AF430, &unk_1000777F0);
    v38 = 0u;
    v39 = 0u;
    sub_10002B444(&v38, &qword_1000AF430, &unk_1000777F0);
    v2[OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_isStrictModeEnabled] = 0;
LABEL_12:
    v38 = 0u;
    v39 = 0u;
LABEL_13:
    sub_10002B444(&v38, &qword_1000AF430, &unk_1000777F0);
    goto LABEL_14;
  }

  sub_10002B308(*(a1 + 56) + 32 * v15, &v38);
  sub_10002ABB8(v37);

  sub_1000282B4(&qword_1000AF220, &unk_1000777C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = v35;
  if (!v35)
  {
    goto LABEL_11;
  }

  v35 = 0x4466664F6C6F6F43;
  v36 = 0xEF6E6F6974617275;

  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v18 = sub_10002AB74(v37), (v19 & 1) == 0))
  {

    sub_10002ABB8(v37);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_17;
  }

  sub_10002B308(*(v17 + 56) + 32 * v18, &v38);
  sub_10002ABB8(v37);

  if (!*(&v39 + 1))
  {
LABEL_17:
    sub_10002B444(&v38, &qword_1000AF430, &unk_1000777F0);
    goto LABEL_18;
  }

  if (swift_dynamicCast())
  {
    static Date.now.getter();
    Date.addingTimeInterval(_:)();
    (*(v31 + 8))(v8, v4);
    v13(v32, 0, 1, v4);
    swift_beginAccess();
    sub_1000424C4(v32, &v2[v12]);
    swift_endAccess();
  }

LABEL_18:
  v35 = 0xD000000000000013;
  v36 = 0x800000010008A990;

  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v23 = sub_10002AB74(v37), (v24 & 1) == 0))
  {

    sub_10002ABB8(v37);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_24;
  }

  sub_10002B308(*(v17 + 56) + 32 * v23, &v38);
  sub_10002ABB8(v37);

  if (!*(&v39 + 1))
  {
LABEL_24:
    sub_10002B444(&v38, &qword_1000AF430, &unk_1000777F0);
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    static Date.now.getter();
    v25 = v32;
    Date.addingTimeInterval(_:)();
    (*(v31 + 8))(v8, v4);
    v13(v25, 0, 1, v4);
    swift_beginAccess();
    sub_1000424C4(v25, &v2[v14]);
    swift_endAccess();
  }

LABEL_25:
  v35 = 0xD000000000000011;
  v36 = 0x800000010008A970;

  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v26 = sub_10002AB74(v37), (v27 & 1) == 0))
  {

    sub_10002ABB8(v37);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_31;
  }

  sub_10002B308(*(v17 + 56) + 32 * v26, &v38);
  sub_10002ABB8(v37);

  if (!*(&v39 + 1))
  {
LABEL_31:
    sub_10002B444(&v38, &qword_1000AF430, &unk_1000777F0);
    v2[OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_isStrictModeEnabled] = 0;
    goto LABEL_32;
  }

  if (swift_dynamicCast())
  {
    v28 = v37[0];
  }

  else
  {
    v28 = 0;
  }

  v2[OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_isStrictModeEnabled] = v28;
LABEL_32:
  v35 = 0xD00000000000001CLL;
  v36 = 0x800000010008A950;
  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v29 = sub_10002AB74(v37), (v30 & 1) == 0))
  {

    sub_10002ABB8(v37);
    goto LABEL_12;
  }

  sub_10002B308(*(v17 + 56) + 32 * v29, &v38);
  sub_10002ABB8(v37);

  if (!*(&v39 + 1))
  {
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v20 = v37[0];
    goto LABEL_15;
  }

LABEL_14:
  v20 = 0;
LABEL_15:
  v2[OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_familiarLocationsUnavailable] = v20;
  v34.receiver = v2;
  v34.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v34, "init");
  sub_100041328();

  swift_unknownObjectRelease();
  return v21;
}

uint64_t sub_100041328()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = &v26 - v6;
  v31 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v7 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_gracePeriodExpirationDate;
  swift_beginAccess();
  sub_100034F7C(v0 + v17, v16, &qword_1000B00F0, &qword_100078560);
  v29 = v2;
  v30 = v1;
  v18 = *(v2 + 48);
  LODWORD(v2) = v18(v16, 1, v1);
  sub_10002B444(v16, &qword_1000B00F0, &qword_100078560);
  if (v2 != 1)
  {
    sub_10004000C();
    sub_10004010C(v9);
    goto LABEL_5;
  }

  v19 = OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_expirationDate;
  swift_beginAccess();
  sub_100034F7C(v0 + v19, v14, &qword_1000B00F0, &qword_100078560);
  v20 = v30;
  if (v18(v14, 1, v30) == 1)
  {
    sub_10002B444(v14, &qword_1000B00F0, &qword_100078560);
    sub_10004000C();
    sub_10004010C(v9);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    CurrentValueSubject.value.setter();
  }

  v23 = v28;
  v22 = v29;
  (*(v29 + 32))(v28, v14, v20);
  v24 = v27;
  static Date.now.getter();
  static Date.> infix(_:_:)();
  v25 = *(v22 + 8);
  v25(v24, v20);
  sub_10004000C();
  sub_10004010C(v9);
  swift_storeEnumTagMultiPayload();
  CurrentValueSubject.value.setter();

  return (v25)(v23, v20);
}

uint64_t sub_1000416C0()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v3 + 8))(v6, v2);
  (*(v3 + 56))(v10, 0, 1, v2);
  v11 = OBJC_IVAR____TtC10CoreAuthUI30RatchetCoolOffContentViewModel_expirationDate;
  swift_beginAccess();
  sub_1000424C4(v10, v1 + v11);
  swift_endAccess();
  return sub_100041328();
}

uint64_t sub_100041948(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000AF328, &qword_100078240);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v37 - v4;
  v6 = type metadata accessor for LACUIAuthCountdownConfiguration.ActionButtonIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = &v37 - v11;
  v12 = type metadata accessor for LACUIAuthButtonConfiguration();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LACUIAuthActionCountdown();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for LACUIAuthActionCountdown.buttonTapped(_:))
  {
    (*(v18 + 96))(v21, v17);
    (*(v13 + 32))(v16, v21, v12);
    LACUIAuthButtonConfiguration.id.getter();
    LACUIAuthCountdownConfiguration.ActionButtonIdentifier.init(rawValue:)();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      (*(v13 + 8))(v16, v12);
      return sub_10002B444(v5, &qword_1000AF328, &qword_100078240);
    }

    v24 = v38;
    (*(v7 + 32))(v38, v5, v6);
    v25 = v37;
    (*(v7 + 16))(v37, v24, v6);
    v26 = (*(v7 + 88))(v25, v6);
    if (v26 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.beginSecurityDelay(_:))
    {
      v27 = v39;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong ratchetCoolOffContentDidTapOnBeginDelay:v27];
LABEL_20:
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v29 = v39;
      if (v26 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.learnMore(_:))
      {
        swift_beginAccess();
        v30 = swift_unknownObjectWeakLoadStrong();
        if (v30)
        {
          [v30 ratchetCoolOffContentDidTapOnLearnMore:v29];
          goto LABEL_20;
        }
      }

      else if (v26 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.done(_:))
      {
        swift_beginAccess();
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          [v31 ratchetCoolOffContentDidTapOnDone:v29];
          goto LABEL_20;
        }
      }

      else
      {
        if (v26 != enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.continue(_:) && v26 != enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.continueInGracePeriod(_:))
        {
          if (v26 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.cancel(_:))
          {
            swift_beginAccess();
            v33 = swift_unknownObjectWeakLoadStrong();
            if (!v33)
            {
              goto LABEL_21;
            }

            [v33 ratchetCoolOffContentDidTapOnCancel:v29];
          }

          else if (v26 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.customCancel(_:))
          {
            swift_beginAccess();
            v34 = swift_unknownObjectWeakLoadStrong();
            if (!v34)
            {
              goto LABEL_21;
            }

            [v34 ratchetCoolOffContentDidTapOnCustomCancel:v29];
          }

          else
          {
            if (v26 != enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.tapToRadar(_:))
            {
              v36 = *(v7 + 8);
              v36(v24, v6);
              (*(v13 + 8))(v16, v12);
              return (v36)(v25, v6);
            }

            swift_beginAccess();
            v35 = swift_unknownObjectWeakLoadStrong();
            if (!v35)
            {
              goto LABEL_21;
            }

            [v35 ratchetCoolOffContentDidTapOnFileRadar:v29];
          }

          goto LABEL_20;
        }

        swift_beginAccess();
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          [v32 ratchetCoolOffContentDidTapOnContinue:v29];
          goto LABEL_20;
        }
      }
    }

LABEL_21:
    (*(v7 + 8))(v24, v6);
    return (*(v13 + 8))(v16, v12);
  }

  if (v22 == enum case for LACUIAuthActionCountdown.delayElapsed(_:))
  {
    return sub_100041328();
  }

  else
  {
    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_100041FA0(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  v5 = __chkstk_darwin(v3);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v54 = &v53 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v53 - v10;
  __chkstk_darwin(v9);
  v13 = &v53 - v12;
  v14 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v53 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v53 - v23;
  __chkstk_darwin(v22);
  v26 = &v53 - v25;
  v27 = sub_1000282B4(&qword_1000AF408, &unk_100078390);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = &v53 - v30;
  v32 = *(v29 + 56);
  sub_100034FE4(a1, &v53 - v30);
  sub_100034FE4(v56, &v31[v32]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_100034FE4(v31, v21);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v18 = v21;
        goto LABEL_14;
      }

      v34 = v57;
      v35 = &v31[v32];
      v36 = v54;
      v37 = v58;
      (*(v57 + 32))(v54, v35, v58);
      v38 = static LACUIAuthCountdownConfiguration.== infix(_:_:)();
      v39 = *(v34 + 8);
      v39(v36, v37);
      v39(v21, v37);
    }

    else
    {
      sub_100034FE4(v31, v18);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_14;
      }

      v44 = v57;
      v43 = v58;
      v45 = &v31[v32];
      v46 = v55;
      (*(v57 + 32))(v55, v45, v58);
      v38 = static LACUIAuthCountdownConfiguration.== infix(_:_:)();
      v47 = *(v44 + 8);
      v47(v46, v43);
      v47(v18, v43);
    }

LABEL_17:
    sub_100034F20(v31);
    return v38 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_100034FE4(v31, v24);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v18 = v24;
      goto LABEL_14;
    }

    v41 = v57;
    v40 = v58;
    (*(v57 + 32))(v11, &v31[v32], v58);
    v38 = static LACUIAuthCountdownConfiguration.== infix(_:_:)();
    v42 = *(v41 + 8);
    v42(v11, v40);
    v42(v24, v40);
    goto LABEL_17;
  }

  sub_100034FE4(v31, v26);
  if (!swift_getEnumCaseMultiPayload())
  {
    v48 = v57;
    v49 = &v31[v32];
    v50 = v58;
    (*(v57 + 32))(v13, v49, v58);
    v38 = static LACUIAuthCountdownConfiguration.== infix(_:_:)();
    v51 = *(v48 + 8);
    v51(v13, v50);
    v51(v26, v50);
    goto LABEL_17;
  }

  v18 = v26;
LABEL_14:
  (*(v57 + 8))(v18, v58);
  sub_10002B444(v31, &qword_1000AF408, &unk_100078390);
  v38 = 0;
  return v38 & 1;
}

unint64_t sub_100042460()
{
  result = qword_1000AF310;
  if (!qword_1000AF310)
  {
    sub_10002CC44(&qword_1000AF308, &unk_100078230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF310);
  }

  return result;
}

uint64_t sub_1000424C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100042534(uint64_t a1)
{
  result = sub_10004255C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004255C()
{
  result = qword_1000AF330;
  if (!qword_1000AF330)
  {
    type metadata accessor for RatchetCoolOffContentViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF330);
  }

  return result;
}

uint64_t sub_100042644(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004267C()
{
  sub_1000426E0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1000426E0()
{
  if (!qword_1000AF3A8)
  {
    v0 = type metadata accessor for LACUIAuthCountdownConfiguration();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AF3A8);
    }
  }
}

void sub_100042730()
{
  sub_1000427F0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000427F0()
{
  if (!qword_1000AF400)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AF400);
    }
  }
}

uint64_t sub_10004284C()
{
  sub_1000282B4(&qword_1000AF410, &qword_1000783B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000783A0;
  *(v0 + 32) = *sub_10004FFDC();
  *(v0 + 40) = *sub_10004FFE8();
  *(v0 + 48) = *sub_1000503A0();
  sub_100042948();
  sub_1000282B4(&qword_1000AF420, qword_1000783B8);
  sub_100045374(&qword_1000AF428, &qword_1000AF420, qword_1000783B8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return sub_10004FFF4();
}

unint64_t sub_100042948()
{
  result = qword_1000AF418;
  if (!qword_1000AF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF418);
  }

  return result;
}

uint64_t sub_10004299C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR___AuthorizationRemoteViewController_log, v1);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  (*(v2 + 32))(v6 + v5, v4, v1);
  v15 = sub_100042C60;
  v16 = v6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v14 = sub_100045850;
  *(&v14 + 1) = &unk_100097BF8;
  v7 = _Block_copy(&aBlock);

  v8 = [v0 _remoteViewControllerProxyWithErrorHandler:v7];
  _Block_release(v7);
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  aBlock = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    sub_1000282B4(&qword_1000AF498, &unk_1000783D0);
    if (swift_dynamicCast())
    {
      return v10[1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002B444(&aBlock, &qword_1000AF430, &unk_1000777F0);
    return 0;
  }
}

uint64_t sub_100042BD8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100042C60(uint64_t a1)
{
  v2 = *(type metadata accessor for Logger() - 8);
  if (a1)
  {
    v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138543362;
      v7 = _convertErrorToNSError(_:)();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Could not obtain remote object with error %{public}@", v5, 0xCu);
      sub_10002B444(v6, &qword_1000AE6E0, &qword_100077820);
    }

    else
    {
    }
  }
}

uint64_t sub_100042DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100042E38(void *a1)
{
  v1 = [objc_opt_self() interfaceForXPCProtocol:*a1];

  return v1;
}

id sub_100042E94(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceForXPCProtocol:*a3];

  return v3;
}

id sub_100042EE8(void *a1, void *a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 featureFlagLaunchAngelEnabled];

  if (v5)
  {
    result = [a1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = [result window];

    if (v8 && (v9 = [v8 windowScene], v8, v9))
    {
      v10 = [v9 _FBSScene];

      v11 = [v10 hostHandle];
      v27 = 0u;
      v28 = 0u;
      if (v11)
      {
        v12 = [v11 auditToken];

        [v12 realToken];
        v27 = v29;
        v28 = v30;
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }
  }

  else
  {
    [a1 _hostAuditToken];
    v27 = v29;
    v28 = v30;
  }

  v13 = objc_allocWithZone(LACAuditToken);
  v14 = a2;
  v29 = v27;
  v30 = v28;
  v15 = [v13 initWithRawValue:&v29];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = sub_100045A14();
  v18 = sub_100045A4C();
  v19 = sub_100045A54();
  sub_100045A60(v14, v15, 0, v17, 0, 1, v18, 0, v19, sub_1000453C8, v16);
  v21 = v20;

  *&v29 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Authorization Sheet will appear", v24, 2u);
  }

  swift_unknownObjectRetain();
  sub_1000458A4();
  v25 = v29;
  canShowWhile = LACUIDTOViewController._canShowWhileLocked()();
  sub_100045CA0(a1, canShowWhile, v25);

  return v25;
}

uint64_t sub_1000431F4(uint64_t a1, void **a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 featureFlagLaunchAngelEnabled];

    if (v8)
    {
      if (a2 && (aBlock = a2, swift_errorRetain(), sub_1000282B4(&qword_1000AF5C8, &unk_100078430), sub_10002B4A4(0, &qword_1000AF5D0, NSError_ptr), swift_dynamicCast()))
      {
        v9 = v14;
      }

      else
      {
        v9 = 0;
      }

      a2 = [objc_allocWithZone(LACUIAuthorizationAction) initWithIdentifier:3 value:v9];
      swift_unknownObjectRelease();
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1000456F8;
      *(v13 + 24) = v5;
      v19 = sub_1000457D0;
      v20 = v13;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_10002F4C0;
      v18 = &unk_100097EC8;
      v12 = _Block_copy(&aBlock);

      [v4 sendAction:a2 completion:v12];
    }

    else
    {
      v10 = (*((swift_isaMask & *v4) + 0x98))();
      if (!v10)
      {
LABEL_13:
      }

      v11 = v10;
      if (a2)
      {
        a2 = _convertErrorToNSError(_:)();
      }

      v19 = sub_1000456F8;
      v20 = v5;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_10002B620;
      v18 = &unk_100097E78;
      v12 = _Block_copy(&aBlock);

      [v11 authenticatorServiceDidFinishWithError:a2 reply:v12];
      swift_unknownObjectRelease();
    }

    _Block_release(v12);

    goto LABEL_13;
  }

  return result;
}

id sub_100043530(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager] = 0;
  *&v3[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion] = 0;
  sub_1000282B4(&qword_1000AF410, &qword_1000783B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000783A0;
  *(v7 + 32) = *sub_10004FFDC();
  *(v7 + 40) = *sub_10004FFE8();
  *(v7 + 48) = *sub_1000503A0();
  v12 = v7;
  sub_100042948();
  sub_1000282B4(&qword_1000AF420, qword_1000783B8);
  sub_100045374(&qword_1000AF428, &qword_1000AF420, qword_1000783B8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10004FFF4();
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for AuthorizationRemoteViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

uint64_t type metadata accessor for AuthorizationRemoteViewController()
{
  result = qword_1000B0988;
  if (!qword_1000B0988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10004376C(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager] = 0;
  *&v1[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion] = 0;
  sub_1000282B4(&qword_1000AF410, &qword_1000783B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000783A0;
  *(v4 + 32) = *sub_10004FFDC();
  *(v4 + 40) = *sub_10004FFE8();
  *(v4 + 48) = *sub_1000503A0();
  v8 = v4;
  sub_100042948();
  sub_1000282B4(&qword_1000AF420, qword_1000783B8);
  sub_100045374(&qword_1000AF428, &qword_1000AF420, qword_1000783B8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10004FFF4();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AuthorizationRemoteViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1000438F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthorizationRemoteViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000439BC(void *a1, void (*a2)(id))
{
  v3 = v2;
  v6 = [a1 validateConfiguration];
  if (v6)
  {
    v7 = v6;
    v14 = v6;
    a2(v7);
  }

  else
  {
    v8 = sub_100032644();
    swift_beginAccess();
    v9 = *v8;
    v10 = sub_100032CCC();

    v11 = *&v3[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion];
    *&v3[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion] = v10;

    v12 = sub_100042EE8(v3, a1);
    v13 = *&v3[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager];
    *&v3[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager] = v12;

    a2(0);
  }
}

void sub_100043AF4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100043B58(uint64_t (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = LACErrorCodeSystemCancel;
    v6 = v3;
    v7 = [v4 errorWithCode:v5];
    v8 = sub_100045B10();
    sub_100045B2C(v7, v8, v9);
  }

  return a1(0);
}

void sub_100043C94(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v42 = [objc_allocWithZone(LACUIAuthorizationAction) initWithAction:a1];
  v7 = [v42 identifier];
  if (v7 == 2)
  {
    v48 = a2;
    v49 = a3;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v47 = sub_100045850;
    *(&v47 + 1) = &unk_100097C20;
    v8 = _Block_copy(&aBlock);

    [v4 stopWithReply:v8];

    _Block_release(v8);
    return;
  }

  if (v7 == 1)
  {
    sub_10002B4A4(0, &qword_1000AF510, LACUIAuthenticatorServiceConfiguration_ptr);
    if ([v42 valueDecodedForClass:swift_getObjCClassFromMetadata()])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    aBlock = v44;
    v47 = v45;
    if (*(&v45 + 1))
    {
      if (swift_dynamicCast())
      {
        v48 = a2;
        v49 = a3;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v47 = sub_100045850;
        *(&v47 + 1) = &unk_100097C48;
        v24 = _Block_copy(&aBlock);

        [v3 startWithConfiguration:v43 reply:v24];

        _Block_release(v24);
        return;
      }
    }

    else
    {
      sub_10002B444(&aBlock, &qword_1000AF430, &unk_1000777F0);
    }

    v25 = objc_opt_self();
    v26 = LACErrorCodeInternal;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v27 = [v3 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v32._object = 0x800000010008AB40;
    v32._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v32);
    v33 = [v42 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37._countAndFlagsBits = v34;
    v37._object = v36;
    String.append(_:)(v37);

    v38._countAndFlagsBits = 0xD00000000000001BLL;
    v38._object = 0x800000010008AB60;
    String.append(_:)(v38);
    v39 = String._bridgeToObjectiveC()();

    v40 = [v25 errorWithCode:v26 debugDescription:v39];

    v41 = v40;
    a2(v40);
  }

  else
  {
    v9 = objc_opt_self();
    v10 = LACErrorCodeInternal;
    _StringGuts.grow(_:)(26);
    v11 = [v3 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *&aBlock = v12;
    *(&aBlock + 1) = v14;
    v15._object = 0x800000010008AB40;
    v15._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v15);
    v16 = [v42 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    v21 = String._bridgeToObjectiveC()();

    v22 = [v9 errorWithCode:v10 debugDescription:v21];

    v23 = v22;
    a2(v22);
  }
}

void sub_1000441DC(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_100044270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
  if (v8)
  {
    v11 = v8;
    sub_100045B50(a2, a3, v11);
  }

  sub_1000442F0(a4, a5);
}

void sub_1000442F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;
  v7 = objc_opt_self();

  v8 = [v7 sharedInstance];
  LODWORD(v7) = [v8 featureFlagLaunchAngelEnabled];

  if (v7)
  {
    v9 = [objc_allocWithZone(LACUIAuthorizationAction) initWithIdentifier:4 value:0];
    v18 = sub_100045258;
    v19 = v6;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_10002F4C0;
    v17 = &unk_100097D88;
    v10 = _Block_copy(&v14);

    [v2 sendAction:v9 completion:v10];

    _Block_release(v10);
  }

  else
  {
    v11 = (*((swift_isaMask & *v2) + 0x98))();
    if (v11)
    {
      v12 = v11;
      v18 = sub_100045258;
      v19 = v6;
      v14 = _NSConcreteStackBlock;
      v15 = 1107296256;
      v16 = sub_10002F4C0;
      v17 = &unk_100097D60;
      v13 = _Block_copy(&v14);

      [v12 authenticatorServiceDidObtainAuthenticationWithReply:v13];
      swift_unknownObjectRelease();

      _Block_release(v13);
    }

    else
    {
    }
  }
}

uint64_t sub_10004459C()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10004472C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = sub_1000452AC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B620;
  aBlock[3] = &unk_100097DD8;
  v18 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002CB88();
  sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
  sub_100045374(&qword_1000AE810, &unk_1000AF5B0, &unk_100079C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v21 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v20);
}

void sub_100044A38(void *a1, char *a2, uint64_t a3)
{
  v6 = [a1 validateConfiguration];
  if (v6)
  {
    v7 = v6;
    v14 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, v14);
  }

  else
  {
    v8 = sub_100032644();
    swift_beginAccess();
    v9 = *v8;
    v10 = sub_100032CCC();

    v11 = *&a2[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion];
    *&a2[OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion] = v10;

    v12 = sub_100042EE8(a2, a1);
    v13 = *&a2[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager];
    *&a2[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager] = v12;

    (*(a3 + 16))(a3, 0);
  }
}

uint64_t sub_100044B60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = LACErrorCodeSystemCancel;
    v6 = v3;
    v7 = [v4 errorWithCode:v5];
    v8 = sub_100045B10();
    sub_100045B2C(v7, v8, v9);
  }

  v10 = *(a2 + 16);

  return v10(a2, 0);
}

void sub_100044C2C(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = objc_allocWithZone(LACUIAuthorizationAction);
  _Block_copy(a3);
  v8 = [v7 initWithAction:a1];
  v9 = [v8 identifier];
  if (v9 == 2)
  {
    v51 = sub_1000451D8;
    v52 = v6;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v50 = sub_100045850;
    *(&v50 + 1) = &unk_100097CC0;
    v10 = _Block_copy(&aBlock);

    [a2 stopWithReply:v10];

    _Block_release(v10);

    return;
  }

  if (v9 == 1)
  {
    sub_10002B4A4(0, &qword_1000AF510, LACUIAuthenticatorServiceConfiguration_ptr);
    if ([v8 valueDecodedForClass:swift_getObjCClassFromMetadata()])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    aBlock = v47;
    v50 = v48;
    if (*(&v48 + 1))
    {
      if (swift_dynamicCast())
      {
        v51 = sub_1000451D8;
        v52 = v6;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v50 = sub_100045850;
        *(&v50 + 1) = &unk_100097CE8;
        v26 = _Block_copy(&aBlock);

        [a2 startWithConfiguration:v46 reply:v26];

        _Block_release(v26);

        return;
      }
    }

    else
    {
      sub_10002B444(&aBlock, &qword_1000AF430, &unk_1000777F0);
    }

    v27 = objc_opt_self();
    v28 = LACErrorCodeInternal;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v29 = [a2 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    v34._object = 0x800000010008AB40;
    v34._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v34);
    v35 = [v8 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 0xD00000000000001BLL;
    v40._object = 0x800000010008AB60;
    String.append(_:)(v40);
    v41 = String._bridgeToObjectiveC()();

    v42 = [v27 errorWithCode:v28 debugDescription:v41];

    v43 = v42;
    v44 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v44);
  }

  else
  {
    v11 = objc_opt_self();
    v12 = LACErrorCodeInternal;
    _StringGuts.grow(_:)(26);
    v13 = [a2 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *&aBlock = v14;
    *(&aBlock + 1) = v16;
    v17._object = 0x800000010008AB40;
    v17._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v17);
    v18 = [v8 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23 = String._bridgeToObjectiveC()();

    v24 = [v11 errorWithCode:v12 debugDescription:v23];

    v25 = v24;
    v45 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v45);
  }
}

uint64_t sub_1000451E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045218()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045264()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1000452AC()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  if (v3)
  {
    v2(0);
  }

  else
  {
    v5 = v1[5];
    v2(1);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
      v8 = Strong;
      v9 = v7;

      if (v7)
      {
        v10 = sub_100045B10();
        sub_100045B2C(0, v10, v11);
      }
    }
  }
}

uint64_t sub_100045374(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002CC44(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000453C8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Authorization Sheet did finish", v6, 2u);
    }

    v7 = *&v3[OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager];
    if (v7)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = a1;
      v10 = v7;

      swift_errorRetain();
      sub_100045B2C(a1, sub_100045544, v9);
    }
  }
}

void sub_100045544()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v2;
    sub_10002B4A4(0, &qword_1000AF5C0, UIDevice_ptr);
    swift_errorRetain();

    if (sub_100069D50())
    {
      aBlock[4] = sub_1000456F0;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002B620;
      aBlock[3] = &unk_100097E50;
      v6 = _Block_copy(aBlock);

      [v4 dismissViewControllerAnimated:1 completion:v6];

      _Block_release(v6);
    }

    else
    {
      sub_1000431F4(v1, v2);
    }
  }
}

uint64_t sub_1000456B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000456F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR___AuthorizationRemoteViewController_terminateAssertion);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      sub_1000324C8();
    }
  }

  v4 = sub_100032644();
  swift_beginAccess();
  v5 = *v4;
  sub_10003291C();
}

uint64_t sub_100045798()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000457D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000458A4()
{
  v1 = *v0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10004590C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_delegate;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1000459AC;
}

void sub_1000459AC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = *v4;
  }

  swift_unknownObjectRelease();

  free(v3);
}

id sub_100045A14()
{
  v0 = objc_allocWithZone(LACLocalBackoffCounter);

  return [v0 init];
}

__n128 sub_100045A60(void *a1, void *a2, void *a3, void *a4, uint64_t a5, char a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for AuthorizationViewModel();
  sub_100062E20(a1, a2, a3, a4, a5, a6 & 1, a7, a8, a9, a10, a11);
  return result;
}

void sub_100045B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context);
  static String.Encoding.utf8.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  isa = 0;
  if (v12 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000311E8(v10, v12);
  }

  [v9 setCredential:isa type:-9];
}

void sub_100045CA0(void *a1, char a2, void *a3)
{
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v9 = sub_10005B528(v8);
  v11 = v10;
  type metadata accessor for AuthorizationViewModel();
  sub_100046238();
  v53 = static ObservableObject.environmentStore.getter();
  v54 = a3;
  v12 = objc_allocWithZone(sub_1000282B4(&qword_1000AF5E0, &unk_100078450));
  a3;
  v13 = UIHostingController.init(rootView:)();
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  v16 = [objc_opt_self() clearColor];
  [v15 setBackgroundColor:v16];

  sub_10002B4A4(0, &qword_1000AF5C0, UIDevice_ptr);
  if (sub_100069D50() && !sub_1000624A4())
  {
    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();
    [v13 setModalPresentationStyle:2];

    [a1 presentViewController:v13 animated:a2 & 1 completion:0];
    goto LABEL_17;
  }

  v17 = [a1 view];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  v19 = [v13 view];
  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = v19;
  [v18 addSubview:v19];

  [a1 addChildViewController:v13];
  [v13 didMoveToParentViewController:a1];
  v21 = [v13 view];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v21;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_1000282B4(&qword_1000AEE00, &qword_100077990);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100078440;
  v24 = [v13 view];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [a1 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 leadingAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v23 + 32) = v30;
  v31 = [v13 view];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [a1 view];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = v34;
  v36 = [v34 trailingAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v23 + 40) = v37;
  v38 = [v13 view];
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [a1 view];
  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v40 constraintEqualToAnchor:v43];
  *(v23 + 48) = v44;
  v45 = [v13 view];

  if (!v45)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v46 = [v45 bottomAnchor];

  v47 = [a1 view];
  if (v47)
  {
    v48 = v47;
    v49 = objc_opt_self();
    v50 = [v48 bottomAnchor];

    v51 = [v46 constraintEqualToAnchor:v50];
    *(v23 + 56) = v51;
    sub_10002B4A4(0, &qword_1000AE9A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v49 activateConstraints:isa];

LABEL_17:
    return;
  }

LABEL_29:
  __break(1u);
}

unint64_t sub_100046238()
{
  result = qword_1000AF5D8;
  if (!qword_1000AF5D8)
  {
    type metadata accessor for AuthorizationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF5D8);
  }

  return result;
}

uint64_t sub_1000462A0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_1000462DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10004633C(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1000463D0;
}

void sub_1000463D0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_100046454(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = 0;
  swift_unknownObjectWeakInit();
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

void *sub_1000464AC(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  swift_unknownObjectWeakInit();
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_1000464F0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    if (*(a2 + 16) && (v4 = v2, v5 = *(type metadata accessor for URL() - 8), v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v7 = URL.host.getter(), v8))
    {
      if (v7 == *(v4 + 16) && v8 == *(v4 + 24))
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        LOBYTE(v3) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_1000465AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v63 = type metadata accessor for URLQueryItem();
  v9 = *(v63 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v63);
  v62 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000282B4(&qword_1000AF5E8, &unk_1000784B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 && *(a4 + 16))
  {
    v57 = a2;
    (*(v20 + 16))(v24, a4 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);
    v56 = v24;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    sub_100046B2C(v18, v16);
    v25 = type metadata accessor for URLComponents();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v16, 1, v25) == 1)
    {
      sub_100046B9C(v16);
      v27 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v28 = URLComponents.queryItems.getter();
      v29 = v25;
      v30 = v28;
      (*(v26 + 8))(v16, v29);
      v27 = &_swiftEmptyArrayStorage;
      if (v30)
      {
        v55 = v20;
        v31 = *(v30 + 16);
        if (v31)
        {
          v51 = v19;
          v52 = v18;
          v53 = a1;
          v54 = v5;
          v64 = &_swiftEmptyArrayStorage;
          sub_100038DD8(0, v31, 0);
          v27 = v64;
          v33 = *(v9 + 16);
          v32 = v9 + 16;
          v34 = *(v32 + 64);
          v50 = v30;
          v35 = v30 + ((v34 + 32) & ~v34);
          v59 = *(v32 + 56);
          v60 = v33;
          v61 = v32;
          v58 = (v32 - 8);
          do
          {
            v36 = v62;
            v37 = v63;
            v60(v62, v35, v63);
            v38 = URLQueryItem.name.getter();
            v40 = v39;
            v41 = URLQueryItem.value.getter();
            if (v42)
            {
              v43 = v41;
            }

            else
            {
              v43 = 0;
            }

            if (v42)
            {
              v44 = v42;
            }

            else
            {
              v44 = 0xE000000000000000;
            }

            (*v58)(v36, v37);
            v64 = v27;
            v46 = v27[2];
            v45 = v27[3];
            if (v46 >= v45 >> 1)
            {
              sub_100038DD8((v45 > 1), v46 + 1, 1);
              v27 = v64;
            }

            v27[2] = v46 + 1;
            v47 = &v27[4 * v46];
            v47[4] = v38;
            v47[5] = v40;
            v47[6] = v43;
            v47[7] = v44;
            v35 += v59;
            --v31;
          }

          while (v31);

          v5 = v54;
          v19 = v51;
          v18 = v52;
        }

        else
        {
        }

        v20 = v55;
      }
    }

    if (v27[2])
    {
      sub_1000282B4(&qword_1000AEDD0, &qword_100077DF8);
      v48 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v48 = &_swiftEmptyDictionarySingleton;
    }

    v64 = v48;
    sub_100047178(v27, 1, &v64);

    sub_100046C04(v64);

    sub_100046B9C(v18);
    v22 = (*(v20 + 8))(v56, v19);
  }

  if ((*(*v5 + 96))(v22))
  {
    swift_getObjectType();
    sub_100046AB4();
    dispatch thunk of LACUISceneControllerDelegate.sceneControllerDidConnectScene(_:identifier:userInfo:)();
    swift_unknownObjectRelease();
  }
}

unint64_t sub_100046AB4()
{
  result = qword_1000AF5F0;
  if (!qword_1000AF5F0)
  {
    type metadata accessor for SceneControllerFrontBoard();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF5F0);
  }

  return result;
}

uint64_t sub_100046B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000282B4(&qword_1000AF5E8, &unk_1000784B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046B9C(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000AF5E8, &unk_1000784B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100046C04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000282B4(&unk_1000B0250, &unk_100077970);
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
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_10002B5AC(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_10002B5AC(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_10002B5AC(v34, (v2[7] + 32 * v10));
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

uint64_t sub_100046ECC()
{
  result = (*(*v0 + 96))();
  if (result)
  {
    swift_getObjectType();
    sub_100046AB4();
    dispatch thunk of LACUISceneControllerDelegate.sceneControllerDidDisconnectScene(_:identifier:)();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100046F84()
{
  v1 = *(v0 + 24);

  sub_10002C908(v0 + 32);
  return v0;
}

uint64_t sub_100046FAC()
{
  v1 = *(v0 + 24);

  sub_10002C908(v0 + 32);

  return swift_deallocClassInstance();
}

void (*sub_100047034(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 112))();
  return sub_1000470C4;
}

void sub_1000470C4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_100047178(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = a3;
    LOBYTE(v5) = a2;
    v6 = result;
    v8 = *(result + 32);
    v7 = *(result + 40);
    v9 = *(result + 56);
    v49 = *(result + 48);
    v10 = *a3;

    result = sub_10002AC0C(v8, v7);
    v12 = *(v10 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    LOBYTE(v16) = v11;
    v50 = v4;
    if (*(v10 + 24) < v15)
    {
      sub_100038F2C(v15, v5 & 1);
      v17 = *v4;
      result = sub_10002AC0C(v8, v7);
      if ((v16 & 1) == (v18 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if ((v5 & 1) == 0)
    {
      v26 = result;
      sub_1000391EC();
      result = v26;
      v19 = *v50;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

LABEL_7:
    v19 = *v4;
    if (v16)
    {
LABEL_8:
      v20 = 16 * result;
      v21 = (v19[7] + 16 * result);
      v23 = *v21;
      v22 = v21[1];

      v24 = (v19[7] + v20);
      v25 = v24[1];
      *v24 = v23;
      v24[1] = v22;

LABEL_12:
      v16 = v3 - 1;
      v4 = v50;
      if (v3 == 1)
      {
        return result;
      }

      v5 = (v6 + 88);
      while (1)
      {
        v7 = *(v5 - 3);
        v9 = *(v5 - 2);
        v3 = *(v5 - 1);
        v6 = *v5;
        v37 = *v4;

        result = sub_10002AC0C(v7, v9);
        v39 = *(v37 + 16);
        v40 = (v38 & 1) == 0;
        v14 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v14)
        {
          goto LABEL_23;
        }

        v8 = v38;
        if (*(v37 + 24) < v41)
        {
          sub_100038F2C(v41, 1);
          v42 = *v4;
          result = sub_10002AC0C(v7, v9);
          if ((v8 & 1) != (v43 & 1))
          {
            goto LABEL_5;
          }
        }

        v44 = *v4;
        if (v8)
        {
          v31 = 16 * result;
          v32 = (v44[7] + 16 * result);
          v34 = *v32;
          v33 = v32[1];

          v35 = (v44[7] + v31);
          v36 = v35[1];
          *v35 = v34;
          v35[1] = v33;
        }

        else
        {
          v44[(result >> 6) + 8] |= 1 << result;
          v45 = (v44[6] + 16 * result);
          *v45 = v7;
          v45[1] = v9;
          v46 = (v44[7] + 16 * result);
          *v46 = v3;
          v46[1] = v6;
          v47 = v44[2];
          v14 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v14)
          {
            goto LABEL_24;
          }

          v44[2] = v48;
        }

        v5 += 4;
        --v16;
        v4 = v50;
        if (!v16)
        {
          return result;
        }
      }
    }

LABEL_10:
    v19[(result >> 6) + 8] |= 1 << result;
    v27 = (v19[6] + 16 * result);
    *v27 = v8;
    v27[1] = v7;
    v28 = (v19[7] + 16 * result);
    *v28 = v49;
    v28[1] = v9;
    v29 = v19[2];
    v14 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v30;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100047450()
{
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_1000282B4(&qword_1000AF6D0, &qword_100078550);
  Binding.wrappedValue.getter();
  return v2;
}

uint64_t sub_1000474A8()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1000282B4(&qword_1000AF6D0, &qword_100078550);
  return Binding.wrappedValue.setter();
}

void (*sub_100047504(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 24);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_1000282B4(&qword_1000AF6D0, &qword_100078550);
  Binding.wrappedValue.getter();
  return sub_1000475B8;
}

void sub_1000475B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 48);
  v5 = *(v1 + 19);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 18) = v2;
  Binding.wrappedValue.setter();

  free(v1);
}

uint64_t sub_100047630()
{
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_1000282B4(&qword_1000AF6D0, &qword_100078550);
  Binding.projectedValue.getter();
  return v2;
}

uint64_t sub_1000476C4(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  v6 = *(type metadata accessor for PasscodeEmbeddedView(0) + 24);
  sub_100034F7C(a1, v5, &qword_1000B00F0, &qword_100078560);
  sub_1000282B4(&qword_1000AF6D8, &qword_100078558);
  Binding.wrappedValue.setter();
  return sub_10002B444(a1, &qword_1000B00F0, &qword_100078560);
}

void (*sub_1000477A0(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(sub_1000282B4(&qword_1000B00F0, &qword_100078560) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = sub_1000282B4(&qword_1000AF6D8, &qword_100078558);
  a1[2] = v5;
  v6 = *(*(v5 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for PasscodeEmbeddedView(0);
  sub_100034F7C(v1 + *(v9 + 24), v8, &qword_1000AF6D8, &qword_100078558);
  Binding.wrappedValue.getter();
  return sub_1000478E0;
}

void sub_1000478E0(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (a2)
  {
    sub_100034F7C(*(a1 + 8), v4, &qword_1000B00F0, &qword_100078560);
    Binding.wrappedValue.setter();
    sub_10002B444(v2, &qword_1000AF6D8, &qword_100078558);
    v6 = v5;
    v7 = &qword_1000B00F0;
    v8 = &qword_100078560;
  }

  else
  {
    v9 = *(a1 + 8);
    Binding.wrappedValue.setter();
    v7 = &qword_1000AF6D8;
    v8 = &qword_100078558;
    v6 = v2;
  }

  sub_10002B444(v6, v7, v8);
  free(v2);
  free(v5);

  free(v4);
}

uint64_t sub_1000479D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PasscodeEmbeddedView(0) + 24);
  v3 = sub_1000282B4(&qword_1000AF6D8, &qword_100078558);
  return a1(v3);
}

void sub_100047A2C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a8;
  v44 = a6;
  v45 = a7;
  v41 = a5;
  v39[0] = a3;
  v42 = a12;
  v43 = a10;
  v16 = sub_1000282B4(&qword_1000AF6E0, &unk_100078568);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v39 - v18;
  v20 = type metadata accessor for PasscodeEmbeddedParentViewController(0);
  v21 = objc_allocWithZone(v20);
  v22 = OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v23 = type metadata accessor for PasscodeEmbeddedView(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v39[1] = v24 + 56;
  v40 = v25;
  v25(&v21[v22], 1, 1, v23);
  v26 = &v21[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_verifyPasscode];
  *v26 = 0;
  v26[1] = 0;
  v27 = objc_allocWithZone(PasscodeEmbeddedCustomizableViewController);
  v28 = [v27 initWithPasscodeLength:a1 alphanumeric:{a2 & 1, v39[0]}];
  *&v21[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeViewController] = v28;
  v29 = v28;
  if (a4)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  [v28 setPlaceholderText:v30];

  v31 = *v26;
  v32 = v26[1];
  v33 = v42;
  *v26 = a11;
  v26[1] = v33;
  sub_1000299DC(a11);
  sub_10002AA04(v31);
  v21[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_dismissKeyboardOnDissappear] = v41 & 1;
  v47.receiver = v21;
  v47.super_class = v20;
  v34 = objc_msgSendSuper2(&v47, "initWithNibName:bundle:", 0, 0);
  [*&v34[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeViewController] setDelegate:v34];
  sub_10002AA04(a11);
  v36 = v44;
  v35 = v45;
  *a9 = v34;
  *(a9 + 8) = v36;
  *(a9 + 16) = v35;
  *(a9 + 24) = v46 & 1;
  sub_100048638(v43, a9 + *(v23 + 24));
  sub_1000486A8(a9, v19);
  v40(v19, 0, 1, v23);
  v37 = OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  swift_beginAccess();
  v38 = v34;
  sub_10004870C(v19, &v34[v37]);
  swift_endAccess();
}

char *sub_100047CE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = objc_allocWithZone(v8);
  v16 = OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v17 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  v18 = &v15[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_verifyPasscode];
  *v18 = 0;
  v18[1] = 0;
  v19 = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:a1 alphanumeric:a2 & 1];
  *&v15[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeViewController] = v19;
  v20 = v19;
  if (a4)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v19 setPlaceholderText:v21];

  v22 = *v18;
  v23 = v18[1];
  *v18 = a6;
  v18[1] = a7;
  sub_1000299DC(a6);
  sub_10002AA04(v22);
  v15[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_dismissKeyboardOnDissappear] = a5 & 1;
  v28.receiver = v15;
  v28.super_class = v8;
  v24 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
  v25 = *&v24[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeViewController];
  v26 = v24;
  [v25 setDelegate:v26];
  sub_10002AA04(a6);

  return v26;
}

uint64_t sub_100047EA8(uint64_t a1)
{
  v3 = sub_1000282B4(&qword_1000AF6E0, &unk_100078568);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  sub_1000486A8(a1, &v10 - v5);
  v7 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  swift_beginAccess();
  sub_10004870C(v6, v1 + v8);
  return swift_endAccess();
}

id sub_100047FA8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v23[-v10];
  v12 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23[-v14];
  v16 = *(type metadata accessor for PasscodeEmbeddedView(0) + 24);
  sub_1000282B4(&qword_1000AF6D8, &qword_100078558);
  Binding.wrappedValue.getter();
  if ((*(v5 + 48))(v15, 1, v4))
  {
    sub_10002B444(v15, &qword_1000B00F0, &qword_100078560);
    v17 = 0.0;
  }

  else
  {
    (*(v5 + 16))(v11, v15, v4);
    sub_10002B444(v15, &qword_1000B00F0, &qword_100078560);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v17 = v18;
    v19 = *(v5 + 8);
    v19(v9, v4);
    v19(v11, v4);
  }

  v20 = *(v2 + 16);
  v21 = *(v2 + 24);
  v24 = *(v2 + 8);
  v25 = v20;
  v26 = v21;
  sub_1000282B4(&qword_1000AF6D0, &qword_100078550);
  Binding.wrappedValue.getter();
  return [*(a1 + OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeViewController) setBackoffTimeout:0 showBackoffTitle:v23[7] passcodeFocused:v17];
}

uint64_t sub_100048288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004A65C(&qword_1000AF7C0);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100048308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004A65C(&qword_1000AF7C0);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000483A4()
{
  sub_10004A65C(&qword_1000AF7C0);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000483E8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PasscodeEmbeddedView(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

char *sub_100048454(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v16 = OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v17 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v17 - 8) + 56))(&v8[v16], 1, 1, v17);
  v18 = &v8[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_verifyPasscode];
  *v18 = 0;
  v18[1] = 0;
  v19 = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:a1 alphanumeric:a2 & 1];
  *&v8[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeViewController] = v19;
  v20 = v19;
  if (a4)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v19 setPlaceholderText:v21];

  v22 = *v18;
  v23 = v18[1];
  *v18 = a6;
  v18[1] = a7;
  sub_1000299DC(a6);
  sub_10002AA04(v22);
  v8[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_dismissKeyboardOnDissappear] = a5 & 1;
  v28.receiver = v8;
  v28.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
  v25 = *&v24[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeViewController];
  v26 = v24;
  [v25 setDelegate:v26];
  sub_10002AA04(a6);

  return v26;
}

uint64_t sub_100048638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000282B4(&qword_1000AF6D8, &qword_100078558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000486A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004870C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000282B4(&qword_1000AF6E0, &unk_100078568);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10004877C()
{
  v1 = OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v2 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_verifyPasscode);
  *v3 = 0;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000488F0()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeViewController];
  v5 = [v4 view];
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  [v3 addSubview:v5];

  [v0 addChildViewController:v4];
  [v4 didMoveToParentViewController:v0];
  v7 = [v4 view];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_1000282B4(&qword_1000AEE00, &qword_100077990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100078440;
  v10 = [v4 view];
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  v12 = [v10 trailingAnchor];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [v13 trailingAnchor];

  v16 = [v12 constraintEqualToAnchor:v15];
  *(v9 + 32) = v16;
  v17 = [v4 view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22];
  *(v9 + 40) = v23;
  v24 = [v4 view];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v0 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v9 + 48) = v30;
  v31 = [v4 view];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v0 view];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 bottomAnchor];

  v38 = [v33 constraintEqualToAnchor:v37];
  *(v9 + 56) = v38;
  sub_100048D28();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];
}

unint64_t sub_100048D28()
{
  result = qword_1000AE9A0;
  if (!qword_1000AE9A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AE9A0);
  }

  return result;
}

uint64_t sub_100048DBC(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1000282B4(&qword_1000B0150, &qword_100078578);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_1000492E8(0, 0, v7, &unk_100078588, v11);
}

uint64_t sub_100048F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  v5 = type metadata accessor for PasscodeEmbeddedView(0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();

  return _swift_task_switch(sub_100048FE4, 0, 0);
}

uint64_t sub_100048FE4()
{
  v1 = *(v0 + 104);
  *(v0 + 120) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100049070, v3, v2);
}

uint64_t sub_100049070()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  v5 = OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  swift_beginAccess();
  v6 = (*(v2 + 48))(v4 + v5, 1, v3);
  if (!v6)
  {
    v7 = *(v0 + 96);
    sub_1000486A8(v4 + v5, v7);
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    *(v0 + 40) = *(v7 + 8);
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;
    *(v0 + 57) = 1;

    sub_1000282B4(&qword_1000AF6D0, &qword_100078550);
    Binding.wrappedValue.setter();
    sub_10004A6A0(v7);
  }

  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  **(v0 + 64) = v6 != 0;
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000491D8, v13, v12);
}

uint64_t sub_1000491D8()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100049248(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004AAC0;

  return sub_100048F0C(a1, v5, v6, v4);
}

uint64_t sub_1000492E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000282B4(&qword_1000B0150, &qword_100078578);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100034F7C(a3, v27 - v11, &qword_1000B0150, &qword_100078578);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10002B444(v12, &qword_1000B0150, &qword_100078578);
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

      sub_1000282B4(&unk_1000B0240, &qword_100078718);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_10002B444(a3, &qword_1000B0150, &qword_100078578);

      return v24;
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

  sub_10002B444(a3, &qword_1000B0150, &qword_100078578);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_1000282B4(&unk_1000B0240, &qword_100078718);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_100049758(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1000282B4(&qword_1000B0150, &qword_100078578);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  result = objc_msgSendSuper2(&v13, "viewWillDisappear:", a1 & 1);
  if (*(v1 + OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_dismissKeyboardOnDissappear) == 1)
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = v1;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    sub_1000492E8(0, 0, v7, &unk_100078598, v12);
  }

  return result;
}

uint64_t sub_1000498BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  v5 = type metadata accessor for PasscodeEmbeddedView(0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();

  return _swift_task_switch(sub_100049994, 0, 0);
}

uint64_t sub_100049994()
{
  v1 = *(v0 + 104);
  *(v0 + 120) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100049A20, v3, v2);
}

uint64_t sub_100049A20()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  v5 = OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  swift_beginAccess();
  v6 = (*(v2 + 48))(v4 + v5, 1, v3);
  if (!v6)
  {
    v7 = *(v0 + 96);
    sub_1000486A8(v4 + v5, v7);
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    *(v0 + 40) = *(v7 + 8);
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;

    sub_1000282B4(&qword_1000AF6D0, &qword_100078550);
    Binding.wrappedValue.setter();
    sub_10004A6A0(v7);
  }

  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  **(v0 + 64) = v6 != 0;
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004AAAC, v13, v12);
}

uint64_t sub_100049B7C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004AAC0;

  return sub_1000498BC(a1, v5, v6, v4);
}

uint64_t sub_100049D8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_verifyPasscode);
  if (v5)
  {
    v9 = result;
    v10 = *(v4 + OBJC_IVAR____TtC10CoreAuthUI36PasscodeEmbeddedParentViewController_verifyPasscode + 8);

    v5(v9, a2, a3, a4);

    return sub_10002AA04(v5);
  }

  return result;
}

uint64_t sub_10004A06C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000282B4(&qword_1000AF6D8, &qword_100078558);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10004A13C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000282B4(&qword_1000AF6D8, &qword_100078558);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10004A1EC()
{
  type metadata accessor for PasscodeEmbeddedParentViewController(319);
  if (v0 <= 0x3F)
  {
    sub_10004A288();
    if (v1 <= 0x3F)
    {
      sub_10004A2D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10004A288()
{
  if (!qword_1000AF750)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AF750);
    }
  }
}

void sub_10004A2D8()
{
  if (!qword_1000AF758)
  {
    sub_10002CC44(&qword_1000B00F0, &qword_100078560);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AF758);
    }
  }
}

void sub_10004A344()
{
  sub_10004A3F8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10004A3F8()
{
  if (!qword_1000AF7B8)
  {
    type metadata accessor for PasscodeEmbeddedView(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AF7B8);
    }
  }
}

uint64_t sub_10004A450()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004A488()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004A4C8(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004A568;

  return sub_100048F0C(a1, v5, v6, v4);
}

uint64_t sub_10004A568()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10004A65C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PasscodeEmbeddedView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004A6A0(uint64_t a1)
{
  v2 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004A6FC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10004A7F0;

  return v6(v2 + 32);
}

uint64_t sub_10004A7F0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10004A904()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004A93C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10004AAC0;

  return sub_10004A6FC(a1, v5);
}

uint64_t sub_10004A9F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10004A568;

  return sub_10004A6FC(a1, v5);
}

void sub_10004AACC(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  v3 = sub_10004AB30(v1);
  v4 = *&v1[OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_authorizationViewManager];
  *&v1[OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_authorizationViewManager] = v3;
}

id sub_10004AB30(char *a1)
{
  result = [*&a1[OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_context] externalizedContext];
  if (result)
  {
    v3 = result;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = objc_allocWithZone(LACUIAuthenticatorServiceConfiguration);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = [v7 initWithContext:isa requirement:3];

    sub_10002AFD0(v4, v6);
    v10 = [a1 options];
    if (v10)
    {
      v11 = v10;
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v12 + 16))
      {
        v13 = sub_10002AB74(&v65);
        if (v14)
        {
          sub_10002B308(*(v12 + 56) + 32 * v13, &v66);
          sub_10002ABB8(&v65);

          if (*(&v67 + 1))
          {
            sub_10002B4A4(0, &qword_1000AF5D0, NSError_ptr);
            if (swift_dynamicCast())
            {
              v15 = v65;
              v16 = [v65 localizedDescription];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }

LABEL_11:
            v17 = String._bridgeToObjectiveC()();

            [v9 setPrompt:v17];

            [v9 setPasscodeLength:LACustomPasswordTypeCustomDigits];
            sub_100027644();
            v18 = String._bridgeToObjectiveC()();

            [v9 setCancelButtonTitle:v18];

            v19 = [a1 callerName];
            if (!v19)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v19 = String._bridgeToObjectiveC()();
            }

            [v9 setTitle:v19];

            v20 = [a1 options];
            if (v20)
            {
              v21 = v20;
              v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              AnyHashable.init<A>(_:)();
              if (*(v22 + 16))
              {
                v23 = sub_10002AB74(&v65);
                if (v24)
                {
                  sub_10002B308(*(v22 + 56) + 32 * v23, &v66);
                  sub_10002ABB8(&v65);

                  if (*(&v67 + 1))
                  {
                    if (swift_dynamicCast())
                    {
LABEL_27:
                      v30 = objc_opt_self();
                      v31 = String._bridgeToObjectiveC()();

                      v32 = [v30 truncateString:v31 maxLength:512];

                      if (v32)
                      {
                        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v35 = v34;

                        if (String.count.getter() >= 1)
                        {
                          v36 = [a1 callerName];
                          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v39 = v38;

                          sub_100027E64(v33, v35, v37, v39);

LABEL_34:

                          v44 = String._bridgeToObjectiveC()();

                          [v9 setSubtitle:v44];

                          sub_100027A88();
                          v45 = String._bridgeToObjectiveC()();

                          [v9 setPasswordFieldPlaceholder:v45];

                          [v9 setStyle:0];
                          v46 = [a1 internalInfo];
                          v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                          AnyHashable.init<A>(_:)();
                          if (*(v47 + 16) && (v48 = sub_10002AB74(&v65), (v49 & 1) != 0))
                          {
                            sub_10002B308(*(v47 + 56) + 32 * v48, &v66);
                            sub_10002ABB8(&v65);

                            if (swift_dynamicCast())
                            {
                              v50 = String._bridgeToObjectiveC()();

LABEL_40:
                              [v9 setBundleIdentifier:v50];

                              v51 = v9;
                              v52 = [a1 internalInfo];
                              static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                              v53 = objc_allocWithZone(LACInternalInfoParser);
                              v54 = Dictionary._bridgeToObjectiveC()().super.isa;

                              v55 = [v53 initWithInternalInfo:v54];

                              v56 = [v55 callerAuditToken];
                              v57 = swift_allocObject();
                              swift_unknownObjectWeakInit();

                              v58 = sub_100045A14();
                              v59 = sub_100045A4C();
                              v60 = sub_100045A54();
                              sub_100045A60(v51, v56, 0, v58, 0, 1, v59, 0, v60, sub_10004CED0, v57);
                              v62 = v61;

                              v65 = v62;
                              swift_unknownObjectRetain();
                              sub_1000458A4();
                              v63 = v65;
                              canShowWhile = LACUIDTOViewController._canShowWhileLocked()();
                              sub_100045CA0(a1, canShowWhile, v63);

                              return v63;
                            }
                          }

                          else
                          {

                            sub_10002ABB8(&v65);
                          }

                          v50 = 0;
                          goto LABEL_40;
                        }
                      }

LABEL_33:
                      v40 = [a1 callerName];
                      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v43 = v42;

                      sub_100027D14(v41, v43);
                      goto LABEL_34;
                    }

LABEL_22:
                    v25 = [a1 options];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                      AnyHashable.init<A>(_:)();
                      if (*(v27 + 16))
                      {
                        v28 = sub_10002AB74(&v65);
                        if (v29)
                        {
                          sub_10002B308(*(v27 + 56) + 32 * v28, &v66);
                          sub_10002ABB8(&v65);

                          if (*(&v67 + 1))
                          {
                            if ((swift_dynamicCast() & 1) == 0)
                            {
                              goto LABEL_33;
                            }

                            goto LABEL_27;
                          }

LABEL_32:
                          sub_10004C7CC(&v66);
                          goto LABEL_33;
                        }
                      }

                      sub_10002ABB8(&v65);
                    }

                    v66 = 0u;
                    v67 = 0u;
                    goto LABEL_32;
                  }

LABEL_21:
                  sub_10004C7CC(&v66);
                  goto LABEL_22;
                }
              }

              sub_10002ABB8(&v65);
            }

            v66 = 0u;
            v67 = 0u;
            goto LABEL_21;
          }

LABEL_10:
          sub_10004C7CC(&v66);
          goto LABEL_11;
        }
      }

      sub_10002ABB8(&v65);
    }

    v66 = 0u;
    v67 = 0u;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_10004B504(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10002B4A4(0, &qword_1000AF5C0, UIDevice_ptr);
  if (sub_100069D50())
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    v16[4] = sub_10004B798;
    v16[5] = v7;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10002B620;
    v16[3] = &unk_1000980A8;
    v8 = _Block_copy(v16);
    sub_1000299DC(a1);

    [v3 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_authorizationViewManager];
    if (v9)
    {
      v10 = objc_opt_self();
      v11 = LACErrorCodeSystemCancel;
      v12 = v9;
      v13 = [v10 errorWithCode:v11];
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = a1;
      v15[4] = a2;
      sub_1000299DC(a1);

      sub_100045B2C(v13, sub_10004B78C, v15);
    }
  }
}

uint64_t sub_10004B754()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10004B798()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_authorizationViewManager);
    if (v6)
    {
      v7 = v6;

      v8 = [objc_opt_self() errorWithCode:LACErrorCodeSystemCancel];
      v9 = swift_allocObject();
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v11 = swift_allocObject();
      v11[2] = v9;
      v11[3] = v1;
      v11[4] = v3;

      sub_1000299DC(v1);
      sub_100045B2C(v8, sub_10004CDD4, v11);

      v5 = v7;
    }
  }
}

uint64_t sub_10004B900(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10004B9D0(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_context;
  *&v2[v6] = [objc_allocWithZone(LAContext) init];
  *&v2[OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_authorizationViewManager] = 0;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithRequestID:endpoint:", a1, a2);

  return v7;
}

id sub_10004BB30(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_context;
  *&v3[v8] = [objc_allocWithZone(LAContext) init];
  *&v3[OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_authorizationViewManager] = 0;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithRequestID:endpoint:remoteAlertPresentationMode:", a1, a2, a3);

  return v9;
}

id sub_10004BCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_context;
  *&v6[v12] = [objc_allocWithZone(LAContext) init];
  *&v6[OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_authorizationViewManager] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16.receiver = v6;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithInternalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:", isa, a2, a3, a4, a5 & 1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

id sub_10004BF04(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_context;
  *&v3[v7] = [objc_allocWithZone(LAContext) init];
  *&v3[OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_authorizationViewManager] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10004C030(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_context;
  *&v1[v4] = [objc_allocWithZone(LAContext) init];
  *&v1[OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_authorizationViewManager] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_10004C0F8(uint64_t a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_context;
  *&v2[v5] = [objc_allocWithZone(LAContext) init];
  *&v2[OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_authorizationViewManager] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10002A658(a2, a2[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithInternalInfo:parent:", isa, v7);

  swift_unknownObjectRelease();
  sub_10002A69C(a2);
  return v8;
}

uint64_t sub_10004C37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v9 = [v4 options];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = LACPolicyOptionPINMinLength;
  AnyHashable.init<A>(_:)();
  if (!*(v11 + 16) || (v12 = sub_10002AB74(&v31), (v13 & 1) == 0))
  {

    sub_10002ABB8(&v31);
LABEL_9:
    v33 = 0u;
    v34 = 0u;
    goto LABEL_10;
  }

  sub_10002B308(*(v11 + 56) + 32 * v12, &v33);
  sub_10002ABB8(&v31);

  if (!*(&v34 + 1))
  {
LABEL_10:
    sub_10004C7CC(&v33);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v14 = v31;
    if (String.count.getter() < v14)
    {
      return a4(0);
    }
  }

LABEL_11:
  v15 = [v5 options];
  if (!v15)
  {
LABEL_19:
    v33 = 0u;
    v34 = 0u;
    goto LABEL_20;
  }

  v16 = v15;
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v18 = sub_10002AB74(&v31), (v19 & 1) == 0))
  {

    sub_10002ABB8(&v31);
    goto LABEL_19;
  }

  sub_10002B308(*(v17 + 56) + 32 * v18, &v33);
  sub_10002ABB8(&v31);

  if (!*(&v34 + 1))
  {
LABEL_20:
    sub_10004C7CC(&v33);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v20 = v31;
    if (v20 < String.count.getter())
    {
      return a4(0);
    }
  }

LABEL_21:
  sub_1000282B4(&qword_1000AE6B0, &unk_100077AE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077700;
  v31 = 0x746C75736552;
  v32 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  sub_1000282B4(&qword_1000AE6B8, &unk_1000777D0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1000776F0;
  *(v23 + 32) = LACResultEnteredPassphrase;
  *(v23 + 40) = 1;
  v24 = sub_10002B364(v23);
  swift_setDeallocating();
  *(inited + 96) = sub_1000282B4(&qword_1000AE6C0, qword_100077AF0);
  *(inited + 72) = v24;
  v31 = 5130576;
  v32 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a2;
  *(inited + 152) = a3;

  sub_10002AEB4(inited);
  swift_setDeallocating();
  sub_1000282B4(&unk_1000AE930, &unk_1000777E0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 uiSuccessWithResult:isa];

  result = a4(1);
  v26 = *&v5[OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_authorizationViewManager];
  if (v26)
  {
    v27 = v26;
    v28 = sub_100045B10();
    sub_100045B2C(0, v28, v29);
  }

  return result;
}

uint64_t sub_10004C7CC(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000AF430, &unk_1000777F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004C904(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = [a3 options];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = LACPolicyOptionPINMinLength;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v11 = sub_10002AB74(&v30), (v12 & 1) == 0))
  {

    sub_10002ABB8(&v30);
LABEL_9:
    v32 = 0u;
    v33 = 0u;
    goto LABEL_10;
  }

  sub_10002B308(*(v10 + 56) + 32 * v11, &v32);
  sub_10002ABB8(&v30);

  if (!*(&v33 + 1))
  {
LABEL_10:
    sub_10004C7CC(&v32);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v13 = v30;
    if (String.count.getter() < v13)
    {
      return (*(a4 + 16))(a4, 0);
    }
  }

LABEL_11:
  v14 = [a3 options];
  if (!v14)
  {
LABEL_19:
    v32 = 0u;
    v33 = 0u;
    goto LABEL_20;
  }

  v15 = v14;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = sub_10002AB74(&v30), (v18 & 1) == 0))
  {

    sub_10002ABB8(&v30);
    goto LABEL_19;
  }

  sub_10002B308(*(v16 + 56) + 32 * v17, &v32);
  sub_10002ABB8(&v30);

  if (!*(&v33 + 1))
  {
LABEL_20:
    sub_10004C7CC(&v32);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v19 = v30;
    if (v19 < String.count.getter())
    {
      return (*(a4 + 16))(a4, 0);
    }
  }

LABEL_21:
  sub_1000282B4(&qword_1000AE6B0, &unk_100077AE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077700;
  v30 = 0x746C75736552;
  v31 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  sub_1000282B4(&qword_1000AE6B8, &unk_1000777D0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1000776F0;
  *(v22 + 32) = LACResultEnteredPassphrase;
  *(v22 + 40) = 1;
  v23 = sub_10002B364(v22);
  swift_setDeallocating();
  *(inited + 96) = sub_1000282B4(&qword_1000AE6C0, qword_100077AF0);
  *(inited + 72) = v23;
  v30 = 5130576;
  v31 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a1;
  *(inited + 152) = a2;

  sub_10002AEB4(inited);
  swift_setDeallocating();
  sub_1000282B4(&unk_1000AE930, &unk_1000777E0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a3 uiSuccessWithResult:isa];

  result = (*(a4 + 16))(a4, 1);
  v25 = *&a3[OBJC_IVAR____TtC10CoreAuthUI22PINSheetViewController_authorizationViewManager];
  if (v25)
  {
    v26 = v25;
    v27 = sub_100045B10();
    sub_100045B2C(0, v27, v28);
  }

  return result;
}

uint64_t sub_10004CD50()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004CD8C()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10004CDE0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (v4)
    {
      v13 = v4;
      v14 = v5;
      aBlock.receiver = _NSConcreteStackBlock;
      aBlock.super_class = 1107296256;
      v11 = sub_10002B620;
      v12 = a1;
      v8 = _Block_copy(&aBlock);
    }

    else
    {
      v8 = 0;
    }

    v9 = type metadata accessor for PINSheetViewController();
    aBlock.receiver = v7;
    aBlock.super_class = v9;
    objc_msgSendSuper2(&aBlock, "dismissChildWithCompletionHandler:", v8);
    _Block_release(v8);
  }
}

void sub_10004CED0(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_opt_self();
    swift_errorRetain();
    v2 = _convertErrorToNSError(_:)();
    LODWORD(v1) = [v1 error:v2 hasCode:LACErrorCodeUserCancel];

    if (v1)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        [Strong uiCancel];

LABEL_7:

        return;
      }
    }

    else
    {
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v4 = v5;
        v6 = _convertErrorToNSError(_:)();
        [v4 uiFailureWithError:v6];

        goto LABEL_7;
      }
    }
  }
}

char *sub_10004CFFC()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v76 = *(v2 - 8);
  v3 = *(v76 + 64);
  __chkstk_darwin(v2);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 options];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v78 = LACPolicyOptionCancelVisible;
  AnyHashable.init<A>(_:)();
  if (!*(v8 + 16) || (v9 = sub_10002AB74(&v79), (v10 & 1) == 0))
  {

    sub_10002ABB8(&v79);
LABEL_8:
    v81 = 0u;
    v82 = 0u;
    goto LABEL_9;
  }

  sub_10002B308(*(v8 + 56) + 32 * v9, &v81);
  sub_10002ABB8(&v79);

  if (!*(&v82 + 1))
  {
LABEL_9:
    sub_10002B444(&v81, &qword_1000AF430, &unk_1000777F0);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v11 = v79;
    goto LABEL_11;
  }

LABEL_10:
  v11 = 1;
LABEL_11:
  v12 = [v1 options];
  if (!v12)
  {
LABEL_21:
    v81 = 0u;
    v82 = 0u;
    goto LABEL_22;
  }

  v13 = v12;
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v78 = LACPolicyOptionFallbackVisible;
  AnyHashable.init<A>(_:)();
  if (!*(v14 + 16) || (v15 = sub_10002AB74(&v79), (v16 & 1) == 0))
  {

    sub_10002ABB8(&v79);
    goto LABEL_21;
  }

  sub_10002B308(*(v14 + 56) + 32 * v15, &v81);
  sub_10002ABB8(&v79);

  if (!*(&v82 + 1))
  {
LABEL_22:
    sub_10002B444(&v81, &qword_1000AF430, &unk_1000777F0);
    v19 = 0;
    v20 = 1;
LABEL_23:
    v77 = 1;
    goto LABEL_24;
  }

  sub_10002B4A4(0, &qword_1000AE4E0, NSNumber_ptr);
  v17 = swift_dynamicCast();
  v18 = v79;
  if (v17)
  {
    v19 = v79;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 == 0;
  if (v11 & 1 | (v19 == 0))
  {
    goto LABEL_23;
  }

  v20 = 0;
  v77 = [v19 BOOLValue] ^ 1;
  v19 = v18;
LABEL_24:
  v21 = static os_log_type_t.default.getter();
  v22 = v19;
  v23 = v1;
  v24 = Logger.logObject.getter();

  if (os_log_type_enabled(v24, v21))
  {
    v74 = v2;
    v75 = v5;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543874;
    *(v25 + 4) = v23;
    *v26 = v23;
    *(v25 + 12) = 1026;
    *(v25 + 14) = v77;
    *(v25 + 18) = 1026;
    v73 = v23;
    v27 = v23;
    v29 = 0;
    if (!v20)
    {
      v28 = [v22 BOOLValue];

      if (v28)
      {
        v29 = 1;
      }
    }

    *(v25 + 20) = v29;

    _os_log_impl(&_mh_execute_header, v24, v21, "%{public}@ buttons - cancel: %{BOOL,public}d fallback: %{BOOL,public}d", v25, 0x18u);
    sub_10002B444(v26, &qword_1000AE6E0, &qword_100077820);

    v2 = v74;
    v5 = v75;
    v23 = v73;

    if (v20)
    {
      goto LABEL_39;
    }
  }

  else
  {

    if (v20)
    {
      goto LABEL_39;
    }
  }

  if ([v22 BOOLValue])
  {
    v30 = [v23 options];
    v72 = v22;
    if (v30)
    {
      v31 = v30;
      v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v78 = LACPolicyOptionUserFallback;
      AnyHashable.init<A>(_:)();
      if (*(v32 + 16))
      {
        v33 = sub_10002AB74(&v79);
        if (v34)
        {
          sub_10002B308(*(v32 + 56) + 32 * v33, &v81);
          sub_10002ABB8(&v79);

          if (*(&v82 + 1))
          {
            if (swift_dynamicCast())
            {
              v35 = String._bridgeToObjectiveC()();

              goto LABEL_62;
            }

LABEL_61:
            v35 = 0;
LABEL_62:
            v55 = [objc_opt_self() truncateString:v35 maxLength:32];

            if (v55)
            {
              v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v58 = v57;

              v79 = v56;
              v80 = v58;
              static CharacterSet.whitespacesAndNewlines.getter();
              sub_10004FA24();
              v59 = StringProtocol.trimmingCharacters(in:)();
              v61 = v60;
              (*(v76 + 8))(v5, v2);
            }

            else
            {
              v59 = sub_100027AD0();
              v61 = v62;
            }

            if (v59 == 0x6150207265746E45 && v61 == 0xEE0065646F637373)
            {
              swift_bridgeObjectRelease_n();
            }

            else
            {
              v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v63 & 1) == 0)
              {
                goto LABEL_71;
              }
            }

            v59 = sub_100027758();
            v61 = v64;
LABEL_71:
            v65 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v36 = sub_10004F8C0(0, 1, 1, &_swiftEmptyArrayStorage);
            v67 = *(v36 + 2);
            v66 = *(v36 + 3);
            v68 = (v67 + 1);
            if (v67 >= v66 >> 1)
            {
              v75 = (v67 + 1);
              v71 = sub_10004F8C0((v66 > 1), v67 + 1, 1, v36);
              v68 = v75;
              v36 = v71;
            }

            *(v36 + 2) = v68;
            v69 = &v36[40 * v67];
            *(v69 + 4) = v59;
            *(v69 + 5) = v61;
            *(v69 + 6) = 0;
            *(v69 + 7) = sub_10004FA78;
            *(v69 + 8) = v65;
            v22 = v72;
            if (!v77)
            {
              goto LABEL_74;
            }

            goto LABEL_40;
          }

LABEL_60:
          sub_10002B444(&v81, &qword_1000AF430, &unk_1000777F0);
          goto LABEL_61;
        }
      }

      sub_10002ABB8(&v79);
    }

    v81 = 0u;
    v82 = 0u;
    goto LABEL_60;
  }

LABEL_39:
  v36 = &_swiftEmptyArrayStorage;
  if (!v77)
  {
LABEL_74:

    return v36;
  }

LABEL_40:
  v37 = [v23 options];
  if (!v37)
  {
LABEL_47:
    v81 = 0u;
    v82 = 0u;
    goto LABEL_48;
  }

  v38 = v37;
  v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v78 = LACPolicyOptionUserCancel;
  AnyHashable.init<A>(_:)();
  if (!*(v39 + 16) || (v40 = sub_10002AB74(&v79), (v41 & 1) == 0))
  {

    sub_10002ABB8(&v79);
    goto LABEL_47;
  }

  sub_10002B308(*(v39 + 56) + 32 * v40, &v81);
  sub_10002ABB8(&v79);

  if (!*(&v82 + 1))
  {
LABEL_48:
    sub_10002B444(&v81, &qword_1000AF430, &unk_1000777F0);
    goto LABEL_49;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_49:
    v42 = 0;
    goto LABEL_50;
  }

  v42 = String._bridgeToObjectiveC()();

LABEL_50:
  v43 = [objc_opt_self() truncateString:v42 maxLength:32];

  if (v43)
  {
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v79 = v44;
    v80 = v46;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10004FA24();
    v47 = StringProtocol.trimmingCharacters(in:)();
    v49 = v48;
    (*(v76 + 8))(v5, v2);
  }

  else
  {
    v47 = sub_100027644();
    v49 = v50;
  }

  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_10004F8C0(0, *(v36 + 2) + 1, 1, v36);
  }

  v53 = *(v36 + 2);
  v52 = *(v36 + 3);
  if (v53 >= v52 >> 1)
  {
    v36 = sub_10004F8C0((v52 > 1), v53 + 1, 1, v36);
  }

  *(v36 + 2) = v53 + 1;
  v54 = &v36[40 * v53];
  *(v54 + 4) = v47;
  *(v54 + 5) = v49;
  *(v54 + 6) = 1;
  *(v54 + 7) = sub_10004FA18;
  *(v54 + 8) = v51;
  return v36;
}

uint64_t sub_10004DA3C()
{
  v1 = OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10004DA80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_10004DB30(char a1)
{
  v2 = v1;
  v40.receiver = v1;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, "viewDidAppear:", a1 & 1);
  v4 = OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType;
  swift_beginAccess();
  v5 = *&v2[v4];
  v6 = type metadata accessor for BiometryAlertViewController();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC10CoreAuthUIP33_AABE3714D9C58676A24E916892CB721E27BiometryAlertViewController_biometryType] = v5;
  v39.receiver = v7;
  v39.super_class = v6;
  v8 = objc_msgSendSuper2(&v39, "initWithNibName:bundle:", 0, 0);
  v9 = *&v2[v4];
  v10 = v2;
  v11 = v8;
  if (v9 == 1)
  {
    sub_100027AB8();
  }

  else if (v9 == 2)
  {
    sub_100027AA4();
  }

  v12 = String._bridgeToObjectiveC()();

  [v11 setTitle:v12];

  v13 = [v10 callerName];
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  v31 = v11;
  [v11 setMessage:v13];

  v29 = v10;
  v32 = sub_10004CFFC();
  v30 = *(v32 + 2);
  if (v30)
  {
    v14 = 0;
    v15 = &v35;
    v16 = (v32 + 64);
    while (v14 < *(v32 + 2))
    {
      v20 = *(v16 - 16);
      v19 = *(v16 - 8);
      v21 = *v16;
      v23 = *(v16 - 32);
      v22 = *(v16 - 24);
      sub_1000299DC(v19);
      sub_1000299DC(v19);

      v24 = String._bridgeToObjectiveC()();
      if (v19)
      {
        v37 = v19;
        v38 = v21;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_10002B620;
        v36 = &unk_100098198;
        v17 = _Block_copy(&aBlock);
      }

      else
      {
        v17 = 0;
      }

      ++v14;
      v37 = variable initialization expression of SecureUIManager.isRecording;
      v38 = 0;
      aBlock = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_10004DF88;
      v36 = &unk_100098170;
      v18 = _Block_copy(&aBlock);
      [v31 _addActionWithTitle:v24 style:v20 handler:v17 shouldDismissHandler:v18];
      _Block_release(v18);
      _Block_release(v17);

      sub_10002AA04(v19);
      v16 += 40;
      if (v30 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:
    v26 = v29;
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

LABEL_14:

  v15 = v31;
  v25 = [v31 actions];
  sub_10002B4A4(0, &qword_1000AF808, UIAlertAction_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    goto LABEL_21;
  }

  v26 = v29;
  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:
    v28 = 0;
    goto LABEL_23;
  }

LABEL_16:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v16 + 32);
LABEL_19:
    v28 = v27;
LABEL_23:

    [v15 setPreferredAction:v28];

    [v15 setPreferredStyle:1];
    [v26 presentViewController:v15 animated:1 completion:0];

    return;
  }

  __break(1u);
}

uint64_t sub_10004DF88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  LOBYTE(v1) = v1(v3);

  return v1 & 1;
}

uint64_t sub_10004DFC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10004E034(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = [v2 presentedViewController];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    v16 = sub_10004E23C;
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_10002B620;
    v15 = &unk_100098210;
    v9 = _Block_copy(&v12);
    v10 = v2;
    sub_1000299DC(a1);

    [v7 dismissViewControllerAnimated:0 completion:v9];
    _Block_release(v9);
  }

  else
  {
    if (a1)
    {
      v16 = a1;
      v17 = a2;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v14 = sub_10002B620;
      v15 = &unk_1000981C0;
      v11 = _Block_copy(&v12);
    }

    else
    {
      v11 = 0;
    }

    v18.receiver = v2;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, "dismissChildWithCompletionHandler:", v11);
    _Block_release(v11);
  }
}

uint64_t sub_10004E1F4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10004E23C()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    v3 = v0[4];
    v9 = v1;
    v10 = v3;
    v6.receiver = _NSConcreteStackBlock;
    v6.super_class = 1107296256;
    v7 = sub_10002B620;
    v8 = &unk_100098280;
    v4 = _Block_copy(&v6);
  }

  else
  {
    v4 = 0;
  }

  v5 = type metadata accessor for BiometryCompanionViewController();
  v6.receiver = v2;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, "dismissChildWithCompletionHandler:", v4);
  _Block_release(v4);
}

id sub_10004E3C4(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *sub_10004FFDC();
  sub_10004FFF4();
  *&v2[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithRequestID:endpoint:", a1, a2);

  return v7;
}

id sub_10004E504(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = *sub_10004FFDC();
  sub_10004FFF4();
  *&v3[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithRequestID:endpoint:remoteAlertPresentationMode:", a1, a2, a3);

  return v9;
}

id sub_10004E654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = *sub_10004FFDC();
  sub_10004FFF4();
  *&v6[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16.receiver = v6;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithInternalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:", isa, a2, a3, a4, a5 & 1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

id sub_10004E890(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = *sub_10004FFDC();
  sub_10004FFF4();
  *&v3[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10004EA30(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *sub_10004FFDC();
  sub_10004FFF4();
  *&v1[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_10004EB68(uint64_t a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v5 = *sub_10004FFDC();
  sub_10004FFF4();
  *&v2[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10002A658(a2, a2[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithInternalInfo:parent:", isa, v7);

  swift_unknownObjectRelease();
  sub_10002A69C(a2);
  return v8;
}

uint64_t type metadata accessor for BiometryCompanionViewController()
{
  result = qword_1000B0B68;
  if (!qword_1000B0B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004EE4C()
{
  result = type metadata accessor for Logger();
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

void sub_10004EF44()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v7 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_AABE3714D9C58676A24E916892CB721E27BiometryAlertViewController_biometryType];
  v2 = objc_allocWithZone(sub_1000282B4(&qword_1000AF868, &qword_1000787D0));
  v3 = UIHostingController.init(rootView:)();
  v4 = [v3 view];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor:v6];

    [v1 _setHeaderContentViewController:v3];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004F0DC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004F114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v70 = a2;
  v2 = sub_1000282B4(&qword_1000AF8A0, &qword_1000788D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v69 = &v63 - v4;
  v5 = type metadata accessor for Image.ResizingMode();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  __chkstk_darwin(v5);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RoundedRectangle();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v64 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000282B4(&qword_1000AF8A8, &qword_1000788D8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12);
  v71 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v63 - v17;
  v19 = *(v9 + 28);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  v22 = *(*(v21 - 8) + 104);
  v22(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #10.0 }

  v63 = _Q0;
  *v18 = _Q0;
  static Color.blue.getter();
  v28 = Color.opacity(_:)();

  v29 = sub_1000282B4(&qword_1000AF8B0, &qword_1000788E0);
  *&v18[*(v29 + 52)] = v28;
  *&v18[*(v29 + 56)] = 256;
  v30 = *(v9 + 28);
  v31 = v64;
  v22(&v64[v30], v20, v21);
  *v31 = v63;
  v32 = v31;
  v33 = static Color.blue.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v34 = &v18[*(v13 + 44)];
  sub_10004FBD4(v32, v34);
  v35 = v34 + *(sub_1000282B4(&qword_1000AF8B8, &qword_1000788E8) + 36);
  v36 = v83;
  *v35 = v82;
  *(v35 + 16) = v36;
  *(v35 + 32) = v84;
  v37 = sub_1000282B4(&qword_1000AF8C0, &qword_1000788F0);
  *(v34 + *(v37 + 52)) = v33;
  *(v34 + *(v37 + 56)) = 256;
  v38 = static Alignment.center.getter();
  v40 = v39;
  sub_10004FC38(v32);
  v41 = (v34 + *(sub_1000282B4(&qword_1000AF8C8, &qword_1000788F8) + 36));
  *v41 = v38;
  v41[1] = v40;
  v42 = static Alignment.center.getter();
  v44 = v43;
  v45 = (v34 + *(sub_1000282B4(&qword_1000AF8D0, &qword_100078900) + 36));
  *v45 = v42;
  v45[1] = v44;
  Image.init(systemName:)();
  v47 = v65;
  v46 = v66;
  v48 = v67;
  (*(v66 + 104))(v65, enum case for Image.ResizingMode.stretch(_:), v67);
  v49 = Image.resizable(capInsets:resizingMode:)();

  (*(v46 + 8))(v47, v48);
  static Font.Weight.light.getter();
  v50 = type metadata accessor for Font.Design();
  v51 = v69;
  (*(*(v50 - 8) + 56))(v69, 1, 1, v50);
  v52 = static Font.system(size:weight:design:)();
  sub_10002B444(v51, &qword_1000AF8A0, &qword_1000788D0);
  KeyPath = swift_getKeyPath();
  v54 = static Color.blue.getter();
  v55 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v56 = v71;
  sub_100034F7C(v18, v71, &qword_1000AF8A8, &qword_1000788D8);
  v57 = v56;
  v58 = v70;
  sub_100034F7C(v57, v70, &qword_1000AF8A8, &qword_1000788D8);
  v59 = v58 + *(sub_1000282B4(&qword_1000AF8D8, &qword_100078968) + 48);
  *&v75 = v49;
  *(&v75 + 1) = KeyPath;
  *&v76 = v52;
  *(&v76 + 1) = v55;
  *v77 = v54;
  *&v77[8] = v72;
  *&v77[24] = v73;
  *&v77[40] = v74;
  v60 = v76;
  *v59 = v75;
  *(v59 + 16) = v60;
  v61 = *&v77[16];
  *(v59 + 32) = *v77;
  *(v59 + 48) = v61;
  *(v59 + 64) = *&v77[32];
  *(v59 + 80) = *&v77[48];
  sub_100034F7C(&v75, v78, &qword_1000AF8E0, &unk_100078970);
  sub_10002B444(v18, &qword_1000AF8A8, &qword_1000788D8);
  v78[0] = v49;
  v78[1] = KeyPath;
  v78[2] = v52;
  v78[3] = v55;
  v78[4] = v54;
  v79 = v72;
  v80 = v73;
  v81 = v74;
  sub_10002B444(v78, &qword_1000AF8E0, &unk_100078970);
  return sub_10002B444(v71, &qword_1000AF8A8, &qword_1000788D8);
}

uint64_t sub_10004F768@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = sub_1000282B4(&qword_1000AF880, &qword_1000788B0);
  sub_10004F114(v3, a1 + *(v5 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = (a1 + *(sub_1000282B4(&qword_1000AF888, &qword_1000788B8) + 36));
  *v6 = v26;
  v6[1] = v27;
  v6[2] = v28;
  LOBYTE(v3) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(sub_1000282B4(&qword_1000AF890, &qword_1000788C0) + 36);
  *v15 = v3;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  LOBYTE(v3) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = sub_1000282B4(&qword_1000AF898, &qword_1000788C8);
  v25 = a1 + *(result + 36);
  *v25 = v3;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
  return result;
}

char *sub_10004F8C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000282B4(&qword_1000AF878, &qword_1000787D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10004F9E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10004FA24()
{
  result = qword_1000AF870;
  if (!qword_1000AF870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF870);
  }

  return result;
}

void sub_10004FA84(const char **a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *a1;
    v4 = Strong;
    [Strong v3];
  }
}

uint64_t sub_10004FADC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10004FAF4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004FB08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004FB50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004FBD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004FC38(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004FC94@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10004FCC0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_10004FCEC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10004FD18(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

void sub_10004FD58(uint64_t a1, unint64_t *a2)
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

unint64_t sub_10004FDA8()
{
  result = qword_1000AF8F0;
  if (!qword_1000AF8F0)
  {
    sub_10002CC44(&qword_1000AF898, &qword_1000788C8);
    sub_10004FE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF8F0);
  }

  return result;
}

unint64_t sub_10004FE34()
{
  result = qword_1000AF8F8;
  if (!qword_1000AF8F8)
  {
    sub_10002CC44(&qword_1000AF890, &qword_1000788C0);
    sub_10004FEC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF8F8);
  }

  return result;
}

unint64_t sub_10004FEC0()
{
  result = qword_1000AF900;
  if (!qword_1000AF900)
  {
    sub_10002CC44(&qword_1000AF888, &qword_1000788B8);
    sub_10004FF4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF900);
  }

  return result;
}

unint64_t sub_10004FF4C()
{
  result = qword_1000AF908;
  if (!qword_1000AF908)
  {
    sub_10002CC44(&qword_1000AF910, &qword_1000789A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF908);
  }

  return result;
}

uint64_t sub_10004FFF8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000282B4(&qword_1000AF930, &qword_100078B80);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  if (qword_1000B0C10 != -1)
  {
    swift_once();
  }

  v11 = sub_1000503B4(a1);
  v13 = v12;
  swift_beginAccess();
  v14 = qword_1000B0C18;
  if (*(qword_1000B0C18 + 16))
  {
    v15 = sub_10002AC0C(v11, v13);
    v17 = v16;

    if (v17)
    {
      v18 = *(v14 + 56);
      v19 = type metadata accessor for Logger();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v10, v18 + *(v20 + 72) * v15, v19);
      (*(v20 + 56))(v10, 0, 1, v19);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v19 = type metadata accessor for Logger();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
LABEL_8:
  swift_endAccess();
  type metadata accessor for Logger();
  v21 = *(v19 - 8);
  v22 = *(v21 + 48);
  if (v22(v10, 1, v19) == 1)
  {
    sub_1000503B4(a1);
    Logger.init(subsystem:category:)();
    if (v22(v10, 1, v19) != 1)
    {
      sub_100051678(v10);
    }
  }

  else
  {
    (*(v21 + 32))(a2, v10, v19);
  }

  v23 = sub_1000503B4(a1);
  v25 = v24;
  (*(v21 + 16))(v8, a2, v19);
  (*(v21 + 56))(v8, 0, 1, v19);
  swift_beginAccess();
  sub_1000507E0(v8, v23, v25);
  return swift_endAccess();
}

uint64_t sub_1000503B4(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = &_swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100038A94(0, 1, 1, &_swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100038A94((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6369767265534955;
  *(v5 + 5) = 0xE900000000000065;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100038A94(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100038A94((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x7463617265746E49;
    *(v8 + 5) = 0xEB00000000657669;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100038A94(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100038A94((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    strcpy(v11 + 32, "Authorization");
    *(v11 + 23) = -4864;
  }

  sub_1000282B4(&qword_1000AEE08, &qword_100077E30);
  sub_100039A3C();
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

BOOL sub_10005061C(void *a1, uint64_t *a2)
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

void *sub_10005064C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100050678@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100050778@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100051640(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1000507B8()
{
  result = sub_1000516E0(&_swiftEmptyArrayStorage);
  qword_1000B0C18 = result;
  return result;
}

uint64_t sub_1000507E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000282B4(&qword_1000AF930, &qword_100078B80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100051678(a1);
    sub_100050998(a2, a3, v10);

    return sub_100051678(v10);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100051074(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_100050998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10002AC0C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000512A4();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Logger();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_100050E88(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Logger();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_100050B08(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for Logger();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1000282B4(&qword_1000AF938, &qword_100078B88);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
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
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
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
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
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

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
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

unint64_t sub_100050E88(unint64_t result, uint64_t a2)
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
      v19 = *(*(type metadata accessor for Logger() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
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
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100051074(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10002AC0C(a2, a3);
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
      sub_1000512A4();
      goto LABEL_7;
    }

    sub_100050B08(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_10002AC0C(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
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
    v20 = type metadata accessor for Logger();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1000511F4(v12, a2, a3, a1, v18);
}

uint64_t sub_1000511F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Logger();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

char *sub_1000512A4()
{
  v1 = v0;
  v36 = type metadata accessor for Logger();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000282B4(&qword_1000AF938, &qword_100078B88);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}