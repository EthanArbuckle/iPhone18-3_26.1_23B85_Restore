__n128 sub_100001D18(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001D24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001D44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void *sub_100001DF8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_100001E08()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100001E7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100001ED0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001F4C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001FD0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002018()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100002058()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000020C4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100002144@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002170()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1000021F8(uint64_t a1)
{
  v2 = sub_1000022FC(&qword_10009F440, type metadata accessor for ComponentKey);
  v3 = sub_1000022FC(&qword_10009F448, type metadata accessor for ComponentKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000022FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000023D8@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002420(uint64_t a1)
{
  v2 = sub_1000022FC(&qword_10009F430, type metadata accessor for Key);
  v3 = sub_1000022FC(&qword_10009F438, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

__n128 initializeBufferWithCopyOfBuffer for TFComponentClipShape(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TFComponentClipShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TFComponentClipShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100002630(uint64_t a1, unint64_t *a2)
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

double sub_1000026D0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(a1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isInPopoverPresentation))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_hasParentViewController) ^ 1;
  }

  v5 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_useReducedMetrics;
  sub_10006864C(v4 & 1, *(a1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_useReducedMetrics), v40);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = sub_100068C8C(*(a1 + v5), v40);
  v30 = static HorizontalAlignment.center.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  KeyPath = swift_getKeyPath();
  *&v36[23] = v41;
  *&v36[39] = v42;
  *&v36[55] = v43;
  *&v36[71] = v44;
  *&v36[7] = v40;
  type metadata accessor for TextFormattingState();
  sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
  v27 = static ObservableObject.environmentStore.getter();
  v26 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v6 = v40;
  v7 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v40) = 0;
  v16 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v38[2] = v42;
  v38[3] = v43;
  v39 = v44;
  v38[0] = v40;
  v38[1] = v41;
  sub_10000C824(v38);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v42 = v33;
  v43 = v34;
  v44 = v35;
  v40 = v31;
  v41 = v32;
  sub_10000C824(&v40);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v37[7] = v31;
  *&v37[23] = v32;
  *&v37[39] = v33;
  *(a2 + 8) = v29;
  *(a2 + 33) = *&v36[16];
  *(a2 + 49) = *&v36[32];
  *a2 = v30;
  *(a2 + 16) = 0;
  *(a2 + 65) = *&v36[48];
  *(a2 + 80) = *&v36[63];
  *(a2 + 17) = *v36;
  *(a2 + 96) = KeyPath;
  *(a2 + 104) = 0;
  *(a2 + 112) = v27;
  *(a2 + 120) = a1;
  *(a2 + 128) = v26;
  *(a2 + 136) = v6;
  *(a2 + 144) = v7;
  *(a2 + 152) = v9;
  *(a2 + 160) = v11;
  *(a2 + 168) = v13;
  *(a2 + 176) = v15;
  *(a2 + 184) = 0;
  *(a2 + 192) = v16;
  *(a2 + 200) = v18;
  *(a2 + 208) = v20;
  *(a2 + 216) = v22;
  *(a2 + 224) = v24;
  *(a2 + 232) = 0;
  *(a2 + 233) = *v37;
  *(a2 + 249) = *&v37[16];
  result = *&v37[32];
  *(a2 + 265) = *&v37[32];
  *(a2 + 280) = *(&v33 + 1);
  return result;
}

uint64_t sub_100002B64@<X0>(_BYTE *a1@<X8>)
{
  sub_10000C854();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100002C2C(char a1, double a2)
{
  LOBYTE(v3) = a1;
  v5 = [v2 components];
  sub_1000132E4(0, &qword_10009F580);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_196:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = 0;
  while (v8 != v9)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_180;
      }

      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }

    v13 = sub_100005858();

    ++v9;
    v14 = __OFADD__(v10, v13);
    v10 += v13;
    if (v14)
    {
      goto LABEL_181;
    }
  }

  v142 = &_swiftEmptyArrayStorage;
  sub_10000DE74(0, 6, 0);
  v15 = v142;
  v17 = v10 - (v16 & 0xFFFFFFFFFFFFFFFCLL);
  v19 = *(v142 + 2);
  v18 = *(v142 + 3);
  v20 = v18 >> 1;
  v21 = v19 + 1;
  if (v18 >> 1 <= v19)
  {
    sub_10000DE74((v18 > 1), v19 + 1, 1);
    v15 = v142;
    v18 = *(v142 + 3);
    v20 = v18 >> 1;
  }

  *(v15 + 2) = v21;
  v22 = &v15[24 * v19];
  v22[32] = 0;
  *(v22 + 5) = v10 / 4;
  *(v22 + 6) = v17;
  v23 = v19 + 2;
  if (v20 <= v21)
  {
    sub_10000DE74((v18 > 1), v23, 1);
    v15 = v142;
  }

  *(v15 + 2) = v23;
  v24 = &v15[24 * v21];
  v24[32] = 1;
  *(v24 + 5) = v10 / 5;
  *(v24 + 6) = v10 % 5;
  v26 = *(v15 + 2);
  v25 = *(v15 + 3);
  v27 = v26 + 1;
  if (v26 >= v25 >> 1)
  {
    sub_10000DE74((v25 > 1), v26 + 1, 1);
  }

  v28 = v142;
  *(v142 + 2) = v27;
  v29 = &v28[24 * v26];
  *(v29 + 32) = 2;
  *(v29 + 40) = v10 / 6;
  *(v29 + 48) = v10 % 6;
  v30 = v10 - (v29 & 0xFFFFFFFFFFFFFFF8);
  v31 = *(v28 + 3);
  v32 = v26 + 2;
  if (v27 >= v31 >> 1)
  {
    sub_10000DE74((v31 > 1), v32, 1);
    v28 = v142;
  }

  *(v28 + 2) = v32;
  v33 = &v28[24 * v27];
  v33[32] = 3;
  *(v33 + 5) = v10 / 8;
  *(v33 + 6) = v30;
  v35 = *(v28 + 2);
  v34 = *(v28 + 3);
  v36 = v34 >> 1;
  v37 = v35 + 1;
  if (v34 >> 1 <= v35)
  {
    sub_10000DE74((v34 > 1), v35 + 1, 1);
    v28 = v142;
    v34 = *(v142 + 3);
    v36 = v34 >> 1;
  }

  *(v28 + 2) = v37;
  v38 = &v28[24 * v35];
  v38[32] = 4;
  *(v38 + 5) = v10 / 10;
  *(v38 + 6) = v10 % 10;
  v39 = v10 / 12;
  v40 = v10 % 12;
  v41 = v35 + 2;
  if (v36 <= v37)
  {
    sub_10000DE74((v34 > 1), v35 + 2, 1);
  }

  v42 = v142;
  *(v142 + 2) = v41;
  v43 = &v42[24 * v37];
  v43[32] = 5;
  *(v43 + 5) = v39;
  *(v43 + 6) = v40;
  if (*(v42 + 2))
  {
    sub_1000130DC(&qword_10009F5D0);
    v44 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v44 = &_swiftEmptyDictionarySingleton;
  }

  v142 = v44;
  sub_10000C1D4(v42, 1, &v142);
  v6 = v142;
  v45 = *(v142 + 2);
  if (v45)
  {
    v140 = v3;
    v46 = sub_10000C144(v45, 0);
    v39 = sub_100011A94(&v142, (v46 + 32), v45, v6);
    v7 = v142;
    LOBYTE(v3) = v143;

    sub_100013128();
    if (v39 != v45)
    {
      goto LABEL_223;
    }

    LOBYTE(v3) = v140;
  }

  else
  {

    v46 = &_swiftEmptyArrayStorage;
  }

  v142 = v46;
  sub_10000DBF8(&v142);
  if (*(v142 + 2))
  {
    v47 = v142[32];

    v6 = qword_100078038[v47];
    if (v3 <= 1u)
    {
      v49 = 8.0;
      if (!v3)
      {
        if (qword_10009F368 != -1)
        {
          swift_once();
        }

        v49 = 16.0;
        if ((byte_1000A51D8 & 1) == 0)
        {
          if (qword_10009F370 != -1)
          {
            swift_once();
          }

          v49 = 14.0;
          if (byte_1000A51D9 == 1)
          {
            v48 = _UISolariumEnabled() == 0;
            v49 = 8.0;
            v50 = 10.0;
            goto LABEL_37;
          }
        }
      }

      goto LABEL_49;
    }

    if (v3 != 3)
    {
      v49 = 10.0;
      goto LABEL_49;
    }

    if (qword_10009F368 != -1)
    {
      goto LABEL_225;
    }

    while (1)
    {
      v48 = byte_1000A51D8 == 0;
      v49 = 10.0;
      v50 = 16.0;
LABEL_37:
      if (!v48)
      {
        v49 = v50;
      }

LABEL_49:
      a2 = v49 + a2;
      if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
        goto LABEL_204;
      }

      if (a2 <= -9.22337204e18)
      {
        goto LABEL_198;
      }

      if (a2 >= 9.22337204e18)
      {
        goto LABEL_199;
      }

      sub_100068F00(v3);
      if (v3 > 1u)
      {
        break;
      }

      v53 = 8.0;
      if (!v3)
      {
        if (qword_10009F368 != -1)
        {
          v130 = v51;
          swift_once();
          v51 = v130;
        }

        v53 = 16.0;
        if ((byte_1000A51D8 & 1) == 0)
        {
          if (qword_10009F370 != -1)
          {
            v131 = v51;
            swift_once();
            v51 = v131;
          }

          v53 = 14.0;
          if (byte_1000A51D9 == 1)
          {
            v55 = v51;
            v56 = _UISolariumEnabled();
            v51 = v55;
            v52 = v56 == 0;
            v53 = 8.0;
            v54 = 10.0;
LABEL_57:
            if (!v52)
            {
              v53 = v54;
            }
          }
        }
      }

LABEL_69:
      v57 = v51 + v53;
      if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_200;
      }

      if (v57 <= -9.22337204e18)
      {
        goto LABEL_201;
      }

      if (v57 >= 9.22337204e18)
      {
        goto LABEL_202;
      }

      v58 = v57;
      if (!v57)
      {
        goto LABEL_203;
      }

      if (a2 == 0x8000000000000000 && v58 == -1)
      {
        goto LABEL_224;
      }

      if (v3 > 1u)
      {
        if (v3 - 2 >= 2)
        {
          v7 = 8;
        }

        else
        {
          v7 = 4;
        }

        goto LABEL_98;
      }

      v59 = a2 / v58;
      if (v3)
      {
        if (v59 >= 12)
        {
          v7 = 12;
        }

        else
        {
          v7 = a2 / v58;
        }
      }

      else
      {
        v60 = sub_100011E94(v6);
        if (v60 <= 2)
        {
          if (v60)
          {
            if (v60 == 1)
            {
              v61 = 5;
            }

            else
            {
              v61 = 6;
            }
          }

          else
          {
            v61 = 4;
          }

          goto LABEL_95;
        }

        if (v60 <= 4)
        {
          if (v60 == 3)
          {
            v61 = 8;
          }

          else
          {
            v61 = 10;
          }

          goto LABEL_95;
        }

        if (v60 == 5)
        {
          v61 = 12;
LABEL_95:
          if (v61 >= v59)
          {
            v7 = v59;
          }

          else
          {
            v7 = v61;
          }

          goto LABEL_98;
        }

        if (v59 >= 6)
        {
          v7 = 6;
        }

        else
        {
          v7 = v59;
        }
      }

LABEL_98:
      v6 = [v133 components];
      v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v39 >> 62))
      {
        v3 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3)
        {
          goto LABEL_100;
        }

        goto LABEL_205;
      }

LABEL_204:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (v3)
      {
LABEL_100:
        v62 = 0;
        v141 = v39 & 0xC000000000000001;
        v138 = v39 & 0xFFFFFFFFFFFFFF8;
        v63 = &_swiftEmptyArrayStorage;
        v136 = v39;
        v132 = v7;
        v139 = v3;
        while (1)
        {
          if (v141)
          {
            v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v62 >= *(v138 + 16))
            {
              goto LABEL_184;
            }

            v65 = *(v39 + 8 * v62 + 32);
          }

          v6 = v65;
          v66 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_182;
          }

          v68 = v63 + 16;
          v67 = *(v63 + 2);
          if (!v67)
          {
            sub_1000130DC(&qword_10009F5D8);
            v89 = swift_allocObject();
            *(v89 + 16) = xmmword_100077630;
            *(v89 + 32) = v6;
            v6 = v6;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v63 = sub_10000BDBC(0, *(v63 + 2) + 1, 1, v63);
            }

            v91 = *(v63 + 2);
            v90 = *(v63 + 3);
            if (v91 >= v90 >> 1)
            {
              v63 = sub_10000BDBC((v90 > 1), v91 + 1, 1, v63);
            }

            *(v63 + 2) = v91 + 1;
            v92 = &v63[16 * v91];
            *(v92 + 4) = 0;
            *(v92 + 5) = v89;
            goto LABEL_103;
          }

          v69 = &v68[2 * v67];
          v70 = *v69;
          v3 = v69[1];

          v71 = sub_100005858();
          v72 = sub_100004AA8(v70, v3);
          if (__OFADD__(v72, v71))
          {
            goto LABEL_183;
          }

          if (v7 < v72 + v71)
          {
            break;
          }

          v93 = *(v63 + 2);
          v6 = v6;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v3 = v139;
            if (!v93)
            {
              goto LABEL_185;
            }
          }

          else
          {
            v63 = sub_10000E4EC(v63);
            v3 = v139;
            if (!v93)
            {
              goto LABEL_185;
            }
          }

          if (v93 > *(v63 + 2))
          {
            goto LABEL_186;
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v63[16 * v93 + 24] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v63[16 * v93 + 24] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_103:
          ++v62;
          if (v66 == v3)
          {
            goto LABEL_206;
          }
        }

        v73 = v72;
        if (!(v3 >> 62))
        {
          v74 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v74)
          {
            goto LABEL_114;
          }

LABEL_149:

          v105 = *(v63 + 2);
          sub_1000130DC(&qword_10009F5D8);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_100077630;
          *(v106 + 32) = v6;
          v6 = v6;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_10000BDBC(0, *(v63 + 2) + 1, 1, v63);
          }

          v3 = v139;
          v108 = *(v63 + 2);
          v107 = *(v63 + 3);
          if (v108 >= v107 >> 1)
          {
            v63 = sub_10000BDBC((v107 > 1), v108 + 1, 1, v63);
          }

          *(v63 + 2) = v108 + 1;
          v64 = &v63[16 * v108];
          *(v64 + 4) = v105;
          *(v64 + 5) = v106;
LABEL_102:
          v39 = v136;
          goto LABEL_103;
        }

        v74 = _CocoaArrayWrapper.endIndex.getter();
        if (!v74)
        {
          goto LABEL_149;
        }

LABEL_114:
        v75 = v74 - 1;
        if (__OFSUB__(v74, 1))
        {
          goto LABEL_187;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {

          v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v75 & 0x8000000000000000) != 0)
          {
            goto LABEL_188;
          }

          if (v75 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_190;
          }

          v76 = *(v3 + 8 * v75 + 32);
        }

        v137 = v76;
        v77 = sub_100005858();
        v14 = __OFSUB__(v73, v77);
        v78 = v73 - v77;
        if (v14)
        {
          goto LABEL_189;
        }

        if (sub_100005858() >= v78)
        {
          goto LABEL_148;
        }

        v134 = [v6 componentKey];
        v7 = [v133 components];
        v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;
        if (v79 >> 62)
        {
          v81 = _CocoaArrayWrapper.endIndex.getter();
          if (!v81)
          {
LABEL_226:

            __break(1u);
            goto LABEL_227;
          }
        }

        else
        {
          v81 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v81)
          {
            goto LABEL_226;
          }
        }

        v82 = v81 - 1;
        if (__OFSUB__(v81, 1))
        {
          goto LABEL_191;
        }

        if ((v80 & 0xC000000000000001) != 0)
        {
          v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_192;
          }

          if (v82 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_193;
          }

          v83 = *(v80 + 8 * v82 + 32);
        }

        v84 = v83;

        v85 = [v84 componentKey];

        v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v87;
        if (v86 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v88)
        {

          goto LABEL_143;
        }

        v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v7 = v132;
        if ((v94 & 1) == 0)
        {
LABEL_148:

          goto LABEL_149;
        }

LABEL_143:
        if (!*v68)
        {
          goto LABEL_194;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v95 = *(v63 + 2);
          if (!v95)
          {
            goto LABEL_195;
          }
        }

        else
        {
          v63 = sub_10000E4EC(v63);
          v95 = *(v63 + 2);
          if (!v95)
          {
            goto LABEL_195;
          }
        }

        *(v63 + 2) = v95 - 1;

        v96 = *(v63 + 2);
        v97 = sub_100011EB8(1, v3);
        v99 = v98;
        v101 = v100;
        v7 = v102;

        if ((v7 & 1) == 0)
        {
LABEL_147:
          sub_10000DC78(v97, v99, v101, v7, &qword_10009F580);
          v104 = v103;
          goto LABEL_159;
        }

        v135 = v96;
        LOBYTE(v3) = type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v109 = swift_dynamicCastClass();
        if (!v109)
        {
          swift_unknownObjectRelease();
          v109 = &_swiftEmptyArrayStorage;
        }

        v39 = v109[2];

        if (__OFSUB__(v7 >> 1, v101))
        {
          goto LABEL_222;
        }

        if (v39 != (v7 >> 1) - v101)
        {
          swift_unknownObjectRelease();
          v96 = v135;
          goto LABEL_147;
        }

        v104 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v96 = v135;
        if (!v104)
        {
          v104 = &_swiftEmptyArrayStorage;
LABEL_159:
          swift_unknownObjectRelease();
        }

        v111 = *(v63 + 2);
        v110 = *(v63 + 3);
        v112 = v111 + 1;
        if (v111 >= v110 >> 1)
        {
          v63 = sub_10000BDBC((v110 > 1), v111 + 1, 1, v63);
        }

        *(v63 + 2) = v112;
        v113 = &v63[16 * v111];
        *(v113 + 4) = v96;
        *(v113 + 5) = v104;
        sub_1000130DC(&qword_10009F5D8);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_100077620;
        *(v114 + 32) = v137;
        *(v114 + 40) = v6;
        v115 = *(v63 + 2);
        v116 = *(v63 + 3);
        v117 = v137;
        v118 = v6;
        if (v115 >= v116 >> 1)
        {
          v6 = v118;
          v63 = sub_10000BDBC((v116 > 1), v115 + 1, 1, v63);
          v118 = v6;
        }

        v3 = v139;

        *(v63 + 2) = v115 + 1;
        v119 = &v63[16 * v115];
        *(v119 + 4) = v112;
        *(v119 + 5) = v114;
        v7 = v132;
        goto LABEL_102;
      }

LABEL_205:
      v63 = &_swiftEmptyArrayStorage;
LABEL_206:

      v120 = 0;
      v39 = *(v63 + 2);
      v7 = (v63 + 40);
      v6 = &_swiftEmptyArrayStorage;
LABEL_207:
      v121 = (v7 + 16 * v120);
      while (1)
      {
        if (v39 == v120)
        {

          return v6;
        }

        if (v120 >= *(v63 + 2))
        {
          break;
        }

        v123 = *(v121 - 1);
        v122 = *v121;
        if (*v121 >> 62)
        {
          v124 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v124 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v120;
        v121 += 2;
        if (v124)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v142 = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10000DE54(0, *(v6 + 16) + 1, 1);
            v6 = v142;
          }

          v3 = *(v6 + 16);
          v126 = *(v6 + 24);
          if (v3 >= v126 >> 1)
          {
            sub_10000DE54((v126 > 1), v3 + 1, 1);
            v6 = v142;
          }

          *(v6 + 16) = v3 + 1;
          v127 = v6 + 16 * v3;
          *(v127 + 32) = v123;
          *(v127 + 40) = v122;
          goto LABEL_207;
        }
      }

      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      swift_once();
    }

    if (v3 != 3)
    {
      v53 = 10.0;
      goto LABEL_69;
    }

    if (qword_10009F368 != -1)
    {
      v129 = v51;
      swift_once();
      v51 = v129;
    }

    v52 = byte_1000A51D8 == 0;
    v53 = 10.0;
    v54 = 16.0;
    goto LABEL_57;
  }

LABEL_227:

  __break(1u);
  swift_unexpectedError();
  __break(1u);

  __break(1u);
  return result;
}

char *sub_100003D98(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

LABEL_26:
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  v3 = 0;
  v23 = &_swiftEmptyArrayStorage;
  do
  {
    for (i = v3; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(v25 + 16))
        {
          goto LABEL_25;
        }

        v5 = *(a1 + 8 * i + 32);
      }

      v6 = v5;
      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v7 = [v5 components];
      sub_1000132E4(0, &qword_10009F580);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v9)
      {
        v10 = [v6 identifier];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        LOBYTE(v10) = sub_10000F868(&v24, v11, v13);

        if (v10)
        {
          break;
        }
      }

      if (v3 == v2)
      {
        return v23;
      }
    }

    v14 = [v6 identifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_10000BA64(0, *(v23 + 2) + 1, 1, v23);
    }

    v20 = *(v23 + 2);
    v19 = *(v23 + 3);
    if (v20 >= v19 >> 1)
    {
      v23 = sub_10000BA64((v19 > 1), v20 + 1, 1, v23);
    }

    *(v23 + 2) = v20 + 1;
    v21 = &v23[16 * v20];
    *(v21 + 4) = v15;
    *(v21 + 5) = v17;
  }

  while (v3 != v2);
  return v23;
}

BOOL sub_100004028(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v4 = *(a2 + 8);
  v5 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  if ((sub_10000B514(*a1, *a2) & 1) == 0 || (sub_10000B758(v2, v4) & 1) == 0)
  {
    return 0;
  }

  v6 = static EdgeInsets.== infix(_:_:)();
  result = 0;
  if ((v6 & 1) != 0 && ((v3 ^ v5) & 1) == 0)
  {
    return v11 == v9 && v10 == v8;
  }

  return result;
}

uint64_t sub_10000411C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 48);
  if (*(*a2 + 16) && (v7 = sub_10000C53C(*a1, a1[1]), (v8 & 1) != 0))
  {
    v9 = *(*(v5 + 56) + 8 * v7);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v10 = sub_10000A468(*(a2 + 72), *(a2 + 80));
  v11 = sub_100068C8C(v6 & 1, v10);
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = v11;
  *(a3 + 16) = 0;
  sub_1000130DC(&qword_10009F710);
  v17 = v9;
  v12 = swift_allocObject();
  v13 = *(a2 + 48);
  *(v12 + 48) = *(a2 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(a2 + 64);
  *(v12 + 96) = *(a2 + 80);
  v14 = *(a2 + 16);
  *(v12 + 16) = *a2;
  *(v12 + 32) = v14;
  sub_100013A6C(a2, v16);
  sub_1000130DC(&qword_10009F718);
  sub_1000130DC(&qword_10009F720);
  sub_100015A00(&qword_10009F728, &qword_10009F718);
  sub_100013AF8();
  sub_100013C3C();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000042DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000130DC(&qword_10009F750);
  __chkstk_darwin();
  v7 = &v73 - v6;
  v8 = sub_1000130DC(&qword_10009F740);
  __chkstk_darwin();
  v10 = &v73 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = sub_10000A468(v13, *(a2 + 80));
  if (v15 > 1)
  {
    if (v15 != 3)
    {
      v19 = 10.0;
      goto LABEL_18;
    }

    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v16 = byte_1000A51D8 == 0;
    v17 = 10.0;
    v18 = 16.0;
    goto LABEL_6;
  }

  v19 = 8.0;
  if (!v15)
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v19 = 16.0;
    if ((byte_1000A51D8 & 1) == 0)
    {
      if (qword_10009F370 != -1)
      {
        swift_once();
      }

      v19 = 14.0;
      if (byte_1000A51D9 == 1)
      {
        v16 = _UISolariumEnabled() == 0;
        v17 = 8.0;
        v18 = 10.0;
LABEL_6:
        if (v16)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }
      }
    }
  }

LABEL_18:
  v20 = *(a2 + 56);
  v21 = sub_100004AA8(v11, v12);
  if (__OFSUB__(v21, 1))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v76 = v21 - 1;
  v81 = v7;
  v75 = sub_100004AA8(v11, v12);
  v83 = a3;
  v82 = v10;
  v80 = v8;
  v79 = a2;
  v78 = v13;
  v77 = v14;
  if (v12 >> 62)
  {
LABEL_57:
    v85 = v12 & 0xFFFFFFFFFFFFFF8;
    v23 = _CocoaArrayWrapper.endIndex.getter();
    v22 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_21;
  }

  v85 = v12 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = v22;
LABEL_21:
  v24 = 0;
  v74 = v23;
  v84 = v23 == 1;
  v25 = v12 & 0xC000000000000001;
  while (1)
  {
    if (v22 == v24)
    {
      v84 = 0;
      goto LABEL_36;
    }

    if (v25)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v85 + 16))
      {
        goto LABEL_55;
      }

      v26 = *(v12 + 8 * v24 + 32);
    }

    v27 = v26;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v28 = v12;
    v29 = [v26 componentKey];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
    {
      break;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v24;
    v12 = v28;
    if (v35)
    {
      goto LABEL_36;
    }
  }

  v12 = v28;
LABEL_36:
  v36 = sub_10000A468(v78, v77);
  v37 = v81;
  v38 = v74;
  if (v36 > 1)
  {
    if (v36 != 3)
    {
      v42 = 10.0;
      goto LABEL_53;
    }

    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v39 = byte_1000A51D8 == 0;
    v40 = 10.0;
    v41 = 16.0;
    goto LABEL_41;
  }

  v42 = 8.0;
  if (!v36)
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v42 = 16.0;
    if ((byte_1000A51D8 & 1) == 0)
    {
      if (qword_10009F370 != -1)
      {
        swift_once();
      }

      v42 = 14.0;
      if (byte_1000A51D9 == 1)
      {
        v39 = _UISolariumEnabled() == 0;
        v40 = 8.0;
        v41 = 10.0;
LABEL_41:
        if (v39)
        {
          v42 = v40;
        }

        else
        {
          v42 = v41;
        }
      }
    }
  }

LABEL_53:
  v43 = !v84;
  v44 = (v20 - v19 * v76) / v75;
  *v37 = static VerticalAlignment.center.getter();
  *(v37 + 8) = v42;
  *(v37 + 16) = 0;
  v85 = *(sub_1000130DC(&qword_10009F760) + 44);
  v87 = sub_100011BF8(v12);
  swift_getKeyPath();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  v46 = v79;
  v47 = *(v79 + 48);
  *(v45 + 56) = *(v79 + 32);
  *(v45 + 72) = v47;
  *(v45 + 88) = *(v46 + 64);
  v48 = *(v46 + 16);
  *(v45 + 24) = *v46;
  *(v45 + 104) = *(v46 + 80);
  *(v45 + 40) = v48;
  *(v45 + 105) = v43;
  *(v45 + 106) = v38 == 1;
  sub_100013A6C(v46, v86);
  sub_1000130DC(&qword_10009F768);
  sub_1000130DC(&qword_10009F770);
  sub_100015A00(&qword_10009F778, &qword_10009F768);
  sub_10001454C(&qword_10009F780, &qword_10009F770, &unk_100077C38, sub_100013CF0);
  ForEach<>.init(_:id:content:)();
  v49 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v82;
  sub_10001471C(v37, v82, &qword_10009F750);
  v59 = v58 + *(v80 + 36);
  *v59 = v49;
  *(v59 + 8) = v51;
  *(v59 + 16) = v53;
  *(v59 + 24) = v55;
  *(v59 + 32) = v57;
  *(v59 + 40) = 0;
  v60 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v58;
  v70 = v83;
  sub_10001471C(v69, v83, &qword_10009F740);
  result = sub_1000130DC(&qword_10009F720);
  v72 = v70 + *(result + 36);
  *v72 = v60;
  *(v72 + 8) = v62;
  *(v72 + 16) = v64;
  *(v72 + 24) = v66;
  *(v72 + 32) = v68;
  *(v72 + 40) = 0;
  return result;
}

uint64_t sub_100004AA8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 0;
  while (v4 != v5)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = sub_100005858();

    ++v5;
    v10 = __OFADD__(v6, v9);
    v6 += v9;
    if (v10)
    {
      goto LABEL_16;
    }
  }

  return v6;
}

double sub_100004B7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a1 + 8);
  v14 = sub_10000A468(v11, v12);
  v15 = sub_100004E54(v14, a6);
  v17 = v16;
  v18 = 0.0;
  if ((a3 & 1) == 0)
  {
    v18 = *(a2 + 24) + *(a2 + 40);
  }

  if (v17 < 1)
  {

    sub_100014270(&v45);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
    v19 = EnvironmentObject.init()();
    v31 = v20;
    v32 = v19;
    KeyPath = swift_getKeyPath();
    v29 = swift_getKeyPath();
    v21 = v13;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v22 = [v21 componentKey];

    LOBYTE(v45) = 0;
    *&v33 = v32;
    *(&v33 + 1) = v31;
    *&v34 = KeyPath;
    WORD4(v34) = 0;
    *&v35 = v29;
    BYTE8(v35) = 0;
    *&v36 = v21;
    *(&v39 + 1) = v22;
    *&v40 = swift_getKeyPath();
    *(&v40 + 1) = v17;
    LOBYTE(v41) = 0;
    *(&v41 + 1) = swift_getKeyPath();
    *&v42 = v15 + v18;
    *(&v42 + 1) = swift_getKeyPath();
    *&v43 = a6;
    *(&v43 + 1) = swift_getKeyPath();
    v44 = a4 & 1;
    nullsub_1(&v33);
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v52 = v40;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v48 = v36;
  }

  v23 = v54;
  *(a5 + 128) = v53;
  *(a5 + 144) = v23;
  *(a5 + 160) = v55;
  *(a5 + 176) = v56;
  v24 = v50;
  *(a5 + 64) = v49;
  *(a5 + 80) = v24;
  v25 = v52;
  *(a5 + 96) = v51;
  *(a5 + 112) = v25;
  v26 = v46;
  *a5 = v45;
  *(a5 + 16) = v26;
  result = *&v47;
  v28 = v48;
  *(a5 + 32) = v47;
  *(a5 + 48) = v28;
  return result;
}

double sub_100004E54(unsigned __int8 a1, double a2)
{
  v4 = sub_100005858();
  if (a1 <= 1u)
  {
    v8 = 8.0;
    if (!a1)
    {
      if (qword_10009F368 != -1)
      {
        swift_once();
      }

      v8 = 16.0;
      if ((byte_1000A51D8 & 1) == 0)
      {
        if (qword_10009F370 != -1)
        {
          swift_once();
        }

        v8 = 14.0;
        if (byte_1000A51D9 == 1)
        {
          v5 = _UISolariumEnabled() == 0;
          v6 = 8.0;
          v7 = 10.0;
          goto LABEL_5;
        }
      }
    }

    goto LABEL_17;
  }

  if (a1 != 3)
  {
    v8 = 10.0;
    goto LABEL_17;
  }

  if (qword_10009F368 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v5 = byte_1000A51D8 == 0;
    v6 = 10.0;
    v7 = 16.0;
LABEL_5:
    v8 = v5 ? v6 : v7;
LABEL_17:
    v9 = sub_100005858();
    if (!__OFSUB__(v9, 1))
    {
      break;
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v10 = v4 * a2 + v8 * (v9 - 1);
  sub_100013130(a1, v10);
  return v10;
}

uint64_t sub_100004FD4@<X0>(uint64_t a1@<X8>)
{
  sub_100014390();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

double sub_100005080@<D0>(double *a1@<X8>)
{
  sub_10001433C();
  EnvironmentValues.subscript.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10000511C@<X0>(_BYTE *a1@<X8>)
{
  sub_100014294();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000051B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000130DC(&qword_10009F6E8);
  __chkstk_darwin();
  v6 = &KeyPath - v5;
  v7 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v20 = v7;
  v21 = *(v1 + 64);
  v22 = *(v1 + 80);
  v9 = *v1;
  v8 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v8;
  v9.n128_u64[0] = *(&v20 + 1);
  if (*(&v20 + 1) <= 0.0)
  {
    v14 = *(v4 + 56);

    return v14(a1, 1, 1, v3, v9);
  }

  else
  {
    v23 = *(&v19[0] + 1);
    v18 = *(&v19[0] + 1);
    v16 = v4;
    KeyPath = swift_getKeyPath();
    v10 = swift_allocObject();
    v11 = *(v1 + 48);
    *(v10 + 48) = *(v1 + 32);
    *(v10 + 64) = v11;
    *(v10 + 80) = *(v1 + 64);
    *(v10 + 96) = *(v1 + 80);
    v12 = *(v1 + 16);
    *(v10 + 16) = *v1;
    *(v10 + 32) = v12;
    sub_100015AC0(&v23, v17, &qword_10009F6F0);
    sub_100013A6C(v19, v17);
    sub_1000130DC(&qword_10009F6F0);
    sub_1000130DC(&qword_10009F6F8);
    sub_100015A00(&qword_10009F700, &qword_10009F6F0);
    sub_100015A00(&qword_10009F708, &qword_10009F6F8);
    ForEach<>.init(_:id:content:)();
    (*(v16 + 32))(a1, v6, v3);
    return (*(v16 + 56))(a1, 0, 1, v3);
  }
}

double sub_1000054A0(unsigned __int8 a1, uint64_t a2)
{
  if (qword_10009F370 != -1)
  {
    v19 = a1;
    swift_once();
    a1 = v19;
  }

  if (byte_1000A51D9 == 1)
  {
    v3 = _UISolariumEnabled();
    v4 = 35.0;
    if (!v3)
    {
      v4 = 30.0;
    }

    return v4 * a2;
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      *&v17 = 44.0;
    }

    else
    {
      if (qword_10009F368 != -1)
      {
        swift_once();
      }

      if (byte_1000A51D8)
      {
        *&v17 = 50.0;
      }

      else
      {
        if (byte_1000A51D9 == 1)
        {
          v5 = _UISolariumEnabled() == 0;
          v4 = 22.0;
          v6 = 24.0;
LABEL_12:
          if (!v5)
          {
            v4 = v6;
          }

          return v4 * a2;
        }

        *&v17 = 45.0;
      }
    }

    v4 = *&v17;
    return v4 * a2;
  }

  if (a1 == 3)
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v5 = byte_1000A51D8 == 0;
    v4 = 44.0;
    v6 = 50.0;
    goto LABEL_12;
  }

  v7 = [objc_opt_self() mainScreen];
  [v7 _referenceBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v16 = CGRectGetHeight(v20) > 667.0;
  v4 = 50.0;
  if (!v16)
  {
    v4 = 45.0;
  }

  return v4 * a2;
}

__n128 sub_100005758(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10000577C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000057C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005858()
{
  if ([v0 preferredSize])
  {
    v1 = [v0 preferredSize];
  }

  else
  {
    v1 = sub_1000059FC();
  }

  v2 = v1;
  sub_1000130DC(&qword_10009F608);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077640;

  *(inited + 32) = 1;
  *(inited + 40) = v2;
  v4 = sub_100011DE8(inited);
  swift_setDeallocating();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_10000C0C0(*(v4 + 16), 0);
    v7 = sub_100011994(&v11, v6 + 4, v5, v4);

    sub_100013128();
    if (v7 != v5)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {

    v6 = &_swiftEmptyArrayStorage;
  }

  v11 = v6;
  sub_10000DAC0(&v11);
  v8 = *(v11 + 2);
  if (v8)
  {
    v9 = *&v11[8 * v8 + 24];

    return v9;
  }

LABEL_11:

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000059FC()
{
  v1 = [v0 componentKey];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return 5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {

    return 5;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

    return 4;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {

    return 4;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    goto LABEL_18;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_20;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    goto LABEL_23;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_25;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {
    goto LABEL_18;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_20:

    return 3;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {
    goto LABEL_31;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_33;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {
LABEL_31:

    return 1;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
    goto LABEL_33;
  }

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;
  if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
  {
    goto LABEL_23;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v44)
  {
    goto LABEL_25;
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;
  if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v47 == v48)
  {
    goto LABEL_31;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v49)
  {
    goto LABEL_33;
  }

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;
  if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
  {
LABEL_18:

    return 3;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v54)
  {
    goto LABEL_20;
  }

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;
  if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
  {
    goto LABEL_23;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v59)
  {
    goto LABEL_25;
  }

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;
  if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
  {
    goto LABEL_31;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v64)
  {
    goto LABEL_33;
  }

  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;
  if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
  {
    goto LABEL_23;
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v69)
  {
    goto LABEL_25;
  }

  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;
  if (v70 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v72 == v73)
  {
    goto LABEL_31;
  }

  v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v74)
  {
LABEL_33:

    return 1;
  }

  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;
  if (v75 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v77 == v78)
  {
    goto LABEL_23;
  }

  v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v79)
  {
LABEL_25:

    return 2;
  }

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;
  if (v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83)
  {
    goto LABEL_31;
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v84)
  {
    goto LABEL_33;
  }

  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v86;
  if (v85 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v87 == v88)
  {
LABEL_23:

    return 2;
  }

  v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v89)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1000061A8@<X0>(uint64_t a1@<X8>)
{
  sub_1000130DC(&qword_10009F840);
  __chkstk_darwin();
  v4 = v12 - v3;
  sub_1000063A0(v12 - v3);
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v5 = v12[1];
    v6 = [*(v1 + 48) componentKey];
    v7 = sub_100009D7C(v6, v5);

    KeyPath = swift_getKeyPath();
    v9 = swift_allocObject();
    *(v9 + 16) = v7 & 1;
    sub_10001471C(v4, a1, &qword_10009F840);
    result = sub_1000130DC(&qword_10009F848);
    v11 = (a1 + *(result + 36));
    *v11 = KeyPath;
    v11[1] = sub_100014704;
    v11[2] = v9;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000063A0@<X0>(uint64_t a1@<X8>)
{
  v284 = a1;
  v264[1] = sub_1000130DC(&qword_10009F850);
  __chkstk_darwin();
  v265 = (v264 - v2);
  v272 = sub_1000130DC(&qword_10009F858);
  __chkstk_darwin();
  v266 = v264 - v3;
  v268 = type metadata accessor for TFTextAlignmentControl();
  __chkstk_darwin();
  v267 = v264 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_1000130DC(&qword_10009F860);
  __chkstk_darwin();
  v271 = v264 - v5;
  sub_1000130DC(&qword_10009F868);
  __chkstk_darwin();
  v7 = (v264 - v6);
  v270 = sub_1000130DC(&qword_10009F870);
  __chkstk_darwin();
  v9 = v264 - v8;
  v275 = sub_1000130DC(&qword_10009F878);
  __chkstk_darwin();
  v273 = v264 - v10;
  v280 = sub_1000130DC(&qword_10009F880);
  __chkstk_darwin();
  v283 = (v264 - v11);
  v277 = sub_1000130DC(&qword_10009F888);
  __chkstk_darwin();
  v279 = v264 - v12;
  v274 = sub_1000130DC(&qword_10009F890);
  __chkstk_darwin();
  v14 = (v264 - v13);
  v278 = sub_1000130DC(&qword_10009F898);
  __chkstk_darwin();
  v276 = v264 - v15;
  v282 = sub_1000130DC(&qword_10009F8A0);
  __chkstk_darwin();
  v281 = v264 - v16;
  v17 = *(v1 + 48);
  v18 = [v17 componentKey];
  v19 = UITextFormattingViewControllerComponentKey._parentComponentKey.getter();

  if (!v19)
  {
    v19 = [v17 componentKey];
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v22 != v23)
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {

      goto LABEL_8;
    }

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
    {

LABEL_18:
      type metadata accessor for TextFormattingState();
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
      v39 = EnvironmentObject.init()();
      v273 = v39;
      v41 = v40;
      KeyPath = swift_getKeyPath();
      v43 = swift_getKeyPath();
      v44 = swift_getKeyPath();
      v305 = 0;
      v304 = 0;
      v303 = 0;
      LOBYTE(v306[0]) = 1;
      v296.n128_u64[0] = v39;
      v296.n128_u64[1] = v41;
      v297.n128_u64[0] = KeyPath;
      v272 = KeyPath;
      v297.n128_u16[4] = 0;
      v298.n128_u64[0] = v43;
      v298.n128_u8[8] = 0;
      *&v299[0] = v44;
      BYTE8(v299[0]) = 0;
      BYTE8(v300[1]) = 1;
      sub_100014AE8();
      sub_100014B3C();

      _ConditionalContent<>.init(storage:)();
      v293[1] = v288[1];
      *v294 = v289[0];
      *&v294[9] = *(v289 + 9);
      v290 = v285;
      v291 = v286;
      v292 = v287;
      v293[0] = v288[0];
      v308.n128_u8[0] = 0;
      v295 = 0;
      sub_1000130DC(&qword_10009F900);
      sub_1000130DC(&qword_10009F920);
      sub_100014A5C();
      sub_100014B90();
      _ConditionalContent<>.init(storage:)();
      v45 = v300[0];
      v14[4] = v299[1];
      v14[5] = v45;
      *(v14 + 90) = *(v300 + 10);
      v46 = v297;
      *v14 = v296;
      v14[1] = v46;
      v47 = v299[0];
      v14[2] = v298;
      v14[3] = v47;
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0);
      sub_1000149D0();
      sub_100014CC4();
      v48 = v276;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v48, v279, &qword_10009F898);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968);
      sub_100014944();
      sub_100014F64();
      v49 = v281;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v48, &qword_10009F898);
      sub_100015AC0(v49, v283, &qword_10009F8A0);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();

      v31 = v49;
      v32 = &qword_10009F8A0;
      return sub_1000156F8(v31, v32);
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {

      goto LABEL_18;
    }

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;
    if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
    {

LABEL_24:
      type metadata accessor for TextFormattingState();
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
      v55 = EnvironmentObject.init()();
      v57 = v56;
      v58 = swift_getKeyPath();
      v59 = swift_getKeyPath();
      LOBYTE(v306[0]) = 0;
      v305 = 0;
      v304 = 0;
      v296.n128_u64[0] = v55;
      v296.n128_u64[1] = v57;
      v273 = v55;
      v297.n128_u64[0] = v58;
      v297.n128_u16[4] = 0;
      v298.n128_u64[0] = v59;
      v298.n128_u8[8] = 0;
      BYTE1(v300[0]) = 0;
      sub_100014C1C();
      sub_100014C70();

      _ConditionalContent<>.init(storage:)();
      v292 = v287;
      v293[0] = v288[0];
      v293[1] = v288[1];
      *v294 = v289[0];
      v290 = v285;
      v291 = v286;
      v308.n128_u8[0] = 1;
      v295 = 1;
      sub_1000130DC(&qword_10009F900);
      sub_1000130DC(&qword_10009F920);
      sub_100014A5C();
      sub_100014B90();
      _ConditionalContent<>.init(storage:)();
      v60 = v300[0];
      v14[4] = v299[1];
      v14[5] = v60;
      *(v14 + 90) = *(v300 + 10);
      v61 = v297;
      *v14 = v296;
      v14[1] = v61;
      v62 = v299[0];
      v14[2] = v298;
      v14[3] = v62;
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0);
      sub_1000149D0();
      sub_100014CC4();
      v63 = v276;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v63, v279, &qword_10009F898);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968);
      sub_100014944();
      sub_100014F64();
      v64 = v281;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v63, &qword_10009F898);
      sub_100015AC0(v64, v283, &qword_10009F8A0);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();

      v31 = v64;
      v32 = &qword_10009F8A0;
      return sub_1000156F8(v31, v32);
    }

    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v54)
    {

      goto LABEL_24;
    }

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
    if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
    {

LABEL_30:
      type metadata accessor for TextFormattingState();
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
      v70 = EnvironmentObject.init()();
      v72 = v71;
      v73 = swift_getKeyPath();
      v296.n128_u8[0] = 0;
      v74 = swift_getKeyPath();
      v290.n128_u8[0] = 0;
      v75 = swift_getKeyPath();
      v285.n128_u8[0] = 0;
      v76 = swift_getKeyPath();
      LOBYTE(v306[0]) = 0;
      v308.n128_u8[0] = 0;
      v308.n128_u64[1] = v70;
      v309.n128_u64[0] = v72;
      v309.n128_u64[1] = v73;
      v310.n128_u8[0] = 0;
      v310.n128_u8[1] = v296.n128_u8[0];
      v310.n128_u64[1] = v74;
      v311[0] = v290.n128_u8[0];
      *&v311[8] = v75;
      v311[16] = v285.n128_u8[0];
      *&v311[24] = v76;
      LOBYTE(v312) = 0;
      v298 = v310;
      v299[0] = *v311;
      v299[1] = *&v311[16];
      LOWORD(v300[0]) = 256;
      v296 = v308;
      v297 = v309;
      v305 = 1;
      sub_100015758(&v308, &v290);
      sub_100014C1C();
      sub_100014C70();
      _ConditionalContent<>.init(storage:)();
      v292 = v287;
      v293[0] = v288[0];
      v293[1] = v288[1];
      *v294 = v289[0];
      v290 = v285;
      v291 = v286;
      LOBYTE(v306[0]) = 1;
      v295 = 1;
      sub_1000130DC(&qword_10009F900);
      sub_1000130DC(&qword_10009F920);
      sub_100014A5C();
      sub_100014B90();
      _ConditionalContent<>.init(storage:)();
      v77 = v300[0];
      v14[4] = v299[1];
      v14[5] = v77;
      *(v14 + 90) = *(v300 + 10);
      v78 = v297;
      *v14 = v296;
      v14[1] = v78;
      v79 = v299[0];
      v14[2] = v298;
      v14[3] = v79;
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0);
      sub_1000149D0();
      sub_100014CC4();
      v80 = v276;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v80, v279, &qword_10009F898);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968);
      sub_100014944();
      sub_100014F64();
      v29 = v281;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v80, &qword_10009F898);
      v30 = &qword_10009F8A0;
      sub_100015AC0(v29, v283, &qword_10009F8A0);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();
      v81 = &v308;
LABEL_31:
      sub_1000157B4(v81);
      goto LABEL_9;
    }

    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v69)
    {

      goto LABEL_30;
    }

    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;
    if (v82 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v84 == v85)
    {

LABEL_37:
      type metadata accessor for TextFormattingState();
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
      v87 = EnvironmentObject.init()();
      v89 = v88;
      v90 = swift_getKeyPath();
      v91 = swift_getKeyPath();
      v92 = swift_getKeyPath();
      v93 = swift_getKeyPath();
      v296.n128_u8[0] = 1;
      v296.n128_u64[1] = v87;
      v297.n128_u64[0] = v89;
      v297.n128_u64[1] = v90;
      v298.n128_u16[0] = 0;
      v298.n128_u64[1] = v91;
      LOBYTE(v299[0]) = 0;
      *(&v299[0] + 1) = v92;
      LOBYTE(v299[1]) = 0;
      *(&v299[1] + 1) = v93;
      LOBYTE(v300[0]) = 0;
      v7[5].n128_u8[0] = 0;
      v94 = v299[0];
      v7[2] = v298;
      v7[3] = v94;
      v7[4] = v299[1];
      v95 = v297;
      *v7 = v296;
      v7[1] = v95;
      swift_storeEnumTagMultiPayload();
      sub_100015758(&v296, &v290);
      sub_100014C70();
      sub_100014E0C(&qword_10009F948, type metadata accessor for TFTextAlignmentControl);
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v9, v271, &qword_10009F870);
      swift_storeEnumTagMultiPayload();
      sub_100014D50();
      sub_100014E54();
      v96 = v273;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v9, &qword_10009F870);
      sub_100015AC0(v96, v14, &qword_10009F878);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0);
      sub_1000149D0();
      sub_100014CC4();
      v97 = v276;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v96, &qword_10009F878);
      sub_100015AC0(v97, v279, &qword_10009F898);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968);
      sub_100014944();
      sub_100014F64();
      v29 = v281;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v97, &qword_10009F898);
      v30 = &qword_10009F8A0;
      sub_100015AC0(v29, v283, &qword_10009F8A0);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();
      v81 = &v296;
      goto LABEL_31;
    }

    v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v86)
    {

      goto LABEL_37;
    }

    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;
    if (v98 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v100 == v101)
    {

LABEL_43:
      v103 = v267;
      *v267 = 0;
      type metadata accessor for TextFormattingState();
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
      *(v103 + 8) = EnvironmentObject.init()();
      *(v103 + 16) = v104;
      *(v103 + 24) = swift_getKeyPath();
      *(v103 + 32) = 0;
      v105 = v268;
      v106 = *(v268 + 28);
      *(v103 + v106) = swift_getKeyPath();
      sub_1000130DC(&qword_10009FA00);
      swift_storeEnumTagMultiPayload();
      v107 = v103 + *(v105 + 32);
      *v107 = swift_getKeyPath();
      *(v107 + 8) = 0;
      sub_100015638(v103, v7);
      swift_storeEnumTagMultiPayload();
      sub_100014C70();
      sub_100014E0C(&qword_10009F948, type metadata accessor for TFTextAlignmentControl);
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v9, v271, &qword_10009F870);
      swift_storeEnumTagMultiPayload();
      sub_100014D50();
      sub_100014E54();
      v108 = v273;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v9, &qword_10009F870);
      sub_100015AC0(v108, v14, &qword_10009F878);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0);
      sub_1000149D0();
      sub_100014CC4();
      v109 = v276;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v108, &qword_10009F878);
      sub_100015AC0(v109, v279, &qword_10009F898);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968);
      sub_100014944();
      sub_100014F64();
      v110 = v281;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v109, &qword_10009F898);
      sub_100015AC0(v110, v283, &qword_10009F8A0);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v110, &qword_10009F8A0);
      return sub_10001569C(v103);
    }

    v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v102)
    {

      goto LABEL_43;
    }

    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;
    if (v111 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v113 == v114)
    {

LABEL_49:
      v116 = v267;
      *v267 = 1;
      type metadata accessor for TextFormattingState();
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
      *(v116 + 8) = EnvironmentObject.init()();
      *(v116 + 16) = v117;
      *(v116 + 24) = swift_getKeyPath();
      *(v116 + 32) = 0;
      v118 = v268;
      v119 = *(v268 + 28);
      *(v116 + v119) = swift_getKeyPath();
      sub_1000130DC(&qword_10009FA00);
      swift_storeEnumTagMultiPayload();
      v120 = v116 + *(v118 + 32);
      *v120 = swift_getKeyPath();
      *(v120 + 8) = 0;
      sub_100015638(v116, v265);
      swift_storeEnumTagMultiPayload();
      sub_100014E0C(&qword_10009F948, type metadata accessor for TFTextAlignmentControl);
      sub_100014F10();
      v121 = v266;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v121, v271, &qword_10009F858);
      swift_storeEnumTagMultiPayload();
      sub_100014D50();
      sub_100014E54();
      v122 = v273;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v121, &qword_10009F858);
      sub_100015AC0(v122, v14, &qword_10009F878);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0);
      sub_1000149D0();
      sub_100014CC4();
      v123 = v276;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v122, &qword_10009F878);
      sub_100015AC0(v123, v279, &qword_10009F898);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968);
      sub_100014944();
      sub_100014F64();
      v124 = v281;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v123, &qword_10009F898);
      sub_100015AC0(v124, v283, &qword_10009F8A0);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v124, &qword_10009F8A0);
      return sub_10001569C(v116);
    }

    v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v115)
    {

      goto LABEL_49;
    }

    v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v126;
    if (v125 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v127 == v128)
    {

LABEL_55:
      type metadata accessor for TextFormattingState();
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
      v130 = EnvironmentObject.init()();
      v132 = v131;
      v133 = swift_getKeyPath();
      v134 = v265;
      *v265 = v130;
      v134[1] = v132;
      v134[2] = v133;
      *(v134 + 12) = 0;
      swift_storeEnumTagMultiPayload();
      sub_100014E0C(&qword_10009F948, type metadata accessor for TFTextAlignmentControl);
      sub_100014F10();

      v135 = v266;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v135, v271, &qword_10009F858);
      swift_storeEnumTagMultiPayload();
      sub_100014D50();
      sub_100014E54();
      v136 = v273;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v135, &qword_10009F858);
      sub_100015AC0(v136, v14, &qword_10009F878);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0);
      sub_1000149D0();
      sub_100014CC4();
      v137 = v276;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v136, &qword_10009F878);
      sub_100015AC0(v137, v279, &qword_10009F898);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968);
      sub_100014944();
      sub_100014F64();
      v138 = v281;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v137, &qword_10009F898);
LABEL_65:
      sub_100015AC0(v138, v283, &qword_10009F8A0);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();

      v31 = v138;
      v32 = &qword_10009F8A0;
      return sub_1000156F8(v31, v32);
    }

    v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v129)
    {

      goto LABEL_55;
    }

    v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v141 = v140;
    if (v139 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v141 == v142)
    {

LABEL_61:
      type metadata accessor for TextFormattingState();
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
      v144 = EnvironmentObject.init()();
      v146 = v145;
      v147 = swift_getKeyPath();
      v290.n128_u64[0] = v144;
      v290.n128_u64[1] = v146;
      v291 = v147;
      v292.n128_u16[0] = 0;
      v292.n128_u8[2] = 0;
LABEL_62:
      sub_100015108();
      sub_10001515C();

      _ConditionalContent<>.init(storage:)();
      LOBYTE(v306[0]) = v298.n128_u8[2];
      v305 = 0;
      BYTE9(v299[1]) = 0;
      sub_1000130DC(&qword_10009F988);
      sub_1000130DC(&qword_10009F9A8);
      sub_10001507C();
      sub_1000151B0();
      _ConditionalContent<>.init(storage:)();
      v292 = v287;
      v293[0] = v288[0];
      *(v293 + 10) = *(v288 + 10);
      v290 = v285;
      v291 = v286;
      v308.n128_u8[0] = 0;
LABEL_63:
      v294[18] = 0;
      sub_1000130DC(&qword_10009F978);
      sub_1000130DC(&qword_10009F9C0);
      sub_100014FF0();
      sub_100015290();
      _ConditionalContent<>.init(storage:)();
      v148 = v300[0];
      v149 = v279;
      *(v279 + 64) = v299[1];
      *(v149 + 80) = v148;
      v150 = *(v300 + 15);
LABEL_64:
      *(v149 + 95) = v150;
      v151 = v297;
      *v149 = v296;
      *(v149 + 16) = v151;
      v152 = v299[0];
      *(v149 + 32) = v298;
      *(v149 + 48) = v152;
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968);
      sub_100014944();
      sub_100014F64();
      v138 = v281;
      _ConditionalContent<>.init(storage:)();
      goto LABEL_65;
    }

    v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v143)
    {

      goto LABEL_61;
    }

    v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v155 = v154;
    if (v153 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v155 == v156)
    {

LABEL_71:
      type metadata accessor for TextFormattingState();
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
      v158 = EnvironmentObject.init()();
      v160 = v159;
      v161 = swift_getKeyPath();
      v290.n128_u64[0] = 0;
      v290.n128_u64[1] = v158;
      v291.n128_u64[0] = v160;
      v291.n128_u64[1] = v161;
      v292.n128_u16[0] = 0;
      v292.n128_u8[2] = 1;
      goto LABEL_62;
    }

    v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v157)
    {

      goto LABEL_71;
    }

    v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v164 = v163;
    if (v162 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v164 == v165)
    {

LABEL_77:
      type metadata accessor for TextFormattingState();
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
      v167 = EnvironmentObject.init()();
      v169 = v168;
      v170 = swift_getKeyPath();
      v304 = 0;
      v303 = 0;
      v296.n128_u8[0] = 1;
      v296.n128_u64[1] = v167;
      v297.n128_u64[0] = v169;
      v297.n128_u64[1] = v170;
      v298.n128_u16[0] = 0;
      BYTE8(v299[1]) = 0;
      sub_10001515C();
      sub_10001523C();

      _ConditionalContent<>.init(storage:)();
      v298 = v310;
      v299[0] = *v311;
      *(v299 + 9) = *&v311[9];
      v296 = v308;
      v297 = v309;
      v305 = 1;
      BYTE9(v299[1]) = 1;
      sub_1000130DC(&qword_10009F988);
      sub_1000130DC(&qword_10009F9A8);
      sub_10001507C();
      sub_1000151B0();
      _ConditionalContent<>.init(storage:)();
      v292 = v287;
      v293[0] = v288[0];
      *(v293 + 10) = *(v288 + 10);
      v290 = v285;
      v291 = v286;
      LOBYTE(v306[0]) = 0;
      goto LABEL_63;
    }

    v166 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v166)
    {

      goto LABEL_77;
    }

    v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v173 = v172;
    if (v171 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v173 == v174)
    {

LABEL_83:
      type metadata accessor for TextFormattingState();
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
      v176 = EnvironmentObject.init()();
      v178 = v177;
      v179 = swift_getKeyPath();
      v180 = swift_getKeyPath();
      v181 = swift_getKeyPath();
      v303 = 0;
      v302 = 0;
      v301 = 0;
      v304 = 1;
      v296.n128_u64[0] = v176;
      v296.n128_u64[1] = v178;
      v276 = v176;
      v297.n128_u64[0] = v179;
      v297.n128_u16[4] = 0;
      v298.n128_u64[0] = v180;
      v298.n128_u8[8] = 0;
      *&v299[0] = v181;
      BYTE8(v299[0]) = 0;
      *&v299[1] = 0x403C000000000000;
      BYTE8(v299[1]) = 1;
      sub_10001515C();
      sub_10001523C();

      _ConditionalContent<>.init(storage:)();
      v298 = v310;
      v299[0] = *v311;
      *(v299 + 9) = *&v311[9];
      v296 = v308;
      v297 = v309;
      v305 = 1;
      BYTE9(v299[1]) = 1;
      sub_1000130DC(&qword_10009F988);
      sub_1000130DC(&qword_10009F9A8);
      sub_10001507C();
      sub_1000151B0();
      _ConditionalContent<>.init(storage:)();
      v292 = v287;
      v293[0] = v288[0];
      *(v293 + 10) = *(v288 + 10);
      v290 = v285;
      v291 = v286;
      LOBYTE(v306[0]) = 0;
      v294[18] = 0;
      sub_1000130DC(&qword_10009F978);
      sub_1000130DC(&qword_10009F9C0);
      sub_100014FF0();
      sub_100015290();
      _ConditionalContent<>.init(storage:)();
      v182 = v300[0];
      v183 = v279;
      *(v279 + 64) = v299[1];
      *(v183 + 80) = v182;
      *(v183 + 95) = *(v300 + 15);
      v184 = v297;
      *v183 = v296;
      *(v183 + 16) = v184;
      v185 = v299[0];
      *(v183 + 32) = v298;
      *(v183 + 48) = v185;
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968);
      sub_100014944();
      sub_100014F64();
      v186 = v281;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v186, v283, &qword_10009F8A0);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();

      v31 = v186;
      v32 = &qword_10009F8A0;
      return sub_1000156F8(v31, v32);
    }

    v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v175)
    {

      goto LABEL_83;
    }

    v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v189 = v188;
    if (v187 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v189 == v190)
    {

LABEL_89:
      type metadata accessor for TextFormattingState();
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
      v192 = EnvironmentObject.init()();
      v194 = v193;
      v195 = swift_getKeyPath();
      v290.n128_u64[0] = v192;
      v290.n128_u64[1] = v194;
      v291.n128_u64[0] = v195;
      v291.n128_u16[4] = 0;
      v291.n128_u8[10] = 0;
      sub_1000153A8();
      sub_1000153FC();

      _ConditionalContent<>.init(storage:)();
      LOBYTE(v306[0]) = v297.n128_u8[10];
      v305 = 0;
      BYTE1(v300[1]) = 0;
      sub_1000130DC(&qword_10009F9D0);
      sub_1000130DC(&qword_10009F9F0);
      sub_10001531C();
      sub_100015450();
      _ConditionalContent<>.init(storage:)();
      v293[1] = v288[1];
      *v294 = v289[0];
      *&v294[16] = v289[1];
      v290 = v285;
      v291 = v286;
      v292 = v287;
      v293[0] = v288[0];
      v308.n128_u8[0] = 1;
      v294[18] = 1;
LABEL_90:
      sub_1000130DC(&qword_10009F978);
      sub_1000130DC(&qword_10009F9C0);
      sub_100014FF0();
      sub_100015290();
      _ConditionalContent<>.init(storage:)();
      v196 = v300[0];
      v149 = v279;
      *(v279 + 64) = v299[1];
      *(v149 + 80) = v196;
      v150 = *(v300 + 15);
      goto LABEL_64;
    }

    v191 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v191)
    {

      goto LABEL_89;
    }

    v197 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v199 = v198;
    if (v197 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v199 == v200)
    {

LABEL_96:
      type metadata accessor for TextFormattingState();
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
      v202 = EnvironmentObject.init()();
      v204 = v203;
      v205 = swift_getKeyPath();
      v290.n128_u64[0] = v202;
      v290.n128_u64[1] = v204;
      v291.n128_u64[0] = v205;
      v291.n128_u16[4] = 0;
      v291.n128_u8[10] = 1;
      sub_1000153A8();
      sub_1000153FC();

      _ConditionalContent<>.init(storage:)();
      LOBYTE(v306[0]) = v297.n128_u8[10];
      v305 = 0;
      BYTE1(v300[1]) = 0;
      sub_1000130DC(&qword_10009F9D0);
      sub_1000130DC(&qword_10009F9F0);
      sub_10001531C();
      sub_100015450();
      _ConditionalContent<>.init(storage:)();
      v293[1] = v288[1];
      *v294 = v289[0];
      *&v294[16] = v289[1];
      v290 = v285;
      v291 = v286;
      v292 = v287;
      v293[0] = v288[0];
      v308.n128_u8[0] = 1;
      v294[18] = 1;
      goto LABEL_90;
    }

    v201 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v201)
    {

      goto LABEL_96;
    }

    v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v208 = v207;
    if (v206 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v208 == v209)
    {
    }

    else
    {
      v210 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v210 & 1) == 0)
      {
        v218 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v220 = v219;
        if (v218 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v220 == v221)
        {
        }

        else
        {
          v222 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v222 & 1) == 0)
          {
            v234 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v236 = v235;
            if (v234 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v236 == v237)
            {
            }

            else
            {
              v238 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v238 & 1) == 0)
              {
                objc_opt_self();
                v250 = swift_dynamicCastObjCClass();
                if (v250)
                {
                  v251 = v250;
                  type metadata accessor for TextFormattingState();
                  sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
                  v252 = EnvironmentObject.init()();
                  v254 = v253;
                  v255 = swift_getKeyPath();
                  v256 = swift_getKeyPath();
                  v305 = 0;
                  v304 = 0;
                  v285.n128_u8[0] = 0;
                  v290.n128_u64[0] = v251;
                  v290.n128_u64[1] = v252;
                  v291.n128_u64[0] = v254;
                  v291.n128_u64[1] = v255;
                  v292.n128_u16[0] = 0;
                  v292.n128_u64[1] = v256;
                  LOWORD(v293[0]) = 0;
                }

                else
                {

                  v285.n128_u8[0] = 1;
                  BYTE1(v293[0]) = 1;
                }

                sub_100014784();
                _ConditionalContent<>.init(storage:)();
                v306[0] = v296;
                v306[1] = v297;
                v306[2] = v298;
                v307 = v299[0];
                v308 = v296;
                v309 = v297;
                v310 = v298;
                *v311 = v299[0];
                v305 = 1;
                LOBYTE(v300[1]) = 1;
                sub_100015AC0(&v308, &v290, &qword_10009F8B0);
                v30 = &qword_10009F8B8;
                sub_100015AC0(v306, &v290, &qword_10009F8B8);
                sub_1000130DC(&qword_10009F8B8);
                sub_1000147D8();
                sub_10001482C();
                _ConditionalContent<>.init(storage:)();
                v257 = v293[1];
                v258 = *v294;
                v299[1] = v293[1];
                v300[0] = *v294;
                v259 = v294[16];
                LOBYTE(v300[1]) = v294[16];
                v260 = v291;
                v296 = v290;
                v297 = v291;
                v262 = v292;
                v261 = v293[0];
                v298 = v292;
                v299[0] = v293[0];
                v263 = v283;
                *v283 = v290;
                v263[1] = v260;
                v263[4] = v257;
                v263[5] = v258;
                v263[2] = v262;
                v263[3] = v261;
                v263[6].n128_u8[0] = v259;
                swift_storeEnumTagMultiPayload();
                sub_100015AC0(&v296, &v285, &qword_10009F8D0);
                sub_1000130DC(&qword_10009F8D0);
                sub_1000148B8();
                sub_1000154D4();
                _ConditionalContent<>.init(storage:)();
                sub_1000156F8(&v308, &qword_10009F8B0);
                sub_1000156F8(&v296, &qword_10009F8D0);
                v31 = v306;
                goto LABEL_10;
              }
            }

            type metadata accessor for TextFormattingState();
            sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
            v239 = EnvironmentObject.init()();
            v241 = v240;
            v242 = swift_getKeyPath();
            v243 = swift_getKeyPath();
            v244 = swift_getKeyPath();
            v245 = swift_getKeyPath();
            v285.n128_u16[0] = 1;
            v285.n128_u64[1] = v239;
            v286.n128_u64[0] = v241;
            v286.n128_u64[1] = v242;
            v287.n128_u16[0] = 0;
            v287.n128_u64[1] = v243;
            LOBYTE(v288[0]) = 0;
            *(&v288[0] + 1) = v244;
            LOBYTE(v288[1]) = 0;
            *(&v288[1] + 1) = v245;
            LOBYTE(v289[0]) = 0;
            *(&v289[0] + 1) = 0x4062C00000000000;
            v292 = v287;
            v293[0] = v288[0];
            v293[1] = v288[1];
            *v294 = v289[0];
            v290 = v285;
            v291 = v286;
            v308.n128_u8[0] = 0;
            v294[16] = 0;
            sub_100015560(&v285, &v296);
            sub_1000130DC(&qword_10009F8B8);
            sub_1000147D8();
            sub_10001482C();
            _ConditionalContent<>.init(storage:)();
            v246 = v300[0];
            v247 = v283;
            v283[4] = v299[1];
            v247[5] = v246;
            v247[6].n128_u8[0] = v300[1];
            v248 = v297;
            *v247 = v296;
            v247[1] = v248;
            v249 = v299[0];
            v247[2] = v298;
            v247[3] = v249;
            swift_storeEnumTagMultiPayload();
            sub_1000130DC(&qword_10009F8D0);
            sub_1000148B8();
            sub_1000154D4();
            _ConditionalContent<>.init(storage:)();
            return sub_1000155BC(&v285);
          }
        }

        type metadata accessor for TextFormattingState();
        sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
        v223 = EnvironmentObject.init()();
        v225 = v224;
        v226 = swift_getKeyPath();
        v227 = swift_getKeyPath();
        v228 = swift_getKeyPath();
        v229 = swift_getKeyPath();
        v308.n128_u16[0] = 0;
        v308.n128_u64[1] = v223;
        v309.n128_u64[0] = v225;
        v309.n128_u64[1] = v226;
        v310.n128_u16[0] = 0;
        v310.n128_u64[1] = v227;
        v311[0] = 0;
        *&v311[8] = v228;
        v311[16] = 0;
        *&v311[24] = v229;
        LOBYTE(v312) = 0;
        *(&v312 + 1) = 0x4062C00000000000;
        v298 = v310;
        v299[0] = *v311;
        v299[1] = *&v311[16];
        v300[0] = v312;
        v296 = v308;
        v297 = v309;
        v304 = 1;
        LOBYTE(v300[1]) = 1;
        sub_100015560(&v308, &v290);
        sub_1000147D8();
        _ConditionalContent<>.init(storage:)();
        v299[1] = v293[1];
        v300[0] = *v294;
        LOBYTE(v300[1]) = v294[16];
        v296 = v290;
        v297 = v291;
        v298 = v292;
        v299[0] = v293[0];
        goto LABEL_109;
      }
    }

    type metadata accessor for TextFormattingState();
    sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState);
    v211 = EnvironmentObject.init()();
    v213 = v212;
    v214 = swift_getKeyPath();
    v215 = swift_getKeyPath();
    v216 = swift_getKeyPath();
    v217 = swift_getKeyPath();
    v308.n128_u16[0] = 257;
    v308.n128_u64[1] = v211;
    v309.n128_u64[0] = v213;
    v309.n128_u64[1] = v214;
    v310.n128_u16[0] = 0;
    v310.n128_u64[1] = v215;
    v311[0] = 0;
    *&v311[8] = v216;
    v311[16] = 0;
    *&v311[24] = v217;
    LOBYTE(v312) = 0;
    *(&v312 + 1) = 0x4062C00000000000;
    v298 = v310;
    v299[0] = *v311;
    v299[1] = *&v311[16];
    v300[0] = v312;
    v296 = v308;
    v297 = v309;
    v304 = 0;
    LOBYTE(v300[1]) = 0;
    sub_100015560(&v308, &v290);
    sub_1000147D8();
    _ConditionalContent<>.init(storage:)();
    v299[1] = v293[1];
    v300[0] = *v294;
    LOBYTE(v300[1]) = v294[16];
    v296 = v290;
    v297 = v291;
    v298 = v292;
    v299[0] = v293[0];
LABEL_109:
    v305 = 1;
    BYTE1(v300[1]) = 1;
    sub_1000130DC(&qword_10009F9D0);
    sub_1000130DC(&qword_10009F9F0);
    sub_10001531C();
    sub_100015450();
    _ConditionalContent<>.init(storage:)();
    v293[1] = v288[1];
    *v294 = v289[0];
    *&v294[16] = v289[1];
    v290 = v285;
    v291 = v286;
    v292 = v287;
    v293[0] = v288[0];
    LOBYTE(v306[0]) = 1;
    v294[18] = 1;
    sub_1000130DC(&qword_10009F978);
    sub_1000130DC(&qword_10009F9C0);
    sub_100014FF0();
    sub_100015290();
    _ConditionalContent<>.init(storage:)();
    v230 = v300[0];
    v231 = v279;
    *(v279 + 64) = v299[1];
    *(v231 + 80) = v230;
    *(v231 + 95) = *(v300 + 15);
    v232 = v297;
    *v231 = v296;
    *(v231 + 16) = v232;
    v233 = v299[0];
    *(v231 + 32) = v298;
    *(v231 + 48) = v233;
    swift_storeEnumTagMultiPayload();
    sub_1000130DC(&qword_10009F968);
    sub_100014944();
    sub_100014F64();
    v29 = v281;
    _ConditionalContent<>.init(storage:)();
    v30 = &qword_10009F8A0;
    sub_100015AC0(v29, v283, &qword_10009F8A0);
    swift_storeEnumTagMultiPayload();
    sub_1000130DC(&qword_10009F8D0);
    sub_1000148B8();
    sub_1000154D4();
    _ConditionalContent<>.init(storage:)();
    sub_1000155BC(&v308);
    goto LABEL_9;
  }

LABEL_8:
  sub_10004D03C(&v308);
  v299[1] = *&v311[16];
  v300[0] = v312;
  *&v300[1] = v313;
  v296 = v308;
  v297 = v309;
  v298 = v310;
  v299[0] = *v311;
  v305 = 0;
  BYTE8(v300[1]) = 0;
  sub_100015808(&v308, &v290);
  sub_100014AE8();
  sub_100014B3C();
  _ConditionalContent<>.init(storage:)();
  v293[1] = v288[1];
  *v294 = v289[0];
  *&v294[9] = *(v289 + 9);
  v290 = v285;
  v291 = v286;
  v292 = v287;
  v293[0] = v288[0];
  LOBYTE(v306[0]) = 0;
  v295 = 0;
  sub_1000130DC(&qword_10009F900);
  sub_1000130DC(&qword_10009F920);
  sub_100014A5C();
  sub_100014B90();
  _ConditionalContent<>.init(storage:)();
  v25 = v300[0];
  v14[4] = v299[1];
  v14[5] = v25;
  *(v14 + 90) = *(v300 + 10);
  v26 = v297;
  *v14 = v296;
  v14[1] = v26;
  v27 = v299[0];
  v14[2] = v298;
  v14[3] = v27;
  swift_storeEnumTagMultiPayload();
  sub_1000130DC(&qword_10009F8F0);
  sub_1000149D0();
  sub_100014CC4();
  v28 = v276;
  _ConditionalContent<>.init(storage:)();
  sub_100015AC0(v28, v279, &qword_10009F898);
  swift_storeEnumTagMultiPayload();
  sub_1000130DC(&qword_10009F968);
  sub_100014944();
  sub_100014F64();
  v29 = v281;
  _ConditionalContent<>.init(storage:)();
  sub_1000156F8(v28, &qword_10009F898);
  v30 = &qword_10009F8A0;
  sub_100015AC0(v29, v283, &qword_10009F8A0);
  swift_storeEnumTagMultiPayload();
  sub_1000130DC(&qword_10009F8D0);
  sub_1000148B8();
  sub_1000154D4();
  _ConditionalContent<>.init(storage:)();
  sub_100015864(&v308);
LABEL_9:
  v31 = v29;
LABEL_10:
  v32 = v30;
  return sub_1000156F8(v31, v32);
}

uint64_t sub_100009D7C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (static String._unconditionallyBridgeFromObjectiveC(_:)(), Hasher.init(_seed:)(), String.hash(into:)(), v3 = Hasher._finalize()(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

Swift::Int sub_100009F38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100078038[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100009FC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100078038[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10000A00C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011E94(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000A060(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_10000B7FC(a1[1], a2[1], &qword_10009F580) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10000A0B0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

__n128 sub_10000A0F4@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_10000A198(__int128 *a1)
{
  v2 = a1[3];
  v13[2] = a1[2];
  v13[3] = v2;
  v14 = *(a1 + 8);
  v3 = a1[1];
  v13[0] = *a1;
  v13[1] = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  v12 = *(a1 + 8);
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  sub_10000C8A8(v13, v7);

  return static Published.subscript.setter();
}

uint64_t sub_10000A250@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10000A2D0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_10001CDD4();
}

uint64_t sub_10000A348(uint64_t a1)
{
  type metadata accessor for LayoutDirection();
  __chkstk_darwin();
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_10000A410@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000A468(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100018298(0x666E6F4349554654, 0xEA00000000006769, &v13);
      _os_log_impl(&_mh_execute_header, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      sub_1000143E4(v11);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100013A58(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

uint64_t sub_10000A634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x100) == 0)
  {

    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100018298(0xD000000000000035, 0x800000010007C530, &v13);
      _os_log_impl(&_mh_execute_header, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      sub_1000143E4(v11);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100015A48(a1, a2, 0);
    (*(v5 + 8))(v7, v4);
    return v13;
  }

  return a1;
}

uint64_t sub_10000A814(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100018298(1819242306, 0xE400000000000000, &v13);
      _os_log_impl(&_mh_execute_header, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      sub_1000143E4(v11);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100013A58(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v14;
  }

  return a1 & 1;
}

double sub_10000A9D4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  v9 = static os_log_type_t.fault.getter();
  v10 = static Log.runtimeIssuesLog.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = *&v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100018298(0x74616F6C464743, 0xE700000000000000, &v14);
    _os_log_impl(&_mh_execute_header, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
    sub_1000143E4(v12);
  }

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100013A58(a1, 0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t sub_10000ABA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000130DC(&qword_10009FA00);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_100015AC0(v2, &v17 - v9, &qword_10009FA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100018298(0x694474756F79614CLL, 0xEF6E6F6974636572, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_1000143E4(v16);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10000AE2C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100018298(0x6C616E6F6974704FLL, 0xEE003E6C6F6F423CLL, &v13);
      _os_log_impl(&_mh_execute_header, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      sub_1000143E4(v11);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100013A58(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

uint64_t sub_10000B000@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000130DC(&qword_1000A16B0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_100015AC0(v2, &v17 - v9, &qword_1000A16B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100018298(0x686353726F6C6F43, 0xEB00000000656D65, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_1000143E4(v16);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10000B288@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000130DC(&qword_10009FA38);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_100015AC0(v2, &v17 - v9, &qword_10009FA38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100018298(0x5463696D616E7944, 0xEF657A6953657079, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_1000143E4(v16);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10000B514(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v31 = v9;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v32 = (v8 - 1) & v8;
LABEL_12:
      v13 = v10 | (v4 << 6);
      v14 = (*(v3 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v3 + 56) + 8 * v13);

      v18 = sub_10000C53C(v15, v16);
      v20 = v19;

      if ((v20 & 1) == 0 || (v21 = *(*(v2 + 56) + 8 * v18), v22 = *(v21 + 16), v22 != *(v17 + 16)))
      {
LABEL_29:

        return 0;
      }

      if (v22 && v21 != v17)
      {
        break;
      }

LABEL_19:

      v9 = v31;
      v8 = v32;
      if (!v32)
      {
        goto LABEL_7;
      }
    }

    v29 = v3;
    v30 = v2;

    v24 = 0;
    v25 = 0;
    while (v25 < *(v21 + 16))
    {
      if (v25 >= *(v17 + 16))
      {
        goto LABEL_33;
      }

      if (*(v21 + v24 + 32) != *(v17 + v24 + 32) || (v26 = *(v21 + v24 + 40), v27 = *(v17 + v24 + 40), , , v28 = sub_10000B7FC(v26, v27, &qword_10009F580), , result = , (v28 & 1) == 0))
      {

        goto LABEL_29;
      }

      ++v25;
      v24 += 16;
      if (v22 == v25)
      {

        v3 = v29;
        v2 = v30;
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_7:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return 1;
      }

      v12 = *(v5 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v32 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_10000B758(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000B7FC(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_1000132E4(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

char *sub_10000BA64(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000130DC(&qword_10009F5A8);
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

void *sub_10000BB70(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000130DC(&qword_10009F5C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000130DC(&qword_10009F5C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000BCB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000130DC(&qword_10009F5E8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10000BDBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000130DC(&qword_10009F5B8);
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

double *sub_10000BEC8(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000130DC(&qword_10009F5A0);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_10000BFCC(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000130DC(&qword_10009FA28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_10000C0C0(uint64_t a1, uint64_t a2)
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

  sub_1000130DC(&qword_10009F608);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_10000C144(uint64_t a1, uint64_t a2)
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

  sub_1000130DC(&qword_10009F5F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_10000C1D4(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  v7 = *(a1 + 32);
  v38 = *(a1 + 40);
  v8 = *a3;
  v9 = sub_10000C5B4(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_10000D2B8(v14, a2 & 1);
    v9 = sub_10000C5B4(v7);
    if ((v15 & 1) != (v16 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v18 = v9;
  sub_10000CBD4();
  v9 = v18;
  if (v15)
  {
LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_1000130DC(&qword_10009F5F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_27;
  }

LABEL_12:
  v19 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v19[6] + v9) = v7;
  *(v19[7] + 16 * v9) = v38;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    _StringGuts.grow(_:)(30);
    v36._object = 0x800000010007C510;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v36);
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v19[2] = v21;
  if (v4 != 1)
  {
    v22 = (a1 + 64);
    v23 = 1;
    while (v23 < *(a1 + 16))
    {
      v24 = *(v22 - 8);
      v39 = *v22;
      v25 = *a3;
      v26 = sub_10000C5B4(v24);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v13 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v13)
      {
        goto LABEL_24;
      }

      v31 = v27;
      if (v25[3] < v30)
      {
        sub_10000D2B8(v30, 1);
        v26 = sub_10000C5B4(v24);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v31)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v33[6] + v26) = v24;
      *(v33[7] + 16 * v26) = v39;
      v34 = v33[2];
      v13 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v13)
      {
        goto LABEL_25;
      }

      ++v23;
      v33[2] = v35;
      v22 = (v22 + 24);
      if (v4 == v23)
      {
      }
    }

    goto LABEL_26;
  }
}

unint64_t sub_10000C53C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000C6C0(a1, a2, v4);
}

unint64_t sub_10000C5B4(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100078038[a1]);
  v2 = Hasher._finalize()();

  return sub_10000C8E0(a1, v2);
}

unint64_t sub_10000C62C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10000C960(a1, v2);
}

unint64_t sub_10000C6C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10000C788@<X0>(_BYTE *a1@<X8>)
{
  sub_10000C854();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10000C854()
{
  result = qword_10009F590;
  if (!qword_10009F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F590);
  }

  return result;
}

unint64_t sub_10000C8E0(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_100078038[*(*(v2 + 48) + result)] == qword_100078038[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10000C960(uint64_t a1, uint64_t a2)
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

void *sub_10000CA64()
{
  v1 = v0;
  sub_1000130DC(&qword_10009F598);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_10000CBD4()
{
  v1 = v0;
  sub_1000130DC(&qword_10009F5D0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_10000CD24()
{
  v1 = v0;
  sub_1000130DC(&qword_10009F628);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

id sub_10000CE90()
{
  v1 = v0;
  sub_1000130DC(&qword_10009FA30);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100015A54(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100015AB0(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

uint64_t sub_10000D010(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000130DC(&qword_10009F598);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
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

LABEL_35:
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
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10000D2B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000130DC(&qword_10009F5D0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = a2;
    v35 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + v20);
      v23 = (v21 + 16 * v20);
      v25 = *v23;
      v24 = v23[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_100078038[v22]);
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v25;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10000D54C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000130DC(&qword_10009F628);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10000D7F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000130DC(&qword_10009FA30);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100015AB0(v22, v36);
      }

      else
      {
        sub_100015A54(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_100015AB0(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10000DAC0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100011B98(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for ComponentSize(0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10000E6B4(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_10000DBF8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100011BAC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10000E500(v5);
  *a1 = v2;
  return result;
}

void sub_10000DC78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_1000132E4(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000130DC(&qword_10009F5D8);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10000DD74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000130DC(&qword_10009FA28);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      *(v8 + 2) = v5;
      *(v8 + 3) = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_10000DE34(char *a1, int64_t a2, char a3)
{
  result = sub_10000DEC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000DE54(char *a1, int64_t a2, char a3)
{
  result = sub_10000E0CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000DE74(char *a1, int64_t a2, char a3)
{
  result = sub_10000E1D8(a1, a2, a3, *v3, &qword_10009F600);
  *v3 = result;
  return result;
}

double *sub_10000DEA4(double *a1, int64_t a2, char a3)
{
  result = sub_10000E2EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000DEC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000130DC(&qword_10009F5A0);
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

char *sub_10000DFC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000130DC(&qword_10009F608);
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

char *sub_10000E0CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000130DC(&qword_10009F5B8);
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

char *sub_10000E1D8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    sub_1000130DC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 24 * v9);
  }

  return v11;
}

double *sub_10000E2EC(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000130DC(&qword_10009F5A8);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10000E3F8(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000130DC(&qword_10009FA28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

Swift::Int sub_10000E500(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000130DC(&qword_10009F5E0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10000EC00(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10000E608(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10000E608(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 24 * a3 + 16);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *(v9 - 8);
      if (v7 == v10)
      {
        if (*(v9 + 8) >= *(v9 - 16))
        {
          goto LABEL_4;
        }
      }

      else if (v7)
      {
        if (!v10 || v10 >= v7)
        {
LABEL_4:
          ++a3;
          v5 += 24;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v12 = *v9;
      v13 = *(v9 + 8);
      *v9 = *(v9 - 24);
      *(v9 + 16) = *(v9 - 8);
      *(v9 - 16) = v13;
      *(v9 - 8) = v7;
      *(v9 - 24) = v12;
      v9 -= 24;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000E6B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10000F75C(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_10000F254((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000BCB8(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_10000BCB8((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = (v8 + 4);
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_10000F254((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_10000EC00(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v94 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_117:
    v6 = *v94;
    if (!*v94)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_119:
      v89 = *(v8 + 2);
      if (v89 >= 2)
      {
        while (*a3)
        {
          v90 = *&v8[16 * v89];
          v91 = *&v8[16 * v89 + 24];
          sub_10000F448((*a3 + 24 * v90), (*a3 + 24 * *&v8[16 * v89 + 16]), *a3 + 24 * v91, v6);
          if (v4)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_10000F75C(v8);
          }

          if (v89 - 2 >= *(v8 + 2))
          {
            goto LABEL_143;
          }

          v92 = &v8[16 * v89];
          *v92 = v90;
          *(v92 + 1) = v91;
          result = sub_10000F6D0(v89 - 1);
          v89 = *(v8 + 2);
          if (v89 <= 1)
          {
          }
        }

        goto LABEL_153;
      }
    }

LABEL_149:
    result = sub_10000F75C(v8);
    v8 = result;
    goto LABEL_119;
  }

  v6 = a4;
  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *a3 + 24 * v7;
      v11 = *(v10 + 16);
      v12 = *a3 + 24 * v9;
      v13 = *(v12 + 16);
      if (v11 == v13)
      {
        v14 = *(v10 + 8) < *(v12 + 8);
      }

      else
      {
        if (v13)
        {
          v15 = v13 < v11;
        }

        else
        {
          v15 = 0;
        }

        v14 = v15;
        if (!v11)
        {
          v14 = 1;
        }
      }

      v7 = v9 + 2;
      if (v9 + 2 < v5)
      {
        v16 = *a3 + 24 * v9 + 64;
        v17 = v16;
        while (1)
        {
          v18 = v11;
          v19 = *v17;
          v17 += 3;
          v11 = v19;
          if (v19 == v18)
          {
            break;
          }

          if (v11)
          {
            if (v18)
            {
              v20 = v18 < v11;
LABEL_24:
              v21 = v20;
              if (v14 != v21)
              {
                goto LABEL_32;
              }

              goto LABEL_18;
            }

            if (v14)
            {
              goto LABEL_33;
            }
          }

          else if ((v14 & 1) == 0)
          {
            goto LABEL_41;
          }

LABEL_18:
          ++v7;
          v16 = v17;
          if (v5 == v7)
          {
            v7 = v5;
            goto LABEL_32;
          }
        }

        v20 = *(v16 - 8) < *(v16 - 32);
        goto LABEL_24;
      }

LABEL_32:
      if (v14)
      {
LABEL_33:
        if (v7 < v9)
        {
          goto LABEL_148;
        }

        if (v9 < v7)
        {
          v22 = 0;
          v23 = 24 * v7;
          v24 = 24 * v9;
          v25 = v9;
          do
          {
            if (v25 != v7 + v22 - 1)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_152;
              }

              v27 = (v26 + v24);
              v28 = v26 + v23;
              v29 = *v27;
              v30 = *(v27 + 8);
              v31 = *(v28 - 24);
              *(v27 + 2) = *(v28 - 8);
              *v27 = v31;
              *(v28 - 24) = v29;
              *(v28 - 16) = v30;
            }

            ++v25;
            --v22;
            v23 -= 24;
            v24 += 24;
          }

          while (v25 < v7 + v22);
          v5 = a3[1];
        }
      }
    }

LABEL_41:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_145;
      }

      if (v7 - v9 < v6)
      {
        break;
      }
    }

LABEL_66:
    if (v7 < v9)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000BCB8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v44 = *(v8 + 2);
    v43 = *(v8 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_10000BCB8((v43 > 1), v44 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v45;
    v46 = &v8[16 * v44];
    *(v46 + 4) = v9;
    *(v46 + 5) = v7;
    v47 = *v94;
    if (!*v94)
    {
      goto LABEL_154;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_86:
          if (v52)
          {
            goto LABEL_133;
          }

          v65 = &v8[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_136;
          }

          v71 = &v8[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_140;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        v75 = &v8[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_100:
        if (v70)
        {
          goto LABEL_135;
        }

        v78 = &v8[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_138;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_107:
        v6 = v48 - 1;
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*a3)
        {
          goto LABEL_151;
        }

        v86 = *&v8[16 * v6 + 32];
        v87 = *&v8[16 * v48 + 40];
        sub_10000F448((*a3 + 24 * v86), (*a3 + 24 * *&v8[16 * v48 + 32]), *a3 + 24 * v87, v47);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10000F75C(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_130;
        }

        v88 = &v8[16 * v6];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_10000F6D0(v48);
        v45 = *(v8 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v8[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_131;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_132;
      }

      v60 = &v8[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_134;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_137;
      }

      if (v64 >= v56)
      {
        v82 = &v8[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_141;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_86;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_117;
    }
  }

  if (__OFADD__(v9, v6))
  {
    goto LABEL_146;
  }

  if (v9 + v6 < v5)
  {
    v5 = v9 + v6;
  }

  if (v5 < v9)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v7 == v5)
  {
    goto LABEL_66;
  }

  v32 = *a3;
  v33 = *a3 + 24 * v7;
  v34 = v9 - v7;
LABEL_51:
  v35 = *(v32 + 24 * v7 + 16);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *(v37 - 8);
    if (v35 != v38)
    {
      if (!v35)
      {
        goto LABEL_61;
      }

      if (v38 && v38 < v35)
      {
        goto LABEL_61;
      }

LABEL_50:
      ++v7;
      v33 += 24;
      --v34;
      if (v7 == v5)
      {
        v7 = v5;
        goto LABEL_66;
      }

      goto LABEL_51;
    }

    if (*(v37 + 8) >= *(v37 - 16))
    {
      goto LABEL_50;
    }

LABEL_61:
    if (!v32)
    {
      break;
    }

    v40 = *v37;
    v41 = *(v37 + 8);
    *v37 = *(v37 - 24);
    *(v37 + 16) = *(v37 - 8);
    *(v37 - 16) = v41;
    *(v37 - 8) = v35;
    *(v37 - 24) = v40;
    v37 -= 24;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_10000F254(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_10000F448(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_45;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *(v6 + 2);
      v17 = *(v4 + 2);
      if (v16 == v17)
      {
        if (*(v6 + 1) >= *(v4 + 1))
        {
          goto LABEL_19;
        }
      }

      else if (v16)
      {
        if (!v17 || v17 >= v16)
        {
LABEL_19:
          v13 = v4;
          v14 = v7 == v4;
          v4 += 24;
          if (v14)
          {
            goto LABEL_9;
          }

LABEL_8:
          v15 = *v13;
          *(v7 + 2) = *(v13 + 2);
          *v7 = v15;
          goto LABEL_9;
        }
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_27:
    v5 -= 24;
    do
    {
      v19 = *(v12 - 1);
      v20 = *(v6 - 1);
      if (v19 == v20)
      {
        if (*(v12 - 2) < *(v6 - 2))
        {
          goto LABEL_39;
        }
      }

      else if (!v19 || (v20 ? (v21 = v20 < v19) : (v21 = 0), v21))
      {
LABEL_39:
        v24 = v6 - 24;
        if ((v5 + 24) != v6)
        {
          v25 = *v24;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v25;
        }

        if (v12 <= v4 || (v6 -= 24, v24 <= v7))
        {
          v6 = v24;
          goto LABEL_45;
        }

        goto LABEL_27;
      }

      v22 = v12 - 24;
      if ((v5 + 24) != v12)
      {
        v23 = *v22;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v23;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v22 > v4);
    v12 = v22;
  }

LABEL_45:
  v26 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v27 = (v26 >> 2) + (v26 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v27])
  {
    memmove(v6, v4, 24 * v27);
  }

  return 1;
}

uint64_t sub_10000F6D0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000F75C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10000F770(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1000105B8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10000F868(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100010714(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000F9B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_100010894(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_10000FB64(double *a1, double a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_100010A7C(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10000FC58()
{
  v1 = v0;
  v2 = *v0;
  sub_1000130DC(&qword_10009F618);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10000FEA8()
{
  v1 = v0;
  v2 = *v0;
  sub_1000130DC(&qword_10009F5B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100010108()
{
  v1 = v0;
  v2 = *v0;
  sub_1000130DC(&qword_10009F620);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v17 = Hasher._finalize()();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100010384()
{
  v1 = v0;
  v2 = *v0;
  sub_1000130DC(&qword_10009F638);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_1000105B8(Swift::UInt a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000FC58();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100010BA8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000110D4();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for ComponentSize(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_100010714(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_10000FEA8();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100010CE8();
      goto LABEL_16;
    }

    sub_1000112F4();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100010894(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_100010108();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100010E44();
      goto LABEL_16;
    }

    sub_10001152C();
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ComponentKey(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100010A7C(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_100010384();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_100010F94();
      result = v7;
      goto LABEL_12;
    }

    sub_100011780();
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100010BA8()
{
  v1 = v0;
  sub_1000130DC(&qword_10009F618);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100010CE8()
{
  v1 = v0;
  sub_1000130DC(&qword_10009F5B0);
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

id sub_100010E44()
{
  v1 = v0;
  sub_1000130DC(&qword_10009F620);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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