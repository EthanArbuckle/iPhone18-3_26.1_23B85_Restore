uint64_t sub_10116FE00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_10116FE78()
{
  result = qword_101A2BAE0;
  if (!qword_101A2BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BAE0);
  }

  return result;
}

unint64_t sub_10116FED0()
{
  result = qword_101A2BAE8;
  if (!qword_101A2BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BAE8);
  }

  return result;
}

unint64_t sub_10116FF28()
{
  result = qword_101A2BAF0;
  if (!qword_101A2BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BAF0);
  }

  return result;
}

id sub_10116FFA4()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.ScaffoldColumnStyle.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.ScaffoldColumnStyle.version.unsafeMutableAddressor()
{
  if (qword_1019F2998 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ScaffoldColumnStyle.version;
}

id static TSContentLanguage.Models.ScaffoldColumnStyle.version.getter()
{
  if (qword_1019F2998 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.ScaffoldColumnStyle.version;

  return v1;
}

double TSContentLanguage.Models.ScaffoldColumnStyle.init(name:identifier:parent:properties:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v18 = 0uLL;
  *&v19 = 0;
  *(&v19 + 1) = 768;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(v23, 0, 29);
  *&v15 = a1;
  *(&v15 + 1) = a2;
  *&v16 = a3;
  *(&v16 + 1) = a4;
  *&v17 = a5;
  *(&v17 + 1) = a6;
  sub_101144CFC(a7, &v18);
  v30 = v21;
  v31 = v22;
  v32[0] = v23[0];
  *(v32 + 13) = *(v23 + 13);
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v24 = v15;
  v25 = v16;
  v33[6] = v21;
  v33[7] = v22;
  v34[0] = v23[0];
  *(v34 + 13) = *(v23 + 13);
  v33[2] = v17;
  v33[3] = v18;
  v33[4] = v19;
  v33[5] = v20;
  v33[0] = v15;
  v33[1] = v16;
  sub_1011701D4(&v24, &v14);
  sub_10117020C(v33);
  v9 = v31;
  a8[6] = v30;
  a8[7] = v9;
  a8[8] = v32[0];
  *(a8 + 141) = *(v32 + 13);
  v10 = v27;
  a8[2] = v26;
  a8[3] = v10;
  v11 = v29;
  a8[4] = v28;
  a8[5] = v11;
  result = *&v24;
  v13 = v25;
  *a8 = v24;
  a8[1] = v13;
  return result;
}

unint64_t sub_10117023C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101170740(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10117026C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101170740(a1);
  *a2 = result;
  return result;
}

uint64_t sub_101170294(uint64_t a1)
{
  v2 = sub_1011711E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011702D0(uint64_t a1)
{
  v2 = sub_1011711E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.ScaffoldColumnStyle.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10117078C(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    a2[6] = v9[6];
    a2[7] = v5;
    a2[8] = v10[0];
    *(a2 + 141) = *(v10 + 13);
    v6 = v9[3];
    a2[2] = v9[2];
    a2[3] = v6;
    v7 = v9[5];
    a2[4] = v9[4];
    a2[5] = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ScaffoldColumnStyle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2BAF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  sub_100020E58(a1, a1[3]);
  sub_1011711E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v21) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v21) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v10 = v3[6];
  v11 = v3[8];
  v30 = v3[7];
  v31[0] = v11;
  *(v31 + 13) = *(v3 + 141);
  v12 = v3[4];
  v27[0] = v3[3];
  v27[1] = v12;
  v13 = v3[6];
  v15 = v3[3];
  v14 = v3[4];
  v28 = v3[5];
  v29 = v13;
  v24 = v10;
  v25 = v30;
  v26[0] = v3[8];
  *(v26 + 13) = *(v3 + 141);
  v21 = v15;
  v22 = v14;
  v23 = v28;
  v20 = 3;
  sub_101144C84(v27, v18);
  sub_100B2BC70();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v18[4] = v25;
  *v19 = v26[0];
  *&v19[13] = *(v26 + 13);
  v18[0] = v21;
  v18[1] = v22;
  v18[2] = v23;
  v18[3] = v24;
  sub_10000CAAC(v18, &qword_101A00900);
  LOBYTE(v17) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2998 != -1)
  {
    swift_once();
  }

  v17 = static TSContentLanguage.Models.ScaffoldColumnStyle.version;
  v16[7] = 5;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_101170740(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878E98, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10117078C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v57 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for CodingUserInfoKey();
  v55 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A006B8);
  v56 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v12 = a1[3];
  v82 = a1;
  sub_100020E58(a1, v12);
  sub_1011711E4();
  v13 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    v18 = v82;
LABEL_4:
    sub_100005070(v18);
    v74 = 0uLL;
    v75 = 0uLL;
    v76 = 0uLL;
    v77 = 0uLL;
    *&v78 = 0;
    *(&v78 + 1) = 768;
    memset(v79, 0, sizeof(v79));
    v80 = 0u;
    memset(v81, 0, 29);
    return sub_10117020C(&v74);
  }

  v54 = v5;
  v58 = v8;
  v14 = v57;
  LOBYTE(v74) = 4;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v11;
  if (v16)
  {
    if (v15 == 0xD000000000000035 && v16 == 0x800000010158AAD0)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v22[1] = 0;
        v22[2] = 0;
        *v22 = 0;
        swift_willThrow();
LABEL_14:
        (*(v56 + 8))(v17, v9);
        v18 = v82;
        goto LABEL_4;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v65) = 5;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v74;
  if (v74)
  {
    if (qword_1019F2998 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ScaffoldColumnStyle.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v23[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v24 = xmmword_101463530;
      *(v24 + 16) = 0;
      swift_willThrow();

      goto LABEL_14;
    }
  }

  sub_100020E58(v82, v82[3]);
  v25 = dispatch thunk of Decoder.userInfo.getter();
  *&v53 = sub_1007BB2AC(0, v25, 0, 0);
  *(&v53 + 1) = v26;

  sub_100020E58(v82, v82[3]);
  v27 = dispatch thunk of Decoder.userInfo.getter();
  *&v52 = sub_1007BB2AC(1, v27, 0, 0);
  *(&v52 + 1) = v28;

  sub_100020E58(v82, v82[3]);
  v29 = dispatch thunk of Decoder.userInfo.getter();
  *&v51 = sub_1007BB2AC(2, v29, 0, 0);
  *(&v51 + 1) = v30;

  sub_100020E58(v82, v82[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v73 = 3;
  sub_100B2BB74();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE9(v75) << 8 == 768)
  {

    (*(v56 + 8))(v17, v9);
    v69 = v78;
    v70[0] = v79[0];
    *(v70 + 13) = *(v79 + 13);
    v65 = v74;
    v66 = v75;
    v67 = v76;
    v68 = v77;
    sub_10000CAAC(&v65, &qword_101A00900);
    v31 = 0;
    v40 = 0;
    v41 = 0;
    v58 = 0;
    v54 = 0;
    v55 = 0;
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 768;
  }

  else
  {

    v41 = *(&v74 + 1);
    v31 = v74;
    v58 = v75;
    v54 = *(&v76 + 1);
    v55 = v76;
    v49 = *(&v77 + 1);
    v50 = v77;
    v47 = *(&v78 + 1);
    v48 = v78;
    v46 = *&v79[0];
    v44 = *(&v75 + 1);
    v45 = *(&v79[0] + 1);
    v43 = *&v79[1];
    v40 = DWORD2(v79[1]) | (BYTE12(v79[1]) << 32);
    (*(v56 + 8))(v17, v9);
  }

  v56 = v31;
  memset(v59, 0, sizeof(v59));
  v60 = 768;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  memset(v64, 0, sizeof(v64));
  sub_10000CAAC(v59, &qword_101A00900);
  v32 = v53;
  v65 = v53;
  v33 = v52;
  v66 = v52;
  v67 = v51;
  v34 = v41;
  *&v68 = v31;
  *(&v68 + 1) = v41;
  *&v69 = v58;
  *(&v69 + 1) = v44;
  *&v70[0] = v55;
  *(&v70[0] + 1) = v54;
  *&v70[1] = v50;
  *(&v70[1] + 1) = v49;
  *&v71 = v48;
  *(&v71 + 1) = v47;
  *v72 = v46;
  *&v72[8] = v45;
  *&v72[16] = v43;
  v35 = v40;
  v42 = HIDWORD(v40);
  v72[28] = BYTE4(v40);
  *&v72[24] = v40;
  sub_1011701D4(&v65, &v74);
  sub_100005070(v82);
  v74 = v32;
  v75 = v33;
  v76 = v51;
  *&v77 = v56;
  *(&v77 + 1) = v34;
  *&v78 = v58;
  *(&v78 + 1) = v44;
  *&v79[0] = v55;
  *(&v79[0] + 1) = v54;
  *&v79[1] = v50;
  *(&v79[1] + 1) = v49;
  *&v80 = v48;
  *(&v80 + 1) = v47;
  *&v81[0] = v46;
  *(&v81[0] + 1) = v45;
  *&v81[1] = v43;
  BYTE12(v81[1]) = v42;
  DWORD2(v81[1]) = v35;
  result = sub_10117020C(&v74);
  v36 = v71;
  v14[6] = v70[1];
  v14[7] = v36;
  v14[8] = *v72;
  *(v14 + 141) = *&v72[13];
  v37 = v68;
  v14[2] = v67;
  v14[3] = v37;
  v38 = v70[0];
  v14[4] = v69;
  v14[5] = v38;
  v39 = v66;
  *v14 = v65;
  v14[1] = v39;
  return result;
}

unint64_t sub_1011711E4()
{
  result = qword_101A2BB00;
  if (!qword_101A2BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB00);
  }

  return result;
}

unint64_t sub_101171238(uint64_t a1)
{
  result = sub_100B0F81C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_101171260(void *a1)
{
  a1[2] = sub_101171298();
  a1[3] = sub_1011712EC();
  result = sub_101171340();
  a1[4] = result;
  return result;
}

unint64_t sub_101171298()
{
  result = qword_101A2BB08;
  if (!qword_101A2BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB08);
  }

  return result;
}

unint64_t sub_1011712EC()
{
  result = qword_101A2BB10;
  if (!qword_101A2BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB10);
  }

  return result;
}

unint64_t sub_101171340()
{
  result = qword_101A2BB18;
  if (!qword_101A2BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB18);
  }

  return result;
}

unint64_t sub_1011713B8()
{
  result = qword_101A2BB20;
  if (!qword_101A2BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB20);
  }

  return result;
}

unint64_t sub_101171410()
{
  result = qword_101A2BB28;
  if (!qword_101A2BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB28);
  }

  return result;
}

unint64_t sub_101171468()
{
  result = qword_101A2BB30;
  if (!qword_101A2BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB30);
  }

  return result;
}

id sub_1011714E4()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.ScaffoldCharacterStyle.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.ScaffoldCharacterStyle.version.unsafeMutableAddressor()
{
  if (qword_1019F29A0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ScaffoldCharacterStyle.version;
}

id static TSContentLanguage.Models.ScaffoldCharacterStyle.version.getter()
{
  if (qword_1019F29A0 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.ScaffoldCharacterStyle.version;

  return v1;
}

uint64_t sub_101171610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A006A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101171688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A006A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *TSContentLanguage.Models.ScaffoldCharacterStyle.init(name:identifier:parent:properties:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1005BC71C(__src);
  memcpy(&v19[6], __src, 0x37CuLL);
  v19[0] = v14;
  v19[1] = v12;
  v19[2] = v10;
  v19[3] = v8;
  v19[4] = v6;
  v19[5] = v4;
  sub_101171688(v2, &v19[6]);
  memcpy(__dst, v19, 0x3ACuLL);
  memcpy(v22, v19, 0x3ACuLL);
  sub_1011717FC(__dst, &v18);
  sub_101171834(v22);
  return memcpy(v16, __dst, 0x3ACuLL);
}

unint64_t sub_101171864@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011723D4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_101171894@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011723D4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011718BC(uint64_t a1)
{
  v2 = sub_101172D78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011718F8(uint64_t a1)
{
  v2 = sub_101172D78();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *TSContentLanguage.Models.ScaffoldCharacterStyle.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_101172420(a1);
  if (!v2)
  {
    return memcpy(a2, v5, 0x3ACuLL);
  }

  return result;
}

uint64_t TSContentLanguage.Models.ScaffoldCharacterStyle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2BB38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_100020E58(a1, a1[3]);
  sub_101172D78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[0] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12[0] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v12[0] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  memcpy(v13, (v3 + 48), 0x37CuLL);
  memcpy(v12, (v3 + 48), sizeof(v12));
  v13[919] = 3;
  sub_101171610(v13, v11);
  sub_10115CE3C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v11, v12, 0x37CuLL);
  sub_10000CAAC(v11, &qword_101A006A0);
  LOBYTE(v10) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F29A0 != -1)
  {
    swift_once();
  }

  v10 = static TSContentLanguage.Models.ScaffoldCharacterStyle.version;
  v13[918] = 5;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.ScaffoldCharacterStyle.isEquivalent(to:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1[1];
  v5 = v2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *v1 == *v2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = v1[3];
  v8 = v3[3];
  if (v7)
  {
    if (!v8 || (v1[2] != v3[2] || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = v1[5];
  v10 = v3[5];
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (!v10 || (v1[4] != v3[4] || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  memcpy(v21, v1 + 6, 0x37CuLL);
  memcpy(v20, v3 + 6, 0x37CuLL);
  memcpy(v18, v1 + 6, 0x37CuLL);
  memcpy(&v18[896], v3 + 6, 0x37CuLL);
  memcpy(v19, v1 + 6, 0x37CuLL);
  if (sub_1007CE3F8(v19) != 1)
  {
    memcpy(__src, v1 + 6, 0x37CuLL);
    memcpy(v17, v3 + 6, 0x37CuLL);
    if (sub_1007CE3F8(v17) != 1)
    {
      memcpy(__dst, __src, 0x37CuLL);
      memcpy(v13, v3 + 6, 0x37CuLL);
      memcpy(v22, v3 + 6, 0x37CuLL);
      sub_101171610(v21, v14);
      sub_101171610(v20, v14);
      sub_101171610(__src, v14);
      v11 = TSContentLanguage.Models.CharacterProperties.isEquivalent(to:)(v22);
      sub_10000CAAC(v13, &qword_101A006A0);
      sub_10000CAAC(__src, &qword_101A006A0);
      memcpy(v14, v1 + 6, 0x37CuLL);
      sub_10000CAAC(v14, &qword_101A006A0);
      return v11;
    }

    goto LABEL_28;
  }

  memcpy(__dst, v3 + 6, 0x37CuLL);
  if (sub_1007CE3F8(__dst) != 1)
  {
LABEL_28:
    memcpy(__dst, v18, 0x6FCuLL);
    sub_101171610(v21, v22);
    sub_101171610(v20, v22);
    sub_10000CAAC(__dst, &qword_101A006A8);
    return 0;
  }

  memcpy(v22, v1 + 6, 0x37CuLL);
  sub_101171610(v21, v17);
  sub_101171610(v20, v17);
  sub_10000CAAC(v22, &qword_101A006A0);
  return 1;
}

BOOL sub_101172054(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x3ACuLL);
  memcpy(__dst, a2, sizeof(__dst));
  return _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldCharacterStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v4);
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldCharacterStyleV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v5 = v1[1];
  v6 = v3[1];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *v1 == *v3 && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = v4[3];
  v9 = v3[3];
  if (v8)
  {
    if (!v9 || (v4[2] != v3[2] || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = v4[5];
  v11 = v3[5];
  if (v10)
  {
    if (!v11 || (v4[4] != v3[4] || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  memcpy(v21, v4 + 6, 0x37CuLL);
  memcpy(v20, v3 + 6, 0x37CuLL);
  memcpy(v18, v4 + 6, 0x37CuLL);
  memcpy(&v18[896], v3 + 6, 0x37CuLL);
  memcpy(v19, v4 + 6, 0x37CuLL);
  if (sub_1007CE3F8(v19) != 1)
  {
    memcpy(v16, v3 + 6, 0x37CuLL);
    if (sub_1007CE3F8(v16) == 1)
    {
      goto LABEL_28;
    }

    memcpy(v14, v3 + 6, 0x37CuLL);
    memcpy(__dst, v3 + 6, 0x37CuLL);
    memcpy(v22, v4 + 6, 0x37CuLL);
    sub_101171610(v21, v15);
    sub_101171610(v20, v15);
    v13 = _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v22);
    sub_10000CAAC(v14, &qword_101A006A0);
    memcpy(v15, v4 + 6, 0x37CuLL);
    sub_10000CAAC(v15, &qword_101A006A0);
    return v13;
  }

  memcpy(__dst, v3 + 6, 0x37CuLL);
  if (sub_1007CE3F8(__dst) != 1)
  {
LABEL_28:
    memcpy(__dst, v18, 0x6FCuLL);
    sub_101171610(v21, v22);
    sub_101171610(v20, v22);
    sub_10000CAAC(__dst, &qword_101A006A8);
    return 0;
  }

  memcpy(v22, v4 + 6, 0x37CuLL);
  sub_101171610(v21, v16);
  sub_101171610(v20, v16);
  sub_10000CAAC(v22, &qword_101A006A0);
  return 1;
}

unint64_t sub_1011723D4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878F48, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

void *sub_101172420(uint64_t a1)
{
  __chkstk_darwin(a1);
  v52 = v1;
  v3 = v2;
  v49 = v4;
  v5 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for CodingUserInfoKey();
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_101A006B0);
  v51 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  sub_1005BC71C(v59);
  memcpy(v58, v59, sizeof(v58));
  v14 = v3[3];
  v53 = v3;
  sub_100020E58(v3, v14);
  sub_101172D78();
  v15 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_11;
  }

  v48 = v7;
  v52 = v10;
  v16 = v51;
  LOBYTE(v57[0]) = 4;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = v13;
  if (v18)
  {
    if (v17 == 0xD000000000000038 && v18 == 0x800000010158AD20)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v21[1] = 0;
        v21[2] = 0;
        *v21 = 0;
        swift_willThrow();
        (*(v16 + 8))(v47, v11);
LABEL_11:
        sub_100005070(v53);
        memset(v57, 0, 48);
        memcpy(&v57[6], v58, 0x37CuLL);
        return sub_101171834(v57);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v55[0]) = 5;
  sub_100969804(&qword_101A00400);
  v22 = v47;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v57[0];
  if (v57[0])
  {
    if (qword_1019F29A0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ScaffoldCharacterStyle.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v24[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v25 = xmmword_101463530;
      *(v25 + 16) = 0;
      swift_willThrow();

      (*(v16 + 8))(v22, v11);
      goto LABEL_11;
    }

    v46 = v11;
  }

  else
  {
    v46 = v11;
  }

  sub_100020E58(v53, v53[3]);
  v26 = dispatch thunk of Decoder.userInfo.getter();
  v27 = sub_1007BB2D4(0, v26, 0, 0);
  v29 = v28;
  v45 = v27;

  sub_100020E58(v53, v53[3]);
  v30 = dispatch thunk of Decoder.userInfo.getter();
  v31 = sub_1007BB2D4(1, v30, 0, 0);
  v42 = v32;
  v44 = v31;

  sub_100020E58(v53, v53[3]);
  v43 = dispatch thunk of Decoder.userInfo.getter();
  v33 = sub_1007BB2D4(2, v43, 0, 0);
  v35 = v34;

  v36 = v53[4];
  v41 = v53[3];
  v43 = v36;
  sub_100020E58(v53, v41);
  v43 = dispatch thunk of Decoder.userInfo.getter();
  v59[919] = 3;
  sub_10115CDE8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(v55, v57, 0x37CuLL);
  v37 = (v16 + 8);
  if (sub_1007CE3F8(v55) == 1)
  {

    (*v37)(v47, v46);
    memcpy(v54, v57, 0x37CuLL);
    sub_10000CAAC(v54, &qword_101A006A0);
    memcpy(v56, v59, sizeof(v56));
  }

  else
  {

    memcpy(v56, v57, sizeof(v56));
    (*v37)(v47, v46);
  }

  v38 = v45;
  v39 = v42;
  memcpy(v54, v58, 0x37CuLL);
  sub_10000CAAC(v54, &qword_101A006A0);
  v55[0] = v38;
  v55[1] = v29;
  v40 = v44;
  v55[2] = v44;
  v55[3] = v39;
  v55[4] = v33;
  v55[5] = v35;
  memcpy(&v55[6], v56, 0x37CuLL);
  sub_1011717FC(v55, v57);
  sub_100005070(v53);
  v57[0] = v38;
  v57[1] = v29;
  v57[2] = v40;
  v57[3] = v39;
  v57[4] = v33;
  v57[5] = v35;
  memcpy(&v57[6], v56, 0x37CuLL);
  sub_101171834(v57);
  return memcpy(v49, v55, 0x3ACuLL);
}

unint64_t sub_101172D78()
{
  result = qword_101A2BB40;
  if (!qword_101A2BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB40);
  }

  return result;
}

unint64_t sub_101172DCC(uint64_t a1)
{
  result = sub_100B0F57C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_101172DF4(void *a1)
{
  a1[2] = sub_101172E2C();
  a1[3] = sub_101172E80();
  result = sub_101172ED4();
  a1[4] = result;
  return result;
}

unint64_t sub_101172E2C()
{
  result = qword_101A2BB48;
  if (!qword_101A2BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB48);
  }

  return result;
}

unint64_t sub_101172E80()
{
  result = qword_101A2BB50;
  if (!qword_101A2BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB50);
  }

  return result;
}

unint64_t sub_101172ED4()
{
  result = qword_101A2BB58;
  if (!qword_101A2BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB58);
  }

  return result;
}

uint64_t sub_101172F30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 940))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_101172F8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 936) = 0;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 940) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 940) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1011730FC()
{
  result = qword_101A2BB60;
  if (!qword_101A2BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB60);
  }

  return result;
}

unint64_t sub_101173154()
{
  result = qword_101A2BB68;
  if (!qword_101A2BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB68);
  }

  return result;
}

unint64_t sub_1011731AC()
{
  result = qword_101A2BB70;
  if (!qword_101A2BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB70);
  }

  return result;
}

uint64_t *TSContentLanguage.Models.TabStopType.version.unsafeMutableAddressor()
{
  if (qword_1019F29A8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.TabStopType.version;
}

Swift::Int sub_1011732B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101173398()
{
  String.hash(into:)();
}

Swift::Int sub_101173468()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_101173548@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101174128(*a1);
  *a2 = result;
  return result;
}

void sub_101173578(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F697469736F70;
  v5 = 0xE600000000000000;
  v6 = 0x72656461656CLL;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684957547;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_101173618()
{
  v1 = *v0;
  v2 = 0x6E6F697469736F70;
  v3 = 0x72656461656CLL;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684957547;
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

unint64_t sub_1011736B4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101174128(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011736DC(uint64_t a1)
{
  v2 = sub_101174730();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101173718(uint64_t a1)
{
  v2 = sub_101174730();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.TabStopType.encode(to:)(void *a1, int a2)
{
  v10 = a2;
  v4 = sub_1005B981C(&qword_101A2BB78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_100020E58(a1, a1[3]);
  sub_101174730();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v10;
    v15 = 1;
    sub_101174784();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F29A8 != -1)
    {
      swift_once();
    }

    v12 = static TSContentLanguage.Models.TabStopType.version;
    v11 = 4;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TSContentLanguage.Models.TabStopType.isEquivalent(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  result = sub_1007C87EC(a8, a7);
  if (result)
  {
    if (a4 == 4)
    {
      if (a1 != 4)
      {
        return 0;
      }
    }

    else if (a1 == 4 || (sub_100B6994C(a4, a1) & 1) == 0)
    {
      return 0;
    }

    result = (a6 | a3) == 0;
    if (a6 && a3)
    {
      if (a5 == a2 && a6 == a3)
      {
        return 1;
      }

      else
      {

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  return result;
}

uint64_t sub_101173B10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_101174174(a1);
  if (!v2)
  {
    *a2 = v7;
    *(a2 + 8) = result;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
  }

  return result;
}

void *TSContentLanguage.Models.TabStopType.TabAlignmentKindType.version.unsafeMutableAddressor()
{
  if (qword_1019F29B0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.TabStopType.TabAlignmentKindType.version;
}

uint64_t TSContentLanguage.Models.TabStopType.TabAlignmentKindType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7265746E6563;
  v2 = 1952867692;
  if (a1 != 2)
  {
    v2 = 0x7468676972;
  }

  if (a1)
  {
    v1 = 0x6C616D69636564;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_101173CEC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101173DA0()
{
  String.hash(into:)();
}

Swift::Int sub_101173E40()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_101173EF0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO11TabStopTypeV0e13AlignmentKindG0O8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_101173F20(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x7265746E6563;
  v4 = 0xE400000000000000;
  v5 = 1952867692;
  if (*v1 != 2)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C616D69636564;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO11TabStopTypeV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  if (a7 != a8)
  {
    return 0;
  }

  if (a1 == 4)
  {
    if (a4 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (a4 == 4)
    {
      return 0;
    }

    v8 = a2;
    v9 = a6;
    v10 = a5;
    v11 = a3;
    v12 = sub_100B6994C(a1, a4);
    a2 = v8;
    a3 = v11;
    a5 = v10;
    a6 = v9;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    return a6 && (a2 == a5 && a3 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !a6;
}

unint64_t sub_101174128(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878FF8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_101174174(void *a1)
{
  v3 = sub_1005B981C(&qword_101A00690);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = a1[3];
  sub_100020E58(a1, v7);
  sub_101174730();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_28;
  }

  LOBYTE(v33) = 3;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v9)
  {
    if (v8 == 0xD00000000000002DLL && v9 == 0x800000010158A760)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v11[1] = 0;
        v11[2] = 0;
        *v11 = 0;
LABEL_26:
        swift_willThrow();
        goto LABEL_27;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v36) = 4;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v33;
  if (v33)
  {
    if (qword_1019F29A8 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.TabStopType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v12[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v13 = xmmword_101463530;
      *(v13 + 16) = 0;
      swift_willThrow();

LABEL_27:
      (*(v4 + 8))(v6, v3);
LABEL_28:
      sub_100005070(a1);
      return v7;
    }
  }

  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v37 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v34)
  {
    v32 = v3;
    v14 = KeyedDecodingContainer.codingPath.getter();
    v7 = *(v14 + 16);
    if (v7)
    {
      v31 = v4;
      v36 = _swiftEmptyArrayStorage;
      sub_100034080(0, v7, 0);
      v15 = v36;
      v16 = v14 + 32;
      do
      {
        sub_10000630C(v16, &v33);
        sub_100020E58(&v33, v35);
        v17 = dispatch thunk of CodingKey.stringValue.getter();
        v19 = v18;
        sub_100005070(&v33);
        v36 = v15;
        v21 = v15[2];
        v20 = v15[3];
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v29 = v19;
          v30 = v21 + 1;
          sub_100034080((v20 > 1), v21 + 1, 1);
          v19 = v29;
          v22 = v30;
          v15 = v36;
        }

        v15[2] = v22;
        v23 = &v15[2 * v21];
        v23[4] = v17;
        v23[5] = v19;
        v16 += 40;
        --v7;
      }

      while (v7);

      v4 = v31;
    }

    else
    {

      v15 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v25 = 0x6E6F697469736F70;
    v25[1] = 0xE800000000000000;
    v25[2] = v15;
    swift_willThrow();
    v3 = v32;
    goto LABEL_26;
  }

  sub_100020E58(a1, a1[3]);
  v24 = dispatch thunk of Decoder.userInfo.getter();
  v7 = sub_1007BB2FC(1, v24, 0, 0);

  sub_100020E58(a1, a1[3]);
  v27 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007BB5F8(2, v27, 0, 0);
  (*(v4 + 8))(v6, v3);

  sub_100005070(a1);
  return v7;
}

unint64_t sub_101174730()
{
  result = qword_101A2BB80;
  if (!qword_101A2BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB80);
  }

  return result;
}

unint64_t sub_101174784()
{
  result = qword_101A2BB88;
  if (!qword_101A2BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB88);
  }

  return result;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO11TabStopTypeV0e13AlignmentKindG0O8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879090, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_101174824(uint64_t a1)
{
  result = sub_100B0FCB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10117488C()
{
  result = qword_101A2BB90;
  if (!qword_101A2BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB90);
  }

  return result;
}

unint64_t sub_1011748E0()
{
  result = qword_101A2BB98;
  if (!qword_101A2BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BB98);
  }

  return result;
}

unint64_t sub_101174938()
{
  result = qword_101A2BBA0;
  if (!qword_101A2BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BBA0);
  }

  return result;
}

unint64_t sub_10117498C(uint64_t a1)
{
  *(a1 + 8) = sub_1011749BC();
  result = sub_101174A10();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1011749BC()
{
  result = qword_101A2BBA8;
  if (!qword_101A2BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BBA8);
  }

  return result;
}

unint64_t sub_101174A10()
{
  result = qword_101A2BBB0;
  if (!qword_101A2BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BBB0);
  }

  return result;
}

unint64_t sub_101174A64(uint64_t a1)
{
  result = sub_100B0FC60();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_101174ACC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_101174B54()
{
  result = qword_101A2BBB8;
  if (!qword_101A2BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BBB8);
  }

  return result;
}

unint64_t sub_101174BAC()
{
  result = qword_101A2BBC0;
  if (!qword_101A2BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BBC0);
  }

  return result;
}

unint64_t sub_101174C04()
{
  result = qword_101A2BBC8;
  if (!qword_101A2BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BBC8);
  }

  return result;
}

id sub_101174C80()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.CharacterStyleType.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.CharacterStyleType.version.unsafeMutableAddressor()
{
  if (qword_1019F29B8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.CharacterStyleType.version;
}

id static TSContentLanguage.Models.CharacterStyleType.version.getter()
{
  if (qword_1019F29B8 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.CharacterStyleType.version;

  return v1;
}

void *TSContentLanguage.Models.CharacterStyleType.init(marks:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(v4, __src, 0x37CuLL);
  sub_101174DF0(v4);
  return memcpy(a2, v4, 0x3ADuLL);
}

void *TSContentLanguage.Models.CharacterStyleType.init(style:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(v4, __src, 0x3ACuLL);
  sub_101174E48(v4);
  return memcpy(a2, v4, 0x3ADuLL);
}

void *TSContentLanguage.Models.CharacterStyleType.init<A>(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (swift_dynamicCast())
  {
    memcpy(v8, __src, 0x37CuLL);
    sub_101174DF0(v8);
  }

  else
  {
    if (!swift_dynamicCast())
    {
      sub_1005BC664(v11);
      goto LABEL_7;
    }

    memcpy(v8, __src, 0x3ACuLL);
    sub_101174E48(v8);
  }

  memcpy(__dst, v8, 0x3ADuLL);
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, v6);
  memcpy(v11, __dst, 0x3ADuLL);
LABEL_7:
  (*(*(a2 - 8) + 8))(a1, a2);
  return memcpy(a3, v11, 0x3ADuLL);
}

unint64_t sub_101174F74@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101175788(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_101174FA4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101175788(a1);
  *a2 = result;
  return result;
}

uint64_t sub_101174FCC(uint64_t a1)
{
  v2 = sub_101176274();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101175008(uint64_t a1)
{
  v2 = sub_101176274();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *TSContentLanguage.Models.CharacterStyleType.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1011757D4(a1);
  if (!v2)
  {
    return memcpy(a2, v5, 0x3ADuLL);
  }

  return result;
}

uint64_t TSContentLanguage.Models.CharacterStyleType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2BBD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v17 - v10;
  memcpy(v18, v3, 0x3ADuLL);
  v12 = sub_10067EF20(v18);
  if (v12)
  {
    if (v12 == 1)
    {
      v14 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v18, v13);
      memcpy(v20, v14, sizeof(v20));
      sub_100020E58(a1, a1[3]);
      sub_101176274();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      memcpy(v17, v20, 0x3ACuLL);
      v21 = 1;
      sub_101172E80();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v17[0]) = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (qword_1019F29B8 != -1)
        {
          swift_once();
        }

        v17[0] = static TSContentLanguage.Models.CharacterStyleType.version;
        v21 = 3;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      sub_10002A948(v17, v17[3]);
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      return sub_100005070(v17);
    }
  }

  else
  {
    v16 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v18, v13);
    memcpy(v19, v16, sizeof(v19));
    sub_100020E58(a1, a1[3]);
    sub_101176274();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    memcpy(v17, v19, 0x37CuLL);
    v21 = 0;
    sub_10115CE3C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v2)
    {
      LOBYTE(v17[0]) = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F29B8 != -1)
      {
        swift_once();
      }

      v17[0] = static TSContentLanguage.Models.CharacterStyleType.version;
      v21 = 3;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    return (*(v6 + 8))(v11, v5);
  }
}

BOOL static TSContentLanguage.Models.CharacterStyleType.__derived_enum_equals(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x3ADuLL);
  v3 = sub_10067EF20(__dst);
  if (!v3)
  {
    v11 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, *&v4);
    memcpy(v19, v11, 0x37CuLL);
    memcpy(v16, a2, 0x3ADuLL);
    if (!sub_10067EF20(v16))
    {
      v14 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v16, *&v12);
      memcpy(v17, v14, 0x37CuLL);
      return _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v19);
    }

    return 0;
  }

  if (v3 != 1)
  {
    memcpy(v16, a2, 0x3ADuLL);
    return sub_10067EF20(v16) == 2;
  }

  v6 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, *&v4);
  memcpy(v19, v6, 0x3ACuLL);
  memcpy(v16, a2, 0x3ADuLL);
  if (sub_10067EF20(v16) != 1)
  {
    return 0;
  }

  v9 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v16, *&v7);
  memcpy(v17, v9, sizeof(v17));
  return _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldCharacterStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v19);
}

BOOL sub_101175654(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x3ADuLL);
  v3 = sub_10067EF20(__dst);
  if (!v3)
  {
    v11 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, *&v4);
    memcpy(v17, v11, 0x37CuLL);
    memcpy(v16, a2, 0x3ADuLL);
    if (!sub_10067EF20(v16))
    {
      v14 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v16, *&v12);
      memcpy(v18, v14, 0x37CuLL);
      return _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v17);
    }

    return 0;
  }

  if (v3 != 1)
  {
    memcpy(v16, a2, 0x3ADuLL);
    return sub_10067EF20(v16) == 2;
  }

  v6 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, *&v4);
  memcpy(v17, v6, 0x3ACuLL);
  memcpy(v16, a2, 0x3ADuLL);
  if (sub_10067EF20(v16) != 1)
  {
    return 0;
  }

  v9 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v16, *&v7);
  memcpy(v18, v9, sizeof(v18));
  return _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldCharacterStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v17);
}

unint64_t sub_101175788(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879110, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *sub_1011757D4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v43 = v1;
  v3 = v2;
  v40 = v4;
  v5 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v34 - v8;
  v9 = type metadata accessor for CodingUserInfoKey();
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = sub_1005B981C(&qword_101A2BC10);
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = v3[3];
  v44 = v3;
  sub_100020E58(v3, v18);
  sub_101176274();
  v19 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    v20 = v44;
    goto LABEL_13;
  }

  v21 = v41;
  v43 = v14;
  v36 = v11;
  v37 = v9;
  LOBYTE(v48[0]) = 2;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v44;
  if (!v23)
  {
    goto LABEL_11;
  }

  if (v22 == 0xD000000000000034 && v23 == 0x800000010158A2A0)
  {

    goto LABEL_11;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
LABEL_11:
    type metadata accessor for TSCLVersion();
    LOBYTE(v47[0]) = 3;
    sub_100969804(&qword_101A00400);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v48[0];
    if (v48[0])
    {
      if (qword_1019F29B8 != -1)
      {
        swift_once();
      }

      if (*(static TSContentLanguage.Models.CharacterStyleType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v30[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
      {
        sub_1007C8648();
        swift_allocError();
        *v31 = xmmword_101463530;
        *(v31 + 16) = 0;
        swift_willThrow();

        goto LABEL_12;
      }
    }

    v33 = v20[3];
    v35 = v20[4];
    sub_100020E58(v20, v33);
    v35 = dispatch thunk of Decoder.userInfo.getter();
    v50 = 0;
    sub_10115CDE8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    memcpy(v46, v47, 0x37CuLL);
    if (sub_1007CE3F8(v46) == 1)
    {
      v43 = v17;

      memcpy(v48, v47, 0x37CuLL);
      sub_10000CAAC(v48, &qword_101A006A0);
      sub_100020E58(v20, v20[3]);
      dispatch thunk of Decoder.userInfo.getter();
      v50 = 1;
      sub_101172E2C();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      memcpy(v46, v47, 0x3ACuLL);
      if (sub_10114B1FC(v46) == 1)
      {

        (*(v21 + 8))(v43, v15);
        memcpy(v48, v47, 0x3ACuLL);
        sub_10000CAAC(v48, &qword_101A2BC18);
        goto LABEL_25;
      }

      memcpy(v45, v47, sizeof(v45));
      (*(v21 + 8))(v43, v15);
      memcpy(v48, v45, 0x3ACuLL);
      sub_101174E48(v48);
    }

    else
    {

      memcpy(v45, v47, 0x37CuLL);
      (*(v21 + 8))(v17, v15);
      memcpy(v48, v45, 0x37CuLL);
      sub_101174DF0(v48);
    }

    memcpy(v49, v48, sizeof(v49));
    goto LABEL_18;
  }

  sub_1007C8648();
  swift_allocError();
  v26[1] = 0;
  v26[2] = 0;
  *v26 = 0;
  swift_willThrow();
LABEL_12:
  (*(v21 + 8))(v17, v15);
LABEL_13:
  sub_100020E58(v20, v20[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  sub_100020E58(v47, v47[3]);
  if (dispatch thunk of SingleValueDecodingContainer.decode(_:)() == 1701736302 && v27 == 0xE400000000000000)
  {

LABEL_17:
    sub_101176724(v48);
    sub_100005070(v47);
    memcpy(v49, v48, sizeof(v49));
LABEL_18:
    sub_100005070(v20);
    return memcpy(v40, v49, 0x3ADuLL);
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_17;
  }

  sub_100005070(v47);
LABEL_25:
  sub_1007C8648();
  swift_allocError();
  *v32 = xmmword_101478600;
  *(v32 + 16) = 0;
  swift_willThrow();
  return sub_100005070(v20);
}

unint64_t sub_101176274()
{
  result = qword_101A2BBD8;
  if (!qword_101A2BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BBD8);
  }

  return result;
}

unint64_t sub_1011762C8(uint64_t a1)
{
  *(a1 + 8) = sub_1011762F8();
  result = sub_10117634C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1011762F8()
{
  result = qword_101A2BBE0;
  if (!qword_101A2BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BBE0);
  }

  return result;
}

unint64_t sub_10117634C()
{
  result = qword_101A2BBE8;
  if (!qword_101A2BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BBE8);
  }

  return result;
}

unint64_t sub_1011763A0(void *a1)
{
  a1[2] = sub_101148A38();
  a1[3] = sub_1011485EC();
  result = sub_1011763D8();
  a1[4] = result;
  return result;
}

unint64_t sub_1011763D8()
{
  result = qword_101A2BBF0;
  if (!qword_101A2BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BBF0);
  }

  return result;
}

uint64_t sub_101176434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 941))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 940);
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

uint64_t sub_10117647C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 940) = 0;
    *(result + 936) = 0;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 941) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 941) = 0;
    }

    if (a2)
    {
      *(result + 940) = -a2;
    }
  }

  return result;
}

void sub_1011765BC(uint64_t a1, unsigned int a2)
{
  if (a2 >= 2)
  {
    *a1 = a2 - 2;
    bzero((a1 + 8), 0x3A4uLL);
    LOBYTE(a2) = 2;
  }

  *(a1 + 940) = a2;
}

unint64_t sub_101176620()
{
  result = qword_101A2BBF8;
  if (!qword_101A2BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BBF8);
  }

  return result;
}

unint64_t sub_101176678()
{
  result = qword_101A2BC00;
  if (!qword_101A2BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC00);
  }

  return result;
}

unint64_t sub_1011766D0()
{
  result = qword_101A2BC08;
  if (!qword_101A2BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC08);
  }

  return result;
}

id sub_101176784()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.ScaffoldParagraphStyle.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.ScaffoldParagraphStyle.version.unsafeMutableAddressor()
{
  if (qword_1019F29C0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ScaffoldParagraphStyle.version;
}

id static TSContentLanguage.Models.ScaffoldParagraphStyle.version.getter()
{
  if (qword_1019F29C0 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.ScaffoldParagraphStyle.version;

  return v1;
}

void *TSContentLanguage.Models.ScaffoldParagraphStyle.init(name:identifier:parent:properties:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1005BC74C(__src);
  memcpy(&v19[6], __src, 0x594uLL);
  v19[0] = v14;
  v19[1] = v12;
  v19[2] = v10;
  v19[3] = v8;
  v19[4] = v6;
  v19[5] = v4;
  sub_1011775EC(v2, &v19[6]);
  memcpy(v21, v19, 0x5C4uLL);
  memcpy(v22, v19, 0x5C4uLL);
  sub_10117765C(v21, v18);
  sub_101177694(v22);
  return memcpy(v16, v21, 0x5C4uLL);
}

unint64_t sub_1011769D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011776C4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_101176A00@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011776C4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_101176A28(uint64_t a1)
{
  v2 = sub_1011780AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101176A64(uint64_t a1)
{
  v2 = sub_1011780AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *TSContentLanguage.Models.ScaffoldParagraphStyle.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_101177710(a1);
  if (!v2)
  {
    return memcpy(a2, __src, 0x5C4uLL);
  }

  return result;
}

uint64_t TSContentLanguage.Models.ScaffoldParagraphStyle.encode(to:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v1;
  v5 = v4;
  v6 = sub_1005B981C(&qword_101A2BC20);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100020E58(v5, v5[3]);
  sub_1011780AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[0] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v14[0] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v14[0] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  memcpy(v15, (v3 + 48), 0x594uLL);
  memcpy(v14, (v3 + 48), sizeof(v14));
  v15[1455] = 3;
  sub_10117757C(v15, v13);
  sub_101152C88();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v13, v14, 0x594uLL);
  sub_10000CAAC(v13, &qword_101A2B798);
  LOBYTE(v12) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F29C0 != -1)
  {
    swift_once();
  }

  v12 = static TSContentLanguage.Models.ScaffoldParagraphStyle.version;
  v15[1454] = 5;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t TSContentLanguage.Models.ScaffoldParagraphStyle.isEquivalent(to:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1[1];
  v5 = v2[1];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_29;
    }

    v6 = *v1 == *v2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v5)
  {
    goto LABEL_29;
  }

  v7 = v1[3];
  v8 = v3[3];
  if (v7)
  {
    if (!v8 || (v1[2] != v3[2] || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v8)
  {
    goto LABEL_29;
  }

  v9 = v1[5];
  v10 = v3[5];
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_24;
    }

LABEL_29:
    v11 = 0;
    return v11 & 1;
  }

  if (!v10 || (v1[4] != v3[4] || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_24:
  memcpy(v21, v1 + 6, 0x594uLL);
  memcpy(v20, v3 + 6, 0x594uLL);
  memcpy(v18, v1 + 6, 0x594uLL);
  memcpy(&v18[1432], v3 + 6, 0x594uLL);
  memcpy(v19, v1 + 6, 0x594uLL);
  if (sub_1011532E0(v19) != 1)
  {
    memcpy(v16, v1 + 6, 0x594uLL);
    memcpy(v17, v3 + 6, 0x594uLL);
    if (sub_1011532E0(v17) != 1)
    {
      memcpy(__dst, v16, 0x594uLL);
      memcpy(v13, v3 + 6, 0x594uLL);
      memcpy(v22, v3 + 6, 0x594uLL);
      sub_10117757C(v21, v14);
      sub_10117757C(v20, v14);
      sub_10117757C(v16, v14);
      v11 = TSContentLanguage.Models.ParagraphProperties.isEquivalent(to:)(v22);
      sub_10000CAAC(v13, &qword_101A2B798);
      sub_10000CAAC(v16, &qword_101A2B798);
      memcpy(v14, v1 + 6, 0x594uLL);
      sub_10000CAAC(v14, &qword_101A2B798);
      return v11 & 1;
    }

    goto LABEL_28;
  }

  memcpy(__dst, v3 + 6, 0x594uLL);
  if (sub_1011532E0(__dst) != 1)
  {
LABEL_28:
    memcpy(__dst, v18, 0xB2CuLL);
    sub_10117757C(v21, v22);
    sub_10117757C(v20, v22);
    sub_10000CAAC(__dst, &qword_101A2BC30);
    goto LABEL_29;
  }

  memcpy(v22, v1 + 6, 0x594uLL);
  sub_10117757C(v21, v17);
  sub_10117757C(v20, v17);
  sub_10000CAAC(v22, &qword_101A2B798);
  v11 = 1;
  return v11 & 1;
}

BOOL sub_1011771E4(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x5C4uLL);
  memcpy(__dst, a2, sizeof(__dst));
  return _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldParagraphStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v4);
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldParagraphStyleV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v5 = v1[1];
  v6 = v3[1];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *v1 == *v3 && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = v4[3];
  v9 = v3[3];
  if (v8)
  {
    if (!v9 || (v4[2] != v3[2] || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = v4[5];
  v11 = v3[5];
  if (v10)
  {
    if (!v11 || (v4[4] != v3[4] || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  memcpy(v21, v4 + 6, 0x594uLL);
  memcpy(v20, v3 + 6, 0x594uLL);
  memcpy(v18, v4 + 6, 0x594uLL);
  memcpy(&v18[1432], v3 + 6, 0x594uLL);
  memcpy(v19, v4 + 6, 0x594uLL);
  if (sub_1011532E0(v19) != 1)
  {
    memcpy(__dst, v3 + 6, 0x594uLL);
    if (sub_1011532E0(__dst) == 1)
    {
      goto LABEL_28;
    }

    memcpy(v14, v3 + 6, 0x594uLL);
    memcpy(v17, v3 + 6, 0x594uLL);
    memcpy(v22, v4 + 6, 0x594uLL);
    sub_10117757C(v21, v15);
    sub_10117757C(v20, v15);
    v13 = _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v22);
    sub_10000CAAC(v14, &qword_101A2B798);
    memcpy(v15, v4 + 6, 0x594uLL);
    sub_10000CAAC(v15, &qword_101A2B798);
    return v13;
  }

  memcpy(v17, v3 + 6, 0x594uLL);
  if (sub_1011532E0(v17) != 1)
  {
LABEL_28:
    memcpy(v17, v18, 0xB2CuLL);
    sub_10117757C(v21, v22);
    sub_10117757C(v20, v22);
    sub_10000CAAC(v17, &qword_101A2BC30);
    return 0;
  }

  memcpy(v22, v4 + 6, 0x594uLL);
  sub_10117757C(v21, __dst);
  sub_10117757C(v20, __dst);
  sub_10000CAAC(v22, &qword_101A2B798);
  return 1;
}

uint64_t sub_10117757C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A2B798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011775EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A2B798);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1011776C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879190, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

void *sub_101177710(uint64_t a1)
{
  __chkstk_darwin(a1);
  v52 = v1;
  v3 = v2;
  v49 = v4;
  v5 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for CodingUserInfoKey();
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_101A00688);
  v51 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  sub_1005BC74C(v59);
  memcpy(v58, v59, sizeof(v58));
  v14 = v3[3];
  v53 = v3;
  sub_100020E58(v3, v14);
  sub_1011780AC();
  v15 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_11;
  }

  v48 = v7;
  v52 = v10;
  v16 = v51;
  LOBYTE(v57[0]) = 4;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = v13;
  if (v18)
  {
    if (v17 == 0xD000000000000038 && v18 == 0x800000010158A430)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v21[1] = 0;
        v21[2] = 0;
        *v21 = 0;
        swift_willThrow();
        (*(v16 + 8))(v47, v11);
LABEL_11:
        sub_100005070(v53);
        memset(v57, 0, 48);
        memcpy(&v57[6], v58, 0x594uLL);
        return sub_101177694(v57);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v55[0]) = 5;
  sub_100969804(&qword_101A00400);
  v22 = v47;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v57[0];
  if (v57[0])
  {
    if (qword_1019F29C0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ScaffoldParagraphStyle.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v24[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v25 = xmmword_101463530;
      *(v25 + 16) = 0;
      swift_willThrow();

      (*(v16 + 8))(v22, v11);
      goto LABEL_11;
    }

    v46 = v11;
  }

  else
  {
    v46 = v11;
  }

  sub_100020E58(v53, v53[3]);
  v26 = dispatch thunk of Decoder.userInfo.getter();
  v27 = sub_1007BB620(0, v26, 0, 0);
  v29 = v28;
  v45 = v27;

  sub_100020E58(v53, v53[3]);
  v30 = dispatch thunk of Decoder.userInfo.getter();
  v31 = sub_1007BB620(1, v30, 0, 0);
  v42 = v32;
  v44 = v31;

  sub_100020E58(v53, v53[3]);
  v43 = dispatch thunk of Decoder.userInfo.getter();
  v33 = sub_1007BB620(2, v43, 0, 0);
  v35 = v34;

  v36 = v53[4];
  v41 = v53[3];
  v43 = v36;
  sub_100020E58(v53, v41);
  v43 = dispatch thunk of Decoder.userInfo.getter();
  v60 = 3;
  sub_101153238();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(v55, v57, 0x594uLL);
  v37 = (v16 + 8);
  if (sub_1011532E0(v55) == 1)
  {

    (*v37)(v47, v46);
    memcpy(v54, v57, 0x594uLL);
    sub_10000CAAC(v54, &qword_101A2B798);
    memcpy(v56, v59, sizeof(v56));
  }

  else
  {

    memcpy(v56, v57, sizeof(v56));
    (*v37)(v47, v46);
  }

  v38 = v45;
  v39 = v42;
  memcpy(v54, v58, 0x594uLL);
  sub_10000CAAC(v54, &qword_101A2B798);
  v55[0] = v38;
  v55[1] = v29;
  v40 = v44;
  v55[2] = v44;
  v55[3] = v39;
  v55[4] = v33;
  v55[5] = v35;
  memcpy(&v55[6], v56, 0x594uLL);
  sub_10117765C(v55, v57);
  sub_100005070(v53);
  v57[0] = v38;
  v57[1] = v29;
  v57[2] = v40;
  v57[3] = v39;
  v57[4] = v33;
  v57[5] = v35;
  memcpy(&v57[6], v56, 0x594uLL);
  sub_101177694(v57);
  return memcpy(v49, v55, 0x5C4uLL);
}

unint64_t sub_1011780AC()
{
  result = qword_101A2BC28;
  if (!qword_101A2BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC28);
  }

  return result;
}

unint64_t sub_101178100(uint64_t a1)
{
  result = sub_100B10050();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_101178128(void *a1)
{
  a1[2] = sub_10115328C();
  a1[3] = sub_101152C34();
  result = sub_101178160();
  a1[4] = result;
  return result;
}

unint64_t sub_101178160()
{
  result = qword_101A2BC38;
  if (!qword_101A2BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC38);
  }

  return result;
}

uint64_t sub_1011781BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1476))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_101178218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 1464) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1472) = 0;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1476) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1476) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_101178418()
{
  result = qword_101A2BC40;
  if (!qword_101A2BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC40);
  }

  return result;
}

unint64_t sub_101178470()
{
  result = qword_101A2BC48;
  if (!qword_101A2BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC48);
  }

  return result;
}

unint64_t sub_1011784C8()
{
  result = qword_101A2BC50;
  if (!qword_101A2BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC50);
  }

  return result;
}

uint64_t *TSContentLanguage.Models.NumberFormatType.version.unsafeMutableAddressor()
{
  if (qword_1019F29C8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.NumberFormatType.version;
}

uint64_t sub_101178684()
{
  String.hash(into:)();
}

unint64_t sub_101178774@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101179AF8(*a1);
  *a2 = result;
  return result;
}

void sub_1011787A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684957547;
  v5 = 0xE600000000000000;
  v6 = 0x74616D726F66;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 4)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7265707075;
  if (v2 != 1)
  {
    v10 = 0x6C616D726F66;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10117885C()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0x74616D726F66;
  v4 = 0x6564695F65707974;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7265707075;
  if (v1 != 1)
  {
    v5 = 0x6C616D726F66;
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

unint64_t sub_101178910@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101179AF8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_101178938(uint64_t a1)
{
  v2 = sub_101179FD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101178974(uint64_t a1)
{
  v2 = sub_101179FD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.NumberFormatType.encode(to:)(void *a1, int a2)
{
  v5 = sub_1005B981C(&qword_101A2BC58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_101179FD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = a2;
  v11 = 0;
  sub_10117A02C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v10) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v10) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v10) = HIBYTE(a2);
  v11 = 3;
  sub_10117A080();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v10) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F29C8 != -1)
  {
    swift_once();
  }

  v10 = static TSContentLanguage.Models.NumberFormatType.version;
  v11 = 5;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.NumberFormatType.isEquivalent(to:)(unsigned int a1, unsigned int a2)
{
  if (a2 == 16)
  {
    if (a1 != 16)
    {
      return 0;
    }
  }

  else
  {
    if (a1 == 16)
    {
      return 0;
    }

    v3 = a2;
    v4 = TSContentLanguage.Models.NumberFormatType.Kind.rawValue.getter(a2);
    v6 = v5;
    if (v4 == TSContentLanguage.Models.NumberFormatType.Kind.rawValue.getter(a1) && v6 == v7)
    {

      a2 = v3;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v3;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v9 = a1 & 0xFF00;
  if ((a2 & 0xFF00) == 0x200)
  {
    if (v9 != 512)
    {
      return 0;
    }
  }

  else if (v9 == 512 || ((a2 ^ a1) & 0x100) != 0)
  {
    return 0;
  }

  v10 = a1 & 0xFF0000;
  if ((a2 & 0xFF0000) == 0x20000)
  {
    if (v10 != 0x20000)
    {
      return 0;
    }
  }

  else if (v10 == 0x20000 || ((a2 ^ a1) & 0x10000) != 0)
  {
    return 0;
  }

  v11 = HIBYTE(a1);
  if (HIBYTE(a2) == 5)
  {
    return v11 == 5;
  }

  if (v11 == 5)
  {
    return 0;
  }

  return sub_100B59D10(HIBYTE(a2), HIBYTE(a1));
}

uint64_t sub_101178E2C@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_101179B44(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *TSContentLanguage.Models.NumberFormatType.Kind.version.unsafeMutableAddressor()
{
  if (qword_1019F29D0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.NumberFormatType.Kind.version;
}

uint64_t TSContentLanguage.Models.NumberFormatType.Kind.rawValue.getter(char a1)
{
  result = 0x6168706C61;
  switch(a1)
  {
    case 1:
      result = 0x6E616962617261;
      break;
    case 2:
    case 3:
      result = 0x5F6E616962617261;
      break;
    case 4:
      result = 0x776572626568;
      break;
    case 5:
      result = 0x625F776572626568;
      break;
    case 6:
      result = 0x616E616761726968;
      break;
    case 7:
      v3 = 0x616761726968;
      goto LABEL_15;
    case 8:
      result = 0x6573656E6170616ALL;
      break;
    case 9:
      result = 0x616E616B6174616BLL;
      break;
    case 10:
      v3 = 0x616B6174616BLL;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x616E000000000000;
      break;
    case 11:
      result = 0x6E6165726F6BLL;
      break;
    case 12:
      result = 0x636972656D756ELL;
      break;
    case 13:
      result = 0x6E616D6F72;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10117910C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = TSContentLanguage.Models.NumberFormatType.Kind.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == TSContentLanguage.Models.NumberFormatType.Kind.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_101179194()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TSContentLanguage.Models.NumberFormatType.Kind.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011791F8()
{
  TSContentLanguage.Models.NumberFormatType.Kind.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_10117924C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TSContentLanguage.Models.NumberFormatType.Kind.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011792AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO16NumberFormatTypeV4KindO8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011792DC@<X0>(uint64_t *a1@<X8>)
{
  result = TSContentLanguage.Models.NumberFormatType.Kind.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *TSContentLanguage.Models.NumberFormatType.Format.version.unsafeMutableAddressor()
{
  if (qword_1019F29D8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.NumberFormatType.Format.version;
}

uint64_t TSContentLanguage.Models.NumberFormatType.Format.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x64656C63726963;
  v2 = 0x705F656C62756F64;
  v3 = 0x6E65726170;
  if (a1 != 3)
  {
    v3 = 0x647261646E617473;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6C616D69636564;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_101179534()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10117961C()
{
  String.hash(into:)();
}

Swift::Int sub_1011796F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011797D4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO16NumberFormatTypeV0F0O8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_101179804(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64656C63726963;
  v5 = 0xEC0000006E657261;
  v6 = 0x705F656C62756F64;
  v7 = 0xE500000000000000;
  v8 = 0x6E65726170;
  if (v2 != 3)
  {
    v8 = 0x647261646E617473;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C616D69636564;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO16NumberFormatTypeV23__derived_struct_equalsySbAG_AGtFZ_0(unsigned int a1, unsigned int a2)
{
  if (a1 == 16)
  {
    if (a2 != 16)
    {
      return 0;
    }
  }

  else
  {
    if (a2 == 16)
    {
      return 0;
    }

    v3 = a1;
    v4 = TSContentLanguage.Models.NumberFormatType.Kind.rawValue.getter(a1);
    v6 = v5;
    if (v4 == TSContentLanguage.Models.NumberFormatType.Kind.rawValue.getter(a2) && v6 == v7)
    {

      a1 = v3;
      goto LABEL_9;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a1 = v3;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_9:
  if ((a1 & 0xFF00) == 0x200)
  {
    if (BYTE1(a2) != 2)
    {
      return 0;
    }
  }

  else
  {
    v9 = 0;
    if (BYTE1(a2) == 2 || ((((a1 & 0x100) == 0) ^ (a2 >> 8)) & 1) == 0)
    {
      return v9;
    }
  }

  if ((a1 & 0xFF0000) == 0x20000)
  {
    if (BYTE2(a2) != 2)
    {
      return 0;
    }
  }

  else
  {
    v9 = 0;
    if (BYTE2(a2) == 2 || ((((a1 & 0x10000) == 0) ^ HIWORD(a2)) & 1) == 0)
    {
      return v9;
    }
  }

  v10 = HIBYTE(a1);
  v11 = HIBYTE(a2);
  if (v10 == 5)
  {
    if (v11 != 5)
    {
      return 0;
    }
  }

  else if (v11 == 5 || (sub_100B59D10(v10, HIBYTE(a2)) & 1) == 0)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_101179AF8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879240, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_101179B44(void *a1)
{
  v3 = sub_1005B981C(&qword_101A00670);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  sub_100020E58(a1, a1[3]);
  sub_101179FD8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100005070(a1);
  }

  v25 = 4;
  v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v8)
  {
    if (v7 == 0xD000000000000032 && v8 == 0x800000010158A7E0)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v11[1] = 0;
        v11[2] = 0;
        *v11 = 0;
        swift_willThrow();
LABEL_11:
        (*(v4 + 8))(v6, v3);
        return sub_100005070(a1);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v24 = 5;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v13 = v22;
  if (v22)
  {
    if (qword_1019F29C8 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.NumberFormatType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v13[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v14 = xmmword_101463530;
      *(v14 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(a1, a1[3]);
  v15 = dispatch thunk of Decoder.userInfo.getter();
  v16 = sub_1007BB648(0, v15, 0);

  sub_100020E58(a1, a1[3]);
  v17 = dispatch thunk of Decoder.userInfo.getter();
  v23 = sub_1007BB8F8(1, v17, 0, 0);

  sub_100020E58(a1, a1[3]);
  v18 = dispatch thunk of Decoder.userInfo.getter();
  HIDWORD(v21) = sub_1007BB8F8(2, v18, 0, 0);

  sub_100020E58(a1, a1[3]);
  v19 = dispatch thunk of Decoder.userInfo.getter();
  v20 = sub_1007BB920(3, v19, 0, 0);
  (*(v4 + 8))(v6, v3);

  sub_100005070(a1);
  return (BYTE4(v21) << 16) | (v20 << 24) | (v23 << 8) | v16;
}

unint64_t sub_101179FD8()
{
  result = qword_101A2BC60;
  if (!qword_101A2BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC60);
  }

  return result;
}

unint64_t sub_10117A02C()
{
  result = qword_101A2BC68;
  if (!qword_101A2BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC68);
  }

  return result;
}

unint64_t sub_10117A080()
{
  result = qword_101A2BC70;
  if (!qword_101A2BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC70);
  }

  return result;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO16NumberFormatTypeV4KindO8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018792F0, v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO16NumberFormatTypeV0F0O8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879490, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10117A16C(uint64_t a1)
{
  result = sub_100B0FC0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10117A1D4()
{
  result = qword_101A2BC78;
  if (!qword_101A2BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC78);
  }

  return result;
}

unint64_t sub_10117A22C()
{
  result = qword_101A2BC80;
  if (!qword_101A2BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC80);
  }

  return result;
}

unint64_t sub_10117A2AC()
{
  result = qword_101A2BC88;
  if (!qword_101A2BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC88);
  }

  return result;
}

unint64_t sub_10117A300()
{
  result = qword_101A2BC90;
  if (!qword_101A2BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC90);
  }

  return result;
}

unint64_t sub_10117A354(uint64_t a1)
{
  result = sub_100B0FBB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10117A3C0()
{
  result = qword_101A2BC98;
  if (!qword_101A2BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BC98);
  }

  return result;
}

uint64_t sub_10117A440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10117A47C()
{
  result = qword_101A2BCA0;
  if (!qword_101A2BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BCA0);
  }

  return result;
}

unint64_t sub_10117A4D0()
{
  result = qword_101A2BCA8;
  if (!qword_101A2BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BCA8);
  }

  return result;
}

unint64_t sub_10117A524(uint64_t a1)
{
  result = sub_100B0FB64();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10117A58C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

uint64_t _s16NumberFormatTypeVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 4))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 1);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t _s16NumberFormatTypeVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_10117A6D0()
{
  result = qword_101A2BCB0;
  if (!qword_101A2BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BCB0);
  }

  return result;
}

unint64_t sub_10117A728()
{
  result = qword_101A2BCB8;
  if (!qword_101A2BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BCB8);
  }

  return result;
}

unint64_t sub_10117A780()
{
  result = qword_101A2BCC0;
  if (!qword_101A2BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BCC0);
  }

  return result;
}

uint64_t *TSContentLanguage.Models.ScaffoldFill.version.unsafeMutableAddressor()
{
  if (qword_1019F29E0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ScaffoldFill.version;
}

void *TSContentLanguage.Models.ScaffoldFill.fillType.setter(const void *a1)
{
  memcpy(__dst, v1, 0x190uLL);
  sub_10117A910(__dst);
  return memcpy(v1, a1, 0x190uLL);
}

uint64_t sub_10117A950(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564695F65707974;
  v4 = 0xEF7265696669746ELL;
  if (v2 != 1)
  {
    v3 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7079745F6C6C6966;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7079745F6C6C6966;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000065;
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

Swift::Int sub_10117AA6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10117AB20()
{
  String.hash(into:)();
}

Swift::Int sub_10117ABC0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10117AC70@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10117BEF8(*a1);
  *a2 = result;
  return result;
}

void sub_10117ACA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7079745F6C6C6966;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10117AD10()
{
  v1 = 0x6564695F65707974;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7079745F6C6C6966;
  }
}

unint64_t sub_10117AD7C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10117BEF8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10117ADA4(uint64_t a1)
{
  v2 = sub_10117C4F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10117ADE0(uint64_t a1)
{
  v2 = sub_10117C4F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *TSContentLanguage.Models.ScaffoldFill.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10117BF44(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x190uLL);
  }

  return result;
}

uint64_t TSContentLanguage.Models.ScaffoldFill.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2BCC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_100020E58(a1, a1[3]);
  sub_10117C4F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v12, v3, 0x190uLL);
  v12[423] = 0;
  sub_10117C54C(v3, v11);
  sub_10117C584();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    memcpy(v11, v12, sizeof(v11));
    sub_10117C5D8(v11);
  }

  else
  {
    memcpy(v11, v12, sizeof(v11));
    sub_10117C5D8(v11);
    LOBYTE(v10) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F29E0 != -1)
    {
      swift_once();
    }

    v10 = static TSContentLanguage.Models.ScaffoldFill.version;
    v12[422] = 2;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.ScaffoldFill.isEquivalent(to:)(const void *a1)
{
  memcpy(__dst, v1, 0x190uLL);
  memcpy(v4, a1, sizeof(v4));
  return _s8Freeform17TSContentLanguageO6ModelsO12ScaffoldFillV0eF4TypeO21__derived_enum_equalsySbAI_AItFZ_0(__dst, v4) & 1;
}

uint64_t static TSContentLanguage.Models.ScaffoldFill.__derived_struct_equals(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return _s8Freeform17TSContentLanguageO6ModelsO12ScaffoldFillV0eF4TypeO21__derived_enum_equalsySbAI_AItFZ_0(__dst, v4) & 1;
}

uint64_t *TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType.version.unsafeMutableAddressor()
{
  if (qword_1019F29E8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType.version;
}

void *TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType.init(color:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100810AD0(a1, v4);
  __src[0] = v4[0];
  __src[1] = v4[1];
  LOBYTE(__src[2]) = v5;
  sub_10117C608(__src);
  return memcpy(a2, __src, 0x190uLL);
}

void *TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType.init(gradient:)@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  *(&v6[3] + 9) = *(a1 + 57);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  sub_10117C640(v6);
  return memcpy(a2, v6, 0x190uLL);
}

void *TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType.init(image:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(v4, __src, sizeof(v4));
  sub_10117C67C(v4);
  return memcpy(a2, v4, 0x190uLL);
}

void *TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType.init<A>(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (swift_dynamicCast())
  {
    __src[0] = v10[0];
    __src[1] = v10[1];
    LOBYTE(__src[2]) = v10[2];
    sub_10117C608(__src);
LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, v6);
    v7 = __dst;
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    __src[2] = v10[2];
    __src[3] = v10[3];
    *(&__src[3] + 9) = *(&v10[3] + 9);
    __src[0] = v10[0];
    __src[1] = v10[1];
    sub_10117C640(__src);
    goto LABEL_5;
  }

  if (!swift_dynamicCast())
  {
    sub_1005BC698(v13);
    goto LABEL_7;
  }

  memcpy(v10, __dst, sizeof(v10));
  sub_10117C67C(v10);
  memcpy(__src, v10, sizeof(__src));
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__src, v9);
  v7 = __src;
LABEL_6:
  memcpy(v13, v7, sizeof(v13));
LABEL_7:
  (*(*(a2 - 8) + 8))(a1, a2);
  return memcpy(a3, v13, 0x190uLL);
}

unint64_t sub_10117B540@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10117C6B8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10117B570@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10117C6B8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10117B598(uint64_t a1)
{
  v2 = sub_10117D268();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10117B5D4(uint64_t a1)
{
  v2 = sub_10117D268();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10117C704(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x190uLL);
  }

  return result;
}

uint64_t TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2BCE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v22[-v10];
  __chkstk_darwin(v12);
  v14 = &v22[-v13];
  memcpy(v25, v3, sizeof(v25));
  v15 = sub_10117D24C(v25);
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v18 = sub_1000B9C50(v25);
      memcpy(v31, v18, sizeof(v31));
      sub_100020E58(a1, a1[3]);
      sub_10117D268();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      memcpy(v24, v31, sizeof(v24));
      v23 = 2;
      sub_100B15E44();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v24[0]) = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (qword_1019F29E8 != -1)
        {
          swift_once();
        }

        *&v24[0] = static TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType.version;
        v23 = 4;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      sub_10002A948(v24, *(&v24[1] + 1));
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      return sub_100005070(v24);
    }
  }

  else if (v15)
  {
    v19 = sub_1000B9C50(v25);
    v20 = v19[3];
    v29 = v19[2];
    v30[0] = v20;
    *(v30 + 9) = *(v19 + 57);
    v21 = v19[1];
    v27 = *v19;
    v28 = v21;
    sub_100020E58(a1, a1[3]);
    sub_10117D268();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v24[2] = v29;
    v24[3] = v30[0];
    *(&v24[3] + 9) = *(v30 + 9);
    v24[0] = v27;
    v24[1] = v28;
    v23 = 1;
    sub_10117D2BC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v2)
    {
      LOBYTE(v24[0]) = 3;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F29E8 != -1)
      {
        swift_once();
      }

      *&v24[0] = static TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType.version;
      v23 = 4;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    v16 = sub_1000B9C50(v25);
    sub_100810AD0(v16, v26);
    sub_100020E58(a1, a1[3]);
    sub_10117D268();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    sub_100810AD0(v26, v24);
    v23 = 0;
    sub_100B64688();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v2)
    {
      LOBYTE(v24[0]) = 3;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F29E8 != -1)
      {
        swift_once();
      }

      *&v24[0] = static TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType.version;
      v23 = 4;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    return (*(v6 + 8))(v14, v5);
  }
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO12ScaffoldFillV0eF4TypeO21__derived_enum_equalsySbAI_AItFZ_0(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = sub_10117D24C(__dst);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      memcpy(v26, a2, sizeof(v26));
      if (sub_10117D24C(v26) == 3)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v12 = sub_1000B9C50(__dst);
    memcpy(v26, v12, sizeof(v26));
    memcpy(v23, a2, sizeof(v23));
    if (sub_10117D24C(v23) != 2)
    {
      goto LABEL_28;
    }

    v13 = sub_1000B9C50(v23);
    memcpy(v24, v13, sizeof(v24));
    v14 = _s8Freeform17TSContentLanguageO6ModelsO5ImageV23__derived_struct_equalsySbAG_AGtFZ_0(v26, v24);
  }

  else
  {
    if (!v3)
    {
      v4 = sub_1000B9C50(__dst);
      v21 = *(v4 + 16);
      v22 = *v4;
      v5 = *(v4 + 32);
      memcpy(v26, a2, sizeof(v26));
      if (!sub_10117D24C(v26))
      {
        v6 = sub_1000B9C50(v26);
        if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v22, *v6), vceqq_f64(v21, *(v6 + 16))))))
        {
          v7 = *(v6 + 32);
          if (v5)
          {
            v8 = 1650946675;
          }

          else
          {
            v8 = 13168;
          }

          if (v5)
          {
            v9 = 0xE400000000000000;
          }

          else
          {
            v9 = 0xE200000000000000;
          }

          if (v7)
          {
            v10 = 1650946675;
          }

          else
          {
            v10 = 13168;
          }

          if (v7)
          {
            v11 = 0xE400000000000000;
          }

          else
          {
            v11 = 0xE200000000000000;
          }

          if (v8 == v10 && v9 == v11)
          {

LABEL_26:
            v14 = 1;
            return v14 & 1;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_26;
          }
        }
      }

LABEL_28:
      v14 = 0;
      return v14 & 1;
    }

    v15 = sub_1000B9C50(__dst);
    v16 = v15[3];
    v24[2] = v15[2];
    v24[3] = v16;
    *(&v24[3] + 9) = *(v15 + 57);
    v17 = v15[1];
    v24[0] = *v15;
    v24[1] = v17;
    memcpy(v26, a2, sizeof(v26));
    if (sub_10117D24C(v26) != 1)
    {
      goto LABEL_28;
    }

    v18 = sub_1000B9C50(v26);
    v23[1] = v18[1];
    v23[2] = v18[2];
    v23[3] = v18[3];
    *(&v23[3] + 9) = *(v18 + 57);
    v23[0] = *v18;
    v14 = _s8Freeform17TSContentLanguageO6ModelsO16ScaffoldGradientV23__derived_struct_equalsySbAG_AGtFZ_0(v24, v23);
  }

  return v14 & 1;
}

unint64_t sub_10117BEF8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879528, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void *sub_10117BF44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v4 = sub_1005B981C(&qword_101A2BD58);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  sub_100020E58(a1, a1[3]);
  sub_10117C4F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v34 = v5;
  v35 = a1;
  v8 = v36;
  LOBYTE(v41[0]) = 1;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v7;
  if (v10)
  {
    if (v9 == 0xD00000000000002DLL && v10 == 0x800000010158AC30)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        swift_willThrow();
        (*(v34 + 8))(v33, v4);
LABEL_11:
        a1 = v35;
        return sub_100005070(a1);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v40[0] = 2;
  sub_100969804(&qword_101A00400);
  v14 = v33;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v41[0];
  if (v41[0])
  {
    if (qword_1019F29E0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ScaffoldFill.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v16[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v17 = xmmword_101463530;
      *(v17 + 16) = 0;
      swift_willThrow();

      (*(v34 + 8))(v14, v4);
      goto LABEL_11;
    }
  }

  v18 = v35;
  sub_100020E58(v35, v35[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v42 = 0;
  sub_10117D538();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(v40, v41, sizeof(v40));
  if (sub_1007CE6B0(v40) == 1)
  {
    memcpy(v39, v41, sizeof(v39));
    if (sub_1007CE6B0(v39) != 1)
    {
      memcpy(v38, v41, sizeof(v38));
      sub_10000CAAC(v38, &unk_101A2BD60);
    }

    goto LABEL_23;
  }

  memcpy(v37, v41, sizeof(v37));
  memcpy(v39, v41, sizeof(v39));
  if (sub_1007CE6B0(v39) == 1)
  {
LABEL_23:
    v36 = v4;
    v19 = KeyedDecodingContainer.codingPath.getter();
    v20 = *(v19 + 16);
    if (v20)
    {
      v38[0] = _swiftEmptyArrayStorage;
      sub_100034080(0, v20, 0);
      v21 = v38[0];
      v22 = v19 + 32;
      do
      {
        sub_10000630C(v22, v39);
        sub_100020E58(v39, v39[3]);
        v23 = dispatch thunk of CodingKey.stringValue.getter();
        v25 = v24;
        sub_100005070(v39);
        v38[0] = v21;
        v27 = v21[2];
        v26 = v21[3];
        if (v27 >= v26 >> 1)
        {
          sub_100034080((v26 > 1), v27 + 1, 1);
          v21 = v38[0];
        }

        v21[2] = v27 + 1;
        v28 = &v21[2 * v27];
        v28[4] = v23;
        v28[5] = v25;
        v22 += 40;
        --v20;
      }

      while (v20);
    }

    else
    {

      v21 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v29 = 0x7079745F6C6C6966;
    v29[1] = 0xE900000000000065;
    v29[2] = v21;
    swift_willThrow();
    v30 = v36;
    v31 = v34;
    swift_willThrow();
    (*(v31 + 8))(v33, v30);
    goto LABEL_11;
  }

  (*(v34 + 8))(v33, v4);
  sub_100005070(v18);
  return memcpy(v8, v37, 0x190uLL);
}

unint64_t sub_10117C4F8()
{
  result = qword_101A2BCD0;
  if (!qword_101A2BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BCD0);
  }

  return result;
}

unint64_t sub_10117C584()
{
  result = qword_101A2BCD8;
  if (!qword_101A2BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BCD8);
  }

  return result;
}

uint64_t sub_10117C608(uint64_t result)
{
  v1 = *(result + 216);
  v2 = *(result + 256);
  v3 = *(result + 296);
  v4 = *(result + 312) & 0xCFLL;
  *(result + 112) &= 1uLL;
  *(result + 216) = v1;
  *(result + 256) = v2;
  *(result + 296) = v3;
  *(result + 312) = v4;
  return result;
}

uint64_t sub_10117C640(uint64_t result)
{
  v1 = *(result + 216);
  v2 = *(result + 256);
  v3 = *(result + 296);
  v4 = *(result + 312) & 0xCFLL | 0x4000000000000000;
  *(result + 112) &= 1uLL;
  *(result + 216) = v1;
  *(result + 256) = v2;
  *(result + 296) = v3;
  *(result + 312) = v4;
  return result;
}

uint64_t sub_10117C67C(uint64_t result)
{
  v1 = *(result + 216);
  v2 = *(result + 256);
  v3 = *(result + 296);
  v4 = *(result + 312) & 0xCFLL | 0x8000000000000000;
  *(result + 112) &= 1uLL;
  *(result + 216) = v1;
  *(result + 256) = v2;
  *(result + 296) = v3;
  *(result + 312) = v4;
  return result;
}

unint64_t sub_10117C6B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879590, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

void *sub_10117C704@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v34 - v6;
  v7 = type metadata accessor for CodingUserInfoKey();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = sub_1005B981C(&qword_101A00668);
  v41 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = a1[3];
  v51 = a1;
  sub_100020E58(a1, v16);
  sub_10117D268();
  v17 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    v20 = v51;
    goto LABEL_4;
  }

  v42 = v12;
  v36 = v9;
  LOBYTE(v47[0]) = 3;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v51;
  if (!v19)
  {
    goto LABEL_20;
  }

  if (v18 == 0xD000000000000040 && v19 == 0x800000010158AC60)
  {

    goto LABEL_20;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
LABEL_20:
    type metadata accessor for TSCLVersion();
    LOBYTE(v45[0]) = 4;
    sub_100969804(&qword_101A00400);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = *&v47[0];
    if (*&v47[0])
    {
      if (qword_1019F29E8 != -1)
      {
        swift_once();
      }

      if (*(static TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v28[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
      {
        sub_1007C8648();
        swift_allocError();
        *v29 = xmmword_101463530;
        *(v29 + 16) = 0;
        swift_willThrow();

        goto LABEL_21;
      }
    }

    sub_100020E58(v20, v20[3]);
    v31 = dispatch thunk of Decoder.userInfo.getter();
    sub_1007BB964(0, v31, 0, 0, v48);

    v32 = v49;
    if (v49 != 2)
    {
      (*(v41 + 8))(v15, v13);
      v47[1] = v48[1];
      v47[0] = v48[0];
      LOBYTE(v47[2]) = v32 & 1;
      sub_10117C608(v47);
      goto LABEL_17;
    }

    sub_100020E58(v20, v20[3]);
    dispatch thunk of Decoder.userInfo.getter();
    v43[0] = 1;
    sub_10117DA6C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

    if (LOBYTE(v45[2]) != 2)
    {
      v44[2] = v45[2];
      v44[3] = v45[3];
      *(&v44[3] + 9) = *(&v45[3] + 9);
      v44[0] = v45[0];
      v44[1] = v45[1];
      (*(v41 + 8))(v15, v13);
      v47[2] = v44[2];
      v47[3] = v44[3];
      *(&v47[3] + 9) = *(&v44[3] + 9);
      v47[1] = v44[1];
      v47[0] = v44[0];
      sub_10117C640(v47);
      memcpy(v50, v47, sizeof(v50));
      goto LABEL_18;
    }

    v35 = v15;
    v33 = v41;
    sub_100020E58(v51, v51[3]);
    dispatch thunk of Decoder.userInfo.getter();
    v46 = 2;
    sub_100B15DC0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    memcpy(v45, v47, sizeof(v45));
    if (sub_100B15E14(v45) != 1)
    {

      memcpy(v43, v47, sizeof(v43));
      (*(v33 + 8))(v35, v13);
      memcpy(v44, v43, sizeof(v44));
      sub_10117C67C(v44);
      memcpy(v50, v44, sizeof(v50));
      v20 = v51;
      goto LABEL_18;
    }

    (*(v33 + 8))(v35, v13);
    memcpy(v44, v47, sizeof(v44));
    sub_10000CAAC(v44, &qword_101A11468);
    v20 = v51;
    goto LABEL_28;
  }

  sub_1007C8648();
  swift_allocError();
  v25[1] = 0;
  v25[2] = 0;
  *v25 = 0;
  swift_willThrow();
LABEL_21:
  (*(v41 + 8))(v15, v13);
LABEL_4:
  sub_100020E58(v20, v20[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  sub_100020E58(v45, *(&v45[1] + 1));
  v21 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  if (v21 == 1701736302 && v22 == 0xE400000000000000)
  {

LABEL_16:
    sub_10117DA28(v47);
    sub_100005070(v45);
LABEL_17:
    memcpy(v50, v47, sizeof(v50));
LABEL_18:
    sub_100005070(v20);
    return memcpy(v40, v50, 0x190uLL);
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_16;
  }

  sub_100005070(v45);
LABEL_28:
  sub_1007C8648();
  swift_allocError();
  *v30 = xmmword_101478600;
  *(v30 + 16) = 0;
  swift_willThrow();
  return sub_100005070(v20);
}

uint64_t sub_10117D24C(uint64_t a1)
{
  v1 = *(a1 + 312) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_10117D268()
{
  result = qword_101A2BCE8;
  if (!qword_101A2BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BCE8);
  }

  return result;
}

unint64_t sub_10117D2BC()
{
  result = qword_101A2BCF0;
  if (!qword_101A2BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BCF0);
  }

  return result;
}

unint64_t sub_10117D310(uint64_t a1)
{
  result = sub_100B0F678();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10117D378()
{
  result = qword_101A2BCF8;
  if (!qword_101A2BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BCF8);
  }

  return result;
}

unint64_t sub_10117D3CC(uint64_t a1)
{
  *(a1 + 8) = sub_10117D3FC();
  result = sub_10117D450();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10117D3FC()
{
  result = qword_101A2BD00;
  if (!qword_101A2BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BD00);
  }

  return result;
}

unint64_t sub_10117D450()
{
  result = qword_101A2BD08;
  if (!qword_101A2BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BD08);
  }

  return result;
}

uint64_t sub_10117D4E4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_10117D538()
{
  result = qword_101A2BD10;
  if (!qword_101A2BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BD10);
  }

  return result;
}

unint64_t sub_10117D58C()
{
  result = qword_101A2BD18;
  if (!qword_101A2BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BD18);
  }

  return result;
}

uint64_t sub_10117D5F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_10117D640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 112) = 2 * -a2;
      *(result + 136) = 0u;
      *(result + 152) = 0u;
      *(result + 168) = 0u;
      *(result + 184) = 0u;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 248) = 0u;
      *(result + 392) = 0;
      *(result + 120) = 0u;
      result += 120;
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      *(result + 176) = 0u;
      *(result + 192) = 0u;
      *(result + 208) = 0u;
      *(result + 224) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 0u;
      return result;
    }

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10117D738(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 216);
    v3 = *(result + 256);
    v4 = *(result + 296);
    v5 = *(result + 312) & 0xCFLL | (a2 << 62);
    *(result + 112) &= 1uLL;
    *(result + 216) = v2;
    *(result + 256) = v3;
    *(result + 296) = v4;
    *(result + 312) = v5;
  }

  else
  {
    *result = (a2 - 3);
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 232) = 0u;
    *(result + 248) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *(result + 296) = 0u;
    *(result + 312) = 0xC000000000000000;
    *(result + 320) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 368) = 0u;
    *(result + 384) = 0u;
  }

  return result;
}

unint64_t sub_10117D81C()
{
  result = qword_101A2BD20;
  if (!qword_101A2BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BD20);
  }

  return result;
}

unint64_t sub_10117D874()
{
  result = qword_101A2BD28;
  if (!qword_101A2BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BD28);
  }

  return result;
}

unint64_t sub_10117D8CC()
{
  result = qword_101A2BD30;
  if (!qword_101A2BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BD30);
  }

  return result;
}

unint64_t sub_10117D924()
{
  result = qword_101A2BD38;
  if (!qword_101A2BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BD38);
  }

  return result;
}

unint64_t sub_10117D97C()
{
  result = qword_101A2BD40;
  if (!qword_101A2BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BD40);
  }

  return result;
}

unint64_t sub_10117D9D4()
{
  result = qword_101A2BD48;
  if (!qword_101A2BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BD48);
  }

  return result;
}

double sub_10117DA28(uint64_t a1)
{
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0xC000000000000000;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  return result;
}

unint64_t sub_10117DA6C()
{
  result = qword_101A2BD50;
  if (!qword_101A2BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BD50);
  }

  return result;
}

void sub_10117DAD0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  if ((sub_10098EABC(&_mh_execute_header, "setUpAutoRefine()", 17, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 526) & 1) != 0 && [objc_opt_self() isOSFeatureEnabled:0])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = Strong;
    if (Strong)
    {
      if (![Strong view])
      {
        __break(1u);
        return;
      }

      objc_opt_self();
      v6 = swift_dynamicCastObjCClassUnconditional();
    }

    v7 = [objc_opt_self() defaultCenter];
    if (qword_1019F16F0 != -1)
    {
      swift_once();
    }

    v8 = qword_101AD6878;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 commandController];

      if (v11)
      {
        aBlock[0] = v11;
        type metadata accessor for CRLCommandController();
        v11 = _bridgeAnythingToObjectiveC<A>(_:)();
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = swift_allocObject();
    v12[2] = v0;
    aBlock[4] = sub_1011A6AB0;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100059694;
    aBlock[3] = &unk_1018B60E8;
    v13 = _Block_copy(aBlock);
    v14 = v0;

    v15 = [v7 addObserverForName:v8 object:v11 queue:0 usingBlock:v13];
    _Block_release(v13);

    swift_unknownObjectRelease();
    *&v14[OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_undoObserver] = v15;
    swift_unknownObjectRelease();
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    type metadata accessor for MainActor();
    v17 = v6;
    v18 = v14;
    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v18;
    v20[5] = v6;
    v20[6] = ObjectType;
    sub_10064191C(0, 0, v4, &unk_1014CE378, v20);
  }
}

void sub_10117DE8C()
{
  ObjectType = swift_getObjectType();
  if (sub_10098EABC(&_mh_execute_header, "setUpDetectorInteraction()", 26, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 1335))
  {
    v2 = objc_opt_self();
    if (([v2 isOSFeatureEnabled:11] & 1) != 0 || objc_msgSend(v2, "isOSFeatureEnabled:", 3))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        [Strong addDecorator:v0];
        sub_101199A34();
        if (*(v0 + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown) & 1) == 0 && ([v2 isOSFeatureEnabled:11])
        {
          sub_10119A3E4();
        }

        CanvasDataDetectorInteraction.wantsProofreadingDetection.setter();
        sub_101198F8C();
        v5 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v6 = swift_allocObject();
        *(v6 + 16) = v5;
        *(v6 + 24) = ObjectType;

        CanvasDataDetectorInteraction.replaceStrokesClosure.setter();
      }

      else
      {
        v7 = objc_opt_self();
        v8 = [v7 _atomicIncrementAssertCount];
        v30 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v30);
        StaticString.description.getter();
        v9 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v10 = String._bridgeToObjectiveC()();

        v11 = [v10 lastPathComponent];

        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v15 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v8;
        v17 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v17;
        v18 = sub_1005CF04C();
        *(inited + 104) = v18;
        *(inited + 72) = v9;
        *(inited + 136) = &type metadata for String;
        v19 = sub_1000053B0();
        *(inited + 112) = v12;
        *(inited + 120) = v14;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v19;
        *(inited + 152) = 1344;
        v20 = v30;
        *(inited + 216) = v17;
        *(inited + 224) = v18;
        *(inited + 192) = v20;
        v21 = v9;
        v22 = v20;
        v23 = static os_log_type_t.error.getter();
        sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v24 = static os_log_type_t.error.getter();
        sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v25 = swift_allocObject();
        v25[2] = 8;
        v25[3] = 0;
        v25[4] = 0;
        v25[5] = 0;
        v26 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v27 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v28 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v29 = String._bridgeToObjectiveC()();

        [v7 handleFailureInFunction:v27 file:v28 lineNumber:1344 isFatal:0 format:v29 args:v26];
      }
    }
  }
}

id sub_10117E4A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if ((*(v0 + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown) & 1) == 0)
  {
    v26 = objc_opt_self();
    v3 = [v26 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 88;
    v15 = v28;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Must call tearDown() before CRLFreehandDrawingIntelligenceProvider is de-initialized.", 85, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v22 file:v23 lineNumber:88 isFatal:0 format:v24 args:v21];
  }

  v27.receiver = v1;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, "dealloc");
}

void sub_10117E948()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v79 - v3;
  sub_10098EABC(&_mh_execute_header, "tearDown()", 10, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 93);
  if ((*(v0 + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown) = 1;
    v28 = OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_icc;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v81 = 0;
      v82 = v28;
      v83 = v4;
      v80 = objc_opt_self();
      v30 = [v80 _atomicIncrementAssertCount];
      v84[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v84);
      StaticString.description.getter();
      v31 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      v33 = [v32 lastPathComponent];

      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v37 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v30;
      v39 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v39;
      v40 = sub_1005CF04C();
      *(inited + 104) = v40;
      *(inited + 72) = v31;
      *(inited + 136) = &type metadata for String;
      v41 = sub_1000053B0();
      *(inited + 112) = v34;
      *(inited + 120) = v36;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v41;
      *(inited + 152) = 102;
      v42 = v84[0];
      *(inited + 216) = v39;
      *(inited + 224) = v40;
      *(inited + 192) = v42;
      v43 = v31;
      v44 = v42;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v46 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v46, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v47 = swift_allocObject();
      v47[2] = 8;
      v47[3] = 0;
      v47[4] = 0;
      v47[5] = 0;
      v48 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v51 = String._bridgeToObjectiveC()();

      [v80 handleFailureInFunction:v49 file:v50 lineNumber:102 isFatal:0 format:v51 args:v48];

      v28 = v82;
      v4 = v83;
      Strong = v81;
    }

    v52 = [Strong pkDrawingProvider];
    if (v52)
    {
      v53 = v52;
      [v52 removeConsolidatedPKDrawingObserver:v1];

      if (!Strong)
      {
LABEL_12:
        CanvasDataDetectorInteraction.wantsDataDetection.setter();
        CanvasDataDetectorInteraction.wantsProofreadingDetection.setter();
        v54 = type metadata accessor for TaskPriority();
        (*(*(v54 - 8) + 56))(v4, 1, 1, v54);
        type metadata accessor for MainActor();
        v55 = v1;
        v56 = static MainActor.shared.getter();
        v57 = swift_allocObject();
        v57[2] = v56;
        v57[3] = &protocol witness table for MainActor;
        v57[4] = v55;
        sub_10064191C(0, 0, v4, &unk_1014CE3C8, v57);

        swift_unknownObjectWeakAssign();
        swift_unknownObjectWeakAssign();
        return;
      }
    }

    else
    {
      v81 = Strong;
      v82 = v28;
      v83 = v4;
      v80 = objc_opt_self();
      HIDWORD(v79) = [v80 _atomicIncrementAssertCount];
      v84[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v84);
      StaticString.description.getter();
      v58 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v59 = String._bridgeToObjectiveC()();

      v60 = [v59 lastPathComponent];

      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v64 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v65 = swift_initStackObject();
      *(v65 + 16) = xmmword_10146CA70;
      *(v65 + 56) = &type metadata for Int32;
      *(v65 + 64) = &protocol witness table for Int32;
      *(v65 + 32) = HIDWORD(v79);
      v66 = sub_100006370(0, &qword_1019F4D30);
      *(v65 + 96) = v66;
      v67 = sub_1005CF04C();
      *(v65 + 104) = v67;
      *(v65 + 72) = v58;
      *(v65 + 136) = &type metadata for String;
      v68 = sub_1000053B0();
      *(v65 + 112) = v61;
      *(v65 + 120) = v63;
      *(v65 + 176) = &type metadata for UInt;
      *(v65 + 184) = &protocol witness table for UInt;
      *(v65 + 144) = v68;
      *(v65 + 152) = 104;
      v69 = v84[0];
      *(v65 + 216) = v66;
      *(v65 + 224) = v67;
      *(v65 + 192) = v69;
      v70 = v58;
      v71 = v69;
      v72 = static os_log_type_t.error.getter();
      sub_100005404(v64, &_mh_execute_header, v72, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v65);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v73 = static os_log_type_t.error.getter();
      sub_100005404(v64, &_mh_execute_header, v73, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v74 = swift_allocObject();
      v74[2] = 8;
      v74[3] = 0;
      v74[4] = 0;
      v74[5] = 0;
      v75 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v76 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v77 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v78 = String._bridgeToObjectiveC()();

      [v80 handleFailureInFunction:v76 file:v77 lineNumber:104 isFatal:0 format:v78 args:v75];

      v4 = v83;
      Strong = v81;

      if (!Strong)
      {
        goto LABEL_12;
      }
    }

    [Strong removeDecorator:v1];
    goto LABEL_12;
  }

  v5 = objc_opt_self();
  v6 = [v5 _atomicIncrementAssertCount];
  v84[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v84);
  StaticString.description.getter();
  v7 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v8 lastPathComponent];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_10146CA70;
  *(v14 + 56) = &type metadata for Int32;
  *(v14 + 64) = &protocol witness table for Int32;
  *(v14 + 32) = v6;
  v15 = sub_100006370(0, &qword_1019F4D30);
  *(v14 + 96) = v15;
  v16 = sub_1005CF04C();
  *(v14 + 104) = v16;
  *(v14 + 72) = v7;
  *(v14 + 136) = &type metadata for String;
  v17 = sub_1000053B0();
  *(v14 + 112) = v10;
  *(v14 + 120) = v12;
  *(v14 + 176) = &type metadata for UInt;
  *(v14 + 184) = &protocol witness table for UInt;
  *(v14 + 144) = v17;
  *(v14 + 152) = 96;
  v18 = v84[0];
  *(v14 + 216) = v15;
  *(v14 + 224) = v16;
  *(v14 + 192) = v18;
  v19 = v7;
  v20 = v18;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v14);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v22, "Should not call tearDown() twice.", 33, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v23 = swift_allocObject();
  v23[2] = 8;
  v23[3] = 0;
  v23[4] = 0;
  v23[5] = 0;
  v24 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  [v5 handleFailureInFunction:v25 file:v26 lineNumber:96 isFatal:0 format:v27 args:v24];
}

uint64_t sub_10117F598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for RecognitionController.AutoRefineMode();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10117F68C, v7, v6);
}

uint64_t sub_10117F68C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v0[9] = *(v0[2] + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_recognitionController);
  (*(v2 + 104))(v1, enum case for RecognitionController.AutoRefineMode.off(_:), v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10117F75C;
  v5 = v0[5];

  return RecognitionController.setAutoRefineMode(_:in:)(v5, 0);
}

uint64_t sub_10117F75C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *v0;

  (*(v3 + 8))(v2, v4);
  v6 = swift_task_alloc();
  *(v1 + 88) = v6;
  *v6 = v5;
  v6[1] = sub_10117F904;

  return RecognitionController.setRefineStrokesBlock(_:)(0, 0);
}

uint64_t sub_10117F904()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10117FA24, v3, v2);
}

uint64_t sub_10117FA24()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10117FB18()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = dispatch_semaphore_create(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v7[5] = v0;
  v7[6] = v4;

  v8 = v0;
  v9 = v4;
  sub_10064191C(0, 0, v3, &unk_1014CE3B8, v7);

  OS_dispatch_semaphore.wait()();

  swift_beginAccess();
  v10 = *(v5 + 16);
  v11 = v10;

  return v10;
}

uint64_t sub_10117FC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a5;
  v6[36] = a6;
  v6[34] = a4;
  return _swift_task_switch(sub_10117FCBC, 0, 0);
}

uint64_t sub_10117FCBC()
{
  *(v0 + 296) = *(*(v0 + 280) + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_strokeProvider);
  type metadata accessor for RecognitionStrokeProvider();
  sub_10119D3B8(&qword_101A2BF20, &type metadata accessor for RecognitionStrokeProvider);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10117FD84, v2, v1);
}

uint64_t sub_10117FD84()
{
  *(v0 + 304) = RecognitionStrokeProvider.recognitionController.getter();

  return _swift_task_switch(sub_10117FDF0, 0, 0);
}

uint64_t sub_10117FDF0()
{
  v30 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 272);
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  if (!v1)
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 132;
    v17 = v29;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:132 isFatal:0 format:v26 args:v23];
  }

  OS_dispatch_semaphore.signal()();
  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_101180440(void *a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v7 = type metadata accessor for PKStroke();
  v3[3] = v7;
  v3[4] = *(v7 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  v8 = a1;
  v9 = a3;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_task_switch(sub_101180540, 0, 0);
}

uint64_t sub_101180540()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1011805E8;
  v2 = *(v0 + 40);

  return RecognitionController.addRefinableStroke(_:)(v2);
}

uint64_t sub_1011805E8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  (*(v3 + 8))(v2, v4);

  v1[2](v1);
  _Block_release(v1);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_101180810()
{
  v0 = type metadata accessor for PKStroke();
  v1 = *(v0 - 1);
  __chkstk_darwin(v0);
  v3 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v64 - v5;
  v7 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10098EABC(&_mh_execute_header, "snapToShapeSelectedStrokesCount", 31, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 185);
  v12 = 0;
  if ((v11 & 1) == 0)
  {
    return v12;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v0 = objc_opt_self();
    LODWORD(v18) = [v0 _atomicIncrementAssertCount];
    v90 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v90);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    v46 = [v45 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v47;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  v14 = Strong;
  [Strong viewScale];
  v16 = v15;
  v17 = sub_101181474(1);
  v71 = v17[2];
  if (!v71)
  {

    return 0;
  }

  v65 = v14;
  v78 = 0;
  v18 = 0;
  v19 = *(v7 + 28);
  v20 = v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v87 = (v1 + 16);
  v85 = (v1 + 8);
  v21 = 1.0 / v16;
  v86 = xmmword_10146C6B0;
  v74 = v6;
  v73 = v1;
  v80 = v3;
  v69 = v8;
  v68 = v10;
  v72 = v17;
  v67 = v19;
  v66 = v20;
  while (1)
  {
    if (v18 >= v17[2])
    {
      goto LABEL_42;
    }

    sub_1011A04B8(v20 + *(v8 + 72) * v18, v10, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v22 = *&v10[v19];

    sub_1011A0324(v10, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v77 = *(v22 + 16);
    if (v77)
    {
      break;
    }

LABEL_6:
    ++v18;
    v17 = v72;
    if (v18 == v71)
    {

      return v78;
    }
  }

  v70 = v18;
  v88 = *(v1 + 80);
  v89 = (v88 + 32) & ~v88;
  v76 = v22 + v89;
  v83 = objc_opt_self();
  v23 = 0;
  v75 = v22;
  while (v23 < *(v22 + 16))
  {
    v24 = *(v1 + 72);
    v79 = v23;
    v25 = *(v1 + 16);
    v3 = v87;
    v25(v6, v76 + v24 * v23, v0);
    v26 = sub_1005B981C(&qword_101A11B00);
    v27 = v89;
    v84 = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = v86;
    v25((v28 + v27), v6, v0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = [v83 _snapToShape:isa inputScale:v21];

    if (v30)
    {
      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = PKStroke._bridgeToObjectiveC()().super.isa;
      v18 = [(objc_class *)v32 crl_fill];

      if (!v18)
      {

LABEL_29:
        v6 = v74;
        v22 = v75;
LABEL_30:
        (*v85)(v6, v0);
        if (v78)
        {

          return 2;
        }

        v78 = 1;
        goto LABEL_11;
      }

      v18 = sub_1011A36E4(v31);

      v3 = *(v18 + 16);

      v6 = v74;
      v22 = v75;
      if (v3)
      {
        goto LABEL_30;
      }
    }

    v33 = PKStroke._bridgeToObjectiveC()().super.isa;
    v18 = [(objc_class *)v33 crl_fill];

    if (v18)
    {

      v34 = v89;
      v18 = swift_allocObject();
      *(v18 + 16) = v86;
      v25((v18 + v34), v6, v0);
      v35 = sub_1011A3950(v18);
      swift_setDeallocating();
      v82 = *v85;
      v82((v18 + v34), v0);
      swift_deallocClassInstance();
      v20 = v35;
      v36 = v35[2];
      v3 = v80;
      v81 = v36;
      if (v36)
      {
        v37 = 0;
        v38 = v20 + v89;
        while (v37 < *(v20 + 16))
        {
          v25(v3, v38, v0);
          v39 = v89;
          v40 = swift_allocObject();
          *(v40 + 16) = v86;
          v25((v40 + v39), v3, v0);
          v41 = Array._bridgeToObjectiveC()().super.isa;

          v6 = [v83 _snapToShape:v41 inputScale:v21];

          v18 = v3;
          if (v6)
          {
            v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v3 = PKStroke._bridgeToObjectiveC()().super.isa;
            v43 = [v3 crl_fill];

            if (!v43)
            {

              v18 = v80;
LABEL_28:
              v82(v18, v0);

              v1 = v73;
              goto LABEL_29;
            }

            v44 = sub_1011A36E4(v42);

            v3 = v44[2];

            v18 = v80;
            if (v3)
            {
              goto LABEL_28;
            }
          }

          ++v37;
          v82(v18, v0);
          v38 += v24;
          v3 = v18;
          if (v81 == v37)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        break;
      }

LABEL_10:

      v6 = v74;
      v82(v74, v0);
      v1 = v73;
      v22 = v75;
    }

    else
    {
      (*v85)(v6, v0);
    }

LABEL_11:
    v23 = v79 + 1;
    if (v79 + 1 == v77)
    {

      v8 = v69;
      v10 = v68;
      v18 = v70;
      v19 = v67;
      v20 = v66;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  swift_once();
LABEL_34:
  v48 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v18;
  v50 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v50;
  v51 = sub_1005CF04C();
  *(inited + 104) = v51;
  *(inited + 72) = v3;
  *(inited + 136) = &type metadata for String;
  v52 = sub_1000053B0();
  *(inited + 112) = v20;
  *(inited + 120) = v6;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v52;
  *(inited + 152) = 189;
  v53 = v90;
  *(inited + 216) = v50;
  *(inited + 224) = v51;
  *(inited + 192) = v53;
  v54 = v3;
  v55 = v53;
  v56 = static os_log_type_t.error.getter();
  sub_100005404(v48, &_mh_execute_header, v56, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v57 = static os_log_type_t.error.getter();
  sub_100005404(v48, &_mh_execute_header, v57, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v58 = swift_allocObject();
  v58[2] = 8;
  v58[3] = 0;
  v58[4] = 0;
  v58[5] = 0;
  v59 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v60 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v61 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v62 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v60 file:v61 lineNumber:189 isFatal:0 format:v62 args:v59];

  return 0;
}

void *sub_101181474(char a1)
{
  if ((sub_10098EABC(&_mh_execute_header, "currentlySelectedStrokesWrappers(includeFills:)", 47, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 622) & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v7 = objc_opt_self();
    LODWORD(isa) = [v7 _atomicIncrementAssertCount];
    v83[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v83);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_7;
  }

  v3 = Strong;
  v4 = [Strong editorController];
  if (!v4)
  {
    v30 = v3;
    v31 = objc_opt_self();
    v32 = [v31 _atomicIncrementAssertCount];
    v83[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v83);
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    v35 = [v34 lastPathComponent];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v39 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v32;
    v41 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v41;
    v42 = sub_1005CF04C();
    *(inited + 104) = v42;
    *(inited + 72) = v33;
    *(inited + 136) = &type metadata for String;
    v43 = sub_1000053B0();
    *(inited + 112) = v36;
    *(inited + 120) = v38;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v43;
    *(inited + 152) = 627;
    v44 = v83[0];
    *(inited + 216) = v41;
    *(inited + 224) = v42;
    *(inited + 192) = v44;
    v45 = v33;
    v46 = v44;
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v48 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v48, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v49 = swift_allocObject();
    v49[2] = 8;
    v49[3] = 0;
    v49[4] = 0;
    v49[5] = 0;
    v50 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    [v31 handleFailureInFunction:v27 file:v28 lineNumber:627 isFatal:0 format:v29 args:v50];

    goto LABEL_11;
  }

  v5 = v4;
  if (sub_100006370(0, &qword_101A0C7E0))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  [v5 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v52 = swift_dynamicCastObjCClass();
  if (!v52)
  {

    swift_unknownObjectRelease();
    return _swiftEmptyArrayStorage;
  }

  v75 = v5;
  v76 = a1;
  v53 = [v52 allShapeItems];
  v14 = type metadata accessor for CRLShapeItem();
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = sub_100E95618(v54);

  sub_1012E3C14(v12);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v77 = v3;
  v7 = [v3 topLevelZOrderedSiblingsOfInfos:isa];

  sub_1005B981C(&qword_1019F5720);
  v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v83[0] = _swiftEmptyArrayStorage;
  v9 = (v55 & 0xFFFFFFFFFFFFFF8);
  if (v55 >> 62)
  {
    v56 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v56)
  {
    v78 = _swiftEmptyArrayStorage;
LABEL_35:

    v83[0] = _swiftEmptyArrayStorage;
    v59 = v78;
    if (v78 >> 62)
    {
      v7 = v78;
      isa = _CocoaArrayWrapper.endIndex.getter();
      v59 = v78;
      v60 = v3;
      if (isa)
      {
        goto LABEL_37;
      }
    }

    else
    {
      isa = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v60 = v3;
      if (isa)
      {
LABEL_37:
        v61 = 0;
        v81 = v59 & 0xFFFFFFFFFFFFFF8;
        v82 = v59 & 0xC000000000000001;
        v79 = isa;
        v80 = v59 + 32;
        v9 = (v12 & 0xC000000000000001);
        v62 = v12 + 56;
        while (1)
        {
          while (1)
          {
            if (v82)
            {
              v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v61 >= *(v81 + 16))
              {
                goto LABEL_60;
              }

              v63 = *(v80 + 8 * v61);
            }

            v7 = v63;
            v64 = __OFADD__(v61, 1);
            v61 = (v61 + 1);
            if (v64)
            {
              goto LABEL_59;
            }

            if (!v9)
            {
              break;
            }

            v65 = v63;
            v66 = __CocoaSet.contains(_:)();

            if ((v66 & 1) == 0)
            {

              goto LABEL_39;
            }

LABEL_38:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
LABEL_39:
            isa = v79;
            if (v61 == v79)
            {
              goto LABEL_56;
            }
          }

          if (*(v12 + 16))
          {
            v67 = NSObject._rawHashValue(seed:)(*(v12 + 40));
            v68 = -1 << *(v12 + 32);
            v69 = v67 & ~v68;
            if (((*(v62 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
            {
LABEL_52:

              goto LABEL_39;
            }

            v70 = ~v68;
            while (1)
            {
              v71 = *(*(v12 + 48) + 8 * v69);
              v72 = static NSObject.== infix(_:_:)();

              if (v72)
              {
                goto LABEL_38;
              }

              v69 = (v69 + 1) & v70;
              if (((*(v62 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
              {
                goto LABEL_52;
              }
            }
          }

          if (v61 == isa)
          {
LABEL_56:
            v73 = v83[0];
            v60 = v77;
            goto LABEL_65;
          }
        }
      }
    }

    v73 = _swiftEmptyArrayStorage;
LABEL_65:

    v74 = sub_10118D4A8(v73, v76 & 1);

    swift_unknownObjectRelease();

    return v74;
  }

  v57 = 0;
  v78 = _swiftEmptyArrayStorage;
LABEL_19:
  v7 = v57;
  while ((v55 & 0xC000000000000001) != 0)
  {
    LODWORD(isa) = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v57 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_57;
    }

LABEL_23:
    type metadata accessor for CRLFreehandDrawingShapeItem();
    v58 = swift_dynamicCastClass();
    if (v58)
    {
      v7 = v58;
      isa = v83;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v78 = v83[0];
      if (v57 == v56)
      {
        goto LABEL_35;
      }

      goto LABEL_19;
    }

    swift_unknownObjectRelease();
    ++v7;
    if (v57 == v56)
    {
      goto LABEL_35;
    }
  }

  if (v7 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_58;
  }

  isa = *(v55 + 8 * v7 + 32);
  swift_unknownObjectRetain();
  v57 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_23;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  swift_once();
LABEL_7:
  v15 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_10146CA70;
  *(v16 + 56) = &type metadata for Int32;
  *(v16 + 64) = &protocol witness table for Int32;
  *(v16 + 32) = isa;
  v17 = sub_100006370(0, &qword_1019F4D30);
  *(v16 + 96) = v17;
  v18 = sub_1005CF04C();
  *(v16 + 104) = v18;
  *(v16 + 72) = v9;
  *(v16 + 136) = &type metadata for String;
  v19 = sub_1000053B0();
  *(v16 + 112) = v12;
  *(v16 + 120) = v14;
  *(v16 + 176) = &type metadata for UInt;
  *(v16 + 184) = &protocol witness table for UInt;
  *(v16 + 144) = v19;
  *(v16 + 152) = 626;
  v20 = v83[0];
  *(v16 + 216) = v17;
  *(v16 + 224) = v18;
  *(v16 + 192) = v20;
  v21 = v9;
  v22 = v20;
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v16);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v25 = swift_allocObject();
  v25[2] = 8;
  v25[3] = 0;
  v25[4] = 0;
  v25[5] = 0;
  v26 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v29 = String._bridgeToObjectiveC()();

  [v7 handleFailureInFunction:v27 file:v28 lineNumber:626 isFatal:0 format:v29 args:v26];
LABEL_11:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10118205C()
{
  v1[31] = v0;
  v2 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper(0);
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v3 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
  v1[36] = v3;
  v1[37] = *(v3 - 8);
  v1[38] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[39] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[40] = v5;
  v1[41] = v4;

  return _swift_task_switch(sub_1011821B8, v5, v4);
}

uint64_t sub_1011821B8()
{
  v37 = v0;
  if (sub_10098EABC(&_mh_execute_header, "snapToShapeSelectedStrokes()", 28, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 259))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[42] = Strong;
    if (Strong)
    {
      [Strong viewScale];
      v0[43] = v2;
      sub_101180810();
      v3 = [objc_opt_self() mainBundle];
      v4 = String._bridgeToObjectiveC()();
      v5 = String._bridgeToObjectiveC()();
      v6 = String._bridgeToObjectiveC()();
      v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v0[44] = v10;
      v0[45] = v8;
      v0[46] = sub_101181474(1);

      return _swift_task_switch(sub_101182764, 0, 0);
    }

    v11 = objc_opt_self();
    v12 = [v11 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v12;
    v21 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v21;
    v22 = sub_1005CF04C();
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 263;
    v24 = v36;
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    [v11 handleFailureInFunction:v31 file:v32 lineNumber:263 isFatal:0 format:v33 args:v30];
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_101182764()
{
  v1 = *(v0 + 368);
  v2 = *(v1 + 16);
  *(v0 + 376) = v2;
  if (v2)
  {
    v4 = *(v0 + 288);
    v3 = *(v0 + 296);
    v5 = *(v3 + 80);
    *(v0 + 448) = v5;
    *(v0 + 384) = *(v3 + 72);
    *(v0 + 416) = 0;
    *(v0 + 424) = _swiftEmptyArrayStorage;
    v6 = *(v0 + 344);
    v7 = *(v0 + 304);
    sub_1011A04B8(v1 + ((v5 + 32) & ~v5), v7, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v8 = *(v7 + *(v4 + 28));
    v9 = swift_task_alloc();
    *(v0 + 432) = v9;
    *v9 = v0;
    v9[1] = sub_101182BC4;
    v10 = *(v0 + 248);

    return sub_1011A4180(v8, v10, 1.0 / v6);
  }

  else
  {

    *(v0 + 392) = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      v13 = *(v0 + 352);
      v12 = *(v0 + 360);
      v14 = *(v0 + 248);
      v15 = swift_task_alloc();
      *(v0 + 400) = v15;
      *(v15 + 16) = v14;
      *(v15 + 24) = _swiftEmptyArrayStorage;
      *(v15 + 32) = v12;
      *(v15 + 40) = v13;
      *(v15 + 48) = 1;
      v16 = swift_task_alloc();
      *(v0 + 408) = v16;
      *v16 = v0;
      v16[1] = sub_1011829D0;

      return withCheckedContinuation<A>(isolation:function:_:)(v16, 0, 0, 0xD00000000000003ALL, 0x80000001015C4850, sub_1011A7394, v15, &type metadata for () + 8);
    }

    else
    {

      v17 = *(v0 + 320);
      v18 = *(v0 + 328);

      return _swift_task_switch(sub_101182B40, v17, v18);
    }
  }
}

uint64_t sub_1011829D0()
{

  return _swift_task_switch(sub_101182B28, 0, 0);
}

uint64_t sub_101182B40()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_101182BC4(uint64_t a1)
{
  *(*v1 + 440) = a1;

  return _swift_task_switch(sub_101182CC4, 0, 0);
}

uint64_t sub_101182CC4()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 424);
  if (v1)
  {
    v4 = *(v0 + 272);
    v3 = *(v0 + 280);
    v5 = *(v0 + 256);
    sub_1011A04B8(*(v0 + 304), v3, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    *(v3 + *(v5 + 20)) = v1;
    *(v3 + *(v5 + 24)) = 0;
    sub_1011A04B8(v3, v4, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 424);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_100B39988(0, v2[2] + 1, 1, *(v0 + 424));
    }

    v8 = v2[2];
    v7 = v2[3];
    if (v8 >= v7 >> 1)
    {
      v2 = sub_100B39988(v7 > 1, v8 + 1, 1, v2);
    }

    v9 = *(v0 + 272);
    v10 = *(v0 + 264);
    sub_1011A0324(*(v0 + 280), type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
    v2[2] = v8 + 1;
    sub_1011A0450(v9, v2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  }

  v11 = *(v0 + 376);
  v12 = *(v0 + 416) + 1;
  sub_1011A0324(*(v0 + 304), type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
  if (v12 == v11)
  {

    *(v0 + 392) = v2;
    if (v2[2])
    {
      v14 = *(v0 + 352);
      v13 = *(v0 + 360);
      v15 = *(v0 + 248);
      v16 = swift_task_alloc();
      *(v0 + 400) = v16;
      *(v16 + 16) = v15;
      *(v16 + 24) = v2;
      *(v16 + 32) = v13;
      *(v16 + 40) = v14;
      *(v16 + 48) = 1;
      v17 = swift_task_alloc();
      *(v0 + 408) = v17;
      *v17 = v0;
      v17[1] = sub_1011829D0;

      return withCheckedContinuation<A>(isolation:function:_:)(v17, 0, 0, 0xD00000000000003ALL, 0x80000001015C4850, sub_1011A7394, v16, &type metadata for () + 8);
    }

    else
    {

      v24 = *(v0 + 320);
      v25 = *(v0 + 328);

      return _swift_task_switch(sub_101182B40, v24, v25);
    }
  }

  else
  {
    *(v0 + 416) = v12;
    *(v0 + 424) = v2;
    v18 = *(v0 + 344);
    v19 = *(v0 + 304);
    v20 = *(v0 + 288);
    sub_1011A04B8(*(v0 + 368) + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(v0 + 384) * v12, v19, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v21 = *(v19 + *(v20 + 28));
    v22 = swift_task_alloc();
    *(v0 + 432) = v22;
    *v22 = v0;
    v22[1] = sub_101182BC4;
    v23 = *(v0 + 248);

    return sub_1011A4180(v21, v23, 1.0 / v18);
  }
}

uint64_t sub_1011831CC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101183264, v4, v3);
}

uint64_t sub_101183264()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1011A7384;

  return sub_10118205C();
}

uint64_t sub_101183314(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  v4 = type metadata accessor for PKStroke();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  sub_1005B981C(&qword_101A01C10);
  *(v3 + 64) = swift_task_alloc();
  v5 = type metadata accessor for PKDrawing();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_101183470, 0, 0);
}

uint64_t sub_101183470()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  sub_1005B981C(&qword_101A11B00);
  *(v0 + 96) = *(v2 + 72);
  v4 = *(v2 + 80);
  *(v0 + 136) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 104) = v6;
  *(v6 + 16) = xmmword_10146C6B0;
  v7 = *(v2 + 16);
  *(v0 + 112) = v7;
  *(v0 + 120) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v6 + v5, v3, v1);
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *v8 = v0;
  v8[1] = sub_1011835B0;
  v9 = *(v0 + 64);
  v10.n128_u64[0] = *(v0 + 24);

  return RecognitionController.drawingBySnapping(strokes:inputScale:)(v9, v6, v10);
}

uint64_t sub_1011835B0()
{

  return _swift_task_switch(sub_1011836C8, 0, 0);
}

uint64_t sub_1011836C8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000CAAC(v3, &qword_101A01C10);
LABEL_3:
    v4 = 0;
    goto LABEL_11;
  }

  (*(v2 + 32))(*(v0 + 88), v3, v1);
  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  v6 = [(objc_class *)isa crl_fill];

  v7 = PKDrawing.strokes.getter();
  v8 = v7;
  if (v6)
  {
    v9 = sub_1011A36E4(v7);

    v22 = v9;
    v10 = v9[2];
    if (v10)
    {
      v11 = 0;
      v12 = v9 + ((*(v0 + 136) + 32) & ~*(v0 + 136));
      v13 = (*(v0 + 48) + 8);
      do
      {
        v14 = *(v0 + 56);
        v15 = *(v0 + 40);
        (*(v0 + 112))(v14, &v12[*(v0 + 96) * v11++], v15);
        v16 = PKStroke._bridgeToObjectiveC()().super.isa;
        (*v13)(v14, v15);
        [(objc_class *)v16 crl_setFill:v6];
      }

      while (v10 != v11);
    }

    v17 = *(v0 + 80);
    v18 = *(v0 + 88);
    v19 = *(v0 + 72);

    (*(v17 + 8))(v18, v19);
    v4 = v22;
    if (!v22[2])
    {

      goto LABEL_3;
    }
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v4 = v8;
  }

LABEL_11:

  v20 = *(v0 + 8);

  return v20(v4);
}

uint64_t sub_101183904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v7[21] = v9;
  v7[22] = *(v9 - 8);
  v7[23] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v7[24] = v10;
  v7[25] = *(v10 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = type metadata accessor for MainActor();
  v7[28] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v7[29] = v11;
  *v11 = v7;
  v11[1] = sub_101183A7C;

  return sub_101183FD4(a5);
}

uint64_t sub_101183A7C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[14] = v2;
  v3[15] = a1;
  v3[16] = a2;
  v3[30] = a1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101183BC8, v5, v4);
}

uint64_t sub_101183BC8()
{
  v1 = v0[30];

  if (v1)
  {
    v2 = v0[30];
    v3 = v0[16];
    v22 = v0[26];
    v4 = v0[23];
    v25 = v0[25];
    v27 = v0[24];
    v6 = v0[21];
    v5 = v0[22];
    v8 = v0[19];
    v7 = v0[20];
    sub_100006370(0, &qword_1019F2D90);
    v23 = static OS_dispatch_queue.main.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = v7;
    v9[4] = v2;
    v9[5] = v3;
    v0[12] = sub_1011A6920;
    v0[13] = v9;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = *"";
    v0[10] = sub_100007638;
    v0[11] = &unk_1018B5FA8;
    v10 = _Block_copy(v0 + 8);

    v21 = v2;
    static DispatchQoS.unspecified.getter();
    v0[18] = _swiftEmptyArrayStorage;
    sub_10119D3B8(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10000D494();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);

    (*(v5 + 8))(v4, v6);
    (*(v25 + 8))(v22, v27);
  }

  else
  {
    v11 = v0[26];
    v12 = v0[23];
    v26 = v0[25];
    v28 = v0[24];
    v14 = v0[21];
    v13 = v0[22];
    v15 = v0[19];
    v16 = v0[20];
    sub_100006370(0, &qword_1019F2D90);
    v24 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v0[6] = sub_1011A68F0;
    v0[7] = v17;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = *"";
    v0[4] = sub_100007638;
    v0[5] = &unk_1018B5F58;
    v18 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[17] = _swiftEmptyArrayStorage;
    sub_10119D3B8(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10000D494();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v13 + 8))(v12, v14);
    (*(v26 + 8))(v11, v28);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_101183FD4(uint64_t a1)
{
  v2[119] = v1;
  v2[118] = a1;
  sub_1005B981C(&unk_101A2BF40);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v3 = type metadata accessor for PKStroke();
  v2[122] = v3;
  v2[123] = *(v3 - 8);
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();
  sub_1005B981C(&qword_101A01C10);
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v4 = type metadata accessor for PKDrawing();
  v2[128] = v4;
  v2[129] = *(v4 - 8);
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[132] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[133] = v6;
  v2[134] = v5;

  return _swift_task_switch(sub_1011841CC, v6, v5);
}

uint64_t sub_1011841CC()
{
  v40 = v0;
  if (sub_10098EABC(&_mh_execute_header, "pathBySnappingFillPathToShape(_:)", 33, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 366))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 1080) = Strong;
    if (Strong)
    {
      v2 = *(v0 + 952);
      v3 = *(v0 + 944);
      [Strong viewScale];
      *(v0 + 1088) = v4;
      v5 = 1.0 / v4;
      v6 = objc_opt_self();
      *(v0 + 1096) = v6;
      v7 = [objc_opt_self() blackColor];
      v8 = [objc_allocWithZone(CRLPencilKitInkStroke) initWithInkType:PKInkTypePen color:v7 adjustedWidth:1.0];

      v9 = [v6 pencilKitStrokesFromPath:v3 inkStroke:v8 strokePathCompactData:0 maskPath:0 snappedShapeType:0];
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 1104) = v10;

      *(v0 + 1112) = *(v2 + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_recognitionController);
      v11 = swift_task_alloc();
      *(v0 + 1120) = v11;
      *v11 = v0;
      v11[1] = sub_1011847E4;
      v12 = *(v0 + 1016);
      v13.n128_f64[0] = v5;

      return RecognitionController.drawingBySnapping(strokes:inputScale:)(v12, v10, v13);
    }

    v14 = objc_opt_self();
    v15 = [v14 _atomicIncrementAssertCount];
    v39 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v39);
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
    v24 = sub_100006370(0, &qword_1019F4D30);
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
    *(inited + 152) = 370;
    v27 = v39;
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
    sub_100005404(v22, &_mh_execute_header, v31, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    [v14 handleFailureInFunction:v34 file:v35 lineNumber:370 isFatal:0 format:v36 args:v33];
  }

  v37 = *(v0 + 8);

  return v37(0, 0);
}

uint64_t sub_1011847E4()
{
  v1 = *v0;

  v2 = *(v1 + 1072);
  v3 = *(v1 + 1064);

  return _swift_task_switch(sub_101184904, v3, v2);
}

uint64_t sub_101184904()
{
  v126 = v0;
  v3 = *(v0 + 129);
  v4 = *(v0 + 128);
  v5 = *(v0 + 127);
  v6 = *(v3 + 48);
  *(v0 + 141) = v6;
  *(v0 + 142) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v5, 1, v4) == 1)
  {
    sub_10000CAAC(v5, &qword_101A01C10);
LABEL_7:
    v13 = v0[136];
    v14 = sub_1011A3950(*(v0 + 138));
    *(v0 + 143) = v14;

    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v15[1] = sub_1011859CC;
    v17 = *(v0 + 126);

    v16.n128_f64[0] = 1.0 / v13;
    return RecognitionController.drawingBySnapping(strokes:inputScale:)(v17, v14, v16);
  }

  v7 = *(v0 + 131);
  (*(v3 + 32))(v7, v5, v4);
  v8 = PKDrawing.strokes.getter();
  v9 = sub_1011A36E4(v8);

  (*(v3 + 8))(v7, v4);
  if (!v9[2])
  {

    goto LABEL_7;
  }

  v10 = *(v0 + 123);
  v11 = *(v0 + 122);
  v12 = *(v0 + 120);
  v124 = v0;
  if (v9[2])
  {
    (*(v10 + 16))(v12, v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v11);
    (*(v10 + 56))(v12, 0, 1, v11);
  }

  else
  {
    v119 = v9;
    (*(v10 + 56))(v12, 1, 1, v11);
    v18 = objc_opt_self();
    v19 = [v18 _atomicIncrementAssertCount];
    v125 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v125);
    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v24;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v19;
    v27 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v27;
    v28 = sub_1005CF04C();
    *(inited + 104) = v28;
    *(inited + 72) = v20;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v23;
    *(inited + 120) = v2;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 409;
    v30 = v125;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v30;
    v31 = v20;
    isa = v30;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v33, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v35 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    [v18 handleFailureInFunction:v36 file:v37 lineNumber:409 isFatal:0 format:v38 args:v35];

    v0 = v124;

    v9 = v119;
  }

  v39 = *(v0 + 123);
  v40 = *(v0 + 122);
  v41 = *(v0 + 121);
  sub_10003DFF8(*(v0 + 120), v41, &unk_101A2BF40);
  if ((*(v39 + 48))(v41, 1, v40) != 1)
  {
    (*(*(v0 + 123) + 32))(*(v0 + 125), *(v0 + 121), *(v0 + 122));
    v45.super.isa = PKStroke._bridgeToObjectiveC()().super.isa;
    v46 = [(objc_class *)v45.super.isa _shapeType];

    v47 = sub_100D633F0(v46);
    v48 = v47;
    v49 = v9[2];
    if (v49)
    {
      v116 = v47;
      v50 = *(v0 + 123);
      v125 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v51 = *(v50 + 16);
      v2 = v50 + 16;
      v122 = v51;
      v9 = (v9 + ((*(v2 + 64) + 32) & ~*(v2 + 64)));
      v52 = *(v2 + 56);
      do
      {
        v53 = *(v0 + 137);
        v54 = *(v0 + 124);
        v55 = *(v124 + 122);
        v122(v54, v9, v55);
        isa = PKStroke._bridgeToObjectiveC()().super.isa;
        v56 = [v53 pathFromPKStroke:isa pencilKitStrokePathData:0];

        (*(v2 - 8))(v54, v55);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v0 = v124;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v45.super.isa = &v125;
        specialized ContiguousArray._endMutation()();
        v9 = (v9 + v52);
        --v49;
      }

      while (v49);

      v57 = v125;
      v48 = v116;
      if (!(v125 >> 62))
      {
LABEL_20:
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
        {
LABEL_21:
          if ((v57 & 0xC000000000000001) != 0)
          {
            v58 = v48;
            v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_24;
          }

          if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v58 = v48;
            v59 = *(v57 + 32);
LABEL_24:
            v43 = v59;
            v60 = *(v0 + 135);
            v61 = *(v0 + 125);
            v62 = *(v0 + 123);
            v63 = *(v0 + 122);

            (*(v62 + 8))(v61, v63);
            v44 = v58;
            goto LABEL_36;
          }

          __break(1u);
LABEL_43:
          swift_once();
LABEL_40:
          v121 = *(v0 + 125);
          v96 = *(v0 + 123);
          v115 = *(v0 + 135);
          v118 = *(v0 + 122);
          v97 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          v98 = swift_initStackObject();
          *(v98 + 16) = xmmword_10146CA70;
          *(v98 + 56) = &type metadata for Int32;
          *(v98 + 64) = &protocol witness table for Int32;
          *(v98 + 32) = v45.super.isa;
          v99 = sub_100006370(0, &qword_1019F4D30);
          *(v98 + 96) = v99;
          v100 = sub_1005CF04C();
          *(v98 + 104) = v100;
          *(v98 + 72) = v9;
          *(v98 + 136) = &type metadata for String;
          v101 = sub_1000053B0();
          *(v98 + 112) = isa;
          *(v98 + 120) = v2;
          *(v98 + 176) = &type metadata for UInt;
          *(v98 + 184) = &protocol witness table for UInt;
          *(v98 + 144) = v101;
          *(v98 + 152) = 426;
          v102 = v125;
          *(v98 + 216) = v99;
          *(v98 + 224) = v100;
          *(v98 + 192) = v102;
          v103 = v9;
          v104 = v102;
          v105 = static os_log_type_t.error.getter();
          sub_100005404(v97, &_mh_execute_header, v105, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v98);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v106 = static os_log_type_t.error.getter();
          sub_100005404(v97, &_mh_execute_header, v106, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v107 = swift_allocObject();
          v107[2] = 8;
          v107[3] = 0;
          v107[4] = 0;
          v107[5] = 0;
          v108 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v109 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v110 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v111 = String._bridgeToObjectiveC()();

          [v122 handleFailureInFunction:v109 file:v110 lineNumber:426 isFatal:0 format:v111 args:v108];

          v0 = v124;

          (*(v96 + 8))(v121, v118);
          goto LABEL_15;
        }

        goto LABEL_34;
      }
    }

    else
    {

      v57 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_20;
      }
    }

    if (v57 < 0)
    {
      LODWORD(v45.super.isa) = v57;
    }

    else
    {
      LODWORD(v45.super.isa) = v57 & 0xFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() == 1)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {

        v123 = objc_opt_self();
        v64 = [v123 _atomicIncrementAssertCount];
        v125 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v125);
        StaticString.description.getter();
        v65 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v66 = String._bridgeToObjectiveC()();

        v67 = [v66 lastPathComponent];

        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v113 = *(v124 + 135);
        v114 = *(v124 + 123);
        v117 = *(v124 + 122);
        v120 = *(v124 + 125);
        v71 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v72 = swift_initStackObject();
        *(v72 + 16) = xmmword_10146CA70;
        *(v72 + 56) = &type metadata for Int32;
        *(v72 + 64) = &protocol witness table for Int32;
        *(v72 + 32) = v64;
        v73 = sub_100006370(0, &qword_1019F4D30);
        *(v72 + 96) = v73;
        v74 = sub_1005CF04C();
        *(v72 + 104) = v74;
        *(v72 + 72) = v65;
        *(v72 + 136) = &type metadata for String;
        v75 = sub_1000053B0();
        *(v72 + 112) = v68;
        *(v72 + 120) = v70;
        *(v72 + 176) = &type metadata for UInt;
        *(v72 + 184) = &protocol witness table for UInt;
        *(v72 + 144) = v75;
        *(v72 + 152) = 420;
        v76 = v125;
        *(v72 + 216) = v73;
        *(v72 + 224) = v74;
        *(v72 + 192) = v76;
        v77 = v65;
        v78 = v76;
        v79 = static os_log_type_t.error.getter();
        sub_100005404(v71, &_mh_execute_header, v79, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v72);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v80 = static os_log_type_t.error.getter();
        sub_100005404(v71, &_mh_execute_header, v80, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v81 = swift_allocObject();
        v81[2] = 8;
        v81[3] = 0;
        v81[4] = 0;
        v81[5] = 0;
        v82 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v83 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v84 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v85 = String._bridgeToObjectiveC()();

        [v123 handleFailureInFunction:v83 file:v84 lineNumber:420 isFatal:0 format:v85 args:v82];

        v0 = v124;

        (*(v114 + 8))(v120, v117);
        goto LABEL_15;
      }

      goto LABEL_21;
    }

LABEL_34:
    v86 = objc_opt_self();
    sub_100006370(0, &qword_101A02480);
    v87 = Array._bridgeToObjectiveC()().super.isa;

    v43 = [v86 uniteBezierPaths:v87];

    if (v43)
    {
      v88 = *(v0 + 125);
      v89 = v48;
      v90 = *(v0 + 123);
      v91 = *(v0 + 122);

      (*(v90 + 8))(v88, v91);
      v44 = v89;
      goto LABEL_36;
    }

    v122 = objc_opt_self();
    LODWORD(v45.super.isa) = [v122 _atomicIncrementAssertCount];
    v125 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v125);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v93 = String._bridgeToObjectiveC()();

    v94 = [v93 lastPathComponent];

    isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v95;

    if (qword_1019F20A0 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_43;
  }

  v42 = *(v0 + 121);

  sub_10000CAAC(v42, &unk_101A2BF40);
LABEL_15:
  v43 = 0;
  v44 = 0;
LABEL_36:

  v92 = *(v0 + 1);

  return v92(v43, v44);
}

uint64_t sub_1011859CC()
{
  v1 = *v0;

  v2 = *(v1 + 1072);
  v3 = *(v1 + 1064);

  return _swift_task_switch(sub_101185B10, v3, v2);
}

uint64_t sub_101185B10()
{
  v122 = v0;
  v3 = v0[141];
  v4 = v0[128];
  v5 = v0[126];

  if (v3(v5, 1, v4) == 1)
  {
    v6 = v0[135];
    sub_10000CAAC(v0[126], &qword_101A01C10);

LABEL_12:
    v43 = 0;
    v44 = 0;
    goto LABEL_13;
  }

  (*(v0[129] + 32))(v0[130], v0[126], v0[128]);
  v7 = PKDrawing.strokes.getter();
  v8 = sub_1011A36E4(v7);

  v9 = v8[2];

  if (!v9)
  {
    v17 = v0[135];
    (*(v0[129] + 8))(v0[130], v0[128]);

    goto LABEL_12;
  }

  v10 = v0[130];
  v11 = v0[129];
  v12 = v0[128];
  v13 = PKDrawing.strokes.getter();
  (*(v11 + 8))(v10, v12);
  v14 = v0[123];
  v15 = v0[122];
  v16 = v0[120];
  v120 = v0;
  if (v13[2])
  {
    (*(v14 + 16))(v16, v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v15);
    (*(v14 + 56))(v16, 0, 1, v15);
  }

  else
  {
    v115 = v13;
    (*(v14 + 56))(v16, 1, 1, v15);
    v18 = objc_opt_self();
    v19 = [v18 _atomicIncrementAssertCount];
    v121 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v121);
    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v24;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v19;
    v27 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v27;
    v28 = sub_1005CF04C();
    *(inited + 104) = v28;
    *(inited + 72) = v20;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v23;
    *(inited + 120) = v2;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 409;
    v30 = v121;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v30;
    v31 = v20;
    isa = v30;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v33, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v35 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    [v18 handleFailureInFunction:v36 file:v37 lineNumber:409 isFatal:0 format:v38 args:v35];

    v0 = v120;

    v13 = v115;
  }

  v39 = v0[123];
  v40 = v0[122];
  v41 = v0[121];
  sub_10003DFF8(v0[120], v41, &unk_101A2BF40);
  if ((*(v39 + 48))(v41, 1, v40) == 1)
  {
    v42 = v0[121];

    sub_10000CAAC(v42, &unk_101A2BF40);
    goto LABEL_12;
  }

  (*(v0[123] + 32))(v0[125], v0[121], v0[122]);
  v47.super.isa = PKStroke._bridgeToObjectiveC()().super.isa;
  v48 = [(objc_class *)v47.super.isa _shapeType];

  v112 = sub_100D633F0(v48);
  v49 = v13[2];
  if (v49)
  {
    v50 = v0[123];
    v121 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v51 = *(v50 + 16);
    v2 = v50 + 16;
    v118 = v51;
    v13 = (v13 + ((*(v2 + 64) + 32) & ~*(v2 + 64)));
    v52 = *(v2 + 56);
    do
    {
      v53 = v0[137];
      v54 = v0[124];
      v55 = v120[122];
      v118(v54, v13, v55);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      v56 = [v53 pathFromPKStroke:isa pencilKitStrokePathData:0];

      (*(v2 - 8))(v54, v55);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v0 = v120;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v47.super.isa = &v121;
      specialized ContiguousArray._endMutation()();
      v13 = (v13 + v52);
      --v49;
    }

    while (v49);

    v57 = v121;
    if (!(v121 >> 62))
    {
LABEL_20:
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_21;
      }

LABEL_34:
      v85 = objc_opt_self();
      sub_100006370(0, &qword_101A02480);
      v86 = Array._bridgeToObjectiveC()().super.isa;

      v43 = [v85 uniteBezierPaths:v86];

      if (v43)
      {
        v87 = v0[125];
        v88 = v0[123];
        v89 = v0[122];

        (*(v88 + 8))(v87, v89);
        goto LABEL_36;
      }

      v118 = objc_opt_self();
      LODWORD(v47.super.isa) = [v118 _atomicIncrementAssertCount];
      v121 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v121);
      StaticString.description.getter();
      v13 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v90 = String._bridgeToObjectiveC()();

      v91 = [v90 lastPathComponent];

      isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v92;

      if (qword_1019F20A0 == -1)
      {
LABEL_38:
        v117 = v0[125];
        v93 = v0[123];
        v111 = v0[135];
        v114 = v0[122];
        v94 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v95 = swift_initStackObject();
        *(v95 + 16) = xmmword_10146CA70;
        *(v95 + 56) = &type metadata for Int32;
        *(v95 + 64) = &protocol witness table for Int32;
        *(v95 + 32) = v47.super.isa;
        v96 = sub_100006370(0, &qword_1019F4D30);
        *(v95 + 96) = v96;
        v97 = sub_1005CF04C();
        *(v95 + 104) = v97;
        *(v95 + 72) = v13;
        *(v95 + 136) = &type metadata for String;
        v98 = sub_1000053B0();
        *(v95 + 112) = isa;
        *(v95 + 120) = v2;
        *(v95 + 176) = &type metadata for UInt;
        *(v95 + 184) = &protocol witness table for UInt;
        *(v95 + 144) = v98;
        *(v95 + 152) = 426;
        v99 = v121;
        *(v95 + 216) = v96;
        *(v95 + 224) = v97;
        *(v95 + 192) = v99;
        v100 = v13;
        v101 = v99;
        v102 = static os_log_type_t.error.getter();
        sub_100005404(v94, &_mh_execute_header, v102, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v95);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v103 = static os_log_type_t.error.getter();
        sub_100005404(v94, &_mh_execute_header, v103, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v104 = swift_allocObject();
        v104[2] = 8;
        v104[3] = 0;
        v104[4] = 0;
        v104[5] = 0;
        v105 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v106 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v107 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v108 = String._bridgeToObjectiveC()();

        [v118 handleFailureInFunction:v106 file:v107 lineNumber:426 isFatal:0 format:v108 args:v105];

        v0 = v120;

        (*(v93 + 8))(v117, v114);
        goto LABEL_12;
      }

LABEL_41:
      swift_once();
      goto LABEL_38;
    }
  }

  else
  {

    v57 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_20;
    }
  }

  if (v57 < 0)
  {
    LODWORD(v47.super.isa) = v57;
  }

  else
  {
    LODWORD(v47.super.isa) = v57 & 0xFFFFFFF8;
  }

  if (_CocoaArrayWrapper.endIndex.getter() != 1)
  {
    goto LABEL_34;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {

    v119 = objc_opt_self();
    v63 = [v119 _atomicIncrementAssertCount];
    v121 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v121);
    StaticString.description.getter();
    v64 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v65 = String._bridgeToObjectiveC()();

    v66 = [v65 lastPathComponent];

    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v109 = v120[135];
    v110 = v120[123];
    v113 = v120[122];
    v116 = v120[125];
    v70 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_10146CA70;
    *(v71 + 56) = &type metadata for Int32;
    *(v71 + 64) = &protocol witness table for Int32;
    *(v71 + 32) = v63;
    v72 = sub_100006370(0, &qword_1019F4D30);
    *(v71 + 96) = v72;
    v73 = sub_1005CF04C();
    *(v71 + 104) = v73;
    *(v71 + 72) = v64;
    *(v71 + 136) = &type metadata for String;
    v74 = sub_1000053B0();
    *(v71 + 112) = v67;
    *(v71 + 120) = v69;
    *(v71 + 176) = &type metadata for UInt;
    *(v71 + 184) = &protocol witness table for UInt;
    *(v71 + 144) = v74;
    *(v71 + 152) = 420;
    v75 = v121;
    *(v71 + 216) = v72;
    *(v71 + 224) = v73;
    *(v71 + 192) = v75;
    v76 = v64;
    v77 = v75;
    v78 = static os_log_type_t.error.getter();
    sub_100005404(v70, &_mh_execute_header, v78, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v71);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v79 = static os_log_type_t.error.getter();
    sub_100005404(v70, &_mh_execute_header, v79, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v80 = swift_allocObject();
    v80[2] = 8;
    v80[3] = 0;
    v80[4] = 0;
    v80[5] = 0;
    v81 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v83 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v84 = String._bridgeToObjectiveC()();

    [v119 handleFailureInFunction:v82 file:v83 lineNumber:420 isFatal:0 format:v84 args:v81];

    v0 = v120;

    (*(v110 + 8))(v116, v113);
    goto LABEL_12;
  }

LABEL_21:
  if ((v57 & 0xC000000000000001) != 0)
  {
    v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_24;
  }

  if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_41;
  }

  v58 = *(v57 + 32);
LABEL_24:
  v43 = v58;
  v59 = v0[135];
  v60 = v0[125];
  v61 = v0[123];
  v62 = v0[122];

  (*(v61 + 8))(v60, v62);
LABEL_36:
  v44 = v112;
LABEL_13:

  v45 = v0[1];

  return v45(v43, v44);
}

uint64_t sub_101186CB0()
{
  v1[2] = v0;
  v2 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper(0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_1005B981C(&qword_101A01C10);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v5;
  v1[14] = v4;

  return _swift_task_switch(sub_101186E48, v5, v4);
}

uint64_t sub_101186E48()
{
  if (sub_10098EABC(&_mh_execute_header, "straightenHandwritingInSelectedStrokes()", 40, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 485))
  {
    v0[15] = sub_101181474(0);
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v0[16] = v6;
    v0[17] = v8;

    return _swift_task_switch(sub_101187034, 0, 0);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_101187034()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;
  if (v2)
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    *(v0 + 152) = *(*(v0 + 16) + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_recognitionController);
    v5 = *(v3 + 80);
    *(v0 + 232) = v5;
    *(v0 + 160) = *(v3 + 72);
    *(v0 + 192) = 0;
    *(v0 + 200) = _swiftEmptyArrayStorage;
    v6 = *(v0 + 80);
    sub_1011A04B8(v1 + ((v5 + 32) & ~v5), v6, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v7 = *(v6 + *(v4 + 28));
    *(v0 + 208) = static MainActor.shared.getter();
    v8 = swift_task_alloc();
    *(v0 + 216) = v8;
    *v8 = v0;
    v8[1] = sub_1011874AC;
    v9 = *(v0 + 56);

    return RecognitionController.drawingByStraighteningHandwriting(in:)(v9, v7);
  }

  else
  {

    *(v0 + 168) = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = *(v0 + 16);
      v13 = swift_task_alloc();
      *(v0 + 176) = v13;
      *(v13 + 16) = v12;
      *(v13 + 24) = _swiftEmptyArrayStorage;
      *(v13 + 32) = v11;
      *(v13 + 40) = v10;
      *(v13 + 48) = 1;
      v14 = swift_task_alloc();
      *(v0 + 184) = v14;
      *v14 = v0;
      v14[1] = sub_1011872AC;

      return withCheckedContinuation<A>(isolation:function:_:)(v14, 0, 0, 0xD00000000000003ALL, 0x80000001015C4850, sub_1011A7394, v13, &type metadata for () + 8);
    }

    else
    {

      v15 = *(v0 + 104);
      v16 = *(v0 + 112);

      return _swift_task_switch(sub_10118741C, v15, v16);
    }
  }
}

uint64_t sub_1011872AC()
{

  return _swift_task_switch(sub_101187404, 0, 0);
}

uint64_t sub_10118741C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011874AC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1011875E8, v1, v0);
}

uint64_t sub_1011875E8()
{
  v1 = *(v0 + 56);

  v2 = type metadata accessor for PKDrawing();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 56);
  if (v4 == 1)
  {
    sub_10000CAAC(*(v0 + 56), &qword_101A01C10);
    v6 = sub_101187704;
  }

  else
  {
    *(v0 + 224) = PKDrawing.strokes.getter();
    (*(v3 + 8))(v5, v2);
    v6 = sub_101187974;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_101187704()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = *(v0 + 192) + 1;
  sub_1011A0324(*(v0 + 80), type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
  if (v3 == v2)
  {

    *(v0 + 168) = v1;
    if (*(v1 + 16))
    {
      v5 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = *(v0 + 16);
      v7 = swift_task_alloc();
      *(v0 + 176) = v7;
      *(v7 + 16) = v6;
      *(v7 + 24) = v1;
      *(v7 + 32) = v5;
      *(v7 + 40) = v4;
      *(v7 + 48) = 1;
      v8 = swift_task_alloc();
      *(v0 + 184) = v8;
      *v8 = v0;
      v8[1] = sub_1011872AC;

      return withCheckedContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000003ALL, 0x80000001015C4850, sub_1011A7394, v7, &type metadata for () + 8);
    }

    else
    {

      v14 = *(v0 + 104);
      v15 = *(v0 + 112);

      return _swift_task_switch(sub_10118741C, v14, v15);
    }
  }

  else
  {
    *(v0 + 192) = v3;
    *(v0 + 200) = v1;
    v9 = *(v0 + 80);
    v10 = *(v0 + 64);
    sub_1011A04B8(*(v0 + 120) + ((*(v0 + 232) + 32) & ~*(v0 + 232)) + *(v0 + 160) * v3, v9, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v11 = *(v9 + *(v10 + 28));
    *(v0 + 208) = static MainActor.shared.getter();
    v12 = swift_task_alloc();
    *(v0 + 216) = v12;
    *v12 = v0;
    v12[1] = sub_1011874AC;
    v13 = *(v0 + 56);

    return RecognitionController.drawingByStraighteningHandwriting(in:)(v13, v11);
  }
}

uint64_t sub_101187974()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  sub_1011A04B8(*(v0 + 80), v2, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
  *(v2 + *(v4 + 20)) = v1;
  *(v2 + *(v4 + 24)) = 0;
  sub_1011A04B8(v2, v3, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 200);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100B39988(0, v6[2] + 1, 1, *(v0 + 200));
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_100B39988(v7 > 1, v8 + 1, 1, v6);
  }

  v9 = *(v0 + 40);
  v10 = *(v0 + 32);
  sub_1011A0324(*(v0 + 48), type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  v6[2] = v8 + 1;
  sub_1011A0450(v9, v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  v11 = *(v0 + 144);
  v12 = *(v0 + 192) + 1;
  sub_1011A0324(*(v0 + 80), type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
  if (v12 == v11)
  {

    *(v0 + 168) = v6;
    if (v6[2])
    {
      v14 = *(v0 + 128);
      v13 = *(v0 + 136);
      v15 = *(v0 + 16);
      v16 = swift_task_alloc();
      *(v0 + 176) = v16;
      *(v16 + 16) = v15;
      *(v16 + 24) = v6;
      *(v16 + 32) = v14;
      *(v16 + 40) = v13;
      *(v16 + 48) = 1;
      v17 = swift_task_alloc();
      *(v0 + 184) = v17;
      *v17 = v0;
      v17[1] = sub_1011872AC;

      return withCheckedContinuation<A>(isolation:function:_:)(v17, 0, 0, 0xD00000000000003ALL, 0x80000001015C4850, sub_1011A7394, v16, &type metadata for () + 8);
    }

    else
    {

      v23 = *(v0 + 104);
      v24 = *(v0 + 112);

      return _swift_task_switch(sub_10118741C, v23, v24);
    }
  }

  else
  {
    *(v0 + 192) = v12;
    *(v0 + 200) = v6;
    v18 = *(v0 + 80);
    v19 = *(v0 + 64);
    sub_1011A04B8(*(v0 + 120) + ((*(v0 + 232) + 32) & ~*(v0 + 232)) + *(v0 + 160) * v12, v18, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v20 = *(v18 + *(v19 + 28));
    *(v0 + 208) = static MainActor.shared.getter();
    v21 = swift_task_alloc();
    *(v0 + 216) = v21;
    *v21 = v0;
    v21[1] = sub_1011874AC;
    v22 = *(v0 + 56);

    return RecognitionController.drawingByStraighteningHandwriting(in:)(v22, v20);
  }
}

uint64_t sub_101187E70(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101187F08, v4, v3);
}

uint64_t sub_101187F08()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1011A7384;

  return sub_101186CB0();
}

uint64_t sub_101188094(uint64_t a1, void *a2)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;
  v8 = a2;
  sub_10064191C(0, 0, v5, &unk_1014CE3A8, v7);
}

uint64_t sub_1011881BC()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100D79FF4;

  return RecognitionController.clearRefinableStrokes()();
}

uint64_t sub_10118825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for RecognitionController.AutoRefineMode();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(sub_101188354, v9, v8);
}

uint64_t sub_101188354()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[11] = *(v0[2] + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_recognitionController);
  v4 = enum case for RecognitionController.AutoRefineMode.off(_:);
  v5 = *(v2 + 104);
  v0[12] = v5;
  v0[13] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v3);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_101188434;
  v7 = v0[7];

  return RecognitionController.setAutoRefineMode(_:in:)(v7, 0);
}

uint64_t sub_101188434()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  v5 = *(v3 + 8);
  v1[15] = v5;
  v1[16] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v6 = v1[10];
  v7 = v1[9];

  return _swift_task_switch(sub_1011885C0, v7, v6);
}

uint64_t sub_1011885C0()
{
  (*(v0 + 96))(*(v0 + 56), enum case for RecognitionController.AutoRefineMode.userConfig(_:), *(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_10118867C;
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);

  return RecognitionController.setAutoRefineMode(_:in:)(v2, v3);
}

uint64_t sub_10118867C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 40);

  v2(v3, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return _swift_task_switch(sub_101188808, v6, v5);
}

uint64_t sub_101188808()
{
  v1 = v0[4];
  v2 = swift_allocObject();
  v0[18] = v2;
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_101188918;

  return RecognitionController.setRefineStrokesBlock(_:)(&unk_1014CE388, v3);
}

uint64_t sub_101188918()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_101188A78, v3, v2);
}

uint64_t sub_101188A78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101188AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[35] = a2;
  v3[36] = a3;
  v3[34] = a1;
  type metadata accessor for MainActor();
  v3[37] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[38] = v5;
  v3[39] = v4;

  return _swift_task_switch(sub_101188B7C, v5, v4);
}

uint64_t sub_101188B7C()
{
  v41 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[40] = Strong;
  if (!Strong)
  {

    goto LABEL_5;
  }

  v2 = Strong;
  if (*(Strong + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown))
  {

LABEL_5:
    v3 = v0[1];

    return v3();
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
  }

  else
  {
    v39 = objc_opt_self();
    v6 = [v39 _atomicIncrementAssertCount];
    v40 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v40);
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 558;
    v18 = v40;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "Should not be receiving Auto-Refine results when we don't have a PencilKit canvas view controller.", 98, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v39 handleFailureInFunction:v25 file:v26 lineNumber:558 isFatal:0 format:v27 args:v24];
  }

  v28 = [objc_opt_self() mainBundle];
  v29 = String._bridgeToObjectiveC()();
  v30 = String._bridgeToObjectiveC()();
  v31 = String._bridgeToObjectiveC()();
  v32 = [v28 localizedStringForKey:v29 value:v30 table:v31];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v0[41] = v35;
  v36 = swift_task_alloc();
  v0[42] = v36;
  *v36 = v0;
  v36[1] = sub_101189108;
  v38 = v0[34];
  v37 = v0[35];

  return sub_1011892B4(v38, v37, v33, v35, 0, 1);
}

uint64_t sub_101189108()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return _swift_task_switch(sub_10118924C, v3, v2);
}

uint64_t sub_10118924C()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1011892B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 320) = a4;
  *(v7 + 328) = v6;
  *(v7 + 645) = a6;
  *(v7 + 644) = a5;
  *(v7 + 304) = a2;
  *(v7 + 312) = a3;
  *(v7 + 296) = a1;
  v8 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper(0);
  *(v7 + 336) = v8;
  *(v7 + 344) = *(v8 - 8);
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  v9 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
  *(v7 + 368) = v9;
  *(v7 + 376) = *(v9 - 8);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = *(sub_1005B981C(&qword_1019F6990) - 8);
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v7 + 424) = v10;
  *(v7 + 432) = *(v10 - 8);
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  v11 = type metadata accessor for PKStroke();
  *(v7 + 480) = v11;
  *(v7 + 488) = *(v11 - 8);
  *(v7 + 496) = swift_task_alloc();
  *(v7 + 504) = type metadata accessor for MainActor();
  *(v7 + 512) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 520) = v13;
  *(v7 + 528) = v12;

  return _swift_task_switch(sub_10118958C, v13, v12);
}