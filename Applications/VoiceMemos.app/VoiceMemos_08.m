uint64_t sub_1001614C4(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = type metadata accessor for _AssistantIntent.Value();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  _AssistantIntent.IntentProjection.subscript.getter();

  a4(v11);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v12 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v7 + 8))(v10, v6);
  sub_1000C773C(&qword_1002D0788);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100242C70;
  *(v13 + 32) = v12;
  v14 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v14;
}

uint64_t sub_100161644(uint64_t a1)
{
  v55 = a1;
  v1 = sub_1000C773C(&qword_1002D37E8);
  v2 = *(v1 - 8);
  v58 = v1;
  v59 = v2;
  __chkstk_darwin(v1, v3);
  v5 = &v46 - v4;
  v54 = type metadata accessor for _AssistantIntent.PhraseToken();
  v6 = *(v54 - 8);
  __chkstk_darwin(v54, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C773C(&qword_1002D37F0);
  __chkstk_darwin(v10, v11);
  sub_1000131E8();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x66206574656C6564;
  v12._object = 0xEE00207265646C6FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  v56 = sub_1001635AC(&unk_1002D37D0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 544106784;
  v13._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v14 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v15 = *(v6 + 104);
  v53 = v6 + 104;
  LODWORD(v50) = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v16 = v54;
  v15(v9, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v54);
  v49 = v15;
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v47 = *(v6 + 8);
  v47(v9, v16);
  v48 = v6 + 8;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57 = *(v59 + 8);
  v59 += 8;
  v57(v5, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x206574656C6564;
  v18._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v54;
  v15(v9, v14, v54);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v20 = v47;
  v47(v9, v19);
  v21._countAndFlagsBits = 0x207265646C6F6620;
  v21._object = 0xEE002064656D616ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v58;
  v57(v5, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x2065766F6D6572;
  v24._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v54;
  v49(v9, v50, v54);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v20(v9, v25);
  v26._countAndFlagsBits = 0x207265646C6F6620;
  v26._object = 0xEE002064656D616ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v54 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28 = v57;
  v57(v5, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x6D206574656C6564;
  v29._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0x7265646C6F6620;
  v30._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28(v5, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0xD000000000000015;
  v31._object = 0x8000000100233C40;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57(v5, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._object = 0x8000000100233C60;
  v33._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v36 = v57;
  v35 = v58;
  v57(v5, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._object = 0x8000000100233C80;
  v37._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v36(v5, v35);
  sub_1000C773C(&qword_1002D37F8);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100249700;
  v41 = v51;
  *(v40 + 32) = v52;
  *(v40 + 40) = v41;
  v42 = v53;
  *(v40 + 48) = v54;
  *(v40 + 56) = v42;
  v43 = v49;
  *(v40 + 64) = v50;
  *(v40 + 72) = v43;
  *(v40 + 80) = v39;
  v44 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v44;
}

uint64_t sub_100161FA8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1001635AC(&unk_1002D37D0);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1000131E8();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v4, v0);
  sub_1000C773C(&qword_1002D0788);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100242C70;
  *(v6 + 32) = v5;
  v7 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t sub_100162134()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000C773C(&qword_1002D37E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002442D0;
  *(v8 + 32) = v0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = v6;
  *(v8 + 88) = v7;
  v9 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v9;
}

unint64_t sub_100162330()
{
  result = qword_1002D3798;
  if (!qword_1002D3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3798);
  }

  return result;
}

uint64_t sub_100162384(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10016241C, v3, v2);
}

uint64_t sub_10016241C()
{
  v1 = *(v0 + 16);

  *v1 = sub_10015BE44();
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10016248C()
{
  result = qword_1002D37A0;
  if (!qword_1002D37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D37A0);
  }

  return result;
}

uint64_t sub_1001624E0(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100162578, v3, v2);
}

uint64_t sub_100162578()
{
  v1 = *(v0 + 16);

  *v1 = sub_10015BC08();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100162664(uint64_t a1)
{
  *(v1 + 56) = a1;
  type metadata accessor for MainActor();
  *(v1 + 64) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001626FC, v3, v2);
}

void sub_1001626FC()
{
  v1 = *(v0 + 56);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 56) + 40;
    v5 = _swiftEmptyArrayStorage;
    v18 = v4;
    do
    {
      v6 = v4 + 16 * v3;
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_20;
        }

        v8 = objc_opt_self();

        v9 = [v8 sharedRecordingsModelInteractor];
        v10 = String._bridgeToObjectiveC()();
        v11 = [v9 folderForUUID:v10];

        if (v11)
        {
          break;
        }

        ++v7;
        v6 += 16;
        if (v3 == v2)
        {
          goto LABEL_16;
        }
      }

      swift_getObjectType();
      sub_10015D824(v0 + 16);

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000F2768(0, *(v5 + 2) + 1, 1, v5);
      }

      v4 = v18;
      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_1000F2768((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[40 * v13];
      v15 = *(v0 + 16);
      v16 = *(v0 + 32);
      *(v14 + 8) = *(v0 + 48);
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    while (v3 != v2);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_16:
  v17 = *(v0 + 8);

  v17(v5);
}

uint64_t sub_100162918(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001629B0, v4, v3);
}

char *sub_1001629B0()
{

  v1 = [objc_opt_self() sharedRecordingsModelInteractor];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 allFoldersWithName:v2];

  sub_1000C773C(&qword_1002D1200);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_1001AE614(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v14 = v1;
  v7 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    sub_10015D824(v0 + 16);
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage[2];
    v8 = _swiftEmptyArrayStorage[3];
    if (v9 >= v8 >> 1)
    {
      sub_1001AE614((v8 > 1), v9 + 1, 1);
    }

    ++v7;
    _swiftEmptyArrayStorage[2] = v9 + 1;
    v10 = &_swiftEmptyArrayStorage[5 * v9];
    v11 = *(v0 + 16);
    v12 = *(v0 + 32);
    v10[8] = *(v0 + 48);
    *(v10 + 2) = v11;
    *(v10 + 3) = v12;
  }

  while (v5 != v7);

LABEL_14:
  v13 = *(v0 + 8);

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_100162BE8()
{
  v23 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v23 - 8);
  __chkstk_darwin(v23, v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C773C(&qword_1002CF820);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = sub_1000C773C(&unk_1002D3840);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = sub_1000C773C(&qword_1002D07A8);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v22 - v14;
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  sub_1000C773C(&qword_1002D1D28);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v17 + 56))(v15, 1, 1, v16);
  v19 = type metadata accessor for String.IntentInputOptions();
  v24 = 0;
  v25 = 0;
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  IntentDialog.init(stringLiteral:)();
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v23);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t sub_100162F44()
{
  v22[0] = type metadata accessor for InputConnectionBehavior();
  v0 = *(v22[0] - 8);
  __chkstk_darwin(v22[0], v1);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C773C(&qword_1002CF820);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = v22 - v10;
  v12 = sub_1000C773C(&qword_1002D07A8);
  __chkstk_darwin(v12 - 8, v13);
  v15 = v22 - v14;
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  sub_1000C773C(&qword_1002D3800);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v17 + 56))(v15, 1, 1, v16);
  v22[1] = 0;
  IntentDialog.init(stringLiteral:)();
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 0, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v22[0]);
  sub_10016361C();
  sub_10015E4D4();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
}

uint64_t sub_100163274()
{
  v23 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v23 - 8);
  __chkstk_darwin(v23, v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C773C(&qword_1002CF820);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v22 - v10;
  v12 = sub_1000C773C(&qword_1002D07A8);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v22 - v14;
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  sub_1000C773C(&qword_1002D3868);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v17 + 56))(v15, 1, 1, v16);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  IntentDialog.init(stringLiteral:)();
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 0, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v23);
  sub_100163670();
  sub_10015E4D4();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
}

uint64_t sub_1001635AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(&qword_1002D3720);
    sub_10015E150();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016361C()
{
  result = qword_1002D3808;
  if (!qword_1002D3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3808);
  }

  return result;
}

unint64_t sub_100163670()
{
  result = qword_1002D3870;
  if (!qword_1002D3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3870);
  }

  return result;
}

uint64_t sub_1001636C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016370C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&unk_1002D38C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016377C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&unk_1002D38C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RCFoldersCollectionViewController.collectionView(_:appEntityIdentifierForItemAt:)@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 foldersController];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [v3 folderAtIndexPath:isa];

  if (v5)
  {
    swift_getObjectType();
    sub_10015D824(v10);
    sub_10015E4D4();
    EntityIdentifier.init<A>(for:)();
    swift_unknownObjectRelease();
    v6 = type metadata accessor for EntityIdentifier();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    v8 = type metadata accessor for EntityIdentifier();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

unint64_t sub_1001639E4()
{
  result = qword_1002D38D0;
  if (!qword_1002D38D0)
  {
    sub_100163A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D38D0);
  }

  return result;
}

unint64_t sub_100163A3C()
{
  result = qword_1002D38D8;
  if (!qword_1002D38D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D38D8);
  }

  return result;
}

uint64_t sub_100163AF8(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(0);
  sub_100163BB4(a3, a4);
  memset(v7, 0, sizeof(v7));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_10010D150(v7);
}

uint64_t sub_100163BB4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100163C24()
{
  sub_100163D5C(319, &qword_1002D3A18, &type metadata accessor for ControlSize);
  if (v0 <= 0x3F)
  {
    sub_100163D5C(319, &qword_1002D3A20, &type metadata accessor for DynamicTypeSize);
    if (v1 <= 0x3F)
    {
      sub_100163DB0();
      if (v2 <= 0x3F)
      {
        type metadata accessor for RCRecordButtonViewModel();
        if (v3 <= 0x3F)
        {
          sub_100163E00();
          if (v4 <= 0x3F)
          {
            type metadata accessor for RCRecordButtonZoomTransitionSourceView();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100163D5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100163DB0()
{
  if (!qword_1002D3A28)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D3A28);
    }
  }
}

unint64_t sub_100163E00()
{
  result = qword_1002D3A30;
  if (!qword_1002D3A30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1002D3A30);
  }

  return result;
}

void sub_100163E8C(uint64_t a1, SEL *a2, void *a3)
{
  v5 = [objc_opt_self() sharedStyleProvider];
  [v5 *a2];
  v7 = v6;

  *a3 = v7;
}

uint64_t sub_100163EF8@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v2 = type metadata accessor for AttributedString();
  v106 = *(v2 - 8);
  v107 = v2;
  __chkstk_darwin(v2, v3);
  v105 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for AccessibilityTraits();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104, v5);
  v102 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for ButtonBorderShape();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93, v7);
  v91 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for GlassProminentButtonStyle();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86, v9);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1000C773C(&qword_1002D3A88);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79, v12);
  v14 = &v78 - v13;
  v80 = sub_1000C773C(&qword_1002D3A90);
  __chkstk_darwin(v80, v15);
  v17 = &v78 - v16;
  v85 = sub_1000C773C(&qword_1002D3A98);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85, v18);
  v82 = &v78 - v19;
  v81 = sub_1000C773C(&qword_1002D3AA0);
  __chkstk_darwin(v81, v20);
  v88 = &v78 - v21;
  v87 = sub_1000C773C(&qword_1002D3AA8);
  __chkstk_darwin(v87, v22);
  v90 = &v78 - v23;
  v89 = sub_1000C773C(&qword_1002D3AB0);
  __chkstk_darwin(v89, v24);
  v95 = &v78 - v25;
  v94 = sub_1000C773C(&qword_1002D3AB8);
  __chkstk_darwin(v94, v26);
  v96 = &v78 - v27;
  v98 = sub_1000C773C(&qword_1002D3AC0);
  __chkstk_darwin(v98, v28);
  v99 = &v78 - v29;
  v30 = sub_1000C773C(&qword_1002D3AC8);
  __chkstk_darwin(v30 - 8, v31);
  v97 = &v78 - v32;
  v100 = sub_1000C773C(&qword_1002D3AD0);
  __chkstk_darwin(v100, v33);
  v101 = &v78 - v34;
  v35 = type metadata accessor for RCRecordButton();
  v36 = *sub_10000AACC((v1 + *(v35 + 32)), *(v1 + *(v35 + 32) + 24));
  v112[3] = type metadata accessor for RCRecordButtonViewController();
  v112[4] = &off_1002907B8;
  v112[0] = v36;
  sub_1000CC430(v112, &v111);
  v37 = swift_allocObject();
  sub_100015FD0(&v111, v37 + 16);

  sub_100014B64(v112);
  v110 = v1;
  sub_1000C773C(&qword_1002D3AD8);
  sub_10016854C(&qword_1002D3AE0, &qword_1002D3AD8, &unk_10024C1E0, sub_1001684EC);
  Button.init(action:label:)();
  v109 = v35;
  v38 = *(v1 + *(v35 + 28));
  swift_getKeyPath();
  v112[0] = v38;
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v38 + 32))
  {
    v39 = *(v38 + 32);
  }

  else
  {
    v39 = static Color.clear.getter();
  }

  KeyPath = swift_getKeyPath();
  v112[0] = v39;

  v41 = AnyShapeStyle.init<A>(_:)();
  (*(v78 + 32))(v17, v14, v79);
  v42 = &v17[*(v80 + 36)];
  *v42 = KeyPath;
  v42[1] = v41;
  GlassProminentButtonStyle.init()();
  sub_1001690BC();
  sub_10000A1A4(&qword_1002D3B58, &type metadata accessor for GlassProminentButtonStyle);
  v43 = v82;
  v44 = v86;
  View.buttonStyle<A>(_:)();
  (*(v84 + 8))(v11, v44);
  sub_100003CBC(v17, &qword_1002D3A90);
  swift_getKeyPath();
  v112[0] = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = v91;
  if (*(v38 + 16))
  {
    static ButtonBorderShape.capsule.getter();
  }

  else
  {
    static ButtonBorderShape.circle.getter();
  }

  v46 = v95;
  v47 = swift_getKeyPath();
  v48 = v88;
  v49 = &v88[*(v81 + 36)];
  v50 = sub_1000C773C(&qword_1002D3B60);
  (*(v92 + 32))(v49 + *(v50 + 28), v45, v93);
  *v49 = v47;
  (*(v83 + 32))(v48, v43, v85);
  swift_getKeyPath();
  v112[0] = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v51 = *(v38 + OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__disabled);
  v52 = swift_getKeyPath();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v54 = v48;
  v55 = v90;
  sub_10001DBEC(v54, v90, &qword_1002D3AA0);
  v56 = (v55 + *(v87 + 36));
  *v56 = v52;
  v56[1] = sub_10001C49C;
  v56[2] = v53;
  swift_getKeyPath();
  v112[0] = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v38 + 17) == 1)
  {
    v57 = static Animation.easeOut(duration:)();
  }

  else
  {
    v57 = 0;
  }

  swift_getKeyPath();
  v112[0] = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = *(v38 + 18);
  sub_10001DBEC(v55, v46, &qword_1002D3AA8);
  v59 = v46 + *(v89 + 36);
  *v59 = v57;
  *(v59 + 8) = v58;
  swift_getKeyPath();
  v112[0] = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v38 + 17) == 1)
  {
    v60 = static Animation.easeOut(duration:)();
  }

  else
  {
    v60 = 0;
  }

  v61 = v96;
  swift_getKeyPath();
  v112[0] = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = *(v38 + 16);
  sub_10001DBEC(v46, v61, &qword_1002D3AB0);
  v63 = v61 + *(v94 + 36);
  *v63 = v60;
  *(v63 + 8) = v62;
  swift_getKeyPath();
  v112[0] = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v38 + 17) == 1)
  {
    v64 = static Animation.easeOut(duration:)();
  }

  else
  {
    v64 = 0;
  }

  swift_getKeyPath();
  v112[0] = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v65 = *(v38 + 32);
  v66 = v99;
  sub_10001DBEC(v61, v99, &qword_1002D3AB8);
  v67 = (v66 + *(v98 + 36));
  *v67 = v64;
  v67[1] = v65;

  v68 = v102;
  static AccessibilityTraits.startsMediaSession.getter();
  sub_100169270();
  v69 = v97;
  View.accessibilityAddTraits(_:)();
  (*(v103 + 8))(v68, v104);
  sub_100003CBC(v66, &qword_1002D3AC0);
  v70 = v69;
  v71 = v101;
  sub_10001DBEC(v70, v101, &qword_1002D3AC8);
  *(v71 + *(v100 + 36)) = 1;
  swift_getKeyPath();
  v112[0] = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v72 = OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__accessibilityLabel;
  swift_beginAccess();
  (*(v106 + 16))(v105, v38 + v72, v107);
  v73 = Text.init(_:)();
  v75 = v74;
  LOBYTE(v66) = v76;
  sub_100169694();
  View.accessibilityLabel(_:)();
  sub_100008020(v73, v75, v66 & 1);

  return sub_100003CBC(v71, &qword_1002D3AD0);
}

void *sub_100164D88(void *a1)
{
  sub_10000AACC(a1, a1[3]);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result recordButtonTapped];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100164DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v86 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for ControlSize();
  v84 = *(v87 - 8);
  __chkstk_darwin(v87, v8);
  v83 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C773C(&qword_1002D3B20);
  __chkstk_darwin(v10, v11);
  v13 = &v73 - v12;
  v77 = sub_1000C773C(&qword_1002D3B10);
  __chkstk_darwin(v77, v14);
  v80 = &v73 - v15;
  v79 = sub_1000C773C(&qword_1002D3B00);
  __chkstk_darwin(v79, v16);
  v82 = &v73 - v17;
  v81 = sub_1000C773C(&qword_1002D3AF0);
  __chkstk_darwin(v81, v18);
  v85 = &v73 - v19;
  *v13 = static Alignment.center.getter();
  *(v13 + 1) = v20;
  v21 = sub_1000C773C(&qword_1002D3BF0);
  sub_100165644(a1, &v13[*(v21 + 44)]);
  if (qword_1002CDF40 != -1)
  {
    swift_once();
  }

  v22 = qword_1002E90B0;
  if (qword_1002CDF48 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v23 = *(v10 + 36);
  v78 = v13;
  v24 = &v13[v23];
  v25 = v91;
  *v24 = v90;
  *(v24 + 1) = v25;
  *(v24 + 2) = v92;
  v74 = type metadata accessor for RCRecordButton();
  v26 = *(v74 + 28);
  v88 = a1;
  v27 = *(a1 + v26);
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel___observationRegistrar;
  *&v93 = v27;
  v29 = sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v27 + 16))
  {
    v30 = 147.0;
  }

  else
  {
    v30 = *&v22;
  }

  swift_getKeyPath();
  *&v93 = v27;
  v76 = v28;
  v75 = v29;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = *(v27 + 16);
  static Alignment.center.getter();
  if (v31)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = *&v22;
  }

  v33 = v32;
  if (v31)
  {
    v33 = v30;
  }

  if (v33 < v30)
  {
    static os_log_type_t.fault.getter();
    v73 = v30;
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v35 = v80;
  sub_10001DBEC(v78, v80, &qword_1002D3B20);
  v36 = (v35 + *(v77 + 36));
  v37 = v98;
  v38 = v99;
  v36[4] = v97;
  v36[5] = v37;
  v36[6] = v38;
  v39 = v94;
  *v36 = v93;
  v36[1] = v39;
  v40 = v96;
  v36[2] = v95;
  v36[3] = v40;
  v41 = v83;
  sub_100168E6C(&qword_1002D0F10, &type metadata accessor for ControlSize, v83);
  v42 = v86;
  sub_100168E6C(&qword_1002D0F18, &type metadata accessor for DynamicTypeSize, v86);
  v43 = sub_100169800(v41, v42);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  (*(v5 + 8))(v42, v4);
  (*(v84 + 8))(v41, v87);
  v50 = static Edge.Set.all.getter();
  v51 = v82;
  sub_10001DBEC(v35, v82, &qword_1002D3B10);
  v52 = v51 + *(v79 + 36);
  *v52 = v50;
  *(v52 + 8) = -v43;
  *(v52 + 16) = -v45;
  *(v52 + 24) = -v47;
  *(v52 + 32) = -v49;
  *(v52 + 40) = 0;
  LOBYTE(v42) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v85;
  sub_10001DBEC(v51, v85, &qword_1002D3B00);
  v62 = v61 + *(v81 + 36);
  *v62 = v42;
  *(v62 + 8) = v54;
  *(v62 + 16) = v56;
  *(v62 + 24) = v58;
  *(v62 + 32) = v60;
  *(v62 + 40) = 0;
  LOBYTE(v42) = static Edge.Set.horizontal.getter();
  swift_getKeyPath();
  v89 = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  EdgeInsets.init(_all:)();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  sub_10001DBEC(v61, a2, &qword_1002D3AF0);
  result = sub_1000C773C(&qword_1002D3AD8);
  v72 = a2 + *(result + 36);
  *v72 = v42;
  *(v72 + 8) = v64;
  *(v72 + 16) = v66;
  *(v72 + 24) = v68;
  *(v72 + 32) = v70;
  *(v72 + 40) = 0;
  return result;
}

void sub_100165644(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for RCRecordButton();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7);
  v8 = sub_1000C773C(&qword_1002D3BF8);
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8, v9);
  v55 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v59 = &v43 - v13;
  v14 = sub_1000C773C(&qword_1002D3C00);
  __chkstk_darwin(v14 - 8, v15);
  v54 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v20 = &v43 - v19;
  v60 = &v43 - v19;
  v53 = *(a1 + *(v4 + 44));
  sub_10001D2BC(v20);
  v21 = *(a1 + *(v4 + 36));
  swift_getKeyPath();
  v61 = v21;
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v21[2].Description + 2);
  v70 = 0;
  v71 = v22;
  KeyPath = swift_getKeyPath();
  sub_10001D258(a1, &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v51 = swift_allocObject();
  sub_100169FD0(&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v23, type metadata accessor for RCRecordButton);
  v50 = sub_1000C773C(&qword_1002D1508);
  v49 = sub_1000C773C(&qword_1002D3C08);
  v48 = sub_10001E2F0();
  v47 = sub_1000C7784(&qword_1002D3C10);
  v46 = sub_1000C7784(&qword_1002D1BA0);
  v45 = sub_1000C7784(&qword_1002D3C18);
  v44 = sub_1000C7784(&qword_1002D3C20);
  v24 = sub_100169B74();
  v25 = sub_10001E568();
  v26 = sub_100169C00();
  v27 = sub_1000C7784(&qword_1002D3C68);
  v28 = sub_1000C7784(&qword_1002D3C70);
  v29 = sub_100008034(&qword_1002D3C78, &qword_1002D3C68);
  v30 = sub_100008034(&qword_1002D3C80, &qword_1002D3C70);
  v61 = &type metadata for RCRecordButton.TextAnimationValues;
  v62 = v27;
  v63 = v28;
  v64 = v29;
  v65 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v47;
  v62 = &type metadata for RCRecordButton.TextAnimationValues;
  v63 = v46;
  v64 = v45;
  v65 = v44;
  v66 = v24;
  v67 = v25;
  v68 = v26;
  v69 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v32 = v59;
  ForEach<>.init(_:id:content:)();
  v33 = v54;
  sub_10000B46C(v60, v54, &qword_1002D3C00);
  v35 = v55;
  v34 = v56;
  v36 = *(v56 + 16);
  v37 = v57;
  v36(v55, v32, v57);
  v38 = v58;
  v39 = v53;
  *v58 = v53;
  v40 = sub_1000C773C(&qword_1002D3C88);
  sub_10000B46C(v33, &v38[*(v40 + 48)], &qword_1002D3C00);
  v36(&v38[*(v40 + 64)], v35, v37);
  v41 = *(v34 + 8);
  v42 = v39;
  v41(v59, v37);
  sub_100003CBC(v60, &qword_1002D3C00);
  v41(v35, v37);
  sub_100003CBC(v33, &qword_1002D3C00);
}

uint64_t sub_100165C54@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v5 = type metadata accessor for RCRecordButton();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v73 = type metadata accessor for EnvironmentValues();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73, v9);
  v71 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1000C773C(&qword_1002D3C38);
  __chkstk_darwin(v78, v11);
  v13 = &v70 - v12;
  v88 = sub_1000C773C(&qword_1002D3C10);
  __chkstk_darwin(v88, v14);
  v89 = &v70 - v15;
  v16 = *a1;
  v17 = *(v5 + 28);
  v81 = a2;
  v18 = *(a2 + v17);
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel___observationRegistrar;
  v91 = v18;
  v90 = sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = *(v18 + 40);
  if (v16 >= *(v20 + 16))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_12;
  }

  v75 = v6;
  v76 = v7;
  v77 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v16;
  v21 = v20 + 48 * v16;
  v22 = *(v21 + 32);
  v23 = *(v21 + 40);
  v82 = v19;
  v24 = *(v21 + 48);
  v25 = *(v21 + 56);
  v26 = *(v21 + 64);
  v27 = *(v21 + 72);
  swift_getKeyPath();
  v91 = v18;
  v85 = v22;
  v84 = v23;
  v83 = v24;
  sub_100007D54(v22, v23, v24);
  v87 = v25;

  v86 = v26;

  v80 = v27;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v18 + OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__disabled) & 1) == 0)
  {
    v35 = v81 + *(v5 + 24);
    v36 = *v35;
    if (*(v35 + 8) == 1)
    {
      if ((v36 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v37 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v38 = v71;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100169AE8(v36, 0);
      (*(v72 + 8))(v38, v73);
      if ((v91 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v39 = Text.font(_:)();
    v41 = v40;
    v43 = v42;
    v73 = v44;
    v91 = v80;

    v28 = Text.foregroundStyle<A>(_:)();
    v30 = v45;
    v32 = v46;
    v34 = v47;
    sub_100008020(v39, v41, v43 & 1);

    goto LABEL_10;
  }

LABEL_4:
  v28 = Text.font(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
LABEL_10:
  v7 = v77;
  v48 = &v13[*(v78 + 36)];
  v6 = *(sub_1000C773C(&qword_1002D1680) + 28);
  v49 = enum case for Image.Scale.large(_:);
  v50 = type metadata accessor for Image.Scale();
  (*(*(v50 - 8) + 104))(v48 + v6, v49, v50);
  *v48 = swift_getKeyPath();
  *v13 = v28;
  *(v13 + 1) = v30;
  v13[16] = v32 & 1;
  *(v13 + 3) = v34;
  LOBYTE(v6) = static Edge.Set.horizontal.getter();
  swift_getKeyPath();
  v91 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = v74;
  if ((*(v18 + 16) & 1) != 0 && qword_1002CDF40 != -1)
  {
    goto LABEL_15;
  }

LABEL_12:
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v89;
  sub_10001DBEC(v13, v89, &qword_1002D3C38);
  v60 = v59 + *(v88 + 36);
  *v60 = v6;
  *(v60 + 8) = v52;
  *(v60 + 16) = v54;
  *(v60 + 24) = v56;
  *(v60 + 32) = v58;
  *(v60 + 40) = 0;
  v98 = xmmword_10024C0F0;
  swift_getKeyPath();
  v91 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v61 = *(v18 + 56);
  v96 = *(v18 + 48);
  v97 = v61;
  sub_10001D258(v81, v7);
  v62 = (*(v75 + 80) + 24) & ~*(v75 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = v16;
  sub_100169FD0(v7, v63 + v62, type metadata accessor for RCRecordButton);
  v90 = sub_1000C773C(&qword_1002D1BA0);
  v82 = sub_1000C773C(&qword_1002D3C18);
  v81 = sub_1000C773C(&qword_1002D3C20);
  v78 = sub_100169B74();
  sub_10001E568();
  sub_100169C00();
  v64 = sub_1000C7784(&qword_1002D3C68);
  v65 = sub_1000C7784(&qword_1002D3C70);
  v66 = sub_100008034(&qword_1002D3C78, &qword_1002D3C68);
  v67 = sub_100008034(&qword_1002D3C80, &qword_1002D3C70);
  v91 = &type metadata for RCRecordButton.TextAnimationValues;
  v92 = v64;
  v93 = v65;
  v94 = v66;
  v95 = v67;
  swift_getOpaqueTypeConformance2();
  v68 = v89;
  View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)();

  sub_100008020(v85, v84, v83);

  return sub_100003CBC(v68, &qword_1002D3C10);
}

uint64_t sub_1001665BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_1000C773C(&qword_1002D3C60);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  *(a3 + *(sub_1000C773C(&qword_1002D3C50) + 36)) = v5;
  static UnitPoint.center.getter();
  v9 = v8;
  v11 = v10;
  result = sub_1000C773C(&qword_1002D3C18);
  v13 = (a3 + *(result + 36));
  *v13 = v6;
  v13[1] = v6;
  v13[2] = v9;
  v13[3] = v11;
  return result;
}

uint64_t sub_100166688@<X0>(uint64_t a1@<X1>, void (*a2)(void, void)@<X2>, uint64_t a3@<X8>)
{
  v36 = a2;
  v45 = a3;
  v5 = sub_1000C773C(&qword_1002D3C20);
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  __chkstk_darwin(v5, v7);
  v42 = &v35 - v8;
  v9 = sub_1000C773C(&qword_1002D3C70);
  v46 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v41 = &v35 - v14;
  v15 = sub_1000C773C(&qword_1002D3C68);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v19;
  __chkstk_darwin(v20, v21);
  v37 = &v35 - v22;
  swift_getKeyPath();
  v48 = a1;
  v49 = a2;
  sub_1000C773C(&qword_1002D3C90);
  sub_100008034(&qword_1002D3C98, &qword_1002D3C90);
  KeyframeTrack.init(_:content:)();
  v23 = sub_100008034(&qword_1002D3C78, &qword_1002D3C68);
  static KeyframesBuilder.buildExpression<A>(_:)();
  v24 = *(v16 + 8);
  v38 = v16 + 8;
  v39 = v24;
  v24(v19, v15);
  swift_getKeyPath();
  v47 = v36;
  sub_1000C773C(&qword_1002D3CA0);
  sub_100008034(&qword_1002D3CA8, &qword_1002D3CA0);
  v25 = v40;
  KeyframeTrack.init(_:content:)();
  v26 = sub_100008034(&qword_1002D3C80, &qword_1002D3C70);
  v27 = v41;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v28 = *(v46 + 8);
  v46 += 8;
  v36 = v28;
  v28(v25, v9);
  v29 = v35;
  v30 = v37;
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  v31 = v42;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v50 = &type metadata for RCRecordButton.TextAnimationValues;
  v51 = v15;
  v52 = v9;
  v53 = v23;
  v54 = v26;
  swift_getOpaqueTypeConformance2();
  v32 = v43;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v44 + 8))(v31, v32);
  v33 = v39;
  v39(v29, v15);
  v36(v27, v9);
  return v33(v30, v15);
}

uint64_t sub_100166BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v78 = sub_1000C773C(&qword_1002D3CB8);
  v75 = *(v78 - 8);
  __chkstk_darwin(v78, v5);
  v74 = &v70 - v6;
  v89 = sub_1000C773C(&qword_1002D3CD0);
  v81 = *(v89 - 8);
  __chkstk_darwin(v89, v7);
  v80 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v79 = &v70 - v11;
  v12 = type metadata accessor for UnitCurve();
  __chkstk_darwin(v12 - 8, v13);
  v82 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000C773C(&qword_1002D3CC0);
  v84 = *(v15 - 8);
  __chkstk_darwin(v15, v16);
  v72 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v73 = &v70 - v20;
  __chkstk_darwin(v21, v22);
  v71 = &v70 - v23;
  __chkstk_darwin(v24, v25);
  v77 = &v70 - v26;
  __chkstk_darwin(v27, v28);
  v30 = &v70 - v29;
  __chkstk_darwin(v31, v32);
  v85 = &v70 - v33;
  __chkstk_darwin(v34, v35);
  v37 = &v70 - v36;
  __chkstk_darwin(v38, v39);
  v76 = &v70 - v40;
  v41 = sub_1000C773C(&qword_1002D3C90);
  v87 = *(v41 - 8);
  v88 = v41;
  __chkstk_darwin(v41, v42);
  v86 = &v70 - v43;
  v44 = *(type metadata accessor for RCRecordButton() + 28);
  v83 = a2;
  v45 = *(a2 + v44);
  swift_getKeyPath();
  v92 = v45;
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v46 = *(v45 + 56) | (*(v45 + 48) != a1);
  swift_getKeyPath();
  v92 = v45;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v45 + 57))
  {
    v92 = 0;
    if (v46)
    {
      static UnitCurve.linear.getter();
      LinearKeyframe.init(_:duration:timingCurve:)();
      v47 = sub_100008034(&qword_1002D3CC8, &qword_1002D3CC0);
      v48 = v85;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v49 = *(v84 + 8);
      v49(v30, v15);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v92 = &type metadata for Double;
      v93 = v15;
      v94 = v15;
      v95 = v47;
      v96 = v47;
      swift_getOpaqueTypeConformance2();
      v50 = v79;
      static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
      v49(v30, v15);
      v49(v48, v15);
    }

    else
    {
      swift_getKeyPath();
      v91 = v45;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      static UnitCurve.linear.getter();
      v56 = v71;
      LinearKeyframe.init(_:duration:timingCurve:)();
      v57 = sub_100008034(&qword_1002D3CC8, &qword_1002D3CC0);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v58 = *(v84 + 8);
      v58(v56, v15);
      v92 = 0x3FF0000000000000;
      swift_getKeyPath();
      v91 = v45;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      static UnitCurve.linear.getter();
      v59 = v72;
      LinearKeyframe.init(_:duration:timingCurve:)();
      v60 = v73;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v58(v59, v15);
      v61 = v85;
      v62 = v77;
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v63 = v74;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v92 = &type metadata for Double;
      v93 = v15;
      v94 = v15;
      v95 = v57;
      v96 = v57;
      swift_getOpaqueTypeConformance2();
      v50 = v79;
      v64 = v78;
      static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
      (*(v75 + 8))(v63, v64);
      v58(v61, v15);
      v58(v60, v15);
      v58(v62, v15);
    }

    v65 = v89;
    sub_100008034(&qword_1002D3CD8, &qword_1002D3CD0);
    v66 = v80;
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    sub_100008034(&qword_1002D3CC8, &qword_1002D3CC0);
    v55 = v86;
    static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
    v67 = *(v81 + 8);
    v67(v66, v65);
    v67(v50, v65);
  }

  else
  {
    v51 = 1.0;
    if (v46)
    {
      v51 = 0.0;
    }

    v92 = *&v51;
    swift_getKeyPath();
    v91 = v45;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    static UnitCurve.linear.getter();
    LinearKeyframe.init(_:duration:timingCurve:)();
    sub_100008034(&qword_1002D3CC8, &qword_1002D3CC0);
    v52 = v76;
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v53 = *(v84 + 8);
    v53(v37, v15);
    v54 = v85;
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    sub_100008034(&qword_1002D3CD8, &qword_1002D3CD0);
    v55 = v86;
    static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    v53(v54, v15);
    v53(v52, v15);
  }

  sub_100008034(&qword_1002D3C98, &qword_1002D3C90);
  v68 = v88;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (*(v87 + 8))(v55, v68);
}

uint64_t sub_100167770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = sub_1000C773C(&qword_1002D3CB0);
  v50 = *(v58 - 8);
  __chkstk_darwin(v58, v3);
  v49 = &v47 - v4;
  v57 = sub_1000C773C(&qword_1002D3CB8);
  v48 = *(v57 - 8);
  __chkstk_darwin(v57, v5);
  v53 = &v47 - v6;
  v7 = type metadata accessor for UnitCurve();
  __chkstk_darwin(v7 - 8, v8);
  v9 = sub_1000C773C(&qword_1002D3CC0);
  v56 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v47 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v52 = &v47 - v14;
  __chkstk_darwin(v15, v16);
  v60 = &v47 - v17;
  __chkstk_darwin(v18, v19);
  v21 = &v47 - v20;
  __chkstk_darwin(v22, v23);
  v51 = &v47 - v24;
  v25 = sub_1000C773C(&qword_1002D3CA0);
  v54 = *(v25 - 8);
  v55 = v25;
  __chkstk_darwin(v25, v26);
  v61 = &v47 - v27;
  v28 = *(a1 + *(type metadata accessor for RCRecordButton() + 28));
  swift_getKeyPath();
  v63 = v28;
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v28 + 58) == 1)
  {
    v63 = 0x3FF0000000000000;
    swift_getKeyPath();
    v62 = v28;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    static UnitCurve.linear.getter();
    LinearKeyframe.init(_:duration:timingCurve:)();
    v29 = sub_100008034(&qword_1002D3CC8, &qword_1002D3CC0);
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v30 = *(v56 + 1);
    v30(v21, v9);
    v31 = v30;
    v63 = 0x3FF3333333333333;
    static UnitCurve.linear.getter();
    v32 = v52;
    LinearKeyframe.init(_:duration:timingCurve:)();
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v31(v32, v9);
    v56 = v31;
    v63 = 0x3FF0000000000000;
    static UnitCurve.linear.getter();
    v33 = v47;
    LinearKeyframe.init(_:duration:timingCurve:)();
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v31(v33, v9);
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
    v63 = &type metadata for Double;
    v64 = v9;
    v65 = v9;
    v66 = v29;
    v67 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v35 = v49;
    v36 = v57;
    static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
    v63 = &type metadata for Double;
    v64 = v36;
    v65 = v9;
    v66 = OpaqueTypeConformance2;
    v67 = v29;
    swift_getOpaqueTypeConformance2();
    v37 = v58;
    static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    (*(v50 + 8))(v35, v37);
    (*(v48 + 8))(v53, v36);
    v38 = v56;
    v56(v33, v9);
    v38(v32, v9);
    v38(v60, v9);
    v38(v51, v9);
  }

  else
  {
    v63 = 0x3FF0000000000000;
    static UnitCurve.linear.getter();
    v39 = v52;
    LinearKeyframe.init(_:duration:timingCurve:)();
    v40 = sub_100008034(&qword_1002D3CC8, &qword_1002D3CC0);
    v41 = v60;
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v42 = *(v56 + 1);
    v42(v39, v9);
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    v63 = &type metadata for Double;
    v64 = v9;
    v65 = v9;
    v66 = v40;
    v67 = v40;
    v43 = swift_getOpaqueTypeConformance2();
    v63 = &type metadata for Double;
    v64 = v57;
    v65 = v9;
    v66 = v43;
    v67 = v40;
    swift_getOpaqueTypeConformance2();
    static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
    v42(v39, v9);
    v42(v41, v9);
  }

  sub_100008034(&qword_1002D3CA8, &qword_1002D3CA0);
  v44 = v61;
  v45 = v55;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (*(v54 + 8))(v44, v45);
}

uint64_t sub_1001680A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10016A0A0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100168108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10016A0A0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10016816C()
{
  sub_10016A0A0();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100168194@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_100168264@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_100168334@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_100168404@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t sub_10016854C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001685D0()
{
  result = qword_1002D3B08;
  if (!qword_1002D3B08)
  {
    sub_1000C7784(&qword_1002D3B10);
    sub_10016865C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B08);
  }

  return result;
}

unint64_t sub_10016865C()
{
  result = qword_1002D3B18;
  if (!qword_1002D3B18)
  {
    sub_1000C7784(&qword_1002D3B20);
    sub_100008034(&qword_1002D3B28, &qword_1002D3B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B18);
  }

  return result;
}

uint64_t sub_100168714@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t sub_1001687EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

uint64_t sub_100168898()
{
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100168964@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100168A48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 58);
  *a2 = *(v3 + 57);
  a2[1] = v5;
  return result;
}

uint64_t sub_100168AF8()
{
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100168BD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__accessibilityLabel;
  swift_beginAccess();
  v5 = type metadata accessor for AttributedString();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100168CC8(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v4 = __chkstk_darwin(v2, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return sub_10000A734(v6);
}

uint64_t sub_100168D94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__disabled);
  return result;
}

uint64_t sub_100168E6C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C773C(a1);
  __chkstk_darwin(v13, v14);
  v16 = &v20 - v15;
  sub_10000B46C(v6, &v20 - v15, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a2(0);
    return (*(*(v17 - 8) + 32))(a3, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v12, v8);
  }
}

unint64_t sub_1001690BC()
{
  result = qword_1002D3B38;
  if (!qword_1002D3B38)
  {
    sub_1000C7784(&qword_1002D3A90);
    sub_100008034(&qword_1002D3B40, &qword_1002D3A88);
    sub_100008034(&qword_1002D3B48, &qword_1002D3B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B38);
  }

  return result;
}

uint64_t sub_1001691A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

unint64_t sub_100169270()
{
  result = qword_1002D3B68;
  if (!qword_1002D3B68)
  {
    sub_1000C7784(&qword_1002D3AC0);
    sub_100169328();
    sub_100008034(&qword_1002D3BC8, &qword_1002D3BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B68);
  }

  return result;
}

unint64_t sub_100169328()
{
  result = qword_1002D3B70;
  if (!qword_1002D3B70)
  {
    sub_1000C7784(&qword_1002D3AB8);
    sub_1001693E0();
    sub_100008034(&qword_1002D3BB8, &qword_1002D3BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B70);
  }

  return result;
}

unint64_t sub_1001693E0()
{
  result = qword_1002D3B78;
  if (!qword_1002D3B78)
  {
    sub_1000C7784(&qword_1002D3AB0);
    sub_100169498();
    sub_100008034(&qword_1002D3BA8, &qword_1002D3BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B78);
  }

  return result;
}

unint64_t sub_100169498()
{
  result = qword_1002D3B80;
  if (!qword_1002D3B80)
  {
    sub_1000C7784(&qword_1002D3AA8);
    sub_100169550();
    sub_100008034(&qword_1002D3B98, &qword_1002D3BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B80);
  }

  return result;
}

unint64_t sub_100169550()
{
  result = qword_1002D3B88;
  if (!qword_1002D3B88)
  {
    sub_1000C7784(&qword_1002D3AA0);
    sub_1000C7784(&qword_1002D3A90);
    type metadata accessor for GlassProminentButtonStyle();
    sub_1001690BC();
    sub_10000A1A4(&qword_1002D3B58, &type metadata accessor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100008034(&qword_1002D3B90, &qword_1002D3B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B88);
  }

  return result;
}

unint64_t sub_100169694()
{
  result = qword_1002D3BD8;
  if (!qword_1002D3BD8)
  {
    sub_1000C7784(&qword_1002D3AD0);
    sub_10016974C(&qword_1002D3BE0, &qword_1002D3AC8, &unk_10024C1D0, sub_100169270);
    sub_10001D204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3BD8);
  }

  return result;
}

uint64_t sub_10016974C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(a2);
    a4();
    sub_10000A1A4(&qword_1002D1568, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100169800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ControlSize();
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9, v12);
  v15 = (*(v10 + 88))(v14, v9);
  if (v15 == enum case for ControlSize.mini(_:) || v15 == enum case for ControlSize.small(_:))
  {
    v17 = 5.0;
  }

  else
  {
    v17 = 7.0;
    if (v15 != enum case for ControlSize.regular(_:))
    {
      if (v15 == enum case for ControlSize.large(_:) || v15 == enum case for ControlSize.extraLarge(_:))
      {
        v17 = 15.0;
      }

      else
      {
        (*(v10 + 8))(v14, v9);
      }
    }
  }

  (*(v5 + 16))(v8, a2, v4);
  v19 = (*(v5 + 88))(v8, v4);
  if (v19 != enum case for DynamicTypeSize.accessibility1(_:) && v19 != enum case for DynamicTypeSize.accessibility2(_:) && v19 != enum case for DynamicTypeSize.accessibility3(_:) && v19 != enum case for DynamicTypeSize.accessibility4(_:) && v19 != enum case for DynamicTypeSize.accessibility5(_:))
  {
    (*(v5 + 8))(v8, v4, 10.0);
  }

  return v17;
}

uint64_t sub_100169AE8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100169AF4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RCRecordButton() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100165C54(a1, v6, a2);
}

unint64_t sub_100169B74()
{
  result = qword_1002D3C28;
  if (!qword_1002D3C28)
  {
    sub_1000C7784(&qword_1002D3C10);
    sub_10001E3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3C28);
  }

  return result;
}

unint64_t sub_100169C00()
{
  result = qword_1002D3C40;
  if (!qword_1002D3C40)
  {
    sub_1000C7784(&qword_1002D3C18);
    sub_100169C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3C40);
  }

  return result;
}

unint64_t sub_100169C8C()
{
  result = qword_1002D3C48;
  if (!qword_1002D3C48)
  {
    sub_1000C7784(&qword_1002D3C50);
    sub_100008034(&qword_1002D3C58, &qword_1002D3C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3C48);
  }

  return result;
}

uint64_t sub_100169D44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCRecordButton() - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_100166688(v4, v5, a1);
}

uint64_t sub_100169DD8()
{
  v1 = type metadata accessor for RCRecordButton();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000C773C(&qword_1002D0F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ControlSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_1000C773C(&qword_1002D0F18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_100169AE8(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  sub_100014B64(v5 + v1[8]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100169FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10016A04C()
{
  result = qword_1002D3D70;
  if (!qword_1002D3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3D70);
  }

  return result;
}

unint64_t sub_10016A0A0()
{
  result = qword_1002D3D78;
  if (!qword_1002D3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3D78);
  }

  return result;
}

uint64_t sub_10016A0F4(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = type metadata accessor for TranscriptionData(0);
  __chkstk_darwin(v3, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptionPresentationModel(0);
  v8 = (v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.init()();
  v12 = OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_locale;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = v2 + v12;
  v17 = v25;
  v15(v16, v25, v13);
  v15(v6, v17, v13);
  AttributedString.init(stringLiteral:)();
  AttributedString.init(stringLiteral:)();
  AttributedString.init(stringLiteral:)();
  v18 = &v11[v8[9]];
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  *&v11[v8[10]] = _swiftEmptyArrayStorage;
  v19 = &v11[v8[11]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v11[v8[12]] = 0;
  v20 = &v11[v8[8]];
  v21 = type metadata accessor for TranscriptionParagraphFormatter();
  v20[3] = v21;
  v20[4] = &off_100293B58;
  v22 = sub_100015800(v20);
  v15(v22 + *(v21 + 20), v6, v13);
  *v22 = 3;
  sub_10016CC98();
  (*(v14 + 8))(v25, v13);
  sub_10016E0DC(v6, type metadata accessor for TranscriptionData);
  sub_10016E258(v11, v2 + OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_presentationModel, type metadata accessor for TranscriptionPresentationModel);
  return v2;
}

uint64_t sub_10016A37C()
{
  v1 = sub_1000C773C(&qword_1002D3F90);
  v3 = __chkstk_darwin(v1, v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for AttributedString.Index();
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v25 - v16;
  v26 = sub_1000C773C(&qword_1002CFFD8);
  __chkstk_darwin(v26, v18);
  v20 = &v25 - v19;
  AttributedString.startIndex.getter();
  AttributedString.endIndex.getter();
  sub_10016E210(&qword_1002D1F28, &type metadata accessor for AttributedString.Index);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v25 = v0;
    v22 = *(v10 + 32);
    v22(v8, v17, v9);
    v22(&v8[*(v1 + 48)], v14, v9);
    sub_10000B46C(v8, v5, &qword_1002D3F90);
    v23 = *(v1 + 48);
    v22(v20, v5, v9);
    v24 = *(v10 + 8);
    v24(&v5[v23], v9);
    sub_10016E13C(v8, v5);
    v22(&v20[*(v26 + 36)], &v5[*(v1 + 48)], v9);
    v24(v5, v9);
    sub_100008034(&qword_1002D05A0, &qword_1002CFFD8);
    AttributedString.removeSubrange<A>(_:)();
    return sub_100003CBC(v20, &qword_1002CFFD8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10016A6BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v5, v6);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_beginAccess();
    sub_10016E210(&unk_1002D4AD0, &type metadata accessor for AttributedString);
    AttributedString.append<A>(_:)();
    swift_endAccess();
    v12 = v3 + OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_presentationModel;
    swift_beginAccess();
    v13 = type metadata accessor for TranscriptionPresentationModel(0);
    sub_10016C970(v11, *(v12 + *(v13 + 40)));
    sub_10016CC98();
    (*(v8 + 8))(v11, v7);
    return swift_endAccess();
  }

  else
  {
    sub_10016E210(&unk_1002D4AD0, &type metadata accessor for AttributedString);
    dispatch thunk of AttributedStringProtocol.characters.getter();
    sub_10016E210(&qword_1002D1340, &type metadata accessor for AttributedString.CharacterView);
    v15 = String.init<A>(_:)();
    v17 = v16;
    v18 = v3 + OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_presentationModel;
    swift_beginAccess();
    v19 = (v18 + *(type metadata accessor for TranscriptionPresentationModel(0) + 36));
    *v19 = v15;
    v19[1] = v17;
  }
}

uint64_t sub_10016A974(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for TranscriptionPresentationModel(0);
  v4 = (v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TranscriptionData(0);
  v9 = v8 - 8;
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v29 - v15;
  swift_beginAccess();
  sub_10016A37C();
  swift_endAccess();
  v17 = OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_locale;
  v18 = type metadata accessor for Locale();
  v19 = *(*(v18 - 8) + 16);
  v19(v16, v2 + v17, v18);
  v20 = *(v9 + 28);
  v21 = type metadata accessor for AttributedString();
  (*(*(v21 - 8) + 16))(&v16[v20], v29, v21);
  sub_10016E074(v16, v13, type metadata accessor for TranscriptionData);
  AttributedString.init(stringLiteral:)();
  AttributedString.init(stringLiteral:)();
  v22 = &v7[v4[9]];
  *v22 = 0;
  *(v22 + 1) = 0xE000000000000000;
  *&v7[v4[10]] = _swiftEmptyArrayStorage;
  v23 = &v7[v4[11]];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v7[v4[12]] = 0;
  v24 = &v7[v4[8]];
  v25 = type metadata accessor for TranscriptionParagraphFormatter();
  v24[3] = v25;
  v24[4] = &off_100293B58;
  v26 = sub_100015800(v24);
  v19(v26 + *(v25 + 20), v13, v18);
  *v26 = 3;
  sub_10016CC98();
  sub_10016E0DC(v13, type metadata accessor for TranscriptionData);
  sub_10016E0DC(v16, type metadata accessor for TranscriptionData);
  v27 = OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_presentationModel;
  swift_beginAccess();
  sub_10016E1AC(v7, v2 + v27);
  return swift_endAccess();
}

uint64_t sub_10016AC58()
{
  v1 = v0;
  v51 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v51, v2);
  v50 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedSubstring();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4, v5);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000C773C(&qword_1002D3F78);
  __chkstk_darwin(v52, v7);
  v56 = &v48 - v8;
  v9 = type metadata accessor for AttributedString.Runs.Index();
  v60 = *(v9 - 8);
  v11 = __chkstk_darwin(v9, v10);
  v58 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v48 - v14;
  v57 = type metadata accessor for AttributedString.Runs();
  v59 = *(v57 - 8);
  __chkstk_darwin(v57, v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TranscriptionPresentationModel(0);
  v20 = v19[8];
  v21 = (v0 + v19[7]);
  v22 = v21[1];
  v63 = *v21;
  v64 = v22;
  v62[5] = *(v1 + v20);
  v23 = v19[5];
  v24 = type metadata accessor for AttributedString();
  v25 = sub_10016E210(&unk_1002D4AD0, &type metadata accessor for AttributedString);

  v61 = v1;
  v48 = v23;
  v49 = v24;
  v26 = v25;
  dispatch thunk of AttributedStringProtocol.runs.getter();
  sub_10016E210(&qword_1002D3F98, &type metadata accessor for AttributedString.Runs);
  v27 = v57;
  dispatch thunk of Collection.startIndex.getter();
  v28 = v58;
  dispatch thunk of Collection.endIndex.getter();
  sub_10016E210(&qword_1002D3FA0, &type metadata accessor for AttributedString.Runs.Index);
  LOBYTE(v22) = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v60 + 1);
  v29(v28, v9);
  v29(v15, v9);
  (*(v59 + 8))(v18, v27);
  if ((v22 & 1) == 0)
  {
    v60 = v19;
    v30 = v56;
    AttributedString.endIndex.getter();
    type metadata accessor for AttributedString.Index();
    sub_10016E210(&qword_1002D1CE0, &type metadata accessor for AttributedString.Index);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v32 = v61;
    v33 = v49;
    AttributedString.append<A>(_:)();
    sub_100008034(&qword_1002D3F80, &qword_1002D3F78);
    v34 = v53;
    AttributedString.subscript.getter();
    sub_10016E210(&qword_1002D1388, &type metadata accessor for AttributedSubstring);
    v35 = v55;
    dispatch thunk of AttributedStringProtocol.characters.getter();
    sub_10016E210(&qword_1002D1340, &type metadata accessor for AttributedString.CharacterView);
    v36._countAndFlagsBits = String.init<A>(_:)();
    String.append(_:)(v36);

    v62[3] = v33;
    v62[4] = v26;
    v37 = sub_100015800(v62);
    (*(*(v33 - 8) + 16))(v37, v32, v33);
    v38 = sub_10011D638();
    __chkstk_darwin(v38, v39);
    *(&v48 - 2) = v62;
    v40 = sub_10011B1FC(sub_10016E3C4, (&v48 - 4), v38);

    sub_100014B64(v62);
    sub_1001B1E74(v40);
    AttributedString.removeSubrange<A>(_:)();
    (*(v54 + 8))(v34, v35);
    sub_100003CBC(v30, &qword_1002D3F78);
    v19 = v60;
  }

  v41 = (v61 + v19[9]);
  v42 = v41[1];
  if (!v42)
  {
    return v63;
  }

  v43 = *v41;
  v44 = *v41 & 0xFFFFFFFFFFFFLL;
  if ((v42 & 0x2000000000000000) != 0)
  {
    v44 = HIBYTE(v42) & 0xF;
  }

  if (!v44)
  {
    return v63;
  }

  v45 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v45 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    v62[0] = v63;
    v62[1] = v64;

    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);

    v47._countAndFlagsBits = v43;
    v47._object = v42;
    String.append(_:)(v47);

    return v62[0];
  }

  else
  {

    return v43;
  }
}

uint64_t sub_10016B3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = type metadata accessor for TimeRangeRun();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57, v4);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_1000C773C(&qword_1002D3F78);
  __chkstk_darwin(v65, v7);
  v64 = &v55 - v8;
  v67 = type metadata accessor for AttributedString();
  v80 = *(v67 - 8);
  __chkstk_darwin(v67, v9);
  v66 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedSubstring();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v63 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v18 = &v55 - v17;
  v77 = type metadata accessor for AttributedString.Index();
  v19 = *(v77 - 8);
  v21 = __chkstk_darwin(v77, v20);
  v76 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v25 = &v55 - v24;
  v26 = type metadata accessor for TranscriptionFragment(0);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26, v28);
  v75 = (&v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = AttributedString.init()();
  v74 = *(a1 + 16);
  if (!v74)
  {
    return result;
  }

  v73 = a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v31 = 0;
  v72 = *(v26 + 24);
  v62 = (v80 + 1);
  v80 = (v19 + 8);
  v71 = *(v27 + 72);
  v78 = (v12 + 8);
  v61 = (v19 + 16);
  v55 = v11;
  v59 = v18;
  v58 = v25;
  v60 = a2;
  while (1)
  {
    v79 = v31;
    v33 = v75;
    sub_10016E074(v73 + v71 * v31, v75, type metadata accessor for TranscriptionFragment);
    v34 = v33[2];
    v35 = *v33;
    AttributedString.endIndex.getter();
    sub_10016BCC4(v18, v35, v33[1]);
    sub_10016E0DC(v33, type metadata accessor for TranscriptionFragment);
    v36 = v25;
    if (sub_10016DED0())
    {
      v37 = v66;
      AttributedString.init(stringLiteral:)();
      static AttributedString.+= infix(_:_:)();
      (*v62)(v37, v67);
    }

    sub_10016E210(&qword_1002D1388, &type metadata accessor for AttributedSubstring);
    AttributedString.append<A>(_:)();
    v38 = v76;
    AttributedString.endIndex.getter();
    sub_10016E210(&qword_1002D1F28, &type metadata accessor for AttributedString.Index);
    v39 = v77;
    v40 = dispatch thunk of static Comparable.< infix(_:_:)();
    v41 = v38;
    v42 = *v80;
    (*v80)(v41, v39);
    if (v40)
    {
      break;
    }

    (*v78)(v18, v11);
    v32 = v79;
LABEL_4:
    v31 = v32 + 1;
    result = v42(v36, v39);
    v25 = v36;
    if (v31 == v74)
    {
      return result;
    }
  }

  sub_10016E210(&qword_1002D1CE0, &type metadata accessor for AttributedString.Index);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

  v70 = v42;
  v43 = v64;
  (*v61)(v64, v36, v39);
  sub_100008034(&qword_1002D3F80, &qword_1002D3F78);
  v44 = v63;
  AttributedString.subscript.getter();
  sub_100003CBC(v43, &qword_1002D3F78);
  v45 = sub_10011D638();
  v46 = *v78;
  (*v78)(v44, v11);
  v47 = v45[2];
  if (!v47)
  {

LABEL_15:
    v18 = v59;
    v46(v59, v11);
    v36 = v58;
    v32 = v79;
    v42 = v70;
    goto LABEL_4;
  }

  v69 = v46;
  v48 = v34 - v35;
  v49 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v68 = v45;
  v50 = v45 + v49;
  v51 = *(v56 + 72);
  while (1)
  {
    result = sub_10016E074(v50, v6, type metadata accessor for TimeRangeRun);
    v52 = v48 + *v6;
    v53 = v48 + v6[1];
    if (v52 > v53)
    {
      break;
    }

    sub_1000C773C(&qword_1002CFFD8);
    sub_100008034(&qword_1002D05A0, &qword_1002CFFD8);
    v54 = AttributedString.subscript.modify();
    v81 = v52;
    v82 = v53;
    v83 = 0;
    sub_1000E78D8();
    AttributedSubstring.subscript.setter();
    v54(v84, 0);
    sub_10016E0DC(v6, type metadata accessor for TimeRangeRun);
    v50 += v51;
    if (!--v47)
    {

      v11 = v55;
      v39 = v77;
      v46 = v69;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10016BCC4@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v65 = a1;
  v61 = sub_1000C773C(&qword_1002D3F90);
  v7 = __chkstk_darwin(v61, v6);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v59 = &v59 - v10;
  v68 = sub_1000C773C(&qword_1002CFFD8);
  __chkstk_darwin(v68, v11);
  v62 = &v59 - v12;
  v64 = type metadata accessor for TimeRangeRun();
  v13 = *(v64 - 8);
  v15 = __chkstk_darwin(v64, v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v15, v18);
  v67 = &v59 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v66 = &v59 - v23;
  __chkstk_darwin(v22, v24);
  v26 = (&v59 - v25);
  v63 = v3;
  result = sub_10011D5F0();
  v28 = result;
  v29 = *(result + 16);
  if (v29)
  {
    v30 = 0;
    v31 = _swiftEmptyArrayStorage;
    v69 = v17;
    while (v30 < *(v28 + 16))
    {
      v32 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v33 = *(v13 + 72);
      sub_10016E074(v28 + v32 + v33 * v30, v26, type metadata accessor for TimeRangeRun);
      v34 = *v26;
      v35 = v26[1];
      if (*v26 <= a3)
      {
        v36 = *v26;
      }

      else
      {
        v36 = a3;
      }

      if (v34 < a2)
      {
        v36 = a2;
      }

      if (v35 >= a2)
      {
        v37 = v26[1];
      }

      else
      {
        v37 = a2;
      }

      if (v35 > a3)
      {
        v37 = a3;
      }

      if (v36 == v34 && v37 == v35)
      {
        sub_10016E258(v26, v17, type metadata accessor for TimeRangeRun);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001AE6B8(0, v31[2] + 1, 1);
          v31 = v70;
        }

        v41 = v31[2];
        v40 = v31[3];
        if (v41 >= v40 >> 1)
        {
          sub_1001AE6B8(v40 > 1, v41 + 1, 1);
          v31 = v70;
        }

        v31[2] = v41 + 1;
        v42 = v31 + v32 + v41 * v33;
        v17 = v69;
        result = sub_10016E258(v69, v42, type metadata accessor for TimeRangeRun);
      }

      else
      {
        result = sub_10016E0DC(v26, type metadata accessor for TimeRangeRun);
      }

      if (v29 == ++v30)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_26:

    v43 = v31[2];
    if (!v43)
    {

      return AttributedSubstring.init()();
    }

    v44 = v31 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v45 = v66;
    sub_10016E074(v44, v66, type metadata accessor for TimeRangeRun);
    v46 = v67;
    sub_10016E074(v44 + *(v13 + 72) * (v43 - 1), v67, type metadata accessor for TimeRangeRun);

    v47 = *(v64 + 20);
    v48 = v47 + *(v68 + 36);
    v49 = type metadata accessor for AttributedString.Index();
    sub_10016E210(&qword_1002D1F28, &type metadata accessor for AttributedString.Index);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v50 = *(v49 - 8);
      v51 = v50[2];
      v52 = v59;
      v51(v59, v45 + v47, v49);
      v53 = v61;
      v51((v52 + *(v61 + 48)), v46 + v48, v49);
      v54 = v60;
      sub_10000B46C(v52, v60, &qword_1002D3F90);
      v55 = *(v53 + 48);
      v56 = v50[4];
      v57 = v62;
      v56(v62, v54, v49);
      v58 = v50[1];
      v58(v54 + v55, v49);
      sub_10016E13C(v52, v54);
      v56((v57 + *(v68 + 36)), v54 + *(v53 + 48), v49);
      v58(v54, v49);
      type metadata accessor for AttributedString();
      sub_10016E210(&unk_1002D4AD0, &type metadata accessor for AttributedString);
      sub_100008034(&qword_1002D05A0, &qword_1002CFFD8);
      dispatch thunk of AttributedStringProtocol.subscript.getter();
      sub_100003CBC(v57, &qword_1002CFFD8);
      sub_10016E0DC(v67, type metadata accessor for TimeRangeRun);
      return sub_10016E0DC(v66, type metadata accessor for TimeRangeRun);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10016C33C()
{
  v0 = type metadata accessor for AttributedString.Index();
  v1 = *(v0 - 8);
  v3 = __chkstk_darwin(v0, v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3, v6);
  v8 = &v14[-v7];
  type metadata accessor for AttributedString.CharacterView();
  sub_10016E210(&qword_1002D1CD8, &type metadata accessor for AttributedString.CharacterView);
  v9 = 0;
  if ((dispatch thunk of Collection.isEmpty.getter() & 1) == 0)
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_10016E210(&qword_1002D3F88, &type metadata accessor for AttributedString.CharacterView);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v10 = *(v1 + 8);
    v10(v5, v0);
    v11 = dispatch thunk of Collection.subscript.read();
    v9 = *v12;

    v11(v14, 0);
    v10(v8, v0);
  }

  return v9;
}

uint64_t sub_10016C53C()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_locale;
  v2 = type metadata accessor for Locale();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_liveTranscriptionString;
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10016E0DC(v0 + OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_presentationModel, type metadata accessor for TranscriptionPresentationModel);

  return swift_deallocClassInstance();
}

uint64_t sub_10016C664()
{
  result = type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AttributedString();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptionPresentationModel(319);
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_10016C7B0()
{
  type metadata accessor for AttributedString();
  if (v0 <= 0x3F)
  {
    sub_10016C8BC();
    if (v1 <= 0x3F)
    {
      sub_10016C920(319, &unk_1002D3F30, &type metadata for TimedTextRange, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10016C920(319, &qword_1002D08B8, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10016C8BC()
{
  result = qword_1002D3F28;
  if (!qword_1002D3F28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1002D3F28);
  }

  return result;
}

void sub_10016C920(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10016C970@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for TimeRangeRun();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v27 - v15;
  v17 = *(v11 + 16);
  if (a2 == 0.0)
  {

    return v17(a1, v2);
  }

  else
  {
    v30 = v13;
    v17(&v27 - v15, v2);
    v19 = sub_10011D5F0();
    v20 = v19[2];
    if (v20)
    {
      v31 = v16;
      v27 = v11;
      v28 = a1;
      v21 = *(v6 + 80);
      v29 = v19;
      v22 = v19 + ((v21 + 32) & ~v21);
      v23 = *(v6 + 72);
      while (1)
      {
        result = sub_10016E074(v22, v9, type metadata accessor for TimeRangeRun);
        v24 = *v9 + a2;
        v25 = v9[1] + a2;
        if (v24 > v25)
        {
          break;
        }

        sub_1000C773C(&qword_1002CFFD8);
        sub_100008034(&qword_1002D05A0, &qword_1002CFFD8);
        v26 = AttributedString.subscript.modify();
        v32 = v24;
        v33 = v25;
        v34 = 0;
        sub_1000E78D8();
        AttributedSubstring.subscript.setter();
        v26(v35, 0);
        sub_10016E0DC(v9, type metadata accessor for TimeRangeRun);
        v22 += v23;
        if (!--v20)
        {

          v11 = v27;
          a1 = v28;
          v16 = v31;
          return (*(v11 + 32))(a1, v16, v30);
        }
      }

      __break(1u);
    }

    else
    {

      return (*(v11 + 32))(a1, v16, v30);
    }
  }

  return result;
}

uint64_t sub_10016CC98()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString.Index();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2, v3);
  v34 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AttributedString.Runs.Index();
  v43 = *(v39 - 8);
  v6 = __chkstk_darwin(v39, v5);
  v40 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v38 = v33 - v9;
  v37 = type metadata accessor for AttributedString.Runs();
  v41 = *(v37 - 8);
  __chkstk_darwin(v37, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PartialTranscriptionFormattingResult();
  __chkstk_darwin(v13, v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TranscriptionPresentationModel(0);
  v18 = *(v17 + 20);
  v19 = type metadata accessor for AttributedString();
  v20 = sub_10016E210(&unk_1002D4AD0, &type metadata accessor for AttributedString);
  AttributedString.append<A>(_:)();
  v42 = v17;
  v21 = (v0 + *(v17 + 24));
  v23 = v21[3];
  v22 = v21[4];
  sub_10000AACC(v21, v23);
  (*(v22 + 16))(v0 + v18, v23, v22);
  sub_1000C773C(&qword_1002CFFD8);
  sub_100008034(&qword_1002D05A0, &qword_1002CFFD8);
  AttributedString.removeSubrange<A>(_:)();
  v33[0] = v20;
  v33[1] = v19;
  dispatch thunk of AttributedStringProtocol.runs.getter();
  sub_10016E210(&qword_1002D3F98, &type metadata accessor for AttributedString.Runs);
  v24 = v37;
  v25 = v38;
  dispatch thunk of Collection.startIndex.getter();
  v26 = v40;
  dispatch thunk of Collection.endIndex.getter();
  sub_10016E210(&qword_1002D3FA0, &type metadata accessor for AttributedString.Runs.Index);
  v27 = v39;
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v43 + 8);
  v29(v26, v27);
  v29(v25, v27);
  (*(v41 + 8))(v12, v24);
  if ((v28 & 1) == 0)
  {
    v30 = v34;
    AttributedString.endIndex.getter();
    AttributedString.append<A>(_:)();
    sub_10016D408(v30);
    (*(v35 + 8))(v30, v36);
  }

  sub_10016E0DC(v16, type metadata accessor for PartialTranscriptionFormattingResult);
  v31 = (v1 + *(v42 + 36));

  *v31 = 0;
  v31[1] = 0;
  return result;
}

uint64_t sub_10016D154()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedSubstring();
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v33 - v14;
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v33 - v18;
  __chkstk_darwin(v17, v20);
  v22 = &v33 - v21;
  v23 = type metadata accessor for TranscriptionPresentationModel(0);
  v24 = v23[5];
  result = static AttributedString.+ infix(_:_:)();
  v26 = *(v1 + v23[10]);
  if (v26 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v36 = v22;
    sub_10016BCC4(v5, 0.0, v26);
    AttributedString.init(_:)();
    v27 = (v1 + v23[6]);
    v34 = v24;
    v35 = v19;
    v29 = v27[3];
    v28 = v27[4];
    sub_10000AACC(v27, v29);
    (*(v28 + 24))(v19, v29, v28);
    AttributedString.init(stringLiteral:)();
    v30 = *(v7 + 40);
    v30(v1 + v34, v11, v6);
    AttributedString.init(stringLiteral:)();
    v30(v1, v11, v6);
    v31 = (v1 + v23[7]);

    *v31 = 0;
    v31[1] = 0xE000000000000000;
    sub_10016CC98();
    v32 = *(v7 + 8);
    v32(v15, v6);
    v32(v35, v6);
    return (v32)(v36, v6);
  }

  return result;
}

uint64_t sub_10016D408(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v33, v4);
  v5 = sub_1000C773C(&qword_1002D3F78);
  __chkstk_darwin(v5, v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for AttributedSubstring();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedString.Index();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.startIndex.getter();
  v18 = static AttributedString.Index.== infix(_:_:)();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v19 = type metadata accessor for TranscriptionPresentationModel(0);
    String.removeAll(keepingCapacity:)(0);
    v20 = *(v19 + 32);

    *(v2 + v20) = _swiftEmptyArrayStorage;
  }

  sub_10016E210(&qword_1002D1CE0, &type metadata accessor for AttributedString.Index);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    (*(v14 + 16))(v8, a1, v13);
    sub_100008034(&qword_1002D3F80, &qword_1002D3F78);
    AttributedString.subscript.getter();
    sub_100003CBC(v8, &qword_1002D3F78);
    sub_10016E210(&qword_1002D1388, &type metadata accessor for AttributedSubstring);
    v22 = v35;
    dispatch thunk of AttributedStringProtocol.characters.getter();
    sub_10016E210(&qword_1002D1340, &type metadata accessor for AttributedString.CharacterView);
    v23 = String.init<A>(_:)();
    v25 = v24;
    type metadata accessor for TranscriptionPresentationModel(0);
    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27 = type metadata accessor for AttributedString();
    v36[3] = v27;
    v36[4] = sub_10016E210(&unk_1002D4AD0, &type metadata accessor for AttributedString);
    v28 = sub_100015800(v36);
    (*(*(v27 - 8) + 16))(v28, v2, v27);
    v29 = sub_10011D638();
    __chkstk_darwin(v29, v30);
    *(&v32 - 2) = v36;
    v31 = sub_10011B1FC(sub_10011E0FC, (&v32 - 4), v29);

    sub_100014B64(v36);
    sub_1001B1E74(v31);
    return (*(v34 + 8))(v12, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10016D8F8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1000C773C(&qword_1002CFFD8);
  __chkstk_darwin(v6, v7);
  v9 = &v21 - v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = a2[3];
  v13 = sub_10000AACC(a2, v12);
  v14 = type metadata accessor for TimeRangeRun();
  v15 = sub_10000B46C(a1 + *(v14 + 20), v9, &qword_1002CFFD8);
  __chkstk_darwin(v15, v16);
  (*(v18 + 16))(&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v12);
  sub_100008034(&qword_1002D05A0, &qword_1002CFFD8);
  result = _NSRange.init<A, B>(_:in:)();
  *a3 = v10;
  a3[1] = v11;
  a3[2] = result;
  a3[3] = v20;
  return result;
}

unint64_t sub_10016DADC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_10016DC2C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_10016DC2C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10016DCC4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10016DD38(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10016DCC4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1000D4010(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10016DD38(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

unint64_t sub_10016DE5C(unint64_t a1, unint64_t a2)
{
  if (Character.isWhitespace.getter())
  {
    return 1;
  }

  result = sub_10016DADC(a1, a2);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = (result - 8232) < 2 || result == 133;
    return (result - 14) > 0xFFFFFFFB || v5;
  }

  return result;
}

uint64_t sub_10016DED0()
{
  v0 = type metadata accessor for AttributedString.CharacterView();
  v1 = *(v0 - 8);
  v3 = __chkstk_darwin(v0, v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v8 = &v20 - v7;
  AttributedString.characters.getter();
  v9 = sub_10016C33C();
  v11 = v10;
  v12 = *(v1 + 8);
  v12(v8, v0);
  if (v11)
  {
    AttributedSubstring.characters.getter();
    v13 = sub_1001357E8();
    v15 = v14;
    v12(v5, v0);
    if (v15 && (v16 = sub_10016DE5C(v9, v11), , (v16 & 1) == 0))
    {
      v18 = sub_10016DE5C(v13, v15);

      v17 = v18 ^ 1;
    }

    else
    {

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_10016E074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016E0DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10016E13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D3F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016E1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptionPresentationModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016E210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016E258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10016E2E8()
{
  sub_10016E36C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttributedString();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10016E36C()
{
  if (!qword_1002D4010)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D4010);
    }
  }
}

id sub_10016E3DC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);

  os_unfair_lock_lock(v4 + 4);

  v5 = [a1 format];
  v6 = v2[2];
  sub_10016EBCC();
  v7 = v6;
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    v9 = a1;

    v10 = v2[4];

    os_unfair_lock_unlock(v10 + 4);

    return v9;
  }

  v12 = v2[3];
  if (!v12 || (v13 = [v12 outputFormat]) == 0 || (v14 = v13, v15 = v7, v16 = static NSObject.== infix(_:_:)(), v14, v15, (v16 & 1) == 0) || (v17 = v2[3]) == 0 || (v18 = objc_msgSend(v17, "inputFormat")) == 0 || (v19 = v18, v20 = v5, v21 = static NSObject.== infix(_:_:)(), v19, v20, (v21 & 1) == 0))
  {
    v22 = [objc_allocWithZone(AVAudioConverter) initFromFormat:v5 toFormat:v7];
    v23 = v2[3];
    v2[3] = v22;

    v24 = v2[3];
    if (!v24)
    {
LABEL_24:
      if (qword_1002CDD88 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100018D90(v49, qword_1002E8CB0);
      v50 = static os_log_type_t.error.getter();
      v5 = v5;

      v51 = Logger.logObject.getter();

      if (os_log_type_enabled(v51, v50))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412546;
        *(v52 + 4) = v5;
        *(v52 + 12) = 2112;
        *(v52 + 14) = v7;
        *v53 = v5;
        v53[1] = v7;
        v54 = v7;
        v55 = v5;
        _os_log_impl(&_mh_execute_header, v51, v50, "Failed to create converter, inputFormat = %@, outputFormat %@", v52, 0x16u);
        sub_1000C773C(&unk_1002D3690);
        swift_arrayDestroy();
      }

      sub_10016EC18();
      swift_allocError();
      *v56 = 1;
      swift_willThrow();
      goto LABEL_29;
    }

    [v24 setPrimeMethod:2];
  }

  v25 = v2[3];
  if (!v25)
  {
    goto LABEL_24;
  }

  v26 = v25;
  v27 = [v26 inputFormat];
  [v27 sampleRate];
  if (v28 <= 0.0)
  {
    goto LABEL_22;
  }

  v29 = [v27 channelCount];

  if (!v29)
  {
LABEL_23:

    goto LABEL_24;
  }

  v27 = [v26 outputFormat];
  [v27 sampleRate];
  if (v30 <= 0.0)
  {
LABEL_22:

    goto LABEL_23;
  }

  v31 = [v27 channelCount];

  if (!v31)
  {
    goto LABEL_23;
  }

  v32 = [v26 outputFormat];
  [v32 sampleRate];
  v34 = v33;

  v35 = [v26 inputFormat];
  [v35 sampleRate];
  v37 = v36;

  v38 = ceil(v34 / v37 * [a1 frameLength]);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v38 <= -1.0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  if (v38 >= 4294967300.0)
  {
    goto LABEL_36;
  }

  v39 = v38;
  v40 = [v26 outputFormat];
  v7 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:v40 frameCapacity:v39];

  if (!v7)
  {
    sub_10016EC18();
    swift_allocError();
    *v58 = 2;
    swift_willThrow();

    goto LABEL_30;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = a1;
  aBlock[4] = sub_10016EC6C;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10016EB3C;
  aBlock[3] = &unk_1002936C0;
  v43 = _Block_copy(aBlock);

  v44 = a1;

  aBlock[0] = 0;
  v45 = [v26 convertToBuffer:v7 error:aBlock withInputFromBlock:v43];
  _Block_release(v43);
  if (v45 != 3)
  {

    v59 = v2[4];

    os_unfair_lock_unlock(v59 + 4);

    return v7;
  }

  v46 = aBlock[0];
  sub_10016EC18();
  swift_allocError();
  *v47 = v46;
  swift_willThrow();
  v48 = v46;

LABEL_29:
LABEL_30:
  v57 = v2[4];

  os_unfair_lock_unlock(v57 + 4);

  return v7;
}

void *sub_10016EAB0(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (*(a3 + 16))
  {
    a4 = 0;
    v7 = 1;
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  *a2 = v7;
  swift_beginAccess();
  *(a3 + 16) = 1;
  return a4;
}

id sub_10016EB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

unint64_t sub_10016EBCC()
{
  result = qword_1002D40F8;
  if (!qword_1002D40F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D40F8);
  }

  return result;
}

unint64_t sub_10016EC18()
{
  result = qword_1002D4100;
  if (!qword_1002D4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4100);
  }

  return result;
}

uint64_t sub_10016EC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10016EC8C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10016ECB0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

void *sub_10016ED0C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

BOOL sub_10016EF24(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (!(v2 >> 6))
  {
    return v3 < 0x40;
  }

  if (v2 >> 6 == 1)
  {
    return (v3 & 0xC0) == 0x40;
  }

  v4 = *a2;
  if (*a1 | v2 ^ 0x80)
  {
    v5 = v3 & 0xC0;
    if (*(a1 + 8) == 128 && *a1 == 1)
    {
      if (v5 != 128 || v4 != 1)
      {
        return 0;
      }
    }

    else if (v5 != 128 || v4 != 2)
    {
      return 0;
    }
  }

  else if ((v3 & 0xC0) != 0x80 || v4 != 0)
  {
    return 0;
  }

  return v3 == 128;
}

uint64_t sub_10016F144(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10017043C;

  return sub_1000213BC();
}

uint64_t sub_10016F1EC(char a1)
{
  v2 = *v1;
  *(*v1 + 218) = a1;

  v3 = *(v2 + 368);
  v4 = *(v2 + 360);

  return _swift_task_switch(sub_10016F314, v4, v3);
}

uint64_t sub_10016F314()
{
  if (*(v0 + 218) == 1)
  {
    *(v0 + 240) = 0;
    *(v0 + 248) = 0;

    CurrentValueSubject.send(_:)();

    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 392) = sub_100018D90(v1, qword_1002E8CB0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Initiating asset download", v4, 2u);
    }

    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v7 = *(v0 + 312);

    static Locale.current.getter();
    Locale.identifier.getter();
    (*(v6 + 8))(v5, v7);
    v8 = objc_allocWithZone(SFEntitledAssetConfig);
    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 initWithLanguage:v9 taskHint:1009];
    *(v0 + 400) = v10;

    v11 = objc_opt_self();
    v12 = RCVoiceMemosBundleID;
    *(v0 + 408) = RCVoiceMemosBundleID;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v0 + 176) = sub_1001702A8;
    *(v0 + 184) = v13;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10016FFC4;
    *(v0 + 168) = &unk_100293858;
    v14 = _Block_copy((v0 + 144));
    *(v0 + 416) = v14;
    v15 = v12;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = sub_10016F7C8;
    v16 = swift_continuation_init();
    *(v0 + 136) = sub_1000C773C(&qword_1002D4138);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100170024;
    *(v0 + 104) = &unk_100293880;
    *(v0 + 112) = v16;
    [v11 fetchAssetWithConfig:v10 clientIdentifier:v15 detailedProgress:v14 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    *(v0 + 224) = 1;
    *(v0 + 232) = 0x80;

    CurrentValueSubject.send(_:)();

    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100018D90(v17, qword_1002E8CB0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "GASR model not available for this device", v20, 2u);
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_10016F7C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 424) = v2;
  v3 = *(v1 + 368);
  v4 = *(v1 + 360);
  if (v2)
  {
    v5 = sub_10016FA38;
  }

  else
  {
    v5 = sub_10016F8F8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10016F8F8()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);

  _Block_release(v1);

  *(v0 + 272) = 2;
  *(v0 + 280) = 0x80;

  CurrentValueSubject.send(_:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 400);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Asset download completed", v7, 2u);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10016FA38()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);

  swift_willThrow();

  _Block_release(v2);
  *(v0 + 256) = v1;
  *(v0 + 264) = 64;
  swift_errorRetain();

  CurrentValueSubject.send(_:)();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Asset download failed - error = %@", v7, 0xCu);
    sub_10015D618(v8);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10016FC08(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = a3;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  sub_100179578(0, 0, v9, &unk_10024C9C8, v12);
}

uint64_t sub_10016FD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 49) = a6;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  type metadata accessor for MainActor();
  *(v6 + 72) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10016FDDC, v8, v7);
}

uint64_t sub_10016FDDC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    CurrentValueSubject.value.getter();

    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = (v4 & 0xC0) == 0x80 && v3 == 2;
    if (!v5 || v4 != 128)
    {
      v6 = *(v0 + 49);
      v7 = *(v0 + 64);
      sub_10010D6F8(v3, v4);
      *(v0 + 40) = v7;
      *(v0 + 48) = v6;

      CurrentValueSubject.send(_:)();

      if (qword_1002CDD88 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100018D90(v8, qword_1002E8CB0);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(v0 + 49);
        v12 = *(v0 + 64);
        v13 = swift_slowAlloc();
        *v13 = 134218240;
        *(v13 + 4) = v12;
        *(v13 + 12) = 1024;
        *(v13 + 14) = v11;
        _os_log_impl(&_mh_execute_header, v9, v10, "Asset downloading progress = %ld%%, stalled = %{BOOL}d", v13, 0x12u);
      }
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10016FFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_100170024(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000AACC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000C773C(&qword_1002D5540);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return swift_continuation_throwingResume();
  }
}

id sub_100170228()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptionModelAssetService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10017027C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_1001702B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001702C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001FF1C;

  return sub_10016FD40(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100170390()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001FF1C;

  return sub_10016F144(v2);
}

uint64_t sub_100170440(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = *(a1 + 32);
  v16 = a2;
  v17 = a3;
  v18 = v15(a2, v17, a4, a5, a6, a7, a8);

  return v18 & 1;
}

void sub_100170518(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = a1;
    a5();
    swift_unknownObjectRelease();
  }
}

__n128 sub_100170704()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_1002D4170 = *&UIEdgeInsetsZero.top;
  *&qword_1002D4180 = v1;
  return result;
}

uint64_t sub_100170720(uint64_t a1)
{
  v3 = sub_1000C773C(&qword_1002D4300);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v18[-v5];
  v7 = type metadata accessor for TranscriptViewModel();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10, v13);
  v15 = &v18[-v14];
  v16 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
  swift_beginAccess();
  sub_10002572C(v1 + v16, v15);
  swift_beginAccess();
  sub_1001725A8(a1, v1 + v16);
  swift_endAccess();
  sub_10002572C(v1 + v16, v12);
  LOBYTE(v16) = sub_1001AD8CC(v15, v12);
  sub_10002A084(v12);
  if (v16)
  {
    sub_10002A084(a1);
  }

  else
  {
    sub_10002572C(v15, v6);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100027308(v6);
    sub_10002A084(a1);
    sub_100003CBC(v6, &qword_1002D4300);
  }

  return sub_10002A084(v15);
}

void sub_100170A40()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  [v2 frame];
  [v2 frame];
  v3 = v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (*(v4 + 16))
  {
    v5 = sub_10002454C(NSFontAttributeName);
    if (v6)
    {
      sub_1000CC230(*(v4 + 56) + 40 * v5, v17);
      v7.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_1000D513C(v17);
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        [v8 lineHeight];
      }
    }
  }

  [v2 frame];
  v9._countAndFlagsBits = [v2 frame];
  DebugData.init(name:)(v9);
  v10 = *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_topFadeView);
  [v10 setFrame:?];
  v11 = [v10 layer];
  v12 = [v11 mask];

  if (v12)
  {
    [v10 bounds];
    [v12 setFrame:?];
  }

  v13._countAndFlagsBits = [v2 frame];
  DebugData.init(name:)(v13);
  v14 = *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_bottomFadeView);
  [v14 setFrame:?];
  v15 = [v14 layer];
  v16 = [v15 mask];

  if (v16)
  {
    [v10 bounds];
    [v16 setFrame:?];
  }
}

void sub_100170C9C()
{
  v1 = *&v0[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView];
  v2 = [v1 findInteraction];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  Notification.object.getter();
  if (v34 == 0.0)
  {

    v9 = v33;
LABEL_24:
    sub_100003CBC(v9, &qword_1002D06A8);
    return;
  }

  sub_1000067AC(0, &qword_1002D4330);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v4 = v35;
  v5 = [v0 window];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 screen];

    v33[0] = v7;
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    v8 = 0;
  }

  v10 = [v35 isEqual:v8];
  swift_unknownObjectRelease();
  if (!v10)
  {

    return;
  }

  v11 = Notification.userInfo.getter();
  if (!v11)
  {

    v35 = 0u;
    v36 = 0u;
    goto LABEL_23;
  }

  v12 = v11;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v12 + 16) || (v13 = sub_1000D2DFC(v33), (v14 & 1) == 0))
  {

    sub_1000D513C(v33);
    v35 = 0u;
    v36 = 0u;
    goto LABEL_21;
  }

  sub_10001931C(*(v12 + 56) + 32 * v13, &v35);
  sub_1000D513C(v33);

  if (!*(&v36 + 1))
  {
LABEL_21:

LABEL_23:
    v9 = &v35;
    goto LABEL_24;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    v15 = *v33;
    v16 = *&v33[1];
    v17 = *&v33[2];
    v18 = v34;
    v19 = [v4 coordinateSpace];
    v20 = v1;
    [v19 convertRect:v20 toCoordinateSpace:{v15, v16, v17, v18}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v20 bounds];
    v41.origin.x = v22;
    v41.origin.y = v24;
    v41.size.width = v26;
    v41.size.height = v28;
    v38 = CGRectIntersection(v37, v41);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    if ([v3 isFindNavigatorVisible] && (v39.origin.x = x, v39.origin.y = y, v39.size.width = width, v39.size.height = height, !CGRectIsEmpty(v39)))
    {
      [v20 bounds];
      CGRectGetMaxY(v40);
    }

    else if (qword_1002CDF60 != -1)
    {
      swift_once();
    }

    [v20 contentInset];
    [v20 setContentInset:?];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100171070()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100170C9C();
  }
}

void sub_1001710CC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  v4 = [v3 textStorage];
  v5 = [v4 string];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    [a1 locationInView:v3];
    v10 = [v3 closestPositionToPoint:?];
    if (v10)
    {
      v13 = v10;
      v11 = [v3 beginningOfDocument];
      v12 = [v3 offsetFromPosition:v11 toPosition:v13];

      sub_10000AACC((v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller), *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller + 24));
      sub_10017EA14(v12);
    }
  }
}

uint64_t sub_1001713C4(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    return 0;
  }

  v3 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (v3)
  {
    if (Strong)
    {
      v8 = [Strong endOfDocument];
      [v7 caretRectForPosition:v8];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v40.origin.x = v10;
      v40.origin.y = v12;
      v40.size.width = v14;
      v40.size.height = v16;
      CGRectGetMaxY(v40);
      v17 = v7;
      [v17 adjustedContentInset];
      [v17 bounds];
      CGRectGetHeight(v41);
      [v17 adjustedContentInset];

      return sub_100137894();
    }

    return 0;
  }

  if (!Strong)
  {
    return 0;
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {

    return 0;
  }

  v20 = v19;
  v21 = [v19 textLayoutManager];
  if (!v21)
  {

    return 0;
  }

  v22 = v21;
  v23 = sub_100029F20(a1, a2);
  if (!v23)
  {

    return 0;
  }

  v24 = v23;
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v39 = size;
  sub_100137A0C(v23);
  v26 = swift_allocObject();
  *(v26 + 16) = &origin;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100172540;
  *(v27 + 24) = v26;
  v37[4] = sub_100172548;
  v37[5] = v27;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 1107296256;
  v37[2] = sub_100170440;
  v37[3] = &unk_100293A78;
  v28 = _Block_copy(v37);

  [v22 enumerateTextSegmentsInRange:v24 type:1 options:3 usingBlock:v28];
  _Block_release(v28);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
  }

  else
  {
    [v20 textContainerInset];
    v30 = v29;
    v32 = v31;

    v33 = v32 + origin.x;
    v34 = v30 + origin.y;
    origin.x = v33;
    origin.y = v34;
    v35 = v39;

    v42.origin.x = v33;
    v42.origin.y = v34;
    v42.size = v35;
    CGRectGetMinY(v42);
    [v7 bounds];
    CGRectGetHeight(v43);
    v36 = sub_100137894();

    return v36;
  }

  return result;
}

id sub_10017191C()
{
  v1 = v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_animatedContentOffsetTarget;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
  swift_beginAccess();
  v3 = *(v2 + *(type metadata accessor for TranscriptViewModel() + 48));
  v4 = *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_topFadeView);
  if (v3 != 1)
  {
    [*(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_topFadeView) setHidden:1];
    return [*(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_bottomFadeView) setHidden:1];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v6 = Strong;
  [Strong bounds];
  if (CGRectGetHeight(v14) <= 0.0)
  {

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  [v7 contentOffset];
  v9 = v8;
  [v7 adjustedContentInset];
  v11 = v10;

  v12 = v9 <= v11;
LABEL_8:
  [v4 setHidden:v12];
  return [*(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_bottomFadeView) setHidden:sub_10002A7A4() & 1];
}

void sub_100171A94(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;
  sub_10017293C(a5);

  swift_unknownObjectRelease();
}

uint64_t sub_100171B10(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewTapGestureRecognizer);
  if (!v3)
  {
    return 1;
  }

  sub_1000067AC(0, &qword_1002D42E8);
  v5 = a1;
  v6 = v3;
  LOBYTE(a1) = static NSObject.== infix(_:_:)();

  if ((a1 & 1) == 0)
  {
    return 1;
  }

  v7 = *(v2 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  [v7 selectedRange];
  if (!v8)
  {
    return 1;
  }

  result = [v7 findInteraction];
  if (result)
  {
    v10 = result;
    v11 = [result isFindNavigatorVisible];

    return v11;
  }

  return result;
}

BOOL sub_100171C50(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewPanGestureRecognizer);
  result = 0;
  if (v3)
  {
    sub_1000067AC(0, &qword_1002D42E8);
    v5 = a1;
    v6 = v3;
    LOBYTE(a1) = static NSObject.== infix(_:_:)();

    if (a1)
    {
      sub_1000067AC(0, &qword_1002D42F0);
      v7 = [*(v2 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView) panGestureRecognizer];
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_100171DBC(char a1)
{
  sub_10000AACC((v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller), *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller + 24));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    v13[0] = *(result + 32);
    v13[1] = v4;
    *(v14 + 15) = *(result + 47);
    v14[0] = v13[0];
    *(&v14[1] + 4) = *(result + 52);
    HIDWORD(v14[1]) = *(result + 60);
    BYTE3(v14[1]) = a1;
    v15 = v13[0];
    v16 = v4;
    v17[0] = v13[0];
    v17[1] = v4;
    v5 = v14[1];
    *(result + 32) = v13[0];
    *(result + 48) = v5;
    sub_100023708(v13, v12);
    sub_100023708(&v15, v12);
    sub_100023708(v14, v12);
    sub_100023778(v17);
    v6 = 256;
    if (!BYTE1(v16))
    {
      v6 = 0;
    }

    v7 = v6 | v16;
    v8 = 0x10000;
    if (!BYTE2(v16))
    {
      v8 = 0;
    }

    v9 = 0x1000000;
    if (!BYTE3(v16))
    {
      v9 = 0;
    }

    v10 = v7 | v8 | v9;
    v11 = &_mh_execute_header;
    if (!BYTE4(v16))
    {
      v11 = 0;
    }

    sub_1000237CC(v15, *(&v15 + 1), v10 | v11, *(&v16 + 1));
    swift_unknownObjectRelease();
    sub_100023778(&v15);
    return sub_100023778(v14);
  }

  return result;
}

id sub_100171EEC(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    v5 = *&v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView];
    result = [v5 text];
    if (result)
    {
      v7 = result;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      [v5 selectedRange];
      v12 = v11;
      result = [v5 text];
      if (result)
      {
        v13 = result;
        if ((v10 & 0x2000000000000000) != 0)
        {
          v14 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v14 = v8 & 0xFFFFFFFFFFFFLL;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = String.count.getter();

        if (v14)
        {
          return (v12 != v15);
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_10000B46C(a2, v26, &qword_1002D06A8);
  v16 = v27;
  if (v27)
  {
    v17 = sub_10000AACC(v26, v27);
    v18 = *(v16 - 8);
    v19 = __chkstk_darwin(v17, v17);
    v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v18 + 8))(v21, v16);
    sub_100014B64(v26);
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for TranscriptView();
  v25.receiver = v2;
  v25.super_class = v23;
  v24 = objc_msgSendSuper2(&v25, "canPerformAction:withSender:", a1, v22);
  swift_unknownObjectRelease();
  return v24;
}

uint64_t sub_1001721D4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  sub_10000B46C(a1, v11, &qword_1002D06A8);
  v3 = v12;
  if (v12)
  {
    v4 = sub_10000AACC(v11, v12);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4, v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    sub_100014B64(v11);
  }

  else
  {
    v9 = 0;
  }

  [v2 selectAll:v9];
  return swift_unknownObjectRelease();
}

id sub_1001723F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100172574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001725A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptViewModel();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10017260C()
{
  v1 = type metadata accessor for UIContentUnavailableConfiguration();
  __chkstk_darwin(v1 - 8, v2);
  v3 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView;
  type metadata accessor for TranscriptView.TranscriptTextView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_searchButton;
  *(v0 + v4) = [objc_allocWithZone(UIButton) init];
  v5 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_emptyStateView;
  sub_1000067AC(0, &qword_1002D4338);
  static UIContentUnavailableConfiguration.empty()();
  *(v0 + v5) = UIContentUnavailableView.init(configuration:)();
  v6 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_topFadeView;
  v7 = type metadata accessor for TranscriptView.FadeView();
  v8 = objc_allocWithZone(v7);
  *(v0 + v6) = sub_100025FBC(0);
  v9 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_bottomFadeView;
  v10 = objc_allocWithZone(v7);
  *(v0 + v9) = sub_100025FBC(1);
  *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textBottomAnchorToLayoutMarginsBottomAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textBottomAnchorToSearchTopAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewTapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewPanGestureRecognizer) = 0;
  v11 = v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_animatedContentOffsetTarget;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = sub_1000C8898(_swiftEmptyArrayStorage);
  }

  else
  {
    v12 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_cancellables) = v12;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100172810()
{
  sub_10000AACC((v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller), *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller + 24));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);
    v11[0] = *(result + 32);
    v11[1] = v2;
    LOWORD(v13) = *(result + 48);
    v12 = v11[0];
    *(&v13 + 2) = *(result + 50);
    *(&v13 + 1) = *(result + 56);
    v14 = v11[0];
    v15 = v2;
    v16[0] = v11[0];
    v16[1] = v2;
    v3 = v13;
    *(result + 32) = v11[0];
    *(result + 48) = v3;
    sub_100023708(v11, v10);
    sub_100023708(&v14, v10);
    sub_100023708(&v12, v10);
    sub_100023778(v16);
    v4 = 256;
    if (!BYTE1(v15))
    {
      v4 = 0;
    }

    v5 = v4 | v15;
    v6 = 0x10000;
    if (!BYTE2(v15))
    {
      v6 = 0;
    }

    v7 = 0x1000000;
    if (!BYTE3(v15))
    {
      v7 = 0;
    }

    v8 = v5 | v6 | v7;
    v9 = &_mh_execute_header;
    if (!BYTE4(v15))
    {
      v9 = 0;
    }

    sub_1000237CC(v14, *(&v14 + 1), v8 | v9, *(&v15 + 1));
    swift_unknownObjectRelease();
    sub_100023778(&v14);
    return sub_100023778(&v12);
  }

  return result;
}

uint64_t sub_10017293C(char a1)
{
  sub_10000AACC((v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller), *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller + 24));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    v13[0] = *(result + 32);
    v13[1] = v4;
    LOWORD(v15) = *(result + 48);
    v14 = v13[0];
    BYTE2(v15) = a1;
    *(&v15 + 3) = *(result + 51);
    *(&v15 + 1) = *(result + 56);
    v16 = v13[0];
    v17 = v4;
    v18[0] = v13[0];
    v18[1] = v4;
    v5 = v15;
    *(result + 32) = v13[0];
    *(result + 48) = v5;
    sub_100023708(v13, v12);
    sub_100023708(&v16, v12);
    sub_100023708(&v14, v12);
    sub_100023778(v18);
    v6 = 256;
    if (!BYTE1(v17))
    {
      v6 = 0;
    }

    v7 = v6 | v17;
    v8 = 0x10000;
    if (!BYTE2(v17))
    {
      v8 = 0;
    }

    v9 = 0x1000000;
    if (!BYTE3(v17))
    {
      v9 = 0;
    }

    v10 = v7 | v8 | v9;
    v11 = &_mh_execute_header;
    if (!BYTE4(v17))
    {
      v11 = 0;
    }

    sub_1000237CC(v16, *(&v16 + 1), v10 | v11, *(&v17 + 1));
    swift_unknownObjectRelease();
    sub_100023778(&v16);
    return sub_100023778(&v14);
  }

  return result;
}

uint64_t sub_100172B18()
{
  v112 = type metadata accessor for TranscriptViewModel();
  v2 = __chkstk_darwin(v112, v1);
  v113 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2, v4);
  v6 = &v101 - v5;
  v7 = sub_1000C773C(&qword_1002D4308);
  __chkstk_darwin(v7 - 8, v8);
  v120 = &v101 - v9;
  v10 = sub_10000AACC((v0 + 16), *(v0 + 40));
  v11 = *v10;
  v12 = *(*v10 + 32);
  v13 = *(*v10 + 40);
  v14 = *(*v10 + 48);
  v15 = *(*v10 + 56);
  v115 = *(*v10 + 64);
  v119 = *(v11 + 72);
  v118 = *(v11 + 73);
  v16 = *(v11 + 96);
  v125[0] = *(v11 + 80);
  v125[1] = v16;
  v126 = *(v11 + 112);
  v110 = *(v11 + 113);
  v111 = *(v11 + 114);
  v17 = *(v11 + 120);
  v18 = *(v11 + 128);
  v19 = *(*sub_10000AACC((v0 + 56), *(v0 + 80)) + 56);
  v116 = v12;
  v108 = v13;
  if (v19)
  {

    sub_10000B46C(v125, v123, &qword_1002D4528);
    v20 = v14;
    sub_100173B7C(v13, v14, v15);
    v21 = &selRef_canToggleRemoveSilence;
    [v19 currentTime];
    v23 = v22;
  }

  else
  {
    v24 = v13;
    v21 = &selRef_canToggleRemoveSilence;

    sub_10000B46C(v125, v123, &qword_1002D4528);
    v20 = v14;
    sub_100173B7C(v24, v14, v15);
    v23 = 0.0;
  }

  v25 = *(v0 + 104);
  sub_10000AACC((v0 + 56), *(v0 + 80));
  v26 = v115;
  if (v18)
  {
    v114 = 0;
    v109 = 0;
    v27 = v118;
  }

  else
  {
    v28 = v25 > v23 || v17 > v23 - v25;
    v27 = v118;
    if (v28)
    {
      v114 = 0;
      v109 = 0;
    }

    else
    {
      v107 = v20;
      v29 = objc_allocWithZone(type metadata accessor for TranscriptWaitingViewTextAttachment());

      v30 = [v29 init];
      v31 = [objc_opt_self() attributedStringWithAttachment:v30];
      sub_100028604();
      v33 = v32;

      v109 = v33;
      LODWORD(v29) = v15;
      v34 = v26;
      v35 = objc_allocWithZone(NSMutableAttributedString);
      v36 = String._bridgeToObjectiveC()();
      v27 = v118;

      v37 = v35;
      v26 = v34;
      v38 = [v37 initWithString:v36];

      v20 = v107;
      v114 = v38;
      v39 = v38;
      v15 = v29;
      [v39 appendAttributedString:v31];
    }
  }

  v40 = *(*sub_10000AACC((v0 + 56), *(v0 + 80)) + 80);
  v41 = *(*sub_10000AACC((v0 + 56), *(v0 + 80)) + 56);

  if (v41)
  {
    [v41 currentTime];
    v43 = v42;
  }

  else
  {
    v43 = 0.0;
  }

  v44 = sub_10000AACC((v0 + 56), *(v0 + 80));
  if (v15 == 255)
  {

    goto LABEL_26;
  }

  if ((v15 & 1) == 0)
  {
    sub_100173BD0(v40, v121, v43);

    if ((v122 & 1) == 0)
    {
      v70 = v121[2];
      v69 = v121[3];
      sub_1000C773C(&qword_1002CFFE8);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_100242C70;
      *(v71 + 32) = v70;
      *(v71 + 40) = v69;
      v117 = v71;
      *(v71 + 48) = v108;
      goto LABEL_50;
    }

    sub_100173C8C(v108, v20, v15);
LABEL_26:
    v117 = _swiftEmptyArrayStorage;
    goto LABEL_50;
  }

  v107 = v20;
  v105 = v15;
  v106 = v0;
  v45 = *(*v44 + 64);
  v46 = *(*v44 + 72);

  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  *(v48 + 16) = 0;
  v117 = (v48 + 16);
  *(v48 + 32) = 1;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 16) = 0;
  *(v49 + 32) = 1;
  v123[0] = v45;
  v123[1] = v46;
  v50 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v50 = v45;
  }

  v51 = 11;
  if (((v46 >> 60) & ((v45 & 0x800000000000000) == 0)) == 0)
  {
    v51 = 7;
  }

  v121[0] = 15;
  v121[1] = v51 | (v50 << 16);
  v52 = swift_allocObject();
  v52[2] = v47;
  v52[3] = v49;
  v104 = v45;
  v52[4] = v45;
  v52[5] = v46;
  v52[6] = v48;

  sub_1000C773C(&qword_1002D4530);
  sub_100028710();
  sub_1000286AC();
  StringProtocol.enumerateSubstrings<A>(in:options:_:)();

  v53 = v117;
  swift_beginAccess();
  v103 = *v53;
  v102 = *(v48 + 24);
  v54 = *(v48 + 32);
  swift_beginAccess();
  v55 = *(v49 + 16);
  v56 = *(v49 + 24);
  v0 = *(v49 + 32);

  if (v0)
  {

    v57 = _swiftEmptyArrayStorage;
    v0 = v106;
    v58 = v116;
    v26 = v115;
    v49 = v108;
    goto LABEL_39;
  }

  v59 = (v55 + v56);
  v60 = v116;
  if (__OFADD__(v55, v56))
  {
    __break(1u);
    goto LABEL_75;
  }

  LODWORD(v117) = v54;
  v61 = __OFSUB__(v59, 1);
  v62 = v59 - 1;
  v0 = v106;
  v59 = &v127;
  v49 = v108;
  if (v61)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v54 = sub_100028604();
  v64 = v63;

  v59 = (v54 + v64);
  if (__OFADD__(v54, v64))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    v73 = sub_1000F2520(0, *(*(v59 - 32) + 16) + 1, 1, *(v59 - 32));
    goto LABEL_47;
  }

  v61 = __OFSUB__(v59, 1);
  v66 = v59 - 1;
  if (!v61)
  {
    if (v62 >= v66)
    {
      goto LABEL_34;
    }

    v61 = __OFSUB__(v66, v62);
    v67 = v66 - v62;
    if (v61)
    {
      __break(1u);
    }

    else
    {
      v61 = __OFADD__(v56, v67);
      v56 += v67;
      if (!v61)
      {
LABEL_34:
        if (v114)
        {
          v54 = v60;
        }

        else
        {
          v54 = v107;
        }

        v57 = sub_1000F2520(0, 1, 1, _swiftEmptyArrayStorage);
        v62 = *(v57 + 2);
        v66 = *(v57 + 3);
        v64 = v62 + 1;
        if (v62 < v66 >> 1)
        {
          goto LABEL_38;
        }

        goto LABEL_79;
      }
    }

    __break(1u);
    return result;
  }

  __break(1u);
LABEL_79:
  v57 = sub_1000F2520((v66 > 1), v64, 1, v57);
LABEL_38:
  *(v57 + 2) = v64;
  v68 = &v57[24 * v62];
  *(v68 + 4) = v55;
  *(v68 + 5) = v56;
  *(v68 + 6) = v54;
  v26 = v115;
  v58 = v60;
  LOBYTE(v54) = v117;
LABEL_39:
  v117 = v57;
  v21 = &selRef_canToggleRemoveSilence;
  LOBYTE(v56) = v105;
  if (v54)
  {
    sub_100173C8C(v49, v107, v105);
    v27 = v118;
    goto LABEL_50;
  }

  v46 = v26;
  if (v114)
  {
    v54 = v58;
  }

  else
  {
    v54 = v49;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = &v128;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_77;
  }

  v73 = v117;
LABEL_47:
  v75 = *(v73 + 2);
  v74 = *(v73 + 3);
  v27 = v118;
  if (v75 >= v74 >> 1)
  {
    v73 = sub_1000F2520((v74 > 1), v75 + 1, 1, v73);
  }

  *(v73 + 2) = v75 + 1;
  v117 = v73;
  v76 = &v73[24 * v75];
  v77 = v102;
  *(v76 + 4) = v103;
  *(v76 + 5) = v77;
  *(v76 + 6) = v54;
  sub_100173C8C(v49, v107, v56);
  v26 = v46;
  v21 = &selRef_canToggleRemoveSilence;
LABEL_50:
  if (v119)
  {
    v78 = 0;
  }

  else
  {
    v78 = 0x4020000000000000;
  }

  if (v119)
  {
    v26 = 0;
  }

  v79 = *(*sub_10000AACC((v0 + 56), *(v0 + 80)) + 80);
  v80 = *(*sub_10000AACC((v0 + 56), *(v0 + 80)) + 56);

  if (v80)
  {
    [v80 v21[257]];
  }

  else
  {
    v81 = 0.0;
  }

  v108 = v78;
  v115 = v26;
  if (v27 == 2)
  {
  }

  else
  {
    if (v27)
    {

      v82 = 0;
      v83 = 0;
      v85 = 0;
      v84 = 1;
      goto LABEL_65;
    }

    sub_100173BD0(v79, v123, v81);

    if ((v124 & 1) == 0)
    {
      v84 = 0;
      v85 = 0;
      v82 = v123[2];
      v83 = v123[3];
      goto LABEL_65;
    }
  }

  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 1;
LABEL_65:
  v86 = v120;
  sub_1001738C0(v125, v120);
  sub_100003CBC(v125, &qword_1002D4528);
  v87 = sub_10000AACC((v0 + 56), *(v0 + 80));
  v89 = *(*v87 + 64);
  v88 = *(*v87 + 72);
  v90 = v112;
  sub_10000B46C(v86, &v6[*(v112 + 40)], &qword_1002D4308);
  *v6 = v89;
  *(v6 + 1) = v88;
  v91 = v117;
  *(v6 + 2) = v116;
  *(v6 + 3) = v91;
  v92 = v108;
  v93 = v115;
  *(v6 + 4) = v108;
  *(v6 + 5) = v93;
  *(v6 + 6) = v92;
  *(v6 + 7) = v93;
  v6[64] = v119;
  *(v6 + 9) = v82;
  *(v6 + 10) = v83;
  v6[88] = v84;
  v6[89] = v85;
  v94 = v109;
  *(v6 + 12) = v114;
  *(v6 + 13) = v94;
  v6[*(v90 + 44)] = v110;
  v6[*(v90 + 48)] = v111;
  v95 = (*(v0 + 96) + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel);
  swift_beginAccess();
  if (*v95 == v89 && v95[1] == v88 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v96 = *(*sub_10000AACC((v0 + 56), *(v0 + 80)) + 56);

    if (v96)
    {
      [v96 currentTime];
    }

    else
    {
      v97 = 0;
    }

    *(v0 + 104) = v97;
  }

  v98 = v113;
  v99 = *(v0 + 96);
  sub_10002572C(v6, v113);
  v100 = v99;
  sub_100170720(v98);

  sub_100003CBC(v120, &qword_1002D4308);
  return sub_10002A084(v6);
}

uint64_t sub_100173720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_beginAccess();
  v14 = *(a8 + 16);
  if (v14 == 1)
  {

    sub_1000C773C(&qword_1002D4530);
    sub_1000286AC();
    sub_100028710();
    v18 = _NSRange.init<A, B>(_:in:)();
    v20 = v19;
    swift_beginAccess();
    *(a12 + 16) = v18;
    *(a12 + 24) = v20;
    *(a12 + 32) = 0;
    *a7 = 1;
  }

  else if (!v14)
  {

    sub_1000C773C(&qword_1002D4530);
    sub_1000286AC();
    sub_100028710();
    v15 = _NSRange.init<A, B>(_:in:)();
    v17 = v16;
    swift_beginAccess();
    *(a9 + 16) = v15;
    *(a9 + 24) = v17;
    *(a9 + 32) = 0;
  }

  result = swift_beginAccess();
  v22 = *(a8 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v24;
  }

  return result;
}

uint64_t sub_1001738C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = type metadata accessor for UIContentUnavailableConfiguration();
  v10 = __chkstk_darwin(v8, v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v16 = &v21 - v15;
  if (v7 == 255)
  {
    v19 = *(v14 + 56);

    return v19(a2, 1, 1, v8);
  }

  else
  {
    v22 = v14;
    if (v7)
    {

      static UIContentUnavailableConfiguration.empty()();
      UIContentUnavailableConfiguration.secondaryText.setter();
      if (v3)
      {
        v17 = String._bridgeToObjectiveC()();
        v18 = [objc_opt_self() systemImageNamed:v17];

        UIContentUnavailableConfiguration.image.setter();
      }

      (*(v22 + 32))(a2, v12, v8);
    }

    else
    {
      sub_100173B3C(v4, v3, v6, v5, 0);
      static UIContentUnavailableConfiguration.loading()();
      UIContentUnavailableConfiguration.text.setter();
      (*(v22 + 32))(a2, v16, v8);
    }

    return (*(v22 + 56))(a2, 0, 1, v8);
  }
}

uint64_t sub_100173AF4()
{
  sub_100014B64(v0 + 16);
  sub_100014B64(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_100173B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }
}

uint64_t sub_100173B7C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100173B94(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100173B94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }
}

uint64_t sub_100173BD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 40);
    v6 = *(result + 56);
    if (v4 <= a3 && v3 != 1)
    {
      v8 = *(result + 64);
      if (v8 <= a3)
      {
        v9 = (result + 96);
        v10 = v3 - 1;
        do
        {
          v4 = v8;
          v11 = v9;
          if (!--v10)
          {
            break;
          }

          v9 += 4;
          v8 = *v11;
        }

        while (*v11 <= a3);
        v6 = *(v11 - 1);
        v5 = *(v11 - 3);
      }
    }
  }

  else
  {
    v6 = 0;
    v5 = 0uLL;
    v4 = 0.0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3 == 0;
  return result;
}

uint64_t sub_100173C8C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100173CA4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100173CA4(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

id sub_100173CF0()
{
  v1 = type metadata accessor for SymbolEffectOptions();
  v43 = *(v1 - 8);
  v44 = v1;
  __chkstk_darwin(v1, v2);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for VariableColorSymbolEffect();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41, v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v37 - v8;
  __chkstk_darwin(v10, v11);
  v13 = &v37 - v12;
  v14 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleLargeTitle];
  v38 = v14;
  sub_1000C773C(&qword_1002D4568);
  inited = swift_initStackObject();
  v37 = xmmword_100242C70;
  *(inited + 16) = xmmword_100242C70;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_1000C773C(&qword_1002D4570);
  v16 = swift_initStackObject();
  *(v16 + 16) = v37;
  *(v16 + 32) = UIFontWeightTrait;
  *(v16 + 40) = UIFontWeightBold;
  v17 = UIFontDescriptorTraitsAttribute;
  v18 = UIFontWeightTrait;
  v19 = sub_1000D4C44(v16);
  swift_setDeallocating();
  sub_100003CBC(v16 + 32, &qword_1002D4578);
  *(inited + 64) = sub_1000C773C(&qword_1002D4580);
  *(inited + 40) = v19;
  sub_1000D4D34(inited);
  swift_setDeallocating();
  sub_100003CBC(inited + 32, &qword_1002CEC78);
  type metadata accessor for AttributeName(0);
  sub_1001744AC(&qword_1002CE380, type metadata accessor for AttributeName);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21 = [v14 fontDescriptorByAddingAttributes:isa];

  v22 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
  v23 = [objc_opt_self() configurationWithFont:v22];

  v24 = v23;
  v25 = String._bridgeToObjectiveC()();
  v26 = [objc_opt_self() systemImageNamed:v25 withConfiguration:v24];

  v27 = type metadata accessor for TranscriptWaitingImageView();
  v45.receiver = v0;
  v45.super_class = v27;
  v28 = objc_msgSendSuper2(&v45, "initWithImage:", v26);
  [v28 setContentMode:1];
  v29 = [objc_opt_self() systemRedColor];
  [v28 setTintColor:v29];

  VariableColorSymbolEffect.init()();
  VariableColorSymbolEffect.dimInactiveLayers.getter();
  v30 = *(v40 + 8);
  v31 = v41;
  v30(v13, v41);
  v32 = v39;
  VariableColorSymbolEffect.cumulative.getter();
  v33 = v9;
  v34 = v31;
  v30(v33, v31);
  v35 = v42;
  static SymbolEffectOptions.default.getter();
  sub_1001744AC(&qword_1002D4588, &type metadata accessor for VariableColorSymbolEffect);
  UIImageView.addSymbolEffect<A>(_:options:animated:completion:)();

  (*(v43 + 8))(v35, v44);
  v30(v32, v34);
  return v28;
}

id sub_100174454()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptWaitingImageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001744AC(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_1001744F4(int64_t a1, int64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = a4;
  v41 = a2;
  v39 = type metadata accessor for AttributedString.Index();
  v6 = *(v39 - 8);
  __chkstk_darwin(v39, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = 0;
  v14 = a1;
  while (1)
  {
    v15 = v14 <= v41;
    if (a3 > 0)
    {
      v15 = v14 >= v41;
    }

    if (v15)
    {
      break;
    }

    v16 = __OFADD__(v14, a3);
    v14 += a3;
    if (v16)
    {
      v14 = (v14 >> 63) ^ 0x8000000000000000;
    }

    v16 = __OFADD__(v13++, 1);
    if (v16)
    {
      __break(1u);
      break;
    }
  }

  v36 = &v35 - v12;
  v42 = _swiftEmptyArrayStorage;
  result = sub_1001AE654(0, v13, 0);
  v18 = v42;
  if (v13)
  {
    v37 = v6 + 32;
    v38 = (v6 + 16);
    while (1)
    {
      v19 = a1 <= v41;
      if (a3 > 0)
      {
        v19 = a1 >= v41;
      }

      if (v19)
      {
        break;
      }

      if (__OFADD__(a1, a3))
      {
        v20 = ((a1 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v20 = a1 + a3;
      }

      if (a1 < 0)
      {
        goto LABEL_42;
      }

      v21 = *v40;
      if (a1 >= *(*v40 + 16))
      {
        goto LABEL_43;
      }

      v22 = sub_1000C773C(&qword_1002CFFD8);
      v23 = v39;
      (*v38)(v9, v21 + ((*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80)) + *(*(v22 - 8) + 72) * a1 + *(v22 + 36), v39);
      v42 = v18;
      v25 = v18[2];
      v24 = v18[3];
      if (v25 >= v24 >> 1)
      {
        sub_1001AE654(v24 > 1, v25 + 1, 1);
        v18 = v42;
      }

      v18[2] = v25 + 1;
      result = (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25, v9, v23);
      a1 = v20;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
    v20 = a1;
LABEL_25:
    v26 = v20 <= v41;
    if (a3 > 0)
    {
      v26 = v20 >= v41;
    }

    if (v26)
    {
      return v18;
    }

    v38 = (v6 + 32);
    v27 = v39;
    while (1)
    {
      v28 = __OFADD__(v20, a3) ? ((v20 + a3) >> 63) ^ 0x8000000000000000 : v20 + a3;
      if (v20 < 0)
      {
        break;
      }

      v29 = *v40;
      if (v20 >= *(*v40 + 16))
      {
        goto LABEL_45;
      }

      v30 = sub_1000C773C(&qword_1002CFFD8);
      v31 = v36;
      (*(v6 + 16))(v36, v29 + ((*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80)) + *(*(v30 - 8) + 72) * v20 + *(v30 + 36), v27);
      v42 = v18;
      v33 = v18[2];
      v32 = v18[3];
      if (v33 >= v32 >> 1)
      {
        sub_1001AE654(v32 > 1, v33 + 1, 1);
        v18 = v42;
      }

      v18[2] = v33 + 1;
      result = (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v33, v31, v27);
      v34 = v28 <= v41;
      if (a3 > 0)
      {
        v34 = v28 >= v41;
      }

      v20 = v28;
      if (v34)
      {
        return v18;
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_10017493C()
{
  v0 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for AttributedString();
  sub_100018DC8(v2, qword_1002E90F0);
  sub_100018D90(v2, qword_1002E90F0);
  AttributeContainer.init()();
  return AttributedString.init(_:attributes:)();
}

uint64_t sub_1001749F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString.Index();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100174C4C(a1, 0);
  v10 = type metadata accessor for AttributedString();
  v11 = *(*(v10 - 8) + 16);
  v15[1] = a2;
  v11(a2, a1, v10);
  v12 = *(v9 + 16);
  if (v12)
  {
    v13 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (v12 <= *(v9 + 16))
    {
      --v12;
      (*(v5 + 16))(v8, v13 + *(v5 + 72) * v12, v4);
      if (qword_1002CDF68 != -1)
      {
        swift_once();
      }

      sub_100018D90(v10, qword_1002E90F0);
      sub_1001768F0(&unk_1002D4AD0, &type metadata accessor for AttributedString);
      AttributedString.insert<A>(_:at:)();
      (*(v5 + 8))(v8, v4);
      if (!v12)
      {
      }
    }

    __break(1u);
  }
}

size_t sub_100174C4C(uint64_t a1, char a2)
{
  v29 = sub_1000C773C(&qword_1002CFFD8);
  v5 = *(v29 - 8);
  __chkstk_darwin(v29, v6);
  v8 = v27 - v7;
  v9 = type metadata accessor for AttributedString.Index();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10017634C(a1);
  v15 = v14;
  v31 = v14;
  if ((a2 & 1) == 0 || !v14[2])
  {
LABEL_6:
    if (*v2 < 2)
    {
      v20 = v15[2];
      if (!v20)
      {

        return _swiftEmptyArrayStorage;
      }

      v30 = _swiftEmptyArrayStorage;
      sub_1001AE654(0, v20, 0);
      v19 = v30;
      v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v27[1] = v15;
      v22 = v15 + v21;
      v23 = *(v5 + 72);
      v27[2] = v10 + 32;
      v28 = v23;
      do
      {
        sub_10000B46C(v22, v8, &qword_1002CFFD8);
        (*(v10 + 16))(v13, &v8[*(v29 + 36)], v9);
        sub_100003CBC(v8, &qword_1002CFFD8);
        v30 = v19;
        v24 = v9;
        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1001AE654(v25 > 1, v26 + 1, 1);
          v19 = v30;
        }

        *(v19 + 16) = v26 + 1;
        (*(v10 + 32))(v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, v13, v24);
        v22 += v28;
        --v20;
        v9 = v24;
      }

      while (v20);
    }

    else
    {
      v19 = sub_1001744F4(*v2 - 1, v15[2], *v2, &v31);
    }

    return v19;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v17 = v15[2];
    if (v17)
    {
LABEL_5:
      v18 = v17 - 1;
      sub_100003CBC(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v17 - 1), &qword_1002CFFD8);
      v15[2] = v18;
      v31 = v15;
      goto LABEL_6;
    }
  }

  else
  {
    result = sub_1001B46F8(v15);
    v15 = result;
    v17 = *(result + 16);
    if (v17)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100174F8C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v100 = a2;
  v97 = sub_1000C773C(&qword_1002D3F90);
  __chkstk_darwin(v97, v3);
  v96 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v95 = &v85 - v7;
  v8 = type metadata accessor for AttributedSubstring();
  __chkstk_darwin(v8 - 8, v9);
  v94 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1000C773C(&qword_1002D4620);
  __chkstk_darwin(v93, v11);
  v13 = &v85 - v12;
  v102 = type metadata accessor for AttributedString();
  v99 = *(v102 - 8);
  __chkstk_darwin(v102, v14);
  v103 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v90 = &v85 - v18;
  __chkstk_darwin(v19, v20);
  v98 = &v85 - v21;
  v22 = type metadata accessor for AttributedString.Index();
  v23 = *(v22 - 1);
  __chkstk_darwin(v22, v24);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v30 = &v85 - v29;
  __chkstk_darwin(v31, v32);
  v34 = &v85 - v33;
  __chkstk_darwin(v35, v36);
  v38 = &v85 - v37;
  v39 = a1;
  v40 = sub_100174C4C(a1, 1);
  v41 = *(v40 + 16);
  if (!v41)
  {
    v56 = v97;

    v57 = v100;
    AttributedString.init(stringLiteral:)();
    AttributedString.startIndex.getter();
    AttributedString.startIndex.getter();
    sub_1001768F0(&qword_1002D1F28, &type metadata accessor for AttributedString.Index);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v58 = v30;
      v59 = v23;
      v60 = *(v23 + 32);
      v61 = v95;
      v60(v95, v58, v22);
      v62 = v56;
      v60((v61 + *(v56 + 48)), v26, v22);
      v63 = v96;
      sub_10000B46C(v61, v96, &qword_1002D3F90);
      v64 = *(v56 + 48);
      v65 = &v57[*(type metadata accessor for PartialTranscriptionFormattingResult() + 20)];
      v60(v65, v63, v22);
      v66 = *(v59 + 8);
      v66(v63 + v64, v22);
      sub_10001DBEC(v61, v63, &qword_1002D3F90);
      v67 = *(v62 + 48);
      v68 = sub_1000C773C(&qword_1002CFFD8);
      v60(&v65[*(v68 + 36)], (v63 + v67), v22);
      return (v66)(v63, v22);
    }

    goto LABEL_15;
  }

  v86 = v30;
  v91 = v23;
  v92 = v39;
  v42 = v23 + 16;
  v43 = *(v23 + 16);
  v88 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v89 = v41 - 1;
  v44 = *(v23 + 72);
  v45 = v40;
  v43(v38, v40 + v88 + v44 * (v41 - 1), v22);
  sub_1001768F0(&qword_1002D1CE0, &type metadata accessor for AttributedString.Index);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v47 = v13;
  v85 = v38;
  v101 = v42;
  v87 = v45;
  v48 = v13;
  v49 = v43;
  v43(v47, v38, v22);
  sub_100008034(&qword_1002D4628, &qword_1002D4620);
  AttributedString.subscript.getter();
  sub_100003CBC(v48, &qword_1002D4620);
  v50 = v98;
  AttributedString.init(_:)();
  v93 = *(v99 + 16);
  v94 = (v99 + 16);
  v93(v103, v50, v102);
  v51 = (v91 + 8);
  v52 = v87;
  v53 = v87 + v88 + v44 * v89;
  v54 = -v44;
  v55 = v22;
  while (v41 <= *(v52 + 16))
  {
    v49(v34, v53, v55);
    if (qword_1002CDF68 != -1)
    {
      swift_once();
    }

    --v41;
    sub_100018D90(v102, qword_1002E90F0);
    sub_1001768F0(&unk_1002D4AD0, &type metadata accessor for AttributedString);
    AttributedString.insert<A>(_:at:)();
    v22 = *v51;
    (*v51)(v34, v55);
    v53 += v54;
    if (!v41)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:

  v69 = v99;
  v70 = v90;
  v71 = v102;
  (*(v99 + 32))(v90, v103, v102);
  v93(v100, v70, v71);
  v72 = v86;
  v73 = v55;
  AttributedString.startIndex.getter();
  sub_1001768F0(&qword_1002D1F28, &type metadata accessor for AttributedString.Index);
  v74 = v85;
  v75 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v76 = *(v69 + 8);
  v76(v70, v71);
  result = (v76)(v98, v71);
  if (v75)
  {
    v77 = *(v91 + 32);
    v78 = v95;
    v77(v95, v72, v73);
    v79 = v97;
    v77((v78 + *(v97 + 48)), v74, v73);
    v80 = v96;
    sub_10000B46C(v78, v96, &qword_1002D3F90);
    v81 = *(v79 + 48);
    v82 = &v100[*(type metadata accessor for PartialTranscriptionFormattingResult() + 20)];
    v77(v82, v80, v73);
    (v22)(v80 + v81, v73);
    sub_10001DBEC(v78, v80, &qword_1002D3F90);
    v83 = *(v79 + 48);
    v84 = sub_1000C773C(&qword_1002CFFD8);
    v77(&v82[*(v84 + 36)], (v80 + v83), v73);
    return (v22)(v80, v73);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10017589C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v21 = sub_1000C773C(&qword_1002CFFD8);
  v4 = *(v21 - 8);
  __chkstk_darwin(v21, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100175B28();
  v14 = *(v13 + 16);
  v15 = *(v9 + 16);
  if (v14)
  {
    v18 = v9;
    v19 = v8;
    v20 = a2;
    result = v15(v12, a1, v8);
    v17 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v14 <= *(v13 + 16))
    {
      --v14;
      sub_10000B46C(v17 + *(v4 + 72) * v14, v7, &qword_1002CFFD8);
      sub_100008034(&qword_1002D05A0, &qword_1002CFFD8);
      AttributedString.removeSubrange<A>(_:)();
      result = sub_100003CBC(v7, &qword_1002CFFD8);
      if (!v14)
      {

        return (*(v18 + 32))(v20, v12, v19);
      }
    }

    __break(1u);
  }

  else
  {
    v15(a2, a1, v8);
  }

  return result;
}

uint64_t sub_100175B28()
{
  v1 = sub_1000C773C(&qword_1002CF9D8);
  __chkstk_darwin(v1 - 8, v2);
  v79 = &v62 - v3;
  v78 = type metadata accessor for AttributedSubstring();
  v4 = *(v78 - 8);
  __chkstk_darwin(v78, v5);
  v77 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1000C773C(&qword_1002D3F90);
  __chkstk_darwin(v76, v7);
  v74 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v75 = &v62 - v11;
  v12 = sub_1000C773C(&qword_1002CFFE0);
  __chkstk_darwin(v12 - 8, v13);
  v86 = &v62 - v14;
  v85 = sub_1000C773C(&qword_1002CFFD8);
  v80 = *(v85 - 8);
  __chkstk_darwin(v85, v15);
  v81 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v73 = &v62 - v19;
  __chkstk_darwin(v20, v21);
  v23 = &v62 - v22;
  v24 = type metadata accessor for AttributedString.Index();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v32 = &v62 - v31;
  AttributedString.startIndex.getter();
  AttributedString.endIndex.getter();
  v67 = sub_1001768F0(&qword_1002D1F28, &type metadata accessor for AttributedString.Index);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v36 = *(v25 + 16);
    v35 = v25 + 16;
    v34 = v36;
    v37 = (v35 - 8);
    v69 = (v4 + 8);
    v70 = (v35 + 16);
    v68 = (v80 + 48);
    v38 = _swiftEmptyArrayStorage;
    v84 = v0;
    v66 = v23;
    v65 = v35;
    v64 = v28;
    v72 = v32;
    v63 = v36;
    v71 = (v35 - 8);
    while (1)
    {
      v83 = v38;
      v39 = v75;
      v34(v75, v32, v24);
      v40 = v28;
      v41 = v76;
      v42 = *v70;
      (*v70)(v39 + *(v76 + 48), v40, v24);
      v43 = v24;
      v44 = v74;
      sub_10000B46C(v39, v74, &qword_1002D3F90);
      v45 = *(v41 + 48);
      v46 = v73;
      v42(v73, v44, v43);
      v47 = *v37;
      (*v37)(v44 + v45, v43);
      v48 = v39;
      v49 = v85;
      v50 = v86;
      sub_10001DBEC(v48, v44, &qword_1002D3F90);
      v42(v46 + *(v49 + 36), (v44 + *(v41 + 48)), v43);
      v51 = v44;
      v24 = v43;
      v82 = v47;
      v47(v51, v43);
      sub_100008034(&qword_1002D05A0, &qword_1002CFFD8);
      v52 = v77;
      AttributedString.subscript.getter();
      sub_100003CBC(v46, &qword_1002CFFD8);
      v87 = 11108578;
      v88 = 0xA300000000000000;
      v53 = type metadata accessor for Locale();
      v54 = v79;
      (*(*(v53 - 8) + 56))(v79, 1, 1, v53);
      sub_1001768F0(&qword_1002D1388, &type metadata accessor for AttributedSubstring);
      sub_100028710();
      v55 = v50;
      v56 = v78;
      AttributedStringProtocol.range<A>(of:options:locale:)();
      sub_100003CBC(v54, &qword_1002CF9D8);
      (*v69)(v52, v56);
      if ((*v68)(v55, 1, v49) == 1)
      {
        break;
      }

      v57 = v66;
      sub_10001DBEC(v86, v66, &qword_1002CFFD8);
      sub_10000B46C(v57, v81, &qword_1002CFFD8);
      v38 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1000F2A04(0, v38[2] + 1, 1, v38);
      }

      v28 = v64;
      v37 = v71;
      v58 = v72;
      v60 = v38[2];
      v59 = v38[3];
      if (v60 >= v59 >> 1)
      {
        v38 = sub_1000F2A04(v59 > 1, v60 + 1, 1, v38);
      }

      v82(v58, v43);
      v38[2] = v60 + 1;
      sub_10001DBEC(v81, v38 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v60, &qword_1002CFFD8);
      v61 = v63;
      v63(v58, (v57 + *(v85 + 36)), v43);
      sub_100003CBC(v57, &qword_1002CFFD8);
      v32 = v58;
      AttributedString.endIndex.getter();
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      v34 = v61;
      if ((result & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v82(v72, v43);
    sub_100003CBC(v86, &qword_1002CFFE0);
    return v83;
  }

  else
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void *sub_10017634C(uint64_t a1)
{
  v2 = type metadata accessor for Locale.Language();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v7, v8);
  type metadata accessor for AttributedString();
  sub_1001768F0(&unk_1002D4AD0, &type metadata accessor for AttributedString);
  dispatch thunk of AttributedStringProtocol.characters.getter();
  sub_1001768F0(&qword_1002D1340, &type metadata accessor for AttributedString.CharacterView);
  String.init<A>(_:)();
  v9 = [objc_allocWithZone(NLTokenizer) initWithUnit:1];
  type metadata accessor for TranscriptionParagraphFormatter();
  Locale.language.getter();
  Locale.Language.minimalIdentifier.getter();
  (*(v3 + 8))(v6, v2);
  v10 = String._bridgeToObjectiveC()();

  [v9 setLanguage:v10];

  v11 = String._bridgeToObjectiveC()();
  [v9 setString:v11];

  v12 = NLTokenizer.tokens(for:)();
  v16 = a1;
  v13 = sub_1000EF984(sub_100176830, v15, v12);

  return v13;
}

uint64_t sub_10017663C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4, v5);
  v9 = *a1;
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  sub_1000C773C(&qword_1002D4530);
  sub_100008034(&qword_1002D4538, &qword_1002D4530);
  sub_1001768F0(&unk_1002D4AD0, &type metadata accessor for AttributedString);
  return Range<>.init<A, B>(_:in:)();
}

uint64_t type metadata accessor for TranscriptionParagraphFormatter()
{
  result = qword_1002D45E8;
  if (!qword_1002D45E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100176874()
{
  result = type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001768F0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1001769C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StereoOrientationProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100176A38(void *a1)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = &OBJC_IVAR____TtC10VoiceMemos25StereoOrientationProvider_interfaceOrientation;
  if (v4 != 1)
  {
    v5 = &OBJC_IVAR____TtC10VoiceMemos25StereoOrientationProvider_deviceOrientation;
  }

  v6 = *(v1 + *v5);
  if ((v6 - 1) >= 4)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  v8 = [a1 orientation];
  if (!v8)
  {
    return qword_10024CCC0[v7 - 1];
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    return v7;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
    return qword_10024CCC0[v7 - 1];
  }

  return v7;
}

uint64_t sub_100176BD0(_BYTE *a1)
{
  v2 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v12 - v4;
  if (*a1 == 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_100176E08();
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v7 = *(result + 32);
    if (v7)
    {
      v8 = *(result + 24);
      v9 = result;
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v9;
      v11[5] = v8;
      v11[6] = v7;

      sub_100179578(0, 0, v5, &unk_10024CD80, v11);
    }
  }
}

uint64_t sub_100176D54()
{
  if (*(*(v0 + 16) + 16))
  {

    v1 = Activity.id.getter();
    sub_100146AD8(v1, v2);
  }

  sub_10000E274(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_100176E08()
{
  v1 = v0;
  if (*(v0 + 32) && *(*(v0 + 16) + 16))
  {

    v2 = Activity.id.getter();
    sub_100146AD8(v2, v3);
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 activeAudioRecorder];

  if (v5)
  {
    v6 = [v5 context];
    v7 = v6[OBJC_IVAR____TtC10VoiceMemos18VMRecordingContext_isActionButtonInitiated];

    v8 = sub_100145C34(v7);
    v10 = v9;
    swift_unknownObjectRelease();
    *(v1 + 24) = v8;
    *(v1 + 32) = v10;
  }
}

uint64_t sub_100176F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100176F54, 0, 0);
}

uint64_t sub_100176F54()
{
  v0[5] = *(v0[2] + 16);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100176FF0;

  return sub_1001463EC(0);
}

uint64_t sub_100176FF0()
{

  return _swift_task_switch(sub_1001770EC, 0, 0);
}

uint64_t sub_1001770EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1001771F0;

    return sub_1000EAC34();
  }

  else
  {
    if (sub_100146AD8(v0[3], v0[4]))
    {
      v4 = v0[2];
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
    }

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1001771F0()
{

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100177308, 0, 0);
}

uint64_t sub_100177308()
{
  if (sub_100146AD8(v0[3], v0[4]))
  {
    v1 = v0[2];
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_100177380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002001C;

  return sub_100176F30(a1, v4, v5, v6, v7, v8);
}

id sub_1001774B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v17 - v12;
  v14 = (*(v9 + 16))(&v17 - v12, a1 + *a4, v8, v11);
  v15 = a5(v14);
  (*(v9 + 8))(v13, v8);

  return v15;
}

void sub_1001775C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_100177630()
{
  [*&v0[OBJC_IVAR___RCCaptureToken_operationQueue] setSuspended:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CaptureToken();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CaptureToken()
{
  result = qword_1002D47B0;
  if (!qword_1002D47B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017782C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
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

id sub_1001779C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationFileCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100177A20()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v8 = v55 - v7;
  v60 = v55 - v7;
  v9 = type metadata accessor for UUID();
  v65 = *(v9 - 8);
  v66 = v9;
  __chkstk_darwin(v9, v10);
  v63 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = v55 - v14;
  UUID.init()();
  v16 = RCCaptureDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v17 = *(v1 + 8);
  v64 = v1 + 8;
  v61 = v17;
  v56 = v4;
  v17(v4, v0);
  v18 = *(v1 + 16);
  v55[2] = v1 + 16;
  v58 = v0;
  v18(v4, v8, v0);
  v19 = v66;
  v20 = *(v65 + 16);
  v21 = v63;
  v62 = v15;
  v20(v63, v15, v66);
  v59 = type metadata accessor for CaptureToken();
  v22 = objc_allocWithZone(v59);
  v23 = OBJC_IVAR___RCCaptureToken_operationQueue;
  v57 = OBJC_IVAR___RCCaptureToken_operationQueue;
  v24 = [objc_allocWithZone(NSOperationQueue) init];
  *&v22[v23] = v24;
  v25 = v56;
  v18(&v22[OBJC_IVAR___RCCaptureToken_directoryURL], v56, v0);
  v26 = v22;
  v20(&v22[OBJC_IVAR___RCCaptureToken_uuid], v21, v19);
  v27 = v19;
  [v24 setSuspended:1];
  v28 = objc_opt_self();
  URL._bridgeToObjectiveC()(v29);
  v31 = v30;
  v32 = [v28 writingIntentWithURL:v30 options:2];

  v33 = [objc_allocWithZone(NSFileCoordinator) init];
  sub_1000C773C(&unk_1002CE190);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1002432F0;
  *(v34 + 32) = v32;
  sub_100177FE8();
  v35 = v32;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v37 = v26;
  v38 = *&v26[v57];
  aBlock[4] = DebugData.init(name:);
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001775C4;
  aBlock[3] = &unk_100293BD8;
  v39 = _Block_copy(aBlock);
  v40 = v38;
  [v33 coordinateAccessWithIntents:isa queue:v40 byAccessor:v39];
  _Block_release(v39);

  v41 = v65;
  v67.receiver = v37;
  v67.super_class = v59;
  v42 = objc_msgSendSuper2(&v67, "init");
  v43 = *(v41 + 8);
  v43(v63, v27);
  v44 = v25;
  v45 = v58;
  v46 = v61;
  v61(v44, v58);
  v47 = [objc_opt_self() defaultManager];
  v48 = v60;
  URL._bridgeToObjectiveC()(v49);
  v51 = v50;
  aBlock[0] = 0;
  LOBYTE(v39) = [v47 createDirectoryAtURL:v50 withIntermediateDirectories:0 attributes:0 error:aBlock];

  if (v39)
  {
    v52 = aBlock[0];
  }

  else
  {
    v53 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v46(v48, v45);
  v43(v62, v66);
  return v42;
}

unint64_t sub_100177FE8()
{
  result = qword_1002D47E8;
  if (!qword_1002D47E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D47E8);
  }

  return result;
}

uint64_t sub_100178034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10017804C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1000C773C(&qword_1002D5FA0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_1000C773C(&qword_1002D4818);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for CSSearchQuery.Results();
  v2[13] = swift_task_alloc();
  v5 = sub_1000C773C(&qword_1002D4820);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10017825C, 0, 0);
}

uint64_t sub_10017825C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = sub_10017913C(*(v0 + 16), *(v0 + 24));
  CSSearchQuery.results.getter();

  sub_100179520();
  AsyncCompactMapSequence.init(_:transform:)();
  (*(v4 + 16))(v1, v2, v3);
  sub_100008034(&qword_1002D4830, &qword_1002D4820);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  *(v0 + 144) = _swiftEmptyArrayStorage;
  v6 = sub_100008034(&qword_1002D4838, &qword_1002D4818);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_100178420;
  v8 = *(v0 + 72);
  v9 = *(v0 + 32);

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v8, v6);
}

uint64_t sub_100178420()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v3 = sub_100178840;
  }

  else
  {
    v3 = sub_100178558;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100178558()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[17];
    v5 = v0[14];
    v6 = v0[15];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v6 + 8))(v4, v5);
    sub_1000EA894(v3);

    v7 = v0[1];
    v8 = v0[18];

    return v7(v8);
  }

  else
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = *(v2 + 32);
    v12(v10, v3, v1);
    (*(v2 + 16))(v11, v10, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v0[18];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1000F2888(0, v14[2] + 1, 1, v0[18]);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1000F2888(v15 > 1, v16 + 1, 1, v14);
    }

    v17 = v0[7];
    v18 = v0[5];
    v19 = v0[6];
    (*(v19 + 8))(v0[8], v18);
    v14[2] = v16 + 1;
    v12(v14 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v17, v18);
    v0[18] = v14;
    v20 = sub_100008034(&qword_1002D4838, &qword_1002D4818);
    v21 = swift_task_alloc();
    v0[19] = v21;
    *v21 = v0;
    v21[1] = sub_100178420;
    v22 = v0[9];
    v23 = v0[4];

    return dispatch thunk of AsyncIteratorProtocol.next()(v23, v22, v20);
  }
}

uint64_t sub_100178840()
{
  (*(v0[15] + 8))(v0[17], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100178918(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100178938, 0, 0);
}

uint64_t sub_100178938()
{
  v1 = *(v0 + 16);
  v2 = CSSearchQuery.Results.Item.item.getter();
  v3 = [v2 uniqueIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001789EC(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001789EC@<X0>(char *a1@<X8>)
{
  v2 = sub_1000C773C(&qword_1002D5FA0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v18 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v11 = *(v7 + 32);
    v11(v10, v5, v6);
    v12 = URL.scheme.getter();
    if (v13)
    {
      if (v12 == 0x616465726F632D78 && v13 == 0xEA00000000006174)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v11(a1, v10, v6);
      v16 = 0;
      return (*(v7 + 56))(a1, v16, 1, v6);
    }

LABEL_9:
    (*(v7 + 8))(v10, v6);
    goto LABEL_10;
  }

  sub_1000EA894(v5);
LABEL_10:
  v16 = 1;
  return (*(v7 + 56))(a1, v16, 1, v6);
}

uint64_t sub_100178D90(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_100178E60;

  return (sub_10017921C)(v3, v5);
}

uint64_t sub_100178E60()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;

  if (v2)
  {
    v5 = _convertErrorToNSError(_:)();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    type metadata accessor for URL();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = isa;
    v6 = 0;
    v5 = isa;
  }

  v9 = *(v3 + 16);
  (v9)[2](v9, v7, v6);

  _Block_release(v9);
  v10 = *(v4 + 8);

  return v10();
}

id sub_100179030()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCTranscriptionSearch();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100179088()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002001C;

  return sub_100178D90(v2, v3);
}

id sub_10017913C(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(23);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 1684218410;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);
  v6 = objc_allocWithZone(CSSearchQuery);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithQueryString:v7 queryContext:{0, 0xD000000000000011, 0x8000000100234960}];

  return v8;
}

uint64_t sub_10017921C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10017923C, 0, 0);
}

uint64_t sub_10017923C()
{
  if (qword_1002CDE28 != -1)
  {
    swift_once();
  }

  v1 = qword_1002E8DC0;

  CurrentValueSubject.value.getter();

  if (*(v0 + 40) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    v2[1] = sub_100179380;
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);

    return sub_10017804C(v4, v3);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100179380(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100179480(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001FF1C;

  return sub_100178918(a1, a2);
}

unint64_t sub_100179520()
{
  result = qword_1002D4828;
  if (!qword_1002D4828)
  {
    type metadata accessor for CSSearchQuery.Results();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4828);
  }

  return result;
}

uint64_t sub_100179578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000D91F8(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100003CBC(v10, &unk_1002D1D90);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100003CBC(a3, &unk_1002D1D90);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003CBC(a3, &unk_1002D1D90);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100179868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_1000D91F8(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100003CBC(v12, &unk_1002D1D90);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
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
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_1000C773C(&qword_1002CEFA8);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_100003CBC(a3, &unk_1002D1D90);

      return v23;
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

  sub_100003CBC(a3, &unk_1002D1D90);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_1000C773C(&qword_1002CEFA8);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100179B88(uint64_t result, uint64_t a2, int a3)
{
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = a3 >> 5;
  if (v8 <= 1)
  {
    if (a3 >> 5)
    {
      if ((v7 & 0xE0) != 0x20)
      {
        goto LABEL_48;
      }
    }

    else if (v7 >= 0x20)
    {
      goto LABEL_48;
    }

    if (v5 == result && v6 == a2)
    {
      return result;
    }

    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (result)
    {
      return result;
    }

    goto LABEL_48;
  }

  if (v8 == 2)
  {
    if ((v7 & 0xE0) == 0x40)
    {
      if (v5 == result && v6 == a2)
      {
        if ((a3 & 1) == (v7 & 1))
        {
          return result;
        }
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) != 0 && ((a3 ^ v7) & 1) == 0)
        {
          return result;
        }
      }
    }

    goto LABEL_48;
  }

  if (v8 == 3)
  {
    if ((v7 & 0xE0) == 0x60 && ((v5 ^ result) & 1) == 0)
    {
      return result;
    }

    goto LABEL_48;
  }

  if (!(a2 | result) && a3 == 128)
  {
    if ((v7 & 0xE0) != 0x80 || v6 | v5)
    {
      goto LABEL_48;
    }

LABEL_47:
    if (v7 == 128)
    {
      return result;
    }

    goto LABEL_48;
  }

  if (result == 1 && !a2 && a3 == 128)
  {
    if ((v7 & 0xE0) != 0x80 || v5 != 1)
    {
      goto LABEL_48;
    }

LABEL_46:
    if (v6)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (result == 2 && !a2 && a3 == 128)
  {
    if ((v7 & 0xE0) == 0x80 && v5 == 2)
    {
      goto LABEL_46;
    }
  }

  else if ((v7 & 0xE0) == 0x80 && v5 == 3)
  {
    goto LABEL_46;
  }

LABEL_48:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(result + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_dataProvider);
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    v14 = *(v11 + 48);

    sub_10017C690(v12, v13, v14);
    sub_100115920(v12, v13, v14);
    sub_10017C6A8(v12, v13, v14);
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_100179DB4(void *a1)
{
  if (a1)
  {
    [a1 currentTime];
    v3 = *(v1 + 56);
    if (v3)
    {
      v4 = v2;
      result = [v3 currentTime];
      if (v4 == v6)
      {
        return result;
      }
    }
  }

  else
  {
    result = *(v1 + 56);
    if (!result)
    {
      return result;
    }

    [result currentTime];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10002B04C(1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100179E58()
{
  if (*(v0 + 104))
  {

    Task.cancel()();
  }

  sub_10000E274(v0 + 16);
  sub_10017C6A8(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100179EFC()
{
  sub_100179E58();

  return swift_deallocClassInstance();
}

uint64_t sub_100179F30(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v21 - v9;
  v11 = *(v3 + 96);
  if (!v11)
  {
LABEL_12:
    *(v3 + 112) = 0;
    *(v3 + 120) = 0;

    *(v3 + 88) = a1;
    *(v3 + 96) = a2;

    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    type metadata accessor for MainActor();

    v18 = v3;
    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = &protocol witness table for MainActor;
    *(v20 + 32) = v18;
    *(v20 + 40) = a1;
    *(v20 + 48) = a2;
    *(v20 + 56) = a3 & 1;
    *(v18 + 104) = sub_100179578(0, 0, v10, &unk_10024D010, v20);
  }

  v12 = *(v3 + 88) == a1 && v11 == a2;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (*(v3 + 104))
    {

      Task.cancel()();
    }

    goto LABEL_12;
  }

  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  v15 = *(v3 + 48);
  *(v3 + 48) = 32;

  sub_100179B88(v13, v14, v15);

  return sub_10017C6A8(v13, v14, v15);
}

uint64_t sub_10017A180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 97) = a7;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 24) = a4;
  type metadata accessor for TranscriptionData(0);
  *(v7 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 56) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 64) = v9;
  *(v7 + 72) = v8;

  return _swift_task_switch(sub_10017A24C, v9, v8);
}

uint64_t sub_10017A24C()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_10017A330;
    v4 = *(v0 + 97);
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);

    return sub_10017AC0C(v5, v7, v6, v4);
  }
}

uint64_t sub_10017A330()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_10017A4F8;
  }

  else
  {
    v5 = sub_10017A46C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017A46C()
{

  v1 = static Task<>.isCancelled.getter();
  v2 = v0[6];
  if ((v1 & 1) == 0)
  {
    sub_10017BD9C(v0[4], v0[5], v0[6]);
  }

  sub_1000FC460(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10017A4F8()
{
  v1 = *(v0 + 88);

  *(v0 + 16) = v1;
  swift_errorRetain();
  sub_1000C773C(&qword_1002D5540);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 96) == 4;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {

    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      v3 = *(v0 + 32);
      v4 = *(v0 + 40);
      v5 = *(v0 + 24);
      *(v5 + 112) = v3;
      *(v5 + 120) = v4;

      sub_1000FC520();
      swift_allocError();
      *v6 = 4;
      sub_10017BECC(v3, v4);
    }
  }

  else
  {

    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      sub_10017BECC(*(v0 + 32), *(v0 + 40));
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_10017A668(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = qword_1002CDD88;
    v17 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100018D90(v4, qword_1002E8CB0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10001901C(0xD00000000000001ALL, 0x8000000100234AD0, &v18);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s Beginning live transcription observation", v7, 0xCu);
      sub_100014B64(v8);
    }

    *&v17[OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_delegate + 8] = &off_100293D08;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100018D90(v9, qword_1002E8CB0);
    v10 = static os_log_type_t.error.getter();
    v11 = Logger.logObject.getter();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10001901C(0xD00000000000001ALL, 0x8000000100234AD0, &v18);
      _os_log_impl(&_mh_execute_header, v11, v10, "%s Unable to begin live transcription.", v12, 0xCu);
      sub_100014B64(v13);
    }

    v14 = *(v2 + 32);
    v15 = *(v2 + 40);
    *(v2 + 32) = xmmword_10024CE30;
    v16 = *(v2 + 48);
    *(v2 + 48) = 0x80;
    sub_100179B88(v14, v15, v16);

    sub_10017C6A8(v14, v15, v16);
  }
}

uint64_t sub_10017A95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1002CDF50 != -1)
  {
    swift_once();
  }

  CurrentValueSubject.value.getter();

  v7 = (v17 & 0xC0) == 0x80 && v16 == 2;
  if (!v7 || v17 != 128)
  {
    sub_10010D6F8(v16, v17);
    v8 = *(v3 + 32);
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
LABEL_8:
    *(v3 + 32) = xmmword_10024CE30;
    *(v3 + 48) = 0x80;
    sub_100179B88(v8, v9, v10);
    return sub_10017C6A8(v8, v9, v10);
  }

  v15 = a3;
  v13 = *(v3 + 32);
  v12 = *(v3 + 40);
  v14 = *(v3 + 48);
  if (v14 < 0 && (v12 | v13 || v14 != -128) && (v13 != 1 || v12 || v14 != -128))
  {
    v9 = 0;
    v10 = 128;
    v8 = 3;
    if (v13 != 2 || v12 || v14 != -128)
    {
      goto LABEL_8;
    }
  }

  *(v3 + 32) = xmmword_10024CE40;
  *(v3 + 48) = 0x80;
  sub_100179B88(v13, v12, v14);
  sub_10017C6A8(v13, v12, v14);
  return sub_10017C11C(a1, a2, v15);
}

uint64_t sub_10017AB10(uint64_t result, unint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  if ((v7 & 0x80000000) == 0 || !(v6 | v5) && v7 == -128 || (v5 == 1 ? (v8 = v6 == 0) : (v8 = 0), v8 && v7 == -128 || (v5 == 2 ? (v9 = v6 == 0) : (v9 = 0), v9 && v7 == -128)))
  {
    v10 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v10 = result & 0xFFFFFFFFFFFFLL;
    }

    *(v3 + 32) = v10 != 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 96;
    v11 = result;
    sub_100179B88(v5, v6, v7);
    sub_10017C6A8(v5, v6, v7);

    return sub_10017C11C(v11, a2, a3);
  }

  return result;
}

uint64_t sub_10017AC0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 224) = a4;
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = type metadata accessor for DecodingError();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = type metadata accessor for AttributedString.CharacterView();
  *(v5 + 104) = swift_task_alloc();
  v7 = type metadata accessor for TranscriptionData(0);
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  sub_1000C773C(&unk_1002D4AC0);
  *(v5 + 144) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 152) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 160) = v9;
  *(v5 + 168) = v8;

  return _swift_task_switch(sub_10017ADF0, v9, v8);
}

uint64_t sub_10017ADF0()
{
  v17 = v0;
  if (qword_1002CDDB8 != -1)
  {
    swift_once();
  }

  v0[22] = qword_1002E8D20;
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[23] = sub_100018D90(v1, qword_1002E8CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10001901C(0xD000000000000038, 0x8000000100234A90, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Retrieving existing transcription", v4, 0xCu);
    sub_100014B64(v5);
  }

  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v0[4];
  *(v7 + 40) = v6;
  v10 = *(v7 + 48);
  *(v7 + 48) = 0;

  sub_100179B88(v8, v9, v10);
  sub_10017C6A8(v8, v9, v10);
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_10017B024;
  v12 = v0[18];
  v13 = v0[4];
  v14 = v0[5];

  return sub_1000F6804(v12, v13, v14);
}

uint64_t sub_10017B024()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_10017B7EC;
  }

  else
  {
    v5 = sub_10017B160;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017B160()
{
  v20 = v0;
  v1 = *(v0 + 144);
  if ((*(*(v0 + 120) + 48))(v1, 1, *(v0 + 112)) == 1)
  {
    sub_100003CBC(v1, &unk_1002D4AC0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v19 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_10001901C(0xD000000000000038, 0x8000000100234A90, &v19);
      _os_log_impl(&_mh_execute_header, v2, v3, "%s No transcription found. Beginning new transcription.", v4, 0xCu);
      sub_100014B64(v5);
    }

    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    *(v7 + 32) = *(v0 + 32);
    *(v7 + 40) = v6;
    v10 = *(v7 + 48);
    *(v7 + 48) = 32;

    sub_100179B88(v8, v9, v10);
    sub_10017C6A8(v8, v9, v10);
    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v11[1] = sub_10017B400;
    v12 = *(v0 + 136);
    v13 = *(v0 + 224);
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);

    return sub_1000F7104(v12, v14, v15, v13);
  }

  else
  {
    v17 = *(v0 + 24);

    sub_1000FC4BC(v1, v17);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10017B400()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_10017BCD8;
  }

  else
  {
    v5 = sub_10017B53C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017B53C()
{
  v15 = v0;
  v2 = v0[16];
  v1 = v0[17];

  sub_10012D314(v1, v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10001901C(0xD000000000000038, 0x8000000100234A90, &v14);
    *(v7 + 12) = 2080;
    type metadata accessor for AttributedString();
    sub_10017C6C0(&unk_1002D4AD0, &type metadata accessor for AttributedString);
    dispatch thunk of AttributedStringProtocol.characters.getter();
    sub_10017C6C0(&qword_1002D1340, &type metadata accessor for AttributedString.CharacterView);
    v8 = String.init<A>(_:)();
    v10 = v9;
    sub_1000FC460(v6);
    v11 = sub_10001901C(v8, v10, &v14);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Transcription complete. Results: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000FC460(v6);
  }

  sub_1000FC4BC(v0[17], v0[3]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10017B7EC()
{
  v42 = v0;
  *(v0 + 16) = *(v0 + 200);
  swift_errorRetain();
  sub_1000C773C(&qword_1002D5540);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);

    (*(v4 + 32))(v1, v2, v3);
    v5 = RCCatchTranscriptionDecodingError();
    v6 = *(v0 + 80);
    if (v5)
    {
      v7 = *(*(v0 + 64) + 16);
      v7(*(v0 + 72), *(v0 + 80), *(v0 + 56));
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      v10 = os_log_type_enabled(v8, v9);
      v12 = *(v0 + 72);
      v11 = *(v0 + 80);
      v13 = *(v0 + 56);
      v14 = *(v0 + 64);
      if (v10)
      {
        v40 = *(v0 + 80);
        v15 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v15 = 138412290;
        swift_allocError();
        v7(v16, v12, v13);
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = *(v14 + 8);
        v18(v12, v13);
        *(v15 + 4) = v17;
        *v39 = v17;
        _os_log_impl(&_mh_execute_header, v8, v9, "Catching decode failure so that file can be re-transcribed, error = %@", v15, 0xCu);
        sub_100003CBC(v39, &unk_1002D3690);

        v18(v40, v13);
      }

      else
      {

        v24 = *(v14 + 8);
        v24(v12, v13);
        v24(v11, v13);
      }

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v41 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_10001901C(0xD000000000000038, 0x8000000100234A90, &v41);
        _os_log_impl(&_mh_execute_header, v25, v26, "%s No transcription found. Beginning new transcription.", v27, 0xCu);
        sub_100014B64(v28);
      }

      v29 = *(v0 + 40);
      v30 = *(v0 + 48);
      v31 = *(v30 + 32);
      v32 = *(v30 + 40);
      *(v30 + 32) = *(v0 + 32);
      *(v30 + 40) = v29;
      v33 = *(v30 + 48);
      *(v30 + 48) = 32;

      sub_100179B88(v31, v32, v33);
      sub_10017C6A8(v31, v32, v33);
      v34 = swift_task_alloc();
      *(v0 + 208) = v34;
      *v34 = v0;
      v34[1] = sub_10017B400;
      v35 = *(v0 + 136);
      v36 = *(v0 + 224);
      v37 = *(v0 + 32);
      v38 = *(v0 + 40);

      return sub_1000F7104(v35, v37, v38, v36);
    }

    v19 = *(v0 + 56);
    v20 = *(v0 + 64);

    swift_allocError();
    (*(v20 + 16))(v21, v6, v19);
    swift_willThrow();
    (*(v20 + 8))(v6, v19);
  }

  else
  {

    swift_willThrow();
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10017BCD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017BD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10011DDD4(a3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = 65;
  }

  else
  {
    v13 = 64;
  }

  v14 = *(v3 + 32);
  v15 = *(v3 + 40);
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  v16 = *(v3 + 48);
  *(v3 + 48) = v13;

  sub_100179B88(v14, v15, v16);
  sub_10017C6A8(v14, v15, v16);
  sub_10017C11C(v7, v9, v11);

  result = *(v3 + 88);
  v19 = *(v3 + 96);
  v18 = (v3 + 88);
  if (v19)
  {
    if (result == a1 && v19 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      *v18 = 0;
      v18[1] = 0;
    }
  }

  return result;
}

uint64_t sub_10017BECC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100018D90(v6, qword_1002E8CB0);
  v7 = static os_log_type_t.error.getter();
  swift_errorRetain();
  v8 = Logger.logObject.getter();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10001901C(0xD000000000000037, 0x8000000100234A50, &v19);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_10001901C(v10, v11, &v19);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v8, v7, "%s Failed to transcribe with error - %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  *(v2 + 32) = xmmword_10024CE50;
  v15 = *(v2 + 48);
  *(v2 + 48) = 0x80;
  sub_100179B88(v13, v14, v15);
  sub_10017C6A8(v13, v14, v15);
  sub_10017C11C(0, 0xE000000000000000, _swiftEmptyArrayStorage);
  result = *(v2 + 88);
  v18 = *(v2 + 96);
  v17 = (v3 + 88);
  if (v18)
  {
    if (result == a1 && v18 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      *v17 = 0;
      v17[1] = 0;
    }
  }

  return result;
}

uint64_t sub_10017C11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a1;
  v3[9] = a2;

  v3[10] = a3;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10002B04C(1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10017C1B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_10017C1D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 17))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10017C224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 16) = 0;
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_10017C288(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_10017C2C4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10017C3B8;

  return v5(v2 + 32);
}

uint64_t sub_10017C3B8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10017C4CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = a3 >> 5;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      if ((a6 & 0xE0) == 0x40)
      {
        if (a1 == a4 && a2 == a5 || (v9 = a3, v10 = a6, v11 = _stringCompareWithSmolCheck(_:_:expecting:)(), a3 = v9, a6 = v10, (v11 & 1) != 0))
        {
          v8 = a6 ^ a3;
          return (v8 ^ 1) & 1;
        }
      }

      return 0;
    }

    if (v7 == 3)
    {
      if ((a6 & 0xE0) == 0x60)
      {
        v8 = a4 ^ a1;
        return (v8 ^ 1) & 1;
      }

      return 0;
    }

    if (a2 | a1 || a3 != 128)
    {
      if (a1 == 1 && !a2 && a3 == 128)
      {
        if ((a6 & 0xE0) != 0x80 || a4 != 1)
        {
          return 0;
        }
      }

      else if (a1 == 2 && !a2 && a3 == 128)
      {
        if ((a6 & 0xE0) != 0x80 || a4 != 2)
        {
          return 0;
        }
      }

      else if ((a6 & 0xE0) != 0x80 || a4 != 3)
      {
        return 0;
      }

      if (a5)
      {
        return 0;
      }
    }

    else if ((a6 & 0xE0) != 0x80 || a5 | a4)
    {
      return 0;
    }

    return a6 == 128;
  }

  if (a3 >> 5)
  {
    if ((a6 & 0xE0) != 0x20)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }
  }

  else
  {
    if (a6 >= 0x20u)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10017C690(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x5Fu)
  {
  }

  return result;
}

uint64_t sub_10017C6A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x5Fu)
  {
  }

  return result;
}

uint64_t sub_10017C6C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10017C708(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002001C;

  return sub_10017A180(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10017C7E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002001C;

  return sub_10017C2C4(a1, v4);
}

unint64_t sub_10017C89C()
{
  result = qword_1002D4AE8;
  if (!qword_1002D4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4AE8);
  }

  return result;
}

unint64_t sub_10017C8F4()
{
  result = qword_1002D4AF0;
  if (!qword_1002D4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4AF0);
  }

  return result;
}

unint64_t sub_10017C9CC()
{
  result = qword_1002D4AF8;
  if (!qword_1002D4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4AF8);
  }

  return result;
}

uint64_t sub_10017CA20()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E9118);
  sub_100018D90(v0, qword_1002E9118);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10017CA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a3;
  v4[32] = a4;
  v4[29] = a1;
  v4[30] = a2;
  v4[33] = type metadata accessor for MainActor();
  v4[34] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[35] = v6;
  v4[36] = v5;

  return _swift_task_switch(sub_10017CB24, v6, v5);
}

uint64_t sub_10017CB24()
{
  IntentParameter.wrappedValue.getter();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 296) = v1;
  *(v0 + 304) = v3;
  v5 = *(v0 + 88);
  *(v0 + 312) = v4;
  *(v0 + 320) = v5;
  if (v1)
  {
    IntentParameter.wrappedValue.getter();
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = *(v0 + 120);
    *(v0 + 328) = v7;
    *(v0 + 344) = v8;
    v9 = v7;
    if (v7)
    {
      AppDependency.wrappedValue.getter();
      sub_10000AACC((v0 + 136), *(v0 + 160));
      *(v0 + 360) = static MainActor.shared.getter();
      v10 = swift_task_alloc();
      *(v0 + 368) = v10;
      *v10 = v0;
      v10[1] = sub_10017CD0C;

      return sub_1001A0E38(v0 + 16, v2, v1, v6, v9);
    }
  }

  sub_1000E454C();
  swift_allocError();
  *v12 = 1;
  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10017CD0C()
{
  *(*v1 + 376) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10017CFFC;
  }

  else
  {
    v4 = sub_10017CE64;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10017CE64()
{

  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return _swift_task_switch(sub_10017CEC8, v1, v2);
}

uint64_t sub_10017CEC8()
{

  sub_100014B64(v0 + 136);
  v1 = *(v0 + 32);
  *(v0 + 176) = *(v0 + 16);
  *(v0 + 192) = v1;
  *(v0 + 208) = *(v0 + 48);
  sub_10012EC78();
  static IntentResult.result<A>(value:)();

  *(v0 + 216) = *(v0 + 16);
  sub_10012ECCC(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10017CFFC()
{

  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return _swift_task_switch(sub_10017D060, v1, v2);
}

uint64_t sub_10017D060()
{

  sub_100014B64(v0 + 136);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017D134@<X0>(uint64_t a1@<X8>)
{
  if (qword_1002CDF70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100018D90(v2, qword_1002E9118);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10017D1DC(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002001C;

  return sub_10017CA84(a1, v4, v5, v6);
}

uint64_t sub_10017D290@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10017D308();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10017D2BC(uint64_t a1)
{
  v2 = sub_10017C9CC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10017D308()
{
  v35 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v35 - 8);
  __chkstk_darwin(v35, v1);
  v34 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C773C(&qword_1002CF820);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v24 - v9;
  v11 = sub_1000C773C(&qword_1002D07A8);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v24 - v13;
  v15 = type metadata accessor for LocalizedStringResource();
  v30 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v31 = sub_1000C773C(&qword_1002D2EC0);
  LocalizedStringResource.init(stringLiteral:)();
  v18 = *(v16 + 56);
  v29 = v16 + 56;
  v32 = v18;
  v18(v14, 1, 1, v15);
  v28 = "_INTENT_TARGET_PARAMETER";
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  IntentDialog.init(stringLiteral:)();
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v10, 0, 1, v19);
  v20(v6, 1, 1, v19);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v21 = *(v0 + 104);
  v26 = v0 + 104;
  v27 = v21;
  v22 = v34;
  v21(v34);
  v24 = sub_100156D60();
  sub_1000DC3A4();
  v33 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
  LocalizedStringResource.init(stringLiteral:)();
  v32(v14, 1, 1, v30);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  IntentDialog.init(stringLiteral:)();
  v20(v10, 0, 1, v19);
  v20(v6, 1, 1, v19);
  v27(v22, v25, v35);
  IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
  sub_1000C773C(&qword_1002D4B00);
  v36 = 0xD000000000000027;
  v37 = 0x80000001002321A0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v33;
}

VoiceMemos::RecordingDurationData __swiftcall RecordingDurationData.init(countOfRecordingsLessThanThirtySecs:countOfRecordingsThirtySecsToFiftyNineSecs:countOfRecordingsSixtySecsToTwoHundredNinetyNineSecs:countOfRecordingsThreeHundredSecsOrGreater:)(Swift::Int32 countOfRecordingsLessThanThirtySecs, Swift::Int32 countOfRecordingsThirtySecsToFiftyNineSecs, Swift::Int32 countOfRecordingsSixtySecsToTwoHundredNinetyNineSecs, Swift::Int32 countOfRecordingsThreeHundredSecsOrGreater)
{
  v4 = countOfRecordingsLessThanThirtySecs | (*&countOfRecordingsThirtySecsToFiftyNineSecs << 32);
  v5 = countOfRecordingsSixtySecsToTwoHundredNinetyNineSecs | (*&countOfRecordingsThreeHundredSecsOrGreater << 32);
  result.countOfRecordingsSixtySecsToTwoHundredNinetyNineSecs = v5;
  result.countOfRecordingsThreeHundredSecsOrGreater = HIDWORD(v5);
  result.countOfRecordingsLessThanThirtySecs = v4;
  result.countOfRecordingsThirtySecsToFiftyNineSecs = HIDWORD(v4);
  return result;
}

unint64_t sub_10017D854()
{
  v1 = 0xD00000000000002ALL;
  v2 = 0xD000000000000034;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000002ALL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10017D8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10017DBEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10017D8EC(uint64_t a1)
{
  v2 = sub_10017DB2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017D928(uint64_t a1)
{
  v2 = sub_10017DB2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RecordingDurationData.encode(to:)(void *a1)
{
  v3 = sub_1000C773C(&qword_1002D4B08);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9 - v6;
  sub_10000AACC(a1, a1[3]);
  sub_10017DB2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v12 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_10017DB2C()
{
  result = qword_1002D4B10;
  if (!qword_1002D4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4B10);
  }

  return result;
}

uint64_t sub_10017DB98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10017DD58(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10017DBEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000023 && 0x8000000100234B70 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000100234BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000034 && 0x8000000100234BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000100234C10 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10017DD58(void *a1)
{
  v3 = sub_1000C773C(&qword_1002D4B30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v11 - v6;
  sub_10000AACC(a1, a1[3]);
  sub_10017DB2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100014B64(a1);
  }

  v16 = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = 1;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100014B64(a1);
  return v8 | (v9 << 32);
}

unint64_t sub_10017DF60()
{
  result = qword_1002D4B18;
  if (!qword_1002D4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4B18);
  }

  return result;
}

unint64_t sub_10017DFB8()
{
  result = qword_1002D4B20;
  if (!qword_1002D4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4B20);
  }

  return result;
}

unint64_t sub_10017E010()
{
  result = qword_1002D4B28;
  if (!qword_1002D4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4B28);
  }

  return result;
}

NSString sub_10017E064()
{
  result = String._bridgeToObjectiveC()();
  qword_1002E9130 = result;
  return result;
}

id sub_10017E09C()
{
  if (qword_1002CDF78 != -1)
  {
    swift_once();
  }

  v1 = qword_1002E9130;

  return v1;
}

uint64_t sub_10017E27C()
{
  v1 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v15 - v3;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = type metadata accessor for RCCopyTranscriptActivity();
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "prepareWithActivityItems:", isa);

  v7 = [v0 recordingUUIDs];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v8[2])
  {
  }

  v10 = v8[4];
  v9 = v8[5];

  v11 = [objc_allocWithZone(type metadata accessor for RCControlsActionHelper()) init];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = v10;
  v13[6] = v9;
  sub_100194190(0, 0, v4, &unk_10024D420, v13);
}

uint64_t sub_10017E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10017E4DC;

  return sub_1001A8584(a5, a6);
}

uint64_t sub_10017E4DC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;

  return _swift_task_switch(sub_10017E5DC, 0, 0);
}

uint64_t sub_10017E5DC()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() generalPasteboard];
  if (v1)
  {
    v1 = String._bridgeToObjectiveC()();
  }

  [v2 setString:v1];

  v3 = *(v0 + 8);

  return v3();
}