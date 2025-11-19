unint64_t sub_10004EB44()
{
  result = qword_100086860;
  if (!qword_100086860)
  {
    sub_10000221C(&qword_100086868, &qword_100069EE8);
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086860);
  }

  return result;
}

unint64_t sub_10004EBFC()
{
  result = qword_100086880;
  if (!qword_100086880)
  {
    sub_10000221C(&qword_100086888, &qword_100069EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086880);
  }

  return result;
}

uint64_t sub_10004ECA4(uint64_t a1)
{
  v2 = sub_100063FE4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000638C4();
}

uint64_t sub_10004ED70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100086858, &qword_100069EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004EDE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_1000867E0, &qword_100069E98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004EE5C()
{
  result = qword_1000868A8;
  if (!qword_1000868A8)
  {
    sub_10000221C(&qword_1000868B0, &qword_100069F78);
    sub_10004E404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000868A8);
  }

  return result;
}

uint64_t sub_10004EF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000021D4(&qword_1000851D0, &qword_100066890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000021D4(&qword_1000851D8, &qword_100066898);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  started = type metadata accessor for StartWritingWidgetTimelineEntry();
  v15 = *(*(started - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, started);
}

uint64_t sub_10004F0A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000021D4(&qword_1000851D0, &qword_100066890);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000021D4(&qword_1000851D8, &qword_100066898);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  started = type metadata accessor for StartWritingWidgetTimelineEntry();
  v17 = *(*(started - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, started);
}

uint64_t type metadata accessor for StartWritingWidgetSystemSmallView()
{
  result = qword_100086910;
  if (!qword_100086910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004F254()
{
  sub_10004F328(319, &qword_100085250, &type metadata accessor for RedactionReasons);
  if (v0 <= 0x3F)
  {
    sub_10004F328(319, &qword_100085258, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      type metadata accessor for StartWritingWidgetTimelineEntry();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10004F328(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100063784();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10004F3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1000021D4(&qword_1000852C8, &qword_100066978);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v50 - v5;
  v51 = sub_1000021D4(&qword_1000852D0, &qword_100066980);
  v7 = *(*(v51 - 8) + 64);
  v8 = __chkstk_darwin(v51);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v50 - v11;
  __chkstk_darwin(v10);
  v14 = &v50 - v13;
  v15 = sub_1000021D4(&qword_100086970, &qword_10006A0C8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v52 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v50 - v19;
  v21 = sub_1000021D4(&qword_100085448, &qword_10006A0D0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v50 - v26;
  sub_10004F8A8((&v50 - v26));
  v28 = v20;
  sub_10004FFC0(v20);
  *v6 = sub_100063A24();
  *(v6 + 1) = 0x4018000000000000;
  v6[16] = 0;
  v29 = sub_1000021D4(&qword_1000852E8, &qword_100066998);
  sub_100050DEC(a1, &v6[*(v29 + 44)]);
  sub_1000021D4(&qword_1000852F0, &qword_1000669A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065BA0;
  v31 = sub_100063CA4();
  *(inited + 32) = v31;
  v32 = sub_100063CD4();
  *(inited + 33) = v32;
  v33 = sub_100063CF4();
  sub_100063CF4();
  if (sub_100063CF4() != v31)
  {
    v33 = sub_100063CF4();
  }

  sub_100063CF4();
  if (sub_100063CF4() != v32)
  {
    v33 = sub_100063CF4();
  }

  sub_100063714();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_100015F0C(v6, v12, &qword_1000852C8, &qword_100066978);
  v42 = &v12[*(v51 + 36)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  sub_100015F0C(v12, v14, &qword_1000852D0, &qword_100066980);
  v43 = v27;
  sub_100016718(v27, v25, &qword_100085448, &qword_10006A0D0);
  v44 = v28;
  v45 = v52;
  sub_1000519AC(v28, v52);
  v46 = v53;
  sub_100016718(v14, v53, &qword_1000852D0, &qword_100066980);
  v47 = v54;
  sub_100016718(v25, v54, &qword_100085448, &qword_10006A0D0);
  v48 = sub_1000021D4(&qword_100086978, &unk_10006A0D8);
  sub_1000519AC(v45, v47 + *(v48 + 48));
  sub_100016718(v46, v47 + *(v48 + 64), &qword_1000852D0, &qword_100066980);
  sub_10000494C(v14, &qword_1000852D0, &qword_100066980);
  sub_10000494C(v44, &qword_100086970, &qword_10006A0C8);
  sub_10000494C(v43, &qword_100085448, &qword_10006A0D0);
  sub_10000494C(v46, &qword_1000852D0, &qword_100066980);
  sub_10000494C(v45, &qword_100086970, &qword_10006A0C8);
  return sub_10000494C(v25, &qword_100085448, &qword_10006A0D0);
}

uint64_t sub_10004F8A8@<X0>(uint64_t *a1@<X8>)
{
  v81 = a1;
  v1 = sub_100063514();
  v86 = *(v1 - 8);
  v87 = v1;
  v2 = *(v86 + 64);
  __chkstk_darwin(v1);
  v85 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100063664();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v84 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100063644();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v82 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000635E4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v80 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100063434();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1000021D4(&qword_100085438, &qword_100066C28);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v78 - v17;
  v19 = sub_1000021D4(&qword_100085440, &unk_100066C30);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v78 - v21;
  v79 = sub_100063534();
  v23 = *(v79 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v79);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = sub_100063574();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWritingWidgetSystemSmallView();
  (*(v29 + 16))(v32, v83 + *(started + 24), v28);
  v34 = sub_100063484();
  (*(*(v34 - 8) + 56))(v22, 1, 1, v34);
  v35 = sub_100063474();
  (*(*(v35 - 8) + 56))(v18, 1, 1, v35);
  sub_100063424();
  sub_1000635C4();
  sub_100063604();
  sub_100063654();
  sub_1000634A4();
  v36 = v85;
  sub_100063504();
  sub_100063524();
  (*(v86 + 8))(v36, v87);
  (*(v23 + 8))(v27, v79);
  sub_100052100(&qword_100085450, &type metadata accessor for Date.FormatStyle);
  sub_100052100(&qword_100085458, &type metadata accessor for Date);
  v37 = sub_100063DF4();
  v39 = v38;
  v41 = v40;
  v43 = v42 & 1;
  KeyPath = swift_getKeyPath();
  v45 = v81;
  *v81 = KeyPath;
  sub_1000021D4(&qword_100084C00, &qword_100066BB0);
  swift_storeEnumTagMultiPayload();
  v46 = type metadata accessor for WidgetHeaderView();
  v47 = v46[5];
  *(v45 + v47) = swift_getKeyPath();
  sub_1000021D4(&qword_100085318, &qword_100066A08);
  swift_storeEnumTagMultiPayload();
  v48 = v46[6];
  *(v45 + v48) = swift_getKeyPath();
  sub_1000021D4(&qword_1000853F0, &qword_100067EB0);
  swift_storeEnumTagMultiPayload();
  v49 = (v45 + v46[7]);
  *v49 = v37;
  v49[1] = v39;
  v49[2] = v43;
  v49[3] = v41;
  LOBYTE(v37) = sub_100063CE4();
  sub_100063714();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v45 + *(sub_1000021D4(&qword_100085460, &unk_100066C40) + 36);
  *v58 = v37;
  *(v58 + 1) = v51;
  *(v58 + 2) = v53;
  *(v58 + 3) = v55;
  *(v58 + 4) = v57;
  v58[40] = 0;
  LOBYTE(v37) = sub_100063CC4();
  sub_100063714();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v45 + *(sub_1000021D4(&qword_100085468, &unk_10006A2E0) + 36);
  *v67 = v37;
  *(v67 + 1) = v60;
  *(v67 + 2) = v62;
  *(v67 + 3) = v64;
  *(v67 + 4) = v66;
  v67[40] = 0;
  LOBYTE(v37) = sub_100063D04();
  sub_100063714();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  result = sub_1000021D4(&qword_100085448, &qword_10006A0D0);
  v77 = v45 + *(result + 36);
  *v77 = v37;
  *(v77 + 1) = v69;
  *(v77 + 2) = v71;
  *(v77 + 3) = v73;
  *(v77 + 4) = v75;
  v77[40] = 0;
  return result;
}

uint64_t sub_10004FFC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v71 = sub_100063D94();
  v3 = *(v71 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v71);
  v6 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000021D4(&qword_100086980, &qword_10006A118);
  v7 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v9 = v70 - v8;
  v76 = sub_1000021D4(&qword_100086988, &qword_10006A120);
  v10 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v73 = v70 - v11;
  v75 = sub_1000021D4(&qword_100086990, &qword_10006A128);
  v12 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v78 = v70 - v13;
  v77 = sub_1000021D4(&qword_100086998, &qword_10006A130);
  v14 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v80 = v70 - v15;
  v79 = sub_1000021D4(&qword_1000869A0, &qword_10006A138);
  v16 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v81 = v70 - v17;
  v18 = sub_100063864();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v70 - v24;
  sub_1000307B8(v70 - v24);
  sub_100063844();
  v70[2] = sub_100052100(&qword_100085340, &type metadata accessor for RedactionReasons);
  v26 = sub_1000643C4();
  v27 = *(v19 + 8);
  v27(v23, v18);
  v72 = v27;
  v27(v25, v18);
  if (v26)
  {
    v28 = 0x800000010006C620;
    v29 = v2;
    v30 = 0xD00000000000007CLL;
  }

  else
  {
    v31 = v2 + *(type metadata accessor for StartWritingWidgetSystemSmallView() + 24);
    v32 = v31 + *(type metadata accessor for StartWritingWidgetTimelineEntry() + 20);
    v29 = v2;
    v30 = *(v32 + 16);
    v28 = *(v32 + 24);
  }

  v70[1] = v29;
  *v9 = sub_100064084();
  *(v9 + 1) = v33;
  v34 = sub_1000021D4(&qword_1000869A8, &qword_10006A140);
  sub_1000507B8(v30, v28, v29, &v9[*(v34 + 44)]);

  sub_100063D84();
  v35 = v71;
  (*(v3 + 104))(v6, enum case for Font.Leading.tight(_:), v71);
  v36 = sub_100063DA4();

  (*(v3 + 8))(v6, v35);
  KeyPath = swift_getKeyPath();
  v38 = &v9[*(v74 + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  sub_100063D44();
  sub_100051BF4();
  v39 = v73;
  sub_100063E84();
  sub_10000494C(v9, &qword_100086980, &qword_10006A118);
  v40 = swift_getKeyPath();
  v41 = (v39 + *(sub_1000021D4(&qword_1000869C8, &qword_10006A1B8) + 36));
  *v41 = v40;
  v41[1] = 0x3FB999999999999ALL;
  v42 = swift_getKeyPath();
  v43 = v39 + *(v76 + 36);
  *v43 = v42;
  *(v43 + 8) = 0;
  sub_100051E28();
  v44 = v78;
  sub_100063EF4();
  sub_10000494C(v39, &qword_100086988, &qword_10006A120);
  v45 = (v44 + *(v75 + 36));
  v46 = v45 + *(sub_1000021D4(&qword_1000853E0, &qword_100066B10) + 28);
  sub_1000638A4();
  *v45 = swift_getKeyPath();
  sub_1000307B8(v25);
  sub_100063844();
  v47 = sub_1000643C4();
  v48 = v72;
  v72(v23, v18);
  v48(v25, v18);
  if (v47)
  {
    v49 = 3;
  }

  else
  {
    v49 = 0;
  }

  v50 = swift_getKeyPath();
  v51 = v80;
  sub_100015F0C(v44, v80, &qword_100086990, &qword_10006A128);
  v52 = v51 + *(v77 + 36);
  *v52 = v50;
  *(v52 + 8) = v49;
  *(v52 + 16) = (v47 & 1) == 0;
  sub_100064074();
  sub_100063874();
  v53 = v81;
  sub_100015F0C(v51, v81, &qword_100086998, &qword_10006A130);
  v54 = (v53 + *(v79 + 36));
  v55 = v88;
  v54[4] = v87;
  v54[5] = v55;
  v54[6] = v89;
  v56 = v84;
  *v54 = v83;
  v54[1] = v56;
  v57 = v86;
  v54[2] = v85;
  v54[3] = v57;
  LOBYTE(v50) = sub_100063CA4();
  sub_100063714();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v53;
  v67 = v82;
  sub_100015F0C(v66, v82, &qword_1000869A0, &qword_10006A138);
  result = sub_1000021D4(&qword_100086970, &qword_10006A0C8);
  v69 = v67 + *(result + 36);
  *v69 = v50;
  *(v69 + 8) = v59;
  *(v69 + 16) = v61;
  *(v69 + 24) = v63;
  *(v69 + 32) = v65;
  *(v69 + 40) = 0;
  return result;
}

uint64_t sub_1000507B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v68 = a3;
  v76 = a4;
  v72 = sub_100064134();
  v71 = *(v72 - 8);
  v7 = *(v71 + 64);
  v8 = __chkstk_darwin(v72);
  v70 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = v65 - v10;
  v11 = sub_1000021D4(&qword_100085408, &qword_100066C00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v65 - v13;
  v15 = sub_1000021D4(&qword_100085400, &qword_10006A260);
  v74 = *(v15 - 8);
  v75 = v15;
  v16 = *(v74 + 64);
  v17 = __chkstk_darwin(v15);
  v73 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v65 - v19;
  *&v66 = a1;
  *&v81 = a1;
  *(&v81 + 1) = a2;
  v21 = sub_100002264();
  *(&v66 + 1) = a2;

  v65[1] = v21;
  v22 = sub_100063E14();
  v24 = v23;
  v26 = v25;
  started = type metadata accessor for StartWritingWidgetSystemSmallView();
  v27 = a3 + *(started + 24);
  v28 = type metadata accessor for StartWritingWidgetTimelineEntry();
  sub_100048A64(*(v27 + *(v28 + 20) + 11), v14);
  sub_100009F14(&qword_100085418, &qword_100085408, &qword_100066C00);
  v29 = sub_100063DD4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_100016708(v22, v24, v26 & 1);

  sub_10000494C(v14, &qword_100085408, &qword_100066C00);
  *&v81 = v29;
  *(&v81 + 1) = v31;
  LOBYTE(v82) = v33 & 1;
  *(&v82 + 1) = v35;
  v77 = v20;
  sub_100063E24();
  sub_100016708(v29, v31, v33 & 1);

  v36 = v68 + *(started + 20);
  v37 = v69;
  sub_1000309E0(v69);
  v38 = v70;
  sub_100064124();
  v39 = v38;
  LOBYTE(v36) = sub_100064104();
  v40 = *(v71 + 8);
  v41 = v39;
  v42 = v72;
  v40(v41, v72);
  v40(v37, v42);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (v36)
  {
    v81 = v66;

    v47 = sub_100063E14();
    v49 = v48;
    v51 = v50;
    sub_1000021D4(&qword_100085428, &unk_100069B90);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100065BA0;
    *(v52 + 32) = sub_100063F74();
    sub_100063F74();
    v53 = sub_100063F84();

    *(v52 + 40) = v53;
    sub_1000640C4();
    sub_1000640D4();
    sub_100064054();
    sub_100063804();
    v78 = v81;
    v79 = v82;
    v80 = v83;
    v43 = sub_100063DD4();
    v44 = v54;
    LOBYTE(v52) = v55;
    v46 = v56;
    sub_100016708(v47, v49, v51 & 1);

    sub_100016780(&v81);
    v45 = v52 & 1;
    sub_10004E5E4(v43, v44, v52 & 1);
  }

  v58 = v73;
  v57 = v74;
  v59 = *(v74 + 16);
  v60 = v75;
  v59(v73, v77, v75);
  v61 = v76;
  v59(v76, v58, v60);
  v62 = &v61[*(sub_1000021D4(&qword_1000869E0, &unk_10006A268) + 48)];
  sub_10004E5F4(v43, v44, v45, v46);
  sub_10004E96C(v43, v44, v45, v46);
  *v62 = v43;
  v62[1] = v44;
  v62[2] = v45;
  v62[3] = v46;
  v63 = *(v57 + 8);
  v63(v77, v60);
  sub_10004E96C(v43, v44, v45, v46);
  return (v63)(v58, v60);
}

uint64_t sub_100050DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_100063454();
  v73 = *(v3 - 8);
  *&v74 = v3;
  v4 = *(v73 + 64);
  __chkstk_darwin(v3);
  v65 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v71 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v65 - v10;
  v70 = type metadata accessor for AppLaunchAction();
  v11 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v13 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_1000021D4(&qword_100085300, &qword_1000669B8);
  v14 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v16 = &v65 - v15;
  v17 = sub_1000021D4(&qword_100085308, &qword_1000669C0);
  v18 = *(*(v17 - 1) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = (&v65 - v22);
  v24 = sub_1000021D4(&qword_100085310, &qword_1000669C8);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v79 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v78 = &v65 - v29;
  v30 = __chkstk_darwin(v28);
  v77 = &v65 - v31;
  __chkstk_darwin(v30);
  v76 = &v65 - v32;
  v69 = sub_100063FA4();
  v33 = a1 + *(type metadata accessor for StartWritingWidgetSystemSmallView() + 24);
  v34 = v33 + *(type metadata accessor for StartWritingWidgetTimelineEntry() + 20);
  LODWORD(v75) = *(v34 + 11);
  sub_10004905C(v75, &v82);
  v66 = v82;
  v67 = v84;
  v68 = v83;
  v35 = sub_1000021D4(&qword_100084BC8, &qword_1000669D0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 64);
  v38 = *(v34 + 24);
  *v13 = *(v34 + 16);
  v13[1] = v38;
  *(v13 + v36) = 1;
  v39 = type metadata accessor for CanvasContentInputType();
  swift_storeEnumTagMultiPayload();
  (*(*(v39 - 8) + 56))(v13 + v36, 0, 1, v39);
  v40 = enum case for WidgetFamily.systemSmall(_:);
  v41 = sub_100064154();
  v42 = *(v41 - 8);
  (*(v42 + 104))(v13 + v37, v40, v41);
  v43 = v41;
  v44 = v71;
  (*(v42 + 56))(v13 + v37, 0, 1, v43);
  v45 = v73;
  swift_storeEnumTagMultiPayload();

  v46 = v72;
  sub_1000197E8(v72);
  v47 = v13;
  v48 = v74;
  sub_1000028E4(v47);
  sub_100015F0C(v46, v44, &qword_100084BC0, qword_100064C60);
  if ((*(v45 + 48))(v44, 1, v48) == 1)
  {
    sub_10000494C(v44, &qword_100084BC0, qword_100064C60);
    *v16 = nullsub_1;
    *(v16 + 1) = 0;
  }

  else
  {
    v49 = *(v45 + 32);
    v50 = v65;
    v49(v65, v44, v48);
    v49(v16, v50, v48);
  }

  swift_storeEnumTagMultiPayload();
  v51 = v23 + v17[10];
  *v51 = v66;
  *(v51 + 24) = v67;
  *(v51 + 8) = v68;
  *v23 = swift_getKeyPath();
  sub_1000021D4(&qword_100085318, &qword_100066A08);
  swift_storeEnumTagMultiPayload();
  *(v23 + v17[9]) = v69;
  sub_100015F0C(v16, v23 + v17[11], &qword_100085300, &qword_1000669B8);
  if (qword_1000844A8 != -1)
  {
    swift_once();
  }

  v82 = qword_100090360;
  *&v83 = *algn_100090368;
  sub_100009F14(&qword_100085320, &qword_100085308, &qword_1000669C0);
  sub_100002264();
  v52 = v76;
  sub_100063F04();
  sub_10000494C(v23, &qword_100085308, &qword_1000669C0);
  v53 = sub_100063FA4();
  sub_1000494A0(v75, &v82);
  v54 = v82;
  v55 = v21 + v17[11];
  *(v55 + 3) = &type metadata for StartWritingWidgetUtil.RefreshIntent;
  *(v55 + 4) = sub_100015F74();
  v74 = v84;
  v75 = v83;
  swift_storeEnumTagMultiPayload();
  v56 = v21 + v17[10];
  *v56 = v54;
  v57 = v75;
  *(v56 + 24) = v74;
  *(v56 + 8) = v57;
  *v21 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v21 + v17[9]) = v53;
  if (qword_1000844B0 != -1)
  {
    swift_once();
  }

  v82 = qword_100090370;
  *&v83 = *algn_100090378;
  v58 = v77;
  sub_100063F04();
  sub_10000494C(v21, &qword_100085308, &qword_1000669C0);
  v59 = v78;
  sub_100016718(v52, v78, &qword_100085310, &qword_1000669C8);
  v60 = v79;
  sub_100016718(v58, v79, &qword_100085310, &qword_1000669C8);
  v61 = v80;
  sub_100016718(v59, v80, &qword_100085310, &qword_1000669C8);
  v62 = sub_1000021D4(&qword_100085330, &qword_100066A10);
  v63 = v61 + *(v62 + 48);
  *v63 = 0;
  *(v63 + 8) = 1;
  sub_100016718(v60, v61 + *(v62 + 64), &qword_100085310, &qword_1000669C8);
  sub_10000494C(v58, &qword_100085310, &qword_1000669C8);
  sub_10000494C(v52, &qword_100085310, &qword_1000669C8);
  sub_10000494C(v60, &qword_100085310, &qword_1000669C8);
  return sub_10000494C(v59, &qword_100085310, &qword_1000669C8);
}

uint64_t sub_1000516B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100063C34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000021D4(&qword_100086950, &qword_10006A078);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  *v12 = sub_100063A74();
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  v13 = sub_1000021D4(&qword_100086958, &qword_10006A080);
  sub_10004F3E8(v2, &v12[*(v13 + 44)]);
  sub_100063C24();
  sub_100064084();
  sub_100009F14(&qword_100086960, &qword_100086950, &qword_10006A078);
  sub_100015EA8();
  sub_100063F14();
  (*(v5 + 8))(v8, v4);
  sub_10000494C(v12, &qword_100086950, &qword_10006A078);
  KeyPath = swift_getKeyPath();
  v15 = (a1 + *(sub_1000021D4(&qword_100086968, &unk_10006A0B8) + 36));
  v16 = *(sub_1000021D4(&qword_1000852C0, &qword_100066970) + 28);
  v17 = enum case for ColorScheme.dark(_:);
  v18 = sub_100063774();
  result = (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = KeyPath;
  return result;
}

uint64_t sub_1000519AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100086970, &qword_10006A0C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100051A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100051B44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100063984();
  *a1 = result;
  return result;
}

uint64_t sub_100051B70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100063984();
  *a1 = result;
  return result;
}

uint64_t sub_100051B9C(uint64_t *a1)
{
  v1 = *a1;

  return sub_100063994();
}

uint64_t sub_100051BC8(uint64_t *a1)
{
  v1 = *a1;

  return sub_100063994();
}

unint64_t sub_100051BF4()
{
  result = qword_1000869B0;
  if (!qword_1000869B0)
  {
    sub_10000221C(&qword_100086980, &qword_10006A118);
    sub_100009F14(&qword_1000869B8, &qword_1000869C0, &unk_10006A178);
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000869B0);
  }

  return result;
}

uint64_t sub_100051CD8@<X0>(void *a1@<X8>)
{
  result = sub_100063944();
  *a1 = v3;
  return result;
}

uint64_t sub_100051D04@<X0>(void *a1@<X8>)
{
  result = sub_100063944();
  *a1 = v3;
  return result;
}

uint64_t sub_100051D80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100063964();
  *a1 = result;
  return result;
}

uint64_t sub_100051DAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100063964();
  *a1 = result;
  return result;
}

unint64_t sub_100051E28()
{
  result = qword_1000869D0;
  if (!qword_1000869D0)
  {
    sub_10000221C(&qword_100086988, &qword_10006A120);
    sub_100051EE0();
    sub_100009F14(&qword_1000853D0, &qword_1000853D8, &qword_100066B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000869D0);
  }

  return result;
}

unint64_t sub_100051EE0()
{
  result = qword_1000869D8;
  if (!qword_1000869D8)
  {
    sub_10000221C(&qword_1000869C8, &qword_10006A1B8);
    sub_10000221C(&qword_100086980, &qword_10006A118);
    sub_100051BF4();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000853C0, &qword_1000853C8, &qword_100066B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000869D8);
  }

  return result;
}

uint64_t sub_100052038@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000639C4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10005206C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000639C4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000520A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1000639D4();
}

uint64_t sub_1000520D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1000639D4();
}

uint64_t sub_100052100(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100052158()
{
  result = qword_1000869E8;
  if (!qword_1000869E8)
  {
    sub_10000221C(&qword_100086968, &unk_10006A0B8);
    sub_10000221C(&qword_100086950, &qword_10006A078);
    sub_100009F14(&qword_100086960, &qword_100086950, &qword_10006A078);
    sub_100015EA8();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000854A8, &qword_1000852C0, &qword_100066970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000869E8);
  }

  return result;
}

uint64_t sub_100052294@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v140 = a2;
  v110 = a3;
  v4 = sub_1000641F4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v108 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWritingWidgetTimelineEntry();
  v123 = *(started - 8);
  v7 = *(v123 + 64);
  v8 = __chkstk_darwin(started);
  v128 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v107 = &v104 - v11;
  v12 = __chkstk_darwin(v10);
  v109 = &v104 - v13;
  __chkstk_darwin(v12);
  v15 = &v104 - v14;
  v16 = sub_1000021D4(&qword_1000864B0, &unk_10006A390);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = (&v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v22 = &v104 - v21;
  v137 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  v23 = *(*(v137 - 1) + 64);
  __chkstk_darwin(v137);
  v25 = &v104 - v24;
  v26 = sub_100063574();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v121 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = &v104 - v32;
  __chkstk_darwin(v31);
  v134 = &v104 - v34;
  sub_100063564();
  sub_100063544();
  v130 = sub_1000535EC(&qword_1000864D0, &type metadata accessor for Date);
  if ((sub_100064264() & 1) == 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    v20 = sub_10001C110(0, *(v20 + 2) + 1, 1, v20);
LABEL_35:
    v97 = *(v20 + 2);
    v96 = *(v20 + 3);
    v82 = v132;
    if (v97 >= v96 >> 1)
    {
      v20 = sub_10001C110(v96 > 1, v97 + 1, 1, v20);
    }

    sub_10004805C(v82, v136, v135, v33);
    *(v20 + 2) = v97 + 1;
    sub_10005369C(v109, v20 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v97);
    v85 = v111;
    v86 = v116;
    v87 = *(v20 + 2);
    if (v87)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  v105 = v15;
  v35 = v27;
  v36 = v27 + 16;
  v37 = *(v27 + 16);
  v38 = v22;
  v106 = a1;
  v139 = v36;
  v138 = v37;
  v37(v22, a1, v26);
  v39 = *(v35 + 32);
  v40 = &v22[*(v16 + 48)];
  v122 = v33;
  v39(v40, v33, v26);
  v41 = v22;
  v42 = v20;
  sub_1000534B0(v41, v20);
  v43 = *(v16 + 48);
  v39(v25, v20, v26);
  v44 = *(v35 + 8);
  v44(v20 + v43, v26);
  v141 = v38;
  sub_100053520(v38, v20);
  v45 = *(v137 + 9);
  v46 = v42 + *(v16 + 48);
  v120 = v35 + 32;
  v119 = v39;
  v39(&v25[v45], v46, v26);
  v131 = v35 + 8;
  v15 = v44;
  v44(v42, v26);
  v47 = *(v140 + 16);
  if (v47)
  {
    v117 = v42;
    v118 = v16;
    v125 = v45;
    v48 = 0;
    v132 = 0;
    v136 = 0;
    v135 = 0;
    v137 = 0;
    v133 = 0;
    v129 = 0;
    v115 = 0;
    v111 = 0;
    v116 = 0;
    v113 = 0;
    v112 = 0;
    v114 = 0;
    v126 = v140 + 32;
    v140 = v47 - 1;
    v20 = _swiftEmptyArrayStorage;
    v33 = v134;
    v49 = v141;
    v50 = v121;
    while (1)
    {
      v51 = *(v126 + v48 + 16);
      v149 = *(v126 + v48);
      v150 = v51;
      v151 = *(v126 + v48 + 32);
      if (v48)
      {
        v127 = v48;
        v16 = v20;
        v20 = v15;
        sub_10000B264(&v149, &v146);
        v52 = v125;
        v15 = v122;
        sub_100063544();
        if ((sub_100064264() & 1) == 0)
        {
          __break(1u);
          goto LABEL_41;
        }

        v138(v49, &v25[v52], v26);
        sub_100053634(v25);
        v53 = v118;
        v54 = v119;
        v119(v141 + *(v118 + 48), v15, v26);
        v55 = v117;
        sub_1000534B0(v141, v117);
        v56 = *(v53 + 48);
        v54(v25, v55, v26);
        v20(v55 + v56, v26);
        sub_100053520(v141, v55);
        v57 = *(v53 + 48);
        v49 = v141;
        v54(&v25[v52], v55 + v57, v26);
        v33 = v134;
        v58 = v55;
        v15 = v20;
        v20(v58, v26);
        v20 = v16;
        v50 = v121;
        v48 = v127;
      }

      else
      {
        sub_10000B264(&v149, &v146);
      }

      v59 = v25;
      if (sub_100063554() & 1) != 0 || (sub_100064264() & 1) != 0 && (v59 = v33, (sub_100064254()))
      {
        sub_10004805C(v132, v136, v135, v137);
        v138(v50, v59, v26);
        if (!v48)
        {
          sub_10004805C(v115, v111, v116, v113);
          v111 = *(&v149 + 1);
          v115 = v149;
          v113 = *(&v150 + 1);
          v116 = v150;
          v114 = *(&v151 + 1);
          v112 = v151;
          sub_10000B264(&v149, &v146);
        }

        v136 = *(&v149 + 1);
        v132 = v149;
        v137 = *(&v150 + 1);
        v135 = v150;
        v129 = *(&v151 + 1);
        v133 = v151;
        v60 = v128;
        v138(v128, v50, v26);
        v61 = started;
        v62 = *(started + 24);
        v63 = sub_100064204();
        (*(*(v63 - 8) + 56))(v60 + v62, 1, 1, v63);
        v64 = (v60 + *(v61 + 20));
        v65 = v150;
        *v64 = v149;
        v64[1] = v65;
        v64[2] = v151;
        *(v60 + *(v61 + 28)) = 1;
        sub_10000B264(&v149, &v146);
        sub_10000B264(&v149, &v146);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10001C110(0, *(v20 + 2) + 1, 1, v20);
        }

        v67 = *(v20 + 2);
        v66 = *(v20 + 3);
        if (v67 >= v66 >> 1)
        {
          v20 = sub_10001C110(v66 > 1, v67 + 1, 1, v20);
        }

        (v15)(v50, v26);
        sub_1000480AC(&v149);
        *(v20 + 2) = v67 + 1;
        sub_10005369C(v128, v20 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v67);
        v33 = v134;
      }

      else
      {
        sub_1000480AC(&v149);
      }

      if (!v140)
      {
        break;
      }

      v48 += 48;
      --v140;
    }

    v68 = v113;
    if (v113)
    {
      v141 = v20;
      v69 = v33;
      v70 = v115;
      v71 = v111;
      *&v143 = v115;
      *(&v143 + 1) = v111;
      v72 = v116;
      *&v144 = v116;
      *(&v144 + 1) = v113;
      v73 = v114;
      *&v145 = v112;
      *(&v145 + 1) = v114;
      *&v146 = v115;
      *(&v146 + 1) = v111;
      *&v147 = v116;
      *(&v147 + 1) = v113;
      *&v148 = v112;
      *(&v148 + 1) = v114;
      sub_10000B264(&v146, v142);
      if (sub_100063554())
      {
        v115 = v70;
        v74 = v105;
        v138(v105, v69, v26);
        v75 = started;
        v76 = *(started + 24);
        v77 = sub_100064204();
        (*(*(v77 - 8) + 56))(v74 + v76, 1, 1, v77);
        v78 = (v74 + *(v75 + 20));
        v79 = v144;
        *v78 = v143;
        v78[1] = v79;
        v78[2] = v145;
        *(v74 + *(v75 + 28)) = 0;
        sub_10000B264(&v143, v142);
        v20 = v141;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = v137;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = sub_10001C110(0, *(v20 + 2) + 1, 1, v20);
        }

        v82 = v132;
        v84 = *(v20 + 2);
        v83 = *(v20 + 3);
        if (v84 >= v83 >> 1)
        {
          v20 = sub_10001C110(v83 > 1, v84 + 1, 1, v20);
        }

        sub_10004805C(v115, v111, v116, v68);
        *(v20 + 2) = v84 + 1;
        sub_10005369C(v74, v20 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v84);
        if (!v81)
        {
LABEL_28:
          v137 = 0;
          v85 = v111;
          v86 = v116;
          v16 = v133;
          v87 = *(v20 + 2);
          if (v87)
          {
            goto LABEL_38;
          }

          goto LABEL_31;
        }

        goto LABEL_34;
      }

      v115 = v70;
      sub_10004805C(v70, v71, v72, v68);
      v114 = v73;
      v20 = v141;
    }

    v82 = v132;
    if (!v137)
    {
      goto LABEL_28;
    }

LABEL_34:
    *&v146 = v82;
    *(&v146 + 1) = v136;
    *&v147 = v135;
    *(&v147 + 1) = v137;
    v16 = v133;
    *&v148 = v133;
    *(&v148 + 1) = v129;
    v90 = v109;
    v138(v109, &v25[v125], v26);
    v91 = started;
    v92 = *(started + 24);
    v93 = sub_100064204();
    (*(*(v93 - 8) + 56))(v90 + v92, 1, 1, v93);
    v94 = (v90 + *(v91 + 20));
    v95 = v147;
    *v94 = v146;
    v94[1] = v95;
    v94[2] = v148;
    *(v90 + *(v91 + 28)) = 0;
    v132 = v82;
    v33 = v137;
    sub_10004815C(v82, v136, v135, v137);
    sub_10000B264(&v146, &v143);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_35;
  }

  v82 = 0;
  v136 = 0;
  v135 = 0;
  v137 = 0;
  v16 = 0;
  v115 = 0;
  v85 = 0;
  v86 = 0;
  v113 = 0;
  v112 = 0;
  v114 = 0;
  v20 = _swiftEmptyArrayStorage;
  v87 = _swiftEmptyArrayStorage[2];
  if (v87)
  {
LABEL_38:
    v98 = v20 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * (v87 - 1);
    v116 = v86;
    v99 = v107;
    sub_100003920(v98, v107);
    v133 = v16;
    v100 = v122;
    v138(v122, v99, v26);
    sub_100053590(v99);
    sub_1000641D4();
    sub_1000535EC(&qword_100084E38, type metadata accessor for StartWritingWidgetTimelineEntry);
    v101 = v82;
    v89 = v110;
    sub_100064224();
    sub_10004805C(v115, v85, v116, v113);
    sub_10004805C(v101, v136, v135, v137);
    (v15)(v100, v26);
    sub_100053634(v25);
    (v15)(v134, v26);
    v88 = 0;
    goto LABEL_39;
  }

LABEL_31:
  sub_10004805C(v82, v136, v135, v137);
  sub_10004805C(v115, v85, v86, v113);
  sub_100053634(v25);
  (v15)(v134, v26);

  v88 = 1;
  v89 = v110;
LABEL_39:
  v102 = sub_1000021D4(&qword_100084E48, &unk_10006A3A0);
  return (*(*(v102 - 8) + 56))(v89, v88, 1, v102);
}

unint64_t sub_10005345C()
{
  result = qword_100086A88;
  if (!qword_100086A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086A88);
  }

  return result;
}

uint64_t sub_1000534B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_1000864B0, &unk_10006A390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_1000864B0, &unk_10006A390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053590(uint64_t a1)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry();
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_1000535EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100053634(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005369C(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_100053714(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry();
  v5 = *(*(started - 8) + 48);

  return v5(a1, a2, started);
}

uint64_t sub_100053794(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry();
  v5 = *(*(started - 8) + 56);

  return v5(a1, a2, a2, started);
}

uint64_t type metadata accessor for StartWritingWidgetAccessoryRectangularView()
{
  result = qword_100086AE8;
  if (!qword_100086AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_10005386C@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1000021D4(&qword_100086B20, &qword_10006A430);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v12 - v5;
  *v6 = sub_100063A84();
  *(v6 + 1) = 0x4000000000000000;
  v6[16] = 0;
  v7 = sub_1000021D4(&qword_100086B28, &qword_10006A438);
  sub_1000539B4(v1, &v6[*(v7 + 44)]);
  sub_100064074();
  sub_100063874();
  sub_100053D60(v6, a1);
  v8 = a1 + *(sub_1000021D4(&qword_100086B30, &qword_10006A440) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_1000539B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a1;
  v41 = a2;
  v2 = type metadata accessor for WidgetHeaderView();
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v5 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000021D4(&qword_100086B38, &qword_10006A448);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = &v39 - v11;
  if (qword_100084490 != -1)
  {
    swift_once();
  }

  v43 = qword_100090330;
  v44 = *algn_100090338;
  sub_100002264();

  v12 = sub_100063E14();
  v14 = v13;
  v16 = v15;
  v18 = v17 & 1;
  *v5 = swift_getKeyPath();
  sub_1000021D4(&qword_100084C00, &qword_100066BB0);
  swift_storeEnumTagMultiPayload();
  v19 = v2[5];
  *(v5 + v19) = swift_getKeyPath();
  sub_1000021D4(&qword_100085318, &qword_100066A08);
  swift_storeEnumTagMultiPayload();
  v20 = v2[6];
  *(v5 + v20) = swift_getKeyPath();
  sub_1000021D4(&qword_1000853F0, &qword_100067EB0);
  swift_storeEnumTagMultiPayload();
  v21 = (v5 + v2[7]);
  *v21 = v12;
  v21[1] = v14;
  v21[2] = v18;
  v21[3] = v16;
  sub_1000540CC();
  v22 = v42;
  sub_100063EA4();
  sub_100054124(v5);
  v23 = v40 + *(type metadata accessor for StartWritingWidgetTimelineEntry() + 20);
  v24 = *(v23 + 24);
  v43 = *(v23 + 16);
  v44 = v24;

  v25 = sub_100063E14();
  v27 = v26;
  LODWORD(v40) = v28;
  v30 = v29;
  LODWORD(v20) = sub_100063BA4();
  v31 = v39;
  v32 = *(v39 + 16);
  v32(v10, v22, v6);
  v33 = v10;
  v34 = v41;
  v32(v41, v33, v6);
  v35 = &v34[*(sub_1000021D4(&qword_100086B40, &qword_10006A4F8) + 48)];
  *v35 = v25;
  *(v35 + 1) = v27;
  v36 = v40;
  LOBYTE(v18) = v40 & 1;
  v35[16] = v40 & 1;
  *(v35 + 3) = v30;
  *(v35 + 8) = v20;
  sub_10004E5E4(v25, v27, v36 & 1);
  v37 = *(v31 + 8);

  v37(v42, v6);
  sub_100016708(v25, v27, v18);

  return (v37)(v33, v6);
}

uint64_t sub_100053D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100086B20, &qword_10006A430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100063D94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000021D4(&qword_100086B58, &qword_10006A560);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  sub_100063D14();
  (*(v5 + 104))(v8, enum case for Font.Leading.tight(_:), v4);
  v13 = sub_100063DA4();

  (*(v5 + 8))(v8, v4);
  KeyPath = swift_getKeyPath();
  v15 = sub_1000021D4(&qword_100086B60, &unk_10006A598);
  (*(*(v15 - 8) + 16))(v12, a1, v15);
  v16 = &v12[*(v9 + 36)];
  *v16 = KeyPath;
  v16[1] = v13;
  sub_100063D54();
  sub_100054270();
  sub_100063E84();
  sub_100054354(v12);
  v17 = swift_getKeyPath();
  v18 = a2 + *(sub_1000021D4(&qword_100086B78, &qword_10006A5D8) + 36);
  *v18 = v17;
  *(v18 + 8) = 2;
  *(v18 + 16) = 0;
  v19 = swift_getKeyPath();
  v20 = (a2 + *(sub_1000021D4(&qword_100086B80, &qword_10006A610) + 36));
  *v20 = v19;
  v20[1] = 0x3FE8A3D70A3D70A4;
  result = sub_1000021D4(&qword_100086B88, &qword_10006A618);
  *(a2 + *(result + 36)) = 256;
  return result;
}

unint64_t sub_1000540CC()
{
  result = qword_100085490;
  if (!qword_100085490)
  {
    type metadata accessor for WidgetHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085490);
  }

  return result;
}

uint64_t sub_100054124(uint64_t a1)
{
  v2 = type metadata accessor for WidgetHeaderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100054194()
{
  result = qword_100086B48;
  if (!qword_100086B48)
  {
    sub_10000221C(&qword_100086B30, &qword_10006A440);
    sub_100009F14(&qword_100086B50, &qword_100086B20, &qword_10006A430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086B48);
  }

  return result;
}

unint64_t sub_100054270()
{
  result = qword_100086B68;
  if (!qword_100086B68)
  {
    sub_10000221C(&qword_100086B58, &qword_10006A560);
    sub_100009F14(&qword_100086B70, &qword_100086B60, &unk_10006A598);
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086B68);
  }

  return result;
}

uint64_t sub_100054354(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100086B58, &qword_10006A560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000543D0()
{
  result = qword_100086B90;
  if (!qword_100086B90)
  {
    sub_10000221C(&qword_100086B88, &qword_10006A618);
    sub_10005445C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086B90);
  }

  return result;
}

unint64_t sub_10005445C()
{
  result = qword_100086B98;
  if (!qword_100086B98)
  {
    sub_10000221C(&qword_100086B80, &qword_10006A610);
    sub_100054514();
    sub_100009F14(&qword_1000853C0, &qword_1000853C8, &qword_100066B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086B98);
  }

  return result;
}

unint64_t sub_100054514()
{
  result = qword_100086BA0;
  if (!qword_100086BA0)
  {
    sub_10000221C(&qword_100086B78, &qword_10006A5D8);
    sub_10000221C(&qword_100086B58, &qword_10006A560);
    sub_100054270();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000867F8, &qword_100086800, &unk_10006A620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BA0);
  }

  return result;
}

uint64_t sub_100054608()
{
  sub_1000642C4();
}

uint64_t sub_100054780()
{
  v0 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000633F4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000635E4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100064294();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100063404();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100063244();
  sub_100009DBC(v15, qword_100090DE8);
  sub_1000049B4(v15, qword_100090DE8);
  sub_100064284();
  sub_1000635D4();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_100063414();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100063234();
}

uint64_t sub_100054A70()
{
  v0 = sub_1000021D4(&qword_100086C20, &qword_10006A990);
  sub_100009DBC(v0, qword_100090E00);
  sub_1000049B4(v0, qword_100090E00);
  sub_1000021D4(&qword_100086C28, &qword_10006A998);
  v1 = sub_1000021D4(&qword_100086C30, &qword_10006A9A0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10006A630;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  *(v4 + v3) = 0;
  sub_10000DF54();
  sub_100063144();
  v7 = *(v1 + 48);
  *(v5 + v2) = 1;
  sub_100063144();
  v8 = *(v1 + 48);
  *(v5 + 2 * v2) = 2;
  sub_100063144();
  v9 = *(v1 + 48);
  *(v5 + 3 * v2) = 3;
  sub_100063144();
  v10 = *(v1 + 48);
  *(v5 + 4 * v2) = 4;
  sub_100063144();
  v11 = *(v1 + 48);
  *(v5 + 5 * v2) = 5;
  sub_100063144();
  v12 = *(v1 + 48);
  *(v5 + 6 * v2) = 6;
  sub_100063144();
  v13 = *(v1 + 48);
  *(v5 + 7 * v2) = 7;
  sub_100063144();
  v14 = *(v1 + 48);
  *(v5 + 8 * v2) = 8;
  sub_100063144();
  sub_100057F78(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_100063154();
}

uint64_t sub_100054DE0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1953460082;
    v6 = 0x7972746E45646461;
    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x72756F4A6B636F6CLL;
    v2 = 0x68506F5465766173;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 4)
    {
      v3 = 0x6163696669746F6ELL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_100054F34()
{
  result = qword_100086BA8;
  if (!qword_100086BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BA8);
  }

  return result;
}

Swift::Int sub_100054F88()
{
  v1 = *v0;
  sub_1000645B4();
  sub_100054608();
  return sub_1000645E4();
}

Swift::Int sub_100054FD8()
{
  v1 = *v0;
  sub_1000645B4();
  sub_100054608();
  return sub_1000645E4();
}

uint64_t sub_10005501C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005816C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10005504C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100054DE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100055080()
{
  result = qword_100086BB0;
  if (!qword_100086BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BB0);
  }

  return result;
}

uint64_t sub_1000550D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000849D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000021D4(&qword_100086C20, &qword_10006A990);
  v3 = sub_1000049B4(v2, qword_100090E00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10005518C()
{
  result = qword_100086BB8;
  if (!qword_100086BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BB8);
  }

  return result;
}

unint64_t sub_1000551E4()
{
  result = qword_100086BC0;
  if (!qword_100086BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BC0);
  }

  return result;
}

uint64_t sub_100055244()
{
  sub_10000E050();
  v1 = sub_1000630C4();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000552B4()
{
  result = qword_100086BC8;
  if (!qword_100086BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BC8);
  }

  return result;
}

unint64_t sub_10005530C()
{
  result = qword_100086BD0;
  if (!qword_100086BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BD0);
  }

  return result;
}

unint64_t sub_100055368()
{
  result = qword_100086BD8;
  if (!qword_100086BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BD8);
  }

  return result;
}

uint64_t sub_1000553BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000849D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100063244();
  v3 = sub_1000049B4(v2, qword_100090DE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000554B4(uint64_t a1)
{
  v2 = sub_10000DF54();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100055504()
{
  result = qword_100086BE0;
  if (!qword_100086BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BE0);
  }

  return result;
}

unint64_t sub_10005555C()
{
  result = qword_100086BE8;
  if (!qword_100086BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BE8);
  }

  return result;
}

unint64_t sub_1000555B4()
{
  result = qword_100086BF0;
  if (!qword_100086BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BF0);
  }

  return result;
}

uint64_t sub_10005560C(uint64_t a1)
{
  v2 = sub_100055368();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10005565C()
{
  result = qword_100086BF8;
  if (!qword_100086BF8)
  {
    sub_10000221C(&qword_100086C00, &qword_10006A900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JournalSettingsDeepLinks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JournalSettingsDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100055820(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1000645B4();
  sub_100054608();
  v4 = sub_1000645E4();

  return sub_10005588C(a1, v4);
}

unint64_t sub_10005588C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      if (v6 <= 3)
      {
        if (v6 == 2)
        {
          v9 = 0xD000000000000012;
        }

        else
        {
          v9 = 0x7972746E45646461;
        }

        if (v6 == 2)
        {
          v10 = 0x800000010006B3D0;
        }

        else
        {
          v10 = 0xED0000656C746954;
        }

        v11 = 0xD000000000000014;
        if (*(*(v27 + 48) + v4))
        {
          v12 = 0x800000010006B3B0;
        }

        else
        {
          v11 = 1953460082;
          v12 = 0xE400000000000000;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v7 = v11;
        }

        else
        {
          v7 = v9;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        if (v6 == 4)
        {
          v7 = 0xD000000000000013;
          v8 = 0x800000010006B400;
        }

        else
        {
          v7 = 0x6163696669746F6ELL;
          v8 = 0xED0000736E6F6974;
        }
      }

      else if (v6 == 6)
      {
        v7 = 0x72756F4A6B636F6CLL;
        v8 = 0xEB000000006C616ELL;
      }

      else if (v6 == 7)
      {
        v7 = 0x68506F5465766173;
        v8 = 0xEC000000736F746FLL;
      }

      else
      {
        v7 = 0xD000000000000011;
        v8 = 0x800000010006B430;
      }

      v13 = 0x68506F5465766173;
      if (v5 != 7)
      {
        v13 = 0xD000000000000011;
      }

      v14 = 0xEC000000736F746FLL;
      if (v5 != 7)
      {
        v14 = 0x800000010006B430;
      }

      if (v5 == 6)
      {
        v13 = 0x72756F4A6B636F6CLL;
        v14 = 0xEB000000006C616ELL;
      }

      v15 = 0xD000000000000013;
      if (v5 != 4)
      {
        v15 = 0x6163696669746F6ELL;
      }

      v16 = 0xED0000736E6F6974;
      if (v5 == 4)
      {
        v16 = 0x800000010006B400;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0xD000000000000012;
      }

      else
      {
        v17 = 0x7972746E45646461;
      }

      if (v5 == 2)
      {
        v18 = 0x800000010006B3D0;
      }

      else
      {
        v18 = 0xED0000656C746954;
      }

      v19 = 0xD000000000000014;
      if (v5)
      {
        v20 = 0x800000010006B3B0;
      }

      else
      {
        v19 = 1953460082;
        v20 = 0xE400000000000000;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v7 == v21 && v8 == v22)
      {
        break;
      }

      v23 = sub_100064594();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100055BB0(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100086C10, &unk_10006A978);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000021D4(&qword_100086C18, &qword_10006A988);
    v8 = sub_100064484();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100016718(v10, v6, &qword_100086C10, &unk_10006A978);
      v12 = *v6;
      result = sub_100055820(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100063134();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100055D98()
{
  v0 = sub_1000021D4(&qword_100084DB8, "̷");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v108 = &v71 - v2;
  v3 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v107 = &v71 - v5;
  v86 = sub_1000633F4();
  v6 = *(v86 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v86);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000635E4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100064294();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v103 = sub_100063404();
  v14 = *(v103 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v103);
  v100 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v99 = &v71 - v18;
  sub_1000021D4(&qword_100086C08, &qword_10006A970);
  v19 = sub_1000021D4(&qword_100086C10, &unk_10006A978);
  v104 = v19;
  v20 = *(v19 - 8);
  v88 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v80 = 8 * v88;
  v22 = swift_allocObject();
  v79 = v22;
  *(v22 + 16) = xmmword_10006A630;
  v102 = v22 + v21;
  v84 = *(v19 + 48);
  *(v22 + v21) = 0;
  sub_100064284();
  sub_1000635D4();
  v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v25 = v6 + 104;
  v24 = *(v6 + 104);
  v83 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v26 = v86;
  v24(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v86);
  v105 = v25;
  v106 = v24;
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v24(v9, v23, v26);
  v27 = v107;
  sub_100063414();
  v90 = *(v14 + 56);
  v90(v27, 0, 1, v103);
  v98 = "representation for App Intents";
  v91 = 0xD000000000000011;
  v28 = v108;
  sub_100063104();
  v96 = sub_100063114();
  v29 = *(v96 - 8);
  v95 = *(v29 + 56);
  v97 = v29 + 56;
  v95(v28, 0, 1, v96);
  v94 = sub_1000021D4(&qword_100084DC0, &qword_1000659B0);
  v92 = v14 + 56;
  v101 = *(v14 + 72);
  v93 = *(v14 + 80);
  v89 = (v93 + 32) & ~v93;
  v85 = (2 * v101);
  v30 = swift_allocObject();
  v82 = xmmword_100065BA0;
  v78 = v30;
  *(v30 + 16) = xmmword_100065BA0;
  *&v81 = 0xD000000000000017;
  sub_100064284();
  sub_1000635D4();
  v31 = v83;
  v32 = v86;
  v33 = v106;
  v106(v9, v83, v86);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v33(v9, v31, v32);
  v87 = "Always Use Moment Date";
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v33(v9, v31, v32);
  sub_100063414();
  v34 = v102;
  v35 = v107;
  sub_100063124();
  v75 = v34 + v88;
  v78 = *(v104 + 48);
  *v75 = 1;
  v76 = 0xD000000000000016;
  sub_100064284();
  sub_1000635D4();
  v33(v9, v31, v32);
  sub_100063414();
  v84 = " for App Intents";
  sub_100064284();
  sub_1000635D4();
  v33(v9, v31, v32);
  sub_100063414();
  v90(v35, 0, 1, v103);
  v36 = v108;
  sub_100063104();
  v95(v36, 0, 1, v96);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_100066C80;
  sub_100064284();
  sub_1000635D4();
  v37 = v83;
  v38 = v106;
  v106(v9, v83, v32);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v38(v9, v37, v32);
  sub_100063414();
  v77 = 0xD000000000000010;
  sub_100064284();
  sub_1000635D4();
  v38(v9, v37, v32);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v38(v9, v37, v32);
  sub_100063414();
  v39 = v107;
  sub_100063124();
  v75 = 2 * v88;
  v73 = (v102 + 2 * v88);
  v74 = *(v104 + 48);
  *v73 = 2;
  v78 = 0xD000000000000014;
  sub_100064284();
  sub_1000635D4();
  v38(v9, v37, v32);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v38(v9, v37, v32);
  sub_100063414();
  v90(v39, 0, 1, v103);
  v40 = v108;
  sub_100063104();
  v95(v40, 0, 1, v96);
  v72 = swift_allocObject();
  *(v72 + 16) = v82;
  sub_100064284();
  sub_1000635D4();
  v41 = v83;
  v42 = v106;
  v106(v9, v83, v32);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v42(v9, v41, v32);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v42(v9, v41, v32);
  v43 = v42;
  sub_100063414();
  v44 = v107;
  sub_100063124();
  v74 = v102 + v75 + v88;
  v75 = *(v104 + 48);
  *v74 = 3;
  sub_100064284();
  sub_1000635D4();
  v43(v9, v41, v32);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v43(v9, v41, v32);
  sub_100063414();
  v90(v44, 0, 1, v103);
  v45 = v108;
  sub_100063104();
  v95(v45, 0, 1, v96);
  v46 = swift_allocObject();
  v81 = xmmword_100064BC0;
  *(v46 + 16) = xmmword_100064BC0;
  sub_100064284();
  sub_1000635D4();
  v47 = v106;
  v106(v9, v41, v32);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v47(v9, v41, v32);
  sub_100063414();
  sub_100063124();
  v75 = 4 * v88;
  v73 = (v102 + 4 * v88);
  v74 = *(v104 + 48);
  *v73 = 4;
  sub_100064284();
  sub_1000635D4();
  v47(v9, v41, v32);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v47(v9, v41, v32);
  v48 = v107;
  sub_100063414();
  v90(v48, 0, 1, v103);
  v49 = v108;
  sub_100063104();
  v95(v49, 0, 1, v96);
  *(swift_allocObject() + 16) = v81;
  sub_100064284();
  sub_1000635D4();
  v47(v9, v41, v32);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v47(v9, v41, v32);
  sub_100063414();
  v50 = v107;
  sub_100063124();
  v75 += v102 + v88;
  v76 = *(v104 + 48);
  *v75 = 5;
  sub_100064284();
  sub_1000635D4();
  v51 = v106;
  v106(v9, v41, v32);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v51(v9, v41, v32);
  sub_100063414();
  v90(v50, 0, 1, v103);
  v52 = v108;
  sub_100063104();
  v95(v52, 0, 1, v96);
  *(swift_allocObject() + 16) = v82;
  sub_100064284();
  sub_1000635D4();
  v53 = v83;
  v54 = v86;
  v55 = v106;
  v106(v9, v83, v86);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v55(v9, v53, v54);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v55(v9, v53, v54);
  sub_100063414();
  v56 = v107;
  sub_100063124();
  v76 = v102 + 6 * v88;
  v77 = *(v104 + 48);
  *v76 = 6;
  sub_100064284();
  sub_1000635D4();
  v57 = v86;
  v58 = v106;
  v106(v9, v53, v86);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v58(v9, v53, v57);
  sub_100063414();
  v90(v56, 0, 1, v103);
  v59 = v108;
  sub_100063104();
  v95(v59, 0, 1, v96);
  *(swift_allocObject() + 16) = v81;
  sub_100064284();
  sub_1000635D4();
  v60 = v86;
  v61 = v106;
  v106(v9, v53, v86);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v61(v9, v53, v60);
  sub_100063414();
  sub_100063124();
  v77 = v102 + v80 - v88;
  v88 = *(v104 + 48);
  *v77 = 7;
  sub_100064284();
  sub_1000635D4();
  v61(v9, v53, v60);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v61(v9, v53, v60);
  v62 = v107;
  sub_100063414();
  v90(v62, 0, 1, v103);
  v63 = v108;
  sub_100063104();
  v95(v63, 0, 1, v96);
  *(swift_allocObject() + 16) = v82;
  sub_100064284();
  sub_1000635D4();
  v64 = v106;
  v106(v9, v53, v60);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v64(v9, v53, v60);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v64(v9, v53, v60);
  sub_100063414();
  v65 = v107;
  sub_100063124();
  v85 = (v102 + v80);
  v88 = *(v104 + 48);
  *v85 = 8;
  sub_100064284();
  sub_1000635D4();
  v66 = v86;
  v64(v9, v53, v86);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v64(v9, v53, v66);
  sub_100063414();
  v90(v65, 0, 1, v103);
  v67 = v108;
  sub_100063104();
  v95(v67, 0, 1, v96);
  *(swift_allocObject() + 16) = v81;
  sub_100064284();
  sub_1000635D4();
  v68 = v106;
  v106(v9, v53, v66);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v68(v9, v53, v66);
  sub_100063414();
  sub_100063124();
  v69 = sub_100055BB0(v79);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v69;
}

unint64_t sub_100057F78(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100086C30, &qword_10006A9A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000021D4(&qword_100086C38, &qword_10006A9A8);
    v8 = sub_100064484();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100016718(v10, v6, &qword_100086C30, &qword_10006A9A0);
      v12 = *v6;
      result = sub_100055820(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1000021D4(&qword_100086C40, &unk_10006A9B0);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10005816C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100082540;
  v6._object = a2;
  v4 = sub_100064494(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000581C0()
{
  v648 = sub_1000635E4();
  v0 = *(v648 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v648);
  v3 = &v620 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000021D4(&qword_100086C48, &unk_10006AA00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100066C90;
  if (qword_1000844B8 != -1)
  {
    swift_once();
  }

  v6 = *algn_100090388;
  *(v5 + 32) = qword_100090380;
  *(v5 + 40) = v6;
  v7 = qword_1000844C0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *algn_100090398;
  *(v5 + 48) = qword_100090390;
  *(v5 + 56) = v8;
  v9 = qword_1000844C8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *algn_1000903A8;
  *(v5 + 64) = qword_1000903A0;
  *(v5 + 72) = v10;
  v11 = qword_1000844D0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = *algn_1000903B8;
  *(v5 + 80) = qword_1000903B0;
  *(v5 + 88) = v12;
  v13 = qword_1000844D8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = *algn_1000903C8;
  *(v5 + 96) = qword_1000903C0;
  *(v5 + 104) = v14;
  v15 = qword_1000844E0;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = *algn_1000903D8;
  *(v5 + 112) = qword_1000903D0;
  *(v5 + 120) = v16;
  v17 = qword_1000844E8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = *algn_1000903E8;
  *(v5 + 128) = qword_1000903E0;
  *(v5 + 136) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10006A9C0;
  v20 = qword_1000844F0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = *algn_1000903F8;
  *(v19 + 32) = qword_1000903F0;
  *(v19 + 40) = v21;
  v22 = qword_1000844F8;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = *algn_100090408;
  *(v19 + 48) = qword_100090400;
  *(v19 + 56) = v23;
  v24 = qword_100084500;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = *algn_100090418;
  *(v19 + 64) = qword_100090410;
  *(v19 + 72) = v25;
  v26 = qword_100084508;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = *algn_100090428;
  *(v19 + 80) = qword_100090420;
  *(v19 + 88) = v27;
  v28 = qword_100084510;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = *algn_100090438;
  *(v19 + 96) = qword_100090430;
  *(v19 + 104) = v29;
  v30 = qword_100084518;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = *algn_100090448;
  *(v19 + 112) = qword_100090440;
  *(v19 + 120) = v31;
  v32 = qword_100084520;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = *algn_100090458;
  *(v19 + 128) = qword_100090450;
  *(v19 + 136) = v33;
  v34 = qword_100084528;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = *algn_100090468;
  *(v19 + 144) = qword_100090460;
  *(v19 + 152) = v35;
  v36 = qword_100084530;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = *algn_100090478;
  *(v19 + 160) = qword_100090470;
  *(v19 + 168) = v37;
  v38 = qword_100084538;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = *algn_100090488;
  *(v19 + 176) = qword_100090480;
  *(v19 + 184) = v39;
  v40 = qword_100084540;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = *algn_100090498;
  *(v19 + 192) = qword_100090490;
  *(v19 + 200) = v41;
  v42 = swift_allocObject();
  v645 = xmmword_100065AC0;
  *(v42 + 16) = xmmword_100065AC0;
  v43 = qword_100084548;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = *algn_1000904A8;
  *(v42 + 32) = qword_1000904A0;
  *(v42 + 40) = v44;
  v45 = qword_100084550;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = *algn_1000904B8;
  *(v42 + 48) = qword_1000904B0;
  *(v42 + 56) = v46;
  v47 = qword_100084558;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = *algn_1000904C8;
  *(v42 + 64) = qword_1000904C0;
  *(v42 + 72) = v48;
  v49 = qword_100084560;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = *algn_1000904D8;
  *(v42 + 80) = qword_1000904D0;
  *(v42 + 88) = v50;
  v51 = qword_100084568;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = *algn_1000904E8;
  *(v42 + 96) = qword_1000904E0;
  *(v42 + 104) = v52;
  v53 = qword_100084570;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = *algn_1000904F8;
  *(v42 + 112) = qword_1000904F0;
  *(v42 + 120) = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = v645;
  v56 = qword_100084578;

  if (v56 != -1)
  {
    swift_once();
  }

  v57 = *algn_100090508;
  *(v55 + 32) = qword_100090500;
  *(v55 + 40) = v57;
  v58 = qword_100084580;

  if (v58 != -1)
  {
    swift_once();
  }

  v59 = *algn_100090518;
  *(v55 + 48) = qword_100090510;
  *(v55 + 56) = v59;
  v60 = qword_100084588;

  if (v60 != -1)
  {
    swift_once();
  }

  v61 = *algn_100090528;
  *(v55 + 64) = qword_100090520;
  *(v55 + 72) = v61;
  v62 = qword_100084590;

  if (v62 != -1)
  {
    swift_once();
  }

  v63 = *algn_100090538;
  *(v55 + 80) = qword_100090530;
  *(v55 + 88) = v63;
  v64 = qword_100084598;

  if (v64 != -1)
  {
    swift_once();
  }

  v639 = v42;
  v65 = *algn_100090548;
  *(v55 + 96) = qword_100090540;
  *(v55 + 104) = v65;
  v66 = qword_1000845A0;

  if (v66 != -1)
  {
    swift_once();
  }

  v67 = *algn_100090558;
  *(v55 + 112) = qword_100090550;
  *(v55 + 120) = v67;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100066C60;
  v69 = qword_1000845A8;

  if (v69 != -1)
  {
    swift_once();
  }

  v70 = *algn_100090568;
  *(v68 + 32) = qword_100090560;
  *(v68 + 40) = v70;
  v71 = qword_1000845B0;

  if (v71 != -1)
  {
    swift_once();
  }

  v72 = *algn_100090578;
  v625 = qword_100090570;
  *(v68 + 48) = qword_100090570;
  *(v68 + 56) = v72;
  v73 = qword_1000845B8;

  if (v73 != -1)
  {
    swift_once();
  }

  v638 = v55;
  v74 = *algn_100090588;
  v627 = qword_100090580;
  *(v68 + 64) = qword_100090580;
  *(v68 + 72) = v74;
  v75 = qword_1000845C0;
  v626 = v74;

  if (v75 != -1)
  {
    swift_once();
  }

  v636 = v72;
  v76 = *algn_100090598;
  v629 = qword_100090590;
  *(v68 + 80) = qword_100090590;
  *(v68 + 88) = v76;
  v77 = qword_1000845C8;

  if (v77 != -1)
  {
    swift_once();
  }

  v78 = *algn_1000905A8;
  v630 = qword_1000905A0;
  v79 = qword_1000845D0;

  if (v79 != -1)
  {
    swift_once();
  }

  v641 = v19;
  v631 = qword_1000905B0;
  v80 = qword_1000845D8;
  v643 = *algn_1000905B8;

  if (v80 != -1)
  {
    swift_once();
  }

  v628 = v76;
  v640 = v68;
  *&v644 = v78;
  v642 = v4;
  v647 = v3;
  v632 = qword_1000905C0;
  v81 = qword_1000845E0;
  v637 = *algn_1000905C8;

  if (v81 != -1)
  {
    swift_once();
  }

  v634 = qword_1000905D0;
  v673 = &_swiftEmptyArrayStorage;
  v635 = *algn_1000905D8;

  sub_100040E44(0, 7, 0);
  v82 = 0;
  v83 = v673;
  v650 = (v0 + 8);
  v633 = v5;
  v84 = (v5 + 40);
  do
  {
    v85 = *v84;
    v646 = *(v84 - 1);

    v86 = v647;
    sub_1000635D4();
    LOBYTE(v672) = 0;
    v87 = sub_1000635B4();
    v89 = v88;
    v90 = *v650;

    v649 = v90;
    v90(v86, v648);

    v91 = v672;
    v673 = v83;
    v93 = v83[2];
    v92 = v83[3];
    if (v93 >= v92 >> 1)
    {
      sub_100040E44((v92 > 1), v93 + 1, 1);
      v83 = v673;
    }

    v83[2] = v93 + 1;
    v94 = &v83[6 * v93];
    v94[4] = v82;
    *(v94 + 40) = v91;
    *(v94 + 41) = 258;
    *(v94 + 43) = 0;
    v94[6] = v646;
    v94[7] = v85;
    v94[8] = v87;
    v94[9] = v89;
    v84 += 2;
    ++v82;
  }

  while (v82 != 7);
  v624 = v83;

  v672 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 11, 0);
  v95 = 0;
  v96 = v672;
  v97 = v641 + 5;
  do
  {
    v98 = *v97;
    v646 = *(v97 - 1);

    v99 = v647;
    sub_1000635D4();
    LOBYTE(v671) = 0;
    v100 = sub_1000635B4();
    v102 = v101;

    v649(v99, v648);

    v103 = v671;
    v672 = v96;
    v105 = *(v96 + 16);
    v104 = *(v96 + 24);
    if (v105 >= v104 >> 1)
    {
      sub_100040E44((v104 > 1), v105 + 1, 1);
      v96 = v672;
    }

    *(v96 + 16) = v105 + 1;
    v106 = v96 + 48 * v105;
    *(v106 + 32) = v95;
    *(v106 + 40) = v103;
    *(v106 + 41) = 2;
    *(v106 + 43) = 0;
    *(v106 + 48) = v646;
    *(v106 + 56) = v98;
    *(v106 + 64) = v100;
    *(v106 + 72) = v102;
    v97 += 2;
    ++v95;
  }

  while (v95 != 11);

  v671 = v624;
  sub_10005CDBC(v96);
  sub_10005CDBC(&_swiftEmptyArrayStorage);
  v641 = v671;
  v671 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 6, 0);
  v107 = 0;
  v108 = v671;
  v109 = (v639 + 40);
  do
  {
    v110 = *v109;
    v646 = *(v109 - 1);

    v111 = v647;
    sub_1000635D4();
    LOBYTE(v670) = 0;
    v112 = sub_1000635B4();
    v114 = v113;

    v649(v111, v648);

    v115 = v670;
    v671 = v108;
    v117 = *(v108 + 16);
    v116 = *(v108 + 24);
    if (v117 >= v116 >> 1)
    {
      sub_100040E44((v116 > 1), v117 + 1, 1);
      v108 = v671;
    }

    *(v108 + 16) = v117 + 1;
    v118 = v108 + 48 * v117;
    *(v118 + 32) = v107;
    *(v118 + 40) = v115;
    *(v118 + 41) = 257;
    *(v118 + 43) = 0;
    *(v118 + 48) = v646;
    *(v118 + 56) = v110;
    *(v118 + 64) = v112;
    *(v118 + 72) = v114;
    v109 += 2;
    ++v107;
  }

  while (v107 != 6);

  v670 = v641;
  sub_10005CDBC(v108);
  v641 = v670;
  v670 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 6, 0);
  v119 = 0;
  v120 = v670;
  v121 = (v638 + 40);
  do
  {
    v122 = *v121;
    v646 = *(v121 - 1);

    v123 = v647;
    sub_1000635D4();
    LOBYTE(v669) = 0;
    v124 = sub_1000635B4();
    v126 = v125;

    v649(v123, v648);

    v127 = v669;
    v670 = v120;
    v129 = *(v120 + 16);
    v128 = *(v120 + 24);
    if (v129 >= v128 >> 1)
    {
      sub_100040E44((v128 > 1), v129 + 1, 1);
      v120 = v670;
    }

    *(v120 + 16) = v129 + 1;
    v130 = v120 + 48 * v129;
    *(v130 + 32) = v119;
    *(v130 + 40) = v127;
    *(v130 + 41) = 1;
    *(v130 + 43) = 0;
    *(v130 + 48) = v646;
    *(v130 + 56) = v122;
    *(v130 + 64) = v124;
    *(v130 + 72) = v126;
    v121 += 2;
    ++v119;
  }

  while (v119 != 6);

  v669 = v641;
  sub_10005CDBC(v120);
  sub_10005CDBC(&_swiftEmptyArrayStorage);
  v646 = v669;
  v669 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 4, 0);
  v131 = v669;
  v132 = *(v640 + 40);
  v641 = *(v640 + 32);

  v133 = v647;
  sub_1000635D4();
  LOBYTE(v668) = 0;
  v134 = sub_1000635B4();
  v136 = v135;

  v137 = v648;
  v649(v133, v648);

  v138 = v668;
  v669 = v131;
  v140 = *(v131 + 16);
  v139 = *(v131 + 24);
  if (v140 >= v139 >> 1)
  {
    sub_100040E44((v139 > 1), v140 + 1, 1);
    v131 = v669;
  }

  *(v131 + 16) = v140 + 1;
  v141 = v131 + 48 * v140;
  *(v141 + 32) = 0;
  *(v141 + 40) = v138;
  *(v141 + 41) = 256;
  *(v141 + 43) = 0;
  *(v141 + 48) = v641;
  *(v141 + 56) = v132;
  *(v141 + 64) = v134;
  *(v141 + 72) = v136;
  v142 = v636;

  sub_1000635D4();
  LOBYTE(v668) = 0;
  v143 = v142;
  v144 = sub_1000635B4();
  v146 = v145;

  v649(v133, v137);

  v147 = v668;
  v669 = v131;
  v149 = *(v131 + 16);
  v148 = *(v131 + 24);
  if (v149 >= v148 >> 1)
  {
    sub_100040E44((v148 > 1), v149 + 1, 1);
    v143 = v636;
    v131 = v669;
  }

  *(v131 + 16) = v149 + 1;
  v150 = v131 + 48 * v149;
  *(v150 + 32) = 1;
  *(v150 + 40) = v147;
  *(v150 + 41) = 256;
  *(v150 + 43) = 0;
  *(v150 + 48) = v625;
  *(v150 + 56) = v143;
  *(v150 + 64) = v144;
  *(v150 + 72) = v146;
  v151 = v626;

  sub_1000635D4();
  LOBYTE(v668) = 0;
  v152 = sub_1000635B4();
  v154 = v153;

  v649(v133, v137);

  v155 = v668;
  v669 = v131;
  v157 = *(v131 + 16);
  v156 = *(v131 + 24);
  if (v157 >= v156 >> 1)
  {
    sub_100040E44((v156 > 1), v157 + 1, 1);
    v131 = v669;
  }

  *(v131 + 16) = v157 + 1;
  v158 = v131 + 48 * v157;
  *(v158 + 32) = 2;
  *(v158 + 40) = v155;
  *(v158 + 41) = 256;
  *(v158 + 43) = 0;
  *(v158 + 48) = v627;
  *(v158 + 56) = v151;
  *(v158 + 64) = v152;
  *(v158 + 72) = v154;
  v159 = v628;

  sub_1000635D4();
  LOBYTE(v668) = 0;
  v160 = sub_1000635B4();
  v162 = v161;

  v649(v133, v137);

  v163 = v668;
  v669 = v131;
  v165 = *(v131 + 16);
  v164 = *(v131 + 24);
  if (v165 >= v164 >> 1)
  {
    sub_100040E44((v164 > 1), v165 + 1, 1);
    v131 = v669;
  }

  *(v131 + 16) = v165 + 1;
  v166 = v131 + 48 * v165;
  *(v166 + 32) = 3;
  *(v166 + 40) = v163;
  *(v166 + 41) = 256;
  *(v166 + 43) = 0;
  *(v166 + 48) = v629;
  *(v166 + 56) = v159;
  *(v166 + 64) = v160;
  *(v166 + 72) = v162;

  v668 = v646;
  sub_10005CDBC(v131);
  v646 = v668;
  v668 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 4, 0);
  v167 = v668;
  v168 = v644;

  sub_1000635D4();
  LOBYTE(v667) = 0;
  v169 = v168;
  v170 = sub_1000635B4();
  v172 = v171;

  v173 = v649;
  v649(v133, v137);

  v174 = v667;
  v668 = v167;
  v176 = *(v167 + 16);
  v175 = *(v167 + 24);
  if (v176 >= v175 >> 1)
  {
    sub_100040E44((v175 > 1), v176 + 1, 1);
    v169 = v644;
    v167 = v668;
  }

  *(v167 + 16) = v176 + 1;
  v177 = v167 + 48 * v176;
  *(v177 + 32) = 0;
  *(v177 + 40) = v174;
  *(v177 + 41) = 0;
  *(v177 + 43) = 0;
  *(v177 + 48) = v630;
  *(v177 + 56) = v169;
  *(v177 + 64) = v170;
  *(v177 + 72) = v172;
  v178 = v643;

  sub_1000635D4();
  LOBYTE(v667) = 0;
  v179 = v178;
  v180 = sub_1000635B4();
  v182 = v181;

  v173(v133, v648);

  v183 = v667;
  v668 = v167;
  v185 = *(v167 + 16);
  v184 = *(v167 + 24);
  v186 = v173;
  if (v185 >= v184 >> 1)
  {
    sub_100040E44((v184 > 1), v185 + 1, 1);
    v179 = v643;
    v167 = v668;
  }

  *(v167 + 16) = v185 + 1;
  v187 = v167 + 48 * v185;
  *(v187 + 32) = 1;
  *(v187 + 40) = v183;
  *(v187 + 41) = 0;
  *(v187 + 43) = 0;
  *(v187 + 48) = v631;
  *(v187 + 56) = v179;
  *(v187 + 64) = v180;
  *(v187 + 72) = v182;
  v188 = v637;

  sub_1000635D4();
  LOBYTE(v667) = 0;
  v189 = sub_1000635B4();
  v191 = v190;

  v186(v133, v648);

  v192 = v667;
  v668 = v167;
  v194 = *(v167 + 16);
  v193 = *(v167 + 24);
  if (v194 >= v193 >> 1)
  {
    sub_100040E44((v193 > 1), v194 + 1, 1);
    v188 = v637;
    v167 = v668;
  }

  *(v167 + 16) = v194 + 1;
  v195 = v167 + 48 * v194;
  *(v195 + 32) = 2;
  *(v195 + 40) = v192;
  *(v195 + 41) = 0;
  *(v195 + 43) = 0;
  *(v195 + 48) = v632;
  *(v195 + 56) = v188;
  *(v195 + 64) = v189;
  *(v195 + 72) = v191;
  v196 = v635;

  sub_1000635D4();
  LOBYTE(v667) = 0;
  v197 = sub_1000635B4();
  v199 = v198;

  v200 = v133;
  v201 = v196;
  v186(v200, v648);

  v202 = v667;
  v668 = v167;
  v204 = *(v167 + 16);
  v203 = *(v167 + 24);
  if (v204 >= v203 >> 1)
  {
    sub_100040E44((v203 > 1), v204 + 1, 1);
    v167 = v668;
  }

  *(v167 + 16) = v204 + 1;
  v205 = v167 + 48 * v204;
  *(v205 + 32) = 3;
  *(v205 + 40) = v202;
  *(v205 + 41) = 0;
  *(v205 + 43) = 0;
  *(v205 + 48) = v634;
  *(v205 + 56) = v201;
  *(v205 + 64) = v197;
  *(v205 + 72) = v199;

  v667 = v646;
  sub_10005CDBC(v167);
  sub_10005CDBC(&_swiftEmptyArrayStorage);
  v634 = v667;
  v206 = swift_allocObject();
  *(v206 + 16) = xmmword_100066C70;
  if (qword_1000845E8 != -1)
  {
    swift_once();
  }

  v207 = *algn_1000905E8;
  *(v206 + 32) = qword_1000905E0;
  *(v206 + 40) = v207;
  v208 = qword_1000845F0;

  if (v208 != -1)
  {
    swift_once();
  }

  v209 = *algn_1000905F8;
  *(v206 + 48) = qword_1000905F0;
  *(v206 + 56) = v209;
  v210 = qword_1000845F8;

  if (v210 != -1)
  {
    swift_once();
  }

  v211 = *algn_100090608;
  *(v206 + 64) = qword_100090600;
  *(v206 + 72) = v211;
  v212 = qword_100084600;

  if (v212 != -1)
  {
    swift_once();
  }

  v213 = *algn_100090618;
  *(v206 + 80) = qword_100090610;
  *(v206 + 88) = v213;
  v214 = qword_100084608;

  if (v214 != -1)
  {
    swift_once();
  }

  v215 = *algn_100090628;
  *(v206 + 96) = qword_100090620;
  *(v206 + 104) = v215;
  v216 = qword_100084610;

  if (v216 != -1)
  {
    swift_once();
  }

  v217 = *algn_100090638;
  *(v206 + 112) = qword_100090630;
  *(v206 + 120) = v217;
  v218 = qword_100084618;

  if (v218 != -1)
  {
    swift_once();
  }

  v219 = *algn_100090648;
  *(v206 + 128) = qword_100090640;
  *(v206 + 136) = v219;
  v220 = qword_100084620;

  if (v220 != -1)
  {
    swift_once();
  }

  v221 = *algn_100090658;
  *(v206 + 144) = qword_100090650;
  *(v206 + 152) = v221;
  v222 = swift_allocObject();
  *(v222 + 16) = xmmword_10006A9D0;
  v223 = qword_100084628;

  if (v223 != -1)
  {
    swift_once();
  }

  v224 = *algn_100090668;
  *(v222 + 32) = qword_100090660;
  *(v222 + 40) = v224;
  v225 = qword_100084630;

  if (v225 != -1)
  {
    swift_once();
  }

  v226 = *algn_100090678;
  *(v222 + 48) = qword_100090670;
  *(v222 + 56) = v226;
  v227 = qword_100084638;

  if (v227 != -1)
  {
    swift_once();
  }

  v228 = *algn_100090688;
  *(v222 + 64) = qword_100090680;
  *(v222 + 72) = v228;
  v229 = qword_100084640;

  if (v229 != -1)
  {
    swift_once();
  }

  v230 = *algn_100090698;
  *(v222 + 80) = qword_100090690;
  *(v222 + 88) = v230;
  v231 = qword_100084648;

  if (v231 != -1)
  {
    swift_once();
  }

  v232 = *algn_1000906A8;
  *(v222 + 96) = qword_1000906A0;
  *(v222 + 104) = v232;
  v233 = qword_100084650;

  if (v233 != -1)
  {
    swift_once();
  }

  v234 = *algn_1000906B8;
  *(v222 + 112) = qword_1000906B0;
  *(v222 + 120) = v234;
  v235 = qword_100084658;

  if (v235 != -1)
  {
    swift_once();
  }

  v236 = *algn_1000906C8;
  *(v222 + 128) = qword_1000906C0;
  *(v222 + 136) = v236;
  v237 = qword_100084660;

  if (v237 != -1)
  {
    swift_once();
  }

  v238 = *algn_1000906D8;
  *(v222 + 144) = qword_1000906D0;
  *(v222 + 152) = v238;
  v239 = qword_100084668;

  if (v239 != -1)
  {
    swift_once();
  }

  v240 = *algn_1000906E8;
  *(v222 + 160) = qword_1000906E0;
  *(v222 + 168) = v240;
  v241 = qword_100084670;

  if (v241 != -1)
  {
    swift_once();
  }

  v242 = *algn_1000906F8;
  *(v222 + 176) = qword_1000906F0;
  *(v222 + 184) = v242;
  v243 = qword_100084678;

  if (v243 != -1)
  {
    swift_once();
  }

  v244 = *algn_100090708;
  *(v222 + 192) = qword_100090700;
  *(v222 + 200) = v244;
  v245 = qword_100084680;

  if (v245 != -1)
  {
    swift_once();
  }

  v246 = *algn_100090718;
  *(v222 + 208) = qword_100090710;
  *(v222 + 216) = v246;
  v247 = qword_100084688;

  if (v247 != -1)
  {
    swift_once();
  }

  v248 = *algn_100090728;
  *(v222 + 224) = qword_100090720;
  *(v222 + 232) = v248;
  v249 = qword_100084690;

  if (v249 != -1)
  {
    swift_once();
  }

  v250 = *algn_100090738;
  *(v222 + 240) = qword_100090730;
  *(v222 + 248) = v250;
  v251 = qword_100084698;

  if (v251 != -1)
  {
    swift_once();
  }

  v252 = *algn_100090748;
  *(v222 + 256) = qword_100090740;
  *(v222 + 264) = v252;
  v253 = qword_1000846A0;

  if (v253 != -1)
  {
    swift_once();
  }

  v254 = *algn_100090758;
  *(v222 + 272) = qword_100090750;
  *(v222 + 280) = v254;
  v255 = swift_allocObject();
  *(v255 + 16) = v645;
  v256 = qword_1000846A8;

  if (v256 != -1)
  {
    swift_once();
  }

  v257 = *algn_100090768;
  *(v255 + 32) = qword_100090760;
  *(v255 + 40) = v257;
  v258 = qword_1000846B0;

  if (v258 != -1)
  {
    swift_once();
  }

  v259 = *algn_100090778;
  *(v255 + 48) = qword_100090770;
  *(v255 + 56) = v259;
  v260 = qword_1000846B8;

  if (v260 != -1)
  {
    swift_once();
  }

  v261 = *algn_100090788;
  *(v255 + 64) = qword_100090780;
  *(v255 + 72) = v261;
  v262 = qword_1000846C0;

  if (v262 != -1)
  {
    swift_once();
  }

  v263 = *algn_100090798;
  *(v255 + 80) = qword_100090790;
  *(v255 + 88) = v263;
  v264 = qword_1000846C8;

  if (v264 != -1)
  {
    swift_once();
  }

  v265 = *algn_1000907A8;
  *(v255 + 96) = qword_1000907A0;
  *(v255 + 104) = v265;
  v266 = qword_1000846D0;

  if (v266 != -1)
  {
    swift_once();
  }

  v267 = *algn_1000907B8;
  *(v255 + 112) = qword_1000907B0;
  *(v255 + 120) = v267;
  v268 = swift_allocObject();
  v644 = xmmword_100069A50;
  *(v268 + 16) = xmmword_100069A50;
  v269 = qword_1000846D8;

  if (v269 != -1)
  {
    swift_once();
  }

  v270 = *algn_1000907C8;
  *(v268 + 32) = qword_1000907C0;
  *(v268 + 40) = v270;
  v271 = qword_1000846E0;

  if (v271 != -1)
  {
    swift_once();
  }

  v272 = *algn_1000907D8;
  *(v268 + 48) = qword_1000907D0;
  *(v268 + 56) = v272;
  v273 = qword_1000846E8;

  if (v273 != -1)
  {
    swift_once();
  }

  v274 = *algn_1000907E8;
  *(v268 + 64) = qword_1000907E0;
  *(v268 + 72) = v274;
  v275 = qword_1000846F0;

  if (v275 != -1)
  {
    swift_once();
  }

  v276 = *algn_1000907F8;
  *(v268 + 80) = qword_1000907F0;
  *(v268 + 88) = v276;
  v277 = qword_1000846F8;

  if (v277 != -1)
  {
    swift_once();
  }

  v278 = *algn_100090808;
  *(v268 + 96) = qword_100090800;
  *(v268 + 104) = v278;
  v279 = swift_allocObject();
  *(v279 + 16) = v644;
  v280 = qword_100084700;

  if (v280 != -1)
  {
    swift_once();
  }

  v281 = *algn_100090818;
  *(v279 + 32) = qword_100090810;
  *(v279 + 40) = v281;
  v282 = qword_100084708;

  if (v282 != -1)
  {
    swift_once();
  }

  v283 = *algn_100090828;
  *(v279 + 48) = qword_100090820;
  *(v279 + 56) = v283;
  v284 = qword_100084710;

  if (v284 != -1)
  {
    swift_once();
  }

  v285 = *algn_100090838;
  *(v279 + 64) = qword_100090830;
  *(v279 + 72) = v285;
  v286 = qword_100084718;

  if (v286 != -1)
  {
    swift_once();
  }

  v287 = *algn_100090848;
  *(v279 + 80) = qword_100090840;
  *(v279 + 88) = v287;
  v288 = qword_100084720;

  if (v288 != -1)
  {
    swift_once();
  }

  v637 = v255;
  v289 = *algn_100090858;
  *(v279 + 96) = qword_100090850;
  *(v279 + 104) = v289;
  v290 = qword_100084728;

  if (v290 != -1)
  {
    swift_once();
  }

  v291 = *algn_100090868;
  v621 = qword_100090860;
  v292 = qword_100084730;

  if (v292 != -1)
  {
    swift_once();
  }

  v636 = v268;
  v293 = *algn_100090878;
  v622 = qword_100090870;
  v294 = qword_100084738;

  if (v294 != -1)
  {
    swift_once();
  }

  v635 = v279;
  v295 = *algn_100090888;
  v623 = qword_100090880;
  v296 = qword_100084740;

  if (v296 != -1)
  {
    swift_once();
  }

  v297 = *algn_100090898;
  v624 = qword_100090890;
  v298 = qword_100084748;

  if (v298 != -1)
  {
    swift_once();
  }

  v625 = v297;
  v638 = v293;
  v299 = *algn_1000908A8;
  v627 = qword_1000908A0;
  v300 = qword_100084750;

  if (v300 != -1)
  {
    swift_once();
  }

  v301 = *algn_1000908B8;
  v628 = qword_1000908B0;
  v302 = qword_100084758;

  if (v302 != -1)
  {
    swift_once();
  }

  v626 = v295;
  v639 = v291;
  v641 = v301;
  v643 = v299;
  v629 = qword_1000908C0;
  v303 = qword_100084760;
  v632 = *algn_1000908C8;

  if (v303 != -1)
  {
    swift_once();
  }

  v640 = v222;
  v630 = qword_1000908D0;
  v667 = &_swiftEmptyArrayStorage;
  v631 = *algn_1000908D8;

  sub_100040E44(0, 8, 0);
  v304 = 0;
  v305 = v667;
  v633 = v206;
  v306 = (v206 + 40);
  do
  {
    v307 = *v306;
    v646 = *(v306 - 1);

    v308 = v647;
    sub_1000635D4();
    LOBYTE(v666) = 0;
    v309 = sub_1000635B4();
    v311 = v310;

    v649(v308, v648);

    v312 = v666;
    v667 = v305;
    v314 = v305[2];
    v313 = v305[3];
    if (v314 >= v313 >> 1)
    {
      sub_100040E44((v313 > 1), v314 + 1, 1);
      v305 = v667;
    }

    v305[2] = v314 + 1;
    v315 = &v305[6 * v314];
    v315[4] = v304;
    *(v315 + 40) = v312;
    *(v315 + 41) = 258;
    *(v315 + 43) = 1;
    v315[6] = v646;
    v315[7] = v307;
    v315[8] = v309;
    v315[9] = v311;
    v306 += 2;
    ++v304;
  }

  while (v304 != 8);
  v620 = v305;

  v666 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 16, 0);
  v316 = 0;
  v317 = v666;
  v318 = (v640 + 40);
  do
  {
    v319 = *v318;
    v646 = *(v318 - 1);

    v320 = v647;
    sub_1000635D4();
    LOBYTE(v665) = 0;
    v321 = sub_1000635B4();
    v323 = v322;

    v649(v320, v648);

    v324 = v665;
    v666 = v317;
    v326 = *(v317 + 16);
    v325 = *(v317 + 24);
    if (v326 >= v325 >> 1)
    {
      sub_100040E44((v325 > 1), v326 + 1, 1);
      v317 = v666;
    }

    *(v317 + 16) = v326 + 1;
    v327 = v317 + 48 * v326;
    *(v327 + 32) = v316;
    *(v327 + 40) = v324;
    *(v327 + 41) = 2;
    *(v327 + 43) = 1;
    *(v327 + 48) = v646;
    *(v327 + 56) = v319;
    *(v327 + 64) = v321;
    *(v327 + 72) = v323;
    v318 += 2;
    ++v316;
  }

  while (v316 != 16);

  v665 = v620;
  sub_10005CDBC(v317);
  v640 = v665;
  v665 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 6, 0);
  v328 = 0;
  v329 = v665;
  v330 = (v637 + 40);
  v331 = v649;
  do
  {
    v332 = *v330;
    v646 = *(v330 - 1);

    v333 = v647;
    sub_1000635D4();
    LOBYTE(v664) = 0;
    v334 = sub_1000635B4();
    v336 = v335;

    v331(v333, v648);

    v337 = v664;
    v665 = v329;
    v339 = *(v329 + 16);
    v338 = *(v329 + 24);
    if (v339 >= v338 >> 1)
    {
      sub_100040E44((v338 > 1), v339 + 1, 1);
      v329 = v665;
    }

    *(v329 + 16) = v339 + 1;
    v340 = v329 + 48 * v339;
    *(v340 + 32) = v328;
    *(v340 + 40) = v337;
    *(v340 + 41) = 514;
    *(v340 + 43) = 1;
    *(v340 + 48) = v646;
    *(v340 + 56) = v332;
    *(v340 + 64) = v334;
    *(v340 + 72) = v336;
    v330 += 2;
    ++v328;
    v331 = v649;
  }

  while (v328 != 6);

  v664 = v640;
  sub_10005CDBC(v329);
  v640 = v664;
  v664 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 5, 0);
  v341 = 0;
  v342 = v664;
  v343 = (v636 + 40);
  do
  {
    v344 = *v343;
    v646 = *(v343 - 1);

    v345 = v647;
    sub_1000635D4();
    LOBYTE(v663) = 0;
    v346 = sub_1000635B4();
    v348 = v347;

    v331(v345, v648);

    v349 = v663;
    v664 = v342;
    v351 = *(v342 + 16);
    v350 = *(v342 + 24);
    if (v351 >= v350 >> 1)
    {
      sub_100040E44((v350 > 1), v351 + 1, 1);
      v342 = v664;
    }

    *(v342 + 16) = v351 + 1;
    v352 = v342 + 48 * v351;
    *(v352 + 32) = v341;
    *(v352 + 40) = v349;
    *(v352 + 41) = 257;
    *(v352 + 43) = 1;
    *(v352 + 48) = v646;
    *(v352 + 56) = v344;
    *(v352 + 64) = v346;
    *(v352 + 72) = v348;
    v343 += 2;
    ++v341;
    v331 = v649;
  }

  while (v341 != 5);

  v663 = v640;
  sub_10005CDBC(v342);
  v640 = v663;
  v663 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 5, 0);
  v353 = 0;
  v354 = v663;
  v355 = (v635 + 40);
  do
  {
    v356 = *v355;
    v646 = *(v355 - 1);

    v357 = v647;
    sub_1000635D4();
    LOBYTE(v662) = 0;
    v358 = sub_1000635B4();
    v360 = v359;

    v331(v357, v648);

    v361 = v662;
    v663 = v354;
    v363 = *(v354 + 16);
    v362 = *(v354 + 24);
    if (v363 >= v362 >> 1)
    {
      sub_100040E44((v362 > 1), v363 + 1, 1);
      v354 = v663;
    }

    *(v354 + 16) = v363 + 1;
    v364 = v354 + 48 * v363;
    *(v364 + 32) = v353;
    *(v364 + 40) = v361;
    *(v364 + 41) = 1;
    *(v364 + 43) = 1;
    *(v364 + 48) = v646;
    *(v364 + 56) = v356;
    *(v364 + 64) = v358;
    *(v364 + 72) = v360;
    v355 += 2;
    ++v353;
    v331 = v649;
  }

  while (v353 != 5);

  v662 = v640;
  sub_10005CDBC(v354);
  sub_10005CDBC(&_swiftEmptyArrayStorage);
  v646 = v662;
  v662 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 4, 0);
  v365 = v662;
  v366 = v639;

  v367 = v647;
  sub_1000635D4();
  LOBYTE(v661) = 0;
  v368 = sub_1000635B4();
  v370 = v369;

  v371 = v648;
  v331(v367, v648);

  v372 = v661;
  v662 = v365;
  v374 = *(v365 + 16);
  v373 = *(v365 + 24);
  if (v374 >= v373 >> 1)
  {
    sub_100040E44((v373 > 1), v374 + 1, 1);
    v365 = v662;
  }

  *(v365 + 16) = v374 + 1;
  v375 = v365 + 48 * v374;
  *(v375 + 32) = 0;
  *(v375 + 40) = v372;
  *(v375 + 41) = 256;
  *(v375 + 43) = 1;
  *(v375 + 48) = v621;
  *(v375 + 56) = v366;
  *(v375 + 64) = v368;
  *(v375 + 72) = v370;
  v376 = v638;

  sub_1000635D4();
  LOBYTE(v661) = 0;
  v377 = sub_1000635B4();
  v379 = v378;

  v649(v367, v371);

  v380 = v661;
  v662 = v365;
  v381 = v371;
  v383 = *(v365 + 16);
  v382 = *(v365 + 24);
  if (v383 >= v382 >> 1)
  {
    sub_100040E44((v382 > 1), v383 + 1, 1);
    v365 = v662;
  }

  *(v365 + 16) = v383 + 1;
  v384 = v365 + 48 * v383;
  *(v384 + 32) = 1;
  *(v384 + 40) = v380;
  *(v384 + 41) = 256;
  *(v384 + 43) = 1;
  *(v384 + 48) = v622;
  *(v384 + 56) = v376;
  *(v384 + 64) = v377;
  *(v384 + 72) = v379;
  v385 = v626;

  sub_1000635D4();
  LOBYTE(v661) = 0;
  v386 = sub_1000635B4();
  v388 = v387;

  v649(v367, v381);

  v389 = v661;
  v662 = v365;
  v391 = *(v365 + 16);
  v390 = *(v365 + 24);
  v392 = v381;
  if (v391 >= v390 >> 1)
  {
    sub_100040E44((v390 > 1), v391 + 1, 1);
    v365 = v662;
  }

  *(v365 + 16) = v391 + 1;
  v393 = v365 + 48 * v391;
  *(v393 + 32) = 2;
  *(v393 + 40) = v389;
  *(v393 + 41) = 256;
  *(v393 + 43) = 1;
  *(v393 + 48) = v623;
  *(v393 + 56) = v385;
  *(v393 + 64) = v386;
  *(v393 + 72) = v388;
  v394 = v625;

  sub_1000635D4();
  LOBYTE(v661) = 0;
  v395 = sub_1000635B4();
  v397 = v396;

  v649(v367, v392);

  v398 = v661;
  v662 = v365;
  v400 = *(v365 + 16);
  v399 = *(v365 + 24);
  if (v400 >= v399 >> 1)
  {
    sub_100040E44((v399 > 1), v400 + 1, 1);
    v365 = v662;
  }

  *(v365 + 16) = v400 + 1;
  v401 = v365 + 48 * v400;
  *(v401 + 32) = 3;
  *(v401 + 40) = v398;
  *(v401 + 41) = 256;
  *(v401 + 43) = 1;
  *(v401 + 48) = v624;
  *(v401 + 56) = v394;
  *(v401 + 64) = v395;
  *(v401 + 72) = v397;

  v661 = v646;
  sub_10005CDBC(v365);
  v646 = v661;
  v661 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 4, 0);
  v402 = v661;
  v403 = v643;

  sub_1000635D4();
  LOBYTE(v660) = 0;
  v404 = sub_1000635B4();
  v406 = v405;

  v649(v367, v648);

  v407 = v660;
  v661 = v402;
  v409 = *(v402 + 16);
  v408 = *(v402 + 24);
  if (v409 >= v408 >> 1)
  {
    sub_100040E44((v408 > 1), v409 + 1, 1);
    v402 = v661;
  }

  *(v402 + 16) = v409 + 1;
  v410 = v402 + 48 * v409;
  *(v410 + 32) = 0;
  *(v410 + 40) = v407;
  *(v410 + 41) = 0;
  *(v410 + 43) = 1;
  *(v410 + 48) = v627;
  *(v410 + 56) = v403;
  *(v410 + 64) = v404;
  *(v410 + 72) = v406;
  v411 = v641;

  sub_1000635D4();
  LOBYTE(v660) = 0;
  v412 = sub_1000635B4();
  v414 = v413;

  v649(v367, v648);

  v415 = v660;
  v661 = v402;
  v417 = *(v402 + 16);
  v416 = *(v402 + 24);
  if (v417 >= v416 >> 1)
  {
    sub_100040E44((v416 > 1), v417 + 1, 1);
    v402 = v661;
  }

  *(v402 + 16) = v417 + 1;
  v418 = v402 + 48 * v417;
  *(v418 + 32) = 1;
  *(v418 + 40) = v415;
  *(v418 + 41) = 0;
  *(v418 + 43) = 1;
  *(v418 + 48) = v628;
  *(v418 + 56) = v411;
  *(v418 + 64) = v412;
  *(v418 + 72) = v414;
  v419 = v632;

  sub_1000635D4();
  LOBYTE(v660) = 0;
  v420 = sub_1000635B4();
  v422 = v421;

  v649(v367, v648);

  v423 = v660;
  v661 = v402;
  v425 = *(v402 + 16);
  v424 = *(v402 + 24);
  if (v425 >= v424 >> 1)
  {
    sub_100040E44((v424 > 1), v425 + 1, 1);
    v402 = v661;
  }

  *(v402 + 16) = v425 + 1;
  v426 = v402 + 48 * v425;
  *(v426 + 32) = 2;
  *(v426 + 40) = v423;
  *(v426 + 41) = 0;
  *(v426 + 43) = 1;
  *(v426 + 48) = v629;
  *(v426 + 56) = v419;
  *(v426 + 64) = v420;
  *(v426 + 72) = v422;
  v427 = v631;

  sub_1000635D4();
  LOBYTE(v660) = 0;
  v428 = sub_1000635B4();
  v430 = v429;

  v431 = v367;
  v432 = v427;
  v649(v431, v648);

  v433 = v660;
  v661 = v402;
  v435 = *(v402 + 16);
  v434 = *(v402 + 24);
  if (v435 >= v434 >> 1)
  {
    sub_100040E44((v434 > 1), v435 + 1, 1);
    v402 = v661;
  }

  *(v402 + 16) = v435 + 1;
  v436 = v402 + 48 * v435;
  *(v436 + 32) = 3;
  *(v436 + 40) = v433;
  *(v436 + 41) = 0;
  *(v436 + 43) = 1;
  *(v436 + 48) = v630;
  *(v436 + 56) = v432;
  *(v436 + 64) = v428;
  *(v436 + 72) = v430;

  v660 = v646;
  sub_10005CDBC(v402);
  sub_10005CDBC(&_swiftEmptyArrayStorage);
  v437 = v660;
  v660 = v634;
  sub_10005CDBC(v437);
  v640 = v660;
  v438 = swift_allocObject();
  *(v438 + 16) = xmmword_10006A9E0;
  if (qword_100084768 != -1)
  {
    swift_once();
  }

  v439 = *algn_1000908E8;
  *(v438 + 32) = qword_1000908E0;
  *(v438 + 40) = v439;
  v440 = qword_100084770;

  if (v440 != -1)
  {
    swift_once();
  }

  v441 = *algn_1000908F8;
  *(v438 + 48) = qword_1000908F0;
  *(v438 + 56) = v441;
  v442 = qword_100084778;

  if (v442 != -1)
  {
    swift_once();
  }

  v443 = *algn_100090908;
  *(v438 + 64) = qword_100090900;
  *(v438 + 72) = v443;
  v444 = qword_100084780;

  if (v444 != -1)
  {
    swift_once();
  }

  v445 = *algn_100090918;
  *(v438 + 80) = qword_100090910;
  *(v438 + 88) = v445;
  v446 = qword_100084788;

  if (v446 != -1)
  {
    swift_once();
  }

  v447 = *algn_100090928;
  *(v438 + 96) = qword_100090920;
  *(v438 + 104) = v447;
  v448 = qword_100084790;

  if (v448 != -1)
  {
    swift_once();
  }

  v449 = *algn_100090938;
  *(v438 + 112) = qword_100090930;
  *(v438 + 120) = v449;
  v450 = qword_100084798;

  if (v450 != -1)
  {
    swift_once();
  }

  v451 = *algn_100090948;
  *(v438 + 128) = qword_100090940;
  *(v438 + 136) = v451;
  v452 = qword_1000847A0;

  if (v452 != -1)
  {
    swift_once();
  }

  v453 = *algn_100090958;
  *(v438 + 144) = qword_100090950;
  *(v438 + 152) = v453;
  v454 = qword_1000847A8;

  if (v454 != -1)
  {
    swift_once();
  }

  v455 = *algn_100090968;
  *(v438 + 160) = qword_100090960;
  *(v438 + 168) = v455;
  v456 = qword_1000847B0;

  if (v456 != -1)
  {
    swift_once();
  }

  v457 = *algn_100090978;
  *(v438 + 176) = qword_100090970;
  *(v438 + 184) = v457;
  v458 = qword_1000847B8;

  if (v458 != -1)
  {
    swift_once();
  }

  v459 = *algn_100090988;
  *(v438 + 192) = qword_100090980;
  *(v438 + 200) = v459;
  v460 = qword_1000847C0;

  if (v460 != -1)
  {
    swift_once();
  }

  v461 = *algn_100090998;
  *(v438 + 208) = qword_100090990;
  *(v438 + 216) = v461;
  v462 = qword_1000847C8;

  if (v462 != -1)
  {
    swift_once();
  }

  v463 = *algn_1000909A8;
  *(v438 + 224) = qword_1000909A0;
  *(v438 + 232) = v463;
  v464 = qword_1000847D0;

  if (v464 != -1)
  {
    swift_once();
  }

  v465 = *algn_1000909B8;
  *(v438 + 240) = qword_1000909B0;
  *(v438 + 248) = v465;
  v466 = qword_1000847D8;

  if (v466 != -1)
  {
    swift_once();
  }

  v467 = *algn_1000909C8;
  *(v438 + 256) = qword_1000909C0;
  *(v438 + 264) = v467;
  v468 = swift_allocObject();
  *(v468 + 16) = xmmword_10006A9F0;
  v469 = qword_1000847E0;

  if (v469 != -1)
  {
    swift_once();
  }

  v470 = *algn_1000909D8;
  *(v468 + 32) = qword_1000909D0;
  *(v468 + 40) = v470;
  v471 = qword_1000847E8;

  if (v471 != -1)
  {
    swift_once();
  }

  v472 = *algn_1000909E8;
  *(v468 + 48) = qword_1000909E0;
  *(v468 + 56) = v472;
  v473 = qword_1000847F0;

  if (v473 != -1)
  {
    swift_once();
  }

  v474 = *algn_1000909F8;
  *(v468 + 64) = qword_1000909F0;
  *(v468 + 72) = v474;
  v475 = qword_1000847F8;

  if (v475 != -1)
  {
    swift_once();
  }

  v476 = *algn_100090A08;
  *(v468 + 80) = qword_100090A00;
  *(v468 + 88) = v476;
  v477 = qword_100084800;

  if (v477 != -1)
  {
    swift_once();
  }

  v478 = *algn_100090A18;
  *(v468 + 96) = qword_100090A10;
  *(v468 + 104) = v478;
  v479 = qword_100084808;

  if (v479 != -1)
  {
    swift_once();
  }

  v480 = *algn_100090A28;
  *(v468 + 112) = qword_100090A20;
  *(v468 + 120) = v480;
  v481 = qword_100084810;

  if (v481 != -1)
  {
    swift_once();
  }

  v482 = *algn_100090A38;
  *(v468 + 128) = qword_100090A30;
  *(v468 + 136) = v482;
  v483 = qword_100084818;

  if (v483 != -1)
  {
    swift_once();
  }

  v484 = *algn_100090A48;
  *(v468 + 144) = qword_100090A40;
  *(v468 + 152) = v484;
  v485 = qword_100084820;

  if (v485 != -1)
  {
    swift_once();
  }

  v486 = *algn_100090A58;
  *(v468 + 160) = qword_100090A50;
  *(v468 + 168) = v486;
  v487 = qword_100084828;

  if (v487 != -1)
  {
    swift_once();
  }

  v488 = *algn_100090A68;
  *(v468 + 176) = qword_100090A60;
  *(v468 + 184) = v488;
  v489 = qword_100084830;

  if (v489 != -1)
  {
    swift_once();
  }

  v490 = *algn_100090A78;
  *(v468 + 192) = qword_100090A70;
  *(v468 + 200) = v490;
  v491 = qword_100084838;

  if (v491 != -1)
  {
    swift_once();
  }

  v492 = *algn_100090A88;
  *(v468 + 208) = qword_100090A80;
  *(v468 + 216) = v492;
  v493 = qword_100084840;

  if (v493 != -1)
  {
    swift_once();
  }

  v494 = *algn_100090A98;
  *(v468 + 224) = qword_100090A90;
  *(v468 + 232) = v494;
  v495 = swift_allocObject();
  *(v495 + 16) = v645;
  v496 = qword_100084848;

  if (v496 != -1)
  {
    swift_once();
  }

  v497 = *algn_100090AA8;
  *(v495 + 32) = qword_100090AA0;
  *(v495 + 40) = v497;
  v498 = qword_100084850;

  if (v498 != -1)
  {
    swift_once();
  }

  v499 = *algn_100090AB8;
  *(v495 + 48) = qword_100090AB0;
  *(v495 + 56) = v499;
  v500 = qword_100084858;

  if (v500 != -1)
  {
    swift_once();
  }

  v501 = *algn_100090AC8;
  *(v495 + 64) = qword_100090AC0;
  *(v495 + 72) = v501;
  v502 = qword_100084860;

  if (v502 != -1)
  {
    swift_once();
  }

  v503 = *algn_100090AD8;
  *(v495 + 80) = qword_100090AD0;
  *(v495 + 88) = v503;
  v504 = qword_100084868;

  if (v504 != -1)
  {
    swift_once();
  }

  v505 = *algn_100090AE8;
  *(v495 + 96) = qword_100090AE0;
  *(v495 + 104) = v505;
  v506 = qword_100084870;

  if (v506 != -1)
  {
    swift_once();
  }

  v507 = *algn_100090AF8;
  *(v495 + 112) = qword_100090AF0;
  *(v495 + 120) = v507;
  v508 = swift_allocObject();
  *(v508 + 16) = v644;
  v509 = qword_100084878;

  if (v509 != -1)
  {
    swift_once();
  }

  v510 = *algn_100090B08;
  *(v508 + 32) = qword_100090B00;
  *(v508 + 40) = v510;
  v511 = qword_100084880;

  if (v511 != -1)
  {
    swift_once();
  }

  v512 = *algn_100090B18;
  *(v508 + 48) = qword_100090B10;
  *(v508 + 56) = v512;
  v513 = qword_100084888;

  if (v513 != -1)
  {
    swift_once();
  }

  v514 = *algn_100090B28;
  *(v508 + 64) = qword_100090B20;
  *(v508 + 72) = v514;
  v515 = qword_100084890;

  if (v515 != -1)
  {
    swift_once();
  }

  v516 = *algn_100090B38;
  *(v508 + 80) = qword_100090B30;
  *(v508 + 88) = v516;
  v517 = qword_100084898;

  if (v517 != -1)
  {
    swift_once();
  }

  v518 = *algn_100090B48;
  *(v508 + 96) = qword_100090B40;
  *(v508 + 104) = v518;
  v519 = swift_allocObject();
  *(v519 + 16) = v645;
  v520 = qword_1000848A0;

  if (v520 != -1)
  {
    swift_once();
  }

  v521 = *algn_100090B58;
  *(v519 + 32) = qword_100090B50;
  *(v519 + 40) = v521;
  v522 = qword_1000848A8;

  if (v522 != -1)
  {
    swift_once();
  }

  v523 = *algn_100090B68;
  *(v519 + 48) = qword_100090B60;
  *(v519 + 56) = v523;
  v524 = qword_1000848B0;

  if (v524 != -1)
  {
    swift_once();
  }

  v525 = *algn_100090B78;
  *(v519 + 64) = qword_100090B70;
  *(v519 + 72) = v525;
  v526 = qword_1000848B8;

  if (v526 != -1)
  {
    swift_once();
  }

  v527 = *algn_100090B88;
  *(v519 + 80) = qword_100090B80;
  *(v519 + 88) = v527;
  v528 = qword_1000848C0;

  if (v528 != -1)
  {
    swift_once();
  }

  v529 = *algn_100090B98;
  *(v519 + 96) = qword_100090B90;
  *(v519 + 104) = v529;
  v530 = qword_1000848C8;

  if (v530 != -1)
  {
    swift_once();
  }

  v531 = *algn_100090BA8;
  *(v519 + 112) = qword_100090BA0;
  *(v519 + 120) = v531;
  v532 = swift_allocObject();
  *(v532 + 16) = v645;
  v533 = qword_1000848D0;

  if (v533 != -1)
  {
    swift_once();
  }

  v534 = *algn_100090BB8;
  *(v532 + 32) = qword_100090BB0;
  *(v532 + 40) = v534;
  v535 = qword_1000848D8;

  if (v535 != -1)
  {
    swift_once();
  }

  v536 = *algn_100090BC8;
  *(v532 + 48) = qword_100090BC0;
  *(v532 + 56) = v536;
  v537 = qword_1000848E0;

  if (v537 != -1)
  {
    swift_once();
  }

  v538 = *algn_100090BD8;
  *(v532 + 64) = qword_100090BD0;
  *(v532 + 72) = v538;
  v539 = qword_1000848E8;

  if (v539 != -1)
  {
    swift_once();
  }

  *&v645 = v468;
  v540 = *algn_100090BE8;
  *(v532 + 80) = qword_100090BE0;
  *(v532 + 88) = v540;
  v541 = qword_1000848F0;

  if (v541 != -1)
  {
    swift_once();
  }

  v642 = v519;
  *&v644 = v495;
  v542 = *algn_100090BF8;
  *(v532 + 96) = qword_100090BF0;
  *(v532 + 104) = v542;
  v543 = qword_1000848F8;

  if (v543 != -1)
  {
    swift_once();
  }

  v643 = v508;
  v544 = *algn_100090C08;
  *(v532 + 112) = qword_100090C00;
  *(v532 + 120) = v544;
  v641 = v532;
  v660 = &_swiftEmptyArrayStorage;

  sub_100040E44(0, 15, 0);
  v545 = 0;
  v546 = v660;
  v639 = v438;
  v547 = (v438 + 40);
  do
  {
    v548 = *v547;
    v646 = *(v547 - 1);

    v549 = v647;
    sub_1000635D4();
    LOBYTE(v659) = 0;
    v550 = sub_1000635B4();
    v552 = v551;

    v649(v549, v648);

    v553 = v659;
    v660 = v546;
    v555 = v546[2];
    v554 = v546[3];
    if (v555 >= v554 >> 1)
    {
      sub_100040E44((v554 > 1), v555 + 1, 1);
      v546 = v660;
    }

    v546[2] = v555 + 1;
    v556 = &v546[6 * v555];
    v556[4] = v545;
    *(v556 + 40) = v553;
    *(v556 + 41) = 258;
    *(v556 + 43) = 2;
    v556[6] = v646;
    v556[7] = v548;
    v556[8] = v550;
    v556[9] = v552;
    v547 += 2;
    ++v545;
  }

  while (v545 != 15);
  v638 = v546;

  v659 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 13, 0);
  v557 = 0;
  v558 = v659;
  v559 = (v645 + 40);
  do
  {
    v560 = *v559;
    v646 = *(v559 - 1);

    v561 = v647;
    sub_1000635D4();
    LOBYTE(v657) = 0;
    v562 = sub_1000635B4();
    v564 = v563;

    v649(v561, v648);

    v565 = v657;
    v659 = v558;
    v567 = *(v558 + 16);
    v566 = *(v558 + 24);
    if (v567 >= v566 >> 1)
    {
      sub_100040E44((v566 > 1), v567 + 1, 1);
      v558 = v659;
    }

    *(v558 + 16) = v567 + 1;
    v568 = v558 + 48 * v567;
    *(v568 + 32) = v557;
    *(v568 + 40) = v565;
    *(v568 + 41) = 2;
    *(v568 + 43) = 2;
    *(v568 + 48) = v646;
    *(v568 + 56) = v560;
    *(v568 + 64) = v562;
    *(v568 + 72) = v564;
    v559 += 2;
    ++v557;
  }

  while (v557 != 13);

  v658 = v638;
  sub_10005CDBC(v558);
  sub_10005CDBC(&_swiftEmptyArrayStorage);
  *&v645 = v658;
  v657 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 6, 0);
  v569 = 0;
  v570 = v657;
  v571 = (v644 + 40);
  do
  {
    v572 = *v571;
    v646 = *(v571 - 1);

    v573 = v647;
    sub_1000635D4();
    LOBYTE(v656) = 0;
    v574 = sub_1000635B4();
    v576 = v575;

    v649(v573, v648);

    v577 = v656;
    v657 = v570;
    v579 = *(v570 + 16);
    v578 = *(v570 + 24);
    if (v579 >= v578 >> 1)
    {
      sub_100040E44((v578 > 1), v579 + 1, 1);
      v570 = v657;
    }

    *(v570 + 16) = v579 + 1;
    v580 = v570 + 48 * v579;
    *(v580 + 32) = v569;
    *(v580 + 40) = v577;
    *(v580 + 41) = 257;
    *(v580 + 43) = 2;
    *(v580 + 48) = v646;
    *(v580 + 56) = v572;
    *(v580 + 64) = v574;
    *(v580 + 72) = v576;
    v571 += 2;
    ++v569;
  }

  while (v569 != 6);

  v656 = v645;
  sub_10005CDBC(v570);
  *&v645 = v656;
  v656 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 5, 0);
  v581 = 0;
  v582 = v656;
  v583 = (v643 + 40);
  v584 = v648;
  do
  {
    v585 = *v583;
    v646 = *(v583 - 1);

    v586 = v647;
    sub_1000635D4();
    LOBYTE(v654) = 0;
    v587 = sub_1000635B4();
    v589 = v588;

    v649(v586, v584);

    v590 = v654;
    v656 = v582;
    v592 = *(v582 + 16);
    v591 = *(v582 + 24);
    if (v592 >= v591 >> 1)
    {
      sub_100040E44((v591 > 1), v592 + 1, 1);
      v582 = v656;
    }

    *(v582 + 16) = v592 + 1;
    v593 = v582 + 48 * v592;
    *(v593 + 32) = v581;
    *(v593 + 40) = v590;
    *(v593 + 41) = 1;
    *(v593 + 43) = 2;
    *(v593 + 48) = v646;
    *(v593 + 56) = v585;
    *(v593 + 64) = v587;
    *(v593 + 72) = v589;
    v583 += 2;
    ++v581;
    v584 = v648;
  }

  while (v581 != 5);

  v655 = v645;
  sub_10005CDBC(v582);
  sub_10005CDBC(&_swiftEmptyArrayStorage);
  *&v645 = v655;
  v654 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 6, 0);
  v594 = 0;
  v595 = v654;
  v596 = (v642 + 40);
  do
  {
    v597 = *v596;
    v646 = *(v596 - 1);

    v598 = v647;
    sub_1000635D4();
    LOBYTE(v653) = 0;
    v599 = sub_1000635B4();
    v601 = v600;

    v649(v598, v584);

    v602 = v653;
    v654 = v595;
    v604 = *(v595 + 16);
    v603 = *(v595 + 24);
    if (v604 >= v603 >> 1)
    {
      sub_100040E44((v603 > 1), v604 + 1, 1);
      v595 = v654;
    }

    *(v595 + 16) = v604 + 1;
    v605 = v595 + 48 * v604;
    *(v605 + 32) = v594;
    *(v605 + 40) = v602;
    *(v605 + 41) = 256;
    *(v605 + 43) = 2;
    *(v605 + 48) = v646;
    *(v605 + 56) = v597;
    *(v605 + 64) = v599;
    *(v605 + 72) = v601;
    v596 += 2;
    ++v594;
    v584 = v648;
  }

  while (v594 != 6);

  v653 = v645;
  sub_10005CDBC(v595);
  *&v645 = v653;
  v653 = &_swiftEmptyArrayStorage;
  sub_100040E44(0, 6, 0);
  v606 = 0;
  v607 = v653;
  v608 = v641 + 5;
  do
  {
    v609 = *v608;
    v646 = *(v608 - 1);

    v610 = v647;
    sub_1000635D4();
    LOBYTE(v651) = 0;
    v611 = sub_1000635B4();
    v613 = v612;

    v649(v610, v584);

    v614 = v651;
    v653 = v607;
    v616 = *(v607 + 16);
    v615 = *(v607 + 24);
    if (v616 >= v615 >> 1)
    {
      sub_100040E44((v615 > 1), v616 + 1, 1);
      v607 = v653;
    }

    *(v607 + 16) = v616 + 1;
    v617 = v607 + 48 * v616;
    *(v617 + 32) = v606;
    *(v617 + 40) = v614;
    *(v617 + 41) = 0;
    *(v617 + 43) = 2;
    *(v617 + 48) = v646;
    *(v617 + 56) = v609;
    *(v617 + 64) = v611;
    *(v617 + 72) = v613;
    v608 += 2;
    ++v606;
    v584 = v648;
  }

  while (v606 != 6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v652 = v645;
  sub_10005CDBC(v607);
  sub_10005CDBC(&_swiftEmptyArrayStorage);
  v651 = v640;
  sub_10005CDBC(v652);
  v618 = sub_10005CEB4(v651);

  qword_100090E18 = v618;
  return result;
}

uint64_t sub_10005CDBC(uint64_t result)
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

  result = sub_10001BFF0(result, v11, 1, v3);
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

uint64_t sub_10005CEB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10005CF60();
  result = sub_100064344();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v9[0] = *v4;
      v9[1] = v5;
      v9[2] = v4[2];
      sub_10000B264(v9, v7);
      sub_10003F0C8(v6, v9);
      v7[0] = v6[0];
      v7[1] = v6[1];
      v7[2] = v6[2];
      sub_1000480AC(v7);
      v4 += 3;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10005CF60()
{
  result = qword_100086C50;
  if (!qword_100086C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C50);
  }

  return result;
}

__n128 sub_10005CFB4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10005CFC8(uint64_t a1, int a2)
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

uint64_t sub_10005D010(uint64_t result, int a2, int a3)
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

uint64_t sub_10005D06C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x616568416B6F6F6CLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x446C616963657073;
    }

    if (v4 == 2)
    {
      v6 = 0x800000010006B460;
    }

    else
    {
      v6 = 0xEB00000000737961;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6D6F4D6568546E69;
    }

    else
    {
      v5 = 0x616568416B6F6F6CLL;
    }

    if (v4)
    {
      v6 = 0xEB00000000746E65;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000010006B460;
  if (a2 != 2)
  {
    v7 = 0x446C616963657073;
    v8 = 0xEB00000000737961;
  }

  if (a2)
  {
    v3 = 0x6D6F4D6568546E69;
    v2 = 0xEB00000000746E65;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100064594();
  }

  return v11 & 1;
}

uint64_t sub_10005D1D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6172656E6567;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79636176697270;
    }

    else
    {
      v4 = 0x796C616E41707061;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEC00000073636974;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6163696669746F6ELL;
    }

    else
    {
      v4 = 0x6C6172656E6567;
    }

    if (v3)
    {
      v5 = 0xED0000736E6F6974;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x79636176697270;
  if (a2 != 2)
  {
    v8 = 0x796C616E41707061;
    v7 = 0xEC00000073636974;
  }

  if (a2)
  {
    v2 = 0x6163696669746F6ELL;
    v6 = 0xED0000736E6F6974;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100064594();
  }

  return v11 & 1;
}

uint64_t sub_10005D33C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0x800000010006B3D0;
    v13 = 0x7972746E45646461;
    if (a1 == 2)
    {
      v13 = 0xD000000000000012;
    }

    else
    {
      v12 = 0xED0000656C746954;
    }

    v14 = 0xD000000000000014;
    if (a1)
    {
      v11 = 0x800000010006B3B0;
    }

    else
    {
      v14 = 1953460082;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x72756F4A6B636F6CLL;
    v4 = 0xEB000000006C616ELL;
    v5 = 0x68506F5465766173;
    v6 = 0xEC000000736F746FLL;
    if (a1 != 7)
    {
      v5 = 0xD000000000000011;
      v6 = 0x800000010006B430;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x800000010006B400;
    v8 = 0xD000000000000013;
    if (a1 != 4)
    {
      v8 = 0x6163696669746F6ELL;
      v7 = 0xED0000736E6F6974;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0x800000010006B3B0;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v15 = 0xE400000000000000;
        if (v9 != 1953460082)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 2)
    {
      v15 = 0x800000010006B3D0;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v16 = 0x7972746E45646461;
    v17 = 0x656C746954;
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0xEB000000006C616ELL;
        if (v9 != 0x72756F4A6B636F6CLL)
        {
          goto LABEL_53;
        }
      }

      else if (a2 == 7)
      {
        v15 = 0xEC000000736F746FLL;
        if (v9 != 0x68506F5465766173)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v15 = 0x800000010006B430;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 4)
    {
      v15 = 0x800000010006B400;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v16 = 0x6163696669746F6ELL;
    v17 = 0x736E6F6974;
  }

  v15 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  if (v9 != v16)
  {
LABEL_53:
    v18 = sub_100064594();
    goto LABEL_54;
  }

LABEL_51:
  if (v10 != v15)
  {
    goto LABEL_53;
  }

  v18 = 1;
LABEL_54:

  return v18 & 1;
}

Swift::Int sub_10005D668()
{
  v1 = *v0;
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10005D744()
{
  *v0;
  *v0;
  *v0;
  sub_1000642C4();
}

Swift::Int sub_10005D80C()
{
  v1 = *v0;
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10005D8E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005FCA4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10005D914(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x616568416B6F6F6CLL;
  v4 = 0x800000010006B460;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x446C616963657073;
    v4 = 0xEB00000000737961;
  }

  if (*v1)
  {
    v3 = 0x6D6F4D6568546E69;
    v2 = 0xEB00000000746E65;
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

uint64_t sub_10005DA5C(void *a1)
{
  v3 = v1;
  v5 = sub_1000021D4(&qword_100086C88, &qword_10006AB20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000226A8(a1, a1[3]);
  sub_1000602F0();
  sub_100064604();
  v11 = *v3;
  v12 = *(v3 + 8);
  v18[15] = 0;
  sub_100064534();
  if (!v2)
  {
    v18[14] = *(v3 + 9);
    v18[13] = 1;
    sub_100060440();
    sub_100064574();
    v18[12] = *(v3 + 10);
    v18[11] = 2;
    sub_100060494();
    sub_100064574();
    v18[10] = *(v3 + 11);
    v18[9] = 3;
    sub_1000604E8();
    sub_100064574();
    v13 = v3[2];
    v14 = v3[3];
    v18[8] = 4;
    sub_100064554();
    v15 = v3[4];
    v16 = v3[5];
    v18[7] = 5;
    sub_100064554();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005DCAC()
{
  if (*(v0 + 8) == 1)
  {
    sub_1000645D4(0);
  }

  else
  {
    v1 = *v0;
    sub_1000645D4(1u);
    sub_1000645C4(v1);
  }

  *(v0 + 9);
  sub_1000642C4();

  *(v0 + 10);
  sub_1000642C4();

  *(v0 + 11);
  sub_1000642C4();

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1000642C4();
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  return sub_1000642C4();
}

uint64_t sub_10005DEB4(void *a1)
{
  v3 = v1;
  v5 = sub_1000021D4(&qword_100086DF0, &qword_10006B0D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000226A8(a1, a1[3]);
  sub_100061358();
  sub_100064604();
  v11 = *(v3 + 16);
  v17 = *v3;
  v18 = v11;
  v19 = *(v3 + 32);
  v16 = 0;
  sub_100048204(v3, v15);
  sub_100061400();
  sub_100064574();
  v15[0] = v17;
  v15[1] = v18;
  v15[2] = v19;
  sub_1000480AC(v15);
  if (!v2)
  {
    v12 = *(v3 + 48);
    v14[15] = 1;
    sub_100064564();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005E078(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6557664F656D6974;
  v4 = 0xEA00000000006B65;
  if (v2 != 1)
  {
    v3 = 0x656D6974796E61;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6144664F656D6974;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  v7 = 0x6557664F656D6974;
  v8 = 0xEA00000000006B65;
  if (*a2 != 1)
  {
    v7 = 0x656D6974796E61;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6144664F656D6974;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100064594();
  }

  return v11 & 1;
}

Swift::Int sub_10005E184()
{
  v1 = *v0;
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10005E230()
{
  *v0;
  *v0;
  sub_1000642C4();
}

Swift::Int sub_10005E2C8()
{
  v1 = *v0;
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10005E370@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005FCF0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10005E3A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0xEA00000000006B65;
  v5 = 0x6557664F656D6974;
  if (v2 != 1)
  {
    v5 = 0x656D6974796E61;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6144664F656D6974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10005E4B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746365526B636F6CLL;
  v4 = 0xEF72616C75676E61;
  if (v2 != 1)
  {
    v3 = 1701670760;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696C6E496B636F6CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA0000000000656ELL;
  }

  v7 = 0x746365526B636F6CLL;
  v8 = 0xEF72616C75676E61;
  if (*a2 != 1)
  {
    v7 = 1701670760;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696C6E496B636F6CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000656ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100064594();
  }

  return v11 & 1;
}

Swift::Int sub_10005E5C4()
{
  v1 = *v0;
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10005E670()
{
  *v0;
  *v0;
  sub_1000642C4();
}

Swift::Int sub_10005E708()
{
  v1 = *v0;
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10005E7B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005FD3C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10005E7E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656ELL;
  v4 = 0xEF72616C75676E61;
  v5 = 0x746365526B636F6CLL;
  if (v2 != 1)
  {
    v5 = 1701670760;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696C6E496B636F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10005E8F8()
{
  v1 = *v0;
  v2 = 0x64496568636163;
  v3 = 1701869940;
  v4 = 1954047348;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74616E6974736564;
  if (v1 != 1)
  {
    v5 = 0x656C616373;
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

uint64_t sub_10005E9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005FD88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005E9D4(uint64_t a1)
{
  v2 = sub_1000602F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005EA10(uint64_t a1)
{
  v2 = sub_1000602F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10005EA4C()
{
  sub_1000645B4();
  sub_10005DCAC();
  return sub_1000645E4();
}

Swift::Int sub_10005EA90()
{
  sub_1000645B4();
  sub_10005DCAC();
  return sub_1000645E4();
}

double sub_10005EACC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10005FF8C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_10005EB28(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_10005F83C(v7, v8) & 1;
}

unint64_t sub_10005EB74()
{
  result = qword_100086C58;
  if (!qword_100086C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C58);
  }

  return result;
}

unint64_t sub_10005EBC8()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x74706D6F7270;
  }

  *v0;
  return result;
}

uint64_t sub_10005EC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v6 || (sub_100064594() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100074180 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100064594();

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

uint64_t sub_10005ECE4(uint64_t a1)
{
  v2 = sub_100061358();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005ED20(uint64_t a1)
{
  v2 = sub_100061358();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005ED5C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000610D0(a1, v6);
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

uint64_t sub_10005EDAC(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 48);
  return sub_10005DEB4(a1);
}

uint64_t sub_10005EDF0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v2;
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = a2[1];
  v9[2] = *(a1 + 32);
  v10[0] = v4;
  v6 = a2[2];
  v10[1] = v5;
  v10[2] = v6;
  v7 = *(a2 + 48);
  return sub_10005F83C(v9, v10) & ~(v3 ^ v7) & 1;
}

uint64_t sub_10005EE50(void *a1)
{
  v3 = v1;
  v5 = sub_1000021D4(&qword_100086D90, &qword_10006B0C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v10 = a1[4];
  sub_1000226A8(a1, a1[3]);
  sub_100060EDC();
  sub_100064604();
  v58 = 0;
  sub_1000021D4(&qword_100084E60, &unk_100065B80);
  sub_100060F84(&qword_100086DA0, &qword_100086DA8);
  sub_100064574();
  if (!v2)
  {
    started = type metadata accessor for StartWritingWidgetPersistedPrompts();
    v12 = (v3 + started[5]);
    v13 = v12[2];
    v14 = *v12;
    v15 = *v12;
    v52 = v12[1];
    v53 = v13;
    v51 = v14;
    v54 = *(v12 + 48);
    v47 = v15;
    v48 = v52;
    v49 = v12[2];
    v50 = *(v12 + 48);
    v57 = 1;
    sub_100048204(&v51, &v43);
    sub_100060F30();
    sub_100064574();
    v41[0] = v47;
    v41[1] = v48;
    v41[2] = v49;
    v42 = v50;
    sub_100048260(v41);
    v16 = (v3 + started[6]);
    v17 = v16[2];
    v18 = *v16;
    v19 = *v16;
    v44 = v16[1];
    v45 = v17;
    v43 = v18;
    v46 = *(v16 + 48);
    v37 = v19;
    v38 = v44;
    v39 = v16[2];
    v40 = *(v16 + 48);
    v56 = 2;
    sub_100048204(&v43, &v33);
    sub_100064574();
    v31[0] = v37;
    v31[1] = v38;
    v31[2] = v39;
    v32 = v40;
    sub_100048260(v31);
    v20 = (v3 + started[7]);
    v21 = v20[2];
    v22 = *v20;
    v23 = *v20;
    v34 = v20[1];
    v35 = v21;
    v33 = v22;
    v36 = *(v20 + 48);
    v27 = v23;
    v28 = v34;
    v29 = v20[2];
    v30 = *(v20 + 48);
    v55 = 3;
    sub_100048204(&v33, v25);
    sub_100064574();
    v25[0] = v27;
    v25[1] = v28;
    v25[2] = v29;
    v26 = v30;
    sub_100048260(v25);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005F210@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  v28 = sub_1000021D4(&qword_100086DB8, &qword_10006B0C8);
  v27 = *(v28 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v28);
  v10 = &v26 - v9;
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  v12 = *(*(started - 1) + 64);
  __chkstk_darwin(started);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v44 = a1;
  sub_1000226A8(a1, v16);
  sub_100060EDC();
  sub_1000645F4();
  if (v2)
  {
    return sub_1000226EC(v44);
  }

  v17 = v27;
  LOBYTE(v40) = 0;
  sub_100060F84(&qword_100086DC0, &qword_100086DC8);
  sub_100064504();
  sub_10006100C(v7, v14);
  v39 = 1;
  sub_10006107C();
  sub_100064504();
  v18 = &v14[started[5]];
  v19 = v41;
  v20 = v42;
  *v18 = v40;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  v18[48] = v43;
  v34 = 2;
  sub_100064504();
  v21 = &v14[started[6]];
  v22 = v36;
  *v21 = v35;
  *(v21 + 1) = v22;
  *(v21 + 2) = v37;
  v21[48] = v38;
  v29 = 3;
  sub_100064504();
  (*(v17 + 8))(v10, v28);
  v23 = &v14[started[7]];
  v24 = v31;
  *v23 = v30;
  *(v23 + 1) = v24;
  *(v23 + 2) = v32;
  v23[48] = v33;
  sub_10000C8CC(v14, v26);
  sub_1000226EC(v44);
  return sub_100048100(v14);
}

unint64_t sub_10005F6D0()
{
  v1 = 0x656D69746566696CLL;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x6F666E49656D6F68;
  }

  if (*v0)
  {
    v1 = 0x696C6E496B636F6CLL;
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

uint64_t sub_10005F75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100061684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005F790(uint64_t a1)
{
  v2 = sub_100060EDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005F7CC(uint64_t a1)
{
  v2 = sub_100060EDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005F83C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 9);
  v6 = 0x746365526B636F6CLL;
  v7 = 0xEF72616C75676E61;
  if (v5 != 1)
  {
    v6 = 1701670760;
    v7 = 0xE400000000000000;
  }

  if (*(a1 + 9))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x696C6E496B636F6CLL;
  }

  if (v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xEA0000000000656ELL;
  }

  v10 = 0x746365526B636F6CLL;
  v11 = 0xEF72616C75676E61;
  if (*(a2 + 9) != 1)
  {
    v10 = 1701670760;
    v11 = 0xE400000000000000;
  }

  if (*(a2 + 9))
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x696C6E496B636F6CLL;
  }

  if (*(a2 + 9))
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xEA0000000000656ELL;
  }

  if (v8 == v12 && v9 == v13)
  {
  }

  else
  {
    v14 = sub_100064594();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = 0x6557664F656D6974;
  v16 = 0xEA00000000006B65;
  v17 = 0xE700000000000000;
  if (*(a1 + 10) == 1)
  {
    v17 = 0xEA00000000006B65;
  }

  else
  {
    v15 = 0x656D6974796E61;
  }

  if (*(a1 + 10))
  {
    v18 = v15;
  }

  else
  {
    v18 = 0x6144664F656D6974;
  }

  if (*(a1 + 10))
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE900000000000079;
  }

  v20 = 0x6557664F656D6974;
  if (*(a2 + 10) != 1)
  {
    v20 = 0x656D6974796E61;
    v16 = 0xE700000000000000;
  }

  if (*(a2 + 10))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0x6144664F656D6974;
  }

  if (*(a2 + 10))
  {
    v22 = v16;
  }

  else
  {
    v22 = 0xE900000000000079;
  }

  if (v18 != v21 || v19 != v22)
  {
    v23 = sub_100064594();

    if (v23)
    {
      goto LABEL_48;
    }

    return 0;
  }

LABEL_48:
  if ((sub_10005D06C(*(a1 + 11), *(a2 + 11)) & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_100064594() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  return sub_100064594();
}

uint64_t sub_10005FAE0(uint64_t a1, uint64_t a2)
{
  sub_100063574();
  sub_1000483C8(&qword_100085458);
  if (sub_100064274() & 1) != 0 && (v4 = *(sub_1000021D4(&qword_100084E60, &unk_100065B80) + 36), (sub_100064274()))
  {
    started = type metadata accessor for StartWritingWidgetPersistedPrompts();
    v6 = a1 + started[5];
    v7 = *(v6 + 32);
    v32[1] = *(v6 + 16);
    v32[2] = v7;
    v32[0] = *v6;
    v8 = *(v6 + 48);
    v9 = a2 + started[5];
    v10 = *(v9 + 32);
    v33[1] = *(v9 + 16);
    v33[2] = v10;
    v33[0] = *v9;
    v11 = *(v9 + 48);
    v12 = sub_10005F83C(v32, v33);
    v13 = 0;
    if ((v12 & 1) != 0 && ((v8 ^ v11) & 1) == 0)
    {
      v14 = a1 + started[6];
      v15 = *(v14 + 32);
      v30[1] = *(v14 + 16);
      v30[2] = v15;
      v30[0] = *v14;
      v16 = *(v14 + 48);
      v17 = a2 + started[6];
      v18 = *(v17 + 32);
      v31[1] = *(v17 + 16);
      v31[2] = v18;
      v31[0] = *v17;
      v19 = *(v17 + 48);
      v20 = sub_10005F83C(v30, v31);
      v13 = 0;
      if ((v20 & 1) != 0 && ((v16 ^ v19) & 1) == 0)
      {
        v21 = a1 + started[7];
        v22 = *(v21 + 32);
        v28[1] = *(v21 + 16);
        v28[2] = v22;
        v28[0] = *v21;
        v23 = *(v21 + 48);
        v24 = a2 + started[7];
        v25 = *(v24 + 32);
        v29[1] = *(v24 + 16);
        v29[2] = v25;
        v29[0] = *v24;
        v26 = *(v24 + 48);
        v13 = sub_10005F83C(v28, v29) & (v23 ^ v26 ^ 1);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_10005FCA4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100082638;
  v6._object = a2;
  v4 = sub_100064494(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005FCF0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000826B8;
  v6._object = a2;
  v4 = sub_100064494(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005FD3C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100082720;
  v6._object = a2;
  v4 = sub_100064494(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005FD88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496568636163 && a2 == 0xE700000000000000;
  if (v4 || (sub_100064594() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_100064594() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_100064594() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_100064594() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_100064594() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100074140 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_100064594();

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

uint64_t sub_10005FF8C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000021D4(&qword_100086C60, &qword_10006AB18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_1000226A8(a1, a1[3]);
  sub_1000602F0();
  sub_1000645F4();
  if (v2)
  {
    return sub_1000226EC(a1);
  }

  LOBYTE(v36) = 0;
  v11 = sub_1000644C4();
  v45 = v12 & 1;
  LOBYTE(v33) = 1;
  sub_100060344();
  sub_100064504();
  v13 = v36;
  LOBYTE(v33) = 2;
  sub_100060398();
  sub_100064504();
  v32 = v13;
  v14 = v36;
  LOBYTE(v33) = 3;
  sub_1000603EC();
  sub_100064504();
  v30 = v14;
  v15 = v36;
  LOBYTE(v36) = 4;
  v16 = sub_1000644E4();
  v31 = v17;
  v28 = v15;
  v29 = v16;
  v46 = 5;
  v18 = sub_1000644E4();
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  v27 = v11;
  *&v33 = v11;
  HIDWORD(v26) = v45;
  BYTE8(v33) = v45;
  v21 = v32;
  BYTE9(v33) = v32;
  LOBYTE(v11) = v30;
  BYTE10(v33) = v30;
  v22 = v28;
  BYTE11(v33) = v28;
  v23 = v29;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  *&v35 = v18;
  *(&v35 + 1) = v20;
  sub_10000B264(&v33, &v36);
  sub_1000226EC(a1);
  v36 = v27;
  v37 = BYTE4(v26);
  v38 = v21;
  v39 = v11;
  v40 = v22;
  v41 = v23;
  v42 = v31;
  v43 = v18;
  v44 = v20;
  result = sub_1000480AC(&v36);
  v25 = v34;
  *a2 = v33;
  a2[1] = v25;
  a2[2] = v35;
  return result;
}

unint64_t sub_1000602F0()
{
  result = qword_100086C68;
  if (!qword_100086C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C68);
  }

  return result;
}

unint64_t sub_100060344()
{
  result = qword_100086C70;
  if (!qword_100086C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C70);
  }

  return result;
}

unint64_t sub_100060398()
{
  result = qword_100086C78;
  if (!qword_100086C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C78);
  }

  return result;
}

unint64_t sub_1000603EC()
{
  result = qword_100086C80;
  if (!qword_100086C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C80);
  }

  return result;
}

unint64_t sub_100060440()
{
  result = qword_100086C90;
  if (!qword_100086C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C90);
  }

  return result;
}

unint64_t sub_100060494()
{
  result = qword_100086C98;
  if (!qword_100086C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C98);
  }

  return result;
}

unint64_t sub_1000604E8()
{
  result = qword_100086CA0;
  if (!qword_100086CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086CA0);
  }

  return result;
}

__n128 sub_10006053C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100060558(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1000605A0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100060614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000606F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for StartWritingWidgetPersistedPrompts()
{
  result = qword_100086D00;
  if (!qword_100086D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100060808()
{
  sub_100060880();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100060880()
{
  if (!qword_100086D10)
  {
    sub_100063574();
    sub_1000483C8(&qword_1000864D0);
    v0 = sub_100064364();
    if (!v1)
    {
      atomic_store(v0, &qword_100086D10);
    }
  }
}

uint64_t getEnumTagSinglePayload for StartWritingWidgetPrompt.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StartWritingWidgetPrompt.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100060A80(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100060B10(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100060BD4()
{
  result = qword_100086D48;
  if (!qword_100086D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D48);
  }

  return result;
}

unint64_t sub_100060C2C()
{
  result = qword_100086D50;
  if (!qword_100086D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D50);
  }

  return result;
}

unint64_t sub_100060C84()
{
  result = qword_100086D58;
  if (!qword_100086D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D58);
  }

  return result;
}

unint64_t sub_100060CDC()
{
  result = qword_100086D60;
  if (!qword_100086D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D60);
  }

  return result;
}

unint64_t sub_100060D34()
{
  result = qword_100086D68;
  if (!qword_100086D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D68);
  }

  return result;
}

unint64_t sub_100060D8C()
{
  result = qword_100086D70;
  if (!qword_100086D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D70);
  }

  return result;
}

unint64_t sub_100060DE0()
{
  result = qword_100086D78;
  if (!qword_100086D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D78);
  }

  return result;
}

unint64_t sub_100060E34()
{
  result = qword_100086D80;
  if (!qword_100086D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D80);
  }

  return result;
}

unint64_t sub_100060E88()
{
  result = qword_100086D88;
  if (!qword_100086D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D88);
  }

  return result;
}

unint64_t sub_100060EDC()
{
  result = qword_100086D98;
  if (!qword_100086D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D98);
  }

  return result;
}

unint64_t sub_100060F30()
{
  result = qword_100086DB0;
  if (!qword_100086DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086DB0);
  }

  return result;
}

uint64_t sub_100060F84(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000221C(&qword_100084E60, &unk_100065B80);
    sub_1000483C8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006100C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006107C()
{
  result = qword_100086DD0;
  if (!qword_100086DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086DD0);
  }

  return result;
}

uint64_t sub_1000610D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000021D4(&qword_100086DD8, &qword_10006B0D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1000226A8(a1, a1[3]);
  sub_100061358();
  sub_1000645F4();
  if (v2)
  {
    return sub_1000226EC(a1);
  }

  v27 = 0;
  sub_1000613AC();
  sub_100064504();
  v23 = v20;
  v24 = v21;
  v25 = v22;
  v26 = 1;
  v11 = sub_1000644F4();
  (*(v6 + 8))(v9, v5);
  v11 &= 1u;
  v14 = v23;
  v15 = v24;
  v16 = v25;
  v17 = v11;
  sub_100048204(&v14, v18);
  sub_1000226EC(a1);
  v18[0] = v23;
  v18[1] = v24;
  v18[2] = v25;
  v19 = v11;
  result = sub_100048260(v18);
  v13 = v15;
  *a2 = v14;
  *(a2 + 16) = v13;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  return result;
}

unint64_t sub_100061358()
{
  result = qword_100086DE0;
  if (!qword_100086DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086DE0);
  }

  return result;
}

unint64_t sub_1000613AC()
{
  result = qword_100086DE8;
  if (!qword_100086DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086DE8);
  }

  return result;
}

unint64_t sub_100061400()
{
  result = qword_100086DF8;
  if (!qword_100086DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086DF8);
  }

  return result;
}

unint64_t sub_100061478()
{
  result = qword_100086E00;
  if (!qword_100086E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E00);
  }

  return result;
}

unint64_t sub_1000614D0()
{
  result = qword_100086E08;
  if (!qword_100086E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E08);
  }

  return result;
}

unint64_t sub_100061528()
{
  result = qword_100086E10;
  if (!qword_100086E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E10);
  }

  return result;
}

unint64_t sub_100061580()
{
  result = qword_100086E18;
  if (!qword_100086E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E18);
  }

  return result;
}

unint64_t sub_1000615D8()
{
  result = qword_100086E20;
  if (!qword_100086E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E20);
  }

  return result;
}

unint64_t sub_100061630()
{
  result = qword_100086E28;
  if (!qword_100086E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E28);
  }

  return result;
}

uint64_t sub_100061684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D69746566696CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_100064594() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C6E496B636F6CLL && a2 == 0xEE006F666E49656ELL || (sub_100064594() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100074160 == a2 || (sub_100064594() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F666E49656D6F68 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_100064594();

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

unint64_t sub_10006182C()
{
  result = qword_100086E30;
  if (!qword_100086E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E30);
  }

  return result;
}

id sub_1000618A4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100086E38 = result;
  return result;
}

uint64_t sub_1000618FC()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090E20);
  sub_1000049B4(v0, qword_100090E20);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_1000619A4()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090E38);
  sub_1000049B4(v0, qword_100090E38);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061A4C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090E50);
  sub_1000049B4(v0, qword_100090E50);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061AF4()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090E68);
  sub_1000049B4(v0, qword_100090E68);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061B9C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090E80);
  sub_1000049B4(v0, qword_100090E80);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061C44()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090E98);
  sub_1000049B4(v0, qword_100090E98);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061CEC()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090EB0);
  sub_1000049B4(v0, qword_100090EB0);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061D94()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090EC8);
  sub_1000049B4(v0, qword_100090EC8);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061E3C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090EE0);
  sub_1000049B4(v0, qword_100090EE0);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061EE4()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090EF8);
  sub_1000049B4(v0, qword_100090EF8);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061F8C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090F10);
  sub_1000049B4(v0, qword_100090F10);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100062034()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090F28);
  sub_1000049B4(v0, qword_100090F28);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_1000620DC()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090F40);
  sub_1000049B4(v0, qword_100090F40);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100062184()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090F58);
  sub_1000049B4(v0, qword_100090F58);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_10006222C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090F70);
  sub_1000049B4(v0, qword_100090F70);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_1000622D4()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090F88);
  sub_1000049B4(v0, qword_100090F88);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_10006237C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090FA0);
  sub_1000049B4(v0, qword_100090FA0);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100062424()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090FB8);
  sub_1000049B4(v0, qword_100090FB8);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_1000624CC()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090FD0);
  sub_1000049B4(v0, qword_100090FD0);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100062574()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090FE8);
  sub_1000049B4(v0, qword_100090FE8);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_10006261C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100091000);
  sub_1000049B4(v0, qword_100091000);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_1000626C4()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100091018);
  sub_1000049B4(v0, qword_100091018);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_10006276C()
{
  v0 = sub_1000636C4();
  sub_100009DBC(v0, qword_100091030);
  sub_1000049B4(v0, qword_100091030);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_1000636B4();
}

uint64_t sub_10006281C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100090238 == -1)
  {
    if (qword_100090240)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100062CE4();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100090240)
    {
      return _availability_version_check();
    }
  }

  if (qword_100090230 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100062CFC();
    a3 = v10;
    a4 = v9;
    v8 = dword_100090220 < v11;
    if (dword_100090220 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100090224 > a3)
      {
        return 1;
      }

      if (dword_100090224 >= a3)
      {
        return dword_100090228 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100090220 < a2;
  if (dword_100090220 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000629B0(uint64_t result)
{
  v1 = qword_100090240;
  if (qword_100090240)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100090240 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100090220, &dword_100090224, &dword_100090228);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}