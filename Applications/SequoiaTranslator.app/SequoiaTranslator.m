uint64_t sub_100003688()
{
  if (qword_1003BCFA0 != -1)
  {
    sub_1002C65F4();
  }

  return byte_1003BCFA8;
}

void sub_1000036C0(id a1)
{
  v1 = MGIsQuestionValid();
  if (v1)
  {
    LOBYTE(v1) = MGGetBoolAnswer();
  }

  byte_1003BCFA8 = v1;
}

uint64_t sub_100003754()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  sub_100005AD4(&unk_1003BA780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1002D1370;
  v10 = [v1 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = Locale.ltIdentifier.getter();
  v13 = v12;
  v14 = *(v3 + 8);
  v14(v8, v2);
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v15 = [v1 targetLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = Locale.ltIdentifier.getter();
  v18 = v17;
  v14(v6, v2);
  *(v9 + 48) = v16;
  *(v9 + 56) = v18;
  v22 = v9;

  sub_10000509C(&v22);

  sub_100005AD4(&qword_1003A95C0);
  sub_100005E44();
  v19 = BidirectionalCollection<>.joined(separator:)();

  return v19;
}

uint64_t sub_100003990()
{
  if (sub_1002C612C(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_100003AF4()
{
  if (sub_1002C612C(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id variable initialization expression of PlaceholderTextView.placeholderTextView()
{
  v0 = [objc_allocWithZone(UITextView) init];
  [v0 setUserInteractionEnabled:0];
  [v0 setBackgroundColor:0];
  [v0 setEditable:0];
  [v0 setSelectable:0];
  [v0 setAutoresizingMask:18];

  return v0;
}

uint64_t sub_100003DF0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void *sub_100003E94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003EB8(uint64_t a1, uint64_t a2)
{
  result = static Float._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_100003F0C(uint64_t a1, uint64_t a2)
{
  v3 = static Float._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_100003F64@<X0>(_DWORD *a1@<X8>)
{
  result = static Float._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_100003F9C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_100003FC8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000403C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_DWORD *sub_1000040A4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1000040B4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000412C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000041AC@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

Swift::Int sub_100004294()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000430C(uint64_t a1)
{
  v2 = sub_100006164(&qword_1003A97E0, type metadata accessor for _LTTranslationError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004378(uint64_t a1)
{
  v2 = sub_100006164(&qword_1003A97E0, type metadata accessor for _LTTranslationError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000043E4(void *a1, uint64_t a2)
{
  v4 = sub_100006164(&qword_1003A97E0, type metadata accessor for _LTTranslationError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004498(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006164(&qword_1003A97E0, type metadata accessor for _LTTranslationError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100004514()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100004574()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1000045E0(uint64_t a1)
{
  v2 = sub_100006164(&qword_1003A97A8, type metadata accessor for _LTTranslationError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000464C(uint64_t a1)
{
  v2 = sub_100006164(&qword_1003A97A8, type metadata accessor for _LTTranslationError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000046BC(uint64_t a1)
{
  v2 = sub_100006164(&qword_1003A97E0, type metadata accessor for _LTTranslationError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006164(&qword_1003A97E0, type metadata accessor for _LTTranslationError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000047AC()
{
  sub_100006164(&qword_1003A9870, type metadata accessor for LaunchOptionsKey);
  sub_100006164(&qword_1003A9878, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004868()
{
  sub_100006164(&qword_1003A98B0, type metadata accessor for Name);
  sub_100006164(&qword_1003A98B8, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004924()
{
  sub_100006164(&qword_1003A98E0, type metadata accessor for Key);
  sub_100006164(&qword_1003A98E8, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

float sub_1000049E0@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1000049EC()
{
  sub_100006164(&qword_1003A98A0, type metadata accessor for UILayoutPriority);
  sub_100006164(&qword_1003A98A8, type metadata accessor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004AA8()
{
  sub_100006164(&qword_1003A98F0, type metadata accessor for Port);
  sub_100006164(&qword_1003A98F8, type metadata accessor for Port);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004B64()
{
  sub_100006164(&qword_1003A9880, type metadata accessor for NSLinguisticTag);
  sub_100006164(&qword_1003A9888, type metadata accessor for NSLinguisticTag);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004C20()
{
  sub_100006164(&qword_1003A9890, type metadata accessor for NSLinguisticTagScheme);
  sub_100006164(&qword_1003A9898, type metadata accessor for NSLinguisticTagScheme);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004CDC()
{
  sub_100006164(&qword_1003A98C0, type metadata accessor for STBackgroundActivityIdentifier);
  sub_100006164(&qword_1003A98C8, type metadata accessor for STBackgroundActivityIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004D98@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100004DE0()
{
  sub_100006164(&qword_1003A98D0, type metadata accessor for VNImageOption);
  sub_100006164(&qword_1003A98D8, type metadata accessor for VNImageOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void sub_100004EA4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t sub_100004EE0(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

uint64_t sub_100004EFC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100004F38()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004F8C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100005014()
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

Swift::Int sub_10000509C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002C11A4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100005108(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100005108(uint64_t *a1)
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
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000052D0(v7, v8, a1, v4);
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
    return sub_100005200(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100005200(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000052D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1002C08D4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000058AC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10028C748(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10028C748((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1000058AC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1002C08D4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1002C0848(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1000058AC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_100005AD4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005B1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100005B2C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_100005B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTranslatorLaunchView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100005C30(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_100005C48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005C68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Adjustments.Adjustment(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Adjustments.Adjustment(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Adjustments.Adjustment(uint64_t result, int a2, int a3)
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

__n128 sub_100005D88(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005D94(uint64_t a1, int a2)
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

uint64_t sub_100005DB4(uint64_t result, int a2, int a3)
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

unint64_t sub_100005E44()
{
  result = qword_1003A95C8;
  if (!qword_1003A95C8)
  {
    sub_100005EA8(&qword_1003A95C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A95C8);
  }

  return result;
}

uint64_t sub_100005EA8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005F9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005FBC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100006164(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100006A34()
{
  result = qword_1003A97D0;
  if (!qword_1003A97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A97D0);
  }

  return result;
}

void sub_100006CA8(uint64_t a1, unint64_t *a2)
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

objc_class *sub_100006D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000072B0();
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  *(v9 + 24) = a6;

  v23.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  isa = UIButton.init(type:primaryAction:)(UIButtonTypeCustom, v23).super.super.super.super.isa;
  v11 = objc_opt_self();
  v12 = isa;
  v13 = [v11 systemFontOfSize:{17.0, 0, 0, 0, sub_100007334, v9}];
  v14 = [objc_opt_self() configurationWithFont:v13 scale:3];

  v15 = v12;
  v16 = v14;
  [(objc_class *)v15 setPreferredSymbolConfiguration:v16 forImageInState:0];
  sub_10000704C();

  v17 = v16;
  if (a4)
  {
    [(objc_class *)v15 setPreferredSymbolConfiguration:v16 forImageInState:4];

    v18 = String._bridgeToObjectiveC()();

    v19 = [objc_opt_self() systemImageNamed:v18 withConfiguration:v16];

    if (v19)
    {
      v20 = [objc_opt_self() whiteColor];
      v17 = [v19 imageWithTintColor:v20];
    }

    else
    {
      v17 = 0;
    }

    [(objc_class *)v15 setImage:v17 forState:4];
  }

  [(objc_class *)v15 setFrame:0.0, 0.0, 44.0, 44.0];
  v21 = [objc_opt_self() whiteColor];
  [(objc_class *)v15 setTintColor:v21];

  return v15;
}

void sub_10000704C()
{
  v1 = [objc_opt_self() configurationWithScale:3];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  if (v3)
  {
    v4 = [objc_opt_self() whiteColor];
    v5 = [v3 imageWithTintColor:v4];
  }

  else
  {
    v5 = 0;
  }

  [v0 setImage:v5 forState:0];
}

id sub_100007258()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000072B0()
{
  result = qword_1003A9940;
  if (!qword_1003A9940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A9940);
  }

  return result;
}

uint64_t sub_1000072FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000735C(uint64_t a1, char a2)
{
  v3[2] = v2;
  v6 = sub_100005AD4(&qword_1003A99F0);
  v3[3] = v6;
  v3[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = type metadata accessor for IntentSystemContext.Source();
  v3[6] = v8;
  v9 = *(v8 - 8);
  v3[7] = v9;
  (*(v9 + 16))(v7, a1, v8);
  *(v7 + *(v6 + 48)) = a2;
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v11;
  v3[10] = v10;

  return _swift_task_switch(sub_1000074B4, v11, v10);
}

uint64_t sub_1000074B4()
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Command received in launcher", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  v9 = *(v8 + 16);
  sub_100007920(v5, v6);
  v10 = *(v6 + *(v7 + 48));
  v14 = (v9 + *v9);
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_10000768C;
  v12 = v0[4];

  return v14(v12, v10);
}

uint64_t sub_10000768C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 32);

  (*(v2 + 8))(v4, v3);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return _swift_task_switch(sub_100007810, v6, v5);
}

uint64_t sub_100007810()
{
  v1 = *(v0 + 40);

  sub_100007990(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000788C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000078E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100007920(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003A99F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007990(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003A99F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007A18()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  result = PropertyListDecoder.init()();
  qword_1003A99F8 = result;
  return result;
}

uint64_t sub_100007AA4()
{
  if (*v0)
  {
    return 0x78697274616DLL;
  }

  else
  {
    return 1935763810;
  }
}

uint64_t sub_100007AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1935763810 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x78697274616DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100007BC4(uint64_t a1)
{
  v2 = sub_100008758();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100007C00(uint64_t a1)
{
  v2 = sub_100008758();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100007C3C(void *a1)
{
  v3 = sub_100005AD4(&qword_1003A9A38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_1000085CC(a1, a1[3]);
  sub_100008758();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100007DC4(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_100005AD4(&qword_1003A9A18);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  sub_1000085CC(a1, a1[3]);
  sub_100008610();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v18 = 0;
  sub_100008704();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v16 = a4;
    v17 = a5;
    v18 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v12 + 8))(v14, v11);
}

void sub_100007F88(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000822C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

Swift::Int sub_100007FD0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100008018()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000805C()
{
  if (*v0)
  {
    return 0x746867696CLL;
  }

  else
  {
    return 1802658148;
  }
}

uint64_t sub_10000808C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802658148 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100008164(uint64_t a1)
{
  v2 = sub_100008610();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000081A0(uint64_t a1)
{
  v2 = sub_100008610();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000081DC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000083DC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

double sub_10000822C(void *a1)
{
  v2 = sub_100005AD4(&qword_1003A9A28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  sub_1000085CC(a1, a1[3]);
  sub_100008758();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v7 = v6;
  v9[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100008664(a1);
  return v7;
}

double sub_1000083DC(void *a1)
{
  v2 = sub_100005AD4(&qword_1003A9A00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_1000085CC(a1, a1[3]);
  sub_100008610();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9 = 0;
  sub_1000086B0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  v9 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100008664(a1);
  return v6;
}

void *sub_1000085CC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100008610()
{
  result = qword_1003A9A08;
  if (!qword_1003A9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9A08);
  }

  return result;
}

uint64_t sub_100008664(uint64_t a1)
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

unint64_t sub_1000086B0()
{
  result = qword_1003A9A10;
  if (!qword_1003A9A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9A10);
  }

  return result;
}

unint64_t sub_100008704()
{
  result = qword_1003A9A20;
  if (!qword_1003A9A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9A20);
  }

  return result;
}

unint64_t sub_100008758()
{
  result = qword_1003A9A30;
  if (!qword_1003A9A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9A30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTSManager.PlaybackSide(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioDevice.AudioDeviceCapabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000893C()
{
  result = qword_1003A9A40;
  if (!qword_1003A9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9A40);
  }

  return result;
}

unint64_t sub_100008994()
{
  result = qword_1003A9A48;
  if (!qword_1003A9A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9A48);
  }

  return result;
}

unint64_t sub_1000089EC()
{
  result = qword_1003A9A50;
  if (!qword_1003A9A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9A50);
  }

  return result;
}

unint64_t sub_100008A44()
{
  result = qword_1003A9A58;
  if (!qword_1003A9A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9A58);
  }

  return result;
}

unint64_t sub_100008A9C()
{
  result = qword_1003A9A60;
  if (!qword_1003A9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9A60);
  }

  return result;
}

unint64_t sub_100008AF4()
{
  result = qword_1003A9A68;
  if (!qword_1003A9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9A68);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AlertModel(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AlertModel(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9)
  {
    if ((a2 + 33554183) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776967;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776967;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 8;
  v6 = v4 - 8;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554183) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xF8)
  {
    v3 = 0;
  }

  if (a2 > 0xF8)
  {
    *result = a2 - 249;
    *(result + 2) = (a2 - 249) >> 16;
    if (v3)
    {
      v4 = ((a2 - 249) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 7;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_100008C8C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v3 = 0x5F4B524F5754454ELL;
    v4 = 0xD00000000000002CLL;
    if (a1 != 10)
    {
      v4 = 0xD000000000000016;
    }

    if (a1 == 9)
    {
      v4 = 0xD000000000000028;
    }

    if (a1 == 7)
    {
      v3 = 0xD00000000000002DLL;
    }

    if (a1 == 6)
    {
      v3 = 0xD00000000000002DLL;
    }

    if (a1 <= 8u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else if (a1 > 2u)
  {
    v5 = 0xD000000000000025;
    if (a1 == 4)
    {
      v5 = 0xD00000000000001FLL;
    }

    if (a1 == 3)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000016;
    if (a1 != 1)
    {
      v1 = 0xD000000000000017;
    }

    if (a1)
    {
      return v1;
    }

    else
    {
      return 0xD000000000000011;
    }
  }
}

uint64_t sub_100008E34(unsigned __int8 a1)
{
  if (sub_100008C8C(a1) == 0xD000000000000011 && 0x80000001002EF4B0 == v2)
  {

    goto LABEL_5;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v3)
  {
LABEL_5:
    v4 = objc_opt_self();
    v5 = [v4 mainBundle];
    v6 = [v5 localizedInfoDictionary];

    if (v6)
    {
      v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v7 + 16) && (v8 = sub_10028DD34(0xD000000000000013, 0x80000001002EFD70), (v9 & 1) != 0))
      {
        sub_10000A37C(*(v7 + 56) + 32 * v8, v38);

        v10 = sub_10000A2CC(0, &qword_1003A9AA8);
        if (swift_dynamicCast())
        {
          v11 = v37;
LABEL_12:
          v12 = sub_100008C8C(a1);
          v14 = v13;
          v15 = [v4 mainBundle];
          v39._object = 0xE000000000000000;
          v16._countAndFlagsBits = v12;
          v16._object = v14;
          v17._countAndFlagsBits = 0;
          v17._object = 0xE000000000000000;
          v39._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v39);

          sub_100005AD4(&qword_1003A9AB0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1002D3160;
          sub_10000A2CC(0, &qword_1003A9AA8);
          *(v18 + 56) = v10;
          *(v18 + 64) = sub_10000A314();
          *(v18 + 32) = v11;
          v19 = v11;
          v20 = String.init(format:_:)();

          return v20;
        }
      }

      else
      {
      }
    }

    v10 = sub_10000A2CC(0, &qword_1003A9AA8);
    v11 = NSString.init(stringLiteral:)();
    goto LABEL_12;
  }

  v22 = sub_100008C8C(a1);
  v24 = v23;
  v25 = 0xD00000000000001ELL;
  v26 = "unavailable due to Phone usage";
  v27 = a1 - 6;
  v28 = "ionManager";
  v29 = 0xD000000000000024;
  if (a1 == 5)
  {
    v29 = 0xD00000000000003ELL;
    v28 = "to AirPlane mode";
  }

  if (a1 != 2)
  {
    v25 = v29;
    v26 = v28;
  }

  if (v27 >= 2)
  {
    v30 = v25;
  }

  else
  {
    v30 = 0xD000000000000040;
  }

  if (v27 >= 2)
  {
    v31 = v26;
  }

  else
  {
    v31 = "on error description";
  }

  v32 = (v31 | 0x8000000000000000);
  v33 = [objc_opt_self() mainBundle];
  v40._object = v32;
  v34._countAndFlagsBits = v22;
  v34._object = v24;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v40._countAndFlagsBits = v30;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v40)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1000091E4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100008C8C(*a1);
  v5 = v4;
  if (v3 == sub_100008C8C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10000926C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100008C8C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000092D0()
{
  sub_100008C8C(*v0);
  String.hash(into:)();
}

Swift::Int sub_100009324()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100008C8C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100009384@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000093F4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000093B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100008C8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000093F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037CD78, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100009440(void *a1)
{
  v2 = type metadata accessor for URLError.NetworkUnavailableReason();
  v64 = *(v2 - 8);
  __chkstk_darwin(v2);
  v62 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005AD4(&qword_1003A9A70);
  __chkstk_darwin(v4);
  v6 = &v60 - v5;
  v7 = sub_100005AD4(&qword_1003A9A78);
  __chkstk_darwin(v7 - 8);
  v9 = &v60 - v8;
  v10 = sub_100005AD4(&qword_1003A9A80);
  v11 = __chkstk_darwin(v10 - 8);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v60 - v14;
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = [a1 domain];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v19 && v22 == v21)
  {

LABEL_5:

    if ([a1 code] == 10)
    {
      v66 = &type metadata for TranslateFeatures;
      v67 = sub_100009DF8();
      v24 = 2;
      LOBYTE(v65[0]) = 2;
      v25 = isFeatureEnabled(_:)();

      sub_100008664(v65);
      v26 = 0;
      if (v25)
      {
        v27 = 9;
      }

      else
      {
        v27 = 4;
      }

      return v26 | (v27 << 8) | v24;
    }

    if ([a1 code] == 14)
    {
      v66 = &type metadata for TranslateFeatures;
      v67 = sub_100009DF8();
      v24 = 2;
      LOBYTE(v65[0]) = 2;
      v28 = isFeatureEnabled(_:)();

      sub_100008664(v65);
      if (v28)
      {
        v27 = 9;
      }

      else
      {
        v27 = 4;
      }

      v26 = 0x10000;
      return v26 | (v27 << 8) | v24;
    }

    if ([a1 code] == 9)
    {
      v66 = &type metadata for TranslateFeatures;
      v67 = sub_100009DF8();
      v24 = 2;
      LOBYTE(v65[0]) = 2;
      v30 = isFeatureEnabled(_:)();

LABEL_44:
      sub_100008664(v65);
      if (v30)
      {
        v27 = 11;
      }

      else
      {
        v27 = 8;
      }

      v26 = 327680;
      return v26 | (v27 << 8) | v24;
    }

    v66 = &type metadata for TranslateFeatures;
    v67 = sub_100009DF8();
    v24 = 2;
    LOBYTE(v65[0]) = 2;
    v51 = isFeatureEnabled(_:)();

    sub_100008664(v65);
    if (v51)
    {
      v27 = 9;
    }

    else
    {
      v27 = 4;
    }

LABEL_57:
    v26 = 458752;
    return v26 | (v27 << 8) | v24;
  }

  v61 = v2;
  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_5;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v19 && v29 == v21)
  {

    goto LABEL_20;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v31 & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v19 && v52 == v21)
    {
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v57 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    if ([a1 code] == 561017449)
    {
      v66 = &type metadata for TranslateFeatures;
      v67 = sub_100009DF8();
      LOBYTE(v65[0]) = 2;
      v58 = isFeatureEnabled(_:)();

      sub_100008664(v65);
      if (v58)
      {
        v27 = 10;
      }

      else
      {
        v27 = 5;
      }

      v24 = 3;
      v26 = 393216;
      return v26 | (v27 << 8) | v24;
    }

LABEL_56:

    v24 = 2;
    v27 = 4;
    goto LABEL_57;
  }

LABEL_20:

  v65[0] = a1;
  sub_10000A2CC(0, &qword_1003A9A88);
  v32 = type metadata accessor for URLError();
  v33 = a1;
  v34 = swift_dynamicCast();
  v35 = *(v32 - 8);
  v36 = *(v35 + 56);
  v60 = v33;
  if (v34)
  {
    v37 = v35;
    v36(v9, 0, 1, v32);
    URLError.networkUnavailableReason.getter();
    (*(v37 + 8))(v9, v32);
    v38 = v61;
    v39 = v64;
  }

  else
  {
    v36(v9, 1, 1, v32);
    sub_100009EBC(v9, &qword_1003A9A78);
    v39 = v64;
    v38 = v61;
    (*(v64 + 56))(v17, 1, 1, v61);
  }

  v40 = v63;
  (*(v39 + 104))(v15, enum case for URLError.NetworkUnavailableReason.cellular(_:), v38);
  (*(v39 + 56))(v15, 0, 1, v38);
  v41 = *(v4 + 48);
  sub_100009E4C(v17, v6);
  sub_100009E4C(v15, &v6[v41]);
  v42 = *(v39 + 48);
  if (v42(v6, 1, v38) == 1)
  {
    sub_100009EBC(v15, &qword_1003A9A80);
    sub_100009EBC(v17, &qword_1003A9A80);
    if (v42(&v6[v41], 1, v38) == 1)
    {
      sub_100009EBC(v6, &qword_1003A9A80);
      v43 = v60;
LABEL_49:

      v24 = 0;
      v27 = 1;
      v26 = 0x20000;
      return v26 | (v27 << 8) | v24;
    }
  }

  else
  {
    sub_100009E4C(v6, v40);
    if (v42(&v6[v41], 1, v38) != 1)
    {
      v53 = &v6[v41];
      v54 = v62;
      (*(v39 + 32))(v62, v53, v38);
      sub_100009F1C();
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v56 = *(v39 + 8);
      v56(v54, v38);
      sub_100009EBC(v15, &qword_1003A9A80);
      sub_100009EBC(v17, &qword_1003A9A80);
      v56(v40, v38);
      sub_100009EBC(v6, &qword_1003A9A80);
      v43 = v60;
      if (v55)
      {
        goto LABEL_49;
      }

      goto LABEL_29;
    }

    sub_100009EBC(v15, &qword_1003A9A80);
    sub_100009EBC(v17, &qword_1003A9A80);
    (*(v39 + 8))(v40, v38);
  }

  sub_100009EBC(v6, &qword_1003A9A70);
  v43 = v60;
LABEL_29:
  if ([v43 code] != -1009)
  {
    v66 = &type metadata for TranslateFeatures;
    v67 = sub_100009DF8();
    v24 = 2;
    LOBYTE(v65[0]) = 2;
    v30 = isFeatureEnabled(_:)();

    goto LABEL_44;
  }

  type metadata accessor for AirplaneModeConfiguration();
  v44 = static AirplaneModeConfiguration.isAirplaneModeEnabled.getter();
  v45 = String._bridgeToObjectiveC()();
  v46 = SFLocalizableWAPIStringKeyForKey();

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v68._countAndFlagsBits = v47;
  v68._object = v49;
  v50 = sub_1000093F4(v68);

  if (v50 == 12)
  {
    v27 = 7;
  }

  else
  {
    v27 = v50;
  }

  if (v44)
  {
    v26 = 196608;
  }

  else
  {
    v26 = 0x40000;
  }

  v24 = 2;
  return v26 | (v27 << 8) | v24;
}

unint64_t sub_100009DF8()
{
  result = qword_1003B9F00;
  if (!qword_1003B9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9F00);
  }

  return result;
}

uint64_t sub_100009E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003A9A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009EBC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100005AD4(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100009F1C()
{
  result = qword_1003A9A90;
  if (!qword_1003A9A90)
  {
    type metadata accessor for URLError.NetworkUnavailableReason();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9A90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertReasonKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertReasonKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertStringKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertStringKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000A220()
{
  result = qword_1003A9A98;
  if (!qword_1003A9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9A98);
  }

  return result;
}

unint64_t sub_10000A278()
{
  result = qword_1003A9AA0;
  if (!qword_1003A9AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9AA0);
  }

  return result;
}

uint64_t sub_10000A2CC(uint64_t a1, unint64_t *a2)
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

unint64_t sub_10000A314()
{
  result = qword_1003A9AB8;
  if (!qword_1003A9AB8)
  {
    sub_10000A2CC(255, &qword_1003A9AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9AB8);
  }

  return result;
}

uint64_t sub_10000A37C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000A580(void *a1)
{
  v3 = a1;
  sub_10000B744();
  if (v1)
  {
    v2 = v1;

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  else
  {
  }
}

uint64_t sub_10000A948(uint64_t a1, unint64_t a2)
{
  if (a2 != 6)
  {
    return sub_10000A958(a1, a2);
  }

  return a1;
}

uint64_t sub_10000A958(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

id sub_10000A9C4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___sharedTranslationOptions;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___sharedTranslationOptions);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___sharedTranslationOptions);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SharedTranslationOptions()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10000AA38()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___recordingHelper;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___recordingHelper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___recordingHelper);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for RecordingHelper());

    v5 = v0;
    v6 = sub_100203D4C(v4);
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_10000AAC4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___ttsManager;
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___ttsManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___ttsManager);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_translator);
    v4 = sub_10000AA38();
    type metadata accessor for TTSManager();
    swift_allocObject();
    v2 = sub_1002BCBDC(v3, v4);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10000AB7C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___sessionManager;
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___sessionManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___sessionManager);
  }

  else
  {
    v2 = sub_10000ABE4();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10000ABE4()
{
  v0 = [objc_allocWithZone(NSUserDefaults) init];
  if (qword_1003A9380 != -1)
  {
    swift_once();
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    if (qword_1003A9278 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000078E8(v3, qword_1003D2878);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Using debug 10s session timeout", v6, 2u);
    }

    v7 = 10.0;
  }

  else
  {
    v7 = 480.0;
  }

  type metadata accessor for TranslationSessionManager();
  v8 = swift_allocObject();

  return sub_10021CE24(v9, v8, v7);
}

char *sub_10000ADA0()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___personalTranslatorViewModel;
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___personalTranslatorViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___personalTranslatorViewModel);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_languagesService);
    v4 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_translator);

    v5 = v0;
    v6 = *(sub_10000AB7C() + 80);

    v7 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_deviceHelper);

    v8 = sub_10000AA38();
    v9 = sub_10000A9C4();
    type metadata accessor for PersonalTranslatorViewModel();
    swift_allocObject();
    v2 = sub_1001F3E2C(v4, v3, v6, v7, v8, v9);

    *(v5 + v1) = v2;
  }

  return v2;
}

id sub_10000B1D0()
{
  v1 = v0;
  v2 = type metadata accessor for TranslationTaskHint();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_window] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_interruptionController] = 0;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_translator;
  *&v1[v6] = [objc_allocWithZone(_LTTranslator) init];
  v7 = OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_languagesService;
  (*(v3 + 104))(v5, enum case for TranslationTaskHint.speech(_:), v2);
  type metadata accessor for LanguagesService();
  swift_allocObject();
  *&v1[v7] = LanguagesService.init(task:)();
  v8 = OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_deviceHelper;
  type metadata accessor for DeviceHelper();
  swift_allocObject();
  *&v1[v8] = sub_1000CFCFC();
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___sharedTranslationOptions] = 0;
  v9 = OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_store;
  type metadata accessor for TranslationStoreCoreData();
  swift_allocObject();
  *&v1[v9] = TranslationStoreCoreData.init(inMemoryOnly:)();
  v10 = OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_sceneContext;
  type metadata accessor for SceneContext();
  swift_allocObject();
  *&v1[v10] = sub_1002121AC();
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___recordingHelper] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___ttsManager] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___sessionManager] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate____lazy_storage___personalTranslatorViewModel] = 0;
  v11 = OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_menuController;
  type metadata accessor for MenuController();
  *&v1[v11] = swift_allocObject();
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_orientationLock] = 26;
  v12 = type metadata accessor for AppDelegate();
  v14.receiver = v1;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_10000B42C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000B55C()
{
  v0 = [swift_getObjCClassFromMetadata() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    type metadata accessor for AppDelegate();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1003A9200 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000078E8(v3, qword_1003D2710);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Couldn't find shared app delegate", v6, 2u);
  }

  return 0;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

void sub_10000B744()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_10000A2CC(0, &qword_1003A9C30);
  sub_10000C168();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v33;
    v3 = v34;
    v4 = v35;
    i = v36;
    v6 = v37;
  }

  else
  {
    i = 0;
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);
  }

  v28 = v2;
  v29 = 0;
  v10 = (v4 + 64) >> 6;
  v26 = v10;
  v27 = v3;
LABEL_8:
  v11 = i;
  while ((v2 & 0x8000000000000000) == 0)
  {
    v13 = v11;
    v14 = v6;
    for (i = v11; !v14; ++v13)
    {
      i = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_40;
      }

      if (i >= v10)
      {
        goto LABEL_33;
      }

      v14 = *(v3 + 8 * i);
    }

    v12 = (v14 - 1) & v14;
    v15 = *(*(v2 + 48) + ((i << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_33;
    }

LABEL_20:
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v30 = v15;
      v18 = [v17 windows];
      sub_10000A2CC(0, &qword_1003A9B68);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = v12;
      if (v19 >> 62)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = 0;
      while (1)
      {
        if (v20 == v21)
        {

          v3 = v27;
          v2 = v28;
          v10 = v26;
          v12 = v31;
          goto LABEL_10;
        }

        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v24 = [v22 isKeyWindow];

        ++v21;
        if (v24)
        {

          v29 = v30;
          v3 = v27;
          v2 = v28;
          v10 = v26;
          v6 = v31;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

LABEL_10:

    v11 = i;
    v6 = v12;
  }

  if (__CocoaSet.Iterator.next()())
  {
    swift_dynamicCast();
    v15 = v32;
    i = v11;
    v12 = v6;
    if (v32)
    {
      goto LABEL_20;
    }
  }

LABEL_33:
  sub_10000C1D0();
  if (v29)
  {
    v25 = [v29 delegate];

    if (v25)
    {
      type metadata accessor for SceneDelegate();
      if (!swift_dynamicCastClass())
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_10000BAFC()
{
  v1 = v0;
  sub_100229C14();
  sub_10000A2CC(0, &qword_1003A9B80);
  sub_1002C4518();
  static NSUserDefaults.ltuiRegisterDefaults()();
  sub_10022A744(0);
  v2 = static NSUserDefaults.translationGroupDefaults.getter();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v4 = String._bridgeToObjectiveC()();
  [v2 setValue:isa forKey:v4];

  sub_100270D18();
  type metadata accessor for InterruptionController();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_interruptionController) = sub_100121E68();

  return 1;
}

id sub_10000BBE8(void *a1)
{
  v2 = [a1 role];
  v3 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v2];

  if (qword_1003A9248 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D27E8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    v10 = [v5 role];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10028D78C(v11, v13, &v28);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "SceneSession role: %s", v8, 0xCu);
    sub_100008664(v9);
  }

  v15 = [v5 role];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

LABEL_9:
    type metadata accessor for SceneDelegate();
    goto LABEL_10;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_9;
  }

  v22 = [v5 role];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      return v3;
    }
  }

  type metadata accessor for LockScreenSceneDelegate();
LABEL_10:
  [v3 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v3;
}

void sub_10000BF10(void *a1)
{
  v2 = [a1 system];
  v3 = [objc_opt_self() mainSystem];
  sub_10000A2CC(0, &unk_1003A9B70);
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    if (qword_1003A9200 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000078E8(v5, qword_1003D2710);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Build global app menu.", v8, 2u);
    }

    sub_100188420(a1);
  }
}

uint64_t sub_10000C084(void *a1)
{
  sub_10000B744();
  if (v2 && (v3 = v2, , v3, swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v4 = v8, v8 != 6))
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_100188870(a1, v5, v4);
  return sub_10000A958(v5, v4);
}

unint64_t sub_10000C168()
{
  result = qword_1003A9B60;
  if (!qword_1003A9B60)
  {
    sub_10000A2CC(255, &qword_1003A9C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9B60);
  }

  return result;
}

unint64_t sub_10000C1D8()
{
  result = qword_1003A9870;
  if (!qword_1003A9870)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9870);
  }

  return result;
}

uint64_t sub_10000C230(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000C248(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C2A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_10000C2F0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000C320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:

        break;
      case 4:

        break;
      case 5:

        break;
      default:
LABEL_20:
        String.hash(into:)();

        return String.hash(into:)();
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {

        return String.hash(into:)();
      }

      goto LABEL_20;
    }
  }

  return String.hash(into:)();
}

Swift::Int sub_10000C4A4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_10000C320(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_10000C4F8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_10000C320(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_10000C540@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_100005B2C(v2, v3);
}

unint64_t sub_10000C564()
{
  result = qword_1003A9B90;
  if (!qword_1003A9B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9B90);
  }

  return result;
}

unint64_t sub_10000C5BC()
{
  result = qword_1003A9B98;
  if (!qword_1003A9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9B98);
  }

  return result;
}

uint64_t sub_10000C610(uint64_t a1, uint64_t a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      return 0xD000000000000010;
    }

    if (a2 != 4)
    {
      if (a2 == 5)
      {
        return 0x6C657320656E6F4ELL;
      }

      goto LABEL_12;
    }

    return 0x657469726F766146;
  }

  else
  {
    if (!a2)
    {
      return 0x74616C736E617254;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        return 0x61737265766E6F43;
      }

LABEL_12:
      String.append(_:)(*&a1);
      return 0x657469726F766146;
    }

    return 0x6172656D6143;
  }
}

uint64_t sub_10000C750@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CoreAnalyticsLogger.InteractionLocation();
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v7;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v10 = &enum case for CoreAnalyticsLogger.InteractionLocation.translationTab(_:);
        goto LABEL_17;
      case 1:
        v10 = &enum case for CoreAnalyticsLogger.InteractionLocation.cameraTab(_:);
        goto LABEL_17;
      case 2:
        v10 = &enum case for CoreAnalyticsLogger.InteractionLocation.conversationTab(_:);
LABEL_17:
        (*(v7 + 104))(v9, *v10, v6);
        (*(v14 + 32))(a3, v9, v6);
        return (*(v14 + 56))(a3, 0, 1, v6);
    }

    goto LABEL_14;
  }

  if (a2 == 3)
  {
    v10 = &enum case for CoreAnalyticsLogger.InteractionLocation.personalTranslatorTab(_:);
    goto LABEL_17;
  }

  if (a2 == 4)
  {
LABEL_15:
    v10 = &enum case for CoreAnalyticsLogger.InteractionLocation.favoritesTab(_:);
    goto LABEL_17;
  }

  if (a2 != 5)
  {
LABEL_14:
    sub_10000A958(a1, a2);
    v7 = v14;
    goto LABEL_15;
  }

  v11 = *(v7 + 56);

  return v11(a3, 1, 1, v6);
}

uint64_t sub_10000C930(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return a4 == 3;
      case 4:
        return a4 == 4;
      case 5:
        return a4 == 5;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  if (a4 < 6)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10000CA08()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v30 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppShortcutPhraseToken();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005AD4(&qword_1003A9BA0);
  __chkstk_darwin(v12);
  v13 = type metadata accessor for AppShortcut();
  v26 = *(v13 - 8);
  v27 = v13;
  __chkstk_darwin(v13);
  v25 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100273B3C();
  v35 = v15;
  v36 = v16;
  v37 = v17;
  sub_100005AD4(&qword_1003A9BA8);
  sub_100005AD4(&qword_1003A9BB0);
  *(swift_allocObject() + 16) = xmmword_1002D3550;
  sub_10000CFFC();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x694C207472617453;
  v18._object = 0xEB00000000206576;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v18);
  (*(v9 + 104))(v11, enum case for AppShortcutPhraseToken.applicationName(_:), v8);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  (*(v9 + 8))(v11, v8);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v19);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.init(stringLiteral:)();
  AppShortcutPhrase.init(stringLiteral:)();
  AppShortcutPhrase.init(stringLiteral:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v32 + 104))(v31, enum case for LocalizedStringResource.BundleDescription.main(_:), v33);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v20 = v25;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v21 = static AppShortcutsBuilder.buildExpression(_:)();
  (*(v26 + 8))(v20, v27);
  sub_100005AD4(&unk_1003A9BC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002D3160;
  *(v22 + 32) = v21;
  v23 = static AppShortcutsBuilder.buildBlock(_:)();

  return v23;
}

unint64_t sub_10000CFFC()
{
  result = qword_1003A9BB8;
  if (!qword_1003A9BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9BB8);
  }

  return result;
}

id sub_10000D110(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  [a1 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];

  if (qword_1003A9268 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000078E8(v9, qword_1003D2848);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Starting ScrollHistory test now", v12, 2u);
  }

  return [objc_opt_self() runTestWithParameters:a2];
}

void sub_10000D2E0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v38 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window);
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = [v15 viewWithTag:206];
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = v16;
  v35 = v3;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

LABEL_8:
    if (qword_1003A9268 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000078E8(v25, qword_1003D2848);
    v38 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v38, v26, "ScrollFavorites test failing because sceneDelegate has no favoriteCardList", v27, 2u);
    }

    v28 = v38;
    goto LABEL_13;
  }

  v19 = v18;
  sub_100213990();
  sub_1002B5AF4();

  v36 = v17;
  v20 = sub_1002C36D0();

  if (v20)
  {
    type metadata accessor for FavoritesListController();
    if (swift_dynamicCastClass())
    {
      sub_1001043C8(0);
      [v19 layoutIfNeeded];
      sub_10000A2CC(0, &qword_1003A9C40);
      v34 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v33 = v20;
      isa = v38[1].isa;
      ++v38;
      (isa)(v12, v9);
      v22 = swift_allocObject();
      *(v22 + 16) = v19;
      aBlock[4] = sub_1000116A8;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100096948;
      aBlock[3] = &unk_10037ED98;
      v23 = _Block_copy(aBlock);
      v36 = v36;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000115AC();
      sub_100005AD4(&unk_1003A9C50);
      sub_100011604();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v24 = v34;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v23);

      (*(v35 + 8))(v5, v2);
      (*(v37 + 8))(v8, v6);
      (isa)(v14, v9);
      return;
    }
  }

  if (qword_1003A9268 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000078E8(v29, qword_1003D2848);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "ScrollFavorites test failing because can't find FavoritesListController", v32, 2u);
  }

  v28 = v36;
LABEL_13:
}

void sub_10000D8E8(void *a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 numberOfSections] < 3 || objc_msgSend(a1, "numberOfItemsInSection:", 2) < 3)
  {
    if (qword_1003A9268 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000078E8(v15, qword_1003D2848);
    v19 = a1;
    v20 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134349056;
      *(v17 + 4) = [v19 numberOfSections];

      _os_log_impl(&_mh_execute_header, v20, v16, "ScrollFavorites test failing because cannot select item 2 in section number 2. Number of sections: %{public}ld, privacy: .public)", v17, 0xCu);

      v18 = v20;
    }

    else
    {

      v18 = v19;
    }
  }

  else
  {
    IndexPath.init(item:section:)();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    [a1 selectItemAtIndexPath:isa animated:0 scrollPosition:1];

    v7 = objc_allocWithZone(RPTScrollViewTestParameters);
    v8 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_10000DCD4;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100096948;
    aBlock[3] = &unk_10037EDC0;
    v9 = _Block_copy(aBlock);

    v10 = [v7 initWithTestName:v8 scrollView:a1 completionHandler:v9];
    _Block_release(v9);

    if (qword_1003A9268 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000078E8(v11, qword_1003D2848);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Starting ScrollFavorites test now", v14, 2u);
    }

    [objc_opt_self() runTestWithParameters:v10];
  }
}

void sub_10000DCE0(const char *a1)
{
  if (qword_1003A9268 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2848);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_10000DDD0(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  if (qword_1003A9268 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000078E8(v16, qword_1003D2848);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Starting NewSpeechTranslation test now", v19, 2u);
  }

  v20 = String._bridgeToObjectiveC()();
  [a1 startedTest:v20];

  sub_100065448();

  sub_10000A2CC(0, &qword_1003A9C40);
  v21 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v10 + 8);
  v31 = v9;
  v32 = v22;
  v22(v13, v9);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a1;
  aBlock[4] = sub_1000116B8;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_10037EE60;
  v24 = _Block_copy(aBlock);
  v25 = a2;
  v26 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50);
  sub_100011604();
  v27 = v33;
  v28 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v24);

  (*(v36 + 8))(v27, v28);
  (*(v34 + 8))(v8, v35);
  return v32(v15, v31);
}

void sub_10000E26C(uint64_t a1, void *a2)
{
  if (qword_1003A9268 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000078E8(v3, qword_1003D2848);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Resetting state after NewSpeechTranslation test", v6, 2u);
  }

  sub_100062730(0, 0, 1);

  v7 = String._bridgeToObjectiveC()();
  [a2 finishedTest:v7];
}

uint64_t sub_10000E3D4(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchTime();
  v8 = *(v37 - 8);
  v9 = __chkstk_darwin(v37);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  if (qword_1003A9268 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000078E8(v14, qword_1003D2848);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting NewTextTranslation test now", v17, 2u);
  }

  v18 = String._bridgeToObjectiveC()();
  [a1 startedTest:v18];

  if ([a2 canBecomeFirstResponder])
  {
    v19 = [a2 becomeFirstResponder];
    [a2 setNeedsFocusUpdate];
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "TextView cannot become first responder", v22, 2u);
    }

    v19 = 0;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v23, v24, "TextView is first responder? %{BOOL}d", v25, 8u);
  }

  sub_10000A2CC(0, &qword_1003A9C40);
  v26 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v27 = v13;
  + infix(_:_:)();
  v36 = *(v8 + 8);
  v28 = v37;
  v36(v11, v37);
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  aBlock[4] = sub_1000116C8;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_10037EF00;
  v30 = _Block_copy(aBlock);
  v31 = a1;

  v32 = v38;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50);
  sub_100011604();
  v33 = v39;
  v34 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v30);

  (*(v42 + 8))(v33, v34);
  (*(v40 + 8))(v32, v41);
  return (v36)(v27, v28);
}

void sub_10000E980(void *a1)
{
  if (qword_1003A9268 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2848);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Marking NewTextTranslation test as finished", v5, 2u);
  }

  v6 = String._bridgeToObjectiveC()();
  [a1 finishedTest:v6];
}

void sub_10000EAAC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000A2CC(0, &qword_1003A9C30);
    sub_10000C168();
    Set.Iterator.init(_cocoa:)();
    v1 = v15;
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v13 = v3;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_10000A2CC(0, &qword_1003A9C30), swift_dynamicCast(), (v11 = v14) == 0))
    {
LABEL_24:
      sub_10000C1D0();
      return;
    }

LABEL_18:
    if ([v11 delegate])
    {
      type metadata accessor for SceneDelegate();
      v12 = swift_dynamicCastClass();

      if (v12)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
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

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_10000ED44(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v54 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v47 - v14;
  if (![objc_opt_self() isRecapAvailable])
  {
    if (qword_1003A9268 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000078E8(v38, qword_1003D2848);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_30;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "Failed to run ScrollHistory test because recap isn't available";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);

LABEL_30:

    return 0;
  }

  v51 = v7;
  v52 = v3;
  v16 = [a1 connectedScenes];
  sub_10000A2CC(0, &qword_1003A9C30);
  sub_10000C168();
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000EAAC(v17);
  v19 = v18;

  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_25:

    if (qword_1003A9268 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000078E8(v46, qword_1003D2848);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_30;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "Failed to run ScrollHistory test because we don't have a sceneDelegate";
    goto LABEL_29;
  }

LABEL_4:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v20 = *(v19 + 32);
  }

  v53 = v20;

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0;
  v56 = 0;

  v21 = v53;
  static Published.subscript.setter();
  v22 = *&v21[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window];
  if (!v22 || (v23 = [v22 viewWithTag:204]) == 0)
  {
LABEL_20:
    if (qword_1003A9268 == -1)
    {
LABEL_21:
      v43 = type metadata accessor for Logger();
      sub_1000078E8(v43, qword_1003D2848);
      v39 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v39, v44, "Failed to run ScrollHistory test because history scroll view can't be found", v45, 2u);
      }

      goto LABEL_30;
    }

LABEL_33:
    swift_once();
    goto LABEL_21;
  }

  v24 = v23;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {

    goto LABEL_20;
  }

  v26 = v25;
  sub_100213990();
  sub_1002B5AF4();

  [v26 reloadData];
  [v26 layoutIfNeeded];
  v49 = objc_allocWithZone(RPTScrollViewTestParameters);
  v50 = v24;
  v27 = String._bridgeToObjectiveC()();
  v59 = sub_10000D104;
  v60 = 0;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v47[1] = &v57;
  v57 = sub_100096948;
  v58 = &unk_10037ECA8;
  v28 = _Block_copy(&aBlock);

  v47[0] = [v49 initWithTestName:v27 scrollView:v26 completionHandler:v28];
  _Block_release(v28);

  sub_10000A2CC(0, &qword_1003A9C40);
  v48 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v49 = v54[1];
  (v49)(v13, v10);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  v30 = v47[0];
  *(v29 + 24) = v47[0];
  v59 = sub_1000115A4;
  v60 = v29;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_100096948;
  v58 = &unk_10037ECF8;
  v31 = _Block_copy(&aBlock);
  v50 = v50;
  v54 = v30;

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50);
  sub_100011604();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v32 = v48;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v31);

  (*(v52 + 8))(v5, v2);
  (*(v51 + 8))(v9, v6);
  (v49)(v15, v10);
  if (qword_1003A9268 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_1000078E8(v33, qword_1003D2848);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Starting ScrollHistory test soon", v36, 2u);
  }

  return 1;
}

uint64_t sub_10000F67C(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v42 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  if (![objc_opt_self() isRecapAvailable])
  {
    if (qword_1003A9268 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000078E8(v31, qword_1003D2848);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_21;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Failed to run ScrollFavorites test because recap isn't available";
    goto LABEL_20;
  }

  v40 = v7;
  v41 = v6;
  v16 = [a1 connectedScenes];
  sub_10000A2CC(0, &qword_1003A9C30);
  sub_10000C168();
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000EAAC(v17);
  v19 = v18;

  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_17:

    if (qword_1003A9268 == -1)
    {
LABEL_18:
      v36 = type metadata accessor for Logger();
      sub_1000078E8(v36, qword_1003D2848);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v32, v33))
      {
LABEL_21:

        return 0;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Failed to run ScrollFavorites test because the app has no sceneDelegate";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v32, v33, v35, v34, 2u);

      goto LABEL_21;
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_17;
  }

LABEL_4:
  v39 = v3;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v20 = *(v19 + 32);
LABEL_7:
  v21 = v20;

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = xmmword_1002D3320;

  static Published.subscript.setter();
  sub_10000A2CC(0, &qword_1003A9C40);
  v38 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v42 = *(v42 + 8);
  (v42)(v13, v10);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v46 = sub_100011668;
  v47 = v22;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v44 = sub_100096948;
  v45 = &unk_10037ED48;
  v23 = _Block_copy(&aBlock);
  v24 = v21;

  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50);
  sub_100011604();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v38;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v39 + 8))(v5, v2);
  (*(v40 + 8))(v9, v41);
  (v42)(v15, v10);
  if (qword_1003A9268 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000078E8(v26, qword_1003D2848);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Starting ScrollFavorites test soon", v29, 2u);
  }

  return 1;
}

uint64_t sub_10000FD5C(char *a1)
{
  v64 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v56 - v14;
  if (![objc_opt_self() isRecapAvailable])
  {
    if (qword_1003A9268 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000078E8(v43, qword_1003D2848);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_38;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Failed to run NewSpeechTranslation test because recap isn't available";
LABEL_37:
    _os_log_impl(&_mh_execute_header, v44, v45, v47, v46, 2u);

LABEL_38:

    return 0;
  }

  v61 = v2;
  v62 = v10;
  v59 = a1;
  v60 = v6;
  v16 = [a1 connectedScenes];
  sub_10000A2CC(0, &qword_1003A9C30);
  sub_10000C168();
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000EAAC(v17);
  v19 = v18;

  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_33;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_33:

    if (qword_1003A9268 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000078E8(v55, qword_1003D2848);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_38;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Failed to run NewSpeechTranslation test because there's no sceneDelegate";
    goto LABEL_37;
  }

LABEL_4:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v20 = *(v19 + 32);
  }

  v63 = v20;

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0;
  v66 = 0;

  a1 = v63;
  static Published.subscript.setter();
  v21 = *&a1[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window];
  if (!v21 || (v22 = [v21 viewWithTag:204]) == 0)
  {
LABEL_22:
    if (qword_1003A9268 == -1)
    {
LABEL_23:
      v48 = type metadata accessor for Logger();
      sub_1000078E8(v48, qword_1003D2848);
      v44 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v44, v49, "Failed to run NewSpeechTranslation test because history scroll view can't be found", v50, 2u);
      }

      goto LABEL_38;
    }

LABEL_42:
    swift_once();
    goto LABEL_23;
  }

  v23 = v22;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_22;
  }

  v24 = v23;
  v25 = sub_1002C36D0();
  v58 = v24;

  if (!v25)
  {
LABEL_27:
    if (qword_1003A9268 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000078E8(v51, qword_1003D2848);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Failed to run NewSpeechTranslation test because can't find TranslationListController", v54, 2u);
    }

    return 0;
  }

  type metadata accessor for TranslationListController();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {

    goto LABEL_27;
  }

  v27 = v26;
  sub_10000A2CC(0, &qword_1003A9C40);
  v56 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v28 = *(v62 + 8);
  v62 += 8;
  v57 = v28;
  v28(v13, v9);
  v29 = swift_allocObject();
  v30 = v59;
  *(v29 + 16) = v59;
  *(v29 + 24) = v27;
  v69 = sub_1000116B0;
  v70 = v29;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_100096948;
  v68 = &unk_10037EE10;
  v31 = _Block_copy(&aBlock);
  v32 = v30;
  v33 = v25;

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50);
  sub_100011604();
  v34 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v56;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v31);

  (*(v61 + 8))(v4, v34);
  (*(v60 + 8))(v8, v5);
  v57(v15, v9);
  if (qword_1003A9268 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000078E8(v36, qword_1003D2848);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v63;
  if (v39)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Starting NewSpeechTranslation test soon", v41, 2u);
  }

  return 1;
}

uint64_t sub_10001067C(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchQoS();
  v6 = *(v78 - 8);
  __chkstk_darwin(v78);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v70 - v14;
  if (![objc_opt_self() isRecapAvailable])
  {
    if (qword_1003A9268 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000078E8(v49, qword_1003D2848);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_46;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "Failed to run NewTextTranslation test because recap isn't available";
LABEL_45:
    _os_log_impl(&_mh_execute_header, v50, v51, v53, v52, 2u);

LABEL_46:

    return 0;
  }

  v74 = v10;
  v75 = v6;
  v76 = v3;
  v73 = a1;
  v16 = [a1 connectedScenes];
  sub_10000A2CC(0, &qword_1003A9C30);
  sub_10000C168();
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000EAAC(v17);
  v19 = v18;

  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_41;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_41:

    if (qword_1003A9268 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_1000078E8(v69, qword_1003D2848);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_46;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "Failed to run NewTextTranslation test because there's no sceneDelegate";
    goto LABEL_45;
  }

LABEL_4:
  v72 = v2;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_50;
    }

    v20 = *(v19 + 32);
  }

  v21 = v20;

  [objc_opt_self() setFrameStallSkipRequest:1];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0;
  v80 = 0;

  static Published.subscript.setter();
  v22 = OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window;
  v77 = v21;
  v23 = *&v21[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window];
  if (!v23 || (v24 = [v23 viewWithTag:204]) == 0)
  {
LABEL_30:
    if (qword_1003A9268 == -1)
    {
LABEL_31:
      v60 = type metadata accessor for Logger();
      sub_1000078E8(v60, qword_1003D2848);
      v50 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      v62 = os_log_type_enabled(v50, v61);
      v63 = v77;
      if (v62)
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v50, v61, "Failed to run NewTextTranslation test because history scroll view can't be found", v64, 2u);
      }

      goto LABEL_46;
    }

LABEL_50:
    swift_once();
    goto LABEL_31;
  }

  v25 = v24;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_30;
  }

  v26 = v25;
  v27 = sub_1002C36D0();

  if (!v27 || (type metadata accessor for TranslationListController(), v28 = swift_dynamicCastClass(), v27, !v28))
  {
    if (qword_1003A9268 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000078E8(v54, qword_1003D2848);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v77;
    if (v57)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Failed to run NewTextTranslation test because can't find TranslationListController", v59, 2u);
    }

    return 0;
  }

  v71 = v26;
  v29 = v77;
  v30 = *&v77[v22];
  if (!v30)
  {
    goto LABEL_35;
  }

  v31 = [v30 viewWithTag:205];
  if (!v31)
  {
    goto LABEL_35;
  }

  v32 = v31;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {

LABEL_35:
    if (qword_1003A9268 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000078E8(v65, qword_1003D2848);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Failed to run NewTextTranslation test because can't find Translation TextView", v68, 2u);
    }

    return 0;
  }

  v34 = v33;
  sub_100213990();
  sub_1002B6934(1);

  sub_10000A2CC(0, &qword_1003A9C40);
  v70 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v74 = *(v74 + 8);
  (v74)(v13, v9);
  v35 = swift_allocObject();
  v36 = v73;
  *(v35 + 16) = v73;
  *(v35 + 24) = v34;
  v83 = sub_1000116C0;
  v84 = v35;
  aBlock = _NSConcreteStackBlock;
  v80 = 1107296256;
  v81 = sub_100096948;
  v82 = &unk_10037EEB0;
  v37 = _Block_copy(&aBlock);
  v38 = v36;
  v39 = v32;

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50);
  sub_100011604();
  v40 = v72;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v41 = v70;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v37);

  (*(v76 + 8))(v5, v40);
  (*(v75 + 8))(v8, v78);
  (v74)(v15, v9);
  if (qword_1003A9268 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_1000078E8(v42, qword_1003D2848);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v71;
  if (v45)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Starting NewTextTranslation test soon", v47, 2u);
  }

  return 1;
}

uint64_t sub_1000110E0(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_1003A9268 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2848);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_10028D78C(a2, a3, &v18);
    *(v9 + 12) = 2082;
    v10 = Dictionary.description.getter();
    v12 = sub_10028D78C(v10, v11, &v18);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Running test '%{public}s' with options: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  if (a2 == 0x69486C6C6F726353 && a3 == 0xED000079726F7473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return sub_10000ED44(a1);
  }

  else if (a2 == 0x61466C6C6F726353 && a3 == 0xEF73657469726F76 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return sub_10000F67C(a1);
  }

  else if (a2 == 0xD000000000000014 && 0x80000001002F00E0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return sub_10000FD5C(a1);
  }

  else if (a2 == 0xD000000000000012 && 0x80000001002F0100 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return sub_10001067C(a1);
  }

  else
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_10028D78C(a2, a3, &v18);
      _os_log_impl(&_mh_execute_header, v14, v15, "Test name '%{public}s' doesn't match any known tests; failing", v16, 0xCu);
      sub_100008664(v17);
    }

    return 0;
  }
}

uint64_t sub_10001154C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011564()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000115AC()
{
  result = qword_1003AB990;
  if (!qword_1003AB990)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB990);
  }

  return result;
}

unint64_t sub_100011604()
{
  result = qword_1003AB9A0;
  if (!qword_1003AB9A0)
  {
    sub_100005EA8(&unk_1003A9C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB9A0);
  }

  return result;
}

uint64_t sub_100011670()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100011724()
{
  sub_100005AD4(&qword_1003A9D48);
  v0 = swift_allocObject();
  *&result = 4;
  *(v0 + 16) = xmmword_1002D3550;
  *(v0 + 32) = "oneSelectedWithSender:";
  *(v0 + 40) = "twoSelectedWithSender:";
  *(v0 + 48) = "threeSelectedWithSender:";
  *(v0 + 56) = "fourSelectedWithSender:";
  qword_1003D2468 = v0;
  return result;
}

uint64_t sub_100011884(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1000127BC(a4);

    v6 = v8;
  }

  return sub_100008664(&v10);
}

id sub_100011A30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HitView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100011A98()
{
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_hitView] = 0;
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_currentAlternatives];
  v2 = type metadata accessor for ASRAlternativesBehaviour();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 6) = 0;
  v8.receiver = v0;
  v8.super_class = v2;
  v3 = objc_msgSendSuper2(&v8, "init");
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:v5 selector:"menuDidHideWithSender:" name:UIMenuControllerDidHideMenuNotification object:0];

  return v5;
}

id sub_100011BA4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASRAlternativesBehaviour();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100011D00(uint64_t a1, void *a2)
{
  v4 = a1;
  v5 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 40);
  v70 = *(a1 + 32);
  v69 = v9;
  v68 = *(a1 + 48);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v78 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for DispatchTime();
  v75 = *(v80 - 8);
  v14 = __chkstk_darwin(v80);
  v67 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = &v60 - v16;
  v73 = *&v5;
  v72 = v6;
  v71 = v7;
  [a2 frame];
  MinX = CGRectGetMinX(v86);
  [a2 frame];
  MinY = CGRectGetMinY(v87);
  v88.origin.x = v5;
  v88.origin.y = v6;
  v88.size.width = v8;
  v88.size.height = v7;
  v89 = CGRectOffset(v88, MinX, MinY);
  v19 = [objc_allocWithZone(type metadata accessor for HitView()) initWithFrame:{v89.origin.x, v89.origin.y, v89.size.width, v89.size.height}];
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator7HitView_delegate + 8] = &off_10037EFB0;
  swift_unknownObjectWeakAssign();
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = [a2 superview];
  [v23 insertSubview:v21 aboveSubview:a2];

  v82 = type metadata accessor for ASRAlternativesBehaviour();
  aBlock[0] = v2;
  v24 = v2;
  sub_10001297C();
  sub_100008664(aBlock);
  v25 = *&v24[OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_hitView];
  v66 = v21;
  v64 = v24;
  *&v24[OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_hitView] = v21;

  v65 = [objc_opt_self() sharedMenuController];
  if (qword_1003A9168 != -1)
  {
LABEL_20:
    swift_once();
  }

  v26 = v10;
  v27 = qword_1003D2468;
  v85 = _swiftEmptyArrayStorage;
  v28 = *(qword_1003D2468 + 16);
  v29 = v4[4];

  result = [v29 alternativeStrings];
  if (!result)
  {
    goto LABEL_23;
  }

  v31 = result;
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = *(v32 + 16);

  if (v33 >= v28)
  {
    v34 = v28;
  }

  else
  {
    v34 = v33;
  }

  if (v28 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v63 = v26;
  v62 = v11;
  if (v34)
  {
    v60 = v8;
    v61 = v4;
    v35 = 0;
    v8 = 0.0;
    v10 = v27 + 32;
    while (1)
    {
      result = [v29 alternativeStrings];
      if (!result)
      {
        goto LABEL_22;
      }

      v36 = result;
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*&v8 >= *(v11 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v4 = *(v11 + v35 + 32);

      if (*&v8 >= *(v27 + 16))
      {
        goto LABEL_19;
      }

      v37 = *(v10 + 8 * *&v8);
      v38 = objc_allocWithZone(UIMenuItem);
      v39 = String._bridgeToObjectiveC()();

      v40 = [v38 initWithTitle:v39 action:v37];

      v4 = v40;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++*&v8;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v35 += 16;
      if (v34 == *&v8)
      {
        v41 = v78;
        v4 = v61;
        v42 = v73;
        v43 = v72;
        v8 = v60;
        goto LABEL_17;
      }
    }
  }

  v41 = v78;
  v42 = v73;
  v43 = v72;
LABEL_17:

  sub_10000A2CC(0, &qword_1003A9D30);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v45 = v65;
  [v65 setMenuItems:isa];

  [v45 setArrowDirection:2];
  [v45 update];
  v46 = &v64[OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_currentAlternatives];
  v47 = *&v64[OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_currentAlternatives + 32];
  *v46 = v42;
  v46[1] = v43;
  v48 = v71;
  v46[2] = v8;
  v46[3] = v48;
  v49 = v69;
  *(v46 + 4) = v70;
  *(v46 + 5) = v49;
  *(v46 + 6) = v68;
  sub_100012F64(v4, aBlock);

  sub_10000A2CC(0, &qword_1003A9C40);
  v73 = static OS_dispatch_queue.main.getter();
  v50 = v67;
  static DispatchTime.now()();
  v51 = v74;
  + infix(_:_:)();
  v78 = *(v75 + 8);
  (v78)(v50, v80);
  v52 = swift_allocObject();
  v53 = v66;
  *(v52 + 16) = v66;
  v83 = sub_100012FD4;
  v84 = v52;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  v82 = &unk_10037EFE8;
  v54 = _Block_copy(aBlock);
  v55 = v53;

  v56 = v76;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50);
  sub_100011604();
  v57 = v41;
  v58 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v59 = v73;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v54);

  (*(v62 + 8))(v57, v58);
  (*(v77 + 8))(v56, v79);
  return (v78)(v51, v80);
}

void sub_1000125E4(void *a1)
{
  [a1 becomeFirstResponder];
  v2 = [objc_opt_self() sharedMenuController];
  [a1 bounds];
  [v2 showMenuFromView:a1 rect:?];
}

uint64_t sub_100012674(void *a1)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      sub_100012BBC(a1, v10);
      if (v11)
      {
        v13[0] = v10[0];
        v13[1] = v10[1];
        v14 = v11;
        v15 = v12;
        sub_100011D00(v13, v6);

        sub_100009EBC(v10, &qword_1003A9D38);
        return 1;
      }
    }
  }

  v8 = OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_hitView;
  result = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_hitView);
  if (result)
  {
    [result removeFromSuperview];
    v9 = *(v1 + v8);
    *(v1 + v8) = 0;

    return 0;
  }

  return result;
}

void sub_1000127BC(unint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_currentAlternatives);
  v3 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_currentAlternatives + 32);
  if (!v3)
  {
    return;
  }

  v5 = v3;
  v6 = [v5 alternativeStrings];

  if (!v6)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v7 + 16) <= a1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7 + 16 * a1;
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);

  if (v2[4] && (v11 = v2[5], v12 = v2[6], v13 = v1 + OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_delegate, swift_unknownObjectWeakLoadStrong()))
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v10, v9, v11, v12, ObjectType, v14);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_10001297C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_hitView;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator24ASRAlternativesBehaviour_hitView);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = objc_opt_self();
  v5 = [v4 sharedMenuController];
  sub_10000A2CC(0, &qword_1003A9D30);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v5 setMenuItems:isa];

  v7 = [v4 sharedMenuController];
  [v7 update];
}

__n128 sub_100012AFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100012B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100012B60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100012BBC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 view];
  v5 = 0uLL;
  if (!v4)
  {
    v20 = 0;
    v21 = 0uLL;
    v22 = 0uLL;
LABEL_26:
    *a2 = v5;
    *(a2 + 16) = v21;
    *(a2 + 32) = v20;
    *(a2 + 40) = v22;
    return;
  }

  v6 = v4;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = v7;
  [a1 locationInView:v7];
  v9 = [v8 closestPositionToPoint:?];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v9;
  v11 = [v8 beginningOfDocument];
  v12 = [v8 offsetFromPosition:v11 toPosition:v10];

  if (v12 < 0)
  {
    goto LABEL_18;
  }

  v13 = [v8 attributedText];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 length];

    if (v12 >= v15)
    {
      goto LABEL_18;
    }

    v38 = 0uLL;
    v16 = [v8 attributedText];
    if (v16)
    {
      v17 = v16;
      v18 = String._bridgeToObjectiveC()();
      v19 = [v17 attribute:v18 atIndex:v12 effectiveRange:&v38];

      if (v19)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      v41[0] = v39;
      v41[1] = v40;
      if (!*(&v40 + 1))
      {

        sub_100009EBC(v41, &unk_1003AB9C0);
        goto LABEL_25;
      }

      sub_10000A2CC(0, &qword_1003A9D40);
      if (swift_dynamicCast())
      {
        v20 = v37;
        v23 = [v8 beginningOfDocument];
        v24 = [v8 positionFromPosition:v23 offset:v38];

        if (v24)
        {
          v25 = [v8 positionFromPosition:v24 offset:*(&v38 + 1)];
          if (v25)
          {
            v26 = v25;
            v27 = [v8 textRangeFromPosition:v24 toPosition:v25];
            if (v27)
            {
              v28 = v27;
              [v8 firstRectForRange:v27];
              v34 = v29;
              v35 = v30;
              v33 = v31;
              v36 = v32;

              *&v21 = v33;
              *&v5 = v34;
              v22 = v38;
              *(&v5 + 1) = v35;
              *(&v21 + 1) = v36;
              goto LABEL_26;
            }
          }

          else
          {
            v26 = v24;
          }
        }

LABEL_24:
        goto LABEL_25;
      }

LABEL_18:

LABEL_25:
      v20 = 0;
      v21 = 0uLL;
      v22 = 0uLL;
      v5 = 0uLL;
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100012F9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10001301C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100013048(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_100013090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000130FC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_100013108()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100013180()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_1000131C8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10001323C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10001326C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_1000132B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_100013308(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

BOOL sub_10001332C(void *a1, void *a2)
{
  v3 = a1[8];
  v2 = a1[9];
  v5 = a2[8];
  v4 = a2[9];
  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

unint64_t sub_1000133B0()
{
  result = qword_1003A9D50;
  if (!qword_1003A9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9D50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioDevice.AudioDeviceCapabilities(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for AudioDevice.AudioChannelType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioDevice.AudioChannelType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100013618()
{
  result = qword_1003A9D58;
  if (!qword_1003A9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A9D58);
  }

  return result;
}

uint64_t sub_100013694()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_10001AD18(v1);
  return v1;
}

uint64_t sub_100013718@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10001AD28;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_10001AD18(v4);
}

uint64_t sub_1000137D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_10001ACD4;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10001AD18(v1);
  sub_10001AB60();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_10001ABE4(v4);
}

uint64_t sub_100013900()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_100013970@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_100013A10(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100013AF0()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 33);
}

uint64_t sub_100013B60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_100013BD8(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100013CB8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 integerForKey:v3];

  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v0 + 36) = v4;
  v5 = [v1 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 integerForKey:v6];

  if (v7 < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v0 + 40) = v7;
  v8 = [v1 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 integerForKey:v9];

  if (v10 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    *(v0 + 44) = v10;
    *(v0 + 48) = vdup_n_s32(0x42200000u);
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 89) = 2;
    *(v0 + 91) = 0;
    type metadata accessor for PTFarFieldMetrics();
    v11 = swift_allocObject();
    v12 = OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicStart;
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 56);
    v14(v11 + v12, 1, 1, v13);
    v14(v11 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicStart, 1, 1, v13);
    *(v11 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicDuration) = 0;
    *(v11 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicDuration) = 0;
    *(v11 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_farFieldInputSource) = 0;
    v15 = v11 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsSNR;
    *v15 = 0;
    *(v15 + 4) = 1;
    v16 = v11 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneSNR;
    *v16 = 0;
    *(v16 + 4) = 1;
    *(v11 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_spl) = 0;
    *(v0 + 96) = v11;
    *(v0 + 104) = 0;
    ObservationRegistrar.init()();
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_100013FC8(float a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000140B0(float a1)
{
  if (*(v1 + 44) == a1)
  {
    *(v1 + 44) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_100014198(float a1)
{
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;

    sub_10001794C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000142A8(float a1)
{
  if (*(v1 + 52) == a1)
  {
    *(v1 + 52) = a1;

    sub_10001794C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000143B8(float a1)
{
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000144A0(float a1)
{
  if (*(v1 + 60) == a1)
  {
    *(v1 + 60) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100014588(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100014668(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10001B0E8();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 80);
LABEL_8:
  *(v2 + 80) = a1;
}

void sub_1000147B8(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + 88) == (a1 & 1))
  {
    sub_100018B30(a1 & 1);
    *(v1 + 88) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000148A0(uint64_t result)
{
  if (*(v1 + 90) == (result & 1))
  {
    *(v1 + 90) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100014980(uint64_t result)
{
  if (*(v1 + 91) == (result & 1))
  {
    *(v1 + 91) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100014A60(uint64_t a1)
{
  if (*(v1 + 96) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100014B64(uint64_t result)
{
  if (*(v1 + 104) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100014C3C(uint64_t result)
{
  if (*(v1 + 105) == (result & 1))
  {
    *(v1 + 105) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100014D1C()
{
  type metadata accessor for AudioRouteManager();
  swift_allocObject();
  sub_100013CB8();
  qword_1003D2470 = v0;
}

void sub_100014D5C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Locale();
  v63 = *(v8 - 8);
  __chkstk_darwin(v8);
  v62 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v10 - 8);
  v12 = v61 - v11;
  sub_100015C7C();
  v13 = *(v3 + 32);
  v14 = a1 & 1;
  v64 = v8;
  if (v13 == (a1 & 1))
  {
    *(v4 + 32) = v14;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v61[-2] = v4;
    LOBYTE(v61[-1]) = v14;
    v66 = v4;
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v16 = swift_getKeyPath();
  __chkstk_darwin(v16);
  v61[-4] = v4;
  v61[-3] = a2;
  v61[-2] = a3;
  v17 = OBJC_IVAR____TtC17SequoiaTranslator17AudioRouteManager___observationRegistrar;
  v66 = v4;
  sub_10001AB60();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v66 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  p_base_props = (&WaveformUIKitView + 64);
  if (*(v4 + 32) != 1)
  {
    goto LABEL_31;
  }

  sub_100015860();
  type metadata accessor for OVADAudioCache();
  v19 = swift_allocObject();
  v19[3] = 0;
  v19[4] = _swiftEmptyArrayStorage;
  v19[2] = 0x3FF199999999999ALL;
  v20 = swift_getKeyPath();
  __chkstk_darwin(v20);
  v61[-2] = v4;
  v61[-1] = v19;
  v66 = v4;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100228BB0(v12);
  v22 = v63;
  v21 = v64;
  if (!(*(v63 + 48))(v12, 1, v64))
  {
    v61[1] = 0;
    v27 = v62;
    (*(v22 + 16))(v62, v12, v21);
    sub_100009EBC(v12, &qword_1003AFCE0);
    v28 = Locale.identifier.getter();
    v30 = v29;
    (*(v22 + 8))(v27, v21);
    v31 = sub_10022A94C();
    p_base_props = &WaveformUIKitView.base_props;
    if (*(v31 + 16))
    {
      v32 = sub_10028DD34(v28, v30);
      if (v33)
      {
        LODWORD(v34) = *(*(v31 + 56) + 4 * v32);

        if (qword_1003A92B8 == -1)
        {
          goto LABEL_14;
        }

        goto LABEL_40;
      }
    }

    if (qword_1003A92B8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000078E8(v41, qword_1003D2938);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    LODWORD(v64) = v43;
    v44 = os_log_type_enabled(v42, v43);
    v45 = &selRef_oneSelectedWithSender_;
    if (v44)
    {
      v63 = v17;
      v46 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v66 = v34;
      *v46 = 136315394;
      v47 = sub_10028D78C(v28, v30, &v66);

      *(v46 + 4) = v47;
      *(v46 + 12) = 1024;
      v48 = [objc_opt_self() standardUserDefaults];
      v30 = 0x80000001002F05B0;
      p_base_props = String._bridgeToObjectiveC()();
      v28 = [v48 integerForKey:p_base_props];

      if (v28 < 0xFFFFFFFF80000000)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v28 > 0x7FFFFFFF)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        swift_once();
LABEL_14:
        v35 = type metadata accessor for Logger();
        sub_1000078E8(v35, qword_1003D2938);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v66 = v39;
          *v38 = 136315394;
          v40 = sub_10028D78C(v28, v30, &v66);

          *(v38 + 4) = v40;
          *(v38 + 12) = 1024;
          *(v38 + 14) = v34;
          _os_log_impl(&_mh_execute_header, v36, v37, "Using locale specific SPL threshold for %s - threshold: %d", v38, 0x12u);
          sub_100008664(v39);
          p_base_props = (&WaveformUIKitView + 64);
        }

        else
        {
        }

        v51 = v34;
        if (*(v4 + 40) == v34)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      *(v46 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v42, v64, "Using default SPL threshold for %s - threshold: %d", v46, 0x12u);
      sub_100008664(v34);

      p_base_props = (&WaveformUIKitView + 64);
      v45 = &selRef_oneSelectedWithSender_;
    }

    else
    {

      v30 = 0x80000001002F05B0;
    }

    v34 = [objc_opt_self() v45[8]];
    v49 = String._bridgeToObjectiveC()();
    v50 = [v34 integerForKey:v49];

    if (v50 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v50 <= 0x7FFFFFFF)
    {
      v51 = v50;
      if (*(v4 + 40) == v50)
      {
LABEL_29:
        *(v4 + 40) = v51;
        goto LABEL_31;
      }

LABEL_30:
      v52 = swift_getKeyPath();
      __chkstk_darwin(v52);
      v61[-2] = v4;
      *&v61[-1] = v51;
      v66 = v4;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_38;
  }

  sub_100009EBC(v12, &qword_1003AFCE0);
  p_base_props = &WaveformUIKitView.base_props;
  if (qword_1003A92B8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000078E8(v23, qword_1003D2938);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "SequoiaDefaults.personalTranslatorViewEnvironmentLocale is nil", v26, 2u);
  }

LABEL_31:
  if (p_base_props[87] != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_1000078E8(v53, qword_1003D2938);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v66 = v57;
    *v56 = 136315138;
    swift_getKeyPath();
    v65 = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v65) = *(v4 + 32);
    v58 = String.init<A>(describing:)();
    v60 = sub_10028D78C(v58, v59, &v66);

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v54, v55, "AudioRouteManager configured with: %s processing mode", v56, 0xCu);
    sub_100008664(v57);
  }
}

void sub_100015860()
{
  v1 = v0;
  if (qword_1003A9180 != -1)
  {
    swift_once();
  }

  if (byte_1003A9E10)
  {
    sub_1000163F4();
    v2 = [objc_allocWithZone(CMSuppressionManager) init];
    v3 = v2;
    sub_100014668(v2);
    if (qword_1003A92B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000078E8(v4, qword_1003D2938);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v2;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Starting new suppression service: %@", v8, 0xCu);
      sub_100009EBC(v9, &unk_1003AECA0);
    }

    v11 = [objc_opt_self() mainQueue];
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v5;
    aBlock[4] = sub_10001B4D4;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001A5C8;
    aBlock[3] = &unk_10037F460;
    v14 = _Block_copy(aBlock);
    v15 = v5;

    [v15 startSuppressionUpdatesToQueue:v11 withOptions:17 withHandler:v14];

    _Block_release(v14);
  }

  else
  {
    if (qword_1003A92B8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000078E8(v16, qword_1003D2938);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Suppression manager is not available", v19, 2u);
    }

    if (*(v1 + 104) != 2)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10001AB60();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t sub_100015C7C()
{
  v1 = v0;
  v25 = *v0;
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  if (v0[4])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v23 - 2) = v0;
    *(&v23 - 8) = 0;
    v27 = v0;
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0 + 32) = 0;
  }

  v6 = swift_getKeyPath();
  __chkstk_darwin(v6);
  *(&v23 - 3) = 0;
  *(&v23 - 2) = 0;
  *(&v23 - 4) = v0;
  v7 = OBJC_IVAR____TtC17SequoiaTranslator17AudioRouteManager___observationRegistrar;
  v27 = v0;
  sub_10001AB60();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (*(v0 + 12) == 40.0)
  {
    *(v0 + 12) = 1109393408;
    sub_10001794C();
  }

  else
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    *(&v23 - 2) = v0;
    *(&v23 - 2) = 1109393408;
    v27 = v0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 13) == 40.0)
  {
    *(v0 + 13) = 1109393408;
    sub_10001794C();
  }

  else
  {
    v9 = swift_getKeyPath();
    __chkstk_darwin(v9);
    *(&v23 - 2) = v0;
    *(&v23 - 2) = 1109393408;
    v27 = v0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 14) == 0.0)
  {
    *(v0 + 14) = 0;
  }

  else
  {
    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    *(&v23 - 2) = v0;
    *(&v23 - 2) = 0;
    v27 = v0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 15) == 0.0)
  {
    *(v0 + 15) = 0;
  }

  else
  {
    v11 = swift_getKeyPath();
    __chkstk_darwin(v11);
    *(&v23 - 2) = v0;
    *(&v23 - 2) = 0;
    v27 = v0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v26 = v7;
  v12 = type metadata accessor for TaskPriority();
  v24 = *(*(v12 - 8) + 56);
  v24(v4, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v1;
  *(v14 + 40) = 0;
  sub_10005E36C(0, 0, v4, &unk_1002EAB00, v14);

  v1[65] = 0;
  v15 = v4;
  if (v1[88])
  {
    v16 = swift_getKeyPath();
    __chkstk_darwin(v16);
    *(&v23 - 2) = v1;
    *(&v23 - 8) = 0;
    v27 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_100018B30(0);
    v1[88] = 0;
  }

  sub_1000163F4();
  if (qword_1003A9178 != -1)
  {
    v17 = swift_once();
  }

  v18 = qword_1003A9E08;
  __chkstk_darwin(v17);
  *(&v23 - 2) = sub_10001B260;
  *(&v23 - 1) = v1;

  os_unfair_lock_lock(v18 + 4);
  sub_10001B27C();
  os_unfair_lock_unlock(v18 + 4);

  if (v1[91])
  {
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    *(&v23 - 2) = v1;
    *(&v23 - 8) = 0;
    v27 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v1[91] = 0;
  }

  result = sub_100018E34();
  if (result)
  {
    v24(v15, 1, 1, v12);

    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v1;
    v22[5] = v25;
    sub_10005E36C(0, 0, v15, &unk_1002D3F08, v22);
  }

  return result;
}

void sub_1000163F4()
{
  if (qword_1003A9180 != -1)
  {
    swift_once();
  }

  if (byte_1003A9E10 == 1)
  {
    if (qword_1003A92B8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000078E8(v1, qword_1003D2938);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_getKeyPath();
      sub_10001AB60();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v6 = *(v0 + 80);
      *(v4 + 4) = v6;
      *v5 = v6;
      v7 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "Stopping suppression service: %@", v4, 0xCu);
      sub_100009EBC(v5, &unk_1003AECA0);
    }

    swift_getKeyPath();
    sub_10001AB60();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*(v0 + 80) stopService];
    if (*(v0 + 80))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (!*(v0 + 104))
      {
        goto LABEL_11;
      }
    }

    else if (!*(v0 + 104))
    {
LABEL_11:
      if (*(v0 + 105))
      {
        v10 = swift_getKeyPath();
        __chkstk_darwin(v10);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        *(v0 + 105) = 0;
      }

      return;
    }

    v9 = swift_getKeyPath();
    __chkstk_darwin(v9);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_11;
  }
}

uint64_t sub_1000167B0(uint64_t result)
{
  if (*(result + 90))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(result + 90) = 0;
  }

  return result;
}

uint64_t sub_100016898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10001698C, v7, v6);
}

void sub_10001698C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 integerForKey:v2];
  *(v0 + 72) = v3;

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    v4 = -1000000000000000000;
  }

  else
  {
    v4 = 0;
  }

  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_100016B08;

  (sub_1001F2A0C)(1000000000000000000 * v3, v4 + ((v3 * 0xDE0B6B3A7640000uLL) >> 64), 0, 0, 1);
}

uint64_t sub_100016B08()
{
  v2 = *v1;
  v2[11] = v0;

  v3 = v2[5];
  v4 = v2[4];
  v5 = v2[3];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[7];
    v7 = v2[8];
    v8 = sub_100016EA4;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[7];
    v7 = v2[8];
    v8 = sub_100016CA0;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100016CA0()
{
  v1 = v0[11];

  if (qword_1003A92B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2938);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Has reached critical audio conditions in default session (forced by userDefaults). Delay: %d", v6, 8u);
  }

  if (qword_1003A9178 != -1)
  {
    swift_once();
  }

  v7 = v0[2];
  v8 = qword_1003A9E08;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_10001B3B8;
  *(v9 + 24) = v7;

  os_unfair_lock_lock(v8 + 4);
  sub_10001B664();
  if (v1)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v8 + 4);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100016EA4()
{

  if (qword_1003A92B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2938);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[9];
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Has reached critical audio conditions in default session (forced by userDefaults). Delay: %d", v5, 8u);
  }

  if (qword_1003A9178 != -1)
  {
    swift_once();
  }

  v6 = v0[2];
  v7 = qword_1003A9E08;
  v8 = swift_task_alloc();
  *(v8 + 16) = sub_10001B3B8;
  *(v8 + 24) = v6;

  os_unfair_lock_lock(v7 + 4);
  sub_10001B664();
  os_unfair_lock_unlock(v7 + 4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000170A8(uint64_t result)
{
  if (*(result + 90) == 1)
  {
    *(result + 90) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100017198(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  v13 = v1;
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 33) != (a1 & 1))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v13 = v1;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1001FFCDC(*(v1 + 33), a1 & 1);

    if (qword_1003A92B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000078E8(v4, qword_1003D2938);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = String.init<A>(describing:)();
      v11 = sub_10028D78C(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Switching to new multi route audio input source: %s", v7, 0xCu);
      sub_100008664(v8);
    }

    if (*(v2 + 33) == (a1 & 1))
    {
      *(v2 + 33) = a1 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v13 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

void sub_100017474(void *a1, float a2)
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 32) == 1)
  {
    if (a1)
    {
      swift_getKeyPath();
      v5 = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (!*(v2 + 72))
      {
        type metadata accessor for OVADAudioCache();
        v10 = swift_allocObject();
        v10[3] = 0;
        v10[4] = _swiftEmptyArrayStorage;
        v10[2] = 0x3FF199999999999ALL;
      }

      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_10019FB5C(v5, a2);
    }
  }

  else
  {
    if (qword_1003A92B8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000078E8(v6, qword_1003D2938);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "OVAD cache requires multiRoute ProcessingMode", v9, 2u);
    }
  }
}

uint64_t sub_100017708()
{
  sub_100005AD4(&qword_1003AA3A8);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1003A9E08 = result;
  return result;
}

id sub_100017748()
{
  result = [objc_opt_self() isAvailable];
  byte_1003A9E10 = result;
  return result;
}

float sub_10001777C()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

float sub_1000177EC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

float sub_100017864()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 44);
}

float sub_1000178D4@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 44);
  *a2 = result;
  return result;
}

void sub_10001794C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 32) == 1)
  {
    if (qword_1003A9178 != -1)
    {
      swift_once();
    }

    v2 = qword_1003A9E08;

    os_unfair_lock_lock(v2 + 4);

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + 90))
    {
      goto LABEL_30;
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + 48) < *(v1 + 36))
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v3 = *(v1 + 56);
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + 40) < v3)
      {
        if (*(v1 + 90) == 1)
        {
          *(v1 + 90) = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        if (qword_1003A92B8 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_1000078E8(v10, qword_1003D2938);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "Has reached critical audio conditions in default session", v13, 2u);
        }

        goto LABEL_30;
      }
    }

    if (qword_1003A9180 != -1)
    {
      swift_once();
    }

    if (byte_1003A9E10 != 1)
    {
      goto LABEL_30;
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v1 + 56);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + 44) > v8)
    {
      goto LABEL_30;
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + 104) == 2)
    {
      if (*(v1 + 91))
      {
        *(v1 + 91) = 1;
LABEL_30:
        v15 = qword_1003A9E08;

        os_unfair_lock_unlock(v15 + 4);

        return;
      }
    }

    else if ((*(v1 + 91) & 1) == 0)
    {
      *(v1 + 91) = 0;
      goto LABEL_30;
    }

    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_30;
  }

  if (qword_1003A92B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D2938);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Skip updating audio conditions. Processing mode changed", v7, 2u);
  }
}

float sub_100017F30()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

float sub_100017FA0@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 48);
  *a2 = result;
  return result;
}

float sub_100018018()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 52);
}

float sub_100018088@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 52);
  *a2 = result;
  return result;
}

float sub_100018100()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 56);
}

float sub_100018170@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 56);
  *a2 = result;
  return result;
}

float sub_1000181E8()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 60);
}

float sub_100018258@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 60);
  *a2 = result;
  return result;
}

uint64_t sub_1000182D0()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

uint64_t sub_100018340@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1000183E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 24) = a4;
  type metadata accessor for MainActor();
  *(v5 + 32) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001847C, v7, v6);
}

uint64_t sub_10001847C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  if (v1 == *(v2 + 64))
  {
    *(v2 + 64) = *(v0 + 40);
  }

  else
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_100018594()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);
  if (v1)
  {
    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v0 + 32) == 1)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v2 = *(v0 + 16);
      if (v2)
      {
        sub_10001AD18(*(v0 + 16));
        sub_10019FFC4(v1, v2);
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        sub_10001ABE4(v2);

        return;
      }

      if (qword_1003A92B8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000078E8(v9, qword_1003D2938);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_14;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Cannot drain audio OVAD cache. No AudioResultHandler configured";
    }

    else
    {
      if (qword_1003A92B8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000078E8(v4, qword_1003D2938);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_14;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "OVAD cache requires multiRoute ProcessingMode";
    }

    _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 2u);

LABEL_14:
  }
}

uint64_t sub_1000188A4()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100018918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 72);
}

uint64_t sub_100018994()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void *sub_100018A30()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id sub_100018AA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_100018B30(char a1)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  v11 = v1;
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 88) != v3)
  {
    if (qword_1003A92B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000078E8(v4, qword_1003D2938);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      if (a1)
      {
        v9 = 0x64657472617473;
      }

      else
      {
        v9 = 0x646570706F7473;
      }

      v10 = sub_10028D78C(v9, 0xE700000000000000, &v11);

      *(v7 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "AudioRouteManager TTS %s playing on loudspeaker", v7, 0xCu);
      sub_100008664(v8);
    }
  }
}

uint64_t sub_100018CE4()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 88);
}

uint64_t sub_100018D54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_100018E34()
{
  v1 = *(v0 + 89);
  if (v1 == 2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = String._bridgeToObjectiveC()();
    LOBYTE(v1) = [v2 BOOLForKey:v3];

    *(v0 + 89) = v1;
  }

  return v1 & 1;
}

uint64_t sub_100018ED0()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 90);
}

uint64_t sub_100018F40()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 91);
}

uint64_t sub_100018FB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 91);
  return result;
}

uint64_t sub_100019028()
{
  if (v0[65])
  {
    return 0;
  }

  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[91])
  {
    return 1;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[90] != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[104] == 2)
  {
    return 1;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return v0[105];
}

uint64_t sub_10001916C()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000191E0()
{
  v1 = v0;
  if (qword_1003A9178 != -1)
  {
    swift_once();
  }

  v2 = qword_1003A9E08;

  os_unfair_lock_lock(v2 + 4);

  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 90) == 1)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = *(v1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = qword_1003A9E08;

  os_unfair_lock_unlock(v4 + 4);

  return v3;
}

uint64_t sub_100019310()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 104);
}

uint64_t sub_100019380@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_1000193F8()
{
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 105);
}

uint64_t sub_100019468@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 105);
  return result;
}

uint64_t sub_1000194E0(char a1, float a2)
{
  if (a1)
  {
    if (*(v2 + 52) == a2)
    {
      *(v2 + 52) = a2;
      sub_10001794C();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10001AB60();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    sub_10001AB60();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = (v2 + 96);
    v10 = *(v2 + 96) + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneSNR;
    if ((*(v10 + 4) & 1) != 0 || *v10 < a2)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v8 = &OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneSNR;
      goto LABEL_14;
    }
  }

  else
  {
    if (*(v2 + 48) == a2)
    {
      *(v2 + 48) = a2;
      sub_10001794C();
    }

    else
    {
      v4 = swift_getKeyPath();
      __chkstk_darwin(v4);
      sub_10001AB60();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    sub_10001AB60();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = (v2 + 96);
    v7 = *(v2 + 96) + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsSNR;
    if ((*(v7 + 4) & 1) != 0 || *v7 < a2)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v8 = &OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsSNR;
LABEL_14:
      v11 = *v6 + *v8;
      *v11 = a2;
      *(v11 + 4) = 0;
    }
  }

  return result;
}

uint64_t sub_1000197E4(char a1, float a2)
{
  if (a1)
  {
    if (*(v2 + 60) == a2)
    {
      *(v2 + 60) = a2;
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001AB60();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_7;
  }

  if (*(v2 + 56) != a2)
  {
    goto LABEL_6;
  }

  *(v2 + 56) = a2;
LABEL_7:
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(*(v2 + 96) + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_spl) = a2;
  return result;
}

uint64_t sub_10001999C()
{
  sub_10001ABE4(*(v0 + 16));

  v1 = OBJC_IVAR____TtC17SequoiaTranslator17AudioRouteManager___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudioRouteManager()
{
  result = qword_1003A9E48;
  if (!qword_1003A9E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100019AAC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioRouteManager.SuppressionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioRouteManager.SuppressionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100019D10()
{
  result = qword_1003AA388;
  if (!qword_1003AA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA388);
  }

  return result;
}

unint64_t sub_100019D68()
{
  result = qword_1003AA390;
  if (!qword_1003AA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA390);
  }

  return result;
}

unint64_t sub_100019DC0()
{
  result = qword_1003AA398;
  if (!qword_1003AA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA398);
  }

  return result;
}

void sub_100019E14(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (!a2)
  {
    swift_getKeyPath();
    sub_10001AB60();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v8 + 80);
    if (!v15 || (sub_10001B0E8(), v16 = v15, v17 = a4, v18 = static NSObject.== infix(_:_:)(), v17, v16, (v18 & 1) == 0))
    {
      if (qword_1003A92B8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000078E8(v30, qword_1003D2938);
      v31 = a4;

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412546;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v36 = *(v8 + 80);
        *(v34 + 4) = v36;
        *(v34 + 12) = 2112;
        *(v34 + 14) = v31;
        *v35 = v36;
        v35[1] = v31;
        v37 = v31;
        v38 = v36;
        _os_log_impl(&_mh_execute_header, v32, v33, "Error suppression manager<>handler mismatch %@ %@, dropping suppressionEvent", v34, 0x16u);
        sub_100005AD4(&unk_1003AECA0);
        swift_arrayDestroy();
      }

      return;
    }

    if (!a1)
    {
      if (qword_1003A92B8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000078E8(v39, qword_1003D2938);
      v10 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v10, v40))
      {
        goto LABEL_8;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v10, v40, "Empty suppression event received", v41, 2u);
LABEL_7:

LABEL_8:

      return;
    }

    v19 = qword_1003A92B8;
    v20 = a1;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000078E8(v21, qword_1003D2938);
    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = a1;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "Received new suppression event: %@", v25, 0xCu);
      sub_100009EBC(v26, &unk_1003AECA0);
    }

    v28 = [v22 type];
    v29 = *(v8 + 104);
    if (v28 == 1)
    {
      if (v29 == 1)
      {
        goto LABEL_35;
      }
    }

    else if (v28 == 2)
    {
      if (v29 == 2)
      {
        goto LABEL_35;
      }
    }

    else if (!*(v8 + 104))
    {
      goto LABEL_35;
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_35:
    v43 = [v22 facedownState] == 1;
    if ((*(v8 + 105) ^ v43))
    {
      v44 = swift_getKeyPath();
      __chkstk_darwin(v44);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {

      *(v8 + 105) = v43;
    }

    return;
  }

  if (qword_1003A92B8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000078E8(v9, qword_1003D2938);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error suppression handler: %@", v12, 0xCu);
    sub_100009EBC(v13, &unk_1003AECA0);

    goto LABEL_7;
  }
}