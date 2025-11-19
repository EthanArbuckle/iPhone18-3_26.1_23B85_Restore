Swift::Int QuestionnaireAnswerFormat.hashValue.getter(unsigned __int8 a1)
{
  sub_100050A78();
  sub_100050A88(a1);
  return sub_100050AA8();
}

Swift::Int sub_1000020D4()
{
  v1 = *v0;
  sub_100050A78();
  sub_100050A88(v1);
  return sub_100050AA8();
}

Swift::Int sub_100002148()
{
  v1 = *v0;
  sub_100050A78();
  sub_100050A88(v1);
  return sub_100050AA8();
}

uint64_t sub_10000218C()
{
  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension18QuestionnaireEntry_id;
  v2 = sub_10004FAD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension18QuestionnaireEntry__selectedAnswer + 8);

  v4 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension18QuestionnaireEntry__userCreatedAnswer + 8);

  v5 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension18QuestionnaireEntry___observationRegistrar;
  v6 = sub_10004FB98();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000022A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension18QuestionnaireEntry_id;
  v5 = sub_10004FAD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000023D4(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return a2();
}

uint64_t variable initialization expression of WritingToolsModel.networkQueue()
{
  v0 = sub_100050778();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_100050768() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_1000503E8() - 8) + 64);
  __chkstk_darwin();
  sub_1000027C8();
  sub_1000503D8();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_1000045C8(&unk_10006F5E0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002814(&unk_10006EA60, &qword_1000553E0);
  sub_10000285C();
  sub_100050808();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_100050788();
}

double variable initialization expression of RewritingModel.analyticsInstance@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10000275C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004FAD8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_1000027C8()
{
  result = qword_10006EA50;
  if (!qword_10006EA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006EA50);
  }

  return result;
}

uint64_t sub_100002814(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000285C()
{
  result = qword_10006F5F0;
  if (!qword_10006F5F0)
  {
    sub_1000028C0(&unk_10006EA60, &qword_1000553E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F5F0);
  }

  return result;
}

uint64_t sub_1000028C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

BOOL sub_10000296C(void *a1, uint64_t *a2)
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

void *sub_10000299C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1000029C8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

Swift::Int sub_100002AC8()
{
  v1 = *v0;
  sub_100050A78();
  sub_100050A88(v1);
  return sub_100050AA8();
}

Swift::Int sub_100002B3C()
{
  v1 = *v0;
  sub_100050A78();
  sub_100050A88(v1);
  return sub_100050AA8();
}

uint64_t sub_100002B80(uint64_t a1, id *a2)
{
  result = sub_1000504F8();
  *a2 = 0;
  return result;
}

uint64_t sub_100002BF8(uint64_t a1, id *a2)
{
  v3 = sub_100050508();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002C78@<X0>(void *a1@<X8>)
{
  sub_100050518();
  v2 = sub_1000504E8();

  *a1 = v2;
  return result;
}

void *sub_100002CBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002CEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_10004FC98();
}

uint64_t sub_100002D58()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10004FCB8();
}

uint64_t sub_100002DA4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10004FCA8();
}

Swift::Int sub_100002DFC()
{
  sub_100050A78();
  v1 = *v0;
  swift_getWitnessTable();
  sub_10004FCA8();
  return sub_100050AA8();
}

uint64_t sub_100002E68(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EEA8, type metadata accessor for IAPayloadValue);
  v3 = sub_1000045C8(&qword_10006EEB0, type metadata accessor for IAPayloadValue);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002F24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100003728(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100002F74(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EE98, type metadata accessor for SummarizationClientError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100002FE0(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EE98, type metadata accessor for SummarizationClientError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000304C(void *a1, uint64_t a2)
{
  v4 = sub_1000045C8(&qword_10006EE98, type metadata accessor for SummarizationClientError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000045C8(&qword_10006EE98, type metadata accessor for SummarizationClientError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000317C()
{
  v2 = *v0;
  sub_100050A78();
  sub_100050438();
  return sub_100050AA8();
}

uint64_t sub_1000031E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100050518();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000320C(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EEB8, type metadata accessor for IAPayloadKey);
  v3 = sub_1000045C8(&qword_10006EEC0, type metadata accessor for IAPayloadKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000032C8()
{
  v1 = *v0;
  sub_100050518();
  v2 = sub_100050598();

  return v2;
}

uint64_t sub_100003304()
{
  v1 = *v0;
  sub_100050518();
  sub_100050568();
}

Swift::Int sub_100003358()
{
  v1 = *v0;
  sub_100050518();
  sub_100050A78();
  sub_100050568();
  v2 = sub_100050AA8();

  return v2;
}

uint64_t sub_1000033CC(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EE60, type metadata accessor for SummarizationClientError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003438(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EE60, type metadata accessor for SummarizationClientError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000034A8(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EE98, type metadata accessor for SummarizationClientError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000045C8(&qword_10006EE98, type metadata accessor for SummarizationClientError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100003598@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000504E8();

  *a2 = v5;
  return result;
}

uint64_t sub_1000035E0(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EEC8, type metadata accessor for URLResourceKey);
  v3 = sub_1000045C8(&qword_10006EED0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000369C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100050518();
  v6 = v5;
  if (v4 == sub_100050518() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000509B8();
  }

  return v9 & 1;
}

uint64_t sub_100003728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_100003784(uint64_t a1)
{
  v2 = sub_100002814(&qword_10006ED88, &qword_1000559D0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002814(&qword_10006ED90, &qword_1000559D8);
    v8 = sub_100050918();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005070(v10, v6, &qword_10006ED88, &qword_1000559D0);
      result = sub_10004A0A0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_10004FAD8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10000396C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002814(&qword_10006EDE0, &qword_100055A28);
    v3 = sub_100050918();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005070(v4, &v13, &qword_10006EDE8, &qword_100055A30);
      v5 = v13;
      v6 = v14;
      result = sub_10004A138(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000050D8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

Swift::Int sub_100003AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002814(&qword_10006EDD8, &qword_100055A20);
    v3 = sub_100050828();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      sub_100050A78();
      sub_100050A88(v10);
      result = sub_100050AA8();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100003BDC(uint64_t a1)
{
  v2 = sub_100002814(&qword_10006EDC8, &unk_100055A10);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002814(&qword_10006EDD0, &unk_10005AD40);
    v8 = sub_100050918();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005070(v10, v6, &qword_10006EDC8, &unk_100055A10);
      result = sub_10004A0A0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_10004FAD8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100003DE8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_100002814(a2, a3);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_100002814(a4, a5);
    v15 = sub_100050918();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_100005070(v17, v13, a2, v28);
      result = sub_10004A0A0(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_10004FAD8();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

unint64_t sub_100003FC8(uint64_t a1)
{
  v2 = sub_100002814(&qword_10006EDA8, &qword_1000559F0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002814(&qword_10006EDB0, &qword_1000559F8);
    v8 = sub_100050918();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005070(v10, v6, &qword_10006EDA8, &qword_1000559F0);
      result = sub_10004A0A0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_10004FAD8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1000041B4()
{
  result = qword_10006EA70;
  if (!qword_10006EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EA70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuestionnaireAnswerFormat(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for QuestionnaireAnswerFormat(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for QuestionnaireEntry()
{
  result = qword_10006EAC0;
  if (!qword_10006EAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000043D0()
{
  result = sub_10004FAD8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_10004FB98();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

__n128 sub_100004518(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004524(uint64_t a1, int a2)
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

uint64_t sub_100004544(uint64_t result, int a2, int a3)
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

uint64_t sub_1000045C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100004808(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002814(&qword_10006ED30, &qword_100055978);
    v3 = sub_100050918();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005070(v4, &v13, &qword_10006ED38, &unk_100055980);
      v5 = v13;
      v6 = v14;
      result = sub_10004A138(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005060(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100004938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002814(&qword_10006ED40, &unk_10005AD50);
    v3 = sub_100050918();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_10004A1B0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_100004A9C(uint64_t a1)
{
  v2 = sub_100002814(&qword_10006ED78, &qword_1000559C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002814(&qword_10006ED80, &qword_1000559C8);
    v8 = sub_100050918();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005070(v10, v6, &qword_10006ED78, &qword_1000559C0);
      v12 = *v6;
      result = sub_10004A244(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004F738();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100004C84(uint64_t a1)
{
  v2 = sub_100002814(&qword_10006ED68, &qword_1000559B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002814(&qword_10006ED70, &qword_1000559B8);
    v8 = sub_100050918();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005070(v10, v6, &qword_10006ED68, &qword_1000559B0);
      v12 = *v6;
      result = sub_10004A314(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004F738();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void *sub_100004E6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002814(&qword_10006ED18, &qword_100055960);
    v3 = sub_100050828();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_100050518();
      sub_100050A78();
      v29 = v7;
      sub_100050568();
      v9 = sub_100050AA8();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_100050518();
        v20 = v19;
        if (v18 == sub_100050518() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1000509B8();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

_OWORD *sub_100005060(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005070(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002814(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000050D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_100005544(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1000055DC()
{
  result = qword_10006EE88;
  if (!qword_10006EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EE88);
  }

  return result;
}

unint64_t sub_100005788()
{
  result = qword_10006F048;
  if (!qword_10006F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F048);
  }

  return result;
}

unint64_t sub_1000057E0()
{
  result = qword_10006F050;
  if (!qword_10006F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F050);
  }

  return result;
}

unint64_t sub_100005838()
{
  result = qword_10006F058;
  if (!qword_10006F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F058);
  }

  return result;
}

uint64_t sub_1000058DC()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B280);
  sub_1000071F4(v0, qword_10007B280);
  return sub_10004F978();
}

uint64_t sub_100005940@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(sub_100002814(&qword_10006F0C0, &qword_100056370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v4 = &v18 - v3;
  v5 = *(*(sub_100002814(&qword_10006F090, &qword_100058950) - 8) + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = sub_10004F9A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10004F978();
  v14 = *(v12 + 56);
  v14(v10, 1, 1, v11);
  sub_10004F978();
  v14(v8, 0, 1, v11);
  sub_10004F708();
  v15 = sub_10004F718();
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  sub_10004F6E8();
  v16 = sub_10004F6D8();
  return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
}

uint64_t sub_100005C10(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = *(*(sub_10004FB38() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v4 = *(*(sub_1000504D8() - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v5 = sub_10004F8A8();
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_100050658();
  v2[20] = sub_100050648();
  v9 = sub_100050628();
  v2[21] = v9;
  v2[22] = v8;

  return _swift_task_switch(sub_100005D84, v9, v8);
}

uint64_t sub_100005D84()
{
  sub_10004F658();
  v1 = sub_10004F648();
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 80);
    v5 = v1[1];
    *(v0 + 264) = *v1;
    *(v0 + 280) = v5;
    *(v0 + 48) = v4;
    sub_10000722C();
    *(v0 + 184) = sub_10004F7C8();
    sub_10004F698();
    v6 = type metadata accessor for WritingToolsIntentManager();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    *(v0 + 192) = swift_allocObject();
    *(v0 + 200) = sub_100050648();
    v10 = sub_100050628();

    return _swift_task_switch(sub_100006028, v10, v9);
  }

  else
  {
    v11 = *(v0 + 160);

    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v12 = sub_100050188();
    sub_1000071F4(v12, qword_10007B4F8);
    v13 = sub_100050168();
    v14 = sub_100050728();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to obtain an app audit token from AppIntents.", v15, 2u);
    }

    sub_10004F5D8();
    sub_10000731C(&qword_10006F0A0, &type metadata accessor for AppIntentError);
    swift_allocError();
    sub_10004F5C8();
    swift_willThrow();
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_100006028()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v24 = *(v0 + 144);
  v25 = *(v0 + 136);
  v4 = *(v0 + 112);
  v23 = *(v0 + 104);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);

  sub_100050468();
  sub_10004FB08();
  v7 = sub_100050528();
  *(v0 + 208) = v8;
  *(v2 + 3) = v7;
  *(v2 + 4) = v8;
  *(v2 + 6) = 100;
  v9 = type metadata accessor for WritingToolsModel();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_100009ACC(1, 0);
  *(v0 + 216) = v12;
  *(v2 + 2) = v12;
  sub_100008F38(9, 0, 0, 0);
  swift_getKeyPath();
  *(v0 + 56) = v12;
  sub_10000731C(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  v13 = *(v12 + 24);
  v14 = objc_allocWithZone(BSAuditToken);

  v15 = *(v0 + 280);
  *(v0 + 296) = *(v0 + 264);
  *(v0 + 312) = v15;
  sub_100011960([v14 initWithAuditToken:v0 + 296]);

  *(v2 + 5) = v3;
  [v3 setTotalUnitCount:100];
  v16 = *(v4 + 16);
  v16(&v2[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text], v24, v23);
  sub_100007288();
  v16(v25, v24, v23);
  v17 = sub_100050798();
  v18 = [objc_allocWithZone(WTContext) initWithAttributedText:v17 range:{0, objc_msgSend(v17, "length")}];
  *(v0 + 224) = v18;

  v19 = *(v4 + 8);
  *(v0 + 232) = v19;
  *(v0 + 240) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v24, v23);
  *&v2[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context] = v18;
  v20 = *(v0 + 168);
  v21 = *(v0 + 176);

  return _swift_task_switch(sub_10000630C, v20, v21);
}

uint64_t sub_10000630C()
{
  v1 = v0[16];
  sub_10004F898();
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_1000063AC;
  v3 = v0[24];
  v4 = v0[15];

  return sub_100025888(v4);
}

uint64_t sub_1000063AC()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = sub_1000066C0;
  }

  else
  {
    v7 = sub_1000064E8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000064E8()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[20];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];

  v2(v5, v6);
  (*(v7 + 32))(v5, v4, v6);
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[27];
  v11 = v0[26];
  v12 = v0[23];
  v13 = v0[24];
  v21 = v0[28];
  v22 = v0[18];
  v14 = v0[16];
  v23 = v0[17];
  v24 = v0[15];
  v15 = v0[13];
  v25 = v0[12];
  v26 = v0[11];
  v16 = v0[9];
  sub_10000731C(&qword_10006F0B8, &type metadata accessor for AttributedString);
  sub_10004F688();

  swift_setDeallocating();
  v9(v13 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v15);

  v17 = *(*v13 + 48);
  v18 = *(*v13 + 52);
  swift_deallocClassInstance();
  v9(v14, v15);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000066C0()
{
  v1 = v0[32];
  v2 = v0[20];

  v0[8] = v1;
  swift_errorRetain();
  sub_100002814(&qword_10006F0B0, &qword_100057A80);
  if (swift_dynamicCast())
  {
    v3 = v0[3];
    if (v3 == 1)
    {
      v4 = v0[32];

      v5 = v0[8];

      v7 = v0[29];
      v6 = v0[30];
      v8 = v0[27];
      v9 = v0[26];
      v10 = v0[23];
      v11 = v0[24];
      v40 = v0[28];
      v41 = v0[18];
      v12 = v0[16];
      v42 = v0[17];
      v43 = v0[15];
      v13 = v0[13];
      v44 = v0[12];
      v45 = v0[11];
      v14 = v0[9];
      sub_10000731C(&qword_10006F0B8, &type metadata accessor for AttributedString);
      sub_10004F688();

      swift_setDeallocating();
      v7(v11 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v13);

      v15 = *(*v11 + 48);
      v16 = *(*v11 + 52);
      swift_deallocClassInstance();
      v7(v12, v13);

      v17 = v0[1];
      goto LABEL_6;
    }

    v18 = v0[4];
    v19 = v0[5];
    sub_1000072D4(v0[2], v3);
  }

  v20 = v0[32];
  v22 = v0[29];
  v21 = v0[30];
  v23 = v0[27];
  v24 = v0[28];
  v25 = v0[26];
  v27 = v0[23];
  v26 = v0[24];
  v46 = v0[16];
  v28 = v0[13];
  v29 = v0[8];

  swift_willThrow();

  swift_setDeallocating();
  v22(v26 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v28);

  v30 = *(*v26 + 48);
  v31 = *(*v26 + 52);
  swift_deallocClassInstance();
  v22(v46, v28);
  v32 = v0[32];
  v34 = v0[17];
  v33 = v0[18];
  v36 = v0[15];
  v35 = v0[16];
  v38 = v0[11];
  v37 = v0[12];

  v17 = v0[1];
LABEL_6:

  return v17();
}

uint64_t sub_1000069C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006E870 != -1)
  {
    swift_once();
  }

  v2 = sub_10004F9A8();
  v3 = sub_1000071F4(v2, qword_10007B280);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100006A78()
{
  v0 = sub_100002814(&qword_10006F0C8, &qword_100056378);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100002814(&qword_10006F0D0, &qword_100056380);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_10004F778();
  v5._object = 0x80000001000516B0;
  v5._countAndFlagsBits = 0xD000000000000010;
  sub_10004F768(v5);
  swift_getKeyPath();
  sub_100002814(&qword_10006F0D8, &unk_1000563B0);
  sub_10004F758();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004F768(v6);
  sub_10004F788();
  return sub_10004F748();
}

uint64_t sub_100006C14(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006CB4;

  return sub_100005C10(a1, v4);
}

uint64_t sub_100006CB4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006DA8@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = sub_10004F798();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002814(&qword_10006F080, &unk_100059350);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_100002814(&qword_10006F088, &unk_100056320);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - v12;
  v14 = sub_100002814(&qword_10006F090, &qword_100058950);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v24 - v16;
  v18 = sub_10004F9A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100002814(&qword_10006F098, &qword_100056330);
  sub_10004F978();
  (*(v19 + 56))(v17, 1, 1, v18);
  v21 = sub_10004F8A8();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_10004F678();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  (*(v2 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_10004F6C8();
  *v25 = result;
  return result;
}

uint64_t sub_1000070D8(uint64_t a1)
{
  v2 = sub_100005788();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000071AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000028C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000071F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000722C()
{
  result = qword_10006F0A8;
  if (!qword_10006F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F0A8);
  }

  return result;
}

unint64_t sub_100007288()
{
  result = qword_100071130;
  if (!qword_100071130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100071130);
  }

  return result;
}

uint64_t sub_1000072D4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_10000731C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007364@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10004F6A8();
  *a2 = result;
  return result;
}

uint64_t *sub_100007390(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1000073F8()
{
  result = qword_10006F0E0;
  if (!qword_10006F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F0E0);
  }

  return result;
}

unint64_t sub_100007450()
{
  result = qword_10006F0E8;
  if (!qword_10006F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F0E8);
  }

  return result;
}

unint64_t sub_1000074A8()
{
  result = qword_10006F0F0;
  if (!qword_10006F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F0F0);
  }

  return result;
}

uint64_t sub_10000754C()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B298);
  sub_1000071F4(v0, qword_10007B298);
  return sub_10004F978();
}

uint64_t sub_1000075B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_100002814(&qword_10006F090, &qword_100058950);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = sub_10004F9A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10004F978();
  v16 = *(v14 + 56);
  v16(v12, 1, 1, v13);
  sub_10004F978();
  v16(v10, 0, 1, v13);
  sub_10004F708();
  v17 = sub_10004F718();
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  sub_10004F6E8();
  v18 = sub_10004F6D8();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_100007860(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = *(*(sub_10004FB38() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v4 = *(*(sub_1000504D8() - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v5 = sub_10004F8A8();
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_100050658();
  v2[20] = sub_100050648();
  v9 = sub_100050628();
  v2[21] = v9;
  v2[22] = v8;

  return _swift_task_switch(sub_1000079D4, v9, v8);
}

uint64_t sub_1000079D4()
{
  sub_10004F658();
  v1 = sub_10004F648();
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 80);
    v5 = v1[1];
    *(v0 + 264) = *v1;
    *(v0 + 280) = v5;
    *(v0 + 48) = v4;
    sub_1000085FC();
    *(v0 + 184) = sub_10004F7C8();
    sub_10004F698();
    v6 = type metadata accessor for WritingToolsIntentManager();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    *(v0 + 192) = swift_allocObject();
    *(v0 + 200) = sub_100050648();
    v10 = sub_100050628();

    return _swift_task_switch(sub_100007C78, v10, v9);
  }

  else
  {
    v11 = *(v0 + 160);

    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v12 = sub_100050188();
    sub_1000071F4(v12, qword_10007B4F8);
    v13 = sub_100050168();
    v14 = sub_100050728();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to obtain an app audit token from AppIntents.", v15, 2u);
    }

    sub_10004F5D8();
    sub_10000731C(&qword_10006F0A0, &type metadata accessor for AppIntentError);
    swift_allocError();
    sub_10004F5C8();
    swift_willThrow();
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_100007C78()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v24 = *(v0 + 144);
  v25 = *(v0 + 136);
  v4 = *(v0 + 112);
  v23 = *(v0 + 104);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);

  sub_100050468();
  sub_10004FB08();
  v7 = sub_100050528();
  *(v0 + 208) = v8;
  *(v2 + 3) = v7;
  *(v2 + 4) = v8;
  *(v2 + 6) = 100;
  v9 = type metadata accessor for WritingToolsModel();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_100009ACC(1, 0);
  *(v0 + 216) = v12;
  *(v2 + 2) = v12;
  sub_100008F38(0, 0, 0, 0);
  swift_getKeyPath();
  *(v0 + 56) = v12;
  sub_10000731C(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  v13 = *(v12 + 24);
  v14 = objc_allocWithZone(BSAuditToken);

  v15 = *(v0 + 280);
  *(v0 + 296) = *(v0 + 264);
  *(v0 + 312) = v15;
  sub_100011960([v14 initWithAuditToken:v0 + 296]);

  *(v2 + 5) = v3;
  [v3 setTotalUnitCount:100];
  v16 = *(v4 + 16);
  v16(&v2[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text], v24, v23);
  sub_100007288();
  v16(v25, v24, v23);
  v17 = sub_100050798();
  v18 = [objc_allocWithZone(WTContext) initWithAttributedText:v17 range:{0, objc_msgSend(v17, "length")}];
  *(v0 + 224) = v18;

  v19 = *(v4 + 8);
  *(v0 + 232) = v19;
  *(v0 + 240) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v24, v23);
  *&v2[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context] = v18;
  v20 = *(v0 + 168);
  v21 = *(v0 + 176);

  return _swift_task_switch(sub_10000630C, v20, v21);
}

uint64_t sub_100007F5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006E878 != -1)
  {
    swift_once();
  }

  v2 = sub_10004F9A8();
  v3 = sub_1000071F4(v2, qword_10007B298);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100008004()
{
  v0 = sub_100002814(&qword_10006F110, &qword_100056548);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100002814(&qword_10006F118, &qword_100056550);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_10004F778();
  v5._countAndFlagsBits = 0x2065746972776552;
  v5._object = 0xE800000000000000;
  sub_10004F768(v5);
  swift_getKeyPath();
  sub_100002814(&unk_10006F120, &unk_100056580);
  sub_10004F758();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004F768(v6);
  sub_10004F788();
  return sub_10004F748();
}

uint64_t sub_10000819C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006CB4;

  return sub_100007860(a1, v4);
}

uint64_t sub_10000823C@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = sub_10004F798();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002814(&qword_10006F080, &unk_100059350);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_100002814(&qword_10006F088, &unk_100056320);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - v12;
  v14 = sub_100002814(&qword_10006F090, &qword_100058950);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v24 - v16;
  v18 = sub_10004F9A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100002814(&qword_10006F098, &qword_100056330);
  sub_10004F978();
  (*(v19 + 56))(v17, 1, 1, v18);
  v21 = sub_10004F8A8();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_10004F678();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  (*(v2 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_10004F6C8();
  *v25 = result;
  return result;
}

uint64_t sub_10000856C(uint64_t a1)
{
  v2 = sub_1000073F8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000085FC()
{
  result = qword_10006F108;
  if (!qword_10006F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F108);
  }

  return result;
}

uint64_t sub_100008658@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10004F6A8();
  *a2 = result;
  return result;
}

uint64_t sub_100008684()
{
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  v1 = *(v0 + 16);
}

uint64_t sub_100008728@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  *a2 = *(v3 + 16);
}

uint64_t sub_1000087D4(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
    sub_10004FB48();
  }
}

uint64_t sub_100008908()
{
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  v1 = *(v0 + 24);
}

uint64_t sub_1000089AC(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
    sub_10004FB48();
  }
}

uint64_t sub_100008AE0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  if (!*(v0 + 72))
  {
    swift_getKeyPath();
    sub_10004FB58();

    v2 = *(v0 + 24);
    swift_getKeyPath();

    sub_10004FB58();

    v3 = *(v0 + 48);
    v4 = *(v1 + 56);
    v5 = *(v1 + 64);
    v6 = *(v1 + 72);
    sub_10000A594(*(v1 + 48), v4, v5, v6);
    sub_100011C9C(v3, v4, v5, v6);
  }

  swift_getKeyPath();
  sub_10004FB58();

  if (*(v1 + 72) >= 2u)
  {
    v8 = *(v1 + 48);
    if (*(v1 + 56) | *(v1 + 64) | v8)
    {
      if (v8 == 1 && *(v1 + 56) == 0)
      {
        swift_getKeyPath();
        sub_10004FB58();

        v9 = *(v1 + 16);
        swift_getKeyPath();

        sub_10004FB58();

        v10 = *(v1 + 48);
        v11 = *(v1 + 56);
        v12 = *(v1 + 64);
        v13 = *(v1 + 72);
        sub_10000A594(v10, v11, v12, v13);
        sub_100011C9C(v10, v11, v12, v13);
      }
    }
  }

  return result;
}

uint64_t sub_100008D4C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  v1 = *(v0 + 48);
  sub_10000A594(v1, *(v3 + 56), *(v3 + 64), *(v3 + 72));
  return v1;
}

uint64_t sub_100008E18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 72);
  *(a2 + 24) = v7;
  return sub_10000A594(v4, v5, v6, v7);
}

uint64_t sub_100008ED4(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a1 + 24);
  sub_10000A594(*a1, v3, v4, v6);
  return sub_100008F38(v2, v3, v4, v6);
}

uint64_t sub_100008F38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  v11 = *(v4 + 64);
  v12 = *(v4 + 72);
  if (sub_10000A3E4(v9, v10, v11, v12, a1, a2, a3, a4))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
    sub_10004FB48();
    sub_10000A1CC(a1, a2, a3, a4);
  }

  else
  {
    *(v4 + 48) = a1;
    *(v4 + 56) = a2;
    *(v4 + 64) = a3;
    *(v4 + 72) = a4;
    sub_10000A1CC(v9, v10, v11, v12);

    return sub_100008AE0();
  }
}

uint64_t sub_1000090EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  v8 = *(a1 + 72);
  *(a1 + 72) = a5;
  sub_10000A594(a2, a3, a4, a5);
  sub_10000A1CC(v5, v6, v7, v8);
  return sub_100008AE0();
}

uint64_t sub_100009168()
{
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  return *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable);
}

uint64_t sub_100009210@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable);
  return result;
}

uint64_t sub_1000092C0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
    sub_10004FB48();
  }

  return result;
}

uint64_t WritingToolsModel.__allocating_init(hostIsReady:writingToolsDelegate:)(int a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_100009ACC(a1, a2);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t WritingToolsModel.init(hostIsReady:writingToolsDelegate:)(int a1, uint64_t a2)
{
  v2 = sub_100009ACC(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100009468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000503C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002814(&qword_10006F5F8, &qword_1000579B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v12 = sub_100050678();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v7, a1, v4);
  sub_100050658();

  v13 = sub_100050648();
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = &protocol witness table for MainActor;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v7, v4);
  sub_100026B4C(0, 0, v11, &unk_100056708, v15);
}

uint64_t sub_100009664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v6 = sub_1000503A8();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  sub_100050658();
  v5[13] = sub_100050648();
  v10 = sub_100050628();

  return _swift_task_switch(sub_100009768, v10, v9);
}

uint64_t sub_100009768()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 64);
    sub_1000503B8();
    (*(v7 + 104))(v5, enum case for NWPath.Status.satisfied(_:), v6);
    v9 = sub_100050398() & 1;
    v10 = *(v7 + 8);
    v10(v5, v6);
    v10(v4, v6);
    if (v9 == *(Strong + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable))
    {
      *(Strong + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable) = v9;
    }

    else
    {
      swift_getKeyPath();
      v11 = swift_task_alloc();
      *(v11 + 16) = Strong;
      *(v11 + 24) = v9;
      *(v0 + 40) = Strong;
      sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
      sub_10004FB48();
    }
  }

  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  **(v0 + 48) = Strong == 0;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t WritingToolsModel.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_10000A1CC(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__gmsAvailability;
  v5 = sub_10004FD48();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_10000A200(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__writingToolsDelegate);
  v6 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel_networkMonitor);

  v7 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel___observationRegistrar;
  v8 = sub_10004FB98();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t WritingToolsModel.__deallocating_deinit()
{
  WritingToolsModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100009ACC(int a1, uint64_t a2)
{
  v3 = v2;
  v55 = a2;
  v60 = a1;
  v4 = sub_10004FD48();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  __chkstk_darwin(v4);
  v61 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10004FD88();
  v57 = *(v59 - 8);
  v7 = *(v57 + 64);
  __chkstk_darwin(v59);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10004FD68();
  v56 = *(v58 - 8);
  v9 = *(v56 + 64);
  __chkstk_darwin(v58);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10004FDD8();
  v52 = *(v54 - 8);
  v11 = *(v52 + 64);
  __chkstk_darwin(v54);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100050778();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100050768();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v19 = sub_1000503E8();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = type metadata accessor for ProofreadingModel();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v2 + 16) = sub_100049A14();
  v24 = type metadata accessor for CompositionModel(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v2 + 32) = sub_10001BE40();
  *(v2 + 40) = 1;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__hostDidAddRemoteView) = 0;
  v27 = v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__auditedHostPID;
  *v27 = 0;
  *(v27 + 4) = 1;
  *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__isPopoverDetached) = 0;
  v28 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel_networkMonitor;
  v29 = sub_100050388();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *(v2 + v28) = sub_100050378();
  v32 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel_networkQueue;
  sub_1000027C8();
  sub_1000503D8();
  v64 = &_swiftEmptyArrayStorage;
  sub_10000A678(&unk_10006F5E0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002814(&unk_10006EA60, &qword_1000553E0);
  sub_10000285C();
  sub_100050808();
  (*(v48 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v49);
  *(v2 + v32) = sub_100050788();
  *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable) = 1;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2;
  v33 = type metadata accessor for RewritingModel();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v36 = sub_10003837C(0, 0, 0, 0);
  swift_unknownObjectRelease();
  *(v3 + 24) = v36;
  *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__hostIsReady) = v60;
  v37 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__writingToolsDelegate;
  swift_unknownObjectRetain();
  sub_10000A200(v3 + v37);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  (*(v57 + 104))(v53, enum case for GenerativeModelsAvailability.LanguageOption.any(_:), v59);
  v38 = v51;
  sub_10004FD58();
  v39 = v50;
  sub_10004FDB8();
  (*(v56 + 8))(v38, v58);
  v40 = v61;
  sub_10004FD78();
  (*(v52 + 8))(v39, v54);
  (*(v62 + 32))(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__gmsAvailability, v40, v63);
  v41 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel_networkMonitor;
  v42 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel_networkMonitor);
  swift_allocObject();
  swift_weakInit();

  sub_100050358();

  v43 = *(v3 + v41);
  v44 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel_networkQueue);

  v45 = v44;
  sub_100050368();

  return v3;
}

uint64_t sub_10000A1CC(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    return sub_10000A1EC(result, a2);
  }

  if (!a4)
  {
  }

  return result;
}

uint64_t sub_10000A1EC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for WritingToolsModel()
{
  result = qword_10006F1A8;
  if (!qword_10006F1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A27C()
{
  result = sub_10004FD48();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_10004FB98();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

BOOL sub_10000A3E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a2 == 1)
        {
          return a6 != 1;
        }

        if (a6 != 1)
        {
          if (!a2)
          {
            return a6 || ((a3 ^ a7) & 1) != 0;
          }

          if (a6)
          {
            if (a1 == a5 && a2 == a6)
            {
              if ((a3 & 1) != (a7 & 1))
              {
                return 1;
              }
            }

            else
            {
              v9 = a3;
              v10 = a7;
              if (sub_1000509B8() & 1) == 0 || ((v9 ^ v10))
              {
                return 1;
              }
            }

            return 0;
          }
        }
      }
    }

    else
    {
      if (!(a3 | a2 | a1))
      {
        return a8 != 2 || a7 | a6 | a5;
      }

      if (a1 != 1 || a3 | a2)
      {
        if (a8 != 2 || a5 != 2)
        {
          return 1;
        }
      }

      else if (a8 != 2 || a5 != 1)
      {
        return 1;
      }

      if (!(a7 | a6))
      {
        return 0;
      }
    }
  }

  else
  {
    if (a8 || a5 != a1)
    {
      return 1;
    }

    if (a3)
    {
      return !a7 || (a2 != a6 || a3 != a7) && (sub_1000509B8() & 1) == 0;
    }

    if (!a7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10000A594(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    return sub_10000A5B4(result, a2);
  }

  if (!a4)
  {
  }

  return result;
}

uint64_t sub_10000A5B4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10000A5CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000087D4(v4);
}

uint64_t sub_10000A600()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_10000A63C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_10000A678(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A6C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A700()
{
  v1 = sub_1000503C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000A7CC(uint64_t a1)
{
  v4 = *(sub_1000503C8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100006CB4;

  return sub_100009664(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10000A8DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void CompositionMode.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3 == 1)
  {
    sub_100050A88(1uLL);
  }

  else
  {
    sub_100050A88(0);
    if (a3)
    {
      sub_100050A98(1u);
      sub_100050568();
    }

    else
    {
      sub_100050A98(0);
    }

    sub_100050A98(a4 & 1);
  }
}

Swift::Int CompositionMode.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_100050A78();
  if (a2 == 1)
  {
    sub_100050A88(1uLL);
  }

  else
  {
    sub_100050A88(0);
    if (a2)
    {
      sub_100050A98(1u);
      sub_100050568();
    }

    else
    {
      sub_100050A98(0);
    }

    sub_100050A98(a3 & 1);
  }

  return sub_100050AA8();
}

void sub_10000AA78()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    sub_100050A88(1uLL);
  }

  else
  {
    v2 = *v0;
    v3 = *(v0 + 16);
    sub_100050A88(0);
    if (v1)
    {
      sub_100050A98(1u);
      sub_100050568();
    }

    else
    {
      sub_100050A98(0);
    }

    sub_100050A98(v3 & 1);
  }
}

Swift::Int sub_10000AAFC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_100050A78();
  if (v1 == 1)
  {
    sub_100050A88(1uLL);
  }

  else
  {
    sub_100050A88(0);
    if (v1)
    {
      sub_100050A98(1u);
      sub_100050568();
    }

    else
    {
      sub_100050A98(0);
    }

    sub_100050A98(v3 & 1);
  }

  return sub_100050AA8();
}

uint64_t sub_10000ABB4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 > 7u)
    {
      if (a1 == 8)
      {

        return static RewriteType.bullets()();
      }

      else
      {

        return static RewriteType.tables()();
      }
    }

    else if (a1 == 5)
    {

      return static RewriteType.openEnded()();
    }

    else
    {
      if (a1 != 7)
      {
        sub_1000508D8();
        __break(1u);
        return static RewriteType.professional()();
      }

      return sub_10004FC78();
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {

      return static RewriteType.proofreading()();
    }

    else
    {

      return static RewriteType.magic()();
    }
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {

        return static RewriteType.friendly()();
      }

      return static RewriteType.professional()();
    }

    return static RewriteType.concise()();
  }
}

uint64_t sub_10000ACE8()
{
  v0 = sub_10004FB38();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1000504D8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100050468();
  sub_10004FB08();
  return sub_100050528();
}

uint64_t sub_10000AF9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    return qword_100056968[a1];
  }

  if (a4 == 1)
  {
    return 10;
  }

  if (a4 == 2 && a1 == 2 && !(a3 | a2))
  {
    return 11;
  }

  return 0;
}

void Mode.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  if (a5)
  {
    if (a5 == 1)
    {
      sub_100050A88(3uLL);
      if (a3 != 1)
      {
        sub_100050A88(0);
        if (a3)
        {
          sub_100050A98(1u);
          sub_100050568();
        }

        else
        {
          sub_100050A98(0);
        }

        v9 = a4 & 1;
        goto LABEL_20;
      }
    }

    else
    {
      if (!(a4 | a3 | a2))
      {
        v8 = 0;
        goto LABEL_17;
      }

      if (a2 != 1 || a4 | a3)
      {
        v8 = 4;
        goto LABEL_17;
      }
    }

    v8 = 1;
LABEL_17:
    sub_100050A88(v8);
    return;
  }

  sub_100050A88(2uLL);
  sub_100050A88(v7);
  if (!a4)
  {
    v9 = 0;
LABEL_20:
    sub_100050A98(v9);
    return;
  }

  sub_100050A98(1u);

  sub_100050568();
}

Swift::Int Mode.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_100050A78();
  Mode.hash(into:)(v9, a1, a2, a3, a4);
  return sub_100050AA8();
}

Swift::Int sub_10000B168()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_100050A78();
  Mode.hash(into:)(v6, v1, v2, v3, v4);
  return sub_100050AA8();
}

Swift::Int sub_10000B1DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_100050A78();
  Mode.hash(into:)(v6, v1, v2, v3, v4);
  return sub_100050AA8();
}

BOOL _s31WritingToolsAppIntentsExtension15CompositionModeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v7 = a3;
      v8 = a6;
      v9 = sub_1000509B8();
      a3 = v7;
      a6 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  return (a6 ^ a3 ^ 1) & 1;
}

uint64_t _s31WritingToolsAppIntentsExtension4ModeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a2 == 1)
        {
          return a6 == 1;
        }

        if (a6 != 1)
        {
          if (!a2)
          {
            return !a6 && ((a3 ^ a7) & 1) == 0;
          }

          if (a6)
          {
            if (a1 == a5 && a2 == a6)
            {
              if ((a3 & 1) != (a7 & 1))
              {
                return 0;
              }
            }

            else
            {
              v9 = a3;
              v10 = a7;
              if (sub_1000509B8() & 1) == 0 || ((v9 ^ v10))
              {
                return 0;
              }
            }

            return 1;
          }
        }
      }
    }

    else
    {
      if (!(a3 | a2 | a1))
      {
        return a8 == 2 && !(a7 | a6 | a5);
      }

      if (a1 != 1 || a3 | a2)
      {
        if (a8 != 2 || a5 != 2)
        {
          return 0;
        }
      }

      else if (a8 != 2 || a5 != 1)
      {
        return 0;
      }

      if (!(a7 | a6))
      {
        return 1;
      }
    }
  }

  else
  {
    if (a8 || a5 != a1)
    {
      return 0;
    }

    if (a3)
    {
      return a7 && (a2 == a6 && a3 == a7 || (sub_1000509B8() & 1) != 0);
    }

    if (!a7)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_10000B484()
{
  result = qword_10006F6E8;
  if (!qword_10006F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F6E8);
  }

  return result;
}

unint64_t sub_10000B4DC()
{
  result = qword_10006F6F0;
  if (!qword_10006F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F6F0);
  }

  return result;
}

unint64_t sub_10000B534()
{
  result = qword_10006F6F8;
  if (!qword_10006F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F6F8);
  }

  return result;
}

uint64_t sub_10000B588(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_10000B5AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000B5C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B61C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10000B67C(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RewriteType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RewriteType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000B80C(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 sub_10000B828(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10000B83C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000B884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10000B8CC(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HandoffState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HandoffState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000BA6C()
{
  if (*v0)
  {
    result = 0x657669746361;
  }

  else
  {
    result = 0x6576697463616E69;
  }

  *v0;
  return result;
}

unint64_t sub_10000BAA8()
{
  result = qword_10006F700;
  if (!qword_10006F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F700);
  }

  return result;
}

uint64_t sub_10000BAFC()
{
  v127 = sub_10004FD18();
  v126 = *(v127 - 8);
  v0 = *(v126 + 64);
  __chkstk_darwin(v127);
  v125 = &v124 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100002814(&qword_10006F708, &qword_100056A78);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v149 = &v124 - v4;
  v5 = sub_100002814(&qword_10006F710, &unk_100056A80);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v135 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v150 = &v124 - v9;
  v10 = sub_10004FD38();
  v152 = *(v10 - 8);
  v153 = v10;
  v11 = *(v152 + 64);
  v12 = __chkstk_darwin(v10);
  v151 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v128 = &v124 - v15;
  v16 = __chkstk_darwin(v14);
  v124 = &v124 - v17;
  __chkstk_darwin(v16);
  v129 = &v124 - v18;
  v131 = sub_10004FD08();
  v130 = *(v131 - 8);
  v19 = *(v130 + 64);
  v20 = __chkstk_darwin(v131);
  v132 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v136 = &v124 - v22;
  v23 = sub_10004FD48();
  v154 = *(v23 - 8);
  v155 = v23;
  v24 = *(v154 + 64);
  __chkstk_darwin(v23);
  v26 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10004FD88();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10004FD68();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10004FDD8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v140 = &v124 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v124 - v42;
  v44 = *(v28 + 104);
  v139 = enum case for GenerativeModelsAvailability.LanguageOption.any(_:);
  v147 = v28 + 104;
  v148 = v27;
  v138 = v44;
  v44(v31);
  v145 = v31;
  sub_10004FD58();
  sub_10004FDB8();
  v45 = *(v33 + 8);
  v142 = v36;
  v146 = v32;
  v144 = v33 + 8;
  v137 = v45;
  v45(v36, v32);
  sub_10004FD78();
  v46 = *(v38 + 8);
  v47 = v43;
  v48 = v155;
  v143 = v37;
  v141 = v38 + 8;
  (v46)(v47, v37);
  v49 = v154;
  v50 = *(v154 + 88);
  v134 = v154 + 88;
  v133 = v50;
  v51 = v50(v26, v48);
  if (v51 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    (*(v49 + 96))(v26, v48);
    v52 = v130;
    v53 = v136;
    v54 = v131;
    (*(v130 + 32))(v136, v26, v131);
    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v55 = sub_100050188();
    sub_1000071F4(v55, qword_10007B4F8);
    v56 = v132;
    (*(v52 + 16))(v132, v53, v54);
    v57 = sub_100050168();
    v58 = sub_100050758();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v156 = v60;
      *v59 = 136315138;
      sub_10000CCBC(&qword_10006F720, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo);
      v61 = sub_100050998();
      v62 = v56;
      v63 = v46;
      v65 = v64;
      v66 = *(v52 + 8);
      v66(v62, v54);
      v67 = sub_100046C30(v61, v65, &v156);
      v46 = v63;

      *(v59 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v57, v58, "isComposeModelsAvailable: restricted, info = %s", v59, 0xCu);
      sub_10000CC70(v60);

      v66(v136, v54);
    }

    else
    {

      v84 = *(v52 + 8);
      v84(v56, v54);
      v84(v53, v54);
    }

    v85 = 0;
    v86 = v151;
    v68 = v152;
    v87 = v149;
    v69 = v154;
  }

  else
  {
    v68 = v152;
    if (v51 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      v69 = v49;
      (*(v49 + 96))(v26, v48);
      v70 = v129;
      (*(v68 + 32))(v129, v26, v153);
      if (qword_10006EA00 != -1)
      {
        swift_once();
      }

      v136 = v46;
      v71 = sub_100050188();
      sub_1000071F4(v71, qword_10007B4F8);
      v72 = v124;
      (*(v68 + 16))(v124, v70, v153);
      v73 = sub_100050168();
      v74 = sub_100050758();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v132 = v75;
        v76 = swift_slowAlloc();
        v156 = v76;
        *v75 = 136315138;
        sub_10000CCBC(&qword_10006F718, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo);
        v77 = v153;
        v78 = sub_100050998();
        v80 = v79;
        v81 = *(v152 + 8);
        v81(v72, v77);
        v82 = sub_100046C30(v78, v80, &v156);

        v83 = v132;
        *(v132 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v73, v74, "isComposeModelsAvailable: unavailable, info = %s", v83, 0xCu);
        sub_10000CC70(v76);
        v69 = v49;

        v81(v129, v77);
        v68 = v152;
      }

      else
      {

        v88 = *(v68 + 8);
        v89 = v153;
        v88(v72, v153);
        v88(v70, v89);
      }

      v85 = 0;
      v86 = v151;
      v87 = v149;
      v46 = v136;
    }

    else
    {
      v69 = v49;
      if (v51 == enum case for GenerativeModelsAvailability.Availability.available(_:))
      {
        v85 = 1;
        v86 = v151;
      }

      else
      {
        v86 = v151;
        if (qword_10006EA00 != -1)
        {
          swift_once();
        }

        v90 = sub_100050188();
        sub_1000071F4(v90, qword_10007B4F8);
        v91 = sub_100050168();
        v92 = sub_100050748();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&_mh_execute_header, v91, v92, "isComposeModelsAvailable: @unknown default", v93, 2u);
        }

        (*(v49 + 8))(v26, v155);
        v85 = 0;
      }

      v87 = v149;
    }
  }

  v138(v145, v139, v148);
  v94 = v142;
  sub_10004FD58();
  v95 = v140;
  sub_10004FDB8();
  v137(v94, v146);
  sub_10004FDC8();
  (v46)(v95, v143);
  v96 = sub_10004FDA8();
  v97 = *(v96 - 8);
  if ((*(v97 + 48))(v87, 1, v96) == 1)
  {
    sub_10000CBA0(v87, &qword_10006F708, &qword_100056A78);
    v98 = v150;
    (*(v69 + 56))(v150, 1, 1, v155);
    sub_10000CBA0(v98, &qword_10006F710, &unk_100056A80);
  }

  else
  {
    v99 = v150;
    sub_10004FD98();
    (*(v97 + 8))(v87, v96);
    v100 = v155;
    (*(v69 + 56))(v99, 0, 1, v155);
    v101 = v135;
    sub_10000CC00(v99, v135);
    if (v133(v101, v100) == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      (*(v69 + 96))(v101, v100);
      v102 = v128;
      (*(v68 + 32))(v128, v101, v153);
      v103 = sub_10004FD28();
      v104 = v126;
      v105 = v125;
      v106 = v127;
      (*(v126 + 104))(v125, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.useCaseDoesNotAllowUserLocaleRegion(_:), v127);
      v107 = sub_100027078(v105, v103);

      (*(v104 + 8))(v105, v106);
      if (v107)
      {
        if (qword_10006EA00 != -1)
        {
          swift_once();
        }

        v108 = sub_100050188();
        sub_1000071F4(v108, qword_10007B4F8);
        (*(v68 + 16))(v86, v102, v153);
        v109 = sub_100050168();
        v110 = sub_100050758();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = v102;
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v156 = v113;
          *v112 = 136315138;
          sub_10000CCBC(&qword_10006F718, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo);
          v114 = v153;
          v115 = sub_100050998();
          v116 = v86;
          v118 = v117;
          v119 = *(v68 + 8);
          v119(v116, v114);
          v120 = sub_100046C30(v115, v118, &v156);

          *(v112 + 4) = v120;
          _os_log_impl(&_mh_execute_header, v109, v110, "isComposeModelsAvailable: partner unavailable,  setting available to false, info = %s", v112, 0xCu);
          sub_10000CC70(v113);

          v119(v111, v114);
        }

        else
        {

          v121 = *(v68 + 8);
          v122 = v153;
          v121(v86, v153);
          v121(v102, v122);
        }

        return 0;
      }

      else
      {
        (*(v68 + 8))(v102, v153);
      }
    }

    else
    {
      (*(v69 + 8))(v101, v100);
    }
  }

  return v85;
}

uint64_t sub_10000CBA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002814(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000CC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&qword_10006F710, &unk_100056A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CC70(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000CCBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for WritingTools(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WritingTools(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000CE58()
{
  result = qword_10006F728;
  if (!qword_10006F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F728);
  }

  return result;
}

const char *sub_10000CEAC(char a1)
{
  result = "Panel_iOS";
  switch(a1)
  {
    case 1:
      result = "Panel_iPadOS";
      break;
    case 2:
      result = "Panel_macOS";
      break;
    case 3:
      result = "OpenEndedAdjustmentV2_FollowUp";
      break;
    case 4:
      result = "Montara";
      break;
    case 5:
      result = "Montara_PersonalInfoSearch";
      break;
    case 6:
      result = "Montara_PromptEntryView";
      break;
    case 7:
      result = "Montara_SlotFill";
      break;
    case 8:
      result = "Montara_PopoverAdjustment";
      break;
    case 9:
      result = "Montara_Streaming";
      break;
    case 10:
      result = "Montara_FullScreen_SceneHosting";
      break;
    case 11:
      result = "CustomQuestionnaireEntry";
      break;
    case 12:
      result = "AlternateQuestionnaire_macOS";
      break;
    case 13:
      result = "AlternateQuestionnaire_iPadOS";
      break;
    case 14:
      result = "FeedbackFCSBehavior";
      break;
    case 15:
      result = "Formatting_v2";
      break;
    case 16:
      result = "Panel_visionOS";
      break;
    case 17:
      result = "NativeRedesign_visionOS";
      break;
    default:
      return result;
  }

  return result;
}

__n128 sub_10000D0B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000D0CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10000D114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000D174@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10000D180(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_10000E388(v7, v8) & 1;
}

uint64_t sub_10000D1D8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10000D208@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_10000D2A8(uint64_t a1)
{
  v2 = sub_10000D678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000D2E4(uint64_t a1)
{
  v2 = sub_10000D678();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000D320(void *a1, uint64_t a2)
{
  v37 = sub_100002814(&qword_10006F730, &qword_100056C40);
  v26 = *(v37 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v37);
  v7 = &v26 - v6;
  v8 = a1[4];
  sub_10000D634(a1, a1[3]);
  sub_10000D678();
  v28 = v7;
  sub_100050AC8();
  v9 = a2 + 64;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;
  v27 = a2;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v20 = v19 | (v16 << 6);
      v21 = (*(v27 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      sub_10000D6CC(*(v27 + 56) + 40 * v20, v29);
      *&v30 = v23;
      *(&v30 + 1) = v22;
      sub_1000050D8(v29, &v31);

      v18 = v16;
LABEL_13:
      v34 = v30;
      v35[0] = v31;
      v35[1] = v32;
      v36 = v33;
      v24 = *(&v30 + 1);
      if (!*(&v30 + 1))
      {

        return (*(v26 + 8))(v28, v37);
      }

      v25 = v34;
      sub_1000050D8(v35, &v30);
      sub_10000D634(&v30, *(&v31 + 1));
      *&v29[0] = v25;
      *(&v29[0] + 1) = v24;
      sub_100050988();
      if (v2)
      {
        break;
      }

      result = sub_10000CC70(&v30);
      v15 = v18;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    (*(v26 + 8))(v28, v37);
    return sub_10000CC70(&v30);
  }

  else
  {
LABEL_5:
    if (v13 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v13;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v12 = 0;
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        goto LABEL_13;
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_10000D634(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000D678()
{
  result = qword_10006F738;
  if (!qword_10006F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F738);
  }

  return result;
}

uint64_t sub_10000D6CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000D730(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1000509B8() & 1) == 0)
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

uint64_t sub_10000D7C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    while (1)
    {
      v6 = (v4 + (v3 << 6));
      v7 = v6[1];
      v22 = *v6;
      v23 = v7;
      v8 = v6[3];
      v24 = v6[2];
      v25 = v8;
      v9 = (v5 + (v3 << 6));
      v10 = v9[1];
      v26 = *v9;
      v27 = v10;
      v11 = v9[3];
      v28 = v9[2];
      v29 = v11;
      if (v22 != v26 && (sub_1000509B8() & 1) == 0)
      {
        break;
      }

      v12 = *(v23 + 16);
      if (v12 != *(v27 + 16))
      {
        break;
      }

      if (v12 && v23 != v27)
      {
        v13 = (v23 + 40);
        v14 = (v27 + 40);
        do
        {
          v15 = *(v13 - 1) == *(v14 - 1) && *v13 == *v14;
          if (!v15 && (sub_1000509B8() & 1) == 0)
          {
            return 0;
          }

          v13 += 2;
          v14 += 2;
        }

        while (--v12);
      }

      v16 = *(&v23 + 1);
      v17 = *(&v27 + 1);
      sub_10000E528(&v22, v21);
      sub_10000E528(&v26, v21);
      if ((sub_10000E060(v16, v17) & 1) == 0)
      {
        goto LABEL_34;
      }

      if (*(&v24 + 1))
      {
        if (!*(&v28 + 1) || v24 != v28 && (sub_1000509B8() & 1) == 0)
        {
LABEL_34:
          sub_10000E584(&v26);
          sub_10000E584(&v22);
          return 0;
        }
      }

      else if (*(&v28 + 1))
      {
        goto LABEL_34;
      }

      v18 = *(&v29 + 1);
      if (*(&v25 + 1))
      {
        if (!*(&v29 + 1))
        {
          goto LABEL_34;
        }

        if (v25 == v29)
        {
          sub_10000E584(&v26);
          sub_10000E584(&v22);
        }

        else
        {
          v19 = sub_1000509B8();
          sub_10000E584(&v26);
          sub_10000E584(&v22);
          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        sub_10000E584(&v26);
        sub_10000E584(&v22);
        if (v18)
        {
          return 0;
        }
      }

      if (++v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10000DA18(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_10000E5D8(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = sub_100050878();
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = sub_100050878();
LABEL_26:
        v19 = v18;
        v20 = sub_1000507A8();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1000507A8();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1000508E8();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1000508E8();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10000DC80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v27 = v2;
  v28 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v21 = *v5;
    v22 = v8;
    v9 = v5[3];
    *v23 = v5[2];
    *&v23[16] = v9;
    v10 = v6[1];
    v24 = *v6;
    v25 = v10;
    v11 = v6[3];
    *v26 = v6[2];
    *&v26[16] = v11;
    if (v21 != v24 && (sub_1000509B8() & 1) == 0 || v22 != v25 && (sub_1000509B8() & 1) == 0)
    {
      return 0;
    }

    if (v23[0])
    {
      if (v23[0] == 1)
      {
        v12 = 0x74786554676E6F6CLL;
      }

      else
      {
        v12 = 0x6F746F6870;
      }

      if (v23[0] == 1)
      {
        v13 = 0xE800000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      v14 = v26[0];
      if (v26[0])
      {
LABEL_17:
        if (v14 == 1)
        {
          v15 = 0x74786554676E6F6CLL;
        }

        else
        {
          v15 = 0x6F746F6870;
        }

        if (v14 == 1)
        {
          v16 = 0xE800000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

        if (v12 != v15)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v12 = 0x78655474726F6873;
      v13 = 0xE900000000000074;
      v14 = v26[0];
      if (v26[0])
      {
        goto LABEL_17;
      }
    }

    v16 = 0xE900000000000074;
    if (v12 != 0x78655474726F6873)
    {
      goto LABEL_29;
    }

LABEL_27:
    if (v13 == v16)
    {
      sub_10000E6E0(&v21, v20);
      sub_10000E6E0(&v24, v20);

      goto LABEL_30;
    }

LABEL_29:
    v17 = sub_1000509B8();
    sub_10000E6E0(&v21, v20);
    sub_10000E6E0(&v24, v20);

    if ((v17 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (*&v23[8] != *&v26[8] && (sub_1000509B8() & 1) == 0)
    {
LABEL_37:
      sub_10000E718(&v24);
      sub_10000E718(&v21);
      return 0;
    }

    v18 = sub_10000D7C0(*&v23[24], *&v26[24]);
    sub_10000E718(&v24);
    sub_10000E718(&v21);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

BOOL sub_10000DEEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_10000E620(v14, v11);
        sub_10000E620(v15, v8);
        v17 = sub_100047500(v11, v8);
        sub_10000E684(v8);
        sub_10000E684(v11);
        if (!v17)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    return 0;
  }

  return v17;
}

uint64_t sub_10000E060(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_100050A78();

    sub_100050568();
    v17 = sub_100050AA8();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1000509B8() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10000E218(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_100050A78();
    sub_100050A88(v13);
    result = sub_100050AA8();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 8 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E388(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1000509B8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1000509B8() & 1) == 0)
  {
    return 0;
  }

  v6 = 0xE800000000000000;
  v7 = 0x74786554676E6F6CLL;
  if (*(a1 + 32) != 1)
  {
    v7 = 0x6F746F6870;
    v6 = 0xE500000000000000;
  }

  if (*(a1 + 32))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x78655474726F6873;
  }

  if (*(a1 + 32))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE900000000000074;
  }

  v10 = 0xE800000000000000;
  v11 = 0x74786554676E6F6CLL;
  if (*(a2 + 32) != 1)
  {
    v11 = 0x6F746F6870;
    v10 = 0xE500000000000000;
  }

  if (*(a2 + 32))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x78655474726F6873;
  }

  if (*(a2 + 32))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE900000000000074;
  }

  if (v8 == v12 && v9 == v13)
  {
  }

  else
  {
    v14 = sub_1000509B8();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1000509B8() & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 56);
  v16 = *(a2 + 56);

  return sub_10000D7C0(v15, v16);
}

uint64_t sub_10000E5D8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000E620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E684(uint64_t a1)
{
  v2 = type metadata accessor for Attachment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E748(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000E790(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000E7E0()
{
  result = qword_10006F750;
  if (!qword_10006F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F750);
  }

  return result;
}

unint64_t sub_10000E838()
{
  result = qword_10006F758;
  if (!qword_10006F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F758);
  }

  return result;
}

uint64_t sub_10000E88C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100010B38(&qword_10006F858);
  sub_10004FB58();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_10000E928@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858);
  sub_10004FB58();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_10000E9C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (sub_1000509B8() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100010B38(&qword_10006F858);
    sub_10004FB48();
  }
}

uint64_t sub_10000EB0C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100010B38(&qword_10006F858);
  sub_10004FB58();

  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_10000EBA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858);
  sub_10004FB58();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_10000EC40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (v6 = *(v2 + 40), (sub_1000509B8() & 1) != 0))
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100010B38(&qword_10006F858);
    sub_10004FB48();
  }
}

uint64_t sub_10000ED8C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100010B38(&qword_10006F858);
  sub_10004FB58();

  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_10000EE28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858);
  sub_10004FB58();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_10000EEC0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (v6 = *(v2 + 56), (sub_1000509B8() & 1) != 0))
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100010B38(&qword_10006F858);
    sub_10004FB48();
  }
}

uint64_t sub_10000F00C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100010B38(&qword_10006F858);
  sub_10004FB58();

  v2 = *(v0 + 64);
  v1 = *(v4 + 72);

  return v2;
}

uint64_t sub_10000F0A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858);
  sub_10004FB58();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_10000F140(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (v6 = *(v2 + 72), (sub_1000509B8() & 1) != 0))
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100010B38(&qword_10006F858);
    sub_10004FB48();
  }
}

uint64_t sub_10000F28C()
{
  v0 = sub_100050118();
  sub_100007390(v0, qword_10007B2B0);
  sub_1000071F4(v0, qword_10007B2B0);
  sub_100002814(&qword_10006F850, &qword_100056EF8);
  v1 = *(sub_1000500F8() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_100056D10;
  sub_1000500D8();
  sub_1000500D8();
  return sub_100050108();
}

uint64_t sub_10000F40C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100002814(&qword_10006F898, &qword_1000571C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000D634(a1, a1[3]);
  sub_1000111D8();
  sub_100050AC8();
  v16 = 0;
  sub_100050978();
  if (!v5)
  {
    v15 = 1;
    sub_100050978();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10000F5A0()
{
  if (*v0)
  {
    result = 0x74706D6F7270;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_10000F5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1000509B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000509B8();

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

uint64_t sub_10000F6C0(uint64_t a1)
{
  v2 = sub_1000111D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F6FC(uint64_t a1)
{
  v2 = sub_1000111D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000F77C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1000500B8();
  if (v2)
  {
    v5 = sub_1000500C8();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    sub_1000500B8();
    v7 = sub_1000500C8();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v8;
    a2[3] = v9;
  }

  return result;
}

uint64_t sub_10000F8E0()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 9);

  v5 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension11SummaryTool___observationRegistrar;
  v6 = sub_10004FB98();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummaryTool()
{
  result = qword_10006F790;
  if (!qword_10006F790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F9F0()
{
  result = sub_10004FB98();
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

uint64_t sub_10000FA90(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3[2] = *a2;
  v3[3] = v4;
  v5 = a2[3];
  v3[4] = a2[2];
  v3[5] = v5;
  v3[6] = *v2;

  return _swift_task_switch(sub_10000FB18, 0, 0);
}

uint64_t sub_10000FB18()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_10000EEC0(v0[2], v0[3]);
  sub_10000F140(v3, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10000FB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to Tooling.invoke(arguments:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000118D4;

  return Tooling.invoke(arguments:)(a1, a2, a3, a4);
}

uint64_t sub_10000FC5C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858);
  sub_10004FB58();

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_10000FCF8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858);
  sub_10004FB58();

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t sub_10000FD94(uint64_t a1)
{
  v2 = sub_100010B38(&qword_10006F860);

  return Tooling.argumentsSchema.getter(a1, v2);
}

uint64_t sub_10000FDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Tooling.invoke(arguments:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = sub_100010B38(&qword_10006F860);
  *v8 = v3;
  v8[1] = sub_100006CB4;

  return Tooling.invoke(arguments:)(a1, a2, a3, v9);
}

uint64_t sub_10000FEDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x74786554676E6F6CLL;
  if (v2 != 1)
  {
    v4 = 0x6F746F6870;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x78655474726F6873;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  v7 = 0xE800000000000000;
  v8 = 0x74786554676E6F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x6F746F6870;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x78655474726F6873;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000074;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000509B8();
  }

  return v11 & 1;
}

Swift::Int sub_10000FFD8()
{
  v1 = *v0;
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

uint64_t sub_10001007C()
{
  *v0;
  *v0;
  sub_100050568();
}

Swift::Int sub_10001010C()
{
  v1 = *v0;
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

uint64_t sub_1000101AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100010C7C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000101DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0xE800000000000000;
  v5 = 0x74786554676E6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6F746F6870;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x78655474726F6873;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000102FC()
{
  v0 = sub_100050118();
  sub_100007390(v0, qword_10007B2C8);
  sub_1000071F4(v0, qword_10007B2C8);
  sub_100002814(&qword_10006F850, &qword_100056EF8);
  v1 = *(sub_1000500F8() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_100056D20;
  sub_1000500E8();
  sub_1000500E8();
  sub_100010EB8();
  sub_1000500E8();
  return sub_100050108();
}

uint64_t sub_100010484(void *a1)
{
  v3 = v1;
  v5 = sub_100002814(&qword_10006F8C0, &qword_1000571D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_10000D634(a1, a1[3]);
  sub_1000115A0();
  sub_100050AC8();
  v11 = *v3;
  v12 = v3[1];
  v16[15] = 0;
  sub_100050978();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v16[14] = 1;
    sub_100050978();
    v16[13] = *(v3 + 32);
    v16[12] = 2;
    sub_100011648();
    sub_100050988();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100010664()
{
  v1 = 0x7972657571;
  if (*v0 != 1)
  {
    v1 = 0x6570795461746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1000106B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001122C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000106E8(uint64_t a1)
{
  v2 = sub_1000115A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010724(uint64_t a1)
{
  v2 = sub_1000115A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100010760@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100011340(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000107E4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_100050118();
  v6 = sub_1000071F4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

double sub_100010880@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100010CC8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000108C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010F0C();
  v5 = sub_100010F60();

  return static CaseIterable<>.schema.getter(a1, a2, v4, v5);
}

uint64_t sub_100010930()
{
  sub_100010F0C();
  sub_100010F60();
  return sub_100050858();
}

unint64_t sub_1000109D4()
{
  result = qword_10006F840;
  if (!qword_10006F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F840);
  }

  return result;
}

unint64_t sub_100010A2C()
{
  result = qword_10006F848;
  if (!qword_10006F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F848);
  }

  return result;
}

uint64_t sub_100010A9C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 72);
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

uint64_t sub_100010AF8()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 56);
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_100010B38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SummaryTool();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010B98()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 40);
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_100010BF4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_100010C3C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_100010C7C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006A148;
  v6._object = a2;
  v4 = sub_100050938(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100010CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000500B8();
  if (v2)
  {
    v5 = sub_1000500C8();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    sub_1000500B8();
    sub_100010EB8();
    sub_1000500B8();
    v7 = sub_1000500C8();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = v8;
  }

  return result;
}

unint64_t sub_100010EB8()
{
  result = qword_10006F868;
  if (!qword_10006F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F868);
  }

  return result;
}

unint64_t sub_100010F0C()
{
  result = qword_10006F870;
  if (!qword_10006F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F870);
  }

  return result;
}

unint64_t sub_100010F60()
{
  result = qword_10006F878;
  if (!qword_10006F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F878);
  }

  return result;
}

__n128 sub_100010FB4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100010FC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100011008(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100011058(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001106C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1000110B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001111C()
{
  result = qword_10006F880;
  if (!qword_10006F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F880);
  }

  return result;
}

unint64_t sub_100011174()
{
  result = qword_10006F888;
  if (!qword_10006F888)
  {
    sub_1000028C0(&qword_10006F890, &qword_100057180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F888);
  }

  return result;
}

unint64_t sub_1000111D8()
{
  result = qword_10006F8A0;
  if (!qword_10006F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8A0);
  }

  return result;
}

uint64_t sub_10001122C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000509B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_1000509B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000509B8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100011340@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002814(&qword_10006F8A8, &qword_1000571C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_10000D634(a1, a1[3]);
  sub_1000115A0();
  sub_100050AB8();
  if (v2)
  {
    return sub_10000CC70(a1);
  }

  v25 = 0;
  v11 = sub_100050948();
  v13 = v12;
  v21 = v11;
  v24 = 1;
  v19 = sub_100050948();
  v20 = v14;
  v22 = 2;
  sub_1000115F4();
  sub_100050958();
  (*(v6 + 8))(v9, v5);
  v15 = v23;
  result = sub_10000CC70(a1);
  *a2 = v21;
  *(a2 + 8) = v13;
  v17 = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15;
  return result;
}

unint64_t sub_1000115A0()
{
  result = qword_10006F8B0;
  if (!qword_10006F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8B0);
  }

  return result;
}

unint64_t sub_1000115F4()
{
  result = qword_10006F8B8;
  if (!qword_10006F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8B8);
  }

  return result;
}

unint64_t sub_100011648()
{
  result = qword_10006F8C8;
  if (!qword_10006F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8C8);
  }

  return result;
}

unint64_t sub_1000116C8()
{
  result = qword_10006F8D0;
  if (!qword_10006F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8D0);
  }

  return result;
}

unint64_t sub_100011720()
{
  result = qword_10006F8D8;
  if (!qword_10006F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8D8);
  }

  return result;
}

unint64_t sub_100011778()
{
  result = qword_10006F8E0;
  if (!qword_10006F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8E0);
  }

  return result;
}

unint64_t sub_1000117D0()
{
  result = qword_10006F8E8;
  if (!qword_10006F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8E8);
  }

  return result;
}

unint64_t sub_100011828()
{
  result = qword_10006F8F0;
  if (!qword_10006F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8F0);
  }

  return result;
}

unint64_t sub_100011880()
{
  result = qword_10006F8F8;
  if (!qword_10006F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8F8);
  }

  return result;
}

void *sub_1000118E8()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_100011960(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
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
    sub_1000131F8();
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100013C90();
  v5 = v4;
  v6 = a1;
  v7 = sub_1000507A8();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_100011AB0()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  return *(v0 + 64);
}

uint64_t sub_100011B20(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
  }

  return result;
}

uint64_t sub_100011C00()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1000131F8();
  sub_10004FB58();

  v1 = *(v0 + 72);
  sub_100013C24(v1, *(v3 + 80), *(v3 + 88), *(v3 + 96));
  return v1;
}

uint64_t sub_100011C9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 72);
  v10 = *(v4 + 80);
  v11 = *(v4 + 88);
  v12 = *(v4 + 96);
  if (sub_1000132AC(v9, v10, v11, v12, a1, a2, a3, a4))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
    sub_100013054(a1, a2, a3, a4);
  }

  else
  {
    *(v4 + 72) = a1;
    *(v4 + 80) = a2;
    *(v4 + 88) = a3;
    *(v4 + 96) = a4;

    return sub_100013054(v9, v10, v11, v12);
  }
}

uint64_t sub_100011E1C()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  v1 = *(v0 + 104);
}

uint64_t sub_100011E90(uint64_t a1)
{
  if (!*(v1 + 104))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 104);

  v5 = sub_10000D9F0(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + 104);
LABEL_7:
  *(v1 + 104) = a1;
}

uint64_t sub_100011FC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  *(a1 + 104) = a2;
}

uint64_t sub_100012004()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  v1 = *(v0 + 120);
  swift_errorRetain();
  return v1;
}

uint64_t sub_100012080@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  *a2 = *(v3 + 120);
  return swift_errorRetain();
}

uint64_t sub_1000120FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB48();
}

uint64_t sub_100012198(uint64_t a1)
{
  if (a1)
  {
    swift_getErrorValue();
    v2 = sub_10001F260(v9, v10);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
  }

  else
  {
    v4 = swift_getKeyPath();
    __chkstk_darwin(v4);
    sub_1000131F8();
    sub_10004FB48();
  }

  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  if (!*(v1 + 120))
  {
  }

  swift_getKeyPath();
  sub_10004FB58();

  if (*(v1 + 128) & 1) != 0 || (sub_100012E5C())
  {
  }

  swift_getKeyPath();
  sub_10004FB58();

  v6 = *(v1 + 120);
  v7 = *(*v1 + 848);
  swift_errorRetain();
  v7(0, v6, 0, 0);

  if (*(v1 + 128) == 1)
  {

    *(v1 + 128) = 1;
  }

  else
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    sub_10004FB48();
  }

  return result;
}

uint64_t sub_1000124F8()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  return *(v0 + 128);
}

uint64_t sub_100012568@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_1000125E0(uint64_t result)
{
  if (*(v1 + 128) == (result & 1))
  {
    *(v1 + 128) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
  }

  return result;
}

void sub_1000126C0(char a1)
{
  v3 = sub_10004F9A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v1 + 688))(v6) & 1) != 0 && (sub_100012E5C() & 1) == 0 && (a1)
  {
    swift_getKeyPath();
    v13[1] = v1;
    sub_1000131F8();
    sub_10004FB58();

    if ((v1[144] & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        if ([Strong respondsToSelector:"showContentWarningWithTitle:message:"])
        {
          if (qword_10006E9D0 != -1)
          {
            swift_once();
          }

          v11 = sub_1000071F4(v3, qword_10007B438);
          (*(v4 + 16))(v8, v11, v3);
          sub_100050538();
          v12 = sub_1000504E8();

          [v10 showContentWarningWithTitle:0 message:v12];
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_1000128D0()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  return *(v0 + 136);
}

void sub_100012940(uint64_t a1)
{
  if (*(v1 + 136) == a1)
  {
    sub_1000126C0(a1);
    *(v1 + 136) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
  }
}

uint64_t sub_100012A64(uint64_t result)
{
  if ((result & 1) == 0)
  {
    v2 = v1;
    swift_getKeyPath();
    sub_1000131F8();
    sub_10004FB58();

    if (*(v1 + 144) == 1)
    {
      (*(*v1 + 840))(result);
      swift_getKeyPath();
      sub_10004FB58();

      if (*(v1 + 120))
      {
        swift_getKeyPath();
        sub_10004FB58();

        if ((*(v1 + 128) & 1) == 0)
        {
          result = swift_unknownObjectWeakLoadStrong();
          if (result)
          {
            v3 = result;
            swift_getKeyPath();
            sub_10004FB58();

            if (*(v1 + 120))
            {
              v4 = *(v1 + 120);
              swift_errorRetain();
              v5 = sub_10004F958();
            }

            else
            {
              v5 = 0;
            }

            [v3 endWritingToolsWithError:v5];

            result = swift_unknownObjectRelease();
          }

          if (*(v2 + 128) == 1)
          {
            *(v2 + 128) = 1;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            sub_10004FB48();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100012CB4()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  return *(v0 + 144);
}

uint64_t sub_100012D24(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 144);
  if (v3 == v2)
  {
    *(v1 + 144) = v2;

    return sub_100012A64(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
  }
}

uint64_t sub_100012E28(uint64_t a1, char a2)
{
  v3 = *(a1 + 144);
  *(a1 + 144) = a2;
  return sub_100012A64(v3);
}

uint64_t sub_100012E5C()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  if (v0[128] & 1) == 0 && (swift_getKeyPath(), sub_10004FB58(), , (v0[136]))
  {
    swift_getKeyPath();
    sub_10004FB58();

    v1 = v0[144] ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t ToolModel.deinit()
{
  sub_10000A200(v0 + 16);

  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  sub_100013054(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  v3 = *(v0 + 104);

  v4 = *(v0 + 120);

  v5 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension9ToolModel___observationRegistrar;
  v6 = sub_10004FB98();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_100013054(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_10000A1CC(result, a2, a3, a4);
  }

  return result;
}

uint64_t ToolModel.__deallocating_deinit()
{
  ToolModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ToolModel()
{
  result = qword_10006F930;
  if (!qword_10006F930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013114()
{
  result = sub_10004FB98();
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

unint64_t sub_1000131F8()
{
  result = qword_10006FCF0;
  if (!qword_10006FCF0)
  {
    type metadata accessor for ToolModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FCF0);
  }

  return result;
}

BOOL sub_1000132AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 == -1)
  {
    return ~a8 != 0;
  }

  if (a8 == -1)
  {
    return 1;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a2 == 1)
        {
          return a6 != 1;
        }

        if (a6 != 1)
        {
          if (!a2)
          {
            return a6 || ((a3 ^ a7) & 1) != 0;
          }

          if (a6)
          {
            if (a1 == a5 && a2 == a6)
            {
              if ((a3 & 1) != (a7 & 1))
              {
                return 1;
              }
            }

            else
            {
              v9 = a3;
              v10 = a7;
              if (sub_1000509B8() & 1) == 0 || ((v9 ^ v10))
              {
                return 1;
              }
            }

            return 0;
          }
        }
      }
    }

    else
    {
      if (!(a3 | a2 | a1))
      {
        return a8 != 2 || a7 | a6 | a5;
      }

      if (a1 != 1 || a3 | a2)
      {
        if (a8 != 2 || a5 != 2)
        {
          return 1;
        }
      }

      else if (a8 != 2 || a5 != 1)
      {
        return 1;
      }

      if (!(a7 | a6))
      {
        return 0;
      }
    }
  }

  else
  {
    if (a8 || a5 != a1)
    {
      return 1;
    }

    if (a3)
    {
      return !a7 || (a2 != a6 || a3 != a7) && (sub_1000509B8() & 1) == 0;
    }

    if (!a7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100013450()
{
  v50 = sub_10004FCE8();
  v55 = *(v50 - 8);
  v0 = *(v55 + 64);
  __chkstk_darwin(v50);
  v49 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10004FD08();
  v47 = *(v48 - 8);
  v2 = *(v47 + 64);
  __chkstk_darwin(v48);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10004FD88();
  v52 = *(v54 - 8);
  v4 = *(v52 + 64);
  __chkstk_darwin(v54);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10004FD68();
  v7 = *(v53 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v53);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10004FDD8();
  v11 = *(v51 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v51);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004FD48();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  (*(v52 + 104))(v6, enum case for GenerativeModelsAvailability.LanguageOption.any(_:), v54);
  v23 = v16;
  sub_10004FD58();
  sub_10004FDB8();
  (*(v7 + 8))(v10, v53);
  sub_10004FD78();
  (*(v11 + 8))(v14, v51);
  (*(v16 + 16))(v20, v22, v15);
  if ((*(v16 + 88))(v20, v15) != enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    v37 = *(v16 + 8);
    v37(v22, v15);
    return (v37)(v20, v15);
  }

  v53 = v22;
  v54 = v15;
  (*(v16 + 96))(v20, v15);
  v24 = v46;
  v25 = v47;
  v26 = v48;
  (*(v47 + 32))(v46, v20, v48);
  v27 = sub_10004FCF8();
  v28 = v55;
  v30 = v49;
  v29 = v50;
  v45 = *(v55 + 104);
  v45(v49, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.policyLimited(_:), v50);
  v52 = v27;
  LOBYTE(v27) = sub_100026E60(v30, v27);
  v31 = *(v28 + 8);
  v55 = v28 + 8;
  v51 = v31;
  v31(v30, v29);
  v32 = v25;
  v33 = v24;
  if (v27)
  {
    v34 = v26;

    v35 = 2;
    v36 = v53;
LABEL_7:
    v42 = objc_allocWithZone(NSError);
    v43 = sub_1000504E8();
    [v42 initWithDomain:v43 code:v35 userInfo:0];

    swift_willThrow();
    (*(v32 + 8))(v33, v34);
    return (*(v23 + 8))(v36, v54);
  }

  v40 = v49;
  v39 = v50;
  v45(v49, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.regionalSafetyAssetPendingUpdate(_:), v50);
  v41 = sub_100026E60(v40, v52);

  v51(v40, v39);
  v36 = v53;
  if (v41)
  {
    v35 = 3;
    v34 = v48;
    goto LABEL_7;
  }

  (*(v32 + 8))(v33, v48);
  return (*(v23 + 8))(v36, v54);
}

uint64_t sub_100013AB0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 144);
  *(v1 + 144) = *(v0 + 24);
  return sub_100012A64(v2);
}

void sub_100013AEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1000126C0(v2);
  *(v1 + 136) = v2;
}

uint64_t sub_100013B2C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 120);
  *(v2 + 120) = v1;
  swift_errorRetain();
}

uint64_t sub_100013B70()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 104);
  *(v1 + 104) = *(v0 + 24);
}

uint64_t sub_100013BB4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v8 = *(v0 + 48);
  *(v2 + 72) = v1;
  *(v2 + 80) = v3;
  *(v2 + 88) = v4;
  v9 = *(v2 + 96);
  *(v2 + 96) = v8;
  sub_100013C24(v1, v3, v4, v8);
  return sub_100013054(v5, v6, v7, v9);
}

uint64_t sub_100013C24(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_10000A594(result, a2, a3, a4);
  }

  return result;
}

void sub_100013C58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

unint64_t sub_100013C90()
{
  result = qword_10006FCF8;
  if (!qword_10006FCF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006FCF8);
  }

  return result;
}

uint64_t sub_100013D1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100003724();

  *a1 = v2;
  return result;
}

unint64_t sub_100013D60()
{
  result = qword_10006FD00;
  if (!qword_10006FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FD00);
  }

  return result;
}

unint64_t sub_100013DB8()
{
  result = qword_10006FD08;
  if (!qword_10006FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FD08);
  }

  return result;
}

unint64_t sub_100013E10()
{
  result = qword_10006FD10;
  if (!qword_10006FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FD10);
  }

  return result;
}

unint64_t sub_100013E68()
{
  result = qword_10006FD18;
  if (!qword_10006FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FD18);
  }

  return result;
}

uint64_t sub_100013EBC(uint64_t a1)
{
  v2 = sub_10001400C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100013F64();
  sub_10004FF88();
  return 0;
}

unint64_t sub_100013F64()
{
  result = qword_10006FD20;
  if (!qword_10006FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FD20);
  }

  return result;
}

unint64_t sub_10001400C()
{
  result = qword_10006FD28;
  if (!qword_10006FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FD28);
  }

  return result;
}

uint64_t sub_100014070()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 88);

  v5 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension19SmartReplyAnalytics___observationRegistrar;
  v6 = sub_10004FB98();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SmartReplyAnalytics()
{
  result = qword_10006FD60;
  if (!qword_10006FD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014190()
{
  result = sub_10004FB98();
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

uint64_t sub_100014248(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v4 = sub_100002814(&qword_10006FFA8, &qword_1000579A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v28 = &v27 - v7;
  v9 = sub_100002814(&qword_10006FFB0, &qword_1000579A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100002814(&qword_10006F5F8, &qword_1000579B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_100050678();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a3, v9);
  v19 = v8;
  v20 = v4;
  (*(v5 + 16))(v19, v29, v4);
  v21 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v22 = (v11 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v30;
  *(v23 + 4) = v30;
  (*(v10 + 32))(&v23[v21], v13, v9);
  (*(v5 + 32))(&v23[v22], v28, v20);
  v25 = v24;
  sub_10002684C(0, 0, v17, &unk_1000579C0, v23);
}

uint64_t sub_10001451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[40] = a4;
  v7 = sub_100002814(&qword_10006FFB8, &qword_1000579C8);
  v6[43] = v7;
  v8 = *(v7 - 8);
  v6[44] = v8;
  v9 = *(v8 + 64) + 15;
  v6[45] = swift_task_alloc();
  v10 = sub_100002814(&qword_10006FFC0, &qword_1000579D0);
  v6[46] = v10;
  v11 = *(v10 - 8);
  v6[47] = v11;
  v12 = *(v11 + 64) + 15;
  v6[48] = swift_task_alloc();

  return _swift_task_switch(sub_100014654, 0, 0);
}

uint64_t sub_100014654()
{
  v1 = v0[48];
  v3 = v0[40];
  v2 = v0[41];
  v0[49] = [objc_allocWithZone(NSMutableAttributedString) init];
  v4 = [v3 range];
  v0[34] = v4;
  v0[35] = v5;
  v0[50] = v4;
  v6 = sub_100004808(&_swiftEmptyArrayStorage);
  sub_100002814(&qword_10006FFB0, &qword_1000579A8);
  sub_1000506D8();
  v7 = TCTextCompositionAssistantOptionKeyUserFeedbackInputString;
  v0[51] = TCTextCompositionAssistantOptionKeyContentWarning;
  v0[52] = v7;
  v0[57] = 0;
  v0[58] = 0xE000000000000000;
  v0[55] = 0;
  v0[56] = 0xE000000000000000;
  v0[53] = 0;
  v0[54] = v6;
  v8 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v9 = swift_task_alloc();
  v0[59] = v9;
  *v9 = v0;
  v9[1] = sub_10001479C;
  v10 = v0[48];
  v11 = v0[46];

  return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 20, 0, 0, v11, v0 + 36);
}

uint64_t sub_10001479C()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v9 = *v1;

  if (v0)
  {
    v4 = v2[58];
    v5 = v2[56];
    v6 = v2[54];

    v7 = sub_100014FF4;
  }

  else
  {
    v7 = sub_1000148D4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000148D4()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 464);
    v6 = *(v0 + 448);
    v7 = *(v0 + 432);
    v8 = *(v0 + 408);

    v9 = sub_100050518();
    v11 = v10;
    v110 = v4;
    if (*(v4 + 16))
    {
      v12 = v9;
      v13 = v1;

      v14 = sub_10004A138(v12, v11);
      v16 = v15;

      if (v16)
      {
        sub_100015440(*(v4 + 56) + 32 * v14, v0 + 192);
        if (swift_dynamicCast())
        {
          v17 = *(v0 + 312);
          if (v17 == 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = 2 * (v17 == 2);
          }

          v107 = v18;
LABEL_15:
          v47 = *(v0 + 416);
          v109 = sub_1000187F0(v4);
          v100 = v48;
          v49 = sub_100050518();
          v103 = v1;
          if (*(v4 + 16))
          {
            v51 = sub_10004A138(v49, v50);
            v53 = v52;

            if (v53)
            {
              sub_100015440(*(v4 + 56) + 32 * v51, v0 + 224);
              if (swift_dynamicCast())
              {
                v54 = *(v0 + 264);
                v99 = *(v0 + 256);
                goto LABEL_21;
              }
            }
          }

          else
          {
          }

          v99 = 0;
          v54 = 0xE000000000000000;
LABEL_21:
          v98 = v54;
          range = *(v0 + 424);
          v106 = *(v0 + 400);
          v55 = *(v0 + 272);
          v56 = *(v0 + 320);
          sub_100002814(&qword_10006FFC8, qword_1000579D8);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_100057990;
          v112.location = v3;
          v101 = v2;
          v112.length = v2;
          v58 = NSStringFromRange(v112);
          v59 = v3;
          v60 = sub_100050518();
          v62 = v61;

          *(v57 + 56) = &type metadata for String;
          v63 = sub_1000153A0();
          *(v57 + 64) = v63;
          *(v57 + 32) = v60;
          *(v57 + 40) = v62;
          v113.location = [v56 range];
          v64 = NSStringFromRange(v113);
          v65 = sub_100050518();
          v67 = v66;

          *(v57 + 96) = &type metadata for String;
          *(v57 + 104) = v63;
          *(v57 + 72) = v65;
          *(v57 + 80) = v67;
          v114.location = v55;
          v114.length = range;
          v68 = NSStringFromRange(v114);
          v69 = sub_100050518();
          v71 = v70;

          *(v57 + 136) = &type metadata for String;
          *(v57 + 144) = v63;
          *(v57 + 112) = v69;
          *(v57 + 120) = v71;
          *(v57 + 176) = &type metadata for Int;
          *(v57 + 184) = &protocol witness table for Int;
          *(v57 + 152) = v107;
          sub_1000153F4();
          v72 = sub_1000507D8();
          sub_100050758();
          sub_100050158();

          v73 = v106 + range;
          if ((v106 + range) < v59)
          {
            v74 = v59 - v73;
            if (__OFSUB__(v59, v73))
            {
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v75 = *(v0 + 424);
            v76 = *(v0 + 392);
            v77 = [*(v0 + 320) attributedText];
            v78 = [v77 attributedSubstringFromRange:{v73, v59 - v73}];

            [v76 appendAttributedString:v78];
            v28 = __OFADD__(v75, v74);
            v79 = v75 + v74;
            if (!v28)
            {
LABEL_27:
              v23 = [*(v0 + 392) appendAttributedString:v103];
              v80 = v79 + v101;
              if (!__OFADD__(v79, v101))
              {
                v82 = *(v0 + 392);
                v81 = *(v0 + 400);
                v84 = *(v0 + 352);
                v83 = *(v0 + 360);
                rangea = *(v0 + 344);
                v102 = *(v0 + 336);
                *(v0 + 88) = v82;
                *(v0 + 96) = v81;
                *(v0 + 104) = v80;
                *(v0 + 112) = v107;
                *(v0 + 120) = v109;
                *(v0 + 128) = v100;
                *(v0 + 136) = v99;
                *(v0 + 144) = v98;
                *(v0 + 152) = v110;
                v108 = v80;

                v85 = v82;

                sub_100002814(&qword_10006FFA8, &qword_1000579A0);
                sub_1000506B8();

                (*(v84 + 8))(v83, rangea);
                *(v0 + 456) = v109;
                *(v0 + 464) = v100;
                *(v0 + 440) = v99;
                *(v0 + 448) = v98;
                *(v0 + 424) = v108;
                *(v0 + 432) = v110;
                v86 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
                v87 = swift_task_alloc();
                *(v0 + 472) = v87;
                *v87 = v0;
                v87[1] = sub_10001479C;
                v88 = *(v0 + 384);
                v26 = *(v0 + 368);
                v27 = v0 + 288;
                v23 = (v0 + 160);
                v24 = 0;
                v25 = 0;

                return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v23, v24, v25, v26, v27);
              }

              __break(1u);
              goto LABEL_36;
            }

            __break(1u);
          }

          v79 = *(v0 + 424);
          goto LABEL_27;
        }
      }
    }

    else
    {
      v46 = v1;
    }

    v107 = 0;
    goto LABEL_15;
  }

  v19 = *(v0 + 424);
  v20 = *(v0 + 320);
  (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
  [v20 range];
  if (v19 >= v21)
  {
    v89 = *(v0 + 464);
    v90 = *(v0 + 448);
    v91 = *(v0 + 432);
  }

  else
  {
    v22 = *(v0 + 424);
    v23 = [*(v0 + 320) range];
    v28 = __OFSUB__(v24, v22);
    v29 = v24 - v22;
    if (v28)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v30 = *(v0 + 424);
    v31 = *(v0 + 392);
    v32 = *(v0 + 400);
    v33 = [*(v0 + 320) attributedText];
    v34 = [v33 attributedSubstringFromRange:{v32 + v30, v29}];

    [v31 appendAttributedString:v34];
    v35 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
LABEL_38:
      __break(1u);
      return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v23, v24, v25, v26, v27);
    }

    v36 = *(v0 + 456);
    v37 = *(v0 + 440);
    v38 = *(v0 + 432);
    v40 = *(v0 + 392);
    v39 = *(v0 + 400);
    v42 = *(v0 + 352);
    v41 = *(v0 + 360);
    v43 = *(v0 + 336);
    v44 = *(v0 + 344);
    *(v0 + 16) = v40;
    *(v0 + 24) = v39;
    *(v0 + 32) = v35;
    *(v0 + 40) = 0;
    *(v0 + 48) = v36;
    *(v0 + 64) = v37;
    *(v0 + 80) = v38;
    v45 = v40;
    sub_100002814(&qword_10006FFA8, &qword_1000579A0);
    sub_1000506B8();
    (*(v42 + 8))(v41, v44);
  }

  v92 = *(v0 + 392);
  v93 = *(v0 + 336);
  *(v0 + 304) = 0;
  sub_100002814(&qword_10006FFA8, &qword_1000579A0);
  sub_1000506C8();

  v94 = *(v0 + 384);
  v95 = *(v0 + 360);

  v96 = *(v0 + 8);

  return v96();
}

uint64_t sub_100014FF4()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v4 = *(v0 + 336);

  (*(v3 + 8))(v1, v2);
  *(v0 + 296) = *(v0 + 288);
  sub_100002814(&qword_10006FFA8, &qword_1000579A0);
  sub_1000506C8();
  v5 = *(v0 + 384);
  v6 = *(v0 + 360);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000150B8()
{
  v1 = sub_100002814(&qword_10006FFB0, &qword_1000579A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_100002814(&qword_10006FFA8, &qword_1000579A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100015228(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100002814(&qword_10006FFB0, &qword_1000579A8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100002814(&qword_10006FFA8, &qword_1000579A0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100006CB4;

  return sub_10001451C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_1000153A0()
{
  result = qword_10006FFD0;
  if (!qword_10006FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FFD0);
  }

  return result;
}

unint64_t sub_1000153F4()
{
  result = qword_10006FFD8;
  if (!qword_10006FFD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006FFD8);
  }

  return result;
}

uint64_t sub_100015440(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

NSString sub_10001549C()
{
  result = sub_1000504E8();
  qword_10007B2E0 = result;
  return result;
}

NSString sub_1000154D4()
{
  result = sub_1000504E8();
  qword_10007B2E8 = result;
  return result;
}

NSString sub_10001550C()
{
  result = sub_1000504E8();
  qword_10007B2F0 = result;
  return result;
}

NSString sub_100015548()
{
  result = sub_1000504E8();
  qword_10007B2F8 = result;
  return result;
}

NSString sub_10001557C()
{
  result = sub_1000504E8();
  qword_10007B300 = result;
  return result;
}

NSString sub_1000155BC()
{
  result = sub_1000504E8();
  qword_10007B308 = result;
  return result;
}

NSString sub_1000155EC()
{
  result = sub_1000504E8();
  qword_10007B310 = result;
  return result;
}

NSString sub_100015628()
{
  result = sub_1000504E8();
  qword_10007B318 = result;
  return result;
}

NSString sub_100015660()
{
  result = sub_1000504E8();
  qword_10007B320 = result;
  return result;
}

NSString sub_100015698()
{
  result = sub_1000504E8();
  qword_10007B328 = result;
  return result;
}

NSString sub_1000156D0()
{
  result = sub_1000504E8();
  qword_10007B330 = result;
  return result;
}

NSString sub_100015710()
{
  result = sub_1000504E8();
  qword_10007B338 = result;
  return result;
}

NSString sub_100015740()
{
  result = sub_1000504E8();
  qword_10007B340 = result;
  return result;
}

NSString sub_100015778()
{
  result = sub_1000504E8();
  qword_10007B348 = result;
  return result;
}

NSString sub_1000157B0()
{
  result = sub_1000504E8();
  qword_10007B350 = result;
  return result;
}

NSString sub_1000157E8()
{
  result = sub_1000504E8();
  qword_10007B358 = result;
  return result;
}

NSString sub_100015820()
{
  result = sub_1000504E8();
  qword_10007B360 = result;
  return result;
}

NSString sub_100015858()
{
  result = sub_1000504E8();
  qword_10007B368 = result;
  return result;
}

NSString sub_100015888()
{
  result = sub_1000504E8();
  qword_10007B370 = result;
  return result;
}

NSString sub_1000158C0()
{
  result = sub_1000504E8();
  qword_10007B378 = result;
  return result;
}

NSString sub_1000158F4()
{
  result = sub_1000504E8();
  qword_10007B380 = result;
  return result;
}

NSString sub_100015930()
{
  result = sub_1000504E8();
  qword_10007B388 = result;
  return result;
}

NSString sub_100015964()
{
  result = sub_1000504E8();
  qword_10007B390 = result;
  return result;
}

NSString sub_10001599C()
{
  result = sub_1000504E8();
  qword_10007B398 = result;
  return result;
}

NSString sub_1000159D4()
{
  result = sub_1000504E8();
  qword_10007B3A0 = result;
  return result;
}

NSString sub_100015A0C()
{
  result = sub_1000504E8();
  qword_10007B3A8 = result;
  return result;
}

NSString sub_100015A44()
{
  result = sub_1000504E8();
  qword_10007B3B0 = result;
  return result;
}

NSString sub_100015A7C()
{
  result = sub_1000504E8();
  qword_10007B3B8 = result;
  return result;
}

NSString sub_100015AB4()
{
  result = sub_1000504E8();
  qword_10007B3C0 = result;
  return result;
}

NSString sub_100015AEC()
{
  result = sub_1000504E8();
  qword_10007B3C8 = result;
  return result;
}

NSString sub_100015B24()
{
  result = sub_1000504E8();
  qword_10007B3D0 = result;
  return result;
}

NSString sub_100015B5C()
{
  result = sub_1000504E8();
  qword_10007B3D8 = result;
  return result;
}

NSString sub_100015B94()
{
  result = sub_1000504E8();
  qword_10007B3E0 = result;
  return result;
}

NSString sub_100015BCC()
{
  result = sub_1000504E8();
  qword_10007B3E8 = result;
  return result;
}

NSString sub_100015C04()
{
  result = sub_1000504E8();
  qword_10007B3F0 = result;
  return result;
}

NSString sub_100015C3C()
{
  result = sub_1000504E8();
  qword_10007B3F8 = result;
  return result;
}

NSString sub_100015C74()
{
  result = sub_1000504E8();
  qword_10007B400 = result;
  return result;
}

NSString sub_100015CAC()
{
  result = sub_1000504E8();
  qword_10007B408 = result;
  return result;
}

NSString sub_100015CE8()
{
  result = sub_1000504E8();
  qword_10007B410 = result;
  return result;
}

void sub_100015D1C(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, unint64_t a10)
{
  v11 = v10;
  v68 = a6;
  v65 = a3;
  v66 = a5;
  LODWORD(v15) = a2;
  v17 = sub_100002814(&qword_100070160, &qword_100057D20);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v60 - v19;
  if (qword_10006EA10 != -1)
  {
    swift_once();
  }

  v67 = a9;
  v21 = sub_100050188();
  sub_1000071F4(v21, qword_10007B528);

  v22 = sub_100050168();
  v23 = sub_100050718();

  v24 = os_log_type_enabled(v22, v23);
  v64 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v62 = v11;
    v26 = v25;
    v27 = swift_slowAlloc();
    v63 = v15;
    v15 = v27;
    v69 = v27;
    *v26 = 134284547;
    if (v63)
    {
      v28 = 0;
    }

    else
    {
      v28 = a1;
    }

    *(v26 + 4) = v28;
    *(v26 + 12) = 2049;
    v29 = v65;
    if (a4)
    {
      v29 = 0;
    }

    *(v26 + 14) = v29;
    *(v26 + 22) = 2049;
    v30 = v66;
    if (v68)
    {
      v30 = 0;
    }

    *(v26 + 24) = v30;
    *(v26 + 32) = 2049;
    if (a8)
    {
      v31 = 0;
    }

    else
    {
      v31 = a7;
    }

    *(v26 + 34) = v31;
    *(v26 + 42) = 2085;
    v61 = a8;
    if (a10)
    {
      v32 = v67;
    }

    else
    {
      v32 = 7104878;
    }

    v33 = a4;
    if (a10)
    {
      v34 = a10;
    }

    else
    {
      v34 = 0xE300000000000000;
    }

    v35 = sub_100046C30(v32, v34, &v69);
    a4 = v33;

    *(v26 + 44) = v35;
    LOBYTE(a8) = v61;
    _os_log_impl(&_mh_execute_header, v22, v23, "reportAttachmentsModified: numSelectedPhotos: %{private}ld numSelectedFiles: %{private}ld numRemovedPhotos: %{private}ld numRemovedFiles: %{private}ld slotID: %{sensitive}s", v26, 0x34u);
    sub_10000CC70(v15);
    LOBYTE(v15) = v63;

    v11 = v62;
  }

  v36 = sub_100004938(&_swiftEmptyArrayStorage);
  if (v15)
  {
    if (a4)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v37 = a4;
    if (qword_10006E8C8 != -1)
    {
      swift_once();
    }

    v38 = qword_10007B318;
    isa = sub_100050708().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v36;
    sub_10004C390(isa, v38, isUniquelyReferenced_nonNull_native);

    v36 = v69;
    if (v37)
    {
LABEL_23:
      if (v68)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }
  }

  if (qword_10006E8D0 != -1)
  {
    swift_once();
  }

  v41 = qword_10007B320;
  v42 = sub_100050708().super.super.isa;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v36;
  sub_10004C390(v42, v41, v43);

  v36 = v69;
  if (v68)
  {
LABEL_24:
    if (a8)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_33:
  if (qword_10006E8D8 != -1)
  {
    swift_once();
  }

  v44 = qword_10007B328;
  v45 = sub_100050708().super.super.isa;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v36;
  sub_10004C390(v45, v44, v46);

  v36 = v69;
  if (a8)
  {
LABEL_25:
    if (!a10)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

LABEL_36:
  if (qword_10006E8E0 != -1)
  {
    swift_once();
  }

  v47 = qword_10007B330;
  v48 = sub_100050708().super.super.isa;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v36;
  sub_10004C390(v48, v47, v49);

  v36 = v69;
  if (a10)
  {
LABEL_39:
    if (qword_10006E8E8 != -1)
    {
      swift_once();
    }

    v50 = qword_10007B338;
    v51 = sub_1000504E8();
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v36;
    sub_10004C390(v51, v50, v52);
  }

LABEL_42:
  if (qword_10006E890 != -1)
  {
    swift_once();
  }

  v53 = qword_10007B2E0;
  v54 = IAChannelWritingTools;
  sub_1000177F4(v11 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v20);
  v55 = sub_10004FAD8();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v20, 1, v55) == 1)
  {
    sub_10000CBA0(v20, &qword_100070160, &qword_100057D20);
    v57 = 0;
  }

  else
  {
    sub_10004FAA8();
    (*(v56 + 8))(v20, v55);
    v57 = sub_1000504E8();
  }

  v58 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
  sub_100017864();
  v59 = sub_100050408().super.isa;

  [v58 sendSignal:v53 toChannel:v54 withNullableUniqueStringID:v57 withPayload:v59];
}

void sub_1000163C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  v64 = a7;
  v65 = a8;
  v63 = a5;
  v16 = sub_100002814(&qword_100070160, &qword_100057D20);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v59 - v18;
  if (qword_10006EA10 != -1)
  {
    swift_once();
  }

  v20 = sub_100050188();
  sub_1000071F4(v20, qword_10007B528);
  sub_10000A594(a1, a2, a3, a4);
  v21 = sub_100050168();
  v22 = sub_100050718();
  sub_10000A1CC(a1, a2, a3, a4);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v62 = v19;
    v24 = v23;
    v59 = swift_slowAlloc();
    v60 = a6;
    v66 = v59;
    *v24 = 136380675;
    sub_10000ACE8();
    v61 = v10;
    v25 = sub_1000504E8();

    v26 = [v25 key];

    v27 = sub_100050518();
    v28 = a1;
    v29 = a2;
    v30 = a3;
    v31 = a4;
    v33 = v32;

    v10 = v61;
    v34 = sub_100046C30(v27, v33, &v66);
    a4 = v31;
    a3 = v30;
    a2 = v29;
    a1 = v28;

    *(v24 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v21, v22, "reportResultsRequested: mode: %{private}s", v24, 0xCu);
    sub_10000CC70(v59);
    a6 = v60;

    v19 = v62;
  }

  sub_100002814(&qword_100070168, &qword_100057A70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100057A10;
  v36 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 32) = IAPayloadKeyWritingToolsFeatureDetails;
  v37 = v36;
  v38 = sub_10001761C(a1, a2, a3, a4);
  *(inited + 40) = v38;
  v39 = v38;
  v40 = sub_100004938(inited);
  swift_setDeallocating();
  sub_10000CBA0(inited + 32, &qword_100070170, &qword_100057A78);
  if (a6)
  {
    if (qword_10006E8B8 != -1)
    {
      swift_once();
    }

    v41 = qword_10007B308;
    v42 = sub_1000504E8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v40;
    sub_10004C390(v42, v41, isUniquelyReferenced_nonNull_native);

    v40 = v66;
  }

  if (v65)
  {
    if (qword_10006E8C0 != -1)
    {
      swift_once();
    }

    v44 = qword_10007B310;
    v45 = sub_1000504E8();
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v40;
    sub_10004C390(v45, v44, v46);

    v40 = v66;
  }

  if (a9 != 2)
  {
    if (a9)
    {
      if (qword_10006E9B8 != -1)
      {
        swift_once();
      }

      v47 = &qword_10007B408;
    }

    else
    {
      if (qword_10006E9C0 != -1)
      {
        swift_once();
      }

      v47 = &qword_10007B410;
    }

    v48 = qword_10006E8B0;
    v49 = *v47;
    if (v48 != -1)
    {
      swift_once();
    }

    v50 = qword_10007B300;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v40;
    sub_10004C390(v49, v50, v51);
  }

  v52 = IASignalWritingToolsResultsRequested;
  v53 = IAChannelWritingTools;
  sub_1000177F4(v10 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v19);
  v54 = sub_10004FAD8();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v19, 1, v54) == 1)
  {
    sub_10000CBA0(v19, &qword_100070160, &qword_100057D20);
    v56 = 0;
  }

  else
  {
    sub_10004FAA8();
    (*(v55 + 8))(v19, v54);
    v56 = sub_1000504E8();
  }

  v57 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
  sub_100017864();
  isa = sub_100050408().super.isa;

  [v57 sendSignal:v52 toChannel:v53 withNullableUniqueStringID:v56 withPayload:isa];
}

void sub_100016A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v12 = sub_100002814(&qword_100070160, &qword_100057D20);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v48 - v14;
  if (qword_10006EA10 != -1)
  {
    swift_once();
  }

  v16 = sub_100050188();
  sub_1000071F4(v16, qword_10007B528);
  swift_errorRetain();
  sub_10000A594(a2, a3, a4, a5);
  v17 = sub_100050168();
  v18 = sub_100050718();

  sub_10000A1CC(a2, a3, a4, a5);
  v19 = os_log_type_enabled(v17, v18);
  v52 = a5;
  v51 = a1;
  if (v19)
  {
    v50 = v5;
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v23 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v23 = 136643075;
    if (a1)
    {
      swift_getErrorValue();
      v24 = sub_100050A28();
      v26 = v25;
    }

    else
    {
      v26 = 0xE400000000000000;
      v24 = 1701736270;
    }

    v27 = sub_100046C30(v24, v26, &v53);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2081;
    sub_10000ACE8();
    v28 = sub_1000504E8();

    v29 = [v28 key];

    v30 = sub_100050518();
    v32 = v31;

    v33 = sub_100046C30(v30, v32, &v53);

    *(v23 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v17, v18, "reportResultsFailed: error: %{sensitive}s mode: %{private}s", v23, 0x16u);
    swift_arrayDestroy();

    a4 = v22;
    a3 = v21;
    a2 = v20;

    v6 = v50;
  }

  else
  {
  }

  v34 = IASignalWritingToolsResultsFailed;
  v35 = IAChannelWritingTools;
  sub_1000177F4(v6 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v15);
  v36 = sub_10004FAD8();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v15, 1, v36) == 1)
  {
    sub_10000CBA0(v15, &qword_100070160, &qword_100057D20);
    v38 = 0;
  }

  else
  {
    sub_10004FAA8();
    (*(v37 + 8))(v15, v36);
    v38 = sub_1000504E8();
  }

  v39 = objc_opt_self();
  sub_100002814(&qword_100070168, &qword_100057A70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100056D10;
  v41 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 32) = IAPayloadKeyWritingToolsFeatureDetails;
  v42 = v41;
  v43 = sub_10001761C(a2, a3, a4, v52);
  v44 = IAPayloadKeyWritingToolsFailureReason;
  *(inited + 40) = v43;
  *(inited + 48) = v44;
  v45 = v43;
  v46 = v44;
  *(inited + 56) = sub_1000178BC(v51);
  sub_100004938(inited);
  swift_setDeallocating();
  sub_100002814(&qword_100070170, &qword_100057A78);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
  sub_100017864();
  isa = sub_100050408().super.isa;

  [v39 sendSignal:v34 toChannel:v35 withNullableUniqueStringID:v38 withPayload:isa];
}

void sub_100016F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v44[1] = a1;
  v44[2] = a2;
  v12 = sub_100002814(&qword_100070160, &qword_100057D20);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v44 - v14;
  if (qword_10006EA10 != -1)
  {
    swift_once();
  }

  v16 = sub_100050188();
  sub_1000071F4(v16, qword_10007B528);
  sub_10000A594(a3, a4, a5, a6);
  v17 = sub_100050168();
  v18 = sub_100050718();
  sub_10000A1CC(a3, a4, a5, a6);
  v19 = os_log_type_enabled(v17, v18);
  v46 = a6;
  v45 = a5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v44[0] = v7;
    v22 = v21;
    v47 = v21;
    *v20 = 136380675;
    sub_10000ACE8();
    v23 = sub_1000504E8();

    v24 = [v23 key];

    v25 = sub_100050518();
    v27 = v26;

    v28 = sub_100046C30(v25, v27, &v47);

    *(v20 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "reportHandoffRequested: mode: %{private}s", v20, 0xCu);
    sub_10000CC70(v22);
    v7 = v44[0];
  }

  if (qword_10006E898 != -1)
  {
    swift_once();
  }

  v29 = qword_10007B2E8;
  v30 = IAChannelWritingTools;
  sub_1000177F4(v7 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v15);
  v31 = sub_10004FAD8();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v15, 1, v31) == 1)
  {
    sub_10000CBA0(v15, &qword_100070160, &qword_100057D20);
    v33 = 0;
  }

  else
  {
    sub_10004FAA8();
    (*(v32 + 8))(v15, v31);
    v33 = sub_1000504E8();
  }

  v34 = objc_opt_self();
  sub_100002814(&qword_100070168, &qword_100057A70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100056D10;
  if (qword_10006E8A0 != -1)
  {
    swift_once();
  }

  v36 = qword_10007B2F0;
  *(inited + 32) = qword_10007B2F0;
  v37 = v36;
  v38 = sub_1000504E8();
  v39 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 40) = v38;
  *(inited + 48) = v39;
  v40 = v39;
  v41 = sub_10001761C(a3, a4, v45, v46);
  *(inited + 56) = v41;
  v42 = v41;
  sub_100004938(inited);
  swift_setDeallocating();
  sub_100002814(&qword_100070170, &qword_100057A78);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
  sub_100017864();
  isa = sub_100050408().super.isa;

  [v34 sendSignal:v29 toChannel:v30 withNullableUniqueStringID:v33 withPayload:isa];
}

uint64_t sub_1000173E8()
{
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, &qword_100070160, &qword_100057D20);
  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics___observationRegistrar;
  v2 = sub_10004FB98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WritingToolsAnalytics()
{
  result = qword_100070010;
  if (!qword_100070010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000174F8()
{
  sub_1000175C4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_10004FB98();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000175C4()
{
  if (!qword_100070020)
  {
    sub_10004FAD8();
    v0 = sub_1000507E8();
    if (!v1)
    {
      atomic_store(v0, &qword_100070020);
    }
  }
}

uint64_t sub_10001761C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (qword_10006E928 != -1)
      {
        swift_once();
      }

      v4 = &qword_10007B378;
    }

    else if (a3 | a2 | a1)
    {
      if (a1 != 1 || a3 | a2)
      {
        if (qword_10006E920 != -1)
        {
          swift_once();
        }

        v4 = &qword_10007B370;
      }

      else
      {
        v4 = &IAPayloadValueWritingToolsFeatureDetailsProofreadingReview;
      }
    }

    else
    {
      if (qword_10006E918 != -1)
      {
        swift_once();
      }

      v4 = &qword_10007B368;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v4 = &IAPayloadValueWritingToolsFeatureDetailsOpenEndedTone;
      }

      else
      {
        if (qword_10006E900 != -1)
        {
          swift_once();
        }

        v4 = &qword_10007B350;
      }
    }

    else
    {
      v8 = &IAPayloadValueWritingToolsFeatureDetailsBulletsTransform;
      if (a1 != 8)
      {
        v8 = &IAPayloadValueWritingToolsFeatureDetailsTablesTransform;
      }

      if (a1 == 7)
      {
        v4 = &IAPayloadValueWritingToolsFeatureDetailsTakeawaysTransform;
      }

      else
      {
        v4 = v8;
      }
    }
  }

  else
  {
    v5 = &IAPayloadValueWritingToolsFeatureDetailsMagicRewrite;
    v6 = &IAPayloadValueWritingToolsFeatureDetailsConciseTone;
    v7 = &IAPayloadValueWritingToolsFeatureDetailsFriendlyTone;
    if (a1 != 3)
    {
      v7 = &IAPayloadValueWritingToolsFeatureDetailsProfessionalTone;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = &IAPayloadValueWritingToolsFeatureDetailsProofreadingReview;
    }

    if (a1 <= 1u)
    {
      v4 = v5;
    }

    else
    {
      v4 = v6;
    }
  }

  return *v4;
}