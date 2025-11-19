uint64_t sub_1000583B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_10005730C(a1, v4, v5, v6);
}

void sub_100058468(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10004F6E4(v2);
}

uint64_t sub_1000584E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
    v4 = *(v0 + 64);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005855C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100058574(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000585FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_10025D568, &unk_1001D23B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058688(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_10025D568, &unk_1001D23B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100058778(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_22:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v23 = v1;
      v24 = v1 & 0xC000000000000001;
      v21 = v1 & 0xFFFFFFFFFFFFFF8;
      v22 = v2;
      do
      {
        if (v24)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *(v21 + 16))
          {
            goto LABEL_21;
          }

          v4 = *(v1 + 8 * v3 + 32);

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }
        }

        v6 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);
        swift_getKeyPath();
        sub_100058D88(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
        v7 = v6;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v9 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
        v8 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

        v10 = [v7 answerOptions];
        v11 = [v7 question];
        if (v11)
        {
          v12 = v11;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v13 = String._bridgeToObjectiveC()();

          if (v8)
          {
            goto LABEL_12;
          }
        }

        else
        {

          v13 = 0;
          if (v8)
          {
LABEL_12:
            v14 = String._bridgeToObjectiveC()();

            goto LABEL_15;
          }
        }

        v14 = 0;
LABEL_15:
        v15 = [objc_allocWithZone(TCSmartReplyUserQuestionnaireEntry) initWithAnswerOptions:v10 question:v13 selectedOption:v14 defaultOption:0];

        if (!v15)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        v16 = v15;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        ++v3;
        v1 = v23;
      }

      while (v5 != v22);
    }
  }

  v18 = objc_allocWithZone(TCSmartReplyUserQuestionnaire);
  sub_1000081B0(0, &unk_10025D5B0, TCSmartReplyUserQuestionnaireEntry_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v20 = [v18 initWithEntries:isa];

  if (!v20)
  {
    goto LABEL_26;
  }
}

uint64_t sub_100058AEC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning) = *(v0 + 24);
}

uint64_t sub_100058B84()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100058BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_100050A78(a1, v4, v5, v7, v6);
}

uint64_t sub_100058C8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028688;

  return sub_100051408(a1, v4, v5, v6);
}

uint64_t sub_100058D40()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058D88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100058DD0()
{
  result = qword_100262470;
  if (!qword_100262470)
  {
    sub_100003E34(&unk_10025D5E0, &qword_1001DAE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262470);
  }

  return result;
}

uint64_t sub_100058E34()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries) = *(v0 + 24);
}

uint64_t sub_100058EE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002B2A0;

  return sub_100050010();
}

uint64_t sub_100058F9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_1000500A0(a1, v4, v5, v6);
}

uint64_t sub_100059090()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1000590E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session) = v1;
  v4 = v1;
  sub_10004F294(v3);
}

void *sub_100059140(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *a2;
  return sub_10004EE10(v5);
}

void *sub_100059180()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard;
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *v2 = *v1;
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  return sub_10004EA6C();
}

void sub_1000591CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) = v2;
  v4 = v2;
}

void sub_10005920C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory) = v2;
  v4 = v2;
}

uint64_t sub_100059254()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100059340(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GeometryProxy();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100059484(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for GeometryProxy();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000595D4()
{
  sub_1000596F4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GeometryProxy();
    if (v1 <= 0x3F)
    {
      sub_100060B04(319, &qword_10025D688, type metadata accessor for WritingToolsModel);
      if (v2 <= 0x3F)
      {
        sub_100060B04(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize);
        if (v3 <= 0x3F)
        {
          sub_100059744();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1000596F4()
{
  result = qword_10025D680;
  if (!qword_10025D680)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10025D680);
  }

  return result;
}

void sub_100059744()
{
  if (!qword_10025B470)
  {
    sub_100003E34(&unk_10025D690, &qword_1001D2750);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10025B470);
    }
  }
}

uint64_t sub_1000597B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1000597FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100059860(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000598A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005992C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_100059A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for IconTitleLabelStyle(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_10025D7E8, &qword_1001D2B50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = static Alignment.center.getter();
  v13 = v12;
  v14 = *(v7 + 48);
  *&v10[v14] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *v10 = 0;
  *(v10 + 1) = v11;
  *(v10 + 2) = v13;
  __asm { FMOV            V0.2D, #10.0 }

  *(v10 + 24) = _Q0;
  v10[40] = 0;
  sub_100059D9C(a1, &v10[*(v7 + 44)]);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v32 = *(a1 + 48);
  v33 = v20;
  LOBYTE(v34) = v21;
  sub_10000341C(&unk_10025D798, &unk_1001DCF40);
  Binding.projectedValue.getter();
  v22 = v36;
  v23 = v37;
  *v6 = v35;
  *(v6 + 2) = v22;
  v6[24] = v23;
  v24 = *(v3 + 20);
  *&v6[v24] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_10025D7F0, &qword_10025D7E8, &qword_1001D2B50);
  sub_10005FF28(&qword_10025D7F8, type metadata accessor for IconTitleLabelStyle);
  v25 = v31;
  View.labelStyle<A>(_:)();
  sub_1000602C4(v6, type metadata accessor for IconTitleLabelStyle);
  sub_10000F500(v10, &qword_10025D7E8, &qword_1001D2B50);
  v35 = 0uLL;
  LOBYTE(v36) = 1;
  sub_10000341C(&unk_10025B980, &qword_1001D03E0);
  State.init(wrappedValue:)();
  v26 = v32;
  v27 = v34;
  LOBYTE(v35) = v33;
  v28 = v25 + *(sub_10000341C(&qword_10025D7E0, &qword_1001D2B48) + 36);
  *v28 = 0x10000;
  *(v28 + 8) = v26;
  *(v28 + 24) = v35;
  *(v28 + 25) = v32;
  *(v28 + 28) = *(&v32 + 3);
  *(v28 + 32) = v27;
  result = sub_10000341C(&qword_10025D7C8, &qword_1001D2B40);
  *(v25 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100059D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_10000341C(&qword_10025D7A8, &unk_1001D2B28);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - v13;
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_100060324(a1, v24);
  v17 = swift_allocObject();
  sub_100060360(v24, v17 + 16);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  Button.init(action:label:)();
  v16[*(v4 + 44)] = 0;
  sub_100060324(a1, v24);
  v18 = swift_allocObject();
  sub_100060360(v24, v18 + 16);
  Button.init(action:label:)();
  v14[*(v4 + 44)] = 0;
  sub_1000081F8(v16, v11, &qword_10025D7A8, &unk_1001D2B28);
  sub_1000081F8(v14, v8, &qword_10025D7A8, &unk_1001D2B28);
  v19 = v23;
  sub_1000081F8(v11, v23, &qword_10025D7A8, &unk_1001D2B28);
  v20 = sub_10000341C(&qword_10025D808, &unk_1001D2B60);
  sub_1000081F8(v8, v19 + *(v20 + 48), &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v14, &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v16, &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v8, &qword_10025D7A8, &unk_1001D2B28);
  return sub_10000F500(v11, &qword_10025D7A8, &unk_1001D2B28);
}

uint64_t sub_10005A11C@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(3);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10005A14C@<X0>(uint64_t a1@<X8>)
{
  sub_10000341C(&qword_10025D7C8, &qword_1001D2B40);
  sub_1000600EC();
  Section<>.init(content:)();
  sub_10005992C();
  v2 = sub_1000A7C14();

  KeyPath = swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = (v2 & 1) == 0;
  result = sub_10000341C(&qword_10025D800, &qword_1001D2B58);
  v6 = (a1 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = sub_100035DEC;
  v6[2] = v4;
  return result;
}

uint64_t sub_10005A260()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_10005A3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for SmallIconTitleLabelStyle(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_10025D770, &qword_1001D2B18);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = static Alignment.center.getter();
  v13 = v12;
  v14 = *(v7 + 48);
  *&v10[v14] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *v10 = 0;
  *(v10 + 1) = v11;
  *(v10 + 2) = v13;
  __asm { FMOV            V0.2D, #10.0 }

  *(v10 + 24) = _Q0;
  v10[40] = 0;
  sub_10005A6D4(a1, &v10[*(v7 + 44)]);
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v32 = *(a1 + 16);
  v33 = v20;
  LOBYTE(v34) = v21;
  sub_10000341C(&unk_10025D798, &unk_1001DCF40);
  Binding.projectedValue.getter();
  v22 = v36;
  v23 = v37;
  *v6 = v35;
  *(v6 + 2) = v22;
  v6[24] = v23;
  v24 = *(v3 + 20);
  *&v6[v24] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_10025D778, &qword_10025D770, &qword_1001D2B18);
  sub_10005FF28(&unk_10025D780, type metadata accessor for SmallIconTitleLabelStyle);
  v25 = v31;
  View.labelStyle<A>(_:)();
  sub_1000602C4(v6, type metadata accessor for SmallIconTitleLabelStyle);
  sub_10000F500(v10, &qword_10025D770, &qword_1001D2B18);
  v35 = 0uLL;
  LOBYTE(v36) = 1;
  sub_10000341C(&unk_10025B980, &qword_1001D03E0);
  State.init(wrappedValue:)();
  v26 = v32;
  v27 = v34;
  LOBYTE(v35) = v33;
  v28 = v25 + *(sub_10000341C(&qword_10025D768, &qword_1001D2B10) + 36);
  *v28 = 16842752;
  *(v28 + 8) = v26;
  *(v28 + 24) = v35;
  *(v28 + 25) = v32;
  *(v28 + 28) = *(&v32 + 3);
  *(v28 + 32) = v27;
  result = sub_10000341C(&qword_10025D750, &qword_1001D2B08);
  *(v25 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_10005A6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_10000341C(&qword_10025D7A8, &unk_1001D2B28);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v31 = &v29 - v9;
  v10 = __chkstk_darwin(v8);
  v30 = &v29 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v29 - v16;
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  sub_10005FF70(a1, v34);
  v20 = swift_allocObject();
  sub_10005FFAC(v34, v20 + 16);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  Button.init(action:label:)();
  v19[*(v4 + 44)] = 1;
  sub_10005FF70(a1, v34);
  v21 = swift_allocObject();
  sub_10005FFAC(v34, v21 + 16);
  Button.init(action:label:)();
  v17[*(v4 + 44)] = 1;
  sub_10005FF70(a1, v34);
  v22 = swift_allocObject();
  sub_10005FFAC(v34, v22 + 16);
  Button.init(action:label:)();
  v14[*(v4 + 44)] = 1;
  v23 = v30;
  sub_1000081F8(v19, v30, &qword_10025D7A8, &unk_1001D2B28);
  v24 = v31;
  sub_1000081F8(v17, v31, &qword_10025D7A8, &unk_1001D2B28);
  v25 = v32;
  sub_1000081F8(v14, v32, &qword_10025D7A8, &unk_1001D2B28);
  v26 = v33;
  sub_1000081F8(v23, v33, &qword_10025D7A8, &unk_1001D2B28);
  v27 = sub_10000341C(&qword_10025D7C0, &qword_1001D2B38);
  sub_1000081F8(v24, v26 + *(v27 + 48), &qword_10025D7A8, &unk_1001D2B28);
  sub_1000081F8(v25, v26 + *(v27 + 64), &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v14, &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v17, &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v19, &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v25, &qword_10025D7A8, &unk_1001D2B28);
  sub_10000F500(v24, &qword_10025D7A8, &unk_1001D2B28);
  return sub_10000F500(v23, &qword_10025D7A8, &unk_1001D2B28);
}

uint64_t sub_10005AB2C(uint64_t a1, uint64_t a2, char a3)
{
  LocalizedStringKey.init(stringLiteral:)();
  sub_100125454(a3);

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_10005AC10@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10005AC74@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(11);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10005ACA4@<X0>(uint64_t a1@<X8>)
{
  sub_10000341C(&qword_10025D750, &qword_1001D2B08);
  sub_10005FD50();
  Section<>.init(content:)();
  sub_10005A260();
  v2 = sub_1000A7C14();

  KeyPath = swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = (v2 & 1) == 0;
  result = sub_10000341C(&qword_10025D790, &qword_1001D2B20);
  v6 = (a1 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = sub_100035DEC;
  v6[2] = v4;
  return result;
}

uint64_t sub_10005ADB8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for TransformSection(0) + 32));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_10005AF08@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static HorizontalAlignment.leading.getter();
  v10 = static VerticalAlignment.top.getter();
  v11 = &a1[*(type metadata accessor for TransformSection(0) + 40)];
  v12 = *v11;
  v13 = v11[8];

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v5 + 8))(v8, v4);
    v12 = v23[1];
  }

  v15 = sub_10005FBD4(v12);
  v17 = v16;
  v19 = v18;

  v20 = sub_10000341C(&qword_10025D6D8, &qword_1001D29B8);
  v21 = *(v20 + 48);
  *(a2 + v21) = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *a2 = 0;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19 & 1;
  return sub_10005B110(a1, a2 + *(v20 + 44));
}

uint64_t sub_10005B110@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v102 = sub_10000341C(&qword_10025D6F8, &unk_1001D2A30);
  v3 = *(*(v102 - 8) + 64);
  v4 = __chkstk_darwin(v102);
  v104 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v88 - v6;
  v99 = type metadata accessor for DynamicTypeSize();
  *&v112 = *(v99 - 8);
  v8 = *(v112 + 64);
  __chkstk_darwin(v99);
  *&v106 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Divider();
  v95 = *(v96 - 8);
  v10 = *(v95 + 64);
  __chkstk_darwin(v96);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_10000341C(&qword_10025D700, &unk_1001DE550);
  v13 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v107 = &v88 - v14;
  v98 = sub_10000341C(&qword_10025D708, &qword_1001D2A40);
  v15 = *(*(v98 - 8) + 64);
  v16 = __chkstk_darwin(v98);
  v101 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v97 = &v88 - v19;
  __chkstk_darwin(v18);
  v110 = &v88 - v20;
  v21 = type metadata accessor for EnvironmentValues();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v100 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000341C(&qword_10025D710, &qword_1001D2A48);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v108 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v109 = &v88 - v29;
  v30 = static HorizontalAlignment.leading.getter();
  v91 = static VerticalAlignment.top.getter();
  v105 = type metadata accessor for TransformSection(0);
  v31 = v105[10];
  v111 = a1;
  v32 = &a1[v31];
  v33 = *v32;
  LODWORD(a1) = v32[8];

  v34 = v33;
  v93 = a1;
  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v36 = v100;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v22 + 8))(v36, v21);
    v34 = v114;
  }

  v89 = v22;
  v90 = v21;
  v37 = sub_10005FBD4(v34);
  v39 = v38;
  v41 = v40;

  v42 = *(v25 + 48);
  KeyPath = swift_getKeyPath();
  v44 = v109;
  *(v109 + v42) = KeyPath;
  v92 = sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *v44 = 0;
  v45 = v91;
  *(v44 + 8) = v30;
  *(v44 + 16) = v45;
  *(v44 + 24) = v37;
  *(v44 + 32) = v39;
  *(v44 + 40) = v41 & 1;
  v46 = v111;
  sub_10005BAB4(v111, v44 + *(v25 + 44));
  Divider.init()();
  v47 = v105;
  v48 = v106;
  v49 = v105[9];
  sub_10011F024(v106);
  LOBYTE(v39) = DynamicTypeSize.isAccessibilitySize.getter();
  v50 = *(v112 + 8);
  v51 = v48;
  v52 = v99;
  *&v112 = v112 + 8;
  v50(v51, v99);
  if ((v39 & 1) == 0)
  {
    v53 = &v46[v47[5]];
    GeometryProxy.size.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v54 = v107;
  (*(v95 + 32))(v107, v12, v96);
  v55 = (v54 + *(v94 + 36));
  v56 = v115;
  *v55 = v114;
  v55[1] = v56;
  v55[2] = v116;
  v57 = static Edge.Set.top.getter();
  v58 = v106;
  sub_10011F024(v106);
  v59 = DynamicTypeSize.isAccessibilitySize.getter();
  v50(v58, v52);
  v60 = 0uLL;
  v61 = 0uLL;
  if ((v59 & 1) == 0)
  {
    v62 = &v111[v105[5]];
    GeometryProxy.size.getter();
    EdgeInsets.init(_all:)();
    *(&v61 + 1) = v63;
    *(&v60 + 1) = v64;
  }

  v106 = v61;
  v112 = v60;
  v65 = v97;
  sub_10002A894(v107, v97, &qword_10025D700, &unk_1001DE550);
  v66 = v65 + *(v98 + 36);
  *v66 = v57;
  *(v66 + 24) = v106;
  *(v66 + 8) = v112;
  *(v66 + 40) = v59 & 1;
  sub_10002A894(v65, v110, &qword_10025D708, &qword_1001D2A40);
  v67 = static HorizontalAlignment.leading.getter();
  v68 = static VerticalAlignment.top.getter();

  if ((v93 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v69 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v70 = v100;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v89 + 8))(v70, v90);
    v33 = v113;
  }

  v71 = sub_10005FBD4(v33);
  v73 = v72;
  v75 = v74;

  v76 = v102;
  v77 = *(v102 + 48);
  *&v7[v77] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v7 = 0;
  *(v7 + 1) = v67;
  *(v7 + 2) = v68;
  *(v7 + 3) = v71;
  *(v7 + 4) = v73;
  v7[40] = v75 & 1;
  sub_10005C04C(v111, &v7[*(v76 + 44)]);
  v78 = v108;
  v79 = v109;
  sub_1000081F8(v109, v108, &qword_10025D710, &qword_1001D2A48);
  v80 = v110;
  v81 = v101;
  sub_1000081F8(v110, v101, &qword_10025D708, &qword_1001D2A40);
  v82 = v104;
  sub_1000081F8(v7, v104, &qword_10025D6F8, &unk_1001D2A30);
  v83 = v78;
  v84 = v7;
  v85 = v103;
  sub_1000081F8(v83, v103, &qword_10025D710, &qword_1001D2A48);
  v86 = sub_10000341C(&qword_10025D718, &qword_1001D2A50);
  sub_1000081F8(v81, v85 + *(v86 + 48), &qword_10025D708, &qword_1001D2A40);
  sub_1000081F8(v82, v85 + *(v86 + 64), &qword_10025D6F8, &unk_1001D2A30);
  sub_10000F500(v84, &qword_10025D6F8, &unk_1001D2A30);
  sub_10000F500(v80, &qword_10025D708, &qword_1001D2A40);
  sub_10000F500(v79, &qword_10025D710, &qword_1001D2A48);
  sub_10000F500(v82, &qword_10025D6F8, &unk_1001D2A30);
  sub_10000F500(v81, &qword_10025D708, &qword_1001D2A40);
  return sub_10000F500(v108, &qword_10025D710, &qword_1001D2A48);
}

uint64_t sub_10005BAB4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v61 = type metadata accessor for DynamicTypeSize();
  v67 = *(v61 - 8);
  v3 = *(v67 + 64);
  __chkstk_darwin(v61);
  v64 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&unk_10025D720, &qword_1001D2A58);
  v6 = *(v5 - 8);
  v65 = v5 - 8;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v62 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v66 = &v48 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v48 - v13;
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v18 = *(a1 + 1);
  v60 = *a1;
  v17 = v60;
  v56 = v18;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 6;
  v16[24] = 0;
  *(v16 + 4) = v17;
  *(v16 + 5) = v18;
  v19 = type metadata accessor for TransformItemView(0);
  v20 = v19[6];
  *&v16[v20] = swift_getKeyPath();
  v59 = sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v21 = v19[7];
  *&v16[v21] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  v22 = &v16[v19[8]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = type metadata accessor for TransformSection(0);
  v24 = *(v23 + 20);
  v53 = v24;
  v55 = sub_10000341C(&qword_10025D730, &qword_1001D2AC8);
  v25 = &v16[*(v55 + 36)];
  v26 = type metadata accessor for GeometryProxy();
  v27 = *(v26 - 8);
  v52 = *(v27 + 16);
  v54 = v27 + 16;
  v48 = a1;
  v52(v25, &a1[v24], v26);
  v51 = type metadata accessor for TransformItemViewWidthModifier(0);
  v28 = *(v51 + 20);
  *&v25[v28] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v16[*(v65 + 44)] = 257;
  v50 = *(v23 + 36);
  v29 = v56;
  swift_retain_n();
  v30 = v64;
  sub_10011F024(v64);
  v31 = DynamicTypeSize.isAccessibilitySize.getter();
  LOBYTE(a1) = v31;
  v58 = v31;
  v32 = *(v67 + 8);
  v67 += 8;
  v49 = v32;
  v33 = v61;
  v32(v30, v61);
  v57 = (a1 & 1) == 0;
  v14[24] = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *v14 = 7;
  *(v14 + 4) = v60;
  *(v14 + 5) = v29;
  v34 = v19[6];
  *&v14[v34] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v35 = v19[7];
  *&v14[v35] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v36 = &v14[v19[8]];
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  v37 = &v14[*(v55 + 36)];
  v52(v37, &v48[v53], v26);
  v38 = *(v51 + 20);
  *&v37[v38] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v14[*(v65 + 44)] = 257;
  v39 = v64;
  sub_10011F024(v64);
  LOBYTE(v38) = DynamicTypeSize.isAccessibilitySize.getter();
  v49(v39, v33);
  v40 = v66;
  sub_1000081F8(v16, v66, &unk_10025D720, &qword_1001D2A58);
  v41 = v62;
  sub_1000081F8(v14, v62, &unk_10025D720, &qword_1001D2A58);
  v42 = v63;
  sub_1000081F8(v40, v63, &unk_10025D720, &qword_1001D2A58);
  v43 = sub_10000341C(&unk_10025D740, &qword_1001D2AD8);
  v44 = v42 + v43[12];
  *v44 = 0;
  v45 = v58;
  *(v44 + 8) = v57;
  *(v44 + 9) = v45 & 1;
  sub_1000081F8(v41, v42 + v43[16], &unk_10025D720, &qword_1001D2A58);
  v46 = v42 + v43[20];
  *v46 = 0;
  *(v46 + 8) = (v38 & 1) == 0;
  *(v46 + 9) = v38 & 1;
  sub_10000F500(v14, &unk_10025D720, &qword_1001D2A58);
  sub_10000F500(v16, &unk_10025D720, &qword_1001D2A58);
  sub_10000F500(v41, &unk_10025D720, &qword_1001D2A58);
  return sub_10000F500(v66, &unk_10025D720, &qword_1001D2A58);
}

uint64_t sub_10005C04C@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v3 = sub_10000341C(&unk_10025D720, &qword_1001D2A58);
  v4 = *(v3 - 8);
  v69 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v67 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v66 = &v51 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v51 - v11;
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v15 = type metadata accessor for DynamicTypeSize();
  v61 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TransformSection(0);
  v63 = *(v20 + 36);
  sub_10011F024(v19);
  v21 = DynamicTypeSize.isAccessibilitySize.getter();
  v22 = v21;
  v65 = v21;
  v23 = *(v16 + 8);
  v60 = v16 + 8;
  v62 = v23;
  v23(v19, v15);
  v64 = (v22 & 1) == 0;
  v25 = *(a1 + 1);
  v59 = *a1;
  v24 = v59;
  v57 = v25;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *v14 = 8;
  v14[24] = 0;
  *(v14 + 4) = v24;
  *(v14 + 5) = v25;
  v26 = type metadata accessor for TransformItemView(0);
  v27 = v26[6];
  *&v14[v27] = swift_getKeyPath();
  v58 = sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v28 = v26[7];
  *&v14[v28] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  v29 = &v14[v26[8]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = *(v20 + 20);
  v54 = v30;
  v56 = sub_10000341C(&qword_10025D730, &qword_1001D2AC8);
  v31 = &v14[*(v56 + 36)];
  v32 = type metadata accessor for GeometryProxy();
  v33 = *(v32 - 8);
  v34 = *(v33 + 16);
  v52 = a1;
  v53 = v34;
  v55 = v33 + 16;
  v34(v31, &a1[v30], v32);
  v35 = type metadata accessor for TransformItemViewWidthModifier(0);
  v36 = *(v35 + 20);
  *&v31[v36] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v14[*(v69 + 44)] = 257;
  v37 = v57;
  swift_retain_n();
  sub_10011F024(v19);
  LOBYTE(v31) = DynamicTypeSize.isAccessibilitySize.getter();
  v62(v19, v61);
  v12[24] = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = 9;
  *(v12 + 4) = v59;
  *(v12 + 5) = v37;
  v38 = v26[6];
  *&v12[v38] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v39 = v26[7];
  *&v12[v39] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v40 = &v12[v26[8]];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  v41 = &v12[*(v56 + 36)];
  v53(v41, &v52[v54], v32);
  v42 = *(v35 + 20);
  *&v41[v42] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v12[*(v69 + 44)] = 257;
  v43 = v66;
  sub_1000081F8(v14, v66, &unk_10025D720, &qword_1001D2A58);
  v44 = v67;
  sub_1000081F8(v12, v67, &unk_10025D720, &qword_1001D2A58);
  v45 = v68;
  *v68 = 0;
  v46 = v65;
  *(v45 + 8) = v64;
  *(v45 + 9) = v46 & 1;
  v47 = v45;
  v48 = sub_10000341C(&qword_10025D738, &qword_1001D2AD0);
  sub_1000081F8(v43, v47 + v48[12], &unk_10025D720, &qword_1001D2A58);
  v49 = v47 + v48[16];
  *v49 = 0;
  *(v49 + 8) = (v31 & 1) == 0;
  *(v49 + 9) = v31 & 1;
  sub_1000081F8(v44, v47 + v48[20], &unk_10025D720, &qword_1001D2A58);
  sub_10000F500(v12, &unk_10025D720, &qword_1001D2A58);
  sub_10000F500(v14, &unk_10025D720, &qword_1001D2A58);
  sub_10000F500(v44, &unk_10025D720, &qword_1001D2A58);
  return sub_10000F500(v43, &unk_10025D720, &qword_1001D2A58);
}

uint64_t sub_10005C5C0@<X0>(uint64_t a1@<X8>)
{
  sub_10000341C(&qword_10025D6D8, &qword_1001D29B8);
  sub_100007120(&qword_10025D6E0, &qword_10025D6D8, &qword_1001D29B8);
  Section<>.init(content:)();
  sub_10005ADB8();
  v2 = sub_1000A7C14();

  v3 = (v2 & 2) == 0;
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  result = sub_10000341C(&unk_10025D6E8, &qword_1001D29F0);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = sub_10002AAC0;
  v7[2] = v5;
  return result;
}

uint64_t sub_10005C6F4@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v49 = sub_10000341C(&qword_10025D9E0, &qword_1001D2CA0);
  v1 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v3 = &v42 - v2;
  v50 = sub_10000341C(&qword_10025D9E8, &qword_1001D2CA8);
  v43 = *(v50 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v50);
  v6 = &v42 - v5;
  v47 = sub_10000341C(&qword_10025D9F0, &qword_1001D2CB0);
  v7 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v46 = &v42 - v8;
  v44 = type metadata accessor for AccessibilityChildBehavior();
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v44);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000341C(&qword_10025D9F8, &qword_1001D2CB8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  v48 = sub_10000341C(&qword_10025DA00, &qword_1001D2CC0);
  v17 = *(v48 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v48);
  v20 = &v42 - v19;
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 == 6)
  {
    *v16 = static HorizontalAlignment.center.getter();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v23 = sub_10000341C(&qword_10025DA18, &qword_1001D2CC8);
    sub_10005DADC(v45, &v16[*(v23 + 44)]);
    static AccessibilityChildBehavior.combine.getter();
    v24 = sub_100007120(&qword_10025DA10, &qword_10025D9F8, &qword_1001D2CB8);
    View.accessibilityElement(children:)();
    (*(v9 + 8))(v12, v44);
    sub_10000F500(v16, &qword_10025D9F8, &qword_1001D2CB8);
    v25 = v48;
    (*(v17 + 16))(v46, v20, v48);
    swift_storeEnumTagMultiPayload();
    v52 = v13;
    v53 = v24;
    swift_getOpaqueTypeConformance2();
    v26 = sub_100007120(&qword_10025DA08, &qword_10025D9E0, &qword_1001D2CA0);
    v52 = v49;
    v53 = v26;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v17 + 8))(v20, v25);
  }

  else
  {
    v28 = static Alignment.center.getter();
    v30 = v29;
    v31 = v49;
    v32 = *(v49 + 48);
    *&v3[v32] = swift_getKeyPath();
    sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
    swift_storeEnumTagMultiPayload();
    *v3 = 1;
    *(v3 + 1) = v28;
    *(v3 + 2) = v30;
    __asm { FMOV            V0.2D, #7.0 }

    *(v3 + 24) = _Q0;
    v3[40] = 0;
    sub_10005CD64(v45, &v3[*(v31 + 44)]);
    static AccessibilityChildBehavior.combine.getter();
    v38 = sub_100007120(&qword_10025DA08, &qword_10025D9E0, &qword_1001D2CA0);
    View.accessibilityElement(children:)();
    (*(v9 + 8))(v12, v44);
    sub_10000F500(v3, &qword_10025D9E0, &qword_1001D2CA0);
    v39 = v43;
    v40 = v50;
    (*(v43 + 16))(v46, v6, v50);
    swift_storeEnumTagMultiPayload();
    v41 = sub_100007120(&qword_10025DA10, &qword_10025D9F8, &qword_1001D2CB8);
    v52 = v13;
    v53 = v41;
    swift_getOpaqueTypeConformance2();
    v52 = v31;
    v53 = v38;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v39 + 8))(v6, v40);
  }
}

uint64_t sub_10005CD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v49 = type metadata accessor for TransformItemButton(0);
  v3 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v5 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TransformItemView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v50 = sub_10000341C(&qword_10025DAB8, &qword_1001D2D10);
  v52 = *(v50 - 8);
  v9 = *(v52 + 64);
  __chkstk_darwin(v50);
  v11 = &v49 - v10;
  v54 = sub_10000341C(&qword_10025DAC0, &qword_1001D2D18);
  v53 = *(v54 - 8);
  v12 = *(v53 + 64);
  __chkstk_darwin(v54);
  v14 = &v49 - v13;
  v15 = sub_10000341C(&qword_10025DAC8, &qword_1001D2D20);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15);
  v55 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v49 - v21;
  __chkstk_darwin(v20);
  v51 = &v49 - v23;
  sub_100061178(a1, &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  sub_100062178(&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for TransformItemView);
  v57 = a1;
  sub_10000341C(&qword_10025DAD0, &qword_1001D2D28);
  sub_100007120(&qword_10025DAD8, &qword_10025DAD0, &qword_1001D2D28);
  Button.init(action:label:)();
  *v5 = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v26 = *(v49 + 20);
  *(v5 + v26) = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_10025DAE0, &qword_10025DAB8, &qword_1001D2D10);
  sub_10005FF28(&qword_10025DA40, type metadata accessor for TransformItemButton);
  v27 = v50;
  View.buttonStyle<A>(_:)();
  sub_1000602C4(v5, type metadata accessor for TransformItemButton);
  (*(v52 + 8))(v11, v27);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v53 + 32))(v22, v14, v54);
  v28 = &v22[*(v16 + 44)];
  v29 = v65;
  *(v28 + 4) = v64;
  *(v28 + 5) = v29;
  *(v28 + 6) = v66;
  v30 = v61;
  *v28 = v60;
  *(v28 + 1) = v30;
  v31 = v63;
  *(v28 + 2) = v62;
  *(v28 + 3) = v31;
  v32 = v51;
  sub_10002A894(v22, v51, &qword_10025DAC8, &qword_1001D2D20);
  v33 = *a1;
  v34 = *(a1 + 8);
  v35 = *(a1 + 16);
  v36 = *(a1 + 24);
  v58 = sub_100106A3C();
  v59 = v37;
  sub_10002AC34();
  v38 = Text.init<A>(_:)();
  v40 = v39;
  LOBYTE(a1) = v41;
  v43 = v42;
  KeyPath = swift_getKeyPath();
  v45 = v55;
  sub_1000081F8(v32, v55, &qword_10025DAC8, &qword_1001D2D20);
  v46 = v56;
  sub_1000081F8(v45, v56, &qword_10025DAC8, &qword_1001D2D20);
  v47 = v46 + *(sub_10000341C(&qword_10025DAE8, &qword_1001D2D30) + 48);
  *v47 = v38;
  *(v47 + 8) = v40;
  LOBYTE(a1) = a1 & 1;
  *(v47 + 16) = a1;
  *(v47 + 24) = v43;
  *(v47 + 32) = KeyPath;
  *(v47 + 40) = 0;
  sub_100007D98(v38, v40, a1);

  sub_100061798(KeyPath, 0);
  sub_10000F500(v32, &qword_10025DAC8, &qword_1001D2D20);
  sub_10002A984(v38, v40, a1);

  sub_1000611E0(KeyPath, 0);
  return sub_10000F500(v45, &qword_10025DAC8, &qword_1001D2D20);
}

uint64_t sub_10005D428()
{
  sub_10000341C(&qword_10025DAF0, &qword_1001D2D38);
  sub_1000613A0(&qword_10025DAF8, &qword_10025DAF0, &qword_1001D2D38, sub_1000617AC);
  return Label.init(title:icon:)();
}

uint64_t sub_10005D4F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorScheme();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  v8 = __chkstk_darwin(v6);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v49 - v10;
  v11 = sub_10000341C(&qword_10025DAA8, &qword_1001D2D08);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v56 = &v49 - v13;
  v55 = type metadata accessor for Image.ResizingMode();
  v14 = *(v55 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v55);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DynamicTypeSize();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = a1[1];
  v25 = a1[2];
  v53 = *(a1 + 24);
  v54 = a1;
  v26 = type metadata accessor for TransformItemView(0);
  v27 = a1 + v26[7];
  sub_10011F024(v22);
  LOBYTE(v27) = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v19 + 8))(v22, v18);
  sub_1000C4984(v23, v24, v25, v53, v27 & 1);
  Image.init(_:bundle:)();
  v28 = v55;
  (*(v14 + 104))(v17, enum case for Image.ResizingMode.stretch(_:), v55);
  Image.resizable(capInsets:resizingMode:)();

  (*(v14 + 8))(v17, v28);
  v29 = enum case for Image.TemplateRenderingMode.template(_:);
  v30 = type metadata accessor for Image.TemplateRenderingMode();
  v31 = *(v30 - 8);
  v32 = v56;
  (*(v31 + 104))(v56, v29, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  v33 = v54;
  v34 = Image.renderingMode(_:)();

  sub_10000F500(v32, &qword_10025DAA8, &qword_1001D2D08);
  v35 = v33 + v26[6];
  v36 = v57;
  sub_10011F04C(v57);
  v38 = v58;
  v37 = v59;
  v39 = v60;
  (*(v59 + 104))(v58, enum case for ColorScheme.dark(_:), v60);
  LOBYTE(v35) = static ColorScheme.== infix(_:_:)();
  v40 = *(v37 + 8);
  v40(v38, v39);
  v40(v36, v39);
  if (v35)
  {
    v41 = static Color.white.getter();
  }

  else
  {
    v41 = static Color.black.getter();
  }

  v42 = v41;
  v43 = v33 + v26[8];
  v44 = *v43;
  if (*(v43 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v45 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v46 = v50;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000611E0(v44, 0);
    (*(v51 + 8))(v46, v52);
    LOBYTE(v44) = v62;
  }

  v47 = 0.6;
  v62 = v34;
  v63 = 0;
  v64 = 1;
  if (v44)
  {
    v47 = 1.0;
  }

  v65 = v42;
  v66 = v47;
  sub_10000341C(&qword_10025DB08, &qword_1001D2D40);
  sub_1000617AC();
  View.accessibilityHidden(_:)();
}

uint64_t sub_10005DADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = type metadata accessor for TransformItemButton(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TransformItemView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_10000341C(&qword_10025DA20, &qword_1001D2CD0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  sub_100061178(a1, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_100062178(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for TransformItemView);
  v19[4] = a1;
  sub_10000341C(&qword_10025DA28, &qword_1001D2CD8);
  sub_100007120(&qword_10025DA30, &qword_10025DA28, &qword_1001D2CD8);
  Button.init(action:label:)();
  *v6 = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v17 = *(v3 + 20);
  *(v6 + v17) = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_10025DA38, &qword_10025DA20, &qword_1001D2CD0);
  sub_10005FF28(&qword_10025DA40, type metadata accessor for TransformItemButton);
  View.buttonStyle<A>(_:)();
  sub_1000602C4(v6, type metadata accessor for TransformItemButton);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_10005DE68()
{
  sub_10000341C(&qword_10025DA48, &qword_1001D2CE0);
  sub_10000341C(&qword_10025DA50, &qword_1001D2CE8);
  sub_100061208();
  sub_1000612E8();
  return Label.init(title:icon:)();
}

uint64_t sub_10005DF24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  sub_100106A3C();
  sub_10002AC34();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = swift_getKeyPath();
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

double sub_10005DFBC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  __chkstk_darwin(v3);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&qword_10025DAA8, &qword_1001D2D08);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v49 = &v42 - v8;
  v48 = type metadata accessor for Image.ResizingMode();
  v46 = *(v48 - 8);
  v9 = *(v46 + 64);
  __chkstk_darwin(v48);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DynamicTypeSize();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000341C(&qword_10025DA78, &qword_1001D2CF0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v50 = &v42 - v19;
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[2];
  v23 = *(a1 + 24);
  v47 = type metadata accessor for TransformItemView(0);
  v24 = a1 + *(v47 + 28);
  sub_10011F024(v16);
  LOBYTE(v24) = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v13 + 8))(v16, v12);
  sub_1000C4984(v20, v21, v22, v23, v24 & 1);
  Image.init(_:bundle:)();
  v25 = v46;
  v26 = v48;
  (*(v46 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v48);
  Image.resizable(capInsets:resizingMode:)();

  (*(v25 + 8))(v11, v26);
  v27 = enum case for Image.TemplateRenderingMode.template(_:);
  v28 = type metadata accessor for Image.TemplateRenderingMode();
  v29 = *(v28 - 8);
  v30 = v49;
  (*(v29 + 104))(v49, v27, v28);
  (*(v29 + 56))(v30, 0, 1, v28);
  v31 = Image.renderingMode(_:)();

  sub_10000F500(v30, &qword_10025DAA8, &qword_1001D2D08);
  v32 = a1 + *(v47 + 32);
  v33 = *v32;
  if (*(v32 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v35 = v43;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000611E0(v33, 0);
    (*(v44 + 8))(v35, v45);
    LOBYTE(v33) = v52;
  }

  v36 = 0.6;
  if (v33)
  {
    v36 = 1.0;
  }

  v52 = v31;
  LOWORD(v53) = 1;
  *(&v53 + 1) = v36;
  sub_10000341C(&qword_10025DA88, &qword_1001D2CF8);
  sub_100061454();
  v37 = v50;
  View.accessibilityHidden(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v38 = v51;
  sub_10002A894(v37, v51, &qword_10025DA78, &qword_1001D2CF0);
  v39 = (v38 + *(sub_10000341C(&qword_10025DA50, &qword_1001D2CE8) + 36));
  v40 = v53;
  *v39 = v52;
  v39[1] = v40;
  result = *&v54;
  v39[2] = v54;
  return result;
}

uint64_t sub_10005E52C()
{
  v20 = type metadata accessor for EnvironmentValues();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TransformItemButton(0);
  sub_1000081F8(v0 + *(v14 + 20), v8, &unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v10 + 8))(v13, v9);
  return v17 & 1;
}

uint64_t sub_10005E7B8@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v1 = sub_10000341C(&qword_10025DBE0, &qword_1001D2E80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v11 - v3;
  v5 = sub_10000341C(&qword_10025DBE8, &qword_1001D2E88);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  v9 = [objc_opt_self() currentDevice];
  [v9 userInterfaceIdiom];

  sub_10005E954(v8);
  sub_1000081F8(v8, v4, &qword_10025DBE8, &qword_1001D2E88);
  swift_storeEnumTagMultiPayload();
  sub_100061EF8();
  _ConditionalContent<>.init(storage:)();
  return sub_10000F500(v8, &qword_10025DBE8, &qword_1001D2E88);
}

uint64_t sub_10005E954@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v96 = type metadata accessor for ColorScheme();
  v94 = *(v96 - 8);
  v1 = *(v94 + 64);
  v2 = __chkstk_darwin(v96);
  v98 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v90 = &v80 - v4;
  v5 = type metadata accessor for RoundedRectangle();
  v6 = *(v5 - 8);
  v88 = v5 - 8;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v87 = (&v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  v9 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v93 = &v80 - v10;
  v91 = sub_10000341C(&qword_10025DC40, &qword_1001D2EB0);
  v11 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v95 = &v80 - v12;
  v92 = sub_10000341C(&qword_10025DC48, &qword_1001D2EB8);
  v13 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v97 = &v80 - v14;
  v15 = type metadata accessor for IconOnlyLabelStyle();
  v16 = *(v15 - 8);
  v85 = v15;
  v86 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ButtonStyleConfiguration.Label();
  v84 = *(v20 - 8);
  v21 = *(v84 + 64);
  __chkstk_darwin(v20);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10000341C(&qword_10025DC50, &qword_1001D2EC0);
  v82 = *(v83 - 8);
  v24 = *(v82 + 64);
  __chkstk_darwin(v83);
  v26 = &v80 - v25;
  v27 = sub_10000341C(&qword_10025DC10, &qword_1001D2E98);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v31 = &v80 - v30;
  v32 = sub_10000341C(&qword_10025DC00, &qword_1001D2E90);
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v81 = &v80 - v35;
  ButtonStyleConfiguration.label.getter();
  IconOnlyLabelStyle.init()();
  sub_10005FF28(&qword_10025DC18, &type metadata accessor for ButtonStyleConfiguration.Label);
  sub_10005FF28(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  v36 = v20;
  v37 = v85;
  View.labelStyle<A>(_:)();
  v38 = v19;
  v39 = v87;
  (*(v86 + 8))(v38, v37);
  (*(v84 + 8))(v23, v36);
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v40 = 0.75;
  }

  else
  {
    v40 = 1.0;
  }

  (*(v82 + 32))(v31, v26, v83);
  v41 = v81;
  *&v31[*(v28 + 44)] = v40;
  v42 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_10002A894(v31, v41, &qword_10025DC10, &qword_1001D2E98);
  v51 = v41;
  v52 = v41 + *(v33 + 44);
  *v52 = v42;
  *(v52 + 8) = v44;
  *(v52 + 16) = v46;
  *(v52 + 24) = v48;
  *(v52 + 32) = v50;
  *(v52 + 40) = 0;
  if (sub_10005E52C())
  {
    v53 = 9.0;
  }

  else
  {
    v53 = 6.0;
  }

  v54 = *(v88 + 28);
  v55 = enum case for RoundedCornerStyle.continuous(_:);
  v56 = type metadata accessor for RoundedCornerStyle();
  (*(*(v56 - 8) + 104))(v39 + v54, v55, v56);
  *v39 = v53;
  v39[1] = v53;
  LOBYTE(v54) = ButtonStyleConfiguration.isPressed.getter();
  v57 = static Color.white.getter();
  if (v54)
  {
    v58 = v90;
    sub_10011F04C(v90);
    v59 = sub_100125700();

    v60 = v94;
    v61 = v96;
    (*(v94 + 8))(v58, v96);
    v57 = v59;
  }

  else
  {
    v61 = v96;
    v60 = v94;
    v58 = v90;
  }

  v62 = v93;
  sub_100062178(v39, v93, &type metadata accessor for RoundedRectangle);
  v63 = v89;
  *(v62 + *(v89 + 52)) = v57;
  *(v62 + *(v63 + 56)) = 256;
  sub_10011F04C(v58);
  v64 = v98;
  (*(v60 + 104))(v98, enum case for ColorScheme.light(_:), v61);
  v65 = static ColorScheme.== infix(_:_:)();
  v66 = *(v60 + 8);
  v66(v64, v61);
  v66(v58, v61);
  if (v65)
  {
    v67 = 0.5;
  }

  else
  {
    v67 = 0.17;
  }

  v68 = v95;
  sub_10002A894(v62, v95, &unk_100263560, &unk_1001D1590);
  *(v68 + *(v91 + 36)) = v67;
  static Color.black.getter();
  v69 = Color.opacity(_:)();

  v70 = v97;
  sub_10002A894(v68, v97, &qword_10025DC40, &qword_1001D2EB0);
  v71 = v70 + *(v92 + 36);
  *v71 = v69;
  *(v71 + 8) = xmmword_1001D2710;
  *(v71 + 24) = 0x4000000000000000;
  v72 = static Alignment.center.getter();
  v74 = v73;
  v75 = sub_10000341C(&qword_10025DBE8, &qword_1001D2E88);
  v76 = v99;
  v77 = v99 + *(v75 + 36);
  sub_10002A894(v70, v77, &qword_10025DC48, &qword_1001D2EB8);
  v78 = (v77 + *(sub_10000341C(&unk_10025DC30, &unk_1001D2EA0) + 36));
  *v78 = v72;
  v78[1] = v74;
  return sub_10002A894(v51, v76, &qword_10025DC00, &qword_1001D2E90);
}

uint64_t sub_10005F214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a4;
  v6 = type metadata accessor for EnvironmentValues();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000341C(&qword_10025DC58, &qword_1001D2EC8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = sub_10000341C(&qword_10025DC60, &qword_1001D2ED0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  KeyPath = swift_getKeyPath();
  v19 = sub_10000341C(&qword_10025DC68, &qword_1001D2F08);
  (*(*(v19 - 8) + 16))(v13, a1, v19);
  v20 = &v13[*(sub_10000341C(&qword_10025DC70, &qword_1001D2F10) + 36)];
  *v20 = KeyPath;
  v20[8] = 1;
  v21 = static Font.caption.getter();
  v22 = swift_getKeyPath();
  v23 = &v13[*(v10 + 36)];
  *v23 = v22;
  v23[1] = v21;
  static Font.Weight.medium.getter();
  sub_1000621F0();
  View.fontWeight(_:)();
  sub_10000F500(v13, &qword_10025DC58, &qword_1001D2EC8);
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  *&v17[*(v14 + 36)] = qword_100277170;

  if ((v31 & 1) == 0)
  {
    sub_100061798(a2, 0);
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000611E0(a2, 0);
    (*(v29 + 8))(v9, v30);
    LOBYTE(a2) = v33;
  }

  if (a2)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.3;
  }

  v26 = v32;
  sub_10002A894(v17, v32, &qword_10025DC60, &qword_1001D2ED0);
  result = sub_10000341C(&qword_10025DCB0, &qword_1001D2F48);
  *(v26 + *(result + 36)) = v25;
  return result;
}

uint64_t sub_10005F5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v45 = a2;
  v44 = sub_10000341C(&qword_10025D9A0, &qword_1001D2C78);
  v2 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v40 = &v36 - v3;
  v41 = type metadata accessor for DynamicTypeSize();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v41);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&qword_10025D9A8, &qword_1001D2C80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v12 = sub_10000341C(&qword_10025D9B0, &qword_1001D2C88);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = sub_10000341C(&qword_10025D9B8, &qword_1001D2C90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v20 = [objc_opt_self() currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if (v21 == 6)
  {
    v22 = sub_10000341C(&qword_10025D9C0, &qword_1001D2C98);
    (*(*(v22 - 8) + 16))(v15, v43, v22);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_10025D9C8, &qword_10025D9C0, &qword_1001D2C98);
    sub_100060FB0();
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v19, v11, &qword_10025D9B8, &qword_1001D2C90);
    swift_storeEnumTagMultiPayload();
    sub_100061068();
    _ConditionalContent<>.init(storage:)();
    v23 = v19;
    v24 = &qword_10025D9B8;
    v25 = &qword_1001D2C90;
  }

  else
  {
    v36 = v12;
    v37 = v19;
    v26 = v43;
    v27 = v44;
    v38 = v16;
    v39 = v8;
    v28 = v42 + *(type metadata accessor for TransformItemViewWidthModifier(0) + 20);
    sub_10011F024(v7);
    LOBYTE(v28) = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v4 + 8))(v7, v41);
    if (v28)
    {
      v29 = sub_10000341C(&qword_10025D9C0, &qword_1001D2C98);
      (*(*(v29 - 8) + 16))(v11, v26, v29);
      swift_storeEnumTagMultiPayload();
      sub_100061068();
      sub_100007120(&qword_10025D9C8, &qword_10025D9C0, &qword_1001D2C98);
      return _ConditionalContent<>.init(storage:)();
    }

    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v31 = sub_10000341C(&qword_10025D9C0, &qword_1001D2C98);
    v32 = v40;
    (*(*(v31 - 8) + 16))(v40, v26, v31);
    v33 = (v32 + *(v27 + 36));
    v34 = v47;
    *v33 = v46;
    v33[1] = v34;
    v33[2] = v48;
    sub_1000081F8(v32, v15, &qword_10025D9A0, &qword_1001D2C78);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_10025D9C8, &qword_10025D9C0, &qword_1001D2C98);
    sub_100060FB0();
    v35 = v37;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v35, v11, &qword_10025D9B8, &qword_1001D2C90);
    swift_storeEnumTagMultiPayload();
    sub_100061068();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v35, &qword_10025D9B8, &qword_1001D2C90);
    v23 = v32;
    v24 = &qword_10025D9A0;
    v25 = &qword_1001D2C78;
  }

  return sub_10000F500(v23, v24, v25);
}

uint64_t sub_10005FBD4(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 6)
  {
    return 0;
  }

  if (a1)
  {
    swift_getKeyPath();
    sub_10005FF28(&qword_10025A910, type metadata accessor for PresentationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(a1 + 40) & 1) == 0 && *(a1 + 32) == 1)
    {
      return 0x4038000000000000;
    }
  }

  return 0x4030000000000000;
}

unint64_t sub_10005FD50()
{
  result = qword_10025D758;
  if (!qword_10025D758)
  {
    sub_100003E34(&qword_10025D750, &qword_1001D2B08);
    sub_10005FDDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D758);
  }

  return result;
}

unint64_t sub_10005FDDC()
{
  result = qword_10025D760;
  if (!qword_10025D760)
  {
    sub_100003E34(&qword_10025D768, &qword_1001D2B10);
    sub_100003E34(&qword_10025D770, &qword_1001D2B18);
    type metadata accessor for SmallIconTitleLabelStyle(255);
    sub_100007120(&qword_10025D778, &qword_10025D770, &qword_1001D2B18);
    sub_10005FF28(&unk_10025D780, type metadata accessor for SmallIconTitleLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D760);
  }

  return result;
}

uint64_t sub_10005FF28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005FFE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(3, 0, 0, 0);
}

uint64_t sub_10006001C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(4, 0, 0, 0);
}

uint64_t sub_100060054()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  swift_unknownObjectWeakDestroy();
  v4 = v0[9];

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_1000600AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(2, 0, 0, 0);
}

unint64_t sub_1000600EC()
{
  result = qword_10025D7D0;
  if (!qword_10025D7D0)
  {
    sub_100003E34(&qword_10025D7C8, &qword_1001D2B40);
    sub_100060178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D7D0);
  }

  return result;
}

unint64_t sub_100060178()
{
  result = qword_10025D7D8;
  if (!qword_10025D7D8)
  {
    sub_100003E34(&qword_10025D7E0, &qword_1001D2B48);
    sub_100003E34(&qword_10025D7E8, &qword_1001D2B50);
    type metadata accessor for IconTitleLabelStyle(255);
    sub_100007120(&qword_10025D7F0, &qword_10025D7E8, &qword_1001D2B50);
    sub_10005FF28(&qword_10025D7F8, type metadata accessor for IconTitleLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D7D8);
  }

  return result;
}

uint64_t sub_1000602C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100060398()
{
  v1 = v0 + 16;
  if (*(v0 + 16) == 1 && (*(v0 + 17) & 1) != 0)
  {
    v2 = 2;
    v3 = 40;
    v4 = 32;
  }

  else
  {
    v2 = 0;
    v3 = 24;
    v4 = 16;
  }

  v5 = *(v1 + v3);
  return (*(v1 + v4))(1, 0, 0, v2);
}

uint64_t sub_100060404()
{
  swift_unknownObjectWeakDestroy();
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[12];

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_100060464()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1(0, 0, 0, 0);
}

uint64_t sub_1000604B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000605C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for GeometryProxy();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000606C8()
{
  type metadata accessor for GeometryProxy();
  if (v0 <= 0x3F)
  {
    sub_100060B04(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10006077C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000608CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100060A08()
{
  sub_1000596F4();
  if (v0 <= 0x3F)
  {
    sub_100060B04(319, qword_10025D910, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_100060B04(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize);
      if (v2 <= 0x3F)
      {
        sub_100060B58();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100060B04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100060B58()
{
  if (!qword_1002631F0)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1002631F0);
    }
  }
}

unint64_t sub_100060BAC()
{
  result = qword_10025D958;
  if (!qword_10025D958)
  {
    sub_100003E34(&unk_10025D6E8, &qword_1001D29F0);
    sub_100060C64();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D958);
  }

  return result;
}

unint64_t sub_100060C64()
{
  result = qword_10025D960;
  if (!qword_10025D960)
  {
    sub_100003E34(&qword_10025D968, &unk_1001D2BB8);
    sub_100007120(&qword_10025D6E0, &qword_10025D6D8, &qword_1001D29B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D960);
  }

  return result;
}

unint64_t sub_100060D24()
{
  result = qword_10025D970;
  if (!qword_10025D970)
  {
    sub_100003E34(&qword_10025D790, &qword_1001D2B20);
    sub_100060E08(&qword_10025D978, &qword_10025D980, &qword_1001D2BC8, sub_10005FD50);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D970);
  }

  return result;
}

uint64_t sub_100060E08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100060E94()
{
  result = qword_10025D988;
  if (!qword_10025D988)
  {
    sub_100003E34(&qword_10025D800, &qword_1001D2B58);
    sub_100060E08(&qword_10025D990, &qword_10025D998, qword_1001D2BD0, sub_1000600EC);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D988);
  }

  return result;
}

unint64_t sub_100060FB0()
{
  result = qword_10025D9D0;
  if (!qword_10025D9D0)
  {
    sub_100003E34(&qword_10025D9A0, &qword_1001D2C78);
    sub_100007120(&qword_10025D9C8, &qword_10025D9C0, &qword_1001D2C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D9D0);
  }

  return result;
}

unint64_t sub_100061068()
{
  result = qword_10025D9D8;
  if (!qword_10025D9D8)
  {
    sub_100003E34(&qword_10025D9B8, &qword_1001D2C90);
    sub_100007120(&qword_10025D9C8, &qword_10025D9C0, &qword_1001D2C98);
    sub_100060FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D9D8);
  }

  return result;
}

uint64_t sub_100061140(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100061178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransformItemView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000611E0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100061208()
{
  result = qword_10025DA58;
  if (!qword_10025DA58)
  {
    sub_100003E34(&qword_10025DA48, &qword_1001D2CE0);
    sub_100061294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DA58);
  }

  return result;
}

unint64_t sub_100061294()
{
  result = qword_10025DA60;
  if (!qword_10025DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DA60);
  }

  return result;
}

unint64_t sub_1000612E8()
{
  result = qword_10025DA68;
  if (!qword_10025DA68)
  {
    sub_100003E34(&qword_10025DA50, &qword_1001D2CE8);
    sub_1000613A0(&qword_10025DA70, &qword_10025DA78, &qword_1001D2CF0, sub_100061454);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DA68);
  }

  return result;
}

uint64_t sub_1000613A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_10005FF28(&qword_10025DAA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100061454()
{
  result = qword_10025DA80;
  if (!qword_10025DA80)
  {
    sub_100003E34(&qword_10025DA88, &qword_1001D2CF8);
    sub_1000614E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DA80);
  }

  return result;
}

unint64_t sub_1000614E0()
{
  result = qword_10025DA90;
  if (!qword_10025DA90)
  {
    sub_100003E34(&qword_10025E140, &qword_1001D2D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DA90);
  }

  return result;
}

uint64_t sub_100061564()
{
  v1 = type metadata accessor for TransformItemView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_10000F428(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24));
  v6 = *(v0 + v4 + 40);

  v7 = v1[6];
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = v1[7];
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  sub_1000611E0(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_100061720()
{
  v1 = *(type metadata accessor for TransformItemView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 40);
  return (*(v2 + 32))(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
}

uint64_t sub_100061798(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1000617AC()
{
  result = qword_10025DB00;
  if (!qword_10025DB00)
  {
    sub_100003E34(&qword_10025DB08, &qword_1001D2D40);
    sub_100061838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DB00);
  }

  return result;
}

unint64_t sub_100061838()
{
  result = qword_10025DB10;
  if (!qword_10025DB10)
  {
    sub_100003E34(&qword_10025DB18, &qword_1001D2D48);
    sub_1000614E0();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DB10);
  }

  return result;
}

uint64_t sub_100061904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100061A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100061B34()
{
  sub_100060B04(319, qword_10025D910, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_100060B04(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for RewritingViewButtonViewModifier(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100061C04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100061C4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_100061CA4()
{
  result = qword_10025DBC0;
  if (!qword_10025DBC0)
  {
    sub_100003E34(&qword_10025DBC8, &qword_1001D2DE8);
    sub_100061068();
    sub_100007120(&qword_10025D9C8, &qword_10025D9C0, &qword_1001D2C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DBC0);
  }

  return result;
}

unint64_t sub_100061D60()
{
  result = qword_10025DBD0;
  if (!qword_10025DBD0)
  {
    sub_100003E34(&qword_10025DBD8, &qword_1001D2DF0);
    sub_100003E34(&qword_10025D9F8, &qword_1001D2CB8);
    sub_100007120(&qword_10025DA10, &qword_10025D9F8, &qword_1001D2CB8);
    swift_getOpaqueTypeConformance2();
    sub_100003E34(&qword_10025D9E0, &qword_1001D2CA0);
    sub_100007120(&qword_10025DA08, &qword_10025D9E0, &qword_1001D2CA0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DBD0);
  }

  return result;
}

unint64_t sub_100061EF8()
{
  result = qword_10025DBF0;
  if (!qword_10025DBF0)
  {
    sub_100003E34(&qword_10025DBE8, &qword_1001D2E88);
    sub_100061FB0();
    sub_100007120(&qword_10025DC28, &unk_10025DC30, &unk_1001D2EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DBF0);
  }

  return result;
}

unint64_t sub_100061FB0()
{
  result = qword_10025DBF8;
  if (!qword_10025DBF8)
  {
    sub_100003E34(&qword_10025DC00, &qword_1001D2E90);
    sub_10006203C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DBF8);
  }

  return result;
}

unint64_t sub_10006203C()
{
  result = qword_10025DC08;
  if (!qword_10025DC08)
  {
    sub_100003E34(&qword_10025DC10, &qword_1001D2E98);
    type metadata accessor for ButtonStyleConfiguration.Label();
    type metadata accessor for IconOnlyLabelStyle();
    sub_10005FF28(&qword_10025DC18, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_10005FF28(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DC08);
  }

  return result;
}

uint64_t sub_100062178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000621F0()
{
  result = qword_10025DC78;
  if (!qword_10025DC78)
  {
    sub_100003E34(&qword_10025DC58, &qword_1001D2EC8);
    sub_1000622A8();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DC78);
  }

  return result;
}

unint64_t sub_1000622A8()
{
  result = qword_10025DC80;
  if (!qword_10025DC80)
  {
    sub_100003E34(&qword_10025DC70, &qword_1001D2F10);
    sub_100007120(&qword_10025DC88, &qword_10025DC68, &qword_1001D2F08);
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DC80);
  }

  return result;
}

unint64_t sub_100062390()
{
  result = qword_10025DCB8;
  if (!qword_10025DCB8)
  {
    sub_100003E34(&qword_10025DCC0, &unk_1001D2F50);
    sub_100061EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DCB8);
  }

  return result;
}

unint64_t sub_100062418()
{
  result = qword_10025DCC8;
  if (!qword_10025DCC8)
  {
    sub_100003E34(&qword_10025DCB0, &qword_1001D2F48);
    sub_1000624A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DCC8);
  }

  return result;
}

unint64_t sub_1000624A4()
{
  result = qword_10025DCD0;
  if (!qword_10025DCD0)
  {
    sub_100003E34(&qword_10025DC60, &qword_1001D2ED0);
    sub_100003E34(&qword_10025DC58, &qword_1001D2EC8);
    sub_1000621F0();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DCD0);
  }

  return result;
}

__n128 sub_1000625BC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000625E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100062628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000626A8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v11, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_100062804@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_10000341C(&qword_10025DD08, &qword_1001D3088);
  return sub_10006286C(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_10006286C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v49 = a3;
  v50 = sub_10000341C(&qword_10025DD10, &qword_1001D3090);
  *&v46 = *(v50 - 8);
  v4 = *(v46 + 64);
  __chkstk_darwin(v50);
  v45 = &v42 - v5;
  v47 = sub_10000341C(&qword_10025DD18, &qword_1001D3098);
  v6 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v48 = (&v42 - v7);
  v8 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v43 = a1;
  v16 = swift_projectBox();
  v17 = v9[2];
  v17(v15, v16, v8);
  Bindable.wrappedValue.getter();
  v18 = v9[1];
  v18(v15, v8);
  LOBYTE(a1) = sub_100074B58();

  if (a1)
  {
    v17(v13, v16, v8);
    Bindable.projectedValue.getter();
    v18(v13, v8);
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    v18(v15, v8);
    v19 = v51;
    type metadata accessor for CompositionModel(0);
    sub_1000637F0();
    v46 = v52;
    v20 = Environment.init<A>(_:)();
    v22 = v21;
    v54[0] = 0;
    State.init(wrappedValue:)();
    v23 = v57;
    v24 = v58;
    FocusState.init<A>()();
    v25 = v57;
    v26 = v59;
    v27 = v22 & 1;
    v56 = v22 & 1;
    v55 = v58;
    v53 = v60;
    v28 = v48;
    *v48 = v20;
    *(v28 + 8) = v27;
    *(v28 + 9) = v57;
    *(v28 + 3) = *(&v57 + 3);
    v28[2] = v19;
    *(v28 + 3) = v46;
    *(v28 + 40) = v23;
    *(v28 + 41) = v51;
    *(v28 + 11) = *(&v51 + 3);
    v28[6] = v24;
    v28[7] = v25;
    *(v28 + 64) = v55;
    LODWORD(v25) = *v54;
    *(v28 + 17) = *&v54[3];
    *(v28 + 65) = v25;
    *(v28 + 9) = v26;
    *(v28 + 88) = v53;
    swift_storeEnumTagMultiPayload();
    sub_100063B44();
    sub_100063B98();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v17(v15, v16, v8);
    Bindable.wrappedValue.getter();
    v18(v15, v8);
    v30 = v57;
    swift_getKeyPath();
    v57 = v30;
    sub_1000637F0();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = *(v30 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);

    v51 = v31;
    swift_getKeyPath();
    v32 = swift_allocObject();
    *(v32 + 16) = v43;
    v33 = v44;
    v34 = *v44;
    *(v32 + 40) = v44[1];
    v35 = *(v33 + 48);
    *(v32 + 56) = *(v33 + 32);
    *(v32 + 72) = v35;
    *(v32 + 88) = *(v33 + 64);
    *(v32 + 24) = v34;

    sub_1000639AC(v33, &v57);
    sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
    sub_10000341C(&qword_10025DD20, &qword_1001D30F0);
    sub_100007120(&qword_10025DD28, &qword_10025CC10, &qword_1001D1FB0);
    v36 = sub_100003E34(&qword_10025DD30, &qword_1001D30F8);
    v37 = sub_1000639E4();
    v38 = sub_100063AF0();
    v57 = v36;
    v58 = &type metadata for RefinementsTitleImageLabelStyle;
    *&v59 = v37;
    *(&v59 + 1) = v38;
    swift_getOpaqueTypeConformance2();
    v39 = v45;
    ForEach<>.init(_:id:content:)();
    v40 = v46;
    v41 = v50;
    (*(v46 + 16))(v48, v39, v50);
    swift_storeEnumTagMultiPayload();
    sub_100063B44();
    sub_100063B98();
    _ConditionalContent<>.init(storage:)();
    return (*(v40 + 8))(v39, v41);
  }
}

uint64_t sub_100062EE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_10025DD30, &qword_1001D30F8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v17[-v8];
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  v13 = *a3;
  *(v12 + 56) = *(a3 + 16);
  v14 = *(a3 + 48);
  *(v12 + 72) = *(a3 + 32);
  *(v12 + 88) = v14;
  *(v12 + 16) = a2;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  *(v12 + 104) = *(a3 + 64);
  *(v12 + 40) = v13;
  v18 = v11;
  v19 = v10;

  sub_1000639AC(a3, v20);
  sub_10000341C(&qword_10025DD68, &unk_1001D3130);
  sub_100007120(&qword_10025DD70, &qword_10025DD68, &unk_1001D3130);
  Button.init(action:label:)();
  v15 = &v9[*(v6 + 36)];
  *v15 = 0;
  v15[8] = 0;
  sub_1000639E4();
  sub_100063AF0();
  View.labelStyle<A>(_:)();
  return sub_10000F500(v9, &qword_10025DD30, &qword_1001D30F8);
}

uint64_t sub_1000630D0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a3;
  v5 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = swift_projectBox();
  v27 = v6[2];
  v28 = v10;
  v27(v9);
  Bindable.wrappedValue.getter();
  v11 = v6[1];
  v11(v9, v5);
  v12 = v37;
  swift_getKeyPath();
  *&v37 = v12;
  sub_1000637F0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_100063D1C(v12 + v13, &v37);

  if (*(&v38 + 1))
  {
    sub_100028458(&v37, &v31);
    sub_10000F500(&v37, &unk_10025B1C0, &unk_1001CFA90);
    v14 = sub_100027874(&v31, v34);
    (v27)(v9, v28, v5);
    Bindable.wrappedValue.getter();
    v11(v9, v5);
    v15 = v39[0];
    swift_getKeyPath();
    v39[0] = v15;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *(v15 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);

    v17 = *v14;
    v19 = v29;
    v18 = v30;
    sub_10000A4AC(v29, v30, v16);

    sub_10000F4B4(&v31);
    v20 = v18;
  }

  else
  {
    sub_10000F500(&v37, &unk_10025B1C0, &unk_1001CFA90);
    v19 = v29;
    v20 = v30;
  }

  v21 = *(a4 + 32);
  v37 = *(a4 + 16);
  v38 = v21;
  v31 = v19;
  v32 = v20;

  sub_10000341C(&unk_10025F820, &qword_1001D50A0);
  Binding.wrappedValue.setter();
  v23 = *(a4 + 48);
  v22 = *(a4 + 56);
  v24 = *(a4 + 64);
  v39[0] = v23;
  *&v37 = v23;
  *(&v37 + 1) = v22;
  LOBYTE(v38) = v24;
  sub_100063D8C(v39, &v31);

  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  if ((v31 & 1) == 0)
  {
    *&v37 = v23;
    *(&v37 + 1) = v22;
    LOBYTE(v38) = v24;
    FocusState.Binding.wrappedValue.getter();
    v31 = v23;
    v32 = v22;
    v33 = v24;
    v35 = (v36 & 1) == 0;
    FocusState.Binding.wrappedValue.setter();
  }

  sub_100063DE8(v39);
}

uint64_t sub_100063454()
{
  sub_10000341C(&qword_10025C768, &unk_1001D9F80);
  sub_10004882C();
  return Label.init(title:icon:)();
}

uint64_t sub_1000634EC@<X0>(uint64_t a1@<X8>)
{
  sub_10002AC34();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_100063580@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000635C0()
{
  v1 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v9 = v0[2];
  v10 = v0[3];
  v11 = *(v0 + 64);
  v7 = *v0;
  v8 = v0[1];
  sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  swift_allocBox();
  sub_1000626A8();
  type metadata accessor for CompositionModel(0);
  sub_1000637F0();
  Bindable<A>.init(wrappedValue:)();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0x6574736567677553;
  v3._object = 0xED00002079622064;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  v4._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v4);

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  LocalizedStringKey.init(stringInterpolation:)();
  Text.init(_:tableName:bundle:comment:)();
  sub_10000341C(&qword_10025DCE0, &qword_1001D3078);
  sub_10000341C(&qword_10025DCE8, &qword_1001D3080);
  sub_100063850();
  sub_100007120(&qword_10025DD00, &qword_10025DCE8, &qword_1001D3080);
  Section<>.init(header:content:)();
}

unint64_t sub_1000637F0()
{
  result = qword_10025B210;
  if (!qword_10025B210)
  {
    type metadata accessor for CompositionModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B210);
  }

  return result;
}

unint64_t sub_100063850()
{
  result = qword_10025DCF0;
  if (!qword_10025DCF0)
  {
    sub_100003E34(&qword_10025DCE0, &qword_1001D3078);
    sub_1000638DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DCF0);
  }

  return result;
}

unint64_t sub_1000638DC()
{
  result = qword_10025DCF8;
  if (!qword_10025DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DCF8);
  }

  return result;
}

uint64_t sub_100063938()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  return _swift_deallocObject(v0, 89, 7);
}

unint64_t sub_1000639E4()
{
  result = qword_10025DD38;
  if (!qword_10025DD38)
  {
    sub_100003E34(&qword_10025DD30, &qword_1001D30F8);
    sub_100007120(&qword_10025DD40, &qword_10025DD48, &qword_1001D3100);
    sub_100063A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DD38);
  }

  return result;
}

unint64_t sub_100063A9C()
{
  result = qword_100262D00;
  if (!qword_100262D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262D00);
  }

  return result;
}

unint64_t sub_100063AF0()
{
  result = qword_10025DD50;
  if (!qword_10025DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DD50);
  }

  return result;
}

unint64_t sub_100063B44()
{
  result = qword_10025DD58;
  if (!qword_10025DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DD58);
  }

  return result;
}

unint64_t sub_100063B98()
{
  result = qword_10025DD60;
  if (!qword_10025DD60)
  {
    sub_100003E34(&qword_10025DD10, &qword_1001D3090);
    sub_100003E34(&qword_10025DD30, &qword_1001D30F8);
    sub_1000639E4();
    sub_100063AF0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DD60);
  }

  return result;
}

uint64_t sub_100063C7C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[12];

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_100063CFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100063454();
}

uint64_t sub_100063D04@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000634EC(a1);
}

uint64_t sub_100063D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_10025B1C0, &unk_1001CFA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100063E40()
{
  result = qword_10025DD78;
  if (!qword_10025DD78)
  {
    sub_100003E34(&unk_10025DD80, &unk_1001D31B0);
    sub_100063850();
    sub_100007120(&qword_10025DD00, &qword_10025DCE8, &qword_1001D3080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DD78);
  }

  return result;
}

uint64_t sub_100063F04()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

void *sub_100064044()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v5, v1);
    v6 = v18;
  }

  if (!v6)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  v18 = v6;
  sub_10006BD30(&qword_10025A910, type metadata accessor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v6 + 32);
  v10 = *(v6 + 40);

  v11 = &_swiftEmptySetSingleton;
  if ((v10 & 1) == 0 && v9 == 1)
  {
LABEL_6:
    sub_10000341C(&qword_10025E0A0, &qword_1001D3670);
    v12 = *(type metadata accessor for PresentationDetent() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001CF9E0;
    static PresentationDetent.medium.getter();
    static PresentationDetent.large.getter();
    v11 = sub_10000771C(v15);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  return v11;
}

uint64_t sub_1000642F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v121 = a1;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v119 = *(v3 - 8);
  v120 = v3;
  v4 = *(v119 + 64);
  __chkstk_darwin(v3);
  v118 = v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for CompositionResponseView();
  v99 = *(v110 - 8);
  v6 = *(v99 + 64);
  __chkstk_darwin(v110);
  v100 = v7;
  v101 = (v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v122 = *(v8 - 8);
  v9 = *(v122 + 64);
  __chkstk_darwin(v8);
  v11 = v91 - v10;
  v102 = sub_10000341C(&qword_10025DE98, &qword_1001D3258);
  v12 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v14 = v91 - v13;
  v107 = sub_10000341C(&qword_10025DEA0, &qword_1001D3260);
  v105 = *(v107 - 8);
  v15 = *(v105 + 64);
  __chkstk_darwin(v107);
  v103 = v91 - v16;
  v109 = sub_10000341C(&qword_10025DEA8, &qword_1001D3268);
  v108 = *(v109 - 8);
  v17 = *(v108 + 64);
  __chkstk_darwin(v109);
  v106 = v91 - v18;
  v115 = sub_10000341C(&qword_10025DEB0, &qword_1001D3270);
  v19 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v111 = v91 - v20;
  v21 = sub_10000341C(&qword_10025DEB8, &qword_1001D3278);
  v116 = *(v21 - 8);
  v117 = v21;
  v22 = *(v116 + 64);
  __chkstk_darwin(v21);
  v114 = v91 - v23;
  v113 = sub_10000341C(&qword_10025DEC0, &qword_1001D3280);
  v24 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v112 = v91 - v25;
  v26 = type metadata accessor for EnvironmentValues();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 8) == 1)
  {
    *&v128 = *v2;
  }

  else
  {
    v31 = *v2;

    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v27 + 8))(v30, v26);
  }

  v33 = swift_allocBox();
  v35 = v34;
  type metadata accessor for CompositionModel(0);
  v36 = sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel);
  v97 = v35;
  v94 = v36;
  Bindable<A>.init(wrappedValue:)();
  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v37 = &v14[*(sub_10000341C(&qword_10025DEC8, &qword_1001D3288) + 44)];
  sub_100065190(v33, v2);
  v38 = v2;
  v39 = v122;
  v40 = *(v122 + 16);
  v96 = v122 + 16;
  v98 = v40;
  v92 = v11;
  v40(v11, v35, v8);
  v93 = v8;
  Bindable.wrappedValue.getter();
  v41 = *(v39 + 8);
  v122 = v39 + 8;
  v95 = v41;
  v41(v11, v8);
  v42 = v128;
  swift_getKeyPath();
  *&v128 = v42;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = *(v42 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  LOBYTE(v128) = v43 == 1;
  v44 = v101;
  sub_10006AE4C(v2, v101);
  v45 = (*(v99 + 80) + 24) & ~*(v99 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v33;
  sub_10006BDB0(v44, v46 + v45, type metadata accessor for CompositionResponseView);
  v47 = sub_100007120(&qword_10025DED0, &qword_10025DE98, &qword_1001D3258);
  v104 = v33;

  v48 = v103;
  v49 = v102;
  View.onChange<A>(of:initial:_:)();

  v50 = sub_10000F500(v14, &qword_10025DE98, &qword_1001D3258);
  v101 = v91;
  __chkstk_darwin(v50);
  v91[-2] = v38;
  v91[-1] = v33;
  v51 = sub_10000341C(&qword_10025DED8, &qword_1001D32B8);
  *&v128 = v49;
  *(&v128 + 1) = &type metadata for Bool;
  v129 = v47;
  v130 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = sub_100007120(&unk_10025DEE0, &qword_10025DED8, &qword_1001D32B8);
  v54 = v106;
  v55 = v107;
  View.toolbar<A>(content:)();
  (*(v105 + 8))(v48, v55);
  v91[1] = v38;
  v56 = *(v38 + 56);
  v125 = *(v38 + 48);
  v126 = v56;
  sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
  State.projectedValue.getter();
  v57 = v129;
  *&v128 = v55;
  *(&v128 + 1) = v51;
  v129 = OpaqueTypeConformance2;
  v130 = v53;
  swift_getOpaqueTypeConformance2();
  v58 = v111;
  v59 = v109;
  View.inlineFeedback(controller:completion:)();

  (*(v108 + 8))(v54, v59);
  *(v58 + *(sub_10000341C(&unk_10025DEF0, &unk_1001D32C8) + 36)) = 0;
  v60 = v92;
  v61 = v93;
  v98(v92, v97, v93);
  Bindable.wrappedValue.getter();
  v95(v60, v61);
  v62 = v128;
  swift_getKeyPath();
  *&v128 = v62;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();

  v63 = *(v110 + 32);
  v64 = v115;
  v65 = v58 + *(v115 + 36);
  v66 = type metadata accessor for PreferredContentSizeModifier(0);
  v67 = v66[7];
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.projectedValue.getter();
  LOBYTE(v128) = 1;
  static Binding.constant(_:)();
  v68 = v125;
  v69 = v126;
  LOBYTE(OpaqueTypeConformance2) = v127;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v65 + 8) = 257;
  v70 = v65 + v66[8];
  *v70 = v68;
  *(v70 + 8) = v69;
  *(v70 + 16) = OpaqueTypeConformance2;
  v71 = (v65 + v66[9]);
  *v71 = 0xD000000000000017;
  v71[1] = 0x80000001001D31C0;
  v72 = v65 + v66[10];
  type metadata accessor for CGSize(0);
  v123 = 0;
  v124 = 0;
  State.init(wrappedValue:)();
  v73 = v129;
  *v72 = v128;
  *(v72 + 16) = v73;
  v74 = v65 + v66[11];
  LOBYTE(v123) = 0;
  State.init(wrappedValue:)();
  v75 = *(&v128 + 1);
  *v74 = v128;
  *(v74 + 8) = v75;
  v76 = v65 + v66[12];
  v123 = 0;
  LOBYTE(v124) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v77 = BYTE8(v128);
  v78 = v129;
  *v76 = v128;
  *(v76 + 8) = v77;
  *(v76 + 16) = v78;
  v79 = v65 + v66[13];
  LOBYTE(v123) = 0;
  State.init(wrappedValue:)();
  v80 = *(&v128 + 1);
  *v79 = v128;
  *(v79 + 8) = v80;
  v81 = v65 + v66[14];
  type metadata accessor for PresentationModel();
  sub_10006BD30(&qword_10025A910, type metadata accessor for PresentationModel);
  *v81 = Environment.init<A>(_:)();
  *(v81 + 8) = v82 & 1;
  v84 = v118;
  v83 = v119;
  v85 = v120;
  (*(v119 + 104))(v118, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v120);
  v86 = sub_10006B10C();
  v87 = v114;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v83 + 8))(v84, v85);
  sub_10000F500(v58, &qword_10025DEB0, &qword_1001D3270);
  LocalizedStringKey.init(stringLiteral:)();
  *&v128 = v64;
  *(&v128 + 1) = v86;
  swift_getOpaqueTypeConformance2();
  v88 = v112;
  v89 = v117;
  View.navigationTitle(_:)();

  (*(v116 + 8))(v87, v89);
  sub_10006B40C();
  View.navigationBarBackButtonHidden(_:)();
  sub_10000F500(v88, &qword_10025DEC0, &qword_1001D3280);
}

uint64_t sub_100065190(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  v9 = swift_projectBox();
  (*(v5 + 16))(v8, v9, v4);
  Bindable.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  v10 = v15;
  swift_getKeyPath();
  v15 = v10;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = a1;
  v14 = a2;
  static Axis.Set.vertical.getter();
  sub_10000341C(&qword_10025DF98, &qword_1001D33D0);
  sub_100007120(&qword_10025DFA0, &qword_10025DF98, &qword_1001D33D0);
  return ScrollView.init(_:showsIndicators:content:)();
}

uint64_t sub_100065398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  v6 = sub_10000341C(&qword_10025DFA8, &qword_1001D33D8);
  return sub_100065400(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_100065400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v261 = a2;
  v242 = a3;
  v243 = type metadata accessor for FeedbackView();
  v241 = *(v243 - 8);
  v4 = *(v241 + 64);
  v5 = __chkstk_darwin(v243);
  v232 = &v218 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v231 = &v218 - v7;
  v8 = sub_10000341C(&qword_10025DFB0, &qword_1001D33E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v258 = &v218 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v262 = &v218 - v12;
  v260 = type metadata accessor for Divider();
  v269 = *(v260 - 8);
  v13 = v269[8];
  v14 = __chkstk_darwin(v260);
  v259 = &v218 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v265 = &v218 - v16;
  v254 = type metadata accessor for CompositionResponseView();
  v251 = *(v254 - 1);
  v17 = *(v251 + 64);
  __chkstk_darwin(v254);
  v252 = v18;
  v253 = &v218 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v240 = type metadata accessor for SmallIconTitleLabelStyle(0);
  v19 = *(*(v240 - 8) + 64);
  __chkstk_darwin(v240);
  v21 = &v218 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_10000341C(&qword_10025DFB8, &qword_1001D33E8);
  v22 = *(*(v239 - 1) + 64);
  __chkstk_darwin(v239);
  v24 = &v218 - v23;
  *&v244 = sub_10000341C(&qword_10025DFC0, &qword_1001D33F0);
  v25 = *(*(v244 - 8) + 64);
  __chkstk_darwin(v244);
  v235 = &v218 - v26;
  *&v245 = sub_10000341C(&qword_10025DFC8, &qword_1001D33F8);
  v27 = *(*(v245 - 8) + 64);
  __chkstk_darwin(v245);
  v247 = &v218 - v28;
  v246 = sub_10000341C(&qword_10025DFD0, &qword_1001D3400);
  v29 = *(*(v246 - 8) + 64);
  __chkstk_darwin(v246);
  v248 = &v218 - v30;
  v249 = sub_10000341C(&qword_10025DFD8, &qword_1001D3408);
  v31 = *(*(v249 - 8) + 64);
  __chkstk_darwin(v249);
  v250 = &v218 - v32;
  v257 = sub_10000341C(&unk_10025DFE0, &unk_1001D3410);
  v268 = *(v257 - 8);
  v33 = v268[8];
  v34 = __chkstk_darwin(v257);
  v256 = &v218 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v264 = &v218 - v36;
  v37 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v218 - v40;
  v42 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v43 = *(v42 - 8);
  v44 = v43[8];
  v45 = __chkstk_darwin(v42);
  v234 = &v218 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v48 = &v218 - v47;
  v49 = sub_10000341C(&qword_10025DFF0, &qword_1001D3420);
  v50 = *(*(v49 - 8) + 64);
  v51 = __chkstk_darwin(v49 - 8);
  v255 = &v218 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v263 = &v218 - v53;
  v266 = a1;
  v54 = swift_projectBox();
  v274 = v43[2];
  v275 = v54;
  v271 = v43 + 2;
  v274(v48);
  Bindable.wrappedValue.getter();
  v55 = v43[1];
  v270 = v48;
  v267 = v42;
  v272 = v43 + 1;
  v276 = v55;
  (v55)(v48, v42);
  v56 = v289;
  swift_getKeyPath();
  *&v289 = v56;
  v273 = sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = *(v56 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  v57 = *(v56 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8);

  if (v57)
  {
    v59 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v59 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {
      *&v289 = v58;
      *(&v289 + 1) = v57;
      sub_10002AC34();
      Label<>.init<A>(_:systemImage:)();
      v60 = v263;
      (*(v38 + 32))(v263, v41, v37);
      v61 = 0;
      goto LABEL_8;
    }
  }

  v61 = 1;
  v60 = v263;
LABEL_8:
  (*(v38 + 56))(v60, v61, 1, v37);
  v62 = static Alignment.center.getter();
  v64 = v63;
  v65 = v239;
  v66 = v239[12];
  *&v24[v66] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *v24 = 0;
  *(v24 + 1) = v62;
  *(v24 + 2) = v64;
  __asm { FMOV            V0.2D, #10.0 }

  *(v24 + 24) = _Q0;
  v24[40] = 0;
  v72 = v261;
  sub_1000674C8(v261, v266, &v24[v65[11]]);
  v73 = v72 + v254[9];
  v74 = *v73;
  v75 = *(v73 + 8);
  v76 = *(v73 + 16);
  v238 = v74;
  *&v277 = v74;
  LODWORD(v237) = v75;
  BYTE8(v277) = v75;
  v236 = v76;
  *&v278 = v76;
  sub_10000341C(&qword_10025B840, &unk_1001D7B00);
  State.projectedValue.getter();
  v77 = v290;
  v78 = v291;
  *v21 = v289;
  *(v21 + 2) = v77;
  v21[24] = v78;
  v79 = *(v240 + 20);
  *&v21[v79] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_10025DFF8, &qword_10025DFB8, &qword_1001D33E8);
  sub_10006BD30(&unk_10025D780, type metadata accessor for SmallIconTitleLabelStyle);
  v80 = v235;
  View.labelStyle<A>(_:)();
  sub_10006B818(v21);
  sub_10000F500(v24, &qword_10025DFB8, &qword_1001D33E8);
  v277 = 0uLL;
  LOBYTE(v278) = 1;
  sub_10000341C(&unk_10025B980, &qword_1001D03E0);
  State.init(wrappedValue:)();
  v81 = v289;
  v82 = v291;
  v305 = v290;
  v83 = v80 + *(sub_10000341C(&unk_10025E000, &qword_1001D3488) + 36);
  *v83 = 0x10000;
  *(v83 + 8) = v81;
  *(v83 + 24) = v305;
  *(v83 + 25) = *v304;
  *(v83 + 28) = *&v304[3];
  *(v83 + 32) = v82;
  *(v80 + *(v244 + 36)) = 256;
  v84 = static Edge.Set.bottom.getter();
  if (qword_10025A748 != -1)
  {
    swift_once();
  }

  v85 = 0uLL;
  v86 = 0uLL;
  v87 = v276;
  if ((byte_10025DD98 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v86 + 1) = v88;
    *(&v85 + 1) = v89;
  }

  v240 = v86;
  v244 = v85;
  v90 = v247;
  sub_10002A894(v80, v247, &qword_10025DFC0, &qword_1001D33F0);
  v91 = v90 + *(v245 + 36);
  *v91 = v84;
  *(v91 + 24) = v240;
  *(v91 + 8) = v244;
  *(v91 + 40) = BYTE8(v81);
  *&v277 = v238;
  BYTE8(v277) = v237;
  *&v278 = v236;
  State.projectedValue.getter();
  v245 = v289;
  v92 = v290;
  v93 = v291;
  v94 = v248;
  sub_10002A894(v90, v248, &qword_10025DFC8, &qword_1001D33F8);
  v95 = v94 + *(v246 + 36);
  *v95 = v245;
  *(v95 + 16) = v92;
  *(v95 + 24) = v93;
  v96 = v270;
  v97 = v267;
  (v274)(v270, v275, v267);
  Bindable.wrappedValue.getter();
  (v87)(v96, v97);
  v98 = v289;
  swift_getKeyPath();
  *&v289 = v98;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v96) = *(v98 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  v99 = v96 == 1;
  KeyPath = swift_getKeyPath();
  v101 = swift_allocObject();
  *(v101 + 16) = v99;
  v102 = v250;
  sub_10002A894(v94, v250, &qword_10025DFD0, &qword_1001D3400);
  v103 = (v102 + *(v249 + 36));
  *v103 = KeyPath;
  v103[1] = sub_100035DEC;
  v103[2] = v101;
  v104 = v261;
  v105 = (v261 + v254[10]);
  v106 = *v105;
  v107 = *(v105 + 1);
  LOBYTE(v277) = v106;
  *(&v277 + 1) = v107;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  v108 = v253;
  sub_10006AE4C(v104, v253);
  v109 = (*(v251 + 80) + 16) & ~*(v251 + 80);
  v110 = swift_allocObject();
  sub_10006BDB0(v108, v110 + v109, type metadata accessor for CompositionResponseView);
  sub_10000341C(&qword_10025E010, &qword_1001D3498);
  sub_10006B610(&qword_10025E018, &qword_10025DFD8, &qword_1001D3408, sub_10006B8E4);
  sub_10006BBD4();
  v111 = v97;
  v112 = v270;
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_10000F500(v102, &qword_10025DFD8, &qword_1001D3408);
  Divider.init()();
  v113 = v274;
  (v274)(v112, v275, v111);
  Bindable.wrappedValue.getter();
  (v276)(v112, v111);
  v114 = v289;
  swift_getKeyPath();
  *&v289 = v114;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v254 = *(v114 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse);
  v115 = v254;

  type metadata accessor for CommonUIManager();
  sub_10006BD30(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  v253 = Environment.init<A>(_:)();
  LODWORD(v252) = v116 & 1;
  v303 = v116 & 1;
  v117 = v275;
  v113(v112, v275, v111);
  swift_retain_n();
  Bindable.wrappedValue.getter();
  (v276)(v112, v111);
  v118 = v289;
  swift_getKeyPath();
  *&v289 = v118;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v119 = v276;
  v239 = *(v118 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse);
  *&v240 = v239;

  v120 = v113;
  v121 = v119;
  v120(v112, v117, v111);
  Bindable.wrappedValue.getter();
  (v119)(v112, v111);
  v122 = v289;
  swift_getKeyPath();
  *&v289 = v122;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v123 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v124 = *(v122 + v123);

  v125 = *(v124 + 16);

  if (v125)
  {
    v126 = v234;
    v127 = v275;
    v128 = v267;
    (v274)(v234, v275, v267);
    v129 = v270;
    Bindable.projectedValue.getter();
    (v121)(v126, v128);
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    (v121)(v129, v128);
    v238 = *(&v277 + 1);
    v250 = v278;
    v251 = v277;
    type metadata accessor for CompositionModel(0);
    v249 = Environment.init<A>(_:)();
    LOBYTE(v126) = v130;
    FocusState.init<A>()();
    v237 = v290;
    v247 = v291;
    v248 = v289;
    LOBYTE(v289) = v126 & 1;
    LOBYTE(v287[0]) = BYTE8(v289);
    LODWORD(v246) = v292;
    LOBYTE(v283) = v292;
    *&v244 = v126 & 1;
    *&v245 = BYTE8(v289);
  }

  else
  {
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v237 = 0;
    v238 = 0;
    v247 = 0;
    v248 = 0;
    LODWORD(v246) = 0;
    *&v245 = 0;
    *&v244 = 0;
    v127 = v275;
  }

  static Alignment.center.getter();
  v131 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v235 = v308;
  v236 = v306;
  v233 = v311;
  v234 = v310;
  v300 = 1;
  v299 = v307;
  v298 = v309;
  v132 = type metadata accessor for FeedbackFeatureFlags();
  v291 = v132;
  v292 = sub_10006BD30(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags);
  v133 = sub_10002DB6C(&v289);
  (*(*(v132 - 8) + 104))(v133, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v132);
  LOBYTE(v132) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v289);
  if (v132)
  {
    v134 = v270;
    v135 = v267;
    v136 = v274;
    (v274)(v270, v127, v267);
    Bindable.wrappedValue.getter();
    (v121)(v134, v135);
    v137 = v289;
    swift_getKeyPath();
    *&v289 = v137;
    sub_10006BD30(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v138 = *(v137 + 40);
    *&v230 = *(v137 + 32);
    *(&v230 + 1) = v138;

    v136(v134, v275, v135);
    Bindable.wrappedValue.getter();
    v139 = v276;
    (v276)(v134, v135);
    v140 = v289;
    swift_getKeyPath();
    *&v289 = v140;
    v141 = v275;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v142 = *(v140 + 56);
    *&v229 = *(v140 + 48);
    *(&v229 + 1) = v142;

    v143 = v274;
    (v274)(v134, v141, v135);
    Bindable.wrappedValue.getter();
    (v139)(v134, v135);
    v144 = sub_1000731AC();
    v227 = v145;
    v228 = v144;

    v143(v134, v141, v135);
    Bindable.wrappedValue.getter();
    (v139)(v134, v135);
    v146 = sub_1000731C0();
    v225 = v147;
    v226 = v146;

    v143(v134, v141, v135);
    Bindable.wrappedValue.getter();
    (v139)(v134, v135);
    v148 = v289;
    swift_getKeyPath();
    *&v289 = v148;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v149 = *(v148 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString);
    if (v149)
    {
      v150 = v149;
      v151 = [v150 string];
      v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v223 = v153;
      v224 = v152;
    }

    else
    {

      v223 = 0xE000000000000000;
      v224 = 0;
    }

    v154 = v270;
    v155 = v275;
    v156 = v267;
    (v274)(v270, v275, v267);
    Bindable.wrappedValue.getter();
    v157 = v276;
    (v276)(v154, v156);
    v158 = v289;
    swift_getKeyPath();
    *&v289 = v158;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v159 = *(v158 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8);
    v221 = *(v158 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
    v222 = v159;

    v160 = *(v261 + 56);
    *&v289 = *(v261 + 48);
    *(&v289 + 1) = v160;
    sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
    State.wrappedValue.getter();
    v261 = v277;
    (v274)(v154, v155, v156);
    Bindable.wrappedValue.getter();
    (v157)(v154, v156);
    v161 = v289;
    swift_getKeyPath();
    *&v289 = v161;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v162 = *(v161 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

    v163 = 1;
    if (v162 != 1)
    {
      v164 = v270;
      v165 = v267;
      (v274)(v270, v155, v267);
      Bindable.wrappedValue.getter();
      (v276)(v164, v165);
      v166 = v289;
      swift_getKeyPath();
      *&v289 = v166;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      LODWORD(v164) = *(v166 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

      v163 = v164 == 2;
    }

    v220 = v163;
    v167 = v270;
    v168 = v267;
    (v274)(v270, v155, v267);
    Bindable.wrappedValue.getter();
    v169 = v276;
    (v276)(v167, v168);
    v170 = v289;
    swift_getKeyPath();
    *&v289 = v170;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v171 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachments;
    swift_beginAccess();
    v219 = *(v170 + v171);

    v172 = v274;
    v173 = v275;
    (v274)(v167, v275, v168);
    Bindable.wrappedValue.getter();
    (v169)(v167, v168);
    v174 = v172;
    v175 = v289;
    swift_getKeyPath();
    *&v289 = v175;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v176 = *(v175 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);

    v174(v167, v173, v168);
    Bindable.wrappedValue.getter();
    (v276)(v167, v168);
    v177 = v289;
    swift_getKeyPath();
    *&v289 = v177;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v178 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__generatedImages;
    swift_beginAccess();
    v179 = *(v177 + v178);

    v180 = v232;
    *(v232 + 25) = 0;
    v181 = *(v243 + 92);
    *(v180 + v181) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    *(v180 + 128) = xmmword_1001D31C0;
    *(v180 + 144) = 0;
    v182 = v230;
    v183 = v229;
    *(v180 + 152) = 1;
    *(v180 + 24) = v183;
    *(v180 + 8) = v182;
    v184 = v227;
    *(v180 + 40) = v228;
    *(v180 + 48) = v184;
    v185 = v225;
    *(v180 + 56) = v226;
    *(v180 + 64) = v185;
    v186 = v223;
    *(v180 + 72) = v224;
    *(v180 + 80) = v186;
    v187 = v222;
    *(v180 + 88) = v221;
    *(v180 + 96) = v187;
    *v180 = v261;
    *(v180 + 153) = v220;
    *(v180 + 154) = 2;
    *(v180 + 156) = 0;
    *&v277 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v188 = *(&v289 + 1);
    *(v180 + 208) = v289;
    *(v180 + 160) = 0u;
    *(v180 + 176) = 0u;
    *(v180 + 192) = 0;
    *(v180 + 104) = v219;
    *(v180 + 112) = v176;
    *(v180 + 120) = v179;
    *(v180 + 224) = 0;
    *(v180 + 232) = 0;
    *(v180 + 216) = v188;
    v189 = v231;
    sub_10006BDB0(v180, v231, type metadata accessor for FeedbackView);
    sub_10006BDB0(v189, v262, type metadata accessor for FeedbackView);
    v131 = 0;
  }

  v190 = v262;
  (*(v241 + 56))(v262, v131, 1, v243);
  v191 = v255;
  sub_1000081F8(v263, v255, &qword_10025DFF0, &qword_1001D3420);
  v276 = v268[2];
  v192 = v256;
  v193 = v257;
  (v276)(v256, v264, v257);
  v194 = v269[2];
  v195 = v259;
  v194(v259, v265, v260);
  LODWORD(v272) = v300;
  LODWORD(v273) = v299;
  LODWORD(v274) = v298;
  sub_1000081F8(v190, v258, &qword_10025DFB0, &qword_1001D33E0);
  v196 = v242;
  sub_1000081F8(v191, v242, &qword_10025DFF0, &qword_1001D3420);
  v197 = sub_10000341C(&qword_10025E068, &qword_1001D34F0);
  (v276)(v196 + v197[12], v192, v193);
  v198 = v260;
  v194((v196 + v197[16]), v195, v260);
  v199 = (v196 + v197[20]);
  *&v277 = v253;
  BYTE8(v277) = v252;
  HIDWORD(v277) = *&v302[3];
  *(&v277 + 9) = *v302;
  *&v278 = v254;
  BYTE8(v278) = 0;
  HIDWORD(v278) = *&v301[3];
  *(&v278 + 9) = *v301;
  v276 = sub_10006BCE0;
  *&v279 = sub_10006BCE0;
  v200 = v266;
  *(&v279 + 1) = v266;
  v281 = 0u;
  v280 = 0u;
  v275 = sub_10006BD00;
  *&v282 = sub_10006BD00;
  *(&v282 + 1) = v266;
  v201 = v278;
  *v199 = v277;
  v199[1] = v201;
  v202 = v279;
  v203 = v280;
  v204 = v282;
  v199[4] = v281;
  v199[5] = v204;
  v199[2] = v202;
  v199[3] = v203;
  v205 = v238;
  *(v196 + v197[24]) = v239;
  v206 = (v196 + v197[28]);
  *&v283 = v249;
  *(&v283 + 1) = v244;
  *&v284 = v251;
  *(&v284 + 1) = v205;
  *&v285 = v250;
  *(&v285 + 1) = v248;
  *&v286[0] = v245;
  v207 = v237;
  *(&v286[0] + 1) = v237;
  *&v286[1] = v247;
  BYTE8(v286[1]) = v246;
  v208 = v284;
  *v206 = v283;
  v206[1] = v208;
  v209 = v286[0];
  v206[2] = v285;
  v206[3] = v209;
  *(v206 + 57) = *(v286 + 9);
  v210 = v196 + v197[32];
  *v210 = 0;
  *(v210 + 8) = v272;
  *(v210 + 16) = v236;
  *(v210 + 24) = v273;
  *(v210 + 32) = v235;
  *(v210 + 40) = v274;
  v211 = v233;
  *(v210 + 48) = v234;
  *(v210 + 56) = v211;
  v212 = v258;
  sub_1000081F8(v258, v196 + v197[36], &qword_10025DFB0, &qword_1001D33E0);
  sub_1000081F8(&v277, &v289, &qword_10025E070, &qword_1001D34F8);
  v274 = v240;
  sub_1000081F8(&v283, &v289, &unk_10025E078, &qword_1001D3500);
  sub_10000F500(v262, &qword_10025DFB0, &qword_1001D33E0);
  v213 = v269[1];
  ++v269;
  v214 = v198;
  v213(v265, v198);
  v215 = v268[1];
  ++v268;
  v216 = v257;
  v215(v264, v257);
  sub_10000F500(v263, &qword_10025DFF0, &qword_1001D3420);
  sub_10000F500(v212, &qword_10025DFB0, &qword_1001D33E0);
  v287[0] = v249;
  v287[1] = v244;
  v287[2] = v251;
  v287[3] = v205;
  v287[4] = v250;
  v287[5] = v248;
  v287[6] = v245;
  v287[7] = v207;
  v287[8] = v247;
  v288 = v246;
  sub_10000F500(v287, &unk_10025E078, &qword_1001D3500);

  *&v289 = v253;
  BYTE8(v289) = v252;
  *(&v289 + 9) = *v302;
  HIDWORD(v289) = *&v302[3];
  v290 = v254;
  LOBYTE(v291) = 0;
  *(&v291 + 1) = *v301;
  HIDWORD(v291) = *&v301[3];
  v292 = v276;
  v293 = v200;
  v294 = 0u;
  v295 = 0u;
  v296 = v275;
  v297 = v200;
  sub_10000F500(&v289, &qword_10025E070, &qword_1001D34F8);
  v213(v259, v214);
  v215(v256, v216);
  return sub_10000F500(v255, &qword_10025DFF0, &qword_1001D3420);
}

uint64_t sub_1000674C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a3;
  v70 = type metadata accessor for EnvironmentValues();
  v69 = *(v70 - 8);
  v5 = *(v69 + 64);
  __chkstk_darwin(v70);
  v68 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v7 = *(v73 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v73);
  v10 = &v68 - v9;
  v11 = sub_10000341C(&qword_10025E0A8, &qword_1001D36A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v84 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v89 = &v68 - v15;
  v16 = type metadata accessor for CompositionResponseView();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000341C(&qword_10025E0B0, &qword_1001D36A8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v68 - v22;
  v24 = sub_10000341C(&qword_10025E0B8, &qword_1001D36B0);
  v77 = *(v24 - 8);
  v78 = v24;
  v25 = *(v77 + 64);
  v26 = __chkstk_darwin(v24);
  v82 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v83 = &v68 - v29;
  v30 = __chkstk_darwin(v28);
  v80 = &v68 - v31;
  __chkstk_darwin(v30);
  v33 = &v68 - v32;
  v88 = a1;
  sub_10006AE4C(a1, v19);
  v34 = *(v17 + 80);
  v35 = (v34 + 16) & ~v34;
  v76 = v35 + v18;
  v36 = (v35 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = v34;
  v37 = swift_allocObject();
  v87 = v35;
  sub_10006BDB0(v19, v37 + v35, type metadata accessor for CompositionResponseView);
  v72 = v36;
  *(v37 + v36) = a2;

  v38 = sub_10000341C(&qword_10025E0C0, &qword_1001D36B8);
  v74 = sub_10006BFC8();
  v75 = v38;
  Button.init(action:label:)();
  v23[*(v20 + 36)] = 0;
  v39 = sub_10006C0D4();
  v81 = v33;
  v79 = v20;
  View.accessibilityIdentifier(_:)();
  sub_10000F500(v23, &qword_10025E0B0, &qword_1001D36A8);
  v71 = a2;
  v40 = swift_projectBox();
  v41 = v73;
  (*(v7 + 16))(v10, v40, v73);
  Bindable.wrappedValue.getter();
  (*(v7 + 8))(v10, v41);
  v42 = v90;
  swift_getKeyPath();
  v90 = v42;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v37) = *(v42 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent);

  if (v37 == 1)
  {
    v73 = v39;
    v43 = *v88;
    v44 = *(v88 + 8);

    if ((v44 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v45 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v46 = v68;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v69 + 8))(v46, v70);
      v43 = v90;
    }

    swift_getKeyPath();
    v90 = v43;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v47 = *(v43 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount);

    v48 = v47 > 0;
    v49 = v88;
    sub_10006AE4C(v88, v19);
    v50 = v72;
    v51 = v19;
    v52 = swift_allocObject();
    sub_10006BDB0(v19, v52 + v87, type metadata accessor for CompositionResponseView);
    v53 = v71;
    *(v52 + v50) = v71;
    __chkstk_darwin(v53);
    *(&v68 - 16) = v48;

    Button.init(action:label:)();
    v54 = v79;
    v55 = v80;
    v23[*(v79 + 36)] = 0;
    View.accessibilityIdentifier(_:)();
    v56 = v49;
    sub_10000F500(v23, &qword_10025E0B0, &qword_1001D36A8);
    v57 = v89;
    sub_10002A894(v55, v89, &qword_10025E0B8, &qword_1001D36B0);
    v58 = 0;
  }

  else
  {
    v58 = 1;
    v56 = v88;
    v57 = v89;
    v54 = v79;
    v55 = v80;
    v51 = v19;
  }

  (*(v77 + 56))(v57, v58, 1, v78);
  sub_10006AE4C(v56, v51);
  v59 = swift_allocObject();
  sub_10006BDB0(v51, v59 + v87, type metadata accessor for CompositionResponseView);
  Button.init(action:label:)();
  v23[*(v54 + 36)] = 0;
  View.accessibilityIdentifier(_:)();
  sub_10000F500(v23, &qword_10025E0B0, &qword_1001D36A8);
  v60 = v81;
  v61 = v83;
  sub_1000081F8(v81, v83, &qword_10025E0B8, &qword_1001D36B0);
  v62 = v84;
  sub_1000081F8(v57, v84, &qword_10025E0A8, &qword_1001D36A0);
  v63 = v82;
  sub_1000081F8(v55, v82, &qword_10025E0B8, &qword_1001D36B0);
  v64 = v55;
  v65 = v85;
  sub_1000081F8(v61, v85, &qword_10025E0B8, &qword_1001D36B0);
  v66 = sub_10000341C(&qword_10025E100, &qword_1001D36F0);
  sub_1000081F8(v62, v65 + *(v66 + 48), &qword_10025E0A8, &qword_1001D36A0);
  sub_1000081F8(v63, v65 + *(v66 + 64), &qword_10025E0B8, &qword_1001D36B0);
  sub_10000F500(v64, &qword_10025E0B8, &qword_1001D36B0);
  sub_10000F500(v89, &qword_10025E0A8, &qword_1001D36A0);
  sub_10000F500(v60, &qword_10025E0B8, &qword_1001D36B0);
  sub_10000F500(v63, &qword_10025E0B8, &qword_1001D36B0);
  sub_10000F500(v62, &qword_10025E0A8, &qword_1001D36A0);
  return sub_10000F500(v61, &qword_10025E0B8, &qword_1001D36B0);
}

uint64_t sub_100067EFC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100063F04();
  sub_100153D18();

  v14 = *a1;
  v15 = *(a1 + 8);

  if ((v15 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v10 + 8))(v13, v9);
    v14 = v30;
  }

  swift_getKeyPath();
  v30 = v14;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v14 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse);
  v18 = v17;

  v29 = a2;
  if (v17)
  {
    v19 = swift_projectBox();
    v20 = *(v5 + 16);
    v20(v8, v19, v4);
    Bindable.wrappedValue.getter();
    v28 = v5;
    (*(v5 + 8))(v8, v4);
    v21 = v30;
    swift_getKeyPath();
    v30 = v21;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong copyText:v18];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v5 = v28;
  }

  else
  {
    v20 = *(v5 + 16);
  }

  v23 = swift_projectBox();
  v20(v8, v23, v4);
  Bindable.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  v24 = v30;
  swift_getKeyPath();
  v30 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = swift_unknownObjectWeakLoadStrong();

  if (v25)
  {
    [v25 endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100068340()
{
  v0 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = v19 - v3;
  sub_100063F04();
  sub_100153D18();

  v5 = swift_projectBox();
  v6 = v1 + 2;
  v23 = v1[2];
  v23(v4, v5, v0);
  Bindable.wrappedValue.getter();
  v9 = v1[1];
  v7 = v1 + 1;
  v8 = v9;
  v9(v4, v0);
  v10 = v24;
  swift_getKeyPath();
  v24 = v10;
  v22 = sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse);
  v21 = v11;
  v12 = v23;

  if (v11)
  {
    v20 = v5;
    v19[1] = v6;
    v12(v4, v5, v0);
    Bindable.wrappedValue.getter();
    v19[2] = v7;
    v8(v4, v0);
    v13 = v24;
    swift_getKeyPath();
    v24 = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v15 = v21;
      [Strong replaceSelectionWithText:v21];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v5 = v20;
    v12 = v23;
  }

  v12(v4, v5, v0);
  Bindable.wrappedValue.getter();
  v8(v4, v0);
  v16 = v24;
  swift_getKeyPath();
  v24 = v16;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = swift_unknownObjectWeakLoadStrong();

  if (v17)
  {
    [v17 endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10006869C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100068728(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CompositionResponseView() + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  return State.wrappedValue.setter();
}

uint64_t sub_1000687B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025E088, &qword_1001D3658);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v33 - v6;
  v8 = sub_10000341C(&unk_10025E090, &qword_1001D3660);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v33 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v33[1] = a1;
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v33[0] = v12;
    v20 = v9;
    v21 = v7;
    v22 = v8;
    v23 = a2;
    v24 = v19;
    os_log(_:dso:log:_:_:)();

    a2 = v23;
    v8 = v22;
    v7 = v21;
    v9 = v20;
    v12 = v33[0];
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v17, v13);
    v18 = v34;
  }

  swift_getKeyPath();
  v34 = v18;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *&v18[OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse];
  v26 = v25;

  if (v25)
  {
    sub_10000341C(&qword_100264130, &qword_1001D3668);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1001CF9D0;
    *(v27 + 32) = UIActivityTypeCopyToPasteboard;
    v34 = v26;
    v35 = v27;
    v28 = v26;
    v29 = UIActivityTypeCopyToPasteboard;
    sub_100064044();
    v30 = *(type metadata accessor for CompositionResponseView() + 44);
    sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);
    State.projectedValue.getter();
    sub_10006BC84();
    View.presentationDetents(_:selection:)();

    sub_10000F500(v7, &qword_10025E088, &qword_1001D3658);

    (*(v9 + 32))(a2, v12, v8);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  return (*(v9 + 56))(a2, v31, 1, v8);
}

uint64_t sub_100068BB0(uint64_t a1, char a2)
{
  v3 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = swift_projectBox();
  (*(v4 + 16))(v7, v8, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v7, v3);
  v9 = v13;
  swift_getKeyPath();
  v13 = v9;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"setIsHostingControllerHeightConstraintActive:"])
    {
      [Strong setIsHostingControllerHeightConstraintActive:a2 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100068D80(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v8 = *a2;
  v9 = swift_projectBox();
  (*(v4 + 16))(v7, v9, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v7, v3);
  v10 = v16;
  swift_getKeyPath();
  v16 = v10;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing);

  if ((v11 & 1) == 0)
  {
    if (v8)
    {
      sub_100063F04();
      sub_100153D78();
    }

    v13 = sub_100063F04();
    swift_getKeyPath();
    v16 = v13;
    sub_10006BD30(&qword_10025B1E0, type metadata accessor for CommonUIManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v13 + 81);

    if (v8 != v14)
    {
      sub_100063F04();
      sub_1001537FC(v8);
    }
  }

  return result;
}

uint64_t sub_100068FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v25 = sub_10000341C(&qword_10025DF30, &qword_1001D3308);
  v5 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v7 = &v23 - v6;
  v24 = sub_10000341C(&qword_10025DF38, &qword_1001D3310);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v24);
  v11 = &v23 - v10;
  v12 = type metadata accessor for ToolbarItemPlacement();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_10000341C(&qword_10025DF40, &qword_1001D3318);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  static ToolbarItemPlacement.cancellationAction.getter();
  v29 = a1;
  v30 = a2;
  sub_10000341C(&qword_10025DF48, &unk_1001D3320);
  sub_10006B520();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v27 = a1;
  v28 = a2;
  sub_10000341C(&qword_10025DF70, &unk_1001D3330);
  sub_10006B610(&qword_10025DF78, &qword_10025DF70, &unk_1001D3330, sub_10006B6C0);
  ToolbarItem<>.init(placement:content:)();
  v19 = *(v25 + 48);
  (*(v15 + 16))(v7, v18, v14);
  v20 = &v7[v19];
  v21 = v24;
  (*(v8 + 16))(v20, v11, v24);
  TupleToolbarContent.init(_:)();
  (*(v8 + 8))(v11, v21);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_100069328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v19 = a3;
  v4 = type metadata accessor for CompositionResponseView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  v17[1] = LocalizedStringKey.init(stringLiteral:)();
  sub_10006AE4C(a1, v7);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  sub_10006BDB0(v7, v15 + v13, type metadata accessor for CompositionResponseView);
  *(v15 + v14) = v18;

  Button<>.init(_:action:)();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100069590()
{
  v19 = type metadata accessor for NavigationPath();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v19);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  sub_100063F04();
  sub_100153D18();

  v9 = swift_projectBox();
  v17 = v5[2];
  v18 = v9;
  v17(v8);
  Bindable.wrappedValue.getter();
  v16 = v5[1];
  v16(v8, v4);
  sub_10007CE14(0, 0, 0, 0);

  v10 = *(type metadata accessor for CompositionResponseView() + 32);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v11 = NavigationPath.count.getter();
  (*(v0 + 8))(v3, v19);
  if (v11 < 1)
  {
    (v17)(v8, v18, v4);
    Bindable.wrappedValue.getter();
    v16(v8, v4);
    v13 = v20;
    swift_getKeyPath();
    v20 = v13;
    sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong endWritingTools];
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    Binding.wrappedValue.getter();
    NavigationPath.removeLast(_:)(1);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000698D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v29 = a3;
  v30 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v30);
  v7 = &v28 - v6;
  v8 = type metadata accessor for CompositionResponseView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = type metadata accessor for ButtonRole();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_10000341C(&qword_10025C808, &unk_1001D3340);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  static ButtonRole.confirm.getter();
  sub_10006AE4C(a1, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_10006BDB0(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for CompositionResponseView);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;

  Button<>.init(role:action:)();
  sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340);
  v20 = v29;
  View.accessibilityIdentifier(_:)();
  (*(v14 + 8))(v17, v13);
  v21 = swift_projectBox();
  v22 = v30;
  (*(v4 + 16))(v7, v21, v30);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v7, v22);
  v23 = v31;
  swift_getKeyPath();
  v31 = v23;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v19) = *(v23 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  LOBYTE(v18) = v19 == 1;
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v18;
  result = sub_10000341C(&qword_10025DF70, &unk_1001D3330);
  v27 = (v20 + *(result + 36));
  *v27 = KeyPath;
  v27[1] = sub_10002AAC0;
  v27[2] = v25;
  return result;
}

uint64_t sub_100069D28()
{
  v0 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  sub_100063F04();
  sub_100153D18();

  v5 = swift_projectBox();
  v6 = v1[2];
  v6(v4, v5, v0);
  Bindable.wrappedValue.getter();
  v7 = v1[1];
  v7(v4, v0);
  sub_10007CE14(0, 0, 0, 0);

  v6(v4, v5, v0);
  Bindable.wrappedValue.getter();
  v7(v4, v0);
  v8 = v12;
  swift_getKeyPath();
  v12 = v8;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100069F58()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0x4024000000000000;
  if (v1 == 6)
  {
    v2 = 0x401C000000000000;
  }

  qword_10025DD90 = v2;
  byte_10025DD98 = 0;
}

uint64_t sub_100069FCC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PresentationDetent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  v16 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v33 - v18;
  type metadata accessor for CompositionModel(0);
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel);
  *a4 = Environment.init<A>(_:)();
  *(a4 + 8) = v20 & 1;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2 & 1;
  type metadata accessor for PresentationModel();
  sub_10006BD30(&qword_10025A910, type metadata accessor for PresentationModel);
  *(a4 + 32) = Environment.init<A>(_:)();
  *(a4 + 40) = v21 & 1;
  v22 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
  v34 = FBKEvaluationController.init(subject:)();
  State.init(wrappedValue:)();
  v24 = v37;
  *(a4 + 48) = v36;
  *(a4 + 56) = v24;
  v25 = type metadata accessor for CompositionResponseView();
  sub_10002A894(a3, a4 + v25[8], &qword_1002632E0, &qword_1001D11A0);
  v26 = a4 + v25[9];
  v34 = 0;
  v35 = 1;
  sub_10000341C(&unk_10025B1D0, &qword_1001D31D0);
  State.init(wrappedValue:)();
  v27 = v37;
  v28 = v38;
  *v26 = v36;
  *(v26 + 8) = v27;
  *(v26 + 16) = v28;
  v29 = a4 + v25[10];
  LOBYTE(v34) = 0;
  State.init(wrappedValue:)();
  v30 = v37;
  *v29 = v36;
  *(v29 + 8) = v30;
  v31 = v25[11];
  static PresentationDetent.medium.getter();
  (*(v9 + 16))(v13, v15, v8);
  State.init(wrappedValue:)();
  return (*(v9 + 8))(v15, v8);
}

uint64_t type metadata accessor for CompositionResponseView()
{
  result = qword_10025DE08;
  if (!qword_10025DE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006A3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10006A4F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10006A630()
{
  sub_10006A940(319, &qword_10025DE18, type metadata accessor for CompositionModel, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10006A940(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10006A88C(319, &qword_10025B470, &unk_10025D690, &qword_1001D2750, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10006A940(319, &unk_100262AA0, &type metadata accessor for FBKEvaluationController, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_10006A940(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
          if (v4 <= 0x3F)
          {
            sub_10006A88C(319, &unk_10025B4D0, &unk_10025B1D0, &qword_1001D31D0, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_10006A8F0();
              if (v6 <= 0x3F)
              {
                sub_10006A940(319, &unk_10025DE48, &type metadata accessor for PresentationDetent, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10006A88C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003E34(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10006A8F0()
{
  if (!qword_10025DE40)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10025DE40);
    }
  }
}

void sub_10006A940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10006A9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025E110, &qword_1001D37B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_10000341C(&qword_10025E118, &qword_1001D37C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  if (a1)
  {
    v13 = sub_10009B2C4();
    v14 = sub_10006BE18(v13);
    v17[0] = a2;
    v15 = v14;

    v17[1] = v15;
    swift_getKeyPath();
    sub_10000341C(&qword_10025E148, &qword_1001D37F8);
    sub_10000341C(&unk_10025E130, &unk_1001D37C8);
    sub_100007120(&qword_10025E150, &qword_10025E148, &qword_1001D37F8);
    sub_10006C934();
    ForEach<>.init(_:id:content:)();
    (*(v5 + 16))(v12, v8, v4);
    swift_storeEnumTagMultiPayload();
    sub_10006C8B0();
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10006C8B0();
    return _ConditionalContent<>.init(storage:)();
  }
}

double sub_10006AC70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 8);
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v10 = Image.resizable(capInsets:resizingMode:)();
  (*(v5 + 8))(v8, v4);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v13[40] = v16;
  *&v13[24] = v15;
  *&v13[8] = v14;
  v11 = *&v13[18];
  *(a2 + 18) = *&v13[2];
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v11;
  result = *&v13[34];
  *(a2 + 50) = *&v13[34];
  *(a2 + 64) = *&v13[48];
  return result;
}

uint64_t sub_10006ADEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_10000341C(&qword_10025E108, &qword_1001D37B0);
  return sub_10006A9C4(v3, a1 + *(v4 + 44));
}

uint64_t sub_10006AE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositionResponseView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006AEB0()
{
  v1 = (type metadata accessor for CompositionResponseView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);
  v9 = *(v0 + v3 + 40);
  j__swift_release();

  v10 = *(v0 + v3 + 56);

  v11 = (v0 + v3 + v1[10]);
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v15 = type metadata accessor for NavigationPath();
  (*(*(v15 - 8) + 8))(&v11[v14], v15);
  v16 = *(v0 + v3 + v1[11] + 16);

  v17 = *(v0 + v3 + v1[12] + 8);

  v18 = v0 + v3 + v1[13];
  v19 = type metadata accessor for PresentationDetent();
  (*(*(v19 - 8) + 8))(v18, v19);
  v20 = *(v18 + *(sub_10000341C(&qword_10025DDA8, &qword_1001D31D8) + 28));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006B078(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(*(type metadata accessor for CompositionResponseView() - 8) + 80);
  v6 = *(v2 + 16);

  return sub_100068D80(a1, a2);
}

unint64_t sub_10006B10C()
{
  result = qword_10025DF00;
  if (!qword_10025DF00)
  {
    sub_100003E34(&qword_10025DEB0, &qword_1001D3270);
    sub_10006B1C8();
    sub_10006BD30(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DF00);
  }

  return result;
}

unint64_t sub_10006B1C8()
{
  result = qword_10025DF08;
  if (!qword_10025DF08)
  {
    sub_100003E34(&unk_10025DEF0, &unk_1001D32C8);
    sub_100003E34(&qword_10025DEA8, &qword_1001D3268);
    sub_100003E34(&qword_10025DEA0, &qword_1001D3260);
    sub_100003E34(&qword_10025DED8, &qword_1001D32B8);
    sub_100003E34(&qword_10025DE98, &qword_1001D3258);
    sub_100007120(&qword_10025DED0, &qword_10025DE98, &qword_1001D3258);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DEE0, &qword_10025DED8, &qword_1001D32B8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10006B3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DF08);
  }

  return result;
}

unint64_t sub_10006B3B8()
{
  result = qword_10025DF10;
  if (!qword_10025DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DF10);
  }

  return result;
}

unint64_t sub_10006B40C()
{
  result = qword_10025DF20;
  if (!qword_10025DF20)
  {
    sub_100003E34(&qword_10025DEC0, &qword_1001D3280);
    sub_100003E34(&qword_10025DEB8, &qword_1001D3278);
    sub_100003E34(&qword_10025DEB0, &qword_1001D3270);
    sub_10006B10C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000489E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DF20);
  }

  return result;
}

unint64_t sub_10006B520()
{
  result = qword_10025DF50;
  if (!qword_10025DF50)
  {
    sub_100003E34(&qword_10025DF48, &unk_1001D3320);
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
    sub_10006BD30(&qword_10025DAA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DF50);
  }

  return result;
}

uint64_t sub_10006B610(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006B6C0()
{
  result = qword_10025DF80;
  if (!qword_10025DF80)
  {
    sub_100003E34(&unk_100262BE0, &unk_1001D7D60);
    sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340);
    sub_10006BD30(&qword_10025DAA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DF80);
  }

  return result;
}

uint64_t sub_10006B818(uint64_t a1)
{
  v2 = type metadata accessor for SmallIconTitleLabelStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006B874@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CompositionResponseView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000687B4(v4, a1);
}

unint64_t sub_10006B8E4()
{
  result = qword_10025E020;
  if (!qword_10025E020)
  {
    sub_100003E34(&qword_10025DFD0, &qword_1001D3400);
    sub_10006B970();
    sub_100029424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E020);
  }

  return result;
}

unint64_t sub_10006B970()
{
  result = qword_10025E028;
  if (!qword_10025E028)
  {
    sub_100003E34(&qword_10025DFC8, &qword_1001D33F8);
    sub_10006B9FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E028);
  }

  return result;
}

unint64_t sub_10006B9FC()
{
  result = qword_10025E030;
  if (!qword_10025E030)
  {
    sub_100003E34(&qword_10025DFC0, &qword_1001D33F0);
    sub_10006BA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E030);
  }

  return result;
}

unint64_t sub_10006BA88()
{
  result = qword_10025E038;
  if (!qword_10025E038)
  {
    sub_100003E34(&unk_10025E000, &qword_1001D3488);
    sub_100003E34(&qword_10025DFB8, &qword_1001D33E8);
    type metadata accessor for SmallIconTitleLabelStyle(255);
    sub_100007120(&qword_10025DFF8, &qword_10025DFB8, &qword_1001D33E8);
    sub_10006BD30(&unk_10025D780, type metadata accessor for SmallIconTitleLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E038);
  }

  return result;
}

unint64_t sub_10006BBD4()
{
  result = qword_10025E050;
  if (!qword_10025E050)
  {
    sub_100003E34(&qword_10025E010, &qword_1001D3498);
    sub_10006BC84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E050);
  }

  return result;
}

unint64_t sub_10006BC84()
{
  result = qword_1002640E0;
  if (!qword_1002640E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002640E0);
  }

  return result;
}

uint64_t sub_10006BD30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006BDB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006BE18(uint64_t result)
{
  v1 = *(result + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v3);
      if (v4)
      {
        v8 = *(v6 + 8 * v3);

        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v10 = *(v2 + 3);
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        sub_10000341C(&qword_10025E158, &qword_1001D3800);
        v13 = swift_allocObject();
        v14 = j__malloc_size(v13);
        v15 = v14 - 32;
        if (v14 < 32)
        {
          v15 = v14 - 17;
        }

        v16 = v15 >> 4;
        *(v13 + 2) = v12;
        *(v13 + 3) = 2 * (v15 >> 4);
        v17 = v13 + 32;
        v18 = *(v2 + 3) >> 1;
        v5 = &v13[16 * v18 + 32];
        v19 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        if (*(v2 + 2))
        {
          v20 = v2 + 32;
          if (v13 != v2 || v17 >= &v20[16 * v18])
          {
            memmove(v17, v20, 16 * v18);
          }

          *(v2 + 2) = 0;
        }

        else
        {
        }

        v2 = v13;
        v9 = __OFSUB__(v19, 1);
        v4 = v19 - 1;
        if (v9)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v21 = *(v2 + 3);
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v9 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v9)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v23;
  }

  return v2;
}

unint64_t sub_10006BFC8()
{
  result = qword_10025E0C8;
  if (!qword_10025E0C8)
  {
    sub_100003E34(&qword_10025E0C0, &qword_1001D36B8);
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
    sub_10006C080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E0C8);
  }

  return result;
}

unint64_t sub_10006C080()
{
  result = qword_10025E0D8;
  if (!qword_10025E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E0D8);
  }

  return result;
}

unint64_t sub_10006C0D4()
{
  result = qword_10025E0E0;
  if (!qword_10025E0E0)
  {
    sub_100003E34(&qword_10025E0B0, &qword_1001D36A8);
    sub_100007120(&qword_10025E0E8, &qword_10025E0F0, &qword_1001D36C0);
    sub_10006C18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E0E0);
  }

  return result;
}

unint64_t sub_10006C18C()
{
  result = qword_10025E0F8;
  if (!qword_10025E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E0F8);
  }

  return result;
}

uint64_t sub_10006C1EC()
{
  v1 = (type metadata accessor for CompositionResponseView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 32);
  v8 = *(v0 + v3 + 40);
  j__swift_release();

  v9 = *(v0 + v3 + 56);

  v10 = (v0 + v3 + v1[10]);
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v14 = type metadata accessor for NavigationPath();
  (*(*(v14 - 8) + 8))(&v10[v13], v14);
  v15 = *(v0 + v3 + v1[11] + 16);

  v16 = *(v0 + v3 + v1[12] + 8);

  v17 = v0 + v3 + v1[13];
  v18 = type metadata accessor for PresentationDetent();
  (*(*(v18 - 8) + 8))(v17, v18);
  v19 = *(v17 + *(sub_10000341C(&qword_10025DDA8, &qword_1001D31D8) + 28));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006C3AC()
{
  v1 = *(type metadata accessor for CompositionResponseView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100068728(v2);
}

uint64_t sub_10006C418()
{
  v1 = (type metadata accessor for CompositionResponseView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v5 + 16);

  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  j__swift_release();

  v10 = *(v5 + 56);

  v11 = (v5 + v1[10]);
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v15 = type metadata accessor for NavigationPath();
  (*(*(v15 - 8) + 8))(&v11[v14], v15);
  v16 = *(v5 + v1[11] + 16);

  v17 = *(v5 + v1[12] + 8);

  v18 = v5 + v1[13];
  v19 = type metadata accessor for PresentationDetent();
  (*(*(v19 - 8) + 8))(v18, v19);
  v20 = *(v18 + *(sub_10000341C(&qword_10025DDA8, &qword_1001D31D8) + 28));

  v21 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10006C604(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CompositionResponseView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_10006C728@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 16))
  {
    v3 = 19;
  }

  else
  {
    v3 = 23;
  }

  sub_100125454(v3);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10006C774(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10006C7D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10006C830()
{
  sub_100003E34(&qword_10025DEC0, &qword_1001D3280);
  sub_10006B40C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10006C8B0()
{
  result = qword_10025E120;
  if (!qword_10025E120)
  {
    sub_100003E34(&qword_10025E110, &qword_1001D37B8);
    sub_10006C934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E120);
  }

  return result;
}

unint64_t sub_10006C934()
{
  result = qword_10025E128;
  if (!qword_10025E128)
  {
    sub_100003E34(&unk_10025E130, &unk_1001D37C8);
    sub_1000614E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E128);
  }

  return result;
}

uint64_t sub_10006CA18()
{
  sub_10002D804();
  result = OS_os_log.init(subsystem:category:)();
  qword_10025E170 = result;
  return result;
}

const char *sub_10006CA84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    if (a1 > 4u)
    {
      if (a1 <= 6u)
      {
        if (a1 == 5)
        {
          return 0;
        }

        else
        {
          return "SummaryGeneration";
        }
      }

      v5 = "TransformGeneration";
      v6 = "TransformGeneration";
      if (a1 != 8)
      {
        v6 = "TransformGeneration";
      }

      v7 = a1 == 7;
    }

    else
    {
      if (a1 <= 1u)
      {
        if (a1)
        {
          return "ProofreadGeneration";
        }

        else
        {
          return "RewriteGeneration";
        }
      }

      v5 = "ToneAdjustGeneration";
      v6 = "ToneAdjustGeneration";
      if (a1 != 3)
      {
        v6 = "ToneAdjustGeneration";
      }

      v7 = a1 == 2;
    }

    if (v7)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  if (a4 == 1)
  {
    return "Composition";
  }

  if (a3 | a2 | a1 && a1 == 1 && !(a3 | a2))
  {
    return "ProofreadGeneration";
  }

  return 0;
}

uint64_t sub_10006CC20(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v26 = a4;
  v29 = a1;
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A700 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F34C(v13, qword_100276F68);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v28 = a3;
  v27 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = StaticString.description.getter();
    v20 = v8;
    v21 = sub_10002510C(v18, v19, &v30);

    *(v17 + 4) = v21;
    v8 = v20;
    *(v17 + 12) = 2080;
    v22 = v26;
    *(v17 + 14) = sub_10002510C(v26, a5, &v30);
    _os_log_impl(&_mh_execute_header, v14, v15, "End signpost for %s, result = %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v22 = v26;
  }

  static os_signpost_type_t.end.getter();
  if (qword_10025A750 != -1)
  {
    swift_once();
  }

  sub_10000341C(&qword_10025BA50, &qword_1001D0860);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001CF9D0;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_10002D7B0();
  *(v23 + 32) = v22;
  *(v23 + 40) = a5;

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10006CF60(uint64_t a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A700 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F34C(v7, qword_100276F68);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v20 = a1;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v19 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    v14 = StaticString.description.getter();
    v16 = sub_10002510C(v14, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Begin signpost for %s", v12, 0xCu);
    sub_10000F4B4(v13);

    v2 = v19;
  }

  static os_signpost_type_t.begin.getter();
  if (qword_10025A750 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v3 + 8))(v6, v2);
}

__n128 sub_10006D1E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10006D204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006D24C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006D2D0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v11, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_10006D42C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimaryButtonStyle(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v74 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v73 = *(v74 - 8);
  v10 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = &v69 - v11;
  v76 = sub_10000341C(&qword_10025E1B0, &qword_1001D3970);
  v12 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v77 = &v69 - v13;
  v14 = sub_10000341C(&qword_10025E1B8, &qword_1001D3978);
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = *(v80 + 64);
  __chkstk_darwin(v14);
  v75 = &v69 - v16;
  v17 = sub_10000341C(&qword_10025E1C0, &qword_1001D3980);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v79 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v82 = &v69 - v21;
  v22 = sub_10000341C(&qword_10025E1C8, &qword_1001D3988);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  v25 = __chkstk_darwin(v22);
  v78 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v69 - v27;
  *v28 = static HorizontalAlignment.center.getter();
  *(v28 + 1) = 0;
  v28[16] = 0;
  v29 = sub_10000341C(&unk_10025E1D0, &unk_1001D3990);
  sub_10006DCCC(a1, &v28[*(v29 + 44)]);
  v30 = &v28[*(v23 + 44)];
  v31 = *(type metadata accessor for RoundedRectangle() + 20);
  v32 = enum case for RoundedCornerStyle.continuous(_:);
  v33 = type metadata accessor for RoundedCornerStyle();
  (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
  __asm { FMOV            V0.2D, #10.0 }

  *v30 = _Q0;
  if (qword_10025A7E8 != -1)
  {
    swift_once();
  }

  v39 = qword_100277198;
  v40 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v30[*(v40 + 52)] = v39;
  *&v30[*(v40 + 56)] = 256;
  v41 = &v30[*(sub_10000341C(&unk_10025E1E0, &qword_1001D39A0) + 36)];
  *v41 = 0;
  v42 = *(type metadata accessor for CommonUIBlendModifier(0) + 20);
  *&v41[v42] = swift_getKeyPath();
  v71 = sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();

  v43 = static Alignment.center.getter();
  v45 = v44;
  v46 = &v30[*(sub_10000341C(&unk_10025E1F0, &unk_1001D39E0) + 36)];
  *v46 = v43;
  v46[1] = v45;
  v83[0] = *(a1 + 40);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  v47 = 1;
  if (v84 == 1)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v48._countAndFlagsBits = 0x7720657461647055;
    v48._object = 0xEC00000020687469;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v48);
    v49._countAndFlagsBits = sub_1000971C0();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v49);

    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v50);
    LocalizedStringKey.init(stringInterpolation:)();
    v70 = v4;
    v51 = swift_allocObject();
    v52 = a1[3];
    v51[3] = a1[2];
    v51[4] = v52;
    v51[5] = a1[4];
    *(v51 + 89) = *(a1 + 73);
    v53 = a1[1];
    v51[1] = *a1;
    v51[2] = v53;
    sub_10006FAFC(a1, v83);
    v54 = v72;
    Button<>.init(_:action:)();
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
    v55 = v77;
    v56 = v74;
    View.bold(_:)();
    (*(v73 + 8))(v54, v56);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v57 = (v55 + *(v76 + 36));
    v58 = v83[1];
    *v57 = v83[0];
    v57[1] = v58;
    v57[2] = v83[2];
    KeyPath = swift_getKeyPath();
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0x4008000000000000;
    *(v7 + 3) = 0;
    *(v7 + 4) = 0;
    *(v7 + 20) = 1;
    v60 = v70;
    v61 = *(v70 + 40);
    *&v7[v61] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v62 = &v7[*(v60 + 44)];
    *v62 = KeyPath;
    v62[8] = 0;
    sub_10006FB54();
    sub_10006FC50(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle);
    v63 = v75;
    View.buttonStyle<A>(_:)();
    sub_10006FC98(v7);
    sub_10000F500(v55, &qword_10025E1B0, &qword_1001D3970);
    (*(v80 + 32))(v82, v63, v81);
    v47 = 0;
  }

  v64 = v82;
  (*(v80 + 56))(v82, v47, 1, v81);
  v65 = v78;
  sub_1000081F8(v28, v78, &qword_10025E1C8, &qword_1001D3988);
  v66 = v79;
  sub_1000081F8(v64, v79, &qword_10025E1C0, &qword_1001D3980);
  sub_1000081F8(v65, a2, &qword_10025E1C8, &qword_1001D3988);
  v67 = sub_10000341C(&unk_10025E200, &qword_1001D39F0);
  sub_1000081F8(v66, a2 + *(v67 + 48), &qword_10025E1C0, &qword_1001D3980);
  sub_10000F500(v64, &qword_10025E1C0, &qword_1001D3980);
  sub_10000F500(v28, &qword_10025E1C8, &qword_1001D3988);
  sub_10000F500(v66, &qword_10025E1C0, &qword_1001D3980);
  return sub_10000F500(v65, &qword_10025E1C8, &qword_1001D3988);
}

uint64_t sub_10006DCCC@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v47 = sub_10000341C(&qword_10025E220, &qword_1001D3AC0);
  v46 = *(v47 - 8);
  v3 = *(v46 + 64);
  __chkstk_darwin(v47);
  v43 = (v42 - v4);
  v5 = sub_10000341C(&qword_10025E228, &qword_1001D3AC8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v48 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = v42 - v9;
  v10 = sub_10000341C(&qword_10025E230, &qword_1001D3AD0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v42 - v12;
  v44 = sub_10000341C(&qword_10025E238, &qword_1001D3AD8);
  v14 = *(v44 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v44);
  v45 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v42 - v18;
  v20 = swift_allocObject();
  v21 = a1[3];
  v20[3] = a1[2];
  v20[4] = v21;
  v20[5] = a1[4];
  *(v20 + 89) = *(a1 + 73);
  v22 = a1[1];
  v20[1] = *a1;
  v20[2] = v22;
  v51 = a1;
  sub_10006FAFC(a1, &v54);
  sub_10000341C(&qword_10025E240, &qword_1001D3AE0);
  sub_100007120(&qword_10025E248, &qword_10025E240, &qword_1001D3AE0);
  Button.init(action:label:)();
  v23 = &v13[*(v10 + 36)];
  *v23 = 0;
  v24 = 1;
  v23[8] = 1;
  sub_10006FE34();
  sub_10006FEEC();
  v25 = v19;
  View.labelStyle<A>(_:)();
  sub_10000F500(v13, &qword_10025E230, &qword_1001D3AD0);
  v54 = *(a1 + 40);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v52 == 1)
  {
    v26 = static HorizontalAlignment.center.getter();
    v27 = v43;
    *v43 = v26;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    v42[1] = *(sub_10000341C(&unk_10025E280, &qword_1001D3AF8) + 44);
    v54 = a1[1];
    v55 = *(a1 + 4);
    sub_10000341C(&unk_1002641B0, &unk_1001D3B00);
    Binding.wrappedValue.getter();
    v28 = *(v52 + 16);

    v52 = 0;
    v53 = v28;
    swift_getKeyPath();
    v29 = swift_allocObject();
    v30 = a1[3];
    v29[3] = a1[2];
    v29[4] = v30;
    v29[5] = a1[4];
    *(v29 + 89) = *(a1 + 73);
    v31 = a1[1];
    v29[1] = *a1;
    v29[2] = v31;
    sub_10006FAFC(a1, &v54);
    sub_10000341C(&qword_10025E290, &qword_1001D3B28);
    sub_10000341C(&qword_10025E298, &unk_1001D3B30);
    sub_10006FFA8();
    sub_100007120(&qword_10025E2B0, &qword_10025E298, &unk_1001D3B30);
    ForEach<>.init(_:id:content:)();
    sub_100070088(v27, v50);
    v24 = 0;
  }

  v32 = v50;
  (*(v46 + 56))(v50, v24, 1, v47);
  v33 = v14;
  v34 = *(v14 + 16);
  v35 = v45;
  v36 = v44;
  v34(v45, v25, v44);
  v37 = v48;
  sub_1000081F8(v32, v48, &qword_10025E228, &qword_1001D3AC8);
  v38 = v49;
  v34(v49, v35, v36);
  v39 = sub_10000341C(&qword_10025E278, &qword_1001D3AF0);
  sub_1000081F8(v37, &v38[*(v39 + 48)], &qword_10025E228, &qword_1001D3AC8);
  sub_10000F500(v32, &qword_10025E228, &qword_1001D3AC8);
  v40 = *(v33 + 8);
  v40(v25, v36);
  sub_10000F500(v37, &qword_10025E228, &qword_1001D3AC8);
  return (v40)(v35, v36);
}

uint64_t sub_10006E334(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2[1] = *(a1 + 40);
  v4 = *(&v3 + 1);
  sub_1000081F8(&v4, v2, &qword_10025E310, &qword_1001D3B70);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_10000F500(&v3, &unk_1002640F0, &qword_1001D3490);
}

uint64_t sub_10006E3F8()
{
  sub_10000341C(&qword_10025E2E8, &qword_1001D3B60);
  sub_10000341C(&qword_10025E2F0, &qword_1001D3B68);
  sub_100007120(&qword_10025E2F8, &qword_10025E2E8, &qword_1001D3B60);
  sub_1000701B8();
  return Label.init(title:icon:)();
}

__n128 sub_10006E4E8@<Q0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.leading.getter();
  sub_10006E57C(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_10006E57C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v32) = 256;
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.subheadline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10002A984(v2, v4, v6 & 1);

  static Font.Weight.bold.getter();
  v12 = Text.fontWeight(_:)();
  v34 = v13;
  v35 = v12;
  v33 = v14;
  v36 = v15;
  sub_10002A984(v7, v9, v11 & 1);

  sub_10006D2D0();
  sub_1000739E8();

  sub_10002AC34();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  LOBYTE(v2) = v19;
  static Font.footnote.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  LOBYTE(v9) = v23;

  sub_10002A984(v16, v18, v2 & 1);

  v24 = [objc_opt_self() secondaryLabelColor];
  Color.init(_:)();
  v25 = Text.foregroundColor(_:)();
  v27 = v26;
  LOBYTE(v18) = v28;
  v30 = v29;

  sub_10002A984(v20, v22, v9 & 1);

  *a1 = v35;
  *(a1 + 8) = v34;
  *(a1 + 16) = v33 & 1;
  *(a1 + 24) = v36;
  *(a1 + 32) = v25;
  *(a1 + 40) = v27;
  *(a1 + 48) = v18 & 1;
  *(a1 + 56) = v30;
  sub_100007D98(v35, v34, v33 & 1);

  sub_100007D98(v25, v27, v18 & 1);

  sub_10002A984(v25, v27, v18 & 1);

  sub_10002A984(v35, v34, v33 & 1);
}

uint64_t sub_10006E848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  Image.init(systemName:)();
  result = _ConditionalContent<>.init(storage:)();
  *a2 = v4;
  *(a2 + 8) = BYTE8(v4);
  return result;
}

uint64_t sub_10006E934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v45 = a3;
  v44 = type metadata accessor for Divider();
  v59 = *(v44 - 8);
  v5 = v59[8];
  v6 = __chkstk_darwin(v44);
  v58 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v37 - v8;
  v60 = *a1;
  v9 = v60;
  Divider.init()();
  v88[0] = *(a2 + 16);
  *&v88[1] = *(a2 + 32);
  sub_10000341C(&unk_1002641B0, &unk_1001D3B00);
  Binding.projectedValue.getter();
  v65 = v78[0];
  v66 = *&v78[1];
  *&v78[0] = v9;
  sub_100007120(&qword_10025E2B8, &qword_10025E2C0, &unk_1001DC4C0);
  Binding<A>.subscript.getter();
  v69 = v88[2];
  v70 = v88[3];
  v71 = v88[4];
  v67 = v88[0];
  v68 = v88[1];

  v78[0] = *(a2 + 56);
  v78[1] = *(a2 + 72);
  LOBYTE(v78[2]) = *(a2 + 88);
  sub_10000341C(&qword_10025E2C8, &unk_1001D3B40);
  FocusState.projectedValue.getter();
  v42 = v62;
  v43 = v61;
  v41 = v63;
  LOBYTE(v9) = v64;
  type metadata accessor for CompositionModel(0);
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel);
  v57 = Environment.init<A>(_:)();
  LOBYTE(a1) = v10;
  v61 = 0;
  v62 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v46 = v78[0];
  v55 = *&v78[1];
  LOBYTE(v61) = 0;
  State.init(wrappedValue:)();
  v53 = LOBYTE(v78[0]);
  v54 = *(&v78[0] + 1);
  LOBYTE(v61) = 0;
  State.init(wrappedValue:)();
  v51 = LOBYTE(v78[0]);
  v52 = *(&v78[0] + 1);
  v61 = _swiftEmptyArrayStorage;
  sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
  State.init(wrappedValue:)();
  v49 = *(&v78[0] + 1);
  v50 = *&v78[0];
  LOBYTE(v61) = 0;
  State.init(wrappedValue:)();
  v47 = LOBYTE(v78[0]);
  v48 = *(&v78[0] + 1);
  v61 = 0;
  sub_10000341C(&qword_10025E2D8, &qword_1001D3B50);
  State.init(wrappedValue:)();
  *&v77[23] = v68;
  *&v77[39] = v69;
  *&v77[55] = v70;
  *&v77[71] = v71;
  v38 = *(&v78[0] + 1);
  v11 = *&v78[0];
  v39 = *&v78[0];
  LOBYTE(v61) = a1 & 1;
  *&v77[7] = v67;
  v73 = v9;
  v12 = v58;
  v13 = v59[2];
  v14 = v44;
  v13(v58, v56, v44);
  v15 = v61;
  v40 = v61;
  v16 = v73;
  v17 = v45;
  v18 = v12;
  v19 = v14;
  v13(v45, v18, v14);
  v20 = &v17[*(sub_10000341C(&qword_10025E2E0, &qword_1001D3B58) + 48)];
  *&v78[0] = v57;
  BYTE8(v78[0]) = v15;
  *(&v78[2] + 9) = *&v77[32];
  *(&v78[3] + 9) = *&v77[48];
  *(&v78[4] + 9) = *&v77[64];
  *(v78 + 9) = *v77;
  *(&v78[1] + 9) = *&v77[16];
  *(&v78[5] + 1) = *&v77[79];
  v79 = v46;
  *&v80 = v55;
  BYTE8(v80) = v53;
  HIDWORD(v80) = *&v76[3];
  *(&v80 + 9) = *v76;
  *&v81 = v54;
  BYTE8(v81) = v51;
  HIDWORD(v81) = *&v75[3];
  *(&v81 + 9) = *v75;
  *&v82 = v52;
  *(&v82 + 1) = v50;
  *&v83 = v49;
  BYTE8(v83) = v47;
  *(&v83 + 9) = *v74;
  HIDWORD(v83) = *&v74[3];
  *&v84 = v48;
  *(&v84 + 1) = v11;
  v21 = v38;
  *&v85 = v38;
  v23 = v42;
  v22 = v43;
  *(&v85 + 1) = v43;
  *&v86 = v42;
  v24 = v41;
  *(&v86 + 1) = v41;
  LOBYTE(v87) = v16;
  *(&v87 + 1) = *v72;
  DWORD1(v87) = *&v72[3];
  *(&v87 + 1) = v60;
  v25 = v78[5];
  *(v20 + 4) = v78[4];
  *(v20 + 5) = v25;
  v26 = v78[1];
  *v20 = v78[0];
  *(v20 + 1) = v26;
  v27 = v78[3];
  *(v20 + 2) = v78[2];
  *(v20 + 3) = v27;
  v28 = v79;
  v29 = v80;
  v30 = v82;
  *(v20 + 8) = v81;
  *(v20 + 9) = v30;
  *(v20 + 6) = v28;
  *(v20 + 7) = v29;
  v31 = v83;
  v32 = v84;
  v33 = v87;
  *(v20 + 13) = v86;
  *(v20 + 14) = v33;
  v34 = v85;
  *(v20 + 11) = v32;
  *(v20 + 12) = v34;
  *(v20 + 10) = v31;
  sub_1000700F8(v78, v88);
  v35 = v59[1];
  v35(v56, v19);
  *(&v88[2] + 9) = *&v77[32];
  *(&v88[3] + 9) = *&v77[48];
  *(&v88[4] + 9) = *&v77[64];
  *(v88 + 9) = *v77;
  *&v88[0] = v57;
  BYTE8(v88[0]) = v40;
  *(&v88[1] + 9) = *&v77[16];
  *(&v88[5] + 1) = *&v77[79];
  v88[6] = v46;
  v89 = v55;
  v90 = v53;
  *&v91[3] = *&v76[3];
  *v91 = *v76;
  v92 = v54;
  v93 = v51;
  *&v94[3] = *&v75[3];
  *v94 = *v75;
  v95 = v52;
  v96 = v50;
  v97 = v49;
  v98 = v47;
  *v99 = *v74;
  *&v99[3] = *&v74[3];
  v100 = v48;
  v101 = v39;
  v102 = v21;
  v103 = v22;
  v104 = v23;
  v105 = v24;
  v106 = v16;
  *v107 = *v72;
  *&v107[3] = *&v72[3];
  v108 = v60;
  sub_100070154(v88);
  return (v35)(v58, v19);
}

uint64_t sub_10006EFE8(_OWORD *a1)
{
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12[-v4];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  sub_10006FAFC(a1, v12);
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = a1[3];
  *(v8 + 64) = a1[2];
  *(v8 + 80) = v9;
  *(v8 + 96) = a1[4];
  *(v8 + 105) = *(a1 + 73);
  v10 = a1[1];
  *(v8 + 32) = *a1;
  *(v8 + 48) = v10;
  sub_10015C9C8(0, 0, v5, &unk_1001D3A38, v8);
}

uint64_t sub_10006F130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v6;
  v4[24] = v5;

  return _swift_task_switch(sub_10006F1C8, v6, v5);
}

uint64_t sub_10006F1C8()
{
  v1 = v0[21];
  v2 = sub_10006D2D0();
  swift_getKeyPath();
  v0[18] = v2;
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v2 + v3, (v0 + 2), &unk_10025B1C0, &unk_1001CFA90);

  if (v0[5])
  {
    v4 = v0[21];
    sub_100028458((v0 + 2), (v0 + 7));
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    v5 = sub_100027874(v0 + 7, v0[10]);
    v6 = sub_10006D2D0();
    swift_getKeyPath();
    v0[20] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    v8 = *(v6 + v7);

    v9 = *v5;
    sub_10000B7B0(1, v8);

    sub_10000F4B4(v0 + 7);
  }

  else
  {
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  v10 = v0[21];
  v11 = sub_10006D2D0();
  swift_getKeyPath();
  v0[19] = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  if (v12)
  {
    if (v12 == 1)
    {
      v13 = v0[21];
      v0[25] = sub_10006D2D0();
      v14 = swift_task_alloc();
      v0[26] = v14;
      *v14 = v0;
      v14[1] = sub_10006F55C;

      return sub_1000905CC(0);
    }

    else
    {
      v18 = v0[22];

      v19 = v0[1];

      return v19();
    }
  }

  else
  {
    v16 = v0[21];
    v0[27] = sub_10006D2D0();
    v17 = swift_task_alloc();
    v0[28] = v17;
    *v17 = v0;
    v17[1] = sub_10006F700;

    return sub_100091570(0);
  }
}

uint64_t sub_10006F55C()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v7 = *v0;

  v4 = *(v1 + 192);
  v5 = *(v1 + 184);

  return _swift_task_switch(sub_10006F6A0, v5, v4);
}

uint64_t sub_10006F6A0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006F700()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v7 = *v0;

  v4 = *(v1 + 192);
  v5 = *(v1 + 184);

  return _swift_task_switch(sub_10007038C, v5, v4);
}

uint64_t sub_10006F844(uint64_t a1, char a2)
{
  sub_10006D2D0();
  swift_getKeyPath();
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"setIsHostingControllerHeightConstraintActive:"])
    {
      [Strong setIsHostingControllerHeightConstraintActive:a2 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10006F940@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v18 = v1[2];
  v19 = v3;
  v20[0] = v1[4];
  *(v20 + 9) = *(v1 + 73);
  v4 = v1[1];
  v16 = *v1;
  v17 = v4;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v5 = sub_10000341C(&qword_10025E180, &qword_1001D3928);
  sub_10006D42C(&v16, a1 + *(v5 + 44));
  v6 = swift_allocObject();
  v7 = v19;
  v6[3] = v18;
  v6[4] = v7;
  v6[5] = v20[0];
  *(v6 + 89) = *(v20 + 9);
  v8 = v17;
  v6[1] = v16;
  v6[2] = v8;
  v9 = (a1 + *(sub_10000341C(&qword_10025E188, &qword_1001D3930) + 36));
  *v9 = sub_10006FABC;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = 0;
  v10 = swift_allocObject();
  v11 = v19;
  v10[3] = v18;
  v10[4] = v11;
  v10[5] = v20[0];
  *(v10 + 89) = *(v20 + 9);
  v12 = v17;
  v10[1] = v16;
  v10[2] = v12;
  v13 = (a1 + *(sub_10000341C(&unk_10025E190, &unk_1001D3938) + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_10006FADC;
  v13[3] = v10;
  sub_10006FAFC(&v16, v15);
  return sub_10006FAFC(&v16, v15);
}

unint64_t sub_10006FB54()
{
  result = qword_10025E210;
  if (!qword_10025E210)
  {
    sub_100003E34(&qword_10025E1B0, &qword_1001D3970);
    sub_100003E34(&unk_10025DF60, &unk_1001D7CD0);
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E210);
  }

  return result;
}

uint64_t sub_10006FC50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006FC98(uint64_t a1)
{
  v2 = type metadata accessor for PrimaryButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006FCF4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[10];

  v7 = v0[13];

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_10006FD5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100028688;

  return sub_10006F130(a1, v4, v5, v1 + 32);
}

unint64_t sub_10006FE34()
{
  result = qword_10025E250;
  if (!qword_10025E250)
  {
    sub_100003E34(&qword_10025E230, &qword_1001D3AD0);
    sub_100007120(&qword_10025E258, &unk_10025E260, &qword_1001D3AE8);
    sub_100063A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E250);
  }

  return result;
}

unint64_t sub_10006FEEC()
{
  result = qword_10025E270;
  if (!qword_10025E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E270);
  }

  return result;
}

uint64_t sub_10006FF40()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[11];

  return _swift_deallocObject(v0, 105, 7);
}

unint64_t sub_10006FFA8()
{
  result = qword_10025E2A0;
  if (!qword_10025E2A0)
  {
    sub_100003E34(&qword_10025E290, &qword_1001D3B28);
    sub_100070034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E2A0);
  }

  return result;
}

unint64_t sub_100070034()
{
  result = qword_1002641D0;
  if (!qword_1002641D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002641D0);
  }

  return result;
}

uint64_t sub_100070088(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025E220, &qword_1001D3AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1000701A8@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_10006E4E8(a1).n128_u64[0];
  return result;
}

unint64_t sub_1000701B8()
{
  result = qword_10025E300;
  if (!qword_10025E300)
  {
    sub_100003E34(&qword_10025E2F0, &qword_1001D3B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E300);
  }

  return result;
}

unint64_t sub_100070238()
{
  result = qword_10025E318;
  if (!qword_10025E318)
  {
    sub_100003E34(&unk_10025E190, &unk_1001D3938);
    sub_1000702C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E318);
  }

  return result;
}

unint64_t sub_1000702C4()
{
  result = qword_10025E320;
  if (!qword_10025E320)
  {
    sub_100003E34(&qword_10025E188, &qword_1001D3930);
    sub_100007120(&qword_10025E328, &unk_10025E330, &qword_1001D3B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E320);
  }

  return result;
}

UIImage *sub_100070390(uint64_t a1, char a2, uint64_t a3, char a4)
{
  swift_getObjectType();
  [v39 size];
  v9 = v8;
  v11 = v10;
  [v39 scale];
  v13 = 2048;
  if ((a2 & 1) == 0)
  {
    v13 = a1;
  }

  v14 = 768;
  if ((a4 & 1) == 0)
  {
    v14 = a3;
  }

  if (v11 > v9)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v11 > v9)
  {
    v13 = v14;
  }

  v16 = floor(v13 / v12);
  v17 = floor(v15 / v12);
  [v39 size];
  if (v18 <= v16 && ([v39 size], v19 <= v17))
  {

    return v39;
  }

  else
  {
    [v39 size];
    v21 = v20 / v16;
    v23 = v22 / v17 < v20 / v16;
    v24 = v20 / (v22 / v17);
    v25 = v22 / v21;
    if (v23)
    {
      v17 = v25;
    }

    else
    {
      v16 = v24;
    }

    [v39 scale];
    v27 = v26;
    v42.width = v16;
    v42.height = v17;
    UIGraphicsBeginImageContextWithOptions(v42, 0, v27);
    [v39 drawInRect:{0.0, 0.0, v16, v17}];
    v28 = UIGraphicsGetImageFromCurrentImageContext();
    if (v28)
    {
      v29 = v28;
      UIGraphicsEndImageContext();
      return v29;
    }

    else
    {
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000F34C(v31, qword_100276F08);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v34 = 136315394;
        v35 = _typeName(_:qualified:)();
        v37 = sub_10002510C(v35, v36, &v40);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_10002510C(0xD00000000000002BLL, 0x80000001001E4550, &v40);
        _os_log_impl(&_mh_execute_header, v32, v33, "%s.%s Image resizing failed.", v34, 0x16u);
        swift_arrayDestroy();
      }

      v38 = v39;
      UIGraphicsEndImageContext();
      return v38;
    }
  }
}

uint64_t sub_1000706B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000738D0(v4);
}

Swift::Int sub_1000706F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100070768()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000707AC()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);
}

uint64_t sub_100070854(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100070964()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100070A94()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100070BF8()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy);
}

uint64_t sub_100070CDC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100070E08@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GenerativePartnerServiceProvider();
  static GenerativePartnerServiceProvider.shared.getter();
  dispatch thunk of GenerativePartnerServiceProvider.selectedLLM()();

  if (v20)
  {
    sub_100008198(&v19, v21);
    v2 = a1;
    return sub_100008198(v21, v2);
  }

  else
  {
    v16 = a1;
    sub_10000F500(&v19, &qword_1002651D0, &unk_1001DDA20);
    static GenerativePartnerServiceProvider.shared.getter();
    v3 = dispatch thunk of GenerativePartnerServiceProvider.allLLMs.getter();

    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v3 + 32;
      while (v6 < *(v3 + 16))
      {
        sub_100028458(v7, &v17);
        sub_100027874(&v17, v18);
        v8 = dispatch thunk of LLMProvider.id.getter();
        v10 = v9;
        static GenerativePartnerServiceProvider.shared.getter();
        v11 = dispatch thunk of GenerativePartnerServiceProvider.storedSelectedLLMID()();
        v13 = v12;

        if (v8 == v11 && v10 == v13)
        {

LABEL_14:

          sub_100008198(&v17, &v19);
          sub_100008198(&v19, v21);
          v2 = v16;
          return sub_100008198(v21, v2);
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          goto LABEL_14;
        }

        ++v6;
        result = sub_10000F4B4(&v17);
        v7 += 40;
        if (v5 == v6)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_12:

      static GenerativePartnerServiceProvider.shared.getter();
      dispatch thunk of GenerativePartnerServiceProvider.defaultLLM()();
    }
  }

  return result;
}

uint64_t sub_100071008@<X0>(uint64_t a1@<X8>)
{
  sub_100070E08(&v9);
  if (v10)
  {
    sub_100008198(&v9, v11);
    sub_100027874(v11, v11[3]);
    dispatch thunk of LLMProvider.modelBundle()();
    v7 = type metadata accessor for ModelBundle();
    (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
    return sub_10000F4B4(v11);
  }

  else
  {
    sub_10000F500(&v9, &qword_1002651D0, &unk_1001DDA20);
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F34C(v2, qword_100276F08);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "There is no active LLM", v5, 2u);
    }

    v6 = type metadata accessor for ModelBundle();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_1000712D0()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1000713A0()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1000714E8()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v91 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v93 = &v89 - v9;
  v10 = __chkstk_darwin(v8);
  v92 = &v89 - v11;
  v12 = __chkstk_darwin(v10);
  v94 = &v89 - v13;
  v14 = __chkstk_darwin(v12);
  v95 = &v89 - v15;
  v16 = __chkstk_darwin(v14);
  v96 = &v89 - v17;
  v18 = __chkstk_darwin(v16);
  v97 = &v89 - v19;
  v20 = __chkstk_darwin(v18);
  v98 = &v89 - v21;
  v22 = __chkstk_darwin(v20);
  v99 = &v89 - v23;
  v24 = __chkstk_darwin(v22);
  v100 = &v89 - v25;
  v26 = __chkstk_darwin(v24);
  v101 = &v89 - v27;
  v28 = __chkstk_darwin(v26);
  v102 = &v89 - v29;
  v30 = __chkstk_darwin(v28);
  v106 = &v89 - v31;
  v32 = __chkstk_darwin(v30);
  v104 = &v89 - v33;
  v34 = __chkstk_darwin(v32);
  v103 = &v89 - v35;
  v36 = __chkstk_darwin(v34);
  v105 = &v89 - v37;
  v38 = __chkstk_darwin(v36);
  v107 = &v89 - v39;
  v40 = __chkstk_darwin(v38);
  v108 = &v89 - v41;
  v42 = __chkstk_darwin(v40);
  v109 = &v89 - v43;
  v44 = __chkstk_darwin(v42);
  v110 = &v89 - v45;
  v46 = __chkstk_darwin(v44);
  v111 = &v89 - v47;
  v48 = __chkstk_darwin(v46);
  v112 = &v89 - v49;
  v50 = __chkstk_darwin(v48);
  v52 = &v89 - v51;
  __chkstk_darwin(v50);
  v54 = &v89 - v53;
  sub_10000341C(&qword_10025F4E8, &unk_1001DF3A0);
  v55 = *(v1 + 72);
  v56 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1001D3B80;
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  v58 = v2;
  v59 = *(v2 + 48);
  result = v59(v54, 1, v0);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v90 = v57;
  v61 = v57 + v56;
  v62 = *(v58 + 32);
  v62(v61, v54, v0);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  result = v59(v52, 1, v0);
  if (result == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v62(v61 + v55, v52, v0);
  static UTType.data.getter();
  v63 = v112;
  UTType.init(mimeType:conformingTo:)();
  result = v59(v63, 1, v0);
  if (result == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v62(v61 + 2 * v55, v63, v0);
  static UTType.data.getter();
  v64 = v111;
  UTType.init(mimeType:conformingTo:)();
  result = v59(v64, 1, v0);
  if (result == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v62(v61 + 3 * v55, v64, v0);
  static UTType.data.getter();
  v65 = v110;
  UTType.init(mimeType:conformingTo:)();
  result = v59(v65, 1, v0);
  if (result == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v62(v61 + 4 * v55, v65, v0);
  static UTType.data.getter();
  v66 = v109;
  UTType.init(mimeType:conformingTo:)();
  result = v59(v66, 1, v0);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v62(v61 + 5 * v55, v66, v0);
  static UTType.data.getter();
  v67 = v108;
  UTType.init(mimeType:conformingTo:)();
  result = v59(v67, 1, v0);
  if (result == 1)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v62(v61 + 6 * v55, v67, v0);
  static UTType.data.getter();
  v68 = v107;
  UTType.init(mimeType:conformingTo:)();
  result = v59(v68, 1, v0);
  if (result == 1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v112 = v62;
  v62(v61 + 7 * v55, v68, v0);
  static UTType.pdf.getter();
  static UTType.tarArchive.getter();
  static UTType.xml.getter();
  static UTType.zip.getter();
  static UTType.gif.getter();
  static UTType.jpeg.getter();
  static UTType.png.getter();
  static UTType.data.getter();
  v69 = v105;
  UTType.init(mimeType:conformingTo:)();
  v70 = v59;
  result = v59(v69, 1, v0);
  v71 = v106;
  if (result == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  (v112)(v61 - v55 + 16 * v55, v69, v0);
  static UTType.data.getter();
  v72 = v103;
  UTType.init(mimeType:conformingTo:)();
  result = v70(v72, 1, v0);
  v73 = v104;
  if (result == 1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  (v112)(v61 + 16 * v55, v72, v0);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  v74 = v70;
  result = v70(v73, 1, v0);
  if (result == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v75 = v112;
  (v112)(v61 + 17 * v55, v73, v0);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  result = v74(v71, 1, v0);
  if (result == 1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v75(v61 + 18 * v55, v71, v0);
  static UTType.data.getter();
  v76 = v102;
  UTType.init(mimeType:conformingTo:)();
  result = v74(v76, 1, v0);
  if (result == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v75(v61 + 19 * v55, v76, v0);
  static UTType.data.getter();
  v77 = v101;
  UTType.init(mimeType:conformingTo:)();
  result = v74(v77, 1, v0);
  if (result == 1)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v75(v61 + 20 * v55, v77, v0);
  static UTType.data.getter();
  v78 = v100;
  UTType.init(mimeType:conformingTo:)();
  result = v74(v78, 1, v0);
  if (result == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v75(v61 + 21 * v55, v78, v0);
  static UTType.data.getter();
  v79 = v99;
  UTType.init(mimeType:conformingTo:)();
  result = v74(v79, 1, v0);
  if (result == 1)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v75(v61 + 22 * v55, v79, v0);
  static UTType.data.getter();
  v80 = v98;
  UTType.init(mimeType:conformingTo:)();
  result = v74(v80, 1, v0);
  if (result == 1)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v75(v61 + 23 * v55, v80, v0);
  static UTType.data.getter();
  v81 = v97;
  UTType.init(mimeType:conformingTo:)();
  result = v74(v81, 1, v0);
  if (result == 1)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v75(v61 + 24 * v55, v81, v0);
  static UTType.data.getter();
  v82 = v96;
  UTType.init(mimeType:conformingTo:)();
  result = v74(v82, 1, v0);
  if (result == 1)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v75(v61 + 25 * v55, v82, v0);
  static UTType.data.getter();
  v83 = v95;
  UTType.init(mimeType:conformingTo:)();
  result = v74(v83, 1, v0);
  if (result == 1)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v75(v61 + 26 * v55, v83, v0);
  static UTType.data.getter();
  v84 = v94;
  UTType.init(mimeType:conformingTo:)();
  result = v74(v84, 1, v0);
  if (result == 1)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v75(v61 + 27 * v55, v84, v0);
  static UTType.data.getter();
  v85 = v92;
  UTType.init(mimeType:conformingTo:)();
  result = v74(v85, 1, v0);
  v86 = v93;
  if (result == 1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v75(v61 + 28 * v55, v85, v0);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  result = v74(v86, 1, v0);
  v87 = v91;
  if (result == 1)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v75(v61 + 29 * v55, v86, v0);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  result = v74(v87, 1, v0);
  if (result == 1)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v75(v61 + 30 * v55, v87, v0);
  static UTType.commaSeparatedText.getter();
  static UTType.css.getter();
  static UTType.html.getter();
  static UTType.javaScript.getter();
  static UTType.plainText.getter();
  if (qword_10025A780 != -1)
  {
    swift_once();
  }

  v113 = v90;

  result = sub_10019E510(v88);
  qword_100277020 = v113;
  return result;
}

uint64_t sub_10007254C()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8);

  return v1;
}

uint64_t sub_100072608@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  a2[1] = v4;
}

uint64_t sub_1000726C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_100072700(v2, v3);
}

uint64_t sub_100072700(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

void sub_1000728A4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000728D4(v2);
}

uint64_t sub_1000728FC()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange);
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange + 8);
  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange + 16);
  return result;
}

__n128 sub_1000729AC@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange + 16);
  result = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_100072A68(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange;
  if ((*(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange + 16) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *v4 == result && *(v4 + 8) == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_100072C34(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  if (sub_10017BA1C(*(v2 + v4), a1))
  {
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100072D94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100072DC0(v4);
}

uint64_t sub_100072E24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100072E50(v4);
}

uint64_t sub_100072E8C()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8);

  return v1;
}

uint64_t sub_100072F48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
  a2[1] = v4;
}

uint64_t sub_100073000(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_100073040(v2, v3);
}

uint64_t sub_100073040(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString) == a1 && *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8) == a2;
  if (v6 || (v7 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000731D4(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v2 + v6);
  swift_getKeyPath();
  v17 = v2;

  v8 = v2 + v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v17 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    swift_unknownObjectRelease();
    sub_100095F2C(v7, v7 + 32, 0, v8);
    goto LABEL_11;
  }

  v10 = *(v7 + 16);
  if (v10 >= v9)
  {
    v10 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex);
  }

  v11 = 2 * v10;
  if (v9)
  {
    v8 = v11 + 1;
  }

  else
  {
    v8 = 1;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = _swiftEmptyArrayStorage;
  }

  v13 = v12[2];

  if (v13 != v8 >> 1)
  {
    goto LABEL_14;
  }

  v14 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_11:
    swift_unknownObjectRelease();
  }

  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0);
  v15 = BidirectionalCollection<>.joined(separator:)();

  return v15;
}

uint64_t sub_100073408@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000081F8(v5 + v3, a1, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1000734E0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_10009AB44(a2, a1 + v4, &unk_10025B1C0, &unk_1001CFA90);
  return swift_endAccess();
}

uint64_t sub_1000735E4()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);
}

uint64_t sub_100073690@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);
}

uint64_t sub_100073744(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100073770(v4);
}

uint64_t sub_100073770(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements;
  if (sub_10017BA1C(*(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100073920@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

unint64_t sub_1000739E8()
{
  swift_getKeyPath();
  v24 = v0;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v2 = *(v24 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {

    sub_100163C20(0, v3, 0);
    v4 = (v2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v8 >= v7 >> 1)
      {
        sub_100163C20((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v6;
      v9[5] = v5;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  v10 = _swiftEmptyArrayStorage[2];
  if (v10 < 3)
  {
    v11 = objc_opt_self();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13 = [v11 localizedStringByJoiningStrings:isa];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v14;
  }

  v15 = [objc_opt_self() mainBundle];
  v25._object = 0x80000001001E4C50;
  v16._object = 0x80000001001E4C30;
  v25._countAndFlagsBits = 0xD000000000000024;
  v16._countAndFlagsBits = 0xD000000000000017;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v25);

  sub_10000341C(&qword_10025BA50, &qword_1001D0860);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001CF9F0;
  *(v18 + 56) = &type metadata for String;
  result = sub_10002D7B0();
  *(v18 + 64) = result;
  v20 = _swiftEmptyArrayStorage[2];
  if (v20)
  {
    v21 = result;
    result = _swiftEmptyArrayStorage[5];
    *(v18 + 32) = _swiftEmptyArrayStorage[4];
    *(v18 + 40) = result;
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v21;
    if (v20 != 1)
    {
      v23 = _swiftEmptyArrayStorage[6];
      v22 = _swiftEmptyArrayStorage[7];

      *(v18 + 72) = v23;
      *(v18 + 80) = v22;
      *(v18 + 136) = &type metadata for Int;
      *(v18 + 144) = &protocol witness table for Int;
      *(v18 + 112) = v10 - 2;
      v14 = static String.localizedStringWithFormat(_:_:)();

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100073D34(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_100073DEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_100073EF4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);

  LOBYTE(a3) = a3(v8, a1);

  if (a3)
  {
    v9 = *(v3 + v6);
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100074044(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
}

uint64_t sub_1000740B0()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slotParser);
}

uint64_t sub_10007415C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slotParser);
}

uint64_t sub_100074210(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10007433C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  return sub_1000081F8(v5 + v6, a3, &unk_100262450, &qword_1001CFAA0);
}

uint64_t sub_100074418(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v14 - v10;
  sub_1000081F8(a1, &v14 - v10, &unk_100262450, &qword_1001CFAA0);
  v12 = *a2;
  return a5(v11);
}

uint64_t sub_1000744F4(uint64_t a1, uint64_t *a2)
{
  v5 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v12 - v7;
  v9 = *a2;
  swift_beginAccess();
  sub_1000081F8(v2 + v9, v8, &unk_100262450, &qword_1001CFAA0);
  LOBYTE(a2) = sub_100097334(v8, a1);
  sub_10000F500(v8, &unk_100262450, &qword_1001CFAA0);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12[-2] = v2;
    v12[-1] = a1;
    v12[2] = v2;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000081F8(a1, v8, &unk_100262450, &qword_1001CFAA0);
    swift_beginAccess();
    sub_10009AAB8(v8, v2 + v9, &unk_100262450, &qword_1001CFAA0);
    swift_endAccess();
  }

  return sub_10000F500(a1, &unk_100262450, &qword_1001CFAA0);
}

uint64_t sub_100074708(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_10009AB44(a2, a1 + v5, &unk_100262450, &qword_1001CFAA0);
  return swift_endAccess();
}

uint64_t sub_1000747E0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
}

uint64_t sub_100074884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);
}

uint64_t sub_100074938(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100074964(v4);
}

uint64_t sub_10007498C(uint64_t a1, void *a2)
{
  if (*(v2 + *a2) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

BOOL sub_100074B58()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent;
  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + v2) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  return *(*(v1 + v3) + 16) != 0;
}

void *sub_100074D0C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_100074DC8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_100074E8C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100074EBC(v2);
}

void sub_100074EE4(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(v2 + *a2);
  if (!v6)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_10025F2D0, NSAttributedString_ptr);
  v7 = v6;
  v8 = a1;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + v5);
LABEL_8:
  *(v3 + v5) = a1;
}

uint64_t sub_100075200()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode;
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);
  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 8);
  sub_10002879C(v2, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

uint64_t sub_1000752D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode;
  v10 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);
  v11 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 8);
  v12 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 16);
  v13 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24);
  if (sub_100037FBC(v10, v11, v12, v13, a1, a2, a3, a4))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_1000278C0(a1, a2, a3, a4);
  }

  else
  {
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;

    return sub_1000278C0(v10, v11, v12, v13);
  }
}

uint64_t sub_100075494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode;
  v6 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);
  v7 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 8);
  v8 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 16);
  *v5 = a2;
  *(v5 + 8) = a3;
  *(v5 + 16) = a4;
  v9 = *(v5 + 24);
  *(v5 + 24) = a5;
  sub_10002879C(a2, a3, a4, a5);
  return sub_1000278C0(v6, v7, v8, v9);
}

uint64_t sub_100075528(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1000755C8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1000756A4(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

BOOL sub_1000757A8()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  swift_getKeyPath();
  v12 = v0;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v1 + v6, v5, &unk_100262580, &qword_1001CFF70);
  v7 = type metadata accessor for CompositionModel.Session(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) || !*(v5 + 2))
  {
    sub_10000F500(v5, &unk_100262580, &qword_1001CFF70);
  }

  else
  {
    v9 = *(v5 + 2);

    sub_10000F500(v5, &unk_100262580, &qword_1001CFF70);
    v10 = GenerativeExperiencesSession.canUndo()();

    if (v10)
    {
      swift_getKeyPath();
      v11 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      return *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex) > 1;
    }
  }

  return 0;
}

uint64_t sub_1000759BC()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  swift_getKeyPath();
  v12 = v0;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v1 + v6, v5, &unk_100262580, &qword_1001CFF70);
  v7 = type metadata accessor for CompositionModel.Session(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) || !*(v5 + 2))
  {
    sub_10000F500(v5, &unk_100262580, &qword_1001CFF70);
  }

  else
  {
    v9 = *(v5 + 2);

    sub_10000F500(v5, &unk_100262580, &qword_1001CFF70);
    v10 = GenerativeExperiencesSession.canRedo()();

    if (v10)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  v11 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__showingOriginal);
}

uint64_t sub_100075BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = *(*(sub_10000341C(&unk_10025F4F0, &qword_1001D4768) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v6 = type metadata accessor for PromptCompletion();
  v4[25] = v6;
  v7 = *(v6 - 8);
  v4[26] = v7;
  v8 = *(v7 + 64) + 15;
  v4[27] = swift_task_alloc();
  v9 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[33] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[34] = v11;
  v4[35] = v10;

  return _swift_task_switch(sub_100075D5C, v11, v10);
}

uint64_t sub_100075D5C()
{
  v1 = *(v0 + 184);
  v2 = &unk_10025E000;
  v3 = &unk_10025E000;
  if (!sub_1000757A8())
  {
    v12 = *(v0 + 264);

    goto LABEL_6;
  }

  v4 = *(v0 + 256);
  v5 = *(v0 + 184);
  swift_getKeyPath();
  *(v0 + 120) = v5;
  *(v0 + 288) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *(v0 + 296) = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  *(v0 + 304) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v5 + v6, v4, &unk_100262580, &qword_1001CFF70);
  v7 = type metadata accessor for CompositionModel.Session(0);
  *(v0 + 312) = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  *(v0 + 320) = v9;
  *(v0 + 328) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v4, 1, v7))
  {
    v11 = *(v0 + 256);
    v10 = *(v0 + 264);

    sub_10000F500(v11, &unk_100262580, &qword_1001CFF70);
LABEL_4:
    v3 = &unk_10025E000;
    v2 = &unk_10025E000;
LABEL_6:
    v13 = *(v0 + 184);
    if (!sub_1000757A8())
    {
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000F34C(v14, qword_100276F08);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Undo operation invoked when canUndo is false.", v17, 2u);
      }
    }

    v18 = *(v0 + 224);
    v19 = *(v0 + 184);
    swift_getKeyPath();
    v20 = v2[143];
    *(v0 + 112) = v19;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = v3[142];
    swift_beginAccess();
    sub_1000081F8(v19 + v21, v18, &unk_100262580, &qword_1001CFF70);
    v22 = type metadata accessor for CompositionModel.Session(0);
    v23 = (*(*(v22 - 8) + 48))(v18, 1, v22);
    v24 = *(v0 + 224);
    if (v23)
    {
      sub_10000F500(v24, &unk_100262580, &qword_1001CFF70);
LABEL_14:
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000F34C(v25, qword_100276F08);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "GES session unexpectedly is nil.", v28, 2u);
      }

      goto LABEL_46;
    }

    v29 = *(v24 + 16);
    v30 = *(v0 + 224);

    sub_10000F500(v30, &unk_100262580, &qword_1001CFF70);
    if (!v29)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

  v31 = *(v0 + 256);
  v32 = *(v31 + 16);
  *(v0 + 336) = v32;

  sub_10000F500(v31, &unk_100262580, &qword_1001CFF70);
  if (!v32)
  {
    v35 = *(v0 + 264);

    goto LABEL_4;
  }

  v33 = *(v0 + 184);
  v34 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  *(v0 + 344) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  v108 = v9;
  if (*(v33 + v34) != 2)
  {
    swift_getKeyPath();
    v36 = swift_task_alloc();
    *(v36 + 16) = v33;
    *(v36 + 24) = 2;
    *(v0 + 128) = v33;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v33 = *(v0 + 184);
  }

  *(v0 + 352) = 0;
  swift_getKeyPath();
  *(v0 + 136) = v33;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 360) = Strong;
  if (!Strong)
  {
LABEL_37:
    v63 = *(v0 + 344);
    v64 = *(v0 + 184);
    if (*(v64 + v63))
    {
      v66 = *(v0 + 288);
      v65 = *(v0 + 296);
      v67 = *(v0 + 264);
      swift_getKeyPath();
      v68 = swift_task_alloc();
      *(v68 + 16) = v64;
      *(v68 + 24) = 0;
      *(v0 + 144) = v64;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      v69 = *(v0 + 264);

      *(v64 + v63) = 0;
    }

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_10000F34C(v70, qword_100276F08);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v0 + 336);
    if (v73)
    {
      v75 = swift_slowAlloc();
      *v75 = 67109120;
      _os_log_impl(&_mh_execute_header, v71, v72, "Undo operation invoked, did we update response content: %{BOOL}d", v75, 8u);

LABEL_46:
      v77 = *(v0 + 248);
      v76 = *(v0 + 256);
      v79 = *(v0 + 232);
      v78 = *(v0 + 240);
      v81 = *(v0 + 216);
      v80 = *(v0 + 224);
      v82 = *(v0 + 192);

      v83 = *(v0 + 8);

      return v83();
    }

LABEL_45:

    goto LABEL_46;
  }

  v38 = *(v0 + 248);
  v39 = *(v0 + 184);
  swift_getKeyPath();
  *(v0 + 152) = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000081F8(v5 + v6, v38, &unk_100262580, &qword_1001CFF70);
  v40 = v108(v38, 1, v7);
  v41 = *(v0 + 248);
  if (v40)
  {
    swift_unknownObjectRelease();
    sub_10000F500(v41, &unk_100262580, &qword_1001CFF70);
    goto LABEL_37;
  }

  v42 = *(v0 + 240);
  v43 = *(v0 + 184);
  v44 = *v41;
  *(v0 + 368) = *v41;
  v45 = v44;
  sub_10000F500(v41, &unk_100262580, &qword_1001CFF70);
  swift_getKeyPath();
  *(v0 + 160) = v43;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000081F8(v5 + v6, v42, &unk_100262580, &qword_1001CFF70);
  v46 = v108(v42, 1, v7);
  v47 = *(v0 + 240);
  if (v46 || !*(v47 + 16))
  {
    sub_10000F500(v47, &unk_100262580, &qword_1001CFF70);
  }

  else
  {
    v85 = *(v0 + 240);
    v86 = *(v47 + 16);

    sub_10000F500(v85, &unk_100262580, &qword_1001CFF70);
    LOBYTE(v85) = GenerativeExperiencesSession.canUndo()();

    if (v85)
    {
      v87 = async function pointer to GenerativeExperiencesSession.undo()[1];
      v88 = swift_task_alloc();
      *(v0 + 376) = v88;
      *v88 = v0;
      v88[1] = sub_1000769D4;
      v89 = *(v0 + 192);

      return GenerativeExperiencesSession.undo()(v89);
    }
  }

  v49 = *(v0 + 288);
  v48 = *(v0 + 296);
  v50 = *(v0 + 184);
  swift_getKeyPath();
  *(v0 + 168) = v50;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v50 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__showingOriginal))
  {
    v51 = *(v0 + 360);

LABEL_33:
    swift_unknownObjectRelease();
LABEL_36:
    v62 = *(v0 + 352);
    goto LABEL_37;
  }

  v53 = *(v0 + 320);
  v52 = *(v0 + 328);
  v55 = *(v0 + 304);
  v54 = *(v0 + 312);
  v56 = *(v0 + 288);
  v57 = *(v0 + 296);
  v58 = *(v0 + 232);
  v59 = *(v0 + 184);
  swift_getKeyPath();
  *(v0 + 176) = v59;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000081F8(v59 + v55, v58, &unk_100262580, &qword_1001CFF70);
  if (v53(v58, 1, v54))
  {
    v60 = *(v0 + 360);
    v61 = *(v0 + 232);

    swift_unknownObjectRelease();
    sub_10000F500(v61, &unk_100262580, &qword_1001CFF70);
    goto LABEL_36;
  }

  v90 = *(v0 + 232);
  v91 = *(v90 + 8);
  *(v0 + 464) = v91;
  v92 = v91;
  sub_10000F500(v90, &unk_100262580, &qword_1001CFF70);
  v93 = [v92 attributedText];
  *(v0 + 472) = v93;
  [v92 range];
  v94 = [v93 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Range<>.init(_:in:)();
  LOBYTE(v94) = v95;

  v97 = *(v0 + 360);
  v96 = *(v0 + 368);
  if (v94)
  {

    goto LABEL_33;
  }

  v98 = [v92 range];
  v100 = [v93 attributedSubstringFromRange:{v98, v99}];
  *(v0 + 480) = v100;
  v101 = [v100 string];
  v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v103;

  *(v0 + 488) = v104;
  [v97 writingToolsSession:v96 didReceiveAction:3];
  v105 = v100;
  v106 = swift_task_alloc();
  *(v0 + 496) = v106;
  *v106 = v0;
  v106[1] = sub_10007784C;
  v107 = *(v0 + 184);

  return sub_1000897EC(v102, v104, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, 0, 1, v100);
}