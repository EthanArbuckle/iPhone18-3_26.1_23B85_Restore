void *sub_10004F80C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = sub_1001F6508();
    v8 = v5 + *(a4 + 24);

    return sub_100018460(v8, a2, a2, v7);
  }

  return result;
}

void sub_10004F894()
{
  sub_10004F918();
  if (v0 <= 0x3F)
  {
    sub_1001F6508();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10004F918()
{
  if (!qword_1002AEC50)
  {
    v0 = sub_1001F74B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002AEC50);
    }
  }
}

unint64_t sub_10004F97C()
{
  result = qword_1002AEC88;
  if (!qword_1002AEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEC88);
  }

  return result;
}

unint64_t sub_10004F9D4()
{
  result = qword_1002AEC90;
  if (!qword_1002AEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEC90);
  }

  return result;
}

unint64_t sub_10004FA2C()
{
  result = qword_1002AEC98;
  if (!qword_1002AEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEC98);
  }

  return result;
}

unint64_t sub_10004FA80()
{
  result = qword_1002AECA8;
  if (!qword_1002AECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AECA8);
  }

  return result;
}

unint64_t sub_10004FAD4()
{
  result = qword_1002AECB0;
  if (!qword_1002AECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AECB0);
  }

  return result;
}

unint64_t sub_10004FB28()
{
  result = qword_1002AECC0;
  if (!qword_1002AECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AECC0);
  }

  return result;
}

_BYTE *sub_10004FB84(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10004FC50);
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

unint64_t sub_10004FC8C()
{
  result = qword_1002AECC8;
  if (!qword_1002AECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AECC8);
  }

  return result;
}

unint64_t sub_10004FCE4()
{
  result = qword_1002AECD0;
  if (!qword_1002AECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AECD0);
  }

  return result;
}

unint64_t sub_10004FD3C()
{
  result = qword_1002AECD8;
  if (!qword_1002AECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AECD8);
  }

  return result;
}

uint64_t sub_10004FE24()
{

  return sub_1001F7EA8();
}

uint64_t sub_10004FE54()
{

  return sub_1001F7D58();
}

uint64_t sub_10004FE7C()
{

  return sub_1001F7D18();
}

uint64_t sub_10004FE98()
{

  return sub_1001F7C08();
}

uint64_t sub_10004FEB4()
{

  return sub_1001F7C48();
}

uint64_t sub_10004FEF8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_100112888(a1), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004FF64(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    sub_100050548();
    sub_100112888(a3);
    if (v5)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v3 + 16);
      *(v3 + 16) = 0x8000000000000000;
      v7 = *(v9 + 24);
      sub_1000183C4(&qword_1002BCD00);
      sub_1001F7A98(isUniquelyReferenced_nonNull_native, v7);
      type metadata accessor for ASDOctaneValueIdentifier(0);
      sub_1000504E4();
      sub_1001F7AB8();
      *(v3 + 16) = v9;
    }
  }

  else
  {
    sub_100050548();
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v3 + 16);
    sub_10005053C();
    sub_1001E5FB4();
    *(v3 + 16) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_100050084(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_100112888(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_100050100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1000183C4(&qword_1002ACE98);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v24 - v9;
  if (a2)
  {
    switch(a3)
    {
      case 31:

        sub_10005053C();
        sub_1001F6258();
        v20 = sub_1001F6288();
        if (sub_10001C990(v10, 1, v20) == 1)
        {

          sub_10004BDE8(v10, &qword_1002ACE98);
          sub_100050490();
          result = swift_allocError();
          *v22 = 1;
          return result;
        }

        sub_10004BDE8(v10, &qword_1002ACE98);
        sub_100050548();
        swift_isUniquelyReferenced_nonNull_native();
        *&v24 = *(v4 + 24);
        sub_10005053C();
        sub_1001E607C();
        *(v4 + 24) = v24;
        swift_endAccess();
        return 0;
      case 6:

        v17 = sub_10005053C();
        sub_10014B7DC(v17, v18, v19);

        if (v26)
        {
          sub_100050548();

          swift_isUniquelyReferenced_nonNull_native();
          v29 = *(v4 + 24);
          sub_10005053C();
          sub_1001E607C();
          *(v4 + 24) = v29;
          swift_endAccess();
          v15 = &qword_1002AEDE0;
          v16 = &v25;
          goto LABEL_10;
        }

LABEL_13:
        sub_100050490();
        result = swift_allocError();
        *v23 = 1;
        return result;
      case 4:

        v11 = sub_10005053C();
        sub_1000E0BC4(v11, v12, v13);

        if (v26)
        {
          v14 = v28;
          sub_100050548();

          swift_isUniquelyReferenced_nonNull_native();
          v29 = *(v4 + 24);
          sub_10005053C();
          sub_1001E607C();
          *(v4 + 24) = v29;
          swift_endAccess();

          v24 = v27;
          sub_10001C838(&v24);
          v29 = v14;
          v15 = &qword_1002ACA10;
          v16 = &v29;
LABEL_10:
          sub_10004BDE8(v16, v15);
          return 0;
        }

        goto LABEL_13;
    }
  }

  else
  {
    sub_100050548();
    sub_1001EB174(a3);
    swift_endAccess();
  }

  return 0;
}

uint64_t sub_100050410()
{

  return v0;
}

uint64_t sub_100050438()
{
  sub_100050410();

  return swift_deallocClassInstance();
}

unint64_t sub_100050490()
{
  result = qword_1002AEDD8;
  if (!qword_1002AEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEDD8);
  }

  return result;
}

unint64_t sub_1000504E4()
{
  result = qword_1002AEDE8;
  if (!qword_1002AEDE8)
  {
    type metadata accessor for ASDOctaneValueIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEDE8);
  }

  return result;
}

uint64_t sub_100050548()
{

  return swift_beginAccess();
}

void *sub_100050560()
{
  v1 = *(v0 + 128);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000ADA68(0x6E692D6563697270, 0xEE00657361657263, 1819112552, 0xE400000000000000);
    v3 = *(v0 + 128);
    *(v0 + 128) = v2;
    *(v0 + 136) = v4;

    sub_10001F734(v3);
  }

  sub_10001F78C(v1);
  return v2;
}

uint64_t sub_10005060C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001EA8E8();
  v3 = sub_1001F10F8(1682534515, 0xE400000000000000, v2);
  if (v4 && (v5 = v3, v6 = v4, v7 = sub_1001F10F8(6580578, 0xE300000000000000, v2), v9 = v8, , v9))
  {
    sub_1000508FC(v5, v6, v7, __src);

    v15 = sub_100050560();
    v11 = v15;
    if (v15)
    {
      v17 = v16;
      *(&v25 + 1) = &type metadata for PriceIncreaseUIRoute.ViewProperties;
      *&v24 = swift_allocObject();
      memcpy((v24 + 16), __src, 0x61uLL);
      v18 = sub_1000ADFF4(&v24, v11, v17);
      v20 = v19;

      sub_100019CCC(&v24);
      sub_1000B738C(v18, v20, 1, &v24);
      v21 = v25;
      v22 = v24;
      v11 = v26 | ((v27 | (v28 << 16)) << 32);
      type metadata accessor for HTTPResponseHead._Storage();
      result = sub_100021728();
      v14 = v21;
      v12 = v22;
      v13 = 3;
      goto LABEL_6;
    }

    sub_10005125C(__src);
    type metadata accessor for HTTPResponseHead._Storage();
    result = sub_100021728();
    v12 = 0uLL;
    v13 = 49;
  }

  else
  {

    type metadata accessor for HTTPResponseHead._Storage();
    result = sub_100021728();
    v11 = 0;
    v12 = 0uLL;
    v13 = 21;
  }

  v14 = 0uLL;
LABEL_6:
  *(result + 32) = v13;
  *(result + 40) = 65537;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *a1 = result;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = 2;
  *(a1 + 24) = v12;
  *(a1 + 40) = v14;
  *(a1 + 56) = v11;
  *(a1 + 62) = BYTE6(v11);
  *(a1 + 60) = WORD2(v11);
  return result;
}

uint64_t sub_1000508FC@<X0>(void *a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, char *a3@<X2>, unint64_t *a4@<X8>)
{
  v108 = a2;
  v94 = a1;
  v90 = a4;
  v89 = sub_1001F60C8();
  sub_10001A278();
  v88 = v6;
  __chkstk_darwin(v7, v8);
  v87 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F6508();
  sub_10001A278();
  v12 = v11;
  v15 = __chkstk_darwin(v13, v14);
  v92 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v93 = v82 - v19;
  __chkstk_darwin(v18, v20);
  v22 = v82 - v21;
  v23 = *(v4 + 112);
  v91 = v4;
  sub_10001AE68((v4 + 88), v23);
  sub_1001B5F98();
  v24 = a3;
  v25 = sub_10008B260();
  v26 = *(v12 + 8);
  v27 = v22;
  v28 = v10;
  v26(v27, v10);
  if (!v25)
  {
    goto LABEL_4;
  }

  sub_1000C5464(4);
  if (v29)
  {

LABEL_4:
    sub_100021578();
    v30 = swift_allocError();
    return sub_1000513A0(v30, v31);
  }

  v108 = v26;
  v33 = v92;
  sub_1001F6418();
  v34 = v93;
  (*(v12 + 32))(v93, v33, v28);
  v35 = sub_1000C152C();
  if (((1 << v35) & 0x36) != 0)
  {
    sub_100021578();
    swift_allocError();
    *v36 = 0;
    v36[1] = 0;
    v36[2] = 33;
    swift_willThrow();

    return v108(v34, v28);
  }

  v37 = v35 == 0;
  sub_100026064(v91 + 48, &v95);
  v92 = sub_10001AE68(&v95, v97);
  v38 = sub_1000C1570();
  v94 = v25;
  if (v39)
  {
    v40 = v39;
    v41 = v38;
  }

  else
  {
    v41 = sub_1000BFC14();
    v40 = v42;
  }

  v92 = v24;
  sub_1000795A8();
  v43 = sub_1000EE5B8(v41, v40);

  if (!v43)
  {
    sub_100019CCC(&v95);
    sub_100021578();
    v48 = swift_allocError();
    sub_1000513A0(v48, v49);

    return v108(v34, v28);
  }

  v83 = v37;
  sub_100019CCC(&v95);
  v44 = v91;
  sub_10001AE68((v91 + 48), *(v91 + 72));
  sub_1000513C4();
  sub_10007992C();
  sub_10001AE68((v44 + 48), *(v44 + 72));
  sub_1000513C4();
  sub_10007A340();
  v45 = *(v43 + 56);

  v46 = sub_1000E087C(v45);

  v82[1] = v46;
  if (v46)
  {
    v47 = *(v46 + 40);
    v86 = *(v46 + 32);
    v85 = v47;
  }

  else
  {
    v86 = sub_1001E8450();
    v85 = v50;
  }

  v84 = v28;
  v51 = *(v43 + 176);
  v52 = *(v43 + 184);
  v53 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v53 setUnitsStyle:3];
  [v53 setAllowedUnits:4124];
  v54 = v87;
  sub_1001EC818(v51, v52);
  isa = sub_1001F6098().super.isa;
  (*(v88 + 8))(v54, v89);
  v56 = [v53 stringFromDateComponents:isa];

  if (v56)
  {
    v57 = sub_1001F6B58();
    v59 = v58;
  }

  else
  {

    v57 = 0;
    v59 = 0xE000000000000000;
  }

  v82[0] = sub_10004B628();
  v61 = v60;

  type metadata accessor for AppIconRoute();
  v62 = sub_1000513C4();
  v88 = sub_10005DC24(v62, v63);
  v87 = v64;
  sub_10001AE68((v91 + 48), *(v91 + 72));
  sub_1000513C4();
  v92 = sub_10007935C();
  v91 = v65;
  v95 = v86;
  v96 = v85;
  v109._countAndFlagsBits = 10272;
  v109._object = 0xE200000000000000;
  sub_1001F6CA8(v109);
  v110._countAndFlagsBits = v57;
  v110._object = v59;
  sub_1001F6CA8(v110);

  v111._countAndFlagsBits = 41;
  v111._object = 0xE100000000000000;
  sub_1001F6CA8(v111);
  v86 = v95;
  v85 = v96;
  sub_1000BFD40();
  v89 = v61;
  if ((v66 & 0x100000000) != 0)
  {
    sub_10001C7E4(v101);
    v107 = v98;
    sub_10001C838(&v107);
    v106 = v99;
    sub_10001C838(&v106);
    v105 = v100;
    sub_10001C88C(&v105);

    v69 = v82[0];
    v67 = v82[0];
  }

  else
  {
    v67 = sub_10004B450();
    v61 = v68;
    sub_10001C7E4(v101);
    v104 = v98;
    sub_10001C838(&v104);
    v103 = v99;
    sub_10001C838(&v103);
    v102 = v100;
    sub_10001C88C(&v102);
    v69 = v82[0];
  }

  if (qword_1002AC410 != -1)
  {
    swift_once();
  }

  v70 = qword_1002AE9E8;
  v71 = v93;
  v72 = sub_1001F6478().super.isa;
  v73 = [v70 stringFromDate:v72];

  v74 = sub_1001F6B58();
  v76 = v75;

  result = v108(v71, v84);
  v77 = v90;
  v78 = v87;
  *v90 = v88;
  v77[1] = v78;
  v79 = v91;
  v77[2] = v92;
  v77[3] = v79;
  v80 = v85;
  v77[4] = v86;
  v77[5] = v80;
  v81 = v89;
  v77[6] = v69;
  v77[7] = v81;
  v77[8] = v67;
  v77[9] = v61;
  v77[10] = v74;
  v77[11] = v76;
  *(v77 + 96) = v83;
  return result;
}

unint64_t sub_100051198(Swift::String a1, uint64_t a2, void *a3)
{
  sub_1001F6CA8(a1);
  v6._countAndFlagsBits = 38;
  v6._object = 0xE100000000000000;
  sub_1001F6CA8(v6);
  v7._countAndFlagsBits = 6580578;
  v7._object = 0xE300000000000000;
  sub_1001F6CA8(v7);
  v8._countAndFlagsBits = 61;
  v8._object = 0xE100000000000000;
  sub_1001F6CA8(v8);
  v9._countAndFlagsBits = a2;
  v9._object = a3;
  sub_1001F6CA8(v9);
  return 0xD000000000000014;
}

uint64_t sub_10005128C()
{

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_1000512F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_100051334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000513A0(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 25;

  return swift_willThrow();
}

uint64_t NIOHTTPServerRequestFull.init(head:body:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 46) = BYTE6(a6);
  *(a7 + 44) = WORD2(a6);
  return result;
}

uint64_t _s25ASOctaneSupportXPCService24NIOHTTPServerRequestFullV4headAA15HTTPRequestHeadVvg_0()
{
  v1 = *v0;

  return v1;
}

uint64_t _s25ASOctaneSupportXPCService24NIOHTTPServerRequestFullV4headAA15HTTPRequestHeadVvs_0(uint64_t a1, uint64_t a2, char a3)
{

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t _s25ASOctaneSupportXPCService24NIOHTTPServerRequestFullV4bodyAA10ByteBufferVSgvs_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 46) = BYTE6(a3);
  *(v3 + 44) = WORD2(a3);
  *(v3 + 40) = a3;
  return result;
}

uint64_t sub_100051578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, void, void, void))
{
  if (a3(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)))
  {
    v5 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 40) | ((*(a1 + 44) | (*(a1 + 46) << 16)) << 32);
        v8 = *(a2 + 32);
        v9 = *(a2 + 40) | ((*(a2 + 44) | (*(a2 + 46) << 16)) << 32);

        LOBYTE(v9) = static ByteBuffer.== infix(_:_:)(v10, v6, v7 & 0xFFFFFFFFFFFFFFLL, v5, v8, v9 & 0xFFFFFFFFFFFFFFLL);

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

Swift::Int sub_100051744(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

void sub_100051790()
{
  if (*v0 - 1 >= 2)
  {
    if (!*v0)
    {
      *v0 = 2;
      return;
    }

    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  sub_100052C20();
  sub_10002E0D8();
  swift_allocError();
  *v2 = v1;
  swift_willThrow();
}

void sub_100051808()
{
  v1 = 0;
  switch(*v0)
  {
    case 1:
      goto LABEL_4;
    case 2:
      return;
    case 3:
      v1 = 1;
      goto LABEL_4;
    default:
      v1 = 4;
LABEL_4:
      sub_100052C20();
      sub_10002E0D8();
      swift_allocError();
      *v2 = v1;
      swift_willThrow();
      return;
  }
}

void sub_100051898()
{
  v1 = 5;
  switch(*v0)
  {
    case 1:
      *v0 = 0;
      v1 = 2;
      goto LABEL_5;
    case 2:
      *v0 = 0;
      return;
    case 3:
      v1 = 1;
      goto LABEL_5;
    default:
LABEL_5:
      sub_100052C20();
      sub_10002E0D8();
      swift_allocError();
      *v2 = v1;
      swift_willThrow();
      return;
  }
}

Swift::Int sub_10005194C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t NIOHTTPServerRequestAggregator.__allocating_init(maxContentLength:closeOnExpectationFailed:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  NIOHTTPServerRequestAggregator.init(maxContentLength:closeOnExpectationFailed:)(a1, a2);
  return v4;
}

uint64_t NIOHTTPServerRequestAggregator.init(maxContentLength:closeOnExpectationFailed:)(uint64_t result, char a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 55) = 0;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 64) = result;
    *(v2 + 72) = a2 & 1;
    *(v2 + 73) = 0;
    return v2;
  }

  return result;
}

uint64_t NIOHTTPServerRequestAggregator.channelRead(context:data:)(uint64_t a1)
{
  v2 = v1;
  sub_1000183C4(&qword_1002ADD40);
  sub_1000375EC();
  v7 = v4;
  v8 = v5;
  v9 = v6;
  v10 = HIBYTE(v6);
  if (HIBYTE(v6))
  {
    if (v10 != 1)
    {
      sub_100051898();
      sub_1000527FC(a1, v7, v8, sub_100053260, &type metadata for NIOHTTPServerRequestFull);
      v25 = sub_10005329C();
      v28 = 2;
      return sub_100037548(v25, v26, v27, v28);
    }

    v33 = v4;
    *&v34 = v5;
    DWORD2(v34) = v6;
    WORD6(v34) = WORD2(v6);
    BYTE14(v34) = BYTE6(v6);
    sub_100051808();

    v11 = sub_100051F38(a1, &v33, v7, v8, v9 & 0xFFFFFFFFFFFFFFLL | 0x100000000000000);
    v13 = v12;
    v15 = v14;
    v16 = sub_10005329C();
    sub_100037548(v16, v17, v18, 1);
    if (!v11)
    {
LABEL_12:
      v25 = sub_10005329C();
      v28 = v10;
      return sub_100037548(v25, v26, v27, v28);
    }
  }

  else
  {
    sub_100051790();

    v11 = sub_100051E90(a1, v7, v8, v9, v7, v8, v9 & 0xFFFFFFFFFFFFFFLL);
    v13 = v19;
    v15 = v20;

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  v21 = sub_1000183C4(&qword_1002ADA10);
  v35 = v21;
  v33 = v11;
  *&v34 = v13;
  *(&v34 + 1) = v15;
  v36 = 2;

  ChannelHandlerContext.write(_:promise:)();
  sub_100034310(&v33);
  v35 = v21;
  v33 = 0;
  *&v34 = 0;
  *(&v34 + 7) = 0;
  HIBYTE(v34) = 2;
  v36 = 2;
  ChannelHandlerContext.writeAndFlush(_:promise:)();
  sub_100034310(&v33);
  v22 = *(v11 + 32);
  if (v22 < 0x3C && HTTPResponseStatus.code.getter(*(v11 + 16), *(v11 + 24), v22) == 413)
  {
    switch(*(v2 + 73))
    {
      case 1:
      case 3:
        __break(1u);
        JUMPOUT(0x100051E80);
      default:
        *(v2 + 73) = 1;
        sub_100052C20();
        sub_10002E0D8();
        swift_allocError();
        *v23 = 0;
        ChannelHandlerContext.fireErrorCaught(_:)();

        v35 = &type metadata for NIOHTTPObjectAggregatorEvent;
        LOBYTE(v33) = 1;
        ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
        sub_100019CCC(&v33);
        break;
    }
  }

  sub_1001B8BE0(*(v11 + 40), v13, v15);
  if (v24)
  {

    goto LABEL_12;
  }

  ChannelHandlerContext.close(mode:promise:)();

  v30 = sub_10005329C();
  result = sub_100037548(v30, v31, v32, v10);
  *(v2 + 73) = 3;
  return result;
}

unint64_t sub_100051E90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v11 = *(v7 + 16);
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  sub_1000370B8(v11);

  v12 = sub_1001BF444();
  if ((v13 & 1) != 0 || *(v7 + 64) >= v12)
  {
    return 0;
  }

  else
  {
    return sub_100052024(a5, a6, a7);
  }
}

unint64_t sub_100051F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 12);
  v8 = v7 - v6;
  if (v7 < v6)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = *(v5 + 64);
  result = swift_beginAccess();
  if (!*(v5 + 40))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v14 = *(v5 + 48);
  v15 = *(v5 + 52);
  v16 = v15 >= v14;
  v17 = v15 - v14;
  if (!v16)
  {
    goto LABEL_11;
  }

  v18 = __OFSUB__(v12, v17);
  v19 = v12 - v17;
  if (v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v19 < v8)
  {
    return sub_100052024(a3, a4, a5);
  }

  swift_beginAccess();
  ByteBuffer.writeBuffer(_:)();
  swift_endAccess();
  return 0;
}

unint64_t sub_100052024(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = *(v7 + 48);
    v9 = *(v7 + 50);
  }

  else
  {
    v8 = 1;
    v9 = 1;
  }

  sub_1000183C4(&qword_1002AC840);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001FE9E0;
  strcpy((v10 + 32), "content-length");
  *(v10 + 47) = -18;
  *(v10 + 48) = 48;
  *(v10 + 56) = 0xE100000000000000;
  type metadata accessor for HTTPResponseHead._Storage();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 34;
  *(v11 + 40) = v8;
  *(v11 + 42) = v9;
  if (!HIBYTE(a3))
  {
    sub_1001B8BE0(*(a1 + 48), a2, a3);
    if (v12)
    {
      return v11;
    }

    if ((sub_10002E9FC(0x697463656E6E6F63uLL, 0xEA00000000006E6FLL) & 1) == 0)
    {
LABEL_9:
      v14 = sub_1000375BC(1, 2, 1, v10);
      v14[2] = 2;
      v14[8] = 0x697463656E6E6F63;
      v14[9] = 0xEA00000000006E6FLL;
      v14[10] = 0x65736F6C63;
      v14[11] = 0xE500000000000000;
      sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0x697463656E6E6F63, 0xEA00000000006E6FLL);
      return v11;
    }

    __break(1u);
  }

  result = sub_10002E9FC(0x697463656E6E6F63uLL, 0xEA00000000006E6FLL);
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t NIOHTTPServerRequestAggregator.__deallocating_deinit()
{
  NIOHTTPServerRequestAggregator.deinit();

  return swift_deallocClassInstance();
}

uint64_t NIOHTTPClientResponseAggregator.__allocating_init(maxContentLength:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NIOHTTPClientResponseAggregator.init(maxContentLength:)(a1);
  return v2;
}

uint64_t NIOHTTPClientResponseAggregator.init(maxContentLength:)(uint64_t result)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 55) = 0;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = result;
    *(v1 + 72) = 0;
    return v1;
  }

  return result;
}

uint64_t NIOHTTPClientResponseAggregator.channelRead(context:data:)(uint64_t a1)
{
  sub_1000183C4(&qword_1002ADD48);
  sub_1000375F4();
  v5 = v2;
  v6 = v3;
  v7 = v4;
  if (HIBYTE(v4))
  {
    if (HIBYTE(v4) == 1)
    {
      v16[0] = v2;
      v16[1] = v3;
      v17 = v4;
      v18 = WORD2(v4);
      v19 = BYTE6(v4);
      sub_100051808();
      sub_1000526A0(a1, v16);
      v8 = sub_1000532AC();
      v11 = 1;
    }

    else
    {
      sub_100051898();
      sub_1000527FC(a1, v5, v6, sub_100034364, &type metadata for NIOHTTPClientResponseFull);
      v8 = sub_1000532AC();
      v11 = 2;
    }

    return sub_100037548(v8, v9, v10, v11);
  }

  else
  {
    sub_100051790();

    sub_100052584(a1, v5, v6, v7);
    v13 = sub_1000532AC();
    sub_100037548(v13, v14, v15, 0);
  }
}

uint64_t sub_100052584(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  sub_1000370B8(v5);

  result = sub_1001BF444();
  if ((v7 & 1) == 0 && *(v4 + 64) < result)
  {
    switch(*(v4 + 72))
    {
      case 1:
      case 3:
        __break(1u);
        JUMPOUT(0x100052690);
      default:
        *(v4 + 72) = 1;
        v10 = &type metadata for NIOHTTPObjectAggregatorEvent;
        v9[0] = 1;
        ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
        sub_100019CCC(v9);
        sub_100052C20();
        swift_allocError();
        *v8 = 0;
        ChannelHandlerContext.fireErrorCaught(_:)();

        break;
    }
  }

  return result;
}

uint64_t sub_1000526A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v2 + 64);
  swift_beginAccess();
  if (!*(v2 + 40))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    JUMPOUT(0x1000527ECLL);
  }

  v7 = *(v2 + 48);
  v8 = *(v2 + 52);
  v9 = v8 >= v7;
  v10 = v8 - v7;
  if (!v9)
  {
    goto LABEL_12;
  }

  v11 = __OFSUB__(v6, v10);
  v12 = v6 - v10;
  if (v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v12 < v5)
  {
    switch(*(v2 + 72))
    {
      case 1:
      case 3:
        goto LABEL_15;
      default:
        *(v2 + 72) = 1;
        v16 = &type metadata for NIOHTTPObjectAggregatorEvent;
        v15[0] = 1;
        ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
        sub_100019CCC(v15);
        sub_100052C20();
        swift_allocError();
        *v13 = 0;
        ChannelHandlerContext.fireErrorCaught(_:)();
    }
  }

  swift_beginAccess();
  ByteBuffer.writeBuffer(_:)();
  return swift_endAccess();
}

uint64_t sub_1000527FC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v7 = v5 + 16;
  v6 = *(v5 + 16);
  if (!v6)
  {
    return result;
  }

  v9 = v5;
  v12 = *(v5 + 32);
  v13 = *(v9 + 24);
  v28 = v13;

  if (a2)
  {
    v14 = sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0x72656C69617274, 0xE700000000000000);
    v15 = v14;
    __chkstk_darwin(v14, v16);
    result = sub_10003653C(&v28, a4);
    if (*(v28 + 16) < result)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    sub_100036918();

    sub_1001BA73C(v18);
    if ((a3 == 2) | v15 & 1)
    {
      v12 = 2;
    }

    v13 = v28;
  }

  result = swift_beginAccess();
  v19 = *(v9 + 40);
  if (!v19)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v20 = *(v9 + 48);
  if (HIDWORD(v20) < v20)
  {
    __break(1u);
    goto LABEL_18;
  }

  v25 = v12;
  if (HIDWORD(v20) == v20)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v21 = *(v9 + 56) | ((*(v9 + 60) | (*(v9 + 62) << 16)) << 32);
  }

  v22 = *(v9 + 16);
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;

  sub_1000370B8(v22);
  swift_beginAccess();
  result = *(v9 + 40);
  if (!result)
  {
    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    *(v9 + 40) = sub_10005EFF0(*(*(v9 + 40) + 16));
  }

  sub_1000532BC();
  swift_endAccess();
  v26[3] = a5;
  v23 = swift_allocObject();
  v26[0] = v23;
  *(v23 + 16) = v6;
  *(v23 + 24) = v13;
  *(v23 + 32) = v25;
  *(v23 + 40) = v19;
  *(v23 + 48) = v20;
  *(v23 + 62) = BYTE6(v21);
  *(v23 + 60) = WORD2(v21);
  *(v23 + 56) = v21;
  v27 = 2;

  ChannelHandlerContext.fireChannelRead(_:)();

  sub_100034310(v26);
}

uint64_t _s25ASOctaneSupportXPCService30NIOHTTPServerRequestAggregatorC12handlerAdded7contextyAA21ChannelHandlerContextC_tF_0()
{
  v1 = v0;
  sub_10009B39C();
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(v3 + 16))(ObjectType, v3);
  swift_unknownObjectRelease();
  if (qword_1002AC430 != -1)
  {
    swift_once();
  }

  v5 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v6 = qword_1002E6088;
  v7 = dword_1002E6090;
  v8 = word_1002E6094;
  v9 = byte_1002E6096;
  swift_beginAccess();
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  *(v1 + 62) = v9;
  *(v1 + 60) = v8;
  *(v1 + 56) = v7;
}

uint64_t _s25ASOctaneSupportXPCService30NIOHTTPServerRequestAggregatorCfd_0()
{
  sub_1000370B8(*(v0 + 16));

  return v0;
}

uint64_t NIOHTTPClientResponseAggregator.__deallocating_deinit()
{
  NIOHTTPServerRequestAggregator.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_100052C20()
{
  result = qword_1002AEEF0;
  if (!qword_1002AEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEEF0);
  }

  return result;
}

unint64_t sub_100052C78()
{
  result = qword_1002AEEF8;
  if (!qword_1002AEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEEF8);
  }

  return result;
}

__n128 sub_100052CCC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100052CF4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 47))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100052D34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 46) = 0;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 47) = 1;
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

    *(result + 47) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_100052DF4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x100052EC0);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100052EF8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100052FC4);
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

_BYTE *sub_100053004(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x1000530D0);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10005310C()
{
  result = qword_1002AF118;
  if (!qword_1002AF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF118);
  }

  return result;
}

unint64_t sub_100053164()
{
  result = qword_1002AF120;
  if (!qword_1002AF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF120);
  }

  return result;
}

unint64_t sub_1000531BC()
{
  result = qword_1002AF128;
  if (!qword_1002AF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF128);
  }

  return result;
}

uint64_t sub_100053214()
{

  return _swift_deallocObject(v0, 63, 7);
}

void sub_1000532BC()
{
  *(v0 + 56) = *(*(v0 + 40) + 16);
  *(v0 + 60) = 0;
  *(v0 + 62) = 0;
  *(v0 + 48) = 0;
}

double sub_1000532D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000183C4(&qword_1002AF130);
  sub_100056658(v4);
  sub_10001E844();
  __chkstk_darwin(v5, v6);
  v61 = v52 - v7;
  type metadata accessor for StatusResponse.Datum.TransactionContainer();
  sub_10001A278();
  v59 = v9;
  v60 = v8;
  __chkstk_darwin(v8, v10);
  sub_100023510();
  v58 = v12 - v11;
  v13 = *(a1 + 16);
  v70 = *a1;
  v71 = v13;
  v14 = *(a1 + 48);
  v72 = *(a1 + 32);
  v73 = v14;
  sub_1001E9238();
  v16 = v15;
  v67 = v17 & 1;
  sub_1001E947C();
  v19 = v18;
  v66 = v20 & 1;
  v74[0] = v72;
  *(v65 + 7) = v72;
  v68 = *(a1 + 72);
  v69 = *(a1 + 88);
  v21 = v69;
  if (v69)
  {

    sub_100054AEC(a1);
    v23 = v22;
    v24 = *(v22 + 16);
    if (v24)
    {
      v53 = v21;
      v54 = v19;
      v55 = v16;
      v56 = a2;
      v64 = _swiftEmptyArrayStorage;
      sub_100033FCC(0, v24, 0);
      v25 = v64;
      v52[1] = v23;
      v26 = (v23 + 48);
      v57 = xmmword_1001FE9E0;
      while (1)
      {
        v27 = *(v26 - 1);
        v62 = *(v26 - 2);
        v28 = *v26;
        if (*v26)
        {

          sub_1000551E0(a1, v63);
          v29 = v28;

          v30 = v29;
          sub_1000551E0(a1, v63);
          v31 = v61;
          sub_100053B2C(v30, a1, v61);
          if (sub_10001C990(v31, 1, v60) != 1)
          {
            v33 = a1;
            v34 = v58;
            sub_10005523C(v31, v58);
            sub_1000183C4(&qword_1002AF138);
            v35 = (*(v59 + 80) + 32) & ~*(v59 + 80);
            v32 = swift_allocObject();
            *(v32 + 1) = v57;
            v36 = v34;
            a1 = v33;
            sub_10005523C(v36, v32 + v35);

            sub_10005518C(v33);

            goto LABEL_10;
          }

          sub_1000374B8(v31, &qword_1002AF130);

          sub_10005518C(a1);
        }

        else
        {
        }

        v32 = _swiftEmptyArrayStorage;
LABEL_10:
        v64 = v25;
        v38 = v25[2];
        v37 = v25[3];
        if (v38 >= v37 >> 1)
        {
          v40 = sub_10005669C(v37);
          sub_100033FCC(v40, v38 + 1, 1);
          v25 = v64;
        }

        v26 += 3;
        v25[2] = v38 + 1;
        v39 = &v25[3 * v38];
        v39[4] = v62;
        v39[5] = v27;
        v39[6] = v32;
        if (!--v24)
        {

          sub_10005518C(a1);
          v16 = v55;
          a2 = v56;
          v19 = v54;
          LOBYTE(v21) = v53;
          goto LABEL_19;
        }
      }
    }

    sub_10005518C(a1);
    v25 = _swiftEmptyArrayStorage;
LABEL_19:
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v41 = v69;
    v42 = *(&v68 + 1);
    v43 = v68;
    v44 = *(a1 + 64);
    if (sub_10013B560(v44))
    {
      v62 = v43;
      sub_1001C19A8(0, (v44 & 0xC000000000000001) == 0, v44);
      if ((v44 & 0xC000000000000001) != 0)
      {
        sub_1000552A0(v74, v63);
        sub_1000552FC(&v68, v63);
        v46 = sub_1001F7808();
      }

      else
      {
        v45 = *(v44 + 32);
        sub_1000552A0(v74, v63);
        sub_1000552FC(&v68, v63);
        v46 = v45;
      }

      LOBYTE(v21) = v41;
      v43 = v62;
    }

    else
    {
      sub_1000552A0(v74, v63);
      sub_1000552FC(&v68, v63);
      v46 = 0;
      LOBYTE(v21) = v41;
    }

    v25 = sub_1000545B0(v46, v43, v42, a1);
  }

  v63[0] = v21 & 1;
  v49 = v67;
  v50 = v66;
  *a2 = v16;
  *(a2 + 8) = v49;
  *(a2 + 16) = v19;
  *(a2 + 24) = v50;
  result = v65[0];
  *(a2 + 25) = *v65;
  *(a2 + 40) = *(&v65[1] + 7);
  *(a2 + 48) = 0x65646F6358;
  *(a2 + 56) = 0xE500000000000000;
  *(a2 + 64) = v25;
  *(a2 + 72) = v47;
  *(a2 + 80) = v48;
  *(a2 + 88) = v21 & 1;
  return result;
}

uint64_t sub_100053770(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001F8188();
  sub_10004BD98(v7, v8);
  if (a5)
  {
    sub_1000183C4(&qword_1002AF2E0);
    sub_1000564E0();
  }

  else
  {
    sub_100056564();
  }

  sub_1001F7F18();
  return sub_100019CCC(v7);
}

uint64_t sub_10005389C(void *a1)
{
  v2 = sub_1001F6508();
  sub_10001A278();
  v4 = v3;
  __chkstk_darwin(v5, v6);
  sub_100023510();
  v9 = v8 - v7;
  sub_1001F64E8();
  v10 = sub_1000C15EC();
  v11 = *(v4 + 8);
  v11(v9, v2);
  if (v10)
  {

    return 4;
  }

  if (sub_1000C1760())
  {

    return 3;
  }

  sub_1001F64E8();
  v13 = sub_1000C18DC();
  v11(v9, v2);
  if (v13)
  {

    return 1;
  }

  sub_1000C5464(3);
  if (v14)
  {
  }

  else
  {
    v15 = sub_1000BFBB0();

    if (v15)
    {
      return 5;
    }
  }

  return 2;
}

unint64_t sub_1000539EC(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_100053A28@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000539EC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100053A54()
{
  v1 = sub_100056690();
  result = sub_1000539FC(v1);
  *v0 = result;
  return result;
}

uint64_t sub_100053B2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a3;
  v6 = sub_1000183C4(&qword_1002AF140);
  sub_100056658(v6);
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  v10 = &v76 - v9;
  v11 = sub_1000183C4(&qword_1002AF148);
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v12, v13);
  v78 = &v76 - v14;
  v15 = sub_1000183C4(&qword_1002AF150);
  sub_100056658(v15);
  sub_10001E844();
  __chkstk_darwin(v16, v17);
  v85 = &v76 - v18;
  v83 = sub_1000183C4(&qword_1002AC7C8);
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v19, v20);
  sub_100056624();
  v21 = type metadata accessor for RenewalInfo();
  v22 = sub_100056658(v21);
  __chkstk_darwin(v22, v23);
  sub_100023510();
  v84 = (v25 - v24);
  v26 = sub_1000183C4(&unk_1002B3450);
  sub_100056658(v26);
  sub_10001E844();
  __chkstk_darwin(v27, v28);
  v30 = &v76 - v29;
  v31 = type metadata accessor for CheddarTransaction();
  v32 = sub_100056658(v31);
  __chkstk_darwin(v32, v33);
  sub_100023510();
  v36 = (v35 - v34);
  v86 = type metadata accessor for StatusResponse.Datum.TransactionContainer();
  sub_100023520();
  __chkstk_darwin(v37, v38);
  sub_100023510();
  v41 = v40 - v39;
  v42 = a1;
  *v41 = sub_10005389C(v42);
  v43 = sub_1000C5458(8);
  v79 = v3;
  v88 = v36;
  if (v44)
  {
    v43 = sub_1000C1A68();
  }

  v89 = v43;
  *(v41 + 8) = sub_1001F7E28();
  *(v41 + 16) = v45;
  v80 = v45;
  v46 = *(a2 + 48);
  v47 = *(a2 + 56);
  v48 = *(a2 + 136);
  v49 = *(a2 + 144);
  swift_bridgeObjectRetain_n();
  v50 = v42;
  v81 = v48;
  v82 = v46;
  sub_100140370(v50, v46, v48, v49, v88);
  sub_1000C1AC4(v30);
  v51 = sub_1001F6508();
  LODWORD(v46) = sub_10001C990(v30, 1, v51);
  sub_1000374B8(v30, &unk_1002B3450);
  if (v46 == 1)
  {
    v76 = v11;
    v77 = v10;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v52 = sub_1001F6688();
    sub_100019C94(v52, qword_1002E6180);
    v53 = v50;
    v54 = sub_1001F6668();
    v55 = sub_1001F7298();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = sub_1000C1A68();
    }

    else
    {

      v54 = v53;
    }

    v11 = v76;

    v10 = v77;
  }

  v57 = *(a2 + 96);
  v58 = v50;

  v59 = v84;
  sub_100133AD8(v58, v57, v82, v47, v81, v49, v84);
  v60 = v85;
  v61 = v88;
  (*(a2 + 104))(v88);
  if (sub_10001C990(v60, 1, v83) == 1)
  {
    sub_10005518C(a2);

    sub_1000565FC();
    sub_1000565E4();
    sub_10005541C(v61, v62);
    v63 = &qword_1002AF150;
    v64 = v60;
LABEL_14:
    sub_1000374B8(v64, v63);

    return sub_100018460(v87, 1, 1, v86);
  }

  v65 = v60;
  v66 = v61;
  v67 = v79;
  sub_100055358(v65, v79, &qword_1002AC7C8);
  (*(a2 + 120))(v59);
  sub_10005518C(a2);

  sub_1000565FC();
  sub_1000565E4();
  sub_10005541C(v66, v68);
  if (sub_10001C990(v10, 1, v11) == 1)
  {
    sub_1000374B8(v67, &qword_1002AC7C8);
    v63 = &qword_1002AF140;
    v64 = v10;
    goto LABEL_14;
  }

  v70 = v78;
  sub_100055358(v10, v78, &qword_1002AF148);
  v71 = v86;
  sub_100055358(v67, v41 + *(v86 + 24), &qword_1002AC7C8);
  sub_100055358(v70, v41 + *(v71 + 28), &qword_1002AF148);
  sub_1000553B8(v41, v87);
  sub_100056664();
  sub_100018460(v72, v73, v74, v75);
  return sub_10005541C(v41, type metadata accessor for StatusResponse.Datum.TransactionContainer);
}

uint64_t sub_100054140(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A638;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100054190(char a1)
{
  result = 0x737574617473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100054228(void *a1)
{
  v4 = sub_1000183C4(&qword_1002AF268);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  sub_100056624();
  sub_10001AE68(a1, a1[3]);
  sub_100055CB4();
  sub_1000566A8();
  sub_100055D08();
  sub_100056670();
  sub_1001F7DC8();
  if (!v1)
  {
    sub_100056670();
    sub_1001F7D88();
    type metadata accessor for StatusResponse.Datum.TransactionContainer();
    sub_1000183C4(&qword_1002AC7C8);
    sub_100055D5C(&qword_1002AF280, &qword_1002AC7C8);
    sub_100056670();
    sub_1001F7DC8();
    sub_1000183C4(&qword_1002AF148);
    sub_100055D5C(&qword_1002AF288, &qword_1002AF148);
    sub_100056670();
    sub_1001F7DC8();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_100054478@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100054140(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000544A8()
{
  v1 = sub_100056690();
  result = sub_100054190(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000544EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100054140(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100054520(uint64_t a1)
{
  v2 = sub_100055CB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005455C(uint64_t a1)
{
  v2 = sub_100055CB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000545B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000183C4(&qword_1002AF130);
  sub_100056658(v7);
  sub_10001E844();
  __chkstk_darwin(v8, v9);
  v11 = &v25[-v10 - 8];
  v12 = type metadata accessor for StatusResponse.Datum.TransactionContainer();
  sub_10001A278();
  v14 = v13;
  __chkstk_darwin(v15, v16);
  sub_100023510();
  v19 = v18 - v17;
  if (a1)
  {
    v20 = a1;
    sub_1000551E0(a4, v25);
    sub_100053B2C(v20, a4, v11);
    if (sub_10001C990(v11, 1, v12) == 1)
    {
      sub_1000374B8(v11, &qword_1002AF130);
    }

    else
    {
      sub_10005523C(v11, v19);
      sub_1000183C4(&qword_1002AF138);
      v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1001FE9E0;
      sub_10005523C(v19, v22 + v21);
      a1 = v20;
    }
  }

  sub_10005518C(a4);

  return a2;
}

uint64_t sub_100054788(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A6B8;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000547DC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_100054818(void *a1)
{
  v4 = sub_1000183C4(&qword_1002AF240);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  sub_100056624();
  sub_10001AE68(a1, a1[3]);
  sub_100055B64();
  sub_1001F8198();
  sub_100056670();
  sub_1001F7D88();
  if (!v1)
  {
    sub_1000183C4(&qword_1002AF250);
    sub_100055BB8();
    sub_100056670();
    sub_1001F7DC8();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1000549C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100054788(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000549F0()
{
  v1 = sub_100056690();
  result = sub_1000547DC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100054A20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100054788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100054A54(uint64_t a1)
{
  v2 = sub_100055B64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054A90(uint64_t a1)
{
  v2 = sub_100055B64();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100054AEC(uint64_t a1)
{
  if ((*(a1 + 88) & 1) == 0)
  {
    return;
  }

  v1 = *(a1 + 72);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_37:
    sub_10006E594(v7);

    return;
  }

  v3 = *(a1 + 64);
  v4 = sub_10001A07C(v3);
  v5 = 0;
  v31 = v3 & 0xFFFFFFFFFFFFFF8;
  v32 = v3 & 0xC000000000000001;
  v30 = v3 + 32;
  v6 = (v1 + 40);
  v7 = _swiftEmptyArrayStorage;
  v8 = 24;
  while (1)
  {
    v10 = *(v6 - 1);
    v9 = *v6;
    if (v5 >= v4)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100056634();
        v7 = v24;
      }

      v21 = v7[2];
      v20 = v7[3];
      if (v21 >= v20 >> 1)
      {
        sub_10005669C(v20);
        sub_100056664();
        sub_1000329D0();
        v7 = v25;
      }

      v7[2] = v21 + 1;
      v19 = (v7 + v21 * v8);
      goto LABEL_25;
    }

    if (!v32)
    {
      break;
    }

    v12 = sub_1001F7808();
LABEL_9:
    v13 = v12;
    v14 = sub_1000C5388(15);
    if (v15)
    {
      if (v14 == v10 && v15 == v9)
      {

LABEL_27:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100056634();
          v7 = v28;
        }

        v8 = v7[2];
        v22 = v7[3];
        if (v8 >= v22 >> 1)
        {
          sub_10005669C(v22);
          sub_100056664();
          sub_1000329D0();
          v7 = v29;
        }

        sub_10005667C();
        v23[4] = v10;
        v23[5] = v9;
        v23[6] = v13;
        ++v5;
        goto LABEL_32;
      }

      v17 = sub_1001F7EA8();

      if (v17)
      {
        goto LABEL_27;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100056634();
      v7 = v26;
    }

    v8 = v7[2];
    v18 = v7[3];
    if (v8 >= v18 >> 1)
    {
      sub_10005669C(v18);
      sub_100056664();
      sub_1000329D0();
      v7 = v27;
    }

    sub_10005667C();
LABEL_25:
    v19[4] = v10;
    v19[5] = v9;
    v19[6] = 0;
LABEL_32:
    v6 += 2;
    if (!--v2)
    {
      goto LABEL_37;
    }
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5 >= *(v31 + 16))
    {
      goto LABEL_39;
    }

    v11 = *(v30 + 8 * v5);

    v12 = v11;
    goto LABEL_9;
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_100054D58(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A708;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100054DA4(char a1)
{
  result = 1684632420;
  switch(a1)
  {
    case 1:
      result = 0x496D616441707061;
      break;
    case 2:
      result = 0x6449656C646E7562;
      break;
    case 3:
      result = 0x6D6E6F7269766E65;
      break;
    case 4:
      result = 1635017060;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100054E4C(void *a1)
{
  v4 = sub_1000183C4(&qword_1002AF228);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  sub_100056624();
  sub_10001AE68(a1, a1[3]);
  sub_100055ABC();
  sub_1000566A8();
  sub_1000565D0();
  sub_1001F7D48();
  if (!v1)
  {
    sub_1000565D0();
    sub_1001F7D48();
    sub_1000565D0();
    sub_1001F7D88();
    sub_1000565D0();
    sub_1001F7D88();
    sub_100055B10();
    sub_1001F7DC8();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_10005501C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100054D58(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10005504C()
{
  v1 = sub_100056690();
  result = sub_100054DA4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_10005507C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100054D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000550B0(uint64_t a1)
{
  v2 = sub_100055ABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000550EC(uint64_t a1)
{
  v2 = sub_100055ABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for StatusResponse.Datum.TransactionContainer()
{
  result = qword_1002AF1B0;
  if (!qword_1002AF1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005523C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusResponse.Datum.TransactionContainer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100055358(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000183C4(a3);
  sub_100023520();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000553B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusResponse.Datum.TransactionContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005541C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100023520();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100055498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000183C4(&qword_1002AC7C8);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_1000183C4(&qword_1002AF148);
      v10 = *(a3 + 28);
    }

    return sub_10001C990(a1 + v10, a2, v9);
  }
}

uint64_t sub_100055590(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000183C4(&qword_1002AC7C8);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_1000183C4(&qword_1002AF148);
      v10 = *(a4 + 28);
    }

    return sub_100018460(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_100055670()
{
  sub_10005570C();
  if (v0 <= 0x3F)
  {
    sub_1000557D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005570C()
{
  if (!qword_1002AF1C0)
  {
    type metadata accessor for CheddarTransaction();
    sub_100055C6C(&qword_1002AF1C8, type metadata accessor for CheddarTransaction);
    sub_100055C6C(&qword_1002AF1D0, type metadata accessor for CheddarTransaction);
    v0 = type metadata accessor for JWS();
    if (!v1)
    {
      atomic_store(v0, &qword_1002AF1C0);
    }
  }
}

void sub_1000557D8()
{
  if (!qword_1002AF1D8)
  {
    type metadata accessor for RenewalInfo();
    sub_100055C6C(&qword_1002AF1E0, type metadata accessor for RenewalInfo);
    sub_100055C6C(&unk_1002AF1E8, type metadata accessor for RenewalInfo);
    v0 = type metadata accessor for JWS();
    if (!v1)
    {
      atomic_store(v0, &qword_1002AF1D8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for StatusResponse.Datum.TransactionContainer.Code(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x100055970);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000559BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1000559FC(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_100055A68()
{
  result = qword_1002AF220;
  if (!qword_1002AF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF220);
  }

  return result;
}

unint64_t sub_100055ABC()
{
  result = qword_1002AF230;
  if (!qword_1002AF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF230);
  }

  return result;
}

unint64_t sub_100055B10()
{
  result = qword_1002AF238;
  if (!qword_1002AF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF238);
  }

  return result;
}

unint64_t sub_100055B64()
{
  result = qword_1002AF248;
  if (!qword_1002AF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF248);
  }

  return result;
}

unint64_t sub_100055BB8()
{
  result = qword_1002AF258;
  if (!qword_1002AF258)
  {
    sub_100019BC4(&qword_1002AF250);
    sub_100055C6C(&qword_1002AF260, type metadata accessor for StatusResponse.Datum.TransactionContainer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF258);
  }

  return result;
}

uint64_t sub_100055C6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100055CB4()
{
  result = qword_1002AF270;
  if (!qword_1002AF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF270);
  }

  return result;
}

unint64_t sub_100055D08()
{
  result = qword_1002AF278;
  if (!qword_1002AF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF278);
  }

  return result;
}

uint64_t sub_100055D5C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100055DB0()
{
  result = qword_1002AF290;
  if (!qword_1002AF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF290);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StatusResponse.Datum.TransactionContainer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x100055ED0);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StatusResponse.Datum.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100055FD4);
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

_BYTE *storeEnumTagSinglePayload for StatusResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x1000560D8);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

__n128 sub_100056110(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100056124(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100056164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1000561CC()
{
  result = qword_1002AF298;
  if (!qword_1002AF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF298);
  }

  return result;
}

unint64_t sub_100056224()
{
  result = qword_1002AF2A0;
  if (!qword_1002AF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2A0);
  }

  return result;
}

unint64_t sub_10005627C()
{
  result = qword_1002AF2A8;
  if (!qword_1002AF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2A8);
  }

  return result;
}

unint64_t sub_1000562D4()
{
  result = qword_1002AF2B0;
  if (!qword_1002AF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2B0);
  }

  return result;
}

unint64_t sub_10005632C()
{
  result = qword_1002AF2B8;
  if (!qword_1002AF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2B8);
  }

  return result;
}

unint64_t sub_100056384()
{
  result = qword_1002AF2C0;
  if (!qword_1002AF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2C0);
  }

  return result;
}

unint64_t sub_1000563DC()
{
  result = qword_1002AF2C8;
  if (!qword_1002AF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2C8);
  }

  return result;
}

unint64_t sub_100056434()
{
  result = qword_1002AF2D0;
  if (!qword_1002AF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2D0);
  }

  return result;
}

unint64_t sub_10005648C()
{
  result = qword_1002AF2D8;
  if (!qword_1002AF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2D8);
  }

  return result;
}

unint64_t sub_1000564E0()
{
  result = qword_1002AF2E8;
  if (!qword_1002AF2E8)
  {
    sub_100019BC4(&qword_1002AF2E0);
    sub_100056564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2E8);
  }

  return result;
}

unint64_t sub_100056564()
{
  result = qword_1002AF2F0;
  if (!qword_1002AF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2F0);
  }

  return result;
}

uint64_t sub_1000565FC()
{

  return sub_10005541C(v0, type metadata accessor for RenewalInfo);
}

void sub_100056634()
{

  sub_1000329D0();
}

uint64_t sub_1000566A8()
{

  return sub_1001F8198();
}

uint64_t sub_1000566C8(int a1, char a2)
{
  v4 = v2;
  type metadata accessor for BaseSocket();
  v7 = sub_1000E1DDC(a1, 1, a2);
  if (v3)
  {
    type metadata accessor for ServerSocket();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 20) = a1 == 1;
    return sub_1000E2024(v7);
  }
}

uint64_t sub_100056768(uint64_t a1, char a2)
{
  *(v2 + 20) = 0;
  v5 = sub_1000E2024(a1);
  if (!v3 && (a2 & 1) != 0)
  {
    if (sub_1000E220C())
    {
      sub_10019EEBC();
    }

    else
    {
      sub_1000274C4();
      swift_allocError();
      *v6 = 0xD00000000000001FLL;
      *(v6 + 8) = 0x8000000100224AB0;
      *(v6 + 16) = 9;
      swift_willThrow();
    }
  }

  return v5;
}

void sub_100056824(int a1)
{
  if (sub_1000E220C())
  {
    sub_10019E838(*(v1 + 16), a1);
  }

  else
  {
    sub_1000274C4();
    swift_allocError();
    *v3 = 0xD00000000000001FLL;
    *(v3 + 8) = 0x8000000100224AB0;
    *(v3 + 16) = 9;
    swift_willThrow();
  }
}

void sub_1000568C0()
{
  v2 = v1;
  if (*(v0 + 20) != 1 || !sub_1000E220C())
  {
    goto LABEL_5;
  }

  sub_10019E704();
  if (v1)
  {

    v2 = 0;
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v4 = sub_1000E2678();
  SocketAddress.pathname.getter(v4);
  v3 = v5;

LABEL_6:
  sub_1000E21B0();
  if (!v2)
  {
    if (!v3)
    {
      return;
    }

    sub_10013E9CC();
  }
}

unint64_t sub_100056A1C(uint64_t a1)
{
  result = sub_100056A44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100056A44()
{
  result = qword_1002AF418;
  if (!qword_1002AF418)
  {
    type metadata accessor for ServerSocket();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF418);
  }

  return result;
}

void *sub_100056A98@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v29 = 1;
  v30 = 0;
  if (a1)
  {
    type metadata accessor for AllSetDialog();
    swift_allocObject();
    v3 = sub_10013CD98();
  }

  else
  {
    v3 = 0;
  }

  __src[0] = 0;
  __src[1] = 0;
  __src[2] = _swiftEmptyArrayStorage;
  LOWORD(__src[3]) = v30;
  strcpy(&__src[4], "17322632127");
  HIDWORD(__src[5]) = -352321536;
  __src[6] = 0;
  LOBYTE(__src[7]) = v29;
  __src[8] = 0;
  __src[9] = 0;
  __src[10] = 0xF000000000000000;
  __src[11] = 0;
  __src[12] = 0;
  __src[13] = 1;
  memset(&__src[14], 0, 64);
  LOBYTE(__src[22]) = 22;
  __src[23] = 0;
  __src[24] = 0;
  __src[25] = v3;
  LOBYTE(__src[26]) = 2;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = _swiftEmptyArrayStorage;
  v8 = v30;
  v9 = 0;
  v10 = 0x3233363232333731;
  v11 = 0xEB00000000373231;
  v12 = 0;
  v13 = v29;
  v14 = 0;
  v15 = 0;
  v16 = 0xF000000000000000;
  v17 = 0;
  v18 = 0;
  v19 = 1;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v24 = 22;
  v26 = 0;
  v25 = 0;
  v27 = v3;
  v28 = 2;
  sub_100057E10(__src, v5);
  sub_100057E48(v7);
  return memcpy(a2, __src, 0xD1uLL);
}

void *sub_100056C08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100056A98(0, __src);
  v12 = v10;
  v4 = v11;
  type metadata accessor for ConfirmDialog();
  swift_allocObject();
  v5 = sub_10013CB18(a1);
  sub_10004BDE8(&v12, &qword_1002AF480);
  memcpy(__dst, __src, 0xB0uLL);
  LOBYTE(__dst[22]) = 19;
  *(&__dst[22] + 1) = *v9;
  __dst[24] = *&v9[15];
  __dst[25] = v5;
  LOBYTE(__dst[26]) = v4;
  memcpy(v14, __src, 0xB0uLL);
  v14[176] = 19;
  *v15 = *v9;
  *&v15[15] = *&v9[15];
  v16 = v5;
  v17 = v4;
  sub_100057E10(__dst, v7);
  sub_100057E48(v14);
  return memcpy(a2, __dst, 0xD1uLL);
}

void *sub_100056D28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, char a7@<W7>, void *a8@<X8>, uint64_t a9, char a10)
{
  sub_100056A98(0, __src);
  v23 = v37;
  v24 = __src[176];
  v16 = v36;
  if (a7)
  {
  }

  else
  {
    v39[0] = v36;
    type metadata accessor for AlreadyOwnSubscriptionDialog();
    swift_unknownObjectRetain();

    v16 = sub_10013B970(v17, a3, a4, a5, a6, a9, a1, a2);
    sub_10004BDE8(v39, &qword_1002AF480);
  }

  v38 = v35;

  swift_unknownObjectRelease();
  sub_10004BDE8(&v38, &qword_1002AEBE0);
  if (a10)
  {
    v18 = 4;
  }

  else
  {
    v18 = v24;
  }

  if (a10)
  {
    v19 = 1;
  }

  else
  {
    v19 = v23;
  }

  memcpy(__dst, __src, 0xB0uLL);
  LOBYTE(__dst[22]) = v18;
  *(&__dst[22] + 1) = *v34;
  HIDWORD(__dst[22]) = *&v34[3];
  __dst[23] = 0x1000000000000026;
  __dst[24] = 0x80000001002250B0;
  __dst[25] = v16;
  LOBYTE(__dst[26]) = v19;
  memcpy(v27, __src, 0xB0uLL);
  v27[176] = v18;
  *v28 = *v34;
  *&v28[3] = *&v34[3];
  v29 = 0x1000000000000026;
  v30 = 0x80000001002250B0;
  v31 = v16;
  v32 = v19;
  sub_100057E10(__dst, v25);
  sub_100057E48(v27);
  return memcpy(a8, __dst, 0xD1uLL);
}

void *sub_100056F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, void *a6@<X8>)
{
  sub_100056A98(0, __src);
  v19 = v17;
  v12 = v18;
  a4(0);
  swift_allocObject();
  v13 = a5(a1, a2, a3);
  sub_10004BDE8(&v19, &qword_1002AF480);
  memcpy(__dst, __src, 0xC8uLL);
  __dst[25] = v13;
  LOBYTE(__dst[26]) = v12;
  memcpy(v21, __src, sizeof(v21));
  v22 = v13;
  v23 = v12;
  sub_100057E10(__dst, v15);
  sub_100057E48(v21);
  return memcpy(a6, __dst, 0xD1uLL);
}

void *sub_100057098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_100056A98(0, __src);
  v24 = v21;
  v23 = v20;
  memcpy(__dst, __src, sizeof(__dst));
  v16[0] = *v19;
  *(v16 + 3) = *&v19[3];
  v11 = v22;
  sub_10004BDE8(&v23, &qword_1002AEBE0);
  type metadata accessor for PurchaseEngagementDialog();
  v12 = sub_10013BA10(a1, a2, a3, a4, a5);
  sub_10004BDE8(&v24, &qword_1002AF480);
  memcpy(v25, __dst, 0xB0uLL);
  LOBYTE(v25[22]) = 19;
  *(&v25[22] + 1) = v16[0];
  HIDWORD(v25[22]) = *(v16 + 3);
  v25[23] = 0xD000000000000022;
  v25[24] = 0x8000000100225080;
  v25[25] = v12;
  LOBYTE(v25[26]) = v11;
  memcpy(v26, __dst, 0xB0uLL);
  v26[176] = 19;
  *v27 = v16[0];
  *&v27[3] = *(v16 + 3);
  v28 = 0xD000000000000022;
  v29 = 0x8000000100225080;
  v30 = v12;
  v31 = v11;
  sub_100057E10(v25, v15);
  sub_100057E48(v26);
  return memcpy(a6, v25, 0xD1uLL);
}

uint64_t sub_100057258(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A7A0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000572B4(char a1)
{
  result = 0x73676E6970;
  switch(a1)
  {
    case 1:
      result = 0x6F44656C676E696ALL;
      break;
    case 2:
      result = 0x6341656C676E696ALL;
      break;
    case 3:
      result = 1684632420;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0x7473696C2D707061;
      break;
    case 6:
      result = 0x2D74706965636572;
      break;
    case 7:
      result = 0x7363697274656DLL;
      break;
    case 8:
      result = 0x546572756C696166;
      break;
    case 9:
      result = 0x72656D6F74737563;
      break;
    case 10:
      result = 0x676F6C616964;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100057454(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002AF420);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v12[-v8 - 8];
  sub_10001AE68(a1, a1[3]);
  sub_100057A8C();
  sub_1001F8198();
  *v13 = *(v3 + 16);
  v12[0] = 0;
  sub_1000183C4(&qword_1002ACA10);
  sub_100057AE0();
  sub_1000582D0();
  sub_1001F7DC8();
  if (!v2)
  {
    v13[0] = *(v3 + 24);
    v12[0] = 1;
    sub_100057B5C();
    sub_1000582C0();
    sub_1001F7D58();
    v13[0] = *(v3 + 25);
    v12[0] = 2;
    sub_100057BB0();
    sub_1000582C0();
    sub_1001F7D58();
    v13[0] = 3;
    sub_1000582D0();
    sub_1001F7D88();
    v13[0] = 4;
    sub_1000582D0();
    sub_1001F7D48();
    *v13 = *(v3 + 64);
    v12[0] = 5;
    sub_1000183C4(&qword_1002AF440);
    sub_100057C04();
    sub_1000582D0();
    sub_1001F7D58();
    v15 = *(v3 + 72);
    *v13 = *(v3 + 72);
    LOBYTE(v11) = 6;
    sub_100057CB8(&v15, v12, &qword_1002AF458);
    sub_10004FAD4();
    sub_1000582C0();
    sub_1001F7D58();
    sub_10003A36C(*v13, *&v13[8]);
    memcpy(v14, (v3 + 88), sizeof(v14));
    memcpy(v13, (v3 + 88), sizeof(v13));
    v17 = 7;
    sub_100057CB8(v14, v12, &qword_1002AF460);
    sub_100057D20();
    sub_1000582C0();
    sub_1001F7D58();
    memcpy(v12, v13, sizeof(v12));
    sub_10004BDE8(v12, &qword_1002AF460);
    LOBYTE(v11) = *(v3 + 176);
    v16 = 8;
    sub_100057D74();
    sub_1000582C0();
    sub_1001F7D58();
    LOBYTE(v11) = 9;
    sub_1000582D0();
    sub_1001F7D18();
    v11 = *(v3 + 200);
    v16 = 10;
    type metadata accessor for Dialog();
    sub_100057DC8(&qword_1002AF478, type metadata accessor for Dialog);
    sub_1000582D0();
    sub_1001F7D58();
    LOBYTE(v11) = 11;
    sub_1000582C0();
    sub_1001F7D28();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000578E4(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

uint64_t sub_100057934@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100057258(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100057964@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000572B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000579AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000572A4();
  *a1 = result;
  return result;
}

uint64_t sub_1000579D4@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOBSDSocket.Option.ip_add_membership.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000579FC(uint64_t a1)
{
  v2 = sub_100057A8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100057A38(uint64_t a1)
{
  v2 = sub_100057A8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100057A8C()
{
  result = qword_1002AF428;
  if (!qword_1002AF428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF428);
  }

  return result;
}

unint64_t sub_100057AE0()
{
  result = qword_1002ACB30;
  if (!qword_1002ACB30)
  {
    sub_100019BC4(&qword_1002ACA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACB30);
  }

  return result;
}

unint64_t sub_100057B5C()
{
  result = qword_1002AF430;
  if (!qword_1002AF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF430);
  }

  return result;
}

unint64_t sub_100057BB0()
{
  result = qword_1002AF438;
  if (!qword_1002AF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF438);
  }

  return result;
}

unint64_t sub_100057C04()
{
  result = qword_1002AF448;
  if (!qword_1002AF448)
  {
    sub_100019BC4(&qword_1002AF440);
    sub_100057DC8(&qword_1002AF450, type metadata accessor for IAPTransaction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF448);
  }

  return result;
}

uint64_t sub_100057CB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000183C4(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100057D20()
{
  result = qword_1002AF468;
  if (!qword_1002AF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF468);
  }

  return result;
}

unint64_t sub_100057D74()
{
  result = qword_1002AF470;
  if (!qword_1002AF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF470);
  }

  return result;
}

uint64_t sub_100057DC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for LegacyInAppBuyResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LegacyInAppBuyResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x100057FCCLL);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100058004(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100058020(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100058048(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t sub_100058074(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 209))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1000580B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100058140()
{
  result = qword_1002AF488;
  if (!qword_1002AF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF488);
  }

  return result;
}

unint64_t sub_100058194(uint64_t a1)
{
  result = sub_1000581BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000581BC()
{
  result = qword_1002AF490;
  if (!qword_1002AF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF490);
  }

  return result;
}

unint64_t sub_100058214()
{
  result = qword_1002AF498;
  if (!qword_1002AF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF498);
  }

  return result;
}

unint64_t sub_10005826C()
{
  result = qword_1002AF4A0;
  if (!qword_1002AF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF4A0);
  }

  return result;
}

void *sub_1000582DC(uint64_t a1)
{
  v2 = sub_1001F8138();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058C70();
  if (sub_100058C40())
  {
    sub_100019CCC(a1);
    return v83;
  }

  sub_100058C70();
  if (sub_100058C40())
  {
    sub_100019CCC(a1);
    return v83;
  }

  sub_100058C70();
  sub_1000183C4(&unk_1002B3470);
  if (sub_100058C40())
  {
    v8 = v83;
    v9 = *(v83 + 16);
    if (v9)
    {
      v76 = a1;
      v80 = _swiftEmptyArrayStorage;
      sub_100033F6C(0, v9, 0);
      v7 = v80;
      v78 = v8;
      v10 = v8 + 32;
      do
      {
        sub_100058C70();
        sub_10002F9B0(v85, &v83);
        v11 = sub_1000582DC(&v83);
        v13 = v12;
        v15 = v14;
        sub_100019CCC(v85);
        v80 = v7;
        v17 = v7[2];
        v16 = v7[3];
        if (v17 >= v16 >> 1)
        {
          sub_100033F6C((v16 > 1), v17 + 1, 1);
          v7 = v80;
        }

        v7[2] = v17 + 1;
        v18 = &v7[3 * v17];
        v18[4] = v11;
        v18[5] = v13;
        *(v18 + 48) = v15;
        v10 += 32;
        --v9;
      }

      while (v9);
      sub_100019CCC(v76);
    }

    else
    {

      sub_100019CCC(a1);
      return _swiftEmptyArrayStorage;
    }

    return v7;
  }

  sub_100058C70();
  sub_1000183C4(&qword_1002ADB98);
  if ((sub_100058C40() & 1) == 0)
  {
    v74 = v3;
    v75 = v2;
    sub_100058C70();
    sub_1001F80E8();
    sub_1001F8128();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v45 = sub_1001F81A8();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v45)
    {
      sub_100058C70();
      v7 = sub_1001F6BA8();
      sub_100019CCC(a1);
      (*(v74 + 8))(v6, v75);
    }

    else
    {
      v76 = a1;
      v73 = v6;
      v46 = sub_1001F8128();
      v7 = sub_1001F69B8();
      v72[1] = v46;
      v77 = sub_1001F7A18();
      while (1)
      {
        sub_1001F7B88();
        if (!*(&v86 + 1))
        {
          break;
        }

        v83 = v85[0];
        v84[0] = v85[1];
        v84[1] = v86;
        sub_100058B00(&v83, &v80);
        v47 = v81;
        if (v81)
        {
          v48 = v80;
          sub_100019CCC(v82);
          sub_10002F9B0(v84, v79);
          sub_1000183C4(&qword_1002B34A0);
          swift_dynamicCast();
          if (v82[1])
          {
            sub_10004BDE8(&v80, &qword_1002B34A0);
            sub_100058B00(&v83, &v80);

            v49 = sub_1000582DC(v82);
            v51 = v50;
            LODWORD(v78) = v52;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v80 = v7;
            v54 = sub_10011108C();
            v56 = v7[2];
            v57 = (v55 & 1) == 0;
            v58 = v56 + v57;
            if (__OFADD__(v56, v57))
            {
              goto LABEL_46;
            }

            v59 = v54;
            v60 = v55;
            sub_1000183C4(&qword_1002AF4B0);
            if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v58))
            {
              v61 = sub_10011108C();
              if ((v60 & 1) != (v62 & 1))
              {
                goto LABEL_49;
              }

              v59 = v61;
            }

            if (v60)
            {

              v7 = v80;
              sub_100058C60();
              v64 = *v63;
              v65 = *(v63 + 8);
              *v63 = v49;
              *(v63 + 8) = v51;
              v66 = *(v63 + 16);
              *(v63 + 16) = v78;
              sub_100058B70(v64, v65, v66);
              sub_10004BDE8(&v83, &qword_1002AF4A8);
            }

            else
            {
              v7 = v80;
              v80[(v59 >> 6) + 8] |= 1 << v59;
              v67 = (v7[6] + 16 * v59);
              *v67 = v48;
              v67[1] = v47;
              sub_100058C60();
              *v68 = v49;
              *(v68 + 8) = v51;
              *(v68 + 16) = v78;
              sub_10004BDE8(&v83, &qword_1002AF4A8);
              v69 = v7[2];
              v43 = __OFADD__(v69, 1);
              v70 = v69 + 1;
              if (v43)
              {
                goto LABEL_48;
              }

              v7[2] = v70;
            }
          }

          else
          {
            sub_10004BDE8(&v83, &qword_1002AF4A8);
          }
        }

        else
        {
          sub_10004BDE8(&v83, &qword_1002AF4A8);
          sub_100019CCC(v82);
        }
      }

      sub_100019CCC(v76);
      (*(v74 + 8))(v73, v75);
    }

    return v7;
  }

  v76 = a1;
  v19 = v83;
  sub_1000183C4(&qword_1002AF4B8);
  v20 = sub_1001F7B58();
  v7 = v20;
  v21 = 0;
  v23 = v19 + 64;
  v22 = *(v19 + 64);
  v77 = v19;
  v24 = 1 << *(v19 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v22;
  v27 = (v24 + 63) >> 6;
  v75 = v20 + 64;
  if ((v25 & v22) != 0)
  {
    while (1)
    {
      v28 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_22:
      v31 = v28 | (v21 << 6);
      v32 = *(v77 + 56);
      v33 = (*(v77 + 48) + 16 * v31);
      v34 = v33[1];
      v78 = *v33;
      sub_10002F9B0(v32 + 32 * v31, v85);
      sub_10002F9B0(v85, &v83);

      v35 = sub_1000582DC(&v83);
      v37 = v36;
      v39 = v38;
      sub_100019CCC(v85);
      *(v75 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v40 = (v7[6] + 16 * v31);
      *v40 = v78;
      v40[1] = v34;
      sub_100058C60();
      *v41 = v35;
      *(v41 + 8) = v37;
      *(v41 + 16) = v39;
      v42 = v7[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        break;
      }

      v7[2] = v44;
      if (!v26)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v29 = v21;
    while (1)
    {
      v21 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v21 >= v27)
      {

        sub_100019CCC(v76);
        return v7;
      }

      v30 = *(v23 + 8 * v21);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v26 = (v30 - 1) & v30;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1001F7FC8();
  __break(1u);
  return result;
}

uint64_t sub_100058B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002AF4A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058B70(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 3 || a3 == 2)
  {
  }

  return result;
}

uint64_t sub_100058BA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100058BE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100058C40()
{

  return swift_dynamicCast();
}

uint64_t sub_100058C70()
{

  return sub_10002F9B0(v0, v1 - 136);
}

uint64_t sub_100058C88(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_1001F77B8(24);

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  sub_1001F6CA8(v9);
  v10._countAndFlagsBits = 0x3D6469623FLL;
  v10._object = 0xE500000000000000;
  sub_1001F6CA8(v10);
  v11._countAndFlagsBits = a3;
  v11._object = a4;
  sub_1001F6CA8(v11);
  return 0x74694B65726F7453;
}

uint64_t sub_100058D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002AF588);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for OctaneAsset();
  __chkstk_darwin(v9, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000593F4(a1, v27);
  v13 = sub_1001DEEB8(a1);
  v15 = v14;
  if (!v14)
  {
    type metadata accessor for HTTPResponseHead._Storage();
    result = swift_allocObject();
    v18 = result;
    v19 = 0uLL;
    *(result + 16) = 0u;
    v20 = 21;
    goto LABEL_5;
  }

  v16 = v13;
  sub_10001AE68((v2 + 48), *(v2 + 72));
  sub_1000795A8();
  sub_1000EEA24(v16, v15, v8);

  if (sub_10001C990(v8, 1, v9) == 1)
  {

    sub_10004BDE8(v8, &qword_1002AF588);
    type metadata accessor for HTTPResponseHead._Storage();
    result = swift_allocObject();
    v18 = result;
    v15 = 0;
    v19 = 0uLL;
    *(result + 16) = 0u;
    v20 = 25;
LABEL_5:
    *(result + 32) = v20;
    *(result + 40) = 65537;
    v21 = 2;
    v22 = _swiftEmptyArrayStorage;
    v23 = 0uLL;
    goto LABEL_9;
  }

  sub_100059450(v8, v12);
  if (qword_1002AC428 != -1)
  {
    swift_once();
  }

  v24 = *(off_1002AF690 + 2);
  os_unfair_lock_lock(v24);
  sub_10005901C(v27);
  os_unfair_lock_unlock(v24);

  v18 = v27[0];
  v22 = v27[1];
  v21 = v28;
  v25 = v30;
  v26 = v29;
  v15 = v31 | ((v32 | (v33 << 16)) << 32);
  result = sub_1000594B4(v12);
  v23 = v25;
  v19 = v26;
LABEL_9:
  *a2 = v18;
  *(a2 + 8) = v22;
  *(a2 + 16) = v21;
  *(a2 + 24) = v19;
  *(a2 + 40) = v23;
  *(a2 + 56) = v15;
  *(a2 + 62) = BYTE6(v15);
  *(a2 + 60) = WORD2(v15);
  return result;
}

__n128 sub_10005901C@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for OctaneAsset();
  v2 = sub_1001F6248(0);
  v4 = v3;
  v5 = objc_allocWithZone(NSData);
  v6 = sub_1000EF218(v2, v4, 0);
  v7 = sub_1001F63C8();
  v9 = v8;

  v10 = sub_10007232C();
  v12 = sub_1000B756C(v10, v11);
  if (v12 == 9)
  {
    sub_10003A380(v7, v9);
    type metadata accessor for HTTPResponseHead._Storage();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 36;
    *(v13 + 40) = 65537;
    *a1 = v13;
    *(a1 + 8) = _swiftEmptyArrayStorage;
    *(a1 + 16) = 2;
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 55) = 0;
  }

  else
  {
    v15 = sub_1000B7990(v12);
    v17 = v16;
    sub_100040C70(v7, v9);
    sub_1000B77D0(v7, v9, v15, v17, v20);
    LOWORD(v15) = v22;
    LODWORD(v17) = v21;
    v18 = v23;
    sub_10003A380(v7, v9);
    type metadata accessor for HTTPResponseHead._Storage();
    v19 = swift_allocObject();
    *(v19 + 32) = 3;
    *(v19 + 40) = 65537;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *a1 = v19;
    *(a1 + 8) = _swiftEmptyArrayStorage;
    *(a1 + 16) = 2;
    result = v20[0];
    *(a1 + 40) = v20[1];
    *(a1 + 24) = result;
    *(a1 + 62) = v18;
    *(a1 + 60) = v15;
    *(a1 + 56) = v17;
  }

  return result;
}

uint64_t sub_100059450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OctaneAsset();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000594B4(uint64_t a1)
{
  v2 = type metadata accessor for OctaneAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100059510()
{
  v1 = *(v0 + 128);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000ADA68(0xD000000000000012, 0x8000000100225170, 1819112552, 0xE400000000000000);
    v3 = *(v0 + 128);
    *(v0 + 128) = v2;
    *(v0 + 136) = v4;

    sub_10001F734(v3);
  }

  sub_10001F78C(v1);
  return v2;
}

uint64_t sub_1000595B4@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1001EA8E8();
  v5 = sub_1001F10F8(7368801, 0xE300000000000000, v4);
  v7 = v6;

  if (v7)
  {
    v69 = a1;
    v75 = v1;
    sub_10001AE68(v1 + 6, v1[9]);
    v8 = sub_1000795A8();
    v9 = *(v8 + 56);
    v10 = sub_10001A07C(v9);
    v77 = v8;
    v72 = v5;
    v73 = v7;
    if (v10)
    {
      v11 = v10;
      v83 = _swiftEmptyArrayStorage;
      v12 = v10 & ~(v10 >> 63);

      sub_1000375CC(0, v12, 0);
      if (v11 < 0)
      {
        __break(1u);
        goto LABEL_60;
      }

      v13 = 0;
      v14 = v83;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v15 = sub_1001F7808();
        }

        else
        {
          v15 = *(v9 + 8 * v13 + 32);
        }

        v17 = *(v15 + 16);
        v16 = *(v15 + 24);

        v83 = v14;
        v19 = v14[2];
        v18 = v14[3];
        if (v19 >= v18 >> 1)
        {
          sub_1000375CC(v18 > 1, v19 + 1, 1);
          v14 = v83;
        }

        ++v13;
        v14[2] = v19 + 1;
        v20 = &v14[2 * v19];
        v20[4] = v17;
        v20[5] = v16;
      }

      while (v11 != v13);

      v5 = v72;
      v7 = v73;
    }

    sub_10001AE68(v75 + 11, v75[14]);
    sub_10008B3C8();
    v2 = v21;

    if (sub_10001A07C(v2) != 1 || !sub_10013B560(v2))
    {
      goto LABEL_18;
    }

    sub_1001C19A8(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_61;
    }

    for (i = *(v2 + 32); ; i = sub_1001F7808())
    {
      v23 = i;
      v24 = sub_1000C5388(15);
      v26 = v25;

      if (v26)
      {

        sub_1000183C4(&qword_1002AC840);
        v27 = swift_allocObject();
        *(v27 + 1) = xmmword_1001FE9E0;
        v27[4] = 0x6E6F697461636F4CLL;
        v27[5] = 0xE800000000000000;
        sub_1001F77B8(24);

        v92._countAndFlagsBits = v24;
        v92._object = v26;
        sub_1001F6CA8(v92);

        v93._countAndFlagsBits = 0x3D7070613FLL;
        v93._object = 0xE500000000000000;
        sub_1001F6CA8(v93);
        v94._countAndFlagsBits = v5;
        v94._object = v7;
        sub_1001F6CA8(v94);

        v27[6] = 0x697263736275732FLL;
        v27[7] = 0xEF2F736E6F697470;

        type metadata accessor for HTTPResponseHead._Storage();
        result = sub_100021728();
        v29 = 0;
        v30 = 0uLL;
        v31 = 16;
LABEL_46:
        v56 = 0uLL;
LABEL_57:
        a1 = v69;
        goto LABEL_58;
      }

LABEL_18:
      v32 = sub_100059510();
      if (!v32)
      {

        type metadata accessor for HTTPResponseHead._Storage();
        result = sub_100021728();
        v29 = 0;
        v30 = 0uLL;
        v27 = _swiftEmptyArrayStorage;
        v31 = 49;
        goto LABEL_46;
      }

      v34 = v32;
      v68 = v33;
      v35 = sub_10013B560(v2);
      if (!v35)
      {

        v57 = _swiftEmptyArrayStorage;
        v58 = _swiftEmptyArrayStorage;
LABEL_48:
        type metadata accessor for AppIconRoute();
        v59 = sub_10005DC24(v72, v73);
        v61 = v60;

        if (*(v77 + 24))
        {
          v62 = *(v77 + 16);
          v63 = *(v77 + 24);
        }

        else
        {
          v63 = 0xE800000000000000;
          v62 = 0x656D614E20707041;
        }

        if (v57[2])
        {
        }

        else
        {

          v57 = 0;
        }

        if (!v58[2])
        {

          v58 = 0;
        }

        *(&v79 + 1) = &type metadata for SubscriptionsListUIRoute.ViewProperties;
        v64 = swift_allocObject();
        *&v78 = v64;
        v64[2] = v59;
        v64[3] = v61;
        v64[4] = v62;
        v64[5] = v63;
        v64[6] = v57;
        v64[7] = v58;
        v65 = sub_1000ADFF4(&v78, v34, v68);
        v67 = v66;

        sub_100019CCC(&v78);
        sub_1000B738C(v65, v67, 1, &v78);
        v74 = v79;
        v76 = v78;
        v29 = v80 | ((WORD2(v80) | (BYTE6(v80) << 16)) << 32);

        type metadata accessor for HTTPResponseHead._Storage();
        result = sub_100021728();
        v56 = v74;
        v30 = v76;
        v27 = _swiftEmptyArrayStorage;
        v31 = 3;
        goto LABEL_57;
      }

      v5 = v35;
      if (v35 >= 1)
      {
        break;
      }

LABEL_60:
      __break(1u);
LABEL_61:
      ;
    }

    v36 = 0;
    v70 = _swiftEmptyArrayStorage;
    v71 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v37 = sub_1001F7808();
      }

      else
      {
        v37 = *(v2 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = sub_1000C5388(15);
      if (v40)
      {
        v41 = sub_1000EE77C(v39, v40);

        if (v41)
        {
          sub_10001AE68(v75 + 6, v75[9]);
          sub_10007992C();
          sub_100059D08(v38, v77, v81, v41, &v83);
          v91 = v81[0];
          sub_10001C838(&v91);
          v90 = v81[1];
          sub_10001C838(&v90);
          v89 = v82;
          sub_10001C88C(&v89);
          v42 = v84;
          if (v84)
          {
            v43 = v83;
            v78 = v85;
            v79 = v86;
            v80 = v87;
            if (v88)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_10005A4E8();
                v70 = v52;
              }

              v45 = v70[2];
              v44 = v70[3];
              v46 = v45 + 1;
              if (v45 >= v44 >> 1)
              {
                sub_10004B2F4(v44);
                sub_1000330CC();
                v70 = v53;
              }

              v47 = v70;
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_10005A4E8();
                v71 = v54;
              }

              v45 = v71[2];
              v48 = v71[3];
              v46 = v45 + 1;
              if (v45 >= v48 >> 1)
              {
                sub_10004B2F4(v48);
                sub_1000330CC();
                v71 = v55;
              }

              v47 = v71;
            }

            v47[2] = v46;
            v49 = &v47[8 * v45];
            v49[4] = v43;
            v49[5] = v42;
            v50 = v78;
            v51 = v80;
            *(v49 + 4) = v79;
            *(v49 + 5) = v51;
            *(v49 + 3) = v50;
            goto LABEL_42;
          }
        }
      }

LABEL_42:
      if (v5 == ++v36)
      {

        v58 = v70;
        v57 = v71;
        goto LABEL_48;
      }
    }
  }

  type metadata accessor for HTTPResponseHead._Storage();
  result = sub_100021728();
  v29 = 0;
  v30 = 0uLL;
  v27 = _swiftEmptyArrayStorage;
  v31 = 21;
  v56 = 0uLL;
LABEL_58:
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = v31;
  *(result + 40) = 65537;
  *a1 = result;
  *(a1 + 8) = v27;
  *(a1 + 16) = 2;
  *(a1 + 24) = v30;
  *(a1 + 40) = v56;
  *(a1 + 56) = v29;
  *(a1 + 62) = BYTE6(v29);
  *(a1 + 60) = WORD2(v29);
  return result;
}

void sub_100059D08(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v64 = a2;
  v65 = a3;
  v10 = sub_1001F6508();
  i = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v59 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v58 = v55 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v60 = v55 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v24 = v55 - v23;
  __chkstk_darwin(v22, v25);
  v27 = v55 - v26;
  v28 = a1;
  sub_1000C5464(4);
  if (v29)
  {
    sub_10005A49C();
    goto LABEL_30;
  }

  v57 = a5;
  sub_1001F6418();
  v61 = i;
  v62 = v10;
  v30 = *(i + 32);
  v63 = v27;
  v55[0] = v30;
  v55[1] = i + 32;
  v30(v27, v24, v10);
  v56 = a4;
  v24 = *(a4 + 56);
  v10 = sub_10013B560(v24);
  a5 = v24 & 0xC000000000000001;
  a4 = v24 & 0xFFFFFFFFFFFFFF8;

  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {

      (*(v61 + 8))(v63, v62);
      sub_10005A49C();
      a5 = v57;
      goto LABEL_30;
    }

    if (a5)
    {
      v5 = sub_1001F7808();
    }

    else
    {
      if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v5 = *(v24 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v31 = v5[10];
    v6 = v5[11];

    v32 = sub_1000BFC14();
    v28 = v33;
    if (v31 == v32 && v6 == v33)
    {
      break;
    }

    v27 = sub_1001F7EA8();

    if (v27)
    {
      goto LABEL_18;
    }
  }

LABEL_18:

  a5 = v57;
  if (qword_1002AC410 == -1)
  {
    goto LABEL_19;
  }

LABEL_34:
  swift_once();
LABEL_19:
  v35 = qword_1002AE9E8;
  isa = sub_1001F6478().super.isa;
  v37 = [v35 stringFromDate:isa];

  v38 = sub_1001F6B58();
  v40 = v39;

  if (sub_1000C66A0())
  {

    v66 = 0;
    v67 = 0xE000000000000000;
    sub_1001F77B8(21);

    v66 = 0xD000000000000013;
    v67 = 0x8000000100225150;
    v68._countAndFlagsBits = v38;
    v68._object = v40;
    sub_1001F6CA8(v68);

    LOBYTE(a1) = 0;
    v27 = v66;
    v6 = v67;
LABEL_25:
    v45 = v56;
    v43 = v63;
    goto LABEL_26;
  }

  sub_1000C5464(3);
  if ((v41 & 1) == 0)
  {

    v46 = v58;
    sub_1001F6418();
    a1 = v60;
    (v55[0])(v60, v46, v62);
    v66 = 0x64656C65636E6143;
    v67 = 0xE900000000000020;
    v47 = sub_1001F6478().super.isa;
    v48 = [v35 stringFromDate:v47];

    v49 = sub_1001F6B58();
    v51 = v50;

    v69._countAndFlagsBits = v49;
    v69._object = v51;
    sub_1001F6CA8(v69);

    v27 = v66;
    v6 = v67;
    (*(v61 + 8))(a1, v62);
    LOBYTE(a1) = 1;
    goto LABEL_25;
  }

  v42 = v59;
  sub_1001F64F8();
  v43 = v63;
  v44 = sub_1001F6488();
  (*(v61 + 8))(v42, v62);
  v45 = v56;
  if (v44)
  {
    sub_10005A4C4(0x2073657269707845);

    LOBYTE(a1) = 0;
    v27 = v66;
    v6 = v67;
  }

  else
  {
    sub_10005A4C4(0x2064657269707845);

    v27 = v66;
    v6 = v67;
    LOBYTE(a1) = 1;
  }

LABEL_26:
  v52 = v5[7];

  v53 = sub_1000E087C(v52);

  if (v53)
  {
    v28 = *(v53 + 32);
    v24 = *(v53 + 40);
  }

  else
  {
    v28 = sub_1001E8450();
    v24 = v54;
  }

  (*(v61 + 8))(v43, v62);
  a4 = v45[2];
  v10 = v45[3];
  v5 = v45[5];
  i = v45[6];

LABEL_30:
  *a5 = a4;
  *(a5 + 8) = v10;
  *(a5 + 16) = v5;
  *(a5 + 24) = i;
  *(a5 + 32) = v28;
  *(a5 + 40) = v24;
  *(a5 + 48) = v27;
  *(a5 + 56) = v6;
  *(a5 + 64) = a1;
}

uint64_t sub_10005A310()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005A360(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_10005A3A0(uint64_t result, int a2, int a3)
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

uint64_t sub_10005A400(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_10005A440(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_10005A4C4(uint64_t a1@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = 0xE800000000000000;
  v5._countAndFlagsBits = v2;
  v5._object = v1;

  sub_1001F6CA8(v5);
}

void sub_10005A4E8()
{

  sub_1000330CC();
}

_DWORD *sub_10005A508()
{
  type metadata accessor for UnfairLock();
  v0 = swift_allocObject();
  result = swift_slowAlloc();
  *(v0 + 16) = result;
  *result = 0;
  off_1002AF690 = v0;
  return result;
}

uint64_t sub_10005A558(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = result;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            sub_10005B084();
            while (1)
            {
              sub_100027240();
              if (!v9 && v8)
              {
                break;
              }

              sub_10005B078();
              if (!v9)
              {
                break;
              }

              sub_10005B068();
              if (v8)
              {
                break;
              }

              sub_10002727C();
              if (v9)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_82:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v6 = 0;
          while (1)
          {
            sub_100027240();
            if (!v9 && v8)
            {
              break;
            }

            sub_10005B078();
            if (!v9)
            {
              break;
            }

            sub_10005B068();
            if (v8)
            {
              break;
            }

            sub_10002727C();
            if (v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          sub_10005B084();
          while (1)
          {
            sub_100027240();
            if (!v9 && v8)
            {
              break;
            }

            sub_10005B078();
            if (!v9)
            {
              break;
            }

            v8 = 10 * v6 >= v12;
            v6 = 10 * v6 - v12;
            if (!v8)
            {
              break;
            }

            sub_10002727C();
            if (v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1001F7858();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v6 = 0;
            if (result)
            {
              while (1)
              {
                sub_100027240();
                if (!v9 && v8)
                {
                  goto LABEL_71;
                }

                sub_10005B078();
                if (!v9)
                {
                  goto LABEL_71;
                }

                sub_10005B068();
                if (v8)
                {
                  goto LABEL_71;
                }

                sub_10002727C();
                if (v9)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_71;
        }

        goto LABEL_81;
      }

      if (v7 != 45)
      {
        if (v4)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v13 = *result - 48;
              if (v13 > 9)
              {
                goto LABEL_71;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_71;
              }

              v8 = __CFADD__(10 * v6, v13);
              v6 = 10 * v6 + v13;
              if (v8)
              {
                goto LABEL_71;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_71:
        v6 = 0;
        v11 = 1;
        goto LABEL_72;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              sub_100027240();
              if (!v9 && v8)
              {
                goto LABEL_71;
              }

              sub_10005B078();
              if (!v9)
              {
                goto LABEL_71;
              }

              v8 = 10 * v6 >= v10;
              v6 = 10 * v6 - v10;
              if (!v8)
              {
                goto LABEL_71;
              }

              sub_10002727C();
              if (v9)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_61:
          v11 = 0;
LABEL_72:
          v14 = v11;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v6 = sub_1001EE478(v6, a2, 10);
  v14 = v15;

LABEL_73:
  if (v14)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10005A7DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10005A898(char a1)
{
  if (a1)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_10005A8C0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = a4;
  v6 = sub_1000183C4(&qword_1002AF6B0);
  sub_10001A278();
  v8 = v7;
  __chkstk_darwin(v9, v10);
  v12 = &v14 - v11;
  sub_10001AE68(a1, a1[3]);
  sub_10005AD60();
  sub_1001F8198();
  v18 = 0;
  sub_1001F7D88();
  if (!v4)
  {
    v17 = v15 & 1;
    v16 = 1;
    sub_10005AE08();
    sub_1001F7DC8();
  }

  return (*(v8 + 8))(v12, v6);
}

uint64_t sub_10005AA44(void *a1)
{
  sub_1000183C4(&qword_1002AF698);
  sub_10001A278();
  __chkstk_darwin(v3, v4);
  v5 = a1[4];
  sub_10001AE68(a1, a1[3]);
  sub_10005AD60();
  sub_1001F8178();
  if (!v1)
  {
    v5 = sub_1001F7C78();
    sub_10005ADB4();
    sub_1001F7CB8();
    v7 = sub_10001E72C();
    v8(v7);
  }

  sub_100019CCC(a1);
  return v5;
}

Swift::Int sub_10005AC10()
{
  v1 = *v0;
  sub_1001F8068();
  sub_1001F8088(v1);
  return sub_1001F80D8();
}

uint64_t sub_10005AC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005A7DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005AC84(uint64_t a1)
{
  v2 = sub_10005AD60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005ACC0(uint64_t a1)
{
  v2 = sub_10005AD60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005ACFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10005AA44(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_10005AD60()
{
  result = qword_1002AF6A0;
  if (!qword_1002AF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF6A0);
  }

  return result;
}

unint64_t sub_10005ADB4()
{
  result = qword_1002AF6A8;
  if (!qword_1002AF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF6A8);
  }

  return result;
}

unint64_t sub_10005AE08()
{
  result = qword_1002AF6B8;
  if (!qword_1002AF6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF6B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RefundRequestRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10005AF28);
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

unint64_t sub_10005AF64()
{
  result = qword_1002AF6C0;
  if (!qword_1002AF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF6C0);
  }

  return result;
}

unint64_t sub_10005AFBC()
{
  result = qword_1002AF6C8;
  if (!qword_1002AF6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF6C8);
  }

  return result;
}

unint64_t sub_10005B014()
{
  result = qword_1002AF6D0;
  if (!qword_1002AF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF6D0);
  }

  return result;
}

void sub_10005B098(uint64_t a1)
{
  v1 = sub_1001F10F8(0x444970756F7267, 0xE700000000000000, *(a1 + 96));
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v1;
  v4 = v2;
  v5 = sub_1001EA8E8();
  v6 = sub_1001F10F8(7368801, 0xE300000000000000, v5);
  v8 = v7;

  if (!v8)
  {

LABEL_5:
    type metadata accessor for HTTPResponseHead._Storage();
    v9 = sub_100021728();
    sub_10005C340(v9);
    sub_10002170C(v10, 21);
    v13 = 0uLL;
    goto LABEL_6;
  }

  sub_10005B280(v3, v4, v6, v8, v14);

  sub_1001F1864(v14, &v15);
  type metadata accessor for HTTPResponseHead._Storage();
  v11 = sub_100021728();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_10002170C(v11, 3);
LABEL_6:
  sub_10005C378(_swiftEmptyArrayStorage, v12, v13);
}

void sub_10005B280(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v109 = a5;
  sub_1001F60C8();
  sub_10001A278();
  v106 = v11;
  v107 = v10;
  __chkstk_darwin(v10, v12);
  v105 = &v96[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = sub_1001F6508();
  sub_10001A278();
  v127 = v14;
  v17 = __chkstk_darwin(v15, v16);
  v108 = &v96[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v96[-v21];
  __chkstk_darwin(v20, v23);
  v112 = &v96[-v24];
  v25 = *(v5 + 112);
  v110 = v5;
  sub_10001AE68((v5 + 88), v25);
  sub_1000183C4(&qword_1002AC7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FE9E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v111 = a3;
  sub_10008B3C8();
  v28 = v27;
  swift_setDeallocating();
  sub_1001E56B4();
  if (!sub_10013B560(v28))
  {

    sub_100021578();
    v34 = sub_1000276A0();
    sub_10005C354(v34, v35);
    return;
  }

  sub_1001C19A8(0, (v28 & 0xC000000000000001) == 0, v28);
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = sub_1001F7808();
  }

  else
  {
    v29 = *(v28 + 32);
  }

  v30 = v29;

  sub_1000C5464(4);
  if (v31)
  {
    sub_100021578();
    v32 = sub_1000276A0();
    sub_10005C354(v32, v33);

    return;
  }

  sub_1001F6418();
  (*(v127 + 32))(v112, v22, v113);
  sub_100026064(v110 + 48, &v116);
  sub_10001AE68(&v116, v119);
  v36 = sub_1000C1570();
  if (!v37)
  {
    v36 = sub_1000BFC14();
  }

  v38 = v36;
  v39 = v37;
  v40 = a4;
  sub_1000795A8();
  v41 = sub_1000EE5B8(v38, v39);

  if (!v41)
  {
    sub_100019CCC(&v116);
    sub_100021578();
    v54 = sub_1000276A0();
    sub_10005C354(v54, v55);

    (*(v127 + 8))(v112, v113);
    return;
  }

  v104 = v30;
  sub_100019CCC(&v116);
  v42 = v110;
  sub_10001AE68((v110 + 48), *(v110 + 72));
  sub_10007992C();
  sub_10001AE68((v42 + 48), *(v42 + 72));
  sub_10007A340();

  v43 = sub_10004B628();
  v102 = v44;
  v103 = v43;
  sub_10001C7E4(v123);

  v45 = *(v41 + 176);
  v110 = v41;
  v46 = *(v41 + 184);
  v47 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v47 setUnitsStyle:3];
  [v47 setAllowedUnits:4124];
  v48 = v105;
  sub_1001EC818(v45, v46);
  isa = sub_1001F6098().super.isa;
  (*(v106 + 8))(v48, v107);
  v50 = [v47 stringFromDateComponents:isa];

  if (v50)
  {
    v51 = sub_1001F6B58();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0xE000000000000000;
  }

  v56 = v108;
  if (v45 == 1)
  {
    v116 = v51;
    v117 = v53;
    v114 = 32;
    v115 = 0xE100000000000000;
    sub_10001C790();
    v57 = sub_1001F75B8();

    v116 = sub_10005E8A0(1, v57);
    v117 = v58;
    v118 = v59;
    v119 = v60;
    sub_1000183C4(&qword_1002AF8A8);
    sub_10005C2DC();
    sub_1001F6A68();
    swift_unknownObjectRelease();
  }

  sub_1001F64E8();
  v61 = sub_1000C18DC();
  v62 = *(v127 + 8);
  v127 += 8;
  v108 = v62;
  (v62)(v56, v113);
  v63 = v110;
  if (v61)
  {
    v64 = sub_1000C1570();
    v106 = v65;
    v107 = v64;
  }

  else
  {
    v106 = 0;
    v107 = 0;
  }

  v66 = *(v63 + 56);

  v67 = sub_1000E087C(v66);
  v126 = v120;
  sub_10001C838(&v126);
  v125 = v121;
  sub_10001C838(&v125);
  v124 = v122;
  sub_10001C88C(&v124);

  if (v67)
  {
    v68 = *(v67 + 40);
    v105 = *(v67 + 32);
    v101 = v68;
  }

  else
  {
    v105 = sub_1001E8450();
    v101 = v69;
  }

  v116 = v103;
  v117 = v102;
  v128._countAndFlagsBits = 47;
  v128._object = 0xE100000000000000;
  sub_1001F6CA8(v128);
  v70 = sub_1001F6BB8();
  v72 = v71;

  v129._countAndFlagsBits = v70;
  v129._object = v72;
  sub_1001F6CA8(v129);

  v102 = v117;
  v103 = v116;
  if (qword_1002AC410 != -1)
  {
    swift_once();
  }

  v73 = qword_1002AE9E8;
  v74 = sub_1001F6478().super.isa;
  v75 = [v73 stringFromDate:v74];

  v76 = sub_1001F6B58();
  v99 = v77;
  v100 = v76;

  v116 = 0;
  v117 = 0xE000000000000000;
  sub_1001F77B8(40);

  v116 = 0x797469746E617571;
  v117 = 0xEF3D64696226313DLL;
  v130._countAndFlagsBits = v111;
  v130._object = v40;
  sub_1001F6CA8(v130);
  v131._object = 0x8000000100225210;
  v131._countAndFlagsBits = 0xD000000000000017;
  sub_1001F6CA8(v131);
  v111 = v116;
  v98 = v117;
  v78 = sub_1000C1570();
  v80 = v79;
  v81 = sub_1000BFC14();
  if (v80)
  {
    if (v78 == v81 && v80 == v82)
    {

      v97 = 0;
      goto LABEL_33;
    }

    v84 = sub_1001F7EA8();

    v85 = v84 ^ 1;
  }

  else
  {

    v85 = 1;
  }

  v97 = v85;
LABEL_33:
  sub_1001F64F8();
  v86 = v112;
  v87 = sub_1001F6498();
  v88 = v113;
  v89 = v108;
  (v108)(v56, v113);
  v90 = v104;
  v116 = sub_1000C1A68();
  v91 = sub_1001F7E28();
  v93 = v92;

  v89(v86, v88);
  v94 = v97 & 1;
  v95 = v109;
  *v109 = v107;
  v95[1] = v106;
  v95[2] = v105;
  v95[3] = v101;
  v95[4] = v103;
  v95[5] = v102;
  v95[6] = v100;
  v95[7] = v99;
  v95[8] = v111;
  v95[9] = v98;
  *(v95 + 80) = v94;
  *(v95 + 81) = v87 & 1;
  *(v95 + 82) = v116;
  *(v95 + 43) = WORD2(v116);
  v95[11] = v91;
  v95[12] = v93;
}

void sub_10005BBE0()
{
  sub_1001F0528();
  if (v1)
  {
    sub_10005BD54(v0, v1, v7);

    sub_1001F1864(v7, &v8);
    type metadata accessor for HTTPResponseHead._Storage();
    v3 = sub_100021728();
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    sub_10002170C(v3, 3);
  }

  else
  {
    type metadata accessor for HTTPResponseHead._Storage();
    v2 = sub_100021728();
    sub_10005C340(v2);
    sub_10002170C(v6, 21);
    v5 = 0uLL;
  }

  sub_10005C378(_swiftEmptyArrayStorage, v4, v5);
}

void sub_10005BD54(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = a2;
  v9 = HIBYTE(a2) & 0xF;
  v10 = a1 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_88;
  }

  v12 = v4;
  if ((v7 & 0x1000000000000000) != 0)
  {

    sub_1001EE478(a1, v7, 10);
    v39 = v38;

    if (v39)
    {
      goto LABEL_88;
    }

    goto LABEL_72;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    if (a1 == 43)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          sub_10005C3D0();
          while (1)
          {
            sub_100027240();
            if (!v18 && v17)
            {
              break;
            }

            sub_100027270();
            if (!v18)
            {
              break;
            }

            sub_100027250();
            if (v17)
            {
              break;
            }

            sub_10002727C();
            if (v18)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_93:
      __break(1u);
LABEL_94:
      v30 = sub_1001F7808();
      goto LABEL_77;
    }

    if (a1 != 45)
    {
      if (v9)
      {
        while (1)
        {
          sub_100027240();
          if (!v18 && v17)
          {
            break;
          }

          sub_100027270();
          if (!v18)
          {
            break;
          }

          sub_100027250();
          if (v17)
          {
            break;
          }

          sub_10002727C();
          if (v18)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        sub_10005C3D0();
        while (1)
        {
          sub_100027240();
          if (!v18 && v17)
          {
            break;
          }

          sub_100027270();
          if (!v18)
          {
            break;
          }

          v17 = 10 * v6 >= v21;
          v6 = 10 * v6 - v21;
          if (!v17)
          {
            break;
          }

          sub_10002727C();
          if (v18)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_91;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v14 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v14 = sub_1001F7858();
  }

  v15 = *v14;
  if (v15 == 43)
  {
    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        if (v14)
        {
          while (1)
          {
            sub_100027240();
            if (!v18 && v17)
            {
              goto LABEL_70;
            }

            sub_100027270();
            if (!v18)
            {
              goto LABEL_70;
            }

            sub_100027250();
            if (v17)
            {
              goto LABEL_70;
            }

            sub_10002727C();
            if (v18)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    goto LABEL_92;
  }

  if (v15 == 45)
  {
    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        v16 = 0;
        if (v14)
        {
          while (1)
          {
            sub_100027240();
            if (!v18 && v17)
            {
              goto LABEL_70;
            }

            sub_100027270();
            if (!v18)
            {
              goto LABEL_70;
            }

            v17 = 10 * v16 >= v19;
            v16 = 10 * v16 - v19;
            if (!v17)
            {
              goto LABEL_70;
            }

            sub_10002727C();
            if (v18)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_61:
        v20 = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v10)
  {
    v22 = 0;
    if (v14)
    {
      while (1)
      {
        v23 = *v14 - 48;
        if (v23 > 9)
        {
          goto LABEL_70;
        }

        if (!is_mul_ok(v22, 0xAuLL))
        {
          goto LABEL_70;
        }

        v17 = __CFADD__(10 * v22, v23);
        v22 = 10 * v22 + v23;
        if (v17)
        {
          goto LABEL_70;
        }

        ++v14;
        if (!--v10)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  v20 = 1;
LABEL_71:
  v45 = v20;
  if (v20)
  {
LABEL_88:
    sub_100021578();
    v40 = sub_1000276A0();
    sub_10005C354(v40, v41);
    return;
  }

LABEL_72:
  sub_10001AE68((v3 + 88), *(v3 + 112));
  v24 = sub_10008E790();
  if (!v24)
  {
    goto LABEL_88;
  }

  v7 = v24;
  v25 = sub_1000C5388(15);
  if (!v26)
  {
    sub_100021578();
    sub_1000276A0();
    *v32 = 0;
    v32[1] = 0;
    v32[2] = 21;
    swift_willThrow();

    return;
  }

  v6 = v25;
  v5 = v26;
  __dst = a3;
  v43 = v12;
  sub_10001AE68((v3 + 88), *(v3 + 112));
  sub_1000183C4(&qword_1002AC7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FE9E0;
  *(inited + 32) = v6;
  *(inited + 40) = v5;

  sub_1000BFC24();
  sub_10008B3C8();
  v29 = v28;

  swift_setDeallocating();
  sub_1001E56B4();
  if (!sub_10013B560(v29))
  {

    v31 = v7;
    goto LABEL_80;
  }

  sub_1001C19A8(0, (v29 & 0xC000000000000001) == 0, v29);
  if ((v29 & 0xC000000000000001) != 0)
  {
    goto LABEL_94;
  }

  v30 = *(v29 + 32);
LABEL_77:
  v31 = v30;

LABEL_80:
  sub_1000C1ACC(0, 0);
  if (sub_1000C152C() != 5)
  {
    sub_1000C1B88(2u);
  }

  sub_10001AE68((v3 + 88), *(v3 + 112));
  v33 = sub_10008EA08(v31, 1);
  if (v33 == 4)
  {
    v34 = sub_1000BFC24();
    sub_10005B280(v6, v5, v34, v35, __src);

    if (!v43)
    {
      memcpy(__dst, __src, 0x68uLL);
    }
  }

  else
  {
    v36 = v33;

    sub_10005C288();
    sub_1000276A0();
    *v37 = v36;
    swift_willThrow();
  }
}

unint64_t sub_10005C288()
{
  result = qword_1002AF8A0;
  if (!qword_1002AF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8A0);
  }

  return result;
}

unint64_t sub_10005C2DC()
{
  result = qword_1002AF8B0;
  if (!qword_1002AF8B0)
  {
    sub_100019BC4(&qword_1002AF8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8B0);
  }

  return result;
}

double sub_10005C340(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10005C354(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 25;

  return swift_willThrow();
}

void sub_10005C378(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *v3 = v4;
  *(v3 + 8) = a1;
  *(v3 + 16) = 2;
  *(v3 + 24) = a2;
  *(v3 + 40) = a3;
  *(v3 + 56) = v5;
  *(v3 + 62) = BYTE6(v5);
  *(v3 + 60) = WORD2(v5);
}

uint64_t sub_10005C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  *(a1 + 16) = a11;
  *(a1 + 32) = v11;
  *(a1 + 40) = 65537;
}

uint64_t sub_10005C3E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1001F7EA8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10005C46C(void *a1)
{
  v2 = sub_1000183C4(&qword_1002AF948);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  sub_10005DBB4();
  sub_10001AE68(a1, a1[3]);
  sub_10005D944();
  sub_10005DC04();
  sub_1001F7D48();
  v5 = sub_10005DBF8();
  return v6(v5, v2);
}

uint64_t sub_10005C580(void *a1)
{
  sub_1000183C4(&qword_1002AF938);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  v5 = sub_10001AE68(a1, a1[3]);
  sub_10005D944();
  sub_10005DBD4();
  if (!v1)
  {
    v5 = sub_1001F7C38();
    v7 = sub_10005DBA4();
    v8(v7);
  }

  sub_100019CCC(a1);
  return v5;
}

uint64_t sub_10005C6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005C3E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10005C6F0(uint64_t a1)
{
  v2 = sub_10005D944();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005C72C(uint64_t a1)
{
  v2 = sub_10005D944();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005C768@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10005C580(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_10005C7BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x706169736F69 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1001F7EA8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10005C844(void *a1)
{
  v2 = sub_1000183C4(&qword_1002AF910);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  sub_10005DBB4();
  sub_10001AE68(a1, a1[3]);
  sub_10005D6D0();
  sub_10005DC04();
  sub_10005D778();
  sub_1001F7D58();
  v5 = sub_10005DBF8();
  return v6(v5, v2);
}

void *sub_10005C978(void *a1)
{
  sub_1000183C4(&qword_1002AF8F8);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  v5 = sub_10001AE68(a1, a1[3]);
  sub_10005D6D0();
  sub_10005DBD4();
  if (v1)
  {
    sub_100019CCC(a1);
  }

  else
  {
    sub_10005D724();
    sub_1001F7C48();
    v6 = sub_10005DBA4();
    v7(v6);
    v5 = v9;
    sub_100019CCC(a1);
  }

  return v5;
}

uint64_t sub_10005CAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005C7BC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10005CB14(uint64_t a1)
{
  v2 = sub_10005D6D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005CB50(uint64_t a1)
{
  v2 = sub_10005D6D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10005CB8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10005C978(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 9) = HIBYTE(v5) & 1;
  }

  return result;
}

uint64_t sub_10005CBF4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A8E0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005CC40(char a1)
{
  result = 0x6563697270;
  switch(a1)
  {
    case 1:
      result = 0x69642D6563697270;
      break;
    case 2:
      result = 1702521203;
      break;
    case 3:
      result = 0x6C662D7465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005CCE0(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002AF8D0);
  sub_10001A278();
  v7 = v6;
  sub_10001E844();
  __chkstk_darwin(v8, v9);
  v11 = &v13[-v10];
  sub_10001AE68(a1, a1[3]);
  sub_10005D278();
  sub_1001F8198();
  v17 = 0;
  sub_10005DBC4();
  sub_1001F7D38();
  if (!v2)
  {
    v16 = 1;
    sub_10005DBC4();
    sub_1001F7D18();
    v15 = 2;
    sub_10005DBC4();
    sub_1001F7D48();
    *v14 = *(v3 + 48);
    *&v14[7] = *(v3 + 55);
    v13[15] = 3;
    sub_10005D320();
    sub_1001F7D58();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_10005CE94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002AF8B8);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  sub_10005DBB4();
  sub_10001AE68(a1, a1[3]);
  sub_10005D278();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  sub_10005DB90();
  v8 = sub_1001F7C28();
  v10 = v9;
  sub_10005DB90();
  v19 = sub_1001F7C08();
  v20 = v11;
  LOBYTE(v21) = 2;
  sub_10005DB90();
  v12 = sub_1001F7C38();
  v17 = v13;
  v18 = v12;
  sub_10005D2CC();
  sub_1001F7C48();
  v14 = sub_10005DBF8();
  v15(v14, v5);
  result = sub_100019CCC(a1);
  *a2 = v8;
  *(a2 + 8) = v10 & 1;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  *(a2 + 32) = v18;
  *(a2 + 40) = v17 & 1;
  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  *(a2 + 58) = v23;
  return result;
}

uint64_t sub_10005D0E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005CBF4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10005D118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005CC40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10005D14C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005CBF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005D174@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOHTTPObjectAggregatorError.unexpectedMessageBody.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005D19C(uint64_t a1)
{
  v2 = sub_10005D278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005D1D8(uint64_t a1)
{
  v2 = sub_10005D278();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005D214@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10005CE94(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 11);
    *(a2 + 43) = *(v7 + 11);
  }

  return result;
}

unint64_t sub_10005D278()
{
  result = qword_1002AF8C0;
  if (!qword_1002AF8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8C0);
  }

  return result;
}

unint64_t sub_10005D2CC()
{
  result = qword_1002AF8C8;
  if (!qword_1002AF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8C8);
  }

  return result;
}

unint64_t sub_10005D320()
{
  result = qword_1002AF8D8;
  if (!qword_1002AF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8D8);
  }

  return result;
}

uint64_t sub_10005D374(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10005D388(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005D3A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 10) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for StoreOffer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x10005D4ACLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__n128 sub_10005D4E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10005D500(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 59))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10005D554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 59) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 59) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_10005D5CC()
{
  result = qword_1002AF8E0;
  if (!qword_1002AF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8E0);
  }

  return result;
}

unint64_t sub_10005D624()
{
  result = qword_1002AF8E8;
  if (!qword_1002AF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8E8);
  }

  return result;
}

unint64_t sub_10005D67C()
{
  result = qword_1002AF8F0;
  if (!qword_1002AF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8F0);
  }

  return result;
}

unint64_t sub_10005D6D0()
{
  result = qword_1002AF900;
  if (!qword_1002AF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF900);
  }

  return result;
}

unint64_t sub_10005D724()
{
  result = qword_1002AF908;
  if (!qword_1002AF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF908);
  }

  return result;
}

unint64_t sub_10005D778()
{
  result = qword_1002AF918;
  if (!qword_1002AF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF918);
  }

  return result;
}

uint64_t sub_10005D7E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005D804(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_10005D840()
{
  result = qword_1002AF920;
  if (!qword_1002AF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF920);
  }

  return result;
}

unint64_t sub_10005D898()
{
  result = qword_1002AF928;
  if (!qword_1002AF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF928);
  }

  return result;
}

unint64_t sub_10005D8F0()
{
  result = qword_1002AF930;
  if (!qword_1002AF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF930);
  }

  return result;
}

unint64_t sub_10005D944()
{
  result = qword_1002AF940;
  if (!qword_1002AF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF940);
  }

  return result;
}

_BYTE *sub_10005D998(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x10005DA34);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10005DA70()
{
  result = qword_1002AF950;
  if (!qword_1002AF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF950);
  }

  return result;
}

unint64_t sub_10005DAC8()
{
  result = qword_1002AF958;
  if (!qword_1002AF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF958);
  }

  return result;
}

unint64_t sub_10005DB20()
{
  result = qword_1002AF960;
  if (!qword_1002AF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF960);
  }

  return result;
}

uint64_t sub_10005DBD4()
{

  return sub_1001F8178();
}

uint64_t sub_10005DC04()
{

  return sub_1001F8198();
}

unint64_t sub_10005DC24(uint64_t a1, void *a2)
{
  sub_1001F77B8(24);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_1001F6CA8(v5);
  return 0xD000000000000016;
}

void *sub_10005DCA4()
{
  result = v0;
  v0[2] = 0xD000000000000011;
  v0[3] = 0x8000000100225270;
  v0[4] = 0;
  v0[5] = 0;
  return result;
}

__n128 sub_10005DCCC@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1001EA8E8();
  sub_1001F10F8(6580578, 0xE300000000000000, v3);
  v5 = v4;

  if (v5)
  {
    if (qword_1002AC428 != -1)
    {
      swift_once();
    }

    v6 = *(off_1002AF690 + 2);
    os_unfair_lock_lock(v6);
    v7 = sub_10005DEA4();
    v9 = v8;
    sub_100040C5C(v7, v8);
    sub_1000B77D0(v7, v9, 0x706A2F6567616D69, 0xE900000000000067, v35);
    sub_10005E308(v10, v11, v12, v13, v14, v15, v16, v17, v28, v30, v31, v33, v34, v35[0]);
    sub_10003A36C(v7, v9);
    type metadata accessor for HTTPResponseHead._Storage();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 3;
    *(v18 + 40) = 65537;
    os_unfair_lock_unlock(v6);
  }

  else
  {
    sub_1000B738C(0xD000000000000012, 0x80000001002252B0, 6, v35);
    sub_10005E308(v19, v20, v21, v22, v23, v24, v25, v26, v28, v30, v31, v33, v34, v35[0]);
    type metadata accessor for HTTPResponseHead._Storage();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 21;
    *(v18 + 40) = 65537;
  }

  *a1 = v18;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = 2;
  result = v32;
  *(a1 + 24) = v29;
  *(a1 + 40) = v32;
  *(a1 + 56) = v1;
  *(a1 + 62) = BYTE6(v1);
  *(a1 + 60) = WORD2(v1);
  return result;
}

__CFData *sub_10005DEA4()
{
  sub_100019C0C(0, &qword_1002AFA20);

  v0 = sub_10005E058();
  v1 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorLargeHomeScreen];
  sub_1000183C4(&unk_1002B3460);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001FF8A0;
  *(v2 + 32) = v1;
  sub_100019C0C(0, &qword_1002AFA28);
  v3 = v1;
  isa = sub_1001F6F18().super.isa;

  [v0 prepareImagesForImageDescriptors:isa];

  v5 = [v0 imageForDescriptor:v3];
  v6 = [v5 CGImage];

  if (v6)
  {
    v7 = v6;
    v6 = sub_10005E0CC();
  }

  else
  {
  }

  return v6;
}

id sub_10005E058()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1001F6B48();

  v2 = [v0 initWithBundleIdentifier:v1];

  return v2;
}

__CFData *sub_10005E0CC()
{
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v2 = sub_1001F6B48();
    v3 = CGImageDestinationCreateWithData(Mutable, v2, 1uLL, 0);

    if (v3)
    {
      CGImageDestinationAddImage(v3, v0, 0);
      if (CGImageDestinationFinalize(v3))
      {
        v4 = Mutable;
        Mutable = sub_1001F63C8();

        return Mutable;
      }
    }

    else
    {
    }

    return 0;
  }

  return Mutable;
}

uint64_t sub_10005E1A8()
{

  sub_10005E2F4(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t sub_10005E1D0()
{
  sub_10005E1A8();

  return swift_deallocClassInstance();
}

uint64_t sub_10005E228()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_10005E25C()
{
  v1 = *(*v0 + 32);
  sub_10005E2E0(v1, *(*v0 + 40));
  return v1;
}

double sub_10005E294@<D0>(_OWORD *a1@<X8>)
{
  sub_10005DCCC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 15);
  *(a1 + 47) = *(v5 + 15);
  return result;
}

uint64_t sub_10005E2E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x22)
  {
  }

  return result;
}

uint64_t sub_10005E2F4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x22)
  {
  }

  return result;
}

uint64_t sub_10005E32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000183C4(&qword_1002AFA30);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v18 - v8;
  objc_allocWithZone(LSApplicationRecord);

  v10 = sub_10005E4AC(a1, a2, 0);
  v13 = v10;
  if (v10)
  {
    v14 = [v10 deviceIdentifierForVendor];
    if (v14)
    {
      v15 = v14;
      sub_1001F6558();

      v16 = sub_1001F6578();
      v17 = 0;
    }

    else
    {

      v16 = sub_1001F6578();
      v17 = 1;
    }

    sub_100018460(v9, v17, 1, v16);
    return sub_10005E588(v9, a3);
  }

  else
  {
    v11 = sub_1001F6578();

    return sub_100018460(a3, 1, 1, v11);
  }
}

id sub_10005E4AC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1001F6B48();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1001F61B8();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_10005E588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002AFA30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ByteBuffer.== infix(_:_:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a2;
  v7 = (HIDWORD(a2) - a2);
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = a5;
  if (HIDWORD(a5) < a5)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v7 != HIDWORD(a5) - a5)
  {
    return 0;
  }

  v9 = BYTE6(a6);
  v11 = BYTE6(a3);
  v12 = result;
  v13 = HIDWORD(a3);
  v14 = HIDWORD(a6);
  if (a3 == a6 && WORD2(a3) == WORD2(a6) && BYTE6(a3) == BYTE6(a6) && result == a4)
  {
    return 1;
  }

  sub_100047940();
  swift_beginAccess();
  v16 = (*(v12 + 24) + (v11 | (v13 << 8)) + v6);
  sub_100047940();
  swift_beginAccess();
  return memcmp(v16, (*(a4 + 24) + (v9 | (v14 << 8)) + v8), v7) == 0;
}

uint64_t ByteBuffer.readableBytes.getter(uint64_t a1, uint64_t a2)
{
  result = (HIDWORD(a2) - a2);
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 8);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else if (*(v1 + 12) >= v4)
  {
    *(v1 + 8) = v4;
    return;
  }

  __break(1u);
}

unint64_t sub_10005E758(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1001F6C68();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1000621E4();
      sub_1001F6DB8();
      sub_100062164();
      return sub_1000621D0();
    }
  }

  __break(1u);
  return result;
}

void sub_10005E808(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100062128();
    v5 = v4 - v3;
    sub_1000621E4();
    v10 = sub_10007DFA0(v6, v7, v8, v9);
    if (v2 && v10 < v2)
    {
      v11 = v5;
      if (!v1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1000621E4();
      v11 = sub_100180764(v12, v13, v14, v15);
      if (!v1)
      {
        v5 = 0;
      }
    }

    if (v5 >= v11)
    {
LABEL_9:
      sub_1000621E4();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_10005E8CC(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      a4();
      sub_100062164();
      return sub_1000621D0();
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ByteBuffer.clear()()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10005EFF0(*(v3 + 16));
    sub_10006226C();
    sub_100062228();
  }

  sub_100061FD4();
  v1[1] = 0;
}

void ByteBufferAllocator.buffer(capacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    sub_100061FE8();
    goto LABEL_5;
  }

  if (a1)
  {
    sub_10006221C();
    type metadata accessor for ByteBuffer._Storage();
    static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(a1, v6, v5, a4, a5);
    sub_100062240();
    return;
  }

  if (qword_1002AC430 != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
}

uint64_t _ByteBufferSlice._begin.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 6) = BYTE2(result);
  return result;
}

uint64_t _ByteBufferSlice.count.getter(unint64_t a1)
{
  v1 = (a1 >> 24) & 0xFFFF00 | BYTE6(a1);
  v2 = a1 >= v1;
  result = a1 - v1;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t _ByteBufferSlice.description.getter()
{
  sub_1001F77B8(28);

  v1._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v1);

  v2._countAndFlagsBits = 3943982;
  v2._object = 0xE300000000000000;
  sub_1001F6CA8(v2);
  v3._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v3);

  v4._countAndFlagsBits = 32032;
  v4._object = 0xE200000000000000;
  sub_1001F6CA8(v4);
  return 0xD000000000000013;
}

void *sub_10005EC5C(void *__dst, const void *__src, size_t __len)
{
  if ((__len & 0x8000000000000000) == 0)
  {
    return memmove(__dst, __src, __len);
  }

  __break(1u);
  return __dst;
}

uint64_t *ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor()
{
  if (qword_1002AC430 != -1)
  {
    sub_100061FE8();
  }

  return &static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
}

uint64_t sub_10005ECAC()
{
  type metadata accessor for ByteBuffer._Storage();
  result = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(0, j_j__malloc, j_j__realloc, j_j__free, sub_10005EC68);
  v1 = *(result + 16);
  static ByteBufferAllocator.zeroCapacityWithDefaultAllocator = result;
  qword_1002E6088 = 0;
  dword_1002E6090 = v1;
  word_1002E6094 = 0;
  byte_1002E6096 = 0;
  return result;
}

uint64_t static ByteBufferAllocator.zeroCapacityWithDefaultAllocator.getter()
{
  if (qword_1002AC430 != -1)
  {
    sub_100061FE8();
  }
}

uint64_t ByteBuffer._slice.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = WORD2(result);
  *(v1 + 22) = BYTE6(result);
  return result;
}

uint64_t ByteBuffer._Storage.bytes.getter()
{
  sub_100061FC4();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t ByteBuffer._Storage.bytes.setter(uint64_t a1)
{
  result = sub_10006224C();
  *(v1 + 24) = a1;
  return result;
}

uint64_t ByteBuffer._Storage.__allocating_init(bytesNoCopy:capacity:allocator:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000620A0();
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  return result;
}

uint64_t ByteBuffer._Storage.init(bytesNoCopy:capacity:allocator:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

uint64_t sub_10005EF78()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  return v1(*(v0 + 24));
}

uint64_t ByteBuffer._Storage.__deallocating_deinit()
{
  sub_10005EF78();
  sub_1000620A0();

  return swift_deallocClassInstance();
}

uint64_t sub_10005EFF0(int a1)
{
  if (a1)
  {
    v2 = sub_1000DBF88(a1);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 32);
  result = v3(v2);
  if (result)
  {
    v5 = result;
    v6 = *(v1 + 56);
    result = swift_allocObject();
    *(result + 16) = v2;
    *(result + 24) = v5;
    *(result + 32) = v3;
    *(result + 40) = *(v1 + 40);
    *(result + 56) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBuffer._Storage.reallocSlice(_:capacity:)(uint64_t a1, int a2)
{
  v4 = sub_10005EFF0(a2);
  v5 = *(v2 + 56);
  sub_100047940();
  swift_beginAccess();
  v6 = *(v4 + 24);
  sub_100047940();
  swift_beginAccess();
  v7 = *(v2 + 24) + a1;
  v8 = sub_10005F21C(a1);
  v5(v6, v7, v8);
  return v4;
}

uint64_t sub_10005F128()
{
  sub_10006214C();
  if (!sub_10000B9DC(v0))
  {
    return 0;
  }

  v1 = 0;
  do
  {
    v2 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    sub_10006214C();
    ++v1;
  }

  while (sub_10000BA0C(v3, v4));
  return v2;
}

uint64_t sub_10005F1C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (!a2)
  {
    v3 = 0;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result == -1 && v3 == 0x8000000000000000)
  {
    goto LABEL_12;
  }

  result = v3 / result;
  if (result < 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_10005F1F8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFSUB__(v2, v1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_10005F21C(uint64_t a1)
{
  if (HIDWORD(a1) < a1)
  {
    return -(a1 - HIDWORD(a1));
  }

  else
  {
    return (HIDWORD(a1) - a1);
  }
}

Swift::Void __swiftcall ByteBuffer._Storage.reallocStorage(capacity:)(Swift::UInt32 capacity)
{
  v2 = sub_1000DBF88(capacity);
  v3 = *(v1 + 40);
  sub_10006224C();
  v4 = v3(*(v1 + 24), v2);
  if (v4)
  {
    *(v1 + 24) = v4;
    *(v1 + 16) = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10006221C();
  if (v9)
  {
    v10 = sub_1000DBF88(v9);
  }

  else
  {
    v10 = 0;
  }

  result = v6(v10);
  if (result)
  {
    v12 = result;
    sub_1000620A0();
    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 24) = v12;
    *(result + 32) = v6;
    *(result + 40) = v5;
    *(result + 48) = a4;
    *(result + 56) = a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall ByteBuffer._Storage.dumpBytes(slice:offset:length:)(ASOctaneSupportXPCService::_ByteBufferSlice slice, Swift::Int offset, Swift::Int length)
{
  v4 = *&slice._begin._backing._1;
  v5 = *&slice._begin._backing._0;
  v6 = *&slice.upperBound;
  sub_100047940();
  v7 = swift_beginAccess();
  v9 = (v6 >> 24) & 0xFFFF00 | BYTE6(v6);
  v10 = v9 + v5;
  if (__OFADD__(v9, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10 + v4;
  if (__OFADD__(v10, v4))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v11 < v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 != v11)
  {
    if (v10 >= v11)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v12 = *(v3 + 16);
    while (v10 < v12)
    {
      ++v10;
      sub_100061AE8();
      sub_1001F6D88();
      v13 = sub_1001F6C38();
      v14 = v13 == 1;
      if (v13 == 1)
      {
        v15._countAndFlagsBits = 48;
      }

      else
      {
        v15._countAndFlagsBits = 0;
      }

      if (v14)
      {
        v16 = 0xE100000000000000;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      v15._object = v16;
      sub_1001F6CA8(v15);

      v18._countAndFlagsBits = sub_1000620B0();
      sub_1001F6CA8(v18);

      v19._countAndFlagsBits = 32;
      v19._object = 0xE100000000000000;
      sub_1001F6CA8(v19);

      if (!--v4)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_15:
  v20._countAndFlagsBits = 23840;
  v20._object = 0xE200000000000000;
  sub_1001F6CA8(v20);
  v7 = 91;
  v8 = 0xE100000000000000;
LABEL_21:
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(Swift::UInt32 capacity, Swift::Bool resetIndices)
{
  v3 = v2;
  if (resetIndices)
  {
    v5 = *(v3 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 22) | (*(v3 + 20) << 8);
  v7 = v6 + v5;
  if (__CFADD__(v6, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(v3 + 16);
  v9 = v8 >= v6;
  v10 = v8 - v6;
  if (!v9)
  {
    goto LABEL_16;
  }

  if (__CFADD__(v7, v10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (__CFADD__(v7, capacity))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = sub_10005F56C(v7 + v10, v8, v7 + capacity, _swiftEmptyArrayStorage);
  if (v11 < v7)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v7 | (v11 << 32), capacity);

  *v3 = v12;
  v13 = *(v3 + 8);
  v9 = v13 >= v5;
  v14 = v13 - v5;
  if (!v9)
  {
    goto LABEL_20;
  }

  *(v3 + 8) = v14;
  v15 = *(v3 + 12);
  v9 = v15 >= v5;
  v16 = v15 - v5;
  if (v9)
  {
    *(v3 + 12) = v16;
    sub_100061FD4();
    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_10005F56C(unsigned int a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (a2 >= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v4 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v4;
  }

  v6 = *(a4 + 16);
  if (v6)
  {
    v7 = (a4 + 32);
    do
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 >= result)
      {
        result = result;
      }

      else
      {
        result = v8;
      }

      --v6;
    }

    while (v6);
  }

  return result;
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(Swift::UInt32 extraCapacity, Swift::Bool resetIndices)
{
  sub_100062024();
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (v6)
  {
    v6 = __CFADD__(v7, v2);
    v8 = v7 + v2;
    if (!v6)
    {
      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v8, v3 & 1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall ByteBuffer._ensureAvailableCapacity(_:at:)(Swift::UInt32 _, Swift::UInt32 at)
{
  v3 = *(v2 + 22) | (*(v2 + 10) << 8);
  v4 = v3 + at;
  if (__CFADD__(v3, at))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4 + _;
  if (__CFADD__(v4, _))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v2;
  v7 = *(v2 + 4);
  if (v7 >= v5)
  {
    return;
  }

  v8 = *v2;
  v9 = *(*v6 + 16);
  if (v9 < v5)
  {
    v10 = __CFADD__(at, _);
    v11 = at + _;
    if (!v10)
    {
      if (!v3)
      {
        ByteBuffer._Storage.reallocStorage(capacity:)(v11);
        goto LABEL_12;
      }

      if (v7 >= v3)
      {
        ByteBuffer._Storage.reallocSlice(_:capacity:)(v3 | (v7 << 32), v11);
        sub_10006226C();
        sub_100062228();
LABEL_12:
        LODWORD(v3) = 0;
        v9 = *(v8 + 16);
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      return;
    }

    goto LABEL_17;
  }

  if (v9 < v3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  _UInt24.init(_:)(0);
LABEL_13:
  v12 = _UInt24.init(_:)(v3);
  *(v6 + 4) = v9;
  *(v6 + 10) = v12;
  *(v6 + 22) = v13;
}

Swift::Void __swiftcall ByteBuffer._moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 8);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v4;
  }
}