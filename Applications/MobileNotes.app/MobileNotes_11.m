uint64_t sub_10020D7E8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_10020D8DC()
{
  v24 = sub_10015DA04(&qword_1006C01A8);
  v26 = *(v24 - 8);
  __chkstk_darwin(v24);
  v1 = &v19 - v0;
  v2 = sub_10015DA04(&qword_1006C01B0);
  __chkstk_darwin(v2);
  sub_10002104C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0x65687420776F6853;
  v3._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  v25 = sub_10001DB74(&unk_1006C6120, type metadata accessor for ChecklistItemEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v4._object = 0x8000000100565600;
  v4._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v4);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v26 + 8);
  v26 += 8;
  v6 = v24;
  v5(v1, v24);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x656874206E65704FLL;
  v7._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0xD000000000000011;
  v8._object = 0x8000000100565620;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = v5;
  v5(v1, v6);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x2079616C70736944;
  v9._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._object = 0x8000000100565640;
  v10._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = v24;
  v5(v1, v24);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD000000000000010;
  v12._object = 0x8000000100565660;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0xD000000000000019;
  v13._object = 0x8000000100565680;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v1, v11);
  sub_10015DA04(&qword_1006C01B8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100539C30;
  v16 = v22;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  *(v15 + 48) = v21;
  *(v15 + 56) = v14;
  v17 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v17;
}

uint64_t sub_10020DE40()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DB74(&unk_1006C6120, type metadata accessor for ChecklistItemEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002104C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10020DFE0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10020E114(uint64_t a1)
{
  v52 = a1;
  v1 = sub_10015DA04(&qword_1006C0190);
  v2 = *(v1 - 8);
  v58 = v1;
  v59 = v2;
  __chkstk_darwin(v1);
  v57 = &v42 - v3;
  v4 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&qword_1006C0198);
  __chkstk_darwin(v8);
  sub_10002116C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x20796D206E65704FLL;
  v9._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v53 = sub_10001DB74(&qword_1006C5420, type metadata accessor for FolderEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v49 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = *(v5 + 104);
  v50 = v5 + 104;
  v54 = v11;
  v48 = v7;
  v44 = v4;
  (v11)(v7);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v51 = *(v5 + 8);
  v56 = v5 + 8;
  v51(v7, v4);
  v12._countAndFlagsBits = 0x2E7265646C6F6620;
  v12._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v13 = v57;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v58;
  v16 = v59 + 8;
  v15 = *(v59 + 8);
  v15(v13, v58);
  v55 = v15;
  v59 = v16;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x656874206E65704FLL;
  v17._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x2E7265646C6F6620;
  v18._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v57;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15(v19, v14);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x656874206E65704FLL;
  v20._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x207265646C6F6620;
  v21._object = 0xEB00000000206E69;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v48;
  v23 = v49;
  v24 = v44;
  v54(v48, v49, v44);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v51(v22, v24);
  v25._countAndFlagsBits = 46;
  v25._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v57;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v55(v26, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._object = 0x8000000100565580;
  v27._countAndFlagsBits = 0x1000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._object = 0xEF20656874206E69;
  v28._countAndFlagsBits = 0x207265646C6F6620;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  v29 = v48;
  v54(v48, v23, v24);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v30 = v51;
  v51(v29, v24);
  v31._countAndFlagsBits = 0x2E70706120;
  v31._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v57;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v55(v32, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._object = 0x80000001005655A0;
  v33._countAndFlagsBits = 0xD000000000000019;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 0x207265646C6F6620;
  v34._object = 0xEB00000000206E69;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  v54(v29, v49, v24);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v30(v29, v24);
  v35._countAndFlagsBits = 46;
  v35._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v55(v32, v58);
  sub_10015DA04(&qword_1006C01A0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100539C20;
  v38 = v46;
  *(v37 + 32) = v47;
  *(v37 + 40) = v38;
  v39 = v43;
  *(v37 + 48) = v45;
  *(v37 + 56) = v39;
  *(v37 + 64) = v36;
  v40 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v40;
}

uint64_t sub_10020E978()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C5420, type metadata accessor for FolderEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002116C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10020EB18()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10020EC38(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C0178);
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  __chkstk_darwin(v2);
  v5 = &v25 - v4;
  v6 = sub_10015DA04(&qword_1006C0180);
  __chkstk_darwin(v6);
  sub_10002128C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x656874206E65704FLL;
  v7._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v30 = sub_10001DB74(&qword_1006BE480, type metadata accessor for NoteEntity);
  v25 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x2E65746F6E20;
  v8._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v9 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v31;
  v11 = *(v32 + 8);
  v28 = v9;
  v29 = v11;
  v32 += 8;
  v11(v5, v31);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x20796D206E65704FLL;
  v12._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x2E65746F6E20;
  v13._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v29;
  v29(v5, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x6874206F74206F47;
  v15._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0x2E65746F6E20;
  v16._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v31;
  v14(v5, v31);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x20796D20776F6853;
  v18._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x2E65746F6E20;
  v19._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29(v5, v17);
  sub_10015DA04(&qword_1006C0188);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100539C30;
  v22 = v27;
  *(v21 + 32) = v28;
  *(v21 + 40) = v22;
  *(v21 + 48) = v26;
  *(v21 + 56) = v20;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_10020F16C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006BE480, type metadata accessor for NoteEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002128C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10020F30C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100539C40;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_10020F3DC()
{
  v0 = sub_10015DA04(&qword_1006C0168);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_100020BCC();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10015DA04(&qword_1006C0170);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C20;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_10020F6E0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E30;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_10020F764()
{
  v0 = sub_10015DA04(&qword_1006C0168);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_100020BCC();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10015DA04(&qword_1006C0170);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C20;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_10020FA88()
{
  v0 = sub_10015DA04(&qword_1006C0150);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_100020CEC();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10015DA04(&qword_1006C0158);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C20;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_10020FDAC()
{
  v0 = sub_10015DA04(&qword_1006C0150);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_100020CEC();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10015DA04(&qword_1006C0158);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C20;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_1002100D8()
{
  v0 = sub_10015DA04(&qword_1006C0130);
  v1 = *(v0 - 8);
  v22 = v0;
  v23 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_10015DA04(&qword_1006C0138);
  __chkstk_darwin(v4);
  sub_1000213AC();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x8000000100565150;
  v5._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_10001DB74(&unk_1006BEAD0, type metadata accessor for TableEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x6E69206F666E6920;
  v6._object = 0xEC0000002E746920;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = v22;
  v19 = *(v23 + 8);
  v23 += 8;
  v19(v3, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v8._object = 0x8000000100565170;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x2E6F666E6920;
  v9._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v19;
  v19(v3, v7);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD00000000000001DLL;
  v11._object = 0x8000000100565190;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v3, v22);
  sub_10015DA04(&qword_1006C0140);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100539C40;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_100210544()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DB74(&unk_1006BEAD0, type metadata accessor for TableEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1000213AC();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1002106E4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10021080C(uint64_t a1)
{
  v34 = a1;
  v1 = sub_10015DA04(&qword_1006C0118);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  v5 = sub_10015DA04(&qword_1006C0120);
  __chkstk_darwin(v5);
  sub_1000214CC();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD000000000000025;
  v6._object = 0x8000000100565010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v30 = sub_10001DB74(&qword_1006C18A0, type metadata accessor for TagEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x2E67617420;
  v7._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v2 + 8);
  v31 = v1;
  v8(v4, v1);
  v32 = v2 + 8;
  v33 = v8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000020;
  v9._object = 0x8000000100565040;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x2E67617420;
  v10._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v4, v1);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000015;
  v11._object = 0x8000000100565070;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0xD000000000000018;
  v12._object = 0x8000000100565090;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v33(v4, v31);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001005650B0;
  v13._countAndFlagsBits = 0xD00000000000001DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x2E67617420;
  v14._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v31;
  v16 = v33;
  v33(v4, v31);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._object = 0x80000001005650D0;
  v17._countAndFlagsBits = 0xD00000000000001DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x2E67617420;
  v18._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v4, v15);
  sub_10015DA04(&qword_1006C0128);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100539C20;
  v21 = v28;
  *(v20 + 32) = v29;
  *(v20 + 40) = v21;
  v22 = v26;
  *(v20 + 48) = v27;
  *(v20 + 56) = v22;
  *(v20 + 64) = v19;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_100210E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v15 - v12;
  sub_10021B878(a1, &v15 - v12, a6);
  sub_10021B878(v13, v11, a6);
  IntentParameter.wrappedValue.setter();
  return sub_10021B8E0(v13, a6);
}

uint64_t sub_100210F1C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C18A0, type metadata accessor for TagEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1000214CC();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1002110BC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1002111C8(uint64_t a1)
{
  v39 = type metadata accessor for _AssistantIntent.PhraseToken();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10015DA04(&qword_1006C0100);
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v5 = &v33 - v4;
  v6 = sub_10015DA04(&qword_1006C0108);
  __chkstk_darwin(v6);
  sub_10021B4D0();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100564FA0;
  v7._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v43 = sub_100184E54();
  v40 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x2E65746F6E20;
  v8._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v3 + 8;
  v41 = *(v3 + 8);
  v10 = v44;
  v41(v5, v44);
  v42 = v9;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x72757320656B614DLL;
  v11._object = 0xED000020796D2065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0xD00000000000002BLL;
  v12._object = 0x8000000100564FC0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v41;
  v41(v5, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x20656874206E6950;
  v14._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x2E65746F6E20;
  v15._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v5, v44);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 544106832;
  v16._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 544106784;
  v17._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v36;
  v19 = v37;
  v20 = v39;
  (*(v37 + 104))(v36, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v39);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v19 + 8))(v18, v20);
  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = v44;
  v23 = v41;
  v41(v5, v44);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._object = 0x8000000100564FF0;
  v24._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0x2E65746F6E20;
  v25._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23(v5, v22);
  sub_10015DA04(&qword_1006C0110);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100539C20;
  v29 = v34;
  v28 = v35;
  *(v27 + 32) = v38;
  *(v27 + 40) = v28;
  v30 = v39;
  *(v27 + 48) = v29;
  *(v27 + 56) = v30;
  *(v27 + 64) = v26;
  v31 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v31;
}

uint64_t sub_1002118A0()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100184E54();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B4D0();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C00F8, &type metadata accessor for FavoriteOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100211AC0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100211BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = *(v7 + 16);
  v13(&v15 - v11, a1, v6);
  v13(v10, v12, v6);
  IntentParameter.wrappedValue.setter();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_100211D18(uint64_t a1)
{
  v15[1] = a1;
  v17 = sub_10015DA04(&qword_1006C0100);
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = v15 - v2;
  v4 = sub_10015DA04(&qword_1006C0108);
  __chkstk_darwin(v4);
  sub_10021B4D0();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x8000000100564F20;
  v5._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_100184E54();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x2E65746F6E20;
  v6._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = *(v1 + 8);
  v8 = v17;
  v7(v3, v17);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x796D206E69706E55;
  v9._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x2E65746F6E20;
  v10._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v11 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v3, v8);
  sub_10015DA04(&qword_1006C0110);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100535E30;
  *(v12 + 32) = v16;
  *(v12 + 40) = v11;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_10021205C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100184E54();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B4D0();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C00F8, &type metadata accessor for FavoriteOperation);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_10021227C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E30;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_100212300(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C00E0);
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v4 = &v33 - v3;
  v5 = sub_10015DA04(&qword_1006C00E8);
  __chkstk_darwin(v5);
  sub_100184450();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v6._object = 0x8000000100564E90;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v44 = sub_10001DCF0();
  v38 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x6F72662067617420;
  v7._object = 0xED000020796D206DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v40 = sub_100184E54();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x2E65746F6E20;
  v8._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  v39 = v4;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v42;
  v43 = *(v41 + 8);
  v41 += 8;
  v43(v4, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x20796D206E49;
  v10._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v11._object = 0x8000000100564EB0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x2E67617420;
  v12._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v13 = v39;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v9;
  v15 = v43;
  v43(v13, v14);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x742065766F6D6552;
  v16._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x6F72662067617420;
  v17._object = 0xED000020796D206DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x2E65746F6E20;
  v18._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v39;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15(v19, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x2064697220746547;
  v20._object = 0xEF2065687420666FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x206E692067617420;
  v21._object = 0xEB0000000020796DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0x2E65746F6E20;
  v22._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v42;
  v43(v19, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._object = 0x8000000100564ED0;
  v24._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0x6F72662067617420;
  v25._object = 0xED000020796D206DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0x2E65746F6E20;
  v26._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v43(v19, v23);
  sub_10015DA04(&qword_1006C00F0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100539C20;
  v29 = v36;
  *(v28 + 32) = v37;
  *(v28 + 40) = v29;
  v30 = v34;
  *(v28 + 48) = v35;
  *(v28 + 56) = v30;
  *(v28 + 64) = v27;
  v31 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v31;
}

uint64_t sub_100212B1C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DCF0();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100184450();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_100184E54();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100212D0C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100212E18()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100212F18(uint64_t a1)
{
  v60 = a1;
  v1 = sub_10015DA04(&qword_1006C00C0);
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  __chkstk_darwin(v1);
  v59 = &v46 - v3;
  v4 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&qword_1006C00C8);
  __chkstk_darwin(v8);
  v9 = sub_10021B524();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x6D20656D616E6552;
  v10._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v52 = sub_10001DB74(&qword_1006C5420, type metadata accessor for FolderEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x207265646C6F6620;
  v11._object = 0xEB00000000206E69;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v55 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v12 = *(v5 + 104);
  v56 = v5 + 104;
  v57 = v12;
  v58 = v4;
  (v12)(v7);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v54 = *(v5 + 8);
  v54(v7, v4);
  v53 = v5 + 8;
  v13._countAndFlagsBits = 0xD00000000000001CLL;
  v13._object = 0x8000000100564D60;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v59;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v62;
  v16 = *(v63 + 8);
  v63 += 8;
  v61 = v16;
  v16(v14, v62);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x6D20657461647055;
  v17._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0xD000000000000026;
  v18._object = 0x8000000100564D80;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v58;
  v57(v7, v55, v58);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v54(v7, v19);
  v20._countAndFlagsBits = 46;
  v20._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v21 = v59;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = v9;
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v61(v21, v15);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x6D2065676E616843;
  v22._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0xD000000000000020;
  v23._object = 0x8000000100564DB0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  v46 = v7;
  v24 = v55;
  v26 = v57;
  v25 = v58;
  v57(v7, v55, v58);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v27 = v54;
  v54(v7, v25);
  v28._countAndFlagsBits = 46;
  v28._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  v29 = v59;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v61(v29, v62);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 2125385;
  v30._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  v31 = v46;
  v32 = v58;
  v26(v46, v24, v58);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v27(v31, v32);
  v33._object = 0x8000000100564DE0;
  v33._countAndFlagsBits = 0xD00000000000001ALL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 0xD000000000000030;
  v34._object = 0x8000000100564E00;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  v35 = v59;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v61(v35, v62);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36._countAndFlagsBits = 0x6120657661682049;
  v36._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 0x207265646C6F6620;
  v37._object = 0xEB00000000206E69;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  v38 = v58;
  v57(v31, v55, v58);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v54(v31, v38);
  v39._object = 0x8000000100564E40;
  v39._countAndFlagsBits = 0x1000000000000023;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v61(v35, v62);
  sub_10015DA04(&qword_1006C00D0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100539C20;
  v42 = v49;
  *(v41 + 32) = v50;
  *(v41 + 40) = v42;
  v43 = v47;
  *(v41 + 48) = v48;
  *(v41 + 56) = v43;
  *(v41 + 64) = v40;
  v44 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v44;
}

uint64_t sub_1002137FC()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C5420, type metadata accessor for FolderEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B524();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10001CAF8();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100213A1C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100213B4C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100213C70(uint64_t a1)
{
  v34 = a1;
  v1 = sub_10015DA04(&qword_1006C00A8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  v5 = sub_10015DA04(&qword_1006C00B0);
  __chkstk_darwin(v5);
  sub_10002435C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  v6._object = 0x8000000100564C50;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v33 = sub_10001DB74(&qword_1006C5410, &type metadata accessor for AttributedString);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 46;
  v7._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30 = v1;
  v8 = *(v2 + 8);
  v8(v4, v1);
  v31 = v2 + 8;
  v32 = v8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 543450177;
  v9._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0xD00000000000001DLL;
  v10._object = 0x8000000100564C70;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v4, v1);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000025;
  v11._object = 0x8000000100564C90;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v4, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x206E69206C6C6946;
  v13._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._object = 0x8000000100564CC0;
  v14._countAndFlagsBits = 0xD00000000000001ALL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v30;
  v16 = v32;
  v32(v4, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x20747265736E49;
  v17._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x6874206F746E6920;
  v18._object = 0xEF2E65746F6E2065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v4, v15);
  sub_10015DA04(&qword_1006C00B8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100539C20;
  v21 = v28;
  *(v20 + 32) = v29;
  *(v20 + 40) = v21;
  v22 = v26;
  *(v20 + 48) = v27;
  *(v20 + 56) = v22;
  *(v20 + 64) = v19;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_100214288(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1002143BC()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C5410, &type metadata accessor for AttributedString);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002435C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10021455C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100214680()
{
  v0 = sub_10015DA04(&qword_1006C0090);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - v2;
  v4 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&qword_1006C0098);
  __chkstk_darwin(v8);
  sub_10002170C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x8000000100564AA0;
  v9._countAndFlagsBits = 0xD00000000000001DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  (*(v5 + 104))(v7, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v4);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v5 + 8))(v7, v4);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = *(v1 + 8);
  v11(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v12 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v3, v0);
  sub_10015DA04(&qword_1006C00A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100539C50;
  v17 = v22;
  *(v16 + 32) = v23;
  *(v16 + 40) = v17;
  *(v16 + 48) = v21;
  *(v16 + 56) = v12;
  *(v16 + 64) = v13;
  *(v16 + 72) = v14;
  *(v16 + 80) = v15;
  v18 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v18;
}

uint64_t sub_100214B2C()
{
  v28 = sub_10015DA04(&qword_1006C0078);
  v31 = *(v28 - 8);
  __chkstk_darwin(v28);
  v1 = &v24 - v0;
  v2 = sub_10015DA04(&qword_1006C0080);
  __chkstk_darwin(v2);
  sub_10021B578();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0x6573616572636544;
  v3._object = 0xED00002065687420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  v30 = sub_10001DB74(&unk_1006C0540, type metadata accessor for AttachmentEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v4._object = 0x8000000100564A80;
  v4._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v4);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v31 + 8);
  v31 += 8;
  v24 = v5;
  v6 = v28;
  v5(v1, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x65687420656B614DLL;
  v7._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x6D68636174746120;
  v8._object = 0xEC00000020746E65;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v29 = sub_10021B77C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v6;
  v11 = v24;
  v24(v1, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x2079616C70736944;
  v12._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x736120656C696620;
  v13._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v28;
  v11(v1, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x20747265766E6F43;
  v16._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._object = 0xEF206F7420746E65;
  v17._countAndFlagsBits = 0x6D68636174746120;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x2E657A697320;
  v18._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v1, v15);
  sub_10015DA04(&qword_1006C0088);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100539C30;
  v21 = v26;
  *(v20 + 32) = v27;
  *(v20 + 40) = v21;
  *(v20 + 48) = v25;
  *(v20 + 56) = v19;
  v22 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v22;
}

uint64_t sub_1002151B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v15 - v12;
  sub_10021B878(a1, &v15 - v12, a6);
  sub_10021B878(v13, v11, a6);
  IntentParameter.wrappedValue.setter();
  return sub_10021B8E0(v13, a6);
}

uint64_t sub_100215290()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DB74(&unk_1006C0540, type metadata accessor for AttachmentEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B578();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10021B77C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1002154B0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100539C40;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_100215590()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100539C40;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_100215648()
{
  v0 = sub_10015DA04(&qword_1006C0060);
  v1 = *(v0 - 8);
  v22 = v0;
  v23 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_10015DA04(&qword_1006C0068);
  __chkstk_darwin(v4);
  sub_10021B5CC();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x6874206B63656843;
  v5._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_10021B674();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x2E6D65746920;
  v6._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = v22;
  v19 = *(v23 + 8);
  v23 += 8;
  v19(v3, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x666F206B63656843;
  v8._object = 0xEE00206568742066;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x2E6D65746920;
  v9._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v19;
  v19(v3, v7);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x6863206120646441;
  v11._object = 0xEF206F74206B6365;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v3, v22);
  sub_10015DA04(&qword_1006C0070);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100539C40;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_100215A78()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021B674();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B5CC();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10021B728();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100215C7C(uint64_t a1)
{
  v22 = sub_10015DA04(&qword_1006C0060);
  v24 = *(v22 - 8);
  __chkstk_darwin(v22);
  v3 = &v19 - v2;
  v4 = sub_10015DA04(&qword_1006C0068);
  __chkstk_darwin(v4);
  sub_10021B5CC();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x6874207261656C43;
  v5._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_10021B674();
  v19 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x2E6E6F6974706F20;
  v6._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = *(v24 + 8);
  v23 = v7;
  v24 += 8;
  v8 = v22;
  v20(v3, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x8000000100564A40;
  v9._countAndFlagsBits = 0xD00000000000001ALL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x2E6D65746920;
  v10._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = v20;
  v20(v3, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x206B636568636E55;
  v12._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x2E6D65746920;
  v13._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v3, v8);
  sub_10015DA04(&qword_1006C0070);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100539C40;
  v16 = v21;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v17;
}

uint64_t sub_1002160B8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10021B674();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10021B5CC();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10021B728();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100535E30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1002162A8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100539C20;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1002163E8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E30;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_100216454(uint64_t a1)
{
  v36 = a1;
  v35 = sub_10015DA04(&qword_1006C0030);
  v1 = *(v35 - 8);
  __chkstk_darwin(v35);
  v3 = v28 - v2;
  v4 = sub_10015DA04(&qword_1006C0038);
  __chkstk_darwin(v4);
  sub_10002182C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD000000000000019;
  v5._object = 0x8000000100564940;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v28[1] = sub_10021B620();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v1 + 8;
  v8 = *(v1 + 8);
  v32 = v7;
  v33 = v8;
  v10 = v35;
  v8(v3, v35);
  v34 = v9;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x100000000000002ALL;
  v11._object = 0x8000000100564960;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v33;
  v33(v3, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x206120646441;
  v14._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0xD000000000000020;
  v15._object = 0x8000000100564990;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v3, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x80000001005649C0;
  v16._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v35;
  v19 = v33;
  v33(v3, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._object = 0x80000001005649E0;
  v20._countAndFlagsBits = 0x100000000000001FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v3, v18);
  sub_10015DA04(&qword_1006C0040);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100539C20;
  v24 = v31;
  *(v23 + 32) = v32;
  *(v23 + 40) = v24;
  v25 = v29;
  *(v23 + 48) = v30;
  *(v23 + 56) = v25;
  *(v23 + 64) = v22;
  v26 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v26;
}

uint64_t sub_100216A7C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = type metadata accessor for _AssistantIntent.Value();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  _AssistantIntent.IntentProjection.subscript.getter();

  a4(v10);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v11 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v7 + 8))(v9, v6);
  sub_10015DA04(&qword_1006C0008);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100531E30;
  *(v12 + 32) = v11;
  v13 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_100216BFC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C70;
  *(v9 + 32) = v0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v10 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100216DA8(uint64_t a1)
{
  v34 = a1;
  v1 = sub_10015DA04(&qword_1006C0010);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  v5 = sub_10015DA04(&qword_1006C0018);
  __chkstk_darwin(v5);
  sub_10002194C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x6620686372616553;
  v6._object = 0xEE0020796D20726FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v33 = sub_10001DB74(&qword_1006C0000, &type metadata accessor for StringSearchCriteria);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x2E65746F6E20;
  v7._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30 = v1;
  v8 = *(v2 + 8);
  v8(v4, v1);
  v31 = v2 + 8;
  v32 = v8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  v9._object = 0x80000001005648E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 46;
  v10._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v4, v1);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x8000000100564900;
  v11._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v4, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000018;
  v13._object = 0x8000000100564920;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v30;
  v16 = v32;
  v32(v4, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x20656D20776F6853;
  v17._object = 0xEB0000000020796DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x2E7365746F6E20;
  v18._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v4, v15);
  sub_10015DA04(&qword_1006C0020);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100539C20;
  v21 = v28;
  *(v20 + 32) = v29;
  *(v20 + 40) = v21;
  v22 = v26;
  *(v20 + 48) = v27;
  *(v20 + 56) = v22;
  *(v20 + 64) = v19;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_1002173BC(uint64_t a1)
{
  v2 = type metadata accessor for StringSearchCriteria();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1002174F0()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10001DB74(&qword_1006C0000, &type metadata accessor for StringSearchCriteria);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002194C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10015DA04(&qword_1006C0008);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100217690()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_10021776C()
{
  v19 = type metadata accessor for _AssistantIntent.PhraseToken();
  v0 = *(v19 - 8);
  __chkstk_darwin(v19);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10015DA04(&qword_1006BFFE8);
  __chkstk_darwin(v3);
  v4 = sub_10015DA04(&qword_1006BFFF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  sub_10021B1DC();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v5 + 8);
  v8(v7, v4);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000019;
  v9._object = 0x8000000100564850;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  v10 = v19;
  (*(v0 + 104))(v2, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v19);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v0 + 8))(v2, v10);
  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v12 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v7, v4);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v7, v4);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v7, v4);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v7, v4);
  sub_10015DA04(&qword_1006BFFF8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100539C20;
  *(v16 + 32) = v20;
  *(v16 + 40) = v12;
  *(v16 + 48) = v13;
  *(v16 + 56) = v14;
  *(v16 + 64) = v15;
  v17 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v17;
}

uint64_t sub_100217B90()
{
  v33 = type metadata accessor for _AssistantIntent.PhraseToken();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10015DA04(&qword_1006BFFD0);
  __chkstk_darwin(v3);
  v4 = sub_10015DA04(&qword_1006BFFD8);
  v25 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  sub_100021A6C();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24 = *(v5 + 8);
  v24(v7, v4);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100564790;
  v8._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  v29 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v9 = v0;
  v28 = *(v0 + 104);
  v10 = v33;
  v28(v2);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v11 = *(v9 + 8);
  v26 = v9 + 8;
  v27 = v11;
  v11(v2, v10);
  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v24;
  v13 = v25;
  v24(v7, v25);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v7, v13);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD00000000000001CLL;
  v15._object = 0x80000001005647E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v33;
  (v28)(v2, v29, v33);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v27(v2, v16);
  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v7, v13);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v7, v13);
  sub_10015DA04(&qword_1006BFFE0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100539C20;
  v21 = v31;
  *(v20 + 32) = v32;
  *(v20 + 40) = v21;
  *(v20 + 48) = v30;
  *(v20 + 56) = v18;
  *(v20 + 64) = v19;
  v22 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v22;
}

uint64_t sub_100218058()
{
  v0 = sub_10015DA04(&qword_1006BFFC0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_100021B8C();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10015DA04(&qword_1006BFFC8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100539C20;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100218314()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100539C40;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_1002183E4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100535E30;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_100218494()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E30;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_100218518()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100539C40;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_1002185E8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E30;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_10021866C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100539C30;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_10021876C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100539C40;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_10021883C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10015DA04(&qword_1006BFF58);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E30;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_1002188DC()
{
  FolderIntent = type metadata accessor for CreateFolderIntent();
  __chkstk_darwin(FolderIntent);
  v2 = (&v142 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for _AssistantIntent();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100484054(&TagIntentVACycfC_0);
  sub_10021B230();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v204 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7 = *(v4 + 8);
  v7(v6, v3);
  sub_10048FF60(&TagIntentVACycfC_0);
  sub_10002062C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v203 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_10048FF60(&TagIntentVACycfC_0);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v202 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes09AddTagsToB6IntentVACycfC_0();
  v206 = v8;
  v207 = v9;
  v208 = v10;
  sub_1001D110C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v201 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes18AppendToNoteIntentVACycfC_0();
  v206 = v11;
  v207 = v12;
  sub_1001A6C8C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v200 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_100288A4C(&TagIntentVACycfC_0);
  sub_10002074C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v199 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_100288A4C(&TagIntentVACycfC_0);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v198 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_100288A4C(&TagIntentVACycfC_0);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v197 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_100288A4C(&TagIntentVACycfC_0);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v196 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes29ChangeFolderViewSettingIntentVACycfC_0();
  v206 = v13;
  sub_10002086C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v195 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes29ChangeFolderViewSettingIntentVACycfC_0();
  v206 = v14;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v194 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes29ChangeFolderViewSettingIntentVACycfC_0();
  v206 = v15;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v193 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_10025150C(&TagIntentVACycfC_0);
  sub_1000215EC();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v192 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_10025150C(&TagIntentVACycfC_0);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v191 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_10025150C(&TagIntentVACycfC_0);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v190 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_10025150C(&TagIntentVACycfC_0);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v189 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_10025150C(&TagIntentVACycfC_0);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v188 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes19ChangeSettingIntentVACycfC_0();
  v206 = v16;
  v207 = v17;
  v208 = v18;
  sub_10021B284();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v187 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes19ChangeSettingIntentVACycfC_0();
  v206 = v19;
  v207 = v20;
  v208 = v21;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v186 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes19ChangeSettingIntentVACycfC_0();
  v206 = v22;
  v207 = v23;
  v208 = v24;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v185 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes19ChangeSettingIntentVACycfC_0();
  v206 = v25;
  v207 = v26;
  v208 = v27;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v184 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes19ChangeSettingIntentVACycfC_0();
  v206 = v28;
  v207 = v29;
  v208 = v30;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v183 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes19ChangeSettingIntentVACycfC_0();
  v206 = v31;
  v207 = v32;
  v208 = v33;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v182 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes19ChangeSettingIntentVACycfC_0();
  v206 = v34;
  v207 = v35;
  v208 = v36;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v181 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes19ChangeSettingIntentVACycfC_0();
  v206 = v37;
  v207 = v38;
  v208 = v39;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v180 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes19ChangeSettingIntentVACycfC_0();
  v206 = v40;
  v207 = v41;
  v208 = v42;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v179 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes19ChangeSettingIntentVACycfC_0();
  v206 = v43;
  v207 = v44;
  v208 = v45;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v178 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_1002470C0(&TagIntentVACycfC_0);
  sub_10021B08C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v177 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  CreateFolderIntent.init()(v2);
  sub_10001DB74(&qword_1006C4580, type metadata accessor for CreateFolderIntent);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v176 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_1001E28D0(&TagIntentVACycfC_0);
  sub_100023DE8();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v175 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_100416848(&TagIntentVACycfC_0);
  sub_10021B0E0();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v174 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes15CreateTagIntentVACycfC_0();
  sub_10021B134();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v173 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes23DeleteAttachmentsIntentVACycfC_0();
  v206 = v46;
  v207 = v47;
  sub_10021B2D8();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v172 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes26DeleteChecklistItemsIntentVACycfC_0();
  v206 = v48;
  v207 = v49;
  sub_10019F8A4();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v171 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes19DeleteFoldersIntentVACycfC_0();
  v206 = v50;
  sub_10021B32C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v170 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes06DeleteB6IntentVACycfC_0();
  v206 = v51;
  v207 = v52;
  sub_10021B380();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v169 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes18DeleteTablesIntentVACycfC_0();
  v206 = v53;
  v207 = v54;
  sub_10021B3D4();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v168 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes16DeleteTagsIntentVACycfC_0();
  v206 = v55;
  v207 = v56;
  sub_10002098C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v167 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes09GetLinkedB6IntentVACycfC_0();
  v206 = v57;
  sub_10021B428();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v166 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_100486910(&TagIntentVACycfC_0);
  sub_10021B47C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v164 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_1002D896C(&TagIntentVACycfC_0);
  sub_10021B188();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v165 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_1003E7C38(&TagIntentVACycfC_0);
  sub_100024048();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v163 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_100360898(&TagIntentVACycfC_0);
  sub_100020AAC();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v162 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes17OpenAccountIntentVACycfC_0();
  v206 = v58;
  v207 = v59;
  sub_100020E0C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v161 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes20OpenAttachmentIntentVACycfC_0();
  v206 = v60;
  v207 = v61;
  sub_100020F2C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v160 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes23OpenChecklistItemIntentVACycfC_0();
  v206 = v62;
  v207 = v63;
  sub_10002104C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v159 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes16OpenFolderIntentVACycfC_0();
  v206 = v64;
  v207 = v65;
  sub_10002116C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v158 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes14OpenNoteIntentVACycfC_0();
  v206 = v66;
  v207 = v67;
  sub_10002128C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v157 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes04OpenB10ViewIntentVACycfC_0();
  v206 = v68;
  sub_100020BCC();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v156 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes04OpenB10ViewIntentVACycfC_0();
  v206 = v69;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v155 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes24OpenTopLevelFolderIntentVACycfC_0();
  v206 = v70;
  v207 = v71;
  sub_100020CEC();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v154 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes24OpenTopLevelFolderIntentVACycfC_0();
  v206 = v72;
  v207 = v73;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v153 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes15OpenTableIntentVACycfC_0();
  v206 = v74;
  v207 = v75;
  sub_1000213AC();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v152 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes13OpenTagIntentVACycfC_0();
  v206 = v76;
  sub_1000214CC();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v151 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes03PinB6IntentVACycfC_0();
  v206 = v77;
  v207 = v78;
  v208 = v79;
  sub_10021B4D0();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v150 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes03PinB6IntentVACycfC_0();
  v206 = v80;
  v207 = v81;
  v208 = v82;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v149 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = sub_100184564();
  v206 = v83;
  v207 = v84;
  v208 = v85;
  sub_100184450();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v148 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes18RenameFolderIntentVACycfC_0();
  v206 = v86;
  v207 = v87;
  v208 = v88;
  sub_10021B524();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v147 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes22ReplaceSelectionIntentVACycfC_0();
  v206 = v89;
  v207 = v90;
  sub_10002435C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v146 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes20StartRecordingIntentVACycfC_0();
  v206 = v91;
  sub_10002170C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v145 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes23SetAttachmentSizeIntentVACycfC_0();
  v206 = v92;
  v207 = v93;
  v208 = v94;
  sub_10021B578();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v144 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_1004BDA84(&TagIntentVACycfC_0);
  sub_10021B5CC();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v143 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_1004BDA84(&TagIntentVACycfC_0);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v95 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes23SetParagraphStyleIntentVACycfC_0();
  v206 = v96;
  v207 = v97;
  v208 = v98;
  sub_10002182C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v99 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = sub_1001C7D14();
  sub_10002194C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v100 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  v101 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  v102 = [objc_opt_self() monitorWithConfiguration:v101];

  type metadata accessor for ShowQuickNoteIntent.LayoutMonitorBox();
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  TagIntentVACycfC_0 = v103;
  sub_10021B1DC();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v104 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes20StartRecordingIntentVACycfC_0();
  v206 = v105;
  sub_100021A6C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v106 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  TagIntentVACycfC_0 = _s11MobileNotes20StartRecordingIntentVACycfC_0();
  v206 = v107;
  sub_100021B8C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v108 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7(v6, v3);
  sub_10015DA04(&qword_1006BFFB8);
  v109 = swift_allocObject();
  v110 = v203;
  *(v109 + 32) = v204;
  *(v109 + 40) = v110;
  v111 = v201;
  *(v109 + 48) = v202;
  *(v109 + 56) = v111;
  v112 = v199;
  *(v109 + 64) = v200;
  *(v109 + 72) = v112;
  v113 = v197;
  *(v109 + 80) = v198;
  *(v109 + 88) = v113;
  v114 = v195;
  *(v109 + 96) = v196;
  *(v109 + 104) = v114;
  v115 = v193;
  *(v109 + 112) = v194;
  *(v109 + 120) = v115;
  v116 = v191;
  *(v109 + 128) = v192;
  *(v109 + 136) = v116;
  v117 = v189;
  *(v109 + 144) = v190;
  *(v109 + 152) = v117;
  v118 = v187;
  *(v109 + 160) = v188;
  *(v109 + 168) = v118;
  v119 = v185;
  *(v109 + 176) = v186;
  *(v109 + 184) = v119;
  v120 = v183;
  *(v109 + 192) = v184;
  *(v109 + 200) = v120;
  v121 = v181;
  *(v109 + 208) = v182;
  *(v109 + 216) = v121;
  v122 = v179;
  *(v109 + 224) = v180;
  *(v109 + 232) = v122;
  v123 = v177;
  *(v109 + 240) = v178;
  *(v109 + 248) = v123;
  v124 = v175;
  *(v109 + 256) = v176;
  *(v109 + 264) = v124;
  v125 = v173;
  *(v109 + 272) = v174;
  *(v109 + 280) = v125;
  v126 = v171;
  *(v109 + 288) = v172;
  *(v109 + 296) = v126;
  v127 = v169;
  *(v109 + 304) = v170;
  *(v109 + 312) = v127;
  v128 = v167;
  *(v109 + 320) = v168;
  *(v109 + 328) = v128;
  v129 = v164;
  *(v109 + 336) = v166;
  *(v109 + 344) = v129;
  *(v109 + 16) = xmmword_100539C80;
  v130 = v163;
  *(v109 + 352) = v165;
  *(v109 + 360) = v130;
  v131 = v161;
  *(v109 + 368) = v162;
  *(v109 + 376) = v131;
  v132 = v159;
  *(v109 + 384) = v160;
  *(v109 + 392) = v132;
  v133 = v157;
  *(v109 + 400) = v158;
  *(v109 + 408) = v133;
  v134 = v155;
  *(v109 + 416) = v156;
  *(v109 + 424) = v134;
  v135 = v153;
  *(v109 + 432) = v154;
  *(v109 + 440) = v135;
  v136 = v151;
  *(v109 + 448) = v152;
  *(v109 + 456) = v136;
  v137 = v149;
  *(v109 + 464) = v150;
  *(v109 + 472) = v137;
  v138 = v147;
  *(v109 + 480) = v148;
  *(v109 + 488) = v138;
  v139 = v145;
  *(v109 + 496) = v146;
  *(v109 + 504) = v139;
  *(v109 + 512) = v144;
  *(v109 + 520) = v143;
  *(v109 + 528) = v95;
  *(v109 + 536) = v99;
  *(v109 + 544) = v100;
  *(v109 + 552) = v104;
  *(v109 + 560) = v106;
  *(v109 + 568) = v108;
  v140 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v140;
}

uint64_t sub_10021AC9C()
{
  v0 = type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10021B08C();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v16 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  type metadata accessor for CreateFolderIntent();
  sub_10001DB74(&qword_1006C4580, type metadata accessor for CreateFolderIntent);
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v15 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_100023DE8();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v5 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10021B0E0();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v6 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10021B134();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v7 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10021B188();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v8 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_100024048();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v9 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10021B1DC();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v10 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10015DA04(&qword_1006BFF50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100539C60;
  v12 = v15;
  *(v11 + 32) = v16;
  *(v11 + 40) = v12;
  *(v11 + 48) = v5;
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  *(v11 + 72) = v8;
  *(v11 + 80) = v9;
  *(v11 + 88) = v10;
  v13 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v13;
}

unint64_t sub_10021B08C()
{
  result = qword_1006BFF20;
  if (!qword_1006BFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF20);
  }

  return result;
}

unint64_t sub_10021B0E0()
{
  result = qword_1006BFF28;
  if (!qword_1006BFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF28);
  }

  return result;
}

unint64_t sub_10021B134()
{
  result = qword_1006BFF30;
  if (!qword_1006BFF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF30);
  }

  return result;
}

unint64_t sub_10021B188()
{
  result = qword_1006BFF38;
  if (!qword_1006BFF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF38);
  }

  return result;
}

unint64_t sub_10021B1DC()
{
  result = qword_1006BFF48;
  if (!qword_1006BFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF48);
  }

  return result;
}

unint64_t sub_10021B230()
{
  result = qword_1006BFF60;
  if (!qword_1006BFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF60);
  }

  return result;
}

unint64_t sub_10021B284()
{
  result = qword_1006BFF68;
  if (!qword_1006BFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF68);
  }

  return result;
}

unint64_t sub_10021B2D8()
{
  result = qword_1006BFF70;
  if (!qword_1006BFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF70);
  }

  return result;
}

unint64_t sub_10021B32C()
{
  result = qword_1006BFF78;
  if (!qword_1006BFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF78);
  }

  return result;
}

unint64_t sub_10021B380()
{
  result = qword_1006BFF80;
  if (!qword_1006BFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF80);
  }

  return result;
}

unint64_t sub_10021B3D4()
{
  result = qword_1006BFF88;
  if (!qword_1006BFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF88);
  }

  return result;
}

unint64_t sub_10021B428()
{
  result = qword_1006BFF90;
  if (!qword_1006BFF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF90);
  }

  return result;
}

unint64_t sub_10021B47C()
{
  result = qword_1006BFF98;
  if (!qword_1006BFF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFF98);
  }

  return result;
}

unint64_t sub_10021B4D0()
{
  result = qword_1006BFFA0;
  if (!qword_1006BFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFFA0);
  }

  return result;
}

unint64_t sub_10021B524()
{
  result = qword_1006BFFA8;
  if (!qword_1006BFFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFFA8);
  }

  return result;
}

unint64_t sub_10021B578()
{
  result = qword_1006BFFB0;
  if (!qword_1006BFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFFB0);
  }

  return result;
}

unint64_t sub_10021B5CC()
{
  result = qword_1006CA5B0;
  if (!qword_1006CA5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5B0);
  }

  return result;
}

unint64_t sub_10021B620()
{
  result = qword_1006C0028;
  if (!qword_1006C0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0028);
  }

  return result;
}

unint64_t sub_10021B674()
{
  result = qword_1006C0048;
  if (!qword_1006C0048)
  {
    sub_10017992C(&qword_1006C0050);
    sub_10001DB74(&unk_1006C6120, type metadata accessor for ChecklistItemEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0048);
  }

  return result;
}

unint64_t sub_10021B728()
{
  result = qword_1006C0058;
  if (!qword_1006C0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0058);
  }

  return result;
}

unint64_t sub_10021B77C()
{
  result = qword_1006C6B80;
  if (!qword_1006C6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6B80);
  }

  return result;
}

unint64_t sub_10021B7D0()
{
  result = qword_1006C0148;
  if (!qword_1006C0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0148);
  }

  return result;
}

unint64_t sub_10021B824()
{
  result = qword_1006C0160;
  if (!qword_1006C0160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0160);
  }

  return result;
}

uint64_t sub_10021B878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10021B8E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10021B940()
{
  result = qword_1006C64E0;
  if (!qword_1006C64E0)
  {
    sub_10017992C(&unk_1006BCAC0);
    sub_10001DB74(&qword_1006BE480, type metadata accessor for NoteEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C64E0);
  }

  return result;
}

unint64_t sub_10021B9F4()
{
  result = qword_1006C0280;
  if (!qword_1006C0280)
  {
    sub_10017992C(&qword_1006C0288);
    sub_10001DB74(&unk_1006BEAD0, type metadata accessor for TableEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0280);
  }

  return result;
}

unint64_t sub_10021BAA8()
{
  result = qword_1006C02C0;
  if (!qword_1006C02C0)
  {
    sub_10017992C(&qword_1006BDFF0);
    sub_10001DB74(&qword_1006C5420, type metadata accessor for FolderEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C02C0);
  }

  return result;
}

uint64_t sub_10021BB5C@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10021BBD4()
{
  result = qword_1006C02F8;
  if (!qword_1006C02F8)
  {
    sub_10017992C(&unk_1006C2D90);
    sub_10001DB74(&unk_1006C0540, type metadata accessor for AttachmentEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C02F8);
  }

  return result;
}

uint64_t sub_10021BC88(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10021BD04@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10021BD78()
{
  result = qword_1006C0398;
  if (!qword_1006C0398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0398);
  }

  return result;
}

uint64_t sub_10021BDCC@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10021BE44()
{
  result = qword_1006C03B8;
  if (!qword_1006C03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C03B8);
  }

  return result;
}

unint64_t sub_10021BE98()
{
  result = qword_1006C03F8;
  if (!qword_1006C03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C03F8);
  }

  return result;
}

unint64_t sub_10021BF28()
{
  result = qword_1006C13C0;
  if (!qword_1006C13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C13C0);
  }

  return result;
}

unint64_t sub_10021BF7C()
{
  result = qword_1006C0458;
  if (!qword_1006C0458)
  {
    sub_10017992C(&qword_1006BCE98);
    sub_10001DB74(&qword_1006C0460, &type metadata accessor for IntentFile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0458);
  }

  return result;
}

uint64_t sub_10021C078()
{
  result = _s11MobileNotes23VisibleAttachmentsQueryVACycfC_0();
  static AttachmentEntity.defaultQuery = result;
  *algn_1006EF388 = v1;
  byte_1006EF390 = v2 & 1;
  return result;
}

uint64_t *AttachmentEntity.defaultQuery.unsafeMutableAddressor()
{
  if (qword_1006BC5F8 != -1)
  {
    swift_once();
  }

  return &static AttachmentEntity.defaultQuery;
}

uint64_t static AttachmentEntity.defaultQuery.getter()
{
  if (qword_1006BC5F8 != -1)
  {
    swift_once();
  }

  v0 = static AttachmentEntity.defaultQuery;

  return v0;
}

uint64_t sub_10021C174()
{
  v0 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100025918(v10, static AttachmentEntity.typeDisplayRepresentation);
  sub_10002597C(v10, static AttachmentEntity.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v9 + 56))(v2, 0, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t AttachmentEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1006BC600 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10002597C(v0, static AttachmentEntity.typeDisplayRepresentation);
}

uint64_t static AttachmentEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC600 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10002597C(v2, static AttachmentEntity.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t AttachmentEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttachmentID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AttachmentEntity.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for AttachmentID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AttachmentEntity.managedObjectURI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttachmentEntity() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AttachmentEntity.managedObjectURI.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentEntity() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AttachmentEntity.typeUTI.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttachmentEntity() + 24));

  return v1;
}

uint64_t AttachmentEntity.typeUTI.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AttachmentEntity() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AttachmentEntity.fileURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AttachmentEntity() + 28);

  return sub_10021C8E8(a1, v3);
}

uint64_t sub_10021C8E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BCC20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *AttachmentEntity.noteContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttachmentEntity() + 32));
  v2 = v1;
  return v1;
}

void AttachmentEntity.noteContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentEntity() + 32);

  *(v1 + v3) = a1;
}

uint64_t AttachmentEntity.title.getter()
{
  type metadata accessor for AttachmentEntity();
  EntityProperty.wrappedValue.getter();
  return v1;
}

void (*AttachmentEntity.title.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for AttachmentEntity();
  *(v3 + 32) = EntityProperty.wrappedValue.modify();
  return sub_10017D9E0;
}

uint64_t AttachmentEntity.subtitle.getter()
{
  v1 = sub_10015DA04(&qword_1006C0488);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  if (*(v0 + *(type metadata accessor for AttachmentEntity() + 24) + 8))
  {

    UTType.init(_:)();
    v4 = type metadata accessor for UTType();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1000073B4(v3, &qword_1006C0488);
    }

    else
    {
      v6 = UTType.localizedDescription.getter();
      v8 = v7;
      (*(v5 + 8))(v3, v4);
      if (v8)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t sub_10021CD10@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC5F8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1006EF388;
  v2 = byte_1006EF390;
  *a1 = static AttachmentEntity.defaultQuery;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t sub_10021CD94(uint64_t a1)
{
  v2 = sub_10001CBA4(&qword_1006BCCF0, type metadata accessor for AttachmentEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t AttachmentEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v1 - 8);
  v3 = v18 - v2;
  v4 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  type metadata accessor for AttachmentEntity();
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v19);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringResource.init(stringInterpolation:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = AttachmentEntity.subtitle.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v8 + 56))(v6, 0, 1, v7);
  v16 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_10021D104(uint64_t a1)
{
  v2 = sub_10001CBA4(&qword_1006C0560, type metadata accessor for AttachmentEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t static AttachmentEntity.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = sub_10015DA04(&qword_1006C0490);
  __chkstk_darwin(v25);
  v24 = &v21 - v1;
  v2 = type metadata accessor for UTType();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10015DA04(&qword_1006C0498);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_10015DA04(&qword_1006C04A0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v23 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v22 = &v21 - v11;
  static UTType.pdf.getter();
  v12 = type metadata accessor for AttachmentEntity();
  sub_10001CBA4(&qword_1006C04A8, type metadata accessor for AttachmentEntity);
  v21 = v12;
  FileRepresentation.init(exportedContentType:shouldAllowToOpenInPlace:exporting:)();
  sub_1000060B4(&qword_1006C04B0, &qword_1006C0498);
  TransferRepresentation.exportingCondition(_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  static UTType.item.getter();
  FileRepresentation.init(exportedContentType:shouldAllowToOpenInPlace:exporting:)();
  v14 = v23;
  TransferRepresentation.exportingCondition(_:)();
  v13(v6, v3);
  v15 = v24;
  v16 = *(v25 + 48);
  v17 = *(v8 + 16);
  v18 = v22;
  v17(v24, v22, v7);
  v17(&v15[v16], v14, v7);
  TupleTransferRepresentation.init(_:)();
  v19 = *(v8 + 8);
  v19(v14, v7);
  return (v19)(v18, v7);
}

uint64_t sub_10021D584(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_10021D5A4, 0, 0);
}

uint64_t sub_10021D5A4()
{
  v1 = v0[5];
  v2 = *(v1 + *(type metadata accessor for AttachmentEntity() + 32));
  v0[6] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_10021D74C;
    v5 = v0[4];

    return sub_1001A8D50(v5, v3, sub_10021D928, 0);
  }

  else
  {
    type metadata accessor for ICError(0);
    v0[3] = 235;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_10001CBA4(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10021D74C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10021D8C4;
  }

  else
  {
    v2 = sub_10021D860;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021D860()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021D8C4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021D928@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v21 - v10;
  __chkstk_darwin(v9);
  v13 = v21 - v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v21[0] = a2;
    v16 = objc_opt_self();
    v17 = a1;
    v18 = [v16 generatePDFURLForAttachment:v15];
    if (v18)
    {
      v19 = v18;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 32))(v13, v11, v4);
      (*(v5 + 16))(v8, v13, v4);
      SentTransferredFile.init(_:allowAccessingOriginalFile:)();

      return (*(v5 + 8))(v13, v4);
    }
  }

  type metadata accessor for ICError(0);
  v21[1] = 235;
  sub_1001E27A0(_swiftEmptyArrayStorage);
  sub_10001CBA4(&qword_1006BE4D0, type metadata accessor for ICError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

uint64_t sub_10021DB90(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10015DA04(&qword_1006C06A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100539C30;
  static UTType.pdf.getter();
  v7 = UTType.identifier.getter();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v10;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v11;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  v16 = *(a1 + *(type metadata accessor for AttachmentEntity() + 24));
  v15 = &v16;
  LOBYTE(a1) = sub_100474F78(sub_1002221A4, v14, inited);
  swift_setDeallocating();
  sub_10015DA04(&qword_1006C0318);
  swift_arrayDestroy();
  return a1 & 1;
}

uint64_t sub_10021DD5C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10015DA04(&qword_1006BCC20);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10021DDF8, 0, 0);
}

uint64_t sub_10021DDF8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = type metadata accessor for AttachmentEntity();
  sub_100006038(v1 + *(v3 + 28), v2, &qword_1006BCC20);
  v4 = type metadata accessor for URL();
  result = (*(*(v4 - 8) + 48))(v2, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    SentTransferredFile.init(_:allowAccessingOriginalFile:)();

    v6 = v0[1];

    return v6();
  }

  return result;
}

BOOL sub_10021DEE4(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AttachmentEntity();
  sub_100006038(a1 + *(v5 + 28), v4, &qword_1006BCC20);
  v6 = type metadata accessor for URL();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000073B4(v4, &qword_1006BCC20);
  return v7;
}

uint64_t sub_10021DFE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v3 = sub_10015DA04(&qword_1006BCC20);
  v4 = __chkstk_darwin(v3 - 8);
  v58 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v52 = &v49 - v7;
  __chkstk_darwin(v6);
  v51 = &v49 - v8;
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for AttachmentEntity();
  v17 = (a2 + v16[6]);
  *v17 = 0;
  v17[1] = 0;
  v54 = v17;
  v18 = v16[7];
  v19 = type metadata accessor for URL();
  v50 = *(v19 - 8);
  v20 = *(v50 + 56);
  v56 = v19;
  v57 = v18;
  v55 = v50 + 56;
  v59 = v20;
  (v20)(a2 + v18, 1, 1);
  *(a2 + v16[8]) = 0;
  v21 = v16[9];
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *(a2 + v21) = EntityProperty<>.init(title:)();
  v22 = v53;
  sub_10021EAFC(v53);
  v23 = [v22 objectID];
  v24 = [v23 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = [v22 title];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = v58;
    v31 = v56;
  }

  else
  {
    v33 = v50;
    v32 = v51;
    v34 = v52;
    v35 = [v22 fileURL];
    if (v35)
    {
      v36 = v35;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v30 = v58;
    v31 = v56;
    v59(v34, v37, 1, v56);
    sub_10000CA08(v34, v32);
    if ((*(v33 + 48))(v32, 1, v31) == 1)
    {
      sub_1000073B4(v32, &qword_1006BCC20);
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    else
    {
      v27 = URL.lastPathComponent.getter();
      v29 = v38;
      (*(v33 + 8))(v32, v31);
    }
  }

  v60 = v27;
  v61 = v29;
  EntityProperty.wrappedValue.setter();
  v39 = [v22 typeUTI];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = v54;
  *v54 = v41;
  v44[1] = v43;
  v45 = [v22 fileURL];
  if (v45)
  {
    v46 = v45;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = 0;
    v22 = v46;
  }

  else
  {
    v47 = 1;
  }

  v59(v30, v47, 1, v31);
  return sub_10021C8E8(v30, a2 + v57);
}

uint64_t AttachmentEntity.init<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v3 = sub_10015DA04(&qword_1006BCC20);
  v4 = __chkstk_darwin(v3 - 8);
  v58 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v52 = &v49 - v7;
  __chkstk_darwin(v6);
  v51 = &v49 - v8;
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for AttachmentEntity();
  v17 = (a2 + v16[6]);
  *v17 = 0;
  v17[1] = 0;
  v54 = v17;
  v18 = v16[7];
  v19 = type metadata accessor for URL();
  v50 = *(v19 - 8);
  v20 = *(v50 + 56);
  v56 = v19;
  v57 = v18;
  v55 = v50 + 56;
  v59 = v20;
  (v20)(a2 + v18, 1, 1);
  *(a2 + v16[8]) = 0;
  v21 = v16[9];
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *(a2 + v21) = EntityProperty<>.init(title:)();
  v22 = v53;
  static AttachmentEntity.identifier<A>(for:)(v53);
  v23 = [v22 objectID];
  v24 = [v23 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = [v22 title];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = v58;
    v31 = v56;
  }

  else
  {
    v33 = v50;
    v32 = v51;
    v34 = v52;
    v35 = [v22 fileURL];
    if (v35)
    {
      v36 = v35;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v30 = v58;
    v31 = v56;
    v59(v34, v37, 1, v56);
    sub_10000CA08(v34, v32);
    if ((*(v33 + 48))(v32, 1, v31) == 1)
    {
      sub_1000073B4(v32, &qword_1006BCC20);
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    else
    {
      v27 = URL.lastPathComponent.getter();
      v29 = v38;
      (*(v33 + 8))(v32, v31);
    }
  }

  v60 = v27;
  v61 = v29;
  EntityProperty.wrappedValue.setter();
  v39 = [v22 typeUTI];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = v54;
  *v54 = v41;
  v44[1] = v43;
  v45 = [v22 fileURL];
  if (v45)
  {
    v46 = v45;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = 0;
    v22 = v46;
  }

  else
  {
    v47 = 1;
  }

  v59(v30, v47, 1, v31);
  return sub_10021C8E8(v30, a2 + v57);
}

void sub_10021EAFC(void *a1)
{
  v2 = sub_10015DA04(&qword_1006BEA90);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v24 - v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = enum case for ManagedEntityContextType.modern(_:);
    v11 = type metadata accessor for ManagedEntityContextType();
    v12 = *(v11 - 8);
    (*(v12 + 104))(v7, v10, v11);
    (*(v12 + 56))(v7, 0, 1, v11);
    v13 = a1;
    v14 = [v9 identifier];
    if (v14)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v24[3] = &OBJC_PROTOCOL___ICLegacyAttachment;
  v15 = swift_dynamicCastObjCProtocolConditional();
  if (v15)
  {
    v16 = v15;
    v17 = enum case for ManagedEntityContextType.html(_:);
    v18 = type metadata accessor for ManagedEntityContextType();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v5, v17, v18);
    (*(v19 + 56))(v5, 0, 1, v18);
    v20 = a1;
    v14 = [v16 contentID];
    if (v14)
    {
LABEL_6:
      v21 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

LABEL_7:
    AttachmentID.init(contextType:managedIdentifier:)();

    return;
  }

  v24[1] = 0;
  v24[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v22._object = 0x8000000100567A00;
  v22._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v22);
  sub_10015DA04(&qword_1006C0698);
  v23._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v23);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void static AttachmentEntity.identifier<A>(for:)(void *a1)
{
  v2 = sub_10015DA04(&qword_1006BEA90);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v24 - v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = enum case for ManagedEntityContextType.modern(_:);
    v11 = type metadata accessor for ManagedEntityContextType();
    v12 = *(v11 - 8);
    (*(v12 + 104))(v7, v10, v11);
    (*(v12 + 56))(v7, 0, 1, v11);
    v13 = a1;
    v14 = [v9 identifier];
    if (v14)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v24[3] = &OBJC_PROTOCOL___ICLegacyAttachment;
  v15 = swift_dynamicCastObjCProtocolConditional();
  if (v15)
  {
    v16 = v15;
    v17 = enum case for ManagedEntityContextType.html(_:);
    v18 = type metadata accessor for ManagedEntityContextType();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v5, v17, v18);
    (*(v19 + 56))(v5, 0, 1, v18);
    v20 = a1;
    v14 = [v16 contentID];
    if (v14)
    {
LABEL_6:
      v21 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

LABEL_7:
    AttachmentID.init(contextType:managedIdentifier:)();

    return;
  }

  v24[1] = 0;
  v24[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v22._object = 0x8000000100567A00;
  v22._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v22);
  swift_getObjectType();
  v23._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v23);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t AttachmentEntity.init(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for AttachmentEntity();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[12] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v3[13] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10021F368, 0, 0);
}

uint64_t sub_10021F368()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v29 = *(v0 + 72);
  v3 = *(v0 + 40);
  v28 = *(v0 + 32);
  v4 = *(v0 + 16);
  v25 = *(v0 + 56);
  v26 = *(v0 + 24);
  v5 = (v4 + v3[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v3[7];
  *(v0 + 160) = v6;
  v23 = type metadata accessor for URL();
  v24 = *(*(v23 - 8) + 56);
  v24(v4 + v6, 1, 1, v23);
  *(v4 + v3[8]) = 0;
  v7 = v3[9];
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v2 + 104);
  v22(v1);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v8 = EntityProperty<>.init(title:)();
  *(v0 + 120) = v8;
  *(v4 + v7) = v8;
  v9 = (v25 + v3[6]);
  *v9 = 0;
  v9[1] = 0;
  v10 = v3[7];
  *(v0 + 164) = v10;
  v27 = v26;
  v11 = v28;
  v24(v25 + v10, 1, 1, v23);
  *(v25 + v3[8]) = 0;
  v12 = v3[9];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v22)(v1, v21, v29);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v13 = EntityProperty<>.init(title:)();
  *(v0 + 128) = v13;
  *(v25 + v12) = v13;
  v14 = swift_allocObject();
  *(v0 + 136) = v14;
  *(v14 + 16) = v11;
  *(v14 + 24) = v27;
  v15 = v27;
  v16 = v11;
  v17 = swift_task_alloc();
  *(v0 + 144) = v17;
  *v17 = v0;
  v17[1] = sub_10021F66C;
  v19 = *(v0 + 40);
  v18 = *(v0 + 48);

  return NSManagedObjectContext.perform<A>(_:)(v18, sub_100192698, v14, v19);
}

uint64_t sub_10021F66C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10021F8E0;
  }

  else
  {

    v2 = sub_10021F788;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021F788()
{
  v1 = *(v0 + 164);
  v10 = *(v0 + 160);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  sub_1000073B4(v2 + v1, &qword_1006BCC20);

  sub_100220198(v4, v2);
  sub_100220198(v2, v3);

  sub_1000073B4(v7 + v10, &qword_1006BCC20);

  sub_100220198(v3, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10021F8E0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 164);
  v3 = *(v0 + 56);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  sub_1000073B4(v3 + v2, &qword_1006BCC20);

  sub_1000073B4(v6 + v1, &qword_1006BCC20);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t AttachmentEntity.init(for:in:includeContents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for AttachmentEntity();
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[10] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v3[11] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10021FB98, 0, 0);
}

uint64_t sub_10021FB98()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v18 = *(v0 + 32);
  v19 = *(v0 + 24);
  v6 = (v5 + v4[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v4[7];
  *(v0 + 136) = v7;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(v5 + v7, 1, 1, v8);
  *(v5 + v4[8]) = 0;
  v9 = v4[9];
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v10 = EntityProperty<>.init(title:)();
  *(v0 + 104) = v10;
  *(v5 + v9) = v10;
  v11 = swift_allocObject();
  *(v0 + 112) = v11;
  *(v11 + 16) = v18;
  *(v11 + 24) = v19;
  v12 = v18;
  v13 = v19;
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_10021FDAC;
  v16 = *(v0 + 40);
  v15 = *(v0 + 48);

  return NSManagedObjectContext.perform<A>(_:)(v15, sub_1002221C4, v11, v16);
}

uint64_t sub_10021FDAC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10021FFBC;
  }

  else
  {

    v2 = sub_10021FEC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021FEC8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);

  sub_1000073B4(v4 + v1, &qword_1006BCC20);

  sub_100220198(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10021FFBC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);

  sub_1000073B4(v3 + v1, &qword_1006BCC20);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002200B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v10];
  v5 = v10[0];
  if (v4)
  {
    v10[1] = &OBJC_PROTOCOL___ICAttachmentObject;
    v6 = swift_dynamicCastObjCProtocolUnconditional();
    v7 = v5;
    return sub_10021DFE4(v6, a3);
  }

  else
  {
    v9 = v10[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_100220198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AttachmentEntity.init(for:in:includeContents:noteContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = type metadata accessor for AttachmentEntity();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  type metadata accessor for Locale();
  v5[13] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v5[14] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10022038C, 0, 0);
}

uint64_t sub_10022038C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v30 = *(v0 + 80);
  v3 = *(v0 + 48);
  v29 = *(v0 + 32);
  v26 = *(v0 + 64);
  v27 = *(v0 + 24);
  v4 = *(v0 + 16);
  v5 = (v4 + v3[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v3[7];
  *(v0 + 168) = v6;
  v24 = type metadata accessor for URL();
  v25 = *(*(v24 - 8) + 56);
  v25(v4 + v6, 1, 1, v24);
  v7 = v3[8];
  *(v0 + 172) = v7;
  *(v4 + v7) = 0;
  v8 = v3[9];
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v2 + 104);
  v23(v1);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v9 = EntityProperty<>.init(title:)();
  *(v0 + 128) = v9;
  *(v4 + v8) = v9;
  v10 = (v26 + v3[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = v3[7];
  *(v0 + 176) = v11;
  v28 = v27;
  v12 = v29;
  v25(v26 + v11, 1, 1, v24);
  *(v26 + v3[8]) = 0;
  v13 = v3[9];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v23)(v1, v22, v30);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v14 = EntityProperty<>.init(title:)();
  *(v0 + 136) = v14;
  *(v26 + v13) = v14;
  v15 = swift_allocObject();
  *(v0 + 144) = v15;
  *(v15 + 16) = v12;
  *(v15 + 24) = v28;
  v16 = v28;
  v17 = v12;
  v18 = swift_task_alloc();
  *(v0 + 152) = v18;
  *v18 = v0;
  v18[1] = sub_100220698;
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);

  return NSManagedObjectContext.perform<A>(_:)(v19, sub_1002221C4, v15, v20);
}

uint64_t sub_100220698()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100220920;
  }

  else
  {

    v2 = sub_1002207B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002207B4()
{
  v1 = *(v0 + 172);
  v2 = *(v0 + 176);
  v11 = *(v0 + 168);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v12 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  sub_1000073B4(v3 + v2, &qword_1006BCC20);

  sub_100220198(v5, v3);
  sub_100220198(v3, v4);

  sub_1000073B4(v7 + v11, &qword_1006BCC20);

  sub_100220198(v4, v7);

  *(v7 + v1) = v12;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100220920()
{
  v1 = *(v0 + 176);
  v9 = *(v0 + 168);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  sub_1000073B4(v2 + v1, &qword_1006BCC20);

  sub_1000073B4(v5 + v9, &qword_1006BCC20);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t static AttachmentEntity.managedObjectID(for:in:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001B70EC;

  return (sub_100221300)(a1, a2);
}

void sub_100220B20(uint64_t a1@<X1>, void *a2@<X8>)
{
  AttachmentID.managedIdentifier.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() attachmentWithIdentifier:v4 context:a1];

  if (v5)
  {
    v6 = [v5 objectID];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_100220BD8(void *a1@<X0>, void *a2@<X8>)
{
  AttachmentID.managedIdentifier.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [a1 legacyAttachmentWithIdentifier:v4];

  if (!v5)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = [v6 objectID];
  swift_unknownObjectRelease();
LABEL_6:
  *a2 = v7;
}

uint64_t sub_100220CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000A1FC;

  return AttachmentEntity.init(for:in:)(a1, a2, a3);
}

uint64_t sub_100220D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000A1FC;

  return AttachmentEntity.init(for:in:includeContents:)(a1, a2, a3);
}

uint64_t sub_100220E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10000A600;

  return AttachmentEntity.init(for:in:includeContents:noteContext:)(a1, a2, a3, 0, a5);
}

uint64_t sub_100220EC8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001B75E8;

  return (sub_100221300)(a1, a2);
}

uint64_t sub_100220F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10015DA04(&qword_1006BEA90);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  sub_100006038(a1, &v16 - v7, &qword_1006BEA90);
  v9 = type metadata accessor for ManagedEntityContextType();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1 || (v11 = (*(v10 + 88))(v8, v9), v11 == enum case for ManagedEntityContextType.modern(_:)))
  {
    (*(a3 + 24))(a2, a3);
    a3 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    a2 = v12;

    if (a2)
    {
      return a3;
    }

    __break(1u);
  }

  if (v11 == enum case for ManagedEntityContextType.html(_:))
  {
    (*(a3 + 32))(a2, a3);
    a3 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    v14 = v13;

    if (v14)
    {
      return a3;
    }

    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10022115C@<X0>(char *a1@<X8>)
{
  sub_10015DA04(&qword_1006C0688);
  EntityQuerySort.by.getter();
  EntityQuerySort.order.getter();
  type metadata accessor for AttachmentEntity();
  sub_10001CBA4(&qword_1006BCCF0, type metadata accessor for AttachmentEntity);
  v2 = static EntityQuerySort.Ordering.== infix(_:_:)();
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C0690);
  v3 = dispatch thunk of static Equatable.== infix(_:_:)();

  v5 = (v2 & 1) == 0;
  if ((v3 & 1) == 0)
  {
    v5 = 2;
  }

  *a1 = v5;
  return result;
}

BOOL sub_10022128C(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  return result;
}

uint64_t sub_100221300(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for AttachmentID();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v2[11] = *(v5 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_10015DA04(&qword_1006BEA90);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100221474, 0, 0);
}

uint64_t sub_100221474()
{
  v57 = v0;
  v1 = *(v0 + 120);
  AttachmentID.contextType.getter();
  v2 = type metadata accessor for ManagedEntityContextType();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    goto LABEL_2;
  }

  v26 = *(v0 + 112);
  sub_100006038(*(v0 + 120), v26, &qword_1006BEA90);
  v27 = (*(v3 + 88))(v26, v2);
  if (v27 == enum case for ManagedEntityContextType.modern(_:))
  {
    v28 = *(v0 + 104);
    v30 = *(v0 + 80);
    v29 = *(v0 + 88);
    v31 = *(v0 + 72);
    v32 = *(v0 + 32);
    v33 = [*(v0 + 40) modernManagedObjectContext];
    *(v0 + 128) = v33;
    (*(v30 + 16))(v28, v32, v31);
    v34 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v35 = swift_allocObject();
    *(v0 + 136) = v35;
    (*(v30 + 32))(v35 + v34, v28, v31);
    *(v35 + ((v29 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
    v33;
    v36 = swift_task_alloc();
    *(v0 + 144) = v36;
    v37 = sub_10015DA04(&unk_1006BFED0);
    *v36 = v0;
    v36[1] = sub_100221AC8;
    v38 = sub_10022210C;
    v39 = v0 + 24;
    v40 = v35;
  }

  else
  {
    if (v27 != enum case for ManagedEntityContextType.html(_:))
    {
      (*(v3 + 8))(*(v0 + 112), v2);
LABEL_2:
      v4 = *(v0 + 40);
      sub_1000073B4(*(v0 + 120), &qword_1006BEA90);
      AttachmentID.managedIdentifier.getter();
      v5 = String._bridgeToObjectiveC()();

      v6 = [v4 managedObjectIDForURIString:v5];

      if (v6)
      {
LABEL_16:

        v51 = *(v0 + 8);

        return v51(v6);
      }

      v7 = *(v0 + 96);
      v8 = *(v0 + 72);
      v9 = *(v0 + 80);
      v10 = *(v0 + 32);
      static Logger.link.getter();
      (*(v9 + 16))(v7, v10, v8);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 96);
      v16 = *(v0 + 72);
      v15 = *(v0 + 80);
      v18 = *(v0 + 56);
      v17 = *(v0 + 64);
      v19 = *(v0 + 48);
      if (v13)
      {
        v55 = *(v0 + 48);
        v20 = swift_slowAlloc();
        v53 = v12;
        v21 = swift_slowAlloc();
        v56 = v21;
        *v20 = 136315138;
        sub_10001CBA4(&unk_1006BE560, &type metadata accessor for AttachmentID);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v17;
        v24 = v23;
        (*(v15 + 8))(v14, v16);
        v25 = sub_100009D88(v22, v24, &v56);

        *(v20 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v11, v53, "AttachmentEntity: Unable to resolve managed object ID for entity ID: %s", v20, 0xCu);
        sub_100009F60(v21);

        (*(v18 + 8))(v54, v55);
      }

      else
      {

        (*(v15 + 8))(v14, v16);
        (*(v18 + 8))(v17, v19);
      }

LABEL_15:
      v6 = 0;
      goto LABEL_16;
    }

    v41 = [*(v0 + 40) htmlManagedObjectContext];
    *(v0 + 152) = v41;
    if (!v41)
    {
      sub_1000073B4(*(v0 + 120), &qword_1006BEA90);
      goto LABEL_15;
    }

    v42 = v41;
    v43 = *(v0 + 104);
    v44 = *(v0 + 80);
    v45 = *(v0 + 72);
    v46 = *(v0 + 40);
    (*(v44 + 16))(v43, *(v0 + 32), v45);
    v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
    v48 = swift_allocObject();
    *(v0 + 160) = v48;
    *(v48 + 16) = v46;
    (*(v44 + 32))(v48 + v47, v43, v45);
    v42;
    v49 = v46;
    v50 = swift_task_alloc();
    *(v0 + 168) = v50;
    v37 = sub_10015DA04(&unk_1006BFED0);
    *v50 = v0;
    v50[1] = sub_100221CC4;
    v38 = sub_10022209C;
    v39 = v0 + 16;
    v40 = v48;
  }

  return NSManagedObjectContext.perform<A>(_:)(v39, v38, v40, v37);
}

uint64_t sub_100221AC8()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100221C04, 0, 0);
  }
}

uint64_t sub_100221C04()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 24);
  sub_1000073B4(v1, &qword_1006BEA90);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100221CC4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 152);

    return _swift_task_switch(sub_100221E04, 0, 0);
  }
}

uint64_t sub_100221E04()
{
  v1 = *(v0 + 16);
  sub_1000073B4(*(v0 + 120), &qword_1006BEA90);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100221F6C(uint64_t a1)
{
  result = sub_10001CBA4(&qword_1006BCCF0, type metadata accessor for AttachmentEntity);
  *(a1 + 8) = result;
  return result;
}

void sub_100221FEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100222040()
{
  result = qword_1006C4660;
  if (!qword_1006C4660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C4660);
  }

  return result;
}

uint64_t sub_100222270()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static CreateTagIntent.title);
  sub_10002597C(v6, static CreateTagIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t CreateTagIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC608 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static CreateTagIntent.title);
}

uint64_t static CreateTagIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC608 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static CreateTagIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateTagIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static CreateTagIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C06A8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C06B0);
  __chkstk_darwin(v1);
  sub_10021B134();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x6120657461657243;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C06B8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 1734439968;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*CreateTagIntent.name.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t CreateTagIntent.perform()(uint64_t a1, uint64_t a2)
{
  v2[38] = a1;
  v2[39] = a2;
  sub_10015DA04(&unk_1006BE0D0);
  v2[40] = swift_task_alloc();
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[44] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[45] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringResource();
  v2[46] = v4;
  v2[47] = *(v4 - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = type metadata accessor for TagEntity();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v5 = type metadata accessor for CharacterSet();
  v2[55] = v5;
  v2[56] = *(v5 - 8);
  v2[57] = swift_task_alloc();

  return _swift_task_switch(sub_100222CD8, 0, 0);
}

uint64_t sub_100222CD8()
{
  v1 = [objc_opt_self() defaultAccount];
  *(v0 + 464) = v1;
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = [v5 managedObjectContext];
      *(v0 + 472) = v6;
      if (v6)
      {
        v53 = v6;
        v54 = v5;
        IntentParameter.wrappedValue.getter();
        v7 = *(v0 + 184);
        if (v7)
        {
          v8 = *(v0 + 448);
          v9 = *(v0 + 456);
          v10 = *(v0 + 440);
          *(v0 + 192) = *(v0 + 176);
          *(v0 + 200) = v7;
          static CharacterSet.whitespacesAndNewlines.getter();
          v11 = sub_10019E0AC();
          StringProtocol.trimmingCharacters(in:)();
          v12 = *(v8 + 8);
          v12(v9, v10);

          v13 = String._bridgeToObjectiveC()();

          v14 = [v13 ic_withoutHashtagPrefix];

          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          v18 = HIBYTE(v17) & 0xF;
          if ((v17 & 0x2000000000000000) == 0)
          {
            v18 = v15 & 0xFFFFFFFFFFFFLL;
          }

          if (v18)
          {
            v19 = *(v0 + 456);
            v20 = *(v0 + 440);
            *(v0 + 208) = v15;
            *(v0 + 216) = v17;
            strcpy((v0 + 224), "[\\p{C}\\p{Z}]+");
            *(v0 + 238) = -4864;
            *(v0 + 240) = 45;
            *(v0 + 248) = 0xE100000000000000;
            StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

            v21 = [objc_opt_self() ic_hashtagAllowedCharacterSet];
            static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

            v22 = String.removingCharacters(notContainedIn:)();
            v24 = v23;

            v12(v19, v20);
            v25 = swift_allocObject();
            *(v0 + 480) = v25;
            v25[2] = v22;
            v25[3] = v24;
            v25[4] = v4;
            v25[5] = v53;
            v26 = v54;
            v53;
            v27 = swift_task_alloc();
            *(v0 + 488) = v27;
            *v27 = v0;
            v27[1] = sub_1002235DC;
            v28 = *(v0 + 432);
            v29 = *(v0 + 400);

            return NSManagedObjectContext.perform<A>(_:)(v28, sub_10022464C, v25, v29);
          }
        }

        v43 = *(v0 + 384);
        v42 = *(v0 + 392);
        v51 = *(v0 + 376);
        v52 = *(v0 + 368);
        v44 = *(v0 + 336);
        v45 = *(v0 + 344);
        v46 = *(v0 + 320);
        v47 = *(v0 + 328);
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        (*(v44 + 104))(v45, enum case for LocalizedStringResource.BundleDescription.main(_:), v47);
        LocalizedStringResource.init(_:table:locale:bundle:comment:)();
        IntentParameter.projectedValue.getter();
        (*(v51 + 16))(v43, v42, v52);
        IntentDialog.init(_:)();
        v48 = type metadata accessor for IntentDialog();
        (*(*(v48 - 8) + 56))(v46, 0, 1, v48);
        type metadata accessor for AppIntentError();
        sub_10022470C(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
        swift_allocError();
        IntentParameter.needsValueError(_:)();

        sub_1000073B4(v46, &unk_1006BE0D0);
        swift_willThrow();

        (*(v51 + 8))(v42, v52);
      }

      else
      {

        type metadata accessor for ICError(0);
        *(v0 + 296) = 225;
        sub_10015DA04(&qword_1006BFBE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100531E30;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v41;
        *(inited + 48) = 0xD000000000000035;
        *(inited + 56) = 0x8000000100567B40;
        sub_10018F334(inited);
        swift_setDeallocating();
        sub_1000073B4(inited + 32, &unk_1006BFA10);
        sub_10022470C(&qword_1006BE4D0, type metadata accessor for ICError);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
      }
    }

    else
    {
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      v39 = v2;
      sub_10022447C(v38);

      swift_willThrow();
    }
  }

  else
  {
    ICInternalSettingsIsAppleAccountBrandingEnabled();
    v30 = [objc_opt_self() mainBundle];
    v31 = String._bridgeToObjectiveC()();
    v32 = [v30 localizedStringForKey:v31 value:0 table:0];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    type metadata accessor for ICError(0);
    *(v0 + 280) = 203;
    sub_10015DA04(&qword_1006BFBE0);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_100531E30;
    *(v36 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v36 + 72) = &type metadata for String;
    *(v36 + 40) = v37;
    *(v36 + 48) = v33;
    *(v36 + 56) = v35;
    sub_10018F334(v36);
    swift_setDeallocating();
    sub_1000073B4(v36 + 32, &unk_1006BFA10);
    sub_10022470C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1002235DC()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {

    v3 = sub_100223908;
  }

  else
  {

    v3 = sub_100223724;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100223724()
{
  v1 = v0[58];
  v11 = v0[59];
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[51];
  v5 = v0[52];
  sub_10018F484(v3, v2);
  v6 = _s11MobileNotes13OpenTagIntentVACycfC_0();
  v8 = v7;
  sub_10018F484(v2, v5);
  sub_10018F484(v5, v4);
  IntentParameter.wrappedValue.setter();
  sub_10018F4E8(v5);
  sub_10018F4E8(v2);
  v0[32] = v6;
  v0[33] = v8;
  sub_10022470C(&qword_1006C18A0, type metadata accessor for TagEntity);
  sub_1000214CC();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_10018F4E8(v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100223908()
{
  v1 = *(v0 + 472);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100223A08(uint64_t a1@<X2>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() hashtagWithDisplayText:v6 account:a1 createIfNecessary:1];

  if (v7)
  {
    v18 = 0;
    if ([a2 save:&v18])
    {
      v8 = v18;
      TagEntity.init(_:)(v7, a3);
    }

    else
    {
      v17 = v18;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for ICError(0);
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v10;
    v11 = [objc_opt_self() mainBundle];
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 localizedStringForKey:v12 value:0 table:0];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v14;
    *(inited + 56) = v16;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1000073B4(inited + 32, &unk_1006BFA10);
    sub_10022470C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t (*sub_100223C90(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t sub_100223D04()
{
  v0 = sub_10015DA04(&qword_1006C06A8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C06B0);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x6120657461657243;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C06B8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 1734439968;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100223EA4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A600;

  return CreateTagIntent.perform()(a1, v4);
}

uint64_t sub_100223F44@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes15CreateTagIntentVACycfC_0();
  *a1 = result;
  return result;
}

uint64_t _s11MobileNotes15CreateTagIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v3;
  v4 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

id sub_10022447C(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    type metadata accessor for ICError(0);
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v5;
    _StringGuts.grow(_:)(93);
    v6._object = 0x8000000100567BF0;
    v6._countAndFlagsBits = 0xD00000000000005BLL;
    String.append(_:)(v6);
    swift_getObjectType();
    v7._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v7);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    sub_1001E27A0(inited);
    swift_setDeallocating();
    sub_1000073B4(inited + 32, &unk_1006BFA10);
    sub_10022470C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_beginAccess();
    v8 = *v2;
    *v2 = 0;
    v3 = 0;

    v1 = 0;
  }

  v9 = v1;
  return v3;
}

unint64_t sub_100224670()
{
  result = qword_1006C06C0;
  if (!qword_1006C06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C06C0);
  }

  return result;
}

uint64_t sub_10022470C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10022475C()
{
  result = qword_1006C06C8;
  if (!qword_1006C06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C06C8);
  }

  return result;
}

unint64_t sub_1002247B4()
{
  result = qword_1006C06D0;
  if (!qword_1006C06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C06D0);
  }

  return result;
}

void sub_100224868(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C1730);
    sub_100005B0C(&qword_1006C0750, &qword_1006C1730);
    Set.Iterator.init(_cocoa:)();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
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

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000054A4(0, &qword_1006C1730), swift_dynamicCast(), (v11 = v13) == 0))
    {
LABEL_22:
      sub_10019E530();
      return;
    }

LABEL_17:
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12 && ([v12 ic_isHashtagType] & 1) != 0)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
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
      goto LABEL_22;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_100224B4C(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___ICFolderListSelectionValidator_modernContext] = a1;
  *&v11[OBJC_IVAR___ICFolderListSelectionValidator_htmlContext] = a2;
  v11[OBJC_IVAR___ICFolderListSelectionValidator_hidesSystemPaperNotesInCustomFolders] = a3;
  v11[OBJC_IVAR___ICFolderListSelectionValidator_hidesMathNotesInCustomFolders] = a4;
  v11[OBJC_IVAR___ICFolderListSelectionValidator_hidesCallNotesInCustomFolders] = a5;
  v13.receiver = v11;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t sub_100225028(void *a1, id a2)
{
  v4 = [a2 type];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    v11 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        __chkstk_darwin(v12);
        v13 = a1;
        NSManagedObjectContext.performAndWait<A>(_:)();

        v11 = v21;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v14 = a1;
          v15 = [a2 type];
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;
          if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
          {
            v11 = 1;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }
        }

        else
        {
          v11 = 0;
        }
      }
    }
  }

  return v11 & 1;
}

void sub_10022533C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *(a1 + OBJC_IVAR___ICFolderListSelectionValidator_modernContext);
  v8 = objc_allocWithZone(type metadata accessor for ICQueryResultsController());
  v9 = v7;
  v10 = a2;
  v11 = ICQueryResultsController.init(managedObjectContext:query:)();
  v12 = ICQueryResultsController.performFetch()();
  v13 = [a3 objectID];
  LOBYTE(v7) = sub_10033AC4C(v13, v12);

  *a4 = v7 & 1;
}

id sub_100225400(int a1, id a2)
{
  v3 = [a2 ic_isLegacyFolderType];
  if (v3)
  {
    __chkstk_darwin(v3);
    NSManagedObjectContext.performAndWait<A>(_:)();
    return v5;
  }

  else
  {
    result = [a2 ic_isLegacyAccountType];
    if (result)
    {
      __chkstk_darwin(result);
      NSManagedObjectContext.performAndWait<A>(_:)();
      return v6;
    }
  }

  return result;
}

void sub_100225528(void *a1@<X0>, char *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  if (![a1 ic_isModernFolderType] || (v8 = sub_100014954(a1)) == 0)
  {
LABEL_11:
    if ([a1 ic_isModernAccountType])
    {
      v22 = [a3 account];
      v9 = v22;
      if (v22)
      {
        goto LABEL_13;
      }

      v29 = [a3 folder];
      if (v29)
      {
        v30 = v29;
        a2 = [v29 account];

        if (!a2)
        {
          goto LABEL_28;
        }

        v9 = a2;
        v22 = 0;
LABEL_13:
        v23 = v22;
        v24 = [v9 objectID];

        if (v24)
        {
          sub_1000054A4(0, &qword_1006BFEC0);
          v25 = a1;
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            v27 = [a3 folder];
            if (v27)
            {
              a2 = v27;
              v28 = [v27 isTrashFolder];

              LOBYTE(a2) = v28 ^ 1;
              goto LABEL_28;
            }
          }
        }

LABEL_26:
      }
    }

    LOBYTE(a2) = 0;
    goto LABEL_28;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

    goto LABEL_11;
  }

  v11 = v10;
  if (![v10 isSmartFolder] || (v12 = objc_msgSend(v11, "smartFolderQueryObjC")) == 0)
  {
    if ([v11 isTrashFolder])
    {
      v21 = [a3 folder];
      if (!v21)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if ((a2[OBJC_IVAR___ICFolderListSelectionValidator_hidesSystemPaperNotesInCustomFolders] != 1 || ![a3 isSystemPaper]) && (a2[OBJC_IVAR___ICFolderListSelectionValidator_hidesMathNotesInCustomFolders] != 1 || !objc_msgSend(a3, "isMathNote")) && (a2[OBJC_IVAR___ICFolderListSelectionValidator_hidesCallNotesInCustomFolders] != 1 || !objc_msgSend(a3, "isCallNote")))
    {
      v21 = [a3 folder];
      if (!v21)
      {
        goto LABEL_32;
      }

LABEL_30:
      v31 = v21;
      v32 = [v21 objectID];

      if (v32)
      {
        sub_1000054A4(0, &qword_1006BFEC0);
        v33 = a1;
        LOBYTE(a2) = static NSObject.== infix(_:_:)();

        goto LABEL_28;
      }

LABEL_32:
      LOBYTE(a2) = 0;

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v13 = v12;
  v14 = *&a2[OBJC_IVAR___ICFolderListSelectionValidator_modernContext];
  v15 = objc_allocWithZone(type metadata accessor for ICQueryResultsController());
  v16 = v14;
  v17 = v13;
  v18 = ICQueryResultsController.init(managedObjectContext:query:)();
  v19 = ICQueryResultsController.performFetch()();
  v20 = [a3 objectID];
  LOBYTE(a2) = sub_10033AC4C(v20, v19);

LABEL_28:
  *a4 = a2 & 1;
}

void sub_100225900(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = [a1 store];
  if (v5 && (v6 = v5, v7 = [v5 objectID], v6, v7))
  {
    sub_1000054A4(0, &qword_1006BFEC0);
    v8 = a2;
    v9 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9 & 1;
}

void sub_1002259C8(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = [a1 store];
  if (v5 && (v6 = v5, v7 = [v5 account], v6, v7) && (v8 = objc_msgSend(v7, "objectID"), v7, v8))
  {
    sub_1000054A4(0, &qword_1006BFEC0);
    v9 = a2;
    v10 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10 & 1;
}

void sub_100225AB4(void *a1@<X0>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  v7 = [a1 query];
  v8 = [v7 entityName];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v8];

  [v9 setResultType:1];
  v10 = [a1 query];
  v11 = [v10 predicate];

  [v9 setPredicate:v11];
  sub_1000054A4(0, &qword_1006BFEC0);
  v12 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    v13 = 0;
  }

  else
  {
    v14 = v12;
    v15 = [a2 objectID];
    v18 = v15;
    __chkstk_darwin(v15);
    v17[2] = &v18;
    v16 = sub_100478EC0(sub_100225DCC, v17, v14);

    v13 = v16 & 1;
  }

  *a3 = v13;
}

id sub_100225CF8@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + 16) isDeleted];
  *a1 = result;
  return result;
}

id sub_100225E2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*(v2 + 16) + *a1) objectWithID:*(v2 + 24)];
  *a2 = result;
  return result;
}

id sub_100225E90(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___ICMovePreviewView_maximumImageViewsCount] = 3;
  *&v4[OBJC_IVAR___ICMovePreviewView_size] = 0x4046000000000000;
  *&v4[OBJC_IVAR___ICMovePreviewView_cornerRadius] = 0x4010000000000000;
  *&v4[OBJC_IVAR___ICMovePreviewView____lazy_storage___stackView] = 0;
  *&v4[OBJC_IVAR___ICMovePreviewView_modernContext] = 0;
  *&v4[OBJC_IVAR___ICMovePreviewView_htmlContext] = 0;
  *&v4[OBJC_IVAR___ICMovePreviewView_objectIds] = _swiftEmptyArrayStorage;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_100225FF0();
  sub_10015DA04(&qword_1006C07B8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100531E30;
  *(v11 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v11 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v10;
}

void sub_100225FF0()
{
  [v0 setClipsToBounds:1];
  [v0 ic_applyRoundedCornersWithRadius:4.0];
  v1 = sub_1002263F8();
  [v0 addSubview:v1];

  v2 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100534950;
  v4 = OBJC_IVAR___ICMovePreviewView____lazy_storage___stackView;
  v5 = [*&v0[OBJC_IVAR___ICMovePreviewView____lazy_storage___stackView] topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v3 + 32) = v7;
  v8 = [*&v0[v4] leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v3 + 40) = v10;
  v11 = [*&v0[v4] trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v3 + 48) = v13;
  sub_1000054A4(0, &qword_1006C5D90);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_10022625C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___ICMovePreviewView_maximumImageViewsCount] = 3;
  *&v1[OBJC_IVAR___ICMovePreviewView_size] = 0x4046000000000000;
  *&v1[OBJC_IVAR___ICMovePreviewView_cornerRadius] = 0x4010000000000000;
  *&v1[OBJC_IVAR___ICMovePreviewView____lazy_storage___stackView] = 0;
  *&v1[OBJC_IVAR___ICMovePreviewView_modernContext] = 0;
  *&v1[OBJC_IVAR___ICMovePreviewView_htmlContext] = 0;
  *&v1[OBJC_IVAR___ICMovePreviewView_objectIds] = _swiftEmptyArrayStorage;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  if (v4)
  {
    v5 = v4;
    v6 = v4;
    sub_100225FF0();
    sub_10015DA04(&qword_1006C07B8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100531E30;
    *(v7 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
    *(v7 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    UIView.registerForTraitChanges(_:action:)();

    swift_unknownObjectRelease();

    return v5;
  }

  else
  {

    return 0;
  }
}

id sub_1002263F8()
{
  v1 = OBJC_IVAR___ICMovePreviewView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR___ICMovePreviewView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICMovePreviewView____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setAxis:1];
    [v4 setSpacing:-38.0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1002264AC(uint64_t a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR___ICMovePreviewView_objectIds);
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = sub_100226738(a2);
  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];

  v9 = v8;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = 3;
    if (v6 < 3)
    {
      v10 = v6;
    }

    [v9 setAlpha:1.0 / v10 * (a1 + 1)];
    [v9 ic_applyRoundedCornersWithRadius:4.0];
    if ([objc_opt_self() ic_isVision])
    {
      [v9 setOverrideUserInterfaceStyle:1];
    }

    v11 = sub_1002263F8();
    [v11 addArrangedSubview:v9];

    v12 = objc_opt_self();
    sub_10015DA04(&unk_1006BD390);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100531E20;
    v14 = [v9 heightAnchor];
    v15 = [v14 constraintEqualToConstant:44.0];

    *(v13 + 32) = v15;
    v16 = [v9 widthAnchor];

    v17 = [v16 constraintEqualToConstant:44.0];
    *(v13 + 40) = v17;
    sub_1000054A4(0, &qword_1006C5D90);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 activateConstraints:isa];
  }
}

id sub_100226738(void *a1)
{
  if ([a1 ic_isModernFolderType])
  {
    v3 = *(v1 + OBJC_IVAR___ICMovePreviewView_modernContext);
    if (v3)
    {
      v4 = [v3 objectWithID:a1];
      if (v4)
      {
        v5 = v4;
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        v7 = v6;
        if (v6)
        {
          v8 = [v6 navigationBarIconWithSize:{44.0, 44.0}];
          if (!v8)
          {
            goto LABEL_17;
          }

LABEL_12:
          v12 = v8;

          return v12;
        }

        goto LABEL_22;
      }
    }

    v7 = 0;
    goto LABEL_17;
  }

  if ([a1 ic_isModernNoteType])
  {
    v9 = *(v1 + OBJC_IVAR___ICMovePreviewView_modernContext);
    if (v9 && (v10 = [v9 objectWithID:a1]) != 0)
    {
      v5 = v10;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      v7 = v11;
      if (!v11)
      {
LABEL_22:

        goto LABEL_17;
      }

      v8 = [v11 navigationBarIconWithSize:{44.0, 44.0}];
      if (v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_17:
    v15 = [objc_opt_self() defaultNavigationBarIcon];

    return v15;
  }

  if (![a1 ic_isLegacyFolderType])
  {
    [a1 ic_isLegacyNoteType];
  }

  v14 = [objc_opt_self() defaultNavigationBarIcon];

  return v14;
}

int64_t sub_100226B1C()
{
  v1 = sub_1002263F8();
  v2 = [v1 arrangedSubviews];

  sub_1000054A4(0, &qword_1006C95E0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = *&v0[OBJC_IVAR___ICMovePreviewView_objectIds];
  v10 = v9 >> 62;
  if (v9 >> 62)
  {
    goto LABEL_44;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v12)
  {
LABEL_53:
    __break(1u);
  }

  else
  {
    while (1)
    {
      if ((v9 & 0xC000000000000001) == 0 || v12 == 0)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        sub_1000054A4(0, &qword_1006BFEC0);
        swift_bridgeObjectRetain_n();
        _ArrayBuffer._typeCheckSlowPath(_:)(0);
        if (v12 != 1)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(1);
          if (v12 != 2)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(2);
          }
        }
      }

      if (v10)
      {
        _CocoaArrayWrapper.subscript.getter();
        v14 = v15;
        v10 = v16;
        v18 = v17;

        v12 = v18 >> 1;
      }

      else
      {
        v14 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      v0 = v0;
      v19 = v12 - v10;
      if (v12 == v10)
      {
        break;
      }

      v9 = 0;
      if (v12 <= v10)
      {
        v20 = v10;
      }

      else
      {
        v20 = v12;
      }

      v21 = v20 - v10;
      v10 = v14 + 8 * v10;
      while (v21 != v9)
      {
        if (__OFADD__(v9, 1))
        {
          goto LABEL_43;
        }

        v22 = *(v10 + 8 * v9);
        sub_1002264AC(v9, v22);

        if (v19 == ++v9)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
        __break(1u);
      }

      if (v23 >= 3)
      {
        v24 = 3;
      }

      else
      {
        v24 = v23;
      }

      if (v23 >= 0)
      {
        v12 = v24;
      }

      else
      {
        v12 = 3;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < v12)
      {
        goto LABEL_53;
      }
    }

LABEL_39:

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ChecklistItemID.contextType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ManagedEntityContextType.modern(_:);
  v3 = type metadata accessor for ManagedEntityContextType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t ChecklistItemID.noteObjectURI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ChecklistItemID.noteObjectURI.setter(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ChecklistItemID.paragraphUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ChecklistItemID() + 20);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ChecklistItemID()
{
  result = qword_1006C08C0;
  if (!qword_1006C08C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ChecklistItemID.paragraphUUID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ChecklistItemID() + 20);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ChecklistItemID.init(noteObjectID:paragraphUUID:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 URIRepresentation];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *(type metadata accessor for ChecklistItemID() + 20);
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t ChecklistItemID.init(noteManagedIdentifier:paragraphIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void (*a3)(char *, char *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v31 = a1;
  v32 = a3;
  v28[1] = a2;
  v5 = sub_10015DA04(&unk_1006BE0B0);
  __chkstk_darwin(v5 - 8);
  v7 = v28 - v6;
  v8 = type metadata accessor for UUID();
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v28[0] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v10 - 8);
  v12 = v28 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ChecklistItemID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_1000073B4(v12, &qword_1006BCC20);
    v21 = 1;
  }

  else
  {
    v31 = a4;
    v22 = *(v14 + 32);
    v22(v16, v12, v13);
    UUID.init(uuidString:)();

    if ((*(v29 + 48))(v7, 1, v30) == 1)
    {
      (*(v14 + 8))(v16, v13);
      sub_1000073B4(v7, &unk_1006BE0B0);
      v21 = 1;
      a4 = v31;
    }

    else
    {
      v32 = v22;
      v23 = *(v29 + 32);
      v24 = v28[0];
      v25 = v7;
      v26 = v30;
      v23(v28[0], v25, v30);
      v32(v20, v16, v13);
      v23(&v20[*(v17 + 20)], v24, v26);
      a4 = v31;
      sub_1002276EC(v20, v31);
      v21 = 0;
    }
  }

  return (*(v18 + 56))(a4, v21, 1, v17);
}

uint64_t sub_1002276EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChecklistItemID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ChecklistItemID.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = type metadata accessor for ChecklistItemID();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 1, 1, v5);
}

uint64_t ChecklistItemID.note(in:)@<X0>(void *a1@<X0>, NSURL *a2@<X8>)
{
  URL._bridgeToObjectiveC()(a2);
  v4 = v3;
  v5 = [a1 managedObjectIDForURIRepresentation:v3];

  if (v5)
  {
    v6 = [a1 managedObjectContextForObjectID:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 objectWithID:v5];

      if (v8)
      {
        result = swift_dynamicCastObjCProtocolConditional();
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t static ChecklistItemID.__derived_struct_equals(_:_:)()
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ChecklistItemID();

  return static UUID.== infix(_:_:)();
}

uint64_t ChecklistItemID.hash(into:)()
{
  type metadata accessor for URL();
  sub_10000BEF4(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for ChecklistItemID();
  type metadata accessor for UUID();
  sub_10000BEF4(&qword_1006C07C8, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int ChecklistItemID.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_10000BEF4(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for ChecklistItemID();
  type metadata accessor for UUID();
  sub_10000BEF4(&qword_1006C07C8, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t ChecklistItemID.debugDescription.getter()
{
  v0 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v0 - 8);
  v2 = &v26 - v1;
  v3 = type metadata accessor for ManagedEntityContextType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for ManagedEntityContextType.modern(_:), v3);
  v7 = ManagedEntityContextType.rawValue.getter();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v26 = v7;
  v27 = v9;
  v10 = String.init<A>(reflecting:)();
  v12 = v11;
  ChecklistItemID.uriRepresentation.getter(v2);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v2, 1, v13) == 1)
  {
    sub_1000073B4(v2, &qword_1006BCC20);
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v15 = URL.absoluteString.getter();
    v16 = v17;
    (*(v14 + 8))(v2, v13);
  }

  v26 = v15;
  v27 = v16;
  v18 = String.init<A>(reflecting:)();
  v20 = v19;
  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v26 = 0xD00000000000001DLL;
  v27 = 0x8000000100567FE0;
  v21._countAndFlagsBits = v10;
  v21._object = v12;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x203A697275202CLL;
  v22._object = 0xE700000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = v18;
  v23._object = v20;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 41;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  return v26;
}

uint64_t _s11MobileNotes15ChecklistItemIDV11descriptionSSvg_0()
{
  v0 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  ChecklistItemID.uriRepresentation.getter(&v7 - v1);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000073B4(v2, &qword_1006BCC20);
    return 0;
  }

  else
  {
    v6 = URL.absoluteString.getter();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t static ChecklistItemID.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10015DA04(&qword_1006BEA90);
  __chkstk_darwin(v6 - 8);
  v111 = &v94 - v7;
  v8 = type metadata accessor for ManagedEntityContextType();
  v99 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v97 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v98 = &v94 - v11;
  v12 = type metadata accessor for FilePath.Component();
  v13 = *(v12 - 8);
  v116 = v12;
  v117 = v13;
  __chkstk_darwin(v12);
  v100 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for FilePath.ComponentView.Index();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10015DA04(&qword_1006C07D8);
  v17 = __chkstk_darwin(v16 - 8);
  v110 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v109 = &v94 - v19;
  v20 = sub_10015DA04(&qword_1006C07E0);
  __chkstk_darwin(v20 - 8);
  v104 = &v94 - v21;
  v112 = type metadata accessor for FilePath.ComponentView();
  v103 = *(v112 - 8);
  __chkstk_darwin(v112);
  v105 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10015DA04(&qword_1006C07E8);
  __chkstk_darwin(v23 - 8);
  v101 = &v94 - v24;
  v102 = sub_10015DA04(&qword_1006C07F0);
  __chkstk_darwin(v102);
  v114 = &v94 - v25;
  v26 = sub_10015DA04(&qword_1006C07F8);
  __chkstk_darwin(v26 - 8);
  v28 = &v94 - v27;
  v118 = type metadata accessor for FilePath();
  v115 = *(v118 - 8);
  v29 = __chkstk_darwin(v118);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v113 = &v94 - v32;
  v33 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v33 - 8);
  v35 = &v94 - v34;
  v126 = a1;
  v127 = a2;
  v124 = 58;
  v125 = 0xE100000000000000;
  sub_10022A738();
  sub_10022A78C();
  BidirectionalCollection<>.firstRange<A>(of:)();
  if (v121)
  {
    v36 = type metadata accessor for ChecklistItemID();
    return (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
  }

  v94 = v8;
  v96 = a3;
  v95 = v120;
  String.subscript.getter();
  static String._fromSubstring(_:)();

  v38 = String._bridgeToObjectiveC()();

  v39 = ICIsNotesURLScheme();

  if (!v39)
  {
    goto LABEL_38;
  }

  URL.init(string:)();
  sub_1000073B4(v35, &qword_1006BCC20);
  v124 = a1;
  v125 = a2;
  v122 = 63;
  v123 = 0xE100000000000000;
  BidirectionalCollection<>.firstRange<A>(of:)();
  if (v121)
  {
    sub_1002294AC(v95, a1, a2);
    v40 = v112;
  }

  else
  {
    result = v95;
    v40 = v112;
    if (v119 >> 14 < v95 >> 14)
    {
      __break(1u);
      return result;
    }

    String.subscript.getter();
  }

  v41 = static String._fromSubstring(_:)();
  v43 = v42;

  v126 = v41;
  v127 = v43;

  v44._countAndFlagsBits = 12079;
  v44._object = 0xE200000000000000;
  LOBYTE(v41) = String.hasPrefix(_:)(v44);

  v45 = v118;
  v46 = v115;
  v47 = v113;
  if (v41)
  {
    sub_1002294F8(2);
  }

  FilePath.init(_:)();
  v48 = type metadata accessor for FilePath.Root();
  v49 = 1;
  (*(*(v48 - 8) + 56))(v28, 1, 1, v48);
  FilePath.root.setter();
  (*(v46 + 16))(v31, v47, v45);
  v50 = v105;
  FilePath.components.getter();
  v51 = *(v103 + 32);
  v52 = v104;
  v51(v104, v50, v40);
  v53 = v101;
  v51(v101, v52, v40);
  v51(v50, v53, v40);
  sub_10000BEF4(&qword_1006C0810, &type metadata accessor for FilePath.ComponentView);
  v54 = v114;
  dispatch thunk of Sequence.makeIterator()();
  v55 = (v54 + *(v102 + 44));
  *v55 = sub_100229580;
  v55[1] = 0;
  sub_10015DA04(&qword_1006C0818);
  sub_10000BEF4(&qword_1006C0820, &type metadata accessor for FilePath.ComponentView);
  v56 = v106;
  dispatch thunk of Collection.endIndex.getter();
  sub_10000BEF4(&unk_1006C0828, &type metadata accessor for FilePath.ComponentView.Index);
  v57 = v108;
  LOBYTE(v52) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v107 + 8))(v56, v57);
  v58 = v116;
  v59 = v109;
  if ((v52 & 1) == 0)
  {
    v60 = dispatch thunk of Collection.subscript.read();
    (*(v117 + 16))(v59);
    v60(&v119, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v49 = 0;
  }

  v61 = v117;
  (*(v117 + 56))(v59, v49, 1, v58);
  v62 = v110;
  sub_1001F7498(v59, v110, &qword_1006C07D8);
  v63 = (*(v61 + 48))(v62, 1, v58);
  v64 = v111;
  if (v63 != 1)
  {
    v65 = v100;
    (*(v61 + 32))();
    v119 = FilePath.Component.string.getter();
    v120 = v66;
    sub_10019E0AC();
    v67 = StringProtocol.removingPercentEncoding.getter();
    v69 = v68;

    if (!v69)
    {
      v67 = FilePath.Component.string.getter();
      v69 = v70;
    }

    (*(v117 + 8))(v65, v116);
    if (v67 == 0x73696C6B63656863 && v69 == 0xED00006D65746974)
    {

LABEL_19:
      v72 = sub_10022960C();
      if (v73)
      {
        v119 = v72;
        v120 = v73;
        v74 = StringProtocol.removingPercentEncoding.getter();
        v76 = v75;

        if (v76)
        {

          ManagedEntityContextType.init(rawValue:)();
          v77 = v99;
          v78 = v94;
          if ((*(v99 + 48))(v64, 1, v94) == 1)
          {
            sub_1000073B4(v64, &qword_1006BEA90);
            v79 = sub_10022960C();
            if (v80)
            {
              ChecklistItemID.init(noteManagedIdentifier:paragraphIdentifier:)(v74, v79, v80, v96);
              sub_1000073B4(v54, &qword_1006C07F0);
              return (*(v46 + 8))(v47, v118);
            }
          }

          else
          {

            (*(v77 + 32))(v98, v64, v78);
            v81 = sub_10022960C();
            if (v82)
            {
              v119 = v81;
              v120 = v82;
              v83 = StringProtocol.removingPercentEncoding.getter();
              v85 = v84;

              if (v85)
              {
                v86 = sub_10022960C();
                if (v87)
                {
                  v88 = v86;
                  v89 = v87;
                  (*(v99 + 104))(v97, enum case for ManagedEntityContextType.modern(_:), v94);
                  sub_10000BEF4(&qword_1006C0838, &type metadata accessor for ManagedEntityContextType);
                  dispatch thunk of RawRepresentable.rawValue.getter();
                  dispatch thunk of RawRepresentable.rawValue.getter();
                  if (v119 == v124 && v120 == v125)
                  {
                    v90 = 1;
                  }

                  else
                  {
                    v90 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  }

                  v91 = *(v99 + 8);
                  v92 = v94;
                  v91(v97, v94);

                  if (v90)
                  {
                    ChecklistItemID.init(noteManagedIdentifier:paragraphIdentifier:)(v83, v88, v89, v96);
                    v91(v98, v92);
                    sub_1000073B4(v114, &qword_1006C07F0);
                    return (*(v115 + 8))(v113, v118);
                  }

                  v54 = v114;
                  v46 = v115;
                  v47 = v113;
                }

                v77 = v99;
              }
            }

            (*(v77 + 8))(v98, v94);
          }
        }
      }

      goto LABEL_37;
    }

    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v71)
    {
      goto LABEL_19;
    }
  }

LABEL_37:
  sub_1000073B4(v54, &qword_1006C07F0);
  (*(v46 + 8))(v47, v118);
LABEL_38:
  v93 = type metadata accessor for ChecklistItemID();
  return (*(*(v93 - 8) + 56))(v96, 1, 1, v93);
}

Swift::Int sub_100228E5C()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_10000BEF4(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for UUID();
  sub_10000BEF4(&qword_1006C07C8, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100228F48()
{
  type metadata accessor for URL();
  sub_10000BEF4(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for UUID();
  sub_10000BEF4(&qword_1006C07C8, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10022901C()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_10000BEF4(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for UUID();
  sub_10000BEF4(&qword_1006C07C8, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100229104()
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static UUID.== infix(_:_:)();
}

uint64_t sub_10022916C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_10015DA04(&qword_1006C0900);
  v5 = __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v22 - v8;
  v10 = type metadata accessor for AttributedString.Index();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10015DA04(&unk_1006C0908);
  __chkstk_darwin(v23);
  v15 = v22 - v14;
  v16 = type metadata accessor for AttributedString.CharacterView();
  v17 = sub_10000BEF4(&unk_1006BFA40, &type metadata accessor for AttributedString.CharacterView);
  v24 = v2;
  v22[1] = v17;
  v22[2] = v16;
  dispatch thunk of Collection.endIndex.getter();
  sub_10000BEF4(&qword_1006C0918, &type metadata accessor for AttributedString.Index);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    (*(v11 + 16))(v9, a1, v10);
    v19 = *(v11 + 32);
    v19(&v9[*(v4 + 48)], v13, v10);
    sub_10022A9AC(v9, v7);
    v20 = *(v4 + 48);
    v19(v15, v7, v10);
    v21 = *(v11 + 8);
    v21(&v7[v20], v10);
    sub_1001F7498(v9, v7, &qword_1006C0900);
    v19(&v15[*(v23 + 36)], &v7[*(v4 + 48)], v10);
    v21(v7, v10);
    dispatch thunk of Collection.subscript.getter();
    return sub_1000073B4(v15, &unk_1006C0908);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1002294AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t sub_1002294F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = String.index(_:offsetBy:limitedBy:)();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return String.removeSubrange(_:)(result, v1);
      }
    }

    __break(1u);
    return String.removeSubrange(_:)(result, v1);
  }

  return result;
}

uint64_t sub_100229580@<X0>(uint64_t *a1@<X8>)
{
  FilePath.Component.string.getter();
  sub_10019E0AC();
  v2 = StringProtocol.removingPercentEncoding.getter();
  v4 = v3;

  if (!v4)
  {
    result = FilePath.Component.string.getter();
    v2 = result;
    v4 = v6;
  }

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_10022960C()
{
  v1 = v0;
  v2 = type metadata accessor for FilePath.Component();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FilePath.ComponentView.Index();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&qword_1006C07D8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  sub_10015DA04(&qword_1006C0818);
  type metadata accessor for FilePath.ComponentView();
  sub_10000BEF4(&qword_1006C0820, &type metadata accessor for FilePath.ComponentView);
  dispatch thunk of Collection.endIndex.getter();
  sub_10000BEF4(&unk_1006C0828, &type metadata accessor for FilePath.ComponentView.Index);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  if (v14)
  {
    v15 = 1;
    v17 = v26;
    v16 = v27;
  }

  else
  {
    v18 = dispatch thunk of Collection.subscript.read();
    v20 = v26;
    v19 = v27;
    (*(v26 + 16))(v13);
    v18(&v28, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v15 = 0;
    v16 = v19;
    v17 = v20;
  }

  (*(v17 + 56))(v13, v15, 1, v16);
  v21 = *(v1 + *(sub_10015DA04(&qword_1006C07F0) + 44));
  sub_1001F7498(v13, v11, &qword_1006C07D8);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    return 0;
  }

  v23 = v25;
  (*(v17 + 32))(v25, v11, v16);
  v21(&v28, v23);
  (*(v17 + 8))(v23, v16);
  return v28;
}

uint64_t sub_1002299EC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RealtimeCollaborationSelectionDocument.ParticipantSelection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015DA04(&qword_1006C08F8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v19 - v12;
  v14 = v1[1];
  v15 = *(*v1 + 16);
  if (v14 == v15)
  {
    (*(v4 + 56))(&v19 - v12, 1, 1, v3);
  }

  else
  {
    if (v14 >= v15)
    {
      __break(1u);
      return result;
    }

    (*(v4 + 16))(&v19 - v12, *v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v3);
    v1[1] = v14 + 1;
    (*(v4 + 56))(v13, 0, 1, v3);
  }

  v16 = v1[2];
  sub_1001F7498(v13, v10, &qword_1006C08F8);
  v17 = 1;
  if ((*(v4 + 48))(v10, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v10, v3);
    v16(v6);
    (*(v4 + 8))(v6, v3);
    v17 = 0;
  }

  v18 = type metadata accessor for UUID();
  return (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
}

uint64_t ChecklistItemID.uriRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v1 = type metadata accessor for URLComponents();
  v87 = *(v1 - 8);
  v88 = v1;
  __chkstk_darwin(v1);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ManagedEntityContextType();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015DA04(&qword_1006C07F8);
  __chkstk_darwin(v5 - 8);
  v80 = &v69 - v6;
  v7 = type metadata accessor for FilePath();
  v86 = *(v7 - 8);
  __chkstk_darwin(v7);
  v85 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for CharacterSet();
  v9 = *(v93 - 8);
  __chkstk_darwin(v93);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10015DA04(&qword_1006C07D8);
  v13 = __chkstk_darwin(v12 - 8);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v90 = &v69 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v69 - v18;
  __chkstk_darwin(v17);
  v21 = &v69 - v20;
  v22 = type metadata accessor for FilePath.Component();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v79 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v77 = &v69 - v27;
  v28 = __chkstk_darwin(v26);
  v89 = &v69 - v29;
  v30 = __chkstk_darwin(v28);
  v91 = &v69 - v31;
  __chkstk_darwin(v30);
  v33 = &v69 - v32;
  FilePath.Component.init(_:)();
  v92 = *(v23 + 48);
  if (v92(v21, 1, v22) == 1)
  {
    v19 = v21;
    v34 = v94;
LABEL_13:
    sub_1000073B4(v19, &qword_1006C07D8);
    v62 = type metadata accessor for URL();
    return (*(*(v62 - 8) + 56))(v34, 1, 1, v62);
  }

  v70 = v7;
  v71 = v3;
  v35 = *(v23 + 32);
  v83 = v33;
  v76 = v23 + 32;
  v75 = v35;
  v35(v33, v21, v22);
  v95 = URL.absoluteString.getter();
  v96 = v36;
  v72 = objc_opt_self();
  v37 = [v72 ic_uriIdentifierAllowedCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  v73 = sub_10019E0AC();
  StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v39 = v38;
  v40 = *(v9 + 8);
  v74 = v11;
  v40(v11, v93);

  if (!v39)
  {
    (*(v23 + 56))(v19, 1, 1, v22);
    goto LABEL_10;
  }

  FilePath.Component.init(_:)();
  if (v92(v19, 1, v22) == 1)
  {
LABEL_10:
    (*(v23 + 8))(v83, v22);
    v34 = v94;
    goto LABEL_13;
  }

  v41 = v91;
  v75(v91, v19, v22);
  type metadata accessor for ChecklistItemID();
  v95 = UUID.uuidString.getter();
  v96 = v42;
  v43 = [v72 ic_uriIdentifierAllowedCharacterSet];
  v44 = v74;
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v46 = v45;
  v40(v44, v93);

  if (!v46)
  {
    v47 = v90;
    (*(v23 + 56))(v90, 1, 1, v22);
    v34 = v94;
    v49 = v83;
    goto LABEL_12;
  }

  v47 = v90;
  FilePath.Component.init(_:)();
  v48 = v92(v47, 1, v22);
  v34 = v94;
  v49 = v83;
  if (v48 == 1)
  {
LABEL_12:
    v61 = *(v23 + 8);
    v61(v41, v22);
    v61(v49, v22);
    v19 = v47;
    goto LABEL_13;
  }

  v75(v89, v47, v22);
  v50 = type metadata accessor for FilePath.Root();
  (*(*(v50 - 8) + 56))(v80, 1, 1, v50);
  sub_10015DA04(&qword_1006C0840);
  v51 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100531E30;
  v53 = *(v23 + 16);
  v53(v52 + v51, v49, v22);
  v54 = v85;
  FilePath.init(root:components:)();
  v55 = v81;
  v56 = v82;
  v57 = v84;
  (*(v82 + 104))(v81, enum case for ManagedEntityContextType.modern(_:), v84);
  v58 = v78;
  ManagedEntityContextType.uriPathComponent.getter();
  (*(v56 + 8))(v55, v57);
  if (v92(v58, 1, v22) == 1)
  {
    sub_1000073B4(v58, &qword_1006C07D8);
    v59 = v71;
    v60 = v79;
  }

  else
  {
    v64 = v77;
    v75(v77, v58, v22);
    v60 = v79;
    v53(v79, v64, v22);
    FilePath.append(_:)();
    (*(v23 + 8))(v64, v22);
    v59 = v71;
  }

  v65 = v91;
  v53(v60, v91, v22);
  FilePath.append(_:)();
  v66 = v89;
  v53(v60, v89, v22);
  FilePath.append(_:)();
  URLComponents.init()();
  v67 = ICNotesAppURLScheme();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URLComponents.scheme.setter();
  FilePath.string.getter();
  URLComponents.path.setter();
  URLComponents.url.getter();
  (*(v87 + 8))(v59, v88);
  (*(v86 + 8))(v54, v70);
  v68 = *(v23 + 8);
  v68(v66, v22);
  v68(v65, v22);
  return (v68)(v83, v22);
}

unint64_t sub_10022A738()
{
  result = qword_1006C0800;
  if (!qword_1006C0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0800);
  }

  return result;
}

unint64_t sub_10022A78C()
{
  result = qword_1006C0808;
  if (!qword_1006C0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0808);
  }

  return result;
}

uint64_t sub_10022A928()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10022A9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C0900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022AA20()
{
  v2 = *(*v1 + 96);
  *(*v1 + 112) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10022AD04;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10022ABB8;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10022ABB8()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_10022AC1C, v1, v2);
}

uint64_t sub_10022AC1C()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);
  v5 = type metadata accessor for Notification();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) != 1)
  {
    sub_10022AD90(v0[4]);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10022AD04()
{
  *(v0 + 16) = *(v0 + 112);
  sub_10015DA04(&unk_1006C9B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10022AD90(uint64_t a1)
{
  v2 = sub_10015DA04(qword_1006C0920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10022ADF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10022AE34(uint64_t a1, int a2)
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

uint64_t sub_10022AE7C(uint64_t result, int a2, int a3)
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

uint64_t sub_10022AF58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v4 = *(a1 + 16);
  v41 = *(a1 + 24);
  v5 = v4;
  v6 = type metadata accessor for CollaborationPopoverDetailView.CollaborationListLabelStyle();
  v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v33 - v7);
  v9 = sub_10015DA04(&qword_1006C09A8);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v12 = sub_1002316F0();
  WitnessTable = swift_getWitnessTable();
  v47 = v9;
  v48 = v6;
  v49 = v12;
  v50 = WitnessTable;
  v39 = &opaque type descriptor for <<opaque return type of View.labelStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v34 = &v33 - v14;
  v38 = type metadata accessor for ModifiedContent();
  v40 = *(v38 - 8);
  v15 = __chkstk_darwin(v38);
  v35 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v37 = &v33 - v17;
  v18 = v5;
  v19 = v5;
  v20 = v41;
  sub_10022B3A0(v3, v19, v41, v11);
  sub_10022C394(v8);
  View.labelStyle<A>(_:)();
  (*(v43 + 8))(v8, v6);
  sub_1000073B4(v11, &qword_1006C09A8);
  v21 = *(v3 + 8);
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v20;
  v22[4] = v21;
  swift_unknownObjectRetain();
  v47 = v9;
  v48 = v6;
  v49 = v12;
  v50 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v35;
  v24 = OpaqueTypeMetadata2;
  v26 = v34;
  View.onAppear(perform:)();

  (*(v42 + 8))(v26, v24);
  v45 = OpaqueTypeConformance2;
  v46 = &protocol witness table for _AppearanceActionModifier;
  v27 = v38;
  swift_getWitnessTable();
  v28 = v40;
  v29 = *(v40 + 16);
  v30 = v37;
  v29(v37, v25, v27);
  v31 = *(v28 + 8);
  v31(v25, v27);
  v29(v44, v30, v27);
  return (v31)(v30, v27);
}

uint64_t sub_10022B3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v115 = a4;
  v7 = sub_10015DA04(&qword_1006C09D0);
  v110 = *(v7 - 8);
  v111 = v7;
  __chkstk_darwin(v7);
  v105 = &v86 - v8;
  v9 = sub_10015DA04(&qword_1006C09D8);
  v10 = __chkstk_darwin(v9 - 8);
  v114 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v109 = &v86 - v12;
  v113 = sub_10015DA04(&qword_1006C09E0);
  v13 = *(v113 - 8);
  v14 = __chkstk_darwin(v113);
  v112 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v119 = &v86 - v16;
  v17 = sub_10015DA04(&qword_1006C09E8);
  v107 = *(v17 - 8);
  v108 = v17;
  __chkstk_darwin(v17);
  v104 = &v86 - v18;
  v103 = sub_10015DA04(&qword_1006C09F0);
  v100 = *(v103 - 8);
  __chkstk_darwin(v103);
  v94 = &v86 - v19;
  v93 = sub_10015DA04(&qword_1006C09F8);
  v92 = *(v93 - 8);
  v20 = __chkstk_darwin(v93);
  v96 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v95 = &v86 - v22;
  v91 = sub_10015DA04(&qword_1006C0A00);
  v23 = *(v91 - 8);
  v24 = __chkstk_darwin(v91);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v86 - v27;
  v29 = sub_10015DA04(&qword_1006C0A08);
  v30 = __chkstk_darwin(v29 - 8);
  v102 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v98 = &v86 - v32;
  v99 = sub_10015DA04(&qword_1006C0A10);
  v101 = *(v99 - 8);
  v33 = __chkstk_darwin(v99);
  v97 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v106 = &v86 - v35;
  v36 = sub_10015DA04(&qword_1006C0A18);
  v37 = __chkstk_darwin(v36 - 8);
  v118 = &v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v120 = &v86 - v39;
  v116 = type metadata accessor for CollaborationPopoverDetailView();
  v117 = a1;
  v40 = *(a3 + 16);
  swift_unknownObjectRetain();
  v41 = v40(a2, a3);
  swift_unknownObjectRelease();
  if (!v41)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  if (!v42)
  {

LABEL_6:
    (*(v107 + 56))(v120, 1, 1, v108);
    goto LABEL_9;
  }

  v43 = v42;
  v90 = v13;
  sub_10022C320(v116, &qword_1006C0B68, &unk_10053B640, sub_10023332C);
  if (_s11MobileNotes31RealtimeCollaborationControllerC02iscD7Enabled3forSbSo6ICNoteC_tFZ_0(v43))
  {
    v89 = v28;
    sub_10022BFC0();
    v44 = v95;
    sub_10022C11C();
    v45 = *(v23 + 16);
    v88 = v26;
    v46 = v28;
    v47 = v91;
    (v45)(v26, v46, v91);
    v48 = v92;
    v87 = *(v92 + 16);
    v49 = v93;
    v87(v96, v44, v93);
    v50 = v94;
    v45();
    v51 = v50;
    v52 = &v50[*(sub_10015DA04(&qword_1006C0A30) + 48)];
    v53 = v96;
    v87(v52, v96, v49);
    v54 = *(v48 + 8);
    v54(v95, v49);
    v55 = *(v23 + 8);
    v55(v89, v47);
    v54(v53, v49);
    v55(v88, v47);
    v56 = v98;
    sub_1001F7498(v51, v98, &qword_1006C09F0);
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v56 = v98;
  }

  (*(v100 + 56))(v56, v57, 1, v103);
  v58 = v101;
  v59 = *(v101 + 16);
  v60 = v97;
  v61 = v106;
  v62 = v99;
  v59(v97, v106, v99);
  v63 = v102;
  sub_100006038(v56, v102, &qword_1006C0A08);
  v64 = v104;
  v59(v104, v60, v62);
  v65 = sub_10015DA04(&qword_1006C0A28);
  sub_100006038(v63, v64 + *(v65 + 48), &qword_1006C0A08);

  sub_1000073B4(v56, &qword_1006C0A08);
  v66 = *(v58 + 8);
  v66(v61, v62);
  sub_1000073B4(v63, &qword_1006C0A08);
  v66(v60, v62);
  v67 = v120;
  sub_1001F7498(v64, v120, &qword_1006C09E8);
  (*(v107 + 56))(v67, 0, 1, v108);
  v13 = v90;
LABEL_9:
  v68 = v116;
  sub_10022C1C8();
  v69 = sub_10022C274(v68);
  v70 = v109;
  if (v69)
  {
    v71 = v105;
    sub_10022C320(v68, &qword_1006C0C50, &unk_10053B798, sub_1002336A4);
    v73 = v110;
    v72 = v111;
    (*(v110 + 32))(v70, v71, v111);
    v74 = 0;
  }

  else
  {
    v74 = 1;
    v73 = v110;
    v72 = v111;
  }

  (*(v73 + 56))(v70, v74, 1, v72);
  v75 = v118;
  sub_100006038(v120, v118, &qword_1006C0A18);
  v76 = v70;
  v77 = *(v13 + 16);
  v78 = v112;
  v79 = v113;
  v80 = v119;
  v77(v112, v119, v113);
  v81 = v114;
  sub_100006038(v76, v114, &qword_1006C09D8);
  v82 = v115;
  sub_100006038(v75, v115, &qword_1006C0A18);
  v83 = sub_10015DA04(&qword_1006C0A20);
  v77((v82 + *(v83 + 48)), v78, v79);
  sub_100006038(v81, v82 + *(v83 + 64), &qword_1006C09D8);
  sub_1000073B4(v76, &qword_1006C09D8);
  v84 = *(v13 + 8);
  v84(v80, v79);
  sub_1000073B4(v120, &qword_1006C0A18);
  sub_1000073B4(v81, &qword_1006C09D8);
  v84(v78, v79);
  return sub_1000073B4(v118, &qword_1006C0A18);
}

uint64_t sub_10022BFC0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10015DA04(&qword_1006C0A48);
  sub_1000060B4(&qword_1006C0A50, &qword_1006C0A48);
  sub_10019E0AC();
  return Section<>.init<A>(_:content:)();
}

uint64_t sub_10022C11C()
{
  sub_10015DA04(&qword_1006C0A38);
  sub_1000060B4(&qword_1006C0A40, &qword_1006C0A38);
  return Section<>.init(content:)();
}

uint64_t sub_10022C1C8()
{
  sub_10015DA04(&qword_1006C0C90);
  sub_1000060B4(&qword_1006C0C98, &qword_1006C0C90);
  return Section<>.init(content:)();
}

uint64_t sub_10022C274(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  v4 = v3(v2, v1);
  swift_unknownObjectRelease();
  if (!v4)
  {
    return 1;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 canBeSharedViaICloud];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t sub_10022C320(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  sub_10015DA04(a2);
  a4();
  return Section<>.init(content:)();
}

uint64_t sub_10022C394@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_10015DA04(&qword_1006C09C8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10022C3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10015DA04(&qword_1006C0B90);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_10015DA04(&qword_1006C0B80);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = static HorizontalAlignment.leading.getter();
  v16 = [objc_opt_self() deviceIsVision];
  v17 = 0x4020000000000000;
  if (!v16)
  {
    v17 = 0;
  }

  *v10 = v15;
  *(v10 + 1) = v17;
  v10[16] = 0;
  v18 = sub_10015DA04(&qword_1006C0B98);
  sub_10022C61C(a1, a2, a3, &v10[*(v18 + 44)]);
  v19 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  sub_1001F7498(v10, v14, &qword_1006C0B90);
  v21 = &v14[*(v12 + 44)];
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = static Edge.Set.vertical.getter();
  [objc_opt_self() ic_isVision];
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1001F7498(v14, a4, &qword_1006C0B80);
  result = sub_10015DA04(&qword_1006C0B68);
  v32 = a4 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_10022C61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v134 = a2;
  v135 = a3;
  v130 = a4;
  v131 = a1;
  v129 = sub_10015DA04(&qword_1006C0BA0);
  __chkstk_darwin(v129);
  v115 = (&v106 - v4);
  v114 = sub_10015DA04(&qword_1006C0BA8);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v109 = (&v106 - v5);
  v6 = sub_10015DA04(&qword_1006C0BB0);
  v7 = __chkstk_darwin(v6 - 8);
  v108 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v107 = (&v106 - v9);
  v10 = sub_10015DA04(&qword_1006C0BB8);
  v11 = __chkstk_darwin(v10 - 8);
  v112 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v116 = &v106 - v13;
  v125 = sub_10015DA04(&qword_1006C0BC0);
  __chkstk_darwin(v125);
  v126 = (&v106 - v14);
  v15 = sub_10015DA04(&qword_1006C5EF0);
  v16 = __chkstk_darwin(v15 - 8);
  v118 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v117 = &v106 - v18;
  v19 = type metadata accessor for ICActivityStreamDigest.Summary();
  v132 = *(v19 - 8);
  v133 = v19;
  __chkstk_darwin(v19);
  v121 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10015DA04(&qword_1006C0BC8);
  v22 = __chkstk_darwin(v21 - 8);
  v128 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v127 = &v106 - v24;
  v111 = objc_opt_self();
  v25 = [v111 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 localizedStringForKey:v26 value:0 table:0];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v136 = v28;
  v137 = v30;
  v110 = sub_10019E0AC();
  v31 = Text.init<A>(_:)();
  v33 = v32;
  v35 = v34;
  static Color.secondary.getter();
  v36 = Text.foregroundColor(_:)();
  v38 = v37;
  LOBYTE(v30) = v39;

  sub_1001B39D4(v31, v33, v35 & 1);

  static Font.headline.getter();
  v40 = Text.font(_:)();
  v42 = v41;
  v44 = v43;

  v45 = v30 & 1;
  v46 = v135;
  v47 = v133;
  sub_1001B39D4(v36, v38, v45);

  v48 = Text.bold()();
  v122 = v49;
  v123 = v48;
  v120 = v50;
  v124 = v51;
  sub_1001B39D4(v40, v42, v44 & 1);

  v119 = [objc_opt_self() deviceIsMac];
  v52 = *(v46 + 32);
  swift_unknownObjectRetain();
  v53 = v117;
  v52(v134, v46);
  v54 = v132;
  v55 = *(v132 + 48);
  v56 = v47;
  if (v55(v53, 1, v47) == 1)
  {
    swift_unknownObjectRelease();
    sub_1000073B4(v53, &qword_1006C5EF0);
    v57 = [v111 mainBundle];
    v58 = String._bridgeToObjectiveC()();
    v59 = [v57 localizedStringForKey:v58 value:0 table:0];

    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    v136 = v60;
    v137 = v62;
    v63 = Text.init<A>(_:)();
    v65 = v64;
    LOBYTE(v59) = v66;
    static Color.secondary.getter();
    v67 = Text.foregroundColor(_:)();
    v69 = v68;
    v71 = v70;
    v73 = v72;

    sub_1001B39D4(v63, v65, v59 & 1);

    v74 = v126;
    *v126 = v67;
    v74[1] = v69;
    *(v74 + 16) = v71 & 1;
    v74[3] = v73;
    swift_storeEnumTagMultiPayload();
    sub_1000060B4(&qword_1006C0BD0, &qword_1006C0BA0);
    v75 = v127;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    (*(v54 + 32))(v121, v53, v47);
    v76 = v54;
    v117 = ICActivityStreamDigest.Summary.formattedText.getter();
    v111 = v77;
    v110 = v78;
    v106 = v79;
    v80 = v118;
    v52(v134, v135);
    swift_unknownObjectRelease();
    if (v55(v80, 1, v56) == 1)
    {
      sub_1000073B4(v118, &qword_1006C5EF0);
      v81 = 1;
      v75 = v127;
    }

    else
    {
      v82 = v118;
      v83 = ICActivityStreamDigest.Summary.isNavigable.getter();
      (*(v76 + 8))(v82, v56);
      v81 = 1;
      v75 = v127;
      if (v83)
      {
        v84 = static VerticalAlignment.center.getter();
        v85 = v107;
        *v107 = v84;
        *(v85 + 8) = 0;
        *(v85 + 16) = 1;
        v86 = sub_10015DA04(&qword_1006C0BE8);
        sub_10022D284(v131, v134, v135, v85 + *(v86 + 44));
        v87 = v108;
        sub_100006038(v85, v108, &qword_1006C0BB0);
        v88 = v109;
        *v109 = 0x4010000000000000;
        *(v88 + 8) = 0;
        v89 = sub_10015DA04(&qword_1006C0BF0);
        sub_100006038(v87, v88 + *(v89 + 48), &qword_1006C0BB0);
        sub_1000073B4(v85, &qword_1006C0BB0);
        sub_1000073B4(v87, &qword_1006C0BB0);
        sub_1001F7498(v88, v116, &qword_1006C0BA8);
        v81 = 0;
      }
    }

    v90 = v116;
    (*(v113 + 56))(v116, v81, 1, v114);
    v91 = v112;
    sub_100006038(v90, v112, &qword_1006C0BB8);
    v92 = v115;
    v93 = v117;
    v94 = v111;
    *v115 = v117;
    v92[1] = v94;
    v95 = v110;
    v96 = v106;
    v92[2] = v110;
    v92[3] = v96;
    v97 = sub_10015DA04(&qword_1006C0BE0);
    sub_100006038(v91, v92 + *(v97 + 48), &qword_1006C0BB8);
    sub_10023349C(v93, v94, v95, v96);
    sub_10023349C(v93, v94, v95, v96);
    sub_1000073B4(v91, &qword_1006C0BB8);
    sub_1002334E0(v93, v94, v95, v96);
    sub_100006038(v92, v126, &qword_1006C0BA0);
    swift_storeEnumTagMultiPayload();
    sub_1000060B4(&qword_1006C0BD0, &qword_1006C0BA0);
    _ConditionalContent<>.init(storage:)();
    sub_1002334E0(v93, v94, v95, v96);
    sub_1000073B4(v92, &qword_1006C0BA0);
    sub_1000073B4(v90, &qword_1006C0BB8);
    (*(v132 + 8))(v121, v133);
  }

  if (v119)
  {
    v98 = 0x4018000000000000;
  }

  else
  {
    v98 = 0;
  }

  v99 = v128;
  sub_100006038(v75, v128, &qword_1006C0BC8);
  v100 = v130;
  v102 = v122;
  v101 = v123;
  *v130 = v123;
  v100[1] = v102;
  v103 = v120 & 1;
  *(v100 + 16) = v120 & 1;
  v100[3] = v124;
  v100[4] = v98;
  *(v100 + 40) = 0;
  v104 = sub_10015DA04(&qword_1006C0BD8);
  sub_100006038(v99, v100 + *(v104 + 64), &qword_1006C0BC8);
  sub_1001B39C4(v101, v102, v103);

  sub_1000073B4(v75, &qword_1006C0BC8);
  sub_1000073B4(v99, &qword_1006C0BC8);
  sub_1001B39D4(v101, v102, v103);
}

uint64_t sub_10022D284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v51 = a2;
  v56 = a4;
  v54 = sub_10015DA04(&qword_1006C0BF8) - 8;
  v6 = __chkstk_darwin(v54);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v49 - v8;
  v9 = type metadata accessor for BorderedProminentButtonStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10015DA04(&qword_1006C0C00);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v16 = sub_10015DA04(&qword_1006C0C08);
  v17 = v16 - 8;
  v18 = __chkstk_darwin(v16);
  v52 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  v22 = *(a1 + 8);
  v23 = swift_allocObject();
  v23[2] = a2;
  v24 = v50;
  v23[3] = v50;
  v23[4] = v22;
  swift_unknownObjectRetain_n();
  Button.init(action:label:)();
  v25 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v27 = &v15[*(v13 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  BorderedProminentButtonStyle.init()();
  sub_100233524();
  sub_100233608();
  View.buttonStyle<A>(_:)();
  (*(v10 + 8))(v12, v9);
  sub_1000073B4(v15, &qword_1006C0C00);
  v28 = &v21[*(sub_10015DA04(&qword_1006C0C20) + 36)];
  v29 = *(sub_10015DA04(&qword_1006C0C28) + 28);
  v30 = enum case for ControlSize.small(_:);
  v31 = type metadata accessor for ControlSize();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  v32 = &v21[*(sub_10015DA04(&qword_1006C0C30) + 36)];
  sub_10015DA04(&qword_1006C0C38);
  static ButtonBorderShape.capsule.getter();
  *v32 = swift_getKeyPath();
  static AvatarStackView.avatarDimension.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v33 = &v21[*(v17 + 44)];
  v34 = v58;
  *v33 = v57;
  *(v33 + 1) = v34;
  *(v33 + 2) = v59;
  (*(v24 + 40))(v51, v24);
  swift_unknownObjectRelease();
  v35 = v53;
  AvatarStackView.init(participants:)();
  v36 = static Color.quaternary.getter();
  v37 = v35 + *(sub_10015DA04(&qword_1006C0C40) + 36);
  *v37 = v36;
  *(v37 + 8) = xmmword_10053B2D0;
  *(v37 + 24) = 0x3FF0000000000000;
  LOBYTE(v36) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v38 = v35 + *(v54 + 44);
  *v38 = v36;
  *(v38 + 8) = v39;
  *(v38 + 16) = v40;
  *(v38 + 24) = v41;
  *(v38 + 32) = v42;
  *(v38 + 40) = 0;
  v43 = v52;
  sub_100006038(v21, v52, &qword_1006C0C08);
  v44 = v55;
  sub_100006038(v35, v55, &qword_1006C0BF8);
  v45 = v56;
  sub_100006038(v43, v56, &qword_1006C0C08);
  v46 = sub_10015DA04(&qword_1006C0C48);
  v47 = v45 + *(v46 + 48);
  *v47 = 0;
  *(v47 + 8) = 1;
  sub_100006038(v44, v45 + *(v46 + 64), &qword_1006C0BF8);
  sub_1000073B4(v35, &qword_1006C0BF8);
  sub_1000073B4(v21, &qword_1006C0C08);
  sub_1000073B4(v44, &qword_1006C0BF8);
  return sub_1000073B4(v43, &qword_1006C0C08);
}

uint64_t sub_10022D83C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10019E0AC();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  LOBYTE(v4) = v8;
  static Font.body.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_1001B39D4(v5, v7, v4 & 1);

  static Color.white.getter();
  v14 = Text.foregroundColor(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_1001B39D4(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_10022D9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v44 = a4;
  v7 = sub_10015DA04(&qword_1006C0A58);
  v8 = __chkstk_darwin(v7 - 8);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = &v38 - v10;
  v11 = sub_10015DA04(&qword_1006C0A60);
  v12 = __chkstk_darwin(v11 - 8);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46 = &v38 - v14;
  v41 = sub_10015DA04(&qword_1006C0A68);
  v48 = *(v41 - 8);
  v15 = __chkstk_darwin(v41);
  v45 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v38 - v17;
  v19 = type metadata accessor for CollaborationPopoverDetailView();
  v50 = sub_10022DEFC(v19);
  KeyPath = swift_getKeyPath();
  v20 = *a1;
  v51 = *(a1 + 16);
  v52 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v22 = *(a1 + 16);
  *(v21 + 32) = *a1;
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a1 + 32);
  v23 = type metadata accessor for ObservedObject();
  (*(*(v23 - 8) + 16))(v49, &v52, v23);
  sub_100006038(&v51, v49, &qword_1006BE398);
  sub_10015DA04(&qword_1006C5ED0);
  sub_10015DA04(&qword_1006C0A70);
  sub_1000060B4(&qword_1006C0A78, &qword_1006C5ED0);
  sub_100231D9C();
  sub_1000060B4(&qword_1006C0A98, &qword_1006C0A70);
  v39 = v18;
  ForEach<>.init(_:id:content:)();
  v24 = *(v19 + 16);
  v25 = *(v19 + 24);
  v26 = v46;
  sub_10022F054(a1, v24, v25, v46);
  v27 = v47;
  sub_10022E550(a1, v24, v25, v47);
  v28 = *(v48 + 16);
  v29 = v45;
  v30 = v41;
  v28(v45, v18, v41);
  v31 = v42;
  sub_100006038(v26, v42, &qword_1006C0A60);
  v32 = v27;
  v33 = v43;
  sub_100006038(v32, v43, &qword_1006C0A58);
  v34 = v44;
  v28(v44, v29, v30);
  v35 = sub_10015DA04(&qword_1006C0AA0);
  sub_100006038(v31, &v34[*(v35 + 48)], &qword_1006C0A60);
  sub_100006038(v33, &v34[*(v35 + 64)], &qword_1006C0A58);
  sub_1000073B4(v47, &qword_1006C0A58);
  sub_1000073B4(v46, &qword_1006C0A60);
  v36 = *(v48 + 8);
  v36(v39, v30);
  sub_1000073B4(v33, &qword_1006C0A58);
  sub_1000073B4(v31, &qword_1006C0A60);
  return (v36)(v45, v30);
}

uint64_t sub_10022DEFC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(v4 + 88);
  swift_unknownObjectRetain();
  v7 = v6(v5, v4);
  swift_unknownObjectRelease();
  v8 = sub_10022E45C(v3);
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v8;
    v3 = v7 >> 62;
    if (!(v7 >> 62))
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 >= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (v10 >= v12)
      {
        goto LABEL_10;
      }

      goto LABEL_44;
    }
  }

  v24 = v9;
  if (v7 < 0)
  {
    v1 = v7;
  }

  else
  {
    v1 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v2 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v2;
    }

    if (v2 < 0)
    {
      v25 = v24;
    }

    if (v24)
    {
      v12 = v25;
    }

    else
    {
      v12 = 0;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v12)
    {
LABEL_10:
      if ((v7 & 0xC000000000000001) == 0 || v12 == 0)
      {
      }

      else
      {
        sub_1000054A4(0, &qword_1006C5F80);

        v14 = 0;
        do
        {
          v15 = v14 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v14);
          v14 = v15;
        }

        while (v12 != v15);
      }

      if (v3)
      {
        v1 = _CocoaArrayWrapper.subscript.getter();
        v3 = v16;
        v2 = v17;
        v12 = v18;

        if (v12)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v2 = 0;
        v1 = v7 & 0xFFFFFFFFFFFFFF8;
        v3 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
        v12 = (2 * v12) | 1;
        if (v12)
        {
LABEL_22:
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v21 = swift_dynamicCastClass();
          if (!v21)
          {
            swift_unknownObjectRelease();
            v21 = _swiftEmptyArrayStorage;
          }

          v22 = v21[2];

          if (!__OFSUB__(v12 >> 1, v2))
          {
            if (v22 == (v12 >> 1) - v2)
            {
              v20 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v20)
              {
                return v20;
              }

              v20 = _swiftEmptyArrayStorage;
LABEL_28:
              swift_unknownObjectRelease();
              return v20;
            }

            goto LABEL_46;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          swift_unknownObjectRelease_n();
        }
      }

      sub_100374EE4(v1, v3, v2, v12);
      v20 = v19;
      goto LABEL_28;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __break(1u);
  return result;
}

uint64_t sub_10022E174(void **a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a2[1];
  v16 = *a2;
  v15 = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = a2[1];
  *(v9 + 32) = *a2;
  *(v9 + 48) = v10;
  *(v9 + 64) = *(a2 + 4);
  *(v9 + 72) = v7;
  v11 = type metadata accessor for ObservedObject();
  (*(*(v11 - 8) + 16))(v14, &v16, v11);
  sub_100006038(&v15, v14, &qword_1006BE398);
  sub_100233200();
  v12 = v7;
  return Button.init(action:label:)();
}

id sub_10022E2AC@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a4 + 96);
  swift_unknownObjectRetain();
  v11 = v10(a1, a3, a4);
  swift_unknownObjectRelease();
  v12 = *a2;
  v22 = a2[1];
  v23 = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = a2[1];
  *(v13 + 32) = *a2;
  *(v13 + 48) = v14;
  *(v13 + 64) = *(a2 + 4);
  *(v13 + 72) = a1;
  v15 = objc_allocWithZone(UIView);
  v16 = type metadata accessor for ObservedObject();
  (*(*(v16 - 8) + 16))(v21, &v23, v16);
  sub_100006038(&v22, v21, &qword_1006BE398);
  v20 = a1;
  [v15 init];
  sub_1000054A4(0, &qword_1006C95E0);
  State.init(wrappedValue:)();
  v17 = v21[0];
  v18 = v21[1];
  *a5 = v20;
  a5[1] = v11;
  a5[2] = sub_10023329C;
  a5[3] = v13;
  a5[4] = v17;
  a5[5] = v18;

  return v20;
}

uint64_t sub_10022E45C(uint64_t a1)
{
  sub_10015DA04(&qword_1006BE398);
  State.wrappedValue.getter();
  if (v10 != 1)
  {
    return *(v1 + 32);
  }

  v5 = a1 + 16;
  v3 = *(a1 + 16);
  v4 = *(v5 + 8);
  v6 = *(v4 + 88);
  swift_unknownObjectRetain();
  v7 = v6(v3, v4);
  swift_unknownObjectRelease();
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v8;
}

uint64_t sub_10022E550@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v92 = a4;
  v89 = sub_10015DA04(&qword_1006C0AA8);
  __chkstk_darwin(v89);
  v91 = (&KeyPath - v7);
  v88 = sub_10015DA04(&qword_1006C0AB0);
  __chkstk_darwin(v88);
  v9 = &KeyPath - v8;
  v90 = sub_10015DA04(&qword_1006C0AB8);
  __chkstk_darwin(v90);
  v87 = &KeyPath - v10;
  v11 = sub_10015DA04(&qword_1006C0AC0);
  __chkstk_darwin(v11);
  v13 = (&KeyPath - v12);
  v14 = a3[7];
  swift_unknownObjectRetain();
  if ((v14(a2, a3) & 1) == 0)
  {
    swift_unknownObjectRelease();
    v21 = sub_100231E88();
    v85 = v22;
    v86 = v21;
    v83 = v24;
    v84 = v23;
    v82 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v25 = swift_getKeyPath();
    v26 = a1[1];
    v102 = *a1;
    v99[0] = v26;
    v27 = swift_allocObject();
    *(v27 + 16) = a2;
    *(v27 + 24) = a3;
    v28 = a1[1];
    *(v27 + 32) = *a1;
    *(v27 + 48) = v28;
    *(v27 + 64) = *(a1 + 4);
    v29 = (v13 + *(v11 + 36));
    sub_10015DA04(&qword_1006C0AC8);
    v30 = type metadata accessor for ObservedObject();
    (*(*(v30 - 8) + 16))(&v94, &v102, v30);
    sub_100006038(v99, &v94, &qword_1006BE398);
    OpenURLAction.init(handler:)();
    *v29 = v25;
    v31 = v85;
    *v13 = v86;
    v13[1] = v31;
    v32 = v83;
    v13[2] = v84;
    v13[3] = v32;
    v33 = v82;
    v13[4] = KeyPath;
    v13[5] = v33;
    sub_100006038(v13, v9, &qword_1006C0AC0);
    swift_storeEnumTagMultiPayload();
    sub_100232568();
    v34 = v87;
    _ConditionalContent<>.init(storage:)();
    sub_100006038(v34, v91, &qword_1006C0AB8);
    swift_storeEnumTagMultiPayload();
    sub_10015DA04(&qword_1006C0B10);
    sub_100232754();
    sub_1002327D8();
    _ConditionalContent<>.init(storage:)();
    v35 = v34;
LABEL_9:
    sub_1000073B4(v35, &qword_1006C0AB8);
    v50 = v13;
    v51 = &qword_1006C0AC0;
    return sub_1000073B4(v50, v51);
  }

  if ((a3[9](a2, a3) & 1) == 0)
  {
    swift_unknownObjectRelease();
    v36 = sub_1002328E8();
    v85 = v37;
    v86 = v36;
    v83 = v39;
    v84 = v38;
    v82 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v40 = swift_getKeyPath();
    v41 = a1[1];
    v102 = *a1;
    v99[0] = v41;
    v42 = swift_allocObject();
    *(v42 + 16) = a2;
    *(v42 + 24) = a3;
    v43 = a1[1];
    *(v42 + 32) = *a1;
    *(v42 + 48) = v43;
    *(v42 + 64) = *(a1 + 4);
    v44 = (v13 + *(v11 + 36));
    sub_10015DA04(&qword_1006C0AC8);
    v45 = type metadata accessor for ObservedObject();
    (*(*(v45 - 8) + 16))(&v94, &v102, v45);
    sub_100006038(v99, &v94, &qword_1006BE398);
    OpenURLAction.init(handler:)();
    *v44 = v40;
    v46 = v85;
    *v13 = v86;
    v13[1] = v46;
    v47 = v83;
    v13[2] = v84;
    v13[3] = v47;
    v48 = v82;
    v13[4] = KeyPath;
    v13[5] = v48;
    sub_100006038(v13, v9, &qword_1006C0AC0);
    swift_storeEnumTagMultiPayload();
    sub_100232568();
    v49 = v87;
    _ConditionalContent<>.init(storage:)();
    sub_100006038(v49, v91, &qword_1006C0AB8);
    swift_storeEnumTagMultiPayload();
    sub_10015DA04(&qword_1006C0B10);
    sub_100232754();
    sub_1002327D8();
    _ConditionalContent<>.init(storage:)();
    v35 = v49;
    goto LABEL_9;
  }

  v15 = a3[11](a2, a3);
  swift_unknownObjectRelease();
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = v91;

  if (v16)
  {
    LOBYTE(v94) = 1;
    v101 = 1;
    sub_10015DA04(&qword_1006BE448);
    sub_100232864();
    _ConditionalContent<>.init(storage:)();
    v18 = v105[0];
    v17[2] = v104;
    v17[3] = v18;
    *(v17 + 58) = *(v105 + 10);
    v19 = v103;
    *v17 = v102;
    v17[1] = v19;
    swift_storeEnumTagMultiPayload();
    sub_10015DA04(&qword_1006C0B10);
    sub_100232754();
    sub_1002327D8();
    return _ConditionalContent<>.init(storage:)();
  }

  v52 = [objc_opt_self() mainBundle];
  v53 = String._bridgeToObjectiveC()();
  v54 = [v52 localizedStringForKey:v53 value:0 table:0];

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  *&v102 = v55;
  *(&v102 + 1) = v57;
  sub_10019E0AC();
  v58 = Text.init<A>(_:)();
  v60 = v59;
  LOBYTE(v54) = v61;
  static Font.subheadline.getter();
  v62 = Text.font(_:)();
  v64 = v63;
  v66 = v65;

  sub_1001B39D4(v58, v60, v54 & 1);

  static Color.secondary.getter();
  v67 = Text.foregroundColor(_:)();
  v69 = v68;
  v71 = v70;
  v73 = v72;

  sub_1001B39D4(v62, v64, v66 & 1);

  LOBYTE(v58) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v93 = 0;
  *&v94 = v67;
  *(&v94 + 1) = v69;
  LOBYTE(v95) = v71 & 1;
  *(&v95 + 1) = v102;
  DWORD1(v95) = *(&v102 + 3);
  *(&v95 + 1) = v73;
  LOBYTE(v96) = v58;
  DWORD1(v96) = *(v99 + 3);
  *(&v96 + 1) = v99[0];
  *(&v96 + 1) = v74;
  *&v97[0] = v75;
  *(&v97[0] + 1) = v76;
  *&v97[1] = v77;
  BYTE8(v97[1]) = 0;
  v99[2] = v96;
  *v100 = v97[0];
  *&v100[9] = *(v97 + 9);
  v99[0] = v94;
  v99[1] = v95;
  v98 = 0;
  v101 = 0;
  sub_100006038(&v94, &v102, &qword_1006BE448);
  sub_10015DA04(&qword_1006BE448);
  sub_100232864();
  _ConditionalContent<>.init(storage:)();
  v78 = v105[0];
  v79 = v91;
  v91[2] = v104;
  v79[3] = v78;
  *(v79 + 58) = *(v105 + 10);
  v80 = v103;
  *v79 = v102;
  v79[1] = v80;
  swift_storeEnumTagMultiPayload();
  sub_10015DA04(&qword_1006C0B10);
  sub_100232754();
  sub_1002327D8();
  _ConditionalContent<>.init(storage:)();
  v50 = &v94;
  v51 = &qword_1006BE448;
  return sub_1000073B4(v50, v51);
}

uint64_t sub_10022EF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 64);
  swift_unknownObjectRetain();
  v6(a3, a4);
  v7 = swift_unknownObjectRelease();

  return static OpenURLAction.Result.handled.getter(v7);
}

uint64_t sub_10022EFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 80);
  swift_unknownObjectRetain();
  v6(a3, a4);
  v7 = swift_unknownObjectRelease();

  return static OpenURLAction.Result.handled.getter(v7);
}

uint64_t sub_10022F054@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v36 = sub_10015DA04(&qword_1006C0B30);
  v32 = *(v36 - 8);
  __chkstk_darwin(v36);
  v31 = &v31 - v7;
  v33 = sub_10015DA04(&qword_1006C0B38);
  __chkstk_darwin(v33);
  v9 = &v31 - v8;
  v10 = sub_10015DA04(&qword_1006C0B40);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v34 = sub_10015DA04(&qword_1006C0B48);
  __chkstk_darwin(v34);
  v14 = &v31 - v13;
  v15 = *(a3 + 88);
  swift_unknownObjectRetain();
  v16 = v15(a2, a3);
  swift_unknownObjectRelease();
  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*(a1 + 4) >= v17)
  {
    swift_storeEnumTagMultiPayload();
    sub_1000060B4(&qword_1006C0B50, &qword_1006C0B30);
    _ConditionalContent<>.init(storage:)();
    sub_100006038(v14, v9, &qword_1006C0B48);
    swift_storeEnumTagMultiPayload();
    sub_100232FC8();
    _ConditionalContent<>.init(storage:)();
    return sub_1000073B4(v14, &qword_1006C0B48);
  }

  else
  {
    v38 = a1[1];
    v39 = v38;
    sub_10015DA04(&qword_1006BE398);
    State.wrappedValue.getter();
    v38 = *a1;
    if (v37[0] == 1)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = a2;
      *(v18 + 24) = a3;
      v19 = a1[1];
      *(v18 + 32) = *a1;
      *(v18 + 48) = v19;
      *(v18 + 64) = *(a1 + 4);
      v20 = type metadata accessor for ObservedObject();
      (*(*(v20 - 8) + 16))(v37, &v38, v20);
      sub_100006038(&v39, v37, &qword_1006BE398);
      v21 = v31;
      Button.init(action:label:)();
      v22 = v32;
      v23 = v36;
      (*(v32 + 16))(v12, v21, v36);
      swift_storeEnumTagMultiPayload();
      sub_1000060B4(&qword_1006C0B50, &qword_1006C0B30);
      _ConditionalContent<>.init(storage:)();
      sub_100006038(v14, v9, &qword_1006C0B48);
      swift_storeEnumTagMultiPayload();
      sub_100232FC8();
      _ConditionalContent<>.init(storage:)();
      sub_1000073B4(v14, &qword_1006C0B48);
      return (*(v22 + 8))(v21, v23);
    }

    else
    {
      v25 = swift_allocObject();
      *(v25 + 16) = a2;
      *(v25 + 24) = a3;
      v26 = a1[1];
      *(v25 + 32) = *a1;
      *(v25 + 48) = v26;
      *(v25 + 64) = *(a1 + 4);
      sub_100006038(&v39, v37, &qword_1006BE398);
      v27 = type metadata accessor for ObservedObject();
      (*(*(v27 - 8) + 16))(v37, &v38, v27);
      v28 = v31;
      Button.init(action:label:)();
      v29 = v32;
      v30 = v36;
      (*(v32 + 16))(v9, v28, v36);
      swift_storeEnumTagMultiPayload();
      sub_100232FC8();
      sub_1000060B4(&qword_1006C0B50, &qword_1006C0B30);
      _ConditionalContent<>.init(storage:)();
      return (*(v29 + 8))(v28, v30);
    }
  }
}