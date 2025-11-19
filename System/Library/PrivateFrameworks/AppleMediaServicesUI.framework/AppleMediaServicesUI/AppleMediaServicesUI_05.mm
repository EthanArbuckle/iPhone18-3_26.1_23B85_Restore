unint64_t sub_10007D1E8()
{
  result = qword_100269298;
  if (!qword_100269298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269298);
  }

  return result;
}

unint64_t sub_10007D240()
{
  result = qword_1002692A0;
  if (!qword_1002692A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002692A0);
  }

  return result;
}

unint64_t sub_10007D294()
{
  result = qword_1002692B0;
  if (!qword_1002692B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002692B0);
  }

  return result;
}

unint64_t sub_10007D2E8()
{
  result = qword_1002692C0;
  if (!qword_1002692C0)
  {
    sub_10007BC70(&qword_1002692B8, &unk_1001E5D00);
    sub_10007D36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002692C0);
  }

  return result;
}

unint64_t sub_10007D36C()
{
  result = qword_1002692C8;
  if (!qword_1002692C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002692C8);
  }

  return result;
}

unint64_t sub_10007D3C0()
{
  result = qword_1002692E0;
  if (!qword_1002692E0)
  {
    sub_10007BC70(&qword_1002692E8, &qword_1001E5D10);
    sub_10007D444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002692E0);
  }

  return result;
}

unint64_t sub_10007D444()
{
  result = qword_1002692F0;
  if (!qword_1002692F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002692F0);
  }

  return result;
}

unint64_t sub_10007D498()
{
  result = qword_100269300;
  if (!qword_100269300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269300);
  }

  return result;
}

unint64_t sub_10007D4EC()
{
  result = qword_100269318;
  if (!qword_100269318)
  {
    sub_10007BC70(&qword_1002692B8, &unk_1001E5D00);
    sub_10007D570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269318);
  }

  return result;
}

unint64_t sub_10007D570()
{
  result = qword_100269320;
  if (!qword_100269320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269320);
  }

  return result;
}

unint64_t sub_10007D5C4(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    v4 = v3;
    sub_10007BC70(&qword_1002692D0, &unk_1001E70E0);
    v4();
    result = sub_10001D6F8();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10007D634()
{
  result = qword_100269330;
  if (!qword_100269330)
  {
    sub_10007BC70(&qword_1002692E8, &qword_1001E5D10);
    sub_10007D6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269330);
  }

  return result;
}

unint64_t sub_10007D6B8()
{
  result = qword_100269338;
  if (!qword_100269338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269338);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AASA.Default.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AASA.Default.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AASA.AppLinks.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AASA.AppLinks.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10007D9D8()
{
  result = qword_100269358;
  if (!qword_100269358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269358);
  }

  return result;
}

unint64_t sub_10007DA30()
{
  result = qword_100269360;
  if (!qword_100269360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269360);
  }

  return result;
}

unint64_t sub_10007DA88()
{
  result = qword_100269368;
  if (!qword_100269368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269368);
  }

  return result;
}

unint64_t sub_10007DAE0()
{
  result = qword_100269370;
  if (!qword_100269370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269370);
  }

  return result;
}

unint64_t sub_10007DB38()
{
  result = qword_100269378;
  if (!qword_100269378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269378);
  }

  return result;
}

unint64_t sub_10007DB90()
{
  result = qword_100269380;
  if (!qword_100269380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269380);
  }

  return result;
}

__n128 sub_10007DD18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007DD2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007DD6C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10007DDC0@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = sub_10007B9A4(&qword_100269538, &qword_1001E6020);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v87 = &v64 - v3;
  v76 = type metadata accessor for CharacterClass();
  v98 = *(v76 - 8);
  v4 = *(v98 + 64);
  __chkstk_darwin(v76);
  v71 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007B9A4(&qword_100269540, &qword_1001E6028);
  v99 = *(v6 - 8);
  v100 = v6;
  v7 = *(v99 + 64);
  v8 = __chkstk_darwin(v6);
  v78 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v85 = &v64 - v11;
  __chkstk_darwin(v10);
  v96 = &v64 - v12;
  v13 = sub_10007B9A4(&qword_100269548, &qword_1001E6030);
  v95 = *(v13 - 8);
  v14 = *(v95 + 64);
  __chkstk_darwin(v13);
  v16 = &v64 - v15;
  v79 = sub_10007B9A4(&qword_100269520, &qword_1001E6010);
  v81 = *(v79 - 8);
  v17 = *(v81 + 64);
  v18 = __chkstk_darwin(v79);
  v80 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v91 = &v64 - v21;
  v22 = __chkstk_darwin(v20);
  v90 = &v64 - v23;
  __chkstk_darwin(v22);
  v25 = &v64 - v24;
  v92 = type metadata accessor for _RegexFactory();
  v26 = *(v92 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v92);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10007B9A4(&qword_100269550, &qword_1001E6038);
  v97 = *(v30 - 8);
  v31 = *(v97 + 64);
  v32 = __chkstk_darwin(v30);
  v34 = &v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v89 = &v64 - v35;
  makeFactory()();
  sub_10007E8E4(v16);
  v36 = sub_10007B9A4(&qword_100269528, &qword_1001E6018);
  v73 = &protocol conformance descriptor for Regex<A>;
  v75 = sub_100006070(&qword_100269558, &qword_100269548, &qword_1001E6030);
  v84 = v25;
  v86 = v36;
  v72 = v13;
  _RegexFactory.capture<A, B>(_:)();
  v74 = *(v95 + 8);
  v95 += 8;
  v74(v16, v13);
  v37 = *(v26 + 8);
  v38 = v92;
  v37(v29, v92);
  v93 = v37;
  v94 = v26 + 8;
  Capture.init(_:)();
  v70 = sub_100006070(&qword_100269560, &qword_100269550, &qword_1001E6038);
  v88 = v30;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v39 = *(v97 + 8);
  v97 += 8;
  v77 = v39;
  v39(v34, v30);
  v103 = 45;
  v104 = 0xE100000000000000;
  v68 = sub_10008055C();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v40 = v71;
  static RegexComponent<>.digit.getter();
  v67 = type metadata accessor for RegexRepetitionBehavior();
  v41 = v87;
  sub_10000A7C0(v87, 1, 1, v67);
  makeFactory()();
  v66 = sub_1000808D8(&qword_100269570, &type metadata accessor for CharacterClass);
  v42 = v76;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v37(v29, v38);
  sub_100009F5C(v41, &qword_100269538, &qword_1001E6020);
  v43 = *(v98 + 8);
  v98 += 8;
  v65 = v43;
  v43(v40, v42);
  v44 = v85;
  OneOrMore.init(_:)();
  v83 = sub_100006070(&qword_100269578, &qword_100269540, &qword_1001E6028);
  v45 = v100;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v46 = v99 + 8;
  v47 = *(v99 + 8);
  v47(v44, v45);
  v69 = v47;
  v99 = v46;
  v101 = 44;
  v102 = 0xE100000000000000;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  static RegexComponent<>.digit.getter();
  v48 = v87;
  sub_10000A7C0(v87, 1, 1, v67);
  makeFactory()();
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v49 = v92;
  v93(v29, v92);
  sub_100009F5C(v48, &qword_100269538, &qword_1001E6020);
  v65(v40, v42);
  v50 = v78;
  OneOrMore.init(_:)();
  v51 = v100;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v47(v50, v51);
  v52 = v84;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  sub_10007ECB8(v52, v105, v106, v90);

  makeFactory()();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v98 = sub_100006070(&qword_100269530, &qword_100269520, &qword_1001E6010);
  v53 = v91;
  v54 = v79;
  v55 = v72;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v56 = v74;
  v74(v16, v55);
  v93(v29, v49);
  v57 = v80;
  sub_10007ECB8(v53, v103, v104, v80);

  makeFactory()();
  v58 = v16;
  v59 = v85;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v56(v58, v55);
  v93(v29, v92);
  v60 = *(v81 + 8);
  v60(v57, v54);
  v60(v91, v54);
  v60(v90, v54);
  v60(v84, v54);
  v61 = v100;
  v62 = v69;
  v69(v59, v100);
  v62(v96, v61);
  return v77(v89, v88);
}

uint64_t sub_10007E8E4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_10007B9A4(&qword_100269548, &qword_1001E6030);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for _RegexFactory();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007B9A4(&qword_100269538, &qword_1001E6020);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for CharacterClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007B9A4(&qword_100269540, &qword_1001E6028);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v27 - v22;
  static RegexComponent<>.digit.getter();
  v24 = type metadata accessor for RegexRepetitionBehavior();
  sub_10000A7C0(v10, 1, 1, v24);
  makeFactory()();
  sub_1000808D8(&qword_100269570, &type metadata accessor for CharacterClass);
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  (*(v28 + 8))(v6, v29);
  sub_100009F5C(v10, &qword_100269538, &qword_1001E6020);
  (*(v12 + 8))(v15, v11);
  OneOrMore.init(_:)();
  sub_100006070(&qword_100269578, &qword_100269540, &qword_1001E6028);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v25 = *(v17 + 8);
  v25(v21, v16);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  return (v25)(v23, v16);
}

uint64_t sub_10007ECB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v19 = a1;
  v6 = sub_10007B9A4(&qword_100269548, &qword_1001E6030);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v17 = type metadata accessor for _RegexFactory();
  v11 = *(v17 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v17);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  makeFactory()();
  v20 = a2;
  v21 = a3;
  sub_10008055C();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  sub_10007B9A4(&qword_100269528, &qword_1001E6018);
  sub_10007B9A4(&qword_100269520, &qword_1001E6010);
  sub_100006070(&qword_100269530, &qword_100269520, &qword_1001E6010);
  sub_100006070(&qword_100269558, &qword_100269548, &qword_1001E6030);
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v17);
}

uint64_t sub_10007EF00()
{
  v0 = sub_10007B9A4(&qword_100269520, &qword_1001E6010);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  sub_100080528();
  sub_100006070(&qword_100269530, &qword_100269520, &qword_1001E6010);
  dispatch thunk of RegexComponent.regex.getter();
  Regex.firstMatch(in:)();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_10007F0E4(uint64_t a1, uint64_t a2)
{
  sub_1000056A8();
  v7 = v6;
  v8 = v6[43];
  v9 = *v3;
  sub_100002D20();
  *v10 = v9;
  v7[44] = v2;

  if (v2)
  {
    v11 = sub_10007F2F4;
  }

  else
  {
    v12 = v7[42];

    v7[45] = a2;
    v7[46] = a1;
    v11 = sub_10007F214;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10007F214()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 232);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v8 = *(v0 + 360);
  v9 = *(v0 + 368);
  v10 = *(v0 + 296);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);

  sub_100007E4C();

  return v13(v9, v8);
}

uint64_t sub_10007F2F4()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 376);
  v4 = *(v0 + 320);
  v5 = *(v0 + 232);

  v6 = swift_allocObject();
  *(v0 + 112) = v5;
  *(v6 + 16) = xmmword_1001E5F60;
  *(v0 + 136) = &unk_100246478;
  v7 = v5;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = *(v0 + 352);
  v11 = *(v0 + 328);
  v12 = *(v0 + 288);
  v36 = *(v0 + 280);
  v37 = *(v0 + 296);
  v34 = *(v0 + 304);
  v35 = *(v0 + 272);
  v13 = *(v0 + 248);
  v32 = *(v0 + 312);
  v33 = *(v0 + 240);
  v31 = *(v0 + 232);
  sub_10000618C();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 112));
  *(v0 + 168) = &type metadata for String;
  sub_100002D0C();
  *(v0 + 144) = v14;
  sub_100008228();
  *(v0 + 152) = v15;
  static LogInterpolation.safe(_:)();
  v16 = sub_10000618C();
  sub_100009F5C(v16, v17, v18);
  _StringGuts.grow(_:)(21);
  *(v0 + 208) = 0;
  *(v0 + 216) = 0xE000000000000000;
  v19._object = 0x80000001001F3300;
  v19._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v19);
  *(v0 + 224) = v10;
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  _print_unlocked<A, B>(_:_:)();
  v20 = *(v0 + 208);
  v21 = *(v0 + 216);
  *(v0 + 200) = &type metadata for String;
  *(v0 + 176) = v20;
  *(v0 + 184) = v21;
  static LogInterpolation.safe(_:)();
  v22 = sub_10000618C();
  sub_100009F5C(v22, v23, v24);
  v25 = static os_log_type_t.debug.getter();
  sub_1000036B0(v25);

  (*(v13 + 8))(v35, v33);
  (*(v12 + 8))(v37, v36);
  v26 = *(v0 + 296);
  v27 = *(v0 + 264);
  v28 = *(v0 + 272);

  sub_100007E4C();

  return v29(0, 0);
}

Swift::Int sub_10007F5B8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10007F600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[52] = a2;
  v3[53] = a3;
  v3[51] = a1;
  v4 = type metadata accessor for AccountCachedServerData.Error();
  v3[54] = v4;
  v5 = *(v4 - 8);
  v3[55] = v5;
  v6 = *(v5 + 64) + 15;
  v3[56] = swift_task_alloc();
  v7 = sub_10007B9A4(&qword_100269588, &qword_1001E6070);
  v3[57] = v7;
  v8 = *(v7 - 8);
  v3[58] = v8;
  v9 = *(v8 + 64) + 15;
  v3[59] = swift_task_alloc();
  v10 = sub_10007B9A4(&qword_100269590, &qword_1001E6078);
  v3[60] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v12 = *(*(sub_10007B9A4(&qword_100269598, &qword_1001E6080) - 8) + 64) + 15;
  v3[63] = swift_task_alloc();
  v13 = sub_10007B9A4(&qword_1002695A0, &qword_1001E6088);
  v3[64] = v13;
  v14 = *(v13 - 8);
  v3[65] = v14;
  v15 = *(v14 + 64) + 15;
  v3[66] = swift_task_alloc();

  return _swift_task_switch(sub_10007F814, 0, 0);
}

uint64_t sub_10007F814()
{
  sub_100004768();
  v1 = v0[66];
  v2 = v0[52];
  sub_10007B9A4(&qword_100269580, &unk_1001E6040);
  AsyncValueSequence.makeAsyncIterator()();
  sub_100007834(&qword_1002695A8, &qword_1002695A0, &qword_1001E6088);
  v3 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v4 = swift_task_alloc();
  v0[67] = v4;
  *v4 = v0;
  v5 = sub_10000B658(v4);

  return dispatch thunk of AsyncIteratorProtocol.next()(v5);
}

uint64_t sub_10007F8CC()
{
  sub_100004768();
  sub_1000056A8();
  v3 = *(v2 + 536);
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  *(v6 + 544) = v0;

  if (v0)
  {
    v7 = sub_1000803E0;
  }

  else
  {
    v7 = sub_10007F9D0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10007F9E4()
{
  v1 = *(v0 + 504);
  if (sub_100009F34(v1, 1, *(v0 + 480)) == 1)
  {
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
    if (qword_100268738 != -1)
    {
      sub_100004E84();
    }

    v2 = *(v0 + 424);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v3 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v3);
    v5 = *(v4 + 72);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    *(v0 + 40) = &unk_100246478;
    *(v0 + 16) = v2;
    v8 = v2;
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 16));
    *(v0 + 72) = &type metadata for String;
    strcpy((v0 + 48), "storefrontId");
    *(v0 + 61) = 0;
    *(v0 + 62) = -5120;
    static LogInterpolation.safe(_:)();
    sub_100009F5C(v0 + 48, &qword_10026D350, &qword_1001E6050);
    *(v0 + 104) = &type metadata for String;
    *(v0 + 80) = 0xD00000000000001ELL;
    *(v0 + 88) = 0x80000001001F3320;
    static LogInterpolation.safe(_:)();
    sub_100009F5C(v0 + 80, &qword_10026D350, &qword_1001E6050);
    v19 = static os_log_type_t.debug.getter();
    sub_1000036B0(v19);

    sub_1000807A4();
    swift_allocError();
    swift_willThrow();
LABEL_17:
    v50 = *(v0 + 528);
    v52 = *(v0 + 496);
    v51 = *(v0 + 504);
    v53 = *(v0 + 488);
    v54 = *(v0 + 472);
    v55 = *(v0 + 448);

    v39 = *(v0 + 8);
    goto LABEL_18;
  }

  sub_1000807F8(v1, *(v0 + 496));
  if (qword_100268738 != -1)
  {
    sub_100004E84();
  }

  v11 = *(v0 + 424);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v12 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v12);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v75 = *(v13 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  *(v0 + 136) = &unk_100246478;
  *(v0 + 112) = v11;
  v16 = v11;
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = *(v0 + 488);
  v69 = *(v0 + 496);
  v72 = *(v0 + 480);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 112));
  *(v0 + 168) = &type metadata for String;
  sub_100002D0C();
  *(v0 + 144) = v21;
  sub_100008228();
  *(v0 + 152) = v22;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(v0 + 144, &qword_10026D350, &qword_1001E6050);
  *(v0 + 200) = &type metadata for String;
  *(v0 + 176) = 0x7573657220746F47;
  *(v0 + 184) = 0xEA0000000000746CLL;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(v0 + 176, &qword_10026D350, &qword_1001E6050);
  v23 = static os_log_type_t.debug.getter();
  sub_1000036B0(v23);

  sub_100080868(v69, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = *(v0 + 488);
  if (EnumCaseMultiPayload == 1)
  {
    v26 = *(v0 + 424);
    (*(*(v0 + 440) + 32))(*(v0 + 448), v25, *(v0 + 432));
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    *(v0 + 232) = &unk_100246478;
    *(v0 + 208) = v26;
    v27 = v26;
    v28 = AMSLogKey();
    if (v28)
    {
      v29 = v28;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v40 = *(v0 + 520);
    v70 = *(v0 + 512);
    v73 = *(v0 + 528);
    v41 = *(v0 + 496);
    v42 = *(v0 + 440);
    v43 = *(v0 + 448);
    v44 = *(v0 + 432);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 208));
    _StringGuts.grow(_:)(33);
    *(v0 + 368) = 0;
    *(v0 + 376) = 0xE000000000000000;
    v45._countAndFlagsBits = 0xD00000000000001FLL;
    v45._object = 0x80000001001F3340;
    String.append(_:)(v45);
    _print_unlocked<A, B>(_:_:)();
    v46 = *(v0 + 368);
    v47 = *(v0 + 376);
    *(v0 + 264) = &type metadata for String;
    *(v0 + 240) = v46;
    *(v0 + 248) = v47;
    static LogInterpolation.safe(_:)();
    sub_100009F5C(v0 + 240, &qword_10026D350, &qword_1001E6050);
    v48 = static os_log_type_t.error.getter();
    sub_1000036B0(v48);

    sub_1000808D8(&qword_1002695B8, &type metadata accessor for AccountCachedServerData.Error);
    swift_allocError();
    (*(v42 + 16))(v49, v43, v44);
    swift_willThrow();
    (*(v42 + 8))(v43, v44);
    sub_100009F5C(v41, &qword_100269590, &qword_1001E6078);
    (*(v40 + 8))(v73, v70);
    goto LABEL_17;
  }

  (*(*(v0 + 464) + 32))(*(v0 + 472), v25, *(v0 + 456));
  AccountCachedServerData.CachedValue.value.getter();
  v30 = *(v0 + 392);
  if (v30)
  {
    v31 = *(v0 + 528);
    v32 = *(v0 + 520);
    v34 = *(v0 + 504);
    v33 = *(v0 + 512);
    v35 = *(v0 + 488);
    v36 = *(v0 + 496);
    v76 = *(v0 + 448);
    v37 = *(v0 + 408);
    v38 = *(v0 + 384);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    sub_100009F5C(v36, &qword_100269590, &qword_1001E6078);
    (*(v32 + 8))(v31, v33);
    *v37 = v38;
    v37[1] = v30;

    v39 = *(v0 + 8);
LABEL_18:

    return v39();
  }

  v57 = *(v0 + 424);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  *(v0 + 296) = &unk_100246478;
  *(v0 + 272) = v57;
  v58 = v57;
  v59 = AMSLogKey();
  if (v59)
  {
    v60 = v59;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v61 = *(v0 + 464);
  v71 = *(v0 + 472);
  v74 = *(v0 + 496);
  v62 = *(v0 + 456);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 272));
  *(v0 + 328) = &type metadata for String;
  sub_100002D0C();
  *(v0 + 304) = v63;
  sub_100008228();
  *(v0 + 312) = v64;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(v0 + 304, &qword_10026D350, &qword_1001E6050);
  *(v0 + 360) = &type metadata for String;
  *(v0 + 336) = 0xD000000000000018;
  *(v0 + 344) = 0x80000001001F3360;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(v0 + 336, &qword_10026D350, &qword_1001E6050);
  v65 = static os_log_type_t.debug.getter();
  sub_1000036B0(v65);

  (*(v61 + 8))(v71, v62);
  sub_100009F5C(v74, &qword_100269590, &qword_1001E6078);
  sub_100007834(&qword_1002695A8, &qword_1002695A0, &qword_1001E6088);
  v66 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v67 = swift_task_alloc();
  *(v0 + 536) = v67;
  *v67 = v0;
  v68 = sub_10000B658();

  return dispatch thunk of AsyncIteratorProtocol.next()(v68);
}

uint64_t sub_1000803E0()
{
  sub_100004768();
  *(v0 + 400) = *(v0 + 544);
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

id sub_100080468()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_100080490()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100080ADC;

  return sub_10003EBB0();
}

unint64_t sub_10008055C()
{
  result = qword_100269568;
  if (!qword_100269568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269568);
  }

  return result;
}

uint64_t sub_1000805B0(uint64_t a1)
{
  v4 = sub_10007B9A4(&qword_100269580, &unk_1001E6040);
  sub_100002CFC(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000806C0;

  return sub_10007F600(a1, v1 + v6, v8);
}

uint64_t sub_1000806C0()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

unint64_t sub_1000807A4()
{
  result = qword_1002695B0;
  if (!qword_1002695B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002695B0);
  }

  return result;
}

uint64_t sub_1000807F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269590, &qword_1001E6078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100080868(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269590, &qword_1001E6078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000808D8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_100080920(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1000809D4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100080A28(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100080A88()
{
  result = qword_1002695C0;
  if (!qword_1002695C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002695C0);
  }

  return result;
}

uint64_t sub_100080AE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10007DC58(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100080B10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100187344(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100080B40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10007DD00(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100080B70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10007DC44(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100080BA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10007DC2C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100080BE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10007DCA8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100080C2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100077DFC();
  *a1 = result;
  return result;
}

uint64_t sub_100080C54()
{
  sub_1000061B4();
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  swift_willThrow();

  sub_100002D8C();
  v4 = *(v0 + 224);

  return v3();
}

uint64_t sub_100080CBC(void *a1, uint64_t a2, void *a3)
{
  v44 = NSDictionary.makeIterator()();
  v4 = type metadata accessor for NSDictionary.Iterator();
  v45 = sub_100048EC8(&qword_100269858, &type metadata accessor for NSDictionary.Iterator);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!*(&v41 + 1))
    {

      return a1;
    }

    *v40 = *&v40[9];
    *&v40[2] = v41;
    *&v40[4] = v42;
    *&v40[6] = v43;
    sub_1000839AC(v40, v36);
    sub_100002C4C(v36, v39);
    sub_100002C4C(&v37, v38);
    sub_100011BAC(v39, v36);
    if (!swift_dynamicCast())
    {
      goto LABEL_21;
    }

    sub_100011BAC(v38, v36);
    sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v5 = v34;
    }

    else
    {
      sub_100011BAC(v38, v36);
      if ((swift_dynamicCast() & 1) == 0 || (v6 = String._bridgeToObjectiveC()(), , v5 = [a3 numberFromString:v6], v6, !v5))
      {
        v21 = sub_100012A94();
        if (v22)
        {
          v23 = v21;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v36[0] = a1;
          v25 = a1[3];
          sub_10007B9A4(&qword_100269868, &qword_1001E6308);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25);
          a1 = *&v36[0];
          v26 = *(*(*&v36[0] + 48) + 16 * v23 + 8);

          v27 = *(a1[7] + 8 * v23);
          _NativeDictionary._delete(at:)();
        }

        else
        {
        }

        goto LABEL_21;
      }
    }

    v7 = v4;
    v8 = v5;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = a1;
    v10 = sub_100012A94();
    v12 = a1[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    v16 = v11;
    sub_10007B9A4(&qword_100269868, &qword_1001E6308);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v14))
    {
      v17 = sub_100012A94();
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_25;
      }

      v15 = v17;
    }

    a1 = *&v36[0];
    if (v16)
    {
      v19 = *(*&v36[0] + 56);
      v20 = *(v19 + 8 * v15);
      *(v19 + 8 * v15) = v8;

      v8 = v20;
    }

    else
    {
      *(*&v36[0] + 8 * (v15 >> 6) + 64) |= 1 << v15;
      v28 = (a1[6] + 16 * v15);
      *v28 = v34;
      v28[1] = v35;
      *(a1[7] + 8 * v15) = v8;
      v29 = a1[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_24;
      }

      a1[2] = v31;
    }

    v4 = v7;
LABEL_21:
    sub_100002C00(v38);
    sub_100002C00(v39);
    sub_100009FB0(v40, &qword_100269860, &qword_1001E6300);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000810F8()
{
  v2 = v1[14];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  v5 = *(v4 + 72);
  sub_100002D7C();
  *(sub_10000A92C() + 16) = xmmword_1001E5F60;
  v6 = type metadata accessor for AccountsObserver();
  sub_100004774(v6);
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000C2F8();

  sub_100002C00(v0);
  LogInterpolation.init(stringLiteral:)();
  sub_100005EAC();
  v9 = v1[10];
  v10 = v1[11];
  v1[9] = v10;
  sub_100017E64(v0 + 4);
  sub_1000047A4(v10);
  (*(v11 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v0 + 4), &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v12 = v1[17];
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13);

  sub_100002D8C();

  return v14();
}

uint64_t sub_1000812F4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v4 = a1;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = 0;

  v43 = v9;
  v44 = v5;
  while (v8)
  {
LABEL_8:
    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = (*(v4 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v4 + 56) + 8 * v12);
    v17 = *(v3 + 16);

    v18 = v16;
    if (!v17 || (v19 = v18, sub_100012A94(), v18 = v19, (v20 & 1) == 0))
    {
      v45 = v18;
      v46 = v18;
      v21 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *a3;
      v23 = v14;
      v24 = sub_100012A94();
      v26 = v48[2];
      v27 = (v25 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_24;
      }

      v29 = v24;
      v30 = v25;
      sub_10007B9A4(&qword_100269800, &qword_1001E62A8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v28))
      {
        v31 = v23;
        v32 = sub_100012A94();
        v5 = v44;
        if ((v30 & 1) != (v33 & 1))
        {
          goto LABEL_26;
        }

        v29 = v32;
      }

      else
      {
        v5 = v44;
        v31 = v23;
      }

      v9 = v43;
      if (v30)
      {
        v34 = v48[7];
        v35 = *(v34 + 8 * v29);
        *(v34 + 8 * v29) = v46;
      }

      else
      {
        v48[(v29 >> 6) + 8] |= 1 << v29;
        v36 = (v48[6] + 16 * v29);
        *v36 = v31;
        v36[1] = v15;
        *(v48[7] + 8 * v29) = v46;
        v37 = v48[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_25;
        }

        v48[2] = v39;
      }

      *a3 = v48;
      sub_10008158C();
      v3 = a2;
      v4 = v42;
      v18 = v45;
    }

    v8 &= v8 - 1;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10008158C()
{
  sub_1000056B4();
  v0 = sub_10000A298();
  v2 = sub_10004585C(v0, v1);
  swift_endAccess();

  sub_1000056B4();
  v3 = sub_10000A298();
  sub_1000AB448(v3);
  swift_endAccess();
  sub_1000056B4();
  v4 = sub_10000A298();
  sub_100049A48(v4);
  swift_endAccess();

  sub_1000056B4();
  v5 = sub_10000A298();
  sub_100049C74(v5, v6);
  swift_endAccess();

  sub_1000056B4();
  v7 = sub_10000A298();
  sub_1000AB424(v7, v8);
  swift_endAccess();
}

uint64_t sub_10008167C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v2 = *(type metadata accessor for LogInterpolation() - 8);
    v3 = *(v2 + 72);
    v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v8[3] = type metadata accessor for AccountsObserver();
    v8[0] = v1;

    v5 = AMSLogKey();
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v8);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v7 = static os_log_type_t.default.getter();
    sub_1000036B0(v7);

    sub_100081C30();
  }

  return result;
}

uint64_t sub_100081854(void *a1)
{
  sub_100026484(a1, &selRef_identifier);
  if (!v3)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v9 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v9);
    v11 = *(v10 + 72);
    sub_100002D7C();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v39[3] = type metadata accessor for AccountsObserver();
    v39[0] = v1;

    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v39);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v27 = static os_log_type_t.error.getter();
    sub_1000036B0(v27);

    return 0;
  }

  sub_10000602C();
  v4 = v1[4];

  v5 = sub_10000821C();
  v7 = sub_1000AA628(v5, v6, v4);

  if (v7 == 2)
  {
    if ([a1 isActive])
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v14 = [a1 isActive] ^ v7;
    v15 = 1;
    if (v7)
    {
      v15 = 2;
    }

    if (v14)
    {
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }
  }

  v16 = sub_100026484(a1, &selRef_ams_creditsString);
  v18 = v17;
  sub_10000602C();
  v19 = v1[5];

  v20 = sub_10000821C();
  v22 = sub_10003A3C0(v20, v21, v19);
  v24 = v23;

  if (!v18)
  {
    if (!v24)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (!v24)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v16 == v22 && v18 == v24)
  {

    goto LABEL_28;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v26 & 1) == 0)
  {
LABEL_23:
    v8 |= 4uLL;
  }

LABEL_28:
  if (sub_100049AF8(a1))
  {
    sub_10000602C();
    v28 = v1[6];

    v29 = sub_10000821C();
    v30 = sub_1000AE37C(v29);

    if (v30)
    {
      sub_1001C52E8();
      v32 = v31;

      if (v32)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    v8 |= 8uLL;
  }

LABEL_34:
  sub_10000602C();
  v33 = v1[7];

  v34 = sub_10000821C();
  v35 = sub_1000AE37C(v34);

  sub_100049C98(a1);
  if (v35)
  {
    sub_10000A298();
    sub_1001C5424();
    v37 = v36;

    if (v37)
    {
      return v8;
    }
  }

  else
  {
  }

  return v8 | 0x10;
}

uint64_t sub_100081C30()
{
  v1 = *v0;
  v2 = *(*(sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280) - 8) + 64);
  sub_100004E78();
  __chkstk_darwin(v3);
  type metadata accessor for TaskPriority();
  sub_100004798();
  sub_10000A7C0(v4, v5, v6, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;
  v8[5] = v1;

  sub_100009DC8();
  sub_1000E349C();
}

uint64_t sub_100081D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = swift_task_alloc();
  v5[16] = v6;
  *v6 = v5;
  v6[1] = sub_100081DBC;

  return sub_1000486A8();
}

uint64_t sub_100081DBC()
{
  sub_1000061B4();
  v3 = v2;
  v4 = *v1;
  sub_100002D98();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v1;
  sub_100002D98();
  *v9 = v8;
  *(v4 + 136) = v0;

  if (v0)
  {
    v10 = sub_100081F64;
  }

  else
  {
    *(v4 + 144) = v3;
    v10 = sub_100081ED8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100081ED8()
{
  sub_1000061B4();
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];

  sub_10008312C(v3, v3, v1);

  sub_100002D8C();

  return v4();
}

uint64_t sub_100081F64()
{
  v2 = v1[14];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  v5 = *(v4 + 72);
  sub_100002D7C();
  *(sub_10000A92C() + 16) = xmmword_1001E5F60;
  v6 = type metadata accessor for AccountsObserver();
  sub_100004774(v6);
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000C2F8();

  sub_100002C00(v0);
  LogInterpolation.init(stringLiteral:)();
  sub_100005EAC();
  v9 = v1[10];
  v10 = v1[11];
  v1[9] = v10;
  sub_100017E64(v0 + 4);
  sub_1000047A4(v10);
  (*(v11 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v0 + 4), &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v12 = v1[17];
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13);

  sub_100002D8C();

  return v14();
}

uint64_t sub_100082160(uint64_t a1, uint64_t a2)
{
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v63 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v63);
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_1002697F8, &qword_1001E62A0);
  v71[0] = Dictionary.init(dictionaryLiteral:)();
  v70 = 0;
  swift_beginAccess();
  v7 = *(a1 + 24);

  sub_1000812F4(v8, a2, v71);

  v9 = sub_100082958(a2, sub_10008391C);
  v10 = 0;
  v11 = v9[2];
  v12 = v9 + 5;
  while (v11 != v10)
  {
    if (v10 >= v9[2])
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    ++v10;
    v13 = *v12;
    v14 = *(v12 - 1);
    sub_100082BC8(v14, v13, v71, &v70);

    v12 += 2;
  }

  v15 = *(v71[0] + 64);
  v58 = v71[0] + 64;
  v16 = 1 << *(v71[0] + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v60 = enum case for DispatchQoS.QoSClass.default(_:);
  v59 = (v4 + 104);
  v61 = (v4 + 8);
  v64 = v71[0];
  swift_bridgeObjectRetain_n();
  v20 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_13:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v23 = *(*(v64 + 56) + ((v21 << 9) | (8 * v22)));
      v66 = v23;
      v65 = sub_1000831AC(v23);
      v24 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
      v26 = v62;
      v25 = v63;
      (*v59)(v62, v60, v63);

      v27 = a1;
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v61)(v26, v25);
      v68 = v24;
      v69 = &protocol witness table for OS_dispatch_queue;
      v67[0] = v28;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_100083BBC;
      *(v29 + 24) = v27;
      v30 = objc_allocWithZone(NSLock);
      v31 = v28;

      v32 = [v30 init];
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = v29;
      v34 = swift_allocObject();
      *(v34 + 16) = v32;
      *(v34 + 24) = v29;
      v35 = v32;
      swift_retain_n();
      v36 = v35;
      Promise.then(perform:orCatchError:on:)();

      a1 = v27;

      sub_100002C00(v67);
      if (!v18)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v58 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_13;
    }
  }

  v37 = v64;

  if (v70 == 1)
  {
    sub_1000831AC(0);
    v38 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v40 = v62;
    v39 = v63;
    (*v59)(v62, v60, v63);

    v41 = static OS_dispatch_queue.global(qos:)();
    (*v61)(v40, v39);
    v68 = v38;
    v69 = &protocol witness table for OS_dispatch_queue;
    v67[0] = v41;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_100083934;
    *(v42 + 24) = a1;
    v43 = objc_allocWithZone(NSLock);
    v44 = v41;

    v45 = [v43 init];
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    *(v46 + 24) = v42;
    v47 = swift_allocObject();
    *(v47 + 16) = v45;
    *(v47 + 24) = v42;
    v48 = v45;
    swift_retain_n();
    v49 = v48;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(v67);
  }

  if (!*(v37 + 16))
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v50 = *(type metadata accessor for LogInterpolation() - 8);
    v51 = *(v50 + 72);
    v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v68 = type metadata accessor for AccountsObserver();
    v67[0] = a1;

    v53 = AMSLogKey();
    if (v53)
    {
      v54 = v53;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v67);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
LABEL_25:
      swift_once();
    }

    v55 = static os_log_type_t.default.getter();
    sub_1000036B0(v55);
  }
}

id sub_100082924(void *a1)
{
  v1 = a1;
  sub_100081854(v1);
  return v1;
}

void *sub_100082958(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_10009B700(0, v3, 0);
    v7 = sub_100083958(v2);
    result = _swiftEmptyArrayStorage;
    v8 = 0;
    v9 = v2 + 64;
    v31 = v2 + 72;
    v32 = v3;
    v33 = v2 + 64;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v2 + 32))
      {
        v10 = v7 >> 6;
        if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_23;
        }

        if (*(v2 + 36) != v5)
        {
          goto LABEL_24;
        }

        v35 = v6;
        v36 = v8;
        v37 = v5;
        v11 = result;
        v12 = *(*(v2 + 56) + 8 * v7);
        v13 = a2();
        v15 = v14;

        result = v11;
        v38 = v11;
        v16 = v2;
        v18 = result[2];
        v17 = result[3];
        if (v18 >= v17 >> 1)
        {
          sub_10009B700((v17 > 1), v18 + 1, 1);
          result = v38;
        }

        result[2] = v18 + 1;
        v19 = &result[2 * v18];
        v19[4] = v13;
        v19[5] = v15;
        v20 = 1 << *(v16 + 32);
        if (v7 >= v20)
        {
          goto LABEL_25;
        }

        v9 = v33;
        v21 = *(v33 + 8 * v10);
        if ((v21 & (1 << v7)) == 0)
        {
          goto LABEL_26;
        }

        v2 = v16;
        if (*(v16 + 36) != v37)
        {
          goto LABEL_27;
        }

        v22 = v21 & (-2 << (v7 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v23 = v32;
        }

        else
        {
          v24 = v10 << 6;
          v25 = v10 + 1;
          v23 = v32;
          v26 = (v31 + 8 * v10);
          while (v25 < (v20 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              v29 = result;
              sub_100083998(v7, v37, v35 & 1);
              result = v29;
              v20 = __clz(__rbit64(v27)) + v24;
              goto LABEL_18;
            }
          }

          v30 = result;
          sub_100083998(v7, v37, v35 & 1);
          result = v30;
        }

LABEL_18:
        v8 = v36 + 1;
        if (v36 + 1 == v23)
        {
          return result;
        }

        v6 = 0;
        v5 = *(v2 + 36);
        v7 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void *sub_100082BC8(void *result, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  if (!a2)
  {
    return result;
  }

  v6 = a2;
  v7 = result;
  result = sub_100026484(result, &selRef_identifier);
  if (!v8)
  {
    return result;
  }

  v9 = [v7 ams_DSID];
  if (!v9)
  {

    *a4 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = v9;
  v11 = *a3;
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *a3;
  sub_1000AC0A8();
  *a3 = v12;

  if (v6)
  {
LABEL_5:
    sub_100082D10(v7);
  }

LABEL_6:
  if ((v6 & 0x10) != 0)
  {
    if (qword_1002685E0 != -1)
    {
      swift_once();
    }

    sub_100092ADC();
  }

  return sub_100049578(v7);
}

void sub_100082D10(void *a1)
{
  if ([a1 ams_isiTunesAccount])
  {
    if (qword_100268608 != -1)
    {
      swift_once();
    }

    v2 = *(qword_100287788 + 16);
    sub_100004AA0();
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v7[4] = sub_100083950;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100177E30;
    v7[3] = &unk_1002465C0;
    v4 = _Block_copy(v7);
    v5 = v2;
    v6 = a1;

    [v5 setUpCacheForAccount:v6 completion:v4];
    _Block_release(v4);
  }
}

uint64_t sub_100082E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v5);
  v7 = *(v6 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  if (a2)
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v19 = type metadata accessor for AccountsObserver();
    v18[0] = a3;

    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v18);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v19 = v17;
    sub_100017E64(v18);
    sub_1000047A4(v17);
    (*(v14 + 16))();
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v18, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v15 = static os_log_type_t.error.getter();
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v19 = type metadata accessor for AccountsObserver();
    v18[0] = a3;

    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100009DBC();
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v18);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v15 = static os_log_type_t.default.getter();
  }

  sub_1000036B0(v15);
}

uint64_t sub_10008312C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 72) lock];
  sub_100082160(a2, a3);
  [*(a1 + 72) unlock];
}

uint64_t sub_1000831AC(void *a1)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(sub_10000A92C() + 16) = xmmword_1001E5F70;
  v21 = type metadata accessor for AccountsObserver();
  v20[0] = v1;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v20);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10);

  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F70;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  strcpy((inited + 48), "AccountChanged");
  *(inited + 63) = -18;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x656372756F73;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0xE600000000000000;
  strcpy((inited + 96), "amsengagementd");
  *(inited + 111) = -18;
  v12 = Dictionary.init(dictionaryLiteral:)();
  if (a1)
  {
    v21 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    v20[0] = a1;
    sub_100002C4C(v20, &v19);
    v13 = a1;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000DFC4();
  }

  sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v14 = sub_10002411C();
  v15 = [objc_allocWithZone(AMSEngagement) initWithBag:v14];

  sub_10005DFA4(v12);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = [v15 enqueueData:isa];

  return Promise<A>.init(_:)();
}

uint64_t sub_100083554()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 80);

  return v0;
}

uint64_t sub_1000835B4()
{
  sub_100083554();

  return swift_deallocClassInstance();
}

uint64_t sub_1000835E8(char a1, uint64_t a2, void *a3)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E61C0;
  LogInterpolation.init(stringLiteral:)();
  v9 = [a3 ams_DSID];
  v10 = v9;
  if (v9)
  {
    v9 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  }

  else
  {
    *(&v15 + 1) = 0;
    *&v16 = 0;
  }

  *&v15 = v10;
  *(&v16 + 1) = v9;
  static LogInterpolation.sensitive(_:)();
  sub_100009FB0(&v15, &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  *(&v16 + 1) = &type metadata for Bool;
  LOBYTE(v15) = a1 & 1;
  static LogInterpolation.safe(_:)();
  sub_100009FB0(&v15, &qword_10026D350, &qword_1001E6050);
  if (a2)
  {
    swift_getErrorValue();
    *(&v16 + 1) = v14;
    v11 = sub_100017E64(&v15);
    (*(*(v14 - 8) + 16))(v11);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  static LogInterpolation.safe(_:)();
  sub_100009FB0(&v15, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12);
}

uint64_t sub_10008386C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_100004A88(v6);

  return sub_100081D28(v7, v8, v9, v5, v4);
}

void sub_100083924(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1000F0498(a1);
}

uint64_t sub_100083958(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_100083998(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000839AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269860, &qword_1001E6300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100083A5C()
{
  result = qword_100269890;
  if (!qword_100269890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269890);
  }

  return result;
}

unint64_t sub_100083AB4()
{
  result = qword_100269898;
  if (!qword_100269898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269898);
  }

  return result;
}

unint64_t sub_100083B0C()
{
  result = qword_1002698A0;
  if (!qword_1002698A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002698A0);
  }

  return result;
}

unint64_t sub_100083B64()
{
  result = qword_1002698A8;
  if (!qword_1002698A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002698A8);
  }

  return result;
}

id sub_100083BC8(uint64_t a1)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = sub_100083C20(a1);

  return v3;
}

id sub_100083C20(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v3 = [v1 ams_iTunesAccountWithDSID:v2];

  return v3;
}

id sub_100083C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5)
{
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  v10 = [v5 ams_accountWithAltDSID:v8 DSID:v9 username:a5 accountTypeIdentifier:ACAccountTypeIdentifieriTunesStore];

  return v10;
}

unint64_t sub_100083D8C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002442B8, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

void *sub_100083DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    v26 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = *v8;

      AnyHashable.init<A>(_:)();
      if (!*(v9 + 16))
      {
        break;
      }

      v10 = sub_10000C818(v27);
      if ((v11 & 1) == 0)
      {
        break;
      }

      sub_100011BAC(*(v9 + 56) + 32 * v10, v28);
      sub_10000E1E8(v27);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_9;
      }

      v29._countAndFlagsBits = 0x6C436E6F69746361;
      v29._object = 0xEB00000000737361;
      v12 = sub_100083D8C(v29);
      switch(v12)
      {
        case 1:
          type metadata accessor for CacheDataAction();
          goto LABEL_24;
        case 2:
          type metadata accessor for CarrierOfferRegistrationAction();
          goto LABEL_24;
        case 3:
          type metadata accessor for OpenURLAction();
          goto LABEL_24;
        case 4:
          type metadata accessor for EnqueueAction();
          goto LABEL_24;
        case 5:
          type metadata accessor for FollowUpNotificationAction();
          goto LABEL_24;
        case 6:
          type metadata accessor for MessageAction();
          goto LABEL_24;
        case 7:
          type metadata accessor for SyncAction();
          goto LABEL_24;
        case 8:
          type metadata accessor for SystemEngagementAction();
          goto LABEL_24;
        case 9:
          type metadata accessor for UserNotificationAction();
          goto LABEL_24;
        case 10:
          goto LABEL_29;
        default:
          type metadata accessor for BadgingAction();
LABEL_24:
          v15 = type metadata accessor for MessageAction();
          if (swift_dynamicCastMetatype() && (a5 & 1) != 0)
          {
            sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
            v16 = *(*(type metadata accessor for LogInterpolation() - 8) + 72);
            *(sub_100004EAC() + 16) = xmmword_1001E5F70;
            type metadata accessor for ActionRunner();
            sub_100002DA4();
            LogInterpolation.init(stringLiteral:)();
            if (qword_1002686B0 != -1)
            {
              sub_100006914();
              swift_once();
            }

            v17 = static os_log_type_t.info.getter();
            sub_1000036B0(v17);

LABEL_29:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000D4DDC(0, v26[2] + 1, 1, v26);
              v26 = v21;
            }

            v19 = v26[2];
            v18 = v26[3];
            if (v19 >= v18 >> 1)
            {
              sub_1000D4DDC(v18 > 1, v19 + 1, 1, v26);
              v26 = v22;
            }

            v26[2] = v19 + 1;
            v26[v19 + 4] = v9;
          }

          else
          {
            v20 = &off_10024FD70;
            switch(v12)
            {
              case 1:
                v15 = type metadata accessor for CacheDataAction();
                v20 = &off_100247E40;
                break;
              case 2:
                v15 = type metadata accessor for CarrierOfferRegistrationAction();
                v20 = &off_100247E50;
                break;
              case 3:
                v15 = type metadata accessor for OpenURLAction();
                v20 = &off_100250EE8;
                break;
              case 4:
                v15 = type metadata accessor for EnqueueAction();
                v20 = &off_10024B468;
                break;
              case 5:
                v15 = type metadata accessor for FollowUpNotificationAction();
                v20 = &off_10024B928;
                break;
              case 6:
                break;
              case 7:
                v15 = type metadata accessor for SyncAction();
                v20 = &off_100252970;
                break;
              case 8:
                v15 = type metadata accessor for SystemEngagementAction();
                v20 = &off_1002529A8;
                break;
              case 9:
                v15 = type metadata accessor for UserNotificationAction();
                v20 = &off_1002542B0;
                break;
              default:
                v15 = type metadata accessor for BadgingAction();
                v20 = &off_100247E10;
                break;
            }

            (v20[1])(v9, a2, v15);
          }

          break;
      }

LABEL_12:
      ++v8;
      if (!--v7)
      {
        return v26;
      }
    }

    sub_10000E1E8(v27);
LABEL_9:
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = *(*(type metadata accessor for LogInterpolation() - 8) + 72);
    *(sub_100004EAC() + 16) = xmmword_1001E5F70;
    type metadata accessor for ActionRunner();
    sub_100002DA4();
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100006914();
      swift_once();
    }

    v14 = static os_log_type_t.error.getter();
    sub_1000036B0(v14);

    goto LABEL_12;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000843D8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, void *a10, uint64_t *a11, void *a12)
{
  v13 = v12;
  v130 = a8;
  v121 = a5;
  v122 = a7;
  v118 = a2;
  v119 = a4;
  v17 = a1;
  v117 = a1;
  v125 = a12;
  v120 = a9;
  v110 = type metadata accessor for URL();
  v18 = sub_100002CC4(v110);
  v109 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_100002DEC();
  v108 = v23 - v22;
  sub_100003D1C();
  v116 = type metadata accessor for FileStoreError();
  v24 = sub_100002CC4(v116);
  v111 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_100002DEC();
  v115 = v29 - v28;
  sub_100003D1C();
  v112 = type metadata accessor for MediaCatalogSyncState();
  v30 = sub_100002DDC(v112);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_1000056E8();
  v113 = v33 - v34;
  sub_100003F08();
  v36 = __chkstk_darwin(v35);
  v38 = &v108 - v37;
  __chkstk_darwin(v36);
  v40 = &v108 - v39;
  swift_defaultActor_initialize();
  v41 = v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier;
  *v41 = v17;
  *(v41 + 8) = a2;
  *(v41 + 16) = a3;
  v114 = v41;
  v42 = (v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_requester);
  v43 = v121;
  *v42 = v119;
  v42[1] = v43;
  v44 = (v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_store);
  v45 = a6;
  *v44 = a6;
  v121 = v44;
  v46 = v122;
  v44[1] = v122;
  v47 = (v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_pageStore);
  v48 = v120;
  *v47 = v130;
  v47[1] = v48;
  v119 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_bag;
  *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_bag) = a10;
  v120 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator;
  v130 = a11;
  sub_1000262E4(a11, v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator);
  v49 = (v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_scheduler);
  v50 = v123;
  *v49 = v125;
  v49[1] = v50;
  v51 = *(v46 + 8);

  v125 = a10;
  v52 = v124;
  v51(v117, v118, a3, v45, v46);
  if (!v52)
  {

    sub_1000061C0();
    sub_10008A33C(v40, v13 + v68, v69);
    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v70 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v70);
    v72 = *(v71 + 72);
    sub_100007E58();
    sub_100017CF0();
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v129 = type metadata accessor for MediaCatalogSyncActor();
    v126 = v13;

    v73 = AMSLogKey();
    if (v73)
    {
      v74 = v73;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100061E2C();

    sub_100002C00(&v126);
    LogInterpolation.init(stringLiteral:)();
    v101 = *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier);
    v102 = *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 8);
    v128 = *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 16);
    v129 = &type metadata for MediaCatalogSyncIdentifier;
    LOBYTE(v126) = v101;
    v127 = v102;

    static LogInterpolation.traceableSensitive(_:)();
    sub_10000A00C(&v126, &qword_10026D350, &qword_1001E6050);
    v103 = static os_log_type_t.default.getter();
    sub_1000036B0(v103);

    goto LABEL_16;
  }

  v126 = v52;
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  v54 = v115;
  v53 = v116;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v124 = v52;

    v75 = *v114;
    v77 = *(v114 + 8);
    v76 = *(v114 + 16);
    v78 = v112;
    v79 = v112[7];
    v80 = type metadata accessor for Date();
    sub_100004798();
    sub_10000A7C0(v81, v82, v83, v80);
    v84 = v78[9];
    sub_100004798();
    sub_10000A7C0(v85, v86, v87, v80);
    v88 = v78[10];

    static Date.distantPast.getter();
    *v38 = v75;
    *(v38 + 1) = v77;
    *(v38 + 2) = v76;
    *(v38 + 24) = 0u;
    *(v38 + 40) = 0u;
    v38[v78[8]] = 2;
    *&v38[v78[11]] = 0;
    *&v38[v78[12]] = _swiftEmptyArrayStorage;
    v89 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
    sub_1000061C0();
    sub_10008A33C(v38, v13 + v89, v90);
    v92 = *v121;
    v91 = v121[1];
    sub_1000060C4();
    swift_beginAccess();
    sub_100004ED4();
    v93 = v13 + v89;
    v94 = v113;
    sub_10008A398(v93, v113, v95);
    (*(v91 + 16))(v94, v92, v91);
    sub_100006928();
    sub_10008A630();
    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v96 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v96);
    v98 = *(v97 + 72);
    sub_100007E58();
    sub_100017CF0();
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v129 = type metadata accessor for MediaCatalogSyncActor();
    v126 = v13;

    v99 = AMSLogKey();
    if (v99)
    {
      v100 = v99;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100061E2C();

    sub_100002C00(&v126);
    LogInterpolation.init(stringLiteral:)();
    v104 = *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier);
    v105 = *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 8);
    v128 = *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 16);
    v129 = &type metadata for MediaCatalogSyncIdentifier;
    LOBYTE(v126) = v104;
    v127 = v105;

    static LogInterpolation.traceableSensitive(_:)();
    sub_10000A00C(&v126, &qword_10026D350, &qword_1001E6050);
    v106 = static os_log_type_t.default.getter();
    sub_1000036B0(v106);

LABEL_16:
    sub_100002C00(v130);
    return v13;
  }

  v55 = v111;
  v56 = (*(v111 + 88))(v54, v53);
  if (v56 != enum case for FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:))
  {
    (*(v55 + 8))(v54, v53);
    goto LABEL_10;
  }

  v57 = v56;

  (*(v55 + 96))(v54, v53);
  v58 = v109;
  v59 = v108;
  v60 = v54;
  v61 = v110;
  (*(v109 + 32))(v108, v60, v110);
  sub_10008A3F4(&qword_100269AA8, &type metadata accessor for FileStoreError);
  swift_allocError();
  v63 = v62;
  v64 = *(sub_10007B9A4(&qword_100269AB0, &unk_1001E6670) + 48);
  (*(v58 + 16))(v63, v59, v61);
  *(v63 + v64) = default argument 1 of FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:)();
  (*(v55 + 104))(v63, v57, v116);
  swift_willThrow();
  (*(v58 + 8))(v59, v61);

  v65 = *(v114 + 16);

  sub_100002C00((v13 + v120));
  type metadata accessor for MediaCatalogSyncActor();
  swift_defaultActor_destroy();

  sub_100002C00(v130);
  v66 = *(*v13 + 48);
  v67 = *(*v13 + 52);
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_100084DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v99 = a5;
  v11 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v11);
  v13 = *(v12 + 64);
  sub_100004E78();
  __chkstk_darwin(v14);
  sub_10001BD5C();
  v96 = type metadata accessor for Date();
  v15 = sub_100002CC4(v96);
  v91 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_100002DEC();
  v21 = v20 - v19;
  v22 = type metadata accessor for MediaCatalogSyncState();
  v23 = sub_100002DDC(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_1000056E8();
  v89 = v26 - v27;
  sub_100003F08();
  __chkstk_darwin(v28);
  v90 = &v88 - v29;
  sub_100003F08();
  __chkstk_darwin(v30);
  v32 = &v88 - v31;
  v105 = v5;
  v33 = v5 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  v98 = v33;
  sub_10008A398(v33, v32, v34);
  v35 = *v32;
  v92 = a1;
  v93 = a2;
  v94 = a3;
  v95 = a4;
  sub_1000CEE1C(a1, v102);
  if (*(&v102[0] + 1))
  {
    v36 = v103;
    v37 = v22;
    v38 = v104;
    sub_10000A00C(v102, &qword_100269AE8, &qword_1001E94D0);
    v39 = (v38 & 1) == 0;
    v22 = v37;
    if (v39)
    {
      v40 = v36;
    }

    else
    {
      v40 = 120.0;
    }
  }

  else
  {
    v40 = 120.0;
  }

  sub_10008A2E0(&v32[v22[9]], v6, &unk_100271EA0, &qword_1001E77F0);
  v41 = v96;
  if (sub_100009F34(v6, 1, v96) == 1)
  {
    sub_100006928();
    sub_10008A630();
    sub_10000A00C(v6, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    v42 = v91;
    (*(v91 + 32))(v21, v6, v41);
    Date.timeIntervalSince(_:)();
    v44 = v43;
    (*(v42 + 8))(v21, v41);
    sub_100006928();
    sub_10008A630();
    if (v40 >= v44)
    {
      if (qword_1002686F8 != -1)
      {
        sub_100002DC8();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v72 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v72);
      v74 = *(v73 + 72);
      sub_1000056F8();
      *(swift_allocObject() + 16) = xmmword_1001E5F60;
      v101 = type metadata accessor for MediaCatalogSyncActor();
      v100[0] = v105;

      v75 = AMSLogKey();
      if (v75)
      {
        v76 = v75;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v100);
      LogInterpolation.init(stringLiteral:)();
      v101 = v22;
      sub_100017E64(v100);
      sub_100004ED4();
      v45 = v98;
      sub_10008A398(v98, v77, v78);
      static LogInterpolation.sensitive(_:)();
      sub_10000A00C(v100, &qword_10026D350, &qword_1001E6050);
      v79 = static os_log_type_t.default.getter();
      sub_1000036B0(v79);

      v63 = v105;
      goto LABEL_20;
    }
  }

  v45 = v98;
  v46 = *(v98 + v22[8]);
  if (v46 == 2 || (v46 & 1) == 0)
  {
    v66 = sub_10000A7F4();
    v63 = v105;
    v67 = v97;
    result = sub_100085468(v66, v68, v69, v70, v71);
    if (v67)
    {
      return result;
    }
  }

  else
  {
    sub_100004ED4();
    v47 = v89;
    sub_10008A398(v45, v89, v48);
    v49 = *v47;
    v50 = v22;
    v52 = *(v47 + 8);
    v51 = *(v47 + 16);
    v53 = v50[7];
    v54 = v90;
    sub_100004798();
    sub_10000A7C0(v55, v56, v57, v41);
    v58 = v50[9];
    sub_100004798();
    sub_10000A7C0(v59, v60, v61, v41);
    v62 = v50[10];

    static Date.distantPast.getter();
    sub_100006928();
    sub_10008A630();
    *v54 = v49;
    *(v54 + 8) = v52;
    *(v54 + 16) = v51;
    v22 = v50;
    *(v54 + 24) = 0u;
    *(v54 + 40) = 0u;
    *(v54 + v50[8]) = 2;
    *(v54 + v50[11]) = 0;
    *(v54 + v50[12]) = _swiftEmptyArrayStorage;
    v63 = v105;
    v64 = v97;
    sub_100088F00(v54, 0x6F63207465736552, 0xEF646574656C706DLL);
    if (v64)
    {
      sub_100006928();
      return sub_10008A630();
    }

    v87 = sub_10000A7F4();
    sub_100084DB4(v87);
    sub_100006928();
    sub_10008A630();
    v45 = v98;
  }

LABEL_20:
  v81 = *(v63 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_pageStore);
  v80 = *(v63 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_pageStore + 8);
  v82 = *(v63 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 8);
  v83 = *(v63 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 16);
  v84 = *(v45 + v22[12]);
  v85 = *(v80 + 24);
  v86 = *(v63 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier);

  v85(v86, v82, v83, v84, v81, v80);
}

uint64_t sub_100085468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v151 = a3;
  v8 = v6;
  v156 = a5;
  v152 = a4;
  sub_100002DFC();
  v148 = type metadata accessor for Date();
  v10 = sub_100002CC4(v148);
  v146 = v11;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v10);
  v144 = v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v15;
  __chkstk_darwin(v14);
  v139 = v135 - v16;
  v17 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v17);
  v19 = *(v18 + 64);
  sub_100004E78();
  __chkstk_darwin(v20);
  v145 = v135 - v21;
  sub_100003D1C();
  v22 = type metadata accessor for LogInterpolation.StringInterpolation();
  v23 = sub_100003D10(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_100002DEC();
  v143 = v27 - v26;
  v28 = sub_100003D1C();
  v29 = type metadata accessor for MediaCatalogSyncScheduleAction(v28);
  v30 = sub_100003D10(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_1000056E8();
  v142 = v33 - v34;
  sub_100003F08();
  __chkstk_darwin(v35);
  v149 = v135 - v36;
  sub_100003D1C();
  v37 = type metadata accessor for MediaCatalogSyncState();
  v38 = sub_100003D10(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_100002DEC();
  v43 = (v42 - v41);
  v44 = sub_10007B9A4(&qword_100269AC8, &qword_1001E6698);
  sub_100003D10(v44);
  v46 = *(v45 + 64);
  sub_100004E78();
  __chkstk_darwin(v47);
  v48 = sub_10001BD5C();
  v147 = type metadata accessor for MediaCatalogSyncScheduleModel(v48);
  v49 = sub_100002CC4(v147);
  v137 = v50;
  v52 = *(v51 + 64);
  v53 = __chkstk_darwin(v49);
  __chkstk_darwin(v53);
  v55 = v135 - v54;
  v56 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v8 + v56, v43, v57);
  v140 = a2;
  v141 = v5;
  v58 = v150;
  sub_1000DA530(v43, v5, a2, v151, v152, v156, v7);
  sub_100006928();
  result = sub_10008A630();
  if (!v58)
  {
    v135[2] = v52;
    v136 = v135 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = v55;
    v60 = v147;
    v61 = v148;
    if (sub_100009F34(v7, 1, v147) == 1)
    {
      return sub_10000A00C(v7, &qword_100269AC8, &qword_1001E6698);
    }

    else
    {
      v135[1] = 0;
      sub_10001CC90();
      v62 = v150;
      sub_10008A33C(v7, v150, v63);
      v64 = *(v60 + 20);
      sub_10008A3F4(&qword_100269AD0, &type metadata accessor for Date);
      if (dispatch thunk of static Comparable.< infix(_:_:)())
      {
        v65 = v146;
        v66 = v62 + v64;
        v67 = v149;
        (*(v146 + 16))(v149, v66, v61);
        v68 = 0;
      }

      else
      {
        v68 = 1;
        v65 = v146;
        v67 = v149;
      }

      v69 = sub_10007B9A4(&qword_100269AD8, &qword_1001E66A0);
      sub_10000A7C0(v67, v68, 1, v69);
      v70 = v67;
      v71 = v142;
      sub_10008A398(v70, v142, type metadata accessor for MediaCatalogSyncScheduleAction);
      v72 = sub_10007B9A4(&qword_100269AD8, &qword_1001E66A0);
      if (sub_100009F34(v71, 1, v72) == 1)
      {
        if (qword_1002686F8 != -1)
        {
          sub_100002DC8();
          swift_once();
        }

        v147 = qword_100287858;
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v73 = type metadata accessor for LogInterpolation();
        sub_100002CFC(v73);
        v75 = *(v74 + 72);
        sub_1000056F8();
        v78 = v77 & ~v76;
        *(swift_allocObject() + 16) = xmmword_1001E5F70;
        v79 = type metadata accessor for MediaCatalogSyncActor();
        sub_100016774(v79);
        v80 = AMSLogKey();
        if (v80)
        {
          v81 = v80;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v153);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v92._countAndFlagsBits = 0xD00000000000002ELL;
        v92._object = 0x80000001001F39D0;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v92);
        v93 = sub_1000D0004(*(v78 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier), *(v78 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 8), *(v78 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 16));
        v155 = &type metadata for String;
        v153 = v93;
        v154 = v94;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v153, &qword_10026D350, &qword_1001E6050);
        v95._countAndFlagsBits = 0;
        v95._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v95);
        LogInterpolation.init(stringInterpolation:)();
        v96 = static os_log_type_t.default.getter();
        sub_1000036B0(v96);

        type metadata accessor for TaskPriority();
        sub_100004798();
        sub_10000A7C0(v97, v98, v99, v100);
        v101 = v139;
        v102 = v61;
        (*(v65 + 16))(v139, v156, v61);
        sub_100005ECC();
        v105 = sub_10008A3F4(v103, v104);
        v106 = v78;
        v107 = (*(v65 + 80) + 72) & ~*(v65 + 80);
        v108 = swift_allocObject();
        *(v108 + 2) = v106;
        *(v108 + 3) = v105;
        v110 = v140;
        v109 = v141;
        *(v108 + 4) = v106;
        *(v108 + 5) = v109;
        v111 = v151;
        v112 = v152;
        *(v108 + 6) = v110;
        *(v108 + 7) = v111;
        *(v108 + 8) = v112;
        (*(v65 + 32))(&v108[v107], v101, v102);

        swift_retain_n();

        sub_1000E349C();

        sub_10003AE50();
        sub_10000B2C8();
      }

      else
      {
        (*(v65 + 32))(v144, v71, v61);
        if (qword_1002686F8 != -1)
        {
          sub_100002DC8();
          swift_once();
        }

        v156 = qword_100287858;
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        sub_100002DFC();
        v82 = type metadata accessor for LogInterpolation();
        sub_100002CFC(v82);
        v84 = *(v83 + 72);
        sub_1000056F8();
        v87 = v86 & ~v85;
        v152 = v88;
        sub_100017CF0();
        *(swift_allocObject() + 16) = xmmword_1001E5F70;
        v89 = type metadata accessor for MediaCatalogSyncActor();
        sub_100016774(v89);
        v90 = AMSLogKey();
        if (v90)
        {
          v91 = v90;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v153);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v113._object = 0x80000001001F39A0;
        v113._countAndFlagsBits = 0xD000000000000027;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v113);
        v114 = sub_1000D0004(*(v87 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier), *(v87 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 8), *(v87 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 16));
        v155 = &type metadata for String;
        v153 = v114;
        v154 = v115;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v153, &qword_10026D350, &qword_1001E6050);
        v116._countAndFlagsBits = 544108320;
        v116._object = 0xE400000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v116);
        v155 = v61;
        v117 = sub_100017E64(&v153);
        v118 = v146;
        (*(v146 + 16))(v117, v144, v61);
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v153, &qword_10026D350, &qword_1001E6050);
        v119._countAndFlagsBits = 0;
        v119._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v119);
        LogInterpolation.init(stringInterpolation:)();
        v120 = static os_log_type_t.default.getter();
        sub_1000036B0(v120);

        type metadata accessor for TaskPriority();
        v121 = v145;
        sub_100004798();
        sub_10000A7C0(v122, v123, v124, v125);
        v126 = v136;
        sub_10008A398(v150, v136, type metadata accessor for MediaCatalogSyncScheduleModel);
        sub_100005ECC();
        v129 = sub_10008A3F4(v127, v128);
        v130 = v87;
        v131 = (*(v137 + 80) + 40) & ~*(v137 + 80);
        v132 = swift_allocObject();
        v132[2] = v130;
        v132[3] = v129;
        v132[4] = v130;
        sub_10001CC90();
        sub_10008A33C(v126, v133 + v131, v134);
        swift_retain_n();
        sub_1001A1E8C(0, 0, v121, &unk_1001E66B0, v132);

        (*(v118 + 8))(v144, v61);
        sub_10003AE50();
        sub_10000B2C8();
      }

      return sub_10008A630();
    }
  }

  return result;
}

uint64_t sub_100085F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v18;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v10 = type metadata accessor for Date();
  v8[19] = v10;
  v11 = *(v10 - 8);
  v8[20] = v11;
  v12 = *(v11 + 64) + 15;
  v8[21] = swift_task_alloc();
  v13 = *(*(sub_10007B9A4(&qword_100269AC0, &unk_1001E6688) - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v14 = *(*(type metadata accessor for MediaCatalogSyncState() - 8) + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v15 = *(*(type metadata accessor for MediaCatalogSyncRequest() - 8) + 64) + 15;
  v8[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000860D0, a4, 0);
}

uint64_t sub_1000860D0()
{
  if (qword_100268830 != -1)
  {
    sub_100006940();
  }

  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v0[27] = qword_100287928;
  sub_100011C54(0xD00000000000001CLL, 0x80000001001F3920);
  v8 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v7 + v8, v2, v9);
  sub_1000159BC();
  sub_1000D0DB0(v10, v11, v12, v13, v14);
  v15 = v0[25];
  v16 = v0[23];
  v17 = v0[24];
  v28 = v0[17];
  v29 = v0[18];
  v19 = v0[15];
  v18 = v0[16];
  v20 = v0[14];
  v30 = v0[13];
  sub_10008A630();
  sub_100004ED4();
  sub_10008A398(v7 + v8, v16, v21);
  sub_1000E02C4(v16, v20, v18, v28, v29, v17);
  sub_10008A630();
  sub_100088F00(v17, 0xD000000000000010, 0x80000001001F3A40);
  swift_task_alloc();
  sub_100015B58();
  v0[28] = v22;
  *v22 = v23;
  v22[1] = sub_100086494;
  v24 = v0[26];
  v25 = v0[22];
  v26 = v0[13];

  return sub_10008718C(v25, v24);
}

uint64_t sub_100086494()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 224);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_100002D20();
  *v5 = v4;

  v6 = sub_1000047B0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10008658C()
{
  sub_100004768();
  v1 = v0[21];
  static Date.now.getter();
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_100086628;
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[13];

  return sub_100087788();
}

uint64_t sub_100086628()
{
  v2 = *v1;
  sub_100002D98();
  *v4 = v3;
  v5 = v2[29];
  *v4 = *v1;
  *(v3 + 240) = v0;

  v6 = v2[21];
  v7 = v2[20];
  v8 = v2[19];
  v9 = v2[13];
  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v10 = sub_100086A2C;
  }

  else
  {
    v10 = sub_1000867A0;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000867A0()
{
  sub_100003D28();
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[22];
  sub_10001CB1C("mediaCatalogSyncPageDownload");
  sub_10000A00C(v4, &qword_100269AC0, &unk_1001E6688);
  sub_100006928();
  sub_10008A630();
  sub_1000056D0();
  sub_10008A630();
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[21];
  v9 = v0[22];

  sub_100002D8C();

  return v11();
}

uint64_t sub_100086880()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 256);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_100002D20();
  *v5 = v4;

  v6 = sub_1000047B0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100086978()
{
  sub_100003D28();
  v1 = v0[31];
  v2 = v0[27];
  sub_10001CB1C("mediaCatalogSyncPageDownload");

  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];

  sub_100002D8C();

  return v9();
}

uint64_t sub_100086A2C()
{
  sub_100003D28();
  v1 = v0[26];
  v2 = v0[24];
  sub_10000A00C(v0[22], &qword_100269AC0, &unk_1001E6688);
  sub_100006928();
  sub_10008A630();
  sub_1000056D0();
  sub_10008A630();
  v0[31] = v0[30];
  if (qword_1002686F8 != -1)
  {
    sub_100002DC8();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  v5 = *(v4 + 72);
  sub_100007E58();
  v6 = swift_allocObject();
  sub_1000115C4(v6, xmmword_1001E5F70);
  LogInterpolation.init(stringLiteral:)();
  sub_10003D2CC();
  swift_getErrorValue();
  v7 = v0[9];
  v8 = v0[10];
  v0[5] = v8;
  sub_100017E64(v0 + 2);
  sub_1000047A4(v8);
  (*(v9 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_10000A00C((v0 + 2), &qword_10026D350, &qword_1001E6050);
  v10 = static os_log_type_t.error.getter();
  sub_1000036B0(v10);

  v11 = swift_task_alloc();
  v0[32] = v11;
  *v11 = v0;
  sub_1000047C0(v11);

  return sub_1000881A8();
}

uint64_t sub_100086C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = type metadata accessor for MediaCatalogSyncState();
  v5[7] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100086CD4, a4, 0);
}

uint64_t sub_100086CD4()
{
  sub_100005B90();
  v1 = v0[9];
  v2 = v0[5];
  v4 = *(v2 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_scheduler);
  v3 = *(v2 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_scheduler + 8);
  v5 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  v0[10] = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v2 + v5, v1, v6);
  v7 = *(v3 + 16);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_100086E38;
  v10 = v0[9];
  v11 = v0[6];

  return v13(v11, v10, v4, v3);
}

uint64_t sub_100086E38()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  v4 = v3[11];
  v5 = v3[9];
  v6 = v3[5];
  v7 = *v0;
  sub_100002D20();
  *v8 = v7;
  *(v10 + 96) = v9;

  sub_100006928();
  sub_10008A630();

  return _swift_task_switch(sub_100086F5C, v6, 0);
}

uint64_t sub_100086F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001BD70();
  if (*(v20 + 96) == 1)
  {
    v21 = *(v20 + 72);
    v22 = *(v20 + 80);
    v24 = *(v20 + 56);
    v23 = *(v20 + 64);
    v25 = *(v20 + 40);
    v26 = *(v20 + 48);
    a16 = v25;
    v27 = *(type metadata accessor for MediaCatalogSyncScheduleModel(0) + 20);
    sub_100004ED4();
    sub_10008A398(v25 + v22, v21, v28);
    HIDWORD(a15) = *v21;
    a13 = v21[3];
    a14 = v21[1];
    a10 = v21[2];
    a11 = v21[4];
    a12 = v21[5];
    a9 = v21[6];
    v29 = v24[7];
    v30 = type metadata accessor for Date();
    sub_100002DDC(v30);
    v32 = *(v31 + 16);
    v32(v23 + v29, (v26 + v27), v30);
    sub_10000A7C0(v23 + v29, 0, 1, v30);
    LOBYTE(v29) = *(v21 + v24[8]);
    sub_10008A2E0(v21 + v24[9], v23 + v24[9], &unk_100271EA0, &qword_1001E77F0);
    v32(v23 + v24[10], v21 + v24[10], v30);
    v33 = *(v21 + v24[11]);
    v34 = *(v21 + v24[12]);

    sub_100006928();
    sub_10008A630();
    *v23 = BYTE4(a15);
    *(v23 + 8) = a14;
    *(v23 + 16) = a10;
    *(v23 + 24) = a13;
    *(v23 + 32) = a11;
    *(v23 + 40) = a12;
    *(v23 + 48) = a9;
    *(v23 + v24[8]) = v29;
    *(v23 + v24[11]) = v33;
    *(v23 + v24[12]) = v34;
    v35 = sub_100023FA4();
    sub_100088F00(v35, 0xD000000000000013, v36);
    v37 = *(v20 + 64);
    sub_100006928();
    sub_10008A630();
  }

  v39 = *(v20 + 64);
  v38 = *(v20 + 72);

  sub_100002D8C();
  sub_100012AFC();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_10008718C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1000047B0();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000871B8()
{
  if (qword_1002686F8 != -1)
  {
    sub_100002DC8();
    swift_once();
  }

  v1 = *(v0 + 160);
  *(v0 + 168) = qword_100287858;
  *(v0 + 176) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  *(v0 + 184) = *(v3 + 72);
  *(v0 + 208) = *(v4 + 80);
  sub_100017CF0();
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v5 = type metadata accessor for MediaCatalogSyncActor();
  *(v0 + 192) = v5;
  *(v0 + 40) = v5;
  *(v0 + 16) = v1;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 16));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 72) = type metadata accessor for MediaCatalogSyncRequest();
  v10 = sub_100017E64((v0 + 48));
  sub_10008A398(v8, v10, type metadata accessor for MediaCatalogSyncRequest);
  static LogInterpolation.traceableSensitive(_:)();
  sub_10000A00C(v0 + 48, &qword_10026D350, &qword_1001E6050);
  v11 = static os_log_type_t.default.getter();
  sub_1000036B0(v11);

  v13 = *(v9 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_requester);
  v12 = *(v9 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_requester + 8);
  v14 = *(v9 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_bag);
  v21 = (*(v12 + 8) + **(v12 + 8));
  v15 = *(*(v12 + 8) + 4);
  swift_task_alloc();
  sub_100015B58();
  *(v0 + 200) = v16;
  *v16 = v17;
  v16[1] = sub_1000874D4;
  v18 = *(v0 + 144);
  v19 = *(v0 + 152);

  return v21(v18, v19, v14, v13, v12);
}

uint64_t sub_1000874D4()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 200);
  v3 = *(v1 + 160);
  v4 = *v0;
  sub_100002D20();
  *v5 = v4;

  v6 = sub_1000047B0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000875CC()
{
  sub_100005B90();
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = ((*(v0 + 208) + 32) & ~*(v0 + 208)) + 3 * *(v0 + 184);
  v5 = swift_allocObject();
  *(v0 + 80) = v3;
  *(v5 + 16) = xmmword_1001E5F60;
  *(v0 + 104) = v1;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = *(v0 + 184);
  v9 = *(v0 + 168);
  v10 = *(v0 + 144);
  v11 = v5 + ((*(v0 + 208) + 32) & ~*(v0 + 208));
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 80));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 136) = sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
  v12 = sub_100017E64((v0 + 112));
  sub_10008A2E0(v10, v12, &qword_100269AC0, &unk_1001E6688);
  static LogInterpolation.sensitive(_:)();
  sub_10000A00C(v0 + 112, &qword_10026D350, &qword_1001E6050);
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13);

  sub_100002D8C();

  return v14();
}

uint64_t sub_100087788()
{
  sub_100004768();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = type metadata accessor for MediaCatalogSyncPageMetadata();
  v1[8] = v4;
  sub_100002CFC(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = sub_100012F04();
  v1[11] = swift_task_alloc();
  v8 = type metadata accessor for MediaCatalogSyncResponse();
  sub_100003D10(v8);
  v10 = *(v9 + 64);
  v1[12] = sub_100023C0C();
  v11 = sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
  v1[13] = v11;
  sub_100003D10(v11);
  v13 = *(v12 + 64);
  v1[14] = sub_100023C0C();
  v14 = type metadata accessor for MediaCatalogSyncState();
  v1[15] = v14;
  sub_100003D10(v14);
  v16 = *(v15 + 64);
  v17 = sub_100012F04();
  v1[17] = sub_100016390(v17);
  v18 = sub_10007B9A4(&qword_100269AB8, &qword_1001E6680);
  sub_100003D10(v18);
  v20 = *(v19 + 64);
  v1[18] = sub_100012F04();
  v1[19] = swift_task_alloc();
  v21 = sub_1000047B0();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_1000878EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int *a16)
{
  sub_10001BD70();
  v17 = v16[7];
  sub_1000889C4(v16[5], v16[19]);
  v18 = v16[16];
  v20 = v16[13];
  v19 = v16[14];
  v21 = v16[7];
  v22 = v16[5];
  v23 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v21 + v23, v18, v24);
  sub_10008A2E0(v22, v19, &qword_100269AC0, &unk_1001E6688);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v16[16];
    v25 = v16[17];
    v27 = v16[15];
    v28 = v16[6];
    v29 = *v16[14];

    LODWORD(a16) = *v26;
    v30 = v26[2];
    v103 = v26[3];
    v105 = v26[1];
    v31 = v26[6];
    v99 = v26[4];
    v101 = v26[5];
    sub_10008A2E0(v26 + v27[7], v25 + v27[7], &unk_100271EA0, &qword_1001E77F0);
    v32 = v27[9];
    v96 = *(v26 + v27[8]);
    v33 = type metadata accessor for Date();
    sub_100004798();
    sub_10000A7C0(v34, v35, v36, v33);
    (*(*(v33 - 8) + 16))(v25 + v27[10], v28, v33);
    v37 = v27 + 11;
    v38 = *(v26 + v27[11]);
    v97 = v38 + 1;
    if (v38 != -1)
    {
      v39 = v16[17];
      v40 = v16[15];
      v42 = *(v40 + 48);
      v41 = (v40 + 48);
      v43 = *(v16[16] + v42);

      sub_100006928();
      sub_10008A630();
      *v39 = a16;
      *(v39 + 8) = v105;
      *(v39 + 16) = v30;
      *(v39 + 24) = v103;
      *(v39 + 32) = v99;
      *(v39 + 40) = v101;
      *(v39 + 48) = v31;
      v25 = v43;
      *(v39 + v27[8]) = v96;
      v44 = v97;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_19;
  }

  v45 = v16[14];
  v19 = v16[12];
  sub_10000B120();
  sub_10008A33C(v46, v19, v47);
  v48 = *(v19 + 72);
  if (v48 == 2 || (v48 & 1) == 0)
  {
    v50 = v16[15];
    v49 = v16[16];
    v51 = *(v49 + *(v50 + 32));
  }

  else
  {
    v50 = v16[15];
    v49 = v16[16];
    v51 = 1;
  }

  LOBYTE(v105) = v51;
  v52 = v16[18];
  v53 = v16[8];
  a16 = (v50 + 48);
  v25 = *(v49 + *(v50 + 48));
  sub_10008A2E0(v16[19], v52, &qword_100269AB8, &qword_1001E6680);
  v54 = sub_100009F34(v52, 1, v53);
  v55 = v16[18];
  if (v54 != 1)
  {
    v57 = v16[10];
    v56 = v16[11];
    sub_10000BD28();
    sub_10008A33C(v55, v56, v58);
    sub_10000A2A4();
    sub_10008A398(v56, v57, v59);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_11:
      v60 = *(v25 + 16);
      if (v60 >= *(v25 + 24) >> 1)
      {
        sub_1000D4FA8();
        v25 = v95;
      }

      v62 = v16[10];
      v61 = v16[11];
      v63 = v16[9];
      sub_100023BF4();
      sub_10008A630();
      *(v25 + 16) = v60 + 1;
      v64 = v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v65 = *(v63 + 72);
      sub_10000BD28();
      sub_10008A33C(v62, v66, v67);
      goto LABEL_14;
    }

LABEL_19:
    v93 = *(v25 + 16);
    sub_1000D4FA8();
    v25 = v94;
    goto LABEL_11;
  }

  sub_10000A00C(v55, &qword_100269AB8, &qword_1001E6680);
LABEL_14:
  v68 = v16[16];
  v69 = v16[17];
  v70 = v16[15];
  v71 = v16[12];
  v72 = *v68;
  v73 = *(v68 + 16);
  v102 = *(v19 + 40);
  v104 = *(v68 + 8);
  v74 = *(v71 + 48);
  v98 = v16[6];
  v100 = *(v19 + 56);
  v75 = *(v71 + 64);

  sub_10000B688();
  sub_10008A630();
  sub_10008A2E0(v68 + v70[7], v69 + v70[7], &unk_100271EA0, &qword_1001E77F0);
  sub_100006928();
  sub_10008A630();
  v76 = v70[9];
  v77 = type metadata accessor for Date();
  sub_100004798();
  sub_10000A7C0(v78, v79, v80, v77);
  (*(*(v77 - 8) + 16))(v69 + v70[10], v98, v77);
  v44 = 0;
  *v69 = v72;
  *(v69 + 8) = v104;
  *(v69 + 16) = v73;
  *(v69 + 24) = v102;
  *(v69 + 32) = v74;
  *(v69 + 40) = v100;
  *(v69 + 48) = v75;
  *(v69 + v70[8]) = v105;
  v37 = v70 + 11;
  v41 = a16;
LABEL_15:
  v81 = v16[17];
  v82 = v16[7];
  *(v81 + *v37) = v44;
  *(v81 + *v41) = v25;
  sub_100088F00(v81, 0x7220726576726553, 0xEF65736E6F707365);
  v83 = v16[7];
  v84 = sub_100003CA8((v83 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator), *(v83 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator + 24));
  v85 = (v83 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier);
  v87 = *(v83 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 8);
  v86 = *(v83 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 16);
  v88 = *v84;
  v89 = *v85;
  v90 = swift_task_alloc();
  v16[20] = v90;
  *v90 = v16;
  sub_100003B30(v90);
  sub_100012AFC();

  return sub_10008DD1C();
}

uint64_t sub_100087EC8()
{
  v2 = *v1;
  sub_100002D98();
  *v4 = v3;
  v5 = *(v2 + 160);
  *v4 = *v1;
  *(v3 + 168) = v0;

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1000880CC;
  }

  else
  {
    v7 = sub_100087FF0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100087FF0()
{
  sub_100005B90();
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  sub_10000A6A4();
  sub_100006928();
  sub_10008A630();
  sub_10000A00C(v2, &qword_100269AB8, &qword_1001E6680);

  sub_100002D8C();

  return v5();
}

uint64_t sub_1000880CC()
{
  sub_100005B90();
  v1 = v0[19];
  v2 = v0[17];
  sub_100006928();
  sub_10008A630();
  sub_10000A00C(v1, &qword_100269AB8, &qword_1001E6680);
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  sub_10000A6A4();

  sub_100002D8C();

  return v8();
}

uint64_t sub_1000881A8()
{
  sub_100004768();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for MediaCatalogSyncState();
  v1[15] = v3;
  sub_100003D10(v3);
  v5 = *(v4 + 64);
  v6 = sub_100012F04();
  v1[17] = sub_100016390(v6);
  v7 = sub_1000047B0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100088228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001BD70();
  v22 = v20[16];
  v21 = v20[17];
  v23 = v20[14];
  v24 = v20[15];
  v25 = v20[13];
  v26 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v23 + v26, v22, v27);
  v28 = *v22;
  v29 = *(v22 + 16);
  v80 = *(v22 + 32);
  v81 = *(v22 + 8);
  v30 = *(v22 + 48);
  v78 = *(v22 + 40);
  v79 = *(v22 + 24);
  sub_10008A2E0(v22 + v24[7], v21 + v24[7], &unk_100271EA0, &qword_1001E77F0);
  v31 = v24[9];
  HIDWORD(a12) = *(v22 + v24[8]);
  v32 = type metadata accessor for Date();
  sub_100004798();
  sub_10000A7C0(v33, v34, v35, v32);
  v36 = v24[10];
  v37 = *(*(v32 - 8) + 16);
  sub_10001D718();
  v38();
  v39 = *(v22 + v24[11]);
  v40 = __CFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
    sub_100002DC8();
    swift_once();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v46 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v46);
    v48 = *(v47 + 72);
    sub_100007E58();
    sub_100017CF0();
    v49 = swift_allocObject();
    sub_1000115C4(v49, xmmword_1001E5F70);
    sub_1000086F4();
    sub_10003D2CC();
    swift_getErrorValue();
    v50 = v20[9];
    v51 = v20[10];
    v20[5] = v51;
    sub_100017E64(v20 + 2);
    sub_1000047A4(v51);
    v53 = *(v52 + 16);
    sub_10001D718();
    v54();
    static LogInterpolation.traceableSensitive(_:)();
    sub_10000A00C((v20 + 2), &qword_10026D350, &qword_1001E6050);
    v55 = static os_log_type_t.error.getter();
    sub_1000036B0(v55);

    if (qword_100268830 != -1)
    {
      sub_100006940();
    }

    sub_10001CB1C("mediaCatalogSyncPageDownload");

    v57 = v20[16];
    v56 = v20[17];

    sub_100002D8C();
    sub_100012AFC();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, v78, v79, v80, v81, a17, a18, a19, a20);
  }

  else
  {
    v42 = v20[17];
    v43 = v28;
    v76 = v41;
    v44 = v20[15];
    v77 = v20[14];
    v45 = *(v20[16] + *(v44 + 48));

    sub_100006928();
    sub_10008A630();
    *v42 = v43;
    *(v42 + 8) = v81;
    *(v42 + 16) = v29;
    *(v42 + 24) = v79;
    *(v42 + 32) = v80;
    *(v42 + 40) = v78;
    *(v42 + 48) = v30;
    *(v42 + v24[8]) = BYTE4(a12);
    *(v42 + v24[11]) = v76;
    *(v42 + *(v44 + 48)) = v45;
    sub_100088F00(v42, 0x6166206C61636F4CLL, 0xED00006572756C69);
    v67 = v20[14];
    v68 = sub_100003CA8((v67 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator), *(v67 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator + 24));
    v69 = (v67 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier);
    v71 = *(v67 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 8);
    v70 = *(v67 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 16);
    v72 = *v68;
    v73 = *v69;
    v74 = swift_task_alloc();
    v20[18] = v74;
    *v74 = v20;
    sub_100003B30(v74);
    sub_100012AFC();

    return sub_10008DD1C();
  }
}

uint64_t sub_100088634()
{
  v2 = *v1;
  sub_100002D98();
  *v4 = v3;
  v5 = *(v2 + 144);
  *v4 = *v1;
  *(v3 + 152) = v0;

  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_1000887C8;
  }

  else
  {
    v7 = sub_10008875C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10008875C()
{
  sub_100004768();
  v1 = *(v0 + 136);
  sub_100006928();
  sub_10008A630();
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);

  sub_100002D8C();

  return v4();
}

uint64_t sub_1000887C8()
{
  sub_100005B90();
  v1 = v0[19];
  v2 = v0[17];
  sub_100006928();
  sub_10008A630();
  if (qword_1002686F8 != -1)
  {
    sub_100002DC8();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  v5 = *(v4 + 72);
  sub_100007E58();
  v6 = swift_allocObject();
  sub_1000115C4(v6, xmmword_1001E5F70);
  sub_1000086F4();
  sub_10003D2CC();
  swift_getErrorValue();
  v7 = v0[9];
  v8 = v0[10];
  v0[5] = v8;
  sub_100017E64(v0 + 2);
  sub_1000047A4(v8);
  v10 = *(v9 + 16);
  sub_10001D718();
  v11();
  static LogInterpolation.traceableSensitive(_:)();
  sub_10000A00C((v0 + 2), &qword_10026D350, &qword_1001E6050);
  v12 = static os_log_type_t.error.getter();
  sub_1000036B0(v12);

  if (qword_100268830 != -1)
  {
    sub_100006940();
  }

  sub_10001CB1C("mediaCatalogSyncPageDownload");

  v14 = v0[16];
  v13 = v0[17];

  sub_100002D8C();

  return v15();
}

uint64_t sub_1000889C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  v48 = type metadata accessor for MediaCatalogSyncPageMetadata();
  v5 = sub_100002DDC(v48);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v10 = v9 - v8;
  v11 = sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
  sub_100002DDC(v11);
  v13 = *(v12 + 64);
  sub_100004E78();
  __chkstk_darwin(v14);
  v16 = v47 - v15;
  v17 = type metadata accessor for MediaCatalogSyncResponse();
  v18 = sub_100002DDC(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100002DEC();
  v23 = v22 - v21;
  sub_10008A2E0(a1, v16, &qword_100269AC0, &unk_1001E6688);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000A00C(v16, &qword_100269AC0, &unk_1001E6688);
LABEL_3:
    v24 = 1;
    v26 = v48;
    v25 = v49;
    return sub_10000A7C0(v25, v24, 1, v26);
  }

  sub_10000B120();
  sub_10008A33C(v16, v23, v27);
  v28 = *(v23 + 72);
  if (v28 != 2 && (v28 & 1) != 0)
  {
    sub_10000B688();
    sub_10008A630();
    goto LABEL_3;
  }

  if (*(v23 + *(v17 + 36)) == 1)
  {
    v29 = *(v3 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_pageStore);
    v30 = v52;
    (*(*(v3 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_pageStore + 8) + 8))(v23);
    if (v30)
    {
      sub_10000B688();
      return sub_10008A630();
    }

    v52 = 0;
    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    v47[1] = qword_100287858;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v37 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v37);
    v39 = *(v38 + 72);
    sub_1000056F8();
    sub_100017CF0();
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v51 = type metadata accessor for MediaCatalogSyncActor();
    v50[0] = v3;

    v40 = AMSLogKey();
    if (v40)
    {
      v41 = v40;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v50);
    LogInterpolation.init(stringLiteral:)();
    v26 = v48;
    v51 = v48;
    sub_100017E64(v50);
    sub_10000A2A4();
    sub_10008A398(v10, v43, v44);
    static LogInterpolation.sensitive(_:)();
    sub_10000A00C(v50, &qword_10026D350, &qword_1001E6050);
    v45 = static os_log_type_t.info.getter();
    sub_1000036B0(v45);

    sub_10000B688();
    sub_10008A630();
    sub_10000BD28();
    v25 = v49;
    sub_10008A33C(v10, v49, v46);
    v24 = 0;
  }

  else
  {
    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v32 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v32);
    v34 = *(v33 + 72);
    sub_1000056F8();
    sub_100017CF0();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v51 = type metadata accessor for MediaCatalogSyncActor();
    v50[0] = v3;

    v35 = AMSLogKey();
    if (v35)
    {
      v36 = v35;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v26 = v48;
    v25 = v49;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v50);
    LogInterpolation.init(stringLiteral:)();
    v42 = static os_log_type_t.info.getter();
    sub_1000036B0(v42);

    sub_10000B688();
    sub_10008A630();
    v24 = 1;
  }

  return sub_10000A7C0(v25, v24, 1, v26);
}

uint64_t sub_100088F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v3 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_store);
  result = (*(*(v3 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_store + 8) + 16))();
  if (!v4)
  {
    v20 = a2;
    v23 = a3;
    v11 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
    swift_beginAccess();
    sub_10008A27C(a1, v5 + v11);
    swift_endAccess();
    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v12 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v12);
    v14 = *(v13 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E6580;
    v22 = type metadata accessor for MediaCatalogSyncActor();
    v21[0] = v5;

    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v21);
    LogInterpolation.init(stringLiteral:)();
    v22 = &type metadata for String;
    v21[0] = v20;
    v21[1] = v23;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(v21, &qword_10026D350, &qword_1001E6050);
    v22 = type metadata accessor for MediaCatalogSyncState();
    sub_100017E64(v21);
    sub_100004ED4();
    sub_10008A398(a1, v17, v18);
    static LogInterpolation.sensitive(_:)();
    sub_10000A00C(v21, &qword_10026D350, &qword_1001E6050);
    v19 = static os_log_type_t.default.getter();
    sub_1000036B0(v19);
  }

  return result;
}

uint64_t sub_1000891A8()
{
  sub_100004768();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 161) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  *(v1 + 64) = v6;
  *(v1 + 160) = v7;
  v8 = type metadata accessor for MediaCatalogSyncState();
  *(v1 + 104) = v8;
  sub_100003D10(v8);
  v10 = *(v9 + 64);
  *(v1 + 112) = sub_100012F04();
  *(v1 + 120) = swift_task_alloc();
  v11 = sub_10007B9A4(&qword_100269AB8, &qword_1001E6680);
  sub_100003D10(v11);
  v13 = *(v12 + 64);
  v14 = sub_100012F04();
  *(v1 + 136) = sub_100016390(v14);
  v15 = type metadata accessor for MediaCatalogSyncPageMetadata();
  *(v1 + 144) = v15;
  sub_100003D10(v15);
  v17 = *(v16 + 64);
  *(v1 + 152) = sub_100023C0C();
  v18 = sub_1000047B0();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_100089294()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  sub_10008A2E0(*(v0 + 88), v1, &qword_100269AB8, &qword_1001E6680);
  if (sub_100009F34(v1, 1, v2) == 1)
  {
    sub_10000A00C(*(v0 + 136), &qword_100269AB8, &qword_1001E6680);
  }

  else
  {
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 96);
    sub_10000BD28();
    sub_10008A33C(v10, v3, v11);
    sub_10000A2A4();
    sub_10008A398(v3, v6, v12);
    sub_10000A7C0(v6, 0, 1, v4);
    v13 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
    sub_1000060C4();
    swift_beginAccess();
    sub_100004ED4();
    sub_10008A398(v9 + v13, v8, v14);
    sub_1000E05D8(v6, v8, v7);
    sub_100006928();
    sub_10008A630();
    sub_10000A00C(v6, &qword_100269AB8, &qword_1001E6680);
    v15 = sub_100023FA4();
    sub_100088F00(v15, 0xD00000000000001CLL, v16);
    v17 = *(v0 + 152);
    v18 = *(v0 + 120);
    sub_10008A630();
    sub_100023BF4();
    sub_10008A630();
  }

  v19 = *(v0 + 104);
  v20 = *(v0 + 161);
  v21 = *(v0 + 96) + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  v22 = *(v21 + *(v19 + 48));
  v23 = (v22 + 16);
  if ((v20 & 1) == 0)
  {
    v23 = (v0 + 80);
  }

  v24 = *v23;

  sub_10008968C(v24, v22);
  v26 = v25;
  v28 = v27;
  if ((v27 & 1) == 0)
  {
    goto LABEL_7;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v35 = swift_dynamicCastClass();
  if (!v35)
  {
    swift_unknownObjectRelease();
    v35 = _swiftEmptyArrayStorage;
  }

  v36 = v35[2];

  if (__OFSUB__(v28 >> 1, v26))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v36 != (v28 >> 1) - v26)
  {
LABEL_19:
    swift_unknownObjectRelease();
LABEL_7:
    sub_100018050();
    sub_10008A19C(v29, v30, v31, v32);
    v34 = v33;
    goto LABEL_14;
  }

  v34 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v34)
  {
    goto LABEL_15;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_14:
  swift_unknownObjectRelease();
LABEL_15:
  v37 = (*(v0 + 96) + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_pageStore);
  v38 = *v37;
  v39 = (*(v37[1] + 16))(*(v0 + 160), *(v0 + 64), *(v0 + 72), v34);
  v40 = *(v0 + 152);
  v42 = *(v0 + 128);
  v41 = *(v0 + 136);
  v43 = *(v0 + 120);
  v49 = *(v0 + 112);
  v44 = *(v0 + 96);
  v45 = *(v0 + 104);

  v46 = *(v21 + *(v45 + 32));
  sub_100089720();

  v47 = *(v0 + 8);

  return v47(v39, v46 & 1);
}

uint64_t sub_10008968C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_10002CE28(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1000E0C5C(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100089720()
{
  v1 = type metadata accessor for MediaCatalogSyncState();
  v2 = sub_100002DDC(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_1000056E8();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = v0 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  result = swift_beginAccess();
  v13 = *(v11 + v1[8]);
  if (v13 != 2 && (v13 & 1) != 0)
  {
    sub_100004ED4();
    sub_10008A398(v11, v7, v14);
    v15 = *v7;
    v17 = *(v7 + 8);
    v16 = *(v7 + 16);
    v18 = v1[7];
    v19 = type metadata accessor for Date();
    sub_100004798();
    sub_10000A7C0(v20, v21, v22, v19);
    v23 = v1[9];
    sub_100004798();
    sub_10000A7C0(v24, v25, v26, v19);
    v27 = v1[10];

    static Date.distantPast.getter();
    sub_100006928();
    sub_10008A630();
    *v10 = v15;
    *(v10 + 1) = v17;
    *(v10 + 2) = v16;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    v10[v1[8]] = 2;
    *&v10[v1[11]] = 0;
    *&v10[v1[12]] = _swiftEmptyArrayStorage;
    v28 = sub_100023FA4();
    sub_100088F00(v28, 0xD000000000000020, v29);
    return sub_10008A630();
  }

  return result;
}

uint64_t sub_100089AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a6;
  v43 = a7;
  v40 = a4;
  v41 = a5;
  v8 = type metadata accessor for Date();
  v9 = sub_100002CC4(v8);
  v49 = v10;
  v50 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v39 = v14 - v13;
  sub_100003D1C();
  v15 = type metadata accessor for MediaCatalogSyncState();
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  sub_1000056E8();
  v20 = (v18 - v19);
  __chkstk_darwin(v21);
  v23 = &v38 - v22;
  v24 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v7 + v24, v20, v25);
  v47 = *v20;
  v26 = *(v20 + 1);
  v27 = *(v20 + 2);
  v28 = *(v20 + 4);
  v45 = *(v20 + 3);
  v46 = v26;
  v29 = *(v20 + 6);
  v44 = *(v20 + 5);
  sub_100008F8C(v16[9]);
  sub_100008F8C(v16[11]);
  (*(v49 + 16))(&v23[v16[12]], &v20[v16[12]], v50);
  v30 = *&v20[v16[13]];
  v31 = *&v20[v16[14]];

  sub_100006928();
  sub_10008A630();
  *v23 = v47;
  v32 = v45;
  *(v23 + 1) = v46;
  *(v23 + 2) = v27;
  *(v23 + 3) = v32;
  *(v23 + 4) = v28;
  *(v23 + 5) = v44;
  *(v23 + 6) = v29;
  v23[v16[10]] = 1;
  *&v23[v16[13]] = v30;
  *&v23[v16[14]] = v31;
  v33 = v48;
  sub_100088F00(v23, 0x6572207465736552, 0xEF64657473657571);
  if (!v33)
  {
    v35 = v49;
    v34 = v50;
    v36 = v39;
    static Date.now.getter();
    sub_100084DB4(v40, v41, v42, v43, v36);
    (*(v35 + 8))(v36, v34);
  }

  sub_100006928();
  return sub_10008A630();
}

uint64_t sub_100089D24()
{
  sub_100004768();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  *(v1 + 145) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  *(v1 + 56) = v6;
  v7 = type metadata accessor for Date();
  *(v1 + 96) = v7;
  sub_100002CFC(v7);
  *(v1 + 104) = v8;
  v10 = *(v9 + 64);
  *(v1 + 112) = sub_100023C0C();
  v11 = type metadata accessor for MediaCatalogSyncState();
  *(v1 + 120) = v11;
  sub_100003D10(v11);
  v13 = *(v12 + 64);
  v14 = sub_100012F04();
  *(v1 + 136) = sub_100016390(v14);
  v15 = sub_1000047B0();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100089DFC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 145);
  v4 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v2 + v4, v1, v5);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  if (v3 == 2)
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 96);
    v46 = *v6;
    v10 = *(v6 + 2);
    v11 = *(v6 + 4);
    v44 = *(v6 + 3);
    v45 = *(v6 + 1);
    v12 = *(v6 + 6);
    v43 = *(v6 + 5);
    sub_10008A2E0(&v6[v8[7]], v7 + v8[7], &unk_100271EA0, &qword_1001E77F0);
    v13 = v8[9];
    v14 = v6[v8[8]];
    sub_100004798();
    sub_10000A7C0(v15, v16, v17, v9);
    v18 = v8[10];

    static Date.distantPast.getter();
    v19 = *&v6[v8[11]];
    v20 = *&v6[v8[12]];

    sub_100006928();
    sub_10008A630();
    *v7 = v46;
    *(v7 + 8) = v45;
    *(v7 + 16) = v10;
    *(v7 + 24) = v44;
    *(v7 + 32) = v11;
    *(v7 + 40) = v43;
    *(v7 + 48) = v12;
    *(v7 + v8[8]) = v14;
    *(v7 + v8[11]) = v19;
    *(v7 + v8[12]) = v20;
  }

  else
  {
    sub_1000061C0();
    v21 = sub_100005B9C();
    sub_10008A33C(v21, v22, v23);
  }

  v24 = *(v0 + 136);
  v25 = *(v0 + 88);
  v26 = *(v0 + 145);
  _StringGuts.grow(_:)(22);
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  v27._object = 0x80000001001F3800;
  v27._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v27);
  *(v0 + 144) = v26;
  _print_unlocked<A, B>(_:_:)();
  sub_100088F00(v24, *(v0 + 40), *(v0 + 48));
  v28 = *(v0 + 112);
  v30 = *(v0 + 80);
  v29 = *(v0 + 88);
  v32 = *(v0 + 64);
  v31 = *(v0 + 72);
  v33 = *(v0 + 56);

  static Date.now.getter();
  sub_1000159BC();
  sub_100084DB4(v34, v35, v36, v37, v38);
  v39 = *(v0 + 136);
  v41 = *(v0 + 128);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  sub_100006928();
  sub_10008A630();

  sub_100002D8C();

  return v42();
}

uint64_t sub_10008A100()
{
  sub_100006928();
  sub_10008A630();
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 16);

  sub_100002C00((v0 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10008A168()
{
  sub_10008A100();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10008A19C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_1000D6478();
    if (v4 != a3)
    {
      v6 = *(type metadata accessor for MediaCatalogSyncPageMetadata() - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_10008A27C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008A2E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10007B9A4(a3, a4);
  sub_100002DDC(v5);
  v7 = *(v6 + 16);
  v8 = sub_100005B9C();
  v9(v8);
  return a2;
}

uint64_t sub_10008A33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100002DDC(v4);
  v6 = *(v5 + 32);
  v7 = sub_100005B9C();
  v8(v7);
  return a2;
}

uint64_t sub_10008A398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100002DDC(v4);
  v6 = *(v5 + 16);
  v7 = sub_100005B9C();
  v8(v7);
  return a2;
}

uint64_t sub_10008A3F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008A43C()
{
  sub_100003D28();
  v2 = sub_100002DFC();
  v3 = type metadata accessor for MediaCatalogSyncScheduleModel(v2);
  sub_100003D10(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  swift_task_alloc();
  sub_100015B58();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_100009BE8;
  sub_100018050();

  return sub_100086C30(v11, v12, v13, v14, v15);
}

uint64_t sub_10008A51C()
{
  sub_100002DFC();
  v2 = type metadata accessor for Date();
  sub_100003D10(v2);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0 + ((*(v3 + 80) + 72) & ~*(v3 + 80));
  swift_task_alloc();
  sub_100015B58();
  *(v1 + 16) = v12;
  *v12 = v13;
  v12[1] = sub_100009BE8;
  sub_100018050();

  return sub_100085F54(v14, v15, v16, v17, v7, v8, v9, v10);
}

uint64_t sub_10008A630()
{
  v1 = sub_100002DFC();
  v3 = v2(v1);
  sub_100002DDC(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_10008A684()
{
  *(v1 + 48) = v0;
  *(v1 + 56) = *v0;
  return sub_10000BD40(sub_10008A6C8, v0);
}

uint64_t sub_10008A6C8()
{
  sub_100004768();
  v1 = *(*(v0 + 48) + 112);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_10008A75C;

  return sub_10008AA94(v1);
}

uint64_t sub_10008A75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1000056A8();
  v21 = v20;
  sub_100004EEC();
  *v22 = v21;
  v24 = *(v23 + 64);
  v25 = *v11;
  sub_100002D20();
  *v26 = v25;

  if (v10)
  {
    v27 = *(v25 + 8);
    sub_10000A598();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }

  else
  {
    v37 = v21[6];
    v21[9] = v13;
    v21[10] = v15;
    v21[11] = v17;
    v21[12] = v19;
    sub_10000A598();

    return _swift_task_switch(v38, v39, v40);
  }
}

uint64_t sub_10008A8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  v12 = v10[9];
  v11 = v10[10];
  v13 = sub_1000CC170(v10[12], v10[11]);

  if (!v13)
  {
    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    v14 = v10[6];
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v15 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v15);
    v17 = *(v16 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v10[5] = type metadata accessor for MediaCatalogSyncCoordinatorActor();
    v10[2] = v14;

    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v10 + 2);
    LogInterpolation.init(stringLiteral:)();
    v20 = static os_log_type_t.default.getter();
    sub_1000036B0(v20);
  }

  v21 = v10[1];
  sub_10000A598();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_10008AAB0()
{
  sub_100004768();
  v1 = sub_1000CC4CC();
  v0[3] = v1;
  v2 = async function pointer to SendableBag.codableDictionary(for:)[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_10008AB50;
  v4 = v0[2];

  return SendableBag.codableDictionary(for:)(v1);
}

uint64_t sub_10008AB50()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 24);
  v6 = *v0;
  sub_100002D20();
  *v7 = v6;
  *(v9 + 40) = v8;

  return _swift_task_switch(sub_10008AC5C, 0, 0);
}

uint64_t sub_10008AC5C()
{
  sub_100005B90();
  v1 = *(v0 + 40);
  v2 = sub_1001CB308(v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = *(v0 + 8);

  return v9(v2, v4, v6, v8);
}

uint64_t sub_10008AD40()
{
  sub_100004768();
  v1[22] = v0;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v2);
  v4 = *(v3 + 64);
  v1[23] = sub_100023C0C();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v1[24] = v5;
  sub_100002CFC(v5);
  v1[25] = v6;
  v8 = *(v7 + 64);
  v1[26] = sub_100023C0C();
  v9 = swift_task_alloc();
  v1[27] = v9;
  *v9 = v1;
  v9[1] = sub_10008AE38;

  return sub_10008A684();
}

uint64_t sub_10008AE38()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  *v4 = *v1;
  v3[28] = v8;

  if (v0)
  {
    v9 = v3[26];
    v10 = v3[23];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    v13 = v3[22];
    sub_10000711C();

    return _swift_task_switch(v14, v15, v16);
  }
}

uint64_t sub_10008B458()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  v3[35] = v0;

  if (v0)
  {
    v9 = v3[28];
    v10 = v3[22];

    v11 = sub_10008BA44;
    v12 = v10;
  }

  else
  {
    v14 = v3[32];
    v13 = v3[33];
    v15 = v3[31];
    v16 = v3[22];

    v11 = sub_10008B590;
    v12 = v16;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10008BA44()
{
  sub_100004768();
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];

  v4 = v0[35];
  v5 = v0[26];
  v6 = v0[23];

  sub_100002D8C();

  return v7();
}

uint64_t sub_10008BAC8()
{
  sub_100004768();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 80) = v3;
  *(v1 + 208) = v4;
  *(v1 + 104) = *v0;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v5);
  v7 = *(v6 + 64);
  *(v1 + 112) = sub_100023C0C();
  v8 = type metadata accessor for Date();
  *(v1 + 120) = v8;
  sub_100002CFC(v8);
  *(v1 + 128) = v9;
  v11 = *(v10 + 64);
  *(v1 + 136) = sub_100023C0C();
  v12 = sub_1000047B0();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10008BBBC()
{
  sub_1000061B4();
  sub_10001CCA8();
  *(v1 + 144) = sub_1000115D0(*(v1 + 208), v2, v3);
  if (v0)
  {
    v4 = *(v1 + 136);
    v5 = *(v1 + 112);

    sub_100002D8C();

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v1 + 152) = v8;
    *v8 = v1;
    v9 = sub_100004AAC(v8);

    return sub_10008AA94(v9);
  }
}

uint64_t sub_10008BCA4()
{
  sub_1000061B4();
  sub_10000A118();
  sub_100004EEC();
  *v4 = v3;
  v5 = *(v1 + 152);
  v6 = *v2;
  sub_100002D98();
  *v7 = v6;
  v10[20] = v8;
  v10[21] = v9;
  v10[22] = v11;
  v10[23] = v12;
  v10[24] = v0;

  sub_10000A6B4();
  v14 = *(v13 + 96);
  sub_10000711C();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_10008BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  v15 = *(v14 + 176);
  v16 = *(v14 + 184);
  if (sub_1000CC430(*(v14 + 208), *(v14 + 80), *(v14 + 88), *(v14 + 160), *(v14 + 168)))
  {
    v17 = *(v14 + 136);
    v18 = *(v14 + 144);
    static Date.now.getter();
    sub_1000047B0();
    sub_10000A820();

    return _swift_task_switch(v19, v20, v21);
  }

  else
  {
    v23 = *(v14 + 184);
    v24 = *(v14 + 160);
    v25 = *(v14 + 168);

    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    v26 = *(v14 + 96);
    v54 = qword_100287858;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v27 = sub_10000620C();
    sub_100002CFC(v27);
    v29 = *(v28 + 72);
    *(sub_100007E68() + 16) = xmmword_1001E5F70;
    v30 = type metadata accessor for MediaCatalogSyncCoordinatorActor();
    sub_100006734(v30);
    v31 = AMSLogKey();
    if (v31)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v53 = *(v14 + 144);
    v35 = *(v14 + 112);
    v36 = *(v14 + 80);
    v37 = *(v14 + 88);
    v38 = *(v14 + 208);
    sub_100005BA8();

    v39 = sub_10000AE3C((v14 + 16));
    sub_100009DDC("Media Catalog Sync disabled in the bag for ", v39);
    sub_100012B18(&type metadata for MediaCatalogSyncIdentifier);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v40 = sub_100002C5C(v34);
    sub_100003B48(v40);
    LogInterpolation.init(stringInterpolation:)();
    v41 = static os_log_type_t.default.getter();
    sub_1000036B0(v41);

    v42 = *(v14 + 136);
    v43 = *(v14 + 112);

    sub_10000B6A0();
    sub_10000A820();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, v53, v54, a12, a13, a14);
  }
}

uint64_t sub_10008BFF8()
{
  v1 = v0[24];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[16];
  sub_100084DB4(v0[20], v0[21], v0[22], v0[23], v2);
  v0[25] = v1;
  (*(v4 + 8))(v2, v3);

  v5 = v0[12];
  if (v1)
  {
    v6 = sub_10008C1C4;
  }

  else
  {
    v6 = sub_10008C0E8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008C0E8()
{
  sub_100004768();
  v1 = v0[18];

  v2 = v0[17];
  v3 = v0[14];

  sub_10000B6A0();

  return v4();
}

uint64_t sub_10008C154()
{
  sub_100004768();
  v1 = v0[24];
  v2 = v0[18];

  v3 = v0[17];
  v4 = v0[14];

  sub_100002D8C();

  return v5();
}

uint64_t sub_10008C1C4()
{
  sub_100004768();
  v1 = v0[25];
  v2 = v0[18];

  v3 = v0[17];
  v4 = v0[14];

  sub_100002D8C();

  return v5();
}

uint64_t sub_10008C234(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 128) = a1;
  *(v5 + 48) = *v4;
  return sub_10000BD40(sub_10008C280, v4);
}

uint64_t sub_10008C280()
{
  sub_1000061B4();
  v2 = *(*(v1 + 40) + 112);
  *(v1 + 56) = sub_1000115D0(*(v1 + 128), *(v1 + 16), *(v1 + 24));
  if (v0)
  {
    sub_10000B2E0();

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v1 + 64) = v5;
    *v5 = v1;
    v6 = sub_100004AAC(v5);

    return sub_10008AA94(v6);
  }
}

uint64_t sub_10008C35C()
{
  sub_1000061B4();
  sub_10000A118();
  sub_100004EEC();
  *v4 = v3;
  v5 = *(v1 + 64);
  v6 = *v2;
  sub_100002D98();
  *v7 = v6;
  v10[9] = v8;
  v10[10] = v9;
  v10[11] = v11;
  v10[12] = v0;

  sub_10000A6B4();
  v13 = *(v12 + 40);
  sub_10000711C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10008C478()
{
  sub_100005B90();
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  if (!*(v0 + 80) || (v3 = sub_1000AA6C0(*(v0 + 16), *(v0 + 24), *(v0 + 80)), , , , v3 != 1))
  {
  }

  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_10008C5AC;
  v5 = *(v0 + 56);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 128);

  return sub_1000891A8();
}

uint64_t sub_10008C5AC(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;
  sub_100002D20();
  *v8 = v7;
  v9 = *(v6 + 104);
  *v8 = *v3;
  *(v7 + 112) = v2;

  v10 = *(v6 + 40);
  if (v2)
  {
    v11 = sub_10008C7B0;
  }

  else
  {
    *(v7 + 129) = a2 & 1;
    *(v7 + 120) = a1;
    v11 = sub_10008C6EC;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_10008C6EC()
{
  sub_100004768();
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);
  v3 = *(v0 + 120);
  v4 = *(v0 + 129);

  return v2(v3, v4);
}

uint64_t sub_10008C754()
{
  sub_100004768();
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);

  sub_10000B2E0();

  return v3();
}

uint64_t sub_10008C7B0()
{
  sub_100004768();
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);

  sub_10000B2E0();

  return v3();
}

uint64_t sub_10008C80C()
{
  sub_100004768();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10008C898;

  return sub_10008A684();
}

uint64_t sub_10008C898()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 32) = v8;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v3 + 16);
    sub_10000711C();

    return _swift_task_switch(v12, v13, v14);
  }
}

uint64_t sub_10008C9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  result = v10[4];
  v12 = *(result + 16);
  v10[5] = v12;
  v10[6] = 0;
  if (v12)
  {
    if (*(result + 16))
    {
      v10[7] = *(result + 48);
      v10[8] = *(result + 64);
      v10[9] = *(result + 56);
      v13 = *(result + 40);
      v14 = *(result + 32);

      v15 = swift_task_alloc();
      v10[10] = v15;
      *v15 = v10;
      sub_1000061D8(v15);
      sub_10000A598();

      return sub_10008CD88();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_10000B6A0();
    sub_10000A598();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  return result;
}

uint64_t sub_10008CACC()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[4];
    v10 = v3[2];

    v11 = sub_10008CD18;
    v12 = v10;
  }

  else
  {
    v14 = v3[8];
    v13 = v3[9];
    v15 = v3[7];
    v16 = v3[2];

    v11 = sub_10008CC04;
    v12 = v16;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10008CC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  v11 = v10[5];
  v12 = v10[6] + 1;
  v10[6] = v12;
  result = v10[4];
  if (v12 == v11)
  {

    sub_10000B6A0();
    sub_10000A598();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
  }

  else if (v12 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v22 = result + 56 * v12;
    v10[7] = *(v22 + 48);
    v10[8] = *(v22 + 64);
    v10[9] = *(v22 + 56);
    v23 = *(v22 + 40);
    v24 = *(v22 + 32);

    v25 = swift_task_alloc();
    v10[10] = v25;
    *v25 = v10;
    sub_1000061D8();
    sub_10000A598();

    return sub_10008CD88();
  }

  return result;
}

uint64_t sub_10008CD18()
{
  sub_100004768();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[11];
  sub_100002D8C();

  return v5();
}

uint64_t sub_10008CD88()
{
  sub_100004768();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 80) = v3;
  *(v1 + 184) = v4;
  *(v1 + 104) = *v0;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v5);
  v7 = *(v6 + 64);
  *(v1 + 112) = sub_100023C0C();
  v8 = sub_1000047B0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10008CE30()
{
  sub_1000061B4();
  sub_10001CCA8();
  *(v1 + 120) = sub_1000115D0(*(v1 + 184), v2, v3);
  if (v0)
  {
    v4 = *(v1 + 112);

    sub_100002D8C();

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v1 + 128) = v7;
    *v7 = v1;
    v8 = sub_100004AAC(v7);

    return sub_10008AA94(v8);
  }
}

uint64_t sub_10008CF0C()
{
  sub_1000061B4();
  sub_10000A118();
  sub_100004EEC();
  *v3 = v2;
  v4 = *(v0 + 128);
  v5 = *v1;
  sub_100002D98();
  *v6 = v5;
  sub_10003D2D8(v7, v8, v9, v10, v11);
  sub_10000A6B4();
  v13 = *(v12 + 96);
  sub_10000711C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10008D01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  v15 = *(v14 + 152);
  v16 = *(v14 + 160);
  if (sub_1000CC430(*(v14 + 184), *(v14 + 80), *(v14 + 88), *(v14 + 136), *(v14 + 144)))
  {
    v17 = *(v14 + 120);
    sub_10000A820();

    return _swift_task_switch(v18, v19, v20);
  }

  else
  {
    v22 = *(v14 + 160);
    v23 = *(v14 + 136);
    v24 = *(v14 + 144);

    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    v25 = *(v14 + 96);
    v48 = qword_100287858;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v26 = sub_10000620C();
    sub_100002CFC(v26);
    v28 = *(v27 + 72);
    *(sub_100007E68() + 16) = xmmword_1001E5F70;
    v29 = type metadata accessor for MediaCatalogSyncCoordinatorActor();
    sub_100006734(v29);
    v30 = AMSLogKey();
    if (v30)
    {
      v31 = v30;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    sub_100003D34();
    v34 = *(v14 + 184);
    sub_100005BA8();

    v35 = sub_10000AE3C((v14 + 16));
    sub_100009DDC("Media Catalog Sync disabled in the bag for ", v35);
    sub_100012B18(&type metadata for MediaCatalogSyncIdentifier);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v36 = sub_100002C5C(v33);
    sub_100003B48(v36);
    LogInterpolation.init(stringInterpolation:)();
    v37 = static os_log_type_t.default.getter();
    sub_1000036B0(v37);

    v38 = *(v14 + 112);

    sub_10000B6A0();
    sub_10000A820();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, v48, a12, a13, a14);
  }
}

uint64_t sub_10008D234()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  sub_100089AA4(*(v0 + 184), *(v0 + 80), *(v0 + 88), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));
  *(v0 + 176) = v1;

  v3 = *(v0 + 96);
  if (v1)
  {
    v4 = sub_10008D3C0;
  }

  else
  {
    v4 = sub_10008D2FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10008D2FC()
{
  sub_100004768();
  v1 = *(v0 + 120);

  v2 = *(v0 + 112);

  sub_10000B6A0();

  return v3();
}

uint64_t sub_10008D35C()
{
  sub_100004768();
  v1 = v0[21];
  v2 = v0[15];

  v3 = v0[14];

  sub_100002D8C();

  return v4();
}

uint64_t sub_10008D3C0()
{
  sub_100004768();
  v1 = v0[22];
  v2 = v0[15];

  v3 = v0[14];

  sub_100002D8C();

  return v4();
}

uint64_t sub_10008D424()
{
  sub_100004768();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 193) = v3;
  *(v1 + 80) = v4;
  *(v1 + 192) = v5;
  *(v1 + 104) = *v0;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v6);
  v8 = *(v7 + 64);
  *(v1 + 112) = sub_100023C0C();
  v9 = sub_1000047B0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10008D4D0()
{
  sub_1000061B4();
  sub_10001CCA8();
  *(v1 + 120) = sub_1000115D0(*(v1 + 192), v2, v3);
  if (v0)
  {
    v4 = *(v1 + 112);

    sub_100002D8C();

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v1 + 128) = v7;
    *v7 = v1;
    v8 = sub_100004AAC(v7);

    return sub_10008AA94(v8);
  }
}

uint64_t sub_10008D5AC()
{
  sub_1000061B4();
  sub_10000A118();
  sub_100004EEC();
  *v3 = v2;
  v4 = *(v0 + 128);
  v5 = *v1;
  sub_100002D98();
  *v6 = v5;
  sub_10003D2D8(v7, v8, v9, v10, v11);
  sub_10000A6B4();
  v13 = *(v12 + 96);
  sub_10000711C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10008D6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  v15 = *(v14 + 152);
  v16 = *(v14 + 160);
  if (sub_1000CC430(*(v14 + 192), *(v14 + 80), *(v14 + 88), *(v14 + 136), *(v14 + 144)))
  {
    v17 = swift_task_alloc();
    *(v14 + 176) = v17;
    *v17 = v14;
    v17[1] = sub_10008D914;
    v18 = *(v14 + 152);
    v19 = *(v14 + 160);
    v21 = *(v14 + 136);
    v20 = *(v14 + 144);
    v22 = *(v14 + 120);
    v23 = *(v14 + 193);
    sub_10000A820();

    return sub_100089D24();
  }

  else
  {
    v26 = *(v14 + 160);
    v27 = *(v14 + 136);
    v28 = *(v14 + 144);

    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    v29 = *(v14 + 96);
    v51 = qword_100287858;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v30 = sub_10000620C();
    sub_100002CFC(v30);
    v32 = *(v31 + 72);
    *(sub_100007E68() + 16) = xmmword_1001E5F70;
    v33 = type metadata accessor for MediaCatalogSyncCoordinatorActor();
    sub_100006734(v33);
    v34 = AMSLogKey();
    if (v34)
    {
      v35 = v34;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    sub_100003D34();
    v38 = *(v14 + 192);
    sub_100005BA8();

    v39 = sub_10000AE3C((v14 + 16));
    sub_100009DDC("Media Catalog Sync disabled in the bag for ", v39);
    sub_100012B18(&type metadata for MediaCatalogSyncIdentifier);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v40 = sub_100002C5C(v37);
    sub_100003B48(v40);
    LogInterpolation.init(stringInterpolation:)();
    v41 = static os_log_type_t.default.getter();
    sub_1000036B0(v41);

    v42 = *(v14 + 112);

    sub_10000B6A0();
    sub_10000A820();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, v51, a12, a13, a14);
  }
}

uint64_t sub_10008D914()
{
  v2 = *v1;
  sub_100004EEC();
  *v4 = v3;
  v5 = v2[22];
  v6 = v2[20];
  v7 = v2[18];
  v8 = v2[17];
  *v4 = *v1;
  *(v3 + 184) = v0;

  v9 = v2[12];
  if (v0)
  {
    v10 = sub_10008DA94;
  }

  else
  {
    v10 = sub_10008E15C;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10008DA94()
{
  sub_100004768();
  v1 = v0[23];
  v2 = v0[15];

  v3 = v0[14];

  sub_100002D8C();

  return v4();
}

void *sub_10008DAF8(unsigned int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = v4;
  swift_beginAccess();
  v11 = *(v4 + 120);
  if (*(v11 + 16))
  {

    v12 = sub_1000AABE8();
    if (v13)
    {
      a4 = *(*(v11 + 56) + 8 * v12);

      return a4;
    }
  }

  v20[3] = type metadata accessor for MediaCatalogSyncCoordinatorActor();
  v20[4] = &off_100246728;
  v20[0] = v6;
  v14 = type metadata accessor for MediaCatalogSyncActor();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = sub_1000843D8(a1, a2, a3, &type metadata for MediaCatalogSyncNetworking, &off_1002467F8, &type metadata for MediaCatalogSyncFileSystemStateStore, &off_1002467A0, &type metadata for MediaCatalogSyncFileSystemPageStore.Kind, &off_100246760, a4, v20, &type metadata for MediaCatalogSyncBackgroundTaskScheduler);
  if (!v5)
  {
    a4 = v17;
    swift_beginAccess();

    v18 = *(v6 + 120);
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + 120);
    sub_1000AC40C();
    *(v6 + 120) = v21;
    swift_endAccess();
  }

  return a4;
}

uint64_t sub_10008DCC0()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10008DCF0()
{
  sub_10008DCC0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10008DD1C()
{
  sub_100004768();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 80) = v3;
  *(v1 + 120) = v4;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v5);
  v7 = *(v6 + 64);
  *(v1 + 104) = sub_100023C0C();
  v8 = sub_1000047B0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10008DD9C()
{
  if (qword_1002686F8 != -1)
  {
    sub_100002DC8();
    swift_once();
  }

  v1 = *(v0 + 96);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = sub_10000620C();
  sub_100002CFC(v2);
  v4 = *(v3 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v5 = type metadata accessor for MediaCatalogSyncCoordinatorActor();
  sub_100006734(v5);
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = *(v0 + 104);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 120);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x80000001001F3BC0;
  v12._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  v13 = sub_1000D0004(v11, v10, v9);
  *(v0 + 72) = &type metadata for String;
  *(v0 + 48) = v13;
  *(v0 + 56) = v14;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v15 = sub_100002C5C(v0 + 48);
  sub_100003B48(v15);
  LogInterpolation.init(stringInterpolation:)();
  v16 = static os_log_type_t.default.getter();
  sub_1000036B0(v16);

  v17 = swift_task_alloc();
  *(v0 + 112) = v17;
  *v17 = v0;
  v17[1] = sub_10008DFF0;
  v18 = *(v0 + 96);

  return sub_10008AD40();
}

uint64_t sub_10008DFF0()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_100002D20();
  *v5 = v4;

  sub_100002D8C();

  return v6();
}

void sub_10008E0EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10008E160@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  sub_10001E8B8();
  v6 = type metadata accessor for URL();
  if (sub_100009F34(v5, 1, v6) != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  sub_10001DCD4();
  result = sub_100009F34(v5, 1, v6);
  if (result != 1)
  {
    return sub_10008E750(v5);
  }

  return result;
}

uint64_t sub_10008E26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000B6B0(a1, a2, a3, a4);
  v6 = sub_100002CC4(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v11 = v10 - v9;
  v12 = type metadata accessor for MediaCatalogSyncPageStoreCore();
  v13 = sub_100002DDC(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100002DEC();
  v18 = (v17 - v16);
  result = sub_10008E160(v11);
  if (!v4)
  {
    v18[3] = type metadata accessor for LiveFileStore();
    v18[4] = &protocol witness table for LiveFileStore;
    sub_100017E64(v18);
    LiveFileStore.init()();
    v20 = sub_100007874();
    v21(v20);
    sub_10000BD48();
    sub_1000D3EDC(v22);
    return sub_10008E6F4(v18);
  }

  return result;
}

uint64_t sub_10008E3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = sub_100002CC4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v12 = v11 - v10;
  v13 = type metadata accessor for MediaCatalogSyncPageStoreCore();
  v14 = sub_100002DDC(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100002DEC();
  v19 = (v18 - v17);
  v20 = *a1;
  v21 = *(a1 + 16);
  v24 = *(a1 + 8);
  result = sub_10008E160(v12);
  if (!v2)
  {
    v19[3] = type metadata accessor for LiveFileStore();
    v19[4] = &protocol witness table for LiveFileStore;
    sub_100017E64(v19);
    LiveFileStore.init()();
    (*(v7 + 32))(v19 + *(v13 + 20), v12, v4);
    v23 = v19 + *(v13 + 24);
    *v23 = v20;
    *(v23 + 1) = v24;
    *(v23 + 2) = v21;

    sub_1000D422C(a1, a2);
    return sub_10008E6F4(v19);
  }

  return result;
}

void *sub_10008E550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000B6B0(a1, a2, a3, a4);
  v6 = sub_100002CC4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v13 = v12 - v11;
  v14 = type metadata accessor for MediaCatalogSyncPageStoreCore();
  v15 = sub_100002DDC(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100002DEC();
  v20 = (v19 - v18);
  sub_10008E160(v13);
  if (!v4)
  {
    v20[3] = type metadata accessor for LiveFileStore();
    v20[4] = &protocol witness table for LiveFileStore;
    sub_100017E64(v20);
    LiveFileStore.init()();
    v21 = sub_100007874();
    v22(v21);
    sub_10000BD48();
    v8 = sub_1000D4534(v24);
    sub_10008E6F4(v20);
  }

  return v8;
}

uint64_t sub_10008E6F4(uint64_t a1)
{
  v2 = type metadata accessor for MediaCatalogSyncPageStoreCore();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008E750(uint64_t a1)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008E7C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  sub_10001E8B8();
  v6 = type metadata accessor for URL();
  if (sub_100009F34(v5, 1, v6) != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  sub_10001DCD4();
  result = sub_100009F34(v5, 1, v6);
  if (result != 1)
  {
    return sub_10008E750(v5);
  }

  return result;
}

uint64_t sub_10008E8D4(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for URL();
  v8 = sub_100002CC4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  v15 = v14 - v13;
  v16 = type metadata accessor for MediaCatalogSyncStateStoreCore();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  sub_100002DEC();
  v20 = (v19 - v18);
  result = sub_10008E7C8(v15);
  if (!v3)
  {
    v20[3] = type metadata accessor for LiveFileStore();
    v20[4] = &protocol witness table for LiveFileStore;
    sub_100017E64(v20);
    LiveFileStore.init()();
    (*(v10 + 32))(v20 + *(v16 + 20), v15, v7);
    v22 = v20 + *(v16 + 24);
    *v22 = a1;
    *(v22 + 1) = a2;
    *(v22 + 2) = a3;

    sub_1000E0D00();
    return sub_10008EC20(v20);
  }

  return result;
}

uint64_t sub_10008EA60(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = sub_100002CC4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v11 = v10 - v9;
  v12 = type metadata accessor for MediaCatalogSyncStateStoreCore();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  sub_100002DEC();
  v16 = (v15 - v14);
  v17 = *a1;
  v18 = *(a1 + 16);
  v21 = *(a1 + 8);
  result = sub_10008E7C8(v11);
  if (!v1)
  {
    v16[3] = type metadata accessor for LiveFileStore();
    v16[4] = &protocol witness table for LiveFileStore;
    sub_100017E64(v16);
    LiveFileStore.init()();
    (*(v6 + 32))(v16 + *(v12 + 20), v11, v3);
    v20 = v16 + *(v12 + 24);
    *v20 = v17;
    *(v20 + 1) = v21;
    *(v20 + 2) = v18;

    sub_1000E0F78();
    return sub_10008EC20(v16);
  }

  return result;
}

uint64_t sub_10008EC20(uint64_t a1)
{
  v2 = type metadata accessor for MediaCatalogSyncStateStoreCore();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008EC9C()
{
  sub_100004768();
  v0[28] = v1;
  v0[29] = v2;
  v0[27] = v3;
  v4 = *(*(type metadata accessor for MediaCatalogSyncResponse() - 8) + 64) + 15;
  v0[30] = swift_task_alloc();
  sub_1000060D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10008ED28()
{
  sub_1000061B4();
  v1 = v0[29];
  v2 = sub_10008F9AC();
  v0[31] = v2;
  v3 = objc_allocWithZone(AMSMediaTokenService);
  v4 = v1;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 initWithClientIdentifier:v5 bag:v4];
  v0[32] = v6;

  [v6 setClientType:0];
  [v6 setSession:v2];
  v7 = [objc_allocWithZone(AMSMediaProtocolHandler) initWithTokenService:v6];
  [v2 setProtocolHandler:v7];

  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_10008EE94;
  v10 = v0[28];
  v9 = v0[29];

  return sub_10008FA18();
}

uint64_t sub_10008EE94()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v5 = *(v4 + 264);
  *v3 = *v1;
  *(v2 + 272) = v6;
  *(v2 + 280) = v0;

  sub_1000060D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10008EF94()
{
  sub_1000061B4();
  v1 = [*(v0 + 248) dataTaskPromiseWithRequest:*(v0 + 272)];
  *(v0 + 288) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 208;
  *(v0 + 24) = sub_10008F0CC;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_10007B9A4(&qword_100269C00, &unk_1001E68B0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1000900A0;
  *(v0 + 104) = &unk_100246808;
  *(v0 + 112) = v2;
  [v1 resultWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10008F0CC()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 296) = *(v3 + 48);
  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10008F1C8()
{
  v1 = *(v0 + 208);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 280);
    v5 = *(v0 + 240);
    v6 = *(v0 + 224);
    v7 = type metadata accessor for MediaCatalogSyncRequest();
    sub_1000900CC(v3, *(v6 + *(v7 + 20)), *(v6 + *(v7 + 20) + 8), *(v6 + *(v7 + 20) + 16), v5);
    v8 = *(v0 + 288);
    v9 = *(v0 + 272);
    if (v4)
    {

      if (qword_1002686F8 != -1)
      {
        sub_100006960();
      }

      v33 = *(v0 + 256);
      v34 = *(v0 + 248);
      v35 = *(v0 + 216);
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v10 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v10);
      v12 = *(v11 + 72);
      v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F60;
      v15 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      sub_100006224();
      swift_getErrorValue();
      v16 = *(v0 + 176);
      v17 = *(v0 + 184);
      *(v0 + 168) = v17;
      sub_100017E64((v0 + 144));
      sub_1000047A4(v17);
      (*(v18 + 16))();
      static LogInterpolation.traceableSensitive(_:)();
      sub_100009FB0(v0 + 144, &qword_10026D350, &qword_1001E6050);
      v19 = static os_log_type_t.error.getter();
      sub_1000036B0(v19);

      *v35 = v4;
      sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
    }

    else
    {
      v27 = *(v0 + 248);
      v28 = *(v0 + 240);
      v29 = *(v0 + 216);

      sub_100090CB8(v28, v29);
      sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
    }
  }

  else
  {
    v20 = *(v0 + 288);
    v21 = *(v0 + 272);
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v24 = *(v0 + 216);

    sub_100090C64();
    v25 = swift_allocError();
    *v26 = 2;

    *v24 = v25;
    sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
  }

  swift_storeEnumTagMultiPayload();
  v30 = *(v0 + 240);

  sub_100002D8C();

  return v31();
}

uint64_t sub_10008F560()
{
  v1 = v0[35];
  if (qword_1002686F8 != -1)
  {
    sub_100006960();
  }

  v14 = v0[32];
  v15 = v0[31];
  v2 = v0[27];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  v5 = *(v4 + 72);
  *(sub_100007888() + 16) = xmmword_1001E5F60;
  v6 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007E90();

  sub_100006224();
  sub_10000A2E4();
  v7 = v0[22];
  v8 = v0[23];
  v0[21] = v8;
  sub_100017E64(v0 + 18);
  sub_1000047A4(v8);
  (*(v9 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100009FB0((v0 + 18), &qword_10026D350, &qword_1001E6050);
  v10 = static os_log_type_t.error.getter();
  sub_1000036B0(v10);

  *v2 = v1;
  sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
  swift_storeEnumTagMultiPayload();
  v11 = v0[30];

  sub_100002D8C();

  return v12();
}

uint64_t sub_10008F77C()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  swift_willThrow();

  v4 = v0[37];
  if (qword_1002686F8 != -1)
  {
    sub_100006960();
  }

  v17 = v0[32];
  v18 = v0[31];
  v5 = v0[27];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v6);
  v8 = *(v7 + 72);
  *(sub_100007888() + 16) = xmmword_1001E5F60;
  v9 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007E90();

  sub_100006224();
  sub_10000A2E4();
  v10 = v0[22];
  v11 = v0[23];
  v0[21] = v11;
  sub_100017E64(v0 + 18);
  sub_1000047A4(v11);
  (*(v12 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100009FB0((v0 + 18), &qword_10026D350, &qword_1001E6050);
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13);

  *v5 = v4;
  sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
  swift_storeEnumTagMultiPayload();
  v14 = v0[30];

  sub_100002D8C();

  return v15();
}

id sub_10008F9AC()
{
  v0 = [objc_allocWithZone(AMSURLSession) init];
  v1 = [objc_allocWithZone(AMSMediaResponseDecoder) init];
  [v0 setResponseDecoder:v1];

  return v0;
}

uint64_t sub_10008FA18()
{
  sub_100004768();
  v0[20] = v1;
  v0[21] = v2;
  v0[19] = v3;
  v4 = type metadata accessor for URL();
  v0[22] = v4;
  sub_100002CFC(v4);
  v0[23] = v5;
  v7 = *(v6 + 64) + 15;
  v0[24] = swift_task_alloc();
  sub_1000060D0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10008FACC()
{
  sub_1000061B4();
  v1 = v0[20];
  v2 = v0[21];
  sub_100090D70();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v0[25] = sub_100090DB4(v1, v2);
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_10008FBA8;
  v4 = v0[24];
  v5 = v0[19];

  return sub_100090468(v4, v5);
}

uint64_t sub_10008FBA8()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v5 = *(v4 + 208);
  v10 = *v1;
  *(v2 + 216) = v0;

  sub_1000060D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10008FCA8@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[24];
  v3 = v1[25];
  URL._bridgeToObjectiveC()(a1);
  v5 = v4;
  v6 = [v3 requestWithURL:v4];
  v1[28] = v6;

  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_10008FDFC;
  v7 = swift_continuation_init();
  v1[17] = sub_10007B9A4(&qword_100269C18, &qword_1001E68C8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000900A0;
  v1[13] = &unk_100246830;
  v1[14] = v7;
  [v6 resultWithCompletion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10008FDFC()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10008FEF8()
{
  sub_1000061B4();
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 144);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_10008FF94()
{
  sub_100004768();

  v1 = *(v0 + 216);
  v2 = *(v0 + 192);

  sub_100002D8C();

  return v3();
}

uint64_t sub_10008FFF8()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  swift_willThrow();

  (*(v6 + 8))(v3, v5);
  v7 = v0[29];
  v8 = v0[24];

  sub_100002D8C();

  return v9();
}

uint64_t sub_1000900CC@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a4;
  v42 = a3;
  v41 = a2;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = sub_1001A46B8(a1);
  if (!v16 || (sub_10014AA40(v16), v18 = v17, , !v18))
  {
    v18 = Dictionary.init(dictionaryLiteral:)();
  }

  sub_1000CBBEC(1702125892, 0xE400000000000000, v18, v13);

  if (!v5)
  {
    (*(v9 + 32))(v15, v13, v8);
    v20 = [a1 data];
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    sub_1000D1110(v43);
    sub_1000253FC(v21, v23);
    v24 = [a1 data];
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v40 = sub_1000D11C4();
    sub_1000253FC(v25, v27);
    v28 = [a1 data];
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v30;
    v39 = v29;

    v31 = type metadata accessor for MediaCatalogSyncResponse();
    (*(v9 + 16))(a5 + v31[7], v15, v8);
    v32 = [a1 responseStatusCode];
    result = (*(v9 + 8))(v15, v8);
    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v33 = v43[1];
      *(a5 + 40) = v43[0];
      v34 = v40;
      *a5 = v41;
      v35 = v45;
      *(a5 + 8) = v42;
      *(a5 + 16) = v35;
      v36 = v38;
      *(a5 + 24) = v39;
      *(a5 + 32) = v36;
      *(a5 + 56) = v33;
      *(a5 + 72) = v44;
      *(a5 + v31[8]) = v32;
      *(a5 + v31[9]) = v34;
    }
  }

  return result;
}

uint64_t sub_100090468(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_10007B9A4(&qword_100269C20, &qword_1001E68D0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for URLQueryItem();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100090560, 0, 0);
}

uint64_t sub_100090560()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for URL();
  sub_1000047A4(v3);
  (*(v4 + 16))(v1, v2);
  if (*(v2 + *(type metadata accessor for MediaCatalogSyncRequest() + 20)) == 1)
  {
    v5 = v0[4];
    v6 = v0[5];
    sub_1000907D0(v5);
    if (sub_100009F34(v5, 1, v6) == 1)
    {
      sub_100009FB0(v0[4], &qword_100269C20, &qword_1001E68D0);
    }

    else
    {
      v8 = v0[6];
      v7 = v0[7];
      v9 = v0[5];
      v10 = v0[2];
      (*(v8 + 32))(v7, v0[4], v9);
      sub_10007B9A4(&qword_100269C28, &qword_1001E68D8);
      v11 = *(v8 + 72);
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1001E61B0;
      (*(v8 + 16))(v13 + v12, v7, v9);
      URL.append(queryItems:)(v13);

      (*(v8 + 8))(v7, v9);
    }
  }

  v14 = v0[7];
  v15 = v0[4];

  sub_100002D8C();

  return v16();
}

uint64_t *sub_100090720(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_100003CA8((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000907D0@<X0>(uint64_t a1@<X8>)
{
  sub_1000909B4();
  if (v2)
  {
    URLQueryItem.init(name:value:)();

    v3 = 0;
  }

  else
  {
    if (qword_1002686F8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v4 = *(type metadata accessor for LogInterpolation() - 8);
    v5 = *(v4 + 72);
    v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v7 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v8 = static os_log_type_t.error.getter();
    sub_1000036B0(v8);

    v3 = 1;
  }

  v9 = type metadata accessor for URLQueryItem();

  return sub_10000A7C0(a1, v3, 1, v9);
}

uint64_t sub_1000909B4()
{
  v0 = objc_opt_self();
  if ([v0 deviceIsAppleTV])
  {
    v1 = &AMSMediaTaskPlatformAppleTV;
LABEL_15:
    v2 = *v1;
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if ([v0 deviceIsAppleWatch])
  {
    v1 = &AMSMediaTaskPlatformAppleWatch;
    goto LABEL_15;
  }

  if ([v0 deviceIsAudioAccessory])
  {
    v1 = &AMSMediaTaskPlatformHomePod;
    goto LABEL_15;
  }

  if ([v0 deviceIsiPad])
  {
    v1 = &AMSMediaTaskPlatformiPad;
    goto LABEL_15;
  }

  if ([v0 deviceIsiPhone])
  {
    v1 = &AMSMediaTaskPlatformiPhone;
    goto LABEL_15;
  }

  if ([v0 deviceIsMac])
  {
    v1 = &AMSMediaTaskPlatformMac;
    goto LABEL_15;
  }

  if ([v0 deviceIsRealityDevice])
  {
    v1 = &AMSMediaTaskPlatformReality;
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_100090ACC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100090B7C;

  return sub_10008EC9C();
}

uint64_t sub_100090B7C()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 16);
  v5 = *v0;

  sub_100002D8C();

  return v3();
}

unint64_t sub_100090C64()
{
  result = qword_100269C08;
  if (!qword_100269C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269C08);
  }

  return result;
}

uint64_t sub_100090CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100090D70()
{
  result = qword_100269C10;
  if (!qword_100269C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100269C10);
  }

  return result;
}

id sub_100090DB4(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTokenService:a1 bag:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

void sub_100090E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v11 = v10 - v9;
  sub_1000DE200(a1, a2, a3);
  v12 = [objc_opt_self() sharedScheduler];
  v13 = String._bridgeToObjectiveC()();

  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v11, enum case for DispatchQoS.QoSClass.background(_:), v6);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v11, v6);
  aBlock[4] = sub_100091030;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008E0EC;
  aBlock[3] = &unk_100246858;
  v15 = _Block_copy(aBlock);

  [v12 registerForTaskWithIdentifier:v13 usingQueue:v14 launchHandler:v15];
  _Block_release(v15);
}

id sub_100091034(void *a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  v6 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_1000DE298();
  v9 = v8;
  v11 = v10;

  if (qword_1002686F8 != -1)
  {
    sub_100006960();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v12 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v12);
  v14 = *(v13 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E61B0;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v17._countAndFlagsBits = 0xD00000000000001DLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  v18 = [a1 identifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v27 = &type metadata for String;
  v26[0] = v19;
  v26[1] = v21;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v26, &qword_10026D350, &qword_1001E6050);
  v22._countAndFlagsBits = 0x7265676769727420;
  v22._object = 0xEE00206E6F206465;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  v27 = type metadata accessor for Date();
  sub_100017E64(v26);
  static Date.now.getter();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v23 = sub_10000A064(v26, &qword_10026D350, &qword_1001E6050);
  sub_100003B48(v23);
  LogInterpolation.init(stringInterpolation:)();
  v24 = static os_log_type_t.default.getter();
  sub_1000036B0(v24);

  if (qword_1002685E0 != -1)
  {
    swift_once();
  }

  sub_100092D78(v7, v9, v11, 0x656C756465686353, 0xEE006B7361742064);

  return [a1 setTaskCompleted];
}

uint64_t sub_1000914E4(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v3);
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  v6 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v6);
  v8 = *(v7 + 64) + 15;
  v2[29] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v2[30] = v9;
  sub_100002CFC(v9);
  v2[31] = v10;
  v12 = *(v11 + 64) + 15;
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000915F8, 0, 0);
}

void sub_1000915F8()
{
  v1 = *(v0 + 208);
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = sub_10000B6D4();
  sub_1000DE200(v5, v6, v7);
  v8 = sub_10000B6D4();
  sub_100090E20(v8, v9, v10);
  v11 = [objc_opt_self() sharedScheduler];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 taskRequestForIdentifier:v12];

  if (v13)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v17 = *(v0 + 232);
      v16 = *(v0 + 240);
      v18 = *(v0 + 216);

      v19 = type metadata accessor for MediaCatalogSyncState();
      sub_1000652F0(v18 + *(v19 + 28), v17);
      if (sub_100009F34(v17, 1, v16) == 1)
      {
        sub_10000A064(*(v0 + 232), &unk_100271EA0, &qword_1001E77F0);
LABEL_16:
        v47 = sub_100091DA4(v15, *(v0 + 208));
        goto LABEL_17;
      }

      v48 = *(v0 + 208);
      (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 232), *(v0 + 240));
      v49 = *(type metadata accessor for MediaCatalogSyncScheduleModel(0) + 20);
      sub_100092A84();
      if (dispatch thunk of static Comparable.< infix(_:_:)())
      {
        (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
        goto LABEL_16;
      }

      if (qword_1002686F8 == -1)
      {
LABEL_22:
        v80 = *(v0 + 224);
        v81 = *(v0 + 256);
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v55 = type metadata accessor for LogInterpolation();
        sub_100002CFC(v55);
        v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v79 = *(v56 + 72);
        *(swift_allocObject() + 16) = xmmword_1001E5F70;
        v59 = AMSSetLogKeyIfNeeded();
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        static LogInterpolation.prefix<A>(_:_:)();

        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v62._countAndFlagsBits = 0xD000000000000029;
        v62._object = 0x80000001001F3D40;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v62);
        v63 = sub_10000B6D4();
        v66 = sub_1000D0004(v63, v64, v65);
        *(v0 + 136) = &type metadata for String;
        *(v0 + 112) = v66;
        *(v0 + 120) = v67;
        LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
        sub_100023C24(v0 + 112);
        v68._countAndFlagsBits = 0xD000000000000018;
        v68._object = 0x80000001001F3D70;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v68);
        v69 = [v15 identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100006240();

        *(v0 + 168) = &type metadata for String;
        *(v0 + 144) = 0xD000000000000012;
        *(v0 + 152) = v61;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_100023C24(v0 + 144);
        v70._countAndFlagsBits = 0xD00000000000002CLL;
        v70._object = 0x80000001001F3D90;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v70);
        Date.timeIntervalSinceNow.getter();
        sub_100002E08();
        if (v40 ^ v41 | v39)
        {
          if (v71 > -9.22337204e18)
          {
            sub_100006980();
            if (v40)
            {
              v74 = *(v0 + 248);
              v73 = *(v0 + 256);
              v75 = *(v0 + 240);
              v76 = *(v0 + 224);
              *(v0 + 200) = &type metadata for Int;
              *(v0 + 176) = v72;
              LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
              sub_10000A064(v0 + 176, &qword_10026D350, &qword_1001E6050);
              v77._countAndFlagsBits = 0xD00000000000003DLL;
              v77._object = 0x80000001001F3DC0;
              LogInterpolation.StringInterpolation.appendLiteral(_:)(v77);
              LogInterpolation.init(stringInterpolation:)();
              v78 = static os_log_type_t.default.getter();
              sub_1000036B0(v78);

              (*(v74 + 8))(v73, v75);
              v50 = 0;
              goto LABEL_18;
            }

LABEL_32:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      sub_100006960();
      goto LABEL_22;
    }
  }

  if (qword_1002686F8 != -1)
  {
    sub_100006960();
  }

  v21 = *(v0 + 240);
  v20 = *(v0 + 248);
  v22 = *(v0 + 224);
  v23 = *(v0 + 208);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v24 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v24);
  v26 = *(v25 + 72);
  v13 = ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v15 = swift_allocObject();
  v15[1] = xmmword_1001E61B0;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0xD000000000000027;
  v28._object = 0x80000001001F39A0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
  v29 = sub_10000B6D4();
  v32 = sub_1000D0004(v29, v30, v31);
  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = v32;
  *(v0 + 24) = v33;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100023C24(v0 + 16);
  v34._countAndFlagsBits = 544108320;
  v34._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
  v35 = *(type metadata accessor for MediaCatalogSyncScheduleModel(0) + 20);
  *(v0 + 72) = v21;
  v36 = sub_100017E64((v0 + 48));
  (*(v20 + 16))(v36, v23 + v35, v21);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100023C24(v0 + 48);
  v37._countAndFlagsBits = 0x206863696877202CLL;
  v37._object = 0xEB00000000207369;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
  Date.timeIntervalSinceNow.getter();
  sub_100002E08();
  if (!(v40 ^ v41 | v39))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v38 <= -9.22337204e18)
  {
    goto LABEL_28;
  }

  sub_100006980();
  if (!v40)
  {
    goto LABEL_29;
  }

  v43 = *(v0 + 224);
  v44 = *(v0 + 208);
  *(v0 + 104) = &type metadata for Int;
  *(v0 + 80) = v42;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v0 + 80, &qword_10026D350, &qword_1001E6050);
  sub_100004810();
  v45._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v45);
  LogInterpolation.init(stringInterpolation:)();
  v46 = static os_log_type_t.default.getter();
  sub_1000036B0(v46);

  sub_100002BC0(0, &qword_100269C30, BGNonRepeatingSystemTaskRequest_ptr);
  v13 = sub_100092378();
  [v13 setRequiresNetworkConnectivity:1];
  Date.timeIntervalSinceNow.getter();
  [v13 setScheduleAfter:?];
  [v13 setPriority:2];
  v47 = sub_1000923EC(v13, v44);
LABEL_17:
  v50 = v47;

LABEL_18:
  v51 = *(v0 + 256);
  v53 = *(v0 + 224);
  v52 = *(v0 + 232);

  v54 = *(v0 + 8);

  v54(v50 & 1);
}

id sub_100091DA4(void *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  if (qword_1002686F8 != -1)
  {
    sub_100006960();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v50 = *(v9 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v12 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000029;
  v13._object = 0x80000001001F3D40;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  v49 = *a2;
  v47 = *(a2 + 2);
  v48 = *(a2 + 1);
  sub_1000D0004(*a2, v48, v47);
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  sub_1000073A4();
  v14._countAndFlagsBits = 0xD000000000000018;
  v14._object = 0x80000001001F3D70;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  v15 = [a1 identifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v51 = v16;
  v52 = v18;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_1000073A4();
  v19._countAndFlagsBits = 0xD000000000000013;
  v19._object = 0x80000001001F3E00;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  [a1 scheduleAfter];
  v53 = type metadata accessor for Date();
  sub_100017E64(&v51);
  Date.init(timeIntervalSinceNow:)();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_1000073A4();
  v20._countAndFlagsBits = 0xD00000000000001ELL;
  v20._object = 0x80000001001F3E20;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  v21 = *(type metadata accessor for MediaCatalogSyncScheduleModel(0) + 20);
  Date.timeIntervalSinceNow.getter();
  sub_100002E08();
  if (!(v24 ^ v25 | v23))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v22 <= -9.22337204e18)
  {
    goto LABEL_12;
  }

  sub_100006980();
  if (!v24)
  {
LABEL_13:
    __break(1u);
  }

  v53 = &type metadata for Int;
  v51 = v26;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v51, &qword_10026D350, &qword_1001E6050);
  sub_100004810();
  v27._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
  LogInterpolation.init(stringInterpolation:)();
  v28 = static os_log_type_t.default.getter();
  sub_1000036B0(v28);

  Date.timeIntervalSinceNow.getter();
  [a1 setScheduleAfter:?];
  v29 = [objc_opt_self() sharedScheduler];
  v51 = 0;
  v30 = [v29 updateTaskRequest:a1 error:&v51];

  if (v30)
  {
    v31 = v51;
  }

  else
  {
    v32 = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v33 = _convertErrorToNSError(_:)();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v34 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100006240();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v35._countAndFlagsBits = 0xD000000000000041;
    v35._object = 0x80000001001F3E40;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
    v36 = sub_1000D0004(v49, v48, v47);
    v53 = &type metadata for String;
    v51 = v36;
    v52 = v37;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v51, &qword_10026D350, &qword_1001E6050);
    v38._countAndFlagsBits = 8250;
    v38._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
    v39 = v33;
    v40 = [v33 localizedDescription];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v53 = &type metadata for String;
    v51 = v41;
    v52 = v43;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v44 = sub_10000A064(&v51, &qword_10026D350, &qword_1001E6050);
    sub_100003B48(v44);
    LogInterpolation.init(stringInterpolation:)();
    v45 = static os_log_type_t.error.getter();
    sub_1000036B0(v45);
  }

  return v30;
}

id sub_100092378()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

id sub_1000923EC(void *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  if (qword_1002686F8 != -1)
  {
    sub_100006960();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v44 = *(v9 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v12 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006240();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v13._countAndFlagsBits = 0xD00000000000003ALL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  v14 = *a2;
  v15 = *(a2 + 1);
  v16 = *(a2 + 2);
  v43 = v15;
  v47 = &type metadata for String;
  v45 = sub_1000D0004(v14, v15, v16);
  v46 = v17;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v45, &qword_10026D350, &qword_1001E6050);
  v18._countAndFlagsBits = 544106784;
  v18._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  [a1 scheduleAfter];
  sub_100002E08();
  if (!(v21 ^ v22 | v20))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v19 <= -9.22337204e18)
  {
    goto LABEL_12;
  }

  sub_100006980();
  if (!v21)
  {
LABEL_13:
    __break(1u);
  }

  v47 = &type metadata for Int;
  v45 = v23;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v45, &qword_10026D350, &qword_1001E6050);
  v24._countAndFlagsBits = 0x73646E6F63657320;
  v24._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  LogInterpolation.init(stringInterpolation:)();
  v25 = static os_log_type_t.default.getter();
  sub_1000036B0(v25);

  v26 = [objc_opt_self() sharedScheduler];
  v45 = 0;
  v27 = [v26 submitTaskRequest:a1 error:&v45];

  if (v27)
  {
    v28 = v45;
  }

  else
  {
    v29 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v42 = _convertErrorToNSError(_:)();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v30 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v31._countAndFlagsBits = 0xD000000000000041;
    v31._object = 0x80000001001F3ED0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
    v32 = sub_1000D0004(v14, v43, v16);
    v47 = &type metadata for String;
    v45 = v32;
    v46 = v33;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v45, &qword_10026D350, &qword_1001E6050);
    v34._countAndFlagsBits = 8250;
    v34._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
    v35 = [v42 localizedDescription];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v47 = &type metadata for String;
    v45 = v36;
    v46 = v38;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v39 = sub_10000A064(&v45, &qword_10026D350, &qword_1001E6050);
    sub_100003B48(v39);
    LogInterpolation.init(stringInterpolation:)();
    v40 = static os_log_type_t.error.getter();
    sub_1000036B0(v40);
  }

  return v27;
}

uint64_t sub_1000928DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100092978;

  return sub_1000914E4(a1, a2);
}

uint64_t sub_100092978(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_100092A84()
{
  result = qword_100269AD0;
  if (!qword_100269AD0)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269AD0);
  }

  return result;
}

uint64_t sub_100092ADC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v3);
  v5 = *(v4 + 64);
  sub_100004E78();
  __chkstk_darwin(v6);
  v8 = &v22[-1] - v7;
  v23 = &type metadata for AMSFlags;
  v24 = sub_10000D884();
  LOBYTE(v22[0]) = 2;
  v9 = isFeatureEnabled(_:)();
  sub_100002C00(v22);
  if (v9)
  {
    v10 = type metadata accessor for TaskPriority();
    sub_10001CCB8(v8, v11, v12, v10);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v1;

    sub_10000A944();
    sub_1000E349C();
  }

  else
  {
    if (qword_1002686F8 != -1)
    {
      sub_100006960();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v15 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v15);
    v17 = *(v16 + 72);
    sub_1000056F8();
    *(sub_10000A124() + 16) = xmmword_1001E5F70;
    v23 = v2;
    v22[0] = v1;

    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v22);
    sub_10000A5B0();
    v20 = static os_log_type_t.default.getter();
    sub_1000036B0(v20);
  }
}

uint64_t sub_100092D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v6;
  v13 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v13);
  v15 = *(v14 + 64);
  sub_100004E78();
  __chkstk_darwin(v16);
  v18 = &v32[-1] - v17;
  v33 = &type metadata for AMSFlags;
  v34 = sub_10000D884();
  LOBYTE(v32[0]) = 2;
  v19 = isFeatureEnabled(_:)();
  sub_100002C00(v32);
  if (v19)
  {
    v20 = type metadata accessor for TaskPriority();
    sub_10001CCB8(v18, v21, v22, v20);
    sub_10000B2F0();
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = a1;
    v23[5] = a2;
    v23[6] = a3;
    v23[7] = v6;
    v23[8] = a4;
    v23[9] = a5;

    sub_10000A944();
    sub_1000E349C();
  }

  else
  {
    if (qword_1002686F8 != -1)
    {
      sub_100006960();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v25 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v25);
    v27 = *(v26 + 72);
    sub_1000056F8();
    *(sub_10000A124() + 16) = xmmword_1001E5F70;
    v33 = v12;
    v32[0] = v6;

    v28 = AMSLogKey();
    if (v28)
    {
      v29 = v28;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v32);
    sub_10000A5B0();
    v30 = static os_log_type_t.default.getter();
    sub_1000036B0(v30);
  }
}

uint64_t sub_100093050(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[18] = a4;
  v4[19] = *a4;
  v5 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100093108, 0, 0);
}

uint64_t sub_100093108()
{
  if (qword_1002686F8 != -1)
  {
    sub_100006960();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  *(v0 + 168) = qword_100287858;
  *(v0 + 176) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  *(v0 + 184) = *(v4 + 72);
  *(v0 + 208) = *(v5 + 80);
  v6 = swift_allocObject();
  sub_10000AE6C(v6, xmmword_1001E5F70);
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(v0 + 144);
  sub_100012B3C();

  sub_100002C00((v0 + 16));
  LogInterpolation.init(stringLiteral:)();
  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10);

  v11 = *(v9 + 24);
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_1000932F4;

  return sub_10008C80C();
}

uint64_t sub_1000932F4()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  *(v3 + 200) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100093418, 0, 0);
  }

  else
  {
    v9 = *(v3 + 160);

    sub_100002D8C();

    return v10();
  }
}

uint64_t sub_100093418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();
  sub_100003D48();
  v13 = *(v12 + 176);
  v14 = *(v12 + 144);
  v15 = *(v12 + 152);
  v16 = ((*(v12 + 208) + 32) & ~*(v12 + 208)) + 2 * *(v12 + 184);
  v17 = swift_allocObject();
  *(v12 + 48) = v14;
  *(v17 + 16) = xmmword_1001E5F70;
  *(v12 + 72) = v15;

  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = *(v12 + 200);
  v21 = *(v12 + 184);
  v22 = *(v12 + 160);
  v23 = *(v12 + 168);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v12 + 48));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._object = 0x80000001001F40E0;
  v24._countAndFlagsBits = 0xD000000000000042;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  swift_getErrorValue();
  v25 = *(v12 + 112);
  v26 = *(v12 + 120);
  *(v12 + 104) = v26;
  sub_100017E64((v12 + 80));
  sub_1000047A4(v26);
  v28 = *(v27 + 16);
  sub_10000AB04();
  v29();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v12 + 80, &qword_10026D350, &qword_1001E6050);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
  LogInterpolation.init(stringInterpolation:)();
  v31 = static os_log_type_t.error.getter();
  sub_1000036B0(v31);

  v32 = *(v12 + 160);

  sub_100002D8C();
  sub_10000481C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_1000935EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a8;
  v8[27] = v12;
  v8[24] = a6;
  v8[25] = a7;
  v8[22] = a4;
  v8[23] = a5;
  v9 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64) + 15;
  v8[28] = swift_task_alloc();

  return _swift_task_switch(sub_10009368C, 0, 0);
}

uint64_t sub_10009368C()
{
  v1 = *(v0 + 200);
  if (*(v0 + 192))
  {
    v2 = *(v1 + 24);
    v3 = *(v0 + 176);
    v4 = swift_task_alloc();
    *(v0 + 232) = v4;
    *v4 = v0;
    v4[1] = sub_1000937A8;
    v5 = *(v0 + 184);

    return sub_10008BAC8();
  }

  else
  {
    v7 = *(v1 + 24);
    v8 = swift_task_alloc();
    *(v0 + 248) = v8;
    *v8 = v0;
    v8[1] = sub_1000938CC;

    return sub_10008AD40();
  }
}

uint64_t sub_1000937A8()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  *(v3 + 240) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000939F0, 0, 0);
  }

  else
  {
    v9 = *(v3 + 224);

    sub_100002D8C();

    return v10();
  }
}

uint64_t sub_1000938CC()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  *(v3 + 256) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100093C8C, 0, 0);
  }

  else
  {
    v9 = *(v3 + 224);

    sub_100002D8C();

    return v10();
  }
}

uint64_t sub_1000939F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  v50 = *(v15 + 240);
  if (qword_1002686F8 != -1)
  {
    sub_100006960();
  }

  v18 = *(v15 + 200);
  v49 = qword_100287858;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v19 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v19);
  v21 = *(v20 + 72);
  sub_1000056F8();
  *(sub_100015B78() + 16) = xmmword_1001E5F70;
  *(v15 + 40) = type metadata accessor for MediaCatalogSyncService();
  *(v15 + 16) = v18;

  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100004838();

  sub_100002C00((v15 + 16));
  v24 = LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100005EE4("Failed to perform ", v24);
  *(v15 + 72) = &type metadata for String;
  *(v15 + 48) = v14;
  *(v15 + 56) = v17;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v25 = sub_100009FB0(v15 + 48, &qword_10026D350, &qword_1001E6050);
  sub_100018074(" for identifier: ", v25);
  if (v16)
  {
    v26 = *(v15 + 184);
    *(v15 + 80) = *(v15 + 176);
  }

  else
  {
    sub_100018190();
  }

  sub_10000A6C0(v26);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000AB04();
  v30 = sub_100009FB0(v27, v28, v29);
  sub_100004ACC(v30);
  sub_100023FC8();
  v31 = *(v15 + 144);
  v32 = *(v15 + 152);
  *(v15 + 136) = v32;
  sub_100017E64((v15 + 112));
  sub_1000047A4(v32);
  (*(v33 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000AB04();
  sub_100009FB0(v34, v35, v36);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
  LogInterpolation.init(stringInterpolation:)();
  v38 = static os_log_type_t.error.getter();
  sub_1000036B0(v38);

  v39 = *(v15 + 224);

  sub_100002D8C();
  sub_10000A820();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, a12, a13, a14);
}

uint64_t sub_100093C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  v50 = *(v15 + 256);
  if (qword_1002686F8 != -1)
  {
    sub_100006960();
  }

  v18 = *(v15 + 200);
  v49 = qword_100287858;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v19 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v19);
  v21 = *(v20 + 72);
  sub_1000056F8();
  *(sub_100015B78() + 16) = xmmword_1001E5F70;
  *(v15 + 40) = type metadata accessor for MediaCatalogSyncService();
  *(v15 + 16) = v18;

  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100004838();

  sub_100002C00((v15 + 16));
  v24 = LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100005EE4("Failed to perform ", v24);
  *(v15 + 72) = &type metadata for String;
  *(v15 + 48) = v14;
  *(v15 + 56) = v17;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v25 = sub_100009FB0(v15 + 48, &qword_10026D350, &qword_1001E6050);
  sub_100018074(" for identifier: ", v25);
  if (v16)
  {
    v26 = *(v15 + 184);
    *(v15 + 80) = *(v15 + 176);
  }

  else
  {
    sub_100018190();
  }

  sub_10000A6C0(v26);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000AB04();
  v30 = sub_100009FB0(v27, v28, v29);
  sub_100004ACC(v30);
  sub_100023FC8();
  v31 = *(v15 + 144);
  v32 = *(v15 + 152);
  *(v15 + 136) = v32;
  sub_100017E64((v15 + 112));
  sub_1000047A4(v32);
  (*(v33 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000AB04();
  sub_100009FB0(v34, v35, v36);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
  LogInterpolation.init(stringInterpolation:)();
  v38 = static os_log_type_t.error.getter();
  sub_1000036B0(v38);

  v39 = *(v15 + 224);

  sub_100002D8C();
  sub_10000A820();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, a12, a13, a14);
}

uint64_t sub_100093F28(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = v4;
  *(v5 + 80) = a2;
  *(v5 + 88) = a3;
  *(v5 + 128) = a1;
  *(v5 + 112) = *v4;
  return sub_100006180(sub_100093F70);
}

uint64_t sub_100093F70()
{
  sub_100017F0C();
  sub_100003D48();
  if (qword_1002686F8 != -1)
  {
    sub_100006960();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  v5 = *(v4 + 72);
  sub_1000056F8();
  v6 = sub_100007128();
  sub_10000AE6C(v6, xmmword_1001E5F60);
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v27 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 128);
  sub_100012B3C();

  sub_100002C00((v0 + 16));
  sub_10000A5B0();
  v13 = sub_100003D54();
  sub_100007EB0(v13, v14, &type metadata for String);
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v9, &qword_10026D350, &qword_1001E6050);
  v15 = static os_log_type_t.default.getter();
  sub_1000036B0(v15);

  v16 = *(v27 + 24);
  v17 = swift_task_alloc();
  *(v0 + 120) = v17;
  *v17 = v0;
  v17[1] = sub_100094160;
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  v20 = *(v0 + 80);
  sub_100017CFC(*(v0 + 128));
  sub_10000481C();

  return sub_10008C234(v21, v22, v23, v24);
}

uint64_t sub_100094160(uint64_t a1, char a2)
{
  sub_1000056A8();
  v7 = *(v6 + 120);
  v8 = *v3;
  sub_100002D20();
  *v9 = v8;

  v11 = *(v8 + 8);
  if (v2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 & 1;
    v10 = a1;
  }

  return v11(v10, v12);
}

uint64_t sub_10009426C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a2;
  *(v4 + 120) = a1;
  *(v4 + 104) = *v3;
  return sub_100006180(sub_1000942B4);
}

uint64_t sub_1000942B4()
{
  sub_100017F0C();
  sub_100003D48();
  if (qword_1002686F8 != -1)
  {
    sub_100006960();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  v5 = *(v4 + 72);
  sub_1000056F8();
  v6 = sub_100007128();
  sub_10000AE6C(v6, xmmword_1001E5F60);
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 88);
  v22 = *(v0 + 96);
  v11 = *(v0 + 80);
  v12 = *(v0 + 120);
  sub_100012B3C();

  sub_100002C00((v0 + 16));
  LogInterpolation.init(stringLiteral:)();
  v13 = sub_100003D54();
  sub_100007EB0(v13, v14, &type metadata for String);
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v9, &qword_10026D350, &qword_1001E6050);
  v15 = static os_log_type_t.default.getter();
  sub_1000036B0(v15);

  v16 = *(v22 + 24);
  v17 = swift_task_alloc();
  *(v0 + 112) = v17;
  *v17 = v0;
  v17[1] = sub_1000944AC;
  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  sub_100017CFC(*(v0 + 120));
  sub_10000481C();

  return sub_10008CD88();
}

uint64_t sub_1000944AC()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 112);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;

  sub_100002D8C();

  return v5();
}

uint64_t sub_10009458C()
{
  v1 = *(v0 + 24);

  sub_100002C00((v0 + 32));
  return v0;
}

uint64_t sub_1000945BC()
{
  sub_10009458C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000945F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 48) = a5;
  *(v7 + 16) = a4;
  return _swift_task_switch(sub_100094618, 0, 0);
}

uint64_t sub_100094618()
{
  sub_100004768();
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000946B4;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_100017CFC(*(v0 + 48));

  return sub_10008D424();
}

uint64_t sub_1000946B4()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;

  sub_100002D8C();

  return v5();
}

uint64_t sub_1000947B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v12);
  v14 = *(v13 + 64);
  sub_100004E78();
  __chkstk_darwin(v15);
  v17 = &v25 - v16;

  v26._countAndFlagsBits = a1;
  v26._object = a2;
  v18 = sub_1000E16C4(v26);
  if (v18 == 3)
  {
    v19 = 2;
  }

  else
  {
    v19 = v18;
  }

  v20 = type metadata accessor for TaskPriority();
  sub_10001CCB8(v17, v21, v22, v20);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v6;
  *(v23 + 40) = v19;
  *(v23 + 48) = a3;
  *(v23 + 56) = a4;

  sub_1001A1E8C(0, 0, v17, a6, v23);
}

uint64_t sub_1000948D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100009BE8;

  return sub_10009426C(a5, a6, a7);
}

uint64_t sub_1000949A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_1000947B4(v8, v10, v11, v13, a5, a6);
}

uint64_t sub_100094A54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v13);
  v15 = *(v14 + 64);
  sub_100004E78();
  __chkstk_darwin(v16);
  v18 = &v26 - v17;

  v27._countAndFlagsBits = a1;
  v27._object = a2;
  v19 = sub_1000E16C4(v27);
  if (v19 == 3)
  {
    v20 = 2;
  }

  else
  {
    v20 = v19;
  }

  v21 = type metadata accessor for TaskPriority();
  sub_10001CCB8(v18, v22, v23, v21);
  sub_10000B2F0();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v6;
  *(v24 + 40) = v20;
  *(v24 + 48) = a3;
  *(v24 + 56) = a4;
  *(v24 + 64) = a5;
  *(v24 + 72) = a6;

  sub_10000A944();
  sub_1000E349C();
}

uint64_t sub_100094B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a8;
  *(v8 + 176) = v17;
  *(v8 + 152) = a6;
  *(v8 + 160) = a7;
  *(v8 + 256) = a5;
  *(v8 + 144) = a4;
  v9 = *(type metadata accessor for MediaCatalogSyncPage() - 8);
  *(v8 + 184) = v9;
  v10 = *(v9 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v11 = type metadata accessor for URL();
  *(v8 + 200) = v11;
  v12 = *(v11 - 8);
  *(v8 + 208) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v14 = *(*(sub_10007B9A4(&qword_100269AB8, &qword_1001E6680) - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100094CE8, 0, 0);
}

uint64_t sub_100094CE8()
{
  sub_100004768();
  v1 = *(v0 + 224);
  v2 = type metadata accessor for MediaCatalogSyncPageMetadata();
  sub_10001CCB8(v1, v3, v4, v2);
  v5 = swift_task_alloc();
  *(v0 + 232) = v5;
  *v5 = v0;
  v5[1] = sub_100094D98;
  v6 = *(v0 + 224);
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  v9 = *(v0 + 144);
  v10 = sub_100017CFC(*(v0 + 256));

  return sub_100093F28(v10, v11, v12, v13);
}

uint64_t sub_100094D98()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *(v4 + 224);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  *(v10 + 240) = v9;
  *(v10 + 248) = v0;

  sub_100009FB0(v6, &qword_100269AB8, &qword_1001E6680);
  if (v0)
  {
    v11 = sub_10009507C;
  }

  else
  {
    v11 = sub_100094EC8;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100094EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  v15 = *(v14 + 240);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v14 + 208);
    v18 = *(v14 + 184);
    sub_10009B768(0, v16, 0);
    v19 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    a10 = *(v18 + 72);
    do
    {
      v20 = *(v14 + 216);
      v22 = *(v14 + 192);
      v21 = *(v14 + 200);
      sub_1000955FC(v19, v22);
      (*(v17 + 16))(v20, v22, v21);
      sub_100095660(v22);
      a11 = _swiftEmptyArrayStorage;
      v24 = _swiftEmptyArrayStorage[2];
      v23 = _swiftEmptyArrayStorage[3];
      if (v24 >= v23 >> 1)
      {
        sub_10009B768(v23 > 1, v24 + 1, 1);
      }

      v25 = *(v14 + 216);
      v26 = *(v14 + 200);
      _swiftEmptyArrayStorage[2] = v24 + 1;
      (*(v17 + 32))(_swiftEmptyArrayStorage + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, v25, v26);
      v19 += a10;
      --v16;
    }

    while (v16);
  }

  v27 = *(v14 + 240);

  v28 = *(v14 + 176);
  (*(v14 + 168))(_swiftEmptyArrayStorage);

  v30 = *(v14 + 216);
  v29 = *(v14 + 224);
  v31 = *(v14 + 192);

  sub_100002D8C();
  sub_10000A820();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10009507C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  if (qword_1002686F8 != -1)
  {
    sub_100006960();
  }

  v15 = *(v14 + 144);
  v51 = qword_100287858;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v16 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v16);
  v18 = *(v17 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E6580;
  *(v14 + 40) = type metadata accessor for MediaCatalogSyncService();
  *(v14 + 16) = v15;

  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v21 = *(v14 + 248);
  v49 = *(v14 + 168);
  v50 = *(v14 + 176);
  v23 = *(v14 + 152);
  v22 = *(v14 + 160);
  v24 = *(v14 + 256);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v14 + 16));
  LogInterpolation.init(stringLiteral:)();
  v25 = sub_1000D0004(v24, v23, v22);
  sub_100007EB0(v25, v26, &type metadata for String);
  static LogInterpolation.safe(_:)();
  sub_10000AB04();
  sub_100009FB0(v27, v28, v29);
  swift_getErrorValue();
  v30 = *(v14 + 112);
  v31 = *(v14 + 120);
  *(v14 + 104) = v31;
  sub_100017E64((v14 + 80));
  sub_1000047A4(v31);
  (*(v32 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_10000AB04();
  sub_100009FB0(v33, v34, v35);
  v36 = static os_log_type_t.error.getter();
  sub_1000036B0(v36);

  v49(_swiftEmptyArrayStorage);

  v38 = *(v14 + 216);
  v37 = *(v14 + 224);
  v39 = *(v14 + 192);

  sub_100002D8C();
  sub_10000A820();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, v49, v50, v51, a12, a13, a14);
}

void sub_10009540C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_100095478()
{
  sub_100003D48();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  v9 = swift_task_alloc();
  v10 = sub_100004ABC(v9);
  *v10 = v11;
  v10[1] = sub_100009CC8;
  sub_100002E1C();
  sub_10000481C();

  return sub_1000935EC(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_100095548()
{
  sub_100003D48();
  sub_10000A304();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = sub_100004ABC(v4);
  *v5 = v6;
  v5[1] = sub_100009BE8;
  sub_100002E1C();
  sub_100023C3C();
  sub_10000481C();

  return sub_100094B84(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1000955FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncPage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100095660(uint64_t a1)
{
  v2 = type metadata accessor for MediaCatalogSyncPage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000956BC()
{
  sub_10000A304();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = sub_100004ABC(v2);
  *v3 = v4;
  v3[1] = sub_100009CC8;
  sub_100002E1C();
  sub_100023C3C();

  return sub_1000948D0(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100095768()
{
  sub_10000A304();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = sub_100004ABC(v2);
  *v3 = v4;
  v3[1] = sub_100009BE8;
  sub_100002E1C();
  sub_100023C3C();

  return sub_1000945F0(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100095814()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100004ABC(v4);
  *v5 = v6;
  v5[1] = sub_100009CC8;
  v7 = sub_100002E1C();

  return sub_100093050(v7, v8, v9, v3);
}