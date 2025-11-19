uint64_t sub_10035769C()
{
  v1 = v0;
  v2 = type metadata accessor for LocationComponentHeaderViewModel.Description(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = (v9 - v8);
  sub_1001CCDB8(v1, v9 - v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = v10[88];

      goto LABEL_7;
    case 2u:
      memcpy(__dst, v10, 0x79uLL);
      sub_10035802C(__dst);
      v11 = __dst[120];
      break;
    case 3u:
      sub_100357FC8(v10, v6);
      v11 = *(v6 + *(v2 + 24));
      sub_10001E8F4();
      sub_100188358(v6, v12);
      break;
    case 4u:
      sub_100188358(v10, type metadata accessor for LocationComponentHeaderViewModel);
      v11 = 0;
      break;
    default:
      v11 = v10[32];

LABEL_7:

      break;
  }

  return v11;
}

void sub_100357854()
{
  sub_10000C778();
  v2 = v1;
  v3 = type metadata accessor for LocationComponentHeaderViewModel.Description(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = (v10 - v9);
  sub_1001CCDB8(v0, v10 - v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v32 = *(v11 + 4);
      v33 = *(v11 + 5);
      v34 = *(v11 + 6);
      v35 = *(v11 + 7);
      v36 = *(v11 + 64);
      v37 = *(v11 + 9);
      v29 = *(v11 + 10);
      v38 = v37;

      *v2 = v32;
      *(v2 + 8) = v33;
      *(v2 + 16) = v34;
      *(v2 + 24) = v35;
      *(v2 + 32) = v36;
      *(v2 + 40) = v38;
      goto LABEL_7;
    case 2u:
      memcpy(v39, v11, 0x79uLL);
      v17 = v39[8];
      v16 = v39[9];
      v19 = v39[10];
      v18 = v39[11];
      v20 = v39[12];
      v22 = v39[13];
      v21 = v39[14];

      sub_10035802C(v39);
      *v2 = v17;
      *(v2 + 8) = v16;
      *(v2 + 16) = v19;
      *(v2 + 24) = v18;
      *(v2 + 32) = v20;
      *(v2 + 40) = v22;
      *(v2 + 48) = v21;
      goto LABEL_8;
    case 3u:
      sub_100357FC8(v11, v7);
      v23 = v7 + *(v3 + 20);
      v25 = *v23;
      v24 = *(v23 + 8);
      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      v28 = *(v23 + 32);
      v30 = *(v23 + 40);
      v29 = *(v23 + 48);

      sub_10001E8F4();
      sub_100188358(v7, v31);
      *v2 = v25;
      *(v2 + 8) = v24;
      *(v2 + 16) = v27;
      *(v2 + 24) = v26;
      *(v2 + 32) = v28;
      *(v2 + 40) = v30;
LABEL_7:
      *(v2 + 48) = v29;
      goto LABEL_8;
    case 4u:
      sub_10001BEC0();
      sub_100188358(v11, v15);
      sub_1001CCDB8(v0, v2);
      goto LABEL_9;
    default:
      v12 = *(v11 + 2);
      v13 = *(v11 + 3);
      v14 = *(v11 + 32);
      *v2 = *v11;
      *(v2 + 16) = v12;
      *(v2 + 24) = v13;
      *(v2 + 32) = v14;
      *(v2 + 40) = *(v11 + 40);
LABEL_8:
      swift_storeEnumTagMultiPayload();
LABEL_9:
      sub_10000536C();
      return;
  }
}

void sub_100357AA8()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v44 = type metadata accessor for LocationComponentHeaderViewModel.Description(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v45 = v6 - v5;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = &v43 - v11;
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v21 = sub_10022C350(&qword_100CAF640);
  __chkstk_darwin(v21 - 8);
  v23 = &v43 - v22;
  v25 = &v43 + *(v24 + 56) - v22;
  sub_1001CCDB8(v3, &v43 - v22);
  sub_1001CCDB8(v1, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1001CCDB8(v23, v17);
      memcpy(v47, v17, 0x59uLL);
      if (sub_1000194C4() == 1)
      {
        memcpy(v48, v25, 0x59uLL);
        sub_100356FE0(v47);
        v38 = sub_100022974();
        sub_10035805C(v38);
        sub_10035805C(v48);
        goto LABEL_20;
      }

      sub_10035805C(v47);
      goto LABEL_18;
    case 2u:
      sub_1001CCDB8(v23, v14);
      memcpy(v47, v14, 0x79uLL);
      if (sub_1000194C4() == 2)
      {
        memcpy(v48, v25, 0x79uLL);
        sub_10035707C(v47);
        v29 = sub_100022974();
        sub_10035802C(v29);
        sub_10035802C(v48);
        goto LABEL_20;
      }

      sub_10035802C(v47);
      goto LABEL_18;
    case 3u:
      v30 = v46;
      sub_1001CCDB8(v23, v46);
      if (sub_1000194C4() != 3)
      {
        sub_10001E8F4();
        sub_100188358(v30, v39);
        goto LABEL_18;
      }

      v31 = v45;
      sub_100357FC8(v25, v45);
      if (static WeatherDescription.== infix(_:_:)())
      {
        v32 = v30 + *(v44 + 20);
        v33 = *(v32 + 32);
        v47[1] = *(v32 + 16);
        v47[2] = v33;
        *&v47[3] = *(v32 + 48);
        v47[0] = *v32;
        v34 = v31 + *(v44 + 20);
        *&v48[3] = *(v34 + 48);
        v35 = *(v34 + 32);
        v48[1] = *(v34 + 16);
        v48[2] = v35;
        v48[0] = *v34;
        sub_100356F34(v47);
      }

      sub_100014398();
      sub_100188358(v31, v36);
      sub_100188358(v30, v17);
      sub_10001BEC0();
      sub_100188358(v23, v37);
      goto LABEL_21;
    case 4u:
      sub_1001CCDB8(v23, v9);
      v27 = *(v9 + 1);
      v47[0] = *v9;
      v47[1] = v27;
      v47[2] = *(v9 + 2);
      *&v47[3] = *(v9 + 6);
      if (sub_1000194C4() == 4)
      {
        sub_100003F50();
        sub_1003571F8();
        v28 = sub_100022974();
        sub_100357F30(v28);
        sub_100357F30(v48);
        goto LABEL_20;
      }

      sub_100357F30(v47);
      goto LABEL_18;
    default:
      sub_1001CCDB8(v23, v20);
      v26 = *(v20 + 1);
      v47[0] = *v20;
      v47[1] = v26;
      v47[2] = *(v20 + 2);
      *&v47[3] = *(v20 + 6);
      if (sub_1000194C4())
      {
        sub_1001B3294(v47);
LABEL_18:
        sub_100357F60(v23);
      }

      else
      {
        v40 = sub_100003F50();
        sub_100356F34(v40);
        v41 = sub_100022974();
        sub_1001B3294(v41);
        sub_1001B3294(v48);
LABEL_20:
        sub_10001BEC0();
        sub_100188358(v23, v42);
      }

LABEL_21:
      sub_10000536C();
      return;
  }
}

uint64_t sub_100357F60(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAF640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100357FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationComponentHeaderViewModel.Description(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10035808C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *(a1 + 16);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a1 + 80);
  v10[0] = *(a1 + 64);
  v10[1] = v6;
  v11 = *(a1 + 96);
  v12 = *(a1 + 112);
  v18 = v13;
  v14 = v10[0];
  v15 = v6;
  v16 = v11;
  v17 = v12;
  sub_100358150(&v13, v9);

  sub_1001B31A4(v10, v9);
  sub_10035802C(a1);
  *a2 = v18;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  v7 = v15;
  *(a2 + 32) = v14;
  *(a2 + 48) = v7;
  result = *&v16;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_1003581B4@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v6._countAndFlagsBits = 0xD000000000000019;
  v16._object = 0x8000000100AC2C80;
  v7._countAndFlagsBits = 0x612074726F706552;
  v7._object = 0xEF6575737349206ELL;
  v6._object = 0x8000000100AC2C60;
  v16._countAndFlagsBits = 0xD000000000000036;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v16);

  *(a2 + 56) = v8;
  v9 = [v4 mainBundle];
  v10._countAndFlagsBits = 0xD00000000000001CLL;
  v17._object = 0x8000000100AC2CE0;
  v11._countAndFlagsBits = 0x7374696E55;
  v10._object = 0x8000000100AC2CC0;
  v11._object = 0xE500000000000000;
  v17._countAndFlagsBits = 0xD000000000000036;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v17);

  *(a2 + 72) = v12;
  sub_10022C350(&qword_100CA4D80);
  sub_100006F64(&qword_100CA4D88, &qword_100CA4D80);
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v13;

  return sub_100013188(a1, a2 + 16);
}

uint64_t sub_100358390(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1003583D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100358440()
{
  result = sub_100358464();
  qword_100D8FBB8 = result;
  unk_100D8FBC0 = v1;
  return result;
}

uint64_t sub_100358464()
{
  v0 = objc_opt_self();
  v1 = [v0 celsius];
  v2 = sub_100544E28();

  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = [v0 fahrenheit];
  v4 = sub_100544E28();

  if (!v4)
  {

LABEL_5:
    v6 = Image.init(systemName:)();
    Image.init(systemName:)();
    return v6;
  }

  v5 = v2;
  v6 = Image.init(uiImage:)();
  Image.init(uiImage:)();

  return v6;
}

uint64_t sub_10035855C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.trailing.getter();
  a1[1] = v2;
  v3 = sub_10022C350(&qword_100CAF648);
  return sub_1003585A8(a1 + *(v3 + 44));
}

uint64_t sub_1003585A8@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_10022C350(&qword_100CAF650);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v26 - v3;
  v5 = sub_10022C350(&qword_100CAF658);
  __chkstk_darwin(v5);
  v7 = v26 - v6;
  v27 = sub_10022C350(&qword_100CAF660);
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = v26 - v9;
  v11 = sub_100988A98();
  v13 = v12;

  if (v13)
  {
    v14 = Solarium.init()();
    v26[2] = v26;
    __chkstk_darwin(v14);
    __chkstk_darwin(v15);
    v26[1] = sub_10022C350(&qword_100CAF678);
    sub_10022C350(&qword_100CAF6B0);
    v26[3] = v1;
    sub_10035B52C();
    sub_100006F64(&qword_100CAF6A8, &qword_100CAF6B0);
    StaticIf<>.init(_:then:else:)();
    v16 = v27;
    (*(v8 + 16))(v7, v10, v27);
    swift_storeEnumTagMultiPayload();
    sub_10035B468();
    v17 = sub_10022E824(&qword_100CAF6B8);
    v18 = sub_10022E824(&qword_100CAF6C0);
    v19 = sub_10035B7A8();
    v20 = sub_100006F64(&qword_100CAF6E0, &qword_100CAF6C0);
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v8 + 8))(v10, v16);
  }

  else
  {
    sub_100358A98(v4);
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    sub_10035B468();
    v22 = sub_10022E824(&qword_100CAF6B8);
    v23 = sub_10022E824(&qword_100CAF6C0);
    v24 = sub_10035B7A8();
    v25 = sub_100006F64(&qword_100CAF6E0, &qword_100CAF6C0);
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_100358A98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v15[1] = a1;
  v3 = sub_10022C350(&qword_100CAF6D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  v15[0] = sub_10022C350(&qword_100CAF6B8);
  __chkstk_darwin(v15[0]);
  v8 = v15 - v7;
  v15[12] = v2;
  v15[8] = v2;
  sub_10022C350(&qword_100CAF718);
  sub_10022C350(&qword_100CAF720);
  sub_10035BAAC();
  sub_100006F64(&qword_100CAF758, &qword_100CAF720);
  Menu.init(content:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12;
  sub_100006F64(&qword_100CAF6D0, &qword_100CAF6D8);
  View.accessibilityLabel(_:)();
  sub_10010CD64(v9, v11, v13 & 1);

  (*(v4 + 8))(v6, v3);
  v15[4] = v2;
  sub_10022C350(&qword_100CAF6C0);
  sub_10035B7A8();
  sub_100006F64(&qword_100CAF6E0, &qword_100CAF6C0);
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  return sub_1000180EC(v8, &qword_100CAF6B8);
}

uint64_t sub_100358DE0@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100358E1C@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100358E64@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v57 = sub_10022C350(&qword_100CAF770);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v59 = &v42 - v5;
  v51 = sub_10022C350(&qword_100CAF778);
  v55 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v42 - v8;
  v9 = sub_10022C350(&qword_100CAF780);
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v42 - v12;
  __chkstk_darwin(v13);
  v49 = &v42 - v14;
  __chkstk_darwin(v15);
  v47 = &v42 - v16;
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  __chkstk_darwin(v20);
  v48 = &v42 - v21;
  sub_10035B8A0(a1, __src);
  v22 = swift_allocObject();
  memcpy((v22 + 16), __src, 0x58uLL);
  sub_10022C350(&qword_100CA2CF0);
  sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
  Button.init(action:label:)();
  sub_10035B8A0(a1, __src);
  v23 = swift_allocObject();
  memcpy((v23 + 16), __src, 0x58uLL);
  v44 = v19;
  Button.init(action:label:)();
  v62 = a1;
  sub_10022C350(&qword_100CAF790);
  sub_100006F64(&qword_100CAF798, &qword_100CAF790);
  v24 = v46;
  Section<>.init(content:)();
  v61 = a1;
  sub_100006F64(&qword_100CAF7A0, &qword_100CAF780);
  v25 = v9;
  Section<>.init(content:)();
  sub_10035B8A0(a1, __src);
  v26 = swift_allocObject();
  memcpy((v26 + 16), __src, 0x58uLL);
  v60 = a1;
  v27 = v47;
  Button.init(action:label:)();
  v28 = *(v53 + 16);
  v29 = v49;
  v28(v49, v48, v25);
  v30 = v25;
  v28(v58, v19, v25);
  v43 = *(v55 + 16);
  v31 = v50;
  v43(v50, v24, v51);
  v42 = *(v56 + 16);
  v32 = v54;
  v42(v54, v59, v57);
  v28(v52, v27, v25);
  v33 = v45;
  v28(v45, v29, v25);
  v34 = sub_10022C350(&qword_100CAF7A8);
  v28(&v33[v34[12]], v58, v25);
  v35 = v51;
  v43(&v33[v34[16]], v31, v51);
  v36 = v57;
  v42(&v33[v34[20]], v32, v57);
  v37 = v52;
  v28(&v33[v34[24]], v52, v30);
  v38 = *(v53 + 8);
  v38(v47, v30);
  v39 = *(v56 + 8);
  v39(v59, v36);
  v40 = *(v55 + 8);
  v40(v46, v35);
  v38(v44, v30);
  v38(v48, v30);
  v38(v37, v30);
  v39(v54, v36);
  v40(v50, v35);
  v38(v58, v30);
  return (v38)(v49, v30);
}

uint64_t sub_1003596E4@<X0>(char *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CAF7B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  sub_1003598F4();
  sub_100359A90();
  v15 = *(v3 + 16);
  v15(v8, v14, v2);
  v15(v5, v11, v2);
  v15(a1, v8, v2);
  v16 = sub_10022C350(&qword_100CAF7B8);
  v15(&a1[*(v16 + 48)], v5, v2);
  v17 = *(v3 + 8);
  v17(v11, v2);
  v17(v14, v2);
  v17(v5, v2);
  return (v17)(v8, v2);
}

uint64_t sub_1003598F4()
{
  sub_10035B8A0(v0, __src);
  type metadata accessor for MainActor();
  v1 = static MainActor.shared.getter();
  v2 = swift_allocObject();
  v2[2] = v1;
  v2[3] = &protocol witness table for MainActor;
  memcpy(v2 + 4, __src, 0x58uLL);
  sub_10035B8A0(v0, __src);
  v3 = static MainActor.shared.getter();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, __src, 0x58uLL);
  Binding.init(get:set:)();
  sub_10022C350(&qword_100CA2CF0);
  sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
  return Toggle.init(isOn:label:)();
}

uint64_t sub_100359A90()
{
  sub_10035B8A0(v0, __src);
  type metadata accessor for MainActor();
  v1 = static MainActor.shared.getter();
  v2 = swift_allocObject();
  v2[2] = v1;
  v2[3] = &protocol witness table for MainActor;
  memcpy(v2 + 4, __src, 0x58uLL);
  sub_10035B8A0(v0, __src);
  v3 = static MainActor.shared.getter();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, __src, 0x58uLL);
  Binding.init(get:set:)();
  sub_10022C350(&qword_100CA2CF0);
  sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
  return Toggle.init(isOn:label:)();
}

uint64_t sub_100359C2C(uint64_t a1)
{
  sub_10035B8A0(a1, __src);
  v1 = swift_allocObject();
  memcpy((v1 + 16), __src, 0x58uLL);
  sub_10022C350(&qword_100CA2CF0);
  sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
  return Button.init(action:label:)();
}

uint64_t sub_100359D24@<X0>(uint64_t a1@<X8>)
{
  Solarium.init()();
  StaticIf<>.init(_:then:else:)();
  v2 = (a1 + *(sub_10022C350(&qword_100CAF738) + 36));
  v3 = *(sub_10022C350(&qword_100CAF750) + 28);
  v4 = enum case for Image.Scale.large(_:);
  v5 = type metadata accessor for Image.Scale();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  *v2 = swift_getKeyPath();
  result = sub_10022C350(&qword_100CAF718);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_100359E68@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_10022C350(&qword_100CAF760);
  return sub_100359EC0(a1 + *(v2 + 44));
}

uint64_t sub_100359EC0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CAF718);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v21[-v7];
  Solarium.init()();
  StaticIf<>.init(_:then:else:)();
  v9 = &v8[*(sub_10022C350(&qword_100CAF738) + 36)];
  v10 = *(sub_10022C350(&qword_100CAF750) + 28);
  v11 = enum case for Image.Scale.large(_:);
  v12 = type metadata accessor for Image.Scale();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  v8[*(v3 + 44)] = 1;
  LocalizedStringKey.init(stringLiteral:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  LOBYTE(v9) = v16;
  v18 = v17;
  sub_100035AD0(v8, v5, &qword_100CAF718);
  sub_100035AD0(v5, a1, &qword_100CAF718);
  v19 = a1 + *(sub_10022C350(&qword_100CAF768) + 48);
  *v19 = v13;
  *(v19 + 8) = v15;
  *(v19 + 16) = v9 & 1;
  *(v19 + 24) = v18;
  sub_10010CD54(v13, v15, v9 & 1);

  sub_1000180EC(v8, &qword_100CAF718);
  sub_10010CD64(v13, v15, v9 & 1);

  return sub_1000180EC(v5, &qword_100CAF718);
}

uint64_t sub_10035A184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = type metadata accessor for AccessibilityTraits();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GlassProminentButtonStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CAF690);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v26 = sub_10022C350(&qword_100CAF688);
  __chkstk_darwin(v26);
  v13 = &v26 - v12;
  v27 = sub_10022C350(&qword_100CAF678);
  __chkstk_darwin(v27);
  v15 = &v26 - v14;
  sub_10035B8A0(a1, __src);
  v16 = swift_allocObject();
  memcpy((v16 + 16), __src, 0x58uLL);
  sub_10022C350(&qword_100CAF6F8);
  sub_10035B9E4();
  Button.init(action:label:)();
  GlassProminentButtonStyle.init()();
  sub_100006F64(&qword_100CAF698, &qword_100CAF690);
  sub_10035B760(&qword_100CAF6A0, &type metadata accessor for GlassProminentButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  static Color.white.getter();
  v17 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  v19 = &v13[*(v26 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  LocalizedStringKey.init(stringLiteral:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  LOBYTE(v4) = v23;
  sub_10035B5E8();
  View.accessibilityLabel(_:)();
  sub_10010CD64(v20, v22, v4 & 1);

  sub_1000180EC(v13, &qword_100CAF688);
  v24 = v28;
  static AccessibilityTraits.isSelected.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v29 + 8))(v24, v31);
  return sub_1000180EC(v15, &qword_100CAF678);
}

uint64_t sub_10035A674@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  result = static Color.white.getter();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_10035A6BC(uint64_t a1)
{
  sub_10035B8A0(a1, __src);
  v1 = swift_allocObject();
  memcpy((v1 + 16), __src, 0x58uLL);
  sub_10022C350(&qword_100CAF6E8);
  sub_10035B900();
  return Button.init(action:label:)();
}

uint64_t sub_10035A778@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_10035A870@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10035A92C@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10035A96C()
{
  v0 = type metadata accessor for AccessibilityNotification.Announcement();
  v1 = *(v0 - 8);
  v32 = v0;
  v33 = v1;
  __chkstk_darwin(v0);
  v31 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CAF7C0);
  __chkstk_darwin(v3 - 8);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v29 = type metadata accessor for AttributedString();
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = [objc_opt_self() mainBundle];
  v34._object = 0x8000000100AC2DF0;
  v16._countAndFlagsBits = 0x64657463656C6573;
  v16._object = 0xEC0000004025203ALL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0xD000000000000075;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v34);

  sub_10022C350(&qword_100CA40C8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100A2C3F0;
  v19 = UnitConfiguration.Temperature.description.getter();
  v21 = v20;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_100035744();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  static String.localizedStringWithFormat(_:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v22 = enum case for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority.high(_:);
  v23 = type metadata accessor for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority();
  (*(*(v23 - 8) + 104))(v7, v22, v23);
  sub_10001B350(v7, 0, 1, v23);
  sub_100035AD0(v7, v30, &qword_100CAF7C0);
  sub_10035BE44();
  AttributedString.subscript.setter();
  sub_1000180EC(v7, &qword_100CAF7C0);
  v24 = v29;
  (*(v9 + 16))(v11, v14, v29);
  v25 = v31;
  AccessibilityNotification.Announcement.init(_:)();
  v26 = v32;
  _AccessibilityNotifications.post()();
  (*(v33 + 8))(v25, v26);
  return (*(v9 + 8))(v14, v24);
}

void sub_10035AE54(SEL *a1@<X3>, _BYTE *a2@<X8>)
{
  sub_10000F868();
  v4 = sub_100988A98();
  v5 = [objc_opt_self() *a1];
  v6 = static NSObject.== infix(_:_:)();

  *a2 = v6 & 1;
}

uint64_t sub_10035AEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v8 = type metadata accessor for UnitConfiguration.Temperature();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a4;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  (*(v9 + 104))(v11, *a6, v8);
  sub_10035A96C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10035B094@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10035B110@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_100CA1F48 != -1)
  {
    swift_once();
  }

  *a2 = *a1;
}

uint64_t sub_10035B1F0@<X0>(uint64_t a1@<X8>)
{
  sub_10002D5A4();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10035B25C@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10035B29C()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10035B3B8@<X0>(uint64_t a1@<X8>)
{
  sub_10002D5A4();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10035B424@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

unint64_t sub_10035B468()
{
  result = qword_100CAF668;
  if (!qword_100CAF668)
  {
    sub_10022E824(&qword_100CAF660);
    sub_10035B52C();
    sub_100006F64(&qword_100CAF6A8, &qword_100CAF6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF668);
  }

  return result;
}

unint64_t sub_10035B52C()
{
  result = qword_100CAF670;
  if (!qword_100CAF670)
  {
    sub_10022E824(&qword_100CAF678);
    sub_10035B5E8();
    sub_10035B760(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF670);
  }

  return result;
}

unint64_t sub_10035B5E8()
{
  result = qword_100CAF680;
  if (!qword_100CAF680)
  {
    sub_10022E824(&qword_100CAF688);
    sub_10022E824(&qword_100CAF690);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100006F64(&qword_100CAF698, &qword_100CAF690);
    sub_10035B760(&qword_100CAF6A0, &type metadata accessor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF680);
  }

  return result;
}

uint64_t sub_10035B760(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10035B7A8()
{
  result = qword_100CAF6C8;
  if (!qword_100CAF6C8)
  {
    sub_10022E824(&qword_100CAF6B8);
    sub_100006F64(&qword_100CAF6D0, &qword_100CAF6D8);
    sub_10035B760(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF6C8);
  }

  return result;
}

unint64_t sub_10035B900()
{
  result = qword_100CAF6F0;
  if (!qword_100CAF6F0)
  {
    sub_10022E824(&qword_100CAF6E8);
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF6F0);
  }

  return result;
}

unint64_t sub_10035B9E4()
{
  result = qword_100CAF700;
  if (!qword_100CAF700)
  {
    sub_10022E824(&qword_100CAF6F8);
    sub_100006F64(&qword_100CAF708, &qword_100CAF710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF700);
  }

  return result;
}

unint64_t sub_10035BAAC()
{
  result = qword_100CAF728;
  if (!qword_100CAF728)
  {
    sub_10022E824(&qword_100CAF718);
    sub_10035BB38();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF728);
  }

  return result;
}

unint64_t sub_10035BB38()
{
  result = qword_100CAF730;
  if (!qword_100CAF730)
  {
    sub_10022E824(&qword_100CAF738);
    sub_10035BBF0();
    sub_100006F64(&unk_100CE1690, &qword_100CAF750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF730);
  }

  return result;
}

unint64_t sub_10035BBF0()
{
  result = qword_100CAF740;
  if (!qword_100CAF740)
  {
    sub_10022E824(&qword_100CAF748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF740);
  }

  return result;
}

unint64_t sub_10035BE44()
{
  result = qword_100CAF7C8;
  if (!qword_100CAF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF7C8);
  }

  return result;
}

uint64_t sub_10035BEC0()
{
  swift_unknownObjectRelease();

  sub_100006F14(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_10035C024()
{
  result = type metadata accessor for WeatherData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10035C090(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4472656874616577 && a2 == 0xEB00000000617461)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10035C12C(void *a1)
{
  v2 = sub_10022C350(&qword_100CAF888);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_10035C5B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for WeatherData(0);
  sub_10035C60C(&qword_100CAF890);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_10035C284@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v4);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CAF870);
  sub_1000037C4();
  v17 = v7;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for MoonComponent();
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10035C5B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v18;
    sub_10035C60C(&qword_100CAF880);
    v15 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v10, v6);
    sub_1001A1054(v15, v13, type metadata accessor for WeatherData);
    sub_1001A1054(v13, v14, type metadata accessor for MoonComponent);
  }

  return sub_100006F14(a1);
}

uint64_t sub_10035C4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10035C090(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10035C50C(uint64_t a1)
{
  v2 = sub_10035C5B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10035C548(uint64_t a1)
{
  v2 = sub_10035C5B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10035C5B8()
{
  result = qword_100CAF878;
  if (!qword_100CAF878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF878);
  }

  return result;
}

uint64_t sub_10035C60C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WeatherData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MoonComponent.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_10035C700()
{
  result = qword_100CAF898;
  if (!qword_100CAF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF898);
  }

  return result;
}

unint64_t sub_10035C758()
{
  result = qword_100CAF8A0;
  if (!qword_100CAF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF8A0);
  }

  return result;
}

unint64_t sub_10035C7B0()
{
  result = qword_100CAF8A8;
  if (!qword_100CAF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF8A8);
  }

  return result;
}

uint64_t DiagnosticFileProvider.files()()
{
  v0 = sub_10035C844();
  sub_10035CAE0();
  sub_10035D984(v1);
  return v0;
}

void sub_10035CAE0()
{
  v65 = type metadata accessor for URL();
  v64 = *(v65 - 8);
  v0 = __chkstk_darwin(v65);
  v66 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __chkstk_darwin(v0);
  v62 = &v60 - v3;
  __chkstk_darwin(v2);
  v63 = &v60 - v4;
  v5 = type metadata accessor for Database.Location();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v61 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v60 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v60 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v60 - v16;
  __chkstk_darwin(v15);
  v19 = &v60 - v18;
  sub_10022C350(&qword_100CA3DA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3ECD0;
  type metadata accessor for NotificationStore();
  static NotificationStore.location.getter();
  v21 = Database.Location.path.getter();
  v23 = v22;
  v24 = *(v6 + 8);
  v24(v19, v5);
  *(inited + 32) = v21;
  *(inited + 40) = v23;
  type metadata accessor for GeocodeStore();
  static GeocodeStore.location.getter();
  v25 = Database.Location.path.getter();
  v27 = v26;
  v24(v17, v5);
  *(inited + 48) = v25;
  *(inited + 56) = v27;
  type metadata accessor for WeatherDataStore();
  static WeatherDataStore.location.getter();
  v28 = Database.Location.path.getter();
  v30 = v29;
  v24(v14, v5);
  *(inited + 64) = v28;
  *(inited + 72) = v30;
  type metadata accessor for AQIScaleStore();
  *(inited + 80) = static AQIScaleStore.locationPath.getter();
  *(inited + 88) = v31;
  type metadata accessor for LocationMetadataStore();
  static LocationMetadataStore.location.getter();
  v32 = Database.Location.path.getter();
  v34 = v33;
  v24(v11, v5);
  *(inited + 96) = v32;
  *(inited + 104) = v34;
  type metadata accessor for WeatherStatisticsDataStore();
  v35 = v61;
  static WeatherStatisticsDataStore.location.getter();
  v36 = Database.Location.path.getter();
  v38 = v37;
  v24(v35, v5);
  *(inited + 112) = v36;
  *(inited + 120) = v38;
  type metadata accessor for AppGroup();
  static AppGroup.weather.getter();
  v39 = v62;
  AppGroup.containerURL.getter();

  v40 = v63;
  URL.appendingPathComponent(_:)();
  v41 = *(v64 + 8);
  v42 = v65;
  v41(v39, v65);
  v43 = URL.path.getter();
  v45 = v44;
  v41(v40, v42);
  *(inited + 128) = v43;
  *(inited + 136) = v45;
  static AppGroup.weather.getter();
  v46 = v66;
  AppGroup.containerURL.getter();

  URL.appendingPathComponent(_:)();
  v41(v46, v42);
  v47 = URL.path.getter();
  v49 = v48;
  v41(v39, v42);
  v50 = 0;
  *(inited + 144) = v47;
  *(inited + 152) = v49;
  v51 = &_swiftEmptyArrayStorage;
LABEL_2:
  v52 = 16 * v50 + 40;
  while (1)
  {
    if (v50 == 8)
    {
      swift_setDeallocating();
      sub_10015A594();
      return;
    }

    if (v50 > 7)
    {
      break;
    }

    ++v50;
    v53 = v52 + 16;
    v54 = *(inited + v52);
    v52 += 16;
    if (v54)
    {
      v55 = *(inited + v53 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100109810();
        v51 = v58;
      }

      v56 = v51[2];
      if (v56 >= v51[3] >> 1)
      {
        sub_100109810();
        v51 = v59;
      }

      v51[2] = v56 + 1;
      v57 = &v51[2 * v56];
      *(v57 + 4) = v55;
      *(v57 + 5) = v54;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t DiagnosticFileProvider.exportDirectory()@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v1 = type metadata accessor for UUID();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v66 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v65 = &v59 - v13;
  v15 = __chkstk_darwin(v14);
  v17 = &v59 - v16;
  v18 = sub_10035C844(v15);
  sub_10035CAE0();
  v67 = v18;
  sub_10035D984(v19);
  v60 = v67;
  v20 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  UUID.init()();
  UUID.uuidString.getter();
  v21 = v6;
  v22 = v59;
  (*(v3 + 8))(v21, v1);
  URL.appendingPathComponent(_:)();

  v25 = *(v9 + 8);
  v23 = v9 + 8;
  v24 = v25;
  v25(v17, v7);
  v64 = objc_opt_self();
  v26 = [v64 defaultManager];
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v67 = 0;
  v30 = [v26 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v67];

  if (v30)
  {
    v63 = v24;
    v31 = v60[2];
    if (v31)
    {
      v32 = v60;
      v33 = v67;
      v34 = v32 + 5;
      v61 = xmmword_100A2C3F0;
      do
      {

        URL.init(fileURLWithPath:)();

        URL.lastPathComponent.getter();
        URL.appendingPathComponent(_:)();

        v35 = [v64 defaultManager];
        URL._bridgeToObjectiveC()(v36);
        v38 = v37;
        URL._bridgeToObjectiveC()(v39);
        v41 = v40;
        v67 = 0;
        v42 = [v35 copyItemAtURL:v38 toURL:v40 error:&v67];

        if (v42)
        {
          v43 = v67;
        }

        else
        {
          v44 = v67;
          v45 = _convertNSErrorToError(_:)();

          swift_willThrow();
          LODWORD(v62) = static os_log_type_t.error.getter();
          sub_10022C350(&qword_100CA40C8);
          v46 = swift_allocObject();
          *(v46 + 16) = v61;
          v67 = v45;
          swift_errorRetain();
          sub_10022C350(&qword_100CD8220);
          v47 = String.init<A>(describing:)();
          v48 = v23;
          v49 = v7;
          v50 = v22;
          v52 = v51;
          *(v46 + 56) = &type metadata for String;
          *(v46 + 64) = sub_100035744();
          *(v46 + 32) = v47;
          *(v46 + 40) = v52;
          sub_10000C70C(0, &qword_100CA2E40);
          v53 = static OS_os_log.default.getter();
          os_log(_:dso:log:type:_:)();

          v22 = v50;
          v7 = v49;
          v23 = v48;

          v62 = 0;
        }

        v54 = v63;
        v63(v66, v7);
        v54(v65, v7);
        v34 += 2;
        --v31;
      }

      while (v31);
    }

    else
    {
      v58 = v67;
    }
  }

  else
  {
    v55 = v7;
    v56 = v67;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (v24)(v22, v55);
  }
}

id LocalSearchCompleterManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticFileProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_10035D804@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.appendingPathComponent(_:)();
  v6 = URL.path.getter();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

void sub_10035D984(uint64_t a1)
{
  v4 = sub_10001E90C(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100021C64(v4, 1, sub_100109810);
  sub_1000082B4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_10001BEF0();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10000FD18(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1000058B8();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10035DB30(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1001CA990(result);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10035DC70(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100021C64(result, 1, sub_10011E564);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 16 * v7 + 32), (a1 + 32), 16 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_10035DD3C(uint64_t a1)
{
  v4 = sub_10001E90C(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100021C64(v4, 1, sub_10069FFA8);
  sub_1000082B4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_10001BEF0();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10000FD18(v3 + 40 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1000058B8();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10035DE18(uint64_t a1)
{
  v4 = sub_10001E90C(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100021C64(v4, 1, sub_1006A009C);
  sub_1000082B4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_10001BEF0();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = sub_10000FD18(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1000058B8();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10035DEBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1001CB594(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_10000C70C(0, &qword_100CAF900);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_10035E2DC(&qword_100CAF910, &qword_100CAF908);
        for (i = 0; i != v7; ++i)
        {
          sub_10022C350(&qword_100CAF908);
          v9 = sub_10035E1B4(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10035E040(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1001CB594(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for FeatureFlag();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_10035E2DC(&qword_100CAF8F8, &qword_100CAF8F0);
        for (i = 0; i != v7; ++i)
        {
          sub_10022C350(&qword_100CAF8F0);
          v9 = sub_10035E248(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_10035E1B4(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_100309F28(a3);
  sub_1000A7560(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return sub_10035E240;
}

uint64_t (*sub_10035E248(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_100309F28(a3);
  sub_1000A7560(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return sub_10035E2D4;
}

uint64_t sub_10035E2DC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10035E378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000100AC2FE0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000100AC3000 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6552656372756F73 && a2 == 0xEA00000000007463)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_10035E4E8(char a1)
{
  result = 0x6E6F697461636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6552656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10035E570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailHeroChartLollipopPosition(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  sub_10022C350(&qword_100CAB960);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = (&v30 - v10);
  v12 = sub_10022C350(&qword_100CAF9C8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for AveragesDetailViewState();
  if (*(a1 + *(v16 + 20)) != *(a2 + *(v16 + 20)))
  {
    return 0;
  }

  v17 = v16;
  v18 = *(v16 + 24);
  v19 = *(v12 + 48);
  sub_1002ED164(a1 + v18, v15);
  sub_1002ED164(a2 + v18, &v15[v19]);
  sub_10000394C(v15);
  if (v24)
  {
    sub_10000394C(&v15[v19]);
    if (v24)
    {
      sub_1000180EC(v15, &qword_100CAB960);
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  sub_1002ED164(v15, v11);
  sub_10000394C(&v15[v19]);
  if (v24)
  {
    sub_10035F408(v11, type metadata accessor for DetailHeroChartLollipopPosition);
LABEL_14:
    v25 = &qword_100CAF9C8;
LABEL_21:
    sub_1000180EC(v15, v25);
    return 0;
  }

  sub_10035F228(&v15[v19], v8);
  if (*v11 != *v8 || (static Date.== infix(_:_:)() & 1) == 0 || *(v11 + *(v4 + 24)) != *(v8 + *(v4 + 24)))
  {
    sub_10035F408(v8, type metadata accessor for DetailHeroChartLollipopPosition);
    sub_10035F408(v11, type metadata accessor for DetailHeroChartLollipopPosition);
    v25 = &qword_100CAB960;
    goto LABEL_21;
  }

  v26 = *(v4 + 28);
  v27 = *(v11 + v26);
  v28 = *(v8 + v26);
  sub_10035F408(v8, type metadata accessor for DetailHeroChartLollipopPosition);
  sub_10035F408(v11, type metadata accessor for DetailHeroChartLollipopPosition);
  sub_1000180EC(v15, &qword_100CAB960);
  if (v27 != v28)
  {
    return 0;
  }

LABEL_8:
  v20 = *(v17 + 28);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 32);
  v23 = a2 + v20;
  if (v22)
  {
    return (*(v23 + 32) & 1) != 0;
  }

  return (*(v23 + 32) & 1) == 0 && CGRectEqualToRect(*v21, *v23);
}

uint64_t sub_10035E880(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CAFA00);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_10035F28C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22[0]) = 0;
  type metadata accessor for Location();
  sub_10000FD28();
  sub_10035F518(v11, v12);
  sub_1000058DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for AveragesDetailViewState();
    LOBYTE(v22[0]) = *(v3 + *(v13 + 20));
    v24 = 1;
    sub_10035F460();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22[0]) = 2;
    type metadata accessor for DetailHeroChartLollipopPosition(0);
    sub_1000058C4();
    sub_10035F518(v14, v15);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = v3 + *(v13 + 28);
    v17 = *(v16 + 32);
    v18 = *(v16 + 16);
    v22[0] = *v16;
    v22[1] = v18;
    v23 = v17;
    v24 = 3;
    type metadata accessor for CGRect(0);
    sub_10001BF00();
    sub_10035F518(v19, v20);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_10035EAEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  sub_10022C350(&qword_100CAB960);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v37 - v4;
  v6 = type metadata accessor for Location();
  sub_1000037C4();
  v39 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v40 = v10 - v9;
  sub_10022C350(&qword_100CAF9D0);
  sub_1000037C4();
  v41 = v12;
  v42 = v11;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for AveragesDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  sub_1000161C0(a1, a1[3]);
  sub_10035F28C();
  v43 = v15;
  v21 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return sub_100006F14(a1);
  }

  v44 = v5;
  v22 = v20;
  v23 = v39;
  LOBYTE(v45) = 0;
  sub_10000FD28();
  sub_10035F518(v24, v25);
  v26 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 32))(v20, v26, v6);
  v48 = 1;
  sub_10035F2E0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v16;
  *(v22 + *(v16 + 20)) = v45;
  type metadata accessor for DetailHeroChartLollipopPosition(0);
  LOBYTE(v45) = 2;
  sub_1000058C4();
  sub_10035F518(v28, v29);
  v30 = v44;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10035F334(v30, v22 + *(v27 + 24));
  type metadata accessor for CGRect(0);
  v48 = 3;
  sub_10001BF00();
  sub_10035F518(v31, v32);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v22 + *(v27 + 28);
  (*(v41 + 8))(v43, v42);
  v34 = v47;
  v35 = v46;
  *v33 = v45;
  *(v33 + 16) = v35;
  *(v33 + 32) = v34;
  sub_10035F3A4(v22, v38);
  sub_100006F14(a1);
  return sub_10035F408(v22, type metadata accessor for AveragesDetailViewState);
}

uint64_t sub_10035EFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10035E378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10035EFD0(uint64_t a1)
{
  v2 = sub_10035F28C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10035F00C(uint64_t a1)
{
  v2 = sub_10035F28C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10035F0AC@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CAFA28);
  a1[4] = sub_10035F4B4();
  sub_100042FB0(a1);
  type metadata accessor for AveragesDetailViewState();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10035F174()
{
  sub_10035F518(&qword_100CAFA38, type metadata accessor for AveragesDetailViewState);

  return ShortDescribable.description.getter();
}

uint64_t sub_10035F228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailHeroChartLollipopPosition(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10035F28C()
{
  result = qword_100CAF9D8;
  if (!qword_100CAF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF9D8);
  }

  return result;
}

unint64_t sub_10035F2E0()
{
  result = qword_100CAF9E8;
  if (!qword_100CAF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF9E8);
  }

  return result;
}

uint64_t sub_10035F334(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAB960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035F3A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AveragesDetailViewState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035F408(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10035F460()
{
  result = qword_100CAFA10;
  if (!qword_100CAFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAFA10);
  }

  return result;
}

unint64_t sub_10035F4B4()
{
  result = qword_100CAFA30;
  if (!qword_100CAFA30)
  {
    sub_10022E824(&qword_100CAFA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAFA30);
  }

  return result;
}

uint64_t sub_10035F518(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for AveragesDetailViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10035F640()
{
  result = qword_100CAFA40;
  if (!qword_100CAFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAFA40);
  }

  return result;
}

unint64_t sub_10035F698()
{
  result = qword_100CAFA48;
  if (!qword_100CAFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAFA48);
  }

  return result;
}

unint64_t sub_10035F6F0()
{
  result = qword_100CAFA50;
  if (!qword_100CAFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAFA50);
  }

  return result;
}

uint64_t sub_10035F744@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AveragesDetailViewAction();
  __chkstk_darwin(v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10022C350(&qword_100CAFB08);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-v9];
  sub_10035FA84(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v12 = *v6;
    sub_10022C350(&qword_100CA36F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = 0x7365676172657661;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 72) = &type metadata for AveragesKind;
    *(inited + 48) = v12;
    Dictionary.init(dictionaryLiteral:)();
LABEL_6:
    ShortDescription.init(name:_:)();
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    Dictionary.init(dictionaryLiteral:)();
    goto LABEL_6;
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  sub_10035FB4C(v6);
LABEL_7:
  a1[3] = v7;
  a1[4] = sub_10035FAE8();
  v14 = sub_100042FB0(a1);
  return (*(v8 + 32))(v14, v10, v7);
}

uint64_t sub_10035F9F8()
{
  sub_10035FBA8(qword_100CAFB18);

  return ShortDescribable.description.getter();
}

uint64_t sub_10035FA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AveragesDetailViewAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10035FAE8()
{
  result = qword_100CAFB10;
  if (!qword_100CAFB10)
  {
    sub_10022E824(&qword_100CAFB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAFB10);
  }

  return result;
}

uint64_t sub_10035FB4C(uint64_t a1)
{
  v2 = type metadata accessor for AveragesDetailViewAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10035FBA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AveragesDetailViewAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10035FBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566BE4(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather10NhpContent8_Storage_nextHourPrecipitation, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566A40(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather10NhpContent8_Storage_airQuality, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather10NhpContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v366[32])
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v367);
  if (v367[32])
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v368);
  if (v368[32])
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v369);
  if (v369[32])
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v370);
  if (v370[32])
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v371);
  if (v371[32])
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v372);
  if (v372[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v373);
  if ((v374 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v375);
    if ((v376 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v377);
      if ((v378 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v379);
        if ((v380 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v379[0], v379[1], v379[2], v379[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable();
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1003613FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003614B8()
{
  sub_100003B08();
  v0[10] = v1;
  v0[11] = type metadata accessor for MainActor();
  v0[12] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[13] = v3;
  v0[14] = v2;

  return _swift_task_switch(sub_100361550, v3, v2);
}

uint64_t sub_100361550()
{
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Delay instruction: %f", v5, 0xCu);
  }

  v6 = static MainActor.shared.getter();
  *(v0 + 120) = v6;
  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_1003616B8, v7, v9);
}

uint64_t sub_1003616B8()
{
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100361764;
  v1 = swift_continuation_init();
  sub_1003618C8(v1);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100361764()
{
  sub_100003B08();
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);

  return _swift_task_switch(sub_100361868, v2, v1);
}

uint64_t sub_100361868()
{
  sub_100003B08();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003618C8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  sub_100040690();
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v9 + 8);
  v20(v11, v8);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  aBlock[4] = sub_100348F3C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C50130;
  v17 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v4, v2);
  (*(v21 + 8))(v7, v22);
  v20(v14, v8);
}

uint64_t sub_100361C34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10033B470;

  return sub_1003614B8();
}

uint64_t sub_100361CC8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ConditionDetailChartDataInputFactory();
  v3 = swift_allocObject();
  v4 = type metadata accessor for ConditionDetailChartDataInputFactoryWithCache();
  v5 = swift_allocObject();
  v5[5] = v2;
  v5[6] = &off_100C7B410;
  v5[2] = v3;
  sub_10022C350(&qword_100CAFC70);
  swift_allocObject();
  result = Cache.init()();
  v5[7] = result;
  a1[3] = v4;
  a1[4] = &off_100C7B420;
  *a1 = v5;
  return result;
}

uint64_t sub_100361D7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MidpointInterpolator();
  __chkstk_darwin(v4 - 8);
  MidpointInterpolator.init()();
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC68);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = type metadata accessor for CurrentMarkerValueCalculator();
    a2[4] = &protocol witness table for CurrentMarkerValueCalculator;
    sub_100042FB0(a2);
    return CurrentMarkerValueCalculator.init(midpointInterpolator:detailChartDataPointValueCalculator:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100361E78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC68);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v5 = type metadata accessor for DetailChartViewModelFactory();
    swift_allocObject();
    result = sub_1002F6658(&v10, &v8, &v6);
    a2[3] = v5;
    a2[4] = &off_100C4E100;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100361FC4()
{
  sub_10022C350(&qword_100CAFC50);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100362030@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC58);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = &type metadata for LollipopDataFactory;
    a2[4] = &off_100C70E58;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_100013188(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003620E0@<X0>(uint64_t *a1@<X8>)
{
  sub_100035B30(v1 + 16, (a1 + 2));

  sub_10022C350(&qword_100CA4E28);
  sub_100362174();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100362174()
{
  result = qword_100CA4E30;
  if (!qword_100CA4E30)
  {
    sub_10022E824(&qword_100CA4E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4E30);
  }

  return result;
}

uint64_t sub_1003621D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566A40(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_airQuality, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566BC8(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_newsArticle, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v366[32])
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v367);
  if (v367[32])
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v368);
  if (v368[32])
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v369);
  if (v369[32])
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v370);
  if (v370[32])
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v371);
  if (v371[32])
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v372);
  if (v372[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v373);
  if ((v374 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v375);
    if ((v376 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v377);
      if ((v378 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v379);
        if ((v380 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v379[0], v379[1], v379[2], v379[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable();
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1003639E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100363A94(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA1F60 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA1F70 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA1F68 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA1F58 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA1F50 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

void sub_100363C00()
{
  v22[0] = xmmword_100A2C3F0;
  v22[1] = xmmword_100A3BC00;
  sub_10007484C(v22, xmmword_100A3BB70, xmmword_100A3F970);
  v21[0] = xmmword_100A3BBB0;
  v21[1] = xmmword_100A3BC20;
  v20[0] = v0;
  v20[1] = xmmword_100A3BBB0;
  v23 = v21;
  v24 = v20;
  v19[0] = v1;
  v19[1] = xmmword_100A3BC20;
  v18[0] = v0;
  v18[1] = xmmword_100A3BC90;
  v25 = v19;
  v26 = v18;
  v17[0] = xmmword_100A3BBB0;
  v17[1] = v2;
  v16[0] = v1;
  v16[1] = xmmword_100A3BC10;
  v27 = v17;
  v28 = v16;
  v15[0] = v1;
  v15[1] = xmmword_100A3BC30;
  v14[0] = v1;
  v14[1] = xmmword_100A3BB80;
  v29 = v15;
  v30 = v14;
  v31 = &v13;
  v32 = &v12;
  sub_100049700(v3, v4, v5, v6, v7, v8, v9, v10, 0, 1, 7, 8, 0, 1, 9, 10, 0, 1, 6, 7);
  qword_100D8FBC8 = v11;
}

void sub_100363CF4()
{
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BC20;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3F970;
  v13 = v12;
  v14 = v11;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BB80;
  v9[0] = xmmword_100A3BB70;
  v9[1] = xmmword_100A3BBB0;
  v15 = v10;
  v16 = v9;
  v8[0] = xmmword_100A2C3F0;
  v8[1] = xmmword_100A3BB80;
  v7[0] = xmmword_100A3BBB0;
  v7[1] = xmmword_100A3BC20;
  v17 = v8;
  v18 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC30;
  v5[0] = xmmword_100A2C3F0;
  v5[1] = xmmword_100A3BC50;
  v19 = v6;
  v20 = v5;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BC60;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BC60;
  v21 = v4;
  v22 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC30;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC50;
  v23 = v2;
  v24 = v1;
  sub_1005524D8();
  qword_100D8FBD0 = v0;
}

void sub_100363DE8()
{
  v25[0] = xmmword_100A3BC40;
  v25[1] = xmmword_100A3BC50;
  sub_10007484C(v25, xmmword_100A3BB70, xmmword_100A3F970);
  v24[0] = xmmword_100A3BBD0;
  v24[1] = xmmword_100A3BC60;
  v21 = 0;
  v22 = xmmword_100A3F980;
  v23 = 1;
  v26 = v24;
  v27 = &v21;
  v20[0] = xmmword_100A2C3F0;
  v20[1] = v0;
  v16[1] = xmmword_100A3BC60;
  v17 = xmmword_100A2D320;
  v18 = 1;
  v19 = 3;
  v28 = v20;
  v29 = &v17;
  v15[1] = v0;
  v16[0] = v1;
  v14[1] = xmmword_100A3BC60;
  v15[0] = xmmword_100A3BBD0;
  v30 = v16;
  v31 = v15;
  v13[1] = v1;
  v14[0] = xmmword_100A2C3F0;
  v13[0] = v1;
  v32 = v14;
  v33 = v13;
  v34 = &v12;
  v35 = &v11;
  sub_100049700(v2, v3, v4, v5, v6, v7, v8, v9, 0, 1, 4, 5, 0, 1, v0, *(&v0 + 1), 2, 3, v1, *(&v1 + 1));
  qword_100D8FBD8 = v10;
}

void sub_100363EF0()
{
  v12[0] = xmmword_100A3BC40;
  v12[1] = xmmword_100A3BC60;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3F970;
  v13 = v12;
  v14 = v11;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC80;
  v9[1] = xmmword_100A3BBB0;
  v15 = v10;
  v16 = v9;
  v8[0] = xmmword_100A2C3F0;
  v8[1] = xmmword_100A3BC60;
  v7[0] = xmmword_100A3BC40;
  v7[1] = xmmword_100A3BC40;
  v17 = v8;
  v18 = v7;
  v6[0] = xmmword_100A3BBD0;
  v6[1] = xmmword_100A3BC60;
  v5[0] = xmmword_100A3BC40;
  v5[1] = xmmword_100A3BBD0;
  v19 = v6;
  v20 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A2C3F0;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A2C3F0;
  v21 = v4;
  v22 = v3;
  v2[0] = xmmword_100A3BBD0;
  v2[1] = xmmword_100A3BC40;
  v1[0] = xmmword_100A3BBD0;
  v1[1] = xmmword_100A3BBD0;
  v23 = v2;
  v24 = v1;
  sub_1005524D8();
  qword_100D8FBE0 = v0;
}

void sub_100363FDC()
{
  v22[0] = xmmword_100A3BC50;
  v22[1] = xmmword_100A3BC40;
  sub_10007484C(v22, xmmword_100A3BB70, xmmword_100A3F970);
  v21[0] = v0;
  v21[1] = xmmword_100A3BBD0;
  v20[0] = xmmword_100A3BC80;
  v20[1] = xmmword_100A3BBB0;
  v23 = v21;
  v24 = v20;
  v19[0] = xmmword_100A3BBD0;
  v19[1] = v1;
  v18[0] = xmmword_100A3BC90;
  v18[1] = v2;
  v25 = v19;
  v26 = v18;
  v17[0] = v1;
  v17[1] = xmmword_100A3BBD0;
  v16[0] = xmmword_100A3BC60;
  v16[1] = v1;
  v27 = v17;
  v28 = v16;
  v15[0] = xmmword_100A3BC60;
  v15[1] = xmmword_100A3BBD0;
  v14[0] = v1;
  v14[1] = xmmword_100A2C3F0;
  v29 = v15;
  v30 = v14;
  v31 = &v13;
  v32 = &v12;
  sub_100049700(v3, v4, v5, v6, v7, v8, v9, v10, 2, 3, 2, 3, v1, *(&v1 + 1), v1, *(&v1 + 1), 2, 3, 1, 2);
  qword_100D8FBE8 = v11;
}

uint64_t sub_1003640D0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v117 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather12NoAqiContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v122 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3F990;
    v13 = sub_10022C350(&qword_100CAC7F0);
    v14 = *(v7 + 80);
    v15 = (v14 + 32) & ~v14;
    v16 = *(v7 + 72);
    v17 = v14;
    v18 = v13;
    v19 = swift_allocObject();
    sub_10001361C(v19, xmmword_100A2C3F0);
    sub_1000143B0();
    sub_10019435C(v20 + v21, v19 + v15, v22);
    *(v12 + 32) = sub_1001B38A0(v19);
    *(v12 + 40) = v23;
    *(v12 + 48) = v24;
    v119 = v18;
    v25 = swift_allocObject();
    sub_100003E18(v25);
    sub_10019435C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v25 + v15, &qword_100CA5008);
    *(v12 + 56) = sub_1001B38A0(v25);
    *(v12 + 64) = v26;
    *(v12 + 72) = v27;
    v120 = v15 + 2 * v16;
    v121 = v15;
    v28 = v16;
    v29 = v17;
    v30 = swift_allocObject();
    v31 = sub_10001361C(v30, xmmword_100A2D320) + v15;
    v32 = *(a1 + 16);
    sub_100022994(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v117 = v28;
    sub_10019435C(v32 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v31[v28], &qword_100CA5008);
    *(v12 + 80) = sub_1001B38A0(v30);
    *(v12 + 88) = v33;
    *(v12 + 96) = v34;
    v118 = v29;
    v35 = swift_allocObject();
    sub_1000056EC(v35);
    v36 = v122;
    v38 = v37 + v121;
    v39 = *(v122 + 16);
    sub_100022994(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10019435C(v39 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v38 + v28, &qword_100CA5008);
    *(v12 + 104) = sub_1001B38A0(v30);
    *(v12 + 112) = v40;
    *(v12 + 120) = v41;
    v42 = swift_allocObject();
    sub_1000056EC(v42);
    v43 = v121;
    v45 = v44 + v121;
    v46 = *(v36 + 16);
    sub_100022994(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v47 = v117;
    sub_10019435C(v46 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v117, &qword_100CA5008);
    *(v12 + 128) = sub_1001B38A0(v30);
    *(v12 + 136) = v48;
    *(v12 + 144) = v49;
    v50 = swift_allocObject();
    sub_1000056EC(v50);
    v52 = v51 + v43;
    v53 = v122;
    v54 = *(v122 + 16);
    sub_100022994(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v52 + v47;
    v56 = v47;
    sub_10019435C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, &qword_100CA5008);
    *(v12 + 152) = sub_1001B38A0(v30);
    *(v12 + 160) = v57;
    *(v12 + 168) = v58;
    v59 = swift_allocObject();
    sub_100003E18(v59);
    v61 = v60 + v43;
    v62 = *(v53 + 16);
    sub_10019435C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v43, &qword_100CA5008);
    sub_10019435C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, &qword_100CA5008);
    *(v12 + 176) = sub_1001B38A0(v59);
    *(v12 + 184) = v63;
    *(v12 + 192) = v64;
  }

  else
  {
    sub_1000143B0();
    sub_1001B6FB0(v5, v9, v65);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3ECD0;
    sub_10022C350(&qword_100CAC7F0);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = swift_allocObject();
    sub_10001361C(v69, xmmword_100A2C3F0);
    sub_10019435C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v69 + v66, &qword_100CA5008);
    *(v12 + 32) = sub_1001B38A0(v69);
    *(v12 + 40) = v70;
    *(v12 + 48) = v71;
    sub_1000167B0();
    v72 = swift_allocObject();
    sub_1000056EC(v72);
    sub_10019435C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v69 + v66, &qword_100CA5008);
    *(v12 + 56) = sub_1001B38A0(v69);
    *(v12 + 64) = v73;
    *(v12 + 72) = v74;
    sub_1000167B0();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10019435C(v9, v76 + v66, &qword_100CA5008);
    *(v12 + 80) = sub_1001B38A0(v69);
    *(v12 + 88) = v77;
    *(v12 + 96) = v78;
    v118 = v66 + 2 * v67;
    v79 = v67;
    v120 = v67;
    sub_1000167B0();
    v80 = swift_allocObject();
    v81 = sub_10001361C(v80, xmmword_100A2D320);
    v119 = v9;
    v82 = v81 + v66;
    v83 = a1;
    v84 = *(a1 + 16);
    v85 = v83;
    sub_1000194DC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10019435C(v84 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v82[v79], &qword_100CA5008);
    *(v12 + 104) = sub_1001B38A0(v80);
    *(v12 + 112) = v86;
    *(v12 + 120) = v87;
    v121 = v68;
    v88 = swift_allocObject();
    sub_100003E18(v88);
    v90 = v89 + v66;
    v91 = *(v85 + 16);
    sub_1000194DC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10019435C(v91 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v90 + v120, &qword_100CA5008);
    *(v12 + 128) = sub_1001B38A0(v88);
    *(v12 + 136) = v92;
    *(v12 + 144) = v93;
    sub_1000167B0();
    v94 = swift_allocObject();
    sub_100003E18(v94);
    v96 = v95 + v66;
    v97 = v122;
    v98 = *(v122 + 16);
    sub_1000194DC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v99 = v120;
    sub_10019435C(v98 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v96 + v120, &qword_100CA5008);
    *(v12 + 152) = sub_1001B38A0(v94);
    *(v12 + 160) = v100;
    *(v12 + 168) = v101;
    v102 = sub_100017774();
    sub_100003E18(v102);
    v104 = v103 + v66;
    v105 = *(v97 + 16);
    sub_1000194DC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v106 = v104 + v99;
    v107 = v99;
    sub_10019435C(v105 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v106, &qword_100CA5008);
    *(v12 + 176) = sub_1001B38A0(v102);
    *(v12 + 184) = v108;
    *(v12 + 192) = v109;
    v110 = sub_100017774();
    sub_100003E18(v110);
    v112 = v111 + v66;
    v113 = *(v97 + 16);
    sub_10019435C(v113 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v111 + v66, &qword_100CA5008);
    sub_10019435C(v113 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v112 + v107, &qword_100CA5008);
    *(v12 + 200) = sub_1001B38A0(v110);
    *(v12 + 208) = v114;
    *(v12 + 216) = v115;
    sub_100364F14(v119, &qword_100CA5008);
  }

  return v12;
}

uint64_t sub_10036489C(char a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003C38();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v12);
  v72 = &v65 - v13;
  v14 = sub_10022C350(&qword_100CA5008);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v17 = &v65 - v16;
  v18 = type metadata accessor for LocationComponentViewModel();
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v22);
  v24 = &v65 - v23;
  __chkstk_darwin(v25);
  v27 = &v65 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v65 - v32;
  __chkstk_darwin(v34);
  v36 = &v65 - v35;
  v37 = sub_100363A94(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather12NoAqiContent8_Storage_map;
  swift_beginAccess();
  v71 = a3;
  sub_100035AD0(a3 + v38, v17, &qword_100CA5008);
  v39 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v17, 1, v39) == 1)
  {
    sub_1000180EC(v17, &qword_100CA5008);
    v40 = 1;
  }

  else
  {
    v66 = v10;
    sub_10019435C(&v17[*(v39 + 20)], v24, type metadata accessor for LocationComponentViewModel);
    sub_100364F14(v17, type metadata accessor for LocationComponentContainerViewModel);
    sub_1001B6FB0(v24, v27, type metadata accessor for LocationComponentViewModel);
    sub_100566A5C(v37, v75);
    if (v76)
    {
      sub_100364F14(v27, type metadata accessor for LocationComponentViewModel);
      v40 = 1;
    }

    else
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v41);
      v40 = 0;
      v42 = &v33[*(v6 + 20)];
      v43 = v75[1];
      *v42 = v75[0];
      *(v42 + 1) = v43;
    }

    v10 = v66;
  }

  v44 = v69;
  v45 = v68;
  sub_10001B350(v33, v40, 1, v6);
  sub_1003168DC(v33, v36);
  sub_10001B350(v74, 1, 1, v6);
  v46 = v71;
  sub_100011474();
  v49 = v67;
  sub_10019435C(v47 + v48, v67, v50);
  sub_100566A94(v37, v77);
  if (v78 & 1) != 0 || (v51 = v49, v52 = v72, sub_1001B6FB0(v51, v72, type metadata accessor for LocationComponentViewModel), v53 = (v52 + *(v6 + 20)), v54 = v77[1], *v53 = v77[0], v53[1] = v54, sub_100035AD0(v36, v44, &qword_100CAC7F8), sub_10019435C(*(v46 + 16) + *(v39 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v45, type metadata accessor for LocationComponentViewModel), sub_100566AB0(v37, v79), (v80))
  {
    sub_100003E3C();
  }

  else
  {
    v55 = v73;
    sub_1001B6FB0(v45, v73, type metadata accessor for LocationComponentViewModel);
    v56 = (v55 + *(v6 + 20));
    v57 = v79[1];
    *v56 = v79[0];
    v56[1] = v57;
    v58 = *(v46 + 16) + *(v39 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind;
    v59 = v70;
    sub_10019435C(v58, v70, type metadata accessor for LocationComponentViewModel);
    sub_100566AE8(v37, v81);
    if ((v82 & 1) == 0)
    {

      sub_100011474();
      sub_1001B6FB0(v59, v10, v60);
      v61 = (v10 + *(v6 + 20));
      v62 = v81[1];
      *v61 = v81[0];
      v61[1] = v62;
      v63 = sub_100924C14(v74, v52, v44, v55, v10);
      sub_1000180EC(v36, &qword_100CAC7F8);
      return v63;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100364F14(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100364F6C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v25 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v24 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = OBJC_IVAR____TtC7Weather21AppContinuationBridge_pendingOpenL2Descriptor;
  swift_beginAccess();
  sub_100367508(a1, v2 + v16);
  swift_endAccess();
  sub_100040690();
  v17 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100367578;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C50258;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001BF18();
  sub_100067324(v19, v20);
  sub_10022C350(&qword_100CB4680);
  sub_10001E924();
  sub_100006F64(v21, v22);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v25 + 8))(v9, v4);
  return (*(v11 + 8))(v15, v24);
}

uint64_t sub_100365278(uint64_t a1)
{
  v2 = type metadata accessor for MainAction();
  __chkstk_darwin(v2);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  swift_storeEnumTagMultiPayload();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_10004F034(v4, v7, v5);
  sub_100018144(v7, &unk_100CD81B0);
  return sub_10004F570(v4, type metadata accessor for MainAction);
}

uint64_t sub_100365360(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v195 = a3;
  v208 = a2;
  v217 = a1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v205 = v6;
  v206 = v5;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v203 = v8 - v7;
  sub_1000038CC();
  v204 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v202 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v201 = v12 - v11;
  sub_10022C350(&qword_100CAFF08);
  sub_1000037C4();
  v210 = v14;
  v211 = v13;
  __chkstk_darwin(v13);
  v209 = &v184 - v15;
  v16 = sub_10022C350(&qword_100CAFF10);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  v216 = &v184 - v18;
  sub_1000038CC();
  v215 = type metadata accessor for LocationViewAction();
  sub_1000037C4();
  v198 = v19;
  __chkstk_darwin(v20);
  v199 = v21;
  v200 = &v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v218 = &v184 - v23;
  v192 = sub_10022C350(&qword_100CADD58);
  sub_1000037E8();
  __chkstk_darwin(v24);
  v194 = &v184 - v25;
  v26 = sub_10022C350(&qword_100CADBA0);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  v189 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  v193 = &v184 - v30;
  sub_1000038CC();
  v222 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v212 = v31;
  __chkstk_darwin(v32);
  sub_1000037D8();
  v219 = (v34 - v33);
  v35 = sub_10022C350(&qword_100CA65D8);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_100003848();
  v191 = v37;
  sub_10000386C();
  __chkstk_darwin(v38);
  v207 = &v184 - v39;
  sub_10000386C();
  __chkstk_darwin(v40);
  v42 = &v184 - v41;
  __chkstk_darwin(v43);
  v45 = &v184 - v44;
  v46 = sub_10022C350(&qword_100CA6898);
  v47 = sub_100003810(v46);
  __chkstk_darwin(v47);
  sub_100003848();
  v214 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  v51 = &v184 - v50;
  v52 = type metadata accessor for OpenL2Descriptor(0);
  sub_1000037E8();
  __chkstk_darwin(v53);
  sub_100003848();
  v190 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  v196 = &v184 - v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  v197 = &v184 - v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  v61 = &v184 - v60;
  v62 = OBJC_IVAR____TtC7Weather21AppContinuationBridge_pendingOpenL2Descriptor;
  swift_beginAccess();
  v221 = v4;
  v213 = v62;
  sub_100035AD0(v4 + v62, v51, &qword_100CA6898);
  v223 = v52;
  if (sub_100024D10(v51, 1, v52) == 1)
  {
    return sub_100018144(v51, &qword_100CA6898);
  }

  sub_10000FD40();
  sub_100367754(v51, v61, v64);
  v65 = *(v223 + 24);
  sub_100035AD0(&v61[v65], v45, &qword_100CA65D8);
  v66 = type metadata accessor for Location();
  sub_10000394C(v45);
  v220 = v61;
  if (v103)
  {
    v67 = &qword_100CA65D8;
    v68 = v45;
LABEL_6:
    sub_100018144(v68, v67);
    goto LABEL_7;
  }

  v98 = v219;
  Location.identifier.getter();
  v99 = *(v66 - 8);
  v100 = *(v99 + 8);
  v187 = v99 + 8;
  v100(v45, v66);
  Location.Identifier.id.getter();
  v101 = v212 + 8;
  v102 = v222;
  v188 = *(v212 + 8);
  v188(v98, v222);

  v185 = v65;
  sub_100035AD0(&v61[v65], v42, &qword_100CA65D8);
  sub_10000394C(v42);
  v186 = v101;
  if (v103)
  {
    v126 = v100;
    sub_100018144(v42, &qword_100CA65D8);
    v184 = 0;
    v128 = 0;
    v129 = v188;
  }

  else
  {
    Location.identifier.getter();
    v126 = v100;
    v100(v42, v66);
    v184 = Location.Identifier.id.getter();
    v128 = v127;
    v129 = v188;
    v188(v98, v102);
  }

  v130 = v207;
  sub_100035AD0(v208, v207, &qword_100CA65D8);
  sub_10000394C(v130);
  if (v103)
  {
    sub_100018144(v130, &qword_100CA65D8);
    if (!v128)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v131 = v219;
    Location.identifier.getter();
    v132 = v222;
    v126(v130, v66);
    v133 = Location.Identifier.id.getter();
    v135 = v134;
    v129(v131, v132);
    if (v128)
    {
      if (v135)
      {
        if (v184 == v133 && v128 == v135)
        {

          goto LABEL_7;
        }

        v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v137)
        {
          goto LABEL_7;
        }

        goto LABEL_36;
      }
    }

    else if (!v135)
    {
      goto LABEL_7;
    }
  }

LABEL_36:
  v157 = v191;
  sub_100035AD0(&v220[v185], v191, &qword_100CA65D8);
  sub_10000394C(v157);
  if (v103)
  {
    sub_100018144(v157, &qword_100CA65D8);
    v159 = 1;
    v158 = v193;
  }

  else
  {
    v158 = v193;
    Location.identifier.getter();
    v126(v157, v66);
    v159 = 0;
  }

  v160 = v194;
  v161 = v222;
  sub_10001B350(v158, v159, 1, v222);
  v162 = *(v192 + 48);
  sub_100035AD0(v158, v160, &qword_100CADBA0);
  sub_100035AD0(v195, v160 + v162, &qword_100CADBA0);
  if (sub_100024D10(v160, 1, v161) == 1)
  {
    sub_100018144(v158, &qword_100CADBA0);
    if (sub_100024D10(v160 + v162, 1, v222) == 1)
    {
      v67 = &qword_100CADBA0;
      v68 = v160;
      goto LABEL_6;
    }

    goto LABEL_44;
  }

  v163 = v189;
  sub_100035AD0(v160, v189, &qword_100CADBA0);
  if (sub_100024D10(v160 + v162, 1, v222) == 1)
  {
    sub_100018144(v158, &qword_100CADBA0);
    v188(v163, v222);
LABEL_44:
    sub_100018144(v160, &qword_100CADD58);
    goto LABEL_45;
  }

  v180 = v219;
  v181 = v222;
  (*(v212 + 32))(v219, v160 + v162, v222);
  sub_100067324(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
  v182 = dispatch thunk of static Equatable.== infix(_:_:)();
  v183 = v188;
  v188(v180, v181);
  sub_100018144(v158, &qword_100CADBA0);
  v183(v163, v181);
  sub_100018144(v160, &qword_100CADBA0);
  if ((v182 & 1) == 0)
  {
LABEL_45:
    if (qword_100CA2760 != -1)
    {
      sub_10000FAB4();
    }

    v164 = type metadata accessor for Logger();
    v165 = sub_10000703C(v164, qword_100D90C78);
    sub_10000FD40();
    v73 = v220;
    v78 = v190;
    sub_1003677B4(v220, v190, v166);
    v80 = Logger.logObject.getter();
    v167 = static os_log_type_t.error.getter();
    if (sub_1000250E8(v167))
    {
      v168 = swift_slowAlloc();
      v222 = sub_10003BD80(v168);
      v224[0] = v222;
      *v165 = 136446210;
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      v170 = sub_10004E468(inited, xmmword_100A3BBA0);
      v172 = sub_1000229B0(v170, v171);
      sub_100016804(v172, v173);
      inited[10].n128_u64[1] = sub_10022C350(&unk_100CB2CF0);
      sub_100042FB0(&inited[9]);
      v174 = sub_100031558();
      sub_100035AD0(v174, v175, v176);
      Dictionary.init(dictionaryLiteral:)();
      sub_100037A28();
      sub_10004971C(&qword_100CAFF18, &qword_100CAFF08);
      sub_100031C90();
      sub_1000206B8();
      v177("otViewControllerResolver", &unk_100A2D7F0);
      sub_10003C388();
      sub_10004F570(v78, v178);
      v179 = sub_10002FE48();

      v96 = v221;
      *(v221 + 4) = v179;
      v97 = "No identifier found for %{public}s, L2 may not be supported at location.";
      goto LABEL_49;
    }

LABEL_50:

    sub_10004F570(v78, type metadata accessor for OpenL2Descriptor);
    v156 = v73;
    v155 = type metadata accessor for OpenL2Descriptor;
    return sub_10004F570(v156, v155);
  }

LABEL_7:
  v69 = v214;
  v70 = v223;
  sub_10001B350(v214, 1, 1, v223);
  v71 = v221;
  v72 = v213;
  swift_beginAccess();
  sub_1003676E4(v69, v71 + v72);
  swift_endAccess();
  type metadata accessor for OpenL2ActionHandler();
  sub_10000FD40();
  v73 = v220;
  sub_1003677B4(v220, v69, v74);
  sub_10001B350(v69, 0, 1, v70);
  v75 = v216;
  sub_10090B2E0(v69, v217, v216);
  sub_100018144(v69, &qword_100CA6898);
  if (sub_100024D10(v75, 1, v215) != 1)
  {
    sub_100367754(v75, v218, type metadata accessor for LocationViewAction);
    if (qword_100CA2760 != -1)
    {
      sub_10000FAB4();
    }

    v104 = type metadata accessor for Logger();
    sub_10000703C(v104, qword_100D90C78);
    sub_10000FD40();
    v105 = v197;
    sub_1003677B4(v73, v197, v106);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();
    if (sub_1000250E8(v108))
    {
      v109 = swift_slowAlloc();
      v219 = v109;
      v222 = swift_slowAlloc();
      v224[0] = v222;
      *v109 = 136446210;
      v217 = "otViewControllerResolver";
      sub_10022C350(&qword_100CA36F8);
      v110 = swift_initStackObject();
      v111 = sub_10004E468(v110, xmmword_100A3BBA0);
      v113 = sub_1000229B0(v111, v112);
      sub_100016804(v113, v114);
      v110[10].n128_u64[1] = sub_10022C350(&unk_100CB2CF0);
      sub_100042FB0(&v110[9]);
      v115 = sub_100031558();
      sub_100035AD0(v115, v116, v117);
      Dictionary.init(dictionaryLiteral:)();
      v118 = v209;
      ShortDescription.init(name:_:)();
      sub_10004971C(&qword_100CAFF18, &qword_100CAFF08);
      v119 = v211;
      dispatch thunk of ShortDescriptionType.describe(withIndentation:)();
      sub_1000206B8();
      v120(v118, v119);
      sub_1000194F8();
      sub_10004F570(v105, v121);
      v122 = sub_10002FE48();

      v123 = v219;
      *(v219 + 1) = v122;
      sub_100021404(&_mh_execute_header, v124, v125, "Opening L2: %{public}s...", v123);
      sub_100006F14(v222);
      sub_100003884();
      sub_100003884();
    }

    else
    {

      sub_1000194F8();
      sub_10004F570(v105, v138);
    }

    sub_100040690();
    v139 = static OS_dispatch_queue.main.getter();
    v141 = v221[2];
    v140 = v221[3];
    v142 = v218;
    v143 = v200;
    sub_1003677B4(v218, v200, type metadata accessor for LocationViewAction);
    v144 = (*(v198 + 80) + 32) & ~*(v198 + 80);
    v145 = swift_allocObject();
    *(v145 + 16) = v141;
    *(v145 + 24) = v140;
    sub_100367754(v143, v145 + v144, type metadata accessor for LocationViewAction);
    v224[4] = sub_100367814;
    v224[5] = v145;
    v224[0] = _NSConcreteStackBlock;
    v224[1] = 1107296256;
    sub_100003F74();
    v224[2] = v146;
    v224[3] = &unk_100C50398;
    v147 = _Block_copy(v224);

    v148 = v201;
    static DispatchQoS.unspecified.getter();
    v224[0] = _swiftEmptyArrayStorage;
    sub_10001BF18();
    sub_100067324(v149, v150);
    sub_10022C350(&qword_100CB4680);
    sub_10001E924();
    sub_100006F64(v151, v152);
    v153 = v203;
    v154 = v206;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v147);

    (*(v205 + 8))(v153, v154);
    (*(v202 + 8))(v148, v204);
    sub_10004F570(v142, type metadata accessor for LocationViewAction);
    sub_1000194F8();
    v156 = v220;
    return sub_10004F570(v156, v155);
  }

  sub_100018144(v75, &qword_100CAFF10);
  if (qword_100CA2760 != -1)
  {
    sub_10000FAB4();
  }

  v76 = type metadata accessor for Logger();
  v77 = sub_10000703C(v76, qword_100D90C78);
  sub_10000FD40();
  v78 = v196;
  sub_1003677B4(v73, v196, v79);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();
  if (!sub_1000250E8(v81))
  {
    goto LABEL_50;
  }

  v82 = swift_slowAlloc();
  v222 = sub_10003BD80(v82);
  v224[0] = v222;
  *v77 = 136446210;
  sub_10022C350(&qword_100CA36F8);
  v83 = swift_initStackObject();
  v84 = sub_10004E468(v83, xmmword_100A3BBA0);
  v86 = sub_1000229B0(v84, v85);
  sub_100016804(v86, v87);
  v83[10].n128_u64[1] = sub_10022C350(&unk_100CB2CF0);
  sub_100042FB0(&v83[9]);
  v88 = sub_100031558();
  sub_100035AD0(v88, v89, v90);
  Dictionary.init(dictionaryLiteral:)();
  sub_100037A28();
  sub_10004971C(&qword_100CAFF18, &qword_100CAFF08);
  sub_100031C90();
  sub_1000206B8();
  v91("otViewControllerResolver", &unk_100A2D7F0);
  sub_10003C388();
  sub_10004F570(v78, v92);
  v93 = sub_10002FE48();

  v96 = v221;
  *(v221 + 4) = v93;
  v97 = "Could not create L2 action for %{public}s, L2 may not be supported at location.";
LABEL_49:
  sub_100021404(&_mh_execute_header, v94, v95, v97, v96);
  sub_100006F14(v222);
  sub_100003884();
  sub_100003884();

  v156 = v220;
  v155 = &unk_100A2D7F0;
  return sub_10004F570(v156, v155);
}

uint64_t sub_1003666FC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MainAction();
  __chkstk_darwin(v5);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003677B4(a3, v7, type metadata accessor for LocationViewAction);
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v7, v9, a1);
  sub_100018144(v9, &unk_100CD81B0);
  return sub_10004F570(v7, type metadata accessor for MainAction);
}

uint64_t sub_100366814(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v87 = a1;
  v89 = type metadata accessor for DispatchTime();
  sub_1000037C4();
  v83 = v6;
  __chkstk_darwin(v7);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v88 = &v79 - v11;
  sub_1000038CC();
  type metadata accessor for ActivityAction();
  sub_1000037C4();
  v84 = v12;
  v85 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v86 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v95 = v20;
  v96 = v19;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v23 = v22 - v21;
  type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v93 = v25;
  v94 = v24;
  __chkstk_darwin(v24);
  sub_1000037D8();
  v28 = v27 - v26;
  v29 = v3[4];
  v90 = v3[5];
  v91 = v29;
  (v29)(&aBlock);
  v92 = aBlock;
  sub_1000240DC();
  withTransaction<A>(_:_:)();
  if (a3)
  {
    sub_100040690();
    v81 = static OS_dispatch_queue.main.getter();
    v30 = v3[2];
    v31 = v3[3];
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    v101 = sub_1003676A0;
    v102 = v32;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_1000742F0;
    v100 = &unk_100C50348;
    v33 = _Block_copy(&aBlock);
    v82 = v9;
    v80 = v33;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10001BF18();
    sub_100067324(v34, v35);
    sub_10022C350(&qword_100CB4680);
    sub_10001E924();
    sub_100006F64(v36, v37);
    v38 = v96;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v39 = v80;
    v40 = v81;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v41 = v39;
    v9 = v82;
    _Block_release(v41);

    (*(v95 + 8))(v23, v38);
    (*(v93 + 8))(v28, v94);
  }

  sub_100017794();
  v42 = v87;
  sub_1003677B4(v87, v18, v43);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10004F570(v18, type metadata accessor for ActivityAction);
  if (EnumCaseMultiPayload == 5)
  {
    sub_1000240DC();
    withTransaction<A>(_:_:)();
    v45 = sub_100040690();
    v82 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v84 = *(v83 + 8);
    v84(v9, v89);
    sub_10000CA04();
    v47 = v46;
    v48 = v86;
    sub_1003677B4(v42, v86, v46);
    sub_100041958();
    v49 = swift_allocObject();
    *(v49 + 16) = v9;
    *(v49 + 24) = v45;
    sub_100367754(v48, v4 + v49, v47);
    sub_1000694C4();
    v98 = 1107296256;
    sub_100003F74();
    v99 = v50;
    v100 = &unk_100C502F8;
    v51 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10001BF18();
    sub_100067324(v52, v53);
    sub_10022C350(&qword_100CB4680);
    sub_10001E924();
    sub_100006F64(v54, v55);
    sub_10000E944();
    v56 = v88;
    v57 = v82;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v51);

    v58 = sub_100037100();
    v59(v58);
    (*(v93 + 8))(v28, v94);
    v60 = (v84)(v56, v89);
  }

  else
  {
    v61 = sub_100040690();
    v62 = static OS_dispatch_queue.main.getter();
    sub_10000CA04();
    v64 = v63;
    v65 = v86;
    sub_1003677B4(v42, v86, v63);
    sub_100041958();
    v66 = swift_allocObject();
    *(v66 + 16) = v9;
    *(v66 + 24) = v61;
    sub_100367754(v65, v4 + v66, v64);
    sub_1000694C4();
    v98 = 1107296256;
    sub_100003F74();
    v99 = v67;
    v100 = &unk_100C502A8;
    v68 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10001BF18();
    sub_100067324(v69, v70);
    sub_10022C350(&qword_100CB4680);
    sub_10001E924();
    sub_100006F64(v71, v72);
    sub_10000E944();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v68);

    v73 = sub_100037100();
    v74(v73);
    v60 = (*(v93 + 8))(v28, v94);
  }

  v91(&aBlock, v60);
  if (aBlock == v92)
  {

    v77 = 0;
  }

  else
  {
    type metadata accessor for MainState._Storage(0);
    sub_100073248();
    v76 = v75;

    v77 = v76 ^ 1;
  }

  return v77 & 1;
}

uint64_t sub_1003670C4(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for MainAction();
  __chkstk_darwin(v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_10004F034(v4, v6, a1);
  sub_100018144(v6, &unk_100CD81B0);
  return sub_10004F570(v4, type metadata accessor for MainAction);
}

uint64_t sub_1003671E8(uint64_t a1)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  v6 = *(a1 + 16);
  type metadata accessor for ActivityAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1000082D8();
  sub_10004F034(v5, v7, v6);
  sub_100018144(v10, &unk_100CD81B0);
  sub_100024654();
  return sub_10004F570(v5, v8);
}

uint64_t sub_100367334(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  sub_100017794();
  sub_1003677B4(a3, v8, v9);
  type metadata accessor for EnvironmentAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1000082D8();
  sub_10004F034(v8, v10, a1);
  sub_100018144(v13, &unk_100CD81B0);
  sub_100024654();
  return sub_10004F570(v8, v11);
}

uint64_t sub_100367428()
{

  sub_100018144(v0 + OBJC_IVAR____TtC7Weather21AppContinuationBridge_pendingOpenL2Descriptor, &qword_100CA6898);
  return v0;
}

uint64_t sub_100367484()
{
  sub_100367428();

  return swift_deallocClassInstance();
}

uint64_t sub_100367508(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6898);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100367634(uint64_t (*a1)(void))
{
  v1 = a1(0);
  sub_100003810(v1);
  return sub_1003672E4();
}

uint64_t sub_1003676E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6898);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100367754(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1003677B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for HorizontalABWithB1x1RatioLayout()
{
  result = qword_100CAFF78;
  if (!qword_100CAFF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100367908()
{
  sub_100046E64();
  if (v0 <= 0x3F)
  {
    sub_1001BA8DC();
    if (v1 <= 0x3F)
    {
      sub_10000D964();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_1003679AC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for LayoutSubview();
  sub_1000037C4();
  v24 = v5;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  type metadata accessor for LayoutSubviews();
  sub_10001E940();
  sub_10036819C(v12, v13);
  sub_100003F88();
  dispatch thunk of Collection.startIndex.getter();
  sub_100003F88();
  dispatch thunk of Collection.endIndex.getter();
  if (sub_1000229DC() == 2 && (sub_100003F88(), dispatch thunk of Collection.startIndex.getter(), sub_100003F88(), dispatch thunk of Collection.endIndex.getter(), sub_1000229DC() == 2))
  {
    LayoutSubviews.subscript.getter();
    v14 = v24;
    (*(v24 + 32))(v11, v8, v4);
    static ProposedViewSize.unspecified.getter();
    v27 = v15 & 1;
    v26 = v16 & 1;
    LayoutSubview.sizeThatFits(_:)();
    v18 = v17;
    if (a2)
    {
      (*(v14 + 8))(v11, v4);
      type metadata accessor for HorizontalABWithB1x1RatioLayout();
      sub_1000082EC();
      return v20 + v18 + v19;
    }

    else
    {
      v21 = *&a1;
      v23 = type metadata accessor for HorizontalABWithB1x1RatioLayout();
      if (*&a1 - *(v25 + *(v23 + 24)) - *(v25 + *(v23 + 32)) < v18)
      {
        v27 = 0;
        v26 = 1;
        LayoutSubview.sizeThatFits(_:)();
      }

      (*(v14 + 8))(v11, v4);
      sub_1000082EC();
    }
  }

  else if (a2)
  {
    return 10.0;
  }

  else
  {
    return *&a1;
  }

  return v21;
}

uint64_t sub_100367C88()
{
  v0 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LayoutSubview();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v31 = &v27 - v12;
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  type metadata accessor for LayoutSubviews();
  sub_10001E940();
  sub_10036819C(v19, v20);
  sub_10000CA1C();
  dispatch thunk of Collection.startIndex.getter();
  sub_10000CA1C();
  dispatch thunk of Collection.endIndex.getter();
  result = sub_100019510();
  if (result == 2)
  {
    v28 = v2;
    v29 = v0;
    LayoutSubviews.subscript.getter();
    v22 = *(v7 + 32);
    v22(v18, v15, v5);
    sub_10000CA1C();
    dispatch thunk of Collection.startIndex.getter();
    sub_10000CA1C();
    dispatch thunk of Collection.endIndex.getter();
    if (sub_100019510() == 2)
    {
      LayoutSubviews.subscript.getter();
      v23 = v31;
      v22(v31, v10, v5);
      v24 = *v30;
      v25 = v32;
      OSSignpostID.init(log:)();
      static os_signpost_type_t.begin.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v35.origin.x = sub_10000FD58();
      CGRectGetHeight(v35);
      v34 = 1;
      v33 = 0;
      LayoutSubview.sizeThatFits(_:)();
      type metadata accessor for HorizontalABWithB1x1RatioLayout();
      v36.origin.x = sub_10000FD58();
      CGRectGetMinX(v36);
      v37.origin.x = sub_10000FD58();
      CGRectGetMinY(v37);
      static UnitPoint.topLeading.getter();
      sub_1000058F0();
      LayoutSubview.place(at:anchor:proposal:)();
      static UnitPoint.topLeading.getter();
      sub_1000058F0();
      LayoutSubview.place(at:anchor:proposal:)();
      static os_signpost_type_t.end.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v28 + 8))(v25, v29);
      v26 = *(v7 + 8);
      v26(v23, v5);
      return (v26)(v18, v5);
    }

    else
    {
      return (*(v7 + 8))(v18, v5);
    }
  }

  return result;
}

void (*sub_1003680E0(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

uint64_t sub_10036819C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003681E4()
{
  type metadata accessor for Domain();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001BF30();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100019530();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = Setting.init(_:defaultValue:domain:access:)();
  qword_100D8FC08 = result;
  return result;
}

unint64_t sub_100368368()
{
  result = qword_100CB0130;
  if (!qword_100CB0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0130);
  }

  return result;
}

uint64_t sub_1003683BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7375636F66 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65766F6D6572 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1003684C4(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x7375636F66;
  }

  return 0x65766F6D6572;
}

uint64_t sub_100368514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003683BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10036853C(uint64_t a1)
{
  v2 = sub_10036B174();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100368578(uint64_t a1)
{
  v2 = sub_10036B174();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003685B4(uint64_t a1)
{
  v2 = sub_10036B21C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003685F0(uint64_t a1)
{
  v2 = sub_10036B21C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10036862C(uint64_t a1)
{
  v2 = sub_10036B270();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100368668(uint64_t a1)
{
  v2 = sub_10036B270();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003686A4(uint64_t a1)
{
  v2 = sub_10036B1C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003686E0(uint64_t a1)
{
  v2 = sub_10036B1C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10036871C()
{
  sub_10000C778();
  v36 = v4;
  v37 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10022C350(&qword_100CA65D8);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_100003C38();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  v21 = sub_10022C350(&qword_100CB0250);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  v23 = sub_100016824();
  v24 = type metadata accessor for SearchViewState.ViewState(v23);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000037D8();
  sub_100021D38();
  if (v10)
  {
    v35 = v10;
  }

  else
  {
    v26 = v0[1];
    v37 = *v0;
    v35 = v26;
  }

  sub_100035AD0(v8, v1, &qword_100CB0250);
  if (sub_100024D10(v1, 1, v24) == 1)
  {
    type metadata accessor for SearchViewState(0);
    sub_10001BF4C();
    sub_1000BB818(v0 + v27, v2, v28);
    v29 = sub_100024D10(v1, 1, v24);

    if (v29 != 1)
    {
      sub_1000180EC(v1, &qword_100CB0250);
    }
  }

  else
  {
    sub_10036AE18(v1, v2);
  }

  if (v6 == 3)
  {
    v6 = *(v0 + *(type metadata accessor for SearchViewState(0) + 24));
  }

  sub_100035AD0(v36, v17, &qword_100CA65D8);
  v30 = type metadata accessor for Location();
  if (sub_100024D10(v17, 1, v30) == 1)
  {
    v31 = type metadata accessor for SearchViewState(0);
    sub_100035AD0(v0 + *(v31 + 28), v20, &qword_100CA65D8);
    if (sub_100024D10(v17, 1, v30) != 1)
    {
      sub_1000180EC(v17, &qword_100CA65D8);
    }
  }

  else
  {
    (*(*(v30 - 8) + 32))(v20, v17, v30);
    sub_10001B350(v20, 0, 1, v30);
  }

  v32 = v35;
  *v12 = v37;
  v12[1] = v32;
  v33 = type metadata accessor for SearchViewState(0);
  sub_10036AE18(v2, v12 + v33[5]);
  *(v12 + v33[6]) = v6;
  sub_1003541A8(v20, v12 + v33[7]);
  sub_10000536C();
}

uint64_t sub_100368A3C()
{
  type metadata accessor for SearchViewState.ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v3 = sub_100016824();
  type metadata accessor for SearchViewState(v3);
  sub_10001BF4C();
  sub_1000BB818(v0 + v4, v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v10 = v0[1];
      v11 = *v0 & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v10) & 0xF;
      }

      v12 = v11 == 0;
      goto LABEL_10;
    case 3:
      if (static Settings.HomeAndWork.homeAndWorkLabelEnabled.getter())
      {
        sub_1007BC5F8();
      }

      else
      {
        v9 = _swiftEmptyArrayStorage;
      }

      v13 = v9[2];

      v12 = v13 == 0;
LABEL_10:
      result = !v12;
      break;
    case 4:
      return result;
    default:
      sub_100008310();
      sub_10036AED0(v1, v8);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_100368B48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7551686372616573 && a2 == 0xEB00000000797265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461745377656976 && a2 == 0xE900000000000065;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7165527375636F66 && a2 == 0xEC00000074736575;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x8000000100AC3280 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_100368CB8(char a1)
{
  result = 0x7551686372616573;
  switch(a1)
  {
    case 1:
      result = 0x7461745377656976;
      break;
    case 2:
      result = 0x7165527375636F66;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100368D54(void *a1)
{
  v4 = sub_10022C350(&qword_100CB0168);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100003CF8();
  sub_1000161C0(a1, a1[3]);
  sub_10036ADC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100016834();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for SearchViewState(0);
    type metadata accessor for SearchViewState.ViewState(0);
    sub_10001953C();
    sub_10036AD7C(v8, v9);
    sub_100016834();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10036AF28();
    sub_100016834();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for Location();
    sub_100005924();
    sub_10036AD7C(v10, v11);
    sub_100016834();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_100368F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_10000E8AC();
  v48 = v12;
  v15 = v14;
  v43 = v16;
  v17 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  v44 = v42 - v19;
  type metadata accessor for SearchViewState.ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_1000183C0();
  sub_10022C350(&qword_100CB0148);
  sub_1000037C4();
  v45 = v22;
  v46 = v21;
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = v42 - v24;
  v26 = type metadata accessor for SearchViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = (v29 - v28);
  sub_1000161C0(v15, v15[3]);
  sub_10036ADC4();
  v47 = v25;
  v31 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    sub_100006F14(v15);
  }

  else
  {
    v32 = v45;
    v48 = v26;
    v33 = v30;
    *v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v30[1] = v34;
    v42[1] = v34;
    sub_10001953C();
    sub_10036AD7C(v35, v36);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = v48;
    sub_10036AE18(v13, v33 + *(v48 + 20));
    sub_10036AE7C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = v33;
    *(v33 + *(v37 + 24)) = a12;
    type metadata accessor for Location();
    sub_100005924();
    sub_10036AD7C(v39, v40);
    v41 = v44;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v32 + 8))(v47, v46);
    sub_1003541A8(v41, v38 + *(v37 + 28));
    sub_1000BB818(v38, v43, type metadata accessor for SearchViewState);
    sub_100006F14(v15);
    sub_10036AED0(v38, type metadata accessor for SearchViewState);
  }

  sub_10000C8F4();
}

uint64_t sub_100369368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100368B48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100369390(uint64_t a1)
{
  v2 = sub_10036ADC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003693CC(uint64_t a1)
{
  v2 = sub_10036ADC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100369470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  v40 = v14;
  v16 = v15;
  v17 = type metadata accessor for CodableError();
  sub_1000037C4();
  v39 = v18;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  sub_10022C350(&qword_100CB0180);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v23);
  sub_1000183C0();
  type metadata accessor for SearchViewState.ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  v27 = (v26 - v25);
  v28 = sub_1000114B8();
  sub_1000161C0(v28, v29);
  sub_10036AF7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    sub_10036AFD0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    switch(a13)
    {
      case 1:
      case 3:
      case 4:
        v37 = sub_10007485C();
        v38(v37);
        v34 = v27;
        break;
      case 2:
        sub_10022C350(&qword_100CA64C8);
        sub_10036B078(&qword_100CB0198, &qword_100CB01A0);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v35 = sub_10007485C();
        v36(v35);
        v34 = v27;
        *v27 = v41;
        break;
      default:
        sub_1000229FC();
        sub_10036AD7C(v30, v31);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v32 = sub_10007485C();
        v33(v32);
        v34 = v27;
        (*(v39 + 32))(v27, v22, v17);
        break;
    }

    sub_100031474();
    swift_storeEnumTagMultiPayload();
    sub_10036AE18(v34, v40);
  }

  sub_100006F14(v16);
  sub_10000C8F4();
}

void sub_100369850()
{
  sub_10000E8AC();
  type metadata accessor for CodableError();
  sub_1000037C4();
  v17 = v5;
  v18 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_100021D38();
  type metadata accessor for SearchViewState.ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_1000183C0();
  sub_10022C350(&qword_100CB01B0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100003CF8();
  v8 = sub_1000114B8();
  sub_1000161C0(v8, v9);
  sub_10036AF7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10001BF4C();
  sub_1000BB818(v0, v3, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10036B024();
      sub_1000282CC();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v1)
      {
        sub_10022C350(&qword_100CA64C8);
        sub_10036B078(&qword_100CB01C0, &qword_100CB01C8);
        sub_1000282CC();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v15 = sub_100031CB4();
      v16(v15);

      break;
    case 2u:
    case 3u:
    case 4u:
      sub_10036B024();
      sub_1000282CC();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      goto LABEL_6;
    default:
      (*(v17 + 32))(v2, v3, v18);
      sub_10036B024();
      sub_1000282CC();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v1)
      {
        sub_1000229FC();
        sub_10036AD7C(v11, v12);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v17 + 8))(v2, v18);
LABEL_6:
      v13 = sub_100031CB4();
      v14(v13);
      break;
  }

  sub_10000C8F4();
}

unint64_t sub_100369BE0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C436B8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100369C2C(char a1)
{
  result = 0x726F727265;
  switch(a1)
  {
    case 1:
      result = 0x676E6964616F6CLL;
      break;
    case 2:
      result = 0x73746C75736572;
      break;
    case 3:
      result = 0x7779654B6F72657ALL;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100369CF4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DD52C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100369D24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001DD578(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100369D58@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DD52C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100369D80(uint64_t a1)
{
  v2 = sub_10036AF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100369DBC(uint64_t a1)
{
  v2 = sub_10036AF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100369E1C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100369BE0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100369E4C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100369C2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100369F88()
{
  sub_10000C778();
  v31 = v3;
  v4 = type metadata accessor for CodableError();
  sub_1000037C4();
  v30 = v5;
  __chkstk_darwin(v6);
  sub_100003C38();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  type metadata accessor for SearchViewState.ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000037D8();
  sub_1000183C0();
  v14 = sub_10022C350(&qword_100CB01D8);
  sub_1000037C4();
  v16 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  v18 = sub_100016824();
  type metadata accessor for SearchViewState(v18);
  sub_10001BF4C();
  sub_1000BB818(v0 + v19, v2, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = *v2;
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2C3F0;
      *(inited + 32) = 0x6F4C686372616573;
      *(inited + 40) = 0xEF736E6F69746163;
      *(inited + 72) = sub_10022C350(&qword_100CA64C8);
      *(inited + 48) = v25;
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_5;
    case 2u:
    case 3u:
    case 4u:
      Dictionary.init(dictionaryLiteral:)();
LABEL_5:
      ShortDescription.init(name:_:)();
      break;
    default:
      v21 = v30;
      (*(v30 + 32))(v12, v2, v4);
      sub_10022C350(&qword_100CA36F8);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_100A2C3F0;
      *(v22 + 32) = 0x726F727265;
      *(v22 + 40) = 0xE500000000000000;
      (*(v21 + 16))(v9, v12, v4);
      v23 = String.init<A>(describing:)();
      *(v22 + 72) = &type metadata for String;
      *(v22 + 48) = v23;
      *(v22 + 56) = v24;
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      (*(v21 + 8))(v12, v4);
      break;
  }

  v27 = v31;
  v31[3] = v14;
  v27[4] = sub_10036B110();
  v28 = sub_100042FB0(v27);
  (*(v16 + 32))(v28, v1, v14);
  sub_10000536C();
}

void sub_10036A3F4()
{
  sub_10000E8AC();
  v31 = v1;
  v3 = v2;
  sub_10022C350(&qword_100CB0230);
  sub_1000037C4();
  v29 = v5;
  v30 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v28 = &v24 - v7;
  sub_10022C350(&qword_100CB0238);
  sub_1000037C4();
  v26 = v9;
  v27 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_10022C350(&qword_100CB0240);
  sub_1000037C4();
  v25 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  v18 = sub_10022C350(&qword_100CB0248);
  sub_1000037C4();
  v20 = v19;
  sub_100003828();
  __chkstk_darwin(v21);
  sub_100021D38();
  sub_1000161C0(v3, v3[3]);
  sub_10036B174();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = (v20 + 8);
  if (v31)
  {
    if (v31 == 1)
    {
      sub_10036B21C();
      sub_10000C88C();
      (*(v26 + 8))(v12, v27);
    }

    else
    {
      sub_10036B1C8();
      v23 = v28;
      sub_10000C88C();
      (*(v29 + 8))(v23, v30);
    }
  }

  else
  {
    sub_10036B270();
    sub_10000C88C();
    (*(v25 + 8))(v17, v13);
  }

  (*v22)(v0, v18);
  sub_10000C8F4();
}

void sub_10036A6FC()
{
  sub_10000E8AC();
  v64 = v0;
  v3 = v2;
  v63 = sub_10022C350(&qword_100CB01F0);
  sub_1000037C4();
  v61 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v59 = &v53 - v6;
  v60 = sub_10022C350(&qword_100CB01F8);
  sub_1000037C4();
  v58 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  v11 = sub_10022C350(&qword_100CB0200);
  sub_1000037C4();
  v57 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_100021D38();
  v14 = sub_10022C350(&qword_100CB0208);
  sub_1000037C4();
  v62 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000161C0(v3, v3[3]);
  sub_10036B174();
  v17 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_12;
  }

  v53 = v11;
  v54 = v1;
  v55 = v10;
  v56 = 0;
  v18 = v63;
  v64 = v3;
  v19 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v19, 0);
  v23 = v14;
  if (v21 == v22 >> 1)
  {
    goto LABEL_10;
  }

  if (v21 < (v22 >> 1))
  {
    v24 = v14;
    v25 = *(v20 + v21);
    v26 = sub_100618E7C(v21 + 1);
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    v31 = v60;
    v32 = v61;
    if (v28 == v30 >> 1)
    {
      if (v25)
      {
        v57 = v26;
        v33 = v56;
        if (v25 == 1)
        {
          sub_10036B21C();
          v34 = v55;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v58 + 8))(v34, v31);
            v35 = sub_100003C88();
            v36(v35);
LABEL_21:
            sub_100006F14(v64);
            goto LABEL_13;
          }
        }

        else
        {
          LODWORD(v60) = v25;
          sub_10036B1C8();
          v46 = v59;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v32 + 8))(v46, v18);
            v51 = sub_100003C88();
            v52(v51);
            goto LABEL_21;
          }
        }

        v47 = sub_100003C88();
        v48(v47);
      }

      else
      {
        sub_10036B270();
        v42 = v54;
        sub_10000803C();
        v43 = v56;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v43)
        {
          swift_unknownObjectRelease();
          (*(v57 + 8))(v42, v53);
          v49 = sub_100003C78();
          v50(v49, v24);
          goto LABEL_21;
        }

        v44 = sub_100003C78();
        v45(v44, v24);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v23 = v24;
LABEL_10:
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    sub_10022C350(&qword_100CA7610);
    *v39 = &type metadata for SearchViewState.FocusRequest;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = sub_100003C78();
    v41(v40, v23);
LABEL_11:
    v3 = v64;
LABEL_12:
    sub_100006F14(v3);
LABEL_13:
    sub_10000C8F4();
    return;
  }

  __break(1u);
}

uint64_t sub_10036AC80()
{
  sub_10036AD7C(&qword_100CB01E8, type metadata accessor for SearchViewState);

  return ShortDescribable.description.getter();
}

void sub_10036ACEC(_BYTE *a1@<X8>)
{
  sub_10036A6FC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_10036AD7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10036ADC4()
{
  result = qword_100CB0150;
  if (!qword_100CB0150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0150);
  }

  return result;
}

uint64_t sub_10036AE18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchViewState.ViewState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10036AE7C()
{
  result = qword_100CB0160;
  if (!qword_100CB0160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0160);
  }

  return result;
}

uint64_t sub_10036AED0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10036AF28()
{
  result = qword_100CB0178;
  if (!qword_100CB0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0178);
  }

  return result;
}

unint64_t sub_10036AF7C()
{
  result = qword_100CB0188;
  if (!qword_100CB0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0188);
  }

  return result;
}

unint64_t sub_10036AFD0()
{
  result = qword_100CB0190;
  if (!qword_100CB0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0190);
  }

  return result;
}

unint64_t sub_10036B024()
{
  result = qword_100CB01B8;
  if (!qword_100CB01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB01B8);
  }

  return result;
}

uint64_t sub_10036B078(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CA64C8);
    sub_10036AD7C(a2, type metadata accessor for SearchLocation);
    sub_1000114B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10036B110()
{
  result = qword_100CB01E0;
  if (!qword_100CB01E0)
  {
    sub_10022E824(&qword_100CB01D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB01E0);
  }

  return result;
}

unint64_t sub_10036B174()
{
  result = qword_100CB0210;
  if (!qword_100CB0210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0210);
  }

  return result;
}

unint64_t sub_10036B1C8()
{
  result = qword_100CB0218;
  if (!qword_100CB0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0218);
  }

  return result;
}

unint64_t sub_10036B21C()
{
  result = qword_100CB0220;
  if (!qword_100CB0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0220);
  }

  return result;
}

unint64_t sub_10036B270()
{
  result = qword_100CB0228;
  if (!qword_100CB0228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0228);
  }

  return result;
}

_BYTE *sub_10036B2C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SearchViewState.ViewState.CodingType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10036B4BC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10036B59C()
{
  result = qword_100CB0258;
  if (!qword_100CB0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0258);
  }

  return result;
}

unint64_t sub_10036B5F4()
{
  result = qword_100CB0260;
  if (!qword_100CB0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0260);
  }

  return result;
}

unint64_t sub_10036B64C()
{
  result = qword_100CB0268;
  if (!qword_100CB0268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0268);
  }

  return result;
}

unint64_t sub_10036B6A4()
{
  result = qword_100CB0270;
  if (!qword_100CB0270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0270);
  }

  return result;
}

unint64_t sub_10036B6FC()
{
  result = qword_100CB0278;
  if (!qword_100CB0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0278);
  }

  return result;
}

unint64_t sub_10036B754()
{
  result = qword_100CB0280;
  if (!qword_100CB0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0280);
  }

  return result;
}

unint64_t sub_10036B7AC()
{
  result = qword_100CB0288;
  if (!qword_100CB0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0288);
  }

  return result;
}

unint64_t sub_10036B804()
{
  result = qword_100CB0290;
  if (!qword_100CB0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0290);
  }

  return result;
}

unint64_t sub_10036B85C()
{
  result = qword_100CB0298;
  if (!qword_100CB0298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0298);
  }

  return result;
}

unint64_t sub_10036B8B4()
{
  result = qword_100CB02A0;
  if (!qword_100CB02A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB02A0);
  }

  return result;
}

unint64_t sub_10036B90C()
{
  result = qword_100CB02A8;
  if (!qword_100CB02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB02A8);
  }

  return result;
}

unint64_t sub_10036B964()
{
  result = qword_100CB02B0;
  if (!qword_100CB02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB02B0);
  }

  return result;
}

unint64_t sub_10036B9BC()
{
  result = qword_100CB02B8;
  if (!qword_100CB02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB02B8);
  }

  return result;
}

unint64_t sub_10036BA14()
{
  result = qword_100CB02C0;
  if (!qword_100CB02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB02C0);
  }

  return result;
}

unint64_t sub_10036BA6C()
{
  result = qword_100CB02C8;
  if (!qword_100CB02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB02C8);
  }

  return result;
}

unint64_t sub_10036BAC4()
{
  result = qword_100CB02D0;
  if (!qword_100CB02D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB02D0);
  }

  return result;
}

unint64_t sub_10036BB18()
{
  result = qword_100CB02D8;
  if (!qword_100CB02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB02D8);
  }

  return result;
}

uint64_t sub_10036BB80()
{
  sub_100035B30(v0, v4);
  v1 = static SafeAreaRegions.all.getter();
  v2 = static Edge.Set.all.getter();
  v5 = v1;
  v6 = v2;
  v7 = 1;
  sub_10022C350(&qword_100CB03B0);
  sub_10036C398();
  View.accessibilityHidden(_:)();
  return sub_10036C504(v4);
}

id sub_10036BC18(uint64_t a1)
{
  v1[OBJC_IVAR____TtC7WeatherP33_6C68243CDB0F329D20773C5BF31E601815PassthroughView_tapped] = 0;
  sub_100035B30(a1, &v1[OBJC_IVAR____TtC7WeatherP33_6C68243CDB0F329D20773C5BF31E601815PassthroughView_interactor]);
  v3 = objc_opt_self();
  v4 = [v3 mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v27.origin.x = v6;
  v27.origin.y = v8;
  v27.size.width = v10;
  v27.size.height = v12;
  Width = CGRectGetWidth(v27);
  v14 = [v3 mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v28.origin.x = v16;
  v28.origin.y = v18;
  v28.size.width = v20;
  v28.size.height = v22;
  Height = CGRectGetHeight(v28);
  v26.receiver = v1;
  v26.super_class = type metadata accessor for PassthroughView();
  v24 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, Width, Height);
  sub_100006F14(a1);
  return v24;
}

void sub_10036BD6C()
{
  *(v0 + OBJC_IVAR____TtC7WeatherP33_6C68243CDB0F329D20773C5BF31E601815PassthroughView_tapped) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10036BE0C(void *a1, double a2, double a3)
{
  v15.receiver = v3;
  v15.super_class = type metadata accessor for PassthroughView();
  v7 = objc_msgSendSuper2(&v15, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    sub_10036C078();
    v8 = v7;
    v9 = v3;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      if (a1 && ![a1 type] && (v9[OBJC_IVAR____TtC7WeatherP33_6C68243CDB0F329D20773C5BF31E601815PassthroughView_tapped] & 1) == 0)
      {
        v9[OBJC_IVAR____TtC7WeatherP33_6C68243CDB0F329D20773C5BF31E601815PassthroughView_tapped] = 1;
        v11 = &v9[OBJC_IVAR____TtC7WeatherP33_6C68243CDB0F329D20773C5BF31E601815PassthroughView_interactor];
        v12 = *&v9[OBJC_IVAR____TtC7WeatherP33_6C68243CDB0F329D20773C5BF31E601815PassthroughView_interactor + 24];
        v13 = *&v9[OBJC_IVAR____TtC7WeatherP33_6C68243CDB0F329D20773C5BF31E601815PassthroughView_interactor + 32];
        sub_1000161C0(v11, v12);
        (*(v13 + 24))(v12, v13);
      }

      return 0;
    }
  }

  return v7;
}

id sub_10036C00C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10036C078()
{
  result = qword_100CB0318;
  if (!qword_100CB0318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB0318);
  }

  return result;
}

id sub_10036C0BC()
{
  sub_100035B30(v0, v7);
  v1 = objc_allocWithZone(type metadata accessor for PassthroughView());
  v2 = sub_10036BC18(v7);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setUserInteractionEnabled:1];
  return v4;
}

uint64_t sub_10036C194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10036C618();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10036C1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10036C618();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10036C25C()
{
  sub_10036C618();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t type metadata accessor for SearchDismissOverlayView()
{
  result = qword_100CB0378;
  if (!qword_100CB0378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10036C2F8()
{
  sub_100284708();
  if (v0 <= 0x3F)
  {
    sub_1000612C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10036C398()
{
  result = qword_100CB03B8;
  if (!qword_100CB03B8)
  {
    sub_10022E824(&qword_100CB03B0);
    sub_10036C424();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB03B8);
  }

  return result;
}

unint64_t sub_10036C424()
{
  result = qword_100CB03C0;
  if (!qword_100CB03C0)
  {
    sub_10022E824(&qword_100CB03C8);
    sub_10036C4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB03C0);
  }

  return result;
}

unint64_t sub_10036C4B0()
{
  result = qword_100CB03D0;
  if (!qword_100CB03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB03D0);
  }

  return result;
}

uint64_t sub_10036C504(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB03B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10036C57C()
{
  result = qword_100CB03D8;
  if (!qword_100CB03D8)
  {
    sub_10022E824(&qword_100CB03E0);
    sub_10036C398();
    sub_10012E840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB03D8);
  }

  return result;
}

unint64_t sub_10036C618()
{
  result = qword_100CB03E8;
  if (!qword_100CB03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB03E8);
  }

  return result;
}

unint64_t sub_10036C680()
{
  result = qword_100CB03F0;
  if (!qword_100CB03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB03F0);
  }

  return result;
}

uint64_t sub_10036C6D4()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for LocationPreviewView() + 32);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v9, 0);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v9) = v12;
  }

  return v9 & 1;
}

uint64_t sub_10036C870(void (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

uint64_t sub_10036C8B8@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  sub_10022C350(&qword_100CB04E8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  v3 = v23 - v2;
  v4 = sub_10022C350(&qword_100CB04F0);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for LocationPreviewViewContentModel(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for LocationPreviewViewModel(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  type metadata accessor for LocationPreviewView();
  sub_100988BE0();
  if (sub_100024D10(v19, 1, v10) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_10022E824(&qword_100CB04F8);
    v20 = sub_100375960();
    sub_100008328(v20);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_100377B20(v19, v14);
    sub_10036CB94(v14);
    (*(v6 + 16))(v3, v9, v4);
    swift_storeEnumTagMultiPayload();
    sub_10022E824(&qword_100CB04F8);
    v22 = sub_100375960();
    sub_100008328(v22);
    _ConditionalContent<>.init(storage:)();
    (*(v6 + 8))(v9, v4);
    return sub_100377ACC(v14, type metadata accessor for LocationPreviewViewContentModel);
  }
}

uint64_t sub_10036CB94(uint64_t a1)
{
  v3 = sub_10022C350(&qword_100CB0528);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v23[-v5];
  v7 = sub_10022C350(&qword_100CB04F8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  sub_10036CF0C(a1, v1, &v6[*(v3 + 36)]);
  Solarium.init()();
  v24 = a1;
  v25 = v1;
  sub_10022C350(&qword_100CB0530);
  sub_100006F64(&qword_100CB0538, &qword_100CB0528);
  sub_100375C38();
  View.staticIf<A, B>(_:then:)();
  sub_100018144(v6, &qword_100CB0528);
  KeyPath = swift_getKeyPath();
  v12 = &v10[*(sub_10022C350(&qword_100CB0520) + 36)];
  *v12 = KeyPath;
  v12[8] = 1;
  v13 = swift_getKeyPath();
  v14 = &v10[*(sub_10022C350(&qword_100CB0510) + 36)];
  *v14 = v13;
  v14[8] = 0x80;
  v15 = swift_getKeyPath();
  v16 = &v10[*(v7 + 36)];
  v17 = *(sub_10022C350(&qword_100CE1050) + 28);
  v18 = enum case for UserInterfaceSizeClass.compact(_:);
  v19 = type metadata accessor for UserInterfaceSizeClass();
  sub_1000037E8();
  (*(v20 + 104))(v16 + v17, v18, v19);
  sub_10001B350(v16 + v17, 0, 1, v19);
  *v16 = v15;
  sub_10022C350(&qword_100CB0578);
  sub_1000038D8();
  v21 = type metadata accessor for ToolbarPlacement();
  sub_100003AE8(v21);
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static ToolbarPlacement.navigationBar.getter();
  sub_100375960();
  View.toolbarBackground(_:for:)();

  return sub_100018144(v10, &qword_100CB04F8);
}

uint64_t sub_10036CF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a2;
  v126 = a1;
  v116 = a3;
  v112 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v112);
  v111 = (&v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = type metadata accessor for AccessibilityChildBehavior();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for LocationPreviewViewContentModel(0);
  v120 = *(v115 - 8);
  v125 = *(v120 + 8);
  __chkstk_darwin(v115);
  v124 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationPreviewView();
  v9 = *(v8 - 8);
  v114 = v8 - 8;
  v119 = v9;
  v103 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v122 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10022C350(&qword_100CB05B8);
  __chkstk_darwin(v96);
  v12 = (&v95 - v11);
  v97 = sub_10022C350(&qword_100CB05C0);
  v98 = *(v97 - 8);
  __chkstk_darwin(v97);
  v14 = &v95 - v13;
  v100 = sub_10022C350(&qword_100CB05C8);
  v118 = *(v100 - 8);
  __chkstk_darwin(v100);
  v121 = &v95 - v15;
  v123 = sub_10022C350(&qword_100CB05D0);
  __chkstk_darwin(v123);
  v99 = &v95 - v16;
  v104 = sub_10022C350(&qword_100CB05D8);
  v105 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v95 - v17;
  v107 = sub_10022C350(&qword_100CB05E0);
  __chkstk_darwin(v107);
  v102 = &v95 - v18;
  v113 = sub_10022C350(&qword_100CB05E8);
  __chkstk_darwin(v113);
  v110 = &v95 - v19;
  *v12 = static Alignment.top.getter();
  v12[1] = v20;
  v21 = sub_10022C350(&qword_100CB05F0);
  sub_10036E200(a1, a2, v12 + *(v21 + 44));
  Solarium.init()();
  v22 = sub_10022C350(&qword_100CB05F8);
  v23 = sub_10022C350(&qword_100CB0600);
  v24 = sub_100006F64(&qword_100CB0608, &qword_100CB05B8);
  v25 = sub_100375D24();
  v134 = v23;
  v135 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v96;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_100018144(v12, &qword_100CB05B8);
  v134 = v27;
  v135 = &type metadata for Solarium;
  v136 = v22;
  v137 = v23;
  v138 = v24;
  v139 = &protocol witness table for Solarium;
  v140 = OpaqueTypeConformance2;
  v141 = v25;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v97;
  View.enableForegroundEffects()();
  (*(v98 + 8))(v14, v29);
  v30 = [objc_opt_self() mainBundle];
  v142._object = 0x8000000100AC3400;
  v31._object = 0x8000000100AC33E0;
  v31._countAndFlagsBits = 0x1000000000000017;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v142._countAndFlagsBits = 0xD000000000000063;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v142);

  v133 = v33;
  v34 = *(v117 + 16);
  v35 = v117;
  v131 = *(v117 + 8);
  v132 = v34;
  sub_10022C350(&qword_100CA5A80);
  State.projectedValue.getter();
  sub_10022C350(&qword_100CA5528);
  v134 = v29;
  v135 = v28;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  sub_100006F64(&qword_100CA5548, &qword_100CA5528);
  v36 = v100;
  v37 = v99;
  v38 = v121;
  View.alert<A, B, C>(_:isPresented:actions:message:)();

  (*(v118 + 1))(v38, v36);
  v39 = v35;
  v40 = sub_1003700A4(&unk_100C509A0, &unk_100C509C8, sub_100377B78, sub_100377D5C);
  v42 = v41;
  LOBYTE(v25) = v43;
  v44 = v37 + *(v123 + 36);
  v45 = type metadata accessor for SafariSheetModifier(0);
  v46 = v126;
  sub_10036FF50(v126, v44 + *(v45 + 20));
  *v44 = v40;
  *(v44 + 8) = v42;
  *(v44 + 16) = v25 & 1;
  sub_1003700A4(&unk_100C50950, &unk_100C50978, sub_100377A9C, sub_100377AB4);
  v100 = type metadata accessor for LocationPreviewView;
  v47 = v122;
  sub_1003781BC(v39, v122);
  v118 = type metadata accessor for LocationPreviewViewContentModel;
  v48 = v124;
  sub_1003781BC(v46, v124);
  v49 = *(v119 + 80);
  v103 += (v49 + 16) & ~v49;
  v50 = (v49 + 16) & ~v49;
  v97 = v50;
  v98 = v49 | 7;
  v121 = *(v120 + 80);
  v51 = (v103 + v121) & ~v121;
  v96 = v51;
  v52 = swift_allocObject();
  v120 = type metadata accessor for LocationPreviewView;
  sub_100377B20(v47, v52 + v50);
  v119 = type metadata accessor for LocationPreviewViewContentModel;
  sub_100377B20(v48, v52 + v51);
  v53 = sub_10022C350(&qword_100CB0618);
  v54 = sub_100375E9C();
  v55 = sub_10037614C();
  v56 = v101;
  v57 = v123;
  View.formSheet<A>(isPresented:content:)();

  sub_100018144(v37, &qword_100CB05D0);
  v58 = v106;
  static AccessibilityChildBehavior.contain.getter();
  v134 = v57;
  v135 = v53;
  v136 = v54;
  v137 = v55;
  swift_getOpaqueTypeConformance2();
  v59 = v102;
  v60 = v104;
  View.accessibilityElement(children:)();
  (*(v108 + 8))(v58, v109);
  (*(v105 + 8))(v56, v60);
  *(v59 + *(sub_10022C350(&qword_100CB0758) + 36)) = 1;
  v61 = v126;
  v62 = sub_1006E6834();
  v63 = v111;
  *v111 = v62;
  *(v63 + 8) = v64;
  type metadata accessor for AutomationViewInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v65 = v59 + *(sub_10022C350(&qword_100CB0760) + 36);
  v66 = type metadata accessor for AutomationInfoProperty();
  sub_1003781BC(v63, v65 + *(v66 + 24));
  sub_100377ACC(v63, type metadata accessor for AutomationInfo);
  *v65 = 0;
  *(v65 + 8) = 0xE000000000000000;
  *(v65 + 16) = swift_getKeyPath();
  *(v65 + 24) = 0;
  v67 = v117;
  v68 = v122;
  sub_1003781BC(v117, v122);
  v69 = v124;
  sub_1003781BC(v61, v124);
  v70 = v96;
  v71 = swift_allocObject();
  v72 = v97;
  sub_100377B20(v68, v71 + v97);
  sub_100377B20(v69, v71 + v70);
  v73 = (v59 + *(sub_10022C350(&qword_100CB0768) + 36));
  *v73 = sub_1003768CC;
  v73[1] = v71;
  v73[2] = 0;
  v73[3] = 0;
  sub_1003781BC(v67, v68);
  sub_1003781BC(v126, v69);
  v74 = swift_allocObject();
  sub_100377B20(v68, v74 + v72);
  sub_100377B20(v69, v74 + v70);
  v75 = (v59 + *(v107 + 36));
  *v75 = 0;
  v75[1] = 0;
  v75[2] = sub_1003768E4;
  v75[3] = v74;
  v76 = v67;
  sub_1003781BC(v67, v68);
  v77 = swift_allocObject();
  sub_100377B20(v68, v77 + v72);
  sub_100376A2C();
  sub_1000619F4(&qword_100CB0790, type metadata accessor for LocationPreviewViewContentModel);
  v78 = v110;
  v79 = v126;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v59, &qword_100CB05E0);
  type metadata accessor for WeatherVFXConditionBackground();
  sub_1000619F4(&qword_100CB0478, &type metadata accessor for WeatherVFXConditionBackground);
  v80 = StateObject.wrappedValue.getter();
  v81 = static ObservableObject.environmentStore.getter();
  v82 = (v78 + *(sub_10022C350(&qword_100CB0798) + 36));
  *v82 = v81;
  v82[1] = v80;
  type metadata accessor for LocationViewCollisionOptions();
  sub_1000619F4(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions);
  v83 = StateObject.wrappedValue.getter();
  v84 = static ObservableObject.environmentStore.getter();
  v85 = v113;
  v86 = (v78 + *(v113 + 36));
  *v86 = v84;
  v86[1] = v83;
  Solarium.init()();
  v129 = v76;
  v130 = v79;
  v127 = v76;
  v128 = v79;
  sub_10022C350(&qword_100CB07A0);
  sub_10022C350(&qword_100CB07A8);
  v87 = sub_100376D48();
  v88 = sub_10022E824(&qword_100CB07D0);
  v89 = sub_100006F64(&qword_100CB07D8, &qword_100CB07D0);
  v134 = v85;
  v135 = v88;
  v136 = v87;
  v137 = v89;
  swift_getOpaqueTypeConformance2();
  v90 = sub_10022E824(&qword_100CB07E0);
  v91 = sub_10022E824(&qword_100CB07E8);
  v92 = sub_100376F44();
  v134 = v91;
  v135 = v92;
  v93 = swift_getOpaqueTypeConformance2();
  v134 = v85;
  v135 = v90;
  v136 = v87;
  v137 = v93;
  swift_getOpaqueTypeConformance2();
  View.staticIf<A, B, C>(_:then:else:)();
  return sub_100018144(v78, &qword_100CB05E8);
}

uint64_t sub_10036E200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v28 = a1;
  v31 = a3;
  v5 = sub_10022C350(&qword_100CB08A8);
  __chkstk_darwin(v5 - 8);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_10022C350(&unk_100CE0EB0);
  __chkstk_darwin(v10);
  v29 = sub_10022C350(&qword_100CB08B0);
  v11 = *(v29 - 8);
  __chkstk_darwin(v29);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  v32 = a1;
  v33 = a2;
  sub_10022C350(&qword_100CB08B8);
  v34 = &type metadata for Solarium;
  v35 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_100377E00();
  v27 = v16;
  StaticIf<>.init<>(_:then:)();
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = sub_10022C350(&qword_100CB08D8);
  sub_10036EBF8(a2, v28, &v9[*(v17 + 44)]);
  v18 = *(v11 + 16);
  v19 = v16;
  v20 = v29;
  v18(v13, v19, v29);
  v21 = v30;
  sub_1000302D8(v9, v30, &qword_100CB08A8);
  v22 = v31;
  v18(v31, v13, v20);
  v23 = sub_10022C350(&qword_100CB08E0);
  sub_1000302D8(v21, &v22[*(v23 + 48)], &qword_100CB08A8);
  sub_100018144(v9, &qword_100CB08A8);
  v24 = *(v11 + 8);
  v24(v27, v20);
  sub_100018144(v21, &qword_100CB08A8);
  return (v24)(v13, v20);
}

uint64_t sub_10036E578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a1;
  v68 = a3;
  v4 = type metadata accessor for SkyBackgroundGradient();
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v62 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherConditionBackgroundModel();
  v63 = *(v6 - 8);
  v7 = v63;
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = static Color.clear.getter();
  v52 = *(type metadata accessor for LocationPreviewViewContentModel(0) + 32);
  v10 = type metadata accessor for LocationPreviewView();
  v12 = *(v10 + 56);
  v11 = *(v10 + 60);
  v60 = type metadata accessor for WeatherVFXConditionBackground();
  v59 = sub_1000619F4(&qword_100CB0478, &type metadata accessor for WeatherVFXConditionBackground);
  v67 = *(a2 + v12);
  v13 = StateObject.wrappedValue.getter();
  v61 = Namespace.wrappedValue.getter();
  v14 = v55;
  sub_1006E6430();
  v57 = v16;
  v58 = v15;
  v56 = static Color.black.getter();
  v17 = *(v7 + 16);
  v17(v9, v14 + v52, v6);
  sub_100035B30(a2 + v11, v72);
  v18 = sub_10022C350(&qword_100CB0580);
  v19 = (v68 + *(v18 + 36));
  type metadata accessor for LocationViewCollisionOptions();
  sub_1000619F4(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions);
  *v19 = EnvironmentObject.init()();
  v19[1] = v20;
  v21 = type metadata accessor for WeatherConditionBackgroundModifier(0);
  v22 = v21[5];
  *(v19 + v22) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38);
  swift_storeEnumTagMultiPayload();
  v23 = v21[6];
  *(v19 + v23) = swift_getKeyPath();
  sub_10022C350(&qword_100CB0588);
  swift_storeEnumTagMultiPayload();
  v24 = v19 + v21[7];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v19 + v21[8];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v19 + v21[9];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = v19 + v21[10];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v19 + v21[11];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  *(v19 + v21[17]) = 0;
  v29 = (v19 + v21[20]);
  v69 = 0;
  State.init(wrappedValue:)();
  v30 = v71;
  *v29 = v70;
  v29[1] = v30;
  v31 = (v19 + v21[21]);
  v69 = 0;
  State.init(wrappedValue:)();
  v32 = v71;
  *v31 = v70;
  v31[1] = v32;
  v33 = v19 + v21[22];
  *v33 = sub_10011469C;
  *(v33 + 1) = 0;
  v33[16] = 0;
  v34 = v19 + v21[24];
  *v34 = sub_100116F64;
  *(v34 + 1) = 0;
  v34[16] = 0;
  v35 = (v19 + v21[25]);
  type metadata accessor for WeatherConditionBackgroundModifierState(0);
  swift_allocObject();
  v69 = sub_1009B5F9C();
  State.init(wrappedValue:)();
  v36 = v71;
  *v35 = v70;
  v35[1] = v36;
  *(v19 + v21[26]) = 1092616192;
  v37 = v19 + v21[12];
  v54 = v6;
  v17(v37, v9, v6);
  *(v19 + v21[13]) = v67;
  sub_100035B30(v72, v19 + v21[14]);
  v38 = (v19 + v21[23]);
  swift_unknownObjectRetain();
  v53 = v13;

  *v38 = ObservedObject.init(wrappedValue:)();
  v38[1] = v39;
  v40 = (v19 + v21[15]);
  v41 = v57;
  v42 = v58;
  *v40 = v61;
  v40[1] = v42;
  v40[2] = v41;
  *(v19 + v21[18]) = 0;
  *(v19 + v21[16]) = v56;

  v43 = v62;
  WeatherConditionBackgroundModel.gradient.getter();
  SkyBackgroundGradient.gradient()();
  v44 = v65;
  v45 = *(v64 + 8);
  v45(v43, v65);
  WeatherConditionBackgroundModel.gradient.getter();
  SkyBackgroundGradient.gradient()();
  v45(v43, v44);
  v46 = v19 + v21[19];
  AnimatedGradient.init(baseGradient:animatedGradient:showAnimatedGradient:)();

  sub_100006F14(v72);
  (*(v63 + 8))(v9, v54);
  *&v46[*(sub_10022C350(&qword_100CACB08) + 28)] = 0;
  v47 = v68;
  *v68 = v66;
  v48 = static SafeAreaRegions.all.getter();
  LOBYTE(v38) = static Edge.Set.all.getter();
  result = sub_10022C350(&qword_100CB08B8);
  v50 = v47 + *(result + 36);
  *v50 = v48;
  v50[8] = v38;
  return result;
}

uint64_t sub_10036EBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a3;
  v5 = type metadata accessor for LocationPreviewView();
  v37 = *(v5 - 8);
  v36 = *(v37 + 64);
  __chkstk_darwin(v5 - 8);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationPreviewViewContentModel(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&unk_100CE0EB0);
  __chkstk_darwin(v10);
  v11 = sub_10022C350(&qword_100CB08E8);
  v30 = *(v11 - 8);
  v31 = v11;
  __chkstk_darwin(v11);
  v33 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  v38 = a1;
  v39 = a2;
  sub_10022C350(&qword_100CB08F0);
  *__dst = &type metadata for Solarium;
  *&__dst[8] = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_100377F50();
  v32 = v15;
  StaticIf<>.init<>(_:then:)();
  sub_1003781BC(a2, v9);
  v16 = v35;
  sub_1003781BC(a1, v35);
  v17 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v18 = swift_allocObject();
  sub_100377B20(v16, v18 + v17);
  v19 = sub_10022C350(&qword_100CB0910);
  *&v40[5] = sub_100137DA8;
  *(&v40[5] + 1) = 0;
  LOBYTE(v40[6]) = 0;
  *&v40[0] = v19;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000302D8(&xmmword_100D8FB90, __dst, &unk_100CAF270);
  if (*&__dst[24])
  {
    sub_100013188(__dst, &v40[1] + 8);
    *(&v40[0] + 1) = sub_100378140;
    *&v40[1] = v18;
    v20 = Dictionary.init(dictionaryLiteral:)();
    *__dst = _swiftEmptyArrayStorage;
    *&__dst[8] = v20;
    sub_10036F95C(__dst, v9);
    sub_100377ACC(v9, type metadata accessor for LocationPreviewViewContentModel);
    v40[4] = *__dst;
    memcpy(__dst, v40, sizeof(__dst));
    v42 = 1;
    v21 = v30;
    v22 = v31;
    v23 = *(v30 + 16);
    v24 = v32;
    v25 = v33;
    v23(v33, v32, v31);
    sub_1000302D8(__dst, v40, &qword_100CB0918);
    v26 = v34;
    v23(v34, v25, v22);
    v27 = sub_10022C350(&qword_100CB0920);
    sub_1000302D8(v40, &v26[*(v27 + 48)], &qword_100CB0918);
    sub_100018144(__dst, &qword_100CB0918);
    v28 = *(v21 + 8);
    v28(v24, v22);
    sub_100018144(v40, &qword_100CB0918);
    return (v28)(v25, v22);
  }

  else
  {
    result = sub_100377ACC(v9, type metadata accessor for LocationPreviewViewContentModel);
    __break(1u);
  }

  return result;
}

uint64_t sub_10036F16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CB0908);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10)
  {

    return sub_10001B350(a3, 1, 1, v6);
  }

  else
  {
    *v8 = static VerticalAlignment.center.getter();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v12 = sub_10022C350(&qword_100CB0928);
    sub_10036F2D4(a1, a2, &v8[*(v12 + 44)]);
    sub_1001DDA18(v8, a3);
    return sub_10001B350(a3, 0, 1, v6);
  }
}

uint64_t sub_10036F2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a3;
  v5 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v5 - 8);
  v7 = v45 - v6;
  v48 = type metadata accessor for Location();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CB0930);
  __chkstk_darwin(v9 - 8);
  v49 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v45 - v12;
  v53 = sub_10022C350(&qword_100CB0818);
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v45 - v16;
  Solarium.init()();
  v57 = a1;
  v58 = a2;
  v45[3] = a1;
  v54 = a1;
  v55 = a2;
  v56 = 0;
  v18 = sub_10022C350(&unk_100CE1740);
  sub_10022C350(&qword_100CB0858);
  v19 = sub_100006F64(&qword_100CA6EE8, &unk_100CE1740);
  v20 = sub_10022E824(&qword_100CB0828);
  v21 = type metadata accessor for PlainButtonStyle();
  v22 = sub_100377198();
  v23 = sub_1000619F4(&qword_100CB0848, &type metadata accessor for PlainButtonStyle);
  v59 = v20;
  v60 = v21;
  v61 = v22;
  v62 = v23;
  swift_getOpaqueTypeConformance2();
  v45[1] = v19;
  v24 = v17;
  v25 = v48;
  v45[2] = v18;
  StaticIf<>.init(_:then:else:)();
  sub_1006E6234(v7);
  if (sub_100024D10(v7, 1, v25) == 1)
  {
    sub_100018144(v7, &qword_100CA65D8);
LABEL_6:
    v31 = 1;
    goto LABEL_7;
  }

  v26 = v47;
  v27 = v46;
  (*(v47 + 32))(v46, v7, v25);
  if (*(a2 + *(type metadata accessor for LocationPreviewViewContentModel(0) + 20)) != 1)
  {
    (*(v26 + 8))(v27, v25);
    goto LABEL_6;
  }

  v28 = Solarium.init()();
  __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  v30 = v52;
  StaticIf<>.init(_:then:else:)();
  (*(v26 + 8))(v27, v25);
  (*(v51 + 32))(v13, v30, v53);
  v31 = 0;
LABEL_7:
  v32 = v53;
  sub_10001B350(v13, v31, 1, v53);
  v34 = v51;
  v33 = v52;
  v35 = *(v51 + 16);
  v36 = v24;
  v35(v52, v24, v32);
  v37 = v49;
  sub_1000302D8(v13, v49, &qword_100CB0930);
  v38 = v13;
  v39 = v37;
  v40 = v50;
  v35(v50, v33, v32);
  v41 = sub_10022C350(&qword_100CB0938);
  v42 = &v40[*(v41 + 48)];
  *v42 = 0;
  v42[8] = 1;
  sub_1000302D8(v39, &v40[*(v41 + 64)], &qword_100CB0930);
  sub_100018144(v38, &qword_100CB0930);
  v43 = *(v34 + 8);
  v43(v36, v32);
  sub_100018144(v39, &qword_100CB0930);
  return (v43)(v33, v32);
}

unint64_t sub_10036F95C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PreviewLocation();
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocationModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003781BC(a2, v5);
  sub_100689DD4(v5, v9);
  sub_100136EAC(v9, 0, 0);
  (*(v7 + 8))(v9, v6);
  return sub_1003B5B1C(1);
}

double sub_10036FAB4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  v3 = Namespace.wrappedValue.getter();
  *&result = sub_100138C64(v3, a2).n128_u64[0];
  return result;
}

uint64_t sub_10036FB00(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB0600);
  __chkstk_darwin(v2);
  v4 = &v15 - v3;
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {
    goto LABEL_7;
  }

  sub_10022C350(&qword_100CA4060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  v8 = static Edge.Set.bottom.getter();
  *(inited + 32) = v8;
  v9 = static Edge.Set.leading.getter();
  *(inited + 33) = v9;
  v10 = static Edge.Set.trailing.getter();
  *(inited + 34) = v10;
  v11 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v8)
  {
    v11 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v9)
  {
    v11 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v10)
  {
LABEL_7:
    v11 = Edge.Set.init(rawValue:)();
  }

  v12 = static SafeAreaRegions.all.getter();
  sub_1000302D8(a1, v4, &qword_100CB05B8);
  v13 = &v4[*(v2 + 36)];
  *v13 = v12;
  v13[8] = v11;
  static Edge.Set.top.getter();
  sub_100375D24();
  View.scrollEdgeEffectDisabled(_:for:)();
  return sub_100018144(v4, &qword_100CB0600);
}

uint64_t sub_10036FD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    v6 = Edge.Set.init(rawValue:)();
  }

  else
  {
    v6 = static Edge.Set.all.getter();
  }

  v7 = v6;
  v8 = static SafeAreaRegions.all.getter();
  sub_1000302D8(a1, a2, &qword_100CB05B8);
  result = sub_10022C350(&qword_100CB0600);
  v10 = a2 + *(result + 36);
  *v10 = v8;
  *(v10 + 8) = v7;
  return result;
}

uint64_t sub_10036FDF4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xEF656C746974206ELL;
  v4._countAndFlagsBits = 0x6F74747562204B4FLL;
  v1._countAndFlagsBits = 19279;
  v1._object = 0xE200000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  sub_10002D5A4();
  return Button<>.init<A>(_:action:)();
}

uint64_t sub_10036FED0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10036FF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationPreviewModalViewModel(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationPreviewViewContentModel(0);
  sub_1003781BC(a1 + *(v7 + 36), v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 8)
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 32))(a2, v6, v13);
      v10 = a2;
      v11 = 0;
      v9 = v13;
      return sub_10001B350(v10, v11, 1, v9);
    }

    sub_100377ACC(v6, type metadata accessor for LocationPreviewModalViewModel);
  }

  v9 = type metadata accessor for URL();
  v10 = a2;
  v11 = 1;
  return sub_10001B350(v10, v11, 1, v9);
}

uint64_t sub_1003700A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a3;
  v17[2] = a4;
  v5 = type metadata accessor for LocationPreviewView();
  v6 = sub_100003AE8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_1003781BC(v4, v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_100377B20(v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_1003781BC(v4, v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_100377B20(v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v12);
  Binding.init(get:set:)();
  return v17[3];
}

uint64_t sub_100370258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CB0638);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  sub_100373578(a2, &v13 - v7);
  v9 = *(a1 + *(type metadata accessor for LocationPreviewView() + 36));
  type metadata accessor for ObservableResolver();
  sub_1000619F4(&qword_100CB0468, &type metadata accessor for ObservableResolver);
  if (v9)
  {

    v10 = static ObservableObject.environmentStore.getter();
    sub_10011C0F0(v8, a3, &qword_100CB0638);
    result = sub_10022C350(&qword_100CB0618);
    v12 = (a3 + *(result + 36));
    *v12 = v10;
    v12[1] = v9;
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003703F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationPreviewView();
  sub_1000161C0((a3 + *(v6 + 52)), *(a3 + *(v6 + 52) + 24));
  return sub_100A05B54(a1, a2);
}

uint64_t sub_100370450()
{
  sub_10022C350(&qword_100CB05E8);
  sub_10022C350(&qword_100CB07D0);
  sub_100376D48();
  sub_100006F64(&qword_100CB07D8, &qword_100CB07D0);
  return View.toolbar<A>(content:)();
}

uint64_t sub_100370530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v49 = sub_10022C350(&qword_100CB07F8);
  __chkstk_darwin(v49);
  v48 = v38 - v5;
  v47 = sub_10022C350(&qword_100CB0800);
  v42 = *(v47 - 8);
  __chkstk_darwin(v47);
  v41 = v38 - v6;
  v7 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v7 - 8);
  v9 = v38 - v8;
  v10 = type metadata accessor for Location();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v43 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CB0808);
  __chkstk_darwin(v12 - 8);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v45 = v38 - v16;
  v17 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v17 - 8);
  v18 = sub_10022C350(&qword_100CB0810);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v39 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v38 - v22;
  static ToolbarItemPlacement.cancellationAction.getter();
  v40 = a1;
  v51 = a1;
  v52 = a2;
  sub_10022C350(&qword_100CB0818);
  sub_100377040();
  ToolbarItem<>.init(placement:content:)();
  sub_1006E6234(v9);
  v46 = v10;
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    sub_100018144(v9, &qword_100CA65D8);
LABEL_6:
    v33 = v45;
    sub_10001B350(v14, 1, 1, v47);
    v34 = sub_100006F64(&qword_100CB0850, &qword_100CB0810);
    v53 = v18;
    v54 = v34;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100018144(v14, &qword_100CB0808);
    goto LABEL_7;
  }

  v24 = v43;
  (*(v44 + 32))(v43, v9, v46);
  if (*(a2 + *(type metadata accessor for LocationPreviewViewContentModel(0) + 20)) != 1)
  {
    (*(v44 + 8))(v24, v46);
    goto LABEL_6;
  }

  v25 = static ToolbarItemPlacement.primaryAction.getter();
  v38[1] = v38;
  __chkstk_darwin(v25);
  v26 = v39;
  v38[-4] = v40;
  v38[-3] = a2;
  v38[-2] = v24;
  ToolbarItem<>.init(placement:content:)();
  v27 = sub_100006F64(&qword_100CB0850, &qword_100CB0810);
  v28 = v41;
  v29 = v26;
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  v30 = v42;
  v31 = v47;
  (*(v42 + 16))(v14, v28, v47);
  sub_10001B350(v14, 0, 1, v31);
  v53 = v18;
  v54 = v27;
  swift_getOpaqueTypeConformance2();
  v32 = v24;
  v33 = v45;
  static ToolbarContentBuilder.buildIf<A>(_:)();
  sub_100018144(v14, &qword_100CB0808);
  (*(v30 + 8))(v28, v31);
  (*(v19 + 8))(v29, v18);
  (*(v44 + 8))(v32, v46);
LABEL_7:
  v35 = v48;
  v36 = *(v49 + 48);
  (*(v19 + 16))(v48, v23, v18);
  sub_1000302D8(v33, &v35[v36], &qword_100CB0808);
  TupleToolbarContent.init(_:)();
  sub_100018144(v33, &qword_100CB0808);
  return (*(v19 + 8))(v23, v18);
}

uint64_t sub_100370C38()
{
  sub_10022C350(&qword_100CB05E8);
  sub_10022C350(&qword_100CB07E0);
  sub_100376D48();
  sub_10022E824(&qword_100CB07E8);
  sub_100376F44();
  swift_getOpaqueTypeConformance2();
  return View.toolbar<A>(content:)();
}

uint64_t sub_100370D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v79 = a1;
  v76 = sub_10022C350(&qword_100CB07F8);
  __chkstk_darwin(v76);
  v75 = &v60 - v4;
  v5 = sub_10022C350(&qword_100CB07D0);
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v77 = &v60 - v6;
  v74 = sub_10022C350(&qword_100CB0800);
  v63 = *(v74 - 8);
  __chkstk_darwin(v74);
  v62 = &v60 - v7;
  v8 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v60 - v9;
  v11 = type metadata accessor for Location();
  v70 = *(v11 - 8);
  v71 = v11;
  __chkstk_darwin(v11);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CB0808);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v72 = &v60 - v17;
  v18 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v18 - 8);
  v73 = sub_10022C350(&qword_100CB0810);
  v80 = *(v73 - 8);
  __chkstk_darwin(v73);
  v61 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  v81 = sub_10022C350(&qword_100CB07E8);
  __chkstk_darwin(v81);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v60 - v26;
  v28 = [objc_opt_self() currentDevice];
  v29 = [v28 userInterfaceIdiom];

  if (v29)
  {
    v65 = v24;
    v66 = v27;
    v67 = v5;
    v68 = a3;
    v30 = static ToolbarItemPlacement.cancellationAction.getter();
    __chkstk_darwin(v30);
    v31 = v82;
    *(&v60 - 2) = v79;
    *(&v60 - 1) = v31;
    sub_10022C350(&qword_100CB0818);
    sub_100377040();
    ToolbarItem<>.init(placement:content:)();
    sub_1006E6234(v10);
    v32 = v71;
    v33 = sub_100024D10(v10, 1, v71);
    v64 = v22;
    if (v33 == 1)
    {
      sub_100018144(v10, &qword_100CA65D8);
    }

    else
    {
      v35 = v69;
      v36 = v70;
      (*(v70 + 32))(v69, v10, v32);
      if (*(v82 + *(type metadata accessor for LocationPreviewViewContentModel(0) + 20)) == 1)
      {
        v37 = static ToolbarItemPlacement.primaryAction.getter();
        __chkstk_darwin(v37);
        v38 = v82;
        *(&v60 - 4) = v79;
        *(&v60 - 3) = v38;
        *(&v60 - 2) = v35;
        v39 = v61;
        ToolbarItem<>.init(placement:content:)();
        v40 = sub_100006F64(&qword_100CB0850, &qword_100CB0810);
        v41 = v62;
        v42 = v73;
        static ToolbarContentBuilder.buildBlock<A>(_:)();
        v43 = v35;
        v44 = v63;
        v45 = v74;
        (*(v63 + 16))(v15, v41, v74);
        sub_10001B350(v15, 0, 1, v45);
        v83 = v42;
        v84 = v40;
        swift_getOpaqueTypeConformance2();
        v46 = v32;
        v47 = v72;
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_100018144(v15, &qword_100CB0808);
        v48 = v45;
        v49 = v42;
        (*(v44 + 8))(v41, v48);
        (*(v80 + 8))(v39, v42);
        (*(v36 + 8))(v43, v46);
        v50 = v67;
LABEL_9:
        v52 = v75;
        v53 = *(v76 + 48);
        v54 = v80;
        v55 = v64;
        (*(v80 + 16))(v75, v64, v49);
        sub_1000302D8(v47, &v52[v53], &qword_100CB0808);
        v56 = v77;
        TupleToolbarContent.init(_:)();
        v57 = v78;
        v58 = v65;
        (*(v78 + 16))(v65, v56, v50);
        sub_10001B350(v58, 0, 1, v50);
        sub_100006F64(&qword_100CB07D8, &qword_100CB07D0);
        v34 = v66;
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_100018144(v58, &qword_100CB07E8);
        (*(v57 + 8))(v56, v50);
        sub_100018144(v47, &qword_100CB0808);
        (*(v54 + 8))(v55, v49);
        goto LABEL_10;
      }

      (*(v36 + 8))(v35, v32);
    }

    v50 = v67;
    v47 = v72;
    sub_10001B350(v15, 1, 1, v74);
    v51 = sub_100006F64(&qword_100CB0850, &qword_100CB0810);
    v49 = v73;
    v83 = v73;
    v84 = v51;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100018144(v15, &qword_100CB0808);
    goto LABEL_9;
  }

  sub_10001B350(v24, 1, 1, v5);
  sub_100006F64(&qword_100CB07D8, &qword_100CB07D0);
  static ToolbarContentBuilder.buildIf<A>(_:)();
  sub_100018144(v24, &qword_100CB07E8);
  v34 = v27;
LABEL_10:
  sub_100376F44();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return sub_100018144(v34, &qword_100CB07E8);
}

uint64_t sub_100371730()
{
  Solarium.init()();
  sub_10022C350(&unk_100CE1740);
  sub_10022C350(&qword_100CB0858);
  sub_100019554(&qword_100CA6EE8);
  sub_10022E824(&qword_100CB0828);
  type metadata accessor for PlainButtonStyle();
  sub_100377198();
  sub_100003FB0();
  sub_1000619F4(v0, v1);
  sub_1000143C8();
  swift_getOpaqueTypeConformance2();
  return sub_100016840();
}

uint64_t sub_100371868()
{
  Solarium.init()();
  sub_10022C350(&unk_100CE1740);
  sub_10022C350(&qword_100CB0858);
  sub_100019554(&qword_100CA6EE8);
  sub_10022E824(&qword_100CB0828);
  type metadata accessor for PlainButtonStyle();
  sub_100377198();
  sub_100003FB0();
  sub_1000619F4(v0, v1);
  sub_1000143C8();
  swift_getOpaqueTypeConformance2();
  return sub_100016840();
}

uint64_t sub_1003719AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = static Alignment.top.getter();
  v10 = v9;
  v11 = (a4 + *(sub_10022C350(&qword_100CB0530) + 36));
  sub_100371A64(a2, a3, v11);
  v12 = (v11 + *(sub_10022C350(&qword_100CB0550) + 36));
  *v12 = v8;
  v12[1] = v10;
  return sub_1000302D8(a1, a4, &qword_100CB0528);
}

uint64_t sub_100371A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v84 = a3;
  v73 = type metadata accessor for SkyBackgroundGradient();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for WeatherConditionBackgroundModel();
  v68 = *(v80 - 8);
  v6 = v68;
  __chkstk_darwin(v80);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = static Color.clear.getter();
  v75 = *(type metadata accessor for LocationPreviewViewContentModel(0) + 32);
  v72 = type metadata accessor for LocationPreviewView();
  v10 = v72[14];
  v9 = v72[15];
  v11 = (a2 + v72[11]);
  v12 = *v11;
  v78 = v11[1];
  v79 = v12;
  v77 = *(v11 + 16);
  v13 = type metadata accessor for WeatherVFXConditionBackground();
  v83 = sub_1000619F4(&qword_100CB0478, &type metadata accessor for WeatherVFXConditionBackground);
  v82 = *(a2 + v10);
  v62 = v13;
  v81 = StateObject.wrappedValue.getter();
  v69 = a2;
  v67 = Namespace.wrappedValue.getter();
  sub_1006E6430();
  v66 = v14;
  v65 = v15;
  v64 = static Color.black.getter();
  v63 = *(v6 + 16);
  v16 = v80;
  v63(v8, a1 + v75, v80);
  sub_100035B30(a2 + v9, &v89);
  v17 = sub_10022C350(&qword_100CB0580);
  v18 = (v84 + *(v17 + 36));
  v75 = type metadata accessor for LocationViewCollisionOptions();
  v74 = sub_1000619F4(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions);
  *v18 = EnvironmentObject.init()();
  v18[1] = v19;
  v20 = type metadata accessor for WeatherConditionBackgroundModifier(0);
  v21 = v20[5];
  *(v18 + v21) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38);
  swift_storeEnumTagMultiPayload();
  v22 = v20[6];
  *(v18 + v22) = swift_getKeyPath();
  sub_10022C350(&qword_100CB0588);
  swift_storeEnumTagMultiPayload();
  v23 = v18 + v20[7];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v18 + v20[8];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v18 + v20[9];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v18 + v20[10];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = v18 + v20[11];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *(v18 + v20[17]) = 0;
  v28 = (v18 + v20[20]);
  v88 = 0;
  State.init(wrappedValue:)();
  v29 = v86;
  *v28 = v85;
  v28[1] = v29;
  v30 = (v18 + v20[21]);
  v88 = 0;
  State.init(wrappedValue:)();
  v31 = v86;
  *v30 = v85;
  v30[1] = v31;
  v32 = v18 + v20[22];
  *v32 = sub_10011469C;
  *(v32 + 1) = 0;
  v32[16] = 0;
  v33 = v18 + v20[24];
  *v33 = sub_100116F64;
  *(v33 + 1) = 0;
  v33[16] = 0;
  v34 = (v18 + v20[25]);
  type metadata accessor for WeatherConditionBackgroundModifierState(0);
  swift_allocObject();
  v88 = sub_1009B5F9C();
  State.init(wrappedValue:)();
  v35 = v86;
  *v34 = v85;
  v34[1] = v35;
  *(v18 + v20[26]) = 1092616192;
  v36 = v8;
  v63(v18 + v20[12], v8, v16);
  *(v18 + v20[13]) = v82;
  sub_100035B30(&v89, v18 + v20[14]);
  v37 = (v18 + v20[23]);
  swift_unknownObjectRetain();

  *v37 = ObservedObject.init(wrappedValue:)();
  v37[1] = v38;
  v39 = (v18 + v20[15]);
  v40 = v66;
  *v39 = v67;
  v39[1] = v40;
  v39[2] = v65;
  *(v18 + v20[18]) = 0;
  *(v18 + v20[16]) = v64;

  v41 = v70;
  WeatherConditionBackgroundModel.gradient.getter();
  SkyBackgroundGradient.gradient()();
  v42 = *(v71 + 8);
  v43 = v73;
  v42(v41, v73);
  WeatherConditionBackgroundModel.gradient.getter();
  SkyBackgroundGradient.gradient()();
  v42(v41, v43);
  v44 = v18 + v20[19];
  AnimatedGradient.init(baseGradient:animatedGradient:showAnimatedGradient:)();

  sub_100006F14(&v89);
  (*(v68 + 8))(v36, v80);
  *&v44[*(sub_10022C350(&qword_100CACB08) + 28)] = 0;
  v45 = v84;
  *v84 = v76;
  v46 = (v69 + v72[16]);
  v47 = *v46;
  v48 = *(v46 + 1);
  LOBYTE(v89) = v47;
  v90 = v48;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  LOBYTE(v37) = v85;
  v85 = 0;
  v86 = 0;
  v87 = 1;
  sub_10022C350(&qword_100CB0590);
  State.init(wrappedValue:)();
  v49 = v89;
  v50 = v90;
  LOBYTE(v18) = v91;
  v51 = v92;
  v52 = v45 + *(sub_10022C350(&qword_100CB0598) + 36);
  *v52 = v37;
  *(v52 + 1) = v49;
  *(v52 + 2) = v50;
  v52[24] = v18;
  *(v52 + 4) = v51;
  v53 = StateObject.wrappedValue.getter();
  v54 = static ObservableObject.environmentStore.getter();
  v55 = (v45 + *(sub_10022C350(&qword_100CB05A0) + 36));
  *v55 = v54;
  v55[1] = v53;
  v56 = StateObject.wrappedValue.getter();
  v57 = static ObservableObject.environmentStore.getter();
  v58 = (v45 + *(sub_10022C350(&qword_100CB05A8) + 36));
  *v58 = v57;
  v58[1] = v56;
  v59 = static SafeAreaRegions.all.getter();
  LOBYTE(v57) = static Edge.Set.all.getter();
  result = sub_10022C350(&qword_100CB05B0);
  v61 = v45 + *(result + 36);
  *v61 = v59;
  v61[8] = v57;
  return result;
}

uint64_t sub_100372298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationPreviewViewContentModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationPreviewView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_1003781BC(a1, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003781BC(a2, v7);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v5 + 80) + v11) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_100377B20(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);
  sub_100377B20(v7, v13 + v12);
  return Button.init(action:label:)();
}

uint64_t sub_1003724C4(uint64_t a1)
{
  v2 = type metadata accessor for LocationPreviewView();
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.setter();
  sub_1000161C0((a1 + *(v2 + 52)), *(a1 + *(v2 + 52) + 24));
  return sub_100A06038();
}

uint64_t sub_100372564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v33 = a2;
  v31 = a1;
  v36 = a4;
  v5 = type metadata accessor for PlainButtonStyle();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v35 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for LocationPreviewViewContentModel(0);
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for LocationPreviewView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_10022C350(&qword_100CB0840);
  v13 = *(v34 - 8);
  __chkstk_darwin(v34);
  v15 = &v29[-v14];
  v16 = sub_10022C350(&qword_100CB0828);
  __chkstk_darwin(v16);
  v18 = &v29[-v17];
  sub_1003781BC(a1, v12);
  sub_1003781BC(v33, &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + *(v32 + 80) + v19) & ~*(v32 + 80);
  v21 = swift_allocObject();
  sub_100377B20(v12, v21 + v19);
  sub_100377B20(&v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20);
  sub_10022C350(&qword_100CA6438);
  sub_100287740();
  Button.init(action:label:)();
  if (sub_10036C6D4() & 1) != 0 && (v30)
  {
    v22 = static Color.black.getter();
  }

  else
  {
    v22 = static Color.white.getter();
  }

  v23 = v22;
  KeyPath = swift_getKeyPath();
  (*(v13 + 32))(v18, v15, v34);
  v25 = &v18[*(v16 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = v35;
  PlainButtonStyle.init()();
  sub_100377198();
  sub_1000619F4(&qword_100CB0848, &type metadata accessor for PlainButtonStyle);
  v27 = v38;
  View.buttonStyle<A>(_:)();
  (*(v37 + 8))(v26, v27);
  return sub_100018144(v18, &qword_100CB0828);
}

uint64_t sub_1003729FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for LocationPreviewView();
  sub_1000161C0((a1 + *(v6 + 52)), *(a1 + *(v6 + 52) + 24));
  return a3(a2);
}

double sub_100372A54@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = static Edge.Set.all.getter();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

uint64_t sub_100372B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a2;
  v23 = a3;
  v21 = a1;
  v24 = a4;
  v4 = type metadata accessor for Location();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationPreviewView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocationPreviewViewContentModel(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003781BC(v21, v15);
  sub_1003781BC(v22, v11);
  (*(v5 + 16))(v7, v23, v4);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_100377B20(v15, v19 + v16);
  sub_100377B20(v11, v19 + v17);
  (*(v5 + 32))(v19 + v18, v7, v4);
  return Button.init(action:label:)();
}

uint64_t sub_100372E08@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100372E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v44 = a3;
  v40 = a2;
  v42 = a1;
  v49 = a5;
  v6 = type metadata accessor for PlainButtonStyle();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v48 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Location();
  v9 = *(v8 - 8);
  v43 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = v11;
  v12 = type metadata accessor for LocationPreviewView();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for LocationPreviewViewContentModel(0);
  v39 = *(v15 - 8);
  v16 = *(v39 + 64);
  __chkstk_darwin(v15 - 8);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_10022C350(&qword_100CB0840);
  v45 = *(v18 - 8);
  v46 = v18;
  __chkstk_darwin(v18);
  v20 = &v36[-v19];
  v47 = sub_10022C350(&qword_100CB0828);
  __chkstk_darwin(v47);
  v22 = &v36[-v21];
  sub_1003781BC(v42, v17);
  sub_1003781BC(a2, v14);
  v23 = v11;
  v24 = v8;
  (*(v9 + 16))(v23, v44, v8);
  v25 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v26 = (v16 + *(v41 + 80) + v25) & ~*(v41 + 80);
  v27 = (v13 + *(v9 + 80) + v26) & ~*(v9 + 80);
  v28 = swift_allocObject();
  sub_100377B20(v17, v28 + v25);
  sub_100377B20(v14, v28 + v26);
  (*(v9 + 32))(v28 + v27, v38, v24);
  sub_10022C350(&qword_100CA6438);
  sub_100287740();
  Button.init(action:label:)();
  if (sub_10036C6D4() & 1) != 0 && (v37)
  {
    v29 = static Color.black.getter();
  }

  else
  {
    v29 = static Color.white.getter();
  }

  v30 = v29;
  KeyPath = swift_getKeyPath();
  (*(v45 + 32))(v22, v20, v46);
  v32 = v48;
  v33 = &v22[*(v47 + 36)];
  *v33 = KeyPath;
  v33[1] = v30;
  PlainButtonStyle.init()();
  sub_100377198();
  sub_1000619F4(&qword_100CB0848, &type metadata accessor for PlainButtonStyle);
  v34 = v51;
  View.buttonStyle<A>(_:)();
  (*(v50 + 8))(v32, v34);
  return sub_100018144(v22, &qword_100CB0828);
}

uint64_t sub_1003733B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000038D8();
  v7 = type metadata accessor for LocationPreviewViewContentModel(v6);
  if (*(v3 + *(v7 + 28)))
  {
    sub_10022C350(&qword_100CA5A80);
    return State.wrappedValue.setter();
  }

  else
  {
    v9 = v7;
    v10 = type metadata accessor for LocationPreviewView();
    sub_1000161C0((a2 + *(v10 + 52)), *(a2 + *(v10 + 52) + 24));
    return sub_100A05E34(a3, *(v3 + *(v9 + 24)));
  }
}

double sub_100373468@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.Weight.bold.getter();
  v7 = Text.fontWeight(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10010CD64(v2, v4, v6 & 1);

  v14 = static Edge.Set.all.getter();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

uint64_t sub_100373578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_10022C350(&qword_100CB0860);
  __chkstk_darwin(v3);
  v5 = &v50 - v4;
  v52 = sub_10022C350(&qword_100CB0718);
  __chkstk_darwin(v52);
  v7 = &v50 - v6;
  v8 = sub_10022C350(&qword_100CB0728);
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for NewsArticle();
  __chkstk_darwin(v11 - 8);
  v13 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_10022C350(&qword_100CB0868);
  __chkstk_darwin(v50);
  v51 = &v50 - v14;
  v56 = sub_10022C350(&qword_100CB06D8);
  __chkstk_darwin(v56);
  v53 = &v50 - v15;
  v58 = sub_10022C350(&qword_100CB0870);
  __chkstk_darwin(v58);
  v60 = &v50 - v16;
  v54 = sub_10022C350(&qword_100CB0878);
  __chkstk_darwin(v54);
  v55 = &v50 - v17;
  v59 = sub_10022C350(&qword_100CB0658);
  __chkstk_darwin(v59);
  v57 = &v50 - v18;
  v19 = type metadata accessor for LocationPreviewModalViewModel(0);
  __chkstk_darwin(v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LocationPreviewViewContentModel(0);
  sub_1003781BC(a1 + *(v22 + 36), v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100377B20(v21, v13);
      sub_10022C350(&qword_100CA7300);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100A2C3F0;
      v33 = v13[1];
      *(v32 + 32) = *v13;
      *(v32 + 40) = v33;

      NewsArticleView.init(identifiers:)();
      v10[*(v8 + 36)] = static Edge.Set.all.getter();
      sub_1000302D8(v10, v5, &qword_100CB0728);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB0740);
      sub_100376810();
      sub_100006F64(&qword_100CB0738, &qword_100CB0740);
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v7, v51, &qword_100CB0718);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB06E8);
      sub_100376678();
      sub_100376758();
      v34 = v53;
      _ConditionalContent<>.init(storage:)();
      sub_100018144(v7, &qword_100CB0718);
      sub_1000302D8(v34, v55, &qword_100CB06D8);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB0668);
      sub_1003763A0();
      sub_1003765EC();
      v35 = v57;
      _ConditionalContent<>.init(storage:)();
      sub_100018144(v34, &qword_100CB06D8);
      sub_1000302D8(v35, v60, &qword_100CB0658);
      swift_storeEnumTagMultiPayload();
      sub_100376314();
      _ConditionalContent<>.init(storage:)();
      sub_100018144(v35, &qword_100CB0658);
      sub_100018144(v10, &qword_100CB0728);
      return sub_100377ACC(v13, type metadata accessor for NewsArticle);
    case 2u:
      goto LABEL_3;
    case 3u:
      v36 = sub_10022C350(&qword_100CB08A0);
      *&v66[80] = sub_10071E920;
      *&v66[88] = 0;
      v66[96] = 0;
      *v66 = v36;
      if (qword_100CA1F40 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      result = sub_1000302D8(&xmmword_100D8FB90, v62, &unk_100CAF270);
      if (!*&v62[24])
      {
        goto LABEL_41;
      }

      sub_100013188(v62, &v66[24]);
      *&v66[8] = sub_100374DB4;
      *&v66[16] = 0;
      v37 = Dictionary.init(dictionaryLiteral:)();
      *&v66[64] = _swiftEmptyArrayStorage;
      *&v66[72] = v37;
      memcpy(__dst, v66, 0x61uLL);
      v26 = &qword_100CB0688;
      sub_1000302D8(__dst, v66, &qword_100CB0688);
      v67 = 0;
      sub_10022C350(&qword_100CB0688);
      sub_10022C350(&qword_100CB0698);
      sub_100006F64(&qword_100CB0680, &qword_100CB0688);
      sub_100006F64(&qword_100CB0690, &qword_100CB0698);
      goto LABEL_17;
    case 4u:
      v24 = sub_10022C350(&qword_100CA48A0);
      *&v66[80] = sub_10071E90C;
      *&v66[88] = 0;
      v66[96] = 0;
      *v66 = v24;
      if (qword_100CA1F40 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      result = sub_1000302D8(&xmmword_100D8FB90, v62, &unk_100CAF270);
      if (*&v62[24])
      {
        sub_100013188(v62, &v66[24]);
        *&v66[8] = sub_100374DE8;
        *&v66[16] = 0;
        v25 = Dictionary.init(dictionaryLiteral:)();
        *&v66[64] = _swiftEmptyArrayStorage;
        *&v66[72] = v25;
        memcpy(__dst, v66, 0x61uLL);
        v26 = &qword_100CB0698;
        sub_1000302D8(__dst, v66, &qword_100CB0698);
        v67 = 1;
        sub_10022C350(&qword_100CB0688);
        sub_10022C350(&qword_100CB0698);
        sub_100006F64(&qword_100CB0680, &qword_100CB0688);
        sub_100006F64(&qword_100CB0690, &qword_100CB0698);
LABEL_17:
        _ConditionalContent<>.init(storage:)();
        v38 = &qword_100CB0678;
        sub_1000302D8(v65, v62, &qword_100CB0678);
        v64 = 0;
        sub_10022C350(&qword_100CB0678);
LABEL_31:
        sub_10022C350(&qword_100CB06A8);
        sub_10037642C();
        sub_10037650C();
        _ConditionalContent<>.init(storage:)();
        sub_100018144(v65, v38);
        sub_1000302D8(v66, v55, &qword_100CB0668);
        swift_storeEnumTagMultiPayload();
        sub_10022C350(&qword_100CB0668);
        sub_1003763A0();
        sub_1003765EC();
        v45 = v57;
        _ConditionalContent<>.init(storage:)();
        sub_100018144(v66, &qword_100CB0668);
        sub_1000302D8(v45, v60, &qword_100CB0658);
        swift_storeEnumTagMultiPayload();
        sub_100376314();
        _ConditionalContent<>.init(storage:)();
        sub_100018144(v45, &qword_100CB0658);
        v31 = __dst;
        return sub_100018144(v31, v26);
      }

      else
      {
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
      }

      return result;
    case 5u:
      v41 = sub_10022C350(&qword_100CB0898);
      *&v66[80] = sub_10071E8F8;
      *&v66[88] = 0;
      v66[96] = 0;
      *v66 = v41;
      if (qword_100CA1F40 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      result = sub_1000302D8(&xmmword_100D8FB90, v62, &unk_100CAF270);
      if (!*&v62[24])
      {
        goto LABEL_43;
      }

      sub_100013188(v62, &v66[24]);
      *&v66[8] = sub_100374E1C;
      *&v66[16] = 0;
      v42 = Dictionary.init(dictionaryLiteral:)();
      *&v66[64] = _swiftEmptyArrayStorage;
      *&v66[72] = v42;
      memcpy(__dst, v66, 0x61uLL);
      v26 = &qword_100CB06B8;
      sub_1000302D8(__dst, v66, &qword_100CB06B8);
      v67 = 0;
      sub_10022C350(&qword_100CB06B8);
      sub_10022C350(&qword_100CB06C8);
      sub_100006F64(&qword_100CB06B0, &qword_100CB06B8);
      sub_100006F64(&qword_100CB06C0, &qword_100CB06C8);
      _ConditionalContent<>.init(storage:)();
      v38 = &qword_100CB06A8;
      sub_1000302D8(v65, v62, &qword_100CB06A8);
      v64 = 1;
      goto LABEL_30;
    case 6u:
      v43 = sub_10022C350(&qword_100CB0890);
      *&v66[80] = sub_10071E8E4;
      *&v66[88] = 0;
      v66[96] = 0;
      *v66 = v43;
      if (qword_100CA1F40 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      result = sub_1000302D8(&xmmword_100D8FB90, v62, &unk_100CAF270);
      if (!*&v62[24])
      {
        goto LABEL_44;
      }

      sub_100013188(v62, &v66[24]);
      *&v66[8] = sub_100374E50;
      *&v66[16] = 0;
      v44 = Dictionary.init(dictionaryLiteral:)();
      *&v66[64] = _swiftEmptyArrayStorage;
      *&v66[72] = v44;
      memcpy(__dst, v66, 0x61uLL);
      v26 = &qword_100CB06C8;
      sub_1000302D8(__dst, v66, &qword_100CB06C8);
      v67 = 1;
      sub_10022C350(&qword_100CB06B8);
      sub_10022C350(&qword_100CB06C8);
      sub_100006F64(&qword_100CB06B0, &qword_100CB06B8);
      sub_100006F64(&qword_100CB06C0, &qword_100CB06C8);
      _ConditionalContent<>.init(storage:)();
      v38 = &qword_100CB06A8;
      sub_1000302D8(v65, v62, &qword_100CB06A8);
      v64 = 1;
LABEL_30:
      sub_10022C350(&qword_100CB0678);
      goto LABEL_31;
    case 7u:
      v39 = sub_10022C350(&qword_100CAC9F0);
      *&v66[80] = sub_10071E8D0;
      *&v66[88] = 0;
      v66[96] = 0;
      *v66 = v39;
      if (qword_100CA1F40 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      result = sub_1000302D8(&xmmword_100D8FB90, v62, &unk_100CAF270);
      if (!*&v62[24])
      {
        goto LABEL_42;
      }

      sub_100013188(v62, &v66[24]);
      *&v66[8] = sub_100374E84;
      *&v66[16] = 0;
      v40 = Dictionary.init(dictionaryLiteral:)();
      *&v66[64] = _swiftEmptyArrayStorage;
      *&v66[72] = v40;
      memcpy(v65, v66, 0x61uLL);
      v26 = &qword_100CB06F8;
      sub_1000302D8(v65, v62, &qword_100CB06F8);
      v63 = 0;
      sub_10022C350(&qword_100CB06F8);
      sub_10022C350(&qword_100CB0708);
      sub_100006F64(&qword_100CB06F0, &qword_100CB06F8);
      sub_100006F64(&qword_100CB0700, &qword_100CB0708);
      goto LABEL_36;
    case 8u:
      v46 = sub_10022C350(&qword_100CB0888);
      *&v66[80] = sub_10071E8BC;
      *&v66[88] = 0;
      v66[96] = 0;
      *v66 = v46;
      if (qword_100CA1F40 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      result = sub_1000302D8(&xmmword_100D8FB90, v62, &unk_100CAF270);
      if (!*&v62[24])
      {
        goto LABEL_45;
      }

      sub_100013188(v62, &v66[24]);
      *&v66[8] = sub_100374EB8;
      *&v66[16] = 0;
      v47 = Dictionary.init(dictionaryLiteral:)();
      *&v66[64] = _swiftEmptyArrayStorage;
      *&v66[72] = v47;
      memcpy(v65, v66, 0x61uLL);
      v26 = &qword_100CB0708;
      sub_1000302D8(v65, v62, &qword_100CB0708);
      v63 = 1;
      sub_10022C350(&qword_100CB06F8);
      sub_10022C350(&qword_100CB0708);
      sub_100006F64(&qword_100CB06F0, &qword_100CB06F8);
      sub_100006F64(&qword_100CB0700, &qword_100CB0708);
LABEL_36:
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v66, v51, &qword_100CB06E8);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB06E8);
      sub_100376678();
      sub_100376758();
      v48 = v53;
      _ConditionalContent<>.init(storage:)();
      sub_100018144(v66, &qword_100CB06E8);
      sub_1000302D8(v48, v55, &qword_100CB06D8);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB0668);
      sub_1003763A0();
      sub_1003765EC();
      v49 = v57;
      _ConditionalContent<>.init(storage:)();
      sub_100018144(v48, &qword_100CB06D8);
      sub_1000302D8(v49, v60, &qword_100CB0658);
      swift_storeEnumTagMultiPayload();
      sub_100376314();
      _ConditionalContent<>.init(storage:)();
      sub_100018144(v49, &qword_100CB0658);
      v31 = v65;
      return sub_100018144(v31, v26);
    case 9u:
      v27 = sub_10022C350(&qword_100CB0880);
      *&v62[80] = sub_10071E8A8;
      *&v62[88] = 0;
      v62[96] = 0;
      *v62 = v27;
      if (qword_100CA1F40 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      result = sub_1000302D8(&xmmword_100D8FB90, v66, &unk_100CAF270);
      if (!*&v66[24])
      {
        goto LABEL_40;
      }

      sub_100013188(v66, &v62[24]);
      *&v62[8] = sub_100374EEC;
      *&v62[16] = 0;
      v28 = Dictionary.init(dictionaryLiteral:)();
      *&v62[64] = _swiftEmptyArrayStorage;
      *&v62[72] = v28;
      memcpy(v66, v62, sizeof(v66));
      v26 = &qword_100CB0740;
      sub_1000302D8(v66, v5, &qword_100CB0740);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB0740);
      sub_100376810();
      sub_100006F64(&qword_100CB0738, &qword_100CB0740);
      _ConditionalContent<>.init(storage:)();
      sub_1000302D8(v7, v51, &qword_100CB0718);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB06E8);
      sub_100376678();
      sub_100376758();
      v29 = v53;
      _ConditionalContent<>.init(storage:)();
      sub_100018144(v7, &qword_100CB0718);
      sub_1000302D8(v29, v55, &qword_100CB06D8);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB0668);
      sub_1003763A0();
      sub_1003765EC();
      v30 = v57;
      _ConditionalContent<>.init(storage:)();
      sub_100018144(v29, &qword_100CB06D8);
      sub_1000302D8(v30, v60, &qword_100CB0658);
      swift_storeEnumTagMultiPayload();
      sub_100376314();
      _ConditionalContent<>.init(storage:)();
      sub_100018144(v30, &qword_100CB0658);
      v31 = v66;
      return sub_100018144(v31, v26);
    default:
      sub_100377ACC(v21, type metadata accessor for LocationPreviewModalViewModel);
LABEL_3:
      swift_storeEnumTagMultiPayload();
      sub_100376314();
      return _ConditionalContent<>.init(storage:)();
  }
}