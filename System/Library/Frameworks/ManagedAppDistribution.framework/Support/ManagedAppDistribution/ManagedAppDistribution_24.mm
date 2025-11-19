uint64_t sub_100380CB4(void *a1)
{
  v3 = sub_1001F0C48(&qword_100781A78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100006D8C(a1, a1[3]);
  sub_100380EBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

unint64_t sub_100380EBC()
{
  result = qword_100781A80;
  if (!qword_100781A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781A80);
  }

  return result;
}

uint64_t sub_100380F10()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100380F64()
{
  result = qword_100781A88;
  if (!qword_100781A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781A88);
  }

  return result;
}

unint64_t sub_100380FB8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100759668, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100381004@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = sub_1001F0C48(&qword_100781A90);
  v5 = *(v50 - 8);
  __chkstk_darwin(v50);
  v7 = &v28 - v6;
  sub_100006D8C(a1, a1[3]);
  sub_100381858();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000710C(a1);
    sub_1003818AC(0, 0, 0, 0);
  }

  else
  {
    v49 = a2;
    LOBYTE(v63) = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v11 = v8;
    LOBYTE(v51) = 1;
    sub_1003818F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = v11;
    v12 = v63;
    LOBYTE(v51) = 2;
    sub_100381944();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44 = v64;
    v35 = v65;
    v36 = v12;
    v37 = v66;
    v33 = v63;
    v34 = v67;
    v38 = v68;
    v39 = v10;
    sub_1001F0C48(&qword_100781AB0);
    LOBYTE(v51) = 3;
    sub_100383B00(&qword_100781AB8, &qword_100781AB0, &unk_1006A5298, sub_100381998);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v63;
    LOBYTE(v51) = 4;
    sub_1003819EC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v45 = v64;
    v46 = v63;
    v47 = v66;
    v48 = v65;
    sub_1001F0C48(&qword_100781AD0);
    LOBYTE(v51) = 5;
    sub_100383B00(&qword_100781AD8, &qword_100781AD0, &unk_1006A52A0, sub_100381A40);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = v63;
    LOBYTE(v51) = 6;
    sub_100381A94();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v86 = 1;
    v13 = v63;
    v42 = v64;
    v30 = v66;
    v31 = v65;
    sub_1001F0C48(&qword_100781AF0);
    LOBYTE(v51) = 7;
    sub_100381AE8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v13;
    v41 = v63;
    LOBYTE(v63) = 8;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    v87 = 9;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v5 + 8))(v7, v50);
    *&v51 = v40;
    *(&v51 + 1) = v39;
    *&v52 = v36;
    *(&v52 + 1) = v33;
    v18 = v45;
    *&v53 = v44;
    *(&v53 + 1) = v35;
    *&v54 = v37;
    *(&v54 + 1) = v34;
    *&v55 = v38;
    *(&v55 + 1) = v32;
    v19 = v46;
    *&v56 = v46;
    *(&v56 + 1) = v45;
    *&v57 = v48;
    *(&v57 + 1) = v47;
    v20 = v43;
    *&v58 = v43;
    *(&v58 + 1) = v29;
    *&v59 = v42;
    *(&v59 + 1) = v31;
    *&v60 = v30;
    *(&v60 + 1) = v41;
    *&v61 = v14;
    *(&v61 + 1) = v16;
    v62 = v17;
    sub_10037E134(&v51, &v63);
    sub_10000710C(a1);
    v63 = v40;
    v64 = v39;
    v65 = v36;
    v66 = v33;
    v67 = v44;
    v68 = v35;
    v69 = v37;
    v70 = v34;
    v71 = v38;
    v72 = v32;
    v73 = v19;
    v74 = v18;
    v75 = v48;
    v76 = v47;
    v77 = v20;
    v78 = v29;
    v79 = v42;
    v80 = v31;
    v81 = v30;
    v82 = v41;
    v83 = v14;
    v84 = v16;
    v85 = v17;
    result = sub_10026E6B8(&v63);
    v22 = v60;
    v23 = v49;
    *(v49 + 128) = v59;
    *(v23 + 144) = v22;
    *(v23 + 160) = v61;
    *(v23 + 176) = v62;
    v24 = v56;
    *(v23 + 64) = v55;
    *(v23 + 80) = v24;
    v25 = v58;
    *(v23 + 96) = v57;
    *(v23 + 112) = v25;
    v26 = v52;
    *v23 = v51;
    *(v23 + 16) = v26;
    v27 = v54;
    *(v23 + 32) = v53;
    *(v23 + 48) = v27;
  }

  return result;
}

unint64_t sub_100381858()
{
  result = qword_100781A98;
  if (!qword_100781A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781A98);
  }

  return result;
}

uint64_t sub_1003818AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_1003818F0()
{
  result = qword_100781AA0;
  if (!qword_100781AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781AA0);
  }

  return result;
}

unint64_t sub_100381944()
{
  result = qword_100781AA8;
  if (!qword_100781AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781AA8);
  }

  return result;
}

unint64_t sub_100381998()
{
  result = qword_100781AC0;
  if (!qword_100781AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781AC0);
  }

  return result;
}

unint64_t sub_1003819EC()
{
  result = qword_100781AC8;
  if (!qword_100781AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781AC8);
  }

  return result;
}

unint64_t sub_100381A40()
{
  result = qword_100781AE0;
  if (!qword_100781AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781AE0);
  }

  return result;
}

unint64_t sub_100381A94()
{
  result = qword_100781AE8;
  if (!qword_100781AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781AE8);
  }

  return result;
}

unint64_t sub_100381AE8()
{
  result = qword_100781AF8;
  if (!qword_100781AF8)
  {
    sub_1001F76D0(&qword_100781AF0);
    sub_100213FA0(&qword_100781B00, &qword_100781B08);
    sub_100383B00(&qword_100781B10, &qword_100781B18, &unk_1006A52B8, sub_100381A94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781AF8);
  }

  return result;
}

unint64_t sub_100381BCC()
{
  result = qword_100781B28;
  if (!qword_100781B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781B28);
  }

  return result;
}

uint64_t sub_100381C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100381C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100381CE8()
{
  result = qword_100781B38;
  if (!qword_100781B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781B38);
  }

  return result;
}

uint64_t sub_100381D3C(void *a1)
{
  v3 = sub_1001F0C48(&qword_100781BE0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100006D8C(a1, a1[3]);
  sub_100382B84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

void *sub_100381F20(void *a1)
{
  v3 = sub_1001F0C48(&qword_100781BC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100006D8C(a1, a1[3]);
  sub_100382ADC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000710C(a1);
  }

  else
  {
    sub_100382B30();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_10000710C(a1);
  }

  return v7;
}

unint64_t sub_100382094(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100759778, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

void *sub_1003820E0(void *a1)
{
  v3 = sub_1001F0C48(&qword_100781E60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100006D8C(a1, a1[3]);
  sub_100384380();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000710C(a1);
  }

  else
  {
    sub_1003843D4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_10000710C(a1);
  }

  return v7;
}

void *sub_100382254(void *a1)
{
  v3 = sub_1001F0C48(&qword_100781D88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100006D8C(a1, a1[3]);
  sub_100383AAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000710C(a1);
  }

  else
  {
    sub_1001F0C48(&qword_100781D98);
    sub_100383B00(&qword_100781DA0, &qword_100781D98, &unk_1006A5E70, sub_100383B7C);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000710C(a1);
  }

  return v7;
}

void *sub_100382404(void *a1)
{
  v3 = sub_1001F0C48(&qword_100781B40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100006D8C(a1, a1[3]);
  sub_100382574();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000710C(a1);
  }

  else
  {
    sub_1003825C8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000710C(a1);
  }

  return v7;
}

unint64_t sub_100382574()
{
  result = qword_100781B48;
  if (!qword_100781B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781B48);
  }

  return result;
}

unint64_t sub_1003825C8()
{
  result = qword_100781B50;
  if (!qword_100781B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781B50);
  }

  return result;
}

unint64_t sub_10038261C()
{
  result = qword_100781B60;
  if (!qword_100781B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781B60);
  }

  return result;
}

unint64_t sub_100382670()
{
  result = qword_100781B70;
  if (!qword_100781B70)
  {
    sub_1001F76D0(&qword_100781B68);
    sub_1003826FC();
    sub_100382750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781B70);
  }

  return result;
}

unint64_t sub_1003826FC()
{
  result = qword_100781B78;
  if (!qword_100781B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781B78);
  }

  return result;
}

unint64_t sub_100382750()
{
  result = qword_100781B80;
  if (!qword_100781B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781B80);
  }

  return result;
}

unint64_t sub_1003827A4()
{
  result = qword_100781B88;
  if (!qword_100781B88)
  {
    sub_1001F76D0(&qword_100781828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781B88);
  }

  return result;
}

unint64_t sub_100382828()
{
  result = qword_100781B90;
  if (!qword_100781B90)
  {
    sub_1001F76D0(&qword_1007819F0);
    sub_1003828B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781B90);
  }

  return result;
}

unint64_t sub_1003828B4()
{
  result = qword_100781B98;
  if (!qword_100781B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781B98);
  }

  return result;
}

unint64_t sub_100382908()
{
  result = qword_100781BA0;
  if (!qword_100781BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781BA0);
  }

  return result;
}

unint64_t sub_10038295C()
{
  result = qword_100781BB0;
  if (!qword_100781BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781BB0);
  }

  return result;
}

uint64_t sub_1003829B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_1007809F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100382A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100382A88()
{
  result = qword_100781BC0;
  if (!qword_100781BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781BC0);
  }

  return result;
}

unint64_t sub_100382ADC()
{
  result = qword_100781BD0;
  if (!qword_100781BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781BD0);
  }

  return result;
}

unint64_t sub_100382B30()
{
  result = qword_100781BD8;
  if (!qword_100781BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781BD8);
  }

  return result;
}

unint64_t sub_100382B84()
{
  result = qword_100781BE8;
  if (!qword_100781BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781BE8);
  }

  return result;
}

unint64_t sub_100382BD8()
{
  result = qword_100781BF0[0];
  if (!qword_100781BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100781BF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaAPIApp.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaAPIApp.Attributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100382DDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100382DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100382E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100382E88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100382ED0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MediaAPIApp.Attributes.PlatformAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaAPIApp.Attributes.PlatformAttributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003830C8()
{
  result = qword_100781C78;
  if (!qword_100781C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781C78);
  }

  return result;
}

unint64_t sub_100383164()
{
  result = qword_100781C90;
  if (!qword_100781C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781C90);
  }

  return result;
}

unint64_t sub_1003831BC()
{
  result = qword_100781C98;
  if (!qword_100781C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781C98);
  }

  return result;
}

unint64_t sub_100383214()
{
  result = qword_100781CA0;
  if (!qword_100781CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781CA0);
  }

  return result;
}

unint64_t sub_1003832B0()
{
  result = qword_100781CB8;
  if (!qword_100781CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781CB8);
  }

  return result;
}

unint64_t sub_100383308()
{
  result = qword_100781CC0;
  if (!qword_100781CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781CC0);
  }

  return result;
}

unint64_t sub_100383360()
{
  result = qword_100781CC8;
  if (!qword_100781CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781CC8);
  }

  return result;
}

unint64_t sub_1003833B8()
{
  result = qword_100781CD0;
  if (!qword_100781CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781CD0);
  }

  return result;
}

unint64_t sub_100383410()
{
  result = qword_100781CD8;
  if (!qword_100781CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781CD8);
  }

  return result;
}

unint64_t sub_100383468()
{
  result = qword_100781CE0;
  if (!qword_100781CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781CE0);
  }

  return result;
}

unint64_t sub_1003834C0()
{
  result = qword_100781CE8;
  if (!qword_100781CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781CE8);
  }

  return result;
}

unint64_t sub_100383518()
{
  result = qword_100781CF0;
  if (!qword_100781CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781CF0);
  }

  return result;
}

unint64_t sub_100383570()
{
  result = qword_100781CF8;
  if (!qword_100781CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781CF8);
  }

  return result;
}

unint64_t sub_1003835C8()
{
  result = qword_100781D00;
  if (!qword_100781D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D00);
  }

  return result;
}

unint64_t sub_100383620()
{
  result = qword_100781D08;
  if (!qword_100781D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D08);
  }

  return result;
}

unint64_t sub_100383678()
{
  result = qword_100781D10;
  if (!qword_100781D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D10);
  }

  return result;
}

unint64_t sub_1003836D0()
{
  result = qword_100781D18;
  if (!qword_100781D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D18);
  }

  return result;
}

unint64_t sub_100383728()
{
  result = qword_100781D20;
  if (!qword_100781D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D20);
  }

  return result;
}

unint64_t sub_100383780()
{
  result = qword_100781D28;
  if (!qword_100781D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D28);
  }

  return result;
}

unint64_t sub_1003837D8()
{
  result = qword_100781D30;
  if (!qword_100781D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D30);
  }

  return result;
}

unint64_t sub_100383830()
{
  result = qword_100781D38;
  if (!qword_100781D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D38);
  }

  return result;
}

unint64_t sub_1003838BC()
{
  result = qword_100781D48;
  if (!qword_100781D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D48);
  }

  return result;
}

unint64_t sub_100383910()
{
  result = qword_100781D58;
  if (!qword_100781D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D58);
  }

  return result;
}

unint64_t sub_100383964()
{
  result = qword_100781D68;
  if (!qword_100781D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D68);
  }

  return result;
}

unint64_t sub_1003839B8()
{
  result = qword_100781D78;
  if (!qword_100781D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D78);
  }

  return result;
}

unint64_t sub_100383A0C()
{
  result = qword_100781D80;
  if (!qword_100781D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D80);
  }

  return result;
}

unint64_t sub_100383A60(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007598D0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100383AAC()
{
  result = qword_100781D90;
  if (!qword_100781D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781D90);
  }

  return result;
}

uint64_t sub_100383B00(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100383B7C()
{
  result = qword_100781DA8;
  if (!qword_100781DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781DA8);
  }

  return result;
}

unint64_t sub_100383BD0()
{
  result = qword_100781DB8;
  if (!qword_100781DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781DB8);
  }

  return result;
}

unint64_t sub_100383CA8()
{
  result = qword_100781DC0;
  if (!qword_100781DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781DC0);
  }

  return result;
}

unint64_t sub_100383D00()
{
  result = qword_100781DC8;
  if (!qword_100781DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781DC8);
  }

  return result;
}

unint64_t sub_100383D58()
{
  result = qword_100781DD0;
  if (!qword_100781DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781DD0);
  }

  return result;
}

unint64_t sub_100383DB0()
{
  result = qword_100781DD8;
  if (!qword_100781DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781DD8);
  }

  return result;
}

unint64_t sub_100383E08()
{
  result = qword_100781DE0;
  if (!qword_100781DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781DE0);
  }

  return result;
}

unint64_t sub_100383E60()
{
  result = qword_100781DE8;
  if (!qword_100781DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781DE8);
  }

  return result;
}

unint64_t sub_100383EB8()
{
  result = qword_100781DF0;
  if (!qword_100781DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781DF0);
  }

  return result;
}

unint64_t sub_100383F10()
{
  result = qword_100781DF8;
  if (!qword_100781DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781DF8);
  }

  return result;
}

unint64_t sub_100383F68()
{
  result = qword_100781E00;
  if (!qword_100781E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E00);
  }

  return result;
}

unint64_t sub_100383FC0()
{
  result = qword_100781E08;
  if (!qword_100781E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E08);
  }

  return result;
}

unint64_t sub_100384018()
{
  result = qword_100781E10;
  if (!qword_100781E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E10);
  }

  return result;
}

unint64_t sub_100384070()
{
  result = qword_100781E18;
  if (!qword_100781E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E18);
  }

  return result;
}

unint64_t sub_1003840C8()
{
  result = qword_100781E20;
  if (!qword_100781E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E20);
  }

  return result;
}

unint64_t sub_100384120()
{
  result = qword_100781E28;
  if (!qword_100781E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E28);
  }

  return result;
}

unint64_t sub_100384178()
{
  result = qword_100781E30;
  if (!qword_100781E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E30);
  }

  return result;
}

unint64_t sub_1003841D0()
{
  result = qword_100781E38;
  if (!qword_100781E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E38);
  }

  return result;
}

unint64_t sub_100384228()
{
  result = qword_100781E40;
  if (!qword_100781E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E40);
  }

  return result;
}

unint64_t sub_100384280()
{
  result = qword_100781E48;
  if (!qword_100781E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E48);
  }

  return result;
}

unint64_t sub_1003842D8()
{
  result = qword_100781E50;
  if (!qword_100781E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E50);
  }

  return result;
}

unint64_t sub_10038432C()
{
  result = qword_100781E58;
  if (!qword_100781E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E58);
  }

  return result;
}

unint64_t sub_100384380()
{
  result = qword_100781E68;
  if (!qword_100781E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E68);
  }

  return result;
}

unint64_t sub_1003843D4()
{
  result = qword_100781E70;
  if (!qword_100781E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E70);
  }

  return result;
}

unint64_t sub_10038444C()
{
  result = qword_100781E78;
  if (!qword_100781E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E78);
  }

  return result;
}

unint64_t sub_1003844A4()
{
  result = qword_100781E80;
  if (!qword_100781E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E80);
  }

  return result;
}

unint64_t sub_1003844FC()
{
  result = qword_100781E88;
  if (!qword_100781E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E88);
  }

  return result;
}

unint64_t sub_100384550()
{
  result = qword_100781E98;
  if (!qword_100781E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781E98);
  }

  return result;
}

unint64_t sub_1003845B8()
{
  result = qword_100781EA0;
  if (!qword_100781EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781EA0);
  }

  return result;
}

unint64_t sub_100384610()
{
  result = qword_100781EA8;
  if (!qword_100781EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781EA8);
  }

  return result;
}

unint64_t sub_100384668()
{
  result = qword_100781EB0;
  if (!qword_100781EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781EB0);
  }

  return result;
}

uint64_t sub_1003846E4(uint64_t a1)
{
  v2 = sub_100389238();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100384720(uint64_t a1)
{
  v2 = sub_100389238();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10038476C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7368801 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1003847F4(uint64_t a1)
{
  v2 = sub_1003891E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100384830(uint64_t a1)
{
  v2 = sub_1003891E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100384884(void *a1)
{
  v2 = sub_1001F0C48(&qword_1007820D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = sub_1001F0C48(&qword_1007820D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100006D8C(a1, a1[3]);
  sub_1003891E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100389238();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100384A5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_100388990(v5, v7) & 1;
}

uint64_t sub_100384ABC()
{
  v4 = *v0;

  v1._countAndFlagsBits = 8250;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  type metadata accessor for AppState();
  sub_100388E50(&qword_1007820A8, 255, &type metadata accessor for AppState);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return v4;
}

uint64_t sub_100384BD0(uint64_t a1, double a2)
{
  v3 = v2;
  v37 = type metadata accessor for UUID();
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProgressCache.Progress();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  swift_beginAccess();
  v19 = *(v2 + 112);
  if (*(v19 + 16))
  {
    v36 = v3;

    v20 = sub_1005225DC(a1);
    if (v21)
    {
      sub_100387CC4(*(v19 + 56) + *(v13 + 72) * v20, v16);

      sub_100387D28(v16, v18);
      v22 = swift_allocObject();
      *(v22 + 16) = a2;
      v23 = *(v12 + 24);
      v24 = type metadata accessor for AppState();
      v25 = *(v24 - 8);
      (*(v25 + 8))(&v18[v23], v24);
      *&v18[v23] = v22;
      (*(v25 + 104))(&v18[v23], enum case for AppState.installing(_:), v24);
      sub_100385AF0(a1, v18, 0);
      return sub_100387D8C(v18);
    }
  }

  static Logger.progress.getter();
  v27 = v37;
  (*(v6 + 16))(v8, a1, v37);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40 = v31;
    *v30 = 136446210;
    sub_100388E50(&qword_100789F60, 255, &type metadata accessor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v6 + 8))(v8, v27);
    v35 = sub_1002346CC(v32, v34, &v40);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "[ProgressCache] Can't update untracked progress for %{public}s", v30, 0xCu);
    sub_10000710C(v31);
  }

  else
  {

    (*(v6 + 8))(v8, v27);
  }

  return (*(v38 + 8))(v11, v39);
}

uint64_t sub_10038505C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for ProgressCache.Progress();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1003851F8, v1, 0);
}

uint64_t sub_1003851F8()
{
  v63 = v0;
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = v0[5];

    v4 = sub_1005225DC(v3);
    if (v5)
    {
      v7 = v0[17];
      v6 = v0[18];
      v8 = v0[10];
      v9 = v0[7];
      v10 = v0[8];
      v11 = v0[5];
      sub_100387CC4(*(v2 + 56) + *(v0[16] + 72) * v4, v7);

      sub_100387D28(v7, v6);
      static Logger.progress.getter();
      (*(v10 + 16))(v8, v11, v9);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      v14 = os_log_type_enabled(v12, v13);
      v15 = v0[14];
      v17 = v0[11];
      v16 = v0[12];
      v18 = v0[10];
      v20 = v0[7];
      v19 = v0[8];
      if (v14)
      {
        v60 = v0[11];
        v21 = swift_slowAlloc();
        v56 = v13;
        v22 = swift_slowAlloc();
        v62 = v22;
        *v21 = 136446210;
        sub_100388E50(&qword_100789F60, 255, &type metadata accessor for UUID);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v15;
        v25 = v24;
        (*(v19 + 8))(v18, v20);
        v26 = sub_1002346CC(v23, v25, &v62);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v12, v56, "[ProgressCache] Pausing progress for %{public}s", v21, 0xCu);
        sub_10000710C(v22);

        (*(v16 + 8))(v58, v60);
      }

      else
      {

        (*(v19 + 8))(v18, v20);
        (*(v16 + 8))(v15, v17);
      }

      v46 = v0[18];
      v47 = v0[15];
      v48 = v0[5];
      v49 = type metadata accessor for AppState();
      v50 = swift_allocBox();
      v51 = *(v47 + 24);
      v52 = *(v49 - 8);
      (*(v52 + 32))(v53, v46 + v51, v49);
      *(v46 + v51) = v50;
      (*(v52 + 104))(v46 + v51, enum case for AppState.paused(_:), v49);
      sub_100385AF0(v48, v46, 0);
      sub_100387D8C(v46);
      goto LABEL_12;
    }
  }

  v28 = v0[8];
  v27 = v0[9];
  v29 = v0[7];
  v30 = v0[5];
  static Logger.progress.getter();
  (*(v28 + 16))(v27, v30, v29);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  v33 = os_log_type_enabled(v31, v32);
  v35 = v0[12];
  v34 = v0[13];
  v36 = v0[11];
  v38 = v0[8];
  v37 = v0[9];
  v39 = v0[7];
  if (v33)
  {
    v61 = v0[11];
    v40 = swift_slowAlloc();
    v57 = v32;
    v41 = swift_slowAlloc();
    v62 = v41;
    *v40 = 136446210;
    sub_100388E50(&qword_100789F60, 255, &type metadata accessor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v34;
    v44 = v43;
    (*(v38 + 8))(v37, v39);
    v45 = sub_1002346CC(v42, v44, &v62);

    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v31, v57, "[ProgressCache] Can't pause untracked progress for %{public}s", v40, 0xCu);
    sub_10000710C(v41);

    (*(v35 + 8))(v59, v61);
  }

  else
  {

    (*(v38 + 8))(v37, v39);
    (*(v35 + 8))(v34, v36);
  }

LABEL_12:

  v54 = v0[1];

  return v54();
}

uint64_t sub_100385740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v33 = a4;
  v34 = a2;
  v32 = type metadata accessor for ProgressCache.Progress();
  v6 = *(v32 - 8);
  v7 = __chkstk_darwin(v32);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = sub_1001F0C48(&unk_1007809D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  swift_beginAccess();
  v15 = *(v4 + 112);
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v21 = 0;
  while (v18)
  {
LABEL_11:
    sub_100387CC4(*(v15 + 56) + *(v6 + 72) * (__clz(__rbit64(v18)) | (v21 << 6)), v11);
    sub_100387D28(v11, v9);
    if (v35)
    {
      if (*v9 == a1 && *(v9 + 1) == v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_17:

        sub_100387D28(v9, v14);
        v23 = 0;
LABEL_19:
        v24 = v32;
        (*(v6 + 56))(v14, v23, 1, v32);

        if ((*(v6 + 48))(v14, 1, v24) == 1)
        {
          sub_1000032A8(v14, &unk_1007809D0);
          v25 = type metadata accessor for AppState();
          return (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
        }

        else
        {
          v26 = *(v24 + 24);
          v27 = type metadata accessor for AppState();
          v28 = *(v27 - 8);
          v29 = &v14[v26];
          v30 = v33;
          (*(v28 + 16))(v33, v29, v27);
          sub_100387D8C(v14);
          return (*(v28 + 56))(v30, 0, 1, v27);
        }
      }
    }

    else if ((v9[24] & 1) == 0 && *(v9 + 2) == a1)
    {
      goto LABEL_17;
    }

    v18 &= v18 - 1;
    result = sub_100387D8C(v9);
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      v23 = 1;
      goto LABEL_19;
    }

    v18 = *(v15 + 64 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100385AF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v112 = a2;
  v113 = a1;
  v6 = sub_1001F0C48(&unk_1007809D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v99 - v7;
  v9 = type metadata accessor for UUID();
  v108 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v102 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v105 = &v99 - v13;
  v14 = __chkstk_darwin(v12);
  v104 = &v99 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v99 - v17;
  __chkstk_darwin(v16);
  v20 = &v99 - v19;
  v21 = type metadata accessor for Logger();
  v109 = *(v21 - 8);
  v110 = v21;
  v22 = __chkstk_darwin(v21);
  v103 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v107 = &v99 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v99 - v27;
  __chkstk_darwin(v26);
  v30 = &v99 - v29;
  v111 = type metadata accessor for ProgressCache.Progress();
  v106 = *(v111 - 8);
  __chkstk_darwin(v111);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v33 = *(v3 + 112);
  if (*(v33 + 16))
  {

    v34 = sub_1005225DC(v113);
    if (v35)
    {
      sub_100387CC4(*(v33 + 56) + *(v106 + 72) * v34, v32);

      if (sub_100388A74(v32, v112))
      {
        static Logger.progress.getter();
        v36 = v108;
        (*(v108 + 16))(v20, v113, v9);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = v36;
          v40 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v114[0] = v113;
          *v40 = 136446210;
          sub_100388E50(&qword_100789F60, 255, &type metadata accessor for UUID);
          v41 = dispatch thunk of CustomStringConvertible.description.getter();
          v43 = v42;
          (*(v39 + 8))(v20, v9);
          v44 = sub_1002346CC(v41, v43, v114);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v37, v38, "[ProgressCache] Not posting progress for %{public}s. No state change.", v40, 0xCu);
          sub_10000710C(v113);
        }

        else
        {

          (*(v36 + 8))(v20, v9);
        }

        (*(v109 + 8))(v30, v110);
        return sub_100387D8C(v32);
      }

      sub_100387D8C(v32);
    }

    else
    {
    }
  }

  if (AppState.isComplete.getter() & 1) != 0 || (a3)
  {
    static Logger.progress.getter();
    v45 = v108;
    v101 = *(v108 + 16);
    v101(v18, v113, v9);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v114[0] = v100;
      *v51 = 136446210;
      sub_100388E50(&qword_100789F60, 255, &type metadata accessor for UUID);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v4;
      v54 = v8;
      v55 = v9;
      v57 = v56;
      (*(v108 + 8))(v18, v55);
      v58 = sub_1002346CC(v52, v57, v114);
      v9 = v55;
      v8 = v54;
      v4 = v53;

      *(v51 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v49, v50, "[ProgressCache] Removing completed item %{public}s", v51, 0xCu);
      sub_10000710C(v100);

      v45 = v108;
    }

    else
    {

      (*(v45 + 8))(v18, v9);
    }

    (*(v109 + 8))(v28, v110);
    v48 = v107;
    swift_beginAccess();
    sub_100532AF4(v113, v8);
    sub_1000032A8(v8, &unk_1007809D0);
    swift_endAccess();
    v46 = v101;
  }

  else
  {
    v45 = v108;
    v46 = *(v108 + 16);
    v47 = v104;
    v46(v104, v113, v9);
    sub_100387CC4(v112, v8);
    (*(v106 + 56))(v8, 0, 1, v111);
    swift_beginAccess();
    sub_1005B7A24(v8, v47);
    swift_endAccess();
    v48 = v107;
  }

  v59 = v105;
  swift_beginAccess();
  v60 = *(v4 + 120);
  v108 = v45 + 16;
  if (v60)
  {
    static Logger.progress.getter();
    v46(v59, v113, v9);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v105 = v8;
      v64 = v63;
      v65 = v46;
      v66 = swift_slowAlloc();
      v114[0] = v66;
      *v64 = 136446210;
      sub_100388E50(&qword_100789F60, 255, &type metadata accessor for UUID);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v9;
      v69 = v67;
      v71 = v70;
      v72 = v59;
      v73 = v68;
      (*(v45 + 8))(v72, v68);
      v74 = sub_1002346CC(v69, v71, v114);

      *(v64 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v61, v62, "[ProgressCache] Coalescing progress for %{public}s", v64, 0xCu);
      sub_10000710C(v66);
      v46 = v65;

      v8 = v105;

      (*(v109 + 8))(v107, v110);
    }

    else
    {

      v88 = v59;
      v73 = v9;
      (*(v45 + 8))(v88, v9);
      (*(v109 + 8))(v48, v110);
    }

    v89 = sub_100384B7C();
    if (*v90)
    {
      v91 = v104;
      v46(v104, v113, v73);
      sub_100387CC4(v112, v8);
      (*(v106 + 56))(v8, 0, 1, v111);
      sub_1005B7A24(v8, v91);
    }

    return (v89)(v114, 0);
  }

  else
  {
    v75 = v103;
    static Logger.progress.getter();
    v76 = v102;
    v46(v102, v113, v9);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = v45;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v101 = v46;
      v82 = v81;
      v114[0] = v81;
      *v80 = 136446210;
      sub_100388E50(&qword_100789F60, 255, &type metadata accessor for UUID);
      v83 = v9;
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      (*(v79 + 8))(v76, v83);
      v87 = sub_1002346CC(v84, v86, v114);

      *(v80 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v77, v78, "[ProgressCache] Inserting first progress event %{public}s", v80, 0xCu);
      sub_10000710C(v82);
      v46 = v101;

      (*(v109 + 8))(v103, v110);
    }

    else
    {

      (*(v45 + 8))(v76, v9);
      (*(v109 + 8))(v75, v110);
      v83 = v9;
    }

    *(v4 + 120) = sub_100528E5C(_swiftEmptyArrayStorage);

    sub_1001F0C48(&unk_100780A70);
    v93 = (sub_1001F0C48(&qword_100786FA0) - 8);
    v94 = (*(*v93 + 80) + 32) & ~*(*v93 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_10069E680;
    v96 = v95 + v94;
    v97 = v93[14];
    v46(v96, v113, v83);
    sub_100387CC4(v112, v96 + v97);
    v98 = sub_100528E5C(v95);
    swift_setDeallocating();
    sub_1000032A8(v96, &qword_100786FA0);
    swift_deallocClassInstance();
    sub_1003868C0(v98);

    return sub_100386AE8();
  }
}

uint64_t sub_100386824()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  *(v0 + 120) = 0;
  if (v1)
  {
    if (*(v1 + 16))
    {
      sub_1003868C0(v1);

      *(v0 + 120) = sub_100528E5C(_swiftEmptyArrayStorage);

      return sub_100386AE8();
    }
  }

  *(v0 + 120) = 0;
}

uint64_t sub_1003868C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.progress.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    type metadata accessor for UUID();
    type metadata accessor for ProgressCache.Progress();
    sub_100388E50(&qword_100781FF8, 255, &type metadata accessor for UUID);
    v13 = Dictionary.description.getter();
    v15 = sub_1002346CC(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "[ProgressCache] Posting progress changes: %{public}s", v11, 0xCu);
    sub_10000710C(v12);
  }

  (*(v5 + 8))(v7, v4);
  return sub_10066A4B8(a1);
}

uint64_t sub_100386AE8()
{
  v1 = v0;
  v2 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v20 = &v19 - v3;
  v5 = type metadata accessor for ContinuousClock.Instant();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v22 = *(v6 + 8);
  v22(v9, v5);
  v21 = "pendingProgressUpdates";
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  (*(v6 + 16))(v9, v11, v5);
  v14 = sub_100388E50(&qword_100781FF0, v13, type metadata accessor for ProgressCache);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v14;
  (*(v6 + 32))(v17 + v15, v9, v5);
  *(v17 + v16) = v1;
  swift_retain_n();
  sub_100494DB4(0xD00000000000001ELL, v21 | 0x8000000000000000, v20, &unk_1006A68A8, v17);

  return (v22)(v11, v5);
}

uint64_t sub_100386DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = type metadata accessor for ContinuousClock();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100386E6C, a5, 0);
}

uint64_t sub_100386E6C()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = sub_100388E50(&qword_10077EA80, 255, &type metadata accessor for ContinuousClock);
  *v1 = v0;
  v1[1] = sub_100386F68;
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v5, v0 + 16, v3, v4, v2);
}

uint64_t sub_100386F68()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_100387154;
  }

  else
  {
    v7 = sub_1003870E4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003870E4()
{
  sub_100386824();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100387154()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003871B8()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100387224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a1;
  v7[13] = a3;
  v14 = type metadata accessor for AppState();
  v7[14] = v14;
  v7[15] = *(v14 - 8);
  v7[16] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v7[17] = v15;
  v7[18] = *(v15 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v7[21] = v16;
  v7[22] = *(v16 - 8);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v17 = type metadata accessor for ProgressCache.Progress();
  v7[25] = v17;
  v7[26] = *(v17 - 8);
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  v7[8] = a7;
  v18 = sub_10020A748(v7 + 2);
  (*(*(a4 - 8) + 16))(v18, a2, a4);

  return _swift_task_switch(sub_10038748C, a3, 0);
}

uint64_t sub_10038748C()
{
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = v0[12];

    v4 = sub_1005225DC(v3);
    if (v5)
    {
      v7 = v0[27];
      v6 = v0[28];
      v9 = v0[18];
      v8 = v0[19];
      v10 = v0[17];
      v11 = v0[12];
      sub_100387CC4(*(v2 + 56) + *(v0[26] + 72) * v4, v7);

      sub_100387D28(v7, v6);
      static Logger.progress.getter();
      (*(v9 + 16))(v8, v11, v10);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      v14 = os_log_type_enabled(v12, v13);
      v16 = v0[22];
      v15 = v0[23];
      v17 = v0[21];
      v19 = v0[18];
      v18 = v0[19];
      v20 = v0[17];
      if (v14)
      {
        v60 = v0[21];
        v21 = swift_slowAlloc();
        v56 = v13;
        v22 = swift_slowAlloc();
        v63 = v22;
        *v21 = 136446210;
        sub_100388E50(&qword_100789F60, 255, &type metadata accessor for UUID);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v15;
        v25 = v24;
        (*(v19 + 8))(v18, v20);
        v26 = sub_1002346CC(v23, v25, &v63);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v12, v56, "[ProgressCache] Canceling progress for %{public}s", v21, 0xCu);
        sub_10000710C(v22);

        (*(v16 + 8))(v58, v60);
      }

      else
      {

        (*(v19 + 8))(v18, v20);
        (*(v16 + 8))(v15, v17);
      }

      v48 = v0[28];
      v49 = *(v48 + 48);
      if (v49 == 255)
      {
        v50 = 0;
        v51 = 3;
      }

      else if (v49)
      {
        v50 = 0;
        v51 = 0;
      }

      else
      {
        v50 = *(v48 + 32);
        v51 = *(v48 + 40);
        sub_10032F7C8();
        v48 = v0[28];
      }

      v0[29] = v50;
      v0[30] = v51;
      v52 = *v48;
      v53 = *(v48 + 8);
      v54 = swift_task_alloc();
      v0[31] = v54;
      *v54 = v0;
      v54[1] = sub_100387A28;
      v55 = v0[16];

      return sub_10060FC18(v55, v52, v53, 1, 1, 0, (v0 + 2), v50);
    }
  }

  v27 = v0[20];
  v28 = v0[17];
  v29 = v0[18];
  v30 = v0[12];
  static Logger.progress.getter();
  (*(v29 + 16))(v27, v30, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v0[24];
  v36 = v0[21];
  v35 = v0[22];
  v37 = v0[20];
  v39 = v0[17];
  v38 = v0[18];
  if (v33)
  {
    v61 = v0[21];
    v40 = swift_slowAlloc();
    v57 = v32;
    v41 = swift_slowAlloc();
    v63 = v41;
    *v40 = 136446210;
    sub_100388E50(&qword_100789F60, 255, &type metadata accessor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v34;
    v44 = v43;
    (*(v38 + 8))(v37, v39);
    v45 = sub_1002346CC(v42, v44, &v63);

    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v31, v57, "[ProgressCache] Can't cancel untracked progress for %{public}s", v40, 0xCu);
    sub_10000710C(v41);

    (*(v35 + 8))(v59, v61);
  }

  else
  {

    (*(v38 + 8))(v37, v39);
    (*(v35 + 8))(v34, v36);
  }

  sub_10000710C((v0 + 2));

  v46 = v0[1];

  return v46();
}

uint64_t sub_100387A28()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 104);

  sub_1002706F8(v2, v1);

  return _swift_task_switch(sub_100387B74, v3, 0);
}

uint64_t sub_100387B74()
{
  v1 = v0[28];
  v2 = v0[12];
  (*(v0[15] + 40))(v1 + *(v0[25] + 24), v0[16], v0[14]);
  sub_100385AF0(v2, v1, 1);
  sub_100387D8C(v1);
  sub_10000710C((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t type metadata accessor for ProgressCache.Progress()
{
  result = qword_100782058;
  if (!qword_100782058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100387CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgressCache.Progress();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100387D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgressCache.Progress();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100387D8C(uint64_t a1)
{
  v2 = type metadata accessor for ProgressCache.Progress();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100387DE8(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001F0E54;

  return sub_100386DA8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100387F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a1;
  v7[13] = a3;
  v14 = type metadata accessor for AppState();
  v7[14] = v14;
  v7[15] = *(v14 - 8);
  v7[16] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v7[17] = v15;
  v7[18] = *(v15 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v7[21] = v16;
  v7[22] = *(v16 - 8);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v17 = type metadata accessor for ProgressCache.Progress();
  v7[25] = v17;
  v7[26] = *(v17 - 8);
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  v7[8] = a7;
  v18 = sub_10020A748(v7 + 2);
  (*(*(a4 - 8) + 16))(v18, a2, a4);

  return _swift_task_switch(sub_100388170, a3, 0);
}

uint64_t sub_100388170()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v3 = *(v0 + 96);

  v4 = sub_1005225DC(v3);
  if ((v5 & 1) == 0)
  {

LABEL_6:
    v27 = *(v0 + 160);
    v28 = *(v0 + 136);
    v29 = *(v0 + 144);
    v30 = *(v0 + 96);
    static Logger.progress.getter();
    (*(v29 + 16))(v27, v30, v28);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 192);
    v36 = *(v0 + 168);
    v35 = *(v0 + 176);
    v37 = *(v0 + 160);
    v39 = *(v0 + 136);
    v38 = *(v0 + 144);
    if (v33)
    {
      v62 = *(v0 + 168);
      v40 = swift_slowAlloc();
      v58 = v32;
      v41 = swift_slowAlloc();
      v64 = v41;
      *v40 = 136446210;
      sub_100388E50(&qword_100789F60, 255, &type metadata accessor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v34;
      v44 = v43;
      (*(v38 + 8))(v37, v39);
      v45 = sub_1002346CC(v42, v44, &v64);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v31, v58, "[ProgressCache] Can't finish untracked progress for %{public}s", v40, 0xCu);
      sub_10000710C(v41);

      (*(v35 + 8))(v60, v62);
    }

    else
    {

      (*(v38 + 8))(v37, v39);
      (*(v35 + 8))(v34, v36);
    }

LABEL_9:
    sub_10000710C(v0 + 16);

    v46 = *(v0 + 8);

    return v46();
  }

  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 136);
  v11 = *(v0 + 96);
  sub_100387CC4(*(v2 + 56) + *(*(v0 + 208) + 72) * v4, v7);

  sub_100387D28(v7, v6);
  static Logger.progress.getter();
  (*(v9 + 16))(v8, v11, v10);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = *(v0 + 176);
  v15 = *(v0 + 184);
  v17 = *(v0 + 168);
  v19 = *(v0 + 144);
  v18 = *(v0 + 152);
  v20 = *(v0 + 136);
  if (v14)
  {
    v61 = *(v0 + 168);
    v21 = swift_slowAlloc();
    v57 = v13;
    v22 = swift_slowAlloc();
    v64 = v22;
    *v21 = 136446210;
    sub_100388E50(&qword_100789F60, 255, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v15;
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = sub_1002346CC(v23, v25, &v64);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v12, v57, "[ProgressCache] Completing progress for %{public}s", v21, 0xCu);
    sub_10000710C(v22);

    (*(v16 + 8))(v59, v61);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
  }

  *(v0 + 256) = *(*(v0 + 200) + 24);
  v48 = AppState.isComplete.getter();
  v49 = *(v0 + 224);
  if (v48)
  {
    sub_100385AF0(*(v0 + 96), *(v0 + 224), 1);
    sub_100387D8C(v49);
    goto LABEL_9;
  }

  v50 = *(v49 + 48);
  if (v50 == 255)
  {
    v51 = 0;
    v52 = 3;
  }

  else if (v50)
  {
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = *(v49 + 32);
    v52 = *(v49 + 40);
    sub_10032F7C8();
    v49 = *(v0 + 224);
  }

  *(v0 + 232) = v51;
  *(v0 + 240) = v52;
  v54 = *v49;
  v53 = *(v49 + 8);
  v55 = swift_task_alloc();
  *(v0 + 248) = v55;
  *v55 = v0;
  v55[1] = sub_100388744;
  v56 = *(v0 + 128);

  return sub_10060FC18(v56, v54, v53, 1, 1, 1, v0 + 16, v51);
}

uint64_t sub_100388744()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 104);

  sub_1002706F8(v2, v1);

  return _swift_task_switch(sub_100388890, v3, 0);
}

uint64_t sub_100388890()
{
  (*(*(v0 + 120) + 40))(*(v0 + 224) + *(v0 + 256), *(v0 + 128), *(v0 + 112));
  v1 = *(v0 + 224);
  sub_100385AF0(*(v0 + 96), v1, 1);
  sub_100387D8C(v1);
  sub_10000710C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100388990(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6 == 255)
  {
    if (v7 == 255)
    {
      return 1;
    }
  }

  else if (v7 != 255)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    if (v6)
    {
      if ((v7 & 1) == 0)
      {
        return 0;
      }

      if (v8 == v10 && v9 == v11)
      {
        return 1;
      }
    }

    else
    {
      if (v7)
      {
        return 0;
      }

      if (v8 == v10 && v9 == v11)
      {
        return 1;
      }
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100388A74(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    v19 = *(a1 + 40);
    v20 = *(a2 + 24);
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10 = v20;
    v6 = v19;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v9)
    {
      v15 = v10;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v8 == 255)
  {
    if (v13 == 255)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v13 == 255)
  {
    return 0;
  }

  if (v8)
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (v13)
  {
    return 0;
  }

LABEL_19:
  if ((v7 != v12 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v16 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v18 = *(type metadata accessor for ProgressCache.Progress() + 24);

  return static AppState.== infix(_:_:)(a1 + v18, a2 + v18);
}

void sub_100388C18()
{
  sub_100388CB4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100388CB4()
{
  if (!qword_100782068)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100782068);
    }
  }
}

uint64_t sub_100388D20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100388D34(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100388D50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100388D98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100388DFC()
{
  result = qword_1007820A0;
  if (!qword_1007820A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007820A0);
  }

  return result;
}

uint64_t sub_100388E50(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100388E98(void *a1)
{
  v3 = sub_1001F0C48(&qword_1007820B0);
  v25 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_1001F0C48(&qword_1007820B8);
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_1003891E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = KeyedDecodingContainer.allKeys.getter();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_1005CD738() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v16 = v15;
    sub_1001F0C48(&qword_1007896A0);
    *v16 = &type metadata for ProgressCache.Progress.Kind;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, enum case for DecodingError.typeMismatch(_:), v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return sub_10000710C(v18);
  }

  sub_100389238();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return sub_10000710C(v18);
}

unint64_t sub_1003891E4()
{
  result = qword_1007820C0;
  if (!qword_1007820C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007820C0);
  }

  return result;
}

unint64_t sub_100389238()
{
  result = qword_1007820C8;
  if (!qword_1007820C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007820C8);
  }

  return result;
}

unint64_t sub_1003892B0()
{
  result = qword_1007820E0;
  if (!qword_1007820E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007820E0);
  }

  return result;
}

unint64_t sub_100389308()
{
  result = qword_1007820E8;
  if (!qword_1007820E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007820E8);
  }

  return result;
}

unint64_t sub_100389360()
{
  result = qword_1007820F0;
  if (!qword_1007820F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007820F0);
  }

  return result;
}

unint64_t sub_1003893B8()
{
  result = qword_1007820F8;
  if (!qword_1007820F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007820F8);
  }

  return result;
}

unint64_t sub_100389410()
{
  result = qword_100782100;
  if (!qword_100782100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782100);
  }

  return result;
}

void sub_100389464(void *a1, void *a2)
{
  v4 = type metadata accessor for IdentifiableAvailableUpdate(0);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for MarketplaceUpdate();
  v7 = __chkstk_darwin(v70);
  v71 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v58 - v9;
  v11 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v11 - 8);
  v73 = &v58 - v12;
  v14 = a1[4];
  v13 = a1[5];
  v76 = sub_1001F0C48(&qword_10077F9E0);
  v77 = sub_10038A048();
  LOWORD(v74) = 7;
  *(&v74 + 1) = v14;
  v75 = v13;
  sub_1001F0C48(&qword_10077F9F0);
  inited = swift_initStackObject();
  v72 = xmmword_10069E680;
  *(inited + 16) = xmmword_10069E680;
  sub_100236238(&v74, inited + 32);
  sub_1001F0C48(&qword_10077F9F8);
  v16 = swift_initStackObject();
  *(v16 + 16) = v72;
  *(v16 + 32) = inited;
  v17 = a2;

  v18 = sub_1005AEA0C(v16);
  swift_setDeallocating();
  sub_1000032A8(v16 + 32, &qword_10077FA00);
  v19 = sub_1003D3BE8(0, 0, v18, sub_1003D3B74, 0, v17);

  if (v19)
  {

    sub_100635848(*(a1 + v4[9]), *(a1 + v4[9] + 8), 3, v19);
    v20 = v4[8];
    v21 = type metadata accessor for URL();
    v22 = *(v21 - 8);
    v23 = a1 + v20;
    v24 = v73;
    (*(v22 + 16))(v73, v23, v21);
    (*(v22 + 56))(v24, 0, 1, v21);
    sub_100635360(v24, 4, v19);
    sub_1000032A8(v24, &unk_1007809F0);
    sub_100635848(*(a1 + v4[11]), *(a1 + v4[11] + 8), 5, v19);
    sub_100635848(*(a1 + v4[10]), *(a1 + v4[10] + 8), 6, v19);
    sub_100635848(a1[6], a1[7], 8, v19);
  }

  else
  {
    sub_10038A0AC(a1, v6, type metadata accessor for IdentifiableAvailableUpdate);
    v25 = *(v6 + 1);
    v69 = *v6;
    v68 = v25;
    *&v72 = v17;
    v26 = v4[8];
    v27 = v70;
    v28 = *(v70 + 36);
    v29 = type metadata accessor for URL();
    v30 = *(v29 - 8);
    (*(v30 + 32))(&v10[v28], &v6[v26], v29);
    v31 = v73;
    sub_1002321B0(&v6[v4[12]], v73);
    v32 = *(v6 + 3);
    v67 = *(v6 + 2);
    v66 = v32;
    v33 = v4[10];
    v34 = &v6[v4[9]];
    v35 = *(v34 + 1);
    v61 = *v34;
    v36 = &v6[v4[11]];
    v37 = *v36;
    v38 = *(v36 + 1);
    v39 = *(v6 + 5);
    v60 = *(v6 + 4);
    v59 = v39;
    v40 = *&v6[v33 + 8];
    v63 = *&v6[v33];
    v62 = v40;
    v41 = *(v6 + 7);
    v65 = *(v6 + 6);
    v64 = v41;
    v42 = v27[6];
    (*(v30 + 56))(&v10[v42], 1, 1, v29);
    v43 = &v10[v27[10]];
    v44 = v69;
    *v10 = 0;
    *(v10 + 1) = v44;
    *(v10 + 2) = v68;
    sub_1003829B0(v31, &v10[v42]);
    v45 = &v10[v27[7]];
    v46 = v66;
    *v45 = v67;
    *(v45 + 1) = v46;
    v47 = &v10[v27[8]];
    *v47 = v61;
    *(v47 + 1) = v35;
    v48 = v72;
    *v43 = v37;
    *(v43 + 1) = v38;
    v49 = &v10[v27[12]];
    v50 = v59;
    *v49 = v60;
    *(v49 + 1) = v50;
    v51 = &v10[v27[11]];
    v52 = v62;
    *v51 = v63;
    *(v51 + 1) = v52;
    v53 = &v10[v27[13]];
    v54 = v64;
    *v53 = v65;
    *(v53 + 1) = v54;
    v55 = v71;
    sub_10038A0AC(v10, v71, type metadata accessor for MarketplaceUpdate);
    v56 = v78;
    v57 = sub_100565B78(v55, v48);
    if (!v56)
    {
    }

    sub_10038A114(v10);
  }
}

void *sub_100389A4C()
{
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 56) = &type metadata for SQLiteTable;
  *(inited + 64) = &off_10076CDE8;
  v1 = swift_allocObject();
  *(inited + 32) = v1;
  v1[2] = sub_100389B24;
  v1[3] = 0;
  v1[4] = 0xD000000000000012;
  v1[5] = 0x80000001006CA490;
  v2 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_10000710C(inited + 32);
  return v2;
}

void *sub_100389B24()
{
  v60[0] = 0x5F746E756F636361;
  v60[1] = 0xEA00000000006469;
  v60[2] = 1415071060;
  v60[3] = 0xE400000000000000;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 1;
  strcpy(v53, "app_share_url");
  v53[7] = -4864;
  v54 = 1112493122;
  v55 = 0xE400000000000000;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 1;
  v48[0] = 0x695F656C646E7562;
  v48[1] = 0xE900000000000064;
  v48[2] = 1415071060;
  v48[3] = 0xE400000000000000;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 1;
  strcpy(v41, "bundle_version");
  v41[15] = -18;
  v42 = 1415071060;
  v43 = 0xE400000000000000;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 1;
  v36[0] = 0x6C72755F706461;
  v36[1] = 0xE700000000000000;
  v36[2] = 1112493122;
  v36[3] = 0xE400000000000000;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 1;
  v31[0] = 0xD00000000000001ALL;
  v31[1] = 0x80000001006C2BB0;
  v31[2] = 1415071060;
  v31[3] = 0xE400000000000000;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 1;
  v26[0] = 0xD000000000000014;
  v26[1] = 0x80000001006C3EA0;
  v26[2] = 1415071060;
  v26[3] = 0xE400000000000000;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 1;
  v21[0] = 0x64695F6D657469;
  v21[1] = 0xE700000000000000;
  v21[2] = 1415071060;
  v21[3] = 0xE400000000000000;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 1;
  v16[0] = 0x5F6E6F6973726576;
  v16[1] = 0xEA00000000006469;
  v16[2] = 1415071060;
  v16[3] = 0xE400000000000000;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 1;
  v0._countAndFlagsBits = 2019846495;
  v0._object = 0xE400000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 2019846495;
  v1._object = 0xE400000000000000;
  String.append(_:)(v1);
  sub_1001F0C48(&unk_100786ED0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006A6CA0;
  *(v2 + 56) = &type metadata for SQLiteColumn;
  *(v2 + 64) = &off_10076CDE0;
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  sub_1002783D8(v60, v3 + 16);
  *(v2 + 96) = &type metadata for SQLiteColumn;
  *(v2 + 104) = &off_10076CDE0;
  v4 = swift_allocObject();
  *(v2 + 72) = v4;
  sub_1002783D8(v53, v4 + 16);
  *(v2 + 136) = &type metadata for SQLiteColumn;
  *(v2 + 144) = &off_10076CDE0;
  v5 = swift_allocObject();
  *(v2 + 112) = v5;
  sub_1002783D8(v48, v5 + 16);
  *(v2 + 176) = &type metadata for SQLiteColumn;
  *(v2 + 184) = &off_10076CDE0;
  v6 = swift_allocObject();
  *(v2 + 152) = v6;
  sub_1002783D8(v41, v6 + 16);
  *(v2 + 216) = &type metadata for SQLiteColumn;
  *(v2 + 224) = &off_10076CDE0;
  v7 = swift_allocObject();
  *(v2 + 192) = v7;
  sub_1002783D8(v36, v7 + 16);
  *(v2 + 256) = &type metadata for SQLiteColumn;
  *(v2 + 264) = &off_10076CDE0;
  v8 = swift_allocObject();
  *(v2 + 232) = v8;
  sub_1002783D8(v31, v8 + 16);
  *(v2 + 296) = &type metadata for SQLiteColumn;
  *(v2 + 304) = &off_10076CDE0;
  v9 = swift_allocObject();
  *(v2 + 272) = v9;
  sub_1002783D8(v26, v9 + 16);
  *(v2 + 336) = &type metadata for SQLiteColumn;
  *(v2 + 344) = &off_10076CDE0;
  v10 = swift_allocObject();
  *(v2 + 312) = v10;
  sub_1002783D8(v21, v10 + 16);
  *(v2 + 376) = &type metadata for SQLiteColumn;
  *(v2 + 384) = &off_10076CDE0;
  v11 = swift_allocObject();
  *(v2 + 352) = v11;
  sub_1002783D8(v16, v11 + 16);
  *(v2 + 416) = &type metadata for SQLiteIndex;
  *(v2 + 424) = &off_10076CDD8;
  v12 = swift_allocObject();
  *(v2 + 392) = v12;
  *(v12 + 16) = 0x695F656C646E7562;
  *(v12 + 24) = 0xE900000000000064;
  *(v12 + 32) = 0x695F656C646E7562;
  *(v12 + 40) = 0xE900000000000064;
  *(v12 + 48) = 1;
  *(v2 + 456) = &type metadata for SQLiteIndex;
  *(v2 + 464) = &off_10076CDD8;
  v13 = swift_allocObject();
  *(v2 + 432) = v13;
  *(v13 + 16) = 0x64695F6D657469;
  *(v13 + 24) = 0xE700000000000000;
  *(v13 + 32) = 0x64695F6D657469;
  *(v13 + 40) = 0xE700000000000000;
  *(v13 + 48) = 1;
  v14 = sub_1005A83A0(v2);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077F5F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100278434(v16);
  sub_100278434(v21);
  sub_100278434(v26);
  sub_100278434(v31);
  sub_100278434(v36);
  sub_100278434(v41);
  sub_100278434(v48);
  sub_100278434(v53);
  sub_100278434(v60);
  return v14;
}

unint64_t sub_10038A048()
{
  result = qword_10077F9E8;
  if (!qword_10077F9E8)
  {
    sub_1001F76D0(&qword_10077F9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F9E8);
  }

  return result;
}

uint64_t sub_10038A0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10038A114(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceUpdate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10038A1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallRequestType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  (*(v5 + 24))(a1 + *(v8 + 28), a2, v4);
  (*(v5 + 16))(v7, a2, v4);
  result = (*(v5 + 88))(v7, v4);
  v13 = result == enum case for AppInstallRequestType.automaticUpdate(_:) || result == enum case for AppInstallRequestType.update(_:) || result == enum case for AppInstallRequestType.promotion(_:) || result == enum case for AppInstallRequestType.restore(_:) || result == enum case for AppInstallRequestType.restoreUpdate(_:);
  v14 = !v13;
  if (!v13)
  {
    result = (*(v5 + 8))(v7, v4);
  }

  *(a1 + *(v8 + 40)) = v14;
  return result;
}

uint64_t sub_10038A360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for ADPInstallConfiguration.Storage(0) + 32));

  *v5 = a2;
  v5[1] = a3;
  return result;
}

BOOL sub_10038A3C0()
{
  v1 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v1 - 8);
  v3 = v11 - v2 + 8;
  v4 = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_10020A980(v4 + v5, v11);
  os_unfair_lock_unlock((v4 + v6));
  sub_1001F0C48(&qword_10077E970);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  sub_100337114(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, v3);
  v7 = type metadata accessor for URL();
  v8 = (*(*(v7 - 8) + 48))(v3, 1, v7) != 1;
  sub_10038B5B4(v3);
  return v8;
}

void sub_10038A554(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v4 = v3 + *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_10020A980(v4, v17);
  os_unfair_lock_unlock((v3 + v5));
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {
    v6 = objc_allocWithZone(LSApplicationRecord);
    v7 = sub_10049E57C(v15, v16, 0);
    if (v7)
    {
      v8 = v7;
      v9 = [v7 iTunesMetadata];
      v10 = [v9 storeItemIdentifier];

      if (v10 == a1)
      {
        v11 = sub_1005D6710();
        if (v12)
        {
          v13 = v11;
          v14 = v12;
          v17[3] = &type metadata for WebDistributor;
          v18 = sub_100231E84();
          v17[0] = v13;
          v17[1] = v14;
          __chkstk_darwin(v18);

          os_unfair_lock_lock((v3 + v5));
          sub_10038B220(v4);
          os_unfair_lock_unlock((v3 + v5));
          sub_10000710C(v17);

          os_unfair_lock_lock((v3 + v5));
          *(v4 + 48) = 1;
          os_unfair_lock_unlock((v3 + v5));
          sub_10038A774();
        }
      }
    }
  }
}

uint64_t sub_10038A774()
{
  v1 = sub_1001F0C48(&qword_100782240);
  __chkstk_darwin(v1 - 8);
  v59 = v52 - v2;
  v3 = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v62 = v4;
  sub_10020A980(v3 + v4, v74);
  v63 = v5;
  os_unfair_lock_unlock((v3 + v5));
  v6 = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_accountID + 8);
  v60 = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_accountID);
  v58 = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt);
  v7 = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
  sub_10020A980(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_dependencies, v72);
  v8 = objc_opt_self();
  v61 = v6;

  v9 = v7;
  v10 = [v8 ephemeralSessionConfiguration];
  [v10 setHTTPShouldSetCookies:0];
  [v10 setHTTPCookieAcceptPolicy:1];
  [v10 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v11 = [objc_opt_self() sessionWithConfiguration:v10];

  type metadata accessor for PlainHTTP();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  v13 = sub_100231ED8(v72, v73);
  __chkstk_darwin(v13);
  v15 = (v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v18 = type metadata accessor for Dependencies();
  v71[3] = v18;
  v71[4] = &off_100770208;
  v71[0] = v17;
  type metadata accessor for DecoratedHTTP();
  v19 = swift_allocObject();
  v20 = sub_100231ED8(v71, v18);
  v21 = *(v18 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v57 = *(v21 + 16);
  v57(v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70[3] = v18;
  v70[4] = &off_100770208;
  v70[0] = v23;
  v19[2] = v12;
  v19[3] = v9;
  sub_10020A980(v74, v69);
  v24 = v9;
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {
    v25 = v68[0];
    v26 = v68[1];
    v27 = type metadata accessor for NativeDecorator();
    v28 = swift_allocObject();
    v29 = v60;
    v28[4] = v61;
    v28[5] = v25;
    v28[6] = v26;
    v28[2] = v24;
    v28[3] = v29;
    v19[7] = v27;
    v19[8] = &off_100762508;
    v19[4] = v28;
    sub_10000710C(v74);
    sub_10000710C(v70);
LABEL_5:
    sub_10000710C(v69);
    sub_10000710C(v71);
    v50 = sub_10000710C(v72);
    __chkstk_darwin(v50);
    v52[-2] = v19;
    v51 = v63;
    os_unfair_lock_lock((v3 + v63));
    sub_10038B568(v3 + v62);
    os_unfair_lock_unlock((v3 + v51));
  }

  v55 = v24;
  v56 = v3;
  result = swift_dynamicCast();
  if (result)
  {
    v31 = v68[5];
    v53 = v68[6];
    sub_10020A980(v70, v68);
    v32 = sub_100231ED8(v68, v68[3]);
    v54 = v52;
    __chkstk_darwin(v32);
    v34 = (v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    v36 = *v34;
    v67[3] = v18;
    v67[4] = &off_100770208;
    v67[0] = v36;
    v37 = type metadata accessor for OAuthDecorator();
    v38 = swift_allocObject();
    v39 = sub_100231ED8(v67, v18);
    v52[1] = v52;
    __chkstk_darwin(v39);
    v40 = (v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v57(v40);
    v41 = *v40;
    v65 = v18;
    v66 = &off_100770208;
    *&v64 = v41;
    v52[0] = v12;

    swift_defaultActor_initialize();
    v42 = OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7EC653A4C512B1F4D7EE1900495297C014OAuthDecorator_credential;
    v43 = type metadata accessor for OAuthCredential();
    (*(*(v43 - 8) + 56))(v38 + v42, 1, 1, v43);
    v44 = v60;
    v45 = v61;
    *(v38 + 176) = v60;
    *(v38 + 184) = v45;
    v46 = v53;
    *(v38 + 192) = v31;
    *(v38 + 200) = v46;
    *(v38 + 120) = v58;

    v47 = v59;
    v48 = v44;
    v49 = v55;
    sub_100489ADC(v48, v45, v31, v46, v55, v59);

    swift_beginAccess();
    sub_10038B4F8(v47, v38 + v42);
    swift_endAccess();
    *(v38 + 128) = v52[0];
    *(v38 + 112) = v49;
    sub_1001DFDBC(&v64, v38 + 136);
    sub_10000710C(v67);
    sub_10000710C(v68);
    v19[7] = v37;
    v19[8] = &off_100762528;
    v19[4] = v38;
    sub_10000710C(v74);
    sub_10000710C(v70);
    v3 = v56;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10038AEC4()
{
  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10038B5B4(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer);
  sub_10000710C(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag);
  sub_10020B0E0(*(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData), *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData + 8));
  sub_10038B5B4(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_appShareURL);
  sub_10000710C(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_dependencies);

  return v0;
}

uint64_t sub_10038B014()
{
  sub_10038AEC4();

  return swift_deallocClassInstance();
}

void sub_10038B094()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_10038C280(319, &qword_100780B40, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t *sub_10038B24C(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_10038B488(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077EC90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038B4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100782240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038B568(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_10038B5B4(uint64_t a1)
{
  v2 = sub_1001F0C48(&unk_1007809F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10038B61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, unsigned __int8 a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, unsigned __int8 a23, uint64_t a24, unsigned __int8 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v110 = a8;
  v109 = a7;
  v93 = a6;
  v92 = a5;
  v116 = a4;
  v112 = a3;
  v91 = a2;
  v114 = a14;
  v115 = a13;
  v108 = a25;
  v95 = a23;
  v111 = a22;
  v103 = a21;
  v102 = a20;
  v100 = a19;
  v98 = a18;
  v97 = a17;
  v113 = a15;
  v96 = a16;
  v90 = a12;
  v89 = a11;
  v88 = a10;
  v87 = a9;
  v32 = sub_1001F0C48(&qword_10077EC90);
  __chkstk_darwin(v32 - 8);
  v106 = &v86 - v33;
  v99 = type metadata accessor for AppInstallRequestType();
  v94 = *(v99 - 8);
  v34 = __chkstk_darwin(v99);
  v101 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v86 - v36;
  v104 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  __chkstk_darwin(v104);
  v39 = &v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122[3] = a28;
  v122[4] = a30;
  v40 = sub_10020A748(v122);
  (*(*(a28 - 8) + 32))(v40, v112, a28);
  v120 = a29;
  v121 = a31;
  v41 = sub_10020A748(&v119);
  (*(*(a29 - 8) + 32))(v41, a26, a29);
  v42 = swift_allocObject();
  v43 = sub_100231ED8(&v119, v120);
  __chkstk_darwin(v43);
  v45 = (&v86 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  v47 = *v45;
  v118[3] = type metadata accessor for Dependencies();
  v118[4] = &off_100770208;
  v118[0] = v47;
  v48 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id;
  v49 = type metadata accessor for UUID();
  v105 = *(v49 - 8);
  v50 = *(v105 + 16);
  v112 = a1;
  v107 = v49;
  v50(v42 + v48, a1);
  *(v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey) = v91;
  v51 = (v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_oAuthToken);
  v52 = v93;
  *v51 = v92;
  v51[1] = v52;
  v53 = (v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_accountID);
  v54 = v88;
  *v53 = v87;
  v53[1] = v54;
  v55 = (v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_clientID);
  v56 = v90;
  *v55 = v89;
  v55[1] = v56;
  v57 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url;
  v58 = type metadata accessor for URL();
  v92 = *(v58 - 8);
  v59 = *(v92 + 16);
  v93 = v58;
  v59(v42 + v57, v115);
  sub_100337114(v114, v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer);
  sub_10020A980(v113, v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag);
  v60 = (v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData);
  v61 = v97;
  *v60 = v96;
  v60[1] = v61;
  *(v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_userInitiatedOverride) = v98;
  *(v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt) = v100;
  v62 = v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_originallyRequestedVersion;
  *v62 = v102;
  *(v62 + 8) = v103 & 1;
  v63 = v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_itemIDFromButtonConfiguration;
  *v63 = v111;
  *(v63 + 8) = v95 & 1;
  v111 = a24;
  sub_100337114(a24, v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_appShareURL);
  *(v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_isExceptionRequest) = v108;
  sub_10020A980(v118, v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_dependencies);
  sub_10020A980(v122, &v117);
  v64 = v94;
  v65 = *(v94 + 16);
  v66 = v37;
  v67 = v37;
  v68 = v116;
  v69 = v99;
  v65(v67, v116, v99);
  v70 = type metadata accessor for MediaAPIMetadata();
  v71 = v106;
  (*(*(v70 - 8) + 56))();
  v72 = v101;
  v73 = v68;
  v74 = v64;
  v65(v101, v73, v69);
  v75 = (*(v64 + 88))(v72, v69);
  v79 = v75 == enum case for AppInstallRequestType.automaticUpdate(_:) || v75 == enum case for AppInstallRequestType.update(_:) || v75 == enum case for AppInstallRequestType.promotion(_:) || v75 == enum case for AppInstallRequestType.restore(_:) || v75 == enum case for AppInstallRequestType.restoreUpdate(_:);
  v80 = !v79;
  if (!v79)
  {
    (*(v64 + 8))(v72, v69);
  }

  sub_1001DFDBC(&v117, v39);
  *(v39 + 5) = 0;
  v39[48] = 0;
  v81 = v104;
  (*(v74 + 32))(&v39[*(v104 + 28)], v66, v69);
  v82 = &v39[v81[8]];
  v83 = v110;
  *v82 = v109;
  *(v82 + 1) = v83;
  sub_10038BF68(v71, &v39[v81[9]]);
  v39[v81[10]] = v80;
  sub_1001F0C48(&qword_10077EE10);
  v84 = swift_allocObject();
  *(v84 + ((*(*v84 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_10038BFD8(v39, v84 + *(*v84 + class metadata base offset for ManagedBuffer + 16));
  sub_10038B5B4(v111);
  sub_10000710C(v113);
  sub_10038B5B4(v114);
  (*(v92 + 8))(v115, v93);
  (*(v74 + 8))(v116, v69);
  (*(v105 + 8))(v112, v107);
  sub_10038C03C(v39);
  sub_10000710C(v122);
  sub_10000710C(v118);
  *(v42 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage) = v84;
  sub_10000710C(&v119);
  return v42;
}

uint64_t sub_10038BF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077EC90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038BFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038C03C(uint64_t a1)
{
  v2 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10038C0C0()
{
  sub_10038C1CC();
  if (v0 <= 0x3F)
  {
    sub_10038C280(319, &qword_1007822B8, type metadata accessor for DecoratedHTTP);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppInstallRequestType();
      if (v2 <= 0x3F)
      {
        sub_10038C230();
        if (v3 <= 0x3F)
        {
          sub_10038C280(319, &unk_1007822C0, type metadata accessor for MediaAPIMetadata);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10038C1CC()
{
  result = qword_1007822B0;
  if (!qword_1007822B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1007822B0);
  }

  return result;
}

void sub_10038C230()
{
  if (!qword_1007819E0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1007819E0);
    }
  }
}

void sub_10038C280(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10038C2D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for URLRequest();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1001F0C48(&unk_1007803C0);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10038C3D0, 0, 0);
}

uint64_t sub_10038C3D0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = v3[7];
  v7 = v3[8];
  sub_100006D8C(v3 + 4, v6);
  v8 = *(v2 + 16);
  v0[9] = v8;
  v0[10] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v5, v4);
  v13 = (*(v7 + 16) + **(v7 + 16));
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_10038C544;
  v11 = v0[7];
  v10 = v0[8];

  return v13(v10, v11, v6, v7);
}

uint64_t sub_10038C544()
{

  if (v0)
  {

    v1 = sub_10038C710;
  }

  else
  {
    v1 = sub_10038C65C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10038C65C()
{
  v1 = v0[6];
  (*(v1 + 56))(v0[8], 0, 1, v0[5]);
  (*(v1 + 32))(v0[2], v0[8], v0[5]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10038C710()
{
  (*(*(v0 + 48) + 56))(*(v0 + 64), 1, 1, *(v0 + 40));
  (*(v0 + 72))(*(v0 + 16), *(v0 + 24), *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038C7AC()
{

  sub_10000710C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_10038C818(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 57) = a4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  *(v5 + 80) = *v4;
  return _swift_task_switch(sub_10038C844, 0, 0);
}

uint64_t sub_10038C844()
{
  v1 = *(v0 + 57);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 56) = -1;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_10038C924;
  v3 = *(v0 + 72);
  v4 = *(v0 + 64);

  return sub_10038FFA4(v4, 0, v0 + 16, v3, v1 & 1);
}

uint64_t sub_10038C924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(v8 + 96) = v3;

  sub_1000032A8(v8 + 16, &qword_100780BA8);
  if (v3)
  {

    return _swift_task_switch(sub_10038CAA0, 0, 0);
  }

  else
  {
    v9 = *(v8 + 8);

    return v9(a1, a2, a3);
  }
}

uint64_t sub_10038CAB8(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = type metadata accessor for OAuthCredential();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  sub_1001F0C48(&qword_100782240);
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_10038CBB4, v2, 0);
}

uint64_t sub_10038CBB4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7EC653A4C512B1F4D7EE1900495297C014OAuthDecorator_credential;
  swift_beginAccess();
  sub_100005934(v4 + v5, v1, &qword_100782240);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_1000032A8(*(v0 + 264), &qword_100782240);
LABEL_27:
    v37 = *(v0 + 216);
    v36 = *(v0 + 224);
    v38 = type metadata accessor for URLRequest();
    (*(*(v38 - 8) + 32))(v37, v36, v38);

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v8 = *(v0 + 240);
    sub_100391934(v7, v6);
    sub_1000032A8(v7, &qword_100782240);
    v9 = v6 + *(v8 + 20);
    v10 = *(v9 + 32);
    v11 = *(v9 + 48);
    v12 = *(v9 + 64);
    *(v0 + 96) = *(v9 + 80);
    *(v0 + 64) = v11;
    *(v0 + 80) = v12;
    *(v0 + 48) = v10;
    v13 = *(v9 + 16);
    *(v0 + 16) = *v9;
    *(v0 + 32) = v13;
    sub_100391998(v0 + 16, v0 + 104);
    sub_100391A48(v6, type metadata accessor for OAuthCredential);
    v14 = sub_10062C600();
    sub_1003919F4(v0 + 16);
    v15 = -1;
    v16 = -1 << *(v14 + 32);
    if (-v16 < 64)
    {
      v15 = ~(-1 << -v16);
    }

    v17 = v15 & *(v14 + 64);
    v18 = (63 - v16) >> 6;

    for (i = 0; v17; i = v21)
    {
      v21 = i;
LABEL_10:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = v22 | (v21 << 6);
      v24 = *(*(v14 + 48) + v23);
      v25 = (*(v14 + 56) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = 0x6567412D72657355;
      if (v24 != 2)
      {
        v28 = 0x65676E6152;
      }

      v29 = 0xEA0000000000746ELL;
      if (v24 != 2)
      {
        v29 = 0xE500000000000000;
      }

      v30 = 0x7A69726F68747541;
      if (v24)
      {
        v30 = 0x2D746E65746E6F43;
      }

      v31 = 0xED00006E6F697461;
      if (v24)
      {
        v31 = 0xEC00000065707954;
      }

      if (v24 <= 1)
      {
        v32 = v30;
      }

      else
      {
        v32 = v28;
      }

      if (v24 <= 1)
      {
        v33 = v31;
      }

      else
      {
        v33 = v29;
      }

      v34.value._countAndFlagsBits = v27;
      v34.value._object = v26;
      v35._countAndFlagsBits = v32;
      v35._object = v33;
      URLRequest.setValue(_:forHTTPHeaderField:)(v34, v35);
    }

    while (1)
    {
      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        goto LABEL_27;
      }

      v17 = *(v14 + 64 + 8 * v21);
      ++i;
      if (v17)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10038CF04()
{

  sub_10000710C(v0 + 136);

  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7EC653A4C512B1F4D7EE1900495297C014OAuthDecorator_credential, &qword_100782240);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for OAuthDecorator()
{
  result = qword_1007823E8;
  if (!qword_1007823E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10038CFDC()
{
  sub_10038D0B0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10038D0B0()
{
  if (!qword_1007823F8)
  {
    type metadata accessor for OAuthCredential();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1007823F8);
    }
  }
}

uint64_t sub_10038D108(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F0E54;

  return sub_10038CAB8(a1, a2);
}

uint64_t sub_10038D1B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10038D244;

  return sub_10038ED14();
}

uint64_t sub_10038D244(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_10038D34C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_1001F0C48(&qword_10077EDE0);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for _AppExtensionProcess();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_10038D4B0, 0, 0);
}

uint64_t sub_10038D4B0()
{
  v1 = v0[5];
  v2 = v1[5];
  v0[14] = v2;
  v3 = v1[6];
  v0[15] = v3;
  v0[16] = v1[3];
  v0[17] = v1[4];
  v4 = v1[2];
  v0[18] = v4;
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_10038D584;
  v6 = v0[10];

  return sub_100496758(v6, v2, v3, v4);
}

uint64_t sub_10038D584()
{

  if (v0)
  {

    v1 = sub_10038D994;
  }

  else
  {
    v1 = sub_10038D69C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10038D69C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v14 = *(v0 + 112);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 32);
  (*(v5 + 56))(v7, 0, 1, v6);
  (*(v5 + 32))(v4, v7, v6);
  type metadata accessor for ContinuationResumptionState();
  v9 = swift_allocObject();
  *(v0 + 160) = v9;
  swift_defaultActor_initialize();
  *(v9 + 112) = 0;
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v2;
  *(v10 + 32) = v9;
  *(v10 + 40) = v14;
  *(v10 + 56) = v8;
  *(v10 + 64) = v3;
  *(v10 + 72) = v1;
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  v12 = sub_1001F0C48(&qword_100782580);
  *v11 = v0;
  v11[1] = sub_10038D84C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000034, 0x80000001006CA790, sub_100391B0C, v10, v12);
}

uint64_t sub_10038D84C()
{

  if (v0)
  {

    v1 = sub_10038E21C;
  }

  else
  {

    v1 = sub_10038DC4C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10038D994()
{
  v23 = v0;
  v1 = v0[10];
  (*(v0[12] + 56))(v1, 1, 1, v0[11]);
  sub_1000032A8(v1, &qword_10077EDE0);
  if (os_variant_has_internal_content())
  {
    static Logger.general.getter();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[18];
      v6 = v0[14];
      v5 = v0[15];
      v7 = v0[7];
      v20 = v0[6];
      v21 = v0[8];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v8 = 138412546;
      *(v8 + 4) = v4;
      *v9 = v4;
      *(v8 + 12) = 2082;
      v11 = v4;
      *(v8 + 14) = sub_1002346CC(v6, v5, &v22);
      _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Received no additional headers from %{public}s", v8, 0x16u);
      sub_1000032A8(v9, &qword_10077F920);

      sub_10000710C(v10);

      (*(v7 + 8))(v21, v20);
    }

    else
    {
      v13 = v0[7];
      v12 = v0[8];
      v14 = v0[6];

      (*(v13 + 8))(v12, v14);
    }
  }

  v16 = v0[3];
  v15 = v0[4];
  v17 = type metadata accessor for URLRequest();
  (*(*(v17 - 8) + 32))(v16, v15, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_10038DC4C()
{
  v64 = v0;

  v1 = v0[2];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  _AppExtensionProcess.invalidate()();
  (*(v2 + 8))(v3, v4);
  if (v1)
  {
    v58 = v1;
    if (os_variant_has_internal_content())
    {
      static Logger.general.getter();

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = v0[18];
        v8 = v0[14];
        v9 = v0[15];
        v60 = v0[9];
        v10 = v0[7];
        v57 = v0[6];
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v11 = 138412802;
        *(v11 + 4) = v7;
        *v12 = v7;
        *(v11 + 12) = 2082;
        v13 = v7;
        *(v11 + 14) = sub_1002346CC(v8, v9, &v63);
        *(v11 + 22) = 2080;
        v14 = Dictionary.description.getter();
        v16 = sub_1002346CC(v14, v15, &v63);

        *(v11 + 24) = v16;
        _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Received additional headers from %{public}s: %s", v11, 0x20u);
        sub_1000032A8(v12, &qword_10077F920);

        swift_arrayDestroy();

        v1 = v58;

        (*(v10 + 8))(v60, v57);
      }

      else
      {
        v27 = v0[9];
        v29 = v0[6];
        v28 = v0[7];

        (*(v28 + 8))(v27, v29);
      }
    }

    result = URLRequest.allHTTPHeaderFields.getter();
    v62 = result;
    if (!result)
    {
      result = sub_1005288C8(_swiftEmptyArrayStorage);
      v62 = result;
    }

    v31 = 0;
    v32 = v1 + 64;
    v33 = -1;
    v34 = -1 << *(v1 + 32);
    if (-v34 < 64)
    {
      v33 = ~(-1 << -v34);
    }

    v35 = v33 & *(v1 + 64);
    v36 = (63 - v34) >> 6;
    while (v35)
    {
LABEL_21:
      v40 = (v31 << 10) | (16 * __clz(__rbit64(v35)));
      v41 = *(v1 + 56);
      v42 = (*(v1 + 48) + v40);
      v44 = *v42;
      v43 = v42[1];
      v45 = (v41 + v40);
      v47 = *v45;
      v46 = v45[1];
      v48 = *(v62 + 16);

      if (!v48 || (sub_10052213C(v44, v43), (v49 & 1) == 0))
      {
        v37.value._countAndFlagsBits = v47;
        v37.value._object = v46;
        v38._countAndFlagsBits = v44;
        v38._object = v43;
        URLRequest.setValue(_:forHTTPHeaderField:)(v37, v38);
      }

      v35 &= v35 - 1;

      v1 = v58;
    }

    while (1)
    {
      v39 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v39 >= v36)
      {

        goto LABEL_25;
      }

      v35 = *(v32 + 8 * v39);
      ++v31;
      if (v35)
      {
        v31 = v39;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    if (os_variant_has_internal_content())
    {
      static Logger.general.getter();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = v0[18];
        v21 = v0[14];
        v20 = v0[15];
        v22 = v0[7];
        v59 = v0[6];
        v61 = v0[8];
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v63 = v25;
        *v23 = 138412546;
        *(v23 + 4) = v19;
        *v24 = v19;
        *(v23 + 12) = 2082;
        v26 = v19;
        *(v23 + 14) = sub_1002346CC(v21, v20, &v63);
        _os_log_impl(&_mh_execute_header, v17, v18, "[%@] Received no additional headers from %{public}s", v23, 0x16u);
        sub_1000032A8(v24, &qword_10077F920);

        sub_10000710C(v25);

        (*(v22 + 8))(v61, v59);
      }

      else
      {
        v55 = v0[7];
        v54 = v0[8];
        v56 = v0[6];

        (*(v55 + 8))(v54, v56);
      }
    }

LABEL_25:
    v51 = v0[3];
    v50 = v0[4];
    v52 = type metadata accessor for URLRequest();
    (*(*(v52 - 8) + 32))(v51, v50, v52);

    v53 = v0[1];

    return v53();
  }

  return result;
}

uint64_t sub_10038E21C()
{
  v25 = v0;

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  _AppExtensionProcess.invalidate()();
  (*(v2 + 8))(v1, v3);
  if (os_variant_has_internal_content())
  {
    static Logger.general.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[18];
      v8 = v0[14];
      v7 = v0[15];
      v9 = v0[7];
      v22 = v0[6];
      v23 = v0[8];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v10 = 138412546;
      *(v10 + 4) = v6;
      *v11 = v6;
      *(v10 + 12) = 2082;
      v13 = v6;
      *(v10 + 14) = sub_1002346CC(v8, v7, &v24);
      _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Received no additional headers from %{public}s", v10, 0x16u);
      sub_1000032A8(v11, &qword_10077F920);

      sub_10000710C(v12);

      (*(v9 + 8))(v23, v22);
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  v18 = v0[3];
  v17 = v0[4];
  v19 = type metadata accessor for URLRequest();
  (*(*(v19 - 8) + 32))(v18, v17, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_10038E4C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10038E530(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_10038D34C(a1, a2);
}

uint64_t sub_10038E5DC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10038E600, 0, 0);
}

uint64_t sub_10038E600()
{
  v1 = v0[3];
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[2];
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_10038E6B4;
  v6 = v0[2];

  return sub_100496040(v6, v3, v2, v4);
}

uint64_t sub_10038E6B4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10038E7B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v61 = a5;
  v64 = a3;
  v15 = sub_1001F0C48(&qword_100782240);
  __chkstk_darwin(v15 - 8);
  v62 = v54 - v16;
  v73 = a9;
  v74 = a10;
  v17 = sub_10020A748(v72);
  (*(*(a9 - 8) + 32))(v17, a7, a9);
  v18 = swift_allocObject();
  v19 = sub_100231ED8(v72, v73);
  __chkstk_darwin(v19);
  v21 = (v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v24 = type metadata accessor for Dependencies();
  v71[3] = v24;
  v71[4] = &off_100770208;
  v71[0] = v23;
  v63 = a1;
  v18[2] = a1;
  v18[3] = a6;
  sub_10020A980(a2, v70);
  v25 = a6;
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {
    v26 = v69[0];
    v27 = v69[1];
    v28 = type metadata accessor for NativeDecorator();
    v29 = swift_allocObject();
    v29[4] = a4;
    v29[5] = v26;
    v29[6] = v27;
    v30 = v64;
    v29[2] = v25;
    v29[3] = v30;
    v18[7] = v28;
    v18[8] = &off_100762508;
    v18[4] = v29;
    v31 = a2;
LABEL_5:
    sub_10000710C(v31);
    sub_10000710C(v71);
    sub_10000710C(v70);
    sub_10000710C(v72);
    return v18;
  }

  v58 = v25;
  v59 = a4;
  v32 = v64;
  v60 = a2;
  result = swift_dynamicCast();
  if (result)
  {
    v34 = v69[5];
    v55 = v69[6];
    sub_10020A980(v71, v69);
    v35 = sub_100231ED8(v69, v69[3]);
    v57 = v54;
    __chkstk_darwin(v35);
    v37 = (v54 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = *v37;
    v68[3] = v24;
    v68[4] = &off_100770208;
    v68[0] = v39;
    v56 = type metadata accessor for OAuthDecorator();
    v40 = swift_allocObject();
    v41 = sub_100231ED8(v68, v24);
    v54[1] = v54;
    __chkstk_darwin(v41);
    v43 = (v54 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v44 + 16))(v43);
    v45 = *v43;
    v66 = v24;
    v67 = &off_100770208;
    *&v65 = v45;
    v46 = v63;

    swift_defaultActor_initialize();
    v47 = OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7EC653A4C512B1F4D7EE1900495297C014OAuthDecorator_credential;
    v48 = type metadata accessor for OAuthCredential();
    (*(*(v48 - 8) + 56))(v40 + v47, 1, 1, v48);
    v49 = v59;
    *(v40 + 176) = v32;
    *(v40 + 184) = v49;
    v50 = v55;
    *(v40 + 192) = v34;
    *(v40 + 200) = v50;
    *(v40 + 120) = v61 & 1;

    v51 = v62;
    v52 = v32;
    v53 = v58;
    sub_100489ADC(v52, v49, v34, v50, v58, v62);

    swift_beginAccess();
    sub_10038B4F8(v51, v40 + v47);
    swift_endAccess();
    *(v40 + 128) = v46;
    *(v40 + 112) = v53;
    sub_100236238(&v65, v40 + 136);
    sub_10000710C(v68);
    sub_10000710C(v69);
    v18[7] = v56;
    v18[8] = &off_100762528;
    v18[4] = v40;
    v31 = v60;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10038ED14()
{
  v1[56] = v0;
  type metadata accessor for OAuthClient();
  v1[57] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[58] = v2;
  v1[59] = *(v2 - 8);
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v3 = type metadata accessor for OAuthCredential();
  v1[63] = v3;
  v1[64] = *(v3 - 8);
  v1[65] = swift_task_alloc();
  sub_1001F0C48(&qword_100782240);
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();

  return _swift_task_switch(sub_10038EEC4, v0, 0);
}

uint64_t sub_10038EEC4()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v4 = *(v0 + 448);
  v5 = OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7EC653A4C512B1F4D7EE1900495297C014OAuthDecorator_credential;
  *(v0 + 552) = OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7EC653A4C512B1F4D7EE1900495297C014OAuthDecorator_credential;
  swift_beginAccess();
  sub_100005934(v4 + v5, v1, &qword_100782240);
  v6 = *(v3 + 48);
  if (v6(v1, 1, v2))
  {
    v7 = (v0 + 544);
    goto LABEL_5;
  }

  v8 = *(v0 + 544);
  v9 = *(v0 + 536);
  v10 = *(v0 + 520);
  v11 = *(v0 + 504);
  sub_100391934(v8, v10);
  sub_1000032A8(v8, &qword_100782240);
  v12 = v10 + *(v11 + 20);
  v13 = *(v12 + 32);
  v14 = *(v12 + 48);
  v15 = *(v12 + 64);
  *(v0 + 192) = *(v12 + 80);
  *(v0 + 160) = v14;
  *(v0 + 176) = v15;
  *(v0 + 144) = v13;
  v16 = *(v12 + 16);
  *(v0 + 112) = *v12;
  *(v0 + 128) = v16;
  sub_100391998(v0 + 112, v0 + 288);
  sub_100391A48(v10, type metadata accessor for OAuthCredential);
  sub_100005934(v4 + v5, v9, &qword_100782240);
  if (v6(v9, 1, v11))
  {
    v7 = (v0 + 536);
    sub_1003919F4(v0 + 112);
LABEL_5:
    sub_1000032A8(*v7, &qword_100782240);
    type metadata accessor for InternalError();
    sub_100274098();
    v17 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    *(v0 + 632) = v17;
    v18 = *(v0 + 448);
    if (*(v18 + 120) == 1)
    {
      v19 = *(v18 + 176);
      *(v0 + 640) = v19;
      v20 = *(v18 + 184);
      *(v0 + 648) = v20;
      v21 = *(v18 + 192);
      *(v0 + 656) = v21;
      v22 = *(v18 + 200);
      *(v0 + 664) = v22;
      v23 = *(v18 + 128);
      v24 = *(v18 + 112);
      *(v0 + 672) = v24;
      sub_10020A980(v18 + 136, v0 + 72);
      *(v0 + 16) = v19;
      *(v0 + 24) = v20;
      *(v0 + 32) = v21;
      *(v0 + 40) = v22;
      *(v0 + 48) = v23;
      *(v0 + 56) = v24;
      *(v0 + 64) = 0;

      v25 = v24;
      v26 = swift_task_alloc();
      *(v0 + 680) = v26;
      *v26 = v0;
      v26[1] = sub_10038F864;

      return sub_1005CD74C();
    }

    else
    {
      swift_willThrow();

      v28 = *(v0 + 8);

      return v28(0);
    }
  }

  v29 = *(v0 + 536);
  v30 = *(v0 + 520);
  v32 = *(v0 + 488);
  v31 = *(v0 + 496);
  v34 = *(v0 + 472);
  v33 = *(v0 + 480);
  v35 = *(v0 + 464);
  v36 = *(v0 + 448);
  sub_100391934(v29, v30);
  sub_1000032A8(v29, &qword_100782240);
  v37 = *(v34 + 16);
  *(v0 + 560) = v37;
  *(v0 + 568) = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37(v32, v30, v35);
  sub_100391A48(v30, type metadata accessor for OAuthCredential);
  (*(v34 + 32))(v31, v32, v35);
  v37(v33, v31, v35);
  v38 = v36[24];
  *(v0 + 576) = v38;
  v39 = v36[25];
  *(v0 + 584) = v39;
  v40 = v36[16];
  v41 = v36[14];
  *(v0 + 592) = v41;

  v42 = v41;
  v43 = swift_task_alloc();
  *(v0 + 600) = v43;
  *v43 = v0;
  v43[1] = sub_10038F3AC;
  v44 = *(v0 + 480);
  v45 = *(v0 + 456);

  return sub_10062C6D0(v45, v44, v38, v39, v40, v42);
}

uint64_t sub_10038F3AC()
{
  v2 = *v1;
  v2[76] = v0;

  if (v0)
  {
    v3 = v2[56];
    sub_1003919F4((v2 + 14));

    return _swift_task_switch(sub_10038FAC8, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[77] = v4;
    *v4 = v2;
    v4[1] = sub_10038F534;
    v5 = v2[74];

    return sub_10062D534((v2 + 25), (v2 + 14), v5);
  }
}

uint64_t sub_10038F534()
{
  v2 = *v1;
  *(v2 + 624) = v0;

  v3 = *(v2 + 448);
  sub_1003919F4(v2 + 112);
  if (v0)
  {
    v4 = sub_10038FCB8;
  }

  else
  {
    v4 = sub_10038F66C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10038F66C()
{
  v18 = *(v0 + 584);
  v19 = *(v0 + 592);
  v20 = *(v0 + 552);
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 496);
  v6 = *(v0 + 464);
  v7 = *(v0 + 472);
  v8 = *(v0 + 448);
  v16 = *(v0 + 456);
  v17 = *(v0 + 576);
  (*(v0 + 560))(v2, v5, v6);
  v9 = v2 + *(v3 + 20);
  v10 = *(v0 + 216);
  *v9 = *(v0 + 200);
  *(v9 + 16) = v10;
  v11 = *(v0 + 232);
  v12 = *(v0 + 248);
  v13 = *(v0 + 264);
  *(v9 + 80) = *(v0 + 280);
  *(v9 + 48) = v12;
  *(v9 + 64) = v13;
  *(v9 + 32) = v11;
  sub_10048B61C(v2, *(v8 + 176), *(v8 + 184), v17, v18, v19);
  sub_100391A48(v16, type metadata accessor for OAuthClient);
  (*(v7 + 8))(v5, v6);
  sub_100391AA8(v2, v1);
  (*(v4 + 56))(v1, 0, 1, v3);
  swift_beginAccess();
  sub_10038B4F8(v1, v8 + v20);
  swift_endAccess();

  v14 = *(v0 + 8);

  return v14(1);
}

uint64_t sub_10038F864()
{
  v2 = *v1;
  *(v2 + 688) = v0;

  v3 = *(v2 + 448);
  sub_1002FE258(v2 + 16);
  if (v0)
  {
    v4 = sub_10038FECC;
  }

  else
  {
    v4 = sub_10038F99C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10038F99C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 528);
  v3 = *(v0 + 448);
  sub_100489ADC(*(v0 + 640), *(v0 + 648), *(v0 + 656), *(v0 + 664), *(v0 + 672), v2);

  swift_beginAccess();
  sub_10038B4F8(v2, v3 + v1);
  swift_endAccess();

  v4 = *(v0 + 8);

  return v4(1);
}

uint64_t sub_10038FAC8()
{
  (*(*(v0 + 472) + 8))(*(v0 + 496), *(v0 + 464));
  *(v0 + 632) = *(v0 + 608);
  v1 = *(v0 + 448);
  if (*(v1 + 120) == 1)
  {
    v2 = *(v1 + 176);
    *(v0 + 640) = v2;
    v3 = *(v1 + 184);
    *(v0 + 648) = v3;
    v4 = *(v1 + 192);
    *(v0 + 656) = v4;
    v5 = *(v1 + 200);
    *(v0 + 664) = v5;
    v6 = *(v1 + 128);
    v7 = *(v1 + 112);
    *(v0 + 672) = v7;
    sub_10020A980(v1 + 136, v0 + 72);
    *(v0 + 16) = v2;
    *(v0 + 24) = v3;
    *(v0 + 32) = v4;
    *(v0 + 40) = v5;
    *(v0 + 48) = v6;
    *(v0 + 56) = v7;
    *(v0 + 64) = 0;

    v8 = v7;
    v9 = swift_task_alloc();
    *(v0 + 680) = v9;
    *v9 = v0;
    v9[1] = sub_10038F864;

    return sub_1005CD74C();
  }

  else
  {
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_10038FCB8()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 464);
  v3 = *(v0 + 472);
  sub_100391A48(*(v0 + 456), type metadata accessor for OAuthClient);
  (*(v3 + 8))(v1, v2);
  *(v0 + 632) = *(v0 + 624);
  v4 = *(v0 + 448);
  if (*(v4 + 120) == 1)
  {
    v5 = *(v4 + 176);
    *(v0 + 640) = v5;
    v6 = *(v4 + 184);
    *(v0 + 648) = v6;
    v7 = *(v4 + 192);
    *(v0 + 656) = v7;
    v8 = *(v4 + 200);
    *(v0 + 664) = v8;
    v9 = *(v4 + 128);
    v10 = *(v4 + 112);
    *(v0 + 672) = v10;
    sub_10020A980(v4 + 136, v0 + 72);
    *(v0 + 16) = v5;
    *(v0 + 24) = v6;
    *(v0 + 32) = v7;
    *(v0 + 40) = v8;
    *(v0 + 48) = v9;
    *(v0 + 56) = v10;
    *(v0 + 64) = 0;

    v11 = v10;
    v12 = swift_task_alloc();
    *(v0 + 680) = v12;
    *v12 = v0;
    v12[1] = sub_10038F864;

    return sub_1005CD74C();
  }

  else
  {
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_10038FECC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10038FFA4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 58) = a5;
  *(v6 + 176) = a4;
  *(v6 + 184) = v5;
  *(v6 + 57) = a2;
  *(v6 + 160) = a1;
  *(v6 + 168) = a3;
  v7 = type metadata accessor for Logger();
  *(v6 + 192) = v7;
  *(v6 + 200) = *(v7 - 8);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v6 + 232) = v8;
  *(v6 + 240) = *(v8 - 8);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  v9 = type metadata accessor for URLRequest();
  *(v6 + 264) = v9;
  *(v6 + 272) = *(v9 - 8);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_100390170, 0, 0);
}

uint64_t sub_100390170()
{
  v1 = *(v0 + 232);
  v2 = *(*(v0 + 240) + 16);
  *(v0 + 59) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 0xF000000000000000;
  *(v0 + 312) = v2;
  *(v0 + 320) = 0;
  v3 = *(v0 + 168);
  v2(*(v0 + 256), *(v0 + 160), v1);
  sub_100005934(v3, v0 + 16, &qword_100780BA8);
  if (*(v0 + 56) == 255)
  {
    sub_1000032A8(v0 + 16, &qword_100780BA8);
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  else
  {
    v4 = sub_10051E1C4();
    v6 = v5;
    sub_1003918E0(v0 + 16);
  }

  sub_100005934(*(v0 + 168), v0 + 64, &qword_100780BA8);
  v7 = *(v0 + 104);
  if (v7 == 255)
  {
    sub_1000032A8(v0 + 64, &qword_100780BA8);
    v9 = 0;
  }

  else
  {
    sub_100391884(v0 + 64, v0 + 112);
    v8 = *(v0 + 152);
    sub_1003918E0(v0 + 112);
    sub_1003918E0(v0 + 64);
    v9 = v8 ^ 1;
  }

  (*(v0 + 312))(*(v0 + 248), *(v0 + 256), *(v0 + 232));
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  sub_1001DFECC(v4, v6);
  URLRequest.httpBody.setter();
  if (v7 == 255)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
    sub_10020B0E0(v4, v6);
  }

  else
  {
    v10 = *(v0 + 256);
    v11 = *(v0 + 232);
    v12 = *(v0 + 240);
    if (v9)
    {
      v13 = 0xD000000000000010;
    }

    else
    {
      v13 = 0xD000000000000021;
    }

    if (v9)
    {
      v14 = "quest8@NSError16";
    }

    else
    {
      v14 = "corator";
    }

    v15._countAndFlagsBits = 0x2D746E65746E6F43;
    v15._object = 0xEC00000065707954;
    v16 = v14 | 0x8000000000000000;
    URLRequest.setValue(_:forHTTPHeaderField:)(*&v13, v15);

    sub_10020B0E0(v4, v6);
    (*(v12 + 8))(v10, v11);
  }

  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v20 = *(v0 + 272);
  v19 = *(v0 + 280);
  v21 = *(v0 + 264);
  v22 = *(v0 + 184);
  v23 = *(v20 + 32);
  *(v0 + 344) = v23;
  *(v0 + 352) = (v20 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v23(v18, v17, v21);
  v24 = v22[7];
  v25 = v22[8];
  sub_100006D8C(v22 + 4, v24);
  (*(v20 + 16))(v19, v18, v21);
  v30 = (*(v25 + 16) + **(v25 + 16));
  v26 = swift_task_alloc();
  *(v0 + 360) = v26;
  *v26 = v0;
  v26[1] = sub_100390608;
  v28 = *(v0 + 280);
  v27 = *(v0 + 288);

  return v30(v27, v28, v24, v25);
}

uint64_t sub_100390608()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_100391578;
  }

  else
  {
    v2 = sub_10039071C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10039071C()
{
  v1 = v0[43];
  v2 = v0[38];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[23];
  v7 = *(v4 + 8);
  v0[47] = v7;
  v0[48] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v5);
  v1(v2, v3, v5);
  v8.value._countAndFlagsBits = sub_10051E4A4(0);
  v9._countAndFlagsBits = 0x6567412D72657355;
  v9._object = 0xEA0000000000746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v8, v9);

  URLRequest.timeoutInterval.setter();
  URLRequest.cachePolicy.setter();
  URLRequest.httpShouldHandleCookies.setter();
  v10 = *(v6 + 24);
  v0[49] = v10;
  v11 = swift_task_alloc();
  v0[50] = v11;
  *v11 = v0;
  v11[1] = sub_10039087C;
  v12 = v0[38];

  return sub_10051E728(v12, v10);
}

uint64_t sub_10039087C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[51] = a1;
  v5[52] = a2;
  v5[53] = a3;
  v5[54] = v3;

  if (v3)
  {
    v6 = sub_100391684;
  }

  else
  {
    v6 = sub_100390994;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100390994()
{
  v1 = *(v0 + 59);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);

  sub_10020B0E0(v2, v3);
  if ((v1 & 1) == 0 && ([*(v0 + 424) statusCode] == 403 || objc_msgSend(*(v0 + 424), "statusCode") == 401))
  {
    static Logger.general.getter();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 392);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v11;
      *v13 = v11;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Request failed, attempting to recover", v12, 0xCu);
      sub_1000032A8(v13, &qword_10077F920);
    }

    v15 = *(v0 + 224);
    v16 = *(v0 + 192);
    v17 = *(v0 + 200);
    v18 = *(v0 + 184);

    v19 = *(v17 + 8);
    *(v0 + 440) = v19;
    *(v0 + 448) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v15, v16);
    v20 = v18[7];
    v21 = v18[8];
    sub_100006D8C(v18 + 4, v20);
    v24 = (*(v21 + 24) + **(v21 + 24));
    v22 = swift_task_alloc();
    *(v0 + 456) = v22;
    *v22 = v0;
    v22[1] = sub_100390CE8;
    v23 = *(v0 + 424);

    return v24(v23, v20, v21);
  }

  else
  {
    (*(v0 + 376))(*(v0 + 304), *(v0 + 264));

    v4 = *(v0 + 8);
    v5 = *(v0 + 416);
    v6 = *(v0 + 424);
    v7 = *(v0 + 408);

    return v4(v7, v5, v6);
  }
}

uint64_t sub_100390CE8(char a1)
{
  v4 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v5 = sub_100391788;
  }

  else
  {
    *(v4 + 60) = a1 & 1;
    v5 = sub_100390E14;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100390E14()
{
  if (*(v0 + 60))
  {
    static Logger.general.getter();

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 392);
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      *(v4 + 4) = v3;
      *v5 = v3;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Recovery performed, retrying one more time", v4, 0xCu);
      sub_1000032A8(v5, &qword_10077F920);
    }

    v7 = *(v0 + 440);
    v8 = *(v0 + 376);
    v9 = *(v0 + 304);
    v10 = *(v0 + 264);
    v11 = *(v0 + 216);
    v12 = *(v0 + 192);

    v7(v11, v12);
    v8(v9, v10);
    v13 = *(v0 + 464);
    v14 = *(v0 + 416);
    v15 = *(v0 + 424);
    v16 = *(v0 + 408);
    *(v0 + 59) = 1;
    *(v0 + 328) = v16;
    *(v0 + 336) = v14;
    *(v0 + 320) = v15;
    v17 = *(v0 + 168);
    (*(v0 + 312))(*(v0 + 256), *(v0 + 160), *(v0 + 232));
    sub_100005934(v17, v0 + 16, &qword_100780BA8);
    if (*(v0 + 56) == 255)
    {
      sub_1000032A8(v0 + 16, &qword_100780BA8);
      v35 = 0;
      v36 = 0xF000000000000000;
    }

    else
    {
      v18 = sub_10051E1C4();
      if (v13)
      {
        (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
        sub_10020B0E0(v16, v14);

        sub_1003918E0(v0 + 16);

        v20 = *(v0 + 8);

        return v20();
      }

      v35 = v18;
      v36 = v19;
      sub_1003918E0(v0 + 16);
    }

    sub_100005934(*(v0 + 168), v0 + 64, &qword_100780BA8);
    v37 = *(v0 + 104);
    if (v37 == 255)
    {
      sub_1000032A8(v0 + 64, &qword_100780BA8);
      v39 = 0;
    }

    else
    {
      sub_100391884(v0 + 64, v0 + 112);
      v38 = *(v0 + 152);
      sub_1003918E0(v0 + 112);
      sub_1003918E0(v0 + 64);
      v39 = v38 ^ 1;
    }

    (*(v0 + 312))(*(v0 + 248), *(v0 + 256), *(v0 + 232));
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    sub_1001DFECC(v35, v36);
    URLRequest.httpBody.setter();
    if (v37 == 255)
    {
      (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
      sub_10020B0E0(v35, v36);
    }

    else
    {
      v40 = *(v0 + 256);
      v41 = *(v0 + 232);
      v42 = *(v0 + 240);
      if (v39)
      {
        v43 = 0xD000000000000010;
      }

      else
      {
        v43 = 0xD000000000000021;
      }

      if (v39)
      {
        v44 = "quest8@NSError16";
      }

      else
      {
        v44 = "corator";
      }

      v45._countAndFlagsBits = 0x2D746E65746E6F43;
      v45._object = 0xEC00000065707954;
      v46 = v44 | 0x8000000000000000;
      URLRequest.setValue(_:forHTTPHeaderField:)(*&v43, v45);

      sub_10020B0E0(v35, v36);
      (*(v42 + 8))(v40, v41);
    }

    v47 = *(v0 + 296);
    v48 = *(v0 + 304);
    v50 = *(v0 + 272);
    v49 = *(v0 + 280);
    v51 = *(v0 + 264);
    v52 = *(v0 + 184);
    v53 = *(v50 + 32);
    *(v0 + 344) = v53;
    *(v0 + 352) = (v50 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v53(v48, v47, v51);
    v54 = v52[7];
    v55 = v52[8];
    sub_100006D8C(v52 + 4, v54);
    (*(v50 + 16))(v49, v48, v51);
    v59 = (*(v55 + 16) + **(v55 + 16));
    v56 = swift_task_alloc();
    *(v0 + 360) = v56;
    *v56 = v0;
    v56[1] = sub_100390608;
    v58 = *(v0 + 280);
    v57 = *(v0 + 288);

    return v59(v57, v58, v54, v55);
  }

  else
  {
    static Logger.general.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 392);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v24;
      *v26 = v24;
      v27 = v24;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Recovery failed, not trying again", v25, 0xCu);
      sub_1000032A8(v26, &qword_10077F920);
    }

    v28 = *(v0 + 440);
    v29 = *(v0 + 208);
    v30 = *(v0 + 192);

    v28(v29, v30);
    (*(v0 + 376))(*(v0 + 304), *(v0 + 264));

    v31 = *(v0 + 8);
    v32 = *(v0 + 416);
    v33 = *(v0 + 424);
    v34 = *(v0 + 408);

    return v31(v34, v32, v33);
  }
}

uint64_t sub_100391578()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 304);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);

  sub_10020B0E0(v1, v2);
  (*(v5 + 8))(v3, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100391684()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v4 = *(v0 + 304);
  v5 = *(v0 + 264);

  sub_10020B0E0(v2, v3);
  v1(v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100391788()
{
  v1 = v0[53];
  v2 = v0[47];
  v3 = v0[38];
  v4 = v0[33];
  sub_100007158(v0[51], v0[52]);

  v2(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100391934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthCredential();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100391A48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100391AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthCredential();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100391B40(void *a1)
{
  v3 = sub_1001F0C48(&qword_1007828B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006D8C(a1, a1[3]);
  sub_1003959E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for ConfigurationBag.UpdatesConfiguration(0);
  v8[15] = 0;
  type metadata accessor for URL();
  sub_1003951C4(&qword_100782898, &type metadata accessor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100391D1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for URL();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001F0C48(&qword_1007828A0);
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v16 - v7;
  v21 = type metadata accessor for ConfigurationBag.UpdatesConfiguration(0);
  __chkstk_darwin(v21);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  sub_100006D8C(a1, a1[3]);
  sub_1003959E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000710C(a1);
    v12 = type metadata accessor for UUID();
    return (*(*(v12 - 8) + 8))(v10, v12);
  }

  else
  {
    v11 = v18;
    v23 = 0;
    sub_1003951C4(&qword_100781BB8, &type metadata accessor for URL);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v21;
    (*(v19 + 32))(&v10[*(v21 + 20)], v6, v4);
    v22 = 1;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v11 + 8))(v8, v20);
    *&v10[*(v13 + 24)] = v14;
    sub_100395980(v10, v17, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
    sub_10000710C(a1);
    return sub_1003957A8(v10, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
  }
}

uint64_t sub_1003920C4(void *a1)
{
  v3 = sub_1001F0C48(&qword_100782890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006D8C(a1, a1[3]);
  sub_10039592C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for URL();
  sub_1003951C4(&qword_100782898, &type metadata accessor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ConfigurationBag.RestoresConfiguration(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10039227C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for URL();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1001F0C48(&qword_100782880);
  v21 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ConfigurationBag.RestoresConfiguration(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006D8C(a1, a1[3]);
  sub_10039592C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v19 = v11;
  v12 = v21;
  v13 = v22;
  v26 = 0;
  sub_1003951C4(&qword_100781BB8, &type metadata accessor for URL);
  v14 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v19, v6, v14);
  v25 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v12 + 8))(v8, v24);
  v17 = v19;
  v16 = v20;
  *&v19[*(v9 + 20)] = v15;
  sub_100395980(v17, v16, type metadata accessor for ConfigurationBag.RestoresConfiguration);
  sub_10000710C(a1);
  return sub_1003957A8(v17, type metadata accessor for ConfigurationBag.RestoresConfiguration);
}

uint64_t sub_1003925CC(void *a1)
{
  v3 = sub_1001F0C48(&qword_1007828C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100006D8C(a1, a1[3]);
  sub_100395A3C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  type metadata accessor for URL();
  sub_1003951C4(&qword_100782898, &type metadata accessor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ConfigurationBag.LicenseConfiguration(0);
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100392834@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_1001F0C48(&unk_1007809F0);
  v4 = __chkstk_darwin(v3 - 8);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v38 - v6;
  v49 = type metadata accessor for URL();
  v45 = *(v49 - 8);
  v7 = __chkstk_darwin(v49);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - v11;
  __chkstk_darwin(v10);
  v48 = &v38 - v13;
  v14 = sub_1001F0C48(&qword_1007828B8);
  v15 = *(v14 - 8);
  v46 = v14;
  v47 = v15;
  __chkstk_darwin(v14);
  v17 = &v38 - v16;
  v18 = type metadata accessor for ConfigurationBag.LicenseConfiguration(0);
  __chkstk_darwin(v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006D8C(a1, a1[3]);
  sub_100395A3C();
  v50 = v17;
  v21 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return sub_10000710C(a1);
  }

  v40 = v9;
  v41 = v12;
  v51 = a1;
  v56 = 0;
  v22 = sub_1003951C4(&qword_100781BB8, &type metadata accessor for URL);
  v23 = v46;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = *(v45 + 32);
  v25 = v22;
  v26 = v49;
  v24(v20, v48, v49);
  v55 = 1;
  v27 = v44;
  v48 = v25;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v39 = v24;
  sub_10020A668(v27, &v20[v18[5]], &unk_1007809F0);
  v54 = 2;
  v28 = v41;
  v44 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v18[6];
  v38 = v20;
  v30 = v28;
  v31 = v39;
  v39(&v20[v29], v30, v26);
  v53 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v18;
  v33 = v18[7];
  v34 = v38;
  v31(&v38[v33], v40, v26);
  v52 = 4;
  v35 = v43;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v36 = v51;
  (*(v47 + 8))(v50, v23);
  sub_10020A668(v35, v34 + v32[8], &unk_1007809F0);
  sub_100395980(v34, v42, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  sub_10000710C(v36);
  return sub_1003957A8(v34, type metadata accessor for ConfigurationBag.LicenseConfiguration);
}

uint64_t sub_100392EB0()
{
  if (*v0)
  {
    return 0x49676E696C6C6F70;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_100392EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49676E696C6C6F70 && a2 == 0xEF6C61767265746ELL)
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

uint64_t sub_100392FD4(uint64_t a1)
{
  v2 = sub_1003959E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100393010(uint64_t a1)
{
  v2 = sub_1003959E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10039307C(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1003951C4(&qword_100781FF8, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_1003951C4(&qword_100782598, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

void sub_10039317C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_1003951C4(&qword_100781FF8, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_1003951C4(&qword_100782598, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
}

Swift::Int sub_10039326C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1003951C4(&qword_100781FF8, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_1003951C4(&qword_100782598, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

uint64_t sub_1003933D0()
{
  if (*v0)
  {
    return 0x7A69536863746162;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_100393408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7A69536863746162 && a2 == 0xE900000000000065)
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

uint64_t sub_1003934EC(uint64_t a1)
{
  v2 = sub_10039592C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100393528(uint64_t a1)
{
  v2 = sub_10039592C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100393594()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  v3 = 0xD000000000000018;
  if (v1 != 3)
  {
    v3 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10039361C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100395FAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100393644(uint64_t a1)
{
  v2 = sub_100395A3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100393680(uint64_t a1)
{
  v2 = sub_100395A3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003936EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1001F0C48(&unk_1007809F0);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100393818, 0, 0);
}

uint64_t sub_100393818()
{
  if (os_variant_has_internal_content())
  {
    *(v0 + 128) = 0;
    v1 = String._bridgeToObjectiveC()();
    v2 = String._bridgeToObjectiveC()();
    CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 128));
  }

  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);

  sub_1005D6FB4(v7, v6, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_1000032A8(*(v0 + 56), &unk_1007809F0);
    sub_100393FE8();
    swift_allocError();
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 40);
    (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
    v11 = v10[3];
    v12 = v10[4];
    sub_100006D8C(v10, v11);
    v16 = (*(v12 + 8) + **(v12 + 8));
    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    *v13 = v0;
    v13[1] = sub_100393B68;
    v14 = *(v0 + 48);
    v15 = *(v0 + 80);

    return v16(v15, 0, 0, 1, v14, v11, v12);
  }
}

uint64_t sub_100393B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[12] = a1;
  v5[13] = a2;
  v5[14] = a3;
  v5[15] = v3;

  if (v3)
  {
    v6 = sub_100393F2C;
  }

  else
  {
    v6 = sub_100393CAC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100393CAC()
{
  if ([*(v0 + 112) statusCode] != 200)
  {
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 96);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 64);
    v13 = [v7 statusCode];
    sub_10039403C();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
    swift_willThrow();

    sub_100007158(v9, v8);
    (*(v11 + 8))(v10, v12);
    goto LABEL_5;
  }

  v1 = *(v0 + 120);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for ConfigurationBag(0);
  sub_1003951C4(&qword_100782590, type metadata accessor for ConfigurationBag);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v2 = v1;
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  if (v2)
  {
    (*(v6 + 8))(*(v0 + 80), *(v0 + 64));

    sub_100007158(v5, v3);
LABEL_5:

    v15 = *(v0 + 8);
    goto LABEL_6;
  }

  (*(v6 + 8))();

  sub_100007158(v5, v3);

  v15 = *(v0 + 8);
LABEL_6:

  return v15();
}

uint64_t sub_100393F2C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_100393FE8()
{
  result = qword_100782588;
  if (!qword_100782588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782588);
  }

  return result;
}

unint64_t sub_10039403C()
{
  result = qword_100786E40;
  if (!qword_100786E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786E40);
  }

  return result;
}

uint64_t sub_1003940B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConfigurationBag(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  if (!a2)
  {
    return sub_100395980(v3, a3, type metadata accessor for ConfigurationBag);
  }

  v18 = *(v3 + *(v16 + 36));
  if (!v18)
  {
    return sub_100395980(v3, a3, type metadata accessor for ConfigurationBag);
  }

  if (!*(v18 + 16))
  {
    return sub_100395980(v3, a3, type metadata accessor for ConfigurationBag);
  }

  v19 = a1;
  v33 = a1;
  v34 = a2;
  v20 = &v32 - v17;
  v21 = sub_10052213C(v19, a2);
  v22 = v20;
  v23 = v34;
  if ((v24 & 1) == 0)
  {
    return sub_100395980(v3, a3, type metadata accessor for ConfigurationBag);
  }

  sub_100395980(*(v18 + 56) + *(v12 + 72) * v21, v15, type metadata accessor for ConfigurationBag);
  sub_100395808(v15, v22, type metadata accessor for ConfigurationBag);
  static Logger.daemon.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v32 = v7;
    v29 = v35;
    *v27 = 138412546;
    v30 = sub_100625FA0();
    *(v27 + 4) = v30;
    *v28 = v30;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1002346CC(v33, v23, &v35);
    _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Overridden bag found for %{public}s", v27, 0x16u);
    sub_1000032A8(v28, &qword_10077F920);

    sub_10000710C(v29);

    (*(v8 + 8))(v10, v32);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  return sub_100395808(v22, a3, type metadata accessor for ConfigurationBag);
}

uint64_t sub_100394448(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_1007828D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100006D8C(a1, a1[3]);
  sub_100395754();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for ConfigurationBag.UpdatesConfiguration(0);
  sub_1003951C4(&qword_1007828D8, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for ConfigurationBag(0);
    v16 = 1;
    type metadata accessor for ConfigurationBag.LicenseConfiguration(0);
    sub_1003951C4(&qword_1007828E0, type metadata accessor for ConfigurationBag.LicenseConfiguration);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = 2;
    type metadata accessor for URL();
    sub_1003951C4(&qword_100782898, &type metadata accessor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = 3;
    type metadata accessor for ConfigurationBag.RestoresConfiguration(0);
    sub_1003951C4(&qword_1007828E8, type metadata accessor for ConfigurationBag.RestoresConfiguration);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = 4;
    type metadata accessor for OAuthServerMetadata();
    sub_1003951C4(&qword_1007828F0, type metadata accessor for OAuthServerMetadata);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 36));
    v11[15] = 5;
    sub_1001F0C48(&unk_1007827F8);
    sub_100395A90();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100394800@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1001F0C48(&qword_100782770);
  __chkstk_darwin(v3 - 8);
  v29 = &v27 - v4;
  v5 = sub_1001F0C48(&qword_100782768);
  __chkstk_darwin(v5 - 8);
  v30 = &v27 - v6;
  v7 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v7 - 8);
  v31 = &v27 - v8;
  v32 = type metadata accessor for ConfigurationBag.LicenseConfiguration(0);
  __chkstk_darwin(v32);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConfigurationBag.UpdatesConfiguration(0);
  __chkstk_darwin(v11);
  v35 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F0C48(&qword_100782848);
  v14 = *(v13 - 8);
  v33 = v13;
  v34 = v14;
  __chkstk_darwin(v13);
  v15 = type metadata accessor for ConfigurationBag(0);
  __chkstk_darwin(v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v37 = a1;
  sub_100006D8C(a1, v18);
  sub_100395754();
  v19 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return sub_10000710C(v37);
  }

  v20 = v17;
  v44 = 0;
  sub_1003951C4(&qword_100782858, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
  v21 = v33;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100395808(v35, v20, type metadata accessor for ConfigurationBag.UpdatesConfiguration);
  v43 = 1;
  sub_1003951C4(&qword_100782860, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v15;
  sub_100395808(v10, v20 + *(v15 + 20), type metadata accessor for ConfigurationBag.LicenseConfiguration);
  type metadata accessor for URL();
  v42 = 2;
  sub_1003951C4(&qword_100781BB8, &type metadata accessor for URL);
  v24 = v31;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10020A668(v24, v20 + v23[6], &unk_1007809F0);
  type metadata accessor for ConfigurationBag.RestoresConfiguration(0);
  v41 = 3;
  sub_1003951C4(&qword_100782868, type metadata accessor for ConfigurationBag.RestoresConfiguration);
  v25 = v30;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10020A668(v25, v20 + v23[7], &qword_100782768);
  type metadata accessor for OAuthServerMetadata();
  v40 = 4;
  sub_1003951C4(&qword_100782870, type metadata accessor for OAuthServerMetadata);
  v26 = v29;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10020A668(v26, v20 + v23[8], &qword_100782770);
  sub_1001F0C48(&unk_1007827F8);
  v39 = 5;
  sub_100395870();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v34 + 8))(0, v21);
  *(v20 + v23[9]) = v38;
  sub_100395980(v20, v28, type metadata accessor for ConfigurationBag);
  sub_10000710C(v37);
  return sub_1003957A8(v20, type metadata accessor for ConfigurationBag);
}

uint64_t sub_100395038()
{
  v1 = *v0;
  v2 = 0x73657461647075;
  v3 = 0x7365726F74736572;
  v4 = 0x687475616FLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65736E6563696CLL;
  if (v1 != 1)
  {
    v5 = 0x65726F74736572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003950F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100396164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10039511C(uint64_t a1)
{
  v2 = sub_100395754();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100395158(uint64_t a1)
{
  v2 = sub_100395754();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003951C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100395254()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100395310()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1003953E4()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_1003955FC(319, &qword_100780B40, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003954C4()
{
  type metadata accessor for ConfigurationBag.UpdatesConfiguration(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ConfigurationBag.LicenseConfiguration(319);
    if (v1 <= 0x3F)
    {
      sub_1003955FC(319, &qword_100780B40, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        sub_1003955FC(319, &qword_1007827E0, type metadata accessor for ConfigurationBag.RestoresConfiguration);
        if (v3 <= 0x3F)
        {
          sub_1003955FC(319, &qword_1007827E8, type metadata accessor for OAuthServerMetadata);
          if (v4 <= 0x3F)
          {
            sub_100395650();
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

void sub_1003955FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100395650()
{
  if (!qword_1007827F0)
  {
    sub_1001F76D0(&unk_1007827F8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1007827F0);
    }
  }
}

unint64_t sub_1003956B8()
{
  result = qword_100782838;
  if (!qword_100782838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782838);
  }

  return result;
}

unint64_t sub_100395754()
{
  result = qword_100782850;
  if (!qword_100782850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782850);
  }

  return result;
}

uint64_t sub_1003957A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100395808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100395870()
{
  result = qword_100782878;
  if (!qword_100782878)
  {
    sub_1001F76D0(&unk_1007827F8);
    sub_1003951C4(&qword_100782590, type metadata accessor for ConfigurationBag);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782878);
  }

  return result;
}

unint64_t sub_10039592C()
{
  result = qword_100782888;
  if (!qword_100782888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782888);
  }

  return result;
}

uint64_t sub_100395980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1003959E8()
{
  result = qword_1007828A8;
  if (!qword_1007828A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007828A8);
  }

  return result;
}

unint64_t sub_100395A3C()
{
  result = qword_1007828C0;
  if (!qword_1007828C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007828C0);
  }

  return result;
}

unint64_t sub_100395A90()
{
  result = qword_1007828F8;
  if (!qword_1007828F8)
  {
    sub_1001F76D0(&unk_1007827F8);
    sub_1003951C4(&qword_100782900, type metadata accessor for ConfigurationBag);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007828F8);
  }

  return result;
}

unint64_t sub_100395B90()
{
  result = qword_100782908;
  if (!qword_100782908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782908);
  }

  return result;
}

unint64_t sub_100395BE8()
{
  result = qword_100782910;
  if (!qword_100782910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782910);
  }

  return result;
}

unint64_t sub_100395C40()
{
  result = qword_100782918;
  if (!qword_100782918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782918);
  }

  return result;
}

unint64_t sub_100395C98()
{
  result = qword_100782920;
  if (!qword_100782920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782920);
  }

  return result;
}

unint64_t sub_100395CF0()
{
  result = qword_100782928;
  if (!qword_100782928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782928);
  }

  return result;
}

unint64_t sub_100395D48()
{
  result = qword_100782930;
  if (!qword_100782930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782930);
  }

  return result;
}

unint64_t sub_100395DA0()
{
  result = qword_100782938;
  if (!qword_100782938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782938);
  }

  return result;
}

unint64_t sub_100395DF8()
{
  result = qword_100782940;
  if (!qword_100782940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782940);
  }

  return result;
}

unint64_t sub_100395E50()
{
  result = qword_100782948;
  if (!qword_100782948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782948);
  }

  return result;
}

unint64_t sub_100395EA8()
{
  result = qword_100782950;
  if (!qword_100782950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782950);
  }

  return result;
}

unint64_t sub_100395F00()
{
  result = qword_100782958;
  if (!qword_100782958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782958);
  }

  return result;
}

unint64_t sub_100395F58()
{
  result = qword_100782960;
  if (!qword_100782960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782960);
  }

  return result;
}

uint64_t sub_100395FAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001006CA830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006CA850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006CA870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001006CA890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006CA8B0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100396164(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73657461647075 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6563696CLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F74736572 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365726F74736572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x687475616FLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006CA810 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_100396364(unsigned int a1, const void *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  sub_1001F0C48(&qword_10077EF80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = v3;
  v4[3] = 2 * v5 - 64;
  memcpy(v4 + 4, a2, v3);
  return v4;
}

void *sub_1003963E8(unsigned int a1, const void *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  sub_1001F0C48(&qword_100782978);
  v5 = 8 * (v3 + 4 * a1);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  v6[2] = v3;
  v6[3] = 2 * ((v7 - 32) / 40);
  memcpy(v6 + 4, a2, v5);
  return v6;
}

void *sub_100396490@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_10039656C(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100782998);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_100006D8C(a1, a1[3]);
  sub_100397320();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 16);
    v13 = v12;
    v11[23] = 2;
    sub_1003973C8(&v13, v11);
    sub_100329F2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100007158(v12, *(&v12 + 1));
    LOBYTE(v12) = *(v3 + 32);
    v11[0] = 3;
    sub_100397424();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100396790()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1635017060;
  v4 = 1701869940;
  if (v1 != 3)
  {
    v4 = 0x6275507465737361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449746E65726170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10039681C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100396EA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100396844(uint64_t a1)
{
  v2 = sub_100397320();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100396880(uint64_t a1)
{
  v2 = sub_100397320();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1003968BC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100397054(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

char *sub_100396924(int a1, unsigned int a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v43 = type metadata accessor for Logger();
  v9 = *(v43 - 8);
  result = __chkstk_darwin(v43);
  v45 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  if (!(a1 | a2))
  {
    return v12;
  }

  if (a3)
  {
    v13 = sub_1003963E8(a2, a3);
    v15 = v13;
    v46 = v13[2];
    if (v46)
    {
      v16 = 0;
      v41 = (v9 + 8);
      v12 = _swiftEmptyArrayStorage;
      v17 = (v13 + 8);
      *&v14 = 67240192;
      v40 = v14;
      while (1)
      {
        if (v16 >= v15[2])
        {
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v18 = *(v17 - 8);
        v19 = *(v17 - 1);
        v20 = *v17;
        if (v18 == 2)
        {
          break;
        }

        if (v18 == 3)
        {
          v21 = 1;
LABEL_12:
          if (!v19)
          {
            goto LABEL_34;
          }

          v47 = *(v17 - 6);
          if (v20)
          {
            sub_1001F0C48(&qword_10077EF80);
            v22 = swift_allocObject();
            v23 = j__malloc_size(v22);
            v22[2] = v20;
            v22[3] = 2 * v23 - 64;
            memcpy(v22 + 4, v19, v20);
          }

          else
          {
            v22 = _swiftEmptyArrayStorage;
          }

          v27 = sub_1001F0C48(&qword_100782968);
          v50[3] = v27;
          v50[4] = sub_100396D80();
          v50[0] = v22;
          v28 = sub_100006D8C(v50, v27);
          v29 = *v28;
          v30 = *(*v28 + 16);
          if (v30)
          {
            if (v30 <= 0xE)
            {
              memset(__dst, 0, sizeof(__dst));
              v49 = v30;
              memcpy(__dst, (v29 + 32), v30);
              v33 = *__dst;
              v34 = v42 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v49 << 16)) << 32);
              v42 = v34;
            }

            else
            {
              type metadata accessor for __DataStorage();
              swift_allocObject();
              v31 = __DataStorage.init(bytes:length:)();
              v32 = v31;
              if (v30 >= 0x7FFFFFFF)
              {
                type metadata accessor for Data.RangeReference();
                v33 = swift_allocObject();
                *(v33 + 16) = 0;
                *(v33 + 24) = v30;
                v34 = v32 | 0x8000000000000000;
              }

              else
              {
                v33 = v30 << 32;
                v34 = v31 | 0x4000000000000000;
              }
            }
          }

          else
          {
            v33 = 0;
            v34 = 0xC000000000000000;
          }

          sub_10000710C(v50);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_100362688(0, *(v12 + 2) + 1, 1, v12);
          }

          v36 = *(v12 + 2);
          v35 = *(v12 + 3);
          v37 = v47;
          if (v36 >= v35 >> 1)
          {
            v39 = sub_100362688((v35 > 1), v36 + 1, 1, v12);
            v37 = v47;
            v12 = v39;
          }

          *(v12 + 2) = v36 + 1;
          v38 = &v12[56 * v36];
          *(v38 + 2) = v37;
          *(v38 + 6) = v33;
          *(v38 + 7) = v34;
          v38[64] = v21;
          *(v38 + 9) = v44;
          *(v38 + 10) = a5;
          goto LABEL_6;
        }

        static Logger.ald.getter();
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = v40;
          *(v26 + 4) = v18;
          _os_log_impl(&_mh_execute_header, v24, v25, "Unhandled license type: %{public}u", v26, 8u);
        }

        (*v41)(v45, v43);
LABEL_6:
        ++v16;
        v17 += 10;
        if (v46 == v16)
        {

          return v12;
        }
      }

      v21 = 0;
      goto LABEL_12;
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

unint64_t sub_100396D80()
{
  result = qword_100782970;
  if (!qword_100782970)
  {
    sub_1001F76D0(&qword_100782968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782970);
  }

  return result;
}

uint64_t sub_100396DE4(uint64_t a1)
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

uint64_t sub_100396E00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100396E48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100396EA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449746E65726170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6275507465737361 && a2 == 0xED0000444963696CLL)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100397054@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100782980);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_100397320();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v22) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v22) = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 2;
  sub_100329ED8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v22;
  v21 = v23;
  v25 = 3;
  sub_100397374();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v22;
  LOBYTE(v22) = 4;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = *(v6 + 8);
  v19 = v11;
  v14(v8, v5);
  v16 = v20;
  v15 = v21;
  sub_10020ABFC(v20, v21);

  sub_10000710C(a1);
  sub_100007158(v16, v15);

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v24;
  *(a2 + 40) = v19;
  *(a2 + 48) = v13;
  return result;
}

unint64_t sub_100397320()
{
  result = qword_100782988;
  if (!qword_100782988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782988);
  }

  return result;
}

unint64_t sub_100397374()
{
  result = qword_100782990;
  if (!qword_100782990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782990);
  }

  return result;
}

unint64_t sub_100397424()
{
  result = qword_1007829A0;
  if (!qword_1007829A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007829A0);
  }

  return result;
}

unint64_t sub_10039749C()
{
  result = qword_1007829A8;
  if (!qword_1007829A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007829A8);
  }

  return result;
}

unint64_t sub_1003974F4()
{
  result = qword_1007829B0;
  if (!qword_1007829B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007829B0);
  }

  return result;
}

unint64_t sub_10039754C()
{
  result = qword_1007829B8;
  if (!qword_1007829B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007829B8);
  }

  return result;
}

unint64_t sub_1003975A4()
{
  result = qword_1007829C0;
  if (!qword_1007829C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007829C0);
  }

  return result;
}

unint64_t sub_1003975F8()
{
  result = qword_1007829C8;
  if (!qword_1007829C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007829C8);
  }

  return result;
}

void sub_1003976B4()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppStoreMetadata(319);
    if (v1 <= 0x3F)
    {
      sub_100397848(319, &qword_100782A38, type metadata accessor for AppStorePackage, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10000585C(319, &qword_100782A40);
        if (v3 <= 0x3F)
        {
          sub_10000585C(319, &qword_1007819E0);
          if (v4 <= 0x3F)
          {
            sub_100397848(319, &unk_100782A48, &type metadata accessor for ManagedApp.BinaryCompatibility, &type metadata accessor for Optional);
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

void sub_100397848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1003978D4()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10000585C(319, &qword_100782AF8);
    if (v1 <= 0x3F)
    {
      sub_10000585C(319, &qword_100782B00);
      if (v2 <= 0x3F)
      {
        sub_10000585C(319, &qword_100782B08);
        if (v3 <= 0x3F)
        {
          sub_10000585C(319, &qword_100782B10);
          if (v4 <= 0x3F)
          {
            sub_100397848(319, &qword_100780B40, &type metadata accessor for URL, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_10000585C(319, &unk_100782B18);
              if (v6 <= 0x3F)
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

void sub_100397A80()
{
  sub_10000585C(319, &qword_1007819E0);
  if (v0 <= 0x3F)
  {
    sub_10000585C(319, &qword_1007810F8);
    if (v1 <= 0x3F)
    {
      sub_10000585C(319, &qword_100782AF8);
      if (v2 <= 0x3F)
      {
        sub_100397848(319, &qword_100780B40, &type metadata accessor for URL, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10037F848(319, &qword_100782BD0, &qword_100782BD8);
          if (v4 <= 0x3F)
          {
            sub_10037F848(319, &qword_100782BE0, &qword_100782BE8);
            if (v5 <= 0x3F)
            {
              sub_10037F848(319, &qword_100782BF0, &qword_100782BF8);
              if (v6 <= 0x3F)
              {
                sub_10000585C(319, &qword_100782C00);
                if (v7 <= 0x3F)
                {
                  sub_10037F848(319, &qword_100782C08, &qword_100782C10);
                  if (v8 <= 0x3F)
                  {
                    sub_10037F848(319, &qword_100782C18, &unk_100782C20);
                    if (v9 <= 0x3F)
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
  }
}

uint64_t sub_100397D84@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppStoreMetadata(0);
  v4 = *(v3 + 132);
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = sub_1005FB008(*(v1 + v4));
    if (v7)
    {
      if (*(v5 + 16))
      {
        v8 = sub_10052213C(v6, v7);
        v10 = v9;

        if (v10)
        {
          v11 = *(v5 + 56) + 24 * v8;
          v12 = &off_100762C00;
          v13 = &type metadata for AppStoreMetadata.RegionalRating;
          goto LABEL_8;
        }
      }

      else
      {
      }
    }
  }

  v11 = v1 + *(v3 + 128);
  v12 = &off_100762BE8;
  v13 = &type metadata for AppStoreMetadata.GlobalRating;
LABEL_8:
  v14 = *(v11 + 16);
  *(a1 + 24) = v13;
  *(a1 + 32) = v12;
  *a1 = *v11;
  *(a1 + 16) = v14;
}

uint64_t sub_100397E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F0C48(&unk_1007809F0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v113 - v8;
  v10 = type metadata accessor for URL();
  v122 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppStorePackage(0);
  v14 = *(v13 - 1);
  __chkstk_darwin(v13);
  v16 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v17 = sub_10052213C(5001813, 0xE300000000000000), (v18 & 1) == 0) || (sub_10020A6D0(*(a1 + 56) + 32 * v17, &v123), (swift_dynamicCast() & 1) == 0))
  {

    return (*(v14 + 56))(a2, 1, 1, v13);
  }

  URL.init(string:)();

  v19 = v122;
  if ((*(v122 + 48))(v9, 1, v10) == 1)
  {

    sub_1000032A8(v9, &unk_1007809F0);
    return (*(v14 + 56))(a2, 1, 1, v13);
  }

  (*(v19 + 32))(v12, v9, v10);
  (*(v19 + 16))(v16, v12, v10);
  v21 = v19;
  if (!*(a1 + 16) || (v22 = sub_10052213C(0x6E692D7465737361, 0xEA00000000006F66), (v23 & 1) == 0))
  {

    goto LABEL_20;
  }

  sub_10020A6D0(*(a1 + 56) + 32 * v22, &v123);
  sub_1001F0C48(&qword_100782D80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_41;
  }

  v24 = v127;
  if (!*(v127 + 16))
  {
    goto LABEL_22;
  }

  v25 = sub_10052213C(0x7A69732D656C6966, 0xE900000000000065);
  if ((v26 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_10020A6D0(*(v24 + 56) + 32 * v25, &v123);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_41;
  }

  *&v16[v13[5]] = v127;
  v27 = *(a1 + 16);
  if (!v27)
  {
    goto LABEL_26;
  }

  v28 = sub_10052213C(0xD000000000000010, 0x80000001006CA8F0);
  if ((v29 & 1) == 0)
  {
    v27 = 0;
LABEL_26:
    v31 = 1;
    goto LABEL_27;
  }

  sub_10020A6D0(*(a1 + 56) + 32 * v28, &v123);
  v30 = swift_dynamicCast();
  v27 = v127;
  if (!v30)
  {
    v27 = 0;
  }

  v31 = v30 ^ 1;
LABEL_27:
  v33 = &v16[v13[6]];
  *v33 = v27;
  v33[8] = v31;
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v34 = sub_10052213C(3499117, 0xE300000000000000);
  if ((v35 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10020A6D0(*(a1 + 56) + 32 * v34, &v123);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:
    v32 = *(v122 + 8);
    v32(v12, v10);
LABEL_42:

    goto LABEL_21;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v121 = v127;
  v36 = sub_10052213C(0x736B6E756863, 0xE600000000000000);
  if ((v37 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_10020A6D0(*(a1 + 56) + 32 * v36, &v123);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = *(v122 + 8);
    v32(v12, v10);

    goto LABEL_42;
  }

  v38 = v127;
  if (!*(v127 + 16))
  {
    goto LABEL_45;
  }

  v39 = sub_10052213C(0x7A69536B6E756863, 0xE900000000000065);
  if ((v40 & 1) == 0)
  {
    goto LABEL_45;
  }

  v119 = v38;
  sub_10020A6D0(*(v38 + 56) + 32 * v39, &v123);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_55:
    v32 = *(v122 + 8);
    v32(v12, v10);

    goto LABEL_42;
  }

  if (!*(a1 + 16) || (v116 = v127, v41 = sub_10052213C(0x73666E6973, 0xE500000000000000), (v42 & 1) == 0))
  {
LABEL_45:

LABEL_22:

LABEL_23:

    goto LABEL_24;
  }

  sub_10020A6D0(*(a1 + 56) + 32 * v41, &v123);
  sub_1001F0C48(&qword_100782D78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_55;
  }

  v43 = *(v127 + 16);
  v120 = v127 + 32;
  v115 = v127;

  v118 = v43;
  if (!v43)
  {
    goto LABEL_53;
  }

  v44 = 0;
  v117 = xmmword_10069E8A0;
  while (1)
  {
    v45 = *(v120 + 8 * v44);
    if (*(v45 + 16))
    {
      v46 = sub_10052213C(1718511987, 0xE400000000000000);
      if (v47)
      {
        sub_10020A6D0(*(v45 + 56) + 32 * v46, &v123);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

    v127 = v117;
    result = sub_1001CEE68(0, 0xF000000000000000);
LABEL_47:
    if (v118 == ++v44)
    {
      goto LABEL_53;
    }
  }

  v48 = *(&v127 + 1);
  result = sub_1001CEE68(v127, *(&v127 + 1));
  if (v48 >> 60 == 15)
  {
    goto LABEL_47;
  }

  v118 = v44;
LABEL_53:
  v49 = *(v115 + 16);
  if (v118 == v49)
  {

    swift_bridgeObjectRelease_n();
LABEL_24:
    v21 = v122;
LABEL_20:
    v32 = *(v21 + 8);
    v32(v12, v10);
LABEL_21:
    v32(v16, v10);
    return (*(v14 + 56))(a2, 1, 1, v13);
  }

  if (v118 >= v49)
  {
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v50 = *(v120 + 8 * v118);
  if (*(v50 + 16) && (v51 = sub_10052213C(1718511987, 0xE400000000000000), (v52 & 1) != 0) && (sub_10020A6D0(*(v50 + 56) + 32 * v51, &v123), swift_dynamicCast()))
  {
    v53 = *(&v127 + 1);
    v118 = v127;
  }

  else
  {
    v118 = 0;
    v127 = xmmword_10069E8A0;
    v53 = 0xF000000000000000;
  }

  v54 = v118;
  sub_1001DFECC(v118, v53);
  result = sub_1001CEE68(v54, v53);
  if (v53 >> 60 == 15)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v55 = v115;

  v56 = &v16[v13[8]];
  *v56 = v118;
  v56[1] = v53;
  v118 = *(v55 + 16);
  if (!v118)
  {
    goto LABEL_73;
  }

  v57 = 0;
  v117 = xmmword_10069E8A0;
  while (2)
  {
    v58 = *(v120 + 8 * v57);
    if (!*(v58 + 16) || (v59 = sub_10052213C(0x6F666E497064, 0xE600000000000000), (v60 & 1) == 0) || (sub_10020A6D0(*(v58 + 56) + 32 * v59, &v123), (swift_dynamicCast() & 1) == 0))
    {
      v127 = v117;
      result = sub_1001CEE68(0, 0xF000000000000000);
      goto LABEL_67;
    }

    v61 = *(&v127 + 1);
    result = sub_1001CEE68(v127, *(&v127 + 1));
    if (v61 >> 60 == 15)
    {
LABEL_67:
      if (v118 == ++v57)
      {
        goto LABEL_73;
      }

      continue;
    }

    break;
  }

  v118 = v57;
LABEL_73:
  v62 = *(v115 + 16);
  if (v118 != v62)
  {
    if (v118 < v62)
    {
      v69 = *(v120 + 8 * v118);
      if (*(v69 + 16) && (v70 = sub_10052213C(0x6F666E497064, 0xE600000000000000), (v71 & 1) != 0) && (sub_10020A6D0(*(v69 + 56) + 32 * v70, &v123), swift_dynamicCast()))
      {
        v72 = *(&v127 + 1);
        v120 = v127;
      }

      else
      {
        v120 = 0;
        v127 = xmmword_10069E8A0;
        v72 = 0xF000000000000000;
      }

      v118 = v72;
      v73 = v120;
      v74 = v72;
      sub_1001DFECC(v120, v72);
      result = sub_1001CEE68(v73, v74);
      if (v74 >> 60 != 15)
      {

        if (!*(v119 + 16) || (v75 = sub_10052213C(0x736568736168, 0xE600000000000000), (v76 & 1) == 0))
        {

          sub_1001CEE68(v120, v118);

          goto LABEL_105;
        }

        sub_10020A6D0(*(v119 + 56) + 32 * v75, &v123);
        sub_1001F0C48(&unk_10077FB40);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v83 = *(v122 + 8);
          v83(v12, v10);

          sub_1001CEE68(v120, v118);
          goto LABEL_108;
        }

        *&v117 = v127;
        if (!*(v119 + 16) || (v77 = sub_10052213C(0x7361487261656C63, 0xEB00000000736568), (v78 & 1) == 0))
        {

          sub_1001CEE68(v120, v118);

          goto LABEL_103;
        }

        sub_10020A6D0(*(v119 + 56) + 32 * v77, &v123);

        if ((swift_dynamicCast() & 1) == 0)
        {
          v83 = *(v122 + 8);
          v83(v12, v10);
          sub_1001CEE68(v120, v118);

          goto LABEL_112;
        }

        v113 = v127;

        v79 = String.count.getter();

        if (v79 != 32)
        {

          sub_1001CEE68(v120, v118);
LABEL_134:

          goto LABEL_105;
        }

        v80 = *(v117 + 16);

        v81 = result + 40;
        v114 = -v80;
        v82 = -1;
        while (v114 + v82 != -1)
        {
          if (++v82 >= *(v117 + 16))
          {
            goto LABEL_147;
          }

          v119 = v81 + 16;
          v115 = *(v81 - 8);

          v115 = String.count.getter();

          v81 = v119;
          if (v115 != 32)
          {

            sub_1001CEE68(v120, v118);

            *&v117 = *(&v121 + 1);
            goto LABEL_134;
          }
        }

        if (String.count.getter() != 32)
        {

LABEL_142:
          v83 = *(v122 + 8);
          v83(v12, v10);
          sub_1001CEE68(v120, v118);

          goto LABEL_108;
        }

        v102 = *(v113 + 16);

        v103 = result + 40;
        v114 = -v102;
        v104 = -1;
        while (v114 + v104 != -1)
        {
          if (++v104 >= *(v113 + 16))
          {
            goto LABEL_148;
          }

          v119 = v103 + 16;
          v115 = *(v103 - 8);

          v115 = String.count.getter();

          v103 = v119;
          if (v115 != 32)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_142;
          }
        }

        v105 = v113;

        v106 = &v16[v13[7]];
        v107 = v118;
        *v106 = v120;
        *(v106 + 1) = v107;
        v106[16] = 0;
        v108 = v121;
        *(v106 + 24) = v121;
        v109 = v116;
        v110 = v117;
        *(v106 + 5) = v116;
        v106[48] = 0;
        *(v106 + 7) = v110;
        v111 = &v16[v13[9]];
        *v111 = 0;
        *(v111 + 8) = v108;
        *(v111 + 3) = v109;
        *(v111 + 4) = 0;
        *(v111 + 5) = v105;
        v112 = &v16[v13[10]];
        *v112 = 0;
        *(v112 + 8) = v108;
        *(v112 + 3) = v109;
        *(v112 + 4) = 0;
        *(v112 + 5) = v110;

LABEL_115:
        if (*(a1 + 16) && (v89 = sub_10052213C(0xD000000000000013, 0x80000001006CA910), (v90 & 1) != 0) && (sub_10020A6D0(*(a1 + 56) + 32 * v89, &v123), (swift_dynamicCast() & 1) != 0))
        {
          URL.init(string:)();
        }

        else
        {
          (*(v122 + 56))(v7, 1, 1, v10);
        }

        sub_1002321B0(v7, &v16[v13[11]]);
        if (*(a1 + 16) && (v91 = sub_10052213C(0x49746E6169726176, 0xE900000000000064), (v92 & 1) != 0) && (sub_10020A6D0(*(a1 + 56) + 32 * v91, &v123), (swift_dynamicCast() & 1) != 0))
        {
          sub_10033AA60(v127, *(&v127 + 1), &v123);
          v93 = v123;
          v94 = v124;
          v95 = v125;
          v96 = v126;
        }

        else
        {
          v96 = 0;
          v93 = 0uLL;
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v126 = 0;
          v94 = 0uLL;
          v95 = 0uLL;
        }

        v97 = &v16[v13[12]];
        *v97 = v93;
        *(v97 + 1) = v94;
        *(v97 + 2) = v95;
        *(v97 + 6) = v96;
        if (*(a1 + 16) && (v98 = sub_10052213C(0xD000000000000011, 0x80000001006CA930), (v99 & 1) != 0))
        {
          sub_10020A6D0(*(a1 + 56) + 32 * v98, &v123);
          (*(v122 + 8))(v12, v10);

          sub_1001F0C48(&qword_100780DF0);
          if (swift_dynamicCast())
          {
            v100 = *(v127 + 16);

            v101 = v100 == 0;
LABEL_131:
            v16[v13[13]] = v101;
            sub_10039DD18(v16, a2, type metadata accessor for AppStorePackage);
            (*(v14 + 56))(a2, 0, 1, v13);
            return sub_10039DD80(v16, type metadata accessor for AppStorePackage);
          }
        }

        else
        {

          (*(v122 + 8))(v12, v10);
        }

        v101 = 0;
        goto LABEL_131;
      }

LABEL_150:
      __break(1u);
      return result;
    }

    goto LABEL_146;
  }

  if (!*(v119 + 16) || (v63 = sub_10052213C(0x736568736168, 0xE600000000000000), (v64 & 1) == 0))
  {

LABEL_103:

LABEL_105:

    v83 = *(v122 + 8);
    v83(v12, v10);
    goto LABEL_113;
  }

  sub_10020A6D0(*(v119 + 56) + 32 * v63, &v123);

  sub_1001F0C48(&unk_10077FB40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v83 = *(v122 + 8);
    v83(v12, v10);
LABEL_108:

    goto LABEL_112;
  }

  v118 = v127;

  v65 = String.count.getter();

  if (v65 == 32)
  {
    v66 = *(v118 + 16);

    v67 = result + 40;
    *&v117 = -v66;
    v68 = -1;
    while (v117 + v68 != -1)
    {
      if (++v68 >= *(v118 + 16))
      {
        goto LABEL_145;
      }

      v119 = *(v67 - 8);
      v120 = v67 + 16;

      v119 = String.count.getter();

      v67 = v120;
      if (v119 != 32)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_111;
      }
    }

    v84 = v118;

    v85 = &v16[v13[7]];
    *v85 = 0u;
    *(v85 + 1) = 0u;
    *(v85 + 4) = 1;
    *(v85 + 5) = 0;
    *(v85 + 6) = 0;
    *(v85 + 7) = 0;
    v86 = &v16[v13[9]];
    v87 = v121;
    *v86 = 0;
    *(v86 + 8) = v87;
    *(v86 + 3) = v116;
    *(v86 + 4) = 0;
    *(v86 + 5) = v84;
    v88 = &v16[v13[10]];
    *v88 = 0;
    *(v88 + 1) = 0;
    *(v88 + 2) = 1;
    *(v88 + 3) = 0;
    *(v88 + 4) = 0;
    *(v88 + 5) = 0;
    goto LABEL_115;
  }

LABEL_111:
  v83 = *(v122 + 8);
  v83(v12, v10);
LABEL_112:

LABEL_113:
  v83(v16, v10);
  sub_1001CEE68(*&v16[v13[8]], *&v16[v13[8] + 8]);
  return (*(v14 + 56))(a2, 1, 1, v13);
}

uint64_t sub_10039927C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x736F63616DLL;
  if (v2 != 1)
  {
    v4 = 0x736F6E6F69736976;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7565161;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x736F63616DLL;
  if (*a2 != 1)
  {
    v8 = 0x736F6E6F69736976;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7565161;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100399370()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100399408()
{
  String.hash(into:)();
}

Swift::Int sub_10039948C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100399520@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10039D210(*a1);
  *a2 = result;
  return result;
}

void sub_100399550(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x736F63616DLL;
  if (v2 != 1)
  {
    v5 = 0x736F6E6F69736976;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7565161;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100399654(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
    case 21:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0x6556656C646E7562;
      break;
    case 5:
      result = 0x6867697279706F63;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x65726E6567;
      break;
    case 9:
      result = 0x644965726E6567;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
    case 25:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x727474612D646169;
      break;
    case 13:
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x4F6C616974696E69;
      break;
    case 16:
    case 20:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x4F74694232337369;
      break;
    case 18:
      result = 0x7375434232427369;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x64496D657469;
      break;
    case 23:
      result = 0x656D614E6D657469;
      break;
    case 24:
      result = 1684957547;
      break;
    case 26:
      result = 0x736567617373656DLL;
      break;
    case 27:
      result = 0x6573616863727570;
      break;
    case 28:
      result = 0x676E69746172;
      break;
    case 29:
      result = 0x6152656741707061;
      break;
    case 30:
      result = 0x44657361656C6572;
      break;
    case 31:
      result = 0xD00000000000001CLL;
      break;
    case 32:
      result = 0xD00000000000001ALL;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
      result = 0x686F4365726F7473;
      break;
    case 35:
      result = 115;
      break;
    case 36:
      result = 0x65726E6567627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100399A64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v4 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v97[-v5];
  v105 = sub_1001F0C48(&qword_100782CE8);
  v7 = *(v105 - 8);
  __chkstk_darwin(v105);
  v9 = &v97[-v8];
  v10 = type metadata accessor for AppStoreMetadata(0);
  __chkstk_darwin(v10);
  v12 = &v97[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[3];
  v106 = a1;
  sub_100006D8C(a1, v13);
  sub_10039B9E0();
  v104 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(v106);
  }

  v101 = v10;
  v102 = v12;
  LOBYTE(v107) = 0;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v102;
  *v102 = v14;
  v16[1] = v17;
  LOBYTE(v107) = 1;
  v16[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v16[3] = v18;
  LOBYTE(v107) = 2;
  v16[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v16[5] = v19;
  LOBYTE(v107) = 3;
  v16[6] = KeyedDecodingContainer.decode(_:forKey:)();
  v16[7] = v20;
  LOBYTE(v107) = 4;
  v16[8] = KeyedDecodingContainer.decode(_:forKey:)();
  v16[9] = v21;
  LOBYTE(v107) = 5;
  v16[10] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16[11] = v22;
  LOBYTE(v107) = 6;
  v16[12] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v107) = 7;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  *&v99[12] = v6;
  v102[104] = v23 & 1;
  LOBYTE(v107) = 8;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v100 = 0;
  v27 = v102;
  *(v102 + 14) = v26;
  *(v27 + 15) = v28;
  LOBYTE(v107) = 9;
  v29 = v100;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v100 = v29;
  if (v29 || (*(v102 + 16) = v30, LOBYTE(v107) = 10, v31 = v100, v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v100 = v31) != 0) || (v102[136] = v32, LOBYTE(v107) = 11, v33 = v100, v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v100 = v33) != 0) || (v102[137] = v34, LOBYTE(v107) = 12, v35 = v100, v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v100 = v35) != 0))
  {
    (*(v7 + 8))(v104, v105);
    v38 = 0;
    v39 = 0;
    v98 = 0;
    *v99 = 0;
    LODWORD(v105) = 0;
    *&v99[8] = 0;
    v109 = 0;
    LODWORD(v103) = 0;
    LODWORD(v104) = 0;
  }

  else
  {
    v40 = v102;
    *(v102 + 18) = v36;
    *(v40 + 19) = v37;
    LOBYTE(v107) = 13;
    v41 = v100;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v100 = v41;
    if (v41)
    {
      (*(v7 + 8))(v104, v105);
      v39 = 0;
      v98 = 0;
      *v99 = 0;
      LODWORD(v105) = 0;
      *&v99[8] = 0;
      v109 = 0;
      LODWORD(v103) = 0;
      LODWORD(v104) = 0;
      v38 = 1;
    }

    else
    {
      v44 = v102;
      *(v102 + 20) = v42;
      *(v44 + 21) = v43;
      LOBYTE(v107) = 14;
      v45 = v100;
      v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v100 = v45;
      if (v45)
      {
        (*(v7 + 8))(v104, v105);
        v98 = 0;
        *v99 = 0;
        LODWORD(v105) = 0;
        *&v99[8] = 0;
        v109 = 0;
        LODWORD(v103) = 0;
        LODWORD(v104) = 0;
        v38 = 1;
        v39 = 1;
      }

      else
      {
        v48 = v102;
        *(v102 + 22) = v46;
        *(v48 + 23) = v47;
        LOBYTE(v107) = 15;
        v49 = v100;
        v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v100 = v49;
        if (v49 || (v52 = v102, *(v102 + 24) = v50, v52[200] = v51 & 1, LOBYTE(v107) = 16, v53 = v100, v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v100 = v53) != 0) || (v102[202] = v54, LOBYTE(v107) = 17, v55 = v100, v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v100 = v55) != 0) || (v102[201] = v56, LOBYTE(v107) = 18, v57 = v100, v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v100 = v57) != 0) || (v102[203] = v58, LOBYTE(v107) = 19, v59 = v100, v60 = KeyedDecodingContainer.decode(_:forKey:)(), (v100 = v59) != 0) || (v102[204] = v60 & 1, LOBYTE(v107) = 20, v61 = v100, v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v100 = v61) != 0) || (v102[205] = v62, LOBYTE(v107) = 21, v63 = v100, v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v100 = v63) != 0) || (v102[206] = v64, LOBYTE(v107) = 22, v65 = v100, v66 = KeyedDecodingContainer.decode(_:forKey:)(), (v100 = v65) != 0) || (*(v102 + 26) = v66, LOBYTE(v107) = 23, v67 = v100, v68 = KeyedDecodingContainer.decode(_:forKey:)(), (v100 = v67) != 0))
        {
          (*(v7 + 8))(v104, v105);
          *v99 = 0;
          LODWORD(v105) = 0;
          *&v99[8] = 0;
          v109 = 0;
          LODWORD(v103) = 0;
          LODWORD(v104) = 0;
          v38 = 1;
          v39 = 1;
          v98 = 1;
        }

        else
        {
          v70 = v102;
          *(v102 + 27) = v68;
          *(v70 + 28) = v69;
          LOBYTE(v107) = 24;
          v71 = v100;
          v72 = KeyedDecodingContainer.decode(_:forKey:)();
          v100 = v71;
          if (v71)
          {
            (*(v7 + 8))(v104, v105);
            *&v99[4] = 0;
            LODWORD(v105) = 0;
            v109 = 0;
            *&v99[12] = 0;
            LODWORD(v103) = 0;
            LODWORD(v104) = 0;
            v38 = 1;
            v39 = 1;
            v98 = 1;
            *v99 = 1;
          }

          else
          {
            v74 = v102;
            *(v102 + 29) = v72;
            *(v74 + 30) = v73;
            sub_1001F0C48(&qword_100782BD8);
            v110 = 25;
            sub_10039BA34();
            v75 = v100;
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v100 = v75;
            if (v75)
            {
              (*(v7 + 8))(v104, v105);
              LODWORD(v105) = 0;
              *&v99[8] = 0;
              v109 = 0;
              LODWORD(v103) = 0;
              LODWORD(v104) = 0;
              v38 = 1;
              v39 = 1;
              v98 = 1;
              *v99 = 0x100000001;
            }

            else
            {
              *&v102[v101[30]] = v107;
              type metadata accessor for URL();
              LOBYTE(v107) = 26;
              sub_10039DE48(&qword_100781BB8, &type metadata accessor for URL);
              v76 = v100;
              KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
              v100 = v76;
              if (v76)
              {
                (*(v7 + 8))(v104, v105);
                LODWORD(v105) = 0;
                *&v99[8] = 0;
                v109 = 0;
                LODWORD(v103) = 0;
                LODWORD(v104) = 0;
                v38 = 1;
                v39 = 1;
                v98 = 0x100000001;
                *v99 = 0x100000001;
              }

              else
              {
                sub_1002321B0(*&v99[12], &v102[v101[29]]);
                LOBYTE(v107) = 27;
                v77 = v100;
                v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                v100 = v77;
                if (v77)
                {
                  (*(v7 + 8))(v104, v105);
                  *&v99[8] = 0;
                  v109 = 0;
                  LODWORD(v103) = 0;
                  LODWORD(v104) = 0;
                  v38 = 1;
                  v39 = 1;
                  v98 = 0x100000001;
                  *v99 = 0x100000001;
                  LODWORD(v105) = 1;
                }

                else
                {
                  v80 = &v102[v101[31]];
                  *v80 = v78;
                  v80[1] = v79;
                  v110 = 28;
                  sub_10039BADC();
                  v81 = v100;
                  KeyedDecodingContainer.decode<A>(_:forKey:)();
                  v100 = v81;
                  if (v81)
                  {
                    (*(v7 + 8))(v104, v105);
                    v109 = 0;
                    LODWORD(v103) = 0;
                    LODWORD(v104) = 0;
                    v38 = 1;
                    v39 = 1;
                    v98 = 0x100000001;
                    *v99 = 0x100000001;
                    LODWORD(v105) = 1;
                    *&v99[8] = 1;
                  }

                  else
                  {
                    v82 = v108;
                    v83 = &v102[v101[32]];
                    *v83 = v107;
                    *(v83 + 2) = v82;
                    sub_1001F0C48(&qword_100782BE8);
                    v110 = 29;
                    sub_10039BB30();
                    v84 = v100;
                    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                    v100 = v84;
                    if (v84)
                    {
                      (*(v7 + 8))(v104, v105);
                      LODWORD(v103) = 0;
                      LODWORD(v104) = 0;
                      v38 = 1;
                      v39 = 1;
                      v98 = 0x100000001;
                      *v99 = 0x100000001;
                      LODWORD(v105) = 1;
                      *&v99[8] = 1;
                      v109 = 1;
                    }

                    else
                    {
                      *&v102[v101[33]] = v107;
                      LOBYTE(v107) = 30;
                      v85 = v100;
                      v86 = KeyedDecodingContainer.decode(_:forKey:)();
                      v100 = v85;
                      if (v85)
                      {
                        (*(v7 + 8))(v104, v105);
                        LODWORD(v103) = 0;
                        LODWORD(v104) = 0;
                        v38 = 1;
                        v39 = 1;
                        v98 = 0x100000001;
                        *v99 = 0x100000001;
                        LODWORD(v105) = 1;
                        *&v99[8] = 0x100000001;
                        v109 = 1;
                      }

                      else
                      {
                        v88 = &v102[v101[34]];
                        *v88 = v86;
                        v88[1] = v87;
                        sub_1001F0C48(&qword_100782BF8);
                        v110 = 31;
                        sub_10039BC10();
                        v89 = v100;
                        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                        v100 = v89;
                        if (v89)
                        {
                          (*(v7 + 8))(v104, v105);
                          LODWORD(v104) = 0;
                          v38 = 1;
                          v39 = 1;
                          v98 = 0x100000001;
                          *v99 = 0x100000001;
                          LODWORD(v105) = 1;
                          *&v99[8] = 0x100000001;
                          v109 = 1;
                          LODWORD(v103) = 1;
                        }

                        else
                        {
                          *&v102[v101[35]] = v107;
                          sub_1001F0C48(&unk_100782C20);
                          v110 = 32;
                          sub_100006E3C(&qword_100782D20, &unk_100782C20);
                          v90 = v100;
                          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                          v100 = v90;
                          if (!v90)
                          {
                            *&v102[v101[40]] = v107;
                            v110 = 33;
                            sub_10039BC94();
                            v91 = v100;
                            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                            if (v91)
                            {
                              (*(v7 + 8))(v104, v105);
                              sub_10000710C(v106);
                              v93 = v102;

                              sub_1000032A8(&v93[v101[29]], &unk_1007809F0);
                            }

                            else
                            {
                              v102[v101[36]] = v107;
                              LOBYTE(v107) = 34;
                              v92 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                              v94 = &v102[v101[37]];
                              *v94 = v92;
                              v94[1] = v95;
                              LOBYTE(v107) = 35;
                              *&v102[v101[38]] = KeyedDecodingContainer.decode(_:forKey:)();
                              sub_1001F0C48(&qword_100782C10);
                              v110 = 36;
                              sub_10039BCE8();
                              KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                              (*(v7 + 8))(v104, v105);
                              v96 = v102;
                              *&v102[v101[39]] = v107;
                              sub_10039DD18(v96, v103, type metadata accessor for AppStoreMetadata);
                              sub_10000710C(v106);
                              return sub_10039DD80(v96, type metadata accessor for AppStoreMetadata);
                            }
                          }

                          (*(v7 + 8))(v104, v105);
                          v38 = 1;
                          v39 = 1;
                          v98 = 0x100000001;
                          *v99 = 0x100000001;
                          LODWORD(v105) = 1;
                          *&v99[8] = 0x100000001;
                          v109 = 1;
                          LODWORD(v103) = 1;
                          LODWORD(v104) = 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_10000710C(v106);
  v24 = v102;

  v25 = v101;

  if (v38)
  {

    if (v39)
    {
LABEL_6:

      if ((v98 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }
  }

  else if (v39)
  {
    goto LABEL_6;
  }

  if (!v98)
  {
LABEL_7:
    if (*v99)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:

  if (v99[0])
  {
LABEL_8:

    if ((v99[4] & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (!*&v99[4])
  {
LABEL_9:
    if (v105)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:

  if (v105)
  {
LABEL_10:
    result = sub_1000032A8(&v24[v25[29]], &unk_1007809F0);
    if ((v98 & 0x100000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (!HIDWORD(v98))
  {
LABEL_11:
    if (*&v99[8])
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:

  if (v99[8])
  {
LABEL_12:

    if ((v109 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (!v109)
  {
LABEL_13:
    if (*&v99[12])
    {
      goto LABEL_14;
    }

LABEL_27:
    if (!v103)
    {
LABEL_15:
      if (!v104)
      {
        return result;
      }
    }

    goto LABEL_28;
  }

LABEL_26:

  if ((v99[12] & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:

  if ((v103 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_28:

  if (v104)
  {
  }

  return result;
}