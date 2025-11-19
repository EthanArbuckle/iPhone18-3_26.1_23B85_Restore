unint64_t sub_10019BC78()
{
  result = qword_1002668F0;
  if (!qword_1002668F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002668F0);
  }

  return result;
}

unint64_t sub_10019BCD0()
{
  result = qword_1002668F8;
  if (!qword_1002668F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002668F8);
  }

  return result;
}

uint64_t sub_10019BD24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEC00000074786554 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E756F72727573 && a2 == 0xEF74786554676E69)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_10019BE48()
{
  result = qword_100266900;
  if (!qword_100266900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266900);
  }

  return result;
}

uint64_t sub_10019BEEC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
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

uint64_t sub_10019C068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  v4 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_10019C0C4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v2 + *a2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_10019C18C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_10019C260(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_10019C2A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;

    swift_getKeyPath();
    sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *v5;
    v10 = v5[1];

    return sub_10019BEEC(v9, v10);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10019C490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer);
  v4 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8);
  *v3 = a2;
  v3[1] = a3;

  swift_getKeyPath();
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *v3;
  v5 = v3[1];

  return sub_10019BEEC(v6, v5);
}

uint64_t sub_10019C574()
{
  swift_getKeyPath();
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex);
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex + 8);
  return result;
}

uint64_t sub_10019C624@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_10019C714(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex;
  if ((*(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10019C854(uint64_t result, uint64_t a2, char a3)
{
  v3 = result + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex;
  *v3 = a2;
  *(v3 + 8) = a3 & 1;
  return result;
}

uint64_t sub_10019C870()
{
  v1 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);
  result = [v6 answerOptions];
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = result;
  v9 = [result count];

  if (!v9)
  {
    return 2;
  }

  result = [v6 answerOptions];
  if (!result)
  {
    goto LABEL_21;
  }

  v10 = result;
  v11 = [result count];

  if (v11 > 3)
  {
    return 1;
  }

  result = [v6 answerOptions];
  if (result)
  {
    v12 = result;
    NSOrderedSet.makeIterator()();

    while (1)
    {
      NSFastEnumerationIterator.next()();
      if (!v21)
      {
        (*(v2 + 8))(v5, v1);
        return 0;
      }

      sub_100008150(&v20, &v19);
      if (!swift_dynamicCast())
      {
        break;
      }

      v13 = String.count.getter();

      if (v13 >= 11)
      {
        goto LABEL_18;
      }
    }

    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000F34C(v14, qword_100276F20);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unexpected answer format", v17, 2u);
    }

LABEL_18:
    (*(v2 + 8))(v5, v1);
    return 1;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10019CB38()
{
  v1 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

  v4 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8);

  v5 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for QuestionnaireEntry()
{
  result = qword_100266950;
  if (!qword_100266950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019CCA0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10019CDE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_10019CE94()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_10019CEB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019CF9C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_10019CFE4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10019D0D8(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), uint64_t (*a5)(unint64_t, char *, uint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    v13 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v6;
    sub_1001A9F58(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v6 = v32;
  }

  else
  {
    v18 = *v6;
    v19 = sub_100005044(a2);
    if (v20)
    {
      v21 = v19;
      v22 = *v7;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v7;
      v33 = *v7;
      if (!v23)
      {
        a6();
        v24 = v33;
      }

      v25 = *(v24 + 48);
      v26 = type metadata accessor for UUID();
      v27 = *(v26 - 8);
      v28 = *(v27 + 8);
      v28(v25 + *(v27 + 72) * v21, v26);
      v29 = *(*(v24 + 56) + 8 * v21);

      sub_1001A9604(v21, v24);
      result = (v28)(a2, v26);
      *v7 = v24;
    }

    else
    {
      v30 = type metadata accessor for UUID();
      v31 = *(*(v30 - 8) + 8);

      return v31(a2, v30);
    }
  }

  return result;
}

uint64_t sub_10019D2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100008198(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1001A9C28(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_10000F500(a1, &qword_100267368, &qword_1001E19E0);
    sub_1001A939C(a2, a3, v10);

    return sub_10000F500(v10, &qword_100267368, &qword_1001E19E0);
  }

  return result;
}

uint64_t sub_10019D3DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1001AA4B4(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_100005044(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_1000F30AC();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_1001A9604(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = type metadata accessor for UUID();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

id sub_10019D5D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_10019D690(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100035E70(v2);
}

uint64_t sub_10019D6C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 96);
  *(a2 + 24) = v7;
  return sub_10002879C(v4, v5, v6, v7);
}

uint64_t sub_10019D77C(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a1 + 24);
  sub_10002879C(*a1, v3, v4, v6);
  return sub_100036534(v2, v3, v4, v6);
}

uint64_t sub_10019D7E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 104);
}

uint64_t sub_10019D88C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100036728(v4);
}

uint64_t sub_10019D8B8(uint64_t a1)
{
  v1 = *sub_100027874((a1 + 32), *(a1 + 56));
  sub_1000081B0(0, &unk_100262480, WTContext_ptr);
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_10019D93C()
{
  v1 = v0;
  v2 = _convertErrorToNSError(_:)();
  v3 = sub_10019E79C(v2, v1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276F08);
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error occurred: %@, but handoff to Montara", v8, 0xCu);
    sub_10000F500(v9, &unk_10025D580, &qword_1001CFA60);
  }

  type metadata accessor for RewritingModel();
  if (sub_1000B46A0())
  {
    v11 = v5;
    v2 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = v11;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v2, v12, "%@ occurred while in handoff, this is not expected", v13, 0xCu);
      sub_10000F500(v14, &unk_10025D580, &qword_1001CFA60);

      return v3 & 1;
    }

LABEL_12:
    return v3 & 1;
  }

  v16 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState;
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState) == 1)
  {

    *(v1 + v16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v3 & 1;
}

uint64_t sub_10019DCA8()
{
  v1 = v0;
  v2 = _convertErrorToNSError(_:)();
  v3 = sub_10019E79C(v2, v1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276F08);
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error occurred: %@, but handoff to Montara", v8, 0xCu);
    sub_10000F500(v9, &unk_10025D580, &qword_1001CFA60);
  }

  type metadata accessor for ProofreadingModel();
  if (sub_10019E9DC())
  {
    v11 = v5;
    v2 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = v11;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v2, v12, "%@ occurred while in handoff, this is not expected", v13, 0xCu);
      sub_10000F500(v14, &unk_10025D580, &qword_1001CFA60);

      return v3 & 1;
    }

LABEL_12:
    return v3 & 1;
  }

  v16 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState;
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState) == 1)
  {

    *(v1 + v16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v3 & 1;
}

uint64_t sub_10019E000()
{
  sub_1000081B0(0, &qword_10025B1A8, NSError_ptr);
  sub_1001ADE78();
  v1 = v0;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = _convertErrorToNSError(_:)();

  v4 = [v3 domain];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  v12 = v1;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v13 = v12;
  }

  v14 = _convertErrorToNSError(_:)();

  v15 = [v14 code];

  v16 = vdupq_n_s64(v15);
  return vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_100249F50, v16), vceqq_s64(unk_100249F60, v16)), vuzp1q_s32(vceqq_s64(xmmword_100249F70, v16), vceqq_s64(unk_100249F80, v16))))) & 1;
}

uint64_t sub_10019E204()
{
  sub_1000081B0(0, &qword_10025B1A8, NSError_ptr);
  sub_1001ADE78();
  v1 = v0;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = _convertErrorToNSError(_:)();

  v4 = [v3 domain];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      type metadata accessor for SummarizationClientError(0);
      v11 = v1;
      if (swift_dynamicCast())
      {
        v12 = related decl 'e' for SummarizationClientError.isSensitiveContentError.getter();
      }

      else
      {
        v12 = 0;
      }

      return v12 & 1;
    }
  }

  v13 = v1;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v14 = v13;
  }

  v15 = _convertErrorToNSError(_:)();

  v16 = [v15 code];

  v12 = v16 == 35;
  return v12 & 1;
}

uint64_t sub_10019E41C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10017DB24(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10019E568(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10019E6AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1001AA680(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1001AB278(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10019E79C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativeAssistantRestrictionManager();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_100138554() & 1) == 0)
  {
    goto LABEL_14;
  }

  static GenerativeAssistantRestrictionManager.instance.getter();
  v8 = GenerativeAssistantRestrictions.isMontaraAllowed.getter();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  v14[0] = a2;
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(a2 + 96))
  {
    v10 = *(a2 + 72);
    if (v10 != 9)
    {
      if (v10 == 5)
      {
        v9 = sub_10019E000();
        return v9 & 1;
      }

LABEL_11:
      v9 = sub_10019E204();
      return v9 & 1;
    }

    if (sub_10019E204())
    {
      v14[3] = &type metadata for WritingTools;
      v14[4] = sub_10002AC88();
      LOBYTE(v14[0]) = 15;
      v11 = isFeatureEnabled(_:)();
      sub_10000F4B4(v14);
      v9 = v11;
      return v9 & 1;
    }

LABEL_14:
    v9 = 0;
    return v9 & 1;
  }

  swift_getKeyPath();
  v14[0] = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a2 + 96) != 2)
  {
    goto LABEL_14;
  }

  v9 = 0;
  if (*(a2 + 72) == 1 && *(a2 + 80) == 0)
  {
    goto LABEL_11;
  }

  return v9 & 1;
}

uint64_t sub_10019E9DC()
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState);
}

uint64_t sub_10019EA98@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_10019EB74(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

unint64_t sub_10019EC8C()
{
  result = sub_100005770(_swiftEmptyArrayStorage);
  qword_100277358 = result;
  return result;
}

void sub_10019ECB4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28 = v1;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session;
  v9 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
  if (v9)
  {
    if (a1)
    {
      sub_1000081B0(0, &unk_10025D5F0, WTSession_ptr);
      v10 = v9;
      v11 = a1;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  swift_getKeyPath();
  v28 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + v8))
  {
    if (*(v2 + 104))
    {
      KeyPath = swift_getKeyPath();
      v25 = &v24;
      __chkstk_darwin(KeyPath);
      *(&v24 - 2) = v2;
      *(&v24 - 1) = 0;
      v28 = v2;
      sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    sub_10019F988(_swiftEmptyArrayStorage);
    v15 = sub_100005EF4(_swiftEmptyArrayStorage);
    sub_10019FE70(v15);
    if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__expandedSuggestion))
    {
      v16 = swift_getKeyPath();
      __chkstk_darwin(v16);
      *(&v24 - 2) = v2;
      *(&v24 - 1) = 0;
      v28 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v25 = v4;
    v17 = sub_100005F18(_swiftEmptyArrayStorage);
    sub_1001A035C(v17);
    sub_100036BF0(0);
    if (*(v2 + 136))
    {
      v18 = swift_getKeyPath();
      __chkstk_darwin(v18);
      *(&v24 - 2) = v2;
      *(&v24 - 1) = 0;
      v28 = v2;
      sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (*(v2 + 144))
    {
      v19 = swift_getKeyPath();
      __chkstk_darwin(v19);
      *(&v24 - 2) = v2;
      *(&v24 - 8) = 0;
      v28 = v2;
      sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v2 + 144) = 0;
      sub_1000374BC(0);
    }

    v20 = v25;
    if (qword_10025A890 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    v28 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v2 + v8);
    if (!v21)
    {
      __break(1u);
      return;
    }

    v22 = [v21 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = qword_100277358;
    qword_100277358 = 0x8000000000000000;
    sub_1001A9F58(v2, v7, isUniquelyReferenced_nonNull_native, sub_1000F2494, sub_1000F028C, sub_1000F4AD4);
    (*(v26 + 8))(v7, v20);
    qword_100277358 = v27;
  }

  else
  {
    if (!a1)
    {
      return;
    }

    if (qword_10025A890 != -1)
    {
      swift_once();
    }

    v14 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_10019D0D8(0, v7, sub_1000F2494, sub_1000F028C, sub_1000F4AD4, sub_1000F2494);
  }

  swift_endAccess();
}

void sub_10019F41C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10019F44C(v2);
}

void sub_10019F44C(void *a1)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session;
  v4 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &unk_10025D5F0, WTSession_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  sub_10019ECB4(v10);
}

uint64_t sub_10019F618()
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task);
}

uint64_t sub_10019F6C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task);
}

uint64_t sub_10019F778(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10019F7A4(v4);
}

uint64_t sub_10019F7A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task;
  if (!*(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task);

  v5 = static Task.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_10019F95C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10019F988(v4);
}

void *sub_10019F9C4()
{
  v1 = v0;
  v44 = type metadata accessor for UUID();
  v2 = *(v44 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v44);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v47 = v1;
  v10 = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  v37 = v9;
  v43 = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v46 = _swiftEmptyArrayStorage;
  if (v12 >> 62)
  {
    goto LABEL_29;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v14 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates;

  v42 = v14;
  swift_beginAccess();
  if (v13)
  {
    v35 = v6;
    v36 = v8;
    v15 = 0;
    v39 = v12 & 0xFFFFFFFFFFFFFF8;
    v40 = v12 & 0xC000000000000001;
    v41 = v2 + 1;
    v6 = v37;
    while (1)
    {
      if (v40)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_28;
        }

        v17 = *(v12 + 8 * v15 + 32);
      }

      v2 = v17;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v13 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v19 = v12;
      v20 = [v17 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_getKeyPath();
      v45 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v21 = *(v1 + v42);
      if (!*(v21 + 16))
      {
        goto LABEL_6;
      }

      v22 = *(v1 + v42);

      v23 = sub_100005044(v8);
      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = *(*(v21 + 56) + 8 * v23);
      v38 = *v41;
      v38(v8, v44);

      if (v25)
      {
        v26 = [v2 uuid];
        v27 = v35;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_getKeyPath();
        v45 = v1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v28 = *(v1 + v42);
        if (!*(v28 + 16))
        {
          goto LABEL_21;
        }

        v29 = *(v1 + v42);

        v30 = sub_100005044(v27);
        if ((v31 & 1) == 0)
        {

LABEL_21:
          v38(v27, v44);
          v8 = v36;
          v6 = v37;
LABEL_22:

          goto LABEL_8;
        }

        v32 = *(*(v28 + 56) + 8 * v30);
        v38(v27, v44);

        v8 = v36;
        v6 = v37;
        if (v32 != 1)
        {
          goto LABEL_22;
        }
      }

LABEL_7:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v16 = v46[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_8:
      v12 = v19;
      ++v15;
      if (v18 == v13)
      {
        v33 = v46;
        goto LABEL_26;
      }
    }

LABEL_6:
    (*v41)(v8, v44);
    goto LABEL_7;
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_26:

  return v33;
}

uint64_t sub_10019FE44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10019FE70(v4);
}

void *sub_10019FEC0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_10019FF68@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1001A002C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__expandedSuggestion;
  v5 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__expandedSuggestion);
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
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
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

uint64_t sub_1001A01D8(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_1001A0290@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_1001A0398(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
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
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001A0564(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v2 + *a2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_1001A062C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_1001A0700(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_1001A0770(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (v8 = v6[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001A08D8()
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);

  return v1;
}

uint64_t sub_1001A0994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
  a2[1] = v4;
}

uint64_t sub_1001A0A4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1001A0A8C(v2, v3);
}

uint64_t sub_1001A0A8C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
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

uint64_t sub_1001A0C08@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000081F8(v5 + v3, a1, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1001A0CE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000081F8(v3 + v4, a2, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1001A0DB8(uint64_t a1, uint64_t *a2)
{
  sub_1000081F8(a1, v5, &unk_10025B1C0, &unk_1001CFA90);
  v3 = *a2;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000F500(v5, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1001A0EC0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  sub_10009AB44(a2, a1 + v4, &unk_10025B1C0, &unk_1001CFA90);
  return swift_endAccess();
}

uint64_t sub_1001A0F3C(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
    if (v6)
    {
      swift_getKeyPath();
      v7 = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v2 + v3))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [v5 writingToolsSession:v7 didReceiveAction:v8];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001A1084()
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal);
}

uint64_t sub_1001A112C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal) == (a1 & 1))
  {
    v4 = a1 & 1;

    return sub_1001A0F3C(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001A1268(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal;
  *(a1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal) = a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
    if (v6)
    {
      swift_getKeyPath();
      v7 = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(a1 + v3))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [v5 writingToolsSession:v7 didReceiveAction:v8];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001A13B8()
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 112))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal))
  {
    return 1;
  }

  v1 = sub_10019F9C4();
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      goto LABEL_5;
    }

    return 1;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();

  if (!v11)
  {
    return 1;
  }

LABEL_5:
  v3 = sub_10019F9C4();
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 != 1)
  {
    return 0;
  }

  v5 = sub_10019F9C4();
  v6 = v5;
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_20:

    __break(1u);
    goto LABEL_21;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_21:
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_13:
    v9 = v8;

    v10 = sub_1001A6F98(v9);

    return v10 == 1;
  }

  __break(1u);
  return result;
}

void *sub_1001A1610()
{
  v1 = v0;
  v28 = type metadata accessor for UUID();
  KeyPath = *(v28 - 8);
  v3 = *(KeyPath + 64);
  __chkstk_darwin(v28);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v30 = v0;
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = 0;
  if ((*(v0 + 112) & 1) == 0)
  {
    swift_getKeyPath();
    v7 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
    v30 = v1;
    v26 = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    v27 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
    swift_beginAccess();
    v9 = *(v1 + v8);
    if (v9 >> 62)
    {
      goto LABEL_22;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v11 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates;

    v25 = v11;
    swift_beginAccess();
    if (v10)
    {
      v12 = 0;
      v23 = v9 & 0xFFFFFFFFFFFFFF8;
      v24 = v9 & 0xC000000000000001;
      v13 = (KeyPath + 8);
      while (1)
      {
        if (v24)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v23 + 16))
          {
            goto LABEL_21;
          }

          v14 = *(v9 + 8 * v12 + 32);
        }

        v6 = v14;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v10 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_4;
        }

        v16 = [v14 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        KeyPath = swift_getKeyPath();
        v29 = v1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v17 = *(v1 + v25);
        if (!*(v17 + 16))
        {
          goto LABEL_7;
        }

        v18 = *(v1 + v25);

        v19 = sub_100005044(v5);
        if ((v20 & 1) == 0)
        {
          break;
        }

        KeyPath = *(*(v17 + 56) + 8 * v19);
        (*v13)(v5, v28);

        if (KeyPath == 1)
        {

          return v6;
        }

LABEL_8:

        ++v12;
        if (v15 == v10)
        {
          goto LABEL_18;
        }
      }

LABEL_7:
      (*v13)(v5, v28);
      goto LABEL_8;
    }

LABEL_18:

    return 0;
  }

  return v6;
}

uint64_t sub_1001A1988@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
  swift_beginAccess();
  return sub_1000081F8(v5 + v3, a1, &unk_100262450, &qword_1001CFAA0);
}

uint64_t sub_1001A1A60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
  swift_beginAccess();
  return sub_1000081F8(v3 + v4, a2, &unk_100262450, &qword_1001CFAA0);
}

uint64_t sub_1001A1B38(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_1000081F8(a1, &v10 - v6, &unk_100262450, &qword_1001CFAA0);
  v8 = *a2;
  return sub_1001A1BE4(v7);
}

uint64_t sub_1001A1BE4(uint64_t a1)
{
  v3 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
  swift_beginAccess();
  sub_1000081F8(v1 + v7, v6, &unk_100262450, &qword_1001CFAA0);
  v8 = sub_1001AD438(v6, a1);
  sub_10000F500(v6, &unk_100262450, &qword_1001CFAA0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000081F8(a1, v6, &unk_100262450, &qword_1001CFAA0);
    swift_beginAccess();
    sub_1001AE04C(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_10000F500(a1, &unk_100262450, &qword_1001CFAA0);
}

uint64_t sub_1001A1DEC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
  swift_beginAccess();
  sub_10009AB44(a2, a1 + v4, &unk_100262450, &qword_1001CFAA0);
  return swift_endAccess();
}

unint64_t sub_1001A1E68()
{
  v1 = v0;
  v51 = type metadata accessor for UUID();
  v2 = *(v51 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v51);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10000341C(&qword_10025F358, &qword_1001D4140);
  v5 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v7 = &v38 - v6;
  v8 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v57 = v1;
  v16 = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  v52 = v15;
  v53 = v16;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  swift_beginAccess();
  v55 = v1;
  v18 = *(v1 + v17);
  if (v18 >> 62)
  {
    goto LABEL_23;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    do
    {
      v44 = v12;
      v20 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
      v50 = v18 & 0xC000000000000001;
      v21 = v18;

      v48 = v20;
      swift_beginAccess();
      v22 = v21;
      v23 = 0;
      v40 = v21 & 0xFFFFFFFFFFFFFF8;
      v46 = (v2 + 48);
      v47 = (v2 + 56);
      v18 = &v58;
      v38 = (v2 + 32);
      v42 = v14;
      v43 = (v2 + 8);
      v45 = v21;
      v49 = v19;
      while (1)
      {
        if (v50)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *(v40 + 16))
          {
            goto LABEL_22;
          }

          v24 = *(v22 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = [v24 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v12 = v51;
        (*v47)(v14, 0, 1, v51);
        swift_getKeyPath();
        v27 = v55;
        v56 = v55;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v28 = *(v54 + 48);
        sub_1000081F8(v14, v7, &unk_100262450, &qword_1001CFAA0);
        sub_1000081F8(v27 + v48, &v7[v28], &unk_100262450, &qword_1001CFAA0);
        v29 = *v46;
        if ((*v46)(v7, 1, v12) == 1)
        {

          sub_10000F500(v14, &unk_100262450, &qword_1001CFAA0);
          v30 = v29(&v7[v28], 1, v12);
          v2 = v49;
          if (v30 == 1)
          {

            sub_10000F500(v7, &unk_100262450, &qword_1001CFAA0);
            return v23;
          }

          goto LABEL_13;
        }

        v31 = v44;
        sub_1000081F8(v7, v44, &unk_100262450, &qword_1001CFAA0);
        if (v29(&v7[v28], 1, v12) == 1)
        {

          v14 = v42;
          sub_10000F500(v42, &unk_100262450, &qword_1001CFAA0);
          (*v43)(v31, v12);
          v2 = v49;
LABEL_13:
          sub_10000F500(v7, &qword_10025F358, &qword_1001D4140);
          goto LABEL_15;
        }

        v32 = v39;
        (*v38)(v39, &v7[v28], v12);
        sub_1001A930C(&unk_10025F360, &type metadata accessor for UUID);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();

        v33 = *v43;
        (*v43)(v32, v12);
        v14 = v42;
        sub_10000F500(v42, &unk_100262450, &qword_1001CFAA0);
        v33(v31, v12);
        sub_10000F500(v7, &unk_100262450, &qword_1001CFAA0);
        v2 = v49;
        if (v41)
        {

          return v23;
        }

LABEL_15:
        v34 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        ++v23;
        v22 = v45;
        if (v34 == v2)
        {

          return 0;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v36 = v18;
      v37 = _CocoaArrayWrapper.endIndex.getter();
      v18 = v36;
      v19 = v37;
    }

    while (v37);
  }

  return 0;
}

uint64_t sub_1001A2480()
{
  swift_getKeyPath();
  v39 = v0;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  swift_beginAccess();
  v2 = *(v39 + v1);
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v5 = 0;
      v6 = _swiftEmptyArrayStorage;
      do
      {
        v7 = v5;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v7 >= *(v3 + 16))
            {
              goto LABEL_33;
            }

            v8 = v2[v7 + 4];
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }
          }

          v9 = v8;
          v10 = [v9 suggestionDescription];
          if (v10)
          {
            break;
          }

          ++v7;
          if (v5 == i)
          {
            goto LABEL_22;
          }
        }

        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_10017DD84(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_10017DD84((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v34;
      }

      while (v5 != i);
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

LABEL_22:

    v17 = *(v6 + 2);
    if (!v17)
    {
      break;
    }

    v38 = _swiftEmptyArrayStorage;
    v2 = &v38;
    sub_100163C20(0, v17, 0);
    v18 = 0;
    v35 = *(v6 + 2);
    v19 = v38;
    v20 = (v6 + 40);
    while (v35 != v18)
    {
      if (v18 >= *(v6 + 2))
      {
        goto LABEL_35;
      }

      v21 = v6;
      ++v18;
      v22 = *(v20 - 1);
      v23 = *v20;

      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v24;
      v25._countAndFlagsBits = 8250;
      v25._object = 0xE200000000000000;
      String.append(_:)(v25);
      v26._countAndFlagsBits = v22;
      v26._object = v23;
      String.append(_:)(v26);
      v2 = &v36;
      v27._countAndFlagsBits = 10;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);

      v3 = v36;
      v28 = v37;
      v38 = v19;
      v30 = v19[2];
      v29 = v19[3];
      if (v30 >= v29 >> 1)
      {
        v2 = &v38;
        sub_100163C20((v29 > 1), v30 + 1, 1);
        v19 = v38;
      }

      v19[2] = v30 + 1;
      v31 = &v19[2 * v30];
      v31[4] = v3;
      v31[5] = v28;
      v20 += 2;
      v6 = v21;
      if (v17 == v18)
      {

        goto LABEL_31;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_31:
  v36 = v19;
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0);
  v32 = BidirectionalCollection<>.joined(separator:)();

  return v32;
}

uint64_t sub_1001A2874(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  v23 = v1;
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 112) & 1) == 0 && (a1)
  {
    _StringGuts.grow(_:)(38);

    v23 = 0xD000000000000024;
    v24 = 0x80000001001EABB0;
    swift_getKeyPath();
    v22[0] = v1;
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v21 = *(v2 + v5);
      }

      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22[0] = v7;
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v10 = v23;
    v9 = v24;
    swift_getKeyPath();
    v23 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v2 + 120);
    if (v11)
    {
      v12 = *(v2 + 120);
      swift_errorRetain();

      swift_getErrorValue();
      v13._countAndFlagsBits = Error.localizedDescription.getter();
      v23 = 0xD000000000000011;
      v24 = 0x80000001001E5A30;
      String.append(_:)(v13);

      v10 = 0xD000000000000011;
      v9 = 0x80000001001E5A30;
      swift_getKeyPath();
      v22[0] = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v14 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
      swift_beginAccess();
      sub_1000081F8(v2 + v14, &v23, &unk_10025B1C0, &unk_1001CFA90);
      if (v25)
      {
        sub_100028458(&v23, v22);
        sub_10000F500(&v23, &unk_10025B1C0, &unk_1001CFA90);
        v15 = sub_100027874(v22, v22[3]);
        swift_getKeyPath();
        swift_errorRetain();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v16 = *(v2 + 96);
        if (v16 == 255)
        {
          __break(1u);
          return result;
        }

        v18 = *(v2 + 80);
        v17 = *(v2 + 88);
        v19 = *(v2 + 72);
        v20 = *v15;
        sub_10000F3F4(v19, v18, v17, v16);
        sub_10000DB64(v11, v19, v18, v17, v16);

        sub_1000278C0(v19, v18, v17, v16);

        sub_10000F4B4(v22);
      }

      else
      {

        sub_10000F500(&v23, &unk_10025B1C0, &unk_1001CFA90);
      }
    }

    sub_10006CC20("ProofreadGeneration", 19, 2, v10, v9);
  }

  return result;
}

uint64_t sub_1001A2C88()
{
  v1[77] = v0;
  v2 = *(*(sub_10000341C(&unk_10025B5D0, &qword_1001D05A0) - 8) + 64) + 15;
  v1[78] = swift_task_alloc();
  v3 = *(*(sub_10000341C(&qword_100260BD0, &qword_1001D5DA0) - 8) + 64) + 15;
  v1[79] = swift_task_alloc();
  v1[80] = type metadata accessor for MainActor();
  v1[81] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[82] = v5;
  v1[83] = v4;

  return _swift_task_switch(sub_1001A2D98, v5, v4);
}

uint64_t sub_1001A2D98()
{
  v1 = v0[77];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[84] = Strong;
  if (!Strong)
  {
    v11 = v0[81];

    if (qword_10025A720 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000F34C(v12, qword_100276FC8);
    v8 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v13, "Unexpected proofread missing writingToolsDelegate", v14, 2u);
    }

    goto LABEL_12;
  }

  v3 = Strong;
  v4 = v0[77];
  swift_getKeyPath();
  v0[85] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v0[64] = v4;
  v0[86] = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session;
  v0[87] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session;
  if (*(v4 + v5))
  {
    v6 = v0[81];

    if (qword_10025A720 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F34C(v7, qword_100276FC8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unexpected proofread already in flight", v10, 2u);
    }

    swift_unknownObjectRelease();
LABEL_12:

    v15 = v0[79];
    v16 = v0[78];

    v17 = v0[1];

    return v17();
  }

  v19 = v0[77];
  sub_10019F44C([objc_allocWithZone(WTSession) initWithType:1 textViewDelegate:0]);
  swift_getKeyPath();
  v0[66] = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v4 + v5);
  v0[88] = v21;
  if (v21)
  {
    v0[2] = v0;
    v0[7] = v0 + 65;
    v0[3] = sub_1001A31A4;
    v22 = swift_continuation_init();
    v0[37] = sub_10000341C(&unk_10025D5C0, &qword_1001D2620);
    v0[30] = _NSConcreteStackBlock;
    v0[31] = 1107296256;
    v0[32] = sub_10019D8B8;
    v0[33] = &unk_100252A10;
    v0[34] = v22;
    [v3 willBeginWritingToolsSession:v21 requestContexts:v0 + 30];
    v20 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v20);
}

uint64_t sub_1001A31A4()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 656);
  v3 = *v0;

  return _swift_task_switch(sub_1001A32AC, v2, v1);
}

void *sub_1001A32AC()
{
  v1 = v0;
  v2 = v0[88];
  v3 = v0[77];
  sub_100036728(v0[65]);

  swift_getKeyPath();
  v0[67] = v3;
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v5 >> 62)
  {
LABEL_26:
    v94 = v1;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_4:
      v6 = v1[77];
      swift_getKeyPath();
      v1[68] = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v7 = *(v3 + 104);
      if (v7)
      {
        if (v7 >> 62)
        {
          if (v7 < 0)
          {
            v64 = *(v3 + 104);
          }

          v8 = _CocoaArrayWrapper.endIndex.getter();
          if (v8)
          {
LABEL_7:
            v88 = v7 & 0xFFFFFFFFFFFFFF8;
            v89 = v1[77];
            v91 = v7 & 0xC000000000000001;

            v9 = 0;
            v90 = v7;
            while (1)
            {
              if (v91)
              {
                v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v9 >= *(v88 + 16))
                {
                  goto LABEL_25;
                }

                v10 = *(v7 + 8 * v9 + 32);
              }

              v11 = v10;
              if (__OFADD__(v9, 1))
              {
                __break(1u);
LABEL_25:
                __break(1u);
                goto LABEL_26;
              }

              v12 = v1[77];
              swift_getKeyPath();
              v1[69] = v12;

              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v13 = *(v3 + 104);
              if (!v13)
              {
                break;
              }

              v14 = *(v3 + 104);

              v15 = sub_10017BCDC(v7, v13);

              if ((v15 & 1) == 0)
              {
                goto LABEL_19;
              }

              v92 = v9 + 1;
              v16 = v1[79];
              v17 = v94[77];
              v18 = type metadata accessor for TextComposerClient();
              v19 = *(v18 + 48);
              v20 = *(v18 + 52);
              swift_allocObject();
              TextComposerClient.init()();
              v21 = [v11 attributedText];
              v93 = v11;
              [v11 range];
              v22 = type metadata accessor for RewriteType();
              (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
              sub_1000057A8(_swiftEmptyArrayStorage);

              sub_10000341C(&qword_10025D598, &qword_1001E1780);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1001CF9D0;
              *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(inited + 40) = v24;
              swift_getKeyPath();
              v94[70] = v17;
              v1 = v94;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              result = *(v89 + 24);
              if (!result)
              {
                __break(1u);
                goto LABEL_51;
              }

              v25 = v94[79];
              v26 = [result pid];
              *(inited + 72) = &type metadata for Int32;
              *(inited + 48) = v26;
              sub_1000057A8(inited);
              swift_setDeallocating();
              sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
              v27 = dispatch thunk of TextComposerClient.actualRangeForRewritingOrReview(of:range:rewriteType:options:)();
              v29 = v28;
              sub_10000F500(v94[79], &qword_100260BD0, &qword_1001D5DA0);

              [v93 setRange:{v27, v29}];

              ++v9;
              v7 = v90;
              if (v92 == v8)
              {
                goto LABEL_39;
              }
            }

LABEL_19:
            v30 = v1[81];

            if (qword_10025A720 != -1)
            {
              swift_once();
            }

            v31 = type metadata accessor for Logger();
            sub_10000F34C(v31, qword_100276FC8);
            v32 = Logger.logObject.getter();
            v33 = static os_log_type_t.default.getter();
            v34 = os_log_type_enabled(v32, v33);
            v35 = v1[84];
            if (v34)
            {
              v36 = swift_slowAlloc();
              *v36 = 0;
              _os_log_impl(&_mh_execute_header, v32, v33, "contexts changed while getting actual context range for proofread - stopping", v36, 2u);
            }

            goto LABEL_46;
          }
        }

        else
        {
          v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8)
          {
            goto LABEL_7;
          }
        }

LABEL_39:
        v65 = v1[87];
        v66 = v1[86];
        v67 = v1[85];
        v68 = v1[81];
        v69 = v1[77];

        swift_getKeyPath();
        v1[73] = v69;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v70 = *(v69 + v65);
        if (v70)
        {
          v71 = v1[84];
          sub_1000081B0(0, &unk_100262480, WTContext_ptr);
          v72 = v70;
          v73.super.isa = Array._bridgeToObjectiveC()().super.isa;
          [v71 didBeginWritingToolsSession:v72 contexts:v73.super.isa];
        }

        else
        {
          if (qword_10025A720 != -1)
          {
            swift_once();
          }

          v74 = type metadata accessor for Logger();
          sub_10000F34C(v74, qword_100276FC8);
          v73.super.isa = Logger.logObject.getter();
          v75 = static os_log_type_t.error.getter();
          v1 = v94;
          if (os_log_type_enabled(v73.super.isa, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = 0;
            _os_log_impl(&_mh_execute_header, v73.super.isa, v75, "Unexpected missing session for didBeginWritingToolsSession", v76, 2u);
          }
        }

        v77 = v1[84];
        v78 = v1[80];
        v79 = v1[78];
        v80 = v1[77];

        v81 = type metadata accessor for TaskPriority();
        (*(*(v81 - 8) + 56))(v79, 1, 1, v81);

        v82 = static MainActor.shared.getter();
        v83 = swift_allocObject();
        v83[2] = v82;
        v83[3] = &protocol witness table for MainActor;
        v83[4] = v7;
        v83[5] = v80;
        v84 = sub_10015C9C8(0, 0, v79, &unk_1001E1858, v83);
        sub_10019F7A4(v84);
LABEL_46:
        swift_unknownObjectRelease();
        goto LABEL_47;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v94 = v0;
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  if (qword_10025A720 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000F34C(v37, qword_100276FC8);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Error in proofreading: Unable to retrieve text from selection", v40, 2u);
  }

  v41 = v1[86];
  v42 = v94[85];
  v43 = v94[77];

  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_1001CF9D0;
  *(v44 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v44 + 72) = &type metadata for String;
  *(v44 + 40) = v45;
  *(v44 + 48) = 0xD000000000000026;
  *(v44 + 56) = 0x80000001001E5B50;
  sub_1000057A8(v44);
  swift_setDeallocating();
  sub_10000F500(v44 + 32, &qword_10025D5A0, &qword_1001D45E0);
  v46 = objc_allocWithZone(NSError);
  v47 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v49 = [v46 initWithDomain:v47 code:1 userInfo:isa];

  sub_100036BF0(v49);
  swift_getKeyPath();
  v94[74] = v43;
  v1 = v94;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v50 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v43 + v50, (v94 + 48), &unk_10025B1C0, &unk_1001CFA90);
  if (v94[51])
  {
    v51 = v94[77];
    sub_100028458((v94 + 48), (v94 + 53));
    sub_10000F500((v94 + 48), &unk_10025B1C0, &unk_1001CFA90);
    v52 = sub_100027874(v94 + 53, v94[56]);
    swift_getKeyPath();
    v94[75] = v51;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = *(v51 + 120);
    swift_getKeyPath();
    v94[76] = v51;
    swift_errorRetain();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v54 = *(v51 + 96);
    if (v54 == 255)
    {
LABEL_53:
      __break(1u);
      __break(1u);
      return result;
    }

    v55 = v94[84];
    v56 = v94[81];
    v57 = v94[77];
    v59 = v57[10];
    v58 = v57[11];
    v60 = v57[9];
    sub_10000F3F4(v60, v59, v58, *(v51 + 96));

    v61 = *v52;
    sub_10000DB64(v53, v60, v59, v58, v54);
    swift_unknownObjectRelease();
    sub_1000278C0(v60, v59, v58, v54);

    sub_10000F4B4(v94 + 53);
    v1 = v94;
  }

  else
  {
    v62 = v94[84];
    v63 = v94[81];

    swift_unknownObjectRelease();
    sub_10000F500((v94 + 48), &unk_10025B1C0, &unk_1001CFA90);
  }

LABEL_47:
  v85 = v1[79];
  v86 = v1[78];

  v87 = v1[1];

  return v87();
}

uint64_t sub_1001A41D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_1001A4268, v7, v6);
}

uint64_t sub_1001A4268()
{
  v1 = v0[7];
  swift_getKeyPath();
  v0[2] = v1;
  v0[11] = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  v0[12] = sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 104);
  if (v2 && (v3 = v0[6], v4 = *(v1 + 104), , LOBYTE(v3) = sub_10017BCDC(v3, v2), , (v3 & 1) != 0))
  {
    v5 = v0[7];
    if (*(v5 + 112) == 1)
    {
      sub_10003689C(1u);
    }

    else
    {
      swift_getKeyPath();
      v13 = swift_task_alloc();
      *(v13 + 16) = v5;
      *(v13 + 24) = 1;
      v0[3] = v5;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v0[13] = 0;
    v14 = v0[6];
    v15 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v14 >> 62)
    {
      if (v14 < 0)
      {
        v28 = v0[6];
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      v14 = v0[6];
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0[14] = v15;
    v0[15] = result;
    v16 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session;
    v0[16] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
    v0[17] = v16;
    if (result)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v29 = v0[16];
        v16 = v0[17];
      }

      else
      {
        if (!*(v15 + 16))
        {
          __break(1u);
          return result;
        }

        v17 = *(v14 + 32);
      }

      v0[18] = v17;
      v0[19] = 1;
      v18 = v0[7];
      swift_getKeyPath();
      v0[4] = v18;
      sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v18 + v16))
      {
        v19 = swift_task_alloc();
        v0[20] = v19;
        *v19 = v0;
        v19[1] = sub_1001A46F4;
        v20 = v0[7];

        return sub_1001A4A94(v17);
      }

      v22 = v0[8];
    }

    else
    {
      v21 = v0[8];
    }

    v23 = v0[7];
    if (*(v23 + 112))
    {
      v25 = v0[12];
      v24 = v0[13];
      v26 = v0[11];
      swift_getKeyPath();
      v27 = swift_task_alloc();
      *(v27 + 16) = v23;
      *(v27 + 24) = 0;
      v0[5] = v23;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      sub_10003689C(0);
    }
  }

  else
  {
    v6 = v0[8];

    if (qword_10025A720 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F34C(v7, qword_100276FC8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "contexts changed while attemping to run proofread in contexts - stopping", v10, 2u);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001A46F4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return _swift_task_switch(sub_1001A4814, v4, v3);
}

void sub_1001A4814()
{
  v1 = v0[18];
  v2 = static Task<>.isCancelled.getter();

  if (v2)
  {
    v3 = v0[8];

    goto LABEL_17;
  }

  v4 = v0[19];
  if (v4 == v0[15])
  {
    v5 = v0[8];
    goto LABEL_14;
  }

  v6 = v0[6];
  if ((v6 & 0xC000000000000001) != 0)
  {
    v21 = v0[19];
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v4 >= *(v0[14] + 16))
    {
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *(v6 + 8 * v4 + 32);
  }

  v8 = v7;
  v0[18] = v7;
  v0[19] = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[7];
  swift_getKeyPath();
  v0[4] = v11;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v11 + v10))
  {
    v14 = v0[8];

LABEL_14:

    v15 = v0[7];
    if (*(v15 + 112))
    {
      v16 = v0[12];
      v17 = v0[13];
      v18 = v0[11];
      swift_getKeyPath();
      v19 = swift_task_alloc();
      *(v19 + 16) = v15;
      *(v19 + 24) = 0;
      v0[5] = v15;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      sub_10003689C(0);
    }

LABEL_17:
    v20 = v0[1];

    v20();
    return;
  }

  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_1001A46F4;
  v13 = v0[7];

  sub_1001A4A94(v8);
}

uint64_t sub_1001A4A94(uint64_t a1)
{
  v2[133] = v1;
  v2[132] = a1;
  v3 = type metadata accessor for UUID();
  v2[134] = v3;
  v4 = *(v3 - 8);
  v2[135] = v4;
  v5 = *(v4 + 64) + 15;
  v2[136] = swift_task_alloc();
  v6 = sub_10000341C(&qword_1002672E8, &qword_1001E1768);
  v2[137] = v6;
  v7 = *(v6 - 8);
  v2[138] = v7;
  v8 = *(v7 + 64) + 15;
  v2[139] = swift_task_alloc();
  v9 = sub_10000341C(&qword_1002672F0, &unk_1001E1770);
  v2[140] = v9;
  v10 = *(v9 - 8);
  v2[141] = v10;
  v11 = *(v10 + 64) + 15;
  v2[142] = swift_task_alloc();
  v2[143] = type metadata accessor for MainActor();
  v2[144] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[145] = v13;
  v2[146] = v12;

  return _swift_task_switch(sub_1001A4C64, v13, v12);
}

uint64_t sub_1001A4C64()
{
  sub_100038160();
  v1 = v0[133];
  swift_getKeyPath();
  v0[147] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v0[125] = v1;
  v0[148] = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  v0[149] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v1 + v2, (v0 + 42), &unk_10025B1C0, &unk_1001CFA90);
  if (v0[45])
  {
    v3 = v0[133];
    sub_100028458((v0 + 42), (v0 + 27));
    sub_10000F500((v0 + 42), &unk_10025B1C0, &unk_1001CFA90);
    v4 = sub_100027874(v0 + 27, v0[30]);
    swift_getKeyPath();
    v0[120] = v3;
    sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *(v3 + 96);
    if (v10 == 255)
    {
LABEL_10:
      __break(1u);
      __break(1u);
      __break(1u);
      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v5, v6, v7, v8, v9);
    }

    v11 = v0[133];
    v13 = v11[10];
    v12 = v11[11];
    v14 = v11[9];
    v15 = *v4;
    sub_10000F3F4(v14, v13, v12, v10);
    sub_10000C1CC(v14, v13, v12, v10, 0, 0, 0, 0, 2);
    sub_1000278C0(v14, v13, v12, v10);
    sub_10000F4B4(v0 + 27);
  }

  else
  {
    sub_10000F500((v0 + 42), &unk_10025B1C0, &unk_1001CFA90);
  }

  v16 = v0[133];
  v17 = v0[132];
  v18 = type metadata accessor for TextComposerClient();
  v0[150] = v18;
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  TextComposerClient.init()();
  v21 = [v17 attributedText];
  [v17 range];
  sub_1000057A8(_swiftEmptyArrayStorage);

  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v23;
  swift_getKeyPath();
  v0[151] = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  v0[122] = v16;
  v0[152] = sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v16 + 24);
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v24 = v0[142];
  v25 = v0[139];
  v26 = v0[138];
  v27 = v0[137];
  v28 = [v5 pid];
  *(inited + 72) = &type metadata for Int32;
  *(inited + 48) = v28;
  sub_1000057A8(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
  dispatch thunk of TextComposerClient.streamForReview(of:range:options:)();

  AsyncThrowingStream.makeAsyncIterator()();
  (*(v26 + 8))(v25, v27);
  v0[153] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session;
  v0[154] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionContextMapping;
  v0[155] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  v0[156] = TCTextCompositionAssistantOptionKeyContentWarning;
  v29 = v0[143];
  v30 = static MainActor.shared.getter();
  v0[157] = v30;
  v31 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v32 = swift_task_alloc();
  v0[158] = v32;
  *v32 = v0;
  v32[1] = sub_1001A5724;
  v33 = v0[142];
  v8 = v0[140];
  v7 = &protocol witness table for MainActor;
  v5 = v0 + 60;
  v9 = v0 + 121;
  v6 = v30;

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v5, v6, v7, v8, v9);
}

uint64_t sub_1001A5724()
{
  v2 = *v1;
  v3 = *(*v1 + 1264);
  v9 = *v1;
  *(*v1 + 1272) = v0;

  v4 = v2[157];

  v5 = v2[146];
  v6 = v2[145];
  if (v0)
  {
    v7 = sub_1001A6900;
  }

  else
  {
    v7 = sub_1001A5850;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1001A5850()
{
  v1 = v0[60];
  if (!v1)
  {
    v6 = v0[144];
    (*(v0[141] + 8))(v0[142], v0[140]);

    goto LABEL_5;
  }

  v2 = v0[61];
  v3 = v0[62];
  v4 = v0[63];
  if (static Task<>.isCancelled.getter())
  {
    v5 = v0[144];
    (*(v0[141] + 8))(v0[142], v0[140]);

LABEL_5:
    v7 = v0[142];
    v8 = v0[139];
    v9 = v0[136];

    v10 = v0[1];

    return v10();
  }

  v12 = v0[150];
  v178 = v1;

  v13 = static TextComposerClient.textCompositionClientFinishedKey.getter();
  KeyPath = v14;
  if (!*(v4 + 16))
  {

    __break(1u);
    goto LABEL_137;
  }

  v16 = sub_10000511C(v13, v14);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_119;
  }

  v19 = v0[156];
  v20 = v0[133];
  sub_10002B0D0(*(v4 + 56) + 32 * v16, (v0 + 72));
  sub_100008150(v0 + 36, v0 + 34);
  swift_dynamicCast();
  v170 = *(v0 + 1280);
  v0[118] = _swiftEmptyArrayStorage;
  v21 = sub_10009D1E0(v4);
  sub_1001A0528(v21, v22);
  v23 = sub_10009D68C(v4);
  sub_1001A0748(v23, v24);
  v25 = sub_10009D508(v4);
  sub_1001A0A8C(v25, v26);
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v172 = v2;
  v173 = v4;
  v171 = v3;
  if (*(v4 + 16))
  {
    v29 = sub_10000511C(v27, v28);
    v31 = v30;

    if (v31)
    {
      v32 = v0 + 130;
      sub_10002B0D0(*(v4 + 56) + 32 * v29, (v0 + 80));
      if (swift_dynamicCast())
      {
        if (*v32 == 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2 * (*v32 == 2);
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
  }

  v33 = 0;
LABEL_18:
  v34 = v0[152];
  v35 = v0[151];
  v36 = v0[133];
  swift_getKeyPath();
  v0[113] = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[108] = v36;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v37 = *(v36 + 136);
  v38 = v37 | v33;
  sub_100037118(v37 | v33);
  *(v36 + 136) = v38;
  v0[107] = v36;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  KeyPath = v178;
  v177 = v178 & 0xFFFFFFFFFFFFFF8;
  if (v178 >> 62)
  {
    goto LABEL_120;
  }

  v39 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
  v181 = v0 + 118;
  v183 = v0;
  if (v39)
  {
    v40 = 0;
    v41 = v0 + 124;
    v184 = (v0 + 129);
    v186 = v0 + 128;
    v42 = KeyPath & 0xC000000000000001;
    v176 = KeyPath + 32;
    v174 = KeyPath & 0xC000000000000001;
    v175 = v39;
    v180 = v0 + 124;
    do
    {
      if (v42)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v45 = __OFADD__(v40++, 1);
        if (v45)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (v40 >= *(v177 + 16))
        {
          goto LABEL_116;
        }

        v44 = *(v176 + 8 * v40);
        v45 = __OFADD__(v40++, 1);
        if (v45)
        {
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
          v39 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_20;
        }
      }

      v43 = v44;
      if ([v44 resultType] == 4)
      {
        v46 = [v43 grammarDetails];
        if (v46)
        {
          v47 = v46;
          v182 = v43;
          v179 = v40;
          sub_10000341C(&qword_1002672F8, &qword_1001E17E0);
          v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v49 = *(v48 + 16);
          if (v49)
          {
            v50 = v48 + 32;
            do
            {
              v51 = *v50;
              v52 = *(*v50 + 16);

              if (v52 && (v53 = sub_10000511C(0x616D6D617247534ELL, 0xEE0065676E615272), (v54 & 1) != 0))
              {
                sub_10002B0D0(*(v51 + 56) + 32 * v53, (v0 + 76));
                sub_1000081B0(0, &qword_100267308, NSValue_ptr);
                v55 = swift_dynamicCast();
                v56 = *v184;
                if (!v55)
                {
                  v56 = 0;
                }

                v193 = v56;
                if (!*(v51 + 16))
                {
LABEL_50:
                  KeyPath = 0;
                  if (!*(v51 + 16))
                  {
                    goto LABEL_57;
                  }

                  goto LABEL_51;
                }
              }

              else
              {
                v193 = 0;
                if (!*(v51 + 16))
                {
                  goto LABEL_50;
                }
              }

              v57 = sub_10000511C(0xD000000000000014, 0x80000001001EABE0);
              if ((v58 & 1) == 0)
              {
                goto LABEL_50;
              }

              sub_10002B0D0(*(v51 + 56) + 32 * v57, (v0 + 64));
              sub_10000341C(&qword_100267300, &qword_1001E17E8);
              if (swift_dynamicCast())
              {
                KeyPath = *v186;
              }

              else
              {
                KeyPath = 0;
              }

              if (!*(v51 + 16))
              {
LABEL_57:
                v63 = 0;
                if (!*(v51 + 16))
                {
                  goto LABEL_64;
                }

                goto LABEL_58;
              }

LABEL_51:
              v59 = sub_10000511C(0xD000000000000015, 0x80000001001EAC00);
              if ((v60 & 1) == 0)
              {
                goto LABEL_57;
              }

              sub_10002B0D0(*(v51 + 56) + 32 * v59, (v0 + 56));
              v61 = swift_dynamicCast();
              v62 = v0[99];
              if (v61)
              {
                v63 = v0[100];
              }

              else
              {
                v63 = 0;
              }

              if (!*(v51 + 16))
              {
LABEL_64:

                v70 = 0;
                v71 = v193;
                if (!v193)
                {
                  goto LABEL_34;
                }

                goto LABEL_65;
              }

LABEL_58:
              v64 = sub_10000511C(0xD000000000000018, 0x80000001001EAC20);
              if ((v65 & 1) == 0)
              {
                goto LABEL_64;
              }

              sub_10002B0D0(*(v51 + 56) + 32 * v64, (v0 + 52));

              v66 = swift_dynamicCast();
              v67 = v0[101];
              v68 = v0[102];
              if (v66)
              {
                v69 = v0[101];
                v70 = v0[102];
              }

              else
              {
                v70 = 0;
              }

              v71 = v193;
              if (!v193)
              {
LABEL_34:

LABEL_35:

                goto LABEL_36;
              }

LABEL_65:
              if (!KeyPath)
              {

                goto LABEL_35;
              }

              if (KeyPath >> 62)
              {
                if (!_CocoaArrayWrapper.endIndex.getter())
                {
LABEL_84:

LABEL_85:

                  goto LABEL_36;
                }
              }

              else if (!*((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_84;
              }

              if ((KeyPath & 0xC000000000000001) != 0)
              {
                v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_112;
                }

                v72 = *(KeyPath + 32);
                swift_unknownObjectRetain();
              }

              *v41 = v72;
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_85;
              }

              v73 = v0[103];
              v74 = v0[104];
              v75 = [v71 rangeValue];
              KeyPath = v76;
              v77 = [v182 range];
              v45 = __OFADD__(v75, v77);
              v78 = &v77[v75];
              if (v45)
              {
                goto LABEL_113;
              }

              v79 = String._bridgeToObjectiveC()();

              if (v63)
              {
                v80 = String._bridgeToObjectiveC()();
              }

              else
              {
                v80 = 0;
              }

              if (v70)
              {
                v81 = String._bridgeToObjectiveC()();
              }

              else
              {
                v81 = 0;
              }

              [objc_allocWithZone(WTTextSuggestion) initWithOriginalRange:v78 replacement:KeyPath suggestionCategory:v79 suggestionDescription:{v80, v81}];

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v82 = *((*v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v0 = v183;
              v41 = v180;
LABEL_36:
              v50 += 8;
              --v49;
            }

            while (v49);
          }

          KeyPath = v178;
          v40 = v179;
          v42 = v174;
          v39 = v175;
          v43 = v182;
        }
      }
    }

    while (v40 != v39);
  }

  v83 = v0[159];
  v84 = v0[153];
  v85 = v0[148];
  v86 = v0[147];
  v87 = v0[133];
  sub_1001A6F20(v181);
  swift_getKeyPath();
  v0[131] = v87;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v88 = *(v87 + v84);
  if (!v88)
  {
    goto LABEL_129;
  }

  v89 = *v181;
  if (*v181 >> 62)
  {
    if (v89 < 0)
    {
      v133 = *v181;
    }

    KeyPath = _CocoaArrayWrapper.endIndex.getter();
    v185 = v88;
    if (KeyPath)
    {
      goto LABEL_90;
    }

    goto LABEL_124;
  }

  KeyPath = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v185 = *(v87 + v84);
  if (!KeyPath)
  {
LABEL_124:
    v134 = v88;

LABEL_125:
    v135 = v0[155];
    v136 = v0[148];
    v137 = v0[147];
    v138 = v0[133];
    swift_getKeyPath();
    v0[116] = v138;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[117] = v138;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_10019E6AC(v89);
    swift_endAccess();
    v0[119] = v138;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v140 = Strong;
      v141 = v0[132];
      sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
      v142.super.isa = Array._bridgeToObjectiveC()().super.isa;
      [v140 proofreadingSession:v185 didReceiveSuggestions:v142.super.isa processedRange:v172 inContext:v171 finished:{v141, v170}];
      swift_unknownObjectRelease();
    }

    else
    {
      v142.super.isa = v185;
    }

LABEL_129:
    v143 = v0[149];
    v144 = v0[148];
    v145 = v0[147];
    v146 = v0[133];
    swift_getKeyPath();
    v0[105] = v146;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000081F8(v146 + v143, (v0 + 17), &unk_10025B1C0, &unk_1001CFA90);
    if (!v0[20])
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v164 = *v181;

      sub_10000F500((v0 + 17), &unk_10025B1C0, &unk_1001CFA90);
LABEL_133:
      v165 = v0[143];
      v166 = static MainActor.shared.getter();
      v0[157] = v166;
      v167 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v168 = swift_task_alloc();
      v0[158] = v168;
      *v168 = v0;
      v168[1] = sub_1001A5724;
      v169 = v0[142];
      v153 = v0[140];
      v152 = &protocol witness table for MainActor;
      v150 = (v0 + 60);
      v154 = v0 + 121;
      v151 = v166;

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v150, v151, v152, v153, v154);
    }

    v147 = v0[152];
    v148 = v0[151];
    v149 = v0[133];
    sub_100028458((v0 + 17), (v0 + 47));
    sub_10000F500((v0 + 17), &unk_10025B1C0, &unk_1001CFA90);
    v195 = sub_100027874(v0 + 47, v0[50]);
    swift_getKeyPath();
    v0[109] = v149;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v155 = *(v149 + 96);
    if (v155 != 255)
    {
      v156 = v0[152];
      v157 = v0[151];
      v158 = v0[133];
      v160 = v158[10];
      v159 = v158[11];
      v161 = v158[9];
      sub_10000F3F4(v161, v160, v159, v155);
      swift_bridgeObjectRelease_n();

      v162 = v0[118];

      swift_getKeyPath();
      v0[110] = v158;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v163 = *v195;
      sub_10000D118(v173, v161, v160, v159, v155, v158[17]);

      sub_1000278C0(v161, v160, v159, v155);
      sub_10000F4B4(v0 + 47);
      goto LABEL_133;
    }

LABEL_137:
    __break(1u);
    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v150, v151, v152, v153, v154);
  }

LABEL_90:
  v190 = v89 & 0xC000000000000001;
  v187 = v89 & 0xFFFFFFFFFFFFFF8;
  v90 = v88;

  v91 = 0;
  v189 = v89;
  v188 = KeyPath;
  while (1)
  {
    if (v190)
    {
      v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v100 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        goto LABEL_114;
      }
    }

    else
    {
      if (v91 >= *(v187 + 16))
      {
        goto LABEL_118;
      }

      v99 = *(v89 + 8 * v91 + 32);
      v100 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        goto LABEL_114;
      }
    }

    v191 = v100;
    v192 = v99;
    v194 = v91;
    v101 = v0[154];
    v102 = v0[148];
    v103 = v0[147];
    v104 = v0[136];
    v105 = v0[133];
    v106 = v0[132];
    v107 = [v99 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    v0[111] = v105;
    v108 = v106;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[112] = v105;
    KeyPath = swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    v109 = *(v105 + v101);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = *(v105 + v101);
    v0[114] = v111;
    *(v105 + v101) = 0x8000000000000000;
    v112 = sub_100005044(v104);
    v114 = *(v111 + 16);
    v115 = (v113 & 1) == 0;
    v45 = __OFADD__(v114, v115);
    v116 = v114 + v115;
    if (v45)
    {
      goto LABEL_115;
    }

    v117 = v113;
    if (*(v111 + 24) < v116)
    {
      break;
    }

    v0 = v183;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v131 = v112;
      sub_1000F333C();
      v112 = v131;
    }

LABEL_105:
    v121 = v0[114];
    v122 = v0[136];
    v123 = v0[135];
    v124 = v0[134];
    v125 = v0[132];
    KeyPath = v123 + 8;
    if (v117)
    {
      v92 = v121[7];
      v93 = *(v92 + 8 * v112);
      *(v92 + 8 * v112) = v125;

      (*KeyPath)(v122, v124);
    }

    else
    {
      v121[(v112 >> 6) + 8] |= 1 << v112;
      v127 = *(v123 + 16);
      v126 = v123 + 16;
      v128 = v112;
      v127(v121[6] + *(v126 + 56) * v112, v122, v124);
      *(v121[7] + 8 * v128) = v125;
      (*(v126 - 8))(v122, v124);
      v129 = v121[2];
      v45 = __OFADD__(v129, 1);
      v130 = v129 + 1;
      if (v45)
      {
        goto LABEL_117;
      }

      v121[2] = v130;
    }

    v0 = v183;
    v94 = v183[154];
    v95 = v183[148];
    v96 = v183[147];
    v97 = v183[133];
    v98 = *(v97 + v94);
    *(v97 + v94) = v121;

    swift_endAccess();
    v183[115] = v97;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v91 = v194 + 1;
    KeyPath = v188;
    v89 = v189;
    if (v191 == v188)
    {
      goto LABEL_125;
    }
  }

  v0 = v183;
  v118 = v183[136];
  sub_1000F1A10(v116, isUniquelyReferenced_nonNull_native);
  v119 = v183[114];
  v112 = sub_100005044(v118);
  if ((v117 & 1) == (v120 & 1))
  {
    goto LABEL_105;
  }

  v132 = v183[134];

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1001A6900()
{
  (*(v0[141] + 8))(v0[142], v0[140]);
  v1 = v0[121];
  v2 = v0[133];
  if ((sub_10019DCA8() & 1) == 0)
  {
    v19 = v0[133];
    swift_errorRetain();
    swift_errorRetain();
    sub_100036BF0(v1);
    if (qword_10025A720 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000F34C(v20, qword_100276FC8);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error occurred in proofreading: %@", v23, 0xCu);
      sub_10000F500(v24, &unk_10025D580, &qword_1001CFA60);
    }

    v26 = v0[133];

    swift_getKeyPath();
    v0[123] = v26;
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v26 + v27, (v0 + 12), &unk_10025B1C0, &unk_1001CFA90);
    if (v0[15])
    {
      v28 = v0[133];
      sub_100028458((v0 + 12), (v0 + 22));
      sub_10000F500((v0 + 12), &unk_10025B1C0, &unk_1001CFA90);
      v29 = sub_100027874(v0 + 22, v0[25]);
      swift_getKeyPath();
      v0[106] = v28;
      sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v30 = *(v28 + 96);
      if (v30 != 255)
      {
        v31 = v0[144];
        v32 = v0[133];
        v34 = v32[10];
        v33 = v32[11];
        v35 = v32[9];
        sub_10000F3F4(v35, v34, v33, v30);

        v36 = *v29;
        sub_10000DB64(v1, v35, v34, v33, v30);

        sub_1000278C0(v35, v34, v33, v30);

        v18 = v0 + 22;
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v39 = v0[144];

    v38 = (v0 + 12);
LABEL_15:
    sub_10000F500(v38, &unk_10025B1C0, &unk_1001CFA90);
    goto LABEL_16;
  }

  v3 = v0[133];
  swift_getKeyPath();
  v0[127] = v3;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v3 + v4, (v0 + 32), &unk_10025B1C0, &unk_1001CFA90);
  if (!v0[35])
  {
    v37 = v0[144];

    v38 = (v0 + 32);
    goto LABEL_15;
  }

  v5 = v0[133];
  sub_100028458((v0 + 32), (v0 + 37));
  sub_10000F500((v0 + 32), &unk_10025B1C0, &unk_1001CFA90);
  v6 = sub_100027874(v0 + 37, v0[40]);
  v7 = sub_1000971C0();
  v9 = v8;
  swift_getKeyPath();
  v0[126] = v5;
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v5 + 96);
  if (v11 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v0[144];
  v13 = v0[133];
  v15 = v13[10];
  v14 = v13[11];
  v16 = v13[9];
  sub_10000F3F4(v16, v15, v14, v11);

  v17 = *v6;
  sub_10000E808(v7, v9, v16, v15, v14, v11);

  sub_1000278C0(v16, v15, v14, v11);

  v18 = v0 + 37;
LABEL_12:
  sub_10000F4B4(v18);
LABEL_16:
  v40 = v0[142];
  v41 = v0[139];
  v42 = v0[136];

  v43 = v0[1];

  return v43();
}

void sub_1001A6F20(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_10017FA8C(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_1001AA720(v4);
  *a1 = v2;
}

uint64_t sub_1001A6F98(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  v16[1] = v2;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_100005044(v8);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      (*(v5 + 8))(v8, v4);

      return v14;
    }
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

void sub_1001A7170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v81 - v8;
  v99 = type metadata accessor for UUID();
  v97 = *(v99 - 8);
  v10 = *(v97 + 64);
  v11 = __chkstk_darwin(v99);
  v13 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = v81 - v14;
  v15 = sub_10000341C(&qword_1002672D8, &qword_1001E1730);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v81 - v20;
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v102 = v2;
  v86 = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates;
  swift_beginAccess();
  v95 = v2;
  v85 = v23;
  v24 = *(v2 + v23);
  if (*(v24 + 16))
  {
    v25 = *(v3 + v23);

    v26 = sub_100005044(a2);
    if ((v27 & 1) == 0)
    {

      if (a1 != 1)
      {
        goto LABEL_27;
      }

LABEL_7:
      v82 = v9;
      v83 = a2;
      v84 = a1;
      swift_getKeyPath();
      v29 = v95;
      v101 = v95;
      v81[1] = v22;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v30 = *(v29 + v85);
      v31 = v30 + 64;
      v32 = 1 << *(v30 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & *(v30 + 64);
      v87 = (v32 + 63) >> 6;
      v90 = v97 + 16;
      v35 = (v97 + 32);
      v98 = (v97 + 8);
      v94 = v30;

      v36 = 0;
      v37 = &qword_1002672E0;
      v92 = v19;
      v93 = v13;
      v91 = v21;
      v88 = v31;
      v89 = v35;
      while (v34)
      {
        v38 = v36;
LABEL_21:
        v41 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v42 = v41 | (v38 << 6);
        v43 = v94;
        v44 = v96;
        v45 = v97;
        v46 = v99;
        (*(v97 + 16))(v96, *(v94 + 48) + *(v97 + 72) * v42, v99);
        v47 = *(*(v43 + 56) + 8 * v42);
        v48 = sub_10000341C(v37, &qword_1001E1760);
        v49 = v37;
        v50 = *(v48 + 48);
        v51 = *(v45 + 32);
        v19 = v92;
        v52 = v44;
        v35 = v89;
        v51(v92, v52, v46);
        *&v19[v50] = v47;
        v37 = v49;
        (*(*(v48 - 8) + 56))(v19, 0, 1, v48);
        v13 = v93;
        v21 = v91;
        v31 = v88;
LABEL_22:
        sub_10002A894(v19, v21, &qword_1002672D8, &qword_1001E1730);
        v53 = sub_10000341C(v37, &qword_1001E1760);
        if ((*(*(v53 - 8) + 48))(v21, 1, v53) == 1)
        {

          a1 = v84;
          a2 = v83;
          v9 = v82;
          goto LABEL_27;
        }

        v54 = *&v21[*(v53 + 48)];
        (*v35)(v13, v21, v99);
        if (v54 == 1)
        {
          sub_1001A7170(0, v13);
        }

        (*v98)(v13, v99);
      }

      if (v87 <= v36 + 1)
      {
        v39 = v36 + 1;
      }

      else
      {
        v39 = v87;
      }

      v40 = v39 - 1;
      while (1)
      {
        v38 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v38 >= v87)
        {
          v55 = sub_10000341C(v37, &qword_1001E1760);
          (*(*(v55 - 8) + 56))(v19, 1, 1, v55);
          v34 = 0;
          v36 = v40;
          goto LABEL_22;
        }

        v34 = *(v31 + 8 * v38);
        ++v36;
        if (v34)
        {
          v36 = v38;
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v28 = *(*(v24 + 56) + 8 * v26);

    if (v28 == a1)
    {
      return;
    }
  }

  if (a1 == 1)
  {
    goto LABEL_7;
  }

LABEL_27:
  swift_getKeyPath();
  v56 = v95;
  v101 = v95;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = *(v56 + v85);
  if (!*(v57 + 16))
  {
LABEL_31:
    v62 = 1;
    goto LABEL_32;
  }

  v58 = *(v56 + v85);

  v59 = sub_100005044(a2);
  if ((v60 & 1) == 0)
  {

    goto LABEL_31;
  }

  v61 = *(*(v57 + 56) + 8 * v59);

  v62 = v61 != 1;
LABEL_32:
  swift_getKeyPath();
  v63 = v95;
  v101 = v95;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v101 = v63;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v64 = v85;
  swift_beginAccess();
  v65 = *(v63 + v64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100 = *(v63 + v64);
  *(v63 + v64) = 0x8000000000000000;
  sub_1001A9D7C(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v63 + v64) = v100;
  swift_endAccess();
  v101 = v63;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (!v62 && (a1 == 3 || !a1))
  {
    v67 = v97;
    v68 = v99;
    (*(v97 + 16))(v9, a2, v99);
    (*(v67 + 56))(v9, 0, 1, v68);
    sub_1001A1BE4(v9);
  }

  swift_getKeyPath();
  v69 = v95;
  v101 = v95;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v70 = *(v69 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
  if (v70)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v72 = Strong;
      v73 = v70;
      v74.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      swift_getKeyPath();
      v75 = v95;
      v101 = v95;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v76 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionContextMapping;
      swift_beginAccess();
      v77 = *(v75 + v76);
      if (*(v77 + 16))
      {

        v78 = sub_100005044(a2);
        if (v79)
        {
          v80 = *(*(v77 + 56) + 8 * v78);

          [v72 proofreadingSession:v73 didUpdateState:a1 forSuggestionWithUUID:v74.super.isa inContext:v80];

          swift_unknownObjectRelease();
          return;
        }

LABEL_44:
        __break(1u);
        return;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }
}

void sub_1001A7A44(char a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
  if (v9 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v10 = Strong;
    swift_getKeyPath();
    v14 = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v4 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task))
    {
      v11 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task);

      Task.cancel()();
    }

    if (a2)
    {
      swift_errorRetain();
      v12 = _convertErrorToNSError(_:)();
      [v10 endWritingToolsWithError:v12];

      v13 = v14;
    }

    else
    {
      v13 = v14;
      [v10 didEndWritingToolsSession:v14 accepted:(a1 == 2) | (a1 & 1)];
    }

    sub_10019F44C(0);
    if (a3)
    {
      a3();
    }

    swift_unknownObjectRelease();
  }

  else if (a3)
  {
    (a3)(Strong);
  }
}

uint64_t sub_1001A7C4C()
{
  v2 = v0;
  v65 = type metadata accessor for UUID();
  v3 = *(v65 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v65);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v58 - v8;
  result = sub_1001A13B8();
  if (result)
  {
    return result;
  }

  v62 = v7;
  v11 = sub_1001A1610();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001A7170(0, v9);
    (*(v3 + 8))(v9, v65);
  }

  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v66 = v2;
  v63 = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  v64 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  swift_beginAccess();
  v16 = *(v2 + v15);
  v17 = (v16 >> 62);
  if (v16 >> 62)
  {
LABEL_66:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v18 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < v18)
    {
      __break(1u);
      goto LABEL_70;
    }
  }

  else
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = v9;
  if ((v16 & 0xC000000000000001) == 0 || v18 == 0)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
    swift_bridgeObjectRetain_n();
    v20 = 0;
    do
    {
      v9 = (v20 + 1);
      _ArrayBuffer._typeCheckSlowPath(_:)(v20);
      v20 = v9;
    }

    while (v18 != v9);
  }

  v60 = v3;

  if (v17)
  {
    v3 = _CocoaArrayWrapper.subscript.getter();
    v21 = v23;
    v1 = v24;
    v22 = v25;
  }

  else
  {
    v1 = 0;
    v3 = v16 & 0xFFFFFFFFFFFFFF8;
    v21 = (v16 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = (2 * v18) | 1;
  }

  v26 = sub_1001A1E68();
  if (v27)
  {
    v28 = v60;
    v16 = v3;
    goto LABEL_48;
  }

  v18 = v26;
  swift_getKeyPath();
  v66 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v2 + v15);
  v17 = (v16 >> 62);
  if (!(v16 >> 62))
  {
    v29 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29 >= v18)
    {
      goto LABEL_20;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_70:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v18)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v29 = result;
  if (_CocoaArrayWrapper.endIndex.getter() < v18)
  {
    __break(1u);
    goto LABEL_73;
  }

LABEL_20:
  if (v18 < 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v17)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v29)
  {
    goto LABEL_75;
  }

  if (v29 < 0)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if ((v16 & 0xC000000000000001) == 0 || v18 == v29)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    if (v18 >= v29)
    {
LABEL_80:
      __break(1u);
      __break(1u);
      goto LABEL_81;
    }

    sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
    swift_bridgeObjectRetain_n();
    v30 = v18;
    do
    {
      v31 = v30 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v30);
      v30 = v31;
    }

    while (v29 != v31);
  }

  if (v17)
  {
    v9 = _CocoaArrayWrapper.subscript.getter();
    v1 = v32;
    v58 = v33;
    v29 = v34;
  }

  else
  {
    v9 = (v16 & 0xFFFFFFFFFFFFFF8);
    v1 = (v16 & 0xFFFFFFFFFFFFFF8) + 32;
    v29 = (2 * v29) | 1;
    v58 = v18;
  }

  swift_getKeyPath();
  v66 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v2 + v15);
  v17 = (v16 >> 62);
  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v18)
    {
      goto LABEL_38;
    }

LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_77:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 0)
  {
LABEL_84:
    __break(1u);
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v18)
  {
    goto LABEL_79;
  }

LABEL_38:
  v15 = v9;
  v61 = v3;
  if ((v16 & 0xC000000000000001) != 0 && v18)
  {
    sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
    swift_bridgeObjectRetain_n();
    v35 = 0;
    do
    {
      v36 = v35 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v35);
      v35 = v36;
    }

    while (v18 != v36);
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v37 = v29;
  v38 = v1;

  if (v17)
  {
    v40 = _CocoaArrayWrapper.subscript.getter();
    v41 = v43;
    v39 = v44;
    v46 = v45;

    v42 = v46;
  }

  else
  {
    v39 = 0;
    v40 = (v16 & 0xFFFFFFFFFFFFFF8);
    v41 = (v16 & 0xFFFFFFFFFFFFFF8) + 32;
    v42 = (2 * v18) | 1;
  }

  v28 = v60;
  v66 = v15;
  v67 = v38;
  v68 = v58;
  v69 = v37;
  sub_1001ADAE0(v40, v41, v39, v42);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v16 = v66;
  v21 = v67;
  v1 = v68;
  v22 = v69;
LABEL_48:
  v66 = v16;
  v67 = v21;
  v68 = v1;
  v69 = v22;
  v3 = v22 >> 1;
  v9 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates;

  v61 = v16;
  swift_unknownObjectRetain();
  swift_beginAccess();
  v17 = (v28 + 8);
  v47 = v62;
  while (1)
  {
    if (v1 == v3)
    {

      v54 = 0;
      goto LABEL_60;
    }

    if (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v3 < v1)
    {
      goto LABEL_65;
    }

    v49 = *(v21 + 8 * v3);
    v50 = [v49 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    v71 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *&v9[v2];
    if (!*(v16 + 16))
    {
      break;
    }

    v51 = *&v9[v2];

    v52 = sub_100005044(v47);
    if ((v53 & 1) == 0)
    {

      break;
    }

    v15 = *(*(v16 + 56) + 8 * v52);
    (*v17)(v47, v65);

    if (!v15)
    {
      goto LABEL_59;
    }
  }

  (*v17)(v47, v65);

LABEL_59:

  __chkstk_darwin(v55);
  *(&v58 - 2) = &v66;
  v70 = v3;
  sub_1001ADD40(&v70, &v71);
  v54 = v71;
LABEL_60:
  swift_unknownObjectRelease();
  if (!v54)
  {
    return swift_unknownObjectRelease();
  }

  v56 = [v54 uuid];
  v57 = v59;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001A7170(1, v57);
  swift_unknownObjectRelease();

  return (*v17)(v57, v65);
}

uint64_t sub_1001A8490()
{
  v2 = v0;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  result = sub_1001A13B8();
  if (result)
  {
    return result;
  }

  v11 = sub_1001A1610();
  if (v11)
  {
    v1 = v11;
    v12 = [v11 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001A7170(0, v9);
    (*(v4 + 8))(v9, v3);
  }

  v65 = v9;
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v71 = v2;
  v68 = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  v69 = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  swift_beginAccess();
  v15 = *(v2 + v14);
  v16 = v15 >> 62;
  if (!(v15 >> 62))
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  while (1)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      break;
    }

    v17 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      goto LABEL_87;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < v17)
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_6:
    if ((v15 & 0xC000000000000001) == 0 || v17 == 0)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
      swift_bridgeObjectRetain_n();
      v19 = 0;
      do
      {
        v20 = v19 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v19);
        v19 = v20;
      }

      while (v17 != v20);
    }

    if (v16)
    {
      v16 = _CocoaArrayWrapper.subscript.getter();
      v21 = v23;
      v1 = v24;
      v22 = v25;
    }

    else
    {
      v1 = 0;
      v16 = v15 & 0xFFFFFFFFFFFFFF8;
      v21 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
      v22 = 2 * v17;
    }

    v67 = v3;
    v26 = sub_1001A1E68();
    if (v27)
    {
      v3 = v70;
      v28 = v21;
      goto LABEL_49;
    }

    v29 = v26;
    v64 = v4;
    swift_getKeyPath();
    v71 = v2;
    v15 = v2 + v69;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = v29 + 1;
    v3 = v70;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_71;
    }

    v15 = *(v2 + v14);
    v30 = v15 & 0xFFFFFFFFFFFFFF8;
    v1 = v15 >> 62;
    if (!(v15 >> 62))
    {
      v31 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31 < v4)
      {
        goto LABEL_78;
      }

      goto LABEL_21;
    }

LABEL_72:
    if ((v15 & 0x8000000000000000) != 0)
    {
      v29 = v15;
    }

    else
    {
      v29 = v30;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < v4)
    {
      goto LABEL_88;
    }

    v31 = result;
    if (_CocoaArrayWrapper.endIndex.getter() < v4)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        goto LABEL_89;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < v4)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        break;
      }

      goto LABEL_39;
    }

LABEL_21:
    if (v4 < 0)
    {
      goto LABEL_79;
    }

    if (v1)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result < v31)
    {
      goto LABEL_80;
    }

    if (v31 < 0)
    {
      goto LABEL_81;
    }

    v66 = v16;
    if ((v15 & 0xC000000000000001) == 0 || v4 == v31)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      if (v4 >= v31)
      {
        goto LABEL_85;
      }

      sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
      swift_bridgeObjectRetain_n();
      v32 = v4;
      do
      {
        v33 = v32 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v32);
        v32 = v33;
      }

      while (v31 != v33);
    }

    if (v1)
    {
      v1 = _CocoaArrayWrapper.subscript.getter();
      v29 = v34;
      v62 = v35;
      v63 = v36;
    }

    else
    {
      v1 = v15 & 0xFFFFFFFFFFFFFF8;
      v29 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
      v62 = v4;
      v63 = (2 * v31) | 1;
    }

    swift_getKeyPath();
    v71 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v2 + v14);
    v16 = v15 >> 62;
    if (v15 >> 62)
    {
      goto LABEL_82;
    }

    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < v4)
    {
      goto LABEL_84;
    }

LABEL_39:
    if ((v15 & 0xC000000000000001) != 0 && v4)
    {
      sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
      swift_bridgeObjectRetain_n();
      v37 = 0;
      do
      {
        v38 = v37 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v37);
        v37 = v38;
      }

      while (v4 != v38);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    v39 = v29;

    if (v16)
    {
      v41 = _CocoaArrayWrapper.subscript.getter();
      v42 = v44;
      v40 = v45;
      v47 = v46;

      v43 = v47;
    }

    else
    {
      v40 = 0;
      v41 = (v15 & 0xFFFFFFFFFFFFFF8);
      v42 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
      v43 = (2 * v4) | 1;
    }

    v71 = v1;
    v72 = v39;
    v73 = v62;
    v74 = v63;
    sub_1001ADAE0(v41, v42, v40, v43);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v16 = v71;
    v28 = v72;
    v1 = v73;
    v22 = v74;
    v4 = v64;
LABEL_49:
    v15 = v22 >> 1;
    v48 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates;
    v66 = v16;
    swift_unknownObjectRetain();
    swift_beginAccess();
    v16 = (v22 >> 1) - v1;
    if (v22 >> 1 == v1)
    {
      return swift_unknownObjectRelease_n();
    }

    v14 = v4 + 8;
    if (v1 <= v15)
    {
      v49 = v22 >> 1;
    }

    else
    {
      v49 = v1;
    }

    v4 = v49 - v1;
    v1 = v28 + 8 * v1;
    v64 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (v4)
    {
      v50 = *v1;
      v51 = [v50 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_getKeyPath();
      v75 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(v2 + v48);
      if (!*(v15 + 16))
      {
        goto LABEL_62;
      }

      v52 = *(v2 + v48);

      v53 = sub_100005044(v3);
      if ((v54 & 1) == 0)
      {

LABEL_62:
        v57 = *v14;
        v58 = v67;
        (*v14)(v3, v67);
LABEL_64:
        swift_unknownObjectRelease();
        v59 = [v50 uuid];
        v60 = v65;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001A7170(1, v60);
        swift_unknownObjectRelease();

        return v57(v60, v58);
      }

      v55 = v3;
      v56 = *(*(v15 + 56) + 8 * v53);
      v57 = *v14;
      (*v14)(v55, v67);

      if (!v56)
      {
        v58 = v67;
        goto LABEL_64;
      }

      --v4;
      v1 += 8;
      --v16;
      v3 = v70;
      if (!v16)
      {
        return swift_unknownObjectRelease_n();
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_1001A8C78()
{
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionContextMapping) = sub_100005EF4(&_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__expandedSuggestion) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates) = sub_100005F18(&_swiftEmptyArrayStorage);
  v1 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal) = 0;
  v5 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);
  v7(v0 + v5, 1, 1, v6);
  v7(v0 + v5, 1, 1, v6);
  ObservationRegistrar.init()();
  swift_unknownObjectWeakInit();
  *(v0 + 49) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  *(v0 + 96) = -1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_1001A8E38()
{
  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task);

  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions);

  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionContextMapping);

  v4 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates);

  v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString + 8);

  v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback + 8);

  v7 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance, &unk_10025B1C0, &unk_1001CFA90);
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID, &unk_100262450, &qword_1001CFAA0);
  v8 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v9 = type metadata accessor for ObservationRegistrar();
  v10 = *(*(v9 - 8) + 8);

  return v10(v0 + v8, v9);
}

uint64_t ProofreadingModel.deinit()
{
  v0 = ToolModel.deinit();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task);

  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions);

  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionContextMapping);

  v4 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates);

  v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString + 8);

  v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback + 8);

  v7 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance, &unk_10025B1C0, &unk_1001CFA90);
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID, &unk_100262450, &qword_1001CFAA0);
  v8 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v9 = type metadata accessor for ObservationRegistrar();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t ProofreadingModel.__deallocating_deinit()
{
  v0 = *ProofreadingModel.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProofreadingModel()
{
  result = qword_100266B78;
  if (!qword_100266B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A9168()
{
  sub_10000F11C();
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

void sub_1001A92A4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10019F44C(v2);
}

uint64_t sub_1001A92D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10019F7A4(v4);
}

uint64_t sub_1001A930C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1001A939C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10000511C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000F24A8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100008198((*(v12 + 56) + 40 * v9), a3);
    sub_1001A9448(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1001A9448(uint64_t result, uint64_t a2)
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
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1001A9604(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1001A930C(&unk_10025AC80, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

id sub_1001A9924(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100005118(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1000F2168();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1000EF90C(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_100005118(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for IAPayloadKey(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return _objc_release_x1();
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  sub_1000F1E00(v8, a2, a1, v19);

  return a2;
}

_OWORD *sub_1001A9A58(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000511C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000F22C8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000EFBD0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000511C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000F4B4(v23);

    return sub_100008150(a1, v23);
  }

  else
  {
    sub_1000F1E44(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1001A9C28(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000511C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000F24A8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000F02A0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000511C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    sub_10000F4B4(v23);

    return sub_100008198(a1, v23);
  }

  else
  {
    sub_1000F1EB4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1001A9D7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100005044(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + 8 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_1000F2650();
    goto LABEL_7;
  }

  sub_1000F0564(result, a3 & 1);
  v22 = *v4;
  result = sub_100005044(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1000F1F24(v15, v12, a1, v21);
}

uint64_t sub_1001A9F58(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(unint64_t, char *, uint64_t, uint64_t))
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v7 = v6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_100005044(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v33();
      goto LABEL_9;
    }

    v34();
    v24 = *v7;
    v25 = sub_100005044(a2);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = a1;
  v28 = *v7;
  if (v22)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v18);
    *(v29 + 8 * v18) = v27;
  }

  else
  {
    (*(v12 + 16))(v15, a2, v11);
    return v35(v18, v15, v27, v28);
  }
}

uint64_t sub_1001AA148(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100005044(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1000F2E14();
      goto LABEL_7;
    }

    sub_1000F0E84(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_100005044(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1000F1FDC(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1001AA314(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100005044(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_1000F2E3C();
    goto LABEL_7;
  }

  sub_1000F1260(result, a3 & 1);
  v22 = *v4;
  result = sub_100005044(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1000F1FF4(v15, v12, a1 & 1, v21);
}

void sub_1001AA4B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100005044(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1000F30AC();
      goto LABEL_7;
    }

    sub_1000F1620(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_100005044(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_1000F4AD4(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = *(v21 + 56);
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1001AA680(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

void sub_1001AA720(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1001AA92C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1001AA834(0, v2, 1, a1);
  }
}

void sub_1001AA834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 originalRange];
      v13 = [v11 originalRange];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1001AA92C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_10009FA94(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_1001AAF94((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_10009FA94(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_10009FA08(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 originalRange];
      v104 = [v14 originalRange];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 originalRange];
        v7 = [v18 originalRange];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10009FBA4(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_10009FBA4((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_1001AAF94((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10009FA94(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_10009FA08(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 originalRange];
    v41 = [v39 originalRange];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
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
}

uint64_t sub_1001AAF94(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 originalRange];
          v35 = [v33 originalRange];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 originalRange];
          v20 = [v18 originalRange];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_1001AB278(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100007120(&qword_100267318, &qword_100267310, &qword_1001E17F0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000341C(&qword_100267310, &qword_1001E17F0);
            v9 = sub_1001AB42C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1001AB42C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1001AB4AC;
  }

  __break(1u);
  return result;
}

void sub_1001AB4B4(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for UUID();
  v55 = *(v60 - 8);
  v4 = *(v55 + 64);
  v5 = __chkstk_darwin(v60);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v47 - v7;
  v8 = sub_10000341C(&qword_100267328, &qword_1001E1950);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v52 = a2;
    v53 = v12;
    v14 = 0;
    v50 = a1;
    v17 = *(a1 + 64);
    v16 = a1 + 64;
    v15 = v17;
    v18 = 1 << *(v16 - 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v15;
    v47 = (v18 + 63) >> 6;
    v48 = v16;
    v49 = v55 + 16;
    v57 = &v47 - v11;
    v58 = (v55 + 32);
    v51 = (v55 + 8);
    while (v20)
    {
      v59 = (v20 - 1) & v20;
      v21 = __clz(__rbit64(v20)) | (v14 << 6);
      v22 = v53;
LABEL_16:
      v27 = v50;
      v28 = v54;
      v29 = v55;
      v30 = v60;
      (*(v55 + 16))(v54, *(v50 + 48) + *(v55 + 72) * v21, v60);
      v31 = *(*(v27 + 56) + 8 * v21);
      v32 = sub_10000341C(&qword_100267330, &qword_1001E1958);
      v33 = *(v32 + 48);
      (*(v29 + 32))(v22, v28, v30);
      *(v22 + v33) = v31;
      (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
      v34 = v31;
      v13 = v57;
LABEL_17:
      sub_10002A894(v22, v13, &qword_100267328, &qword_1001E1950);
      v35 = sub_10000341C(&qword_100267330, &qword_1001E1958);
      if ((*(*(v35 - 8) + 48))(v13, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v56;
      v38 = v60;
      (*v58)(v56, v13, v60);
      v39 = *&v13[v36];
      v40 = v52;
      v41 = sub_100005044(v37);
      v43 = v42;
      (*v51)(v37, v38);
      if ((v43 & 1) == 0)
      {

        return;
      }

      sub_1000081B0(0, &unk_100262480, WTContext_ptr);
      v44 = *(*(v40 + 56) + 8 * v41);
      v45 = static NSObject.== infix(_:_:)();

      v13 = v57;
      v20 = v59;
      if ((v45 & 1) == 0)
      {
        return;
      }
    }

    if (v47 <= v14 + 1)
    {
      v23 = v14 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    v22 = v53;
    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v47)
      {
        v46 = sub_10000341C(&qword_100267330, &qword_1001E1958);
        (*(*(v46 - 8) + 56))(v22, 1, 1, v46);
        v59 = 0;
        v14 = v24;
        goto LABEL_17;
      }

      v26 = *(v48 + 8 * v25);
      ++v14;
      if (v26)
      {
        v59 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v25 << 6);
        v14 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001AB954(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for UUID();
  v53 = *(v58 - 8);
  v4 = *(v53 + 64);
  v5 = __chkstk_darwin(v58);
  v54 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = v48 - v7;
  v8 = sub_10000341C(&qword_1002672D8, &qword_1001E1730);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  result = __chkstk_darwin(v10);
  v14 = v48 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = v13;
  v15 = 0;
  v49 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v48[0] = v17;
  v48[1] = v53 + 16;
  v55 = v48 - v12;
  v56 = (v53 + 32);
  v50 = (v53 + 8);
  while (v21)
  {
    v57 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
LABEL_16:
    v28 = v49;
    v29 = v52;
    v30 = v53;
    v31 = v58;
    (*(v53 + 16))(v52, *(v49 + 48) + *(v53 + 72) * v23, v58);
    v32 = *(*(v28 + 56) + 8 * v23);
    v33 = sub_10000341C(&qword_1002672E0, &qword_1001E1760);
    v34 = *(v33 + 48);
    v35 = *(v30 + 32);
    v36 = v51;
    v35(v51, v29, v31);
    *(v36 + v34) = v32;
    (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
    v14 = v55;
LABEL_17:
    sub_10002A894(v36, v14, &qword_1002672D8, &qword_1001E1730);
    v37 = sub_10000341C(&qword_1002672E0, &qword_1001E1760);
    v38 = (*(*(v37 - 8) + 48))(v14, 1, v37);
    v39 = v38 == 1;
    if (v38 != 1)
    {
      v40 = *(v37 + 48);
      v41 = v54;
      v42 = v58;
      (*v56)(v54, v14, v58);
      v43 = *&v14[v40];
      v44 = sub_100005044(v41);
      LOBYTE(v40) = v45;
      result = (*v50)(v41, v42);
      if (v40)
      {
        v46 = *(*(a2 + 56) + 8 * v44) == v43;
        v14 = v55;
        v21 = v57;
        if (v46)
        {
          continue;
        }
      }
    }

    return v39;
  }

  if (v22 <= v15 + 1)
  {
    v24 = v15 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      v47 = sub_10000341C(&qword_1002672E0, &qword_1001E1760);
      v36 = v51;
      (*(*(v47 - 8) + 56))(v51, 1, 1, v47);
      v57 = 0;
      v15 = v25;
      goto LABEL_17;
    }

    v27 = *(v48[0] + 8 * v26);
    ++v15;
    if (v27)
    {
      v57 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v15 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001ABDB4(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for UUID();
  v53 = *(v58 - 8);
  v4 = *(v53 + 64);
  v5 = __chkstk_darwin(v58);
  v54 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = v48 - v7;
  v8 = sub_10000341C(&qword_100267358, &qword_1001E19D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  result = __chkstk_darwin(v10);
  v14 = v48 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = v13;
  v15 = 0;
  v49 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v48[0] = v17;
  v48[1] = v53 + 16;
  v55 = v48 - v12;
  v56 = (v53 + 32);
  v50 = (v53 + 8);
  while (v21)
  {
    v57 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
LABEL_16:
    v28 = v49;
    v29 = v52;
    v30 = v53;
    v31 = v58;
    (*(v53 + 16))(v52, *(v49 + 48) + *(v53 + 72) * v23, v58);
    v32 = *(*(v28 + 56) + v23);
    v33 = sub_10000341C(&qword_100267360, &qword_1001E19D8);
    v34 = *(v33 + 48);
    v35 = *(v30 + 32);
    v36 = v51;
    v35(v51, v29, v31);
    *(v36 + v34) = v32;
    (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
    v14 = v55;
LABEL_17:
    sub_10002A894(v36, v14, &qword_100267358, &qword_1001E19D0);
    v37 = sub_10000341C(&qword_100267360, &qword_1001E19D8);
    v38 = (*(*(v37 - 8) + 48))(v14, 1, v37);
    v39 = v38 == 1;
    if (v38 != 1)
    {
      v40 = *(v37 + 48);
      v41 = v54;
      v42 = v58;
      (*v56)(v54, v14, v58);
      v43 = v14[v40];
      v44 = sub_100005044(v41);
      LOBYTE(v40) = v45;
      result = (*v50)(v41, v42);
      if (v40)
      {
        v46 = v43 == *(*(a2 + 56) + v44);
        v14 = v55;
        v21 = v57;
        if (v46)
        {
          continue;
        }
      }
    }

    return v39;
  }

  if (v22 <= v15 + 1)
  {
    v24 = v15 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      v47 = sub_10000341C(&qword_100267360, &qword_1001E19D8);
      v36 = v51;
      (*(*(v47 - 8) + 56))(v51, 1, 1, v47);
      v57 = 0;
      v15 = v25;
      goto LABEL_17;
    }

    v27 = *(v48[0] + 8 * v26);
    ++v15;
    if (v27)
    {
      v57 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v15 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1001AC214(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for UUID();
  v55 = *(v60 - 8);
  v4 = *(v55 + 64);
  v5 = __chkstk_darwin(v60);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v47 - v7;
  v8 = sub_10000341C(&qword_100267348, &qword_1001E19C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v52 = a2;
    v53 = v12;
    v14 = 0;
    v50 = a1;
    v17 = *(a1 + 64);
    v16 = a1 + 64;
    v15 = v17;
    v18 = 1 << *(v16 - 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v15;
    v47 = (v18 + 63) >> 6;
    v48 = v16;
    v49 = v55 + 16;
    v57 = &v47 - v11;
    v58 = (v55 + 32);
    v51 = (v55 + 8);
    while (v20)
    {
      v59 = (v20 - 1) & v20;
      v21 = __clz(__rbit64(v20)) | (v14 << 6);
      v22 = v53;
LABEL_16:
      v27 = v50;
      v28 = v54;
      v29 = v55;
      v30 = v60;
      (*(v55 + 16))(v54, *(v50 + 48) + *(v55 + 72) * v21, v60);
      v31 = *(*(v27 + 56) + 8 * v21);
      v32 = sub_10000341C(&qword_100267350, &qword_1001E19C8);
      v33 = *(v32 + 48);
      (*(v29 + 32))(v22, v28, v30);
      *(v22 + v33) = v31;
      (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
      v34 = v31;
      v13 = v57;
LABEL_17:
      sub_10002A894(v22, v13, &qword_100267348, &qword_1001E19C0);
      v35 = sub_10000341C(&qword_100267350, &qword_1001E19C8);
      if ((*(*(v35 - 8) + 48))(v13, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v56;
      v38 = v60;
      (*v58)(v56, v13, v60);
      v39 = *&v13[v36];
      v40 = v52;
      v41 = sub_100005044(v37);
      v43 = v42;
      (*v51)(v37, v38);
      if ((v43 & 1) == 0)
      {

        return;
      }

      sub_1000081B0(0, &qword_10025F2D0, NSAttributedString_ptr);
      v44 = *(*(v40 + 56) + 8 * v41);
      v45 = static NSObject.== infix(_:_:)();

      v13 = v57;
      v20 = v59;
      if ((v45 & 1) == 0)
      {
        return;
      }
    }

    if (v47 <= v14 + 1)
    {
      v23 = v14 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    v22 = v53;
    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v47)
      {
        v46 = sub_10000341C(&qword_100267350, &qword_1001E19C8);
        (*(*(v46 - 8) + 56))(v22, 1, 1, v46);
        v59 = 0;
        v14 = v24;
        goto LABEL_17;
      }

      v26 = *(v48 + 8 * v25);
      ++v14;
      if (v26)
      {
        v59 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v25 << 6);
        v14 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001AC6B4(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for UUID();
  v55 = *(v60 - 8);
  v4 = *(v55 + 64);
  v5 = __chkstk_darwin(v60);
  v56 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = v50 - v7;
  v8 = sub_10000341C(&qword_100267338, &qword_1001E19B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v57 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = v50 - v13;
  v14 = 0;
  v51 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v50[0] = v16;
  v50[1] = v55 + 16;
  v58 = (v55 + 32);
  v52 = (v55 + 8);
  while (v20)
  {
    v59 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
LABEL_16:
    v27 = v51;
    v28 = v54;
    v29 = v55;
    v30 = v60;
    (*(v55 + 16))(v54, *(v51 + 48) + *(v55 + 72) * v22, v60);
    v31 = *(*(v27 + 56) + 8 * v22);
    v32 = sub_10000341C(&qword_100267340, &qword_1001E19B8);
    v33 = *(v32 + 48);
    v34 = *(v29 + 32);
    v35 = v57;
    v34(v57, v28, v30);
    *(v35 + v33) = v31;
    (*(*(v32 - 8) + 56))(v35, 0, 1, v32);

LABEL_17:
    v36 = v53;
    sub_10002A894(v35, v53, &qword_100267338, &qword_1001E19B0);
    v37 = sub_10000341C(&qword_100267340, &qword_1001E19B8);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v39 = v38 == 1;
    if (v38 == 1)
    {
      return v39;
    }

    v40 = *(v37 + 48);
    v41 = v56;
    v42 = v60;
    (*v58)(v56, v36, v60);
    v43 = *(v36 + v40);
    v44 = sub_100005044(v41);
    LOBYTE(v40) = v45;
    (*v52)(v41, v42);
    if ((v40 & 1) == 0)
    {

      return 0;
    }

    v46 = *(*(a2 + 56) + 8 * v44);

    v48 = sub_10017BCDC(v47, v43);

    v20 = v59;
    if ((v48 & 1) == 0)
    {
      return v39;
    }
  }

  if (v21 <= v14 + 1)
  {
    v23 = v14 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  while (1)
  {
    v25 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
      v49 = sub_10000341C(&qword_100267340, &qword_1001E19B8);
      v35 = v57;
      (*(*(v49 - 8) + 56))(v57, 1, 1, v49);
      v59 = 0;
      v14 = v24;
      goto LABEL_17;
    }

    v26 = *(v50[0] + 8 * v25);
    ++v14;
    if (v26)
    {
      v59 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v25 << 6);
      v14 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001ACB40(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 8 * v6 + 8 * v7) != &v9[v10 + 4])
  {

    goto LABEL_9;
  }

  v11 = v9[3];

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_10009E320(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        v16 = v1[1] + 8 * v14;
        sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v17 = *(v5 + 16);
          v13 = __OFADD__(v14, v17);
          v18 = v14 + v17;
          if (!v13)
          {
            if (v18 >= v14)
            {
              if ((v18 & 0x8000000000000000) == 0)
              {
                v19 = (2 * v18) | 1;
                v20 = *v1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 8 * v14;
                v1[2] = v14;
                v1[3] = v19;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1001ACCD8(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v34 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 8 * a2;
  v32 = v13;
  v33 = (v18 + 8 * a3);
  result = sub_1001AD254(v7);
  v36 = v9 + 32;
  if (result)
  {
    v19 = result;
    v31 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 8 * v20);
    v22 = &v21[8 * a2];
    sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
    swift_arrayDestroy();
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 8 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[8 * v34];
    if (v33 != v23 || v33 >= &v23[8 * v32])
    {
      memmove(v33, v23, 8 * v32);
    }

    *(v19 + 16);
    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v31;
  }

  else
  {
    v20 = v4[2];
    v24 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v24 < v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v24, v20))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v25 = v4[1];
    sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
    swift_arrayInitWithCopy();
    result = (a4)(v36 + 8 * a2, a3);
    v26 = v24 + v34;
    if (__OFADD__(v24, v34))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v27 = v4[3] >> 1;
    if (v27 < v26)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v27, v26))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  v28 = *v4;
  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_33;
  }

  v29 = *(v9 + 16);
  v11 = __OFADD__(v20, v29);
  v30 = v20 + v29;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v30 < v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v30 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v36 - 8 * v20;
  v4[2] = v20;
  v4[3] = (2 * v30) | 1;
}

void *sub_1001ACFC0(void *result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  v8 = *v1;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v9 = result[2];
  v5 = __OFADD__(v9, v7);
  v10 = &v7[v9];
  if (v5)
  {
    goto LABEL_13;
  }

  result[2] = v10;

  v11 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[3] = v3 & 1 | (2 * v11);
  return result;
}

void *sub_1001AD078(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == &v11[v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_10009E320(v6, v25);
}

void *sub_1001AD254(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *v1;
  v10 = v1[1] + 8 * v7;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  if ((v10 + 8 * v8) != &v11[v12 + 4])
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = v11[3];

  v15 = (v14 >> 1) - v12;
  v16 = __OFADD__(v8, v15);
  v13 = v8 + v15;
  if (v16)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v13 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v17 = v10 - result - 25;
  if (v10 - result - 32 >= 0)
  {
    v17 = v10 - result - 32;
  }

  v16 = __OFADD__(v8, v17 >> 3);
  v6 = v8 + (v17 >> 3);
  if (v16)
  {
    goto LABEL_20;
  }

  v5 = result[2];
  if (v6 < v5)
  {
LABEL_21:
    v18 = result;
    sub_1001AD758(v6, v5, 0);
    return v18;
  }

  return result;
}

uint64_t sub_1001AD404(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1001AD438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_10000341C(&qword_10025F358, &qword_1001D4140);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1000081F8(a1, &v24 - v16, &unk_100262450, &qword_1001CFAA0);
  sub_1000081F8(a2, &v17[v18], &unk_100262450, &qword_1001CFAA0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1000081F8(v17, v12, &unk_100262450, &qword_1001CFAA0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1001A930C(&unk_10025F360, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_10000F500(v17, &unk_100262450, &qword_1001CFAA0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_10000F500(v17, &qword_10025F358, &qword_1001D4140);
    v20 = 1;
    return v20 & 1;
  }

  sub_10000F500(v17, &unk_100262450, &qword_1001CFAA0);
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_1001AD758(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void *sub_1001AD82C(void *result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
    goto LABEL_45;
  }

  v5 = result[4];
  v6 = result[3] >> 1;
  if (v5 != v6)
  {
    v36 = result[2];
    if (v5 < v36 || v5 >= v6)
    {
      goto LABEL_46;
    }

    v8 = result[1];
    v9 = v5 + 1;
    v10 = *(v8 + 8 * v5);
    v11 = v1[2];
    v12 = v1[3];
    v13 = v10;
    v14 = v12;
    v15 = v11;
    result = v10;
    v38 = v1;
    while (!__OFADD__(v4, 1))
    {
      v16 = result;
      v42 = sub_1001AD078(v4, v4 + 1, *v1, v1[1], v15, v14);
      v17 = sub_1001AD238();
      sub_1001ACCD8(&v42, v4, 0, v17);

      v18 = v1[2];
      v19 = v1[3];
      v20 = (v19 >> 1) - v18;
      if (__OFSUB__(v19 >> 1, v18))
      {
        goto LABEL_39;
      }

      v37 = v19 >> 1;
      v39 = v1[2];
      v40 = *v1;
      v21 = v1[1] + 8 * v18;
      v41 = v1[3];
      if (v19)
      {
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain();
        v22 = swift_dynamicCastClass();
        v23 = v36;
        if (!v22)
        {
          swift_unknownObjectRelease();
          v22 = _swiftEmptyArrayStorage;
        }

        v24 = v22[2];
        if ((v21 + 8 * v20) == &v22[v24 + 4])
        {
          v26 = v22[3];

          v27 = (v26 >> 1) - v24;
          v25 = v20 + v27;
          if (__OFADD__(v20, v27))
          {
            goto LABEL_44;
          }
        }

        else
        {

          v25 = v20;
        }
      }

      else
      {
        v25 = (v19 >> 1) - v18;
        v23 = v36;
      }

      result = v16;
      if (v4 < v25)
      {
        v28 = v9;
        while (1)
        {
          *(v21 + 8 * v4++) = result;
          if (v6 == v28)
          {
            result = 0;
            v9 = v6;
            goto LABEL_28;
          }

          if (v9 < v23 || v28 >= v6)
          {
            break;
          }

          v29 = v28 + 1;
          result = *(v8 + 8 * v28);
          v28 = v29;
          if (v25 == v4)
          {
            v9 = v29;
            v4 = v25;
            goto LABEL_28;
          }
        }

        __break(1u);
        break;
      }

LABEL_28:
      v14 = v41;
      v30 = v4 - v20;
      if (__OFSUB__(v4, v20))
      {
        goto LABEL_40;
      }

      if (v30)
      {
        v31 = result;
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain();
        result = swift_dynamicCastClass();
        if (!result)
        {
          swift_unknownObjectRelease();
          result = _swiftEmptyArrayStorage;
        }

        v32 = result[2];
        v33 = __OFADD__(v32, v30);
        v34 = v32 + v30;
        if (v33)
        {
          goto LABEL_41;
        }

        result[2] = v34;

        v35 = v37 + v30;
        if (__OFADD__(v37, v30))
        {
          goto LABEL_42;
        }

        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v14 = v41 & 1 | (2 * v35);
        v38[3] = v14;
        result = v31;
      }

      v1 = v38;
      v15 = v39;
      if (!result)
      {
        return result;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  return result;
}

void *sub_1001ADAE0(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v32 = result;
  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v16 = v9;
    goto LABEL_10;
  }

  v13 = *v4;
  v12 = v4[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = _swiftEmptyArrayStorage;
  }

  v15 = v14[2];
  if ((v12 + 8 * v8 + 8 * v9) != &v14[v15 + 4])
  {

    goto LABEL_8;
  }

  v17 = v14[3];

  v18 = (v17 >> 1) - v15;
  v19 = __OFADD__(v9, v18);
  v16 = v9 + v18;
  if (v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v16 < result)
  {
    if (v16 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v20 = 2 * v16;
    if (v20 > result)
    {
      result = v20;
    }
  }

  result = sub_1001ACB40(result);
  v22 = v4[2];
  v21 = v4[3];
  v23 = (v21 >> 1) - v22;
  if (__OFSUB__(v21 >> 1, v22))
  {
    goto LABEL_37;
  }

  v24 = v4[1] + 8 * v22 + 8 * v23;
  if ((v21 & 1) == 0)
  {
LABEL_21:
    v28 = v23;
    goto LABEL_23;
  }

  v25 = *v4;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = _swiftEmptyArrayStorage;
  }

  v27 = v26[2];
  if (v24 != &v26[v27 + 4])
  {

    goto LABEL_21;
  }

  v29 = v26[3];

  v30 = (v29 >> 1) - v27;
  v19 = __OFADD__(v23, v30);
  v28 = v23 + v30;
  if (v19)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v31 = v28 - v23;
  if (__OFSUB__(v28, v23))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v31 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
  result = swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    result = (v23 + v6);
    if (__OFADD__(v23, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_1001ACFC0(result);
  }

LABEL_31:
  if (v6 == v31)
  {
    v34[0] = v32;
    v34[1] = a2;
    v34[2] = a3;
    v34[3] = a4;
    v34[4] = v5;
    return sub_1001AD82C(v34);
  }

  return result;
}

uint64_t *sub_1001ADD40@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *result;
  if (*result >= v3[2] && v4 < v3[3] >> 1)
  {
    v6 = *(v3[1] + 8 * v4);
    *a2 = v6;
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001ADDD8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100035E70(v2);
}

unint64_t sub_1001ADE78()
{
  result = qword_100267320;
  if (!qword_100267320)
  {
    sub_1000081B0(255, &qword_10025B1A8, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267320);
  }

  return result;
}

uint64_t sub_1001ADF10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100036728(v4);
}

uint64_t sub_1001ADF3C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001ADF84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028688;

  return sub_1001A41D0(a1, v4, v5, v7, v6);
}

uint64_t sub_1001AE04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AE12C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1001A0A8C(v2, v3);
}

uint64_t sub_1001AE16C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1001AE258(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

void sub_1001AE30C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1001A002C(v2);
}

void sub_1001AE33C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__expandedSuggestion);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__expandedSuggestion) = v2;
  v4 = v2;
}

uint64_t sub_1001AE3C4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task) = *(v0 + 24);
}

void sub_1001AE408()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session) = v1;
  v4 = v1;
  sub_10019ECB4(v3);
}

uint64_t sub_1001AE48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1000081B0(0, &unk_100262480, WTContext_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}