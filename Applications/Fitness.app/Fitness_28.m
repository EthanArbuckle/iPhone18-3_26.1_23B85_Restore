uint64_t sub_10035EE74()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1002A5BD4();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1002A82B4();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10036FC8C(&qword_1008DECF0, &qword_1008DECE8, &unk_1006D8790, sub_10019C1A0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA180);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D1F70;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_10035F09C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D4140;
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

uint64_t sub_10035F1F0(uint64_t a1)
{
  v35 = a1;
  v1 = sub_100140278(&qword_1008EA390);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100140278(&qword_1008EA3B0);
  __chkstk_darwin(v5);
  sub_1002C1A94();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD000000000000013;
  v6._object = 0x8000000100757FD0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v36 = sub_10036FC8C(&qword_1008DECF0, &qword_1008DECE8, &unk_1006D8790, sub_10019C1A0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x2E7379616420;
  v7._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32 = v1;
  v8 = *(v2 + 8);
  v8(v4, v1);
  v33 = v8;
  v34 = v2 + 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  v9._object = 0x8000000100757FF0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x2E7379616420;
  v10._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v4, v1);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x8000000100758010;
  v11._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x2E7379616420;
  v12._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v33(v4, v32);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x8000000100758030;
  v13._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x2E7379616420;
  v14._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v32;
  v15 = v33;
  v33(v4, v32);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0xD000000000000024;
  v17._object = 0x8000000100758050;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x2E7379616420;
  v18._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15(v4, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x206120746553;
  v19._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0xD000000000000017;
  v20._object = 0x8000000100758080;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15(v4, v16);
  sub_100140278(&qword_1008EA398);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1006E87A0;
  v23 = v30;
  *(v22 + 32) = v31;
  *(v22 + 40) = v23;
  v24 = v28;
  *(v22 + 48) = v29;
  *(v22 + 56) = v24;
  *(v22 + 64) = v27;
  *(v22 + 72) = v21;
  v25 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v25;
}

uint64_t sub_10035F8EC()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1002A3208();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1002C1A94();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10036FC8C(&qword_1008DECF0, &qword_1008DECE8, &unk_1006D8790, sub_10019C1A0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA180);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D1F70;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_10035FB24()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D6BC0;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10035FC08(uint64_t a1)
{
  v36 = a1;
  v35 = sub_100140278(&qword_1008EA390);
  v1 = *(v35 - 8);
  __chkstk_darwin(v35);
  v3 = v28 - v2;
  v4 = sub_100140278(&qword_1008EA3B0);
  __chkstk_darwin(v4);
  sub_1002C1A94();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD000000000000015;
  v5._object = 0x8000000100757F20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v28[1] = sub_10036FEAC();
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
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  v11._object = 0x8000000100757F40;
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
  v14._object = 0x8000000100757F60;
  v14._countAndFlagsBits = 0xD00000000000001ALL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v3, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x8000000100757F80;
  v16._countAndFlagsBits = 0xD00000000000001ALL;
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
  v20._countAndFlagsBits = 0xD000000000000026;
  v20._object = 0x8000000100757FA0;
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
  sub_100140278(&qword_1008EA398);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1006D6BC0;
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

uint64_t sub_1003601E0(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_10001B104(a1, &v9 - v6, &unk_1008F73A0);
  sub_10001B104(v7, v4, &unk_1008F73A0);
  IntentParameter.wrappedValue.setter();
  return sub_10000EA04(v7, &unk_1008F73A0);
}

uint64_t sub_1003602D4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1002A3208();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1002C1A94();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10036FEAC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA180);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D1F70;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1003604E4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D6BC0;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100360618()
{
  v0 = sub_100140278(&qword_1008EA390);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - v2;
  sub_1002C1A94();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
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
  sub_100140278(&qword_1008EA398);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D4140;
  v10 = v16;
  *(v9 + 32) = v17;
  *(v9 + 40) = v10;
  v11 = v14;
  *(v9 + 48) = v15;
  *(v9 + 56) = v11;
  *(v9 + 64) = v5;
  *(v9 + 72) = v6;
  *(v9 + 80) = v7;
  *(v9 + 88) = v8;
  v12 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v12;
}

uint64_t sub_100360A30()
{
  v0 = sub_100140278(&qword_1008EA390);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  sub_1002C1A94();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
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
  sub_100140278(&qword_1008EA398);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006EB180;
  v10 = v19;
  *(v9 + 32) = v20;
  *(v9 + 40) = v10;
  v11 = v17;
  *(v9 + 48) = v18;
  *(v9 + 56) = v11;
  v12 = v15;
  *(v9 + 64) = v16;
  *(v9 + 72) = v12;
  *(v9 + 80) = v5;
  *(v9 + 88) = v6;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_100360EE0()
{
  v0 = sub_100140278(&qword_1008EA390);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  sub_1002C1A94();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
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
  sub_100140278(&qword_1008EA398);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006EB180;
  v10 = v19;
  *(v9 + 32) = v20;
  *(v9 + 40) = v10;
  v11 = v17;
  *(v9 + 48) = v18;
  *(v9 + 56) = v11;
  v12 = v15;
  *(v9 + 64) = v16;
  *(v9 + 72) = v12;
  *(v9 + 80) = v5;
  *(v9 + 88) = v6;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_100361390()
{
  v0 = sub_100140278(&qword_1008EA380);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_1002A51BC();
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
  sub_100140278(&qword_1008EA388);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D6BC0;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100361650()
{
  v0 = sub_100140278(&qword_1008EA368);
  v1 = *(v0 - 8);
  v23 = v0;
  v24 = v1;
  __chkstk_darwin(v0);
  v3 = &v19 - v2;
  v4 = sub_100140278(&qword_1008EA378);
  __chkstk_darwin(v4);
  sub_10036F6CC();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20796D206E65704FLL;
  v5._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_10036FE58();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x73647261776120;
  v6._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = v23;
  v20 = *(v24 + 8);
  v24 += 8;
  v20(v3, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x20656D20776F6853;
  v8._object = 0xEB0000000020796DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x73647261776120;
  v9._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v7;
  v11 = v20;
  v20(v3, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x8000000100757970;
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v3, v23);
  sub_100140278(&qword_1008EA370);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D64F0;
  v16 = v21;
  *(v15 + 32) = v22;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v17;
}

uint64_t sub_100361AC0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006E76B0;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100361C38()
{
  v0 = sub_100140278(&qword_1008EA368);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_10036F6CC();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D64F0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_100361EB4(uint64_t a1)
{
  v15[1] = a1;
  v17 = sub_100140278(&qword_1008EA348);
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = v15 - v2;
  v4 = sub_100140278(&qword_1008EA350);
  __chkstk_darwin(v4);
  sub_10036F720();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20796D206E65704FLL;
  v5._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_10006E15C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x647261776120;
  v6._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = *(v1 + 8);
  v8 = v17;
  v7(v3, v17);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x20656D20776F6853;
  v9._object = 0xEB0000000020796DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x647261776120;
  v10._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v11 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v3, v8);
  sub_100140278(&qword_1008EA358);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006D1F70;
  *(v12 + 32) = v16;
  *(v12 + 40) = v11;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_1003621F8(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = v1;
  return IntentParameter.wrappedValue.setter();
}

uint64_t sub_100362284()
{
  v12 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006EB180;
  *(v9 + 32) = v12;
  *(v9 + 40) = v0;
  *(v9 + 48) = v1;
  *(v9 + 56) = v2;
  *(v9 + 64) = v3;
  *(v9 + 72) = v4;
  *(v9 + 80) = v5;
  *(v9 + 88) = v6;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v10 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100362468(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EA330);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008EA338);
  v22 = v3;
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  sub_10036F774();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = *(v4 + 8);
  v27 = v4 + 8;
  v21(v6, v3);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x6D20732774616857;
  v7._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v26 = sub_10036FE04();
  v20 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x74732065766F6D20;
  v8._object = 0xEC0000006B616572;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v21;
  v10 = v22;
  v21(v6, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x80000001007577E0;
  v11._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x74732065766F6D20;
  v12._object = 0xEC0000006B616572;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9(v6, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000014;
  v13._object = 0x8000000100757800;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x74732065766F6D20;
  v14._object = 0xEC0000006B616572;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9(v6, v10);
  sub_100140278(&qword_1008EA340);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1006D6950;
  v17 = v24;
  *(v16 + 32) = v25;
  *(v16 + 40) = v17;
  *(v16 + 48) = v23;
  *(v16 + 56) = v15;
  v18 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v18;
}

uint64_t sub_100362970()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D6950;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_100362A4C()
{
  v0 = sub_100140278(&qword_1008EA318);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_10036F7C8();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA320);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D64F0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_100362C68()
{
  v0 = sub_100140278(&qword_1008EA308);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10026590C();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA310);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D6950;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100362ED0(uint64_t a1)
{
  v22 = sub_100140278(&qword_1008EA2F0);
  v24 = *(v22 - 8);
  __chkstk_darwin(v22);
  v3 = &v19 - v2;
  v4 = sub_100140278(&qword_1008EA2F8);
  __chkstk_darwin(v4);
  sub_100266D90();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD000000000000014;
  v5._object = 0x8000000100757650;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_10036FF60(&qword_1008EA2E8, &type metadata accessor for StringSearchCriteria);
  v19 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = *(v24 + 8);
  v23 = v7;
  v24 += 8;
  v8 = v22;
  v20(v3, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x20646E6946;
  v9._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._object = 0x8000000100757670;
  v10._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = v20;
  v20(v3, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x20656D20776F6853;
  v12._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x6E746946206E6920;
  v13._object = 0xEC0000002B737365;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v3, v8);
  sub_100140278(&qword_1008EA300);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D64F0;
  v16 = v21;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v17;
}

uint64_t sub_100363338(uint64_t a1)
{
  v2 = type metadata accessor for StringSearchCriteria();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_10036346C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10036FF60(&qword_1008EA2E8, &type metadata accessor for StringSearchCriteria);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100266D90();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_100140278(&qword_1008EA180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D46C0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10036360C()
{
  v12 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006EB180;
  *(v9 + 32) = v12;
  *(v9 + 40) = v0;
  *(v9 + 48) = v1;
  *(v9 + 56) = v2;
  *(v9 + 64) = v3;
  *(v9 + 72) = v4;
  *(v9 + 80) = v5;
  *(v9 + 88) = v6;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v10 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_1003637F0(uint64_t a1)
{
  v15[1] = a1;
  v17 = sub_100140278(&qword_1008EA2D0);
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = v15 - v2;
  v4 = sub_100140278(&qword_1008EA2D8);
  __chkstk_darwin(v4);
  sub_1001623C4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x8000000100757550;
  v5._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_100161DE0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = *(v1 + 8);
  v8 = v17;
  v7(v3, v17);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x20796D20776F6853;
  v9._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x79726F7473696820;
  v10._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v11 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v3, v8);
  sub_100140278(&qword_1008EA2E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006D1F70;
  *(v12 + 32) = v16;
  *(v12 + 40) = v11;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_100363B74()
{
  v12 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006EB180;
  *(v9 + 32) = v12;
  *(v9 + 40) = v0;
  *(v9 + 48) = v1;
  *(v9 + 56) = v2;
  *(v9 + 64) = v3;
  *(v9 + 72) = v4;
  *(v9 + 80) = v5;
  *(v9 + 88) = v6;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v10 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100363D48(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EA2B8);
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  __chkstk_darwin(v2);
  v5 = &v25 - v4;
  v6 = sub_100140278(&qword_1008EA2C0);
  __chkstk_darwin(v6);
  sub_1002F80D4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x206E65704FLL;
  v7._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v30 = sub_10028AAE0();
  v25 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._object = 0x80000001007574D0;
  v8._countAndFlagsBits = 0xD000000000000010;
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
  v12._countAndFlagsBits = 0x206E65704FLL;
  v12._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0xD000000000000014;
  v13._object = 0x80000001007574F0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v29;
  v29(v5, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x206E65704FLL;
  v15._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._object = 0x8000000100757510;
  v16._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v31;
  v14(v5, v31);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x206E65704FLL;
  v18._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._object = 0x8000000100757530;
  v19._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29(v5, v17);
  sub_100140278(&qword_1008EA2C8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006D6950;
  v22 = v27;
  *(v21 + 32) = v28;
  *(v21 + 40) = v22;
  *(v21 + 48) = v26;
  *(v21 + 56) = v20;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_1003642A0()
{
  v0 = sub_100140278(&qword_1008EA2A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_10033BFB0();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA2B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D64F0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_100364520()
{
  v0 = sub_100140278(&qword_1008EA2A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10033BFB0();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA2B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D6950;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_1003647F0()
{
  v0 = sub_100140278(&qword_1008EA2A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_10033BFB0();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA2B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D64F0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_100364A74()
{
  v0 = sub_100140278(&qword_1008EA2A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - v2;
  sub_10033BFB0();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
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
  sub_100140278(&qword_1008EA2B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D4140;
  v10 = v16;
  *(v9 + 32) = v17;
  *(v9 + 40) = v10;
  v11 = v14;
  *(v9 + 48) = v15;
  *(v9 + 56) = v11;
  *(v9 + 64) = v5;
  *(v9 + 72) = v6;
  *(v9 + 80) = v7;
  *(v9 + 88) = v8;
  v12 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v12;
}

uint64_t sub_100364E8C()
{
  v0 = sub_100140278(&qword_1008EA2A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - v2;
  sub_10033BFB0();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
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
  sub_100140278(&qword_1008EA2B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006E76B0;
  v10 = v15;
  *(v9 + 32) = v16;
  *(v9 + 40) = v10;
  *(v9 + 48) = v14;
  *(v9 + 56) = v5;
  *(v9 + 64) = v6;
  *(v9 + 72) = v7;
  *(v9 + 80) = v8;
  v11 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v11;
}

uint64_t sub_100365234()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D46C0;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_1003652B8()
{
  v0 = sub_100140278(&qword_1008EA290);
  v1 = *(v0 - 8);
  v22 = v0;
  v23 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_100140278(&qword_1008EA298);
  __chkstk_darwin(v4);
  sub_1002C7C28();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20796D206E65704FLL;
  v5._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_10036FDB0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x6E6F697463657320;
  v6._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = v22;
  v19 = *(v23 + 8);
  v23 += 8;
  v19(v3, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x20656D20776F6853;
  v8._object = 0xEB0000000020796DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x7972616D6D757320;
  v9._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v19;
  v19(v3, v7);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x8000000100757150;
  v11._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v3, v22);
  sub_100140278(&qword_1008EA2A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006D64F0;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_100365728()
{
  v14 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v13 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v12 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006EB1A0;
  *(v9 + 32) = v14;
  *(v9 + 40) = v13;
  *(v9 + 48) = v12;
  *(v9 + 56) = v0;
  *(v9 + 64) = v1;
  *(v9 + 72) = v2;
  *(v9 + 80) = v3;
  *(v9 + 88) = v4;
  *(v9 + 96) = v5;
  *(v9 + 104) = v6;
  *(v9 + 112) = v7;
  *(v9 + 120) = v8;
  v10 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100365948(uint64_t a1)
{
  v21 = sub_100140278(&qword_1008EA270);
  v23 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = v19 - v2;
  v4 = sub_100140278(&qword_1008EA278);
  __chkstk_darwin(v4);
  sub_100185480();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20796D206E65704FLL;
  v5._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_10036FC8C(&qword_1008EA258, &qword_1008EA260, &unk_1006EB560, sub_10036FD5C);
  v19[1] = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x646E65727420;
  v6._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19[0] = *(v23 + 8);
  v22 = v7;
  v23 += 8;
  v8 = v21;
  (v19[0])(v3, v21);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x6D20732774616857;
  v9._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._object = 0x80000001007570F0;
  v10._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = v19[0];
  (v19[0])(v3, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x796D207327776F48;
  v12._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x6420646E65727420;
  v13._object = 0xEC000000676E696FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v3, v8);
  sub_100140278(&qword_1008EA280);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D64F0;
  v16 = v20;
  *(v15 + 32) = v22;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v17;
}

uint64_t sub_100365DB8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10036FC8C(&qword_1008EA258, &qword_1008EA260, &unk_1006EB560, sub_10036FD5C);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100185480();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_100140278(&qword_1008EA180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D46C0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100365F54()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D4140;
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

uint64_t sub_1003660DC()
{
  v0 = sub_100140278(&qword_1008EA240);
  v1 = *(v0 - 8);
  v22 = v0;
  v23 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_100140278(&qword_1008EA248);
  __chkstk_darwin(v4);
  sub_10036F81C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x206E65704FLL;
  v5._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x74756F6B726F7720;
  v6._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = v22;
  v19 = *(v23 + 8);
  v23 += 8;
  v19(v3, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x20656D20776F6853;
  v8._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x74756F6B726F7720;
  v9._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v19;
  v19(v3, v7);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x2077656956;
  v11._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x74756F6B726F7720;
  v12._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v3, v22);
  sub_100140278(&qword_1008EA250);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006D64F0;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_100366544()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D64F0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_10036661C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EA240);
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  __chkstk_darwin(v2);
  v5 = v30 - v4;
  v6 = sub_100140278(&qword_1008EA248);
  __chkstk_darwin(v6);
  v7 = sub_10036F81C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x206E65704FLL;
  v8._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v36 = sub_10036FC8C(&qword_1008EA228, &qword_1008EA230, &unk_1006EB518, sub_10036FD08);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x20726F6620;
  v9._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v35 = sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30[1] = v7;
  v11 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v37;
  v13 = *(v38 + 8);
  v33 = v11;
  v34 = v13;
  v38 += 8;
  v13(v5, v37);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x656874206E65704FLL;
  v14._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  v30[0] = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x6E6F697463657320;
  v15._object = 0xED000020726F6620;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v12;
  v18 = v34;
  v34(v5, v17);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x20656D20776F6853;
  v19._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0x6F66206567617020;
  v20._object = 0xEA00000000002072;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18(v5, v37);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x206E65704FLL;
  v22._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0x2073747261686320;
  v23._object = 0xEC00000020726F66;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v5, v37);
  sub_100140278(&qword_1008EA250);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1006D6950;
  v27 = v32;
  *(v26 + 32) = v33;
  *(v26 + 40) = v27;
  *(v26 + 48) = v31;
  *(v26 + 56) = v25;
  v28 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v28;
}

uint64_t sub_100366CC4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10036F81C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10036FC8C(&qword_1008EA228, &qword_1008EA230, &unk_1006EB518, sub_10036FD08);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA180);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D1F70;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100366EE0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D64F0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_100366FBC(uint64_t a1)
{
  v33 = sub_100140278(&qword_1008EA240);
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v3 = &v26 - v2;
  v4 = sub_100140278(&qword_1008EA248);
  __chkstk_darwin(v4);
  v5 = sub_10036F81C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x656874206E65704FLL;
  v6._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v32 = sub_10036FA14();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x20666F2067656C20;
  v7._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v34 = sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = v5;
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v31 = *(v35 + 8);
  v35 += 8;
  v9 = v33;
  v31(v3, v33);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x206E65704FLL;
  v10._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v29 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x20656874206F7420;
  v11._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 1734700064;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v31;
  v31(v3, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x20656D20776F6853;
  v14._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x7469766974636120;
  v15._object = 0xED000020666F2079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v33;
  v13(v3, v33);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x6568742077656956;
  v18._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x666F207065747320;
  v19._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v31(v3, v17);
  sub_100140278(&qword_1008EA250);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1006D6950;
  v23 = v27;
  *(v22 + 32) = v28;
  *(v22 + 40) = v23;
  *(v22 + 48) = v26;
  *(v22 + 56) = v21;
  v24 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v24;
}

uint64_t sub_100367654(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E65E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_10001B104(a1, &v9 - v6, &qword_1008E65E0);
  sub_10001B104(v7, v4, &qword_1008E65E0);
  IntentParameter.wrappedValue.setter();
  return sub_10000EA04(v7, &qword_1008E65E0);
}

uint64_t sub_100367748()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10036FA14();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10036F81C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA180);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D1F70;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100367938(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EA240);
  v3 = *(v2 - 8);
  v63 = v2;
  v64 = v3;
  __chkstk_darwin(v2);
  v5 = &v51 - v4;
  v6 = sub_100140278(&qword_1008EA248);
  __chkstk_darwin(v6);
  v7 = sub_10036F81C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x206E65704FLL;
  v8._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v62 = sub_10036FC8C(&qword_1008EA228, &qword_1008EA230, &unk_1006EB518, sub_10036FD08);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x65687420726F6620;
  v9._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v61 = sub_10036FA14();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x20666F2067656C20;
  v10._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v11 = sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v58 = v7;
  v57 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v63;
  v14 = *(v64 + 8);
  v64 += 8;
  v60 = v14;
  v14(v5, v63);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x656874206E65704FLL;
  v15._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0xD000000000000011;
  v16._object = 0x8000000100757070;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  v51 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x20666F2067656C20;
  v17._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  v59 = v11;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v56 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19 = v5;
  v20 = v13;
  v21 = v60;
  v60(v5, v20);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x20656D20776F6853;
  v22._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0x6F66206567617020;
  v23._object = 0xEE00206568742072;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x7469766974636120;
  v24._object = 0xED000020666F2079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v55 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v5, v63);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0x206E65704FLL;
  v26._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._object = 0x8000000100757090;
  v27._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 0x666F207065747320;
  v28._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v54 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v60(v5, v63);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0x656874206E65704FLL;
  v30._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0x20666F2067656C20;
  v31._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 544175136;
  v32._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34 = v63;
  v35 = v60;
  v60(v19, v63);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36._countAndFlagsBits = 0x206E65704FLL;
  v36._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 0x20656874206F7420;
  v37._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 0xD000000000000015;
  v38._object = 0x80000001007570B0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v39._countAndFlagsBits = 0x6E6F697463657320;
  v39._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35(v19, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v40._countAndFlagsBits = 0x206E65704FLL;
  v40._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v40);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v41._countAndFlagsBits = 0x20656874206F7420;
  v41._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v42._countAndFlagsBits = 0xD00000000000001ALL;
  v42._object = 0x80000001007570D0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v42);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v43._countAndFlagsBits = 0x6E6F697463657320;
  v43._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35(v19, v63);
  sub_100140278(&qword_1008EA250);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1006E76B0;
  v46 = v56;
  *(v45 + 32) = v57;
  *(v45 + 40) = v46;
  v47 = v54;
  *(v45 + 48) = v55;
  *(v45 + 56) = v47;
  v48 = v52;
  *(v45 + 64) = v53;
  *(v45 + 72) = v48;
  *(v45 + 80) = v44;
  v49 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v49;
}

uint64_t sub_100368658()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10036FA14();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10036F81C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  swift_getKeyPath();
  sub_10036FC8C(&qword_1008EA228, &qword_1008EA230, &unk_1006EB518, sub_10036FD08);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA180);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D64F0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_1003688F4()
{
  v40 = sub_100140278(&qword_1008EA210);
  v0 = *(v40 - 8);
  __chkstk_darwin(v40);
  v2 = &v29 - v1;
  v3 = sub_100140278(&qword_1008EA218);
  __chkstk_darwin(v3);
  v4 = sub_10036F870();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x7361772074616857;
  v5._object = 0xEC00000020796D20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v37 = sub_10036FBE4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v38 = sub_10036FC38();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x20726F6620;
  v7._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v36 = sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = v4;
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = *(v0 + 8);
  v31 = v0 + 8;
  v39 = v9;
  v10 = v40;
  v9(v2, v40);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x65687420646E6946;
  v11._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x20726F6620;
  v13._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v30 = v2;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v39(v2, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x20656D20776F6853;
  v15._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x20726F6620;
  v17._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v30;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v39(v19, v40);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x20796D206E65704FLL;
  v20._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0x20726F6620;
  v22._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v39(v19, v40);
  sub_100140278(&qword_1008EA220);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1006D6950;
  v26 = v33;
  *(v25 + 32) = v34;
  *(v25 + 40) = v26;
  *(v25 + 48) = v32;
  *(v25 + 56) = v24;
  v27 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v27;
}

uint64_t sub_1003690C4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10036FBE4();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10036F870();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10036FC38();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  swift_getKeyPath();
  sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA180);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D64F0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_100369334()
{
  v43 = sub_100140278(&qword_1008EA210);
  v0 = *(v43 - 8);
  __chkstk_darwin(v43);
  v2 = &v34 - v1;
  v3 = sub_100140278(&qword_1008EA218);
  __chkstk_darwin(v3);
  v4 = sub_10036F870();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x7361772074616857;
  v5._object = 0xEC00000020796D20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v41 = sub_10036FBE4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v44 = sub_10036FC38();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x65687420726F6620;
  v7._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v40 = sub_10036FA14();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x7469766974636120;
  v8._object = 0xED000020666F2079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v42 = sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = v4;
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35 = *(v0 + 8);
  v45 = v0 + 8;
  v10 = v43;
  v35(v2, v43);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x65687420646E6946;
  v11._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x65687420726F6620;
  v13._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x20666F2067656C20;
  v14._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v34 = v2;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v2;
  v17 = v35;
  v35(v16, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x20656D20776F6853;
  v18._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0x65687420726F6620;
  v20._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x666F207065747320;
  v21._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  v23 = v34;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v23, v43);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x20796D206E65704FLL;
  v24._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 32;
  v25._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0x65687420726F6620;
  v26._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 0x7469766974636120;
  v27._object = 0xED000020666F2079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v23, v43);
  sub_100140278(&qword_1008EA220);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1006D6950;
  v31 = v37;
  *(v30 + 32) = v38;
  *(v30 + 40) = v31;
  *(v30 + 48) = v36;
  *(v30 + 56) = v29;
  v32 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v32;
}

uint64_t sub_100369CC4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10036FBE4();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10036F870();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10036FC38();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  swift_getKeyPath();
  sub_10036FA14();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  swift_getKeyPath();
  sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v8 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D6950;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100369FA8()
{
  v39 = sub_100140278(&qword_1008EA1E8);
  v0 = *(v39 - 8);
  __chkstk_darwin(v39);
  v2 = &v29 - v1;
  v3 = sub_100140278(&qword_1008EA1F0);
  __chkstk_darwin(v3);
  v4 = sub_10036F8C4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20796D20776F6853;
  v5._object = 0xEE00206C61746F74;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v37 = sub_1002013D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x636E617473696420;
  v6._object = 0xEE0020726F662065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v38 = sub_10036FAC8();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v36 = sub_10036FB1C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = v4;
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = *(v0 + 8);
  v31 = v0 + 8;
  v40 = v9;
  v10 = v39;
  v9(v2, v39);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000012;
  v11._object = 0x8000000100757030;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x636E617473696420;
  v12._object = 0xEE0020726F662065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v30 = v2;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v40(v2, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x8000000100757050;
  v15._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0x636E617473696420;
  v16._object = 0xEE0020726F662065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v30;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v40(v19, v39);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x20656D20776F6853;
  v20._object = 0xEB0000000020796DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x636E617473696420;
  v21._object = 0xEE0020726F662065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v40(v19, v39);
  sub_100140278(&qword_1008EA1F8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1006D6950;
  v26 = v33;
  *(v25 + 32) = v34;
  *(v25 + 40) = v26;
  *(v25 + 48) = v32;
  *(v25 + 56) = v24;
  v27 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v27;
}

uint64_t sub_10036A7C4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1002013D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10036F8C4();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10036FAC8();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  swift_getKeyPath();
  sub_10036FB1C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA180);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D64F0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_10036AA34()
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
  sub_100140278(&qword_1008DF070);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006E44D0;
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

uint64_t sub_10036ABD8()
{
  v26 = sub_100140278(&qword_1008EA1E8);
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v1 = v23 - v0;
  v2 = sub_100140278(&qword_1008EA1F0);
  __chkstk_darwin(v2);
  sub_10036F8C4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0x2072616620776F48;
  v3._object = 0xEE00204920646964;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  v23[1] = sub_1002013D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  v28 = sub_10036FAC8();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v27 = sub_10036FB1C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23[0] = *(v29 + 8);
  v29 += 8;
  v7 = v26;
  (v23[0])(v1, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100756FD0;
  v8._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v7;
  v13 = v23[0];
  (v23[0])(v1, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD00000000000001BLL;
  v14._object = 0x8000000100756FF0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v1, v26);
  sub_100140278(&qword_1008EA1F8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1006D64F0;
  v20 = v24;
  *(v19 + 32) = v25;
  *(v19 + 40) = v20;
  *(v19 + 48) = v18;
  v21 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v21;
}

uint64_t sub_10036B1FC()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1002013D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10036F8C4();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10036FAC8();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  swift_getKeyPath();
  sub_10036FB1C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA180);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D64F0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_10036B46C()
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
  sub_100140278(&qword_1008DF070);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006E44D0;
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

uint64_t sub_10036B5E4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D1F70;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_10036B670()
{
  v23 = sub_100140278(&qword_1008EA1C0);
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v1 = &v21 - v0;
  v2 = sub_100140278(&qword_1008EA1C8);
  __chkstk_darwin(v2);
  sub_10036F918();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x8000000100756F10;
  v3._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  v25 = sub_10019C1A0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v4._countAndFlagsBits = 0x20726F6620;
  v4._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = *(v26 + 8);
  v26 += 8;
  v6 = v23;
  v21(v1, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x20657461647055;
  v7._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x2074726F66666520;
  v8._object = 0xEB00000000206F74;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v6;
  v11 = v6;
  v12 = v21;
  v21(v1, v11);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD00000000000001ALL;
  v13._object = 0x8000000100756F90;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 544175136;
  v14._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v1, v10);
  sub_100140278(&qword_1008EA1D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006D64F0;
  v18 = v22;
  *(v17 + 32) = v24;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v19;
}

uint64_t sub_10036BBA8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10019C1A0();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10036F918();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA180);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D1F70;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_10036BD98()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D1F70;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_10036BE48()
{
  v26 = sub_100140278(&qword_1008EA1C0);
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v1 = &v22 - v0;
  v2 = sub_100140278(&qword_1008EA1C8);
  __chkstk_darwin(v2);
  sub_10036F918();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x8000000100756F10;
  v3._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  v28 = sub_10019C1A0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v4._countAndFlagsBits = 0x65687420726F6620;
  v4._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  v27 = sub_10036FA14();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v5._countAndFlagsBits = 0x7469766974636120;
  v5._object = 0xED000020666F2079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = *(v29 + 8);
  v29 += 8;
  v7 = v26;
  v23(v1, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD000000000000018;
  v8._object = 0x8000000100756F30;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x7469766974636120;
  v9._object = 0xED000020666F2079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544175136;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v23;
  v23(v1, v7);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD00000000000001ELL;
  v13._object = 0x8000000100756F50;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x7469766974636120;
  v14._object = 0xED000020666F2079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 544175136;
  v15._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v1, v26);
  sub_100140278(&qword_1008EA1D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006D64F0;
  v19 = v24;
  *(v18 + 32) = v25;
  *(v18 + 40) = v19;
  *(v18 + 48) = v17;
  v20 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v20;
}

uint64_t sub_10036C4C4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10019C1A0();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10036F918();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10036FA14();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  swift_getKeyPath();
  sub_1001C2F30();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100140278(&qword_1008EA180);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D64F0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_10036C734()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D6950;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_10036C838()
{
  v0 = sub_100140278(&qword_1008EA1A0);
  v1 = *(v0 - 8);
  v22 = v0;
  v23 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_100140278(&qword_1008EA1A8);
  __chkstk_darwin(v4);
  sub_1001D1B4C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x7361772074616857;
  v5._object = 0xEC00000020796D20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_10006E15C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = v22;
  v19 = *(v23 + 8);
  v23 += 8;
  v19(v3, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x20656D20776F6853;
  v8._object = 0xEB0000000020796DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v19;
  v19(v3, v7);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20796D206E65704FLL;
  v11._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v3, v22);
  sub_100140278(&qword_1008EA1B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006D64F0;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_10036CC4C(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = v1;
  return IntentParameter.wrappedValue.setter();
}

uint64_t sub_10036CCD8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D4140;
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

uint64_t sub_10036CE5C(uint64_t a1)
{
  v35 = a1;
  v34 = sub_100140278(&qword_1008EA1A0);
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v26 - v2;
  v4 = sub_100140278(&qword_1008EA1A8);
  __chkstk_darwin(v4);
  sub_1001D1B4C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD000000000000011;
  v5._object = 0x8000000100756D70;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v33 = sub_10006E15C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v1 + 8;
  v7 = *(v1 + 8);
  v9 = v34;
  v7(v3, v34);
  v31 = v8;
  v32 = v7;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100756D90;
  v10._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v3, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x20796D206E65704FLL;
  v12._object = 0xED0000207473616CLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD000000000000013;
  v14._object = 0x8000000100756DB0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v34;
  v17 = v32;
  v32(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0xD000000000000017;
  v18._object = 0x8000000100756DD0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v3, v16);
  sub_100140278(&qword_1008EA1B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006D6BC0;
  v22 = v29;
  *(v21 + 32) = v30;
  *(v21 + 40) = v22;
  v23 = v27;
  *(v21 + 48) = v28;
  *(v21 + 56) = v23;
  *(v21 + 64) = v20;
  v24 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v24;
}

uint64_t sub_10036D474()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006E87A0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t sub_10036D5A8()
{
  v25 = sub_100140278(&qword_1008EA188);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v1 = &v18 - v0;
  v2 = type metadata accessor for _AssistantIntent.PhraseToken();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008EA190);
  __chkstk_darwin(v6);
  sub_10036F96C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x206E65704FLL;
  v7._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  v22 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v21 = *(v3 + 104);
  v19 = v2;
  v21(v5);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v20 = *(v3 + 8);
  v20(v5, v2);
  v8._countAndFlagsBits = 0x7465532070704120;
  v8._object = 0xED000073676E6974;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v9 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = *(v23 + 8);
  v24 = v9;
  v10 = v25;
  (v23)(v1, v25);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x206F74206F47;
  v11._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v12 = v19;
  (v21)(v5, v22, v19);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v20(v5, v12);
  v13._countAndFlagsBits = 0x7465532070704120;
  v13._object = 0xED000073676E6974;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (v23)(v1, v10);
  sub_100140278(&qword_1008EA198);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D1F70;
  *(v15 + 32) = v24;
  *(v15 + 40) = v14;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_10036D9C8(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
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
  sub_100140278(&qword_1008EA180);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006D46C0;
  *(v12 + 32) = v11;
  v13 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_10036DB58()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D46C0;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_10036DBE0()
{
  if (qword_1008DA958 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10036DC4C()
{
  v81 = type metadata accessor for InputConnectionBehavior();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v63 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v1 - 8);
  v3 = &v63 - v2;
  v4 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v4 - 8);
  v6 = &v63 - v5;
  v77 = type metadata accessor for LocalizedStringResource();
  v7 = *(v77 - 8);
  __chkstk_darwin(v77);
  v8 = type metadata accessor for _AssistantIntent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v105 = sub_1002BDE28();
  sub_1002C1C70();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v104 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12 = *(v9 + 8);
  v12(v11, v8);
  *&v105 = sub_1002BDE28();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v103 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_1002BDE28();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v102 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_1002BDE28();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v101 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1002BF050(&v105);
  sub_1002A82B4();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v100 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1002BF050(&v105);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v99 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1002BF050(&v105);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v98 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1002BF050(&v105);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v97 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1002BF050(&v105);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v96 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1002BF050(&v105);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v95 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1002BF050(&v105);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v94 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1002BF050(&v105);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v93 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1002BE768(&v105);
  sub_1002C1A94();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v92 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1002BE768(&v105);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v91 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1002BE768(&v105);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v90 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1002BE768(&v105);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v89 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1002BE768(&v105);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v88 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_100140278(&qword_1008E5FB8);
  type metadata accessor for AppDependencyManager();
  v105 = 0u;
  v106 = 0u;
  v107 = 0;
  static AppDependencyManager.shared.getter();
  *&v105 = AppDependency.__allocating_init(key:manager:)();
  sub_1002A51BC();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v87 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_10047C0A4();
  sub_10036F6CC();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v86 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_10047C0A4();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v85 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_10047C3C8();
  sub_10036F720();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v84 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_10047C6D8();
  sub_10036F774();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v83 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_10036F7C8();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v82 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_10026590C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v79 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_100140278(&qword_1008E45C0);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v7 + 56))(v6, 0, 1, v77);
  v13 = type metadata accessor for IntentDialog();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  (*(v80 + 104))(v78, enum case for InputConnectionBehavior.default(_:), v81);
  *&v105 = IntentParameter<>.init(title:description:requestValueDialog:inputConnectionBehavior:)();
  sub_100266D90();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v81 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_100162DF8();
  sub_1001623C4();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v80 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_1002F84B4();
  sub_1002F80D4();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v78 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_10033C710();
  sub_10033BFB0();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v77 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_10033C710();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v76 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_10033C710();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v75 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_10033C710();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v74 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_10033C710();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v73 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_1002C8008();
  sub_1002C7C28();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v72 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_10018510C();
  sub_100185480();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v71 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_1004043DC();
  *(&v105 + 1) = v14;
  *&v106 = v15;
  sub_10036F81C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v70 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_1004043DC();
  *(&v105 + 1) = v16;
  *&v106 = v17;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v69 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_1004043DC();
  *(&v105 + 1) = v18;
  *&v106 = v19;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v68 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_1004043DC();
  *(&v105 + 1) = v20;
  *&v106 = v21;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v67 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_100404A9C(&v105);
  sub_10036F870();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v66 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_100404A9C(&v105);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v65 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1005B20B0(&v105);
  sub_10036F8C4();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v64 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_1005B20B0(&v105);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v22 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_1004052E8();
  *(&v105 + 1) = v23;
  *&v106 = v24;
  *(&v106 + 1) = v25;
  sub_10036F918();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v26 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_1004052E8();
  *(&v105 + 1) = v27;
  *&v106 = v28;
  *(&v106 + 1) = v29;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v30 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_1001D3638();
  *(&v105 + 1) = v31;
  *&v106 = v32;
  *(&v106 + 1) = v33;
  sub_1001D1B4C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v34 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_1001D3638();
  *(&v105 + 1) = v35;
  *&v106 = v36;
  *(&v106 + 1) = v37;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v38 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  *&v105 = sub_10052B3E4();
  sub_10036F96C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v39 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12(v11, v8);
  sub_100140278(&qword_1008EA170);
  v40 = swift_allocObject();
  v41 = v103;
  *(v40 + 32) = v104;
  *(v40 + 40) = v41;
  v42 = v101;
  *(v40 + 48) = v102;
  *(v40 + 56) = v42;
  v43 = v99;
  *(v40 + 64) = v100;
  *(v40 + 72) = v43;
  v44 = v97;
  *(v40 + 80) = v98;
  *(v40 + 88) = v44;
  v45 = v95;
  *(v40 + 96) = v96;
  *(v40 + 104) = v45;
  v46 = v93;
  *(v40 + 112) = v94;
  *(v40 + 120) = v46;
  v47 = v91;
  *(v40 + 128) = v92;
  *(v40 + 136) = v47;
  v48 = v89;
  *(v40 + 144) = v90;
  *(v40 + 152) = v48;
  v49 = v87;
  *(v40 + 160) = v88;
  *(v40 + 168) = v49;
  *(v40 + 16) = xmmword_1006EB1B0;
  v50 = v85;
  *(v40 + 176) = v86;
  *(v40 + 184) = v50;
  v51 = v83;
  *(v40 + 192) = v84;
  *(v40 + 200) = v51;
  v52 = v79;
  *(v40 + 208) = v82;
  *(v40 + 216) = v52;
  v53 = v80;
  *(v40 + 224) = v81;
  *(v40 + 232) = v53;
  v54 = v77;
  *(v40 + 240) = v78;
  *(v40 + 248) = v54;
  v55 = v75;
  *(v40 + 256) = v76;
  *(v40 + 264) = v55;
  v56 = v73;
  *(v40 + 272) = v74;
  *(v40 + 280) = v56;
  v57 = v71;
  *(v40 + 288) = v72;
  *(v40 + 296) = v57;
  v58 = v69;
  *(v40 + 304) = v70;
  *(v40 + 312) = v58;
  v59 = v67;
  *(v40 + 320) = v68;
  *(v40 + 328) = v59;
  v60 = v65;
  *(v40 + 336) = v66;
  *(v40 + 344) = v60;
  *(v40 + 352) = v64;
  *(v40 + 360) = v22;
  *(v40 + 368) = v26;
  *(v40 + 376) = v30;
  *(v40 + 384) = v34;
  *(v40 + 392) = v38;
  *(v40 + 400) = v39;
  v61 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v61;
}

unint64_t sub_10036F6CC()
{
  result = qword_1008EA128;
  if (!qword_1008EA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA128);
  }

  return result;
}

unint64_t sub_10036F720()
{
  result = qword_1008EA130;
  if (!qword_1008EA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA130);
  }

  return result;
}

unint64_t sub_10036F774()
{
  result = qword_1008EA138;
  if (!qword_1008EA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA138);
  }

  return result;
}

unint64_t sub_10036F7C8()
{
  result = qword_1008EA140;
  if (!qword_1008EA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA140);
  }

  return result;
}

unint64_t sub_10036F81C()
{
  result = qword_1008EA148;
  if (!qword_1008EA148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA148);
  }

  return result;
}

unint64_t sub_10036F870()
{
  result = qword_1008EA150;
  if (!qword_1008EA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA150);
  }

  return result;
}

unint64_t sub_10036F8C4()
{
  result = qword_1008EA158;
  if (!qword_1008EA158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA158);
  }

  return result;
}

unint64_t sub_10036F918()
{
  result = qword_1008EA160;
  if (!qword_1008EA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA160);
  }

  return result;
}

unint64_t sub_10036F96C()
{
  result = qword_1008EA168;
  if (!qword_1008EA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA168);
  }

  return result;
}

unint64_t sub_10036F9C0()
{
  result = qword_1008EA178;
  if (!qword_1008EA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA178);
  }

  return result;
}

unint64_t sub_10036FA14()
{
  result = qword_1008EA1B8;
  if (!qword_1008EA1B8)
  {
    sub_100141EEC(&qword_1008E65E0);
    sub_10036FF60(&qword_1008DEAE0, type metadata accessor for WorkoutActivityEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA1B8);
  }

  return result;
}

unint64_t sub_10036FAC8()
{
  result = qword_1008EA1D8;
  if (!qword_1008EA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA1D8);
  }

  return result;
}

unint64_t sub_10036FB1C()
{
  result = qword_1008EA1E0;
  if (!qword_1008EA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA1E0);
  }

  return result;
}

uint64_t sub_10036FB70@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10036FBE4()
{
  result = qword_1008EA200;
  if (!qword_1008EA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA200);
  }

  return result;
}

unint64_t sub_10036FC38()
{
  result = qword_1008EA208;
  if (!qword_1008EA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA208);
  }

  return result;
}

uint64_t sub_10036FC8C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10036FD08()
{
  result = qword_1008EA238;
  if (!qword_1008EA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA238);
  }

  return result;
}

unint64_t sub_10036FD5C()
{
  result = qword_1008EA268;
  if (!qword_1008EA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA268);
  }

  return result;
}

unint64_t sub_10036FDB0()
{
  result = qword_1008EA288;
  if (!qword_1008EA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA288);
  }

  return result;
}

unint64_t sub_10036FE04()
{
  result = qword_1008EA328;
  if (!qword_1008EA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA328);
  }

  return result;
}

unint64_t sub_10036FE58()
{
  result = qword_1008EA360;
  if (!qword_1008EA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA360);
  }

  return result;
}

unint64_t sub_10036FEAC()
{
  result = qword_1008EA3A0;
  if (!qword_1008EA3A0)
  {
    sub_100141EEC(&unk_1008F73A0);
    sub_10036FF60(&qword_1008EA3A8, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA3A0);
  }

  return result;
}

uint64_t sub_10036FF60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10036FFDC(unint64_t a1, unint64_t a2, double a3)
{
  v4 = v3;
  v8 = *&v3[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_barContainerView];
  [v8 removeFromSuperview];
  [v3 addSubview:v8];
  v9 = [v8 topAnchor];
  v10 = [v3 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v12 = [v8 bottomAnchor];
  v13 = [v4 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (a1 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v43 = a2;
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = a2;
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  type metadata accessor for UILayoutPriority(0);
  if (v15 < 1)
  {
    __break(1u);
    goto LABEL_36;
  }

  v16 = 0;
  v17 = a1;
  v40 = a1;
  v41 = a1 & 0xC000000000000001;
  do
  {
    if (v41)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v17 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = [v8 leadingAnchor];
    v21 = [v20 constraintEqualToAnchor:v19 constant:a3];

    sub_100372318();
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v22) = v44;
    [v21 setPriority:v22];
    v23 = v21;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v24 = [v8 leadingAnchor];
    v25 = [v24 constraintGreaterThanOrEqualToAnchor:v19 constant:a3];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v16;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v17 = v40;
  }

  while (v15 != v16);
  a2 = v43;
LABEL_18:
  if (!(a2 >> 62))
  {
    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_20;
    }

LABEL_30:
    v38 = objc_opt_self();
    sub_1000059F8(0, &qword_1008DC980);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v38 activateConstraints:isa];

    return;
  }

  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (!v26)
  {
    goto LABEL_30;
  }

LABEL_20:
  type metadata accessor for UILayoutPriority(0);
  if (v26 >= 1)
  {
    v27 = 0;
    v28 = a2;
    v42 = a2 & 0xC000000000000001;
    v29 = -a3;
    do
    {
      if (v42)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v28 + 8 * v27 + 32);
      }

      v31 = v30;
      v32 = [v8 trailingAnchor];
      v33 = [v32 constraintEqualToAnchor:v31 constant:v29];

      sub_100372318();
      static _UIKitNumericRawRepresentable.- infix(_:_:)();
      LODWORD(v34) = v44;
      [v33 setPriority:v34];
      v35 = v33;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v36 = [v8 trailingAnchor];
      v37 = [v36 constraintLessThanOrEqualToAnchor:v31 constant:v29];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v27;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v28 = v43;
    }

    while (v26 != v27);
    goto LABEL_30;
  }

LABEL_36:
  __break(1u);
}

char *sub_100370650(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v171 = a4;
  v12 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v12 - 8);
  v14 = &v157 - v13;
  v15 = type metadata accessor for ZoneViewType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_dividerHeight] = 0;
  *&v6[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_zone] = a1;
  *&v6[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_timeInZone] = a5;
  *&v6[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_percentageOfTimeInZone] = a6;
  *&v6[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_formattingManager] = a2;
  v19 = objc_allocWithZone(UILabel);

  v163 = a2;
  v20 = [v19 init];
  *&v6[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_zoneNameLabel] = v20;
  v21 = [objc_allocWithZone(UILabel) init];
  *&v6[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_rangeLabel] = v21;
  v22 = [objc_allocWithZone(UIView) init];
  *&v6[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_barContainerView] = v22;
  v23 = &v6[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_unit];
  v24 = v171;
  *v23 = a3;
  *(v23 + 1) = v24;
  v25 = type metadata accessor for WorkoutTimeInZoneView();
  v172.receiver = v6;
  v172.super_class = v25;
  v26 = objc_msgSendSuper2(&v172, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v27 = sub_1000059F8(0, &qword_1008E7FC0);
  v28 = v26;
  Zone.configuration.getter();
  Zone.configuration.getter();
  (*(v16 + 104))(v18, enum case for ZoneViewType.heartRateZone(_:), v15);
  zoneColor(for:index:count:)();
  (*(v16 + 8))(v18, v15);
  v29 = Color.hex.getter();
  v31 = v30;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  v162 = v27;
  isa = UIColor.init(hex:)(v32).super.isa;
  v34 = OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_zoneNameLabel;
  [*(v28 + OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_zoneNameLabel) setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = *&v34[v28];
  v167 = isa;
  [v35 setTextColor:?];
  v36 = *&v34[v28];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 mainBundle];
  v40 = String._bridgeToObjectiveC()();
  v41 = [v39 localizedStringForKey:v40 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Locale.current.getter();
  v42 = type metadata accessor for Locale();
  (*(*(v42 - 8) + 56))(v14, 0, 1, v42);
  sub_100140278(&unk_1008E4E50);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1006D46C0;
  v164 = a1;
  result = Zone.configuration.getter();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *(v43 + 56) = &type metadata for Int;
    *(v43 + 64) = &protocol witness table for Int;
    *(v43 + 32) = result + 1;
    String.init(format:locale:_:)();

    sub_10018BB64(v14);
    v45 = String._bridgeToObjectiveC()();

    [v38 setText:v45];

    v46 = *&v34[v28];
    v47 = *&v34[v28];

    v48 = v28;
    v49 = *&v34[v28];
    v50 = v48;
    [v50 addSubview:v49];
    v51 = objc_opt_self();
    v170 = v51;
    v168 = sub_100140278(&unk_1008E4E20);
    v52 = swift_allocObject();
    v169 = xmmword_1006D68D0;
    *(v52 + 16) = xmmword_1006D68D0;
    v53 = [*&v34[v28] leadingAnchor];
    v54 = [v50 leadingAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];

    *(v52 + 32) = v55;
    v56 = [*&v34[v28] centerYAnchor];
    v57 = [v50 centerYAnchor];

    v58 = [v56 constraintEqualToAnchor:v57];
    *(v52 + 40) = v58;
    v171 = sub_1000059F8(0, &qword_1008DC980);
    v59 = Array._bridgeToObjectiveC()().super.isa;

    [v51 activateConstraints:v59];

    v60 = OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_rangeLabel;
    [*&v50[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_rangeLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
    v61 = *&v50[v60];
    v62 = objc_opt_self();
    v63 = v61;
    v64 = [v62 grayColor];
    [v63 setTextColor:v64];

    v65 = *&v50[v60];
    v66 = sub_100371BEC();
    [v65 setAttributedText:v66];

    v67 = *&v50[v60];
    v68 = *&v50[v60];

    [v50 addSubview:*&v50[v60]];
    v69 = swift_allocObject();
    *(v69 + 16) = v169;
    v70 = *&v50[v60];
    v166 = v34;
    v71 = [v70 trailingAnchor];
    v72 = [v50 trailingAnchor];

    v73 = [v71 constraintEqualToAnchor:v72];
    *(v69 + 32) = v73;
    v74 = [*&v50[v60] centerYAnchor];
    v75 = [v50 centerYAnchor];

    v76 = [v74 constraintEqualToAnchor:v75];
    *(v69 + 40) = v76;
    v77 = Array._bridgeToObjectiveC()().super.isa;

    [v170 activateConstraints:v77];

    v161 = OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_barContainerView;
    [*&v50[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_barContainerView] setTranslatesAutoresizingMaskIntoConstraints:0];
    inited = swift_initStackObject();
    v165 = xmmword_1006D4E70;
    *(inited + 16) = xmmword_1006D4E70;
    *(inited + 32) = [*&v166[v28] trailingAnchor];
    v79 = swift_initStackObject();
    *(v79 + 16) = v165;
    *(v79 + 32) = [*&v50[v60] leadingAnchor];
    sub_10036FFDC(inited, v79, 10.0);

    swift_setDeallocating();
    swift_arrayDestroy();
    v80 = [objc_allocWithZone(UILabel) init];
    [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (*&v50[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_timeInZone] < 3600.0)
    {
      v81 = 3;
    }

    else
    {
      v81 = 2;
    }

    result = [*&v50[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_formattingManager] stringWithDuration:v81 durationFormat:?];
    if (result)
    {
      v82 = result;
      [v80 setText:result];

      [v80 setHidden:1];
      v83 = v80;

      v84 = v161;
      [*&v50[v161] addSubview:v80];
      v85 = swift_allocObject();
      *(v85 + 16) = v169;
      v86 = [v80 trailingAnchor];
      v87 = [*&v50[v84] trailingAnchor];
      v88 = [v86 constraintEqualToAnchor:v87 constant:-10.0];

      *(v85 + 32) = v88;
      v89 = [v83 topAnchor];
      v90 = [*&v50[v84] topAnchor];
      v91 = [v89 constraintEqualToAnchor:v90];

      *(v85 + 40) = v91;
      v92 = Array._bridgeToObjectiveC()().super.isa;

      [v170 activateConstraints:v92];

      v93 = [objc_allocWithZone(UIView) init];
      [v93 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v93 setHidden:1];
      [*&v50[v84] addSubview:v93];
      v94 = swift_allocObject();
      v165 = xmmword_1006D5300;
      *(v94 + 16) = xmmword_1006D5300;
      v95 = [v93 leadingAnchor];
      v96 = [*&v50[v84] leadingAnchor];
      v97 = [v95 constraintEqualToAnchor:v96];

      *(v94 + 32) = v97;
      v98 = [v93 trailingAnchor];
      v166 = v83;
      v99 = [v83 leadingAnchor];

      v100 = [v98 constraintEqualToAnchor:v99 constant:-10.0];
      *(v94 + 40) = v100;
      v101 = [v93 topAnchor];
      v102 = [*&v50[v84] topAnchor];
      v103 = [v101 constraintEqualToAnchor:v102];

      *(v94 + 48) = v103;
      v160 = v93;
      v104 = [v93 heightAnchor];
      v105 = [v104 constraintEqualToConstant:0.0];

      *(v94 + 56) = v105;
      v106 = Array._bridgeToObjectiveC()().super.isa;

      v107 = v170;
      [v170 activateConstraints:v106];

      v108 = [objc_allocWithZone(UIView) init];
      [v108 setTranslatesAutoresizingMaskIntoConstraints:0];
      v109 = v167;
      [v108 setBackgroundColor:v167];

      [v108 _setCornerRadius:4.0];
      v110 = v84;
      [*&v50[v84] addSubview:v108];
      v111 = v107;
      v112 = v108;
      v113 = [v111 constraintWithItem:v108 attribute:7 relatedBy:0 toItem:v93 attribute:7 multiplier:a6 constant:8.0];
      v114 = swift_allocObject();
      *(v114 + 16) = v165;
      v115 = v112;
      v116 = [v112 leadingAnchor];
      v117 = [*&v50[v84] leadingAnchor];
      v118 = [v116 constraintEqualToAnchor:v117];

      *(v114 + 32) = v118;
      *(v114 + 40) = v113;
      v159 = v113;
      v119 = [v115 centerYAnchor];
      v120 = [*&v50[v110] centerYAnchor];
      v121 = [v119 constraintEqualToAnchor:v120];

      *(v114 + 48) = v121;
      v158 = v115;
      v122 = [v115 heightAnchor];
      v123 = [v122 constraintEqualToConstant:8.0];

      *(v114 + 56) = v123;
      v124 = Array._bridgeToObjectiveC()().super.isa;

      v125 = v170;
      [v170 activateConstraints:v124];

      v126 = [objc_allocWithZone(UILabel) init];
      [v126 setTranslatesAutoresizingMaskIntoConstraints:0];
      v127 = [v166 text];
      [v126 setText:v127];

      [*&v50[v110] addSubview:v126];
      v128 = swift_allocObject();
      *(v128 + 16) = v169;
      v129 = [v126 leadingAnchor];
      v130 = [v115 trailingAnchor];
      v131 = [v129 constraintEqualToAnchor:v130 constant:10.0];

      *(v128 + 32) = v131;
      v132 = [v126 centerYAnchor];

      v133 = [*&v50[v110] centerYAnchor];
      v134 = [v132 constraintEqualToAnchor:v133];

      *(v128 + 40) = v134;
      v135 = Array._bridgeToObjectiveC()().super.isa;

      [v125 activateConstraints:v135];

      v136 = [objc_allocWithZone(UIView) init];
      [v136 setTranslatesAutoresizingMaskIntoConstraints:0];
      v137 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28627, 0.28627, 0.28627, 1.0).super.isa;
      [v136 setBackgroundColor:v137];

      [v50 addSubview:v136];
      v138 = [v136 heightAnchor];
      v139 = [v50 traitCollection];

      [v139 displayScale];
      v141 = v140;

      v142 = [v138 constraintEqualToConstant:1.0 / v141];
      v143 = *&v50[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_dividerHeight];
      *&v50[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_dividerHeight] = v142;
      v144 = v142;

      v145 = swift_allocObject();
      *(v145 + 16) = v165;
      v146 = [v136 leadingAnchor];
      v147 = [v50 leadingAnchor];

      v148 = [v146 constraintEqualToAnchor:v147];
      *(v145 + 32) = v148;
      v149 = [v136 trailingAnchor];
      v150 = [v50 trailingAnchor];

      v151 = [v149 constraintEqualToAnchor:v150];
      *(v145 + 40) = v151;
      v152 = [v136 bottomAnchor];
      v153 = [v50 bottomAnchor];

      v154 = [v152 constraintEqualToAnchor:v153];
      *(v145 + 48) = v154;
      *(v145 + 56) = v144;
      v155 = v144;
      v156 = Array._bridgeToObjectiveC()().super.isa;

      [v170 activateConstraints:v156];

      return v50;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100371BEC()
{
  v1 = v0;
  v2 = COERCE_DOUBLE(dispatch thunk of Zone.displayLowerBound.getter());
  v4 = v3;
  v5 = COERCE_DOUBLE(dispatch thunk of Zone.displayUpperBound.getter());
  v7 = v6;
  v8 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v10 = [v9 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];

  if (!v10)
  {
    goto LABEL_21;
  }

  if ((v7 & 1) == 0)
  {
    if ((v4 & 1) == 0)
    {
      v23 = v2;
      v24 = [objc_opt_self() mainBundle];
      v25 = String._bridgeToObjectiveC()();
      v26 = [v24 localizedStringForKey:v25 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1006D1F70;
      v28 = objc_opt_self();
      v29 = [objc_allocWithZone(NSNumber) initWithDouble:v23];
      v30 = [v28 localizedStringFromNumber:v29 numberStyle:0];

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      *(v27 + 56) = &type metadata for String;
      v34 = sub_10000A788();
      *(v27 + 64) = v34;
      *(v27 + 32) = v31;
      *(v27 + 40) = v33;
      v35 = [objc_allocWithZone(NSNumber) initWithDouble:v5];
      v36 = [v28 localizedStringFromNumber:v35 numberStyle:0];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      *(v27 + 96) = &type metadata for String;
      *(v27 + 104) = v34;
      *(v27 + 72) = v37;
      *(v27 + 80) = v39;
      v15 = String.init(format:_:)();
      v17 = v40;
      goto LABEL_14;
    }

    v18 = [objc_opt_self() mainBundle];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 localizedStringForKey:v19 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1006D46C0;
    if ((~*&v5 & 0x7FF0000000000000) != 0)
    {
      if (v5 > -9.22337204e18)
      {
        if (v5 < 9.22337204e18)
        {
          *(v21 + 56) = &type metadata for Int;
          *(v21 + 64) = &protocol witness table for Int;
          *(v21 + 32) = v5;
          v15 = static String.localizedStringWithFormat(_:_:)();
          v17 = v22;

          goto LABEL_14;
        }

        goto LABEL_20;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v4 & 1) == 0)
  {
    v11 = [objc_opt_self() mainBundle];
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 localizedStringForKey:v12 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006D46C0;
    if ((~*&v2 & 0x7FF0000000000000) != 0)
    {
      if (v2 > -9.22337204e18)
      {
        if (v2 < 9.22337204e18)
        {
          *(v14 + 56) = &type metadata for Int;
          *(v14 + 64) = &protocol witness table for Int;
          *(v14 + 32) = v2;
          v15 = static String.localizedStringWithFormat(_:_:)();
          v17 = v16;

LABEL_14:

          v41 = sub_1004C154C(v15, v17, *(v1 + OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_unit), *(v1 + OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_unit + 8), v10);

          return v41;
        }

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100372220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutTimeInZoneView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100372318()
{
  result = qword_1008EA458;
  if (!qword_1008EA458)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA458);
  }

  return result;
}

uint64_t sub_100372370(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  sub_100372D94(a1, a2);
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

void sub_1003724E4(CGContext *a1, double (*a2)(double, double), uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v73 = a3;
  v71 = a8;
  v67.size.height = a7;
  v67.size.width = a6;
  v67.origin.y = a5;
  v67.origin.x = a4;
  v64 = type metadata accessor for Date();
  v11 = *(v64 - 8);
  __chkstk_darwin(v64);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v62 = v8;
  v14 = *(v8 + OBJC_IVAR____TtC10FitnessApp26WorkoutOverlayPathRenderer_locationReadings);
  v15 = [v14 workout];
  v16 = [v15 workoutActivityType];

  v17 = 5.0;
  if (v16 == 46)
  {
    v17 = 15.0;
  }

  v63 = v17;
  v18 = [v14 allValidLocations];
  sub_10028CAC8();
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v21 = v64;
    if (!i)
    {
      break;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v22 = *(v19 + 32);
    }

    v75 = v22;

    v14 = [v14 inOrderLocationArrays];
    sub_100140278(&qword_1008E55D8);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = *(v19 + 16);
    if (!v55)
    {
LABEL_33:

      return;
    }

    v59 = OBJC_IVAR____TtC10FitnessApp31WorkoutExtendedModePathRenderer_standardColor;
    v58 = OBJC_IVAR____TtC10FitnessApp31WorkoutExtendedModePathRenderer_dashedColor;
    v54 = v19 + 32;
    v77 = (v11 + 8);
    v11 = 0;
    v23 = v71;
    v72 = v23 * v23;
    v66 = v71 * 0.5;
    v57 = v23 + v23;
    v56 = xmmword_1006D1F70;
    v53 = v19;
    while (v11 < *(v19 + 16))
    {
      v61 = v11;
      v19 = *(v54 + 8 * v11);

      v24 = [v75 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = v13;
      Date.timeIntervalSinceReferenceDate.getter();
      v26 = v25;
      v76 = *v77;
      v76(v13, v21);
      if (v19 >> 62)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
        if (v27)
        {
LABEL_16:
          v11 = 0;
          v28 = v19 & 0xC000000000000001;
          v29 = v19 & 0xFFFFFFFFFFFFFF8;
          v74 = v19;
          v60 = v19 & 0xC000000000000001;
          v65 = v19 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v28)
            {
              v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v11 >= *(v29 + 16))
              {
                goto LABEL_38;
              }

              v35 = *(v19 + 8 * v11 + 32);
            }

            v19 = v35;
            v36 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            v37 = [v35 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v14 = v13;
            Date.timeIntervalSinceReferenceDate.getter();
            v39 = v38;
            v76(v13, v21);
            if (v39 < v26)
            {

              goto LABEL_12;
            }

            [v75 coordinate];
            v40 = MKMapPointForCoordinate(v85);
            [v19 coordinate];
            v41 = MKMapPointForCoordinate(v86);
            v42 = a2(v40.x, v40.y);
            v44 = v43;
            v45 = a2(v41.x, v41.y);
            if (v72 <= (v45 - v42) * (v45 - v42) + (v46 - v44) * (v46 - v44))
            {
              v70 = v46;
              v69 = v45;
              v87.origin.x = fmin(v40.x, v41.x) - v66;
              v87.origin.y = fmin(v40.y, v41.y) - v66;
              v87.size.width = vabdd_f64(v40.x, v41.x) + v71;
              v87.size.height = vabdd_f64(v40.y, v41.y) + v71;
              if (MKMapRectIntersectsRect(v67, v87))
              {
                [v19 speed];
                Mutable = CGPathCreateMutable();
                v79 = 0;
                v80 = 0;
                v78 = 0x3FF0000000000000;
                v81 = 0x3FF0000000000000;
                v82 = 0;
                v83 = 0;
                CGMutablePathRef.move(to:transform:)();
                CGMutablePathRef.addLine(to:transform:)();
                if (v63 >= v39 - v26)
                {
                  v30 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();
                  v31 = v68;
                  CGContextAddPath(v68, v30);
                  CGContextSetFillColorWithColor(v31, *(v62 + v59));
                  v32 = kCGPathFill;
                }

                else
                {
                  sub_100140278(&qword_1008DE450);
                  v48 = swift_allocObject();
                  *(v48 + 16) = v56;
                  *(v48 + 32) = 0;
                  *(v48 + 40) = v57;
                  v30 = CGPathRef.copy(dashingWithPhase:lengths:transform:)();
                  v49 = v62;
                  v50 = v68;

                  CGContextAddPath(v50, v30);
                  CGContextSetLineWidth(v50, v71);
                  CGContextSetLineCap(v50, kCGLineCapRound);
                  v51 = *(v49 + v58);
                  v28 = v60;
                  CGContextSetStrokeColorWithColor(v50, v51);
                  v32 = kCGPathStroke;
                }

                CGContextDrawPath(v68, v32);

                v21 = v64;
                v29 = v65;
              }

              v75 = v19;
            }

            v33 = [v19 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v14 = v13;
            Date.timeIntervalSinceReferenceDate.getter();
            v26 = v34;

            v76(v13, v21);
            ++v11;
            v19 = v74;
            if (v36 == v27)
            {
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        v27 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27)
        {
          goto LABEL_16;
        }
      }

LABEL_12:
      v11 = v61 + 1;

      v19 = v53;
      if (v11 == v55)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_40:
    ;
  }
}

void sub_100372CB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp31WorkoutExtendedModePathRenderer_dashedColor);
}

id sub_100372CF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutExtendedModePathRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100372D94(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = [v5 distanceColors];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v6 nonGradientTextColor];

  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = OBJC_IVAR____TtC10FitnessApp31WorkoutExtendedModePathRenderer_standardColor;
  v10 = [v8 CGColor];

  *&v2[v9] = v10;
  v11 = [v5 distanceColors];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v11 nonGradientTextColor];

  if (v13)
  {
    v14 = OBJC_IVAR____TtC10FitnessApp31WorkoutExtendedModePathRenderer_dashedColor;
    v15 = [v13 colorWithAlphaComponent:0.5];

    v16 = [v15 CGColor];
    *&v2[v14] = v16;
    *&v2[OBJC_IVAR____TtC10FitnessApp26WorkoutOverlayPathRenderer_locationReadings] = a2;
    v17.receiver = v2;
    v17.super_class = type metadata accessor for WorkoutOverlayPathRenderer();
    objc_msgSendSuper2(&v17, "initWithOverlay:", a1);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100372F1C(CGContext *a1, uint64_t a2, double a3, double a4, double a5, double a6, CGFloat a7, double a8, double a9)
{
  v61 = a9;
  v60 = a8;
  v58 = a7;
  v57.size.height = a6;
  v57.size.width = a5;
  v57.origin.y = a4;
  v57.origin.x = a3;
  v67 = type metadata accessor for Date();
  v11 = *(v67 - 8);
  __chkstk_darwin(v67);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v14 = *(a2 + OBJC_IVAR____TtC10FitnessApp26WorkoutOverlayPathRenderer_locationReadings);
  v15 = [v14 workout];
  v16 = [v15 workoutActivityType];

  v17 = 5.0;
  if (v16 == 46)
  {
    v17 = 15.0;
  }

  v55 = v17;
  v18 = [v14 allValidLocations];
  sub_10028CAC8();
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v21 = v53;
    if (!i)
    {
      break;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v22 = *(v19 + 32);
    }

    v64 = v22;

    v23 = [v14 inOrderLocationArrays];
    sub_100140278(&qword_1008E55D8);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = *(v24 + 16);
    if (!v48)
    {
LABEL_33:

      return;
    }

    v25 = 0;
    v52 = OBJC_IVAR____TtC10FitnessApp31WorkoutExtendedModePathRenderer_standardColor;
    v51 = OBJC_IVAR____TtC10FitnessApp31WorkoutExtendedModePathRenderer_dashedColor;
    v47 = v24 + 32;
    v66 = (v11 + 8);
    v26 = v58;
    v59 = v26 * v26;
    v56 = v58 * 0.5;
    v50 = v26 + v26;
    v49 = xmmword_1006D1F70;
    v46 = v24;
    while (v25 < *(v24 + 16))
    {
      v54 = v25;
      v14 = *(v47 + 8 * v25);

      v27 = [v64 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = v13;
      Date.timeIntervalSinceReferenceDate.getter();
      v29 = v28;
      v65 = *v66;
      v65(v13, v67);
      if (v14 >> 62)
      {
        v30 = _CocoaArrayWrapper.endIndex.getter();
        if (v30)
        {
LABEL_16:
          v31 = 0;
          v62 = v14 & 0xFFFFFFFFFFFFFF8;
          v63 = v14 & 0xC000000000000001;
          while (1)
          {
            if (v63)
            {
              v19 = v14;
              v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v31 >= *(v62 + 16))
              {
                goto LABEL_38;
              }

              v19 = v14;
              v36 = *(v14 + 8 * v31 + 32);
            }

            v14 = v36;
            v37 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            v38 = [v36 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v11 = v13;
            Date.timeIntervalSinceReferenceDate.getter();
            v40 = v39;
            v65(v13, v67);
            if (v40 < v29)
            {

              v14 = v19;
              goto LABEL_12;
            }

            [v64 coordinate];
            v41 = MKMapPointForCoordinate(v75);
            [v14 coordinate];
            v42 = MKMapPointForCoordinate(v76);
            if (v59 <= (v42.x - v60 - (v41.x - v60)) * (v42.x - v60 - (v41.x - v60)) + (v42.y - v61 - (v41.y - v61)) * (v42.y - v61 - (v41.y - v61)))
            {
              v77.origin.x = fmin(v41.x, v42.x) - v56;
              v77.origin.y = fmin(v41.y, v42.y) - v56;
              v77.size.width = vabdd_f64(v41.x, v42.x) + v58;
              v77.size.height = vabdd_f64(v41.y, v42.y) + v58;
              if (MKMapRectIntersectsRect(v57, v77))
              {
                [v14 speed];
                Mutable = CGPathCreateMutable();
                v69 = 0;
                v70 = 0;
                v68 = 0x3FF0000000000000;
                v71 = 0x3FF0000000000000;
                v72 = 0;
                v73 = 0;
                CGMutablePathRef.move(to:transform:)();
                CGMutablePathRef.addLine(to:transform:)();
                if (v55 >= v40 - v29)
                {
                  v32 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();
                  CGContextAddPath(v21, v32);
                  CGContextSetFillColorWithColor(v21, *(a2 + v52));
                  v33 = kCGPathFill;
                }

                else
                {
                  sub_100140278(&qword_1008DE450);
                  v44 = swift_allocObject();
                  *(v44 + 16) = v49;
                  *(v44 + 32) = 0;
                  *(v44 + 40) = v50;
                  v32 = CGPathRef.copy(dashingWithPhase:lengths:transform:)();
                  v21 = v53;

                  CGContextAddPath(v21, v32);
                  CGContextSetLineWidth(v21, v58);
                  CGContextSetLineCap(v21, kCGLineCapRound);
                  CGContextSetStrokeColorWithColor(v21, *(a2 + v51));
                  v33 = kCGPathStroke;
                }

                CGContextDrawPath(v21, v33);
              }

              v64 = v14;
            }

            v34 = [v14 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v11 = v13;
            Date.timeIntervalSinceReferenceDate.getter();
            v29 = v35;

            v65(v13, v67);
            ++v31;
            v14 = v19;
            if (v37 == v30)
            {
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        v30 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
          goto LABEL_16;
        }
      }

LABEL_12:
      v25 = v54 + 1;

      v24 = v46;
      if (v25 == v48)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_40:
    ;
  }
}

uint64_t sub_1003736A0()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v1 + 32;

    do
    {
      sub_10000B1B4(v4, v7);
      v5 = [v3 defaultCenter];
      sub_1000066AC(v7, v7[3]);
      [v5 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      sub_100005A40(v7);
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  sub_1000245E0(*(v0 + 32));

  return v0;
}

uint64_t sub_1003737B0()
{
  sub_1003736A0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FitnessPlusStackViewModel()
{
  result = qword_1008EA608;
  if (!qword_1008EA608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10037387C()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100373944();
    if (v1 <= 0x3F)
    {
      sub_1003739A8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100373944()
{
  if (!qword_1008EA618)
  {
    sub_100141EEC(&unk_1008E4E60);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1008EA618);
    }
  }
}

void sub_1003739A8()
{
  if (!qword_1008EA620)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008EA620);
    }
  }
}

uint64_t sub_1003739FC()
{
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v25 = 0;
  v26 = 0xE000000000000000;
  v1._countAndFlagsBits = 0x3A64697575;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  v2 = type metadata accessor for FitnessPlusStackViewModel();
  type metadata accessor for UUID();
  sub_100374830(&qword_1008EE840, &type metadata accessor for UUID);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x6144747261747320;
  v4._object = 0xEB000000003A6574;
  String.append(_:)(v4);
  type metadata accessor for Date();
  sub_100374830(&qword_1008DC148, &type metadata accessor for Date);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x65746144646E6520;
  v6._object = 0xE90000000000003ALL;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x6F69746172756420;
  v8._object = 0xEA00000000003A6ELL;
  String.append(_:)(v8);
  v9 = *(v0 + *(v2 + 20));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    v12 = 0.0;
    do
    {
      sub_100007C5C(v11, v22);
      v13 = v23;
      v14 = v24;
      sub_1000066AC(v22, v23);
      v12 = v12 + (*(v14 + 40))(v13, v14);
      sub_100005A40(v22);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  Double.write<A>(to:)();
  v15._countAndFlagsBits = 0x7461646174656D20;
  v15._object = 0xEA00000000003A61;
  String.append(_:)(v15);
  sub_1002FC244(_swiftEmptyArrayStorage);
  v16 = Dictionary.description.getter();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 41;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  return v25;
}

double sub_100373D00()
{
  v1 = *(v0 + *(type metadata accessor for FitnessPlusStackViewModel() + 20));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v3 = v1 + 32;
  v4 = 0.0;
  do
  {
    sub_100007C5C(v3, v8);
    v5 = v9;
    v6 = v10;
    sub_1000066AC(v8, v9);
    v4 = v4 + (*(v6 + 40))(v5, v6);
    sub_100005A40(v8);
    v3 += 40;
    --v2;
  }

  while (v2);
  return v4;
}

double sub_100373DBC()
{
  v1 = *(v0 + *(type metadata accessor for FitnessPlusStackViewModel() + 20));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v3 = v1 + 32;
  v4 = 0.0;
  do
  {
    sub_100007C5C(v3, v13);
    sub_100007C5C(v13, v12);
    sub_100140278(&unk_1008E4E60);
    sub_100289C9C();
    if (swift_dynamicCast())
    {
      v5 = [v11 fiui_totalDistance];
      if (v5)
      {
        v6 = v5;
        v7 = [objc_opt_self() meterUnit];
        [v6 doubleValueForUnit:v7];
        v9 = v8;

        sub_100005A40(v13);
        v4 = v4 + v9;
      }

      else
      {
        sub_100005A40(v13);
      }
    }

    else
    {
      sub_100005A40(v13);
    }

    v3 += 40;
    --v2;
  }

  while (v2);
  return v4;
}

int *sub_100373F30()
{
  result = type metadata accessor for FitnessPlusStackViewModel();
  v2 = *(v0 + result[5]);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = 0.0;
    while (v4 < *(v2 + 16))
    {
      sub_100007C5C(v5, v15);
      sub_100007C5C(v15, v14);
      sub_100140278(&unk_1008E4E60);
      sub_100289C9C();
      if (swift_dynamicCast())
      {
        result = [objc_allocWithZone(HKQuantityType) initWithIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
        if (!result)
        {
          goto LABEL_13;
        }

        v7 = result;
        v8 = [v13 statisticsForType:result];

        if (v8 && (v9 = [v8 sumQuantity], v8, v9))
        {
          v10 = [objc_opt_self() largeCalorieUnit];
          [v9 doubleValueForUnit:v10];
          v12 = v11;

          v6 = v6 + floor(v12);
        }

        else
        {
        }
      }

      ++v4;
      result = sub_100005A40(v15);
      v5 += 40;
      if (v3 == v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

int *sub_10037410C()
{
  result = type metadata accessor for FitnessPlusStackViewModel();
  v2 = *(v0 + result[5]);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = &unk_1008E4E60;
    v7 = HKQuantityTypeIdentifierActiveEnergyBurned;
    v27 = *(v2 + 16);
    v8 = &unk_1006D8F30;
    v9 = 0.0;
    while (v4 < *(v2 + 16))
    {
      sub_100007C5C(v5, v30);
      sub_100007C5C(v30, v29);
      sub_100140278(v6);
      sub_100289C9C();
      if (swift_dynamicCast())
      {
        result = [objc_allocWithZone(HKQuantityType) initWithIdentifier:v7];
        if (!result)
        {
          goto LABEL_18;
        }

        v10 = result;
        v11 = [v28 statisticsForType:result];

        if (v11 && (v12 = [v11 sumQuantity], v11, v12))
        {
          v13 = v7;
          v14 = v8;
          v15 = v6;
          v16 = objc_opt_self();
          v17 = [v16 largeCalorieUnit];
          [v12 doubleValueForUnit:v17];
          v19 = v18;

          result = [objc_allocWithZone(HKQuantityType) initWithIdentifier:HKQuantityTypeIdentifierBasalEnergyBurned];
          if (!result)
          {
            goto LABEL_19;
          }

          v20 = result;
          v21 = [v28 statisticsForType:result];

          if (v21 && (v22 = [v21 sumQuantity], v21, v22))
          {
            v23 = floor(v19);
            v24 = [v16 largeCalorieUnit];
            [v22 doubleValueForUnit:v24];
            v26 = v25;

            v9 = v9 + v23 + floor(v26);
          }

          else
          {
          }

          v6 = v15;
          v8 = v14;
          v7 = v13;
          v3 = v27;
        }

        else
        {
        }
      }

      ++v4;
      result = sub_100005A40(v30);
      v5 += 40;
      if (v3 == v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_1003743E0()
{
  v1 = *(v0 + *(type metadata accessor for FitnessPlusStackViewModel() + 20));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100007C5C(v3, v23);
      v7 = v24;
      v6 = v25;
      sub_1000066AC(v23, v24);
      v8 = (*(*(v6 + 8) + 16))(v7);
      if (v8)
      {
        v9 = v8;
        v10 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
        if (*(v9 + 16))
        {
          v12 = sub_100066F20(v10, v11);
          v14 = v13;

          if (v14)
          {
            sub_10000B1B4(*(v9 + 56) + 32 * v12, v20);

            if (swift_dynamicCast())
            {
              goto LABEL_13;
            }

            goto LABEL_12;
          }
        }

        else
        {
        }
      }

LABEL_12:
      v21 = 0;
      v22 = 0;
LABEL_13:
      sub_100005A40(v23);
      v15 = v22;
      if (v22)
      {
        v16 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_100042744(0, *(v4 + 2) + 1, 1, v4);
        }

        v18 = *(v4 + 2);
        v17 = *(v4 + 3);
        if (v18 >= v17 >> 1)
        {
          v4 = sub_100042744((v17 > 1), v18 + 1, 1, v4);
        }

        *(v4 + 2) = v18 + 1;
        v5 = &v4[16 * v18];
        *(v5 + 4) = v16;
        *(v5 + 5) = v15;
      }

      v3 += 40;
      if (!--v2)
      {
        return v4;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1003745B4()
{
  v1 = *(v0 + *(type metadata accessor for FitnessPlusStackViewModel() + 20));
  v2 = _swiftEmptyArrayStorage;
  v8 = _swiftEmptyArrayStorage;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      sub_100007C5C(v4, v7);
      sub_1001AB740(v7, v6);
      sub_100140278(&unk_1008E4E60);
      sub_100289C9C();
      if ((swift_dynamicCast() & 1) != 0 && v6[5])
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = v8;
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t sub_1003746DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100374754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1003747D8(uint64_t a1)
{
  result = sub_100374830(&qword_1008EA660, type metadata accessor for FitnessPlusStackViewModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100374830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100374878(void **a1, uint64_t *a2)
{
  v68 = a1;
  v79 = type metadata accessor for FitnessPlusStackViewModel();
  v4 = *(v79 - 8);
  v5 = __chkstk_darwin(v79);
  v67 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v64 - v7;
  v8 = type metadata accessor for Date();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = __chkstk_darwin(v8);
  v72 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = &v64 - v11;
  v12 = type metadata accessor for UUID();
  v73 = *(v12 - 8);
  v74 = v12;
  __chkstk_darwin(v12);
  v69 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(&qword_1008E0BC0);
  v15 = __chkstk_darwin(v14 - 8);
  v86 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v64 - v17;
  v19 = a2[1];
  v70 = *a2;
  v20 = a2[2];
  if (!v20[2])
  {
    goto LABEL_7;
  }

  sub_100007C5C((v20 + 4), v83);
  v21 = v84;
  v22 = v85;
  sub_1000066AC(v83, v84);
  v23 = (*(*(v22 + 8) + 16))(v21);
  if (!v23)
  {
    sub_100005A40(v83);
LABEL_7:
    v80 = 0u;
    v81 = 0u;
LABEL_8:
    sub_10000EA04(&v80, &qword_1008E51F0);
    v32 = 0;
    v33 = 0;
    goto LABEL_19;
  }

  v24 = v23;
  v25 = static HealthDataConstants.workoutSessionPlaylistIdentifierProperty.getter();
  if (*(v24 + 16))
  {
    v27 = v19;
    v28 = v4;
    v29 = sub_100066F20(v25, v26);
    v31 = v30;

    if (v31)
    {
      sub_10000B1B4(*(v24 + 56) + 32 * v29, &v80);
    }

    else
    {

      v80 = 0u;
      v81 = 0u;
    }

    v4 = v28;
    v19 = v27;
  }

  else
  {

    v80 = 0u;
    v81 = 0u;
  }

  sub_100005A40(v83);
  if (!*(&v81 + 1))
  {
    goto LABEL_8;
  }

  v34 = swift_dynamicCast();
  if (v34)
  {
    v32 = v83[0];
  }

  else
  {
    v32 = 0;
  }

  if (v34)
  {
    v33 = v83[1];
  }

  else
  {
    v33 = 0;
  }

LABEL_19:
  v83[0] = v20;

  sub_100374FB8(v83);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v78 = v19;

    sub_100374FB8(v83);
    v77 = 0;

    v35 = v83[0];
    v36 = v83[0][2];
    if (v36)
    {
      sub_100007C5C((v83[0] + 4), v83);
      sub_100007C5C(&v35[5 * v36 - 1], &v80);
      v65 = v33;
      v37 = v69;
      UUID.init()();
      v38 = v4;
      v40 = v84;
      v39 = v85;
      sub_1000066AC(v83, v84);
      v41 = *(v39 + 24);
      v64 = v32;
      v42 = v71;
      v41(v40, v39);
      v43 = *(&v81 + 1);
      v44 = v82;
      sub_1000066AC(&v80, *(&v81 + 1));
      v45 = *(v44 + 32);
      v46 = v72;
      v47 = v44;
      v4 = v38;
      v45(v43, v47);
      v48 = v79;
      (*(v73 + 32))(&v18[*(v79 + 36)], v37, v74);
      v49 = &v18[v48[7]];
      v50 = v78;
      *v49 = v70;
      *(v49 + 1) = v50;
      v51 = &v18[v48[6]];
      v52 = v65;
      *v51 = v64;
      *(v51 + 1) = v52;
      v53 = v76;
      v54 = *(v75 + 32);
      v54(&v18[v48[8]], v42, v76);
      v54(v18, v46, v53);
      *&v18[v48[5]] = v35;
      sub_100005A40(&v80);
      sub_100005A40(v83);
      v55 = 0;
    }

    else
    {

      v55 = 1;
      v48 = v79;
    }

    (*(v4 + 56))(v18, v55, 1, v48);
    v56 = v86;
    sub_100306D50(v18, v86);
    if ((*(v4 + 48))(v56, 1, v48) == 1)
    {
      sub_10000EA04(v18, &qword_1008E0BC0);
      return sub_10000EA04(v56, &qword_1008E0BC0);
    }

    else
    {
      v58 = v66;
      sub_100306E28(v56, v66);
      v59 = v67;
      sub_1001AB4EC(v58, v67);
      v60 = v68;
      v61 = *v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_1001A2F18(0, v61[2] + 1, 1, v61);
      }

      v63 = v61[2];
      v62 = v61[3];
      if (v63 >= v62 >> 1)
      {
        v61 = sub_1001A2F18(v62 > 1, v63 + 1, 1, v61);
      }

      sub_1001AB550(v58);
      sub_10000EA04(v18, &qword_1008E0BC0);
      v61[2] = v63 + 1;
      result = sub_100306E28(v59, v61 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v63);
      *v60 = v61;
    }
  }

  return result;
}

Swift::Int sub_100374FB8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100080AF4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100375024(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100375024(uint64_t *a1)
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
        sub_100140278(&unk_1008E4E60);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100375388(v7, v8, a1, v4);
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
    return sub_10037512C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10037512C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v38);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v14 = &v26 - v13;
  v27 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v31 = *a4;
    v16 = v31 + 40 * a3;
    v17 = a1 - a3;
LABEL_5:
    v29 = v16;
    v30 = a3;
    v28 = v17;
    while (1)
    {
      sub_100007C5C(v16, &v35);
      sub_100007C5C(v16 - 40, v32);
      v18 = v36;
      v19 = v37;
      sub_1000066AC(&v35, v36);
      (*(v19 + 24))(v18, v19);
      v20 = v33;
      v21 = v34;
      sub_1000066AC(v32, v33);
      (*(v21 + 24))(v20, v21);
      LOBYTE(v20) = static Date.< infix(_:_:)();
      v22 = *v15;
      v23 = v38;
      (*v15)(v10, v38);
      v22(v14, v23);
      sub_100005A40(v32);
      result = sub_100005A40(&v35);
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v16 = v29 + 40;
        v17 = v28 - 1;
        if (v30 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v31)
      {
        break;
      }

      sub_1001AB740(v16, &v35);
      v24 = *(v16 - 24);
      *v16 = *(v16 - 40);
      *(v16 + 16) = v24;
      *(v16 + 32) = *(v16 - 8);
      result = sub_1001AB740(&v35, v16 - 40);
      v16 -= 40;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100375388(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v123 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v123);
  v122 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v121 = &v109 - v13;
  v14 = *(a3 + 8);
  v114 = a3;
  if (v14 < 1)
  {
    v16 = &_swiftEmptyArrayStorage;
LABEL_93:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_133;
    }

    a4 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_127:
      result = sub_1001A99A4(a4);
    }

    v130 = result;
    v104 = *(result + 16);
    if (v104 >= 2)
    {
      a4 = 40;
      while (1)
      {
        v105 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v106 = *(result + 16 * v104);
        v107 = result;
        a3 = *(result + 16 * (v104 - 1) + 40);
        sub_100375D2C((v105 + 40 * v106), (v105 + 40 * *(result + 16 * (v104 - 1) + 32)), (v105 + 40 * a3), v5);
        if (v6)
        {
        }

        if (a3 < v106)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1001A99A4(v107);
        }

        if (v104 - 2 >= *(v107 + 2))
        {
          goto LABEL_121;
        }

        v108 = &v107[16 * v104];
        *v108 = v106;
        *(v108 + 1) = a3;
        v130 = v107;
        sub_1001A9918(v104 - 1);
        result = v130;
        v104 = *(v130 + 16);
        a3 = v114;
        if (v104 <= 1)
        {
        }
      }
    }
  }

  v15 = 0;
  v120 = (v12 + 8);
  v16 = &_swiftEmptyArrayStorage;
  v111 = a4;
  while (1)
  {
    v113 = v16;
    if (v15 + 1 >= v14)
    {
      v36 = v15 + 1;
    }

    else
    {
      v118 = v14;
      v110 = v6;
      v17 = *a3;
      sub_100007C5C(*a3 + 40 * (v15 + 1), &v127);
      v5 = 40 * v15;
      v18 = v17 + 40 * v15;
      sub_100007C5C(v18, v124);
      v19 = v128;
      v20 = v129;
      sub_1000066AC(&v127, v128);
      v21 = v121;
      (*(v20 + 24))(v19, v20);
      v23 = v125;
      v22 = v126;
      sub_1000066AC(v124, v125);
      v24 = v122;
      (*(v22 + 24))(v23, v22);
      LODWORD(v119) = static Date.< infix(_:_:)();
      v25 = v15;
      v26 = *v120;
      a4 = v123;
      (*v120)(v24, v123);
      v26(v21, a4);
      sub_100005A40(v124);
      result = sub_100005A40(&v127);
      v109 = v25;
      v27 = v25 + 2;
      v28 = v18 + 80;
      while (v118 != v27)
      {
        sub_100007C5C(v28, &v127);
        sub_100007C5C(v28 - 40, v124);
        v30 = v128;
        v29 = v129;
        sub_1000066AC(&v127, v128);
        v31 = v121;
        (*(v29 + 24))(v30, v29);
        v32 = v125;
        v33 = v126;
        sub_1000066AC(v124, v125);
        v34 = v122;
        (*(v33 + 24))(v32, v33);
        a4 = static Date.< infix(_:_:)() & 1;
        v35 = v123;
        v26(v34, v123);
        v26(v31, v35);
        sub_100005A40(v124);
        result = sub_100005A40(&v127);
        ++v27;
        v28 += 40;
        if ((v119 & 1) != a4)
        {
          v36 = v27 - 1;
          goto LABEL_11;
        }
      }

      v36 = v118;
      v6 = v110;
      a3 = v114;
      v15 = v109;
      if ((v119 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v36 < v109)
      {
        goto LABEL_124;
      }

      if (v109 < v36)
      {
        v37 = 40 * v36 - 40;
        v118 = v36;
        v38 = v36;
        v39 = v109;
        do
        {
          if (v39 != --v38)
          {
            v44 = *v114;
            if (!*v114)
            {
              goto LABEL_130;
            }

            v40 = v44 + v5;
            v41 = v44 + v37;
            sub_1001AB740((v44 + v5), &v127);
            v42 = *(v41 + 32);
            v43 = *(v41 + 16);
            *v40 = *v41;
            *(v40 + 16) = v43;
            *(v40 + 32) = v42;
            result = sub_1001AB740(&v127, v41);
          }

          ++v39;
          v37 -= 40;
          v5 += 40;
        }

        while (v39 < v38);
        a3 = v114;
        a4 = v111;
        v36 = v118;
      }

      else
      {
LABEL_20:
        a4 = v111;
      }
    }

    v45 = *(a3 + 8);
    if (v36 < v45)
    {
      if (__OFSUB__(v36, v15))
      {
        goto LABEL_123;
      }

      if (v36 - v15 < a4)
      {
        if (__OFADD__(v15, a4))
        {
          goto LABEL_125;
        }

        if ((v15 + a4) >= v45)
        {
          v46 = *(a3 + 8);
        }

        else
        {
          v46 = v15 + a4;
        }

        if (v46 < v15)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v36 != v46)
        {
          break;
        }
      }
    }

    v47 = v36;
    if (v36 < v15)
    {
      goto LABEL_122;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = v113;
    }

    else
    {
      result = sub_1001A1D54(0, *(v113 + 2) + 1, 1, v113);
      v16 = result;
    }

    a4 = *(v16 + 2);
    v48 = *(v16 + 3);
    v49 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      result = sub_1001A1D54((v48 > 1), a4 + 1, 1, v16);
      v16 = result;
    }

    *(v16 + 2) = v49;
    v50 = &v16[16 * a4];
    *(v50 + 4) = v15;
    *(v50 + 5) = v47;
    v51 = *v112;
    if (!*v112)
    {
      goto LABEL_132;
    }

    v115 = v47;
    if (a4)
    {
      while (1)
      {
        v5 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v52 = *(v16 + 4);
          v53 = *(v16 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_51:
          if (v55)
          {
            goto LABEL_111;
          }

          v68 = &v16[16 * v49];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_114;
          }

          v74 = &v16[16 * v5 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_118;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v5 = v49 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v78 = &v16[16 * v49];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_65:
        if (v73)
        {
          goto LABEL_113;
        }

        v81 = &v16[16 * v5];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_116;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_72:
        a4 = v5 - 1;
        if (v5 - 1 >= v49)
        {
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v89 = v16;
        v90 = *&v16[16 * a4 + 32];
        v91 = *&v16[16 * v5 + 40];
        sub_100375D2C((*a3 + 40 * v90), (*a3 + 40 * *&v16[16 * v5 + 32]), (*a3 + 40 * v91), v51);
        if (v6)
        {
        }

        if (v91 < v90)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1001A99A4(v89);
        }

        if (a4 >= *(v89 + 2))
        {
          goto LABEL_108;
        }

        v92 = &v89[16 * a4];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        v130 = v89;
        result = sub_1001A9918(v5);
        v16 = v130;
        v49 = *(v130 + 16);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v16[16 * v49 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_109;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_110;
      }

      v63 = &v16[16 * v49];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_112;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_115;
      }

      if (v67 >= v59)
      {
        v85 = &v16[16 * v5 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_119;
        }

        if (v54 < v88)
        {
          v5 = v49 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v14 = *(a3 + 8);
    v15 = v115;
    a4 = v111;
    if (v115 >= v14)
    {
      goto LABEL_93;
    }
  }

  v110 = v6;
  v119 = *a3;
  v5 = v119 + 40 * v36;
  v109 = v15;
  v93 = v15 - v36;
  v115 = v46;
LABEL_83:
  v117 = v5;
  v118 = v36;
  v116 = v93;
  while (1)
  {
    sub_100007C5C(v5, &v127);
    sub_100007C5C(v5 - 40, v124);
    v94 = v128;
    v95 = v129;
    sub_1000066AC(&v127, v128);
    v96 = v121;
    (*(v95 + 24))(v94, v95);
    v97 = v125;
    v98 = v126;
    sub_1000066AC(v124, v125);
    v99 = v122;
    (*(v98 + 24))(v97, v98);
    a4 = static Date.< infix(_:_:)();
    v100 = *v120;
    v101 = v123;
    (*v120)(v99, v123);
    v100(v96, v101);
    sub_100005A40(v124);
    result = sub_100005A40(&v127);
    if ((a4 & 1) == 0)
    {
LABEL_82:
      v36 = v118 + 1;
      v5 = v117 + 40;
      v47 = v115;
      v93 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_83;
      }

      v6 = v110;
      a3 = v114;
      v15 = v109;
      if (v115 < v109)
      {
        goto LABEL_122;
      }

      goto LABEL_32;
    }

    if (!v119)
    {
      break;
    }

    sub_1001AB740(v5, &v127);
    v102 = *(v5 - 24);
    *v5 = *(v5 - 40);
    *(v5 + 16) = v102;
    *(v5 + 32) = *(v5 - 8);
    sub_1001AB740(&v127, v5 - 40);
    v5 -= 40;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_82;
    }
  }

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
  return result;
}

uint64_t sub_100375D2C(char *a1, char *a2, char *a3, char *a4)
{
  v74 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v74);
  v67 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v58 - v12;
  v13 = (a2 - a1) / 40;
  v14 = (a3 - a2) / 40;
  if (v13 >= v14)
  {
    if (a4 != a2 || &a2[40 * v14] <= a4)
    {
      v34 = v11;
      memmove(a4, a2, 40 * v14);
      v11 = v34;
    }

    v17 = &a4[40 * v14];
    v15 = a4;
    if (a3 - a2 < 40)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v35 = a2;
    if (a2 <= a1)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v60 = v4;
    v61 = (v11 + 8);
    v65 = a1;
    v62 = a4;
    while (1)
    {
      v59 = v35;
      v36 = (v35 - 40);
      v37 = (v17 - 40);
      v38 = a3 - 40;
      v63 = v35 - 40;
      while (1)
      {
        v64 = v38;
        v41 = v38 + 40;
        sub_100007C5C(v37, v71);
        sub_100007C5C(v36, v68);
        v42 = v72;
        v43 = v73;
        sub_1000066AC(v71, v72);
        v44 = v66;
        (*(v43 + 24))(v42, v43);
        v45 = v69;
        v46 = v70;
        sub_1000066AC(v68, v69);
        v47 = v67;
        (*(v46 + 24))(v45, v46);
        v48 = static Date.< infix(_:_:)();
        v49 = *v61;
        v50 = v74;
        (*v61)(v47, v74);
        v49(v44, v50);
        sub_100005A40(v68);
        sub_100005A40(v71);
        if (v48)
        {
          break;
        }

        v15 = v62;
        v51 = v64;
        if (v41 != (v37 + 40))
        {
          v52 = *v37;
          v53 = *(v37 + 16);
          *(v64 + 32) = *(v37 + 32);
          *v51 = v52;
          v51[1] = v53;
        }

        v39 = v37 - 40;
        v38 = v51 - 40;
        v40 = v37 > v15;
        v37 -= 40;
        v36 = v63;
        if (!v40)
        {
          v17 = (v39 + 40);
          v33 = v59;
          goto LABEL_35;
        }
      }

      v17 = (v37 + 40);
      v15 = v62;
      v33 = v63;
      a3 = v64;
      if (v41 != v59)
      {
        v54 = *v63;
        v55 = *(v63 + 1);
        *(v64 + 32) = *(v63 + 4);
        *a3 = v54;
        *(a3 + 1) = v55;
      }

      if (v17 > v15)
      {
        v35 = v33;
        if (v33 > v65)
        {
          continue;
        }
      }

      v17 = (v37 + 40);
      goto LABEL_35;
    }
  }

  v15 = a4;
  if (a4 != a1 || &a1[40 * v13] <= a4)
  {
    v16 = v11;
    memmove(a4, a1, 40 * v13);
    v11 = v16;
  }

  v17 = &a4[40 * v13];
  if (a2 - a1 < 40 || (v18 = a2, a2 >= a3))
  {
    v33 = a1;
    goto LABEL_35;
  }

  v60 = v4;
  v19 = (v11 + 8);
  v64 = v17;
  do
  {
    v65 = a1;
    sub_100007C5C(v18, v71);
    sub_100007C5C(v15, v68);
    v20 = v72;
    v21 = v73;
    sub_1000066AC(v71, v72);
    v22 = v66;
    (*(v21 + 24))(v20, v21);
    v23 = v69;
    v24 = v70;
    sub_1000066AC(v68, v69);
    v25 = v67;
    (*(v24 + 24))(v23, v24);
    LOBYTE(v23) = static Date.< infix(_:_:)();
    v26 = *v19;
    v27 = v74;
    (*v19)(v25, v74);
    v26(v22, v27);
    sub_100005A40(v68);
    sub_100005A40(v71);
    if (v23)
    {
      v28 = v18;
      v29 = v65;
      v30 = v65 == v18;
      v18 += 40;
      if (v30)
      {
        goto LABEL_14;
      }

LABEL_13:
      v31 = *v28;
      v32 = *(v28 + 1);
      *(v29 + 4) = *(v28 + 4);
      *v29 = v31;
      *(v29 + 1) = v32;
      goto LABEL_14;
    }

    v28 = v15;
    v29 = v65;
    v30 = v65 == v15;
    v15 += 40;
    if (!v30)
    {
      goto LABEL_13;
    }

LABEL_14:
    a1 = v29 + 40;
    v17 = v64;
  }

  while (v15 < v64 && v18 < a3);
  v33 = a1;
LABEL_35:
  v56 = (v17 - v15) / 40;
  if (v33 != v15 || v33 >= &v15[40 * v56])
  {
    memmove(v33, v15, 40 * v56);
  }

  return 1;
}

uint64_t sub_100376254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      sub_100007C5C(v2, v47);
      v5 = v48;
      v4 = v49;
      sub_1000066AC(v47, v48);
      v6 = (*(*(v4 + 8) + 16))(v5);
      if (!v6)
      {
        goto LABEL_5;
      }

      v7 = v6;
      v8 = static HealthDataConstants.workoutSessionQueueIdentifierProperty.getter();
      if (!*(v7 + 16))
      {
        break;
      }

      v10 = sub_100066F20(v8, v9);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_4;
      }

      sub_10000B1B4(*(v7 + 56) + 32 * v10, v44);

      if (swift_dynamicCast())
      {
        v14 = v45;
        v13 = v46;
        sub_100007C5C(v47, v44);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v3;
        v17 = sub_100066F20(v14, v13);
        v18 = v3[2];
        v19 = (v16 & 1) == 0;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_39;
        }

        v21 = v16;
        if (v3[3] >= v20)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v3 = v45;
            if ((v16 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          else
          {
            sub_1004943D8();
            v3 = v45;
            if ((v21 & 1) == 0)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          sub_10048BE6C(v20, isUniquelyReferenced_nonNull_native);
          v22 = sub_100066F20(v14, v13);
          if ((v21 & 1) != (v23 & 1))
          {
            goto LABEL_41;
          }

          v17 = v22;
          v3 = v45;
          if ((v21 & 1) == 0)
          {
LABEL_14:
            v3[(v17 >> 6) + 8] |= 1 << v17;
            v24 = (v3[6] + 16 * v17);
            *v24 = v14;
            v24[1] = v13;
            *(v3[7] + 8 * v17) = &_swiftEmptyArrayStorage;
            v25 = v3[2];
            v26 = __OFADD__(v25, 1);
            v27 = v25 + 1;
            if (v26)
            {
              goto LABEL_40;
            }

            v3[2] = v27;
            goto LABEL_20;
          }
        }

LABEL_20:
        v28 = v3[7];
        v29 = *(v28 + 8 * v17);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        *(v28 + 8 * v17) = v29;
        if ((v30 & 1) == 0)
        {
          v29 = sub_1001A1FE8(0, v29[2] + 1, 1, v29);
          *(v28 + 8 * v17) = v29;
        }

        v32 = v29[2];
        v31 = v29[3];
        if (v32 >= v31 >> 1)
        {
          v29 = sub_1001A1FE8((v31 > 1), v32 + 1, 1, v29);
          *(v28 + 8 * v17) = v29;
        }

        v29[2] = v32 + 1;
        sub_1001AB740(v44, &v29[5 * v32 + 4]);
      }

LABEL_5:
      sub_100005A40(v47);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_28;
      }
    }

LABEL_4:

    goto LABEL_5;
  }

  v3 = &_swiftEmptyDictionarySingleton;
LABEL_28:
  *&v44[0] = &_swiftEmptyArrayStorage;
  v33 = 1 << *(v3 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v3[8];
  v36 = (v33 + 63) >> 6;

  for (i = 0; v35; i = v38)
  {
    v38 = i;
LABEL_35:
    v39 = __clz(__rbit64(v35)) | (v38 << 6);
    v40 = (v3[6] + 16 * v39);
    v41 = v40[1];
    v42 = *(v3[7] + 8 * v39);
    v47[0] = *v40;
    v47[1] = v41;
    v47[2] = v42;

    sub_100374878(v44, v47);
    v35 &= v35 - 1;
  }

  while (1)
  {
    v38 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v38 >= v36)
    {

      return *&v44[0];
    }

    v35 = v3[v38 + 8];
    ++i;
    if (v35)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);

  __break(1u);
LABEL_41:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100376668(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100140278(&qword_1008EA670);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_100066F20(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_100376848(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100140278(&qword_1008EA678);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;

    sub_100140278(&qword_1008EA680);
    swift_dynamicCast();
    sub_1001AA76C((v25 + 8), v23);
    sub_1001AA76C(v23, v25);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v6[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v6[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v6[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v13;
    result = sub_1001AA76C(v25, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100376AFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100140278(&qword_1008E2568);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    sub_1000059F8(0, &qword_1008DB898);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1001AA76C((v27 + 8), v25);
    sub_1001AA76C(v25, v27);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v16 = Hasher._finalize()();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v6[v18 >> 6]) == 0)
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
        v23 = v6[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v6[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v14;
    result = sub_1001AA76C(v27, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100376DB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100140278(&qword_1008E2568);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v25 = *(*(a1 + 56) + v11);
    v13 = v25;
    v14 = v12;
    sub_100140278(&unk_1008DB8B0);
    swift_dynamicCast();
    sub_1001AA76C((v26 + 8), v24);
    sub_1001AA76C(v24, v26);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~v6[v17 >> 6]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = v6[v18];
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~v6[v17 >> 6])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v14;
    result = sub_1001AA76C(v26, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100377064(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100140278(&qword_1008EA688);
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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000B1B4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1001AA76C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1001AA76C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1001AA76C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
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
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1001AA76C(v32, (v2[7] + 32 * v10));
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

unint64_t sub_10037732C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100140278(&qword_1008E79B8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_1000059F8(0, &qword_1008E1750);

        v19 = v18;
        swift_dynamicCast();
        sub_1001AA76C(&v25, v27);
        sub_1001AA76C(v27, v28);
        sub_1001AA76C(v28, &v26);
        result = sub_100066F20(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100005A40(v11);
          result = sub_1001AA76C(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_1001AA76C(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_100377598(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100140278(&qword_1008E79B8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_1001AA76C(&v22, v24);
        sub_1001AA76C(v24, v25);
        sub_1001AA76C(v25, &v23);
        result = sub_100066F20(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100005A40(v11);
          result = sub_1001AA76C(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1001AA76C(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t AppStoreAppRecommendation.bundleId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppStoreAppRecommendation.fetchArtwork(size:scale:)(double a1, double a2, double a3)
{
  *(v4 + 536) = v3;
  *(v4 + 528) = a3;
  *(v4 + 520) = a2;
  *(v4 + 512) = a1;
  v5 = type metadata accessor for URL();
  *(v4 + 544) = v5;
  *(v4 + 552) = *(v5 - 8);
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();

  return _swift_task_switch(sub_100377920, 0, 0);
}

uint64_t sub_100377920()
{
  v1 = *(v0 + 528);
  v2 = v1 * *(v0 + 512);
  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v3 = v1 * *(v0 + 520);
  v4 = COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(v1 * *(v0 + 512))) > 0x7FEFFFFFFFFFFFFFLL || v4)
  {
    goto LABEL_23;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v3 >= 9.22337204e18)
  {
    goto LABEL_25;
  }

  v5 = *(v0 + 536);
  v6 = v5[7];
  v8 = v5[4];
  v7 = v5[5];
  *(v0 + 176) = v5[6];
  *(v0 + 192) = v6;
  *(v0 + 144) = v8;
  *(v0 + 160) = v7;
  v9 = v5[11];
  v11 = v5[8];
  v10 = v5[9];
  *(v0 + 240) = v5[10];
  *(v0 + 256) = v9;
  *(v0 + 208) = v11;
  *(v0 + 224) = v10;
  if (sub_100378220(v0 + 144) != 1)
  {
    v12 = *(v0 + 224);
    *(v0 + 80) = *(v0 + 208);
    *(v0 + 96) = v12;
    v13 = *(v0 + 256);
    *(v0 + 112) = *(v0 + 240);
    *(v0 + 128) = v13;
    v14 = *(v0 + 160);
    *(v0 + 16) = *(v0 + 144);
    *(v0 + 32) = v14;
    v15 = *(v0 + 192);
    *(v0 + 48) = *(v0 + 176);
    *(v0 + 64) = v15;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v16 = *(v0 + 96);
    *(v0 + 336) = *(v0 + 80);
    *(v0 + 352) = v16;
    v17 = *(v0 + 128);
    *(v0 + 368) = *(v0 + 112);
    *(v0 + 384) = v17;
    v18 = *(v0 + 32);
    *(v0 + 272) = *(v0 + 16);
    *(v0 + 288) = v18;
    v19 = *(v0 + 64);
    *(v0 + 304) = *(v0 + 48);
    *(v0 + 320) = v19;
    sub_1001BDD10();
    v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 576) = v20;
    *(v0 + 584) = v21;
    v24 = v20;
    v25 = v21;

    v26 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 496) = 0;
    v28 = [v26 JSONObjectWithData:isa options:0 error:v0 + 496];

    v29 = *(v0 + 496);
    if (v28)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1001AA76C((v0 + 432), (v0 + 400));
      sub_10000B1B4(v0 + 400, v0 + 464);
      sub_100140278(&qword_1008EA668);
      if (swift_dynamicCast())
      {
        sub_100377064(*(v0 + 504));

        v30 = objc_allocWithZone(AMSLookupItemArtwork);
        v31 = Dictionary._bridgeToObjectiveC()().super.isa;

        v32 = [v30 initWithArtworkDictionary:v31];
        *(v0 + 592) = v32;

        v33 = [v32 URLWithHeight:v3 width:v2 cropStyle:AMSLookupItemArtworkCropStyleSquareCenterCrop format:AMSLookupItemArtworkFormatPNG];
        if (v33)
        {
          v34 = *(v0 + 568);
          v35 = *(v0 + 560);
          v36 = *(v0 + 552);
          v37 = *(v0 + 544);
          v38 = v33;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v36 + 32))(v34, v35, v37);
          v39 = [objc_opt_self() ephemeralSessionConfiguration];
          *(v0 + 600) = [objc_opt_self() sessionWithConfiguration:v39];

          v40 = swift_task_alloc();
          *(v0 + 608) = v40;
          *v40 = v0;
          v40[1] = sub_100377E5C;
          v41 = *(v0 + 568);

          return NSURLSession.data(from:delegate:)(v41, 0);
        }

        sub_100005A40(v0 + 400);
        sub_10000AF88(v24, v25);
      }

      else
      {
        sub_100005A40(v0 + 400);
        sub_10000AF88(v24, v25);
      }
    }

    else
    {
      v42 = v29;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10000AF88(v24, v25);
    }
  }

  v22 = *(v0 + 8);

  return v22(0);
}

uint64_t sub_100377E5C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 616) = v3;

  if (v3)
  {
    v9 = sub_100378124;
  }

  else
  {

    *(v8 + 624) = a2;
    *(v8 + 632) = a1;
    v9 = sub_100377FC4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100377FC4()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[69];
  v13 = v0[68];
  v14 = v0[71];
  v8 = objc_allocWithZone(UIImage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = [v8 initWithData:isa];
  sub_10000AF88(v6, v5);

  sub_10000AF88(v1, v2);
  (*(v7 + 8))(v14, v13);
  sub_100005A40((v0 + 50));

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_100378124()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[71];
  v4 = v0[69];
  v5 = v0[68];
  sub_10000AF88(v0[72], v0[73]);

  (*(v4 + 8))(v3, v5);
  sub_100005A40((v0 + 50));

  v6 = v0[1];

  return v6();
}

uint64_t sub_100378220(uint64_t a1)
{
  v1 = *(a1 + 40);
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

uint64_t sub_100378244(double a1, double a2, double a3)
{
  v8 = v3[9];
  *(v4 + 144) = v3[8];
  *(v4 + 160) = v8;
  v9 = v3[11];
  *(v4 + 176) = v3[10];
  *(v4 + 192) = v9;
  v10 = v3[5];
  *(v4 + 80) = v3[4];
  *(v4 + 96) = v10;
  v11 = v3[7];
  *(v4 + 112) = v3[6];
  *(v4 + 128) = v11;
  v12 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v12;
  v13 = v3[3];
  *(v4 + 48) = v3[2];
  *(v4 + 64) = v13;
  v14 = swift_task_alloc();
  *(v4 + 208) = v14;
  *v14 = v4;
  v14[1] = sub_100378324;

  return AppStoreAppRecommendation.fetchArtwork(size:scale:)(a1, a2, a3);
}

uint64_t sub_100378324(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100378424(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_10037846C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10037850C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v69 = a2;
  v70 = type metadata accessor for AccessibilityTraits();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.Leading();
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for ButtonStyleConfiguration.Label();
  v6 = *(v60 - 8);
  __chkstk_darwin(v60);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008EA720);
  __chkstk_darwin(v9);
  v11 = &v57 - v10;
  v58 = sub_100140278(&qword_1008EA728);
  __chkstk_darwin(v58);
  v13 = &v57 - v12;
  v59 = sub_100140278(&qword_1008EA730);
  __chkstk_darwin(v59);
  v15 = &v57 - v14;
  v61 = sub_100140278(&qword_1008EA738);
  __chkstk_darwin(v61);
  v17 = &v57 - v16;
  v62 = sub_100140278(&qword_1008EA740);
  __chkstk_darwin(v62);
  v19 = &v57 - v18;
  ButtonStyleConfiguration.label.getter();
  v66 = a1;
  if (a1)
  {
    v20 = static Color.black.getter();
  }

  else
  {
    v20 = static Color.white.getter();
  }

  v21 = v20;
  KeyPath = swift_getKeyPath();
  (*(v6 + 32))(v11, v8, v60);
  v23 = &v11[*(v9 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  v24 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_100015E80(v11, v13, &qword_1008EA720);
  v33 = &v13[*(v58 + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_100015E80(v13, v15, &qword_1008EA728);
  v43 = &v15[*(v59 + 36)];
  *v43 = v34;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  static Font.footnote.getter();
  Font.bold()();

  v45 = v63;
  v44 = v64;
  v46 = v65;
  (*(v64 + 104))(v63, enum case for Font.Leading.tight(_:), v65);
  v47 = Font.leading(_:)();

  (*(v44 + 8))(v45, v46);
  v48 = swift_getKeyPath();
  sub_100015E80(v15, v17, &qword_1008EA730);
  v49 = &v17[*(v61 + 36)];
  *v49 = v48;
  v49[1] = v47;
  v50 = static Alignment.center.getter();
  v52 = v51;
  v53 = &v19[*(v62 + 36)];
  LOBYTE(v46) = v66;
  sub_100378AFC(v66 & 1, v53);
  v54 = (v53 + *(sub_100140278(&qword_1008EA748) + 36));
  *v54 = v50;
  v54[1] = v52;
  sub_100015E80(v17, v19, &qword_1008EA738);
  v55 = v67;
  if (v46)
  {
    static AccessibilityTraits.isSelected.getter();
  }

  else
  {
    static AccessibilityTraits.isButton.getter();
  }

  sub_10037A060();
  View.accessibilityAddTraits(_:)();
  (*(v68 + 8))(v55, v70);
  return sub_10037A398(v19);
}

uint64_t sub_100378AFC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Capsule();
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  if (a1)
  {
    sub_1001C8DCC();
    isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.6, 1.0, 0.0, 1.0).super.isa;
    v10 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.84706, 1.0, 0.0, 1.0).super.isa;
    v11 = type metadata accessor for GradientColors();
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
    *&v12[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v10;
    v22.receiver = v12;
    v22.super_class = v11;
    v13 = objc_msgSendSuper2(&v22, "init");
    v14 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.65068, 1.0, 0.0, 1.0).super.isa;
    v15 = type metadata accessor for MetricColors();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v13;
    *&v16[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v14;
    v21.receiver = v16;
    v21.super_class = v15;
    v17 = objc_msgSendSuper2(&v21, "init");
    *&v17[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];
  }

  else
  {
    v18 = [objc_opt_self() secondarySystemBackgroundColor];
  }

  v19 = Color.init(_:)();
  sub_10037A400(v6, a2);
  result = sub_100140278(&qword_1008E2B20);
  *(a2 + *(result + 52)) = v19;
  *(a2 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_100378D40@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v9 = sub_100140278(&qword_1008E62D8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_100140278(&qword_1008EA690);
  v14 = *(v13 - 8);
  v25 = v13;
  v26 = v14;
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v28 = sub_1004477A4(a1, a2);
  v29 = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = HIWORD(a2) & 1;
  *(v18 + 26) = v19;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  sub_10000FCBC();

  Button<>.init<A>(_:action:)();
  LOBYTE(v28) = v19;
  v20 = sub_10014A6B0(&qword_1008E62E0, &qword_1008E62D8);
  v21 = sub_100379244();
  View.buttonStyle<A>(_:)();
  (*(v10 + 8))(v12, v9);
  v28 = v9;
  v29 = &type metadata for HistoryTypeFilterUIButtonStyle;
  v30 = v20;
  v31 = v21;
  swift_getOpaqueTypeConformance2();
  sub_100379298();
  v22 = v25;
  View.setEntityProvider<A>(_:)();
  return (*(v26 + 8))(v16, v22);
}

uint64_t sub_10037901C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 10))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return sub_100378D40(*v1, v2 | *(v1 + 8), *(v1 + 16), *(v1 + 24), a1);
}

uint64_t sub_100379058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1003790A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003790FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100379144(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for HistoryTypeFilterUIButtonStyle(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_100379244()
{
  result = qword_1008EA698;
  if (!qword_1008EA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA698);
  }

  return result;
}

unint64_t sub_100379298()
{
  result = qword_1008EA6A0;
  if (!qword_1008EA6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA6A0);
  }

  return result;
}

uint64_t sub_100379324@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v39 = a3;
  v38 = type metadata accessor for ScrollViewProxy();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = v5;
  v37 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ScrollIndicatorVisibility();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100140278(&qword_1008EA6B8);
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v28 - v8;
  v34 = sub_100140278(&qword_1008EA6C0);
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v11 = &v28 - v10;
  v30 = sub_100140278(&qword_1008EA6C8);
  __chkstk_darwin(v30);
  v13 = &v28 - v12;
  static Axis.Set.horizontal.getter();
  v40 = a2;
  sub_100140278(&qword_1008EA6D0);
  sub_10014A6B0(&qword_1008EA6D8, &qword_1008EA6D0);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.never.getter();
  sub_100140278(&qword_1008E0960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  v15 = static Axis.Set.vertical.getter();
  *(inited + 32) = v15;
  v16 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v16;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v15)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_10014A6B0(&qword_1008EA6E0, &qword_1008EA6B8);
  v17 = v29;
  View.scrollIndicators(_:axes:)();
  (*(v31 + 8))(v7, v32);
  (*(v28 + 8))(v9, v17);
  v18 = v37;
  v19 = v38;
  (*(v4 + 16))(v37, v36, v38);
  v43 = *a2;
  v20 = *(a2 + 3);
  v44 = *(a2 + 2);
  v42 = v20;
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = (v35 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v4 + 32))(v23 + v21, v18, v19);
  v24 = (v23 + v22);
  v25 = a2[1];
  *v24 = *a2;
  v24[1] = v25;
  v24[2] = a2[2];
  (*(v33 + 32))(v13, v11, v34);
  v26 = &v13[*(v30 + 36)];
  *v26 = sub_100379F70;
  v26[1] = v23;
  v26[2] = 0;
  v26[3] = 0;
  sub_100092DFC(v13, v39);
  sub_10001B104(&v43, v41, &qword_1008EA6A8);
  sub_10001B104(&v42, v41, &qword_1008EA6B0);
}

uint64_t sub_1003798D8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = sub_100140278(&qword_1008EA6E8);
  return sub_100379930(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_100379930@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v3 = sub_100140278(&qword_1008EA6F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = *(a1 + 3);
  v24 = *(a1 + 2);
  v25 = v9;
  v22 = v9;
  v23 = *a1;
  v10 = swift_allocObject();
  v11 = a1[1];
  v10[1] = *a1;
  v10[2] = v11;
  v10[3] = a1[2];

  sub_10001B104(&v25, v21, &qword_1008EA6B0);
  sub_10001B104(&v23, v21, &qword_1008EA6A8);

  sub_100140278(&qword_1008EA6B0);
  sub_100140278(&qword_1008EA6F8);
  sub_10014A6B0(&qword_1008EA700, &qword_1008EA6B0);
  sub_10014A6B0(&qword_1008EA708, &qword_1008EA6F8);
  sub_10037A004();
  ForEach<>.init(_:content:)();
  v12 = *(v4 + 16);
  v13 = v19;
  v12(v19, v8, v3);
  v14 = v20;
  *v20 = 0x4014000000000000;
  *(v14 + 8) = 0;
  v15 = v14;
  v16 = sub_100140278(&qword_1008EA718);
  v12(&v15[*(v16 + 48)], v13, v3);
  v17 = *(v4 + 8);
  v17(v8, v3);
  return (v17)(v13, v3);
}

uint64_t sub_100379C18@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v16 = *a2;
  v17 = *(a2 + 2);
  v6 = *(a1 + 8);
  v14 = *a2;
  v15 = *(a2 + 2);
  sub_100140278(&qword_1008EA6A8);
  State.wrappedValue.getter();
  v7 = sub_10044FAD8(v5, v6, v12, v13);
  v12 = *(a2 + 3);
  v8 = swift_allocObject();
  v9 = a2[1];
  v8[1] = *a2;
  v8[2] = v9;
  v8[3] = a2[2];
  sub_10001B104(&v16, &v14, &qword_1008EA6A8);
  sub_10001B104(&v12, &v14, &qword_1008EA6B0);

  result = sub_1004477A4(v5, v6);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 10) = v7 & 1;
  *(a3 + 16) = sub_10037A058;
  *(a3 + 24) = v8;
  *(a3 + 32) = result;
  *(a3 + 40) = v11;
  return result;
}

uint64_t sub_100379D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100140278(&qword_1008EA6A8);
  State.wrappedValue.setter();
  return (*(a3 + 32))(a1, a2);
}

uint64_t sub_100379DF4()
{
  sub_100140278(&qword_1008EA6A8);
  State.wrappedValue.getter();
  sub_1004477A4(v1, v2);
  ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_100379E98@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(v1 + 4);
  v3 = *(v1 + 5);
  v9 = *v1;
  v5 = *(v1 + 3);
  v10 = *(v1 + 2);
  v11 = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = *v1;
  *(v6 + 32) = *(v1 + 2);
  *(v6 + 40) = v5;
  *(v6 + 48) = v4;
  *(v6 + 56) = v3;
  *a1 = sub_100379F60;
  a1[1] = v6;
  sub_10001B104(&v9, v8, &qword_1008EA6A8);
  sub_10001B104(&v11, v8, &qword_1008EA6B0);
}

uint64_t sub_100379F70()
{
  type metadata accessor for ScrollViewProxy();

  return sub_100379DF4();
}

unint64_t sub_10037A004()
{
  result = qword_1008EA710;
  if (!qword_1008EA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA710);
  }

  return result;
}

unint64_t sub_10037A060()
{
  result = qword_1008EA750;
  if (!qword_1008EA750)
  {
    sub_100141EEC(&qword_1008EA740);
    sub_10037A118();
    sub_10014A6B0(&qword_1008EA780, &qword_1008EA748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA750);
  }

  return result;
}

unint64_t sub_10037A118()
{
  result = qword_1008EA758;
  if (!qword_1008EA758)
  {
    sub_100141EEC(&qword_1008EA738);
    sub_10037A22C(&qword_1008EA760, &qword_1008EA730, &unk_1006EBE80, sub_10037A1FC);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA758);
  }

  return result;
}

uint64_t sub_10037A22C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10037A2B0()
{
  result = qword_1008EA770;
  if (!qword_1008EA770)
  {
    sub_100141EEC(&qword_1008EA720);
    sub_10037A79C(&qword_1008EA778, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA770);
  }

  return result;
}

uint64_t sub_10037A398(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EA740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10037A400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Capsule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037A464(uint64_t a1, __int16 a2)
{
  v4 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for ViewLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  ViewLocation.init(x:y:z:width:height:depth:)();
  sub_100140278(&unk_1008E4E20);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006D4E70;
  (*(v6 + 16))(v8, v11, v5);
  AppEntityVisualState.init(isSelected:isHighlighted:isFocused:isDisabled:isEditing:isPrimary:)();
  v14 = a1;
  v15 = a2;
  type metadata accessor for _RepresentedEntityElement();
  swift_allocObject();
  sub_100163218();
  *(v12 + 32) = _RepresentedEntityElement.init<A>(appEntity:geometry:state:subelements:)();
  (*(v6 + 8))(v11, v5);
  return v12;
}

unint64_t sub_10037A6E0()
{
  result = qword_1008EA798;
  if (!qword_1008EA798)
  {
    sub_100141EEC(&qword_1008EA7A0);
    sub_10037A060();
    sub_10037A79C(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA798);
  }

  return result;
}

uint64_t sub_10037A79C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10037A7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for ShowLegacyDevicesTableViewCell();
  v6 = objc_msgSendSuper2(&v17, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 secondarySystemBackgroundColor];
  [v8 setBackgroundColor:v9];

  v10 = [v8 textLabel];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() mainBundle];
    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

    if (!v15)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = String._bridgeToObjectiveC()();
    }

    [v11 setText:v15];
  }

  [v8 setAccessoryType:1];

  return v8;
}

id sub_10037AA7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowLegacyDevicesTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10037AAD4()
{
  result = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  qword_1008EA7D0 = result;
  return result;
}

id sub_10037AB10()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.3];
  qword_1008EA7D8 = result;
  return result;
}

void sub_10037AB54()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1008EA7E0 = v2;
}

void sub_10037ABC0()
{
  v0 = [objc_opt_self() briskColors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 nonGradientTextColor];

    qword_1008EA7E8 = v2;
  }

  else
  {
    __break(1u);
  }
}

char *sub_10037AC2C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___CHFriendDetailActionCell_label;
  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DA970 != -1)
  {
    swift_once();
  }

  v12 = UILabel.withFont(_:)();

  if (qword_1008DA978 != -1)
  {
    swift_once();
  }

  [v12 setTextColor:qword_1008EA7E8];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v10] = v12;
  v13 = OBJC_IVAR___CHFriendDetailActionCell_accessoryImageView;
  v14 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v13] = v14;
  v20.receiver = v5;
  v20.super_class = type metadata accessor for FriendDetailActionCell();
  v15 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  if (qword_1008DA960 != -1)
  {
    swift_once();
  }

  [v16 setBackgroundColor:qword_1008EA7D0];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR___CHFriendDetailActionCell_label]];

  v18 = [v15 contentView];
  [v18 addSubview:*&v15[OBJC_IVAR___CHFriendDetailActionCell_accessoryImageView]];

  sub_10037AED4();
  return v15;
}