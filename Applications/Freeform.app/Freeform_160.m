uint64_t sub_1012AF354()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012BA6BC();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100852A5C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146BDE0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1012AF574()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1005B981C(&qword_101A319D8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1014AEA50;
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

uint64_t sub_1012AF708()
{
  v0 = sub_1005B981C(&qword_101A31AB8);
  v1 = *(v0 - 8);
  v35 = v0;
  v36 = v1;
  __chkstk_darwin(v0);
  v3 = v28 - v2;
  v4 = sub_1005B981C(&qword_101A31AC0);
  __chkstk_darwin(v4);
  v33 = sub_100796B00();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x206120646441;
  v5._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v32 = sub_1007961B4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x6E6961746E6F6320;
  v6._object = 0xEC00000020676E69;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v28[1] = sub_100796A4C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x20796D206F7420;
  v7._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v31 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x6472616F6220;
  v8._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v35;
  v10 = *(v36 + 8);
  v36 += 8;
  v34 = v10;
  v10(v3, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20747265736E49;
  v11._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x2061206E6920;
  v12._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 544108320;
  v13._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x6472616F6220;
  v14._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v3, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x6120746E61772049;
  v15._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0xD000000000000012;
  v16._object = 0x80000001015CA500;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x20796D206E6F20;
  v17._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x7361766E616320;
  v18._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28[0] = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v3, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._object = 0x80000001015CA520;
  v19._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0x2061206E6920;
  v20._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x20656874206F7420;
  v21._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0x6472616F6220;
  v22._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v3, v35);
  sub_1005B981C(&qword_101A31AC8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10146D2A0;
  v25 = v29;
  *(v24 + 32) = v30;
  *(v24 + 40) = v25;
  *(v24 + 48) = v28[0];
  *(v24 + 56) = v23;
  v26 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v26;
}

uint64_t sub_1012AFF4C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1007961B4();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100796B00();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  swift_getKeyPath();
  sub_100796A4C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10146C4D0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_1012B01EC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1005B981C(&qword_101A319D8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101483930;
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

uint64_t sub_1012B0370(uint64_t a1)
{
  v55 = sub_1005B981C(&qword_101A31AB8);
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v3 = &v44 - v2;
  v4 = sub_1005B981C(&qword_101A31AC0);
  __chkstk_darwin(v4);
  v5 = sub_100796B00();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x206120646441;
  v6._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v54 = sub_1007961B4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x20796D206F7420;
  v7._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v56 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x6472616F6220;
  v8._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = *(v57 + 8);
  v57 += 8;
  v10 = v55;
  v9(v3, v55);
  v53 = v9;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x6120747265736E49;
  v11._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v50 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 544108320;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x6472616F6220;
  v13._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9(v3, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x206120747550;
  v14._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x6F20657061687320;
  v15._object = 0xED000020796D206ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0x6472616F6220;
  v16._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = v5;
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v53;
  v53(v3, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x2061206563616C50;
  v18._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x20796D206E6F20;
  v19._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0x6472616F6220;
  v20._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v52 = v3;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = v55;
  v17(v3, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x6120746E61772049;
  v22._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0x6F20657061687320;
  v23._object = 0xED000020796D206ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x6472616F6220;
  v24._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v52;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26 = v21;
  v27 = v53;
  v53(v25, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._object = 0xED00002077656E20;
  v28._countAndFlagsBits = 0x6120746E61772049;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0x6F20657061687320;
  v29._object = 0xED000020796D206ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0x6472616F6220;
  v30._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  v31 = v52;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32 = v31;
  v33 = v55;
  v27(v31, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v34._countAndFlagsBits = 0x6120686361747441;
  v34._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35._countAndFlagsBits = 0x7420657061687320;
  v35._object = 0xEE0020656874206FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._countAndFlagsBits = 0x6472616F6220;
  v36._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v53(v32, v33);
  sub_1005B981C(&qword_101A31AC8);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_101483930;
  v39 = v48;
  *(v38 + 32) = v49;
  *(v38 + 40) = v39;
  v40 = v46;
  *(v38 + 48) = v47;
  *(v38 + 56) = v40;
  v41 = v44;
  *(v38 + 64) = v45;
  *(v38 + 72) = v41;
  *(v38 + 80) = v37;
  v42 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v42;
}

uint64_t sub_1012B0E4C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1007961B4();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100796B00();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146BDE0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1012B106C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1005B981C(&qword_101A319D8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101478A90;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t sub_1012B1184(uint64_t a1)
{
  v53 = a1;
  v55 = sub_1005B981C(&qword_101A31AA0);
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v2 = &v42 - v1;
  v3 = sub_1005B981C(&qword_101A31AA8);
  __chkstk_darwin(v3);
  type metadata accessor for CRLChangeSelectionColorIntent();
  sub_1012BA7E8(&qword_101A2DDF0, type metadata accessor for CRLChangeSelectionColorIntent);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x80000001015CA380;
  v4._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  v51 = sub_10122DEB4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  v54 = v2;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v52 + 8;
  v7 = *(v52 + 8);
  v49 = v6;
  v50 = v7;
  v9 = v2;
  v10 = v55;
  v7(v9, v55);
  v52 = v8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000010;
  v46 = 0xD000000000000010;
  v11._object = 0x80000001015CA3A0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v13 = v54;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v50(v13, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x80000001015CA3C0;
  v14._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v54;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v50;
  v50(v16, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x80000001015CA3E0;
  v18._countAndFlagsBits = v46;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v54;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = v55;
  v17(v20, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0xD000000000000013;
  v22._object = 0x80000001015CA400;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  v24 = v54;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25 = v21;
  v26 = v17;
  v17(v24, v25);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0xD000000000000014;
  v27._object = 0x80000001015CA420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  v29 = v54;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v29, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0x742065676E616843;
  v30._object = 0xEF206F7420736968;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v54;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26(v32, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._object = 0x80000001015CA440;
  v33._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26(v32, v55);
  sub_1005B981C(&qword_101A31AB0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1014AEA50;
  v37 = v48;
  *(v36 + 32) = v49;
  *(v36 + 40) = v37;
  v38 = v46;
  *(v36 + 48) = v47;
  *(v36 + 56) = v38;
  v39 = v44;
  *(v36 + 64) = v45;
  *(v36 + 72) = v39;
  *(v36 + 80) = v43;
  *(v36 + 88) = v35;
  v40 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v40;
}

uint64_t sub_1012B19F8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10122DEB4();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1012BA7E8(&qword_101A2DDF0, type metadata accessor for CRLChangeSelectionColorIntent);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1012B1B98(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A31AA0);
  v3 = *(v2 - 8);
  v61 = v2;
  v62 = v3;
  __chkstk_darwin(v2);
  v5 = &v47 - v4;
  v6 = sub_1005B981C(&qword_101A31AA8);
  __chkstk_darwin(v6);
  v7 = type metadata accessor for CRLChangeSelectionColorIntent();
  v8 = sub_1012BA7E8(&qword_101A2DDF0, type metadata accessor for CRLChangeSelectionColorIntent);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x80000001015CA380;
  v9._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v58 = sub_10122DEB4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544108320;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v59 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v54 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = *(v62 + 8);
  v62 += 8;
  v60 = v12;
  v12(v5, v61);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000010;
  v51 = 0xD000000000000010;
  v13._object = 0x80000001015CA3A0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v56 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 544108320;
  v14._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v57 = v7;
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v60(v5, v61);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x80000001015CA3C0;
  v16._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 544108320;
  v17._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v55 = v8;
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19 = v61;
  v60(v5, v61);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._object = 0x80000001015CA3E0;
  v20._countAndFlagsBits = v51;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 544108320;
  v21._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v60;
  v60(v5, v19);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0xD000000000000013;
  v24._object = 0x80000001015CA400;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 544108320;
  v25._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23(v5, v61);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0xD000000000000014;
  v27._object = 0x80000001015CA420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 544108320;
  v28._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  v47 = v5;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30 = v5;
  v32 = v60;
  v31 = v61;
  v60(v30, v61);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._countAndFlagsBits = 0x742065676E616843;
  v33._object = 0xEF206F7420736968;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 544108320;
  v34._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  v36 = v47;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v36, v31);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._object = 0x80000001015CA440;
  v37._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 544108320;
  v38._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v60(v36, v61);
  sub_1005B981C(&qword_101A31AB0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1014AEA50;
  v42 = v53;
  *(v41 + 32) = v54;
  *(v41 + 40) = v42;
  v43 = v51;
  *(v41 + 48) = v52;
  *(v41 + 56) = v43;
  v44 = v49;
  *(v41 + 64) = v50;
  *(v41 + 72) = v44;
  *(v41 + 80) = v48;
  *(v41 + 88) = v40;
  v45 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v45;
}

uint64_t sub_1012B2708()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10122DEB4();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1012BA7E8(&qword_101A2DDF0, type metadata accessor for CRLChangeSelectionColorIntent);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146BDE0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1012B2958()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1005B981C(&qword_101A319D8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1014AEA50;
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

uint64_t sub_1012B2A9C(uint64_t a1)
{
  v45 = a1;
  v1 = sub_1005B981C(&qword_101A31A88);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - v3;
  v5 = sub_1005B981C(&qword_101A31A90);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for CRLChangeSelectionFontStyleIntent();
  sub_1012BA7E8(&qword_101A1DBD0, type metadata accessor for CRLChangeSelectionFontStyleIntent);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x7478657420746553;
  v7._object = 0xEC000000206F7420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v44 = sub_100BAE970();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v9 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = *(v2 + 8);
  v40 = v9;
  v41 = v10;
  v43 = v1;
  v10(v4, v1);
  v42 = v2 + 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x78657420656B614DLL;
  v11._object = 0xEA00000000002074;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = v6;
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v41;
  v41(v4, v1);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x6E6F6620656B614DLL;
  v14._object = 0xEA00000000002074;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v4, v43);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x20796C707041;
  v16._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v43;
  v19 = v41;
  v41(v4, v43);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x7478657420;
  v21._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v4, v18);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x2065766F6D6552;
  v22._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24 = v41;
  v41(v4, v43);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0x206574656C6544;
  v25._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24(v4, v43);
  sub_1005B981C(&qword_101A31A98);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_101483930;
  v29 = v39;
  *(v28 + 32) = v40;
  *(v28 + 40) = v29;
  v30 = v37;
  *(v28 + 48) = v38;
  *(v28 + 56) = v30;
  v31 = v35;
  *(v28 + 64) = v36;
  *(v28 + 72) = v31;
  *(v28 + 80) = v27;
  v32 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v32;
}

uint64_t sub_1012B3204()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100BAE970();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1012BA7E8(&qword_101A1DBD0, type metadata accessor for CRLChangeSelectionFontStyleIntent);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1012B33A4(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A31A88);
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v4 = &v45 - v3;
  v5 = sub_1005B981C(&qword_101A31A90);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for CRLChangeSelectionFontStyleIntent();
  v7 = sub_1012BA7E8(&qword_101A1DBD0, type metadata accessor for CRLChangeSelectionFontStyleIntent);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x7478657420746553;
  v8._object = 0xEC000000206F7420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v54 = sub_100BAE970();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 544108320;
  v9._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v57 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v56 = v4;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52 = v6;
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = v60;
  v58 = *(v59 + 8);
  v59 += 8;
  v58(v4, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x78657420656B614DLL;
  v12._object = 0xEA00000000002074;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  v55 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 544108320;
  v13._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v15 = v56;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v53 = v7;
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v11;
  v17 = v58;
  v58(v15, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x6E6F6620656B614DLL;
  v18._object = 0xEA00000000002074;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 544108320;
  v19._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v21 = v56;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v21, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x20796C707041;
  v22._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 544108320;
  v23._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v58(v21, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0x6E6F207478657420;
  v26._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  v28 = v56;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29 = v60;
  v30 = v58;
  v58(v28, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0x2065766F6D6552;
  v31._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 544108320;
  v32._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  v34 = v56;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30(v34, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0x206574656C6544;
  v35._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._countAndFlagsBits = 544108320;
  v36._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v58(v34, v60);
  sub_1005B981C(&qword_101A31A98);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_101483930;
  v40 = v50;
  *(v39 + 32) = v51;
  *(v39 + 40) = v40;
  v41 = v48;
  *(v39 + 48) = v49;
  *(v39 + 56) = v41;
  v42 = v46;
  *(v39 + 64) = v47;
  *(v39 + 72) = v42;
  *(v39 + 80) = v38;
  v43 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v43;
}

uint64_t sub_1012B3DD8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100BAE970();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1012BA7E8(&qword_101A1DBD0, type metadata accessor for CRLChangeSelectionFontStyleIntent);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146BDE0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1012B4028()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1005B981C(&qword_101A319D8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146D2A0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_1012B4114(uint64_t a1)
{
  v15[1] = a1;
  v17 = sub_1005B981C(&qword_101A31A70);
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = v15 - v2;
  v4 = sub_1005B981C(&qword_101A31A80);
  __chkstk_darwin(v4);
  sub_1006148D8();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_100922178();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x697320746E6F6620;
  v6._object = 0xEA0000000000657ALL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = *(v1 + 8);
  v8 = v17;
  v7(v3, v17);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x7478657420;
  v10._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v11 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v3, v8);
  sub_1005B981C(&qword_101A31A78);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10146BDE0;
  *(v12 + 32) = v16;
  *(v12 + 40) = v11;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_1012B4444()
{
  v0 = sub_1005B981C(&qword_101A31A70);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_1006148D8();
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
  sub_1005B981C(&qword_101A31A78);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146D2A0;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_1012B46B4()
{
  v0 = sub_1005B981C(&qword_101A31A70);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_1006148D8();
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
  sub_1005B981C(&qword_101A31A78);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10146C4D0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_1012B48D8(uint64_t a1, char a2)
{
  v3 = type metadata accessor for _AssistantIntent.Value();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11[15] = a2;
  swift_getKeyPath();
  sub_100922178();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1006148D8();
  sub_100616410();
  _AssistantIntent.Value.init<A, B>(_:for:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v4 + 8))(v6, v3);
  sub_1005B981C(&qword_101A319E8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10146C6B0;
  *(v8 + 32) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_1012B4A50()
{
  v0 = sub_1005B981C(&qword_101A31A58);
  v1 = *(v0 - 8);
  v22 = v0;
  v23 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_1005B981C(&qword_101A31A68);
  __chkstk_darwin(v4);
  sub_100615F74();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x80000001015CA170;
  v5._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_101A31A50, &type metadata accessor for ResizeBehavior);
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
  v8._countAndFlagsBits = 0x78657420656B614DLL;
  v8._object = 0xEA00000000002074;
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
  v11._countAndFlagsBits = 0xD000000000000020;
  v11._object = 0x80000001015CA290;
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
  sub_1005B981C(&qword_101A31A60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146C4D0;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_1012B4E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
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

uint64_t sub_1012B4FCC()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_101A31A50, &type metadata accessor for ResizeBehavior);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100615F74();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1012B5194()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1005B981C(&qword_101A319D8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10146BDE0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_1012B5220()
{
  v0 = sub_1005B981C(&qword_101A31A58);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  sub_100615F74();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_1005B981C(&qword_101A31A60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146BDE0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1012B53E0()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_101A31A50, &type metadata accessor for ResizeBehavior);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100615F74();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1012B5594()
{
  v0 = sub_1005B981C(&qword_101A31A58);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_100615F74();
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
  sub_1005B981C(&qword_101A31A60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146D2A0;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_1012B5800()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_101A31A50, &type metadata accessor for ResizeBehavior);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100615F74();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1012B59B8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1005B981C(&qword_101A319D8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10146C6B0;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_1012B5A24(uint64_t a1)
{
  v35 = a1;
  v34 = sub_1005B981C(&qword_101A31A38);
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v26 - v2;
  v4 = sub_1005B981C(&qword_101A31A40);
  __chkstk_darwin(v4);
  sub_101287E9C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD000000000000013;
  v5._object = 0x80000001015CA170;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v33 = sub_101255284();
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
  v10._object = 0x80000001015CA190;
  v10._countAndFlagsBits = 0xD000000000000014;
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
  v12._countAndFlagsBits = 0x20796C707041;
  v12._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x697320746E6F6620;
  v13._object = 0xEA0000000000657ALL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x80000001015CA1B0;
  v14._countAndFlagsBits = 0xD000000000000014;
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
  v18._countAndFlagsBits = 0x746E6F6620746553;
  v18._object = 0xEE0020657A697320;
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
  sub_1005B981C(&qword_101A31A48);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10146CA70;
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

uint64_t sub_1012B5FF4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_101255284();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_101287E9C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1012B6164()
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
  sub_1005B981C(&qword_101A319D8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101488C80;
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

uint64_t sub_1012B62A8()
{
  v0 = sub_1005B981C(&qword_101A31A20);
  v1 = *(v0 - 8);
  v27 = v0;
  v28 = v1;
  __chkstk_darwin(v0);
  v3 = &v21 - v2;
  v4 = sub_1005B981C(&qword_101A31A28);
  __chkstk_darwin(v4);
  sub_100EDFFC0();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v25 = sub_100AC16C8();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 544828704;
  v6._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v24 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x6472616F6220;
  v7._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v27;
  v22 = *(v28 + 8);
  v28 += 8;
  v22(v3, v27);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x2065687420746553;
  v9._object = 0xEE00206472616F62;
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
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v22;
  v22(v3, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x7420746E61772049;
  v13._object = 0xEA0000000000206FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 544828704;
  v14._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x6472616F6220;
  v15._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v3, v27);
  sub_1005B981C(&qword_101A31A30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10146C4D0;
  v18 = v23;
  *(v17 + 32) = v26;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v19;
}

uint64_t sub_1012B6830()
{
  v0 = sub_1005B981C(&qword_101A31A20);
  v1 = *(v0 - 8);
  v22 = v0;
  v23 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_1005B981C(&qword_101A31A28);
  __chkstk_darwin(v4);
  sub_100EDFFC0();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 543450177;
  v5._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x6F766166206F7420;
  v6._object = 0xED00007365746972;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = v22;
  v19 = *(v23 + 8);
  v23 += 8;
  v19(v3, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x20656B614DLL;
  v8._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x726F766166206120;
  v9._object = 0xEB00000000657469;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v19;
  v19(v3, v7);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x656874206B72614DLL;
  v11._object = 0xEF206472616F6220;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x6F76616620736120;
  v12._object = 0xEC00000065746972;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v3, v22);
  sub_1005B981C(&qword_101A31A30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146C4D0;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_1012B6CA4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8[15] = 0;
  swift_getKeyPath();
  sub_100AC16C8();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100EDFFC0();
  sub_100AC186C();
  _AssistantIntent.Value.init<A, B>(_:for:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1012B6E14()
{
  v0 = sub_1005B981C(&qword_101A31A20);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  v4 = sub_1005B981C(&qword_101A31A28);
  __chkstk_darwin(v4);
  sub_100EDFFC0();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x2065766F6D6552;
  v5._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x6166206D6F726620;
  v6._object = 0xEF73657469726F76;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A31A30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10146C6B0;
  *(v8 + 32) = v7;
  v9 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_1012B70A4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8[15] = 1;
  swift_getKeyPath();
  sub_100AC16C8();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100EDFFC0();
  sub_100AC186C();
  _AssistantIntent.Value.init<A, B>(_:for:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1012B7218()
{
  v0 = sub_1005B981C(&qword_101A31A08);
  v1 = *(v0 - 8);
  v21 = v0;
  v22 = v1;
  __chkstk_darwin(v0);
  v3 = &v17 - v2;
  v4 = sub_1005B981C(&qword_101A31A10);
  __chkstk_darwin(v4);
  sub_100AE1014();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v19 = sub_100CDB674();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._object = 0x80000001015CA130;
  v6._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v21;
  v9 = *(v22 + 8);
  v22 += 8;
  v18 = v9;
  v9(v3, v21);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0xD00000000000001CLL;
  v11._object = 0x80000001015CA150;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18(v3, v8);
  sub_1005B981C(&qword_101A31A18);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146BDE0;
  *(v14 + 32) = v20;
  *(v14 + 40) = v13;
  v15 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v15;
}

uint64_t sub_1012B7664(uint64_t a1)
{
  v15[1] = a1;
  v17 = sub_1005B981C(&qword_101A31A08);
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = v15 - v2;
  v4 = sub_1005B981C(&qword_101A31A10);
  __chkstk_darwin(v4);
  sub_100AE1014();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x80000001015CA0E0;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
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
  v9._countAndFlagsBits = 0xD000000000000020;
  v9._object = 0x80000001015CA100;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v11 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v3, v8);
  sub_1005B981C(&qword_101A31A18);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10146BDE0;
  *(v12 + 32) = v16;
  *(v12 + 40) = v11;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_1012B79CC()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8[15] = 0;
  swift_getKeyPath();
  sub_100CDB674();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100AE1014();
  sub_10077C964();
  _AssistantIntent.Value.init<A, B>(_:for:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1012B7B3C(uint64_t a1)
{
  v15[1] = a1;
  v17 = sub_1005B981C(&qword_101A31A08);
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = v15 - v2;
  v4 = sub_1005B981C(&qword_101A31A10);
  __chkstk_darwin(v4);
  sub_100AE1014();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x80000001015CA080;
  v5._countAndFlagsBits = 0xD000000000000026;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
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
  v9._countAndFlagsBits = 0xD000000000000028;
  v9._object = 0x80000001015CA0B0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v11 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v3, v8);
  sub_1005B981C(&qword_101A31A18);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10146BDE0;
  *(v12 + 32) = v16;
  *(v12 + 40) = v11;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_1012B7EA4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8[15] = 1;
  swift_getKeyPath();
  sub_100CDB674();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100AE1014();
  sub_10077C964();
  _AssistantIntent.Value.init<A, B>(_:for:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1012B8018()
{
  v24 = sub_1005B981C(&qword_101A319F0);
  v26 = *(v24 - 8);
  __chkstk_darwin(v24);
  v1 = &v19 - v0;
  v2 = sub_1005B981C(&qword_101A319F8);
  __chkstk_darwin(v2);
  sub_10077C9B8();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  v21 = sub_100CDB674();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v4._object = 0x80000001015CA030;
  v4._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  v25 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = *(v26 + 8);
  v26 += 8;
  v6 = v24;
  v20(v1, v24);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x6E6F2073746F6420;
  v8._object = 0xEF206472616F6220;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v20;
  v20(v1, v6);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0xD000000000000021;
  v12._object = 0x80000001015CA050;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v1, v24);
  sub_1005B981C(&qword_101A31A00);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10146C4D0;
  v16 = v22;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v17;
}

uint64_t sub_1012B85A0(uint64_t a1)
{
  v21 = sub_1005B981C(&qword_101A319F0);
  v23 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = v19 - v2;
  v4 = sub_1005B981C(&qword_101A319F8);
  __chkstk_darwin(v4);
  sub_10077C9B8();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x80000001015C9FC0;
  v5._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  v19[1] = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19[0] = *(v23 + 8);
  v22 = v7;
  v23 += 8;
  v8 = v21;
  (v19[0])(v3, v21);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000024;
  v9._object = 0x80000001015C9FE0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x6E6961676120;
  v10._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = v19[0];
  (v19[0])(v3, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  v12._object = 0x80000001015CA010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v3, v8);
  sub_1005B981C(&qword_101A31A00);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10146C4D0;
  v16 = v20;
  *(v15 + 32) = v22;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v17;
}

uint64_t sub_1012B89FC()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8[15] = 0;
  swift_getKeyPath();
  sub_100CDB674();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10077C9B8();
  sub_10077C964();
  _AssistantIntent.Value.init<A, B>(_:for:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1012B8B6C()
{
  v0 = sub_1005B981C(&qword_101A319F0);
  v1 = *(v0 - 8);
  v22 = v0;
  v23 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_1005B981C(&qword_101A319F8);
  __chkstk_darwin(v4);
  sub_10077C9B8();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001015C9F40;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
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
  v8._countAndFlagsBits = 0xD000000000000020;
  v8._object = 0x80000001015C9F70;
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
  v11._object = 0x80000001015C9FA0;
  v11._countAndFlagsBits = 0xD00000000000001ALL;
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
  sub_1005B981C(&qword_101A31A00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146C4D0;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_1012B8FB4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1005B981C(&qword_101A319D8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1014AEA50;
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

uint64_t sub_1012B9160()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8[15] = 1;
  swift_getKeyPath();
  sub_100CDB674();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10077C9B8();
  sub_10077C964();
  _AssistantIntent.Value.init<A, B>(_:for:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1012B92D4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1005B981C(&qword_101A319D8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10146C6B0;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_1012B9360()
{
  v0 = type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006896D0();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v4 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&qword_101A319D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1012B94B0()
{
  v0 = type metadata accessor for CRLChangeSelectionFontStyleIntent();
  __chkstk_darwin(v0);
  v2 = (&v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for CRLChangeSelectionColorIntent();
  __chkstk_darwin(v3);
  v5 = (&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for _AssistantIntent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_101060EFC();
  v77 = v10;
  v78 = v11;
  v79 = v12;
  sub_101061A0C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v75 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v76 = sub_101060EFC();
  v77 = v14;
  v78 = v15;
  v79 = v16;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v74 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_1007177A8(&v76);
  sub_100719454();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v73 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_1007177A8(&v76);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v72 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_10105DCEC(&v76);
  sub_101061A60();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v71 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_10105DCEC(&v76);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v70 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_100B4C724(&v76);
  sub_100B4EA20();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v69 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_1006AE0B4(&v76);
  sub_1006B035C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v68 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_100850330(&v76);
  sub_100852A5C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v67 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_100793B20(&v76);
  sub_100796B00();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v66 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_100793B20(&v76);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v65 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_10122D1E0(v5);
  sub_1012BA7E8(&qword_101A2DDF0, type metadata accessor for CRLChangeSelectionColorIntent);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v64 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_10122D1E0(v5);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v63 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_100D5B59C(v2);
  sub_1012BA7E8(&qword_101A1DBD0, type metadata accessor for CRLChangeSelectionFontStyleIntent);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v62 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_100D5B59C(v2);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v61 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_10061356C(&v76);
  sub_1006148D8();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v60 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_10061356C(&v76);
  _AssistantIntent.init<A>(_:phrases:implying:)();
  v59 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_10061356C(&v76);
  _AssistantIntent.init<A>(_:phrases:implying:)();
  v58 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_100614A2C(&v76);
  sub_100615F74();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v57 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_100614A2C(&v76);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v56 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_100614A2C(&v76);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v55 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_1012869E4(&v76);
  sub_101287E9C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v54 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_100EDE8F8(&v76);
  sub_100EDFFC0();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v53 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_100EDE8F8(&v76);
  _AssistantIntent.init<A>(_:phrases:parameterValues:implying:)();
  v52 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_100EDE8F8(&v76);
  _AssistantIntent.init<A>(_:phrases:parameterValues:implying:)();
  v51 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  v76 = sub_100AE06D0();
  v77 = v17;
  v78 = v18;
  sub_100AE1014();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v50 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  v76 = sub_100AE06D0();
  v77 = v19;
  v78 = v20;
  _AssistantIntent.init<A>(_:phrases:parameterValues:implying:)();
  v21 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  v76 = sub_100AE06D0();
  v77 = v22;
  v78 = v23;
  _AssistantIntent.init<A>(_:phrases:parameterValues:implying:)();
  v24 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  v76 = sub_10077C020();
  v77 = v25;
  v78 = v26;
  sub_10077C9B8();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v27 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  v76 = sub_10077C020();
  v77 = v28;
  v78 = v29;
  _AssistantIntent.init<A>(_:phrases:parameterValues:implying:)();
  v30 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  v76 = sub_10077C020();
  v77 = v31;
  v78 = v32;
  _AssistantIntent.init<A>(_:phrases:parameterValues:implying:)();
  v33 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13(v9, v6);
  sub_1005B981C(&qword_101A319E0);
  v34 = swift_allocObject();
  v35 = v74;
  *(v34 + 32) = v75;
  *(v34 + 40) = v35;
  *(v34 + 16) = xmmword_101487760;
  v36 = v72;
  *(v34 + 48) = v73;
  *(v34 + 56) = v36;
  v37 = v70;
  *(v34 + 64) = v71;
  *(v34 + 72) = v37;
  v38 = v68;
  *(v34 + 80) = v69;
  *(v34 + 88) = v38;
  v39 = v66;
  *(v34 + 96) = v67;
  *(v34 + 104) = v39;
  v40 = v64;
  *(v34 + 112) = v65;
  *(v34 + 120) = v40;
  v41 = v62;
  *(v34 + 128) = v63;
  *(v34 + 136) = v41;
  v42 = v60;
  *(v34 + 144) = v61;
  *(v34 + 152) = v42;
  v43 = v58;
  *(v34 + 160) = v59;
  *(v34 + 168) = v43;
  v44 = v56;
  *(v34 + 176) = v57;
  *(v34 + 184) = v44;
  v45 = v54;
  *(v34 + 192) = v55;
  *(v34 + 200) = v45;
  v46 = v52;
  *(v34 + 208) = v53;
  *(v34 + 216) = v46;
  v47 = v50;
  *(v34 + 224) = v51;
  *(v34 + 232) = v47;
  *(v34 + 240) = v21;
  *(v34 + 248) = v24;
  *(v34 + 256) = v27;
  *(v34 + 264) = v30;
  *(v34 + 272) = v33;
  v48 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v48;
}

uint64_t sub_1012BA648@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_1012BA6BC()
{
  result = qword_101A31AD0;
  if (!qword_101A31AD0)
  {
    sub_1005C4E5C(&qword_101A31AD8);
    sub_1012BA7E8(&qword_101A31AE0, &type metadata accessor for IntentFile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31AD0);
  }

  return result;
}

uint64_t sub_1012BA770@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1012BA7E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1012BA830()
{
  result = qword_101A31B68;
  if (!qword_101A31B68)
  {
    sub_1005C4E5C(&qword_101A31B70);
    sub_100D33A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31B68);
  }

  return result;
}

uint64_t sub_1012BA8C8()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier);
  v1 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_rootContainerUUID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_alternateRootContainerUUID, v2);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData), *(v0 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_1012BA9E0()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
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

__n128 sub_1012BAACC@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions;
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1012BAAF0()
{
  sub_100005070(v0 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_persistenceContext);
}

uint64_t sub_1012BAB40()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier);
  v1 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_rootContainerUUID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_alternateRootContainerUUID, v2);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData), *(v0 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData + 8));
  v4 = OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_persistenceContext;

  sub_100005070(v0 + v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1012BAD04()
{
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData), *(v0 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData + 8));
}

uint64_t sub_1012BAD48()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier);
  v1 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_rootContainerUUID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_alternateRootContainerUUID, v2);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData), *(v0 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData + 8));
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData);
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData + 8);

  sub_100025870(v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_1012BAF00()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform34CRLBoardSyncRemoteRecordIdentifier_boardIdentifier);

  return swift_deallocClassInstance();
}

void sub_1012BAFD4()
{
  sub_1012BB100();
  if (v0 <= 0x3F)
  {
    sub_1012BB194();
    if (v1 <= 0x3F)
    {
      sub_1012BB270(319, &unk_101A32098, &qword_1019F6D50, &unk_10146FB80, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_1012BB270(319, &qword_101A25DD0, &qword_101A25DD8, &unk_1014BE0B0, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1012BB100()
{
  if (!qword_101A32088)
  {
    type metadata accessor for CRLEditingCoordinator();
    sub_1012BB228(&qword_101A25220, type metadata accessor for CRLEditingCoordinator);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101A32088);
    }
  }
}

void sub_1012BB194()
{
  if (!qword_101A32090)
  {
    type metadata accessor for CRLCollaborationParticipantCollection(255);
    sub_1012BB228(&unk_101A00E58, type metadata accessor for CRLCollaborationParticipantCollection);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101A32090);
    }
  }
}

uint64_t sub_1012BB228(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1012BB270(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1005C4E5C(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

BOOL sub_1012BB2F0()
{
  v6 = &type metadata for CRLFeatureFlags;
  v0 = sub_100004D60();
  v7 = v0;
  LOBYTE(v5[0]) = 0;
  v1 = isFeatureEnabled(_:)();
  sub_100005070(v5);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v6 = &type metadata for CRLFeatureFlags;
  v7 = v0;
  LOBYTE(v5[0]) = 13;
  v2 = isFeatureEnabled(_:)();
  sub_100005070(v5);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5[0] >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v5[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

void sub_1012BB408(uint64_t a1@<X8>)
{
  v92 = a1;
  v88 = sub_1005B981C(&qword_101A320E0);
  v1 = *(v88 - 8);
  __chkstk_darwin(v88);
  v93 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v91 = &v72 - v4;
  v5 = sub_1005B981C(&qword_101A320E8);
  v89 = *(v5 - 8);
  v90 = v5;
  __chkstk_darwin(v5);
  v7 = &v72 - v6;
  v81 = sub_1005B981C(&qword_1019FEAD8);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v77 = &v72 - v10;
  v11 = type metadata accessor for CRLActiveParticipantDetailView(0);
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  __chkstk_darwin(v11);
  v75 = sub_1005B981C(&qword_101A320F0);
  __chkstk_darwin(v75);
  v78 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v72 - v15;
  v17 = sub_1005B981C(&qword_101A320F8);
  __chkstk_darwin(v17 - 8);
  v87 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v94 = &v72 - v20;
  v21 = [objc_opt_self() sharedApplication];
  v22 = [v21 delegate];

  if (v22)
  {
    type metadata accessor for CRLiOSAppDelegate();
    v23 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_iCloudStatus);

    swift_unknownObjectRelease();
    swift_beginAccess();
    v24 = *(v23 + 80);
    v25 = *(*(v23 + 72) + 16);

    os_unfair_lock_lock(v25);
    os_unfair_lock_unlock(v25);

    v26 = 0;
    if ((v24 & 2) == 0)
    {
      v26 = [objc_opt_self() loggedInUserHasManagedAppleID];
    }

    v86 = v1;
    v27 = v95;
    v28 = (v95 + *(v11 + 36));
    v29 = v28[1];
    v98 = *v28;
    v99 = v29;
    sub_100017CD8();

    v30 = Text.init<A>(_:)();
    v85 = v32;
    v84 = v31;
    v83 = v30;
    v82 = v33;
    if (v26)
    {
      v34 = 1;
      v35 = v94;
    }

    else
    {
      v74 = v7;
      v98 = v30;
      v99 = v31;
      v100 = v32 & 1;
      v101 = v33;
      __chkstk_darwin(v30);
      *(&v72 - 2) = v27;
      sub_10081EF10(v36, v37, v38);

      sub_1005B981C(&qword_101A32100);
      v39 = v95;
      sub_10001A2F8(&qword_101A32108, &qword_101A32100);
      Section<>.init(header:content:)();
      sub_1012C6610(v39, &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLActiveParticipantDetailView);
      v40 = (*(v76 + 80) + 16) & ~*(v76 + 80);
      v41 = swift_allocObject();
      sub_1012C6678(&v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40, type metadata accessor for CRLActiveParticipantDetailView);
      v42 = &v16[*(v75 + 36)];
      v43 = v16;
      v73 = v16;
      type metadata accessor for _TaskModifier();
      static TaskPriority.userInitiated.getter();
      *v42 = &unk_1014DAAC8;
      *(v42 + 1) = v41;
      v44 = [objc_opt_self() mainBundle];
      v45 = String._bridgeToObjectiveC()();
      v46 = String._bridgeToObjectiveC()();
      v47 = [v44 localizedStringForKey:v45 value:v46 table:0];

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v96 = v48;
      v97 = v50;
      type metadata accessor for CRLEditingCoordinator();
      sub_1012BB228(&qword_101A25220, type metadata accessor for CRLEditingCoordinator);
      v51 = ObservedObject.projectedValue.getter();
      swift_getKeyPath();
      ObservedObject.Wrapper.subscript.getter();

      v52 = v77;
      Toggle<>.init<A>(_:isOn:)();
      v53 = v78;
      sub_10000BE14(v43, v78, &qword_101A320F0);
      v54 = v80;
      v55 = *(v80 + 16);
      v56 = v79;
      v57 = v81;
      v55(v79, v52, v81);
      v58 = v74;
      sub_10000BE14(v53, v74, &qword_101A320F0);
      v59 = sub_1005B981C(&qword_101A32110);
      v55((v58 + *(v59 + 48)), v56, v57);
      v60 = *(v54 + 8);
      v60(v52, v57);
      sub_10000CAAC(v73, &qword_101A320F0);
      v60(v56, v57);
      v61 = v53;
      v27 = v95;
      sub_10000CAAC(v61, &qword_101A320F0);
      v35 = v94;
      sub_10003DFF8(v58, v94, &qword_101A320E8);
      v34 = 0;
    }

    v62 = (*(v89 + 56))(v35, v34, 1, v90);
    __chkstk_darwin(v62);
    *(&v72 - 2) = v27;
    sub_1005B981C(&qword_101A32118);
    sub_10001A2F8(&qword_101A32120, &qword_101A32118);
    v63 = v91;
    Section<>.init(content:)();
    v64 = v87;
    sub_10000BE14(v35, v87, &qword_101A320F8);
    v65 = v86;
    v66 = *(v86 + 16);
    v67 = v93;
    v68 = v88;
    v66(v93, v63, v88);
    v69 = v92;
    sub_10000BE14(v64, v92, &qword_101A320F8);
    v70 = sub_1005B981C(&qword_101A32128);
    v66((v69 + *(v70 + 48)), v67, v68);
    sub_10007441C(v83, v84, v85 & 1);

    v71 = *(v65 + 8);
    v71(v63, v68);
    sub_10000CAAC(v94, &qword_101A320F8);
    v71(v67, v68);
    sub_10000CAAC(v64, &qword_101A320F8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1012BBED0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_1005B981C(&qword_101A32140);
  v81 = *(v3 - 8);
  v82 = v3;
  __chkstk_darwin(v3);
  v79 = &v73[-v4];
  v5 = sub_1005B981C(&qword_101A32148);
  v83 = *(v5 - 8);
  v84 = v5;
  __chkstk_darwin(v5);
  v80 = &v73[-v6];
  v7 = sub_1005B981C(&qword_101A32150);
  v88 = *(v7 - 8);
  __chkstk_darwin(v7);
  v78 = &v73[-v8];
  v9 = type metadata accessor for Tips.Status();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v77 = &v73[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1005B981C(&qword_101A32158);
  __chkstk_darwin(v12);
  v14 = &v73[-v13];
  v15 = sub_1005B981C(&qword_1019F6D50);
  __chkstk_darwin(v15 - 8);
  v85 = &v73[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v73[-v18];
  __chkstk_darwin(v20);
  v22 = &v73[-v21];
  v23 = sub_1005B981C(&qword_101A32160);
  __chkstk_darwin(v23 - 8);
  v86 = &v73[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v89 = &v73[-v26];
  if (sub_1012BB2F0())
  {
    v75 = v7;
    type metadata accessor for CRLActiveParticipantDetailView(0);
    sub_1005B981C(&qword_101A32018);
    v76 = a1;
    State.wrappedValue.getter();
    (*(v10 + 104))(v19, enum case for Tips.Status.available(_:), v9);
    (*(v10 + 56))(v19, 0, 1, v9);
    v27 = *(v12 + 48);
    sub_10000BE14(v22, v14, &qword_1019F6D50);
    sub_10000BE14(v19, &v14[v27], &qword_1019F6D50);
    v28 = *(v10 + 48);
    if (v28(v14, 1, v9) == 1)
    {
      sub_10000CAAC(v19, &qword_1019F6D50);
      sub_10000CAAC(v22, &qword_1019F6D50);
      v29 = v28(&v14[v27], 1, v9);
      v7 = v75;
      if (v29 == 1)
      {
        sub_10000CAAC(v14, &qword_1019F6D50);
        a1 = v76;
LABEL_10:
        v98 = &type metadata for CRLTipFollowParticipant;
        v99 = sub_101283C84();
        v36 = v79;
        TipView.init<>(_:isPresented:arrowEdge:action:)();
        v37 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
        v95 = Color.init(_:)();
        v38 = sub_10001A2F8(&qword_101A32190, &qword_101A32140);
        v39 = v80;
        v40 = v82;
        View.tipBackground<A>(_:)();

        (*(v81 + 8))(v36, v40);
        v95 = v40;
        v96 = &type metadata for Color;
        v97 = v38;
        v98 = &protocol witness table for Color;
        swift_getOpaqueTypeConformance2();
        v41 = v78;
        v42 = v84;
        View.tipCornerRadius(_:antialiased:)();
        v43 = v39;
        v32 = v89;
        (*(v83 + 8))(v43, v42);
        v31 = v88;
        (*(v88 + 32))(v32, v41, v7);
        v30 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      sub_10000BE14(v14, v85, &qword_1019F6D50);
      if (v28(&v14[v27], 1, v9) != 1)
      {
        v33 = v77;
        (*(v10 + 32))(v77, &v14[v27], v9);
        sub_1012BB228(&qword_101A32198, &type metadata accessor for Tips.Status);
        v34 = v85;
        v74 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *(v10 + 8);
        v35(v33, v9);
        sub_10000CAAC(v19, &qword_1019F6D50);
        sub_10000CAAC(v22, &qword_1019F6D50);
        v35(v34, v9);
        sub_10000CAAC(v14, &qword_1019F6D50);
        v32 = v89;
        v7 = v75;
        a1 = v76;
        if ((v74 & 1) == 0)
        {
          v30 = 1;
          v31 = v88;
          goto LABEL_12;
        }

        goto LABEL_10;
      }

      sub_10000CAAC(v19, &qword_1019F6D50);
      sub_10000CAAC(v22, &qword_1019F6D50);
      (*(v10 + 8))(v85, v9);
      v7 = v75;
    }

    sub_10000CAAC(v14, &qword_101A32158);
    v30 = 1;
    v31 = v88;
    v32 = v89;
    a1 = v76;
  }

  else
  {
    v30 = 1;
    v31 = v88;
    v32 = v89;
  }

LABEL_12:
  (*(v31 + 56))(v32, v30, 1, v7);
  v98 = &type metadata for CRLFeatureFlags;
  v99 = sub_100004D60();
  LOBYTE(v95) = 13;
  v44 = isFeatureEnabled(_:)();
  sub_100005070(&v95);
  if ((v44 & 1) != 0 && (v45 = sub_1007DE720()) != 0)
  {
    v46 = v45;
    v47 = a1;
    v48 = *(a1 + 8);
    v49 = v47 + *(type metadata accessor for CRLActiveParticipantDetailView(0) + 40);
    swift_unknownObjectWeakLoadStrong();
    v50 = *(v49 + 8);
    v95 = v48;
    type metadata accessor for CRLCollaborationParticipantCollection(0);
    sub_1012BB228(&unk_101A00E58, type metadata accessor for CRLCollaborationParticipantCollection);
    v51 = v48;

    v52 = v46;
    v96 = ObservedObject.init(wrappedValue:)();
    v97 = v53;
    type metadata accessor for CRLCollaborationParticipant(0);
    sub_1012BB228(&qword_101A32188, type metadata accessor for CRLCollaborationParticipant);
    v98 = ObservedObject.init(wrappedValue:)();
    v99 = v54;
    *(&v100 + 1) = v50;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v90 = 0;
    v91 = 0xE000000000000000;
    State.init(wrappedValue:)();
    v101 = v92;
    v102 = v93;
    v55 = [objc_opt_self() sharedApplication];
    v56 = [v55 delegate];

    if (v56)
    {
      type metadata accessor for CRLiOSAppDelegate();
      v57 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_iCloudStatus);

      swift_unknownObjectRelease();
      swift_beginAccess();
      v58 = *(v57 + 80);
      v59 = *(*(v57 + 72) + 16);

      os_unfair_lock_lock(v59);
      os_unfair_lock_unlock(v59);

      v103 = (v58 & 2) == 0;
      sub_1012C58A8(&v95, &v90);
      sub_1012C58E0(&v90, &v92);
      v94 = 0;
      sub_1012C57D0();
      sub_1012C5824();
      _ConditionalContent<>.init(storage:)();

      sub_1012C5918(&v90);
LABEL_18:
      v70 = v86;
      sub_10000BE14(v32, v86, &qword_101A32160);
      sub_10000BE14(&v95, &v92, &qword_101A32178);
      v71 = v87;
      sub_10000BE14(v70, v87, &qword_101A32160);
      v72 = sub_1005B981C(&qword_101A32180);
      sub_10000BE14(&v92, v71 + *(v72 + 48), &qword_101A32178);
      sub_10000CAAC(&v95, &qword_101A32178);
      sub_10000CAAC(v32, &qword_101A32160);
      sub_10000CAAC(&v92, &qword_101A32178);
      sub_10000CAAC(v70, &qword_101A32160);
      return;
    }
  }

  else
  {
    v60 = *(a1 + 8);
    v61 = a1 + *(type metadata accessor for CRLActiveParticipantDetailView(0) + 40);
    swift_unknownObjectWeakLoadStrong();
    v62 = *(v61 + 8);
    v95 = v60;
    type metadata accessor for CRLCollaborationParticipantCollection(0);
    sub_1012BB228(&unk_101A00E58, type metadata accessor for CRLCollaborationParticipantCollection);
    v63 = v60;

    v96 = ObservedObject.init(wrappedValue:)();
    v97 = v64;
    v99 = v62;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v90 = 0;
    v91 = 0xE000000000000000;
    State.init(wrappedValue:)();
    v100 = v92;
    *&v101 = v93;
    v65 = [objc_opt_self() sharedApplication];
    v66 = [v65 delegate];

    if (v66)
    {
      type metadata accessor for CRLiOSAppDelegate();
      v67 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_iCloudStatus);

      swift_unknownObjectRelease();
      swift_beginAccess();
      v68 = *(v67 + 80);
      v69 = *(*(v67 + 72) + 16);

      os_unfair_lock_lock(v69);
      os_unfair_lock_unlock(v69);

      BYTE8(v101) = (v68 & 2) == 0;
      sub_1012C5760(&v95, &v90);
      sub_1012C5798(&v90, &v92);
      v94 = 1;
      sub_1012C57D0();
      sub_1012C5824();
      _ConditionalContent<>.init(storage:)();
      sub_1012C5878(&v90);
      goto LABEL_18;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1012BCCCC(uint64_t a1)
{
  v1[2] = a1;
  sub_1005B981C(&qword_1019F6D50);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v2 = sub_1005B981C(&qword_1019F6D58);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1005B981C(&qword_1019F6D60);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v5;
  v1[15] = v4;

  return _swift_task_switch(sub_1012BCE88, v5, v4);
}

uint64_t sub_1012BCE88()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_101283C84();
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = static MainActor.shared.getter();
  v0[16] = v4;
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1012BCF98;
  v6 = v0[9];
  v7 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v7, v4, &protocol witness table for MainActor, v6);
}

uint64_t sub_1012BCF98()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1012BD0DC, v3, v2);
}

uint64_t sub_1012BD0DC()
{
  v1 = v0[5];
  v2 = type metadata accessor for Tips.Status();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[3];
    v6 = v0[4];
    (*(v3 + 32))(v6, v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
    type metadata accessor for CRLActiveParticipantDetailView(0);
    sub_10000BE14(v6, v7, &qword_1019F6D50);
    sub_1005B981C(&qword_101A32018);
    State.wrappedValue.setter();
    sub_10000CAAC(v6, &qword_1019F6D50);
    v8 = static MainActor.shared.getter();
    v0[16] = v8;
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_1012BCF98;
    v10 = v0[9];
    v11 = v0[5];

    return AsyncStream.Iterator.next(isolation:)(v11, v8, &protocol witness table for MainActor, v10);
  }
}

uint64_t sub_1012BD358(uint64_t a1)
{
  v2 = type metadata accessor for CRLActiveParticipantDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1012C6610(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLActiveParticipantDetailView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1012C6678(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for CRLActiveParticipantDetailView);
  sub_1005B981C(&qword_101A32130);
  sub_10001A2F8(&qword_101A32138, &qword_101A32130);
  return Button.init(action:label:)();
}

uint64_t sub_1012BD4E0()
{
  type metadata accessor for CRLActiveParticipantDetailView(0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1005E9770();

    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_1012BD540@<Q0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v16 = 1;
  sub_1012BD5BC(&v10);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  result = v10;
  v9 = v16;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  return result;
}

uint64_t sub_1012BD5BC@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  LOBYTE(v4) = v9;
  static Color.primary.getter();
  v10 = Text.foregroundColor(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_10007441C(v6, v8, v4 & 1);

  v17 = Image.init(systemName:)();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v17;
  sub_10081EF10(v10, v12, v14 & 1);

  sub_10007441C(v10, v12, v14 & 1);
}

uint64_t sub_1012BD78C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_101A321B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - v5;
  v7 = sub_1005B981C(&qword_101A321B8);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  if (*(v1 + 80) == 1)
  {
    swift_unknownObjectWeakLoadStrong();
    sub_1012BDDC4(*(v1 + 48), v22);
    sub_1012C5D34(v22, v23);
    v24 = 0;
    sub_1012C5BDC();
    sub_1012C5C30();
    _ConditionalContent<>.init(storage:)();
    sub_10000BE14(v25, v9, &qword_101A321F8);
    swift_storeEnumTagMultiPayload();
    sub_1005B981C(&qword_101A321F8);
    sub_1012C5B50();
    sub_1012C5C84();
    _ConditionalContent<>.init(storage:)();
    sub_10000CAAC(v25, &qword_101A321F8);
    return sub_1012C5D6C(v22);
  }

  v21[4] = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25[0] >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();

    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v11)
    {
LABEL_5:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v23[0] = v25[0];
      sub_1012C58E0(v1, v25);
      v12 = swift_allocObject();
      sub_1012C58A8(v25, v12 + 16);
      v21[3] = a1;
      v21[2] = sub_1005B981C(&unk_101A00BF8);
      v21[1] = type metadata accessor for UUID();
      sub_1005B981C(&qword_101A321C0);
      sub_10001A2F8(&qword_101A321C8, &unk_101A00BF8);
      sub_1012C773C(&qword_101A321D0, &qword_101A321C0, &unk_1014DAD50, sub_1012C5A48);
      sub_1012BB228(&qword_101A321F0, type metadata accessor for CRLCollaborationParticipant);
      ForEach<>.init(_:content:)();
      (*(v4 + 16))(v9, v6, v3);
      swift_storeEnumTagMultiPayload();
      sub_1005B981C(&qword_101A321F8);
      sub_1012C5B50();
      sub_1012C5C84();
      _ConditionalContent<>.init(storage:)();
      return (*(v4 + 8))(v6, v3);
    }
  }

  v14 = [objc_opt_self() mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v23[0] = v18;
  v23[1] = v20;
  v24 = 1;
  sub_1012C5BDC();
  sub_1012C5C30();
  _ConditionalContent<>.init(storage:)();
  sub_10000BE14(v25, v9, &qword_101A321F8);
  swift_storeEnumTagMultiPayload();
  sub_1005B981C(&qword_101A321F8);
  sub_1012C5B50();
  sub_1012C5C84();
  _ConditionalContent<>.init(storage:)();
  return sub_10000CAAC(v25, &qword_101A321F8);
}

void sub_1012BDDC4(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[1] = a1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  a2[2] = v8;
  a2[3] = v10;
  v11 = [v3 mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  a2[4] = v15;
  a2[5] = v17;
}

uint64_t sub_1012BDF5C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v35 = sub_1005B981C(&qword_101A321E0);
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v29 - v6;
  v8 = *a1;
  v9 = *a2;
  v10 = *(*a2 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  v11 = *(a2 + 32);
  swift_unknownObjectWeakLoadStrong();
  v34 = *(a2 + 48);
  v12 = *(a2 + 72);
  v40 = *(a2 + 56);
  v41 = v12;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  v16 = v8;
  sub_1005B981C(&qword_101A0A910);
  State.projectedValue.getter();
  v33 = v37;
  v31 = v39;
  v32 = v38;
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = type metadata accessor for CRLCollaborationParticipantRowView(0);
  *&v7[*(v18 + 52)] = v17;
  sub_1005B981C(&unk_101A286B0);
  swift_storeEnumTagMultiPayload();
  *&v7[*(v18 + 56)] = swift_getKeyPath();
  sub_1005B981C(&qword_101A31108);
  swift_storeEnumTagMultiPayload();
  *v7 = v14;
  type metadata accessor for CRLCollaborationParticipant(0);
  sub_1012BB228(&qword_101A32188, type metadata accessor for CRLCollaborationParticipant);
  *(v7 + 1) = ObservedObject.init(wrappedValue:)();
  *(v7 + 2) = v19;
  *(v7 + 3) = ObservedObject.init(wrappedValue:)();
  *(v7 + 4) = v20;
  type metadata accessor for CRLFollowCoordinator();
  sub_1012BB228(&qword_101A32220, type metadata accessor for CRLFollowCoordinator);
  *(v7 + 5) = ObservedObject.init(wrappedValue:)();
  *(v7 + 6) = v21;
  *(v7 + 8) = v34;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  LOBYTE(v40) = 0;
  State.init(wrappedValue:)();

  v22 = *(&v37 + 1);
  v7[72] = v37;
  *(v7 + 10) = v22;
  *(v7 + 88) = v33;
  v23 = v31;
  *(v7 + 13) = v32;
  *(v7 + 14) = v23;
  v24 = v29;
  *(v7 + 15) = KeyPath;
  v7[128] = 0;
  *(v7 + 17) = v24;
  v7[144] = 0;
  v26 = v35;
  v25 = v36;
  v27 = &v7[*(v35 + 36)];
  *v27 = xmmword_1014B9200;
  *(v27 + 1) = xmmword_1014DA9B0;
  v27[32] = 0;
  sub_10003DFF8(v7, v25, &qword_101A321E0);
  return (*(v5 + 56))(v25, 0, 1, v26);
}

uint64_t sub_1012BE2F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_101A32228);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - v5;
  v7 = sub_1005B981C(&qword_101A32230);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  if (*(v1 + 64) == 1)
  {
    swift_unknownObjectWeakLoadStrong();
    sub_1012BDDC4(*(v1 + 32), v22);
    sub_1012C5D34(v22, v23);
    v24 = 0;
    sub_1012C5BDC();
    sub_1012C5C30();
    _ConditionalContent<>.init(storage:)();
    sub_10000BE14(v25, v9, &qword_101A321F8);
    swift_storeEnumTagMultiPayload();
    sub_1005B981C(&qword_101A321F8);
    sub_1012C5B50();
    sub_1012C5EB0();
    _ConditionalContent<>.init(storage:)();
    sub_10000CAAC(v25, &qword_101A321F8);
    return sub_1012C5D6C(v22);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25[0] >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();

    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v11)
    {
LABEL_5:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v23[0] = v25[0];
      v21[1] = swift_getKeyPath();
      sub_1012C5798(v1, v25);
      v12 = swift_allocObject();
      sub_1012C5760(v25, v12 + 16);
      sub_1005B981C(&unk_101A00BF8);
      sub_1005B981C(&qword_101A32238);
      v21[2] = a1;
      sub_10001A2F8(&qword_101A321C8, &unk_101A00BF8);
      sub_1012C5DA4();
      ForEach<>.init(_:id:content:)();
      (*(v4 + 16))(v9, v6, v3);
      swift_storeEnumTagMultiPayload();
      sub_1005B981C(&qword_101A321F8);
      sub_1012C5B50();
      sub_1012C5EB0();
      _ConditionalContent<>.init(storage:)();
      return (*(v4 + 8))(v6, v3);
    }
  }

  v14 = [objc_opt_self() mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v23[0] = v18;
  v23[1] = v20;
  v24 = 1;
  sub_1012C5BDC();
  sub_1012C5C30();
  _ConditionalContent<>.init(storage:)();
  sub_10000BE14(v25, v9, &qword_101A321F8);
  swift_storeEnumTagMultiPayload();
  sub_1005B981C(&qword_101A321F8);
  sub_1012C5B50();
  sub_1012C5EB0();
  _ConditionalContent<>.init(storage:)();
  return sub_10000CAAC(v25, &qword_101A321F8);
}

double sub_1012BE8BC@<D0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  swift_unknownObjectWeakLoadStrong();
  v7 = *(a2 + 32);
  v8 = v6;
  v9 = v5;
  sub_1005B981C(&qword_101A0A910);
  State.projectedValue.getter();
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  *a3 = v8;
  type metadata accessor for CRLCollaborationParticipant(0);
  sub_1012BB228(&qword_101A32188, type metadata accessor for CRLCollaborationParticipant);
  *(a3 + 8) = ObservedObject.init(wrappedValue:)();
  *(a3 + 16) = v12;
  *(a3 + 32) = v7;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(a3 + 40) = 0x4020000000000000;
  State.init(wrappedValue:)();
  *(a3 + 48) = v14;
  *(a3 + 56) = *(&v14 + 1);
  *(a3 + 64) = v14;
  *(a3 + 80) = v15;
  *(a3 + 88) = v16;
  *(a3 + 96) = KeyPath;
  *(a3 + 104) = 0;
  *(a3 + 112) = v11;
  *(a3 + 120) = 0;
  result = 0.0;
  *(a3 + 128) = xmmword_1014B9200;
  *(a3 + 144) = xmmword_1014DA9B0;
  *(a3 + 160) = 0;
  return result;
}

uint64_t sub_1012BEA64@<X0>(uint64_t a1@<X8>)
{
  sub_100017CD8();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.footnote.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10007441C(v2, v4, v6 & 1);

  LOBYTE(v2) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21;
  *(a1 + 72) = 0;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v22;
  *(a1 + 96) = result;
  *(a1 + 104) = 10;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_1012BEBCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v3 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for AttributedString();
  v32 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributeContainer();
  v28 = *(v14 - 8);
  v29 = v14;
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  v30 = v1;

  AttributeContainer.init()();
  v20 = v32;
  AttributedString.init(_:attributes:)();
  AttributedString.init(stringLiteral:)();
  v26 = sub_1012BB228(&qword_101A324D0, &type metadata accessor for AttributedString);
  v31 = a1;
  AttributedString.append<A>(_:)();
  v32 = v20[1];
  (v32)(v13, v11);
  AttributeContainer.init()();
  URL.init(string:)();
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  result = (*(v22 + 48))(v7, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v22 + 32))(v10, v7, v21);
    (*(v22 + 56))(v10, 0, 1, v21);
    sub_10000BE14(v10, v27, &unk_1019F33C0);
    sub_1012C6F00();
    AttributeContainer.subscript.setter();
    sub_10000CAAC(v10, &unk_1019F33C0);
    v33 = static Color.accentColor.getter();
    sub_1012C6F54();
    AttributeContainer.subscript.setter();
    v24 = v29;
    v25 = v28;
    (*(v28 + 16))(v19, v16, v29);

    AttributedString.init(_:attributes:)();
    AttributedString.append<A>(_:)();
    (v32)(v13, v11);
    return (*(v25 + 8))(v16, v24);
  }

  return result;
}

uint64_t sub_1012BF028@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v2 = type metadata accessor for AccessibilityActionKind();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString();
  __chkstk_darwin(v5 - 8);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A32470);
  __chkstk_darwin(v8);
  v10 = v33 - v9;
  sub_1012BEBCC(v7);
  v11 = Text.init(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  sub_1012C5D34(v1, v36);
  v19 = swift_allocObject();
  sub_1012C6BBC(v36, v19 + 16);
  v20 = &v10[*(sub_1005B981C(&qword_101A32478) + 36)];
  sub_1005B981C(&qword_101A32480);
  OpenURLAction.init(handler:)();
  *v20 = KeyPath;
  *v10 = v11;
  *(v10 + 1) = v13;
  v10[16] = v15 & 1;
  *(v10 + 3) = v17;
  v21 = swift_getKeyPath();
  v22 = &v10[*(sub_1005B981C(&qword_101A32488) + 36)];
  *v22 = v21;
  v22[8] = 0;
  v23 = static Font.footnote.getter();
  v24 = swift_getKeyPath();
  v25 = &v10[*(sub_1005B981C(&qword_101A32490) + 36)];
  *v25 = v24;
  v25[1] = v23;
  LOBYTE(v23) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v26 = &v10[*(v8 + 36)];
  *v26 = v23;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  static AccessibilityActionKind.default.getter();
  sub_1012C5D34(v33[0], v36);
  v31 = swift_allocObject();
  sub_1012C6BBC(v36, v31 + 16);
  sub_1012C6C4C();
  View.accessibilityAction(_:_:)();

  (*(v34 + 8))(v4, v35);
  return sub_10000CAAC(v10, &qword_101A32470);
}

uint64_t sub_1012BF37C(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.openURL.setter();
}

uint64_t sub_1012BF444()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController);
    if (v2)
    {
      v3 = qword_1019F22C8;
      v4 = v2;
      if (v3 != -1)
      {
        swift_once();
      }

      v5 = static OS_os_log.shareState;
      v6 = static os_log_type_t.default.getter();
      sub_100005404(v5, &_mh_execute_header, v6, "Dismissing Gelato Interstitial popover", 38, 2, _swiftEmptyArrayStorage);
      v7 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
      swift_beginAccess();
      v8 = *&v4[v7];
      if (v8)
      {
        v9 = v8;
        [v9 dismissPopoverAnimated:1 completion:0];
      }
    }

    sub_100804264(v1, sub_1005E961C, 0);
    swift_unknownObjectRelease();
  }

  return static OpenURLAction.Result.handled.getter();
}

uint64_t sub_1012BF588()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController);
    if (v2)
    {
      v3 = qword_1019F22C8;
      v4 = v2;
      if (v3 != -1)
      {
        swift_once();
      }

      v5 = static OS_os_log.shareState;
      v6 = static os_log_type_t.default.getter();
      sub_100005404(v5, &_mh_execute_header, v6, "Dismissing Gelato Interstitial popover", 38, 2, _swiftEmptyArrayStorage);
      v7 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
      swift_beginAccess();
      v8 = *&v4[v7];
      if (v8)
      {
        v9 = v8;
        [v9 dismissPopoverAnimated:1 completion:0];
      }
    }

    sub_100804264(v1, sub_1005E961C, 0);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1012BF6C0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A286B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CRLCollaborationParticipantRowView(0);
  sub_10000BE14(v1 + *(v10 + 52), v9, &unk_101A286B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorSchemeContrast();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1012BF8C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A31108);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CRLCollaborationParticipantRowView(0);
  sub_10000BE14(v1 + *(v10 + 56), v9, &qword_101A31108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1012BFAD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v69 = type metadata accessor for AccessibilityTraits();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v4 - 8);
  v73 = &v63 - v5;
  v72 = type metadata accessor for PersonNameComponents();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v63 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v70 - 8);
  __chkstk_darwin(v70);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_101A32348);
  __chkstk_darwin(v10 - 8);
  v12 = &v63 - v11;
  v13 = sub_1005B981C(&qword_101A32350);
  __chkstk_darwin(v13);
  v15 = &v63 - v14;
  v16 = sub_1005B981C(&qword_101A32358);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v63 - v18;
  v65 = sub_1005B981C(&qword_101A32360);
  __chkstk_darwin(v65);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v64 = &v63 - v23;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v24 = sub_1005B981C(&qword_101A32368);
  sub_1012C0378(v2, &v12[*(v24 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003DFF8(v12, v15, &qword_101A32348);
  v25 = &v15[*(v13 + 36)];
  v26 = v90;
  *(v25 + 4) = v89;
  *(v25 + 5) = v26;
  *(v25 + 6) = v91;
  v27 = v86;
  *v25 = v85;
  *(v25 + 1) = v27;
  v28 = v88;
  *(v25 + 2) = v87;
  *(v25 + 3) = v28;
  static AccessibilityChildBehavior.combine.getter();
  v29 = sub_1012C6558();
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v9, v70);
  sub_10000CAAC(v15, &qword_101A32350);
  v83 = sub_1012C0D30();
  v84 = v30;
  v81 = v13;
  v82 = v29;
  v31 = v71;
  swift_getOpaqueTypeConformance2();
  v32 = sub_100017CD8();
  v70 = v21;
  v33 = v72;
  View.accessibilityLabel<A>(_:)();

  (*(v17 + 8))(v19, v16);
  v34 = v73;
  sub_1007D6EB8(v73);
  if ((*(v31 + 48))(v34, 1, v33) == 1)
  {
    sub_10000CAAC(v34, &qword_101A0DE80);
LABEL_8:
    v44 = sub_1007D7988();
    goto LABEL_9;
  }

  v35 = v63;
  (*(v31 + 32))(v63, v34, v33);
  v36 = objc_opt_self();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v38 = [v36 localizedStringFromPersonNameComponents:isa style:1 options:0];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  (*(v31 + 8))(v35, v33);
  v42 = v41;
  v43 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v43 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {

    goto LABEL_8;
  }

  v44 = v39;
LABEL_9:
  v75 = v44;
  v76 = v42;
  v77 = sub_1007D7988();
  v78 = v45;
  result = sub_1012C24B4();
  v47 = 0;
  v79 = result;
  v80 = v48;
  v49 = _swiftEmptyArrayStorage;
LABEL_10:
  if (v47 <= 3)
  {
    v50 = 3;
  }

  else
  {
    v50 = v47;
  }

  v51 = v50 + 1;
  v52 = 16 * v47 + 40;
  while (1)
  {
    if (v47 == 3)
    {
      sub_1005B981C(&unk_1019F6C70);
      swift_arrayDestroy();
      v60 = v64;
      v61 = v70;
      ModifiedContent<>.accessibilityInputLabels<A>(_:)();

      sub_10000CAAC(v61, &qword_101A32360);
      v62 = v66;
      static AccessibilityTraits.isButton.getter();
      ModifiedContent<>.accessibilityRemoveTraits(_:)();
      (*(v67 + 8))(v62, v69);
      return sub_10000CAAC(v60, &qword_101A32360);
    }

    if (v51 == ++v47)
    {
      break;
    }

    v53 = v52 + 16;
    v54 = *&v74[v52];
    v52 += 16;
    if (v54)
    {
      v55 = v32;
      v56 = *(&v71 + v53);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100024CBC(0, *(v49 + 2) + 1, 1, v49);
        v49 = result;
      }

      v58 = *(v49 + 2);
      v57 = *(v49 + 3);
      if (v58 >= v57 >> 1)
      {
        result = sub_100024CBC((v57 > 1), v58 + 1, 1, v49);
        v49 = result;
      }

      *(v49 + 2) = v58 + 1;
      v59 = &v49[16 * v58];
      *(v59 + 4) = v56;
      *(v59 + 5) = v54;
      v32 = v55;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1012C0378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_1005B981C(&qword_101A32380);
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v57 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = v49 - v6;
  v7 = type metadata accessor for CRLCollaborationParticipantRowView(0);
  v55 = *(v7 - 8);
  v54 = *(v55 + 64);
  __chkstk_darwin(v7 - 8);
  v50 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BorderlessButtonStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_101A32388);
  __chkstk_darwin(v13);
  v15 = v49 - v14;
  v16 = sub_1005B981C(&qword_101A32390);
  v17 = *(v16 - 8);
  v51 = v16;
  v52 = v17;
  __chkstk_darwin(v16);
  v19 = v49 - v18;
  v20 = sub_1005B981C(&qword_101A32398);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v53 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v61 = v49 - v24;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v25 = &v15[*(sub_1005B981C(&qword_101A323A0) + 44)];
  v49[1] = a1;
  sub_1012C0E30(a1, v25);
  BorderlessButtonStyle.init()();
  v26 = sub_10001A2F8(&qword_101A323A8, &qword_101A32388);
  v27 = sub_1012BB228(&qword_101A08A88, &type metadata accessor for BorderlessButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v10 + 8))(v12, v9);
  sub_10000CAAC(v15, &qword_101A32388);
  v28 = a1;
  v29 = v50;
  sub_1012C6610(v28, v50, type metadata accessor for CRLCollaborationParticipantRowView);
  v30 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v31 = swift_allocObject();
  sub_1012C6678(v29, v31 + v30, type metadata accessor for CRLCollaborationParticipantRowView);
  v62 = v13;
  v63 = v9;
  v64 = v26;
  v65 = v27;
  swift_getOpaqueTypeConformance2();
  v32 = v61;
  v33 = v51;
  View.onTapGesture(count:perform:)();

  (*(v52 + 8))(v19, v33);
  LOBYTE(v33) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v34 = v32 + *(v21 + 44);
  *v34 = v33;
  *(v34 + 8) = v35;
  *(v34 + 16) = v36;
  *(v34 + 24) = v37;
  *(v34 + 32) = v38;
  *(v34 + 40) = 0;
  v39 = v56;
  sub_1012C09A0();
  v40 = v53;
  sub_10000BE14(v32, v53, &qword_101A32398);
  v42 = v57;
  v41 = v58;
  v43 = *(v58 + 16);
  v44 = v59;
  v43(v57, v39, v59);
  v45 = v60;
  sub_10000BE14(v40, v60, &qword_101A32398);
  v46 = sub_1005B981C(&qword_101A323B0);
  v43((v45 + *(v46 + 48)), v42, v44);
  v47 = *(v41 + 8);
  v47(v39, v44);
  sub_10000CAAC(v61, &qword_101A32398);
  v47(v42, v44);
  return sub_10000CAAC(v40, &qword_101A32398);
}

uint64_t sub_1012C09A0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = [v0 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = [v0 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = [v0 mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_101A323B8);
  sub_10001A2F8(&qword_101A323C0, &qword_101A323B8);
  Menu.init(content:label:)();
}

uint64_t sub_1012C0D30()
{
  sub_1005B981C(&qword_101A1AAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v2 = *(v0 + 32);
  *(inited + 32) = sub_1007D7988();
  *(inited + 40) = v3;
  *(inited + 48) = sub_1012C24B4();
  *(inited + 56) = v4;
  v5 = [v2 collaboratorColorName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = sub_100B2D7F0(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F6C70);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_1012C0E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v76 = a2;
  v3 = sub_1005B981C(&qword_101A323F0);
  __chkstk_darwin(v3 - 8);
  v70 = &v58 - v4;
  v73 = sub_1005B981C(&qword_101A323F8) - 8;
  __chkstk_darwin(v73);
  v72 = &v58 - v5;
  v74 = sub_1005B981C(&qword_101A32400) - 8;
  __chkstk_darwin(v74);
  v75 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v71 = &v58 - v8;
  __chkstk_darwin(v9);
  v78 = &v58 - v10;
  v66 = type metadata accessor for AccessibilityChildBehavior();
  v11 = *(v66 - 8);
  __chkstk_darwin(v66);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1005B981C(&qword_101A32408);
  v14 = *(v67 - 8);
  __chkstk_darwin(v67);
  v16 = &v58 - v15;
  v17 = sub_1005B981C(&qword_101A32410);
  __chkstk_darwin(v17 - 8);
  v69 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = __chkstk_darwin(v19).n128_u64[0];
  v77 = &v58 - v21;
  v63 = *(a1 + 32);
  v22 = v63;
  v23 = [v63 collaboratorColorForType:{2, v20}];
  v24 = [v23 CGColor];

  *&v91 = Color.init(cgColor:)();
  static AccessibilityChildBehavior.ignore.getter();
  v25 = sub_1012C6AB0();
  View.accessibilityElement(children:)();
  (*(v11 + 8))(v13, v66);

  v26 = [v22 collaboratorColorName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *&v91 = v27;
  *(&v91 + 1) = v29;
  v85 = &type metadata for CRLUserColorBar;
  v86 = v25;
  swift_getOpaqueTypeConformance2();
  sub_100017CD8();
  v30 = v77;
  v31 = v67;
  View.accessibilityLabel<A>(_:)();

  (*(v14 + 8))(v16, v31);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v66 = v81;
  v67 = v79;
  v64 = v84;
  v65 = v83;
  v100 = 1;
  v99 = v80;
  v98 = v82;
  type metadata accessor for CRLCollaborationParticipant(0);
  sub_1012BB228(&qword_101A32188, type metadata accessor for CRLCollaborationParticipant);
  v32 = v63;
  v33 = ObservedObject.init(wrappedValue:)();
  v62 = v34;
  v63 = v33;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v60 = v87;
  v61 = v85;
  v58 = v90;
  v59 = v89;
  v103 = 1;
  v102 = v86;
  v101 = v88;
  v35 = v70;
  sub_1012C15F4(v70);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v36 = v72;
  sub_10003DFF8(v35, v72, &qword_101A323F0);
  v37 = (v36 + *(v73 + 44));
  v38 = v96;
  v37[4] = v95;
  v37[5] = v38;
  v37[6] = v97;
  v39 = v92;
  *v37 = v91;
  v37[1] = v39;
  v40 = v94;
  v37[2] = v93;
  v37[3] = v40;
  v41 = v36;
  v42 = v71;
  sub_10003DFF8(v41, v71, &qword_101A323F8);
  *(v42 + *(v74 + 44)) = 0;
  v43 = v78;
  sub_10003DFF8(v42, v78, &qword_101A32400);
  v44 = v69;
  sub_10000BE14(v30, v69, &qword_101A32410);
  LOBYTE(v42) = v100;
  v45 = v99;
  LODWORD(v71) = v98;
  LODWORD(v72) = v103;
  LODWORD(v73) = v102;
  LODWORD(v74) = v101;
  v46 = v75;
  sub_10000BE14(v43, v75, &qword_101A32400);
  v47 = v76;
  sub_10000BE14(v44, v76, &qword_101A32410);
  v48 = sub_1005B981C(&qword_101A32420);
  v49 = v47 + v48[12];
  *v49 = 0;
  *(v49 + 8) = v42;
  v50 = v66;
  *(v49 + 16) = v67;
  *(v49 + 24) = v45;
  *(v49 + 32) = v50;
  *(v49 + 40) = v71;
  v51 = v64;
  *(v49 + 48) = v65;
  *(v49 + 56) = v51;
  v52 = (v47 + v48[16]);
  v53 = v62;
  *v52 = v63;
  v52[1] = v53;
  v54 = v47 + v48[20];
  *v54 = 0;
  *(v54 + 8) = v72;
  *(v54 + 16) = v61;
  *(v54 + 24) = v73;
  *(v54 + 32) = v60;
  *(v54 + 40) = v74;
  v55 = v58;
  *(v54 + 48) = v59;
  *(v54 + 56) = v55;
  sub_10000BE14(v46, v47 + v48[24], &qword_101A32400);
  v56 = v53;
  sub_10000CAAC(v78, &qword_101A32400);
  sub_10000CAAC(v77, &qword_101A32410);
  sub_10000CAAC(v46, &qword_101A32400);

  return sub_10000CAAC(v44, &qword_101A32410);
}

uint64_t sub_1012C15F4@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v45 = sub_1005B981C(&qword_101A32428);
  __chkstk_darwin(v45);
  v3 = &v41 - v2;
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1005B981C(&qword_101A32430);
  __chkstk_darwin(v44);
  v9 = &v41 - v8;
  v46 = sub_1005B981C(&qword_101A32438);
  v10 = *(v46 - 8);
  __chkstk_darwin(v46);
  v12 = &v41 - v11;
  v13 = sub_1012C24B4();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v42 = v5;
    v43 = v4;
    v17 = sub_1012C24B4();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      *v9 = static HorizontalAlignment.leading.getter();
      *(v9 + 1) = 0;
      v9[16] = 1;
      v21 = sub_1005B981C(&qword_101A32448);
      sub_1012C1F54(v1, v15, v16, v19, v20, &v9[*(v21 + 44)]);

      static AccessibilityChildBehavior.combine.getter();
      v22 = sub_10001A2F8(&qword_101A32440, &qword_101A32430);
      v23 = v44;
      View.accessibilityElement(children:)();
      (*(v42 + 8))(v7, v43);
      sub_10000CAAC(v9, &qword_101A32430);
      v24 = v46;
      (*(v10 + 16))(v3, v12, v46);
      swift_storeEnumTagMultiPayload();
      sub_1005B981C(&qword_101A314F0);
      v48 = v23;
      v49 = v22;
      swift_getOpaqueTypeConformance2();
      sub_1012A589C();
      _ConditionalContent<>.init(storage:)();
      return (*(v10 + 8))(v12, v24);
    }
  }

  v48 = sub_1007D7988();
  v49 = v26;
  sub_100017CD8();
  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;
  static Color.primary.getter();
  v32 = Text.foregroundColor(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_10007441C(v27, v29, v31 & 1);

  KeyPath = swift_getKeyPath();
  *v3 = v32;
  *(v3 + 1) = v34;
  v3[16] = v36 & 1;
  *(v3 + 3) = v38;
  *(v3 + 4) = KeyPath;
  *(v3 + 5) = 1;
  v3[48] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1005B981C(&qword_101A314F0);
  v40 = sub_10001A2F8(&qword_101A32440, &qword_101A32430);
  v48 = v44;
  v49 = v40;
  swift_getOpaqueTypeConformance2();
  sub_1012A589C();
  return _ConditionalContent<>.init(storage:)();
}

void sub_1012C1AE4()
{
  v38 = type metadata accessor for Date();
  v1 = *(v38 - 8);
  __chkstk_darwin(v38);
  v40 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v39 = &v32 - v4;
  if (qword_1019F2098 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v5 = static OS_os_log.crlDefault;
    v6 = static os_log_type_t.default.getter();
    sub_100005404(v5, &_mh_execute_header, v6, "Navigating to collaborator cursor for user.", 43, 2, _swiftEmptyArrayStorage);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v7 = v42;
    if (v42 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v8 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_32;
      }
    }

    v37 = v7 & 0xC000000000000001;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v9 = *(v7 + 32);
    }

    v10 = v9;
    v32 = v0;
    if (v8 == 1)
    {
      break;
    }

    v33 = v7 & 0xFFFFFFFFFFFFFF8;
    v34 = v7;
    v35 = (v1 + 8);
    v36 = (v1 + 16);
    v1 = 1;
    v41 = v9;
    while (1)
    {
      if (v37)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        if (v1 >= *(v33 + 16))
        {
          goto LABEL_29;
        }

        v11 = *(v7 + 8 * v1 + 32);
      }

      v12 = v11;
      v13 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v14 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
      v15 = v41;
      swift_beginAccess();
      v16 = *v36;
      v17 = &v15[v14];
      v19 = v38;
      v18 = v39;
      (*v36)(v39, v17, v38);
      v20 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
      swift_beginAccess();
      v21 = v12 + v20;
      v0 = v12;
      v22 = v40;
      v16(v40, v21, v19);
      LOBYTE(v20) = static Date.< infix(_:_:)();
      v23 = *v35;
      (*v35)(v22, v19);
      v23(v18, v19);
      if (v20)
      {

        ++v1;
        v7 = v34;
        v10 = v0;
        if (v13 == v8)
        {
          goto LABEL_20;
        }

        v41 = v0;
      }

      else
      {

        ++v1;
        v7 = v34;
        if (v13 == v8)
        {
          v10 = v41;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_20:

  v24 = *(*v32 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_collaboratorCursorCoordinator);
  v25 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
  swift_beginAccess();
  v26 = *&v24[v25];
  if (!*(v26 + 16))
  {
LABEL_26:

    return;
  }

  v27 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;
  v28 = v24;

  v29 = sub_10003E994(&v10[v27]);
  if (v30)
  {
    v31 = v10;
    v10 = *(*(v26 + 56) + 32 * v29 + 16);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1005E9500(v31, v10);

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_26;
  }

LABEL_32:
}

uint64_t sub_1012C1F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a5;
  v58 = a4;
  *(&v50 + 1) = a3;
  *&v50 = a2;
  v8 = sub_1005B981C(&qword_101A32450);
  __chkstk_darwin(v8 - 8);
  v60 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = v47 - v11;
  v48 = type metadata accessor for DynamicTypeSize();
  v12 = *(v48 - 8);
  __chkstk_darwin(v48);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[2] = a1;
  *&v68[0] = sub_1007D7988();
  *(&v68[0] + 1) = v15;
  v49 = sub_100017CD8();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Color.primary.getter();
  v54 = Text.foregroundColor(_:)();
  v53 = v21;
  v55 = v22;
  v56 = v23;

  sub_10007441C(v16, v18, v20 & 1);

  sub_1012BF8C8(v14);
  LOBYTE(v16) = DynamicTypeSize.isAccessibilitySize.getter();
  v24 = *(v12 + 8);
  v47[1] = v12 + 8;
  v25 = v48;
  v24(v14, v48);
  v26 = 1;
  if (v16)
  {
    v26 = 2;
  }

  v52 = v26;
  KeyPath = swift_getKeyPath();
  v68[0] = v50;

  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;
  static Color.secondary.getter();
  *(&v50 + 1) = Text.foregroundColor(_:)();
  *&v50 = v32;
  v34 = v33;
  v47[0] = v35;

  sub_10007441C(v27, v29, v31 & 1);

  sub_1012BF8C8(v14);
  LOBYTE(v27) = DynamicTypeSize.isAccessibilitySize.getter();
  v24(v14, v25);
  v36 = swift_getKeyPath();
  v37 = static Font.caption.getter();
  v38 = swift_getKeyPath();
  v71 = v34 & 1;
  v70 = v27 & 1;
  *&v63 = *(&v50 + 1);
  *(&v63 + 1) = v50;
  LOBYTE(v64) = v34 & 1;
  *(&v64 + 1) = v47[0];
  *&v65 = v36;
  *(&v65 + 1) = (v27 & 1) == 0;
  LOBYTE(v66) = v27 & 1;
  *(&v66 + 1) = v38;
  v67 = v37;
  v61 = v58;
  v62 = v59;
  sub_1005B981C(&qword_101A32458);
  sub_1012C6B04();
  v39 = v57;
  View.accessibilityLabel<A>(_:)();
  v68[2] = v65;
  v68[3] = v66;
  v69 = v67;
  v68[0] = v63;
  v68[1] = v64;
  sub_10000CAAC(v68, &qword_101A32458);
  v40 = v60;
  sub_10000BE14(v39, v60, &qword_101A32450);
  v41 = v54;
  v42 = v53;
  *a6 = v54;
  *(a6 + 8) = v42;
  v43 = v55 & 1;
  *(a6 + 16) = v55 & 1;
  v44 = KeyPath;
  *(a6 + 24) = v56;
  *(a6 + 32) = v44;
  *(a6 + 40) = v52;
  *(a6 + 48) = 0;
  v45 = sub_1005B981C(&qword_101A32468);
  sub_10000BE14(v40, a6 + *(v45 + 48), &qword_101A32450);
  sub_10081EF10(v41, v42, v43);

  sub_10000CAAC(v39, &qword_101A32450);
  sub_10000CAAC(v40, &qword_101A32450);
  sub_10007441C(v41, v42, v43);
}

void *sub_1012C24B4()
{
  v2 = &selRef_longLongValue;
  v3 = [objc_opt_self() mainBundle];
  v4 = &selRef_isEnumeratingForUserSearch;
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v3 localizedStringForKey:v5 value:v6 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = *(v0 + 32);
  LOBYTE(v7) = sub_10079DC7C(v8, v46);

  if ((v7 & 1) == 0)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = &selRef_isEnumeratingForUserSearch;
  v13 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  v1 = (v19 + 1);
  if (v19 >= v18 >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    *(v17 + 2) = v1;
    v20 = &v17[16 * v19];
    *(v20 + 4) = v14;
    *(v20 + 5) = v16;
    v4 = v12;
LABEL_5:
    if (*(v8 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isDocumentOwner) == 1)
    {
      v21 = [objc_opt_self() v2[17]];
      v22 = String._bridgeToObjectiveC()();
      v23 = String._bridgeToObjectiveC()();
      v24 = v4;
      v25 = [v21 v4[489]];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_100024CBC(0, *(v17 + 2) + 1, 1, v17);
      }

      v30 = *(v17 + 2);
      v29 = *(v17 + 3);
      v1 = (v30 + 1);
      v4 = v24;
      if (v30 >= v29 >> 1)
      {
        v17 = sub_100024CBC((v29 > 1), v30 + 1, 1, v17);
      }

      *(v17 + 2) = v1;
      v31 = &v17[16 * v30];
      *(v31 + 4) = v26;
      *(v31 + 5) = v28;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v46 != 1)
    {
      break;
    }

    v32 = [objc_opt_self() v2[17]];
    v33 = String._bridgeToObjectiveC()();
    v34 = String._bridgeToObjectiveC()();
    v1 = [v32 v4[489]];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_100024CBC(0, *(v17 + 2) + 1, 1, v17);
    }

    v39 = *(v17 + 2);
    v38 = *(v17 + 3);
    v14 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v17 = sub_100024CBC((v38 > 1), v39 + 1, 1, v17);
    }

    *(v17 + 2) = v14;
    v40 = &v17[16 * v39];
    *(v40 + 4) = v35;
    *(v40 + 5) = v37;
LABEL_18:
    v8 = *(v17 + 4);
    v2 = *(v17 + 5);

    if (v14 == 1)
    {
      goto LABEL_26;
    }

    v12 = (v17 + 56);
    v19 = 1;
    v16 = &type metadata for String;
    while (1)
    {
      v18 = *(v17 + 2);
      if (v19 >= v18)
      {
        break;
      }

      if (v2)
      {
        v1 = v17;
        v41 = *(v12 - 1);

        String.init<A>(_:)();
        String.append<A>(contentsOf:)();
        LOBYTE(v46) = v41;
        v17 = v1;
        v44 = String.init<A>(_:)();
        v45 = v42;
        String.append<A>(contentsOf:)();

        v8 = v44;
        v2 = v45;
      }

      else
      {
        v8 = 0;
      }

      ++v19;
      v12 += 2;
      if (v14 == v19)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    v17 = sub_100024CBC((v18 > 1), v1, 1, v17);
  }

  v14 = *(v17 + 2);
  if (v14)
  {
    goto LABEL_18;
  }

  v8 = 0;
LABEL_26:

  return v8;
}

uint64_t sub_1012C2AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v90 = a8;
  v80 = a7;
  v79 = a6;
  v78 = a5;
  v77 = a4;
  v92 = a9;
  v93 = a3;
  v81 = sub_1005B981C(&qword_101A323C8);
  __chkstk_darwin(v81);
  v82 = &v76 - v12;
  v13 = sub_1005B981C(&qword_101A323D0);
  __chkstk_darwin(v13 - 8);
  v91 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v98 = &v76 - v16;
  v17 = type metadata accessor for CRLCollaborationParticipantRowView(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1005B981C(&qword_101A038D0);
  v22 = *(v21 - 8);
  v96 = v21;
  v97 = v22;
  __chkstk_darwin(v21);
  v89 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v88 = &v76 - v25;
  __chkstk_darwin(v26);
  v28 = &v76 - v27;
  v29 = sub_1005B981C(&qword_101A323D8);
  __chkstk_darwin(v29);
  v87 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v76 - v32;
  __chkstk_darwin(v34);
  v99 = &v76 - v35;
  sub_1012C6610(a1, v20, type metadata accessor for CRLCollaborationParticipantRowView);
  v36 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v94 = *(v18 + 80);
  v95 = v19;
  v37 = swift_allocObject();
  v85 = v36;
  sub_1012C6678(v20, v37 + v36, type metadata accessor for CRLCollaborationParticipantRowView);
  v100 = a2;
  v101 = v93;
  v38 = sub_1005B981C(&qword_101A03878);
  v39 = sub_10001A2F8(&qword_101A03870, &qword_101A03878);
  v86 = v38;
  v93 = v39;
  Button.init(action:label:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v40 = v102;
  v41 = *(a1 + 32);
  if (v102 && (type metadata accessor for CRLCollaborationParticipant(0), v42 = a1, v43 = v41, v44 = static NSObject.== infix(_:_:)(), v43, a1 = v42, v40, (v44 & 1) != 0))
  {
    v45 = 1;
  }

  else
  {
    v42 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v45 = sub_10079DC7C(v41, v102);
  }

  v84 = a10;
  KeyPath = swift_getKeyPath();
  v47 = swift_allocObject();
  *(v47 + 16) = v45 & 1;
  (*(v97 + 32))(v33, v28, v96);
  v48 = &v33[*(v29 + 36)];
  *v48 = KeyPath;
  v48[1] = sub_1009207D0;
  v48[2] = v47;
  sub_10003DFF8(v33, v99, &qword_101A323D8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v49 = v102;
  v50 = v88;
  v51 = v85;
  v83 = v42;
  if (v102)
  {
    sub_100006370(0, &qword_1019F54D0);
    if (static NSObject.== infix(_:_:)())
    {
      sub_1012C6610(v42, v20, type metadata accessor for CRLCollaborationParticipantRowView);
      v52 = swift_allocObject();
      v53 = sub_1012C6678(v20, v52 + v51, type metadata accessor for CRLCollaborationParticipantRowView);
      __chkstk_darwin(v53);
      v54 = v78;
      *(&v76 - 2) = v77;
      *(&v76 - 1) = v54;
      Button.init(action:label:)();
      v55 = v96;
      v56 = v97;
      (*(v97 + 16))(v82, v50, v96);
      swift_storeEnumTagMultiPayload();
      sub_10001A2F8(&qword_101A038C8, &qword_101A038D0);
      _ConditionalContent<>.init(storage:)();

      goto LABEL_11;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v102 != 1)
  {
    v60 = 1;
    v61 = v96;
    goto LABEL_13;
  }

  sub_1012C6610(v42, v20, type metadata accessor for CRLCollaborationParticipantRowView);
  v57 = swift_allocObject();
  v58 = sub_1012C6678(v20, v57 + v51, type metadata accessor for CRLCollaborationParticipantRowView);
  __chkstk_darwin(v58);
  v59 = v80;
  *(&v76 - 2) = v79;
  *(&v76 - 1) = v59;
  Button.init(action:label:)();
  v55 = v96;
  v56 = v97;
  (*(v97 + 16))(v82, v50, v96);
  swift_storeEnumTagMultiPayload();
  sub_10001A2F8(&qword_101A038C8, &qword_101A038D0);
  _ConditionalContent<>.init(storage:)();
LABEL_11:
  (*(v56 + 8))(v50, v55);
  v60 = 0;
  v61 = v55;
LABEL_13:
  v62 = sub_1005B981C(&qword_101A323E0);
  v63 = v98;
  (*(*(v62 - 8) + 56))(v98, v60, 1, v62);
  sub_1012C6610(v83, v20, type metadata accessor for CRLCollaborationParticipantRowView);
  v64 = swift_allocObject();
  v65 = sub_1012C6678(v20, v64 + v51, type metadata accessor for CRLCollaborationParticipantRowView);
  __chkstk_darwin(v65);
  v66 = v84;
  *(&v76 - 2) = v90;
  *(&v76 - 1) = v66;
  Button.init(action:label:)();
  v67 = v87;
  sub_10000BE14(v99, v87, &qword_101A323D8);
  v68 = v91;
  sub_10000BE14(v63, v91, &qword_101A323D0);
  v69 = v97;
  v70 = *(v97 + 16);
  v71 = v89;
  v70(v89, v50, v61);
  v72 = v92;
  sub_10000BE14(v67, v92, &qword_101A323D8);
  v73 = sub_1005B981C(&qword_101A323E8);
  sub_10000BE14(v68, v72 + *(v73 + 48), &qword_101A323D0);
  v70((v72 + *(v73 + 64)), v71, v61);
  v74 = *(v69 + 8);
  v74(v50, v61);
  sub_10000CAAC(v98, &qword_101A323D0);
  sub_10000CAAC(v99, &qword_101A323D8);
  v74(v71, v61);
  sub_10000CAAC(v68, &qword_101A323D0);
  return sub_10000CAAC(v67, &qword_101A323D8);
}

uint64_t sub_1012C36AC()
{
  sub_100017CD8();

  return Label<>.init<A>(_:image:)();
}

uint64_t sub_1012C3724()
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.crlDefault;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Unfollowing user.", 17, 2, _swiftEmptyArrayStorage);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1005E9390();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1012C37E4(uint64_t a1)
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlDefault;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "Following user.", 15, 2, _swiftEmptyArrayStorage);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1005E91B8(*(a1 + 32));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1012C38A8()
{
  sub_100017CD8();

  return Label<>.init<A>(_:image:)();
}

void sub_1012C3920(uint64_t a1)
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlDefault;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "Showing contact card for user.", 30, 2, _swiftEmptyArrayStorage);
  v4 = *(*(a1 + 32) + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact);
  if (v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_100006370(0, &qword_1019F6190);
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = v4;
      swift_unknownObjectRetain();
      v14 = v7;
      v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v10 = swift_allocObject();
      v10[2] = v8;
      v10[3] = v9;
      v10[4] = v6;
      aBlock[4] = sub_1012C6AA4;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018BB7C0;
      v11 = _Block_copy(aBlock);
      v12 = v8;
      swift_unknownObjectRetain();
      v13 = v9;

      [v6 dismissViewControllerAnimated:1 completion:{v11, 0, 0, 0, sub_1012C6A9C, v14}];
      _Block_release(v11);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1012C3B4C()
{
  sub_100017CD8();

  return Label<>.init<A>(_:image:)();
}

uint64_t sub_1012C3BC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ColorSchemeContrast();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = sub_1005B981C(&qword_1019FE760);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  Image.init(systemName:)();
  sub_1012BF6C0(v8);
  (*(v3 + 104))(v5, enum case for ColorSchemeContrast.standard(_:), v2);
  v12 = static ColorSchemeContrast.== infix(_:_:)();
  v13 = *(v3 + 8);
  v13(v5, v2);
  v13(v8, v2);
  if (v12)
  {
    static SymbolRenderingMode.palette.getter();
  }

  else
  {
    static SymbolRenderingMode.monochrome.getter();
  }

  v14 = type metadata accessor for SymbolRenderingMode();
  (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  v15 = Image.symbolRenderingMode(_:)();

  result = sub_10000CAAC(v11, &qword_1019FE760);
  *a1 = v15;
  return result;
}

uint64_t sub_1012C3E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_101A324F0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  v11 = sub_1005B981C(&qword_101A324F8);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v22 - v15;
  sub_1012C40D0(v22 - v15);
  sub_1012C6FA8(a1, v22);
  v17 = swift_allocObject();
  sub_1012C6FE0(v22, v17 + 16);
  sub_1005B981C(&qword_101A32500);
  sub_1012C7020();
  Button.init(action:label:)();
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v10[*(v5 + 44)];
  v19 = v22[1];
  *v18 = v22[0];
  *(v18 + 1) = v19;
  *(v18 + 2) = v22[2];
  sub_10000BE14(v16, v13, &qword_101A324F8);
  sub_10000BE14(v10, v7, &qword_101A324F0);
  sub_10000BE14(v13, a2, &qword_101A324F8);
  v20 = sub_1005B981C(&qword_101A32510);
  sub_10000BE14(v7, a2 + *(v20 + 48), &qword_101A324F0);
  sub_10000CAAC(v10, &qword_101A324F0);
  sub_10000CAAC(v16, &qword_101A324F8);
  sub_10000CAAC(v7, &qword_101A324F0);
  return sub_10000CAAC(v13, &qword_101A324F8);
}

uint64_t sub_1012C40D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for BorderlessButtonStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A32518);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = static VerticalAlignment.center.getter();
  LOBYTE(v32) = 0;
  sub_1012C448C(v2, v40);
  memcpy(v38, v40, sizeof(v38));
  memcpy(v39, v40, sizeof(v39));
  sub_10000BE14(v38, v36, &qword_101A32520);
  sub_10000CAAC(v39, &qword_101A32520);
  memcpy(&v37[7], v38, 0x140uLL);
  v36[0] = v11;
  v36[1] = 0;
  LOBYTE(v36[2]) = v32;
  memcpy(&v36[2] + 1, v37, 0x147uLL);
  LOBYTE(v36[43]) = 0;
  BorderlessButtonStyle.init()();
  v12 = sub_1005B981C(&qword_101A32528);
  v13 = sub_1012C70DC();
  v14 = sub_1012BB228(&qword_101A08A88, &type metadata accessor for BorderlessButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  memcpy(v40, v36, 0x159uLL);
  sub_10000CAAC(v40, &qword_101A32528);
  sub_1012C6FA8(v28, v36);
  v15 = swift_allocObject();
  sub_1012C6FE0(v36, v15 + 16);
  v32 = v12;
  v33 = v3;
  v34 = v13;
  v35 = v14;
  swift_getOpaqueTypeConformance2();
  v16 = v31;
  v17 = v29;
  View.onTapGesture(count:perform:)();

  (*(v30 + 8))(v10, v17);
  LOBYTE(v11) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = sub_1005B981C(&qword_101A324F8);
  v27 = v16 + *(result + 36);
  *v27 = v11;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

void sub_1012C448C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = [v3 collaboratorColorForType:2];
  v5 = [v4 CGColor];

  v51 = Color.init(cgColor:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v49 = v77;
  v50 = v75;
  v47 = v80;
  v48 = v79;
  v96 = 1;
  v95 = v76;
  v94 = v78;
  type metadata accessor for CRLCollaborationParticipant(0);
  sub_1012BB228(&qword_101A32188, type metadata accessor for CRLCollaborationParticipant);
  v6 = v3;
  v7 = ObservedObject.init(wrappedValue:)();
  v45 = v8;
  v46 = v7;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v43 = v83;
  v44 = v81;
  v41 = v86;
  v42 = v85;
  v99 = 1;
  v98 = v82;
  v97 = v84;
  sub_1007D7988();
  sub_100017CD8();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Color.primary.getter();
  v14 = Text.foregroundColor(_:)();
  v16 = v15;
  LOBYTE(v4) = v17;
  v19 = v18;

  sub_10007441C(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v71[55] = v90;
  *&v71[71] = v91;
  *&v71[87] = v92;
  *&v71[103] = v93;
  *&v71[7] = v87;
  *&v71[23] = v88;
  *&v71[39] = v89;
  *&v53 = v14;
  *(&v53 + 1) = v16;
  LOBYTE(v54) = v4 & 1;
  DWORD1(v54) = *&v73[3];
  *(&v54 + 1) = v19;
  *&v55 = KeyPath;
  *(&v55 + 1) = 1;
  v56[0] = 0;
  *&v56[1] = *v71;
  v21 = *v71;
  v22 = *&v71[16];
  *&v56[17] = *&v71[16];
  *&v56[33] = *&v71[32];
  *&v56[112] = *(&v93 + 1);
  *&v56[97] = *&v71[96];
  v24 = *&v71[80];
  v23 = *&v71[96];
  *&v56[81] = *&v71[80];
  v25 = *&v71[64];
  *&v56[65] = *&v71[64];
  v27 = *&v71[32];
  v26 = *&v71[48];
  *&v56[49] = *&v71[48];
  v28 = *&v56[80];
  v29 = *&v56[96];
  v30 = *&v56[48];
  *(a2 + 264) = *&v56[64];
  *(a2 + 280) = v28;
  *(a2 + 296) = v29;
  v31 = v55;
  *(a2 + 200) = *v56;
  v32 = *&v56[32];
  *(a2 + 216) = *&v56[16];
  *(&v54 + 1) = *v73;
  *(a2 + 232) = v32;
  *(a2 + 248) = v30;
  v33 = v54;
  *(a2 + 152) = v53;
  *(a2 + 168) = v33;
  *(a2 + 184) = v31;
  v68 = v25;
  v69 = v24;
  *v70 = v23;
  v64 = v21;
  v65 = v22;
  v66 = v27;
  v74 = v4 & 1;
  v72 = 0;
  v34 = v96;
  v35 = v95;
  v36 = v94;
  v37 = v99;
  v38 = v98;
  v39 = v97;
  *a2 = v51;
  *(a2 + 8) = 0;
  *(a2 + 16) = v34;
  *(a2 + 24) = v50;
  *(a2 + 32) = v35;
  *(a2 + 40) = v49;
  *(a2 + 48) = v36;
  *(a2 + 56) = v48;
  *(a2 + 64) = v47;
  *(a2 + 72) = v46;
  *(a2 + 80) = v45;
  *(a2 + 88) = 0;
  *(a2 + 96) = v37;
  *(a2 + 104) = v44;
  *(a2 + 112) = v38;
  *(a2 + 120) = v43;
  *(a2 + 128) = v39;
  *(a2 + 136) = v42;
  *(a2 + 144) = v41;
  *(a2 + 312) = *&v56[112];
  v57[0] = v14;
  v57[1] = v16;
  v58 = v4 & 1;
  *v59 = *v73;
  *&v59[3] = *&v73[3];
  v60 = v19;
  v61 = KeyPath;
  v62 = 1;
  v63 = 0;
  *&v70[15] = *&v71[111];
  v67 = v26;

  v40 = v45;
  sub_10000BE14(&v53, v52, &qword_101A32548);
  sub_10000CAAC(v57, &qword_101A32548);
}

void sub_1012C490C()
{
  v38 = type metadata accessor for Date();
  v1 = *(v38 - 8);
  __chkstk_darwin(v38);
  v40 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v39 = &v32 - v4;
  if (qword_1019F2098 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v5 = static OS_os_log.crlDefault;
    v6 = static os_log_type_t.default.getter();
    sub_100005404(v5, &_mh_execute_header, v6, "Navigating to collaborator cursor for user.", 43, 2, _swiftEmptyArrayStorage);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v7 = v42;
    if (v42 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v8 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_32;
      }
    }

    v37 = v7 & 0xC000000000000001;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v9 = *(v7 + 32);
    }

    v10 = v9;
    v32 = v0;
    if (v8 == 1)
    {
      break;
    }

    v33 = v7 & 0xFFFFFFFFFFFFFF8;
    v34 = v7;
    v35 = (v1 + 8);
    v36 = (v1 + 16);
    v1 = 1;
    v41 = v9;
    while (1)
    {
      if (v37)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        if (v1 >= *(v33 + 16))
        {
          goto LABEL_29;
        }

        v11 = *(v7 + 8 * v1 + 32);
      }

      v12 = v11;
      v13 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v14 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
      v15 = v41;
      swift_beginAccess();
      v16 = *v36;
      v17 = &v15[v14];
      v19 = v38;
      v18 = v39;
      (*v36)(v39, v17, v38);
      v20 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
      swift_beginAccess();
      v21 = v12 + v20;
      v0 = v12;
      v22 = v40;
      v16(v40, v21, v19);
      LOBYTE(v20) = static Date.< infix(_:_:)();
      v23 = *v35;
      (*v35)(v22, v19);
      v23(v18, v19);
      if (v20)
      {

        ++v1;
        v7 = v34;
        v10 = v0;
        if (v13 == v8)
        {
          goto LABEL_20;
        }

        v41 = v0;
      }

      else
      {

        ++v1;
        v7 = v34;
        if (v13 == v8)
        {
          v10 = v41;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_20:

  v24 = *(*v32 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_collaboratorCursorCoordinator);
  v25 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
  swift_beginAccess();
  v26 = *&v24[v25];
  if (!*(v26 + 16))
  {
LABEL_26:

    return;
  }

  v27 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;
  v28 = v24;

  v29 = sub_10003E994(&v10[v27]);
  if (v30)
  {
    v31 = v10;
    v10 = *(*(v26 + 56) + 32 * v29 + 16);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1005E9500(v31, v10);

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_26;
  }

LABEL_32:
}

void sub_1012C4D7C(uint64_t a1)
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlDefault;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "Showing contact card for user.", 30, 2, _swiftEmptyArrayStorage);
  v4 = *(*(a1 + 16) + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact);
  if (v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_100006370(0, &qword_1019F6190);
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = v4;
      swift_unknownObjectRetain();
      v14 = v7;
      v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v10 = swift_allocObject();
      v10[2] = v8;
      v10[3] = v9;
      v10[4] = v6;
      aBlock[4] = sub_1012C7A38;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018BB8B0;
      v11 = _Block_copy(aBlock);
      v12 = v8;
      swift_unknownObjectRetain();
      v13 = v9;

      [v6 dismissViewControllerAnimated:1 completion:{v11, 0, 0, 0, sub_1012C7A34, v14}];
      _Block_release(v11);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1012C4FA8()
{
  Image.init(systemName:)();
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  View.accessibilityLabel<A>(_:)();
}

uint64_t sub_1012C50E0@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_1005B981C(&qword_101A324E8);
  return sub_1012C3E10(v1, a1 + *(v3 + 44));
}

id sub_1012C5130@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 8) + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact);
  *a1 = v2;
  return v2;
}

double sub_1012C514C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_101A07220);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for RoundedRectangle() + 20);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  __asm { FMOV            V0.2D, #2.0 }

  *v7 = _Q0;
  *&v7[*(v5 + 60)] = a1;
  *&v7[*(v5 + 64)] = 256;
  *(&v20 + 1) = &type metadata for CRLFeatureFlags;
  *&v21 = sub_100004D60();
  LOBYTE(v19) = 13;

  isFeatureEnabled(_:)();
  sub_100005070(&v19);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003DFF8(v7, a2, &qword_101A07220);
  v16 = (a2 + *(sub_1005B981C(&qword_101A325A0) + 36));
  v17 = v20;
  *v16 = v19;
  v16[1] = v17;
  result = *&v21;
  v16[2] = v21;
  return result;
}

id sub_1012C530C()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(CNAvatarViewController) init];
  sub_1005B981C(&unk_1019F4D60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101465920;
  *(v3 + 32) = v1;
  sub_100006370(0, &qword_101A00EC0);
  v4 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setContacts:isa];

  return v2;
}

uint64_t sub_1012C5420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1012C7918();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1012C5484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1012C7918();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1012C54E8()
{
  sub_1012C7918();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

double sub_1012C5510@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v10 + 1) = &type metadata for CRLFeatureFlags;
  v4 = sub_100004D60();
  *&v11 = v4;
  LOBYTE(v9) = 13;
  isFeatureEnabled(_:)();
  sub_100005070(&v9);
  *(&v10 + 1) = &type metadata for CRLFeatureFlags;
  *&v11 = v4;
  LOBYTE(v9) = 13;
  isFeatureEnabled(_:)();
  sub_100005070(&v9);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = sub_1005B981C(&qword_101A325E8);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = (a2 + *(sub_1005B981C(&qword_101A325F0) + 36));
  v7 = v10;
  *v6 = v9;
  v6[1] = v7;
  result = *&v11;
  v6[2] = v11;
  return result;
}

uint64_t sub_1012C5660()
{
  v2 = *(type metadata accessor for CRLActiveParticipantDetailView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D3D4;

  return sub_1012BCCCC(v0 + v3);
}

unint64_t sub_1012C57D0()
{
  result = qword_101A32168;
  if (!qword_101A32168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32168);
  }

  return result;
}

unint64_t sub_1012C5824()
{
  result = qword_101A32170;
  if (!qword_101A32170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32170);
  }

  return result;
}

uint64_t sub_1012C5958(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1012C59A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1012C5A48()
{
  result = qword_101A321D8;
  if (!qword_101A321D8)
  {
    sub_1005C4E5C(&qword_101A321E0);
    sub_1012BB228(&qword_101A321E8, type metadata accessor for CRLCollaborationParticipantRowView);
    sub_10001A2F8(&qword_101A312C0, &qword_101A312C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A321D8);
  }

  return result;
}

unint64_t sub_1012C5B50()
{
  result = qword_101A32200;
  if (!qword_101A32200)
  {
    sub_1005C4E5C(&qword_101A321F8);
    sub_1012C5BDC();
    sub_1012C5C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32200);
  }

  return result;
}

unint64_t sub_1012C5BDC()
{
  result = qword_101A32208;
  if (!qword_101A32208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32208);
  }

  return result;
}

unint64_t sub_1012C5C30()
{
  result = qword_101A32210;
  if (!qword_101A32210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32210);
  }

  return result;
}

unint64_t sub_1012C5C84()
{
  result = qword_101A32218;
  if (!qword_101A32218)
  {
    sub_1005C4E5C(&qword_101A321B0);
    sub_1012C773C(&qword_101A321D0, &qword_101A321C0, &unk_1014DAD50, sub_1012C5A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32218);
  }

  return result;
}

unint64_t sub_1012C5DA4()
{
  result = qword_101A32240;
  if (!qword_101A32240)
  {
    sub_1005C4E5C(&qword_101A32238);
    sub_1012C5E5C();
    sub_10001A2F8(&qword_101A312C0, &qword_101A312C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32240);
  }

  return result;
}

unint64_t sub_1012C5E5C()
{
  result = qword_101A32248;
  if (!qword_101A32248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32248);
  }

  return result;
}

unint64_t sub_1012C5EB0()
{
  result = qword_101A32250;
  if (!qword_101A32250)
  {
    sub_1005C4E5C(&qword_101A32228);
    sub_1012C5DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32250);
  }

  return result;
}

void sub_1012C5F5C()
{
  type metadata accessor for CRLEditingCoordinator();
  if (v0 <= 0x3F)
  {
    sub_1012C6120();
    if (v1 <= 0x3F)
    {
      sub_1012C61B4();
      if (v2 <= 0x3F)
      {
        sub_1012C6248(319, &qword_101A311B8, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_1012C6248(319, &unk_101A322D0, &type metadata for String, &type metadata accessor for Binding);
          if (v4 <= 0x3F)
          {
            sub_1012C6248(319, &unk_101A25DE0, &type metadata for Bool, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_1012C6298(319, &qword_101A10CA0, &type metadata accessor for ColorSchemeContrast);
              if (v6 <= 0x3F)
              {
                sub_1012C6298(319, &qword_101A31198, &type metadata accessor for DynamicTypeSize);
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

void sub_1012C6120()
{
  if (!qword_101A322C0)
  {
    type metadata accessor for CRLCollaborationParticipant(255);
    sub_1012BB228(&qword_101A32188, type metadata accessor for CRLCollaborationParticipant);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101A322C0);
    }
  }
}

void sub_1012C61B4()
{
  if (!qword_101A322C8)
  {
    type metadata accessor for CRLFollowCoordinator();
    sub_1012BB228(&qword_101A32220, type metadata accessor for CRLFollowCoordinator);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101A322C8);
    }
  }
}

void sub_1012C6248(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1012C6298(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1012C62F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_1012C6340(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1012C63D0()
{
  result = qword_101A32328;
  if (!qword_101A32328)
  {
    sub_1005C4E5C(&qword_101A32330);
    sub_1012C5B50();
    sub_1012C5C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32328);
  }

  return result;
}

unint64_t sub_1012C645C()
{
  result = qword_101A32338;
  if (!qword_101A32338)
  {
    sub_1005C4E5C(&qword_101A32340);
    sub_1012C5B50();
    sub_1012C5EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32338);
  }

  return result;
}

unint64_t sub_1012C6558()
{
  result = qword_101A32370;
  if (!qword_101A32370)
  {
    sub_1005C4E5C(&qword_101A32350);
    sub_10001A2F8(&qword_101A32378, &qword_101A32348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32370);
  }

  return result;
}

uint64_t sub_1012C6610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1012C6678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1012C6720()
{
  v1 = type metadata accessor for CRLCollaborationParticipantRowView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  swift_unknownObjectWeakDestroy();

  sub_100FBEBD4(*(v5 + 120), *(v5 + 128));
  sub_100FBEBD4(*(v5 + 136), *(v5 + 144));
  v6 = *(v1 + 52);
  sub_1005B981C(&unk_101A286B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorSchemeContrast();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 56);
  sub_1005B981C(&qword_101A31108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DynamicTypeSize();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1012C69A4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1012C6AB0()
{
  result = qword_101A32418;
  if (!qword_101A32418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32418);
  }

  return result;
}

unint64_t sub_1012C6B04()
{
  result = qword_101A32460;
  if (!qword_101A32460)
  {
    sub_1005C4E5C(&qword_101A32458);
    sub_1012A589C();
    sub_10001A2F8(&qword_101A067C8, &qword_101A067D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32460);
  }

  return result;
}

uint64_t sub_1012C6BFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1012C6C4C()
{
  result = qword_101A32498;
  if (!qword_101A32498)
  {
    sub_1005C4E5C(&qword_101A32470);
    sub_1012C6CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32498);
  }

  return result;
}

unint64_t sub_1012C6CD8()
{
  result = qword_101A324A0;
  if (!qword_101A324A0)
  {
    sub_1005C4E5C(&qword_101A32490);
    sub_1012C6D90();
    sub_10001A2F8(&qword_101A067C8, &qword_101A067D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A324A0);
  }

  return result;
}

unint64_t sub_1012C6D90()
{
  result = qword_101A324A8;
  if (!qword_101A324A8)
  {
    sub_1005C4E5C(&qword_101A32488);
    sub_1012C6E48();
    sub_10001A2F8(&qword_101A324C0, &qword_101A324C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A324A8);
  }

  return result;
}

unint64_t sub_1012C6E48()
{
  result = qword_101A324B0;
  if (!qword_101A324B0)
  {
    sub_1005C4E5C(&qword_101A32478);
    sub_10001A2F8(&qword_101A324B8, &qword_101A32480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A324B0);
  }

  return result;
}

unint64_t sub_1012C6F00()
{
  result = qword_101A324D8;
  if (!qword_101A324D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A324D8);
  }

  return result;
}

unint64_t sub_1012C6F54()
{
  result = qword_101A324E0;
  if (!qword_101A324E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A324E0);
  }

  return result;
}

unint64_t sub_1012C7020()
{
  result = qword_101A32508;
  if (!qword_101A32508)
  {
    sub_1005C4E5C(&qword_101A32500);
    sub_1012BB228(&qword_101A16698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32508);
  }

  return result;
}

unint64_t sub_1012C70DC()
{
  result = qword_101A32530;
  if (!qword_101A32530)
  {
    sub_1005C4E5C(&qword_101A32528);
    sub_10001A2F8(&qword_101A32538, &qword_101A32540);
    sub_10001A2F8(&qword_101A31438, &qword_101A31440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32530);
  }

  return result;
}

uint64_t sub_1012C71C0()
{
  swift_unknownObjectWeakDestroy();

  sub_100FBEBD4(*(v0 + 112), *(v0 + 120));
  sub_100FBEBD4(*(v0 + 128), *(v0 + 136));

  return _swift_deallocObject(v0, 137, 7);
}

unint64_t sub_1012C7284()
{
  result = qword_101A32550;
  if (!qword_101A32550)
  {
    sub_1005C4E5C(&qword_101A32360);
    sub_1005C4E5C(&qword_101A32350);
    sub_1012C6558();
    swift_getOpaqueTypeConformance2();
    sub_1012BB228(&qword_101A16698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32550);
  }

  return result;
}

unint64_t sub_1012C737C()
{
  result = qword_101A32558;
  if (!qword_101A32558)
  {
    sub_1005C4E5C(&qword_101A32560);
    sub_1012C6C4C();
    sub_1012BB228(&qword_101A16698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32558);
  }

  return result;
}

unint64_t sub_1012C7438()
{
  result = qword_101A32568;
  if (!qword_101A32568)
  {
    sub_1005C4E5C(&qword_101A32570);
    sub_1012C74F0();
    sub_10001A2F8(&qword_101A10DA0, &qword_101A10DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32568);
  }

  return result;
}

unint64_t sub_1012C74F0()
{
  result = qword_101A32578;
  if (!qword_101A32578)
  {
    sub_1005C4E5C(&qword_101A32580);
    sub_1012C75A8();
    sub_10001A2F8(&qword_1019FEA88, &qword_1019FEA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32578);
  }

  return result;
}

unint64_t sub_1012C75A8()
{
  result = qword_101A32588;
  if (!qword_101A32588)
  {
    sub_1005C4E5C(&qword_101A2DC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32588);
  }

  return result;
}

unint64_t sub_1012C7684()
{
  result = qword_101A325A8;
  if (!qword_101A325A8)
  {
    sub_1005C4E5C(&qword_101A325A0);
    sub_10001A2F8(&qword_101A325B0, &qword_101A07220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A325A8);
  }

  return result;
}

uint64_t sub_1012C773C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1012C77B8()
{
  result = qword_101A325C8;
  if (!qword_101A325C8)
  {
    sub_1005C4E5C(&qword_101A325D0);
    sub_1012C7844();
    sub_1012C7898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A325C8);
  }

  return result;
}

unint64_t sub_1012C7844()
{
  result = qword_101A325D8;
  if (!qword_101A325D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A325D8);
  }

  return result;
}

unint64_t sub_1012C7898()
{
  result = qword_101A325E0;
  if (!qword_101A325E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A325E0);
  }

  return result;
}

unint64_t sub_1012C7918()
{
  result = qword_101A325F8;
  if (!qword_101A325F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A325F8);
  }

  return result;
}

unint64_t sub_1012C796C()
{
  result = qword_101A32600;
  if (!qword_101A32600)
  {
    sub_1005C4E5C(&qword_101A325F0);
    sub_10001A2F8(&qword_101A32608, &qword_101A325E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32600);
  }

  return result;
}

uint64_t sub_1012C7A7C(unsigned __int8 a1, char a2)
{
  v4 = *(v2 + 56);
  if (*(v4 + 16) && (v5 = sub_1007C8330(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v8 = *v7;
    v9 = v7[1];
    sub_1005B981C(&unk_101A226A0);
    sub_100024E98(v8, v9);
    sub_1012C7DEC();
    return CRDT.init(serializedData:)();
  }

  else
  {
    sub_1006B305C();
    swift_allocError();
    *v11 = a2;
    return swift_willThrow();
  }
}

uint64_t sub_1012C7B68()
{
  String.hash(into:)();
}

unint64_t sub_1012C7C88@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1012C7DA0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1012C7CB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006174;
  v4 = 0x61447463656A626FLL;
  v5 = 0xEB00000000617461;
  v6 = 0x44656C7573706163;
  v7 = 0x8000000101551690;
  result = 9;
  v9 = 0xD000000000000019;
  if (v2 == 4)
  {
    v9 = 0xD000000000000017;
  }

  else
  {
    v7 = 0x80000001015516B0;
  }

  if (v2 != 3)
  {
    v6 = v9;
    v5 = v7;
  }

  v10 = 0xEE00617461445444;
  v11 = 0x52436E6F6D6D6F63;
  if (v2 != 1)
  {
    v11 = 0xD000000000000010;
    v10 = 0x8000000101551670;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

unint64_t sub_1012C7DA0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101873F70, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1012C7DEC()
{
  result = qword_101A128F0;
  if (!qword_101A128F0)
  {
    sub_1005C4E5C(&unk_101A226A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A128F0);
  }

  return result;
}

uint64_t sub_1012C7E60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1012C7EA8(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_1012C7F18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1012C7F60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1012C7FC8()
{
  result = qword_101A32610;
  if (!qword_101A32610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32610);
  }

  return result;
}

uint64_t sub_1012C8024()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_1012C843C()
{
  v0 = [objc_opt_self() configurationWithPointSize:30.0];
  v1 = String._bridgeToObjectiveC()();

  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  return v2;
}

uint64_t sub_1012C8634()
{
  sub_1005B981C(&qword_1019FB8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  v33[0] = xmmword_101A32618;

  AnyHashable.init<A>(_:)();
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout);
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = v2;
  v33[0] = off_101A32628;

  AnyHashable.init<A>(_:)();
  v3 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions);
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2);
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = v4;
  v33[0] = off_101A32648;

  AnyHashable.init<A>(_:)();
  v5 = v3[1];
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = v5;
  v33[0] = off_101A32638;

  AnyHashable.init<A>(_:)();
  v6 = *v3;
  *(inited + 312) = &type metadata for Int;
  *(inited + 288) = v6;
  v28 = sub_100078EA4(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019FB8B0);
  swift_arrayDestroy();
  v33[0] = off_101A32658;

  AnyHashable.init<A>(_:)();
  v7 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  if (v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      v31 = sub_1005B981C(&unk_1019F4D80);
      *&v30 = v15;
      sub_10000BF3C(&v30, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100A9B628(v29, v32, isUniquelyReferenced_nonNull_native);
      sub_100064234(v32);
      return v28;
    }

    v11 = *(v8 + 56 + 8 * v16);
    ++v14;
    if (v11)
    {
      v14 = v16;
      do
      {
LABEL_8:
        v17 = *(v8 + 48) + 56 * (__clz(__rbit64(v11)) | (v14 << 6));
        v18 = *(v17 + 48);
        v19 = *(v17 + 32);
        v20 = *v17;
        v33[1] = *(v17 + 16);
        v33[2] = v19;
        v33[0] = v20;
        v34 = v18;
        sub_1000693DC(v33, &v30);
        v21 = sub_100068F28();
        v23 = v22;
        sub_1000698D0(v33);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100024CBC(0, *(v15 + 2) + 1, 1, v15);
          v15 = result;
        }

        v25 = *(v15 + 2);
        v24 = *(v15 + 3);
        if (v25 >= v24 >> 1)
        {
          result = sub_100024CBC((v24 > 1), v25 + 1, 1, v15);
          v15 = result;
        }

        v11 &= v11 - 1;
        *(v15 + 2) = v25 + 1;
        v26 = &v15[16 * v25];
        *(v26 + 4) = v21;
        *(v26 + 5) = v23;
      }

      while (v11);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1012C89D4(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A32678);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_1005B981C(&unk_101A15B20);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v30 - v16;
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    v23 = *(v21 + 24);
    v31 = ObjectType;
    v32 = v21;
    v23(ObjectType, v21);
    sub_10000C9DC(a3, v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
    (*(v6 + 56))(v17, 0, 1, v5);
    v24 = *(v8 + 48);
    sub_10000BE14(v19, v10, &unk_101A15B20);
    sub_10000BE14(v17, &v10[v24], &unk_101A15B20);
    v25 = *(v6 + 48);
    if (v25(v10, 1, v5) == 1)
    {
      sub_10000CAAC(v17, &unk_101A15B20);
      sub_10000CAAC(v19, &unk_101A15B20);
      if (v25(&v10[v24], 1, v5) == 1)
      {
        sub_10000CAAC(v10, &unk_101A15B20);
LABEL_9:
        v29 = [v34 UIImage];
        (*(v32 + 56))(v29, v31);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_10000BE14(v10, v14, &unk_101A15B20);
      if (v25(&v10[v24], 1, v5) != 1)
      {
        v26 = &v10[v24];
        v27 = v33;
        sub_1000257A0(v26, v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v28 = sub_100F91CB8(v14, v27);
        sub_10000BC84(v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000CAAC(v17, &unk_101A15B20);
        sub_10000CAAC(v19, &unk_101A15B20);
        sub_10000BC84(v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000CAAC(v10, &unk_101A15B20);
        if (v28)
        {
          goto LABEL_9;
        }

        return swift_unknownObjectRelease();
      }

      sub_10000CAAC(v17, &unk_101A15B20);
      sub_10000CAAC(v19, &unk_101A15B20);
      sub_10000BC84(v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    sub_10000CAAC(v10, &qword_101A32678);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1012C8E50(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 272) = a9;
  *(v9 + 280) = v16;
  *(v9 + 264) = a8;
  *(v9 + 256) = a1;
  *(v9 + 240) = a6;
  *(v9 + 248) = a7;
  *(v9 + 232) = a5;
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  *(v9 + 288) = swift_task_alloc();
  _s5BoardVMa(0);
  *(v9 + 296) = swift_task_alloc();
  sub_1005B981C(&qword_101A32670);
  *(v9 + 304) = swift_task_alloc();
  v10 = type metadata accessor for CRLPreviewImages.Item(0);
  *(v9 + 312) = v10;
  *(v9 + 320) = *(v10 - 8);
  *(v9 + 328) = swift_task_alloc();
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  *(v9 + 336) = v11;
  *(v9 + 344) = *(v11 - 8);
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  *(v9 + 368) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v9 + 376) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 384) = v13;
  *(v9 + 392) = v12;

  return _swift_task_switch(sub_1012C9060, v13, v12);
}

uint64_t sub_1012C9060()
{
  v1 = *(v0 + 29);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 43);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v30 = *(v0 + 40);
    v31 = *(v3 + 72);
    v5 = (v30 + 56);
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = *(v0 + 45);
      v9 = *(v0 + 46);
      sub_10000C9DC(v4, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000C9DC(v9, v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v13 = *(v0 + 45);
      v12 = *(v0 + 46);
      if (EnumCaseMultiPayload == 2)
      {
        v15 = *(v0 + 37);
        v14 = *(v0 + 38);
        sub_10000BC84(*(v0 + 46), type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_1000257A0(v13, v15, _s5BoardVMa);
        sub_10000C9DC(v15, v14, type metadata accessor for CRLBoardIdentifier);
        sub_10000BC84(v15, _s5BoardVMa);
      }

      else
      {
        v16 = *(v0 + 44);
        sub_10000BC84(*(v0 + 45), type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_1000257A0(v12, v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v17 = swift_getEnumCaseMultiPayload();
        v18 = *(v0 + 44);
        if (v17 != 1)
        {
          v8 = *(v0 + 38);
          v7 = *(v0 + 39);
          sub_10000BC84(v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
          (*v5)(v8, 1, 1, v7);
          goto LABEL_4;
        }

        v19 = *(v0 + 38);
        v20 = *(v0 + 36);
        sub_1000257A0(v18, v20, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        sub_1000257A0(v20, v19, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      }

      v22 = *(v0 + 38);
      v21 = *(v0 + 39);
      swift_storeEnumTagMultiPayload();
      (*v5)(v22, 0, 1, v21);
      if ((*(v30 + 48))(v22, 1, v21) != 1)
      {
        sub_1000257A0(*(v0 + 38), *(v0 + 41), type metadata accessor for CRLPreviewImages.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100B36CAC(0, v6[2] + 1, 1, v6);
        }

        v24 = v6[2];
        v23 = v6[3];
        if (v24 >= v23 >> 1)
        {
          v6 = sub_100B36CAC(v23 > 1, v24 + 1, 1, v6);
        }

        v25 = *(v0 + 41);
        v6[2] = v24 + 1;
        sub_1000257A0(v25, v6 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, type metadata accessor for CRLPreviewImages.Item);
        goto LABEL_5;
      }

LABEL_4:
      sub_10000CAAC(*(v0 + 38), &qword_101A32670);
LABEL_5:
      v4 += v31;
      if (!--v2)
      {
        goto LABEL_17;
      }
    }
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_17:
  *(v0 + 50) = v6;
  if (*(*(v0 + 31) + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout))
  {
    v26 = 2;
  }

  else
  {
    v26 = 0;
  }

  v27 = swift_task_alloc();
  *(v0 + 51) = v27;
  *v27 = v0;
  v27[1] = sub_1012C9478;
  v28 = v0[32];

  return sub_1006DBDA4(v6, v26, 0, 1, v28);
}

uint64_t sub_1012C9478(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 416) = v1;

  if (v1)
  {
    v5 = v4[48];
    v6 = v4[49];
    v7 = sub_1012C9694;
  }

  else
  {
    v4[53] = a1;
    v5 = v4[48];
    v6 = v4[49];
    v7 = sub_1012C95C4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1012C95C4()
{
  v1 = v0[53];
  v2 = v0[33];

  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1012C9694()
{

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v3 = sub_100F88220();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.publicDescription.getter(v0[22], v0[23]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  swift_getErrorValue();
  v9 = Error.fullDescription.getter(v0[25]);
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v6;
  *(inited + 112) = v9;
  *(inited + 120) = v10;
  v11 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v11, "Error generating image for folder (%@): %{public}@ <%@>", 55, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1012C989C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 320) = a1;
  *(v8 + 304) = a5;
  *(v8 + 312) = a6;
  *(v8 + 344) = type metadata accessor for CRLPreviewImages.Item(0);
  *(v8 + 352) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 360) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 368) = v10;
  *(v8 + 376) = v9;

  return _swift_task_switch(sub_1012C996C, v10, v9);
}

uint64_t sub_1012C996C()
{
  if (qword_1019F2138 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 44);
  v2 = *(v0 + 38);
  v3 = static OS_os_log.crlBoardPreviewImageCache;
  *(v0 + 48) = static OS_os_log.crlBoardPreviewImageCache;
  *(v0 + 49) = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(v0 + 50) = v8;
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v9, "About to request image from cache for board UUID: %@", 52, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_10000C9DC(v2, v1, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v10 = swift_task_alloc();
  *(v0 + 51) = v10;
  *v10 = v0;
  v10[1] = sub_1012C9B40;
  v11 = *(v0 + 44);
  v12 = v0[40];

  return sub_1006DB258(v11, 2, 0, 1, v12);
}

uint64_t sub_1012C9B40(uint64_t a1)
{
  v4 = *v2;
  v4[52] = v1;

  v5 = v4[44];
  if (v1)
  {
    sub_10000BC84(v5, type metadata accessor for CRLPreviewImages.Item);
    v6 = v4[46];
    v7 = v4[47];
    v8 = sub_1012C9D38;
  }

  else
  {
    v4[53] = a1;
    sub_10000BC84(v5, type metadata accessor for CRLPreviewImages.Item);
    v6 = v4[46];
    v7 = v4[47];
    v8 = sub_1012C9CB0;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1012C9CB0()
{
  v1 = v0[53];
  v2 = v0[41];

  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1012C9D38()
{
  v1 = v0[50];
  v2 = v0[48];
  v14 = v0[41];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v4 = UUID.uuidString.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v6 = Error.publicDescription.getter(v0[31], v0[32]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v1;
  *(inited + 72) = v6;
  *(inited + 80) = v7;
  swift_getErrorValue();
  v8 = Error.fullDescription.getter(v0[34]);
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v1;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  v10 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v10, "Error generating image for board UUID (%@): %{public}@ <%@>", 59, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v11 = sub_1006DFF40();
  v14();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1012C9ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a4;
  v7[5] = type metadata accessor for MainActor();
  v7[6] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v7[7] = ObjectType;
  v7[2] = a4;
  v13 = *(a5 + 16);
  v7[8] = v13;
  v16 = (*(v13 + 8) + **(v13 + 8));
  v14 = swift_task_alloc();
  v7[9] = v14;
  *v14 = v7;
  v14[1] = sub_1012CA04C;

  return v16(a6, a7, ObjectType, v13);
}

uint64_t sub_1012CA04C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1012CA188, v1, v0);
}

uint64_t sub_1012CA188()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];

  v0[3] = v3;
  (*(v1 + 16))(v2, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1012CA21C(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  sub_1005B981C(&qword_1019F6268);
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for CRLBoardEntity();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  sub_1005B981C(&unk_101A15B20);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  _s5BoardVMa(0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_1005B981C(&unk_1019F52D0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = type metadata accessor for MainActor();
  v2[29] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[30] = v6;
  v2[31] = v5;

  return _swift_task_switch(sub_1012CA468, v6, v5);
}

uint64_t sub_1012CA468()
{
  v1 = [*(v0 + 112) collectionView];
  if (v1)
  {
    v4 = v1;
    v5 = [v1 visibleCells];

    sub_100006370(0, &qword_1019FA3F0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_100F2266C(v6);
    *(v0 + 256) = v7;

    v8 = _swiftEmptyArrayStorage;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v10 = v9[2];
    *(v0 + 264) = v10;
    v37 = v10;
    if (v10)
    {
      v11 = 0;
      v12 = *(v0 + 208);
      v33 = v12;
      v34 = (v12 + 48);
      v35 = (v12 + 56);
      v13 = v9 + 5;
      v36 = v9;
      while (1)
      {
        if (v11 >= v9[2])
        {
          __break(1u);
          goto LABEL_26;
        }

        v14 = *(v0 + 160);
        v15 = *v13;
        ObjectType = swift_getObjectType();
        v17 = *(v15 + 24);
        swift_unknownObjectRetain();
        v17(ObjectType, v15);
        swift_unknownObjectRelease();
        v18 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
        v19 = (*(*(v18 - 8) + 48))(v14, 1, v18);
        v20 = *(v0 + 160);
        if (v19 == 1)
        {
          break;
        }

        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_10000BC84(v20, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_15;
        }

        v22 = *(v0 + 176);
        v21 = *(v0 + 184);
        sub_1000257A0(v20, v22, _s5BoardVMa);
        sub_10000C9DC(v22, v21, type metadata accessor for CRLBoardIdentifier);
        sub_10000BC84(v22, _s5BoardVMa);
        v23 = 0;
LABEL_16:
        v25 = *(v0 + 192);
        v24 = *(v0 + 200);
        v26 = *(v0 + 184);
        (*v35)(v26, v23, 1, v24);
        sub_1012CB71C(v26, v25);
        if ((*v34)(v25, 1, v24) == 1)
        {
          v1 = sub_10000CAAC(*(v0 + 192), &unk_1019F52D0);
        }

        else
        {
          sub_1000257A0(*(v0 + 192), *(v0 + 216), type metadata accessor for CRLBoardIdentifier);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_100B36BE4(0, v8[2] + 1, 1, v8);
          }

          v28 = v8[2];
          v27 = v8[3];
          if (v28 >= v27 >> 1)
          {
            v8 = sub_100B36BE4(v27 > 1, v28 + 1, 1, v8);
          }

          v29 = *(v0 + 216);
          v8[2] = v28 + 1;
          v1 = sub_1000257A0(v29, v8 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, type metadata accessor for CRLBoardIdentifier);
        }

        ++v11;
        v13 += 2;
        v9 = v36;
        if (v37 == v11)
        {
          goto LABEL_22;
        }
      }

      sub_10000CAAC(*(v0 + 160), &unk_101A15B20);
LABEL_15:
      v23 = 1;
      goto LABEL_16;
    }

LABEL_22:
    *(v0 + 272) = v8;
    *(v0 + 280) = static MainActor.shared.getter();
    v30 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v31;
    *(v0 + 288) = v30;
    *(v0 + 296) = v31;
    v1 = sub_1012CA87C;
    v2 = v30;
  }

  else
  {
LABEL_26:
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1012CA87C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 104) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_entityStore);
  *(v3 + 304) = v4;
  if (v4)
  {

    a1 = sub_1012CA904;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1012CA904()
{
  v0[39] = sub_101280E6C(v0[34]);
  v0[40] = 0;

  v1 = v0[36];
  v2 = v0[37];

  return _swift_task_switch(sub_1012CA9A8, v1, v2);
}

uint64_t sub_1012CA9A8()
{

  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return _swift_task_switch(sub_1012CAA0C, v1, v2);
}

uint64_t sub_1012CAA0C()
{
  v1 = v0[33];

  if (v1)
  {
    v2 = 0;
    v3 = v0[32];
    if (!v3)
    {
      v3 = _swiftEmptyArrayStorage;
    }

    v24 = (v0[17] + 48);
    v4 = v3 + 5;
    do
    {
      v5 = v0[19];
      v6 = *(v4 - 1);
      v7 = *v4;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 24);
      swift_unknownObjectRetain();
      v9(ObjectType, v7);
      v10 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
      v11 = (*(*(v10 - 8) + 48))(v5, 1, v10);
      v12 = v0[19];
      if (v11 == 1)
      {
        swift_unknownObjectRelease();
        sub_10000CAAC(v12, &unk_101A15B20);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v13 = v0[39];
          v14 = v0[21];
          v15 = v0[15];
          v25 = v0[16];
          sub_1000257A0(v12, v14, _s5BoardVMa);
          *(swift_task_alloc() + 16) = v14;
          sub_1010AA7A8(sub_1006C3F78, v13, v15);

          v16 = (*v24)(v15, 1, v25);
          v17 = v0[21];
          if (v16 == 1)
          {
            v18 = v0[15];
            swift_unknownObjectRelease();
            sub_10000CAAC(v18, &qword_1019F6268);
          }

          else
          {
            v21 = v0[18];
            sub_1000257A0(v0[15], v21, type metadata accessor for CRLBoardEntity);
            v0[12] = v6;
            (*(*(v7 + 8) + 16))(v21, ObjectType);
            sub_10000BC84(v21, type metadata accessor for CRLBoardEntity);
            swift_unknownObjectRelease();
          }

          v19 = _s5BoardVMa;
          v20 = v17;
        }

        else
        {
          swift_unknownObjectRelease();
          v19 = type metadata accessor for CRLBoardLibraryViewModel.Item;
          v20 = v12;
        }

        sub_10000BC84(v20, v19);
      }

      ++v2;
      v4 += 2;
    }

    while (v2 != v0[33]);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1012CAD90()
{

  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return _swift_task_switch(sub_1012CAE28, v1, v2);
}

uint64_t sub_1012CAE28()
{

  if (qword_1019F2128 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = static OS_os_log.crlFolderUI;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[11] = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error annotating folder items: %@", 33, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);

  v8 = v0[1];

  return v8();
}

void sub_1012CB004()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 visibleCells];

    sub_100006370(0, &qword_1019FA3F0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        swift_getObjectType();
        v10 = swift_conformsToProtocol2();
        if (!v10 || !v8)
        {

          return;
        }

        v11 = v10;
        ObjectType = swift_getObjectType();
        (*(*(v11 + 16) + 16))(ObjectType);

        ++v6;
        if (v9 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1012CB1A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_1012CA21C(a1);
}

unint64_t sub_1012CB260(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x656D616E6572;
    v7 = 0xD000000000000011;
    v8 = 0x734174726F707865;
    if (a1 != 3)
    {
      v8 = 0x746163696C707564;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6572616873;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7265766F636572;
    v2 = 1701079400;
    if (a1 != 9)
    {
      v2 = 0x796C706572;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x657469726F766166;
    v4 = 0x69726F7661666E75;
    if (a1 != 6)
    {
      v4 = 0x6574656C6564;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1012CB3B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1012CB260(*a1);
  v5 = v4;
  if (v3 == sub_1012CB260(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1012CB440()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1012CB260(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1012CB4A4()
{
  sub_1012CB260(*v0);
  String.hash(into:)();
}

Swift::Int sub_1012CB4F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1012CB260(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1012CB558@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1012CB85C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1012CB588@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1012CB260(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1012CB5C4()
{
  if ([v0 isEditing])
  {
    [v0 setEditing:0];
    v1 = [objc_opt_self() sharedInstance];
    [v1 setFirstElementForUpcomingScreenChange:v0];

    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, v0);
    return 1;
  }

  else
  {
    v3.receiver = v0;
    v3.super_class = type metadata accessor for CRLiOSFolderGridViewController();
    return objc_msgSendSuper2(&v3, "accessibilityPerformEscape");
  }
}

unint64_t sub_1012CB6C8()
{
  result = qword_101A32668;
  if (!qword_101A32668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32668);
  }

  return result;
}

uint64_t sub_1012CB71C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F52D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1012CB7A0()
{
  result = qword_101A32690;
  if (!qword_101A32690)
  {
    sub_1005C4E5C(&qword_101A32698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32690);
  }

  return result;
}

unint64_t sub_1012CB808()
{
  result = qword_101A326A0;
  if (!qword_101A326A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A326A0);
  }

  return result;
}

unint64_t sub_1012CB85C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10187A300, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1012CB8A8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v4;
  v6 = v3;
  LODWORD(v7) = a3;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + OBJC_IVAR____TtC8Freeform23CRLCommandSetSceneTitle_sceneTitle + 8);
  v14 = HIBYTE(v13) & 0xF;
  v52 = *(v3 + OBJC_IVAR____TtC8Freeform23CRLCommandSetSceneTitle_sceneTitle);
  v50 = v13;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    v42 = v4;
    v43 = v3;
    v44 = v11;
    v45 = v10;
    v46 = a1;
    v47 = v7;
    v48 = a2;
    v41 = objc_opt_self();
    v15 = [v41 _atomicIncrementAssertCount];
    v51 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v51);
    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v15;
    v24 = sub_1005CF000();
    *(inited + 96) = v24;
    v25 = sub_1005CF04C();
    *(inited + 104) = v25;
    *(inited + 72) = v16;
    *(inited + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    *(inited + 112) = v19;
    *(inited + 120) = v21;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v26;
    *(inited + 152) = 18;
    v27 = v51;
    *(inited + 216) = v24;
    *(inited + 224) = v25;
    *(inited + 192) = v27;
    v28 = v16;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v31, "Scene's title shouldn't be empty string.", 40, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v32 = swift_allocObject();
    v32[2] = 8;
    v32[3] = 0;
    v32[4] = 0;
    v32[5] = 0;
    v33 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    [v41 handleFailureInFunction:v34 file:v7 lineNumber:18 isFatal:0 format:v35 args:v33];

    LOBYTE(v7) = v47;
    v10 = v45;
    a1 = v46;
    v6 = v43;
    v11 = v44;
    v5 = v42;
  }

  result = sub_1012E0400(a1, &off_1018A75D0);
  if (!v5)
  {
    v37 = *(v11 + 16);
    v38 = *(v6 + OBJC_IVAR____TtC8Freeform23CRLCommandSetSceneTitle_sceneInfo) + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_sceneID;
    v39 = v49;
    v48 = 0;
    v37(v49, v38, v10);
    swift_beginAccess();
    type metadata accessor for CRLBoardCRDTData(0);

    sub_100727014(v39, v52, v50);
    swift_endAccess();

    (*(v11 + 8))(v39, v10);
    return sub_1012CF6CC(a1, &off_1018A75D0, v7);
  }

  return result;
}

uint64_t sub_1012CBE40()
{
}

id sub_1012CBE98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetSceneTitle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1012CBF54()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform23CRLCommandSetSceneTitle_actionString);

  return v1;
}

id sub_1012CBF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CRLCommandSetSceneTitle();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC8Freeform23CRLCommandSetSceneTitle_actionString];
  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *v7 = v13;
  v7[1] = v15;
  *&v6[OBJC_IVAR____TtC8Freeform23CRLCommandSetSceneTitle_sceneInfo] = a1;
  v16 = &v6[OBJC_IVAR____TtC8Freeform23CRLCommandSetSceneTitle_sceneTitle];
  *v16 = a2;
  *(v16 + 1) = a3;
  v19.receiver = v6;
  v19.super_class = v5;
  return objc_msgSendSuper2(&v19, "init");
}

id sub_1012CC13C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLAnalyticsSharePlayJoined();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1012CC4F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLAnalyticsSpatialPreview();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1012CC54C(void *a1, char a2)
{
  sub_100043E40(_swiftEmptyArrayStorage);
  sub_100F87498(a1);
  v4 = String._bridgeToObjectiveC()();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v4, 0x54746E65746E6F63, 0xEB00000000657079, isUniquelyReferenced_nonNull_native);
  v6 = [objc_allocWithZone(NSNumber) initWithBool:a2 & 1];
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v6, 0xD00000000000001FLL, 0x80000001015CB0B0, v7);
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  sub_1006364DC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 sendEventInDomain:v9 lazily:1 eventPayload:isa];
}

id sub_1012CC71C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLAnalyticsSharePlayEnded();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1012CC7C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLPasteboardSourceContext();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1012CC86C()
{
  v1 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v1 - 8);
  v25 = &v21 - v2;
  v3 = type metadata accessor for CRLProto_Data(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for CRLProto_EncryptedRealTimeMessage(0);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v24 = v10;
  v13 = *(v10 + 24);
  v14 = *(v4 + 56);
  v14(&v12[v13], 1, 1, v3);
  *v12 = v0[2];
  v21 = xmmword_10146F370;
  *v9 = xmmword_10146F370;
  UnknownStorage.init()();
  sub_1009DCE5C(&v12[v13]);
  sub_100683F6C(v9, &v12[v13]);
  v22 = v4 + 56;
  v23 = v14;
  v14(&v12[v13], 0, 1, v3);
  v16 = v0[3];
  v15 = v0[4];
  v17 = v25;
  sub_10084DD24(&v12[v13], v25);
  v18 = *(v4 + 48);
  if (v18(v17, 1, v3) == 1)
  {
    *v6 = v21;
    sub_100024E98(v16, v15);
    UnknownStorage.init()();
    if (v18(v25, 1, v3) != 1)
    {
      sub_1009DCE5C(v25);
    }
  }

  else
  {
    sub_100683F6C(v25, v6);
    sub_100024E98(v16, v15);
  }

  sub_10002640C(*v6, *(v6 + 1));
  *v6 = v16;
  *(v6 + 1) = v15;
  sub_1009DCE5C(&v12[v13]);
  sub_100683F6C(v6, &v12[v13]);
  v23(&v12[v13], 0, 1, v3);
  sub_100683EB4();
  v19 = Message.serializedData(partial:)();
  sub_100683F0C(v12, type metadata accessor for CRLProto_EncryptedRealTimeMessage);
  return v19;
}

uint64_t sub_1012CCBA0()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1012CCBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001015A2510 == a2)
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

uint64_t sub_1012CCCC4(uint64_t a1)
{
  v2 = sub_1012CD194();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1012CCD00(uint64_t a1)
{
  v2 = sub_1012CD194();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1012CCD60(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A328F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100020E58(a1, a1[3]);
  sub_1012CD194();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v12 = *(v3 + 24);
    v13 = v9;
    v11[15] = 1;
    sub_100024E98(v12, v9);
    sub_1006D63D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10002640C(v12, v13);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1012CCEE8(void *a1)
{
  v4 = sub_1005B981C(&qword_101A328E8);
  v10 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_100020E58(a1, a1[3]);
  sub_1012CD194();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v10;
    LOBYTE(v11) = 0;
    *(v1 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = 1;
    sub_1006D6258();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v6, v4);
    *(v1 + 24) = v11;
  }

  sub_100005070(a1);
  return v1;
}

uint64_t sub_1012CD0EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1012CCEE8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1012CD168(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16))
  {
    return sub_1009F9488(*(*a1 + 24), *(*a1 + 32), *(*a2 + 24), *(*a2 + 32));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1012CD194()
{
  result = qword_101A328F0;
  if (!qword_101A328F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A328F0);
  }

  return result;
}

void *sub_1012CD1E8(uint64_t a1, unint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v24 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for CRLProto_EncryptedRealTimeMessage(0);
  __chkstk_darwin(v12);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100683EB4();
  Message.init(serializedData:extensions:partial:options:)();
  if (v2)
  {
    return sub_10002640C(a1, a2);
  }

  v20 = *v14;
  sub_10084DD24(v14 + *(v12 + 24), v7);
  v16 = *(v24 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    *v10 = xmmword_10146F370;
    UnknownStorage.init()();
    sub_10002640C(a1, a2);
    sub_100683F0C(v14, type metadata accessor for CRLProto_EncryptedRealTimeMessage);
    if (v16(v7, 1, v8) != 1)
    {
      sub_1009DCE5C(v7);
    }
  }

  else
  {
    sub_10002640C(a1, a2);
    sub_100683F0C(v14, type metadata accessor for CRLProto_EncryptedRealTimeMessage);
    sub_100683F6C(v7, v10);
  }

  v17 = *v10;
  v18 = v10[1];
  sub_100024E98(*v10, v18);
  sub_100683F0C(v10, type metadata accessor for CRLProto_Data);
  type metadata accessor for CRLEncryptedRealTimeMessage();
  result = swift_allocObject();
  result[2] = v20;
  result[3] = v17;
  result[4] = v18;
  return result;
}

unint64_t sub_1012CD538()
{
  result = qword_101A32900;
  if (!qword_101A32900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32900);
  }

  return result;
}

unint64_t sub_1012CD590()
{
  result = qword_101A32908;
  if (!qword_101A32908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32908);
  }

  return result;
}

unint64_t sub_1012CD5E8()
{
  result = qword_101A32910;
  if (!qword_101A32910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A32910);
  }

  return result;
}

uint64_t sub_1012CD6CC(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  v5 = __chkstk_darwin(v4 - 8);
  v69 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = &v64 - v7;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1005B981C(&qword_1019F3460);
  __chkstk_darwin(v67);
  v74 = &v64 - v11;
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v73 = &v64 - v17;
  __chkstk_darwin(v16);
  v72 = &v64 - v18;
  v19 = sub_1005B981C(&qword_101A000E0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v22 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v23 = __chkstk_darwin(v22);
  v24 = __chkstk_darwin(v23);
  v76 = &v64 - v25;
  v26 = __chkstk_darwin(v24);
  v75 = &v64 - v27;
  __chkstk_darwin(v26);
  v31 = &v64 - v30;
  v32 = *(a2 + 16);
  if (v32)
  {
    v70 = v29;
    v71 = v19;
    v64 = v10;
    v65 = v15;
    v33 = a2 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v77 = *(v28 + 72);
    v34 = v76;
    v66 = a1;
    do
    {
      sub_10000CA44(v33, v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v35 = *(v19 + 48);
      sub_10000CA44(v31, v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000CA44(a1, &v21[v35], type metadata accessor for CRLBoardLibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_10000CA44(v21, v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_10004AB24(v34, type metadata accessor for CRLBoardLibraryViewModel.Filter);
LABEL_4:
            sub_10000CAAC(v21, &qword_101A000E0);
            sub_10004AB24(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
            goto LABEL_5;
          }

          v37 = v72;
          sub_100025808(v34, v72, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v38 = v73;
          sub_100025808(&v21[v35], v73, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v39 = *(v67 + 48);
          v40 = v74;
          sub_10000CA44(v37, v74, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          sub_10000CA44(v38, v40 + v39, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v41 = sub_1005B981C(&qword_1019F3480);
          v42 = *(*(v41 - 8) + 48);
          v43 = v42(v40, 5, v41);
          if (v43 <= 2)
          {
            if (v43)
            {
              v34 = v76;
              if (v43 == 1)
              {
                v44 = v74 + v39;
                v45 = v74;
                v46 = v42(v44, 5, v41) == 1;
              }

              else
              {
                v58 = v74 + v39;
                v45 = v74;
                v46 = v42(v58, 5, v41) == 2;
              }

              goto LABEL_27;
            }

            v54 = v74;
            sub_10000CA44(v74, v65, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v55 = v42(v54 + v39, 5, v41);
            v34 = v76;
            if (v55)
            {
              sub_10004AB24(v65, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              a1 = v66;
              v19 = v71;
              v45 = v74;
              goto LABEL_24;
            }

            v60 = v64;
            sub_100025808(v74 + v39, v64, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v61 = v65;
            v47 = sub_100F92694(v65, v60);
            v62 = v60;
            v34 = v76;
            sub_10004AB24(v62, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            sub_10004AB24(v61, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            sub_10004AB24(v74, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            a1 = v66;
            v19 = v71;
LABEL_30:
            sub_10004AB24(v73, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            sub_10004AB24(v72, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            goto LABEL_31;
          }

          if (v43 == 3)
          {
            v56 = v74 + v39;
            v45 = v74;
            v57 = v42(v56, 5, v41);
            a1 = v66;
            v19 = v71;
            v34 = v76;
            if (v57 != 3)
            {
LABEL_24:
              sub_10000CAAC(v45, &qword_1019F3460);
              v47 = 0;
              goto LABEL_30;
            }
          }

          else
          {
            v34 = v76;
            if (v43 == 4)
            {
              v53 = v74 + v39;
              v45 = v74;
              v46 = v42(v53, 5, v41) == 4;
            }

            else
            {
              v59 = v74 + v39;
              v45 = v74;
              v46 = v42(v59, 5, v41) == 5;
            }

LABEL_27:
            a1 = v66;
            v19 = v71;
            if (!v46)
            {
              goto LABEL_24;
            }
          }

          sub_10004AB24(v45, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v47 = 1;
          goto LABEL_30;
        }

        v48 = v70;
        sub_10000CA44(v21, v70, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_10004AB24(v48, _s5BoardVMa);
          v34 = v76;
          goto LABEL_4;
        }

        v49 = v48;
        v50 = v68;
        sub_100025808(v49, v68, _s5BoardVMa);
        v51 = v69;
        sub_100025808(&v21[v35], v69, _s5BoardVMa);
        v47 = sub_1013030EC(v50, v51);
        v52 = v51;
        v19 = v71;
        sub_10004AB24(v52, _s5BoardVMa);
        sub_10004AB24(v50, _s5BoardVMa);
        v34 = v76;
      }

      else
      {
        sub_10000CA44(v21, v75, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_4;
        }

        v47 = *v75 ^ v21[v35] ^ 1;
      }

LABEL_31:
      sub_10004AB24(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10004AB24(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (v47)
      {
        return 1;
      }

LABEL_5:
      v33 += v77;
      --v32;
    }

    while (v32);
  }

  return 0;
}

BOOL sub_1012CE040(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_10004AA7C(a4, 255, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1012CE18C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v9 > *(v7 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    a3(a1);
    return v7;
  }

  v9 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v7 < 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  if (v9 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v11 = __CocoaSet.count.getter();
  v7 = a5(v10, v11);
LABEL_10:

  return a4(a1, v7);
}

void *sub_1012CE2A8(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1012D5A80(a1, type metadata accessor for CRLSceneInfo, &qword_101A28670, type metadata accessor for CRLSceneInfo, sub_100ED9390);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_100E73968(v5, v6);
LABEL_10:

  return sub_1012DA428(a1, v2);
}

void *sub_1012CE3E0(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1012D5A80(a1, type metadata accessor for CRLCollaborationParticipant, &qword_101A00E38, type metadata accessor for CRLCollaborationParticipant, sub_100ED7648);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_100E73128(v5, v6);
LABEL_10:

  return sub_1012DAADC(a1, v2);
}

uint64_t sub_1012CE518(uint64_t a1)
{
  v41 = type metadata accessor for UUID();
  __chkstk_darwin(v41);
  v45 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v36 = v2 + 16;
  v37 = v2;
  v40 = (v2 + 8);
  v42 = a1;

  v9 = 0;
  v10 = &_swiftEmptyDictionarySingleton;
  v38 = v8;
  v39 = a1 + 64;
  while (v7)
  {
    v11 = v9;
LABEL_11:
    v12 = __clz(__rbit64(v7)) | (v11 << 6);
    v13 = *(*(v42 + 48) + 8 * v12);
    v46 = *(*(v42 + 56) + 16 * v12);
    v14 = *(v13 + 24);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 32);
    v43 = v13;

    v17 = v46;
    swift_unknownObjectRetain();
    v18 = v45;
    v16(ObjectType, v14);
    v44 = v17;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v10;
    v20 = sub_10003E994(v18);
    v22 = v10[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_22;
    }

    v26 = v21;
    if (v10[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v20;
        sub_100AA37A4();
        v20 = v34;
      }
    }

    else
    {
      sub_100A8812C(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_10003E994(v45);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    v10 = v47;
    if (v26)
    {
      *(v47[7] + 16 * v20) = v46;
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*v40)(v45, v41);
    }

    else
    {
      v47[(v20 >> 6) + 8] |= 1 << v20;
      v28 = v37;
      v29 = v20;
      v30 = v45;
      v31 = v41;
      (*(v37 + 16))(v10[6] + *(v37 + 72) * v20, v45, v41);
      *(v10[7] + 16 * v29) = v46;
      swift_unknownObjectRelease();

      (*(v28 + 8))(v30, v31);
      v32 = v10[2];
      v24 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v10[2] = v33;
    }

    v9 = v11;
    v8 = v38;
    v4 = v39;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v10;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}