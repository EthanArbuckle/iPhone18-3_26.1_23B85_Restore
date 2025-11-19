id sub_100004F84()
{
  if (qword_1003B0F18 != -1)
  {
    sub_100257058();
  }

  v1 = qword_1003B0F10;

  return v1;
}

uint64_t sub_100005014(int a1)
{
  v3 = [v1 callStatus] == 6 || objc_msgSend(v1, "callStatus") == 1;
  if (![v1 isEmergency] || (v4 = v3 | ~objc_msgSend(v1, "isFailureExpected"), v5 = a1, (v4 & 1) != 0))
  {
    v5 = 0;
  }

  if ([v1 status] != 6 || !objc_msgSend(v1, "disconnectedReasonRequiresCallBackUI") || (objc_msgSend(v1, "isEmergency") & 1) == 0)
  {
    a1 = 0;
  }

  return (v5 | a1) & 1;
}

void sub_100005150(uint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5)
{
  v5 = a5;
  v7 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1000088E0();
      __CocoaSet.element(at:)();
      sub_1000064BC(0, v5);
      sub_100179574();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000064BC(0, a5);
    sub_1000088E0();
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      sub_1000088E0();
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v5 = v14;
      v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v7 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v10 = *(*(a4 + 48) + 8 * v7);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_15;
        }

        v8 = v7 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v12 = *(*(a4 + 48) + 8 * v7);

  v13 = v12;
}

uint64_t sub_100005340()
{
}

uint64_t sub_100005368()
{
}

uint64_t sub_100005384()
{

  return swift_slowAlloc();
}

void *sub_1000053B8()
{

  return sub_1001E2720(v1, v0, v3, v2);
}

uint64_t sub_1000053DC()
{
}

void sub_100005414(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100005434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1001B1E00(v9, &a9, a3);
}

id sub_100005450()
{

  return sub_1001FFAD8();
}

uint64_t sub_100005480()
{

  return String.init<A>(reflecting:)();
}

unint64_t sub_100005498(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_100008ADC(a1, a2, va);
}

void sub_1000054BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1000054DC()
{
  sub_100005B2C(v0);
}

id sub_100005538(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v8 + 2400);

  return [a1 v10];
}

void *sub_100005574()
{
  v2 = *(v0 + 24);

  return _Block_copy(v2);
}

uint64_t sub_10000558C()
{
}

uint64_t sub_1000055A8()
{
}

uint64_t sub_1000055CC()
{

  return swift_beginAccess();
}

uint64_t sub_1000055F4(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1000056B4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_1000056B4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10000664C();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_100006658(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

id sub_1000057FC()
{
  v1 = String._bridgeToObjectiveC()();

  isa = Set._bridgeToObjectiveC()().super.isa;

  v3 = [v0 initWithDisplayName:v1 handles:isa];

  return v3;
}

uint64_t sub_100005884(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

BOOL sub_100005908(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100005924()
{

  return swift_slowAlloc();
}

uint64_t sub_100005958(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v1 + 112) = a1;
}

void *sub_100005978(void *result)
{
  result[4] = v3;
  result[5] = v1;
  result[6] = v2;
  return result;
}

uint64_t sub_1000059A8()
{

  return swift_slowAlloc();
}

uint64_t sub_1000059E0()
{
  sub_100006848(v0, 1, 1, v2);
  sub_100006848(v1, 1, 1, v2);

  return type metadata accessor for URL();
}

uint64_t sub_100005A60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005AC0(uint64_t a1, uint64_t a2)
{
  sub_10014EA98(&qword_1003AAC00);
  swift_allocError();
  *v3 = a2;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_100005B2C(uint64_t a1)
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

uint64_t sub_100005B98()
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_100005BB8()
{
}

uint64_t sub_100005BEC()
{
  v3 = *(v0 + 8);
  *(v2 - 264) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v1;
  *(v2 - 240) = v3;
  return result;
}

uint64_t sub_100005C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100006848(a1, 0, 1, a4);

  return type metadata accessor for MainActor();
}

uint64_t sub_100005C90()
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t sub_100005CB0()
{

  return type metadata accessor for UUID();
}

id sub_100005CD0(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t sub_100005D4C()
{

  return swift_slowAlloc();
}

id sub_100005D64@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  v5 = *(v2 + 1096);

  return [v4 v5];
}

id sub_100005D94()
{
  v2 = *(v0 + 2896);

  return objc_allocWithZone(v2);
}

uint64_t sub_100005DAC()
{

  return sub_10020B2D8(v0);
}

unint64_t sub_100005E2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100014378(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

void sub_100005F6C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_100005FF8(void *a1, void *a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if ([a1 bypassIntervention])
  {
    (a3)[2](a3, a1, 0);

    _Block_release(a3);
  }

  else
  {
    v7 = [a1 handles];
    sub_1000064BC(0, &qword_1003AAE50);
    sub_1000064FC(&qword_1003AAE58, &qword_1003AAE50);
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = sub_10000654C(v8);
    if (v9)
    {
      v10 = v9;
      v48 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v45 = sub_100006554(v8);
      v46 = v11;
      v47 = v12 & 1;
      if ((v10 & 0x8000000000000000) == 0)
      {
        v36 = a2;
        v37 = a1;
        v38 = v6;
        aBlock = a3;
        v13 = 0;
        v41 = v8 & 0xC000000000000001;
        v14 = &selRef_submitCAMetric_viewId_;
        v42 = v8;
        v40 = v10;
        while (!__OFADD__(v13, 1))
        {
          v15 = v45;
          v16 = v47;
          v43 = v46;
          sub_100005150(v45, v46, v47, v8, &qword_1003AAE50);
          v18 = v17;
          sub_1000065B4(v17, &selRef_siriDisplayName);
          if (!v19)
          {
            v20 = [v18 v14[421]];
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          sub_10014EA98(&qword_1003AAF10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1002FAB60;
          v22 = [v18 v14[421]];
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          *(inited + 32) = v23;
          *(inited + 40) = v25;
          sub_1000055F4(inited);
          v26 = objc_allocWithZone(SCAParticipant);
          sub_1000057FC();

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v41)
          {
            v8 = v42;
            if (!v16)
            {
              goto LABEL_23;
            }

            v14 = &selRef_submitCAMetric_viewId_;
            if (__CocoaSet.Index.handleBitPattern.getter())
            {
              swift_isUniquelyReferenced_nonNull_native();
            }

            v32 = v40;
            v33 = v13 + 1;
            sub_10014EA98(&qword_1003AB420);
            v34 = Set.Index._asCocoa.modify();
            __CocoaSet.formIndex(after:isUnique:)();
            v34(v44, 0);
          }

          else
          {
            v8 = v42;
            v27 = sub_100178FB0(v15, v43, v16, v42);
            v29 = v28;
            v31 = v30;
            sub_100005884(v15, v43, v16);
            v45 = v27;
            v46 = v29;
            v47 = v31 & 1;
            v32 = v40;
            v14 = &selRef_submitCAMetric_viewId_;
            v33 = v13 + 1;
          }

          ++v13;
          if (v33 == v32)
          {

            sub_100005884(v45, v46, v47);
            v35 = v48;
            v6 = v38;
            a3 = aBlock;
            a2 = v36;
            a1 = v37;
            goto LABEL_20;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_23:
      _Block_release(aBlock);
      __break(1u);
    }

    else
    {

      v35 = &_swiftEmptyArrayStorage;
LABEL_20:
      sub_1001792AC(a1, v35, sub_1001794FC, v6, a2, &unk_10035BFA0, &off_10035F110, &unk_1002FBD80);

      _Block_release(a3);
    }
  }
}

uint64_t sub_100006480()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000064BC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000064FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000064BC(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006554(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

uint64_t sub_1000065B4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1000085C0();
}

Swift::Int sub_100006658(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10019F8EC();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1001A02AC();
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1001A0030();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1000067F8()
{

  return swift_unknownObjectWeakInit();
}

uint64_t sub_1000068AC(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2048;
  return result;
}

NSArray sub_1000068D4()
{

  return Array._bridgeToObjectiveC()();
}

uint64_t sub_100006918@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_100163918(v2, &a2 - a1);
}

void sub_10000696C()
{

  sub_1002313A0(v1, 0xD000000000000011, v0 | 0x8000000000000000);
}

void sub_1000069A8(Swift::String a1)
{

  String.append(_:)(a1);
}

uint64_t sub_1000069C0()
{
}

void sub_1000069D8()
{

  sub_1001CC610(v0);
}

uint64_t sub_100006A20()
{

  return swift_getObjectType();
}

uint64_t sub_100006A40(uint64_t a1)
{

  return sub_100006AC0(a1, 1, v1);
}

uint64_t sub_100006A58()
{
}

void *sub_100006A74(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x98uLL);
}

void sub_100006A90()
{
  *(v2 - 104) = v0;
  *(v2 - 96) = v1;
  *(v2 - 136) = _NSConcreteStackBlock;
}

uint64_t sub_100006AE8(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AA7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006BB0()
{

  return type metadata accessor for Logger();
}

id sub_100006BD0()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

id sub_100006C44()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

id sub_100006C60()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

id sub_100006CB0()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_100006CC8()
{

  return swift_task_create();
}

uint64_t sub_100006D28()
{

  return swift_unknownObjectWeakInit();
}

void sub_100006D40(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

id sub_100006D78()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

id sub_100006D94()
{
  v3 = *(v1 + 1096);

  return [v0 v3];
}

uint64_t sub_100006DD0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL sub_100006E00(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100006E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{

  sub_1001E5BA0(v47, &a47, &a17);
}

double sub_100006E74@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

id sub_100006E88(uint64_t a1)
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

id sub_100006F08()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

void sub_100006F20(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v4 = v1 + 16 * v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = 1;
}

uint64_t sub_100006F7C()
{

  return swift_once();
}

uint64_t sub_100006FDC()
{
  sub_1000058A8();
  sub_1000301C8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_1000075E8(v1);

  return v4(v3);
}

uint64_t sub_10000706C()
{

  return swift_once();
}

void sub_10000708C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void sub_1000070D4()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

void sub_1000070F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100007158()
{

  return swift_beginAccess();
}

void sub_100007188()
{

  sub_1001621BC();
}

id sub_1000071B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 2400);

  return [a1 v9];
}

uint64_t sub_1000071D4()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1000071EC()
{

  return sub_100158DE8(v1, v0);
}

uint64_t sub_100007204(float a1)
{
  *v1 = a1;

  return swift_unknownObjectRetain();
}

uint64_t sub_100007238()
{

  return CircleOverlayConfig.init(corner:scale:imageName:color:imageColor:imageScale:)();
}

id sub_1000072A4()
{
  *(v1 + 32) = v2;

  return [v0 leadingAnchor];
}

uint64_t sub_1000072F8()
{

  return swift_task_alloc();
}

uint64_t sub_100007324()
{

  return swift_allocObject();
}

uint64_t sub_10000733C()
{

  return swift_getObjectType();
}

uint64_t sub_100007354()
{

  return UIButton.configuration.setter();
}

uint64_t sub_10000736C()
{

  return swift_getObjectType();
}

uint64_t sub_100007398()
{

  return type metadata accessor for CircleOverlayConfig.CircleCorner(0);
}

uint64_t sub_1000073C0()
{

  return swift_allocObject();
}

uint64_t sub_1000073F0()
{

  return swift_once();
}

uint64_t sub_100007410(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009794;

  return v6(a1);
}

void sub_100007514(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100007530(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_10000755C()
{

  return swift_once();
}

id sub_1000075C8(uint64_t a1)
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

uint64_t (*sub_100007618@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>))()
{
  *(v2 + 240) = a2;
  *(v2 + 248) = a1;
  return sub_10016E2BC;
}

uint64_t sub_100007634()
{

  return swift_once();
}

id sub_100007680(uint64_t a1)
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

id sub_1000076A0(uint64_t a1)
{
  v4 = *(v1 + 3328);

  return [v2 v4];
}

uint64_t sub_1000076C0()
{

  return swift_once();
}

unint64_t sub_1000076E0()
{

  return sub_100028A30();
}

id sub_100007718(uint64_t a1)
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

id sub_100007738()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

id sub_100007768()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

uint64_t sub_1000077E0()
{

  return swift_once();
}

id sub_100007848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *v14 = a13;
  *(v14 + 4) = v13;
  *a1 = v13;

  return v13;
}

id sub_100007888(uint64_t *a1)
{

  return sub_1001D2AD0(a1, sub_1001D35CC);
}

double sub_1000078C0()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 8) = 0u;
  return result;
}

uint64_t sub_1000078D4()
{

  return swift_once();
}

id sub_1000078F4()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_100007910()
{

  return swift_once();
}

uint64_t sub_100007930()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10000796C()
{

  return swift_once();
}

id sub_10000798C()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_1000079DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0xE000000000000000;
  v8 = 0;

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, *&a3, v4, *&v6, *&v8)._countAndFlagsBits;
}

uint64_t sub_1000079FC(uint64_t a1)
{

  return sub_10000830C(a1, v1);
}

uint64_t sub_100007AB8()
{

  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t (*sub_100007AD8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>))()
{
  *(v2 + 720) = a1;
  *(v2 + 712) = a2;
  return sub_1002476B8;
}

uint64_t sub_100007B40()
{

  return String.utf8CString.getter();
}

void sub_100007B74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id sub_100007BAC()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_100007BC4()
{

  return sub_1000064BC(0, v0);
}

uint64_t sub_100007BE0()
{

  return swift_arrayInitWithCopy();
}

id sub_100007D54(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 24);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

BOOL sub_100007DC4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100007DEC()
{

  return SOSUIWebRTCStateName.rawValue.getter();
}

unint64_t sub_100007E60(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_100008ADC(0x654D3C7961727241, 0xEE003E6567617373, &a10);
}

id sub_100007E98()
{
  v4 = *(v1 + 1096);

  return [v0 v4];
}

unint64_t sub_100007EB4@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_100008ADC(0xD000000000000062, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t sub_100007EF8()
{
}

uint64_t sub_100007F10@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_100163918(v2, &a2 - a1);
}

void sub_100007F44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100007F64()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100007FDC()
{

  sub_1001623E4();
}

uint64_t sub_100008020(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_10014EA98(a3);
}

id sub_10000805C@<X0>(const char *a1@<X1>, double a2@<X8>)
{

  return [v2 a1];
}

uint64_t sub_100008078()
{
}

uint64_t sub_100008094(uint64_t a1)
{

  return sub_1000306A4(a1, v1);
}

uint64_t sub_1000080B8()
{

  return swift_allocObject();
}

uint64_t sub_1000080D4()
{

  return swift_beginAccess();
}

uint64_t sub_1000080FC()
{

  return swift_getWitnessTable();
}

id sub_100008158()
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

uint64_t sub_1000081D4()
{

  return swift_once();
}

uint64_t sub_1000081F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008208()
{
  sub_100006610();
  sub_1000058C4();
  v1 = *v0;
  sub_100006870();
  *v2 = v1;

  sub_10000535C();

  return v3();
}

uint64_t sub_10000830C(uint64_t a1, uint64_t *a2)
{
  sub_10014EA98(a2);
  sub_100006B9C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100008360(uint64_t a1, uint64_t *a2)
{
  sub_10014EA98(a2);
  sub_1000058E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000083C4()
{

  return dispatch thunk of Actor.unownedExecutor.getter();
}

id sub_1000083EC()
{
  v2 = *(v0 + 2896);

  return objc_allocWithZone(v2);
}

uint64_t sub_100008408(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

id sub_100008414()
{
  v4 = *(v0 + 3328);

  return [v1 v4];
}

BOOL sub_10000843C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100008458()
{

  return CircleOverlayConfig.init(corner:scale:imageName:color:imageColor:imageScale:)();
}

uint64_t sub_100008480()
{
}

BOOL sub_10000849C(unsigned __int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_100008530(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_10000855C(uint64_t a1@<X8>)
{
  v3 = 0xD00000000000001ALL;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_100008580()
{

  return swift_allocObject();
}

void sub_100008598(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

double sub_10000861C(double a1)
{
  result = v4 + vabdd_f64(a1, *(v2 + v1));
  *(v2 + v3) = result;
  *(v2 + v1) = 0xBFF0000000000000;
  return result;
}

uint64_t sub_100008638(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;

  return String.init<A>(describing:)();
}

uint64_t sub_100008690()
{

  return static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_1000086BC()
{

  return swift_allocObject();
}

id sub_1000086D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v5 + 2496);

  return [a1 v7];
}

uint64_t sub_1000086F0()
{

  return swift_beginAccess();
}

uint64_t sub_10000870C()
{
  sub_100005B2C(v0);
}

id sub_100008760()
{
  v3 = *(v1 + 1352);

  return [v0 v3];
}

uint64_t sub_10000877C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1000087D0()
{

  return swift_beginAccess();
}

uint64_t sub_1000087F8()
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

id sub_100008824()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

id sub_10000883C(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

void *sub_100008878(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000088EC()
{
}

id sub_10000891C(void *a1)
{
  v4 = *(v2 + 1928);

  return [a1 v4];
}

id sub_100008934()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_10000894C()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_100216984(v3);
}

uint64_t sub_10000896C()
{

  return CircleOverlayConfig.init(corner:scale:imageName:color:imageColor:imageScale:)();
}

id sub_1000089B0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1000089F8()
{

  return swift_slowAlloc();
}

uint64_t sub_100008A14(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008A70()
{

  return swift_slowAlloc();
}

uint64_t sub_100008A94()
{

  return swift_getKeyPath();
}

uint64_t sub_100008AAC()
{

  return CircleOverlayConfig.init(corner:scale:imageName:color:imageColor:imageScale:)();
}

unint64_t sub_100008ADC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005E2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100005A60(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100005B2C(v11);
  return v7;
}

unint64_t sub_100008BD4()
{
  *(v0 + 56) = v1;

  return sub_100162160();
}

uint64_t sub_100008C44()
{

  return type metadata accessor for Features();
}

void sub_100008C60()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2048;
  *(v2 + 14) = v0;
}

id sub_100008C94(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_100008CD0()
{
}

uint64_t sub_100008D28()
{

  return swift_dynamicCast();
}

void sub_100008DB0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_100008E38@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1001B1E00(v2, &a2, a1 + 8);
}

void sub_100008E54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

void sub_100009080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100009170(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[FTServerBag sharedInstance];
    v6 = [v5 objectForKey:@"callprompt-bypass-blocked-bundle-identifiers"];

    if (v6)
    {
      v7 = [v3 bundleIdentifier];
      v8 = [v6 containsObject:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

id sub_100009304(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 bundleIdentifier];
    v6 = defaultCallingAppLSBundleIdentifier();
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10000946C()
{
  v1 = [v0 getState];
  v2 = [v1 activeServices];

  return v2 & 1;
}

id sub_1000094D8()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

uint64_t sub_1000094F4(uint64_t a1)
{
  sub_100006AC0(v1, 1, a1);
}

uint64_t sub_100009560(uint64_t a1)
{
  sub_100006848(v1, 0, 1, a1);

  return type metadata accessor for MainActor();
}

uint64_t sub_1000095CC()
{

  return swift_once();
}

void *sub_1000095EC(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

id sub_100009614(uint64_t a1)
{
  v4 = *(v1 + 3328);

  return [v2 v4];
}

uint64_t sub_100009634()
{

  return swift_getObjectType();
}

void sub_100009690(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1001F1A28(a1, v3, a3, v4, 0.0);
}

uint64_t sub_1000096B0()
{

  return sub_100006AC0(v1, 1, v0);
}

void sub_100009708(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100009750()
{
}

uint64_t sub_100009794()
{
  sub_100006610();
  sub_1000058C4();
  v1 = *v0;
  sub_100006870();
  *v2 = v1;

  sub_10000535C();

  return v3();
}

uint64_t sub_100009878(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10014EA98(a3);
  sub_1000058E8();
  v4 = sub_1000085C0();
  v5(v4);
  return a2;
}

uint64_t sub_1000098D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10014EA98(a3);
  sub_1000058E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100009960()
{
  if (qword_1003B0F48 != -1)
  {
    sub_100257094();
  }

  return qword_1003B0F40;
}

uint64_t sub_100009BF0(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for Features()) init];
  if (Features.fullScreenOutgoingFTAEnabled.getter())
  {
    v3 = [a1 originatingUIType];
    if (v3 <= 0x20)
    {
      v4 = 0x1000C0000uLL >> v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  sub_1000064BC(0, &qword_1003AB400);
  v5 = [a1 provider];
  v6 = [objc_opt_self() expanseProvider];
  v7 = static NSObject.== infix(_:_:)();

  return v4 & v7 & 1;
}

uint64_t sub_100009CF8()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

__n128 sub_100009D30(uint64_t a1)
{
  result = *(v1 - 120);
  v3 = *(v1 - 104);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

void sub_100009E84(void *a1)
{
  v2 = v1;
  v4 = sub_10014EA98(&qword_1003AA7B0);
  __chkstk_darwin(v4 - 8, v5);
  type metadata accessor for Features();
  v6 = static Features.shared.getter();
  v7 = Features.isDominoEnabled.getter();

  if (v7)
  {
    sub_10000A064();
    type metadata accessor for TaskPriority();
    sub_100026EF4();
    type metadata accessor for MainActor();
    v8 = v2;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;
    sub_100007188();
    v12 = v11;
    sub_100026EF4();
    v13 = v8;
    v14 = a1;

    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v14;
    v16[5] = v12;
    v16[6] = v13;
    sub_100007188();
  }
}

uint64_t sub_10000A014()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000A064()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000A2EC();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v8 = v3 + 8;
  result = v9(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v8 = OBJC_IVAR___ICSAmbientActivityController_hasStartedMonitoringCalls;
  if (*(v1 + OBJC_IVAR___ICSAmbientActivityController_hasStartedMonitoringCalls))
  {
    return result;
  }

  if (qword_1003A9FB0 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v11 = type metadata accessor for Logger();
  sub_100008A14(v11, &unk_1003B8960);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting to monitor calls", v14, 2u);
  }

  sub_10014EA98(&qword_1003AD390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FB510;
  v16 = TUCallCenterCallStatusChangedNotification;
  v17 = TUCallCenterVideoCallStatusChangedNotification;
  *(inited + 32) = TUCallCenterCallStatusChangedNotification;
  *(inited + 40) = v17;
  v18 = OBJC_IVAR___ICSAmbientActivityController_notificationCenter;
  v19 = v16;
  v20 = v17;
  for (i = 32; i != 48; i += 8)
  {
    [*(v1 + v18) addObserver:v1 selector:"handleCallStatusChanged:" name:*(inited + i) object:0];
  }

  swift_setDeallocating();
  result = sub_100030768();
  *(v1 + v8) = 1;
  return result;
}

unint64_t sub_10000A2EC()
{
  result = qword_1003AAAB0;
  if (!qword_1003AAAB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AAAB0);
  }

  return result;
}

uint64_t sub_10000A330()
{
  sub_100005B2C(v0);
}

uint64_t sub_10000A378()
{

  return swift_slowAlloc();
}

id sub_10000A394()
{
  *(v1 + 40) = v2;

  return [v0 trailingAnchor];
}

uint64_t sub_10000A3D4(uint64_t a1)
{
  sub_100006AC0(v1, 1, a1);
}

void sub_10000A410()
{
  v1 = *(v0 - 224);
  *(v0 - 120) = *(v0 - 232);
  *(v0 - 112) = v1;
  *(v0 - 152) = _NSConcreteStackBlock;
}

uint64_t sub_10000A43C()
{
}

uint64_t sub_10000A474()
{

  return swift_beginAccess();
}

uint64_t sub_10000A4A0()
{

  return swift_task_alloc();
}

uint64_t sub_10000A4CC()
{

  return type metadata accessor for UUID();
}

uint64_t sub_10000A4EC()
{

  return swift_getObjectType();
}

uint64_t sub_10000A504()
{

  return UIButton.configuration.getter();
}

uint64_t sub_10000A51C()
{

  return swift_slowAlloc();
}

uint64_t sub_10000A554()
{

  return type metadata accessor for CircleOverlayConfig();
}

uint64_t sub_10000A57C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);
  *(v2 - 248) = result;
  *(v2 - 240) = v3;
  return result;
}

void sub_10000A6F8()
{
  sub_100005D28();
  v2 = v0;
  v4 = v3;
  type metadata accessor for UUID();
  sub_10000C454();
  v6 = v5;
  v9 = __chkstk_darwin(v7, v8);
  __chkstk_darwin(v9, v10);
  v12 = &v34 - v11;
  v13 = [v4 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = OBJC_IVAR___ICSCallAnalyticsLogger_incomingCallAnalyticsViews;
  sub_1000080D4();
  v15 = *(v2 + v14);

  v16 = sub_10000A9DC(v12, v15);
  v39 = v18;
  v40 = v17;
  v38 = v19;

  v20 = *(v6 + 8);
  v20(v12, v1);
  if ((v16 & 0xFF00) != 0x200)
  {
    v21 = v4;
    v22 = sub_1001F0C4C(v21);
    if (v22 != 6)
    {
      v37 = v22;
      if (qword_1003A9F98 != -1)
      {
        sub_1000076C0();
      }

      v36 = qword_1003B8928;
      sub_10014EA98(&qword_1003AB478);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1002FAB60;
      v24 = [v21 uniqueProxyIdentifierUUID];
      v35 = v21;
      v25 = v24;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = UUID.uuidString.getter();
      v28 = v27;
      v29 = sub_100006A08();
      (v20)(v29);
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_10002BBB4();
      *(v23 + 32) = v26;
      *(v23 + 40) = v28;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      if (v38 == 11)
      {
        v30 = 10;
      }

      else
      {
        v30 = v38;
      }

      if (v37 == 3)
      {
        v31 = v38;
      }

      else
      {
        v31 = v30;
      }

      sub_1001E85FC(v16 & 0x1FF, v40, v39, v38 & 0x100 | v31, v37);
      v32 = [v35 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100025B68();
      sub_100250FF8();
      v33 = sub_100006A08();
      (v20)(v33);
      swift_endAccess();
    }
  }

  sub_100007B28();
}

uint64_t sub_10000A9DC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 512;
  }

  v3 = sub_10017007C();
  if ((v4 & 1) == 0)
  {
    return 512;
  }

  v5 = (*(a2 + 56) + 32 * v3);
  if (v5[1])
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return v6 | *v5;
}

id sub_10000B1F4(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping ringtone and announcement", v5, 2u);
  }

  v3 = [*(a1 + 32) callAnnouncement];
  [v3 stop];

  [*(a1 + 32) setAudioSessionIdentifier:0];
  return [*(a1 + 32) setCallAnnouncement:0];
}

uint64_t sub_10000B2A0()
{
  if (qword_1003B0F38 != -1)
  {
    sub_100257080();
  }

  return qword_1003B0F30;
}

id sub_10000B3C8(void *a1, SEL *a2)
{
  result = *(v2 + *a1);
  if (result)
  {
    return [result *a2];
  }

  return result;
}

void sub_10000B408(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_10000B428(unint64_t *a1, unint64_t *a2)
{

  return sub_10003012C(a1, a2);
}

uint64_t sub_10000B474(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001B37D4(v3, v4, a3);
}

uint64_t sub_10000B504()
{
  sub_1000058A8();
  sub_1000301C8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_1000075E8(v1);

  return v4(v3);
}

unint64_t sub_10000B594()
{
  result = qword_1003AAE30;
  if (!qword_1003AAE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AAE30);
  }

  return result;
}

void sub_10000BAC8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A2EC();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (qword_1003A9FB0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  sub_100008A14(v15, &unk_1003B8960);
  (*(v5 + 16))(v8, a1, v4);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v2;
    v20 = v19;
    v35 = v19;
    *v18 = 136315138;
    v34 = Notification.name.getter();
    type metadata accessor for Name(0);
    v21 = String.init<A>(reflecting:)();
    v23 = v22;
    (*(v5 + 8))(v8, v4);
    v24 = sub_100008ADC(v21, v23, &v35);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Observed notification: %s", v18, 0xCu);
    sub_100005B2C(v20);
    v2 = v33;
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  if ([*(v2 + OBJC_IVAR___ICSAmbientActivityController_callCenter) hasCurrentCalls])
  {
    v25 = [*(v2 + OBJC_IVAR___ICSAmbientActivityController_sceneManager) ambientScene];
    if (v25)
    {

      sub_10002DA10();
    }

    else
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "There are no ambientScene, ignore call status update", v31, 2u);
      }
    }
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "There are no current calls that need an ambient activity", v28, 2u);
    }

    sub_100031744();
  }
}

void sub_10000BF3C(uint64_t a1, unint64_t *a2)
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

void sub_10000C078()
{
  Notification.object.getter();
  if (v2)
  {
    sub_1000064BC(0, &qword_1003ADBE0);
    if (swift_dynamicCast())
    {
      sub_10000A6F8();
    }
  }

  else
  {
    sub_1000306A4(v1, &unk_1003AAF50);
  }
}

uint64_t sub_10000C15C()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_10000C188(void *a1)
{
  v4 = *(v2 + 1928);

  return [a1 v4];
}

id sub_10000C1A0()
{
  v3 = *(v0 + 2752);

  return [v1 v3];
}

void sub_10000C1B8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0xCu);
}

id sub_10000C1E4()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

void sub_10000C224(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_10000C260()
{
}

id sub_10000C2D8()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

uint64_t sub_10000C314()
{

  return swift_once();
}

uint64_t sub_10000C348()
{

  return StringProtocol.contains<A>(_:)();
}

double sub_10000C368(double a1)
{
  result = v4 + vabdd_f64(a1, *(v1 + v2));
  *(v1 + v3) = result;
  *(v1 + v2) = 0xBFF0000000000000;
  return result;
}

id sub_10000C38C()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_10000C3EC()
{

  return static NSObject.== infix(_:_:)();
}

uint64_t sub_10000C418()
{

  return swift_once();
}

uint64_t sub_10000C438()
{

  return swift_slowAlloc();
}

__n128 sub_10000C480(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  *(a1 + 64) = *(v1 + 48);
  return result;
}

id sub_10000C4AC()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

uint64_t sub_10000C4E0()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_10000C4FC(void (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{

  sub_1001F24BC(a1, v7, a3, v8, 0, 0, a7);
}

id sub_10000C568()
{
  v4 = *(v0 + 3328);

  return [v1 v4];
}

uint64_t sub_10000C584()
{

  return swift_getObjectType();
}

void sub_10000C5C0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

id sub_10000C618(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_10000C630(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t sub_10000C648()
{

  return swift_getOpaqueTypeConformance2();
}

id sub_10000C6B0(uint64_t a1)
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

double sub_10000C6E4()
{
  *(v0 - 240) = 0;
  result = 0.0;
  *(v0 - 256) = 0u;
  *(v0 - 272) = 0u;
  return result;
}

uint64_t sub_10000C6FC()
{

  return swift_once();
}

uint64_t (*sub_10000C71C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>))()
{
  *(v2 + 720) = a1;
  *(v2 + 712) = a2;
  return sub_10024CDE8;
}

BOOL sub_10000C7F8(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isActive])
  {
    v3 = [(TUCall *)v2 provider];
    v4 = [v3 supportsDynamicSystemUI] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

uint64_t sub_10000C8E8()
{

  v0 = sub_10000DD0C();
  v2 = v1;

  if (v0)
  {
    v3 = v2;
    sub_1002459C4(v0, v2);
    objc_opt_self();
    sub_100008524();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10000C97C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_100008524();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_10000C9C0(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = ([(TUCall *)v2 isVideo]& 1) == 0 && [(TUCall *)v2 status]== 1;

  return v3;
}

BOOL sub_10000CA0C(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isVideo])
  {
    v3 = [(TUCall *)v2 status]== 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_10000CA58(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = ([(TUCall *)v2 isVideo]& 1) == 0 && [(TUCall *)v2 status]== 3;

  return v3;
}

uint64_t sub_10000CDA0()
{

  return sub_10016ECCC();
}

uint64_t sub_10000CDCC(uint64_t a1, uint64_t *a2)
{

  return sub_10014EA98(a2);
}

void *sub_10000CE48()
{
  result = sub_10000C8E8();
  if (result)
  {
    v1 = result;
    v2 = [result viewControllers];

    sub_1000064BC(0, &qword_1003B0550);
    sub_100008524();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!sub_100017230(v3))
    {

      return 0;
    }

    sub_100017238(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;

    objc_opt_self();
    sub_100008524();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10000CF28(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_10000CF58(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000DD0C()
{
  swift_getKeyPath();
  sub_10000728C();
  sub_10000C97C(v0, 255, v1);
  sub_100007AB8();

  v2 = sub_1000089C8();
  sub_10000DDCC(v2, v3);
  return sub_1000089C8();
}

uint64_t sub_10000DD9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000DD0C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_10000DDCC(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

BOOL sub_10000DE0C(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isVideo])
  {
    v3 = [(TUCall *)v2 status]== 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10000E4A0(uint64_t a1)
{
  v2 = v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100245C28();

    return;
  }

  type metadata accessor for Features();
  v6 = static Features.shared.getter();
  v7 = Features.isiPadPostersEnabled(for:)();

  v8 = *(v2 + OBJC_IVAR___ICSCallManagerBridge_callDisplayStyleManager);
  if (v7)
  {
    [*(v2 + OBJC_IVAR___ICSCallManagerBridge_callDisplayStyleManager) setUsesLargeFormatUI:1];
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 sharedInstance];
    v12 = [objc_allocWithZone(iPadAudioCallViewController) initWithCallDisplayStyleManager:v10 callCenter:v11 featureFlags:*(v2 + OBJC_IVAR___ICSCallManagerBridge_flags) call:a1];
  }

  else
  {
    v13 = objc_opt_self();
    v14 = v8;
    v11 = [v13 sharedInstance];
    v12 = [objc_allocWithZone(PHAudioCallViewController) initWithCallDisplayStyleManager:v14 callCenter:v11 featureFlags:*(v2 + OBJC_IVAR___ICSCallManagerBridge_flags)];
  }

  v15 = v12;

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = v15;
  [v17 setInCallRootViewController:Strong];

  v18 = [v17 parentViewController];
  if (v18)
  {
    v19 = v18;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      goto LABEL_12;
    }
  }

  v20 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v17];
LABEL_12:

  v21 = v20;
  [v21 setOverrideUserInterfaceStyle:2];
  v22 = [v21 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_26;
  }

  v23 = v22;
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 view];

    if (!v26)
    {
LABEL_27:
      __break(1u);
      return;
    }

    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
  }

  else
  {
    v28 = 0.0;
    v30 = 0.0;
    v32 = 0.0;
    v34 = 0.0;
  }

  [v23 setFrame:{v28, v30, v32, v34}];

  v35 = [v21 view];
  if (!v35)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = v35;
  [v35 setAutoresizingMask:18];

  [v21 setNavigationBarHidden:1];
  v37 = swift_unknownObjectWeakLoadStrong();
  [v21 setDelegate:v37];

  [v21 _setBuiltinTransitionStyle:1];
  v38 = [v21 navigationBar];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 clearColor];
  v42 = sub_100245BE8();
  [v42 v43];

  [v40 setTranslucent:1];
  v44 = [objc_allocWithZone(UIImage) init];
  v45 = sub_100245BE8();
  [v45 v46];

  v47 = [objc_allocWithZone(UIImage) init];
  v48 = sub_100245BE8();
  [v48 v49];

  v50 = [v39 whiteColor];
  v51 = sub_100245BE8();
  [v51 v52];

  sub_10014EA98(&qword_1003ABA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FAB60;
  *(inited + 32) = NSForegroundColorAttributeName;
  v54 = NSForegroundColorAttributeName;
  v55 = [v39 whiteColor];
  *(inited + 64) = sub_1000064BC(0, &qword_1003B0520);
  *(inited + 40) = v55;
  type metadata accessor for Key(0);
  sub_10000C97C(&qword_1003AA500, 255, type metadata accessor for Key);
  v56 = Dictionary.init(dictionaryLiteral:)();
  sub_100245A80(v56, v40);
  swift_unknownObjectWeakAssign();
  v57 = [v21 parentViewController];

  if (v57)
  {
  }

  else
  {
    v58 = swift_unknownObjectWeakLoadStrong();
    if (v58)
    {
      v59 = v58;
      [v58 presentViewControllerFullScreen:v21];
    }

    else
    {
    }
  }

  sub_100245C28();
}

uint64_t PHAudioCallViewController.makeHeldCallControls(callCenter:style:)(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_100007DB8();
  v7 = type metadata accessor for HeldInCallControlsView.Style();
  sub_10000688C();
  v9 = v8;
  __chkstk_darwin(v10, v11);
  sub_100005BD0();
  sub_100006634();
  v12 = [v5 features];
  v13 = [v12 shouldEmbedSwapBanner];

  result = 0;
  if (v13)
  {
    v15 = &enum case for HeldInCallControlsView.Style.ambient(_:);
    if (a2 != 3)
    {
      v15 = &enum case for HeldInCallControlsView.Style.regular(_:);
    }

    (*(v9 + 104))(v4, *v15, v7);
    type metadata accessor for HeldInCallControlsView();
    v16 = v2;
    return HeldInCallControlsView.__allocating_init(callCenter:style:)();
  }

  return result;
}

uint64_t sub_10000FF6C()
{

  return swift_beginAccess();
}

uint64_t sub_10000FF84(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

BOOL sub_10000FFB4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000FFFC()
{

  return ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

id PHAudioCallViewController.makeCallDetailsCoordinator(bannerPresentationManager:existingCoordinator:deferredPresentationManager:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = direct field offset for CNKBannerPresentationManager.value;
  sub_100008D1C();
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

  if (!v8)
  {
    if (a2)
    {
      v15 = objc_allocWithZone(type metadata accessor for DetailsCoordinatorCreationResult());
      return sub_100012544(1, 0);
    }

    v8 = 0;
LABEL_9:
    v16 = objc_allocWithZone(type metadata accessor for DetailsCoordinatorCreationResult());
    v14 = sub_100012544(0, 0);

    return v14;
  }

  if (a2)
  {
    goto LABEL_9;
  }

  v9 = v8;
  if (![v3 parentViewController])
  {
    v10 = v3;
  }

  objc_allocWithZone(type metadata accessor for CallDetailsCoordinator());
  v11 = v9;
  swift_unknownObjectRetain();
  v12 = CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)();
  v13 = objc_allocWithZone(type metadata accessor for DetailsCoordinatorCreationResult());
  v14 = sub_100012544(2, v12);

  return v14;
}

id sub_100012544(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC13InCallService32DetailsCoordinatorCreationResult_outcome] = a1;
  *&v2[OBJC_IVAR____TtC13InCallService32DetailsCoordinatorCreationResult_coordinator] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DetailsCoordinatorCreationResult();
  return objc_msgSendSuper2(&v4, "init");
}

BOOL sub_10001299C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentCalls];

  sub_1000064BC(0, &qword_1003ADBE0);
  sub_10000FF90();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100017230(v2);
  v4 = v3 == 0;
  if (sub_10000CF28(v2))
  {
    v5 = sub_100005D40();
    sub_100017238(v5, v6, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v2 + 32);
    }

    v8 = v7;

    if (v3 == 1)
    {
      if ([v8 status] == 6)
      {

        return 1;
      }

      else
      {
        v9 = [v8 status];

        return v9 == 5;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return v4;
}

uint64_t sub_100012AF0(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100012AFC(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

BOOL sub_100012B38()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_100012B50()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

id sub_100012B70()
{
  v1 = v0;
  v2 = &selRef_audioCategory;
  v3 = [v0 callCenter];
  v4 = [v3 frontmostCall];

  if (!v4)
  {
    return 0;
  }

  v5 = [v1 prioritizedCall];
  if (!v5)
  {
    v5 = v4;
  }

  v6 = [v1 associatedCallGroupForCall:v5];

  v7 = [v6 calls];
  sub_1000064BC(0, &qword_1003ADBE0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_100017230(v8);

  if (v9 > 1)
  {
    if (qword_1003A9F40 != -1)
    {
LABEL_89:
      sub_10000755C();
    }

    v10 = type metadata accessor for Logger();
    sub_1000058D0(v10, &unk_1003B8820);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!sub_100005908(v12))
    {
      goto LABEL_9;
    }

    v13 = sub_100005924();
    sub_10000539C(v13);
    v16 = "callToUseForWallpaper is nil, associatedCallGroup.calls.count > 1";
    goto LABEL_8;
  }

  v19 = &selRef_submitCAMetric_viewId_;
  if ([v1 usesCompactMulticallUI])
  {
    v20 = [v1 prioritizedCall];
    if (v20)
    {
      v17 = v20;

      return v17;
    }
  }

  v21 = [v1 callDisplayStyleManager];
  v22 = [v21 callDisplayStyle];

  v23 = &selRef_countByEnumeratingWithState_objects_count_;
  if (v22 == 3)
  {
    v24 = [v1 features];
    v25 = [v24 isDominoEnabled];

    if (v25)
    {
      if ([v1 participantsViewIsShowingMultipleLabel])
      {
        if (qword_1003A9F40 == -1)
        {
LABEL_19:
          v26 = type metadata accessor for Logger();
          sub_1000058D0(v26, &unk_1003B8820);
          v11 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();
          if (!sub_100005908(v27))
          {
            goto LABEL_9;
          }

          v28 = sub_100005924();
          sub_10000539C(v28);
          v16 = "callToUseForWallpaper is nil, participantsViewIsShowingMultipleLabel";
LABEL_8:
          sub_1000070F8(&_mh_execute_header, v14, v15, v16);
          sub_10000558C();
LABEL_9:

          return 0;
        }

LABEL_91:
        sub_10000755C();
        goto LABEL_19;
      }

      v79 = v6;
      v80 = v4;
      v29 = [v1 callCenter];
      v30 = [v29 currentCalls];

      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = sub_10000CF28(v31);
      v4 = 0;
      v84 = v31 & 0xFFFFFFFFFFFFFF8;
      v85 = v31 & 0xC000000000000001;
      v81 = v31;
      v32 = v31 + 32;
LABEL_22:
      if (v4 == v6)
      {
        v4 = v6;
      }

      else
      {
        if (v85)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v84 + 16))
          {
            __break(1u);
            goto LABEL_91;
          }

          v33 = *(v32 + 8 * v4);
        }

        v34 = v33;
        v35 = sub_100231B14(&off_10035A418);
        v36 = [v34 status];
        if (*(v35 + 16))
        {
          v37 = v36;
          Hasher.init(_seed:)();
          Hasher._combine(_:)(v37);
          Hasher._finalize()();
          while (1)
          {
            sub_10000C134();
            if ((v39 & 1) == 0)
            {
              break;
            }

            if (*(*(v35 + 48) + 4 * v38) == v37)
            {

              v40 = __OFADD__(v4++, 1);
              if (!v40)
              {
                goto LABEL_22;
              }

              __break(1u);
LABEL_92:
              sub_10000755C();
              goto LABEL_61;
            }
          }
        }
      }

      v41 = sub_10000CF28(v81);
      v2 = &selRef_audioCategory;
      v19 = &selRef_submitCAMetric_viewId_;
      if (v41 >= v4)
      {
        if (v4 == v41)
        {

          v6 = v79;
          v4 = v80;
          v23 = &selRef_countByEnumeratingWithState_objects_count_;
          goto LABEL_63;
        }

        v82 = v41;
        v83 = 1;
      }

      else
      {
        v82 = v4;
        v83 = -1;
        v4 = v41;
      }

      v6 = sub_10000CF28(v81);
      v42 = sub_10000CF28(v81);
      v43 = 0;
      do
      {
        v40 = __OFADD__(v43, v83);
        v43 += v83;
        if (v40)
        {
          goto LABEL_87;
        }

        if (v4 == v6)
        {
          goto LABEL_88;
        }

LABEL_43:
        v40 = __OFADD__(v4++, 1);
        if (v40)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        if (v4 == v42)
        {
          v4 = v42;
        }

        else
        {
          if (v85)
          {
            v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v4 < 0)
            {
              goto LABEL_85;
            }

            if (v4 >= *(v84 + 16))
            {
              goto LABEL_86;
            }

            v44 = *(v32 + 8 * v4);
          }

          v45 = v44;
          v46 = sub_100231B14(&off_10035A448);
          v47 = [v45 status];
          if (*(v46 + 16))
          {
            v48 = v47;
            Hasher.init(_seed:)();
            Hasher._combine(_:)(v48);
            Hasher._finalize()();
            while (1)
            {
              sub_10000C134();
              if ((v50 & 1) == 0)
              {
                break;
              }

              if (*(*(v46 + 48) + 4 * v49) == v48)
              {

                goto LABEL_43;
              }
            }
          }
        }
      }

      while (v4 != v82);

      v51 = v43 <= 1;
      v6 = v79;
      v4 = v80;
      v2 = &selRef_audioCategory;
      v19 = &selRef_submitCAMetric_viewId_;
      v23 = &selRef_countByEnumeratingWithState_objects_count_;
      if (!v51)
      {
        if (qword_1003A9F40 != -1)
        {
          goto LABEL_92;
        }

LABEL_61:
        v52 = type metadata accessor for Logger();
        sub_1000058D0(v52, &unk_1003B8820);
        v11 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (!sub_100005908(v53))
        {
          goto LABEL_9;
        }

        v54 = sub_100005924();
        sub_10000539C(v54);
        v16 = "callToUseForWallpaper is nil, answeredCalls > 1";
        goto LABEL_8;
      }
    }
  }

LABEL_63:
  v55 = [v1 v23[399]];
  v56 = [v55 shouldShowFullScreenCallWaiting];

  if (v56 & 1) != 0 || (v57 = [v1 v2[163]], v58 = TUCallCenter.cnk_wantsCallWaiting.getter(), v57, (v58 & 1) == 0) || (v59 = objc_msgSend(v1, v2[163]), v60 = objc_msgSend(v59, "cnk_hasTooManyCallsForCallWaitingBanner"), v59, (v60) || !objc_msgSend(v1, v19[411]))
  {
LABEL_73:
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v67 = type metadata accessor for Logger();
    sub_1000058D0(v67, &unk_1003B8820);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (sub_100005908(v69))
    {
      v70 = sub_100005924();
      sub_10000539C(v70);
      sub_1000070F8(&_mh_execute_header, v71, v72, "callToUseForWallpaper is frontmostCall");
      sub_10000558C();
    }

    return v4;
  }

  v17 = [v1 activeCall];
  if ([v17 isScreening])
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v61 = type metadata accessor for Logger();
    sub_1000058D0(v61, &unk_1003B8820);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();
    if (sub_100005908(v63))
    {
      v64 = sub_100005924();
      sub_10000539C(v64);
      sub_1000070F8(&_mh_execute_header, v65, v66, "callToUseForWallpaper: wantsCallWaiting but activeCall is nil");
      sub_10000558C();
    }

    goto LABEL_73;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v73 = type metadata accessor for Logger();
  sub_1000058D0(v73, &unk_1003B8820);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (sub_100005908(v75))
  {
    v76 = sub_100005924();
    sub_10000539C(v76);
    sub_1000070F8(&_mh_execute_header, v77, v78, "callToUseForWallpaper is activeCall, wantsCallWaiting (banner-based)");
    sub_10000558C();
  }

  return v17;
}

uint64_t sub_100013460(void *a1)
{
  v3 = [v1 callDisplayStyleManager];
  v4 = [v3 callDisplayStyle];

  if (v4 == 3)
  {
    goto LABEL_2;
  }

  v7 = [v1 features];
  v8 = [v7 isNameAndPhotoC3Enabled];

  v5 = 0;
  if (v8 && a1)
  {
    v9 = a1;
    v10 = sub_100005DE8();
    v12 = [v10 v11];
    v13 = sub_100005DE8();
    v15 = [v13 v14];
    if (v15 == 1)
    {

LABEL_8:
      v5 = 1;
      return v5 & 1;
    }

    if ([objc_opt_self() posterSourceIsSyncedWithContacts:v15])
    {

LABEL_11:
LABEL_2:
      v5 = 0;
      return v5 & 1;
    }

    v16 = sub_100005DE8();
    v18 = [v16 v17];
    v19 = [v18 effectiveStateForContact];
    if (v19 == 3)
    {
      v20 = [v18 pendingNickname];
      v21 = [v20 wallpaper];

      if (!v21)
      {
        v22 = [v18 currentNickname];
        v21 = [v22 wallpaper];

        if (!v21)
        {

          goto LABEL_11;
        }
      }
    }

    v23 = v9;
    v24 = sub_10016D3EC();
    v25 = sub_100013DA8(v24);

    if (v25)
    {
      v26 = sub_1000053A8();
      sub_100014194(v26, v27, v25, v28);

      if (*(&v42 + 1))
      {
        v29 = sub_100008D28();
        if (v29)
        {
          v30 = v39;
        }

        else
        {
          v30 = 0;
        }

        if (v29)
        {
          v31 = v40;
        }

        else
        {
          v31 = 0;
        }

LABEL_26:
        if ((v19 | 2) != 3)
        {

          goto LABEL_2;
        }

        v32 = [v18 currentNickname];
        if (v32 && (v33 = v32, v34 = [v32 wallpaper], v33, v34) && (v35 = sub_100231C60(v34), v36))
        {
          if (v31)
          {
            if (v35 == v30 && v36 == v31)
            {

              v5 = 0;
            }

            else
            {
              v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v5 = v38 ^ 1;
            }

            return v5 & 1;
          }
        }

        else
        {

          if (!v31)
          {
            goto LABEL_2;
          }
        }

        goto LABEL_8;
      }
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    sub_10000830C(&v41, &unk_1003AAF50);
    v30 = 0;
    v31 = 0;
    goto LABEL_26;
  }

  return v5 & 1;
}

BOOL sub_100013C0C()
{
  v1 = [v0 features];
  v2 = [v1 isEnhancedEmergencyEnabled];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 callCenter];
  v4 = [v3 currentCalls];

  sub_1000064BC(0, &qword_1003ADBE0);
  sub_10000FF90();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_10000CF28(v5))
  {
    v6 = sub_100005D40();
    sub_100017238(v6, v7, v5);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v5 + 32);
    }

    v9 = v8;
  }

  else
  {

    v11 = [objc_allocWithZone(ICSApplicationDelegate) init];
    v9 = [v11 mostRecentlyDisconnectedAudioCall];

    if (!v9)
    {
      v12 = 0;
      goto LABEL_11;
    }
  }

  v12 = v9;
  v13 = [v12 isEmergency];

  if (v13)
  {

    return 1;
  }

LABEL_11:
  v14 = [v0 currentState];

  return v14 == 10;
}

void *sub_100013DA8(void *a1)
{
  v3 = [v1 hasLastSeenPosterForCall:a1];
  result = 0;
  if (v3)
  {
    if (a1)
    {
      result = sub_1000140C4(a1);
      if (result)
      {
        if (result[2] && (v6 = result[4], v5 = result[5], , , v7 = [objc_opt_self() standardUserDefaults], v8 = String._bridgeToObjectiveC()(), v9 = objc_msgSend(v7, "dictionaryForKey:", v8), v7, v8, v9))
        {
          v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100014194(v6, v5, v10, &v12);

          if (v13)
          {
            sub_10014EA98(&qword_1003AAF30);
            if (swift_dynamicCast())
            {
              return v11;
            }
          }

          else
          {
            sub_10000830C(&v12, &unk_1003AAF50);
          }
        }

        else
        {
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100013F60(void *a1)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  v1 = a1;
  v2 = sub_1000140C4(v1);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (!v2[2])
  {

LABEL_12:
    v10 = 0;
    return v10 & 1;
  }

  v3 = v2[4];
  v4 = v2[5];

  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 dictionaryForKey:v6];

  if (!v7)
  {
LABEL_10:

LABEL_11:

    goto LABEL_12;
  }

  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v8 + 16))
  {

    goto LABEL_10;
  }

  sub_10001411C(v3, v4);
  v10 = v9;

  return v10 & 1;
}

uint64_t sub_1000140C4(void *a1)
{
  v1 = [a1 contactIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10001411C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10001884C(a1, a2, v4);
}

double sub_100014194@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10001411C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100005A60(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1000141F8()
{

  return swift_slowAlloc();
}

uint64_t sub_100014250(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = _NSConcreteStackBlock;
  return result;
}

BOOL sub_100014274(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000142E0()
{

  return specialized ContiguousArray.reserveCapacity(_:)();
}

uint64_t sub_1000142F8(uint64_t a1)
{
  *(v1 + 400) = a1;

  return type metadata accessor for RemoteAlertController();
}

id sub_100014320(void *a1)
{
  v4 = *(v2 + 1944);

  return [a1 v4];
}

id sub_100014338()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_100014350()
{

  return swift_beginAccess();
}

char *sub_100014378(uint64_t a1, unint64_t a2)
{
  v3 = sub_100018900(a1, a2);
  sub_100018A8C(&off_10035A3B0);
  return v3;
}

uint64_t sub_100014424()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 isNudityDetectionEnabledForService:v1];

  if (v2)
  {
    return 1;
  }

  else
  {
    return [v0 isCommunicationSafetyEnabled];
  }
}

void sub_10001452C(uint64_t a1)
{
  [*(a1 + 32) _updateStatusLabelVisibility];
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 40) == 3)
    {
      v2 = *(a1 + 32);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100121198;
      v10[3] = &unk_100359C80;
      v10[4] = v2;
      [v2 finishNewPosterUpdatesWithCompletion:v10];
    }
  }

  else
  {
    v3 = sub_100004F84();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SNAP: Fading out poster, set up background image as needed", v9, 2u);
    }

    v4 = *(a1 + 32);
    v5 = [v4 frontmostCall];
    v6 = [v4 contactImageDataForCall:v5];

    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = [[UIImage alloc] initWithData:v6];
      [v7 updateBackgroundContactImageViewWithImage:v8 animated:1];

      [*(a1 + 32) updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:0];
    }

    else
    {
      [*(a1 + 32) addDefaultBackgroundGradientView];
    }
  }
}

id sub_100016FA4()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

id sub_100016FBC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  v5 = *(v2 + 1096);

  return [v4 v5];
}

void sub_100016FD8()
{

  sub_1001A3CB0(v0, v1);
}

uint64_t sub_100016FF4()
{
  *(v3 - 248) = v0;
  *(v3 - 240) = v2;
  *(v3 - 272) = v1;

  return swift_unknownObjectRetain();
}

void sub_100017210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001819C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_100018238(void *a1)
{
  v2 = v1;
  v4 = [v2 features];
  v5 = [v4 isNameAndPhotoC3Enabled];

  result = 0;
  if (v5 && a1)
  {
    v7 = a1;
    v8 = [v2 contactToDisplayInCallWallpaperForCall:v7];
    v9 = [v2 sharedProfileStateOracleForCall:v7];
    if (![objc_opt_self() contactIsInAutoUpdateState:v8])
    {

      return 0;
    }

    v10 = v7;
    v11 = sub_100013DA8(a1);

    if (v11)
    {
      v12 = sub_1000053A8();
      sub_100014194(v12, v13, v11, v14);

      if (*(&v52 + 1))
      {
        v15 = swift_dynamicCast();
        if (v15)
        {
          v16 = v50[0];
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = v50[1];
        }

        else
        {
          v17 = 0;
        }

LABEL_16:
        v18 = [v9 avatarViewAnimationTypeForEffectiveState];
        if (qword_1003A9F40 != -1)
        {
          sub_10000755C();
        }

        v19 = type metadata accessor for Logger();
        sub_1000058D0(v19, &unk_1003B8820);

        v20 = v9;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        v23 = &selRef_countByEnumeratingWithState_objects_count_;
        if (os_log_type_enabled(v21, v22))
        {
          v49 = v16;
          v24 = swift_slowAlloc();
          v50[0] = swift_slowAlloc();
          *v24 = 136315906;
          v48 = v18;
          *&v51 = v18;
          type metadata accessor for CNSharedProfileAvatarAnimationType(0);
          v25 = String.init<A>(reflecting:)();
          v27 = v26;
          sub_100008ADC(v25, v26, v50);
          sub_1000055A8();
          *(v24 + 4) = v16;
          *(v24 + 12) = 2080;
          v28 = [v20 currentNickname];
          if (v28 && (v27 = v28, v16 = [v28 wallpaper], v27, v16) && (v29 = sub_100231C60(v16), v30))
          {
            *&v51 = v29;
            *(&v51 + 1) = v30;
            v31 = String.init<A>(reflecting:)();
            v27 = v32;
          }

          else
          {

            v31 = sub_100007B58();
          }

          sub_100008ADC(v31, v27, v50);
          sub_1000055A8();
          *(v24 + 14) = v16;
          *(v24 + 22) = 2080;
          v41 = [v20 pendingNickname];
          v42 = [v41 wallpaper];

          if (v42)
          {
            *&v51 = v42;
            sub_1000064BC(0, &qword_1003AAF48);
            v43 = String.init<A>(reflecting:)();
            v42 = v44;
          }

          else
          {
            v43 = sub_100007B58();
          }

          sub_100008ADC(v43, v42, v50);
          sub_1000055A8();
          *(v24 + 24) = v41;
          *(v24 + 32) = 2080;
          if (v17)
          {
            *&v51 = v49;
            *(&v51 + 1) = v17;

            v45 = String.init<A>(reflecting:)();
            v47 = v46;
          }

          else
          {
            v47 = 0xE300000000000000;
            v45 = 7104878;
          }

          sub_100008ADC(v45, v47, v50);
          sub_1000055A8();
          *(v24 + 34) = v41;
          _os_log_impl(&_mh_execute_header, v21, v22, "SNAP: suggestedNewPosterSourceAfterCallConnects effectiveAnimationType: %s \n oracle.currentNickname.wallpaper.filePath: %s \n oracle.pendingNickname.wallpaper: %s \n lastSeenContacts: %s", v24, 0x2Au);
          swift_arrayDestroy();
          sub_10000558C();
          sub_100005BB8();

          v16 = v49;
          v23 = &selRef_countByEnumeratingWithState_objects_count_;
          if (!v48)
          {
            goto LABEL_47;
          }
        }

        else
        {

          if (!v18)
          {
LABEL_47:

            return 3;
          }
        }

        v33 = [v20 v23[66]];
        if (v33 && (v34 = v33, v35 = [v33 wallpaper], v34, v35) && (v36 = sub_100231C60(v35), v37))
        {
          if (v17)
          {
            if (v36 == v16 && v37 == v17)
            {

              return 0;
            }

            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v39)
            {
              goto LABEL_41;
            }

            goto LABEL_36;
          }
        }

        else if (!v17)
        {
LABEL_41:

          return 0;
        }

LABEL_36:
        v40 = [objc_opt_self() posterSourceIsSyncedWithContacts:{objc_msgSend(v2, "currentDisplayedPosterSourceForCall:", v10)}];

        if ((v40 & 1) == 0)
        {
          return 2;
        }

        return 0;
      }
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
    }

    sub_10000830C(&v51, &unk_1003AAF50);
    v16 = 0;
    v17 = 0;
    goto LABEL_16;
  }

  return result;
}

unint64_t sub_10001884C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

char *sub_100018900(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100018A18(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_100018A18(uint64_t a1, uint64_t a2)
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

  sub_10014EA98(&qword_1003AB428);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_100018A8C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100178D04(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

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

id sub_100018B94(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___ICSPosterConfigurationWrapper_titleStyleAttributes;
  *&v2[OBJC_IVAR___ICSPosterConfigurationWrapper_titleStyleAttributes] = 0;
  *&v2[OBJC_IVAR___ICSPosterConfigurationWrapper_configuration] = a1;
  *&v2[OBJC_IVAR___ICSPosterConfigurationWrapper_source] = a2;
  *&v2[v3] = 0;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PosterConfigurationWrapper();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_100018C98()
{
  sub_100007DB8();
  type metadata accessor for NameAndPhotoUtilities();
  v0 = static NameAndPhotoUtilities.shared.getter();
  v1 = NameAndPhotoUtilities.currentIMNickname(matching:)();

  return v1;
}

Swift::Void __swiftcall PHAudioCallViewController.updateCallRecordingPositionIfNeeded()()
{
  v1 = [v0 features];
  v2 = [v1 callRecordingEnabled];

  if (v2)
  {
    v3 = [v0 callRecordingLeadingConstraint];
    if (v3)
    {
      v4 = v3;
      [v3 setConstant:sub_1001716A8()];
    }
  }
}

Swift::Void __swiftcall PHAudioCallViewController.updateCallHoldingPositionIfNeeded()()
{
  v1 = [v0 features];
  v2 = [v1 waitOnHoldEnabled];

  if (v2)
  {
    v3 = [v0 callHoldingLeadingConstraint];
    if (v3)
    {
      v4 = v3;
      [v3 setConstant:sub_10024C080()];
    }
  }
}

uint64_t sub_100019B40(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100019BAC(a2);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100019BAC(void *a1)
{
  v2 = a1;
  if (!a1)
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {
      return result;
    }

    v2 = result;
    v4 = v1;
  }

  swift_unknownObjectRetain();
  v5 = [v2 carKitSessionStatus];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 currentSession];

    if (v7)
    {

      if (qword_1003A9F50 != -1)
      {
        sub_10000706C();
      }

      v8 = type metadata accessor for Logger();
      sub_1000058D0(v8, &unk_1003B8850);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (!sub_100005908(v10))
      {
        goto LABEL_16;
      }

      *sub_100005924() = 0;
      v13 = "LiveVoicemail is disabled because we are connected to car play";
LABEL_15:
      sub_1000070F8(&_mh_execute_header, v11, v12, v13);
      sub_100005BB8();
LABEL_16:
      swift_unknownObjectRelease();

      return 0;
    }
  }

  swift_getObjectType();
  if ([swift_getObjCClassFromMetadata() hasCarKitRoute])
  {
    if (qword_1003A9F50 != -1)
    {
      sub_10000706C();
    }

    v14 = type metadata accessor for Logger();
    sub_1000058D0(v14, &unk_1003B8850);
    v9 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (!sub_100005908(v15))
    {
      goto LABEL_16;
    }

    *sub_100005924() = 0;
    v13 = "LiveVoicemail is disabled because we are connected to carkit";
    goto LABEL_15;
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_100019D94()
{

  return swift_allocObject();
}

BOOL sub_10001A290(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = [v3 status] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_10001A2F0(id a1, TUCall *a2)
{
  v2 = a2;
  if (([(TUCall *)v2 isHostedOnCurrentDevice]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(TUCall *)v2 isEndpointOnCurrentDevice];
  }

  return v3;
}

BOOL sub_10001A338(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = [v3 status] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_10001A398(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = [v3 status] == 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_10001A3F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = [v3 status] == 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10001A58C()
{
  if (qword_1003B1048 != -1)
  {
    sub_100257270();
  }

  v1 = qword_1003B1040;

  return v1;
}

BOOL sub_10001AD34()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  v2 = v1;

  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;

  if (v2 >= v5)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  return v6 > 1024.0;
}

void sub_10001B37C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v2 = [WeakRetained callCenter];
    v3 = [v2 incomingCall];

    v4 = [v16 featureFlags];
    v5 = TUCallScreeningEnabled();

    if (v5 && !v3)
    {
      v6 = [v16 callCenter];
      v3 = [v6 screeningCall];
    }

    v7 = [v16 bottomBar];
    v8 = [v7 controlForActionType:13];

    v9 = [v16 bottomBar];
    v10 = [v9 controlForActionType:9];

    if (!v10)
    {
      v11 = [v16 bottomBar];
      v10 = [v11 controlForActionType:12];
    }

    if (v3 && v10)
    {
      [v16 configureDeclineWithReminderButton:v8 declineWithMessageButton:v10 forIncomingCall:v3];
    }

    v12 = [v16 featureFlags];
    v13 = [v12 receptionistEnabled];

    if (v3 && v13)
    {
      v14 = [v16 bottomBar];
      v15 = [v14 controlForActionType:27];

      [v16 configureDeclineWithMoreButton:v15 forIncomingCall:v3];
    }

    WeakRetained = v16;
  }
}

BOOL sub_10001C200(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = [(TUCall *)v2 provider];
  if ([v3 isTelephonyProvider])
  {
    v4 = [(TUCall *)v2 status]== 1 || [(TUCall *)v2 status]== 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10001C518(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldShowUseRTTButton];
  v3 = [*(a1 + 32) supplementalBottomRightButton];
  [v3 setAlpha:v2];

  v4 = [*(a1 + 32) shouldShowUseRTTButton];
  v5 = [*(a1 + 32) supplementalBottomRightButton];
  [v5 setEnabled:v4];
}

BOOL sub_10001D2CC()
{
  v1 = [v0 callDisplayStyleManager];
  v2 = [v1 callDisplayStyle];

  return v2 == 3;
}

void sub_10001D320(void *a1)
{
  v3 = [v1 recordingIndicatorLayoutGuide];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 view];
    if (!v5)
    {
LABEL_13:
      __break(1u);
      return;
    }

    v6 = v5;
    [v5 removeLayoutGuide:v4];
  }

  v33 = [objc_allocWithZone(UILayoutGuide) init];
  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v7 addLayoutGuide:v33];

  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  sub_10014EA98(&unk_1003AAAA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002FB370;
  v12 = [a1 widthAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = dbl_1002FBA10[v10 == 1];
  v16 = [v13 widthAnchor];

  v17 = [v12 constraintEqualToAnchor:v16];
  *(v11 + 32) = v17;
  v18 = [v33 bottomAnchor];
  v19 = [a1 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v11 + 40) = v20;
  v21 = [v33 widthAnchor];
  v22 = [a1 widthAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 multiplier:v15];

  *(v11 + 48) = v23;
  v24 = [v33 heightAnchor];
  sub_10001D72C();
  v25 = [v24 constraintEqualToConstant:?];

  *(v11 + 56) = v25;
  v26 = [v33 centerXAnchor];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v28 = v27;
  v29 = objc_opt_self();
  v30 = [v28 centerXAnchor];

  v31 = [v26 constraintEqualToAnchor:v30];
  *(v11 + 64) = v31;
  sub_1000064BC(0, &qword_1003AAF70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:isa];

  [v1 setRecordingIndicatorLayoutGuide:v33];
}

void sub_10001D72C()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isIPadIdiom];

    if (v2)
    {
      [objc_opt_self() inCallControlSpacing];
    }

    else
    {
      v3 = [objc_opt_self() mainScreen];
      [v3 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v12.origin.x = v5;
      v12.origin.y = v7;
      v12.size.width = v9;
      v12.size.height = v11;
      CGRectGetWidth(v12);
      v13.origin.x = v5;
      v13.origin.y = v7;
      v13.size.width = v9;
      v13.size.height = v11;
      CGRectGetHeight(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10001D85C()
{
  if ([v0 middleViewState] == 2 || !objc_msgSend(v0, "recordingSupportedForCurrentCallDsplayStyles"))
  {
    return;
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 currentCalls];

  sub_1000064BC(0, &qword_1003ADBE0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = 0;
  v18 = sub_100017230(v3);
  while (1)
  {
    if (v18 == v4)
    {
      goto LABEL_21;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v5 = *(v3 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = [v5 callUUID];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [v0 activeCall];
    v12 = [v11 callUUID];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v8 == v13 && v10 == v15)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if ([v6 recordingAvailability] != 1)
    {

LABEL_21:

      return;
    }

LABEL_17:

    ++v4;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

BOOL sub_10001DAE0()
{
  v1 = [v0 callDisplayStyleManager];
  v2 = [v1 callDisplayStyle];

  return sub_10001DB7C(v2, &off_10035A478);
}

void sub_10001DBB0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentCalls];

  sub_1000064BC(0, &qword_1003ADBE0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100017230(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
LABEL_17:

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = [v5 callUUID];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [v19 activeCall];
    v12 = [v11 callUUID];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v8 == v13 && v10 == v15)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {

        continue;
      }
    }

    v18 = [v6 isRecording];

    if (v18)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_10001DE6C(void *a1)
{
  v2 = v1;
  v4 = [v1 features];
  v5 = [v4 callRecordingEnabled];

  if (!v5)
  {
    return;
  }

  v6 = [v2 callRecordingButtonViewController];
  if (!v6)
  {
    if (sub_10001D2CC())
    {
      if (qword_1003A9F68 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100008A14(v7, qword_1003B8898);
      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v8, "Not adding Call Recording button in Ambient.", v9, 2u);
      }

      goto LABEL_22;
    }

    v10 = [v2 frontmostCall];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = [v2 callRecordingPillViewController];
    if (v12)
    {
      oslog = v12;
      type metadata accessor for CallRecordingPillViewController();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_19;
      }

      v24 = CallRecordingPillViewController.viewModel.getter();

      v13 = [v11 callUUID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      [v11 recordingAvailability];
      v14 = [v11 recordingSession];
      v15 = v14;
      if (v14)
      {
        [v14 recordingState];
      }

      [v2 callRecordingAllowed];
      [v2 isCallRecordingActive];
      v16 = objc_allocWithZone(type metadata accessor for CallRecordingButtonViewController());
      oslog = v24;
      v17 = v2;
      v18 = CallRecordingButtonViewController.init(_:_:_:_:_:recordingIndicatorViewModel:presenter:)();
      [v17 setCallRecordingButtonViewController:v18];

      if (a1)
      {
        v19 = a1;
        v20 = [v17 callRecordingButtonViewController];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 view];
          if (v22)
          {
            v23 = v22;
            [v17 addChildViewController:v21];
            [v19 insertArrangedSubview:v23 atIndex:0];
            [v21 didMoveToParentViewController:v17];

            v6 = v23;
            goto LABEL_23;
          }
        }
      }

      else
      {
LABEL_19:
      }

LABEL_22:
      v6 = oslog;
      goto LABEL_23;
    }

    v6 = v11;
  }

LABEL_23:
}

Swift::Void __swiftcall PHAudioCallViewController.updateCallHoldingIfNeeded(_:)(UIStackView_optional a1)
{
  v2 = v1;
  [v1 addCallHoldingIfNeeded:a1.value.super.super.super.isa];
  v3 = [v1 callHoldingButtonViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CallHoldingButtonViewController();
    if (swift_dynamicCastClass())
    {
      v5 = [v1 frontmostCall];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 callUUID];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        v11._countAndFlagsBits = v8;
        v11._object = v10;
        CallHoldingButtonViewController.update(callUUID:)(v11);

        CallHoldingButtonViewController.update(holdingAvailability:)(1);
        [v1 updateWaitOnHoldServiceWithCallWithCall:v6];

        v4 = v6;
      }
    }
  }

  v12 = [v1 callHoldingButtonViewController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 view];

    if (v14)
    {
      [v14 setHidden:{objc_msgSend(v2, "holdingConditions") ^ 1}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10001E4D0(uint64_t a1)
{
  v3 = [v1 features];
  v4 = [v3 waitOnHoldEnabled];

  if (v4)
  {

    [v1 addHoldingButton:a1];
  }
}

void sub_10001E5C8(void *a1)
{
  v3 = [v1 features];
  v4 = [v3 waitOnHoldEnabled];

  if (v4)
  {
    v5 = [v1 callHoldingButtonViewController];
    if (!v5)
    {
      if (sub_10001D2CC())
      {
        return;
      }

      v6 = [v1 frontmostCall];
      if (!v6)
      {
        return;
      }

      v21 = v6;
      v7 = [v6 callUUID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100025E38(&qword_1003B08C8, sub_1002517FC);
      objc_allocWithZone(type metadata accessor for CallHoldingButtonViewController());
      v8 = v1;
      v9 = CallHoldingButtonViewController.init(_:delegate:)();
      [v8 setCallHoldingButtonViewController:v9];

      if (a1)
      {
        v10 = a1;
        v11 = [v8 callHoldingButtonViewController];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 view];
          if (v13)
          {
            v14 = v13;
            v15 = objc_opt_self();
            v16 = [v15 sharedInstance];
            v17 = [v16 callServicesClientCapabilities];

            [v17 setWantsToScreenCalls:1];
            v18 = [v15 sharedInstance];
            v19 = [v18 callServicesClientCapabilities];

            [v19 save];
            [v8 addChildViewController:v12];
            [v10 addArrangedSubview:v14];
            [v12 didMoveToParentViewController:v8];

            v20 = v10;
            v10 = v14;
            v21 = v12;
          }

          else
          {
            v20 = v12;
          }
        }

        v5 = v10;
      }

      else
      {
        v5 = v21;
      }
    }
  }
}

void sub_10001E934(void *a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 waitOnHoldService];
      if (v5)
      {
        v6 = v5;
        v7 = [a1 callUUID];
        if (!v7)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v7 = String._bridgeToObjectiveC()();
        }

        [v6 updateForCallWithUUID:v7];

        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }
}

BOOL sub_10001EA6C()
{
  v1 = [v0 features];
  v2 = [v1 waitOnHoldEnabled];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 callCenter];
  v4 = [v3 currentAudioAndVideoCallCount];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [v0 frontmostCall];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ([v5 isEndpointOnCurrentDevice] && (objc_msgSend(v6, "isHostedOnCurrentDevice") & 1) == 0 && (v7 = objc_msgSend(v0, "features"), v8 = objc_msgSend(v7, "smartHoldingRelayEnabled"), v7, (v8 & 1) == 0) || (v9 = objc_msgSend(v6, "provider"), v10 = objc_msgSend(v9, "isSystemProvider"), v9, !v10) || (objc_msgSend(v6, "isEmergency") & 1) != 0 || (objc_msgSend(v6, "isConferenced") & 1) != 0 || objc_msgSend(v6, "status") != 1 || !objc_msgSend(v6, "isEndpointOnCurrentDevice") || (v11 = objc_msgSend(v0, "callDisplayStyleManager"), v12 = objc_msgSend(v11, "callDisplayStyle"), v11, !sub_10001EC78(v12, &off_10035A568)))
  {

    return 0;
  }

  v13 = sub_10000849C([v0 middleViewState], &off_10035A5A0);

  return !v13;
}

BOOL sub_10001EC78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_10001F868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10001F8D4()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v21 - v9;
  v11 = OBJC_IVAR___PHCallTranslationController____lazy_storage___button;
  v12 = *(v0 + OBJC_IVAR___PHCallTranslationController____lazy_storage___button);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR___PHCallTranslationController____lazy_storage___button);
  }

  else
  {
    static UIButton.Configuration.plain()();
    sub_1000064BC(0, &qword_1003AAA98);
    sub_1001FFAD8();
    UIButton.Configuration.image.setter();
    UIButton.Configuration.contentInsets.setter();
    sub_1000064BC(0, &qword_1003ACFE8);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_1000064BC(0, &qword_1003ABA20);
    (*(v3 + 16))(v7, v10, v2);
    v15 = v14;
    v16 = UIButton.init(configuration:primaryAction:)();
    v17 = [objc_opt_self() labelColor];
    [v16 setTintColor:v17];

    [v16 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    (*(v3 + 8))(v10, v2);
    v18 = *(v1 + v11);
    *(v1 + v11) = v16;
    v13 = v16;

    v12 = 0;
  }

  v19 = v12;
  return v13;
}

uint64_t sub_10001FB90()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10001FBC8()
{
  v1 = v0;
  v2 = sub_10001F8D4();
  v3 = [v2 superview];

  if (v3)
  {

    [*(v1 + OBJC_IVAR___PHCallTranslationController____lazy_storage___button) setHidden:1];
    v4 = OBJC_IVAR___PHCallTranslationController_currentWorker;
    if (*(v1 + OBJC_IVAR___PHCallTranslationController_currentWorker))
    {

      v5 = CallTranslationWorker.hasTranslationActivity.getter();

      if (v5)
      {
        if (*(v1 + v4))
        {

          CallTranslationWorker.stopTranslationActivity()();
        }
      }
    }

    *(v1 + OBJC_IVAR___PHCallTranslationController_currentCall) = 0;

    sub_1001FFDD8(0);
    v7 = 0;
    memset(v6, 0, sizeof(v6));

    CallTranslationMoreMenuViewModel.update(_:)();

    sub_10000830C(v6, &qword_1003AE960);
  }
}

void sub_10001FD5C(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    v4 = [v3 uniqueProxyIdentifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = OBJC_IVAR___PHCallTranslationController_currentCall;
    if (!*(v2 + OBJC_IVAR___PHCallTranslationController_currentCall))
    {

      goto LABEL_10;
    }

    v9 = CallFacade.uniqueProxyIdentifier.getter();
    v11 = v10;

    if (v5 != v9 || v7 != v11)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_17;
      }

LABEL_10:
      type metadata accessor for CallCenterFacade();
      static CallCenterFacade.shared.getter();
      v14 = [v3 uniqueProxyIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = CallCenterFacade.call(with:)();

      if (!v15)
      {
LABEL_17:

        goto LABEL_19;
      }

      v47 = v3;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v63 = v19;
        *v18 = 136315138;
        v20 = [v47 uniqueProxyIdentifier];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = sub_100008ADC(v21, v23, &v63);

        *(v18 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v16, v17, "Update translation with new call %s.", v18, 0xCu);
        sub_100005B2C(v19);
      }

      if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), (v25 = swift_unknownObjectWeakLoadStrong()) != 0) && (v26 = v25, v27 = [v25 view], v26, v27))
      {
        sub_100201368(v27, &selRef_callTranslationControllerWithShouldRemoveTranslationViewFromHost_);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v31 = Strong;
          v32 = [Strong view];

          if (!v32)
          {
            __break(1u);
            return;
          }

          [v32 removeFromSuperview];
        }

        v33 = swift_unknownObjectWeakLoadStrong();
        if (v33)
        {
          v34 = v33;
          [v33 removeFromParentViewController];
        }

        v35 = swift_unknownObjectWeakLoadStrong();
        if (!v35)
        {
          goto LABEL_29;
        }

        v27 = v35;
        [v35 didMoveToParentViewController:0];
      }

LABEL_29:
      swift_unknownObjectWeakAssign();
      v36 = type metadata accessor for CallTranslationService();
      swift_retain_n();
      v37 = CallTranslationService.__allocating_init(call:videoCall:)();
      *(&v64 + 1) = v36;
      v65 = &protocol witness table for CallTranslationService;
      *&v63 = v37;
      type metadata accessor for CallTranslationWorker();
      swift_allocObject();
      v38 = v37;
      CallTranslationWorker.init(service:)();
      *(v2 + v8) = v15;

      sub_1001FFDD8(v39);
      type metadata accessor for Features();
      v40 = static Features.shared.getter();
      v41 = Features.isMoreMenuEnabled.getter();

      if (v41)
      {
        v42 = OBJC_IVAR___PHCallTranslationController_moreMenuViewModel;
        *(&v64 + 1) = v36;
        v65 = &protocol witness table for CallTranslationService;
        *&v63 = v38;
        v43 = v38;

        CallTranslationMoreMenuViewModel.update(_:)();

        sub_10000830C(&v63, &qword_1003AE960);
        type metadata accessor for FTMenuItemRegistry();
        v44 = static FTMenuItemRegistry.shared.getter();
        v45 = [v47 uniqueProxyIdentifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v65 = 0;
        v63 = 0u;
        v64 = 0u;
        v62 = 0;
        memset(v61, 0, sizeof(v61));
        v60 = 0;
        memset(v59, 0, sizeof(v59));
        v58 = 0;
        memset(v57, 0, sizeof(v57));
        v56 = 0;
        memset(v55, 0, sizeof(v55));
        v46 = *(v2 + v42);
        v54[3] = type metadata accessor for CallTranslationMoreMenuViewModel();
        v54[4] = sub_100201D78(&qword_1003AE998, &type metadata accessor for CallTranslationMoreMenuViewModel);
        v53 = 0;
        v54[0] = v46;
        memset(v52, 0, sizeof(v52));
        v51 = 0;
        memset(v50, 0, sizeof(v50));
        v49 = 0;
        memset(v48, 0, sizeof(v48));

        FTMenuItemRegistry.register(with:punchOutProvider:callRecording:deskView:routes:liveCaptions:liveTranslation:screenShare:sharePlay:splitCalls:conferenceParticipants:)();

        sub_1000079FC(v48);
        sub_1000079FC(v50);
        sub_1000079FC(v52);
        sub_1000079FC(v55);
        sub_1000079FC(v57);
        sub_1000079FC(v59);
        sub_1000079FC(v61);
        sub_1000079FC(&v63);
        sub_1000079FC(v54);
        return;
      }

      goto LABEL_32;
    }
  }

LABEL_19:
  v47 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v47, v28, "Ignore translation call update for the same call.", v29, 2u);
  }

LABEL_32:
}

void sub_100020520()
{
  if (qword_1003A9F98 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  Notification.object.getter();
  if (v17)
  {
    sub_1000064BC(0, &qword_1003ADBE0);
    if (swift_dynamicCast())
    {
      if ([v15 status] == 6 && objc_msgSend(v15, "isEmergency") && objc_msgSend(v15, "disconnectedReasonRequiresCallBackUI"))
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v1 = Strong;
          v2 = *(Strong + OBJC_IVAR____TtC13InCallService16AlertCoordinator_failedEmergencyCall);
          *(Strong + OBJC_IVAR____TtC13InCallService16AlertCoordinator_failedEmergencyCall) = v15;
          v3 = v15;
        }

        swift_beginAccess();
        v4 = swift_unknownObjectWeakLoadStrong();
        if (v4)
        {
          v5 = v4;
          sub_10002BA70();
        }

        Notification.object.getter();
        if (v17)
        {
          if (swift_dynamicCast())
          {
            if ([v14 supportsEmergencyFallback])
            {
              swift_beginAccess();
              v6 = swift_unknownObjectWeakLoadStrong();
              if (v6)
              {
                v7 = v6;
                sub_10002BC08();
              }
            }
          }
        }

        else
        {

          sub_10015E258(v16);
        }

        return;
      }
    }
  }

  else
  {
    sub_10015E258(v16);
  }

  if (qword_1003A9F40 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008A14(v8, &unk_1003B8820);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "AlertCoordinator: call status is not disconnected or is not emergency or doesn't need callbackUI so we skip notifying stewie", v11, 2u);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC13InCallService16AlertCoordinator_failedEmergencyCall];
    *&v12[OBJC_IVAR____TtC13InCallService16AlertCoordinator_failedEmergencyCall] = 0;
  }
}

void sub_1000235C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_10002361C(id a1, PHSingleCallParticipantLabelView *a2)
{
  v12 = a2;
  v2 = [(PHSingleCallParticipantLabelView *)v12 secondaryInfoLabel];
  v3 = 0.0;
  [v2 setAlpha:0.0];

  v4 = +[CNKFeatures sharedInstance];
  v5 = [v4 isHeroImageEnabled];

  if ((v5 & 1) == 0)
  {
    v6 = [(PHSingleCallParticipantLabelView *)v12 traitCollection];
    v7 = [v6 _backlightLuminance];

    if (v7 != 1)
    {
      v3 = 1.0;
    }

    v8 = [(PHAbstractCallParticipantLabelView *)v12 statusLabel];
    [v8 setAlpha:v3];
  }

  v9 = [(PHSingleCallParticipantLabelView *)v12 callDisplayStyleManager];
  v10 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [v9 callDisplayStyle]);
  v11 = [(PHAbstractCallParticipantLabelView *)v12 statusLabel];
  [v11 setFont:v10];
}

uint64_t sub_100024FAC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100005B88(v2);
  *v3 = v4;
  v5 = sub_100006D10(v3);

  return sub_100025048(v5, v6, v7, v1);
}

uint64_t sub_100025048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(sub_10002513C, v7, v6);
}

uint64_t sub_10002513C()
{
  sub_100006610();
  static Clock<>.continuous.getter();
  v1 = sub_10000A4A0();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_10002E5B4;

  return v3(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000251F4()
{
  sub_100006880();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  sub_100006998(v12);
  *(v1 + 72) = v13;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  v14 = sub_100008184();

  return _swift_task_switch(v14, v15, v16);
}

id sub_1000252E0(uint64_t a1)
{
  v3 = *(a1 + *v1);

  return v3;
}

uint64_t sub_100025300()
{

  return swift_slowAlloc();
}

id sub_10002531C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v8 + 2400);

  return [v6 v10];
}

void sub_100025374(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000010;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_1000253CC()
{
  sub_100006880();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_100005B88(v4);
  *v5 = v6;
  v7 = sub_100006D10(v5);

  return sub_100025478(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_100025478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_100025514, v8, v7);
}

uint64_t sub_100025514()
{
  sub_100006610();
  if ([*(v0 + 16) isVideo])
  {

    Task.cancel()();
    sub_10002D474();
    sub_10002DA10();
    sub_10000535C();

    return v1();
  }

  else
  {
    if (qword_1003A9FF8 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_10002D2DC;

    return PosterSnapshotService.prewarmSnapshot(call:)();
  }
}

uint64_t PosterSnapshotService.prewarmSnapshot(call:)()
{
  sub_1000058A8();
  v1[3] = v2;
  v1[4] = v0;
  type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  sub_10000594C();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v4;

  return _swift_task_switch(sub_10002571C, v3, v4);
}

uint64_t sub_10002571C()
{
  v1 = sub_1000140C4(*(v0 + 24));
  if (!v1)
  {
    goto LABEL_9;
  }

  if (!*(v1 + 16))
  {

LABEL_9:

    goto LABEL_10;
  }

  v2 = *(v0 + 24);

  v3 = [objc_opt_self() tu_contactStoreConfigurationForCall:v2];
  v4 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v3];
  *(v0 + 64) = v4;

  v5 = String._bridgeToObjectiveC()();

  sub_10014EA98(&unk_1003AAAA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002F96C0;
  v7 = CNContactWallpaperKey;
  v8 = CNContactWallpaperMetadataKey;
  *(v6 + 32) = CNContactWallpaperKey;
  *(v6 + 40) = v8;
  v9 = v7;
  v10 = v8;
  sub_10014EA98(&qword_1003AAF80);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v12 = [v4 unifiedContactWithIdentifier:v5 keysToFetch:isa error:v0 + 16];
  *(v0 + 72) = v12;

  v13 = *(v0 + 16);
  if (v12)
  {
    v14 = v13;
    v15 = swift_task_alloc();
    *(v0 + 80) = v15;
    *v15 = v0;
    v15[1] = sub_100027060;

    return PosterSnapshotService.takeSnapshot(contact:)(v12);
  }

  v18 = v13;

  _convertNSErrorToError(_:)();

  swift_willThrow();

LABEL_10:
  sub_10000535C();

  return v17();
}

uint64_t sub_1000259F8(unint64_t *a1, uint64_t *a2)
{

  return sub_100027E08(a1, a2);
}

uint64_t sub_100025A1C()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_100025A9C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100025AFC()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t sub_100025B14()
{

  return swift_once();
}

uint64_t sub_100025B34(uint64_t a1)
{
  *(a1 + 16) = v1;

  return swift_task_alloc();
}

uint64_t sub_100025B50()
{

  return swift_unknownObjectWeakInit();
}

uint64_t sub_100025B68()
{

  return swift_beginAccess();
}

uint64_t sub_100025B84()
{

  return swift_getWitnessTable();
}

uint64_t sub_100025BAC()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100025BDC()
{

  return static _Glass._GlassVariant.clear.getter();
}

uint64_t PosterSnapshotService.takeSnapshot(contact:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100025AD0(a1, v1);
}

uint64_t sub_100025CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100007C1C();
  sub_100005408();
  v11 = v10[10];
  v12 = v10[8];
  v13 = v10[9];
  type metadata accessor for ContinuousClock();
  sub_100025E38(&qword_1003B08B8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100025E38(&qword_1003B08C0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v14 = *(v13 + 8);
  v10[12] = v14;
  v10[13] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = swift_task_alloc();
  v10[14] = v15;
  *v15 = v10;
  v15[1] = sub_10002DD04;
  sub_10000C20C();

  return dispatch thunk of Clock.sleep(until:tolerance:)(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_100025E38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100025E80()
{

  return swift_unknownObjectRetain();
}

void sub_100025E98(uint64_t a1@<X8>)
{
  v2[21] = v3;
  v2[22] = a1;
  v2[18] = v1;
}

uint64_t sub_100025EB4()
{

  return swift_beginAccess();
}

id sub_100025EF4()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

id sub_100025F18()
{
  v4 = *(v1 + v0);
  v5 = *(v2 + 3568);

  return [v4 v5];
}

void sub_100025F60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_100025FBC()
{
  v1 = v0;
  v2 = type metadata accessor for CameraStateMonitor.State(0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10014EA98(&qword_1003AE220);
  __chkstk_darwin(v6 - 8, v7);
  v77 = &v71 - v8;
  v9 = sub_10014EA98(&qword_1003AC968);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v71 - v11;
  v13 = sub_10014EA98(&qword_1003ACF08);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v71 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18, v20);
  v22 = (&v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v1 + OBJC_IVAR___ICSCameraStateMonitor_queue);
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v76 = v23;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
LABEL_12:
    v52 = type metadata accessor for Logger();
    sub_100008A14(v52, &unk_1003B8930);
    swift_unknownObjectRetain();
    v53 = v1;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *&v79 = swift_slowAlloc();
      *v56 = 136315394;
      if (v22)
      {
        v82[0] = v22;
        v82[1] = v24;
        v82[2] = v14;
        v83 = v5;
        swift_unknownObjectRetain();
        sub_10014EA98(&qword_1003ACF10);
        v57 = String.init<A>(reflecting:)();
        v59 = v58;
      }

      else
      {
        v59 = 0xE300000000000000;
        v57 = 7104878;
      }

      v66 = sub_100008ADC(v57, v59, &v79);

      *(v56 + 4) = v66;
      *(v56 + 12) = 2080;
      sub_100026E5C(&v17[v1], v82);
      v67 = sub_100173DF0(v82);
      v69 = v68;
      sub_100008360(v82, &qword_1003AB3F8);
      v70 = sub_100008ADC(v67, v69, &v79);

      *(v56 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v54, v55, "Call status changed for call: %s, but timer state does not need to be changed (timerState: %s).", v56, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return;
  }

  v74 = v17;
  v75 = v14;
  v25 = *(v1 + OBJC_IVAR___ICSCameraStateMonitor_activeVideoCall);

  v22 = v25(v26);
  v24 = v27;
  v14 = v28;
  v30 = v29;

  v17 = OBJC_IVAR___ICSCameraStateMonitor_timerState;
  swift_beginAccess();
  sub_100026E5C(&v17[v1], v82);
  if (v83)
  {
    if (v22)
    {
      sub_100005B2C(v82);
      goto LABEL_11;
    }

    if (qword_1003A9FA0 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100008A14(v60, &unk_1003B8930);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Video call is no longer active, unsubscribing from camera state changes.", v63, 2u);
    }

    v64 = type metadata accessor for CameraStateMonitor.Snapshot(0);
    sub_100006848(v5, 1, 2, v64);
    v65 = OBJC_IVAR___ICSCameraStateMonitor_state;
    swift_beginAccess();
    sub_1001C4360(v5, v1 + v65);
    swift_endAccess();
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    swift_beginAccess();
    sub_1001C43C4(&v79, &v17[v1]);
    swift_endAccess();
    sub_100005B2C(v82);
  }

  else
  {
    if (!v22)
    {
LABEL_11:
      v5 = v30;
      if (qword_1003A9FA0 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    if (qword_1003A9FA0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008A14(v31, &unk_1003B8930);
    swift_unknownObjectRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    v34 = os_log_type_enabled(v32, v33);
    v73 = v17;
    if (v34)
    {
      v35 = v30;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v72 = v13;
      v38 = v37;
      v78[0] = v37;
      *v36 = 136315138;
      *&v79 = v22;
      *(&v79 + 1) = v24;
      *&v80 = v14;
      *(&v80 + 1) = v35;
      swift_unknownObjectRetain();
      sub_10014EA98(&qword_1003ACF10);
      v39 = String.init<A>(reflecting:)();
      v41 = sub_100008ADC(v39, v40, v78);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Call status changed for call: %s, starting timer to poll for camera state changes.", v36, 0xCu);
      sub_100005B2C(v38);
      v13 = v72;
    }

    sub_1000064BC(0, &qword_1003ACF18);
    v42 = [objc_opt_self() mainRunLoop];
    v43 = type metadata accessor for NSRunLoop.SchedulerOptions();
    sub_100006848(v12, 1, 1, v43);
    v44 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_100008360(v12, &qword_1003AC968);
    *&v79 = v44;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_100027D30(&qword_1003ACF20, &type metadata accessor for NSTimer.TimerPublisher);
    v45 = ConnectablePublisher.autoconnect()();

    *&v79 = v45;
    v46 = v76;
    v78[0] = v76;
    v47 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v48 = v77;
    sub_100006848(v77, 1, 1, v47);
    v76 = v46;
    sub_10014EA98(&qword_1003ACF28);
    sub_1000064BC(0, &qword_1003AAAB0);
    sub_100027E08(&qword_1003ACF30, &qword_1003ACF28);
    sub_100027E50();
    v49 = v74;
    Publisher.receive<A>(on:options:)();
    sub_100008360(v48, &qword_1003AE220);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100027E08(&qword_1003ACF38, &qword_1003ACF08);
    v50 = Publisher<>.sink(receiveValue:)();

    (*(v75 + 8))(v49, v13);
    *(&v80 + 1) = type metadata accessor for AnyCancellable();
    v81 = &protocol witness table for AnyCancellable;
    swift_unknownObjectRelease();
    *&v79 = v50;
    v51 = v73;
    swift_beginAccess();
    sub_1001C43C4(&v79, &v51[v1]);
    swift_endAccess();
  }
}

uint64_t sub_100026A68()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100026ABC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026AF4()
{
  v0 = [objc_opt_self() sharedInstance];
  TUCallCenter.activeVideoCall.getter();
  v2 = v1;

  return v2;
}

void TUCallCenter.activeVideoCall.getter()
{
  v1 = [v0 currentVideoCalls];
  sub_1000064BC(0, &qword_1003ADBE0);
  sub_1000067CC();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100017230(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      sub_10000898C();
LABEL_12:
      sub_100005558();
      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v5 status] == 1)
    {

      sub_100006FB8();
      sub_100005D1C();
      sub_100030170(v7, v8);
      sub_100009778();
      sub_100030170(v9, v10);
      sub_100025C88();
      sub_100030170(v11, v12);
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_100026CE0()
{
  sub_100005408();
  v1 = [*(v0 + 16) wallpaper];
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 16) identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    *(v0 + 40) = v5;
    v6 = [v2 posterArchiveData];
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(v0 + 48) = v7;
    *(v0 + 56) = v9;
    sub_1001AAF48(v2);
    *(v0 + 64) = v10;
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_1001A9584;

    return sub_1001A9770();
  }

  else
  {
    sub_100026F44();

    return v13();
  }
}

uint64_t sub_100026EB8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_100026ED0()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

uint64_t sub_100026EF4()
{

  return sub_100006848(v0, 1, 1, v1);
}

id sub_100026F84()
{
  v3 = *(v0 + 848);

  return [v1 v3];
}

uint64_t sub_100026FB8()
{

  return UIButton.configuration.setter();
}

uint64_t sub_100026FD8()
{

  return swift_once();
}

uint64_t sub_100027060()
{
  sub_1000058A8();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  sub_100006870();
  *v5 = v4;

  v6 = *(v3 + 56);
  v7 = *(v3 + 48);

  return _swift_task_switch(sub_10002D240, v7, v6);
}

void sub_1000271B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_10002720C()
{
  v1 = v0;
  v2 = type metadata accessor for PillStateMonitor.State(0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10014EA98(&qword_1003AE220);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v64 - v8;
  v10 = sub_10014EA98(&qword_1003AC968);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v64 - v12;
  v14 = sub_10014EA98(&qword_1003ACF08);
  v67 = *(v14 - 8);
  v68 = v14;
  __chkstk_darwin(v14, v15);
  v17 = &v64 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18, v20);
  v22 = (&v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *&v1[OBJC_IVAR___ICSPillStateMonitor_queue];
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v26 = *&v1[OBJC_IVAR___ICSPillStateMonitor_hasCurrentCalls];

  LOBYTE(v22) = v26(v27);

  v25 = OBJC_IVAR___ICSPillStateMonitor_timerState;
  swift_beginAccess();
  sub_100027CBC(&v1[v25], v73);
  if (v73[3])
  {
    if (v22)
    {
      sub_100005B2C(v73);
      goto LABEL_11;
    }

    if (qword_1003A9FA8 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100008A14(v58, &unk_1003B8948);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "No longer have current calls, unsubscribing from pill state changes.", v61, 2u);
    }

    v62 = type metadata accessor for PillStateMonitor.Snapshot(0);
    sub_100006848(v5, 1, 2, v62);
    v63 = OBJC_IVAR___ICSPillStateMonitor_state;
    swift_beginAccess();
    sub_100035C94(v5, &v1[v63]);
    swift_endAccess();
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    swift_beginAccess();
    sub_100027EB8(&v70, &v1[v25]);
    swift_endAccess();
    sub_100005B2C(v73);
  }

  else
  {
    if ((v22 & 1) == 0)
    {
LABEL_11:
      if (qword_1003A9FA8 == -1)
      {
LABEL_12:
        v44 = type metadata accessor for Logger();
        sub_100008A14(v44, &unk_1003B8948);
        v45 = v1;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *&v70 = swift_slowAlloc();
          *v48 = 136315394;
          v49 = 28516;
          if ((v22 & 1) == 0)
          {
            v49 = 0x746F6E206F64;
          }

          v50 = 0xE600000000000000;
          if (v22)
          {
            v50 = 0xE200000000000000;
          }

          v73[0] = v49;
          v73[1] = v50;
          v51 = String.init<A>(reflecting:)();
          v53 = sub_100008ADC(v51, v52, &v70);

          *(v48 + 4) = v53;
          *(v48 + 12) = 2080;
          sub_100027CBC(&v1[v25], v73);
          v54 = sub_100173EBC(v73);
          v56 = v55;
          sub_100008360(v73, &qword_1003AB3E8);
          v57 = sub_100008ADC(v54, v56, &v70);

          *(v48 + 14) = v57;
          _os_log_impl(&_mh_execute_header, v46, v47, "We %s have current calls, but timer state does not need to be changed (timerState: %s).", v48, 0x16u);
          swift_arrayDestroy();
        }

        return;
      }

LABEL_25:
      swift_once();
      goto LABEL_12;
    }

    if (qword_1003A9FA8 != -1)
    {
      swift_once();
    }

    v66 = v24;
    v28 = type metadata accessor for Logger();
    sub_100008A14(v28, &unk_1003B8948);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v70 = v65;
      *v31 = 136315138;
      LOBYTE(v69) = 1;
      v32 = String.init<A>(reflecting:)();
      v34 = sub_100008ADC(v32, v33, &v70);

      *(v31 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "Have current calls: %s, starting timer to poll for pill state changes.", v31, 0xCu);
      sub_100005B2C(v65);
    }

    sub_1000064BC(0, &qword_1003ACF18);
    v35 = [objc_opt_self() mainRunLoop];
    v36 = type metadata accessor for NSRunLoop.SchedulerOptions();
    sub_100006848(v13, 1, 1, v36);
    v37 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_100008360(v13, &qword_1003AC968);
    *&v70 = v37;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_100027D30(&qword_1003ACF20, &type metadata accessor for NSTimer.TimerPublisher);
    v38 = ConnectablePublisher.autoconnect()();

    *&v70 = v38;
    v39 = v66;
    v69 = v66;
    v40 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    sub_100006848(v9, 1, 1, v40);
    v41 = v39;
    sub_10014EA98(&qword_1003ACF28);
    sub_1000064BC(0, &qword_1003AAAB0);
    sub_100027E08(&qword_1003ACF30, &qword_1003ACF28);
    sub_100027E50();
    Publisher.receive<A>(on:options:)();
    sub_100008360(v9, &qword_1003AE220);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100027E08(&qword_1003ACF38, &qword_1003ACF08);
    v42 = v68;
    v43 = Publisher<>.sink(receiveValue:)();

    (*(v67 + 8))(v17, v42);
    *(&v71 + 1) = type metadata accessor for AnyCancellable();
    v72 = &protocol witness table for AnyCancellable;
    *&v70 = v43;
    swift_beginAccess();
    sub_100027EB8(&v70, &v1[v25]);
    swift_endAccess();
  }
}

uint64_t sub_100027BF4()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

BOOL sub_100027C48(id a1)
{
  v1 = +[TUCallCenter sharedInstance];
  v2 = [v1 hasCurrentCalls];

  return v2;
}

uint64_t sub_100027D18(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100027D30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100027D78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100027DC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100027E08(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100027E50()
{
  result = qword_1003AE240;
  if (!qword_1003AE240)
  {
    sub_1000064BC(255, &qword_1003AAAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE240);
  }

  return result;
}

void sub_100027EF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100027F4C();
  }
}

void sub_100027F4C()
{
  sub_10014EA98(&qword_1003AA7B0);
  sub_100005BE0();
  __chkstk_darwin(v1, v2);
  v4 = &v16 - v3;
  v5 = [objc_allocWithZone(TUFeatureFlags) init];
  v6 = [v5 carPlayBannersEnabled];

  if (v6)
  {
    v7 = [*&v0[OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_callCenter] frontmostAudioOrVideoCall];
    if (v7)
    {
      v17 = v7;
      v8 = [v7 status];
      if (v8 - 5 < 2)
      {
        sub_100035CF8(0);
      }

      else
      {
        if (v8 == 1)
        {
          v10 = *&v0[OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_presentedBanner];
          v11 = type metadata accessor for TaskPriority();
          sub_100006848(v4, 1, 1, v11);
          type metadata accessor for MainActor();
          v12 = v10;
          v13 = v0;
          v14 = static MainActor.shared.getter();
          v15 = swift_allocObject();
          v15[2] = v14;
          v15[3] = &protocol witness table for MainActor;
          v15[4] = v13;
          v15[5] = v10;
          sub_1001621BC();

          return;
        }

        if (v8 == 4)
        {
          sub_1001ECA38(v17);
        }
      }

      v9 = v17;
    }

    else
    {

      sub_100035CF8(0);
    }
  }
}

uint64_t sub_10002816C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000281B4()
{
  v1 = [v0 callUUID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_100028238(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_52;
  }

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [WeakRetained multiwayViewController];

  if (!v8)
  {
    v15 = 0;
    goto LABEL_35;
  }

  v57 = objc_opt_new();
  v9 = +[UIApplication sharedApplication];
  v10 = [v9 delegate];
  v11 = [v10 screenSharingRootViewController];

  v12 = [v11 pipController];
  v13 = [v12 pipState];

  v14 = [v11 callDisplayStyleManager];
  v49 = [v14 callDisplayStyle];
  v15 = v49 == 2;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = [*(v1 + 32) elements];
  v16 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (!v16)
  {
    v19 = 0;
    goto LABEL_29;
  }

  v17 = v16;
  v50 = v11;
  v51 = v1;
  v52 = v49 == 2;
  v18 = v3;
  v19 = 0;
  v56 = v13 - 3;
  v20 = *v64;
  v21 = TUBundleIdentifierSpringBoardAppSwitcher;
  v55 = TUBundleIdentifierSpringBoardHomeScreen;
  v54 = TUBundleIdentifierInCallServiceApplication;
  while (2)
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v64 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v63 + 1) + 8 * i);
      v24 = [v23 identifier];
      if ([v24 isEqualToString:v21])
      {
      }

      else
      {
        v25 = [v23 identifier];
        v26 = [v25 isEqualToString:v55];

        if (!v26)
        {
          goto LABEL_12;
        }
      }

      v27 = [v18 multiwayViewController];
      [v27 prepareForAppSwitcher];

LABEL_12:
      if ([v23 conformsToProtocol:&OBJC_PROTOCOL___SBSDisplayLayoutElement])
      {
        [v57 addObject:v23];
        v28 = v23;
        v29 = v28;
        if (v56 > 0xFFFFFFFFFFFFFFFDLL)
        {
          v31 = 0;
        }

        else
        {
          v30 = [v28 bundleIdentifier];
          v31 = [v30 isEqualToString:v54];
        }

        if ([v29 layoutRole] == 5 && ((objc_msgSend(v29, "sb_isStashedPIP") | v31) & 1) == 0)
        {
          v19 = (v19 + 1);
          [v29 frame];
          v78 = CGRectIntegral(v77);
          x = v78.origin.x;
          y = v78.origin.y;
          width = v78.size.width;
          height = v78.size.height;

          goto LABEL_27;
        }

        [v29 sb_isStashedPIP];
        if ([v29 layoutRole] == 5)
        {
          v19 = (v19 + 1);
        }

        else
        {
          v19 = v19;
        }
      }
    }

    v17 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_27:
  v3 = v18;
  v15 = v52;
  v11 = v50;
  v1 = v51;
LABEL_29:

  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    v32 = sub_100004F84();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [NSNumber numberWithBool:v49 == 2];
      v34 = [NSNumber numberWithBool:v49 == 2];
      v35 = [NSNumber numberWithInt:v19];
      *buf = 138544130;
      v69 = v33;
      v70 = 2114;
      v71 = v34;
      v72 = 2114;
      v73 = v35;
      v74 = 2114;
      v75 = v57;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] mediaPipFrameInWindowScene is zero. shouldIgnoreICSElements(%{public}@) isScreenSharingFullScreen(%{public}@)  pipRoles(%{public}@) layoutElements: %{public}@", buf, 0x2Au);
    }
  }

  [v3 handleFrontBoardInterfaceOrientationChange:{objc_msgSend(*(v1 + 32), "interfaceOrientation", v49)}];

LABEL_35:
  v36 = [*(v1 + 32) displayBacklightLevel];
  if (*(v1 + 32) && v36 <= 0)
  {
    v53 = v15;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v37 = [v3 callCenter];
    v38 = [v37 currentAudioAndVideoCalls];

    v39 = [v38 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v60;
      do
      {
        for (j = 0; j != v40; j = j + 1)
        {
          if (*v60 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v59 + 1) + 8 * j);
          if ([v43 isSharingScreen])
          {
            v44 = sub_100004F84();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v69 = v43;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Device display is off stopping sharing screen for call %@", buf, 0xCu);
            }

            [v43 setSharingScreen:0];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v40);
    }

    v15 = v53;
  }

  v45 = sub_100004F84();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v79.origin.x = x;
    v79.origin.y = y;
    v79.size.width = width;
    v79.size.height = height;
    v46 = NSStringFromCGRect(v79);
    *buf = 138543362;
    v69 = v46;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "mediaPipFrameInWindowScene changed to %{public}@", buf, 0xCu);
  }

  v47 = [v3 multiwayViewController];
  [v47 setMediaPipFrameInWindowScene:{x, y, width, height}];

  v48 = [v3 multiwayViewController];
  [v48 setIsScreenSharingFullScreen:v15];

LABEL_52:
}

id sub_1000288FC(void *a1)
{
  v2 = v1;
  v3 = [a1 session];
  v4 = [v3 persistentIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000076E0();
  LOBYTE(v3) = sub_10000C348();

  if ((v3 & 1) == 0)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClassUnconditional();
    v7 = sub_100028A84(v6);
    v8 = OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_carPlayWindow;
    v9 = *(v2 + OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_carPlayWindow);
    *(v2 + OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_carPlayWindow) = v7;

    v10 = [objc_allocWithZone(TUHardwareControlsBroadcaster) init];
    v11 = *(v2 + OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_hardwareControlsBroadcaster);
    *(v2 + OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_hardwareControlsBroadcaster) = v10;

    result = *(v2 + v8);
    if (result)
    {
      return [result setHidden:0];
    }
  }

  return result;
}

unint64_t sub_100028A30()
{
  result = qword_1003AA9B0;
  if (!qword_1003AA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA9B0);
  }

  return result;
}

id sub_100028A84(uint64_t a1)
{
  v1 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
  v2 = [objc_allocWithZone(PHCarPlayInCallViewController) init];
  [v1 setRootViewController:v2];

  return v1;
}

id sub_100028B24()
{
  if (qword_1003AA0A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1003B8AE0;

  return v1;
}

id sub_100028BC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_presentedBanner);
  if (!v1)
  {
    return 0;
  }

  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = [result window];

    return v4;
  }

  __break(1u);
  return result;
}

id sub_10002958C()
{
  sub_1000064BC(0, &qword_1003AAAB0);
  v0 = static OS_dispatch_queue.main.getter();
  v1 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v0];

  swift_getObjectType();
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 sharedInstance];
  v5 = objc_allocWithZone(type metadata accessor for AlertCoordinator());
  v6 = sub_1000296EC(sub_10002ADD0, 0, sub_1001C1424, 0, v3, v4, v5);

  swift_deallocPartialClassInstance();
  return v6;
}

id sub_1000296EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v30[1] = a2;
  v14 = type metadata accessor for NSNotificationCenter.Publisher();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_isAlertRequestPending] = 0;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_failedEmergencyCall] = 0;
  a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_isDemoAvailable] = 0;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator__currentBackgroundCountdownDuration] = 0x4024000000000000;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_cancellables] = &_swiftEmptySetSingleton;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitor] = 0;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_backgroundCountdownTimer] = 0;
  v19 = &a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitorProvider];
  *v19 = a1;
  v19[1] = a2;
  v20 = &a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_carPlayProvider];
  *v20 = a3;
  v20[1] = a4;
  v30[2] = a4;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_telephonyClient] = a5;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_callCenter] = a6;
  v21 = type metadata accessor for AlertCoordinator();
  v31.receiver = a7;
  v31.super_class = v21;

  v22 = objc_msgSendSuper2(&v31, "init");
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100029B9C();
  Publisher<>.sink(receiveValue:)();

  v26 = *(v15 + 8);
  v26(v18, v14);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v27 = [v23 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  v26(v18, v14);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v28 = [v23 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  Publisher<>.sink(receiveValue:)();

  v26(v18, v14);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v24;
}

uint64_t sub_100029B64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100029B9C()
{
  result = qword_1003B0A90;
  if (!qword_1003B0A90)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0A90);
  }

  return result;
}

uint64_t sub_100029C54()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_10002AC0C()
{
  v1 = OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitor;
  if (*&v0[OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitor])
  {
    if (qword_1003A9F98 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v2 = v0;
  v3 = (*&v0[OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitorProvider])(v0);
  if (!v3)
  {
LABEL_12:
    if (qword_1003A9F98 == -1)
    {
LABEL_13:
      static os_log_type_t.error.getter();
      sub_10000C73C();

      return os_log(_:dso:log:type:_:)();
    }

LABEL_16:
    sub_1000076C0();
    goto LABEL_13;
  }

  v4 = v3;
  if (![v3 start])
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  *&v2[v1] = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (qword_1003A9F98 != -1)
  {
    sub_1000076C0();
  }

  static os_log_type_t.default.getter();
  sub_100006FD0();
  os_log(_:dso:log:type:_:)();
  [v2 refreshDelegateWithState];

  return swift_unknownObjectRelease();
}

id sub_10002ADD0(void *a1)
{
  sub_1000064BC(0, &qword_1003AAAB0);
  v2 = static OS_dispatch_queue.main.getter();
  v3 = objc_allocWithZone(CTStewieStateMonitor);
  v4 = a1;
  v5 = [v3 initWithDelegate:v4 queue:v2];

  return v5;
}

void sub_10002AEA4()
{
  v1 = *&v0[OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitor];
  if (v1)
  {
    v2 = qword_1003A9F98;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      sub_1000076C0();
    }

    static os_log_type_t.default.getter();
    sub_100006FD0();
    os_log(_:dso:log:type:_:)();
    [v0 statusChanged:{objc_msgSend(v1, "getStatus")}];

    swift_unknownObjectRelease();
  }
}

id sub_10002AFB0()
{
  v1 = [v0 getState];
  v2 = [v1 status];

  return v2;
}

id sub_10002B048()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitor);
  if (!v1)
  {
    if (qword_1003A9F98 != -1)
    {
      sub_1000076C0();
    }

    static os_log_type_t.default.getter();
    sub_10000C73C();
    os_log(_:dso:log:type:_:)();
    return 0;
  }

  if (*(v0 + OBJC_IVAR____TtC13InCallService16AlertCoordinator_failedEmergencyCall))
  {
    v2 = qword_1003A9F98;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      sub_1000076C0();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    goto LABEL_6;
  }

  v6 = *(v0 + OBJC_IVAR____TtC13InCallService16AlertCoordinator_callCenter);
  swift_unknownObjectRetain();
  v7 = [v6 emergencyCall];
  if (!v7)
  {
    if (qword_1003A9F98 != -1)
    {
      sub_1000076C0();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    swift_unknownObjectRelease();
    return 0;
  }

  v8 = v7;
  if (![v7 isFailureExpected])
  {
    if (qword_1003A9F98 != -1)
    {
      sub_1000076C0();
    }

    static os_log_type_t.default.getter();
    sub_100006FD0();
    os_log(_:dso:log:type:_:)();
    swift_unknownObjectRelease();

    return 0;
  }

LABEL_6:
  v3 = [v1 isAlertTriggerAllowedAndNotActive];
  if (qword_1003A9F98 != -1)
  {
    sub_1000076C0();
  }

  sub_10014EA98(&qword_1003AB478);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002FAB60;
  *(v4 + 56) = &type metadata for Bool;
  *(v4 + 64) = &protocol witness table for Bool;
  *(v4 + 32) = v3;
  static os_log_type_t.default.getter();
  sub_100006FD0();
  os_log(_:dso:log:type:_:)();
  swift_unknownObjectRelease();

  return v3;
}

void *sub_10002B304()
{
  if (qword_1003A9F98 != -1)
  {
    sub_1000076C0();
  }

  sub_10014EA98(&qword_1003AB478);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002FAB60;
  v1 = sub_10002B048();
  *(v0 + 56) = &type metadata for Bool;
  *(v0 + 64) = &protocol witness table for Bool;
  *(v0 + 32) = v1 & 1;
  static os_log_type_t.default.getter();
  sub_10000C73C();
  os_log(_:dso:log:type:_:)();

  sub_10002BA70();
  sub_10002BC08();

  return sub_10002BE9C();
}

uint64_t sub_10002B42C()
{
  v4[4] = sub_10002B8AC;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10002B848;
  v4[3] = &unk_100361D50;
  v1 = _Block_copy(v4);

  v2 = [v0 callPassingTest:v1];
  _Block_release(v1);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B518(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B528(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B568(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B588(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B598(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B5A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B5B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B5C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B5E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B5F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B608(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B638(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B648(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B688(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B6A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B6B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B6C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B6D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B6E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B6F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B708(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B718(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B728(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B748(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B768(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B778(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B788(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B7A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B7C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B7D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B7E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B7F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B808(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B838(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B848(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void *sub_10002BA70()
{
  if (qword_1003A9F98 != -1)
  {
    swift_once();
  }

  sub_10014EA98(&qword_1003AB478);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002FAB60;
  sub_10002B048();
  v1 = String.init<A>(reflecting:)();
  v3 = v2;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_10002BBB4();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result updatePresentationStateWithAllowed:sub_10002B048() & 1];
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10002BBB4()
{
  result = qword_1003AB480;
  if (!qword_1003AB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB480);
  }

  return result;
}

void sub_10002BC08()
{
  if ((sub_10002B048() & 1) == 0)
  {
    if (qword_1003A9F98 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (sub_100252750())
  {
    if (qword_1003A9F98 != -1)
    {
      swift_once();
    }

    sub_10014EA98(&qword_1003AB478);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_1002FAB60;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10014EA98(&unk_1003B0A68);
      v1 = String.init<A>(reflecting:)();
      v3 = v2;
    }

    else
    {
      v3 = 0xE300000000000000;
      v1 = 7104878;
    }

    *(v0 + 56) = &type metadata for String;
    *(v0 + 64) = sub_10002BBB4();
    *(v0 + 32) = v1;
    *(v0 + 40) = v3;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong startAutoCountdownAlert];
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      sub_100253860();
    }

    return;
  }

  if (qword_1003A9F98 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_11:
  static os_log_type_t.error.getter();

  os_log(_:dso:log:type:_:)();
}

void *sub_10002BE9C()
{
  if ([v0 isStewieActive])
  {
    if (qword_1003A9F98 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();

    return os_log(_:dso:log:type:_:)();
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = result;
      if ([result respondsToSelector:"cleanAlertUIInCarPlay"])
      {
        [v2 cleanAlertUIInCarPlay];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10002D240()
{
  sub_1000058A8();
  v1 = *(v0 + 72);

  sub_10000535C();

  return v2();
}

uint64_t sub_10002D2DC()
{
  sub_100006610();
  v1 = *v0;
  v2 = *v0;
  sub_100006870();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_10002D3F0, v5, v4);
}

uint64_t sub_10002D3F0()
{
  sub_100006610();

  Task.cancel()();
  sub_10002D474();
  sub_10002DA10();
  sub_10000535C();

  return v0();
}

uint64_t sub_10002D474()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() mainBundle];
  result = sub_10002D86C(v11);
  if (v13)
  {
    v14 = result;
    v15 = v13;
    if ([*(v0 + OBJC_IVAR___ICSAmbientActivityController_callCenter) hasCurrentCalls])
    {
      v22 = *(v0 + OBJC_IVAR___ICSAmbientActivityController_ambientActivityQueue);
      v16 = swift_allocObject();
      v21 = v2;
      v17 = v16;
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v14;
      v18[4] = v15;
      aBlock[4] = sub_10002E564;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002E570;
      aBlock[3] = &unk_10035E8D8;
      v19 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v23 = &_swiftEmptyArrayStorage;
      sub_10002D92C(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags);
      sub_10014EA98(&unk_1003AAAC0);
      v20 = v6;
      sub_10002D9BC(&qword_1003B0540, &unk_1003AAAC0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v19);
      (*(v21 + 8))(v5, v1);
      (*(v7 + 8))(v10, v20);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10002D7F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D82C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002D86C(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10002D8E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002D92C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002D974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002D9BC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002DA10()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15, v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR___ICSAmbientActivityController_ambientActivityQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1000305A4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E570;
  aBlock[3] = &unk_10035E7C0;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_10002D92C(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags);
  sub_10014EA98(&unk_1003AAAC0);
  sub_10002D9BC(&qword_1003B0540, &unk_1003AAAC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_10002DCCC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DD04()
{
  sub_100006880();
  sub_1000058C4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_100006870();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = sub_100008DE8();
  v6(v9);
  if (v0)
  {

    return _swift_task_switch(sub_10002DEA0, 0, 0);
  }

  else
  {

    sub_10000535C();

    return v10();
  }
}

uint64_t sub_10002DEA0()
{
  sub_100006610();

  sub_10000535C();

  return v0();
}

void sub_10002DF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ActivityPresentationOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10014EA98(&qword_1003AD2A0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v34 - v11;
  v13 = sub_10014EA98(&qword_1003AD370);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v34 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (*&Strong[OBJC_IVAR___ICSAmbientActivityController_currentActivity])
    {
    }

    else
    {
      v38 = v14;
      v39 = v5;
      v35 = OBJC_IVAR___ICSAmbientActivityController_currentActivity;
      v37 = sub_10014EA98(&qword_1003AD380);
      v20 = type metadata accessor for Date();
      sub_100006848(v12, 1, 1, v20);
      sub_10002E73C();
      sub_10002E790();
      v36 = a3;
      sub_10002E7E4();
      ActivityContent.init(state:staleDate:relevanceScore:)();
      sub_10014EA98(&qword_1003AD388);
      v21 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
      v22 = *(v21 - 8);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1002FAB60;
      (*(v22 + 104))(v24 + v23, enum case for ActivityPresentationOptions.ActivityPresentationDestination.ambient(_:), v21);
      ActivityPresentationOptions.init(destinations:)();
      v25 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
      (*(v39 + 8))(v8, v4);
      (*(v38 + 8))(v17, v13);
      if (qword_1003A9FB0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100008A14(v26, &unk_1003B8960);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v40 = v25;
        v41 = v30;
        *v29 = 136315138;

        v31 = String.init<A>(reflecting:)();
        v33 = sub_100008ADC(v31, v32, &v41);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "Starting ambient activity: %s", v29, 0xCu);
        sub_100005B2C(v30);
      }

      *&v19[v35] = v25;
    }
  }
}

uint64_t sub_10002E570(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10002E5B4()
{
  sub_100006880();
  v2 = *v1;
  v3 = *v1;
  sub_100006870();
  *v4 = v3;
  *v4 = *v1;

  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_10003104C;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_1000316D0;
  }

  return _swift_task_switch(v10, v8, v9);
}

unint64_t sub_10002E73C()
{
  result = qword_1003AD328;
  if (!qword_1003AD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD328);
  }

  return result;
}

unint64_t sub_10002E790()
{
  result = qword_1003AD330;
  if (!qword_1003AD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD330);
  }

  return result;
}

unint64_t sub_10002E7E4()
{
  result = qword_1003AD338;
  if (!qword_1003AD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD338);
  }

  return result;
}

uint64_t sub_10002E87C(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_10014EA98(a2);
  sub_10000688C();
  v8 = v7;
  __chkstk_darwin(v9, v10);
  v12 = &v14 - v11;
  sub_100008878(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v8 + 8))(v12, v6);
}

unint64_t sub_10002E990()
{
  result = qword_1003AD360;
  if (!qword_1003AD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD360);
  }

  return result;
}

void sub_10002E9E8()
{
  sub_100005D28();
  v114 = v0;
  v2 = v1;
  type metadata accessor for CallsPresentation();
  sub_10000688C();
  __chkstk_darwin(v3, v4);
  sub_100005BD0();
  sub_100006634();
  *&v5 = sub_10000C6E4();
  v132 = 0;
  v131[0] = v5;
  v131[1] = v5;
  CallsPresentation.init(compact:full:)();
  sub_10002FA68(v2, v121);
  v119 = v121[0];
  v116 = v123;
  v6 = v124;
  v8 = v126;
  v7 = v127;
  v9 = v128;
  v10 = v129;
  v11 = v130[1];
  v118 = v128;
  v117 = v125;
  if (v124)
  {
    v12 = v122;
    v112 = v127;
    sub_100008AC8();
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Call.isVideo.getter();
    v14 = v6;
    swift_unknownObjectRelease();
    if (v13)
    {
      v15 = v117;
      if (!v119)
      {
        ObjectType = swift_getObjectType();
        sub_10000A57C(ObjectType, v130);
        *(v17 - 256) = v6;
        swift_unknownObjectRetain();
        sub_100030344();
        CallsPresentation.compact.setter();
        if (qword_1003A9F40 != -1)
        {
          sub_10000755C();
        }

        v18 = type metadata accessor for Logger();
        sub_1000058D0(v18, &unk_1003B8820);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = sub_100005924();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "CallManagerBridge proposedPresentation.fullCall is empty since the active call is video and we don't have an incoming call", v21, 2u);
          sub_100005368();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v22 = sub_100245BF4();
        v23(v22);
        goto LABEL_106;
      }

      goto LABEL_15;
    }

    v15 = v117;
    if (v119)
    {
LABEL_15:
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      if (v15)
      {
        sub_10000B4F8();
        v123 = swift_getObjectType();
        v124 = v12;
        sub_100024828();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_100030344();
        CallsPresentation.compact.setter();
        v27 = swift_getObjectType();
        sub_10000A57C(v27, v131);
        *(v28 - 256) = v6;
        CallsPresentation.full.setter();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_100008CC4();
        v29 = &off_1003B0000;
        goto LABEL_83;
      }

      v30 = v6;
      sub_1000073DC();
LABEL_18:
      v29 = &off_1003B0000;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      if (!v11)
      {
        if (!v14)
        {
          goto LABEL_42;
        }

LABEL_77:
        v62 = swift_getObjectType();
        sub_10000A57C(v62, v130);
        *(v63 - 256) = v30;
        goto LABEL_78;
      }

      goto LABEL_23;
    }

    v39 = v117;
    if (v117)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1000073DC();
      if (v9)
      {
        goto LABEL_32;
      }

LABEL_45:
      if (v114)
      {
        swift_unknownObjectRetain();
        v46 = v14;
        v29 = &off_1003B0000;
        v8 = v113;
        if (!v14)
        {
          sub_10000C6E4();
          goto LABEL_66;
        }
      }

      else
      {
        swift_unknownObjectRetain();
        v46 = v39;
        v29 = &off_1003B0000;
      }

      v123 = swift_getObjectType();
      v124 = v8;
      v121[0] = v46;
LABEL_66:
      swift_unknownObjectRetain();
      sub_100030344();
      CallsPresentation.compact.setter();
      if (v114)
      {
        swift_unknownObjectRetain();
        v58 = v39;
        v59 = v112;
      }

      else
      {
        swift_unknownObjectRetain();
        v58 = v14;
        v59 = v115;
        if (!v14)
        {
          sub_10000C6E4();
          goto LABEL_70;
        }
      }

      v123 = swift_getObjectType();
      v124 = v59;
      v121[0] = v58;
LABEL_70:
      sub_100030344();
      CallsPresentation.full.setter();
      goto LABEL_71;
    }

    if (!v9)
    {
      v30 = v6;
      swift_unknownObjectRetain();
      goto LABEL_76;
    }

    swift_getObjectType();
    sub_1000055E8();
    swift_unknownObjectRetain_n();
    v30 = v6;
    swift_unknownObjectRetain();
    if (dispatch thunk of Call.isVideo.getter())
    {
      swift_unknownObjectRelease();
LABEL_76:
      sub_100008CC4();
      sub_10000B4F8();
      goto LABEL_77;
    }

    v103 = swift_getObjectType();
    sub_10000A57C(v103, v130);
    *(v104 - 256) = v6;
    swift_unknownObjectRetain();
    sub_100030344();
    CallsPresentation.compact.setter();
    sub_100016FF4();
    CallsPresentation.full.setter();
    sub_1000055E8();
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
    sub_10000B4F8();
LABEL_109:
    sub_100008CC4();
    goto LABEL_82;
  }

  v14 = 0;
  if (v125)
  {
    if (v121[0])
    {
      v24 = v126;
      v25 = v127;
      sub_1000142C0();
      swift_unknownObjectRetain();
      sub_1000303D8();
      swift_unknownObjectRetain();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v11 = v119;
      if ((dispatch thunk of Call.isVideo.getter() & 1) == 0)
      {
        v29 = &off_1003B0000;
        v41 = OBJC_IVAR___ICSCallManagerBridge_foregroundRingingCall;
        sub_100008CC4();
        sub_10000FF6C();
        if (*(v10 + v41) != 1)
        {
          sub_10000C6E4();
          sub_100030344();
          CallsPresentation.compact.setter();
          v123 = swift_getObjectType();
          v124 = v25;
          sub_100245BCC();
          CallsPresentation.full.setter();
          sub_1000142C0();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
LABEL_72:
          swift_unknownObjectRelease();
          goto LABEL_83;
        }

        v123 = swift_getObjectType();
        v124 = v24;
        sub_100245BCC();
        sub_100030344();
        CallsPresentation.compact.setter();
        v42 = swift_getObjectType();
        sub_10000A57C(v42, v131 + 8);
        sub_10003041C(v43);
        sub_1000142C0();
LABEL_71:
        swift_unknownObjectRelease();
        goto LABEL_72;
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      dispatch thunk of Call.isVideo.getter();
      sub_100008CC4();
      if ((v26 & 1) == 0)
      {
        v123 = swift_getObjectType();
        v124 = v8;
        sub_100245BCC();
        sub_100030344();
        CallsPresentation.compact.setter();
        v54 = swift_getObjectType();
        sub_10000A57C(v54, v131 + 8);
        sub_10003041C(v55);
        sub_1000142C0();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
        goto LABEL_82;
      }

      sub_1000142C0();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_31:
      swift_unknownObjectRelease();
      sub_10000B4F8();
LABEL_32:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_10000C6E4();
      sub_100030344();
      CallsPresentation.compact.setter();
      sub_10000C6E4();
      CallsPresentation.full.setter();
LABEL_82:
      v29 = &off_1003B0000;
      goto LABEL_83;
    }

    if (v128)
    {
      swift_getObjectType();
      sub_1000303D8();
      swift_unknownObjectRetain();
      sub_1000055E8();
      swift_unknownObjectRetain_n();
      dispatch thunk of Call.isVideo.getter();
      sub_100008CC4();
      if ((v40 & 1) == 0)
      {
        v123 = swift_getObjectType();
        v124 = v8;
        sub_100245BCC();
        sub_100030344();
        CallsPresentation.compact.setter();
        sub_100016FF4();
        CallsPresentation.full.setter();
        sub_1000055E8();
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        sub_10000B4F8();
        goto LABEL_82;
      }

      goto LABEL_31;
    }

    goto LABEL_43;
  }

  sub_10000B4F8();
  if (v11)
  {
    v33 = v32;
    sub_100008AC8();
    v10 = swift_getObjectType();
    sub_1000142C0();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    dispatch thunk of Call.isVideo.getter();
    sub_100008CC4();
    v29 = &off_1003B0000;
    if (v34)
    {
LABEL_23:
      v35 = v29[100];
      sub_10000FF6C();
      if (*(&v35->Flags + v10) == 1)
      {
        sub_1000303D8();
        v36 = v14;
        if (v14)
        {
          v37 = swift_getObjectType();
          v38 = v113;
        }

        else
        {
          v14 = 0;
          sub_10000C1FC();
        }

        v121[0] = v36;
        v123 = v37;
        v124 = v38;
        swift_unknownObjectRetain();
        sub_100030344();
        CallsPresentation.compact.setter();
        v56 = swift_getObjectType();
        sub_10000A57C(v56, v131 + 8);
        sub_10003041C(v57);
        swift_unknownObjectRelease();
        goto LABEL_72;
      }

      sub_1000303D8();
      if (v14)
      {
        swift_getObjectType();
        if ((dispatch thunk of Call.isVideo.getter() & 1) == 0)
        {
          sub_10000C6E4();
          sub_100030344();
          CallsPresentation.compact.setter();
          v44 = swift_getObjectType();
          sub_10000A57C(v44, v131);
          *(v45 - 256) = v14;
          swift_unknownObjectRetain();
          CallsPresentation.full.setter();
        }

        swift_unknownObjectRelease();
      }

      goto LABEL_71;
    }

    swift_getObjectType();
    v47 = dispatch thunk of CallCoordinator.prioritizedCall.getter();
    if (v47)
    {
      v48 = v47;
      swift_getObjectType();
      v121[0] = v48;
      v10 = dispatch thunk of FullPresentable.callUUID.getter();
      v50 = v49;
      v51 = swift_getObjectType();
      *&v131[0] = v11;
      v111 = v51;
      if (v10 == dispatch thunk of FullPresentable.callUUID.getter() && v50 == v52)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v10 & 1) == 0 && (dispatch thunk of Call.isVideo.getter())
        {
          sub_10000C6E4();
          sub_100030344();
          CallsPresentation.compact.setter();
          v123 = v111;
          v124 = v116;
          sub_100024828();
          swift_unknownObjectRetain();
          CallsPresentation.full.setter();
          sub_1000142C0();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1000303D8();
          goto LABEL_109;
        }

        swift_unknownObjectRelease();
      }

      sub_100008CC4();
    }

    v29 = &off_1003B0000;
    v105 = OBJC_IVAR___ICSCallManagerBridge_foregroundRingingCall;
    sub_10000FF6C();
    if (*(v10 + v105))
    {
      goto LABEL_114;
    }

    if ((v114 & 1) == 0)
    {
      if (!dispatch thunk of CallCoordinator.activeVideoCall.getter())
      {
LABEL_114:
        sub_10000C6E4();
        sub_100030344();
        CallsPresentation.compact.setter();
        v106 = swift_getObjectType();
        sub_10000A57C(v106, v131 + 8);
        sub_10003041C(v107);
LABEL_119:
        swift_unknownObjectRelease();
        sub_1000303D8();
        goto LABEL_83;
      }

      swift_unknownObjectRelease();
    }

    v123 = swift_getObjectType();
    v124 = v33;
    sub_100024828();
    swift_unknownObjectRetain();
    sub_100030344();
    CallsPresentation.compact.setter();
    sub_10000C6E4();
    CallsPresentation.full.setter();
    swift_unknownObjectRelease();
    goto LABEL_119;
  }

  if (v118)
  {
    v115 = v31;
    swift_unknownObjectRetain();
    v30 = 0;
    sub_1000073DC();
LABEL_42:
    sub_10000C6E4();
LABEL_78:
    swift_unknownObjectRetain();
    sub_100030344();
    CallsPresentation.compact.setter();
    sub_1000303D8();
    if (v14)
    {
      v64 = swift_getObjectType();
      v65 = v115;
    }

    else
    {
      v30 = 0;
      sub_10000C1FC();
    }

    v121[0] = v30;
    v123 = v64;
    v124 = v65;
    sub_100030344();
    CallsPresentation.full.setter();
    swift_unknownObjectRelease();
    goto LABEL_82;
  }

LABEL_43:
  v112 = v7;
  sub_100008AC8();
  swift_getObjectType();
  v11 = v117;
  swift_unknownObjectRetain();
  if (dispatch thunk of CallCoordinator.activeVideoCall.getter())
  {
    swift_unknownObjectRelease();
    v39 = v117;
    sub_1000073DC();
    if (!v117)
    {
      v30 = 0;
      goto LABEL_18;
    }

    goto LABEL_45;
  }

  sub_1000073DC();
  if (v117)
  {
    v60 = swift_getObjectType();
    v61 = v117;
  }

  else
  {
    v8 = 0;
    sub_10000C1FC();
  }

  v29 = &off_1003B0000;
  v121[0] = v61;
  v123 = v60;
  v124 = v8;
  swift_unknownObjectRetain();
  sub_100030344();
  CallsPresentation.compact.setter();
  if (v117)
  {
    v108 = swift_getObjectType();
    v109 = v117;
    v110 = v112;
  }

  else
  {
    v109 = 0;
    v108 = 0;
    v110 = 0;
    v122 = 0;
    v121[1] = 0;
  }

  v121[0] = v109;
  v123 = v108;
  v124 = v110;
  sub_100030344();
  CallsPresentation.full.setter();
LABEL_83:
  v66 = v29[100];
  swift_beginAccess();
  if (*(&v66->Flags + v10) == 1)
  {
    if (!v11)
    {
LABEL_98:
      *(&v66->Flags + v10) = 0;
      sub_100034CF4();
      goto LABEL_99;
    }

    sub_100019DD4();
    CallsPresentation.full.getter();
    v67 = v123;
    if (v123)
    {
      v68 = sub_100008878(v121, v123);
      v10 = v14;
      v69 = *(v67 - 8);
      __chkstk_darwin(v68, v68);
      sub_100005BD0();
      (*(v69 + 16))(v71 - v70);
      sub_100008360(v121, &unk_1003B0510);
      v72 = dispatch thunk of FullPresentable.callUUID.getter();
      v74 = v73;
      v75 = sub_1000089C8();
      v76(v75);
      sub_10000B4F8();
    }

    else
    {
      sub_100008360(v121, &unk_1003B0510);
      v72 = 0;
      v74 = 0;
    }

    swift_getObjectType();
    sub_100024828();
    v77 = dispatch thunk of FullPresentable.callUUID.getter();
    if (v74)
    {
      if (v72 == v77 && v74 == v78)
      {

        sub_100008CC4();
      }

      else
      {
        v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100008CC4();
        if ((v80 & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      sub_100019DD4();
      CallsPresentation.compact.getter();
      v81 = v123;
      sub_100008360(v121, &qword_1003AB3D0);
      if (v81)
      {
        goto LABEL_98;
      }
    }

    else
    {
    }
  }

LABEL_99:
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v82 = type metadata accessor for Logger();
  sub_100008A14(v82, &unk_1003B8820);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = sub_100005384();
    v86 = sub_100005D4C();
    v120[0] = v86;
    *v85 = 136315138;
    sub_100245C08();
    sub_100019DD4();
    CallsPresentation.full.getter();
    swift_endAccess();
    v87 = sub_100030434(v121);
    v89 = v88;
    sub_100008360(v121, &unk_1003B0510);
    v90 = sub_100008ADC(v87, v89, v120);

    *(v85 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v83, v84, "CallManagerBridge proposedPresentation - full: %s", v85, 0xCu);
    sub_100005B2C(v86);
    sub_1000303D8();
    sub_100005BB8();
    sub_100005BB8();
  }

  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = sub_100005384();
    v94 = sub_100005D4C();
    v120[0] = v94;
    *v93 = 136315138;
    sub_100245C08();
    sub_100019DD4();
    CallsPresentation.compact.getter();
    swift_endAccess();
    v95 = sub_1000304F8(v121);
    v97 = v96;
    sub_100008360(v121, &qword_1003AB3D0);
    v98 = sub_100008ADC(v95, v97, v120);

    *(v93 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v91, v92, "CallManagerBridge proposedPresentation - compact: %s", v93, 0xCu);
    sub_100005B2C(v94);
    sub_100005BB8();
    sub_100005368();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000142C0();
  swift_unknownObjectRelease();
  sub_10000FF6C();
  v99 = sub_100245BF4();
  v100(v99);
  v101 = sub_100006628();
  v102(v101);
LABEL_106:
  sub_100007B28();
}

__n128 sub_10002FA68@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getObjectType();
  v3 = dispatch thunk of CallCoordinator.incomingAudioCall.getter();
  v48 = v4;
  v49 = v5;
  v50 = v6;
  v7 = 0;
  v47 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v8 = *(a1 + 16);
  v9 = 0uLL;
  v45 = 0u;
  v46 = 0u;
  v41 = 0u;
  v10 = a1 + 32;
LABEL_2:
  v40 = v9;
  while (1)
  {
    v11 = v7;
LABEL_4:
    if (v8 == v11)
    {
      break;
    }

    if (v11 >= v8)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      JUMPOUT(0x10002FE9CLL);
    }

    v7 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_31;
    }

    v12 = (v10 + 32 * v11);
    v51 = v12[1];
    v52 = *v12;
    v13 = *v12;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = *(&v52 + 1);
    v15 = dispatch thunk of Call.status.getter() - 1;
    v16 = v51;
    switch(v15)
    {
      case 0:
        swift_unknownObjectRelease();
        v43 = v51;
        v44 = *(&v52 + 1);
        v47 = v13;
        v42 = *(&v51 + 1);
        continue;
      case 1:
        swift_unknownObjectRelease();
        v45 = v52;
        v9 = v51;
        goto LABEL_2;
      case 2:
        swift_unknownObjectRelease();
        v46 = v52;
        v41 = v51;
        continue;
      case 3:
        if (!v3)
        {
          goto LABEL_19;
        }

        v17 = v8;
        swift_getObjectType();
        v18 = v3;
        v19 = dispatch thunk of FullPresentable.callUUID.getter();
        v21 = v20;
        if (v19 == dispatch thunk of FullPresentable.callUUID.getter() && v21 == v22)
        {
          swift_unknownObjectRelease();

          v8 = v17;
          v7 = v11 + 1;
          v16 = v51;
          v14 = *(&v52 + 1);
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v3 = v18;
          v8 = v17;
          v7 = v11 + 1;
          v14 = *(&v52 + 1);
          if ((v24 & 1) == 0)
          {
LABEL_14:
            swift_unknownObjectRelease();
            ++v11;
            goto LABEL_4;
          }

          swift_unknownObjectRelease();
          v16 = v51;
        }

LABEL_19:
        v48 = v14;
        v49 = v16;
        v3 = v13;
        v50 = *(&v51 + 1);
        break;
      default:
        goto LABEL_14;
    }
  }

  if (dispatch thunk of CallCoordinator.prioritizedCall.getter())
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    v26 = v47;
    if (v25 && (v27 = v25, ([v25 isVideo] & 1) == 0) && (v28 = objc_msgSend(objc_opt_self(), "sharedInstance"), v29 = TUCall.associatedCallGroup(in:)(), v28, v29) && (v30 = objc_msgSend(v29, "calls"), v29, sub_1000064BC(0, &qword_1003ADBE0), v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v30, v32 = sub_10000CF28(v31), , v32 > 1))
    {
      sub_100006FB8();
      v44 = sub_100030170(v33, &qword_1003ADBE0);
      sub_100009778();
      v43 = sub_100030170(v34, v35);
      sub_100025C88();
      v42 = sub_100030170(v36, v37);
      swift_unknownObjectRelease();
      v26 = v27;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v26 = v47;
  }

  *a2 = v3;
  *(a2 + 8) = v48;
  *(a2 + 16) = v49;
  *(a2 + 24) = v50;
  *(a2 + 32) = v26;
  *(a2 + 40) = v44;
  *(a2 + 48) = v43;
  *(a2 + 56) = v42;
  *(a2 + 64) = v45;
  *(a2 + 80) = v40;
  result = v41;
  *(a2 + 96) = v46;
  *(a2 + 112) = v41;
  return result;
}