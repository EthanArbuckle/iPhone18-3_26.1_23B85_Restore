uint64_t sub_100001E58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_100032550();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v49 - v9;
  v50 = sub_100031E80();
  v51 = *(v50 - 8);
  v11 = *(v51 + 64);
  __chkstk_darwin(v50, v50);
  v13 = &v49 - v12;
  v14 = sub_100031E80();
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  __chkstk_darwin(v14, v14);
  v60 = &v49 - v16;
  v55 = v17;
  v57 = sub_100031E80();
  v56 = *(v57 - 8);
  v18 = *(v56 + 64);
  v20 = __chkstk_darwin(v57, v19);
  v52 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v53 = &v49 - v23;
  v24 = *(v2 + *(a1 + 36));
  v61 = v4;
  v62 = v5;
  v63 = v2;
  sub_100032540();
  sub_1000321E0();
  v25 = (v2 + *(a1 + 44));
  v26 = *v25;
  v27 = *(v25 + 8);
  WitnessTable = swift_getWitnessTable();
  sub_100032450();
  (*(v58 + 8))(v10, v6);
  sub_100032200();
  v58 = a1;
  v29 = (v2 + *(a1 + 48));
  v30 = *v29;
  v31 = *(v29 + 8);
  v68 = WitnessTable;
  v69 = &protocol witness table for _PaddingLayout;
  v32 = v50;
  v33 = swift_getWitnessTable();
  sub_100032450();
  (*(v51 + 8))(v13, v32);
  sub_10000D4FC(&qword_100044AD0, &qword_100033B28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000334B0;
  LOBYTE(v26) = sub_1000321D0();
  *(inited + 32) = v26;
  v35 = sub_1000321C0();
  *(inited + 33) = v35;
  sub_1000321F0();
  sub_1000321F0();
  if (sub_1000321F0() != v26)
  {
    sub_1000321F0();
  }

  sub_1000321F0();
  if (sub_1000321F0() != v35)
  {
    sub_1000321F0();
  }

  v36 = (v2 + *(v58 + 52));
  v37 = *v36;
  v38 = *(v36 + 8);
  v66 = v33;
  v67 = &protocol witness table for _PaddingLayout;
  v39 = v55;
  v40 = swift_getWitnessTable();
  v41 = v52;
  v42 = v60;
  sub_100032450();
  (*(v54 + 8))(v42, v39);
  v64 = v40;
  v65 = &protocol witness table for _PaddingLayout;
  v43 = v57;
  swift_getWitnessTable();
  v44 = v56;
  v45 = *(v56 + 16);
  v46 = v53;
  v45(v53, v41, v43);
  v47 = *(v44 + 8);
  v47(v41, v43);
  v45(v59, v46, v43);
  return (v47)(v46, v43);
}

uint64_t sub_100002404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_1000024FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosReliveWidgetPlaceholderContent(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  v9 = *(v1 + *(v5 + 28));
  sub_10000F52C(v2, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosReliveWidgetPlaceholderContent);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_10000F688(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PhotosReliveWidgetPlaceholderContent);
  v12 = (v2 + *(v5 + 32));
  LOBYTE(v2) = *v12;
  LOBYTE(v5) = v12[1];
  *a1 = swift_getKeyPath();
  sub_10000D4FC(&qword_100044978, &qword_100033A38);
  swift_storeEnumTagMultiPayload();
  v13 = sub_10000D4FC(&qword_100044980, &qword_100033A40);
  v14 = (a1 + v13[11]);
  *v14 = sub_10000F6E4;
  v14[1] = v11;
  *(a1 + v13[9]) = v9;
  *(a1 + v13[10]) = 1;
  v15 = a1 + v13[12];
  *v15 = v2;
  v15[1] = v5;
}

uint64_t sub_1000026BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  v9 = *(v1 + *(v5 + 28));
  sub_10000F52C(v2, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosReliveWidgetMemoryContent);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_10000F688(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PhotosReliveWidgetMemoryContent);
  v12 = (v2 + *(v5 + 32));
  LOBYTE(v2) = *v12;
  LOBYTE(v5) = v12[1];
  *a1 = swift_getKeyPath();
  sub_10000D4FC(&qword_100044978, &qword_100033A38);
  swift_storeEnumTagMultiPayload();
  v13 = sub_10000D4FC(&qword_100044980, &qword_100033A40);
  v14 = (a1 + v13[11]);
  *v14 = sub_10000E2A0;
  v14[1] = v11;
  *(a1 + v13[9]) = v9;
  *(a1 + v13[10]) = 1;
  v15 = a1 + v13[12];
  *v15 = v2;
  v15[1] = v5;
}

uint64_t sub_10000287C@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_10000D4FC(&qword_100044978, &qword_100033A38);
  swift_storeEnumTagMultiPayload();
  v6 = sub_10000D4FC(&qword_100044CC8, &qword_100033DB0);
  *(a3 + v6[9]) = a1;
  *(a3 + v6[10]) = 0;
  v7 = a3 + v6[12];
  *v7 = a2 & 1;
  v7[1] = HIBYTE(a2) & 1;
}

uint64_t sub_100002930@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1, v3);
  (*(v6 + 16))(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  (*(v6 + 32))(v9 + v8, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for PhotosReliveWidgetPhotoView(255);
  sub_10000D57C(&qword_100044ED8, &qword_100033FD8);
  v20 = v10;
  v21 = v11;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_100032610();
  sub_100032B10();
  swift_getTupleTypeMetadata2();
  sub_100032610();
  swift_getWitnessTable();
  v12 = sub_100032570();
  WitnessTable = swift_getWitnessTable();
  v20 = v12;
  v21 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v20 = v12;
  v21 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v18 = sub_100031E40();
  v19 = v14;
  v15 = sub_100031E50();
  swift_getWitnessTable();
  v16 = *(*(v15 - 8) + 16);
  v16(&v20, &v18, v15);

  v18 = v20;
  v19 = v21;
  v16(a2, &v18, v15);
}

uint64_t sub_100002C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v38 = a2;
  v39 = a1;
  v40 = a5;
  v7 = sub_10000D4FC(&qword_100044CD0, &qword_100033DB8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v37 = v34 - v10;
  type metadata accessor for PhotosReliveWidgetPhotoView(255);
  sub_10000D57C(&qword_100044ED8, &qword_100033FD8);
  v45 = a3;
  v46 = a4;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_100032610();
  sub_100032B10();
  swift_getTupleTypeMetadata2();
  sub_100032610();
  v34[1] = swift_getWitnessTable();
  v11 = sub_100032570();
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  __chkstk_darwin(v11, v13);
  v15 = v34 - v14;
  WitnessTable = swift_getWitnessTable();
  v45 = v11;
  v46 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  v18 = v17[8];
  v20 = __chkstk_darwin(OpaqueTypeMetadata2, v19);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v25 = v34 - v24;
  v41 = a3;
  v42 = a4;
  v26 = v38;
  v43 = v38;
  v44 = v39;
  sub_1000325F0();
  sub_100032560();
  v27 = *(v26 + *(type metadata accessor for PhotosReliveWidgetContentView() + 36));
  v28 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_destination;
  v29 = sub_100031B90();
  v30 = v37;
  (*(*(v29 - 8) + 16))(v37, v27 + v28, v29);
  sub_10000D904(v30, 0, 1, v29);
  sub_1000323C0();
  sub_1000114E0(v30, &qword_100044CD0);
  (*(v36 + 8))(v15, v11);
  v31 = v17[2];
  v31(v25, v22, OpaqueTypeMetadata2);
  v32 = v17[1];
  v32(v22, OpaqueTypeMetadata2);
  v31(v40, v25, OpaqueTypeMetadata2);
  return (v32)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_100003064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a5;
  v9 = sub_10000D57C(&qword_100044ED8, &qword_100033FD8);
  __dst[0] = a3;
  __dst[1] = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v11 = sub_100032610();
  v88 = *(v11 - 8);
  v12 = *(v88 + 64);
  v14 = __chkstk_darwin(v11, v13);
  v87 = &v80 - v15;
  v89 = OpaqueTypeMetadata2;
  v86 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v86 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v83 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v92 = &v80 - v21;
  v22 = sub_10000D4FC(&qword_100044D88, &qword_100033E70);
  v23 = *(*(v22 - 8) + 64);
  v25 = __chkstk_darwin(v22 - 8, v24);
  v27 = &v80 - v26;
  v90 = v9;
  v82 = *(v9 - 8);
  v28 = *(v82 + 64);
  v30 = __chkstk_darwin(v25, v29);
  v91 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v32);
  v101 = &v80 - v33;
  v99 = v11;
  v98 = sub_100032B10();
  v95 = *(v98 - 8);
  v34 = *(v95 + 64);
  v36 = __chkstk_darwin(v98, v35);
  v93 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v38);
  v97 = &v80 - v39;
  v40 = type metadata accessor for PhotosReliveWidgetPhotoView(0);
  v41 = *(*(v40 - 8) + 64);
  v43 = __chkstk_darwin(v40, v42);
  v96 = &v80 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43, v45);
  v47 = &v80 - v46;
  v84 = a3;
  OpaqueTypeConformance2 = a4;
  v48 = type metadata accessor for PhotosReliveWidgetContentView();
  v49 = *(a1 + v48[9]);
  v50 = (a1 + v48[12]);
  LOBYTE(v9) = *v50;
  LOBYTE(a4) = v50[1];
  v94 = v40;
  v51 = *(v40 + 36);
  v52 = sub_100031E30();
  v53 = *(*(v52 - 8) + 16);
  v81 = a2;
  v53(&v47[v51], a2, v52);
  KeyPath = swift_getKeyPath();
  v55 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  *v47 = KeyPath;
  v47[8] = 0;
  *(v47 + 2) = v55;
  v47[24] = 0;
  *(v47 + 4) = v56;
  v47[40] = 0;
  *(v47 + 6) = v49;
  v47[56] = v9;
  v47[57] = a4;
  if (*(a1 + v48[10]) == 1)
  {

    sub_1000039A8(v105);
    memcpy(v104, v105, sizeof(v104));
    sub_100032720();
    v57 = sub_100032730();
    sub_10000D904(v27, 0, 1, v57);
    v81 = sub_10000D4FC(&qword_100044EE8, &qword_100034068);
    v80 = sub_1000107A0();
    sub_1000323B0();
    sub_1000114E0(v27, &qword_100044D88);
    memcpy(__dst, v104, 0xA0uLL);
    sub_1000114E0(__dst, &qword_100044EE8);
    v58 = v48[11];
    sub_100032720();
    sub_10000D904(v27, 0, 1, v57);
    v60 = v83;
    v59 = v84;
    v61 = OpaqueTypeConformance2;
    sub_1000323B0();
    sub_1000114E0(v27, &qword_100044D88);
    v105[0] = v59;
    v105[1] = v61;
    v84 = &opaque type descriptor for <<opaque return type of View._widgetAccentedRenderingMode(_:)>>;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v62 = v86;
    v63 = *(v86 + 16);
    v64 = v89;
    v63(v92, v60, v89);
    v86 = *(v62 + 8);
    (v86)(v60, v64);
    v65 = v82;
    v67 = v90;
    v66 = v91;
    (*(v82 + 16))(v91, v101, v90);
    v105[0] = v66;
    v68 = v92;
    v63(v60, v92, v64);
    v105[1] = v60;
    v104[0] = v67;
    v104[1] = v64;
    v102 = v81;
    v103 = v80;
    v102 = swift_getOpaqueTypeConformance2();
    v103 = OpaqueTypeConformance2;
    v69 = v87;
    sub_100003B8C(v105, 2, v104);
    v70 = v86;
    (v86)(v68, v64);
    v71 = *(v65 + 8);
    v71(v101, v67);
    v70(v60, v64);
    v71(v91, v67);
    v72 = v93;
    v73 = v99;
    (*(v88 + 32))(v93, v69, v99);
    sub_10000D904(v72, 0, 1, v73);
    swift_getWitnessTable();
    v74 = v97;
    sub_100003D08(v72, v97);
    v75 = v95;
    v76 = *(v95 + 8);
  }

  else
  {
    v72 = v93;
    sub_10000D904(v93, 1, 1, v99);
    swift_getWitnessTable();
    v74 = v97;
    sub_100003D08(v72, v97);
    v75 = v95;
    v76 = *(v95 + 8);
  }

  v77 = v98;
  v76(v72, v98);
  v78 = v96;
  sub_10000F52C(v47, v96, type metadata accessor for PhotosReliveWidgetPhotoView);
  __dst[0] = v78;
  (*(v75 + 16))(v72, v74, v77);
  __dst[1] = v72;
  v105[0] = v94;
  v105[1] = v77;
  v104[0] = sub_10000DD28(&qword_100044EE0, type metadata accessor for PhotosReliveWidgetPhotoView);
  __dst[20] = swift_getWitnessTable();
  v104[1] = swift_getWitnessTable();
  sub_100003B8C(__dst, 2, v105);
  v76(v74, v77);
  sub_100010744(v47);
  v76(v72, v77);
  return sub_100010744(v78);
}

double sub_1000039A8@<D0>(uint64_t a1@<X8>)
{
  sub_10000D4FC(&qword_100044F60, &qword_1000340A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000334B0;
  sub_100032490();
  sub_1000324C0();

  *(v2 + 32) = sub_100032580();
  *(v2 + 40) = v3;
  sub_100032490();
  sub_1000324C0();

  *(v2 + 48) = sub_100032580();
  *(v2 + 56) = v4;
  sub_100032590();
  sub_100032630();
  sub_100032640();
  sub_100031E60();
  sub_100031E20();
  v5 = sub_1000324A0();
  KeyPath = swift_getKeyPath();
  v7 = sub_1000321B0();
  v8 = sub_1000320C0();
  v9 = sub_100032050();
  sub_1000325F0();
  sub_100031E10();
  *a1 = KeyPath;
  *(a1 + 8) = v5;
  *(a1 + 16) = v11;
  *(a1 + 40) = v13;
  *(a1 + 24) = v12;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = sub_100003D74;
  *(a1 + 80) = 0;
  *(a1 + 88) = v9;
  *(a1 + 96) = sub_100003D74;
  *(a1 + 104) = 0;
  *(a1 + 112) = v14;
  *(a1 + 128) = v15;
  result = *&v16;
  *(a1 + 144) = v16;
  return result;
}

uint64_t sub_100003B8C(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata, a2);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v10 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata, a2);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v14 = (v6 + 32);
    v15 = a2;
    do
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v14;
      }

      v18 = *v13++;
      v17 = v18;
      v19 = *v5++;
      (*(*(v17 - 8) + 16))(&v12[v16], v19);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return sub_100032620();
}

uint64_t sub_100003D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100032B10();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

double sub_100003D7C()
{
  v1 = sub_100032000();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  v9 = *v0;

  sub_100032A30();
  v10 = sub_100032190();
  sub_100031D30();

  sub_100031FF0();
  swift_getAtKeyPath();
  sub_100011534(v7, 0);
  (*(v2 + 8))(v6, v1);
  return *&v11[1];
}

double sub_100003EC8()
{
  v1 = sub_100032000();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    return *(v0 + 16);
  }

  v9 = *(v0 + 16);

  sub_100032A30();
  v10 = sub_100032190();
  sub_100031D30();

  sub_100031FF0();
  swift_getAtKeyPath();
  sub_100011534(v7, 0);
  (*(v2 + 8))(v6, v1);
  return *&v11[1];
}

uint64_t sub_100004014()
{
  v1 = sub_100032000();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {
    v8 = *(v0 + 32);

    sub_100032A30();
    v9 = sub_100032190();
    sub_100031D30();

    sub_100031FF0();
    swift_getAtKeyPath();
    sub_100011534(v7, 0);
    (*(v2 + 8))(v6, v1);
    LOBYTE(v7) = v11[15];
  }

  return v7 & 1;
}

uint64_t sub_100004184@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v99 = a1;
  v3 = sub_10000D4FC(&qword_100045028, &qword_100034158);
  v96 = *(v3 - 8);
  v4 = *(v96 + 64);
  __chkstk_darwin(v3, v5);
  v95 = &v77 - v6;
  v97 = sub_10000D4FC(&qword_100045030, &qword_100034160);
  v7 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97, v8);
  v98 = &v77 - v9;
  v10 = sub_10000D4FC(&qword_100045038, &qword_100034168);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v84 = &v77 - v13;
  v88 = sub_10000D4FC(&qword_100045040, &qword_100034170);
  v14 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88, v15);
  v90 = &v77 - v16;
  v89 = sub_10000D4FC(&qword_100045048, &qword_100034178);
  v17 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89, v18);
  v79 = &v77 - v19;
  v20 = sub_10000D4FC(&qword_100045050, &qword_100034180);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  v92 = &v77 - v23;
  v24 = sub_1000324E0();
  v85 = *(v24 - 1);
  v86 = v24;
  v25 = *(v85 + 64);
  __chkstk_darwin(v24, v26);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10000D4FC(&qword_100045058, &qword_100034188);
  v29 = *(*(v78 - 8) + 64);
  v31 = __chkstk_darwin(v78, v30);
  v77 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v91 = &v77 - v34;
  v35 = *(v1 + 48);
  v36 = *(v35 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_layoutDescription);
  v37 = *(v35 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_layoutDescription + 24);
  v38 = *(type metadata accessor for PhotosReliveWidgetPhotoView(0) + 36);
  v39 = v36;
  v87 = v2;
  sub_100031E20();
  if (v36)
  {
    v81 = v10;
    v82 = v20;
    v83 = v3;
    sub_100032080();
    v40 = objc_opt_self();

    v41 = [v40 mainBundle];
    v42 = sub_100032380();
    v94 = v43;
    v95 = v42;
    v93 = v44;
    v96 = v45;
    v46 = v39;

    if (*(v35 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title + 8))
    {
      v47 = *(v35 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title);
      v48 = *(v35 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title + 8);
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
    }

    v103[0] = v47;
    v103[1] = v48;
    sub_10000EF70();

    sub_100032390();
    v80 = v46;
    sub_100032520();
    v57 = v85;
    v56 = v86;
    (*(v85 + 104))(v28, enum case for Image.ResizingMode.stretch(_:), v86);
    v58 = sub_100032510();

    (*(v57 + 8))(v28, v56);
    sub_1000325F0();
    sub_100031E10();
    *&v104[38] = v108;
    *&v104[22] = v107;
    *&v104[6] = v106;
    *(&v102[1] + 2) = *v104;
    v105 = 1;
    v102[0] = v58;
    LOWORD(v102[1]) = 257;
    *(&v102[2] + 2) = *&v104[16];
    *(&v102[3] + 2) = *&v104[32];
    *&v102[4] = *(&v108 + 1);
    sub_10000D4FC(&qword_1000450B0, &qword_1000341A0);
    sub_1000113D0();
    v59 = v91;
    sub_100032430();
    memcpy(v103, v102, sizeof(v103));
    sub_1000114E0(v103, &qword_1000450B0);
    v60 = v87;
    if ((sub_100004D18() & 1) != 0 && (v61 = *(v35 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_asset)) != 0)
    {
      sub_100011C34(v59, v77, &qword_100045058, &qword_100034188);
      sub_100011314();
      v86 = v61;
      v62 = v79;
      sub_100031D00();
      sub_1000325F0();
      sub_100031E10();
      v63 = (v62 + *(sub_10000D4FC(&qword_100045078, &qword_100034190) + 36));
      v64 = v102[1];
      *v63 = v102[0];
      v63[1] = v64;
      v63[2] = v102[2];
      v65 = *(v60 + 56);
      KeyPath = swift_getKeyPath();
      v67 = (v62 + *(v89 + 36));
      *v67 = KeyPath;
      sub_10000D4FC(&qword_100044978, &qword_100033A38);
      swift_storeEnumTagMultiPayload();
      *(v67 + *(type metadata accessor for AccentDesaturateModifier(0) + 20)) = v65;
      sub_100011C34(v62, v90, &qword_100045048, &qword_100034178);
      swift_storeEnumTagMultiPayload();
      sub_100011154(&qword_100045068, &qword_100045048, &qword_100034178, sub_100011204);
      sub_100011154(&qword_100045098, &qword_100045038, &qword_100034168, sub_100011314);
      v68 = v92;
      sub_100032150();

      v69 = v62;
      v70 = &qword_100045048;
    }

    else
    {
      v71 = *(v60 + 56);
      v72 = swift_getKeyPath();
      v73 = v84;
      v74 = &v84[*(v81 + 36)];
      *v74 = v72;
      sub_10000D4FC(&qword_100044978, &qword_100033A38);
      swift_storeEnumTagMultiPayload();
      *(v74 + *(type metadata accessor for AccentDesaturateModifier(0) + 20)) = v71;
      sub_100011C34(v59, v73, &qword_100045058, &qword_100034188);
      sub_100011C34(v73, v90, &qword_100045038, &qword_100034168);
      swift_storeEnumTagMultiPayload();
      sub_100011154(&qword_100045068, &qword_100045048, &qword_100034178, sub_100011204);
      sub_100011154(&qword_100045098, &qword_100045038, &qword_100034168, sub_100011314);
      v68 = v92;
      sub_100032150();
      v69 = v73;
      v70 = &qword_100045038;
    }

    sub_1000114E0(v69, v70);
    sub_100011C34(v68, v98, &qword_100045050, &qword_100034180);
    swift_storeEnumTagMultiPayload();
    sub_100011070();
    v75 = sub_10000D57C(&qword_100044F30, &qword_100034088);
    v76 = sub_1000109FC();
    v100 = v75;
    v101 = v76;
    swift_getOpaqueTypeConformance2();
    sub_100032150();
    sub_10000EFC4(v95, v94, v93 & 1);

    sub_1000114E0(v68, &qword_100045050);
    return sub_1000114E0(v59, &qword_100045058);
  }

  else
  {
    v49 = v3;
    v50 = sub_100032480();
    v103[0] = swift_getKeyPath();
    v103[1] = v50;
    v51 = sub_10000D4FC(&qword_100044F30, &qword_100034088);
    v52 = sub_1000109FC();
    v53 = v95;
    sub_1000323A0();

    v54 = v96;
    (*(v96 + 16))(v98, v53, v49);
    swift_storeEnumTagMultiPayload();
    sub_100011070();
    v103[0] = v51;
    v103[1] = v52;
    swift_getOpaqueTypeConformance2();
    sub_100032150();
    return (*(v54 + 8))(v53, v49);
  }
}

uint64_t sub_100004D18()
{
  if (*(*(v0 + 48) + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_useSpatialEffect) != 1)
  {
    return 0;
  }

  if (sub_100004DD0())
  {
    sub_100032A40();
    if (qword_100044630 != -1)
    {
      swift_once();
    }

    sub_100031D30();
    return 0;
  }

  return 1;
}

BOOL sub_100004DD0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 || (sub_100004014() & 1) != 0)
  {
    return 0;
  }

  v3 = sub_100003EC8();
  return v3 != 1.0 / sub_100003D7C();
}

uint64_t sub_100004E64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100032000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000D4FC(&qword_100044978, &qword_100033A38);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = (&v19 - v13);
  sub_100011C34(v2, &v19 - v13, &qword_100044978, &qword_100033A38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100032700();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_100032A30();
    v18 = sub_100032190();
    sub_100031D30();

    sub_100031FF0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_100005068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v67 = a2;
  v65 = sub_10000D4FC(&qword_100045178, &qword_100034238);
  v3 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65, v4);
  v6 = v55 - v5;
  v64 = sub_10000D4FC(&qword_100045180, &qword_100034240);
  v59 = *(v64 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v64, v8);
  v58 = v55 - v9;
  v60 = sub_10000D4FC(&qword_100045188, &qword_100034248);
  v10 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60, v11);
  v62 = v55 - v12;
  v13 = sub_10000D4FC(&qword_100044D88, &qword_100033E70);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = v55 - v16;
  v61 = sub_10000D4FC(&qword_100045190, &qword_100034250);
  v57 = *(v61 - 8);
  v18 = *(v57 + 64);
  __chkstk_darwin(v61, v19);
  v56 = v55 - v20;
  v21 = sub_10000D4FC(&qword_100045198, &qword_100034258);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21, v23);
  v63 = v55 - v24;
  v25 = sub_100032700();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = __chkstk_darwin(v25, v28);
  v31 = v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v32);
  v34 = v55 - v33;
  sub_100004E64(v55 - v33);
  sub_1000326F0();
  v35 = sub_1000326E0();
  v36 = *(v26 + 8);
  v36(v31, v25);
  v36(v34, v25);
  if (v35)
  {
    v55[0] = v6;
    v55[1] = v21;
    if (*(v2 + *(type metadata accessor for AccentDesaturateModifier(0) + 20)) == 1)
    {
      sub_100032720();
      v37 = sub_100032730();
      sub_10000D904(v17, 0, 1, v37);
      v38 = sub_10000D4FC(&qword_1000451A0, &qword_100034260);
      v39 = sub_100011BE0(&qword_1000451B0, &qword_1000451A0);
      v40 = v56;
      sub_1000323B0();
      sub_1000114E0(v17, &qword_100044D88);
      v41 = v57;
      v42 = v61;
      (*(v57 + 16))(v62, v40, v61);
      swift_storeEnumTagMultiPayload();
      v68 = v38;
      v69 = v39;
      swift_getOpaqueTypeConformance2();
      sub_100011924();
      v43 = v63;
      sub_100032150();
      (*(v41 + 8))(v40, v42);
    }

    else
    {
      v46 = sub_1000325B0();
      v48 = __chkstk_darwin(v46, v47);
      __chkstk_darwin(v48, v49);
      sub_10000D4FC(&qword_1000451C8, &qword_100034268);
      v50 = sub_10000D57C(&qword_1000451A0, &qword_100034260);
      v51 = sub_100011BE0(&qword_1000451B0, &qword_1000451A0);
      v68 = v50;
      v69 = v51;
      swift_getOpaqueTypeConformance2();
      sub_100011A2C();
      v52 = v58;
      sub_1000325C0();
      v53 = v59;
      v54 = v64;
      (*(v59 + 16))(v62, v52, v64);
      swift_storeEnumTagMultiPayload();
      sub_100011924();
      v43 = v63;
      sub_100032150();
      (*(v53 + 8))(v52, v54);
    }

    sub_100011C34(v43, v55[0], &qword_100045198, &qword_100034258);
    swift_storeEnumTagMultiPayload();
    sub_10000D4FC(&qword_1000451A0, &qword_100034260);
    sub_100011828();
    sub_100011BE0(&qword_1000451B0, &qword_1000451A0);
    sub_100032150();
    return sub_1000114E0(v43, &qword_100045198);
  }

  else
  {
    v44 = sub_10000D4FC(&qword_1000451A0, &qword_100034260);
    (*(*(v44 - 8) + 16))(v6, v66, v44);
    swift_storeEnumTagMultiPayload();
    sub_100011828();
    sub_100011BE0(&qword_1000451B0, &qword_1000451A0);
    return sub_100032150();
  }
}

uint64_t sub_100005880()
{
  v0 = sub_10000D4FC(&qword_100044D88, &qword_100033E70);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v7 - v3;
  sub_100032710();
  v5 = sub_100032730();
  sub_10000D904(v4, 0, 1, v5);
  sub_10000D4FC(&qword_1000451A0, &qword_100034260);
  sub_100011BE0(&qword_1000451B0, &qword_1000451A0);
  sub_1000323B0();
  return sub_1000114E0(v4, &qword_100044D88);
}

uint64_t sub_1000059A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000D4FC(&qword_100044D88, &qword_100033E70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = v17 - v5;
  sub_100032720();
  v7 = sub_100032730();
  sub_10000D904(v6, 0, 1, v7);
  sub_10000D4FC(&qword_1000451A0, &qword_100034260);
  sub_100011BE0(&qword_1000451B0, &qword_1000451A0);
  sub_1000323B0();
  sub_1000114E0(v6, &qword_100044D88);
  *(a1 + *(sub_10000D4FC(&qword_1000451D8, &qword_100034270) + 36)) = 0x3F847AE147AE147BLL;
  v8 = sub_1000325F0();
  v10 = v9;
  v11 = a1 + *(sub_10000D4FC(&qword_1000451C8, &qword_100034268) + 36);
  v17[1] = sub_100032490();
  sub_1000323A0();

  *(v11 + *(sub_10000D4FC(&qword_1000451F0, &qword_100034280) + 36)) = 0x3FD0000000000000;
  v12 = *(sub_10000D4FC(&qword_1000451F8, &qword_100034288) + 36);
  v13 = enum case for BlendMode.multiply(_:);
  v14 = sub_100032600();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  result = sub_10000D4FC(&qword_1000451E8, &qword_100034278);
  v16 = (v11 + *(result + 36));
  *v16 = v8;
  v16[1] = v10;
  return result;
}

void sub_100005C1C()
{
  sub_100011F0C();
  v2 = v1;
  v4 = v3;
  v5 = sub_100032270();
  v6 = sub_100011D60(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100011DAC();
  sub_100012088();
  v12 = sub_100032750();
  v13 = sub_100011D60(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13, v18);
  sub_100011DAC();
  v21 = v20 - v19;
  v22 = v2(0);
  sub_100012068(v22);
  (*(v15 + 16))(v21, v23 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v12);
  v24 = (v8 + 104);
  v25 = (v8 + 8);
  if ((*(v15 + 88))(v21, v12) == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_100032210();
    (*v24)(v0, enum case for Font.Leading.tight(_:), v5);
    sub_100012028();
    sub_100032290();

    (*v25)(v0, v5);
  }

  else
  {
    sub_100032250();
    (*v24)(v0, enum case for Font.Leading.tight(_:), v5);
    sub_100032290();

    (*v25)(v0, v5);
    (*(v15 + 8))(v21, v12);
  }

  if (v4 <= 1u)
  {
    sub_100032230();
    sub_100032260();
  }

  sub_100011EF4();
}

uint64_t sub_100005E8C()
{
  v0 = sub_100031A80();
  v1 = sub_100011D60(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100011DAC();
  v7 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  sub_100012068(v7);
  v9 = (v8 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title);
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];

    v12 = sub_100032900();

    sub_100031A70();
    isa = sub_100031A60().super.isa;
    v14 = *(v3 + 8);
    v15 = sub_100011F7C();
    v16(v15);
    v17 = [v12 px_stringByDeletingCharactersInSet:isa];

    sub_100032910();
  }

  return sub_100011EDC();
}

uint64_t sub_100005FDC()
{
  v0 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  sub_100012068(v0);
  if (!*(v1 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle + 8))
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle);
  sub_10000EF70();
  return sub_100032B20();
}

uint64_t sub_100006054()
{
  sub_100005E8C();
  sub_10000EF70();
  v0 = sub_100032390();
  v2 = v1;
  v4 = v3;
  sub_100005E8C();
  sub_100005C1C();

  v5 = sub_100032360();
  v7 = v6;
  v9 = v8;

  sub_10000EFC4(v0, v2, v4 & 1);

  sub_1000324B0();
  v10 = sub_100032350();

  sub_10000EFC4(v5, v7, v9 & 1);

  return v10;
}

uint64_t sub_1000061A0()
{
  v1 = (*(v0 + *(type metadata accessor for PhotosReliveWidgetPlaceholderContent(0) + 20)) + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title);
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  sub_10000EF70();

  v4 = sub_100032390();
  v6 = v5;
  v8 = v7;
  if (v1[1])
  {
    v9 = *v1;
    v10 = v1[1];
  }

  sub_100005C1C();

  v11 = sub_100032360();
  v13 = v12;
  v15 = v14;

  sub_10000EFC4(v4, v6, v8 & 1);

  sub_1000324B0();
  v16 = sub_100032350();

  sub_10000EFC4(v11, v13, v15 & 1);

  return v16;
}

uint64_t sub_100006350@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_10000D4FC(&qword_100044B50, &qword_100033C88);
  v3 = *(v2 - 8);
  v29 = v2;
  v30 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v28 - v6;
  v28 = v1;
  v35 = sub_100005FDC();
  v36 = v8;
  sub_10000EF70();
  v9 = sub_100032390();
  v11 = v10;
  v13 = v12;
  sub_100005FDC();

  sub_1000322A0();
  sub_100032240();
  sub_100032260();

  v14 = sub_100032360();
  v16 = v15;
  v18 = v17;

  sub_10000EFC4(v9, v11, v13 & 1);

  sub_1000324B0();
  v19 = sub_100032350();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_10000EFC4(v14, v16, v18 & 1);

  v35 = v19;
  v36 = v21;
  v37 = v23 & 1;
  v38 = v25;
  sub_1000325B0();
  sub_100032090();
  v32 = v28;
  sub_10000D4FC(&qword_100044B58, &qword_100033C90);
  v33 = &type metadata for Solarium;
  v34 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_10000EBF8();
  v26 = v29;
  sub_100032470();
  (*(v30 + 8))(v7, v26);
  sub_10000EFC4(v19, v21, v23 & 1);
}

uint64_t sub_10000660C@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v2 = sub_10000D4FC(&qword_100044B50, &qword_100033C88);
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2, v4);
  v6 = v33 - v5;
  v7 = *(type metadata accessor for PhotosReliveWidgetPlaceholderContent(0) + 20);
  v33[0] = v1;
  v8 = (*(v1 + v7) + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle);
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v38 = v9;
  v39 = v10;
  sub_10000EF70();

  v11 = sub_100032390();
  v13 = v12;
  v15 = v14;
  if (v8[1])
  {
    v16 = v8[1];
  }

  sub_1000322A0();
  sub_100032240();
  sub_100032260();

  v17 = sub_100032360();
  v19 = v18;
  v21 = v20;

  sub_10000EFC4(v11, v13, v15 & 1);

  sub_1000324B0();
  v22 = sub_100032350();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_10000EFC4(v17, v19, v21 & 1);

  v38 = v22;
  v39 = v24;
  v40 = v26 & 1;
  v41 = v28;
  sub_1000325B0();
  v29 = sub_100032090();
  __chkstk_darwin(v29, v30);
  sub_10000D4FC(&qword_100044B58, &qword_100033C90);
  v36 = &type metadata for Solarium;
  v37 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_10000EBF8();
  v31 = v35;
  sub_100032470();
  (*(v34 + 8))(v6, v31);
  sub_10000EFC4(v22, v24, v26 & 1);
}

void sub_100006944()
{
  sub_100011F0C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  HIDWORD(v28) = v7;
  v9 = v8;
  v11 = v10;
  v29 = v12;
  v13 = sub_10000D4FC(&qword_100044BC8, &qword_100033CE8);
  sub_100011D74(v13);
  v15 = *(v14 + 64);
  sub_100011DBC();
  __chkstk_darwin(v16, v17);
  sub_100011ECC();
  v18 = sub_10000D4FC(&qword_100044BD0, &qword_100033CF0);
  sub_100011D60(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_100011DBC();
  __chkstk_darwin(v23, v24);
  v26 = &v28 - v25;
  if (*(v4 + *(v2(0) + 24)))
  {
    *v0 = v11;
    *(v0 + 8) = v9;
    v27 = BYTE4(v28) & 1;
    *(v0 + 16) = BYTE4(v28) & 1;
    *(v0 + 24) = v6;
    sub_100012008();
    swift_storeEnumTagMultiPayload();
    sub_10000F058(v11, v9, v27);

    v30 = &type metadata for Text;
    v31 = &protocol witness table for Text;
    sub_100011E80();
    sub_100011F88();
    sub_100032150();
  }

  else
  {
    v30 = v11;
    v31 = v9;
    v32 = BYTE4(v28) & 1;
    v33 = v6;
    sub_1000323A0();
    (*(v20 + 16))(v0, v26, v18);
    sub_100012008();
    swift_storeEnumTagMultiPayload();
    v30 = &type metadata for Text;
    v31 = &protocol witness table for Text;
    sub_100011E80();
    sub_100011F88();
    sub_100032150();
    (*(v20 + 8))(v26, v18);
  }

  sub_100011EF4();
}

void sub_100006B50(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = sub_10000D4FC(&qword_100044CB8, &qword_100033DA0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v90[-v10];
  v104 = sub_100032310();
  v12 = *(v104 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v104, v14);
  v16 = &v90[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10000D4FC(&qword_100044CC0, &qword_100033DA8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v105 = &v90[-v20];
  v21 = sub_100031CF0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v26 = &v90[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *(v3 + *(type metadata accessor for PhotosReliveWidgetMemoryContent(0) + 20));
  v28 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout);
  v29 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 1);
  v30 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 8);
  v31 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 16);
  v32 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 24);
  LODWORD(v33) = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 25);
  v34 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 32);
  v35 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 40);
  if (!*(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 1))
  {
    goto LABEL_23;
  }

  if (v29 != 1)
  {
    if (!*(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title + 8))
    {
      LOBYTE(v29) = 2;
      goto LABEL_23;
    }

    LODWORD(v99) = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 40);
    v100 = v28;
    v101 = v32;
    v102 = v34;
    v103 = a1;
    v47 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title);
    v48 = objc_opt_self();

    v49 = [v48 defaultSpecs];
    v50 = sub_100032900();

    [v49 maximumWidthForTitle:v50 containerSize:{a2, a3}];
    v52 = v51;

    if (v52 <= 0.0)
    {
      goto LABEL_21;
    }

    LODWORD(v98) = v33;
    v53 = sub_100006054();
    v55 = v54;
    v57 = v56;
    v95 = sub_1000322D0();
    v96 = v49;
    sub_10000D904(v105, 1, 1, v95);
    v94 = sub_100032370();
    sub_10000D904(v11, 1, 1, v94);
    v49 = v96;
    sub_100032300();
    v97 = sub_1000322F0();
    sub_10000EFC4(v53, v55, v57 & 1);

    v60 = *(v12 + 8);
    v58 = v12 + 8;
    v59 = v60;
    v60(v16, v104);
    v61 = [v49 maximumNumberOfLinesForTitle];
    if ((v61 & 0x8000000000000000) != 0)
    {
LABEL_21:

      v34 = 0;
      LOBYTE(v33) = 0;
      v30 = 0.0;
      LOBYTE(v29) = 0;
      LOBYTE(v32) = 2;
      LOBYTE(v35) = 1;
      LOBYTE(v31) = 1;
      LOBYTE(v28) = 2;
      a1 = v103;
      goto LABEL_23;
    }

    a1 = v103;
    if (v61 < v97)
    {

      v34 = 0;
      LOBYTE(v33) = 0;
      v30 = 0.0;
      LOBYTE(v29) = 0;
      LOBYTE(v32) = 2;
      LOBYTE(v35) = 1;
      LOBYTE(v31) = 1;
      LOBYTE(v28) = 2;
      goto LABEL_23;
    }

    if (v98)
    {
      if (v98 != 1)
      {
        v97 = *&v52;
        v63 = (v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle);
        v64 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle + 8);
        v93 = v58;
        if (v64)
        {
          v65 = *v63;

          v66 = sub_100032900();
        }

        else
        {
          v66 = 0;
        }

        [v96 maximumWidthForSubtitle:v66 titleWidth:v52];
        v68 = v67;

        v102 = v68;
        v106 = sub_100005FDC();
        v107 = v69;
        sub_10000EF70();
        v98 = sub_100032390();
        v99 = v70;
        v72 = v71;
        v74 = v73;
        sub_100005FDC();

        sub_1000322A0();
        v75 = sub_100032360();
        v77 = v76;
        v91 = v78;

        sub_10000EFC4(v98, v72, v74 & 1);

        sub_1000324B0();
        v79 = v91;
        v92 = sub_100032350();
        v98 = v81;
        v99 = v80;
        v83 = v82;

        sub_10000EFC4(v75, v77, v79 & 1);

        sub_10000D904(v105, 1, 1, v95);
        sub_10000D904(v11, 1, 1, v94);
        sub_100032300();
        v84 = v92;
        v85 = v99;
        v86 = sub_1000322F0();
        sub_10000EFC4(v84, v85, v83 & 1);

        v59(v16, v104);
        v87 = v96;
        v88 = [v96 maximumNumberOfLinesForSubtitle];

        v34 = v102;
        a1 = v103;
        LOBYTE(v35) = 0;
        LOBYTE(v31) = 0;
        v89 = v88 < v86 || v88 < 0;
        LOBYTE(v29) = 2;
        if (v89)
        {
          LOBYTE(v33) = 0;
        }

        else
        {
          LOBYTE(v33) = 2;
        }

        LOBYTE(v28) = v100;
        LOBYTE(v32) = v101;
        v30 = *&v97;
        goto LABEL_23;
      }

      v30 = v52;
      LOBYTE(v31) = 0;
      LOBYTE(v29) = 2;
      LOBYTE(v33) = 1;
    }

    else
    {

      v30 = v52;
      LOBYTE(v33) = 0;
      LOBYTE(v31) = 0;
      LOBYTE(v29) = 2;
    }

    LOBYTE(v28) = v100;
    LOBYTE(v32) = v101;
    v34 = v102;
    LOBYTE(v35) = v99;
    goto LABEL_23;
  }

  v100 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout);
  v101 = v32;
  v102 = v34;
  v97 = *&v30;
  LODWORD(v99) = v35;
  LODWORD(v104) = v31;
  sub_100031CE0();
  v36 = sub_100006054();
  v38 = v37;
  v40 = v39;
  v103 = a1;
  LODWORD(v98) = v33;
  v33 = v105;
  sub_1000322C0();
  v41 = sub_1000322D0();
  sub_10000D904(v33, 0, 1, v41);
  v42 = sub_1000322E0();
  sub_10000EFC4(v36, v38, v40 & 1);
  a1 = v103;

  v43 = v33;
  LOBYTE(v33) = v98;
  sub_1000114E0(v43, &qword_100044CC0);
  v44 = sub_100031CD0();
  v46 = v44 < 0 || v44 < v42;
  (*(v22 + 8))(v26, v21);
  v30 = *&v97;
  LOBYTE(v28) = v100;
  LOBYTE(v32) = v101;
  v34 = v102;
  if (v46)
  {
    v34 = 0;
  }

  LOBYTE(v35) = v46 | v99;
  if (v46)
  {
    LOBYTE(v33) = 0;
    LOBYTE(v32) = 2;
    v30 = 0.0;
  }

  LOBYTE(v31) = v46 | v104;
  LOBYTE(v29) = !v46;
  if (v46)
  {
    LOBYTE(v28) = 2;
  }

LABEL_23:
  LOBYTE(v106) = v31 & 1;
  v62 = v35 & 1;
  v108 = v62;
  *a1 = v28;
  *(a1 + 1) = v29;
  *(a1 + 8) = v30;
  *(a1 + 16) = v31 & 1;
  *(a1 + 24) = v32;
  *(a1 + 25) = v33;
  *(a1 + 32) = v34;
  *(a1 + 40) = v62;
}

void sub_100007360(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = sub_10000D4FC(&qword_100044CB8, &qword_100033DA0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v97[-v10];
  v112 = sub_100032310();
  v12 = *(v112 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v112, v14);
  v16 = &v97[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10000D4FC(&qword_100044CC0, &qword_100033DA8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v113 = &v97[-v20];
  v21 = sub_100031CF0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v26 = &v97[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *(v3 + *(type metadata accessor for PhotosReliveWidgetPlaceholderContent(0) + 20));
  v28 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout);
  v29 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 1);
  v30 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 8);
  v31 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 16);
  v32 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 24);
  LODWORD(v33) = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 25);
  v34 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 32);
  v35 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 40);
  if (!*(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 1))
  {
    goto LABEL_25;
  }

  if (v29 == 1)
  {
    v108 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout);
    v109 = v32;
    v110 = v34;
    v105 = v30;
    LODWORD(v107) = v35;
    LODWORD(v112) = v31;
    sub_100031CE0();
    v36 = sub_1000061A0();
    v38 = v37;
    v40 = v39;
    v111 = a1;
    LODWORD(v106) = v33;
    v33 = v113;
    sub_1000322C0();
    v41 = sub_1000322D0();
    sub_10000D904(v33, 0, 1, v41);
    v42 = sub_1000322E0();
    sub_10000EFC4(v36, v38, v40 & 1);
    a1 = v111;

    v43 = v33;
    LOBYTE(v33) = v106;
    sub_1000114E0(v43, &qword_100044CC0);
    v44 = sub_100031CD0();
    v46 = v44 < 0 || v44 < v42;
    (*(v22 + 8))(v26, v21);
    v30 = v105;
    LOBYTE(v28) = v108;
    LOBYTE(v32) = v109;
    v34 = v110;
    if (v46)
    {
      v34 = 0;
    }

    LOBYTE(v35) = v46 | v107;
    if (v46)
    {
      LOBYTE(v33) = 0;
      LOBYTE(v32) = 2;
      v30 = 0.0;
    }

    LOBYTE(v31) = v46 | v112;
    LOBYTE(v29) = !v46;
    if (v46)
    {
      LOBYTE(v28) = 2;
    }

    goto LABEL_25;
  }

  if (!*(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title + 8))
  {
    LOBYTE(v29) = 2;
    goto LABEL_25;
  }

  LODWORD(v107) = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 40);
  v108 = v28;
  v109 = v32;
  v110 = v34;
  v111 = a1;
  v47 = *(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title);
  v48 = objc_opt_self();

  v49 = [v48 defaultSpecs];
  v50 = sub_100032900();

  [v49 maximumWidthForTitle:v50 containerSize:{a2, a3}];
  v52 = v51;

  if (v52 <= 0.0)
  {

LABEL_24:
    v34 = 0;
    LOBYTE(v33) = 0;
    v30 = 0.0;
    LOBYTE(v29) = 0;
    LOBYTE(v32) = 2;
    LOBYTE(v35) = 1;
    LOBYTE(v31) = 1;
    LOBYTE(v28) = 2;
    a1 = v111;
    goto LABEL_25;
  }

  LODWORD(v106) = v33;
  v53 = sub_1000061A0();
  v55 = v54;
  v104 = v49;
  v57 = v56;
  v103 = sub_1000322D0();
  sub_10000D904(v113, 1, 1, v103);
  v102 = sub_100032370();
  sub_10000D904(v11, 1, 1, v102);
  sub_100032300();
  v58 = sub_1000322F0();
  v59 = v57 & 1;
  v60 = v104;
  sub_10000EFC4(v53, v55, v59);

  v63 = *(v12 + 8);
  v61 = v12 + 8;
  v62 = v63;
  v63(v16, v112);
  v64 = [v60 maximumNumberOfLinesForTitle];
  if ((v64 & 0x8000000000000000) != 0)
  {

    goto LABEL_24;
  }

  a1 = v111;
  if (v64 < v58)
  {

    v34 = 0;
    LOBYTE(v33) = 0;
    v30 = 0.0;
    LOBYTE(v29) = 0;
    LOBYTE(v32) = 2;
    LOBYTE(v35) = 1;
    LOBYTE(v31) = 1;
    LOBYTE(v28) = 2;
    goto LABEL_25;
  }

  if (!v106)
  {

    v30 = v52;
    LOBYTE(v33) = 0;
    LOBYTE(v31) = 0;
    LOBYTE(v29) = 2;
    goto LABEL_30;
  }

  if (v106 == 1)
  {

    v30 = v52;
    LOBYTE(v31) = 0;
    LOBYTE(v29) = 2;
    LOBYTE(v33) = 1;
LABEL_30:
    LOBYTE(v28) = v108;
    LOBYTE(v32) = v109;
    v34 = v110;
    LOBYTE(v35) = v107;
    goto LABEL_25;
  }

  v107 = v61;
  v105 = v52;
  v66 = (v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle);
  if (*(v27 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_subtitle + 8))
  {
    v67 = *v66;

    v60 = v104;
    v68 = sub_100032900();
  }

  else
  {
    v68 = 0;
  }

  [v60 maximumWidthForSubtitle:v68 titleWidth:v52];
  v70 = v69;

  v71 = v66[1];
  v110 = v70;
  if (v71)
  {
    v72 = *v66;
    v73 = v71;
  }

  else
  {
    v72 = 0;
    v73 = 0xE000000000000000;
  }

  v114 = v72;
  v115 = v73;
  sub_10000EF70();

  v74 = sub_100032390();
  v76 = v75;
  v78 = v77;
  v106 = v79;
  if (v66[1])
  {
    v80 = v66[1];
  }

  sub_1000322A0();
  v81 = sub_100032360();
  v83 = v82;
  v98 = v84;
  v99 = v85;

  sub_10000EFC4(v74, v76, v78 & 1);

  sub_1000324B0();
  v86 = v98;
  v100 = sub_100032350();
  v106 = v87;
  v89 = v88;
  v101 = v90;

  sub_10000EFC4(v81, v83, v86 & 1);

  sub_10000D904(v113, 1, 1, v103);
  sub_10000D904(v11, 1, 1, v102);
  sub_100032300();
  v91 = v100;
  v92 = v106;
  v93 = sub_1000322F0();
  sub_10000EFC4(v91, v92, v89 & 1);

  v62(v16, v112);
  v94 = v104;
  v95 = [v104 maximumNumberOfLinesForSubtitle];

  LOBYTE(v35) = 0;
  LOBYTE(v31) = 0;
  v96 = v95 < v93 || v95 < 0;
  LOBYTE(v29) = 2;
  if (v96)
  {
    LOBYTE(v33) = 0;
  }

  else
  {
    LOBYTE(v33) = 2;
  }

  v34 = v110;
  a1 = v111;
  LOBYTE(v28) = v108;
  LOBYTE(v32) = v109;
  v30 = v105;
LABEL_25:
  LOBYTE(v114) = v31 & 1;
  v65 = v35 & 1;
  v116 = v65;
  *a1 = v28;
  *(a1 + 1) = v29;
  *(a1 + 8) = v30;
  *(a1 + 16) = v31 & 1;
  *(a1 + 24) = v32;
  *(a1 + 25) = v33;
  *(a1 + 32) = v34;
  *(a1 + 40) = v65;
}

void sub_100007BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100011F0C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_10000D4FC(&qword_100044988, &qword_100033A48);
  sub_100011D74(v29);
  v31 = *(v30 + 64);
  sub_100011DBC();
  __chkstk_darwin(v32, v33);
  sub_100011ECC();
  v34 = sub_10000D4FC(&qword_100044990, &qword_100033A50);
  sub_100011D74(v34);
  v36 = *(v35 + 64);
  sub_100011DBC();
  __chkstk_darwin(v37, v38);
  v40 = (&a9 - v39);
  *v40 = sub_1000325F0();
  v40[1] = v41;
  v42 = v40 + *(sub_10000D4FC(&qword_100044998, &qword_100033A58) + 44);
  v24(v26, v28);
  v43 = enum case for DynamicTypeSize.xxLarge(_:);
  v44 = sub_100031E70();
  sub_100011D74(v44);
  (*(v45 + 104))(v20, v43, v44);
  sub_100011E08();
  sub_10000DD28(v46, v47);
  if (sub_100032890())
  {
    sub_100011F70();
    sub_100011BE0(v48, v49);
    sub_100011D84();
    sub_100011BE0(v50, &qword_100044988);
    sub_100032420();
    sub_1000114E0(v20, &qword_100044988);
    sub_100011F70();
    sub_1000114E0(v51, v52);
    sub_100011EF4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100007DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v125 = a3;
  v4 = sub_10000D4FC(&qword_1000449B8, &qword_100033A60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v121 = &v108[-v7];
  v122 = sub_10000D4FC(&qword_1000449C0, &qword_100033A68);
  v8 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122, v9);
  v120 = &v108[-v10];
  v11 = sub_10000D4FC(&qword_1000449C8, &qword_100033A70);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v124 = &v108[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14, v16);
  v123 = &v108[-v17];
  v112 = sub_10000D4FC(&qword_1000449D0, &qword_100033A78);
  v18 = *(*(v112 - 1) + 64);
  v20 = __chkstk_darwin(v112, v19);
  v115 = &v108[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20, v22);
  v114 = &v108[-v23];
  v117 = sub_10000D4FC(&qword_1000449D8, &qword_100033A80);
  v24 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117, v25);
  v113 = &v108[-v26];
  v27 = sub_10000D4FC(&qword_1000449E0, &qword_100033A88);
  v28 = *(*(v27 - 8) + 64);
  v30 = __chkstk_darwin(v27 - 8, v29);
  v119 = &v108[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30, v32);
  v127 = &v108[-v33];
  v34 = sub_10000D4FC(&qword_1000449E8, &qword_100033A90);
  v35 = *(*(v34 - 1) + 64);
  v37 = __chkstk_darwin(v34, v36);
  v39 = &v108[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v37, v40);
  v42 = &v108[-v41];
  v43 = sub_10000D4FC(&qword_1000449F0, &qword_100033A98);
  v44 = *(*(v43 - 8) + 64);
  v46 = __chkstk_darwin(v43 - 8, v45);
  v118 = &v108[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46, v48);
  v126 = &v108[-v49];
  v50 = sub_100032750();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50, v53);
  v55 = &v108[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = 1;
  sub_1000093D8(1, type metadata accessor for PhotosReliveWidgetMemoryContent);
  v58 = v57;
  sub_1000093D8(0, type metadata accessor for PhotosReliveWidgetMemoryContent);
  v60 = v59;
  v61 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  (*(v51 + 16))(v55, *(a1 + *(v61 + 20)) + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v50);
  v62 = 12.0;
  if ((*(v51 + 88))(v55, v50) != enum case for WidgetFamily.systemSmall(_:))
  {
    (*(v51 + 8))(v55, v50);
    v62 = 18.0;
  }

  sub_100031E20();
  v64 = v63 - (v58 + v60);
  sub_100031E20();
  sub_100006B50(&v128, v64, v65 - (v62 + v62));
  v66 = v128;
  v110 = v131;
  v116 = v132;
  v111 = v133;
  v67 = sub_100025AAC(v128, v129, v130, v131, v132, v133);
  v68 = sub_100032070();
  v69 = v126;
  *v126 = v68;
  v69[1] = 0;
  *(v69 + 16) = 1;
  v70 = sub_100009DF4(v66);
  v72 = v71;
  sub_1000320D0();
  v73 = sub_1000320A0();
  v74 = &v42[v34[11]];
  v75 = &v42[v34[12]];
  v76 = &v42[v34[13]];
  *v74 = v58;
  *(v74 + 8) = 0;
  *v75 = v60;
  *(v75 + 8) = 0;
  *v76 = v62;
  *(v76 + 8) = 0;
  *&v42[v34[9]] = v70;
  *&v42[v34[10]] = v72;
  sub_100009E84();
  sub_1000320C0();
  v77 = sub_1000320A0();
  v78 = v69 + *(sub_10000D4FC(&qword_1000449F8, &qword_100033AA0) + 44);
  sub_100011C34(v42, v39, &qword_1000449E8, &qword_100033A90);
  *v78 = 0;
  v78[8] = 0;
  v78[9] = (v73 & 1) == 0;
  v79 = sub_10000D4FC(&qword_100044A00, &qword_100033AA8);
  sub_100011C34(v39, &v78[*(v79 + 48)], &qword_1000449E8, &qword_100033A90);
  v80 = &v78[*(v79 + 64)];
  *v80 = 0;
  v80[8] = 0;
  v80[9] = (v77 & 1) == 0;
  sub_1000114E0(v42, &qword_1000449E8);
  sub_1000114E0(v39, &qword_1000449E8);
  if (!v67)
  {
    v81 = sub_100032070();
    v82 = v113;
    *v113 = v81;
    *(v82 + 8) = 0;
    *(v82 + 16) = 1;
    sub_100009DF4(v110);
    sub_1000320D0();
    v109 = sub_1000320A0();
    v83 = sub_1000320B0();
    v84 = sub_100032060();
    v85 = v112;
    v86 = v114;
    v87 = &v114[v112[11]];
    v88 = &v114[v112[12]];
    v89 = &v114[v112[13]];
    *v87 = v58;
    *(v87 + 8) = 0;
    *v88 = v60;
    *(v88 + 8) = 0;
    *v89 = v62;
    *(v89 + 8) = 0;
    *(v86 + v85[9]) = v83;
    *(v86 + v85[10]) = v84;
    sub_10000B534();
    sub_1000320C0();
    v90 = sub_1000320A0();
    v91 = v82 + *(sub_10000D4FC(&qword_100044A08, &qword_100033AB0) + 44);
    v92 = v115;
    sub_100011C34(v86, v115, &qword_1000449D0, &qword_100033A78);
    *v91 = 0;
    *(v91 + 8) = 0;
    *(v91 + 9) = (v109 & 1) == 0;
    v93 = sub_10000D4FC(&qword_100044A10, &qword_100033AB8);
    sub_100011C34(v92, v91 + *(v93 + 48), &qword_1000449D0, &qword_100033A78);
    v94 = v91 + *(v93 + 64);
    *v94 = 0;
    *(v94 + 8) = 0;
    v95 = v127;
    *(v94 + 9) = (v90 & 1) == 0;
    sub_1000114E0(v86, &qword_1000449D0);
    sub_1000114E0(v92, &qword_1000449D0);
    sub_10000E2CC(v82, v95, &qword_1000449D8, &qword_100033A80);
    v56 = 0;
  }

  sub_10000D904(v127, v56, 1, v117);
  v96 = v121;
  sub_1000096FC(v121);
  if (sub_100009D98())
  {
    sub_1000325D0();
  }

  else
  {
    sub_1000325E0();
  }

  sub_100031EB0();
  v97 = v120;
  sub_10000E2CC(v96, v120, &qword_1000449B8, &qword_100033A60);
  v98 = v122;
  memcpy(&v97[*(v122 + 36)], __src, 0x70uLL);
  v99 = v123;
  sub_10000E2CC(v97, v123, &qword_1000449C0, &qword_100033A68);
  sub_10000D904(v99, 0, 1, v98);
  v100 = v126;
  v101 = v118;
  sub_100011C34(v126, v118, &qword_1000449F0, &qword_100033A98);
  v102 = v127;
  v103 = v119;
  sub_100011C34(v127, v119, &qword_1000449E0, &qword_100033A88);
  v104 = v124;
  sub_100011C34(v99, v124, &qword_1000449C8, &qword_100033A70);
  v105 = v125;
  sub_100011C34(v101, v125, &qword_1000449F0, &qword_100033A98);
  v106 = sub_10000D4FC(&qword_100044A18, &qword_100033AC0);
  sub_100011C34(v103, v105 + *(v106 + 48), &qword_1000449E0, &qword_100033A88);
  sub_100011C34(v104, v105 + *(v106 + 64), &qword_1000449C8, &qword_100033A70);
  sub_1000114E0(v99, &qword_1000449C8);
  sub_1000114E0(v102, &qword_1000449E0);
  sub_1000114E0(v100, &qword_1000449F0);
  sub_1000114E0(v104, &qword_1000449C8);
  sub_1000114E0(v103, &qword_1000449E0);
  return sub_1000114E0(v101, &qword_1000449F0);
}

uint64_t sub_1000089C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a2;
  v109 = a3;
  v4 = sub_10000D4FC(&qword_1000449C8, &qword_100033A70);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v110 = v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v108 = v99 - v10;
  v100 = sub_10000D4FC(&qword_1000449D0, &qword_100033A78);
  v11 = *(*(v100 - 1) + 64);
  v13 = __chkstk_darwin(v100, v12);
  v103 = v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v102 = v99 - v16;
  v105 = sub_10000D4FC(&qword_1000449D8, &qword_100033A80);
  v17 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105, v18);
  v101 = (v99 - v19);
  v20 = sub_10000D4FC(&qword_1000449E0, &qword_100033A88);
  v21 = *(*(v20 - 8) + 64);
  v23 = __chkstk_darwin(v20 - 8, v22);
  v107 = v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v111 = v99 - v26;
  v27 = sub_10000D4FC(&qword_1000449E8, &qword_100033A90);
  v28 = *(*(v27 - 1) + 64);
  v30 = __chkstk_darwin(v27, v29);
  v32 = v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v33);
  v35 = v99 - v34;
  v36 = sub_10000D4FC(&qword_1000449F0, &qword_100033A98);
  v37 = *(*(v36 - 8) + 64);
  v39 = __chkstk_darwin(v36 - 8, v38);
  v106 = v99 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v41);
  v112 = (v99 - v42);
  v43 = sub_100032750();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43, v46);
  v48 = v99 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 1;
  sub_1000093D8(1, type metadata accessor for PhotosReliveWidgetPlaceholderContent);
  v51 = v50;
  sub_1000093D8(0, type metadata accessor for PhotosReliveWidgetPlaceholderContent);
  v53 = v52;
  v54 = type metadata accessor for PhotosReliveWidgetPlaceholderContent(0);
  (*(v44 + 16))(v48, *(a1 + *(v54 + 20)) + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v43);
  v55 = 12.0;
  if ((*(v44 + 88))(v48, v43) != enum case for WidgetFamily.systemSmall(_:))
  {
    (*(v44 + 8))(v48, v43);
    v55 = 18.0;
  }

  sub_100031E20();
  v57 = v56 - (v51 + v53);
  sub_100031E20();
  sub_100007360(&v113, v57, v58 - (v55 + v55));
  v59 = v113;
  v99[0] = v116;
  v104 = v117;
  v99[1] = v118;
  v60 = sub_100025AAC(v113, v114, v115, v116, v117, v118);
  v61 = sub_100032070();
  v62 = v112;
  *v112 = v61;
  v62[1] = 0;
  *(v62 + 16) = 1;
  v63 = sub_100009DF4(v59);
  v65 = v64;
  sub_1000320D0();
  v66 = sub_1000320A0();
  v67 = &v35[v27[11]];
  v68 = &v35[v27[12]];
  v69 = &v35[v27[13]];
  *v67 = v51;
  v67[8] = 0;
  *v68 = v53;
  v68[8] = 0;
  *v69 = v55;
  v69[8] = 0;
  *&v35[v27[9]] = v63;
  *&v35[v27[10]] = v65;
  sub_100009E84();
  sub_1000320C0();
  v70 = sub_1000320A0();
  v71 = v62 + *(sub_10000D4FC(&qword_1000449F8, &qword_100033AA0) + 44);
  sub_100011C34(v35, v32, &qword_1000449E8, &qword_100033A90);
  *v71 = 0;
  v71[8] = 0;
  v71[9] = (v66 & 1) == 0;
  v72 = sub_10000D4FC(&qword_100044A00, &qword_100033AA8);
  sub_100011C34(v32, &v71[*(v72 + 48)], &qword_1000449E8, &qword_100033A90);
  v73 = &v71[*(v72 + 64)];
  *v73 = 0;
  v73[8] = 0;
  v73[9] = (v70 & 1) == 0;
  sub_1000114E0(v35, &qword_1000449E8);
  sub_1000114E0(v32, &qword_1000449E8);
  if (!v60)
  {
    v74 = sub_100032070();
    v75 = v101;
    *v101 = v74;
    *(v75 + 8) = 0;
    *(v75 + 16) = 1;
    sub_100009DF4(v99[0]);
    sub_1000320D0();
    v76 = sub_1000320A0();
    v77 = sub_1000320B0();
    v78 = sub_100032060();
    v79 = v100;
    v80 = v102;
    v81 = &v102[v100[11]];
    v82 = &v102[v100[12]];
    v83 = &v102[v100[13]];
    *v81 = v51;
    v81[8] = 0;
    *v82 = v53;
    v82[8] = 0;
    *v83 = v55;
    v83[8] = 0;
    *(v80 + v79[9]) = v77;
    *(v80 + v79[10]) = v78;
    sub_10000B534();
    sub_1000320C0();
    v84 = sub_1000320A0();
    v85 = v75 + *(sub_10000D4FC(&qword_100044A08, &qword_100033AB0) + 44);
    v86 = v103;
    sub_100011C34(v80, v103, &qword_1000449D0, &qword_100033A78);
    *v85 = 0;
    *(v85 + 8) = 0;
    *(v85 + 9) = (v76 & 1) == 0;
    v87 = sub_10000D4FC(&qword_100044A10, &qword_100033AB8);
    sub_100011C34(v86, v85 + *(v87 + 48), &qword_1000449D0, &qword_100033A78);
    v88 = v85 + *(v87 + 64);
    *v88 = 0;
    *(v88 + 8) = 0;
    *(v88 + 9) = (v84 & 1) == 0;
    sub_1000114E0(v80, &qword_1000449D0);
    sub_1000114E0(v86, &qword_1000449D0);
    sub_10000E2CC(v75, v111, &qword_1000449D8, &qword_100033A80);
    v49 = 0;
  }

  v89 = v111;
  sub_10000D904(v111, v49, 1, v105);
  v90 = sub_10000D4FC(&qword_1000449C0, &qword_100033A68);
  v91 = v108;
  sub_10000D904(v108, 1, 1, v90);
  v92 = v112;
  v93 = v106;
  sub_100011C34(v112, v106, &qword_1000449F0, &qword_100033A98);
  v94 = v107;
  sub_100011C34(v89, v107, &qword_1000449E0, &qword_100033A88);
  v95 = v110;
  sub_100011C34(v91, v110, &qword_1000449C8, &qword_100033A70);
  v96 = v109;
  sub_100011C34(v93, v109, &qword_1000449F0, &qword_100033A98);
  v97 = sub_10000D4FC(&qword_100044A18, &qword_100033AC0);
  sub_100011C34(v94, v96 + *(v97 + 48), &qword_1000449E0, &qword_100033A88);
  sub_100011C34(v95, v96 + *(v97 + 64), &qword_1000449C8, &qword_100033A70);
  sub_1000114E0(v91, &qword_1000449C8);
  sub_1000114E0(v89, &qword_1000449E0);
  sub_1000114E0(v92, &qword_1000449F0);
  sub_1000114E0(v95, &qword_1000449C8);
  sub_1000114E0(v94, &qword_1000449E0);
  return sub_1000114E0(v93, &qword_1000449F0);
}

uint64_t sub_1000093D8(char a1, uint64_t (*a2)(void))
{
  v5 = sub_100032750();
  v6 = sub_100011D60(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100011D9C();
  v14 = v12 - v13;
  __chkstk_darwin(v15, v16);
  v45 = &v44 - v17;
  sub_100011FAC();
  v20 = __chkstk_darwin(v18, v19);
  v22 = &v44 - v21;
  __chkstk_darwin(v20, v23);
  v25 = &v44 - v24;
  v26 = *(v2 + *(a2(0) + 20));
  if ((*(v26 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout) | 2) == 3 || (v37 = *(v26 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_titleSubtitleLayout + 24), v37 == 3))
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((v37 != 1) == (a1 & 1))
  {
LABEL_12:
    (*(v8 + 16))(v14, v26 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v5);
    v38 = *(v8 + 88);
    v39 = sub_100011F7C();
    result = v40(v39);
    if (result != enum case for WidgetFamily.systemSmall(_:))
    {
      v41 = *(v8 + 8);
      v42 = sub_100011F7C();
      return v43(v42);
    }

    return result;
  }

  v27 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily;
  v44 = *(v8 + 16);
  v44(v25, v26 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v5);
  v28 = *(v8 + 88);
  v29 = v28(v25, v5);
  v30 = enum case for WidgetFamily.systemSmall(_:);
  if (v29 != enum case for WidgetFamily.systemSmall(_:))
  {
    (*(v8 + 8))(v25, v5);
  }

  v31 = v44;
  v44(v22, v26 + v27, v5);
  if (v28(v22, v5) != v30)
  {
    (*(v8 + 8))(v22, v5);
  }

  v31(v45, v26 + v27, v5);
  v32 = sub_100011F64();
  result = (v28)(v32);
  if (result != v30)
  {
    v34 = *(v8 + 8);
    v35 = sub_100011F64();
    return v36(v35);
  }

  return result;
}

uint64_t sub_1000096FC@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = sub_10000D4FC(&qword_100044A20, &qword_100033AC8);
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = *(v74 + 64);
  __chkstk_darwin(v2, v4);
  v73 = &v65 - v5;
  v6 = sub_100031B90();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  v9 = __chkstk_darwin(v6, v8);
  v68 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v70 = &v65 - v12;
  v13 = sub_100032750();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v66 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v65 - v21;
  __chkstk_darwin(v20, v23);
  v25 = &v65 - v24;
  v26 = *(type metadata accessor for PhotosReliveWidgetMemoryContent(0) + 20);
  v69 = v1;
  v27 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily;
  v28 = *(v14 + 16);
  v67 = *(v1 + v26);
  v28(v25, v67 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v13);
  v29 = *(v14 + 88);
  v30 = v29(v25, v13);
  v31 = enum case for WidgetFamily.systemSmall(_:);
  v32 = 28.0;
  if (v30 != enum case for WidgetFamily.systemSmall(_:))
  {
    (*(v14 + 8))(v25, v13);
    v32 = 44.0;
  }

  if (44.0 - v32 <= 0.0)
  {
    v33 = v67;
    v36 = v67 + v27;
    v37 = v66;
    v28(v66, v36, v13);
    v38 = v29(v37, v13);
    v34 = v73;
    v35 = v71;
    if (v38 != v31)
    {
      (*(v14 + 8))(v37, v13);
    }
  }

  else
  {
    v33 = v67;
    v28(v22, v67 + v27, v13);
    if (v29(v22, v13) != v31)
    {
      (*(v14 + 8))(v22, v13, 14.0);
    }

    v34 = v73;
    v35 = v71;
  }

  v39 = *(v35 + 16);
  v40 = v68;
  v41 = v72;
  v39(v68, v33 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_destination, v72);
  sub_10000D4FC(&qword_100044A28, &qword_100033AD0);
  v42 = *(sub_100031AA0() - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  *(swift_allocObject() + 16) = xmmword_1000334C0;
  sub_100031A90();
  v45 = v70;
  sub_100031B80();

  v46 = *(v35 + 8);
  v46(v40, v41);
  v47 = (v39)(v40, v45, v41);
  __chkstk_darwin(v47, v48);
  *(&v65 - 4) = v69;
  *(&v65 - 3) = v32;
  *(&v65 - 2) = 0x4046000000000000;
  sub_10000D4FC(&qword_100044A30, &qword_100033AD8);
  sub_10000E324();
  sub_1000322B0();
  sub_10000D4FC(&qword_100044AD0, &qword_100033B28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000334B0;
  if (sub_100009D98())
  {
    v50 = sub_1000321E0();
  }

  else
  {
    v50 = sub_100032200();
  }

  v51 = v50;
  *(inited + 32) = v50;
  v52 = sub_1000321D0();
  *(inited + 33) = v52;
  v53 = sub_1000321F0();
  sub_1000321F0();
  if (sub_1000321F0() != v51)
  {
    v53 = sub_1000321F0();
  }

  sub_1000321F0();
  if (sub_1000321F0() != v52)
  {
    v53 = sub_1000321F0();
  }

  sub_100031D90();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v46(v45, v41);
  v62 = v76;
  (*(v74 + 32))(v76, v34, v75);
  result = sub_10000D4FC(&qword_1000449B8, &qword_100033A60);
  v64 = v62 + *(result + 36);
  *v64 = v53;
  *(v64 + 8) = v55;
  *(v64 + 16) = v57;
  *(v64 + 24) = v59;
  *(v64 + 32) = v61;
  *(v64 + 40) = 0;
  return result;
}

uint64_t sub_100009DF4(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = sub_1000320D0();
      goto LABEL_8;
    case 2:
      v2 = sub_1000320C0();
      goto LABEL_6;
    case 3:
      v2 = sub_1000320D0();
      goto LABEL_6;
    case 4:
      v2 = sub_1000320B0();
LABEL_6:
      v3 = v2;
      sub_100032060();
      break;
    default:
      v1 = sub_1000320C0();
LABEL_8:
      v3 = v1;
      sub_100032050();
      break;
  }

  return v3;
}

void sub_100009E84()
{
  sub_100011F0C();
  v225 = v0;
  v204 = v1;
  KeyPath = v2;
  v219 = v3;
  v220 = v4;
  v240 = v6;
  v241 = v5;
  v8 = v7;
  v239 = v9;
  v10 = sub_100032030();
  v11 = sub_100011D60(v10);
  v208 = v12;
  v209 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11, v15);
  sub_100011DAC();
  v205 = v17 - v16;
  v214 = sub_10000D4FC(&qword_100044BD8, &qword_100033CF8);
  sub_100011D60(v214);
  v212 = v18;
  v20 = *(v19 + 64);
  sub_100011DBC();
  __chkstk_darwin(v21, v22);
  sub_100011DFC();
  v223 = v23;
  v238 = sub_10000D4FC(&qword_100044BE0, &qword_100033D00);
  v24 = sub_100011D74(v238);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24, v27);
  sub_100011D9C();
  v210 = v28 - v29;
  sub_100011FAC();
  __chkstk_darwin(v30, v31);
  sub_1000120A0();
  v215 = v32;
  v230 = sub_10000D4FC(&qword_100044BE8, &qword_100033D08);
  sub_100011D74(v230);
  v34 = *(v33 + 64);
  sub_100011DBC();
  __chkstk_darwin(v35, v36);
  sub_100011DFC();
  v218 = v37;
  v206 = sub_10000D4FC(&qword_100044AF0, &qword_100033BD8);
  sub_100011D74(v206);
  v39 = *(v38 + 64);
  sub_100011DBC();
  __chkstk_darwin(v40, v41);
  sub_100011DFC();
  v207 = v42;
  v43 = sub_10000D4FC(&qword_100044BF0, &qword_100033D10);
  v44 = sub_100011D60(v43);
  v216 = v45;
  v217 = v44;
  v47 = *(v46 + 64);
  sub_100011DBC();
  __chkstk_darwin(v48, v49);
  sub_100011DFC();
  v224 = v50;
  v221 = sub_1000322D0();
  v51 = sub_100011D60(v221);
  v203 = v52;
  v54 = *(v53 + 64);
  __chkstk_darwin(v51, v55);
  sub_100011DAC();
  v58 = v57 - v56;
  v213 = sub_10000D4FC(&qword_100044BF8, &qword_100033D18);
  sub_100011D60(v213);
  v211 = v59;
  v61 = *(v60 + 64);
  sub_100011DBC();
  __chkstk_darwin(v62, v63);
  sub_100011DFC();
  v222 = v64;
  v234 = sub_10000D4FC(&qword_100044C00, &qword_100033D20);
  sub_100011D74(v234);
  v66 = *(v65 + 64);
  sub_100011DBC();
  __chkstk_darwin(v67, v68);
  sub_100011DFC();
  v237 = v69;
  v226 = sub_10000D4FC(&qword_100044C08, &qword_100033D28);
  sub_100011D74(v226);
  v71 = *(v70 + 64);
  sub_100011DBC();
  __chkstk_darwin(v72, v73);
  sub_100011DFC();
  v228 = v74;
  v233 = sub_10000D4FC(&qword_100044C10, &qword_100033D30);
  sub_100011D74(v233);
  v76 = *(v75 + 64);
  sub_100011DBC();
  __chkstk_darwin(v77, v78);
  sub_100011DFC();
  v229 = v79;
  v227 = sub_10000D4FC(&qword_100044C18, &qword_100033D38);
  sub_100011D74(v227);
  v81 = *(v80 + 64);
  sub_100011DBC();
  __chkstk_darwin(v82, v83);
  v85 = &v203 - v84;
  v86 = sub_10000D4FC(&qword_100044B20, &qword_100033C08);
  v87 = sub_100011D74(v86);
  v89 = *(v88 + 64);
  __chkstk_darwin(v87, v90);
  sub_100011D9C();
  v93 = v91 - v92;
  __chkstk_darwin(v94, v95);
  v97 = &v203 - v96;
  v98 = sub_100032750();
  v99 = sub_100011D60(v98);
  v101 = v100;
  v103 = *(v102 + 64);
  __chkstk_darwin(v99, v104);
  sub_100011DAC();
  v107 = v106 - v105;
  v108 = sub_10000D4FC(&qword_100044C20, &qword_100033D40);
  v109 = sub_100011EE8(v108);
  v111 = *(v110 + 64);
  __chkstk_darwin(v109, v112);
  sub_100011D9C();
  v236 = v113 - v114;
  sub_100011FAC();
  __chkstk_darwin(v115, v116);
  sub_1000120A0();
  v235 = v117;
  sub_100032060();
  v232 = sub_100032040();
  v118 = *(v8 + 1);
  v119 = *(v8 + 8);
  v249 = *(v8 + 16);
  if (!v118)
  {
    v221 = v86;
    v222 = v97;
    v223 = v93;
    v224 = v85;
    v144 = KeyPath(0);
    v146 = v145;
    v148 = v147;
    v150 = v149;
    KeyPath = swift_getKeyPath();
    LODWORD(v220) = sub_1000321D0();
    v151 = v204(0);
    sub_100012068(v151);
    (*(v101 + 16))(v107, v152 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v98);
    if ((*(v101 + 88))(v107, v98) != enum case for WidgetFamily.systemSmall(_:))
    {
      (*(v101 + 8))(v107, v98, 2.0);
    }

    sub_100031D90();
    v247 = v148 & 1;
    v244[96] = 0;
    v243[0] = v144;
    v243[1] = v146;
    LOBYTE(v243[2]) = v148 & 1;
    *(&v243[2] + 1) = *v246;
    HIDWORD(v243[2]) = *&v246[3];
    v243[3] = v150;
    v243[4] = KeyPath;
    v243[5] = 0x3FEA3D70A3D70A3DLL;
    LOBYTE(v243[6]) = v220;
    HIDWORD(v243[6]) = *&v245[3];
    *(&v243[6] + 1) = *v245;
    v243[7] = v153;
    v243[8] = v154;
    v243[9] = v155;
    v243[10] = v156;
    LOBYTE(v243[11]) = 0;
    v157 = v222;
    v225(0);
    v158 = swift_getKeyPath();
    v159 = v157 + *(sub_10000D4FC(&qword_100044B30, &qword_100033C48) + 36);
    *v159 = v158;
    *(v159 + 8) = 1;
    *(v159 + 16) = 0;
    v160 = swift_getKeyPath();
    v161 = (v157 + *(sub_10000D4FC(&qword_100044B98, &qword_100033CA0) + 36));
    *v161 = v160;
    v161[1] = 0x3FEA3D70A3D70A3DLL;
    v162 = (v157 + *(v221 + 36));
    v163 = *(sub_10000D4FC(&qword_100044B38, &qword_100033C50) + 28);
    v164 = enum case for Text.TruncationMode.tail(_:);
    v165 = sub_100032340();
    sub_100011D74(v165);
    (*(v166 + 104))(v162 + v163, v164);
    *v162 = swift_getKeyPath();
    memcpy(v242, v243, sizeof(v242));
    v167 = v223;
    sub_100011F24();
    sub_100011C34(v168, v169, v170, &qword_100033C08);
    memcpy(v244, v242, 0x59uLL);
    v171 = v224;
    memcpy(v224, v242, 0x59uLL);
    v172 = sub_10000D4FC(&qword_100044C68, &qword_100033D60);
    sub_100011C34(v167, v171 + *(v172 + 48), &qword_100044B20, &qword_100033C08);
    sub_100011C34(v243, v248, &qword_100044C70, &qword_100033D68);
    sub_100011C34(v244, v248, &qword_100044C70, &qword_100033D68);
    sub_1000114E0(v167, &qword_100044B20);
    memcpy(v248, v242, 0x59uLL);
    sub_1000114E0(v248, &qword_100044C70);
    sub_100011F24();
    sub_100011C34(v173, v174, v175, &qword_100033D38);
    swift_storeEnumTagMultiPayload();
    sub_100011E38();
    sub_100011BE0(v176, &qword_100044C18);
    sub_100011E20();
    sub_100011BE0(v177, v178);
    v179 = v229;
    sub_100032150();
    sub_100011C34(v179, v237, &qword_100044C10, &qword_100033D30);
    swift_storeEnumTagMultiPayload();
    sub_10000F120();
    sub_10000F204();
    sub_100011F30();
    sub_100032150();
    sub_1000114E0(v243, &qword_100044C70);
    sub_1000114E0(v179, &qword_100044C10);
    sub_1000114E0(v171, &qword_100044C18);
    v180 = v157;
    v181 = &qword_100044B20;
    goto LABEL_8;
  }

  if (v118 != 1)
  {
    v182 = v240;
    KeyPath(2);
    sub_100012074();
    v183 = swift_getKeyPath();
    v248[0] = v97;
    v248[1] = v107;
    LOBYTE(v248[2]) = v182 & 1;
    v248[3] = v101;
    v248[4] = v183;
    v248[5] = 2;
    LOBYTE(v248[6]) = 0;
    v98 = v205;
    sub_100032020();
    sub_10000D4FC(&qword_100044C28, &qword_100033D48);
    sub_10000F068();
    sub_100032400();
    (*(v208 + 8))(v98, v209);
    v184 = sub_100012008();
    sub_10000EFC4(v184, v185, v182 & 1);

    sub_1000325F0();
    sub_100011F4C();
    sub_100031EB0();
    v186 = v210;
    (*(v212 + 32))(v210, v223, v214);
    memcpy((v186 + *(v238 + 36)), v248, 0x70uLL);
    sub_100011F40();
    sub_10000E2CC(v187, v188, v189, v190);
    sub_100011F40();
    sub_100011C34(v191, v192, v193, v194);
    swift_storeEnumTagMultiPayload();
    sub_10000F120();
    sub_10000F204();
    sub_100011F30();
    sub_100032150();
    sub_100011F24();
LABEL_8:
    sub_1000114E0(v180, v181);
    v143 = v239;
    goto LABEL_9;
  }

  v120 = KeyPath(1);
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v127 = swift_getKeyPath();
  v248[0] = v120;
  v248[1] = v122;
  v98 = v124 & 1;
  LOBYTE(v248[2]) = v124 & 1;
  v248[3] = v126;
  v248[4] = v127;
  v248[5] = 1;
  LOBYTE(v248[6]) = 0;
  sub_1000322C0();
  sub_10000D4FC(&qword_100044C28, &qword_100033D48);
  sub_10000F068();
  sub_1000323F0();
  KeyPath = *(v203 + 8);
  (KeyPath)(v58, v221);
  sub_10000EFC4(v120, v122, v124 & 1);

  v128 = v207;
  v225(1);
  v129 = swift_getKeyPath();
  v130 = v128 + *(sub_10000D4FC(&qword_100044B30, &qword_100033C48) + 36);
  *v130 = v129;
  *(v130 + 8) = 1;
  *(v130 + 16) = 0;
  v131 = (v128 + *(v206 + 36));
  v132 = *(sub_10000D4FC(&qword_100044B38, &qword_100033C50) + 28);
  v133 = enum case for Text.TruncationMode.tail(_:);
  v134 = sub_100032340();
  sub_100011D74(v134);
  (*(v135 + 104))(v131 + v132, v133);
  *v131 = swift_getKeyPath();
  sub_1000322C0();
  sub_10000E9DC();
  sub_100012048();
  sub_1000323F0();
  (KeyPath)(v58, v221);
  sub_1000114E0(v128, &qword_100044AF0);
  v136 = v218;
  *v218 = v241;
  *(v136 + 8) = 0;
  *(v136 + 16) = 1;
  v137 = v136 + *(sub_10000D4FC(&qword_100044C60, &qword_100033D58) + 44);
  v138 = v222;
  sub_10000AF18();
  sub_100011C34(v136, v228, &qword_100044BE8, &qword_100033D08);
  swift_storeEnumTagMultiPayload();
  sub_100011E38();
  sub_100011BE0(v139, v140);
  sub_100011E20();
  sub_100011BE0(v141, &qword_100044BE8);
  v142 = v229;
  sub_100032150();
  sub_100011C34(v142, v237, &qword_100044C10, &qword_100033D30);
  swift_storeEnumTagMultiPayload();
  sub_10000F120();
  sub_10000F204();
  sub_100011F30();
  sub_100032150();
  sub_1000114E0(v142, &qword_100044C10);
  sub_1000114E0(v136, &qword_100044BE8);
  (*(v216 + 8))(v224, v217);
  (*(v211 + 8))(v138, v213);
  v143 = v239;
LABEL_9:
  v195 = v236;
  sub_100032050();
  v196 = sub_100032040();
  sub_100011C34(v98, v195, &qword_100044C20, &qword_100033D40);
  *v143 = 0;
  *(v143 + 8) = 0;
  *(v143 + 9) = (v232 & 1) == 0;
  v197 = sub_10000D4FC(&qword_100044C58, &qword_100033D50);
  sub_100011C34(v195, v143 + *(v197 + 48), &qword_100044C20, &qword_100033D40);
  v198 = v143 + *(v197 + 64);
  *v198 = 0;
  *(v198 + 8) = 0;
  *(v198 + 9) = (v196 & 1) == 0;
  sub_100011FDC();
  sub_1000114E0(v199, v200);
  sub_100011FDC();
  sub_1000114E0(v201, v202);
  sub_100011EF4();
}

void sub_10000AF18()
{
  sub_100011F0C();
  v80 = v1;
  v81 = v0;
  v82 = v2;
  v4 = v3;
  v87 = v5;
  v86 = sub_10000D4FC(&qword_100044C78, &qword_100033D70);
  sub_100011D74(v86);
  v7 = *(v6 + 64);
  sub_100011DBC();
  __chkstk_darwin(v8, v9);
  v11 = &v80 - v10;
  v83 = sub_10000D4FC(&qword_100044C80, &qword_100033D78);
  sub_100011D74(v83);
  v13 = *(v12 + 64);
  sub_100011DBC();
  __chkstk_darwin(v14, v15);
  sub_100011DFC();
  v85 = v16;
  v84 = sub_10000D4FC(&qword_100044C88, &qword_100033D80);
  sub_100011D74(v84);
  v18 = *(v17 + 64);
  sub_100011DBC();
  __chkstk_darwin(v19, v20);
  v22 = &v80 - v21;
  v23 = sub_10000D4FC(&qword_100044C90, &qword_100033D88);
  v24 = sub_100011EE8(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24, v27);
  sub_100011D9C();
  v30 = v28 - v29;
  v33 = __chkstk_darwin(v31, v32);
  v35 = &v80 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v80 - v37;
  v39 = sub_10000D4FC(&qword_100044BF8, &qword_100033D18);
  v40 = sub_100011D60(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  __chkstk_darwin(v40, v45);
  sub_100011D9C();
  v48 = v46 - v47;
  __chkstk_darwin(v49, v50);
  v52 = &v80 - v51;
  sub_1000320C0();
  if (sub_1000320A0())
  {
    v53 = v4;
    v54 = *(v42 + 16);
    (v54)(v52, v53, v39);
    v55 = sub_10000D4FC(&qword_100044BF0, &qword_100033D10);
    v56 = v55;
    if (v82)
    {
      (*(*(v55 - 8) + 16))(v38, v80, v55);
      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    sub_10000D904(v38, v57, 1, v56);
    (v54)(v48, v52, v39);
    sub_100011C34(v38, v30, &qword_100044C90, &qword_100033D88);
    sub_1000120AC();
    v54();
    v61 = sub_10000D4FC(&qword_100044CB0, &qword_100033D98);
    sub_100011C34(v30, &v22[*(v61 + 48)], &qword_100044C90, &qword_100033D88);
    sub_100011FDC();
    sub_1000114E0(v62, v63);
    v64 = *(v42 + 8);
    v64(v48, v39);
    sub_100011C34(v22, v85, &qword_100044C88, &qword_100033D80);
    swift_storeEnumTagMultiPayload();
    sub_100011E50();
    sub_100011BE0(v65, &qword_100044C88);
    sub_100011BE0(&qword_100044CA8, &qword_100044C78);
    sub_100032150();
    sub_1000114E0(v22, &qword_100044C88);
    sub_1000114E0(v38, &qword_100044C90);
    v64(v52, v39);
  }

  else
  {
    v81 = v11;
    v58 = sub_10000D4FC(&qword_100044BF0, &qword_100033D10);
    v59 = v58;
    if (v82)
    {
      (*(*(v58 - 8) + 16))(v35, v80, v58);
      v60 = 0;
    }

    else
    {
      v60 = 1;
    }

    sub_10000D904(v35, v60, 1, v59);
    sub_100011C34(v35, v30, &qword_100044C90, &qword_100033D88);
    v66 = *(v42 + 16);
    (v66)(v48, v4, v39);
    v67 = v81;
    sub_100011FFC();
    sub_100011C34(v68, v69, v70, &qword_100033D88);
    v71 = *(sub_10000D4FC(&qword_100044C98, &qword_100033D90) + 48);
    sub_1000120AC();
    v66();
    (*(v42 + 8))(v48, v39);
    sub_1000114E0(v30, &qword_100044C90);
    sub_100011C34(v67, v85, &qword_100044C78, &qword_100033D70);
    swift_storeEnumTagMultiPayload();
    sub_100011E50();
    sub_100011BE0(v72, v73);
    sub_1000120AC();
    sub_100011BE0(v74, v75);
    sub_100032150();
    sub_1000120AC();
    sub_1000114E0(v76, v77);
    v78 = sub_100011F7C();
    sub_1000114E0(v78, v79);
  }

  sub_100011EF4();
}

void sub_10000B534()
{
  sub_100011F0C();
  v133 = v2;
  v132 = v3;
  v130 = v4;
  v131 = v5;
  v7 = v6;
  v141 = v8;
  v10 = v9;
  v124 = sub_100032030();
  v11 = sub_100011D60(v124);
  v123 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11, v15);
  sub_100011DAC();
  sub_100012088();
  v122 = sub_10000D4FC(&qword_100044AF0, &qword_100033BD8);
  sub_100011D74(v122);
  v17 = *(v16 + 64);
  sub_100011DBC();
  __chkstk_darwin(v18, v19);
  v21 = &v121 - v20;
  v128 = sub_10000D4FC(&qword_100044AF8, &qword_100033BE0);
  sub_100011D60(v128);
  v127 = v22;
  v24 = *(v23 + 64);
  sub_100011DBC();
  __chkstk_darwin(v25, v26);
  sub_100011DFC();
  v126 = v27;
  v139 = sub_10000D4FC(&qword_100044B00, &qword_100033BE8);
  v28 = sub_100011D74(v139);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28, v31);
  sub_100011D9C();
  v125 = v32 - v33;
  sub_100011FAC();
  __chkstk_darwin(v34, v35);
  sub_1000120A0();
  v129 = v36;
  v136 = sub_10000D4FC(&qword_100044B08, &qword_100033BF0);
  sub_100011D74(v136);
  v38 = *(v37 + 64);
  sub_100011DBC();
  __chkstk_darwin(v39, v40);
  v41 = sub_10000D4FC(&qword_100044B10, &qword_100033BF8);
  sub_100011D74(v41);
  v43 = *(v42 + 64);
  sub_100011DBC();
  __chkstk_darwin(v44, v45);
  v135 = sub_10000D4FC(&qword_100044B18, &qword_100033C00);
  sub_100011D74(v135);
  v47 = *(v46 + 64);
  sub_100011DBC();
  __chkstk_darwin(v48, v49);
  v51 = &v121 - v50;
  v52 = sub_10000D4FC(&qword_100044B20, &qword_100033C08);
  sub_100011D74(v52);
  v54 = *(v53 + 64);
  sub_100011DBC();
  __chkstk_darwin(v55, v56);
  sub_100011ECC();
  v57 = sub_10000D4FC(&qword_100044B28, &qword_100033C10);
  v58 = sub_100011EE8(v57);
  v60 = *(v59 + 64);
  __chkstk_darwin(v58, v61);
  sub_100011D9C();
  v138 = v62 - v63;
  sub_100011FAC();
  __chkstk_darwin(v64, v65);
  sub_1000120A0();
  v137 = v66;
  sub_100032060();
  v140 = v7;
  v134 = sub_100032040();
  if (v10)
  {
    if (v10 == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_10000ED38();
      sub_100032150();
      v67 = &qword_100044B18;
      sub_100011FFC();
      sub_100011C34(v68, v69, v70, &qword_100033C00);
      swift_storeEnumTagMultiPayload();
      sub_10000ECAC();
      sub_10000EEA8();
      sub_100011DE4();
      sub_100032150();
      v71 = v51;
    }

    else
    {
      sub_100012034();
      v90();
      KeyPath = swift_getKeyPath();
      v92 = &v21[*(sub_10000D4FC(&qword_100044B30, &qword_100033C48) + 36)];
      *v92 = KeyPath;
      *(v92 + 1) = 1;
      v92[16] = 0;
      v93 = &v21[*(v122 + 36)];
      v94 = *(sub_10000D4FC(&qword_100044B38, &qword_100033C50) + 28);
      v95 = enum case for Text.TruncationMode.tail(_:);
      v96 = sub_100032340();
      sub_100011D74(v96);
      (*(v97 + 104))(v93 + v94, v95);
      *v93 = swift_getKeyPath();
      sub_100032020();
      sub_10000E9DC();
      v98 = v126;
      sub_100032400();
      (*(v123 + 8))(v0, v124);
      sub_1000114E0(v21, &qword_100044AF0);
      sub_1000325F0();
      sub_100011F4C();
      sub_100031EB0();
      v99 = v125;
      (*(v127 + 32))(v125, v98, v128);
      memcpy((v99 + *(v139 + 36)), v142, 0x70uLL);
      v67 = &qword_100044B00;
      v100 = v129;
      sub_10000E2CC(v99, v129, &qword_100044B00, &qword_100033BE8);
      sub_100011FFC();
      sub_100011C34(v101, v102, v103, &qword_100033BE8);
      swift_storeEnumTagMultiPayload();
      sub_10000ECAC();
      sub_10000EEA8();
      sub_100011DE4();
      sub_100032150();
      v71 = v100;
    }

    v89 = v67;
  }

  else
  {
    sub_100012034();
    v72();
    v73 = swift_getKeyPath();
    v74 = v1 + *(sub_10000D4FC(&qword_100044B30, &qword_100033C48) + 36);
    *v74 = v73;
    *(v74 + 8) = 1;
    *(v74 + 16) = 0;
    v75 = swift_getKeyPath();
    v76 = (v1 + *(sub_10000D4FC(&qword_100044B98, &qword_100033CA0) + 36));
    *v76 = v75;
    v76[1] = 0x3FEA3D70A3D70A3DLL;
    v77 = (v1 + *(v52 + 36));
    v78 = *(sub_10000D4FC(&qword_100044B38, &qword_100033C50) + 28);
    v79 = enum case for Text.TruncationMode.tail(_:);
    v80 = sub_100032340();
    sub_100011D74(v80);
    (*(v81 + 104))(v77 + v78, v79);
    *v77 = swift_getKeyPath();
    sub_100011F7C();
    sub_100011F40();
    sub_100011C34(v82, v83, v84, v85);
    swift_storeEnumTagMultiPayload();
    sub_10000ED38();
    sub_100032150();
    sub_100011FFC();
    sub_100011C34(v86, v87, v88, &qword_100033C00);
    swift_storeEnumTagMultiPayload();
    sub_10000ECAC();
    sub_10000EEA8();
    sub_100011DE4();
    sub_100032150();
    sub_1000114E0(v51, &qword_100044B18);
    sub_100011F24();
  }

  sub_1000114E0(v71, v89);
  v104 = v141;
  sub_100032050();
  v105 = sub_100032040();
  sub_100011F40();
  sub_100011C34(v106, v107, v108, v109);
  *v104 = 0;
  *(v104 + 8) = 0;
  *(v104 + 9) = (v134 & 1) == 0;
  v110 = sub_10000D4FC(&qword_100044BB8, &qword_100033CB0);
  v111 = *(v110 + 48);
  sub_100011F40();
  sub_100011C34(v112, v113, v114, v115);
  v116 = v104 + *(v110 + 64);
  *v116 = 0;
  *(v116 + 8) = 0;
  *(v116 + 9) = (v105 & 1) == 0;
  sub_100011F24();
  sub_1000114E0(v117, v118);
  sub_100011F24();
  sub_1000114E0(v119, v120);
  sub_100011EF4();
}

uint64_t sub_10000BE5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100032750();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  (*(v4 + 16))(v8, *(v1 + *(v9 + 20)) + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v3);
  v10 = (*(v4 + 88))(v8, v3);
  v11 = enum case for WidgetFamily.systemSmall(_:);
  v12 = sub_1000324F0();
  v13 = *(*(v12 - 8) + 104);
  if (v10 == v11)
  {
    return v13(a1, enum case for Image.Scale.small(_:), v12);
  }

  v13(a1, enum case for Image.Scale.medium(_:), v12);
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_10000BFF4()
{
  v1 = sub_100032750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  (*(v2 + 16))(v6, *(v0 + *(v7 + 20)) + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v1);
  if ((*(v2 + 88))(v6, v1) == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_100032210();
    sub_100032240();
    v8 = sub_100032260();
  }

  else
  {
    sub_100032220();
    sub_100032240();
    v8 = sub_100032260();

    (*(v2 + 8))(v6, v1);
  }

  return v8;
}

double sub_10000C168@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000324D0();
  v3 = sub_10000BFF4();
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(sub_10000D4FC(&qword_100044A78, &qword_100033AF8) + 36));
  v6 = sub_10000D4FC(&qword_100044AA8, &qword_100033B10);
  sub_10000BE5C(v5 + *(v6 + 28));
  *v5 = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  sub_1000325F0();
  sub_100031E10();
  v7 = (a1 + *(sub_10000D4FC(&qword_100044A68, &qword_100033AF0) + 36));
  *v7 = v21;
  v7[1] = v22;
  v7[2] = v23;
  v8 = sub_1000324B0();
  *(a1 + *(sub_10000D4FC(&qword_100044A58, &qword_100033AE8) + 36)) = v8;
  v9 = sub_1000325F0();
  v11 = v10;
  v12 = a1 + *(sub_10000D4FC(&qword_100044A48, &qword_100033AE0) + 36);
  sub_1000325A0();
  *&v12[*(sub_10000D4FC(&qword_100044AD8, &qword_100033B90) + 56)] = 256;
  v13 = swift_getKeyPath();
  v14 = &v12[*(sub_10000D4FC(&qword_100044AE0, &qword_100033BC8) + 36)];
  v15 = *(sub_10000D4FC(&qword_100044AE8, &qword_100033BD0) + 28);
  v16 = enum case for ColorScheme.light(_:);
  v17 = sub_100031DA0();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = v13;
  v18 = &v12[*(sub_10000D4FC(&qword_100044AC8, &qword_100033B20) + 36)];
  *v18 = v9;
  v18[1] = v11;
  sub_1000325F0();
  sub_100031E10();
  v19 = (a1 + *(sub_10000D4FC(&qword_100044A30, &qword_100033AD8) + 36));
  *v19 = v24;
  v19[1] = v25;
  result = *&v26;
  v19[2] = v26;
  return result;
}

uint64_t sub_10000C464@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_10000287C(*v1, v2 | *(v1 + 8), a1);
}

void sub_10000C484()
{
  sub_100011F0C();
  v2 = v1;
  LODWORD(v75) = v3;
  v74 = v4;
  v5 = sub_10000D4FC(&qword_100044CD0, &qword_100033DB8);
  sub_100011EE8(v5);
  v7 = *(v6 + 64);
  sub_100011DBC();
  __chkstk_darwin(v8, v9);
  sub_100011DFC();
  v73 = v10;
  v70 = sub_10000D4FC(&qword_100044988, &qword_100033A48);
  sub_100011D74(v70);
  v12 = *(v11 + 64);
  sub_100011DBC();
  __chkstk_darwin(v13, v14);
  sub_100012088();
  v15 = sub_10000D4FC(&qword_100044CD8, &qword_100033DC0);
  v16 = sub_100011EE8(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  sub_100011D9C();
  v22 = v20 - v21;
  __chkstk_darwin(v23, v24);
  v26 = &v68 - v25;
  v27 = sub_10000D4FC(&qword_100044CE0, &qword_100033DC8);
  sub_100011D74(v27);
  v29 = *(v28 + 64);
  sub_100011DBC();
  __chkstk_darwin(v30, v31);
  v33 = &v68 - v32;
  v34 = sub_10000D4FC(&qword_100044CE8, &qword_100033DD0);
  v35 = sub_100011D60(v34);
  v71 = v36;
  v72 = v35;
  v38 = *(v37 + 64);
  sub_100011DBC();
  __chkstk_darwin(v39, v40);
  sub_100011DFC();
  v69 = v41;
  *v33 = sub_1000320B0();
  *(v33 + 1) = 0;
  v33[16] = 1;
  v42 = &v33[*(sub_10000D4FC(&qword_100044CF0, &qword_100033DD8) + 44)];
  *v26 = sub_1000321A0();
  v43 = &v26[*(sub_10000D4FC(&qword_100044CF8, &qword_100033DE0) + 44)];
  v44 = v75 & 0x101;
  v75 = v2;
  sub_10000C94C(v44, v2, v43);
  sub_100011C34(v26, v22, &qword_100044CD8, &qword_100033DC0);
  *v42 = 0;
  v42[8] = 1;
  v45 = sub_10000D4FC(&qword_100044D00, &qword_100033DE8);
  sub_100011C34(v22, &v42[*(v45 + 48)], &qword_100044CD8, &qword_100033DC0);
  v46 = &v42[*(v45 + 64)];
  *v46 = 0;
  v46[8] = 1;
  sub_1000114E0(v26, &qword_100044CD8);
  sub_1000114E0(v22, &qword_100044CD8);
  v47 = sub_1000321B0();
  v48 = v27;
  v49 = &v33[*(v27 + 36)];
  *v49 = v47;
  *(v49 + 8) = 0u;
  *(v49 + 24) = 0u;
  v49[40] = 1;
  v50 = enum case for DynamicTypeSize.xxxLarge(_:);
  v51 = sub_100031E70();
  sub_100011D74(v51);
  (*(v52 + 104))(v0, v50, v51);
  sub_100011E08();
  sub_10000DD28(v53, v54);
  if (sub_100032890())
  {
    v55 = sub_10000F2CC();
    sub_100011D84();
    v57 = sub_100011BE0(v56, &qword_100044988);
    v59 = v69;
    v58 = v70;
    sub_100032420();
    v60 = sub_100012028();
    sub_1000114E0(v60, v61);
    sub_1000114E0(v33, &qword_100044CE0);
    v62 = OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_destination;
    v63 = sub_100031B90();
    sub_100011D74(v63);
    v65 = v75 + v62;
    v66 = v73;
    (*(v64 + 16))(v73, v65, v63);
    sub_10000D904(v66, 0, 1, v63);
    v76 = v48;
    v77 = v58;
    v78 = v55;
    v79 = v57;
    swift_getOpaqueTypeConformance2();
    v67 = v72;
    sub_1000323C0();
    sub_1000114E0(v66, &qword_100044CD0);
    (*(v71 + 8))(v59, v67);
    sub_100011EF4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000C94C@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_10000D4FC(&qword_100044D20, &qword_100033DF8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v30 - v13;
  v15 = sub_10000D4FC(&qword_100044D28, &qword_100033E00);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v23 = &v30 - v22;
  *v23 = sub_1000320B0();
  *(v23 + 1) = 0x4010000000000000;
  v23[16] = 0;
  v24 = sub_10000D4FC(&qword_100044D30, &qword_100033E08);
  sub_10000CBB4(a1 & 0x101, a2, &v23[*(v24 + 44)]);
  sub_10000D0B8();
  KeyPath = swift_getKeyPath();
  v26 = &v14[*(v6 + 44)];
  *v26 = KeyPath;
  v26[1] = 0x3FE999999999999ALL;
  sub_100011C34(v23, v20, &qword_100044D28, &qword_100033E00);
  sub_100011C34(v14, v11, &qword_100044D20, &qword_100033DF8);
  v27 = v31;
  sub_100011C34(v20, v31, &qword_100044D28, &qword_100033E00);
  v28 = sub_10000D4FC(&qword_100044D38, &qword_100033E10);
  sub_100011C34(v11, v27 + *(v28 + 48), &qword_100044D20, &qword_100033DF8);
  sub_1000114E0(v14, &qword_100044D20);
  sub_1000114E0(v23, &qword_100044D28);
  sub_1000114E0(v11, &qword_100044D20);
  return sub_1000114E0(v20, &qword_100044D28);
}

uint64_t sub_10000CBB4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v46 = a1;
  v49 = a3;
  v45 = sub_10000D4FC(&qword_100044D80, &qword_100033E68);
  v3 = *(*(v45 - 8) + 64);
  v5 = __chkstk_darwin(v45, v4);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v9 = &v44 - v8;
  v10 = sub_10000D4FC(&qword_100044D88, &qword_100033E70);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v44 - v13;
  v15 = sub_1000324E0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100031D20();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10000D4FC(&qword_100044D90, &qword_100033E78);
  v27 = *(*(v44 - 8) + 64);
  v29 = __chkstk_darwin(v44, v28);
  v31 = &v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v32);
  v34 = &v44 - v33;
  if (qword_100044680 != -1)
  {
    swift_once();
  }

  v35 = sub_10000F4F4(v21, qword_100048420);
  (*(v22 + 16))(v26, v35, v21);
  sub_100032530();
  (*(v16 + 104))(v20, enum case for Image.ResizingMode.stretch(_:), v15);
  sub_100032510();

  (*(v16 + 8))(v20, v15);
  sub_100032710();
  v36 = sub_100032730();
  sub_10000D904(v14, 0, 1, v36);
  sub_100032500();

  sub_1000114E0(v14, &qword_100044D88);
  v37 = &v34[*(sub_10000D4FC(&qword_100044D98, &qword_100033E80) + 36)];
  *v37 = 0;
  *(v37 + 4) = 1;
  sub_1000325F0();
  sub_100031E10();
  v38 = &v34[*(v44 + 36)];
  v39 = v51;
  *v38 = v50;
  *(v38 + 1) = v39;
  *(v38 + 2) = v52;
  sub_10000D0B8();
  *&v9[*(v45 + 36)] = 256;
  sub_100011C34(v34, v31, &qword_100044D90, &qword_100033E78);
  v40 = v48;
  sub_100011C34(v9, v48, &qword_100044D80, &qword_100033E68);
  v41 = v49;
  sub_100011C34(v31, v49, &qword_100044D90, &qword_100033E78);
  v42 = sub_10000D4FC(&qword_100044DA0, &qword_100033E88);
  sub_100011C34(v40, v41 + *(v42 + 48), &qword_100044D80, &qword_100033E68);
  sub_1000114E0(v9, &qword_100044D80);
  sub_1000114E0(v34, &qword_100044D90);
  sub_1000114E0(v40, &qword_100044D80);
  return sub_1000114E0(v31, &qword_100044D90);
}

void sub_10000D0B8()
{
  sub_100011F0C();
  v2 = v1;
  v3 = sub_100032270();
  v4 = sub_100011D60(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100011DAC();
  sub_100012088();
  if (*(v2 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title + 8))
  {
    v10 = *(v2 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title);
    v11 = *(v2 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_title + 8);
  }

  sub_10000EF70();

  v12 = sub_100032390();
  sub_10000D2CC(v12, v2);
  (*(v6 + 104))(v0, enum case for Font.Leading.tight(_:), v3);
  sub_100012028();
  sub_100032290();

  (*(v6 + 8))(v0, v3);
  sub_100011F70();
  sub_100032360();
  sub_100012074();

  v13 = sub_100012048();
  sub_10000EFC4(v13, v14, v15);

  swift_getKeyPath();
  sub_100032160();
  sub_10000D4FC(&qword_100044D40, &qword_100033E48);
  sub_10000F384();
  sub_1000323A0();
  v16 = sub_100012008();
  sub_10000EFC4(v16, v17, v3 & 1);

  sub_100011EF4();
}

uint64_t sub_10000D2CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100032750();
  v4 = sub_100011D60(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100011DAC();
  (*(v6 + 16))(v11 - v10, a2 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_widgetFamily, v3);
  v12 = *(v6 + 88);
  v13 = sub_100011F64();
  v15 = v14(v13);
  if (v15 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_100032280();
LABEL_12:

    goto LABEL_13;
  }

  if (v15 == enum case for WidgetFamily.systemMedium(_:) || v15 == enum case for WidgetFamily.systemLarge(_:) || v15 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_100032210();
    goto LABEL_12;
  }

  sub_100032280();
  v18 = *(v6 + 8);

  v19 = sub_100011F64();
  v18(v19);
LABEL_13:
  sub_100032240();
  v20 = sub_100032260();

  return v20;
}

void sub_10000D448()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v0[1];
  sub_10000C484();
}

uint64_t variable initialization expression of PhotosReliveWidgetView._widgetFamily@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_10000D4FC(&qword_100044688, qword_100033510);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000D4FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000D57C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000D5DC(__int128 *a1)
{
  v2 = *a1;
  if (sub_1000120B8())
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000D654(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (sub_1000120B8())
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for PhotosReliveWidgetViewOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosReliveWidgetViewOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10000D84CLL);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

__n128 sub_10000D94C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000D958(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000D998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000D9E4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10000D9F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_10000DA38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000DA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100032330();
  v7 = sub_100011FD0(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_100011FE8(*(a1 + *(a3 + 20)));
  }

  return sub_10000D8C4(a1, a2, v7);
}

uint64_t sub_10000DB4C()
{
  sub_100012054();
  v4 = sub_100032330();
  result = sub_100011FD0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_100012014();

    return sub_10000D904(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_10000DBFC()
{
  result = sub_100032330();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PhotosReliveWidgetViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000DCD0(uint64_t a1)
{
  result = sub_10000DD28(&qword_1000448A0, type metadata accessor for PhotosReliveWidgetMemoryContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000DD28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000DD70(uint64_t a1)
{
  result = sub_10000DD28(&qword_1000448A8, type metadata accessor for PhotosReliveWidgetMemoryContent);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000DDE4(uint64_t a1)
{
  result = sub_10000DE0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000DE0C()
{
  result = qword_100044900;
  if (!qword_100044900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044900);
  }

  return result;
}

uint64_t sub_10000DEA8(uint64_t a1)
{
  result = sub_10000DD28(&qword_100044960, type metadata accessor for PhotosReliveWidgetPlaceholderContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000DF00(uint64_t a1)
{
  result = sub_10000DD28(&qword_100044968, type metadata accessor for PhotosReliveWidgetPlaceholderContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000DFA8@<X0>(void *a1@<X8>)
{
  result = sub_100031EE0();
  *a1 = v3;
  return result;
}

uint64_t sub_10000DFD4()
{
  sub_100031FA0();
  sub_10000DD28(&qword_100044F68, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_100032010();
  return v1;
}

uint64_t sub_10000E050@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000DFD4();
  *a1 = result & 1;
  return result;
}

void sub_10000E080(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_10000E0B4();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

void sub_10000E0BC(void *a1@<X8>)
{
  v3 = *v1;
  PhotosReliveWidgetBundle.init()();
  *a1 = v4;
}

unint64_t sub_10000E19C()
{
  result = qword_100044970;
  if (!qword_100044970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044970);
  }

  return result;
}

uint64_t sub_10000E2CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100011EAC(a1, a2, a3, a4);
  sub_100011D74(v5);
  v7 = *(v6 + 32);
  v8 = sub_100011EDC();
  v9(v8);
  return v4;
}

double sub_10000E318@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_10000C168(a1);
}

unint64_t sub_10000E324()
{
  result = qword_100044A38;
  if (!qword_100044A38)
  {
    sub_10000D57C(&qword_100044A30, &qword_100033AD8);
    sub_10000E3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044A38);
  }

  return result;
}

unint64_t sub_10000E3B0()
{
  result = qword_100044A40;
  if (!qword_100044A40)
  {
    sub_10000D57C(&qword_100044A48, &qword_100033AE0);
    sub_10000E468();
    sub_100011BE0(&qword_100044AC0, &qword_100044AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044A40);
  }

  return result;
}

unint64_t sub_10000E468()
{
  result = qword_100044A50;
  if (!qword_100044A50)
  {
    sub_10000D57C(&qword_100044A58, &qword_100033AE8);
    sub_10000E520();
    sub_100011BE0(&qword_100044AB0, &unk_100044AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044A50);
  }

  return result;
}

unint64_t sub_10000E520()
{
  result = qword_100044A60;
  if (!qword_100044A60)
  {
    sub_10000D57C(&qword_100044A68, &qword_100033AF0);
    sub_10000E5AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044A60);
  }

  return result;
}

unint64_t sub_10000E5AC()
{
  result = qword_100044A70;
  if (!qword_100044A70)
  {
    sub_10000D57C(&qword_100044A78, &qword_100033AF8);
    sub_10000E664();
    sub_100011BE0(&qword_100044AA0, &qword_100044AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044A70);
  }

  return result;
}

unint64_t sub_10000E664()
{
  result = qword_100044A80;
  if (!qword_100044A80)
  {
    sub_10000D57C(&qword_100044A88, &qword_100033B00);
    sub_100011BE0(&qword_100044A90, &unk_100044A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044A80);
  }

  return result;
}

uint64_t sub_10000E71C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100031F20();
  *a1 = result;
  return result;
}

uint64_t sub_10000E748(uint64_t *a1)
{
  v1 = *a1;

  return sub_100031F30();
}

uint64_t sub_10000E774@<X0>(void *a1@<X8>)
{
  result = sub_100031F40();
  *a1 = v3;
  return result;
}

uint64_t sub_10000E7C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_100031FD0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000E7FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100031FE0();
}

uint64_t sub_10000E87C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100031F80();
  *a1 = result;
  return result;
}

uint64_t sub_10000E8A8(uint64_t *a1)
{
  v1 = *a1;

  return sub_100031F90();
}

uint64_t sub_10000E924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v9 = a5(0);
  sub_100011D60(v9);
  v11 = *(v10 + 64);
  sub_100011DBC();
  __chkstk_darwin(v12, v13);
  sub_100011ECC();
  (*(v14 + 16))(v6, a1);
  return a6(v6);
}

unint64_t sub_10000E9DC()
{
  result = qword_100044B40;
  if (!qword_100044B40)
  {
    sub_10000D57C(&qword_100044AF0, &qword_100033BD8);
    sub_10000EA94();
    sub_100011BE0(&qword_100044B78, &unk_100044B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044B40);
  }

  return result;
}

unint64_t sub_10000EA94()
{
  result = qword_100044B48;
  if (!qword_100044B48)
  {
    sub_10000D57C(&qword_100044B30, &qword_100033C48);
    sub_10000D57C(&qword_100044B50, &qword_100033C88);
    sub_10000D57C(&qword_100044B58, &qword_100033C90);
    swift_getOpaqueTypeConformance2();
    sub_10000EBF8();
    swift_getOpaqueTypeConformance2();
    sub_100011BE0(&qword_100044B68, &unk_100044B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044B48);
  }

  return result;
}

unint64_t sub_10000EBF8()
{
  result = qword_100044B60;
  if (!qword_100044B60)
  {
    sub_10000D57C(&qword_100044B58, &qword_100033C90);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044B60);
  }

  return result;
}

unint64_t sub_10000ECAC()
{
  result = qword_100044B80;
  if (!qword_100044B80)
  {
    sub_10000D57C(&qword_100044B18, &qword_100033C00);
    sub_10000ED38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044B80);
  }

  return result;
}

unint64_t sub_10000ED38()
{
  result = qword_100044B88;
  if (!qword_100044B88)
  {
    sub_10000D57C(&qword_100044B20, &qword_100033C08);
    sub_10000EDF0();
    sub_100011BE0(&qword_100044B78, &qword_100044B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044B88);
  }

  return result;
}

unint64_t sub_10000EDF0()
{
  result = qword_100044B90;
  if (!qword_100044B90)
  {
    sub_10000D57C(&qword_100044B98, &qword_100033CA0);
    sub_10000EA94();
    sub_100011BE0(&qword_100044BA0, &unk_100044BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044B90);
  }

  return result;
}

unint64_t sub_10000EEA8()
{
  result = qword_100044BB0;
  if (!qword_100044BB0)
  {
    sub_10000D57C(&qword_100044B00, &qword_100033BE8);
    sub_10000D57C(&qword_100044AF0, &qword_100033BD8);
    sub_10000E9DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044BB0);
  }

  return result;
}

unint64_t sub_10000EF70()
{
  result = qword_100044BC0;
  if (!qword_100044BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044BC0);
  }

  return result;
}

uint64_t sub_10000EFC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000EFD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100031F60();
  *a1 = result;
  return result;
}

uint64_t sub_10000F058(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000F068()
{
  result = qword_100044C30;
  if (!qword_100044C30)
  {
    sub_10000D57C(&qword_100044C28, &qword_100033D48);
    sub_100011BE0(&qword_100044B68, &unk_100044B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044C30);
  }

  return result;
}

unint64_t sub_10000F120()
{
  result = qword_100044C38;
  if (!qword_100044C38)
  {
    sub_10000D57C(&qword_100044C10, &qword_100033D30);
    sub_100011BE0(&qword_100044C40, &unk_100044C18);
    sub_100011BE0(&qword_100044C48, &unk_100044BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044C38);
  }

  return result;
}

unint64_t sub_10000F204()
{
  result = qword_100044C50;
  if (!qword_100044C50)
  {
    sub_10000D57C(&qword_100044BE0, &qword_100033D00);
    sub_10000D57C(&qword_100044C28, &qword_100033D48);
    sub_10000F068();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044C50);
  }

  return result;
}

unint64_t sub_10000F2CC()
{
  result = qword_100044D08;
  if (!qword_100044D08)
  {
    sub_10000D57C(&qword_100044CE0, &qword_100033DC8);
    sub_100011BE0(&qword_100044D10, &unk_100044D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044D08);
  }

  return result;
}

unint64_t sub_10000F384()
{
  result = qword_100044D48;
  if (!qword_100044D48)
  {
    sub_10000D57C(&qword_100044D40, &qword_100033E48);
    sub_10000F43C();
    sub_100011BE0(&qword_100044D70, &unk_100044D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044D48);
  }

  return result;
}

unint64_t sub_10000F43C()
{
  result = qword_100044D50;
  if (!qword_100044D50)
  {
    sub_10000D57C(&qword_100044D58, &qword_100033E50);
    sub_100011BE0(&qword_100044D60, &unk_100044D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044D50);
  }

  return result;
}

uint64_t sub_10000F4F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000F52C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100011D74(v4);
  v6 = *(v5 + 16);
  v7 = sub_100011EDC();
  v8(v7);
  return a2;
}

uint64_t sub_10000F5A0(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_100032330();
  sub_100011D74(v6);
  (*(v7 + 8))(v1 + v4);
  v8 = *(v1 + v4 + v2[7]);

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_10000F688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100011D74(v4);
  v6 = *(v5 + 32);
  v7 = sub_100011EDC();
  v8(v7);
  return a2;
}

void sub_10000F78C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = a1[3];
  sub_100006944();
}

__n128 sub_10000F7F4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000F800(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000F820(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_10000F87C(uint64_t a1)
{
  sub_10000FE14();
  if (v2 <= 0x3F)
  {
    type metadata accessor for PhotosReliveWidgetViewModel(319);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10000F92C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_100032700() - 8) + 64);
  v7 = 8;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_25;
  }

  v14 = v13 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v12 + 17) & ~v12) + 2;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_25:
      v20 = ((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {

        return sub_10000D8C4((v20 + v12 + 9) & ~v12, v10, v8);
      }

      else
      {
        v21 = *v20;
        if (v21 >= 0xFFFFFFFF)
        {
          LODWORD(v21) = -1;
        }

        return (v21 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_25;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    switch(v14)
    {
      case 2:
        LODWORD(v14) = *a1;
        break;
      case 3:
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v14) = *a1;
        break;
      default:
        LODWORD(v14) = *a1;
        break;
    }
  }

  return v11 + (v14 | v19) + 1;
}

void sub_10000FB40(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_100032700() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v11 + 64) + (((v9 & 0xFFFFFFFFFFFFFFF8) + v14 + 17) & ~v14) + 2;
  v16 = 8 * v15;
  if (a3 <= v13)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v20 = ((a3 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      if (v15)
      {
        v22 = v18 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v15 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v15] = v19;
        return;
      case 2:
        *&a1[v15] = v19;
        return;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v15] = v19;
        return;
      default:
        return;
    }
  }

  switch(v17)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 3:
LABEL_47:
      __break(1u);
      JUMPOUT(0x10000FDD4);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        v23 = (&a1[v9 + 8] & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {

          sub_10000D904((v23 + v14 + 9) & ~v14, a2, v12, v10);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *v23 = v24;
        }
      }

      return;
  }
}

void sub_10000FE14()
{
  if (!qword_100044E30[0])
  {
    sub_100032700();
    v0 = sub_100031DB0();
    if (!v1)
    {
      atomic_store(v0, qword_100044E30);
    }
  }
}

void sub_10000FE6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_100010D94(319, &qword_100044EB8, &type metadata for CGFloat, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10000FF38(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((((((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 9;
    v7 = (a2 - v5 + 255) >> 8;
    if (v6 <= 3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v9 = 1;
    }

    if (v8 >= 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    switch(v10)
    {
      case 1:
        v11 = a1[v6];
        if (!a1[v6])
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      case 2:
        v11 = *&a1[v6];
        if (*&a1[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        JUMPOUT(0x100010064);
      case 4:
        v11 = *&a1[v6];
        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_18:
        v12 = (v11 - 1) << (8 * v6);
        if (v6 <= 3)
        {
          v13 = *a1;
        }

        else
        {
          v12 = 0;
          v13 = *a1;
        }

        return v5 + (v13 | v12) + 1;
      default:
LABEL_22:
        if (v5)
        {
          return sub_10000D8C4(a1, v5, v4);
        }

        return 0;
    }
  }

  return sub_10000D8C4(a1, v5, v4);
}

void sub_100010078(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    bzero(a1, v8);
    if (v8 <= 3)
    {
      v14 = (v13 >> 8) + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v13;
    }

    else
    {
      *a1 = v13;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    case 3:
LABEL_35:
      __break(1u);
      JUMPOUT(0x100010238);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_27;
    default:
LABEL_27:
      if (a2)
      {
LABEL_28:

        sub_10000D904(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_100010278(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100010298(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1000102E8()
{
  sub_10000D57C(&qword_100044CE8, &qword_100033DD0);
  sub_10000D57C(&qword_100044CE0, &qword_100033DC8);
  v0 = sub_100012028();
  sub_10000D57C(v0, v1);
  sub_10000F2CC();
  sub_100011D84();
  sub_100011FDC();
  sub_100011BE0(v2, v3);
  sub_100011DC8();
  sub_100011E68();
  return sub_100011DC8();
}

uint64_t sub_1000103A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  sub_100011F64();
  swift_getAssociatedConformanceWitness();
  sub_100011FA0();
  type metadata accessor for PhotosReliveWidgetContentView();

  return swift_getWitnessTable();
}

uint64_t sub_10001051C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for PhotosReliveWidgetContentView();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = (v0 + v5);
  sub_10000D4FC(&qword_100044978, &qword_100033A38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_100032700();
    sub_100011D74(v8);
    (*(v9 + 8))(v0 + v5);
  }

  else
  {
    v10 = *v7;
  }

  v11 = *&v7[*(v3 + 36)];

  (*(*(v2 - 8) + 8))(&v7[*(v3 + 44)], v2);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_100010678@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = type metadata accessor for PhotosReliveWidgetContentView();
  sub_100011EE8(v7);
  v9 = v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100002C44(a1, v9, v5, v6, a2);
}

uint64_t sub_100010744(uint64_t a1)
{
  v2 = type metadata accessor for PhotosReliveWidgetPhotoView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000107A0()
{
  result = qword_100044EF0;
  if (!qword_100044EF0)
  {
    sub_10000D57C(&qword_100044EE8, &qword_100034068);
    sub_10001082C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044EF0);
  }

  return result;
}

unint64_t sub_10001082C()
{
  result = qword_100044EF8;
  if (!qword_100044EF8)
  {
    sub_10000D57C(&qword_100044F00, &qword_100034070);
    sub_1000108B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044EF8);
  }

  return result;
}

unint64_t sub_1000108B8()
{
  result = qword_100044F08;
  if (!qword_100044F08)
  {
    sub_10000D57C(&qword_100044F10, &qword_100034078);
    sub_100010944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044F08);
  }

  return result;
}

unint64_t sub_100010944()
{
  result = qword_100044F18;
  if (!qword_100044F18)
  {
    sub_10000D57C(&qword_100044F20, &qword_100034080);
    sub_1000109FC();
    sub_100011BE0(&qword_100044F50, &unk_100044F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044F18);
  }

  return result;
}

unint64_t sub_1000109FC()
{
  result = qword_100044F28;
  if (!qword_100044F28)
  {
    sub_10000D57C(&qword_100044F30, &qword_100034088);
    sub_100010AB4();
    sub_100011BE0(&qword_100044F40, &unk_100044F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044F28);
  }

  return result;
}

unint64_t sub_100010AB4()
{
  result = qword_100044F38;
  if (!qword_100044F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044F38);
  }

  return result;
}

uint64_t sub_100010B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100011FE8(*(a1 + 48));
  }

  v7 = sub_100031E30();
  v8 = a1 + *(a3 + 36);

  return sub_10000D8C4(v8, a2, v7);
}

uint64_t sub_100010BE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_100031E30();
    v8 = v5 + *(a4 + 36);

    return sub_10000D904(v8, a2, a2, v7);
  }

  return result;
}

void sub_100010C68()
{
  sub_100010D94(319, &qword_100044FD8, &type metadata for CGFloat, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100010D94(319, &unk_100044FE0, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PhotosReliveWidgetViewModel(319);
      if (v2 <= 0x3F)
      {
        sub_100031E30();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100010D94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100010DE4(__int128 *a1)
{
  type metadata accessor for PhotosReliveWidgetPhotoView(255);
  sub_10000D57C(&qword_100044ED8, &qword_100033FD8);
  v3 = *a1;
  swift_getOpaqueTypeMetadata2();
  sub_100011FA0();
  swift_getTupleTypeMetadata2();
  sub_100032610();
  sub_100032B10();
  sub_100011FA0();
  swift_getTupleTypeMetadata2();
  sub_100032610();
  swift_getWitnessTable();
  sub_100011FA0();
  sub_100032570();
  swift_getWitnessTable();
  sub_100011E68();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_100011FA0();
  sub_100031E50();
  return swift_getWitnessTable();
}

uint64_t sub_100010F5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100032550();
  sub_100031E80();
  sub_100031E80();
  sub_100031E80();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100011EDC();
  return swift_getWitnessTable();
}

unint64_t sub_100011070()
{
  result = qword_100045060;
  if (!qword_100045060)
  {
    sub_10000D57C(&qword_100045050, &qword_100034180);
    sub_100011154(&qword_100045068, &unk_100045048, &unk_100034178, sub_100011204);
    sub_100011154(&qword_100045098, &unk_100045038, &unk_100034168, sub_100011314);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045060);
  }

  return result;
}

uint64_t sub_100011154(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100012094(0, a2);
    sub_10000D57C(v7, v8);
    a4();
    sub_10000DD28(&qword_100045090, type metadata accessor for AccentDesaturateModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100011204()
{
  result = qword_100045070;
  if (!qword_100045070)
  {
    sub_10000D57C(&qword_100045078, &qword_100034190);
    sub_100011BE0(&qword_100045080, &unk_100045088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045070);
  }

  return result;
}

uint64_t sub_1000112DC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100011314()
{
  result = qword_1000450A0;
  if (!qword_1000450A0)
  {
    sub_10000D57C(&qword_100045058, &qword_100034188);
    sub_1000113D0();
    sub_10000DD28(&qword_1000450C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000450A0);
  }

  return result;
}

unint64_t sub_1000113D0()
{
  result = qword_1000450A8;
  if (!qword_1000450A8)
  {
    sub_10000D57C(&qword_1000450B0, &qword_1000341A0);
    sub_10001145C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000450A8);
  }

  return result;
}

unint64_t sub_10001145C()
{
  result = qword_1000450B8;
  if (!qword_1000450B8)
  {
    sub_10000D57C(&qword_1000450C0, &qword_1000341A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000450B8);
  }

  return result;
}

uint64_t sub_1000114E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100012094(a1, a2);
  v5 = sub_10000D4FC(v3, v4);
  sub_100011D74(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_100011534(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100011554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000D4FC(&qword_1000450D0, &unk_1000341B0);
  v7 = sub_100011FD0(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_10000D8C4(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001162C()
{
  sub_100012054();
  v4 = sub_10000D4FC(&qword_1000450D0, &unk_1000341B0);
  result = sub_100011FD0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_100012014();

    return sub_10000D904(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }

  return result;
}

void sub_1000116C4()
{
  sub_10000FE14();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_10001173C()
{
  result = qword_100045168;
  if (!qword_100045168)
  {
    sub_10000D57C(&qword_100045170, &qword_1000341E0);
    sub_100011070();
    sub_10000D57C(&qword_100044F30, &qword_100034088);
    sub_1000109FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045168);
  }

  return result;
}

unint64_t sub_100011828()
{
  result = qword_1000451A8;
  if (!qword_1000451A8)
  {
    sub_10000D57C(&qword_100045198, &qword_100034258);
    sub_10000D57C(&qword_1000451A0, &qword_100034260);
    sub_100011BE0(&qword_1000451B0, &qword_1000451A0);
    swift_getOpaqueTypeConformance2();
    sub_100011924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000451A8);
  }

  return result;
}

unint64_t sub_100011924()
{
  result = qword_1000451B8;
  if (!qword_1000451B8)
  {
    sub_10000D57C(&qword_100045180, &qword_100034240);
    sub_10000D57C(&qword_1000451A0, &qword_100034260);
    sub_100011BE0(&qword_1000451B0, &qword_1000451A0);
    swift_getOpaqueTypeConformance2();
    sub_100011A2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000451B8);
  }

  return result;
}

unint64_t sub_100011A2C()
{
  result = qword_1000451C0;
  if (!qword_1000451C0)
  {
    sub_10000D57C(&qword_1000451C8, &qword_100034268);
    sub_100011AE4();
    sub_100011BE0(&qword_1000451E0, &unk_1000451E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000451C0);
  }

  return result;
}

unint64_t sub_100011AE4()
{
  result = qword_1000451D0;
  if (!qword_1000451D0)
  {
    sub_10000D57C(&qword_1000451D8, &qword_100034270);
    sub_10000D57C(&qword_1000451A0, &qword_100034260);
    sub_100011BE0(&qword_1000451B0, &qword_1000451A0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000451D0);
  }

  return result;
}

uint64_t sub_100011BE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_100012094(0, a2);
    sub_10000D57C(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011C34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100011EAC(a1, a2, a3, a4);
  sub_100011D74(v5);
  v7 = *(v6 + 16);
  v8 = sub_100011EDC();
  v9(v8);
  return v4;
}

unint64_t sub_100011C84()
{
  result = qword_100045200;
  if (!qword_100045200)
  {
    sub_10000D57C(&qword_100045208, &unk_100034290);
    sub_100011828();
    sub_100011BE0(&qword_1000451B0, &qword_1000451A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045200);
  }

  return result;
}

uint64_t sub_100011DC8()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100011DE4()
{
  v2 = *(v1 - 240);
  result = v0;
  v4 = *(v1 - 256);
  return result;
}

uint64_t sub_100011E80()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100011EAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10000D4FC(a3, a4);
}

uint64_t sub_100011FE8@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_1000120B8()
{

  return sub_1000311E8(2, 17, 0, 0);
}

uint64_t sub_1000120D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100032000();
  v4 = sub_100011D60(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000D4FC(&qword_100044688, qword_100033510);
  v13 = sub_100011D74(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = (&v25 - v17);
  v19 = type metadata accessor for PhotosReliveWidgetView();
  sub_100013C14(v1 + *(v19 + 32), v18, &qword_100044688, qword_100033510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_100032750();
    sub_100011D74(v20);
    return (*(v21 + 32))(a1, v18);
  }

  else
  {
    v23 = *v18;
    sub_100032A30();
    v24 = sub_100032190();
    sub_100031D30();

    sub_100031FF0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v11, v3);
  }
}

BOOL sub_1000122C4()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  type metadata accessor for PhotosReliveWidgetPlaceholderViewModel(0);
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for PhotosReliveWidgetFallbackViewModel(0);
  return !swift_dynamicCastClass() && *(v0 + 32) == 0;
}

uint64_t PhotosReliveWidgetView.body.getter()
{
  v1 = sub_100032180();
  v2 = sub_100011D60(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000D4FC(&qword_100045210, &qword_1000342A0);
  v11 = sub_100011D74(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v18 - v15;
  sub_1000124CC(v0, &v18 - v15);
  sub_100032170();
  sub_1000325F0();
  sub_1000131D0();
  sub_100032440();
  (*(v4 + 8))(v9, v1);
  return sub_100013B00(v16, &qword_100045210, &qword_1000342A0);
}

uint64_t sub_1000124CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = sub_100031EA0();
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = *(v98 + 64);
  __chkstk_darwin(v3, v5);
  v96 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for PhotosReliveWidgetPlaceholderContent(0);
  v7 = *(*(v107 - 8) + 64);
  v9 = __chkstk_darwin(v107, v8);
  v94 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v95 = &v91 - v12;
  v108 = sub_10000D4FC(&qword_100045338, &qword_100034348);
  v100 = *(v108 - 8);
  v13 = *(v100 + 64);
  __chkstk_darwin(v108, v14);
  v97 = &v91 - v15;
  v104 = sub_10000D4FC(&qword_100045340, &qword_100034350);
  v16 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104, v17);
  v106 = (&v91 - v18);
  v19 = sub_100032750();
  v102 = *(v19 - 8);
  v103 = v19;
  v20 = *(v102 + 64);
  v22 = __chkstk_darwin(v19, v21);
  v93 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22, v24);
  v27 = &v91 - v26;
  __chkstk_darwin(v25, v28);
  v101 = &v91 - v29;
  v112 = sub_10000D4FC(&qword_100045268, &qword_1000342C8);
  v30 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112, v31);
  v105 = &v91 - v32;
  v110 = sub_10000D4FC(&qword_100045348, &qword_100034358);
  v33 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110, v34);
  v111 = &v91 - v35;
  v91 = sub_10000D4FC(&qword_100045350, &qword_100034360);
  v36 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91, v37);
  v39 = &v91 - v38;
  v40 = sub_10000D4FC(&qword_100045358, &qword_100034368);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40, v42);
  v44 = &v91 - v43;
  v92 = sub_10000D4FC(&qword_100045248, &qword_1000342B8);
  v45 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92, v46);
  v48 = &v91 - v47;
  v49 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49, v51);
  v53 = &v91 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10000D4FC(&qword_100045238, &qword_1000342B0);
  v54 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109, v55);
  v57 = &v91 - v56;
  v58 = *(a1 + 24);
  if (!v58 || !sub_1000122C4())
  {
    v62 = *a1;
    if (*a1 && (*(a1 + 32) | 2) == 3)
    {
      v64 = *(a1 + 8);
      v63 = *(a1 + 16);

      v65 = v62;
      v66 = v101;
      sub_1000120D8(v101);
      type metadata accessor for PhotosReliveWidgetFallbackViewModel(0);
      v68 = v102;
      v67 = v103;
      (*(v102 + 16))(v27, v66, v103);
      v69 = sub_100025AE8(v65, v64 & 0x101FF, v63, v27);
      (*(v68 + 8))(v66, v67);
      v70 = v106;
      *v106 = 0;
      *(v70 + 1) = v69;
      swift_storeEnumTagMultiPayload();
      sub_100013598();
      v71 = sub_1000135EC(&qword_100044960, type metadata accessor for PhotosReliveWidgetPlaceholderContent);
      v114 = v107;
      v115 = v71;
      swift_getOpaqueTypeConformance2();
      v72 = v105;
      sub_100032150();
LABEL_16:
      sub_100013A98(v72, v111);
      swift_storeEnumTagMultiPayload();
      sub_1000132E0();
      sub_1000134A4();
      sub_100032150();
      return sub_100013B00(v72, &qword_100045268, &qword_1000342C8);
    }

    v73 = v103;
    if (v58)
    {
      type metadata accessor for PhotosReliveWidgetPlaceholderViewModel(0);
      v74 = swift_dynamicCastClass();
      v75 = v94;
      v76 = v102;
      v77 = v93;
      if (v74)
      {
      }

      v78 = v107;
      if (!v62)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v74 = 0;
      v78 = v107;
      v75 = v94;
      v76 = v102;
      v77 = v93;
      if (!v62)
      {
        goto LABEL_13;
      }
    }

    v62 = [v62 contentType];
LABEL_13:

    sub_1000120D8(v77);
    sub_100032320();
    *(v75 + *(v78 + 24)) = 0;
    v79 = v74;
    if (!v74)
    {
      type metadata accessor for PhotosReliveWidgetPlaceholderViewModel(0);
      v80 = v101;
      (*(v76 + 16))(v101, v77, v73);
      v79 = sub_100025760(v62, 0, 0, v80);
    }

    (*(v76 + 8))(v77, v73);
    *(v75 + *(v78 + 20)) = v79;
    v81 = v95;
    sub_100013A34(v75, v95);
    v82 = v96;
    sub_100031E90();
    v83 = sub_1000135EC(&qword_100044960, type metadata accessor for PhotosReliveWidgetPlaceholderContent);
    v84 = v97;
    sub_100032460();
    (*(v98 + 8))(v82, v99);
    sub_100013BBC(v81, type metadata accessor for PhotosReliveWidgetPlaceholderContent);
    v85 = v100;
    v86 = v108;
    (*(v100 + 16))(v106, v84, v108);
    swift_storeEnumTagMultiPayload();
    sub_100013598();
    v114 = v78;
    v115 = v83;
    swift_getOpaqueTypeConformance2();
    v72 = v105;
    sub_100032150();

    (*(v85 + 8))(v84, v86);
    goto LABEL_16;
  }

  v59 = *(v58 + 16);
  if ((v59 - 1) < 2)
  {
    v60 = *(a1 + 33);
    v61 = *(a1 + 34);
    *v44 = v58;
    v44[8] = v60;
    v44[9] = v61;
    swift_storeEnumTagMultiPayload();
    sub_1000135EC(&qword_1000448A0, type metadata accessor for PhotosReliveWidgetMemoryContent);
    sub_10000DE0C();
    swift_retain_n();
    sub_100032150();
    sub_100013C14(v48, v39, &qword_100045248, &qword_1000342B8);
    swift_storeEnumTagMultiPayload();
    sub_10000D4FC(&qword_100045258, &qword_1000342C0);
    sub_10001336C();
    sub_100013428();
    sub_100032150();
    sub_100013B00(v48, &qword_100045248, &qword_1000342B8);
LABEL_21:
    sub_100013C14(v57, v111, &qword_100045238, &qword_1000342B0);
    swift_storeEnumTagMultiPayload();
    sub_1000132E0();
    sub_1000134A4();
    sub_100032150();

    return sub_100013B00(v57, &qword_100045238, &qword_1000342B0);
  }

  if (!v59)
  {
    v88 = *(a1 + 33);
    v89 = *(a1 + 34);
    swift_retain_n();
    sub_100032320();
    *&v53[*(v49 + 20)] = v58;
    v90 = &v53[*(v49 + 24)];
    *v90 = v88;
    v90[1] = v89;
    sub_100013B58(v53, v44);
    swift_storeEnumTagMultiPayload();
    sub_1000135EC(&qword_1000448A0, type metadata accessor for PhotosReliveWidgetMemoryContent);
    sub_10000DE0C();
    sub_100032150();
    sub_100013C14(v48, v39, &qword_100045248, &qword_1000342B8);
    swift_storeEnumTagMultiPayload();
    sub_10000D4FC(&qword_100045258, &qword_1000342C0);
    sub_10001336C();
    sub_100013428();
    sub_100032150();
    sub_100013B00(v48, &qword_100045248, &qword_1000342B8);
    sub_100013BBC(v53, type metadata accessor for PhotosReliveWidgetMemoryContent);
    goto LABEL_21;
  }

  result = sub_100032C10();
  __break(1u);
  return result;
}

uint64_t sub_1000131A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000324A0();
  *a1 = result;
  return result;
}

unint64_t sub_1000131D0()
{
  result = qword_100045218;
  if (!qword_100045218)
  {
    sub_10000D57C(&qword_100045210, &qword_1000342A0);
    sub_100013254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045218);
  }

  return result;
}

unint64_t sub_100013254()
{
  result = qword_100045220;
  if (!qword_100045220)
  {
    sub_10000D57C(&qword_100045228, &qword_1000342A8);
    sub_1000132E0();
    sub_1000134A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045220);
  }

  return result;
}

unint64_t sub_1000132E0()
{
  result = qword_100045230;
  if (!qword_100045230)
  {
    sub_10000D57C(&qword_100045238, &qword_1000342B0);
    sub_10001336C();
    sub_100013428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045230);
  }

  return result;
}

unint64_t sub_10001336C()
{
  result = qword_100045240;
  if (!qword_100045240)
  {
    sub_10000D57C(&qword_100045248, &qword_1000342B8);
    sub_1000135EC(&qword_1000448A0, type metadata accessor for PhotosReliveWidgetMemoryContent);
    sub_10000DE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045240);
  }

  return result;
}

unint64_t sub_100013428()
{
  result = qword_100045250;
  if (!qword_100045250)
  {
    sub_10000D57C(&qword_100045258, &qword_1000342C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045250);
  }

  return result;
}

unint64_t sub_1000134A4()
{
  result = qword_100045260;
  if (!qword_100045260)
  {
    sub_10000D57C(&qword_100045268, &qword_1000342C8);
    sub_100013598();
    type metadata accessor for PhotosReliveWidgetPlaceholderContent(255);
    sub_1000135EC(&qword_100044960, type metadata accessor for PhotosReliveWidgetPlaceholderContent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045260);
  }

  return result;
}

unint64_t sub_100013598()
{
  result = qword_100045270;
  if (!qword_100045270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045270);
  }

  return result;
}

uint64_t sub_1000135EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100013668(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10000D4FC(&qword_100045278, &qword_100034328);
    v10 = a1 + *(a3 + 32);

    return sub_10000D8C4(v10, a2, v9);
  }
}

void *sub_10001371C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_10000D4FC(&qword_100045278, &qword_100034328);
    v8 = v5 + *(a4 + 32);

    return sub_10000D904(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PhotosReliveWidgetView()
{
  result = qword_1000452D8;
  if (!qword_1000452D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000137F4()
{
  sub_100013908();
  if (v0 <= 0x3F)
  {
    sub_100013958(319, &qword_1000452F0, type metadata accessor for PhotosReliveWidgetViewModel, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100013958(319, &unk_1000452F8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100013908()
{
  if (!qword_1000452E8)
  {
    v0 = sub_100032B10();
    if (!v1)
    {
      atomic_store(v0, &qword_1000452E8);
    }
  }
}

void sub_100013958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000139BC()
{
  sub_10000D57C(&qword_100045210, &qword_1000342A0);
  sub_1000131D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100013A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosReliveWidgetPlaceholderContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D4FC(&qword_100045268, &qword_1000342C8);
  sub_100011D74(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100013B00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000D4FC(a2, a3);
  sub_100011D74(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100013B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosReliveWidgetMemoryContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013BBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100011D74(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100013C14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000D4FC(a3, a4);
  sub_100011D74(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100013C84()
{
  v0 = sub_100032750();
  v1 = sub_100011D60(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100011DAC();
  v7 = v3[2];
  v8 = sub_1000240A0();
  v9(v8);
  v10 = v3[11];
  v11 = sub_100011F64();
  v13 = v12(v11);
  result = 0;
  if (v13 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v13 == enum case for WidgetFamily.systemMedium(_:))
    {
      return 1;
    }

    else if (v13 == enum case for WidgetFamily.systemLarge(_:))
    {
      return 2;
    }

    else if (v13 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      return 3;
    }

    else
    {
      v15 = v3[1];
      v16 = sub_100011F64();
      v17(v16);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100013DCC@<X0>(void *a1@<X8>)
{
  result = sub_100031EF0();
  *a1 = v3;
  return result;
}

void *sub_100013E20(uint64_t a1)
{
  result = sub_1000230F8(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_100023138(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_100013EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_100031870();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_10000D904(a2, v7, 1, v6);
}

uint64_t sub_100013F90()
{
  sub_100032BC0(45);
  v6._object = 0x8000000100035F00;
  v6._countAndFlagsBits = 0xD000000000000011;
  sub_100032950(v6);
  v4 = *v0;
  v5 = v0[1];

  sub_10000D4FC(&qword_100045418, &qword_1000348D0);
  v7._countAndFlagsBits = sub_100032920();
  sub_100032950(v7);

  v8._countAndFlagsBits = 0x3A79616C656420;
  v8._object = 0xE700000000000000;
  sub_100032950(v8);
  v1 = v0[2];
  sub_100032A00();
  v9._countAndFlagsBits = 0x6C75646568637320;
  v9._object = 0xEF20657461446465;
  sub_100032950(v9);
  v2 = *(type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0) + 24);
  sub_100031C40();
  sub_10002283C(&qword_100045420, &type metadata accessor for Date);
  v10._countAndFlagsBits = sub_100032CB0();
  sub_100032950(v10);

  return 0;
}

uint64_t sub_100014110()
{
  sub_1000230A4(0, &qword_100045428, OS_os_log_ptr);
  result = sub_100032B00();
  qword_100045360 = result;
  return result;
}

uint64_t sub_100014188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100032750();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  v7 = __chkstk_darwin(v4, v6);
  __chkstk_darwin(v7, v8);
  v51 = &v47[-v9];
  v10 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13, v16);
  v18 = &v47[-v17];
  sub_1000148F0();
  v19 = [objc_opt_self() standardUserDefaults];
  v20 = sub_100032900();

  v21 = [v19 dataForKey:v20];

  if (v21)
  {
    v53 = a2;
    v22 = sub_100031BB0();
    v24 = v23;

    v25 = sub_100031AD0();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_100031AC0();
    sub_10002283C(&qword_100045448, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
    v52 = v24;
    sub_100031AB0();
    v28 = v10;

    v30 = sub_100032A10();
    v31 = v30;
    if (qword_100044618 != -1)
    {
      swift_once();
    }

    v32 = qword_100045360;
    sub_100022B60(v18, v15);
    v33 = v54;
    v34 = v55;
    v35 = v51;
    (*(v54 + 16))(v51, a1, v55);
    if (os_log_type_enabled(v32, v31))
    {
      v36 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v56[0] = v49;
      *v36 = 136315394;
      v48 = v31;
      v37 = v33;
      v38 = sub_100013F90();
      v50 = v28;
      v40 = v39;
      sub_100022A1C(v15, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
      v41 = sub_100021264(v38, v40, v56);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2080;
      sub_10002283C(&qword_1000453E8, &type metadata accessor for WidgetFamily);
      v42 = sub_100032CB0();
      v44 = v43;
      (*(v37 + 8))(v35, v34);
      v45 = sub_100021264(v42, v44, v56);
      v28 = v50;

      *(v36 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v32, v48, "decoded saved scheduled reload config %s for widget family %s", v36, 0x16u);
      swift_arrayDestroy();

      sub_100022A74(v22, v52);
    }

    else
    {
      sub_100022A74(v22, v52);
      (*(v33 + 8))(v35, v34);
      sub_100022A1C(v15, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
    }

    v46 = v53;
    sub_100022904(v18, v53);
    return sub_10000D904(v46, 0, 1, v28);
  }

  else
  {

    return sub_10000D904(a2, 1, 1, v10);
  }
}

unint64_t sub_1000148F0()
{
  sub_100032BC0(18);

  sub_100032740();
  v1._countAndFlagsBits = sub_100032CB0();
  sub_100032950(v1);

  return 0xD000000000000010;
}

uint64_t sub_10001498C(uint64_t a1, void *a2)
{
  v4 = sub_100032750();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  __chkstk_darwin(v4, v6);
  v61 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000D4FC(&qword_1000453E0, &qword_1000348B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v57 - v11;
  v13 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13, v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v66 = &v57 - v20;
  v21 = sub_100031D80();
  v64 = *(v21 - 8);
  v65 = v21;
  v22 = *(v64 + 64);
  __chkstk_darwin(v21, v23);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() standardUserDefaults];
  v60 = a2;
  sub_1000148F0();
  if (qword_100044618 != -1)
  {
    swift_once();
  }

  v27 = qword_100045360;
  sub_100031D60();
  sub_100013C14(a1, v12, &qword_1000453E0, &qword_1000348B0);
  if (sub_10000D8C4(v12, 1, v13) == 1)
  {
    sub_100013B00(v12, &qword_1000453E0, &qword_1000348B0);
    v28 = sub_100032900();
    v29 = [v26 objectForKey:v28];

    if (!v29)
    {
      (*(v64 + 8))(v25, v65);

      memset(v67, 0, sizeof(v67));
      return sub_100013B00(v67, &qword_1000453F8, &qword_1000348C0);
    }

    sub_100032B50();
    swift_unknownObjectRelease();
    sub_100013B00(v67, &qword_1000453F8, &qword_1000348C0);
    sub_100032AD0();
    sub_100031D50();
    sub_100032A10();
    sub_100031D30();
    v30 = sub_100032900();

    [v26 removeObjectForKey:v30];

    if (!CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication))
    {
      sub_100032A20();
      sub_100031D30();
    }

    sub_100032AC0();
    sub_100031D50();
  }

  else
  {
    sub_100022904(v12, v66);
    sub_100032AD0();
    sub_100031D50();
    v31 = sub_100031B00();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_100031AF0();
    sub_100022968();
    v34 = sub_100031AE0();
    v35 = v26;
    v38 = v37;
    v39 = v34;

    v59 = v39;
    isa = sub_100031BA0().super.isa;
    v41 = sub_100032900();

    [v26 setObject:isa forKey:v41];

    if (!CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication))
    {
      sub_100032A20();
      sub_100031D30();
    }

    v43 = sub_100032A10();
    sub_100022B60(v66, v18);
    v45 = v61;
    v44 = v62;
    v46 = v63;
    (*(v62 + 16))(v61, v60, v63);
    if (os_log_type_enabled(v27, v43))
    {
      v47 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v67[0] = v57;
      *v47 = 136315394;
      v60 = v35;
      v48 = v44;
      v49 = sub_100013F90();
      v58 = v38;
      v51 = v50;
      sub_100022A1C(v18, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
      v52 = sub_100021264(v49, v51, v67);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      sub_10002283C(&qword_1000453E8, &type metadata accessor for WidgetFamily);
      v53 = sub_100032CB0();
      v55 = v54;
      (*(v48 + 8))(v45, v46);
      v35 = v60;
      v56 = sub_100021264(v53, v55, v67);

      *(v47 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v27, v43, "saved scheduled reload configuration %s for widget family %s", v47, 0x16u);
      swift_arrayDestroy();

      sub_100022A74(v59, v58);
    }

    else
    {
      sub_100022A74(v59, v38);
      (*(v44 + 8))(v45, v46);
      sub_100022A1C(v18, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
    }

    sub_100032AC0();
    sub_100031D50();

    sub_100022A1C(v66, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
  }

  return (*(v64 + 8))(v25, v65);
}

uint64_t sub_1000152AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564497972746E65 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_100032CD0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79616C6564 && a2 == 0xE500000000000000;
    if (v6 || (sub_100032CD0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C756465686373 && a2 == 0xED00006574614464)
    {

      return 2;
    }

    else
    {
      v8 = sub_100032CD0();

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

Swift::Int sub_1000153D0(unsigned __int8 a1)
{
  sub_100032D00();
  sub_100032D10(a1);
  return sub_100032D20();
}

uint64_t sub_100015424(char a1)
{
  if (!a1)
  {
    return 0x6564497972746E65;
  }

  if (a1 == 1)
  {
    return 0x79616C6564;
  }

  return 0x656C756465686373;
}

Swift::Int sub_1000154B8()
{
  v1 = *v0;
  sub_100032D00();
  sub_100032D10(v1);
  return sub_100032D20();
}

uint64_t sub_100015504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000152AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001554C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000153C8();
  *a1 = result;
  return result;
}

uint64_t sub_100015574(uint64_t a1)
{
  v2 = sub_100023A34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000155B0(uint64_t a1)
{
  v2 = sub_100023A34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000155EC(void *a1)
{
  v3 = v1;
  v5 = sub_10000D4FC(&qword_100045628, &qword_100034A68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v17[-v9];
  v11 = a1[4];
  sub_1000239F0(a1, a1[3]);
  sub_100023A34();
  sub_100032D40();
  v12 = *v3;
  v13 = v3[1];
  v17[15] = 0;
  sub_100032C80();
  if (!v2)
  {
    v14 = v3[2];
    v17[14] = 1;
    sub_100032C90();
    v15 = *(type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0) + 24);
    v17[13] = 2;
    sub_100031C40();
    sub_10002283C(&qword_100045638, &type metadata accessor for Date);
    sub_100032CA0();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1000157CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_100031C40();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000D4FC(&qword_100045640, &qword_100034A70);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13, v15);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[4];
  sub_1000239F0(a1, a1[3]);
  sub_100023A34();
  v19 = v31;
  sub_100032D30();
  if (v19)
  {
    sub_100022C1C(a1);
  }

  else
  {
    v31 = v13;
    v20 = v17;
    v34 = 0;
    v21 = v30;
    *v20 = sub_100032C50();
    v20[1] = v22;
    v33 = 1;
    sub_100032C60();
    v26 = v20;
    v20[2] = v23;
    v32 = 2;
    sub_10002283C(&qword_100045648, &type metadata accessor for Date);
    sub_100032C70();
    (*(v29 + 8))(v12, v21);
    v24 = v26;
    (*(v27 + 32))(v26 + *(v31 + 24), v7, v3);
    sub_100022B60(v24, v28);
    sub_100022C1C(a1);
    return sub_100022A1C(v24, type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration);
  }
}

id sub_100015B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_100032900();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_self();
  v6 = [v5 fallbackEntryForContentType:a1 sourceIdentifier:v4 size:sub_100013C84()];

  return v6;
}

uint64_t sub_100015C10(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x100) == 0)
  {
    return 0;
  }

  v8[7] = v2;
  v8[8] = v3;
  v6 = sub_100031C80();
  v8[3] = v6;
  v8[4] = sub_10002283C(&qword_100045460, &type metadata accessor for PhotosFeatureFlags);
  v7 = sub_100022BBC(v8);
  (*(*(v6 - 8) + 104))(v7, enum case for PhotosFeatureFlags.GyroWidget(_:), v6);
  LOBYTE(v6) = sub_100031C70();
  sub_100022C1C(v8);
  return v6 & (a1 == 1);
}

uint64_t PhotosReliveWidgetEntry.shouldReload.getter(uint64_t a1, char a2, uint64_t a3)
{
  if (!a3 || a2)
  {
    return 0;
  }

  if (*(a3 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_image))
  {
    return *(a3 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_imageIsDegraded);
  }

  return 1;
}

uint64_t PhotosReliveWidgetEntry.date.getter(void *a1)
{
  v3 = sub_100031C40();
  v4 = sub_100011D60(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  sub_100011DAC();
  v8 = sub_10000D4FC(&qword_100045368, &unk_1000343F0);
  sub_100011EE8(v8);
  v10 = *(v9 + 64);
  sub_100011DBC();
  __chkstk_darwin(v11, v12);
  sub_1000240B0();
  v13 = [a1 startTime];
  if (v13)
  {
    v14 = v13;
    sub_100031C20();

    v15 = sub_1000241B8();
    (v14)(v15);
    sub_100024244(v1, 0);
    v16 = sub_1000240A0();
    return (v14)(v16);
  }

  else
  {
    v18 = sub_1000241AC();
    sub_100024244(v18, v19);
    sub_100031C30();
    v20 = sub_1000241AC();
    result = sub_10000D8C4(v20, v21, v3);
    if (result != 1)
    {
      return sub_100013B00(v1, &qword_100045368, &unk_1000343F0);
    }
  }

  return result;
}

uint64_t PhotosReliveWidgetEntry.endDate.getter(void *a1)
{
  v3 = sub_100031C40();
  v4 = sub_100011D60(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100011DAC();
  v12 = v11 - v10;
  v13 = sub_10000D4FC(&qword_100045368, &unk_1000343F0);
  sub_100011EE8(v13);
  v15 = *(v14 + 64);
  sub_100011DBC();
  __chkstk_darwin(v16, v17);
  sub_1000240B0();
  v18 = [a1 endTime];
  if (v18)
  {
    v19 = v18;
    sub_100031C20();

    v20 = sub_1000241B8();
    (v19)(v20);
    sub_100024244(v1, 0);
    v21 = sub_1000240A0();
    return (v19)(v21);
  }

  else
  {
    v23 = sub_1000241AC();
    sub_100024244(v23, v24);
    sub_100031C30();
    sub_100031BF0();
    (*(v6 + 8))(v12, v3);
    v25 = sub_1000241AC();
    result = sub_10000D8C4(v25, v26, v3);
    if (result != 1)
    {
      return sub_100013B00(v1, &qword_100045368, &unk_1000343F0);
    }
  }

  return result;
}

void PhotosReliveWidgetEntry.description.getter()
{
  sub_100011F0C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_10000D4FC(&qword_100045368, &unk_1000343F0);
  sub_100011D74(v7);
  v9 = *(v8 + 64);
  sub_100011DBC();
  __chkstk_darwin(v10, v11);
  sub_100024220();
  switch(v4)
  {
    case 1:
    case 3:
      goto LABEL_11;
    default:
      sub_100032BC0(59);
      v24._countAndFlagsBits = 0xD000000000000012;
      v24._object = 0x8000000100035D30;
      sub_100032950(v24);
      v12 = [v6 localIdentifier];
      v13 = sub_100032910();
      v15 = v14;

      v25._countAndFlagsBits = v13;
      v25._object = v15;
      sub_100032950(v25);

      v26._countAndFlagsBits = 0x746E65746E6F6320;
      v26._object = 0xEE00203A65707954;
      sub_100032950(v26);
      [v6 contentType];
      v27._countAndFlagsBits = PXTimelineContentType.description.getter();
      sub_100032950(v27);

      v28._countAndFlagsBits = 0x20746573736120;
      v28._object = 0xE700000000000000;
      sub_100032950(v28);
      v16 = [v6 assetLocalIdentifier];
      v17 = sub_100032910();
      v19 = v18;

      v29._countAndFlagsBits = v17;
      v29._object = v19;
      sub_100032950(v29);

      v30._countAndFlagsBits = 0x6954747261747320;
      v30._object = 0xEC000000203A656DLL;
      sub_100032950(v30);
      v20 = [v6 startTime];
      if (v20)
      {
        v21 = v20;
        sub_100031C20();

        v22 = sub_100031C40();
        v23 = 0;
      }

      else
      {
        v22 = sub_100031C40();
        v23 = 1;
      }

      sub_10000D904(v0, v23, 1, v22);
      v31._countAndFlagsBits = sub_100032920();
      sub_100032950(v31);

      if (v4 == 2)
      {
        goto LABEL_8;
      }

      if (!v2)
      {
        goto LABEL_11;
      }

      type metadata accessor for PhotosReliveWidgetPlaceholderViewModel(0);
      if (!swift_dynamicCastClass())
      {
        goto LABEL_9;
      }

LABEL_8:
      v32._countAndFlagsBits = 0xD000000000000016;
      v32._object = 0x8000000100035D50;
      sub_100032950(v32);
      if (v2)
      {
LABEL_9:
        if (*(v2 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_imageIsDegraded) == 1)
        {

          v33._countAndFlagsBits = 0x642D6567616D4920;
          v33._object = 0xEF64656461726765;
          sub_100032950(v33);
        }
      }

LABEL_11:
      sub_100011EF4();
      return;
  }
}

void sub_100016398()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  *(v0 + 9);
  *(v0 + 10);
  PhotosReliveWidgetEntry.description.getter();
}

uint64_t sub_1000163DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v92 = a6;
  *&v93 = a4;
  v94 = a5;
  v88 = type metadata accessor for PhotosReliveWidgetSize(0);
  v8 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88, v9);
  v87 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000D4FC(&qword_1000454A8, &qword_100034920);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v87 - v14;
  v16 = sub_10000D4FC(&qword_1000454B0, &qword_100034928);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v87 - v19;
  v21 = sub_100031A10();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100031D80();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  v96 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100044620 == -1)
  {
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_29:
    sub_10000D4FC(&qword_100045450, &qword_1000348E0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1000334C0;
    *(v64 + 32) = [objc_opt_self() privacyDisclosureEntryForContentType:2];
    *(v64 + 40) = 3;
    *(v64 + 42) = 0;
    *(v64 + 48) = 0;
    return v64;
  }

  swift_once();
  if (!a7)
  {
    goto LABEL_29;
  }

LABEL_3:
  v90 = v28;
  v32 = v27;
  v33 = qword_100048338;
  v95 = a7;
  v34 = v33;
  sub_100031D60();
  sub_100032AD0();
  v91 = v34;
  sub_100031D50();
  sub_100031800();
  v35 = sub_10000D8C4(v20, 1, v21);
  v89 = v32;
  if (v35 == 1)
  {
    sub_100013B00(v20, &qword_1000454B0, &qword_100034928);
    sub_100031800();
    if (v97)
    {
      v36 = v98;
      v37 = v99;
    }

    else
    {
      v36 = 0;
      v37 = 0;
    }

    v43 = v94;
    sub_100031800();
    v42 = v90;
    if (v97)
    {
      sub_1000317D0();

      v41 = v98;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    (*(v22 + 32))(v26, v20, v21);
    v38 = sub_100031A00();
    sub_100013EB4(v38, v15);

    v39 = sub_100031870();
    if (sub_10000D8C4(v15, 1, v39) == 1)
    {
      (*(v22 + 8))(v26, v21);
      sub_100013B00(v15, &qword_1000454A8, &qword_100034920);
      v36 = 0;
      v37 = 0;
    }

    else
    {
      v36 = sub_100031860();
      v37 = v40;
      (*(v22 + 8))(v26, v21);
      (*(*(v39 - 8) + 8))(v15, v39);
    }

    v41 = v37;
    v42 = v90;
    v43 = v94;
  }

  v44 = sub_100016DE0(v36, v37, v95);
  v46 = v45;

  if (!v46)
  {

    goto LABEL_18;
  }

  if (!v41)
  {
LABEL_18:
    v52 = &_swiftEmptyArrayStorage;
    v50 = v95;
    goto LABEL_19;
  }

  v47 = objc_opt_self();

  v48 = sub_100032900();

  v49 = sub_100032900();

  v50 = v95;
  v51 = [v47 timelineFromLibrary:v95 albumIdentifier:v48 widgetIdentifier:v49 widgetSize:{*(v43 + *(v88 + 20)), *(v43 + *(v88 + 20) + 8)}];

  sub_1000230A4(0, &qword_100045458, PXTimelineEntry_ptr);
  v52 = sub_1000329A0();

LABEL_19:
  v53 = sub_1000174C4(v92, v52);
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = sub_100031800();
  __chkstk_darwin(v60, v61);
  *(&v87 - 4) = v43;
  *(&v87 - 24) = v62;
  *(&v87 - 23) = 0;
  *(&v87 - 2) = v50;
  sub_10001760C(sub_100023050, (&v87 - 6), v53, v55, v57, v59);
  v64 = v63;
  sub_100032AC0();
  v65 = v96;
  sub_100031D50();
  if (*(v64 + 16))
  {
    swift_unknownObjectRelease();

LABEL_25:
    (*(v42 + 8))(v65, v89);
    return v64;
  }

  if (!v46)
  {
LABEL_24:
    sub_100032A40();
    sub_100031D30();
    sub_10000D4FC(&qword_100045450, &qword_1000348E0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1000334C0;
    v73 = sub_100015B7C(2, v44, v46);
    v75 = v74;
    v77 = v76;

    *(v64 + 32) = v73;
    *(v64 + 40) = v75;
    *(v64 + 41) = BYTE1(v75) & 1;
    *(v64 + 42) = BYTE2(v75) & 1;
    *(v64 + 48) = v77;

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v66 = objc_opt_self();
  sub_10000D4FC(&qword_1000454B8, &unk_100034930);
  v67 = swift_allocObject();
  v93 = xmmword_1000334C0;
  *(v67 + 16) = xmmword_1000334C0;
  *(v67 + 32) = v44;
  *(v67 + 40) = v46;
  swift_bridgeObjectRetain_n();
  isa = sub_100032990().super.isa;

  v69 = v95;
  v70 = [v95 librarySpecificFetchOptions];
  v71 = [v66 fetchAssetCollectionsWithLocalIdentifiers:isa options:v70];

  v72 = [v71 firstObject];
  if (v72)
  {

    v65 = v96;
    goto LABEL_24;
  }

  sub_100032A40();
  sub_100031D30();
  v78 = objc_opt_self();
  v79 = v94;
  v80 = sub_100013C84();
  v81 = sub_100021EB4(v44, v46, v80, v78);
  v82 = v87;
  sub_100022B60(v79, v87);
  v83 = v81;
  v84 = v69;
  v85 = v83;
  [v85 contentType];
  type metadata accessor for PhotosReliveWidgetViewModel(0);
  sub_100025CA8();

  sub_100022A1C(v82, type metadata accessor for PhotosReliveWidgetSize);

  sub_10000D4FC(&qword_100045450, &qword_1000348E0);
  v64 = swift_allocObject();
  *(v64 + 16) = v93;
  *(v64 + 32) = v85;
  *(v64 + 40) = 1;
  *(v64 + 42) = 0;
  *(v64 + 48) = 0;

  swift_unknownObjectRelease();
  (*(v42 + 8))(v96, v89);
  return v64;
}

uint64_t sub_100016DE0(uint64_t a1, unint64_t a2, void *a3)
{
  if (!a2)
  {
    return a1;
  }

  v6 = qword_100044620;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_100048338;
  if (sub_100032910() == a1 && v8 == a2)
  {
    goto LABEL_19;
  }

  v10 = sub_100032CD0();

  if (v10)
  {
    goto LABEL_20;
  }

  if (sub_100032910() == a1 && v11 == a2)
  {
LABEL_19:
  }

  else
  {
    v13 = sub_100032CD0();

    if ((v13 & 1) == 0)
    {
      v14 = objc_opt_self();
      if ((sub_100021E6C(a1, a2, v14) & 1) == 0)
      {
        v47 = sub_100032A40();
        if (os_log_type_enabled(v7, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v52 = v49;
          *v48 = 136315138;
          *(v48 + 4) = sub_100021264(a1, a2, &v52);
          _os_log_impl(&_mh_execute_header, v7, v47, "using local identifier %s which will not support ICPL sync", v48, 0xCu);
          sub_100022C1C(v49);
        }

        return a1;
      }

      sub_10000D4FC(&qword_1000454C0, &qword_100035320);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1000343D0;
      sub_1000230A4(0, &qword_1000454C8, PHCloudIdentifier_ptr);

      *(v15 + 32) = sub_1000177BC();
      v16 = sub_100032A60();

      v17 = sub_100013E20(v16);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      if (v17)
      {

        if ((v23 & 1) == 0)
        {

          return v19;
        }

        v24 = sub_100032A20();
        if (os_log_type_enabled(v7, v24))
        {
          v25 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v25 = 136315394;
          v26 = sub_100021264(a1, a2, &v52);

          *(v25 + 4) = v26;
          *(v25 + 12) = 2080;
          swift_getErrorValue();
          v27 = sub_100032CF0();
          v29 = sub_100021264(v27, v28, &v52);

          *(v25 + 14) = v29;
          _os_log_impl(&_mh_execute_header, v7, v24, "could not get local identifier for cloud identifier %s with error %s", v25, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        sub_1000230E4(v19, v21, 1, &_swift_errorRelease);
        return 0;
      }

      v39 = sub_100032A20();
      if (os_log_type_enabled(v7, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v52 = v41;
        *v40 = 136315138;
        v50 = sub_100021264(a1, a2, &v52);

        *(v40 + 4) = v50;
        v43 = "could not get local identifier for cloud identifier %s";
        goto LABEL_32;
      }

      goto LABEL_45;
    }
  }

LABEL_20:
  if (sub_100032910() == a1 && v30 == a2)
  {
    v33 = 203;
LABEL_27:

    goto LABEL_28;
  }

  v32 = sub_100032CD0();

  if (v32)
  {
    v33 = 203;
    goto LABEL_28;
  }

  if (sub_100032910() == a1 && v44 == a2)
  {
    v33 = 212;
    goto LABEL_27;
  }

  v46 = sub_100032CD0();

  if (v46)
  {
    v33 = 212;
LABEL_28:
    v34 = objc_opt_self();
    v35 = [a3 librarySpecificFetchOptions];
    v36 = [v34 fetchAssetCollectionsWithType:2 subtype:v33 options:v35];

    v37 = [v36 firstObject];
    if (v37)
    {

      v38 = [v37 localIdentifier];
      a1 = sub_100032910();

      return a1;
    }

    v39 = sub_100032A20();
    if (os_log_type_enabled(v7, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v52 = v41;
      *v40 = 136315138;
      v42 = sub_100021264(a1, a2, &v52);

      *(v40 + 4) = v42;
      v43 = "could not find smart album type %s";
LABEL_32:
      _os_log_impl(&_mh_execute_header, v7, v39, v43, v40, 0xCu);
      sub_100022C1C(v41);

      return 0;
    }

LABEL_45:

    return 0;
  }

  result = sub_100032C10();
  __break(1u);
  return result;
}

uint64_t sub_1000174C4(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_100032C30();

    return v10;
  }

  v4 = sub_100021144(a2);
  v5 = sub_100022C68(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_100022CB4(0, a2);
  sub_100022CB4(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_1000230A4(0, &qword_100045458, PXTimelineEntry_ptr);

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_100032BD0(v8);
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

void sub_10001760C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6)
{
  v28 = a6 >> 1;
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v6;
  if (!v8)
  {
    return;
  }

  v7 = a4;
  v36 = &_swiftEmptyArrayStorage;
  sub_1000217D4(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v36;
    v26 = &v7[8 * a5];
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ((a5 + v10) >= v28 || v10 >= v8)
      {
        goto LABEL_16;
      }

      v30 = *&v26[8 * v10];
      v7 = v30;
      a1(&v31, &v30);
      if (v9)
      {
        goto LABEL_19;
      }

      v9 = 0;

      v14 = v31;
      v15 = v32;
      v16 = v33;
      v17 = v34;
      v18 = v35;
      v36 = v11;
      v20 = v11[2];
      v19 = v11[3];
      v7 = (v20 + 1);
      if (v20 >= v19 >> 1)
      {
        v25 = v31;
        v22 = v32;
        v24 = v34;
        v23 = v35;
        sub_1000217D4((v19 > 1), v20 + 1, 1);
        v18 = v23;
        v17 = v24;
        v15 = v22;
        v14 = v25;
        v11 = v36;
      }

      v11[2] = v7;
      v21 = &v11[3 * v20];
      v21[4] = v14;
      *(v21 + 40) = v15;
      *(v21 + 41) = v16;
      *(v21 + 42) = v17;
      v21[6] = v18;
      ++v10;
      if (v12 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
LABEL_19:

  __break(1u);
}

id sub_1000177BC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_100032900();

  v2 = [v0 initWithStringValue:v1];

  return v2;
}

uint64_t sub_100017830()
{
  sub_100023EC8();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[5] = v5;
  v6 = sub_100032800();
  v0[10] = v6;
  sub_100023E68(v6);
  v0[11] = v7;
  v9 = *(v8 + 64);
  v0[12] = sub_1000240D0();
  v10 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v0[13] = v10;
  sub_100023E68(v10);
  v0[14] = v11;
  v13 = *(v12 + 64);
  v0[15] = sub_1000240D0();
  v14 = sub_100023E90();

  return _swift_task_switch(v14);
}

uint64_t sub_100017934()
{
  sub_10002422C();
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(*(v0 + 88) + 16);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v12 = *(v0 + 56);
  v13 = *(v0 + 40);
  v6 = sub_1000241F4();
  v7(v6);
  sub_100024014();
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *(v8 + 16) = v13;
  *(v8 + 32) = v12;
  *(v8 + 48) = v1;
  v9 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = sub_100017A54;
  sub_100023E78();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100017A54()
{
  sub_100023EC8();
  sub_100024068();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
  v4 = *v0;
  sub_100023EA0();
  *v5 = v4;

  v6 = sub_100023E90();

  return _swift_task_switch(v6);
}

uint64_t sub_100017B54()
{
  sub_10002422C();
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = sub_100023F8C(v0[14]);
  v5(v4);

  v6 = sub_100024118();

  return v7(v6);
}

uint64_t sub_100017C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a2;
  v42 = a6;
  v44 = a4;
  v45 = a5;
  v39 = a3;
  v40 = a1;
  v48 = sub_100032670();
  v51 = *(v48 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin(v48, v8);
  v47 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000326A0();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  __chkstk_darwin(v10, v12);
  v46 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000D4FC(&qword_1000454A0, &qword_100034918);
  v37 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v36 - v18;
  v38 = &v36 - v18;
  v20 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v36 - v24;
  sub_1000230A4(0, &qword_100045470, OS_dispatch_queue_ptr);
  v43 = sub_100032A90();
  (*(v21 + 16))(v25, v42, v20);
  (*(v15 + 16))(v19, v40, v14);
  v26 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v27 = (v22 + *(v15 + 80) + v26) & ~*(v15 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v41;
  *(v28 + 3) = a3;
  v29 = v45;
  *(v28 + 4) = v44;
  *(v28 + 5) = v29;
  (*(v21 + 32))(&v28[v26], v25, v20);
  (*(v15 + 32))(&v28[v27], v38, v37);
  aBlock[4] = sub_10002344C;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019100;
  aBlock[3] = &unk_1000429B0;
  v30 = _Block_copy(aBlock);

  v31 = v46;
  sub_100032680();
  v52 = &_swiftEmptyArrayStorage;
  sub_10002283C(&qword_100045488, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000D4FC(&qword_100045490, &qword_100034908);
  sub_100022D6C(&qword_100045498, &qword_100045490, &qword_100034908);
  v33 = v47;
  v32 = v48;
  sub_100032B60();
  v34 = v43;
  sub_100032AA0();
  _Block_release(v30);

  (*(v51 + 8))(v33, v32);
  (*(v49 + 8))(v31, v50);
}

uint64_t sub_1000180E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[2] = a3;
  v22[3] = a4;
  v22[1] = a2;
  v7 = sub_10000D4FC(&qword_1000454A0, &qword_100034918);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v22 - v11;
  v13 = sub_100032800();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100031CC0();
  (*(v8 + 16))(v12, a6, v7);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  (*(v8 + 32))(v20 + v19, v12, v7);
  sub_100018AB8();

  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_100018300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v104 = a7;
  v87 = a6;
  v101 = a3;
  v102 = a4;
  v99 = a1;
  v100 = a2;
  v8 = sub_1000327C0();
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = *(v95 + 64);
  __chkstk_darwin(v8, v10);
  v94 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for PhotosReliveWidgetSize(0);
  v12 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98, v13);
  v105 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100032800();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v19 = __chkstk_darwin(v15, v18);
  v92 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v106 = &v83 - v22;
  v23 = sub_100032750();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v30);
  v32 = &v83 - v31;
  v103 = sub_10001A5E8();
  v33 = a5;
  sub_1000327E0();
  v34 = sub_100032A40();
  if (qword_100044620 != -1)
  {
    swift_once();
  }

  v35 = qword_100048338;
  v36 = v24[2];
  v88 = v32;
  v36(v29, v32, v23);
  v37 = v16[2];
  v93 = v33;
  v91 = v37;
  v37(v106, v33, v15);
  v38 = os_log_type_enabled(v35, v34);
  v90 = v23;
  v89 = v24;
  v86 = v35;
  v97 = v16;
  if (v38)
  {
    v39 = v24;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v84 = v15;
    v42 = v41;
    v107 = v41;
    *v40 = 136446466;
    sub_10002283C(&qword_1000453E8, &type metadata accessor for WidgetFamily);
    v43 = v35;
    v44 = sub_100032CB0();
    v45 = v23;
    v47 = v46;
    v85 = v39[1];
    v85(v29, v45);
    v48 = sub_100021264(v44, v47, &v107);

    *(v40 + 4) = v48;
    *(v40 + 12) = 1026;
    v49 = v106;
    LODWORD(v48) = sub_1000327F0() & 1;
    v50 = v16[1];
    v50(v49, v84);
    *(v40 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v43, v34, "snapshot requested at size %{public}s inAddSheet  %{BOOL,public}d", v40, 0x12u);
    sub_100022C1C(v42);
    v15 = v84;
  }

  else
  {
    v50 = v16[1];
    v50(v106, v15);
    v85 = v24[1];
    v85(v29, v23);
  }

  v51 = v92;
  v91(v92, v93, v15);
  v52 = v94;
  sub_1000327D0();
  swift_getKeyPath();
  v53 = sub_1000327B0();

  (*(v95 + 8))(v52, v96);
  if (v53)
  {
    v54 = *(v53 + 16);
    v55 = v54 == 0;
    if (v54)
    {
      v56 = *(v53 + 32);
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
    v55 = 1;
  }

  v57 = v105;
  sub_1000327E0();
  sub_1000327A0();
  v59 = v58;
  v61 = v60;
  v50(v51, v15);
  v63 = v98;
  v62 = v99;
  v64 = (v57 + *(v98 + 20));
  *v64 = v59;
  v64[1] = v61;
  v65 = v57 + *(v63 + 24);
  *v65 = v56;
  *(v65 + 8) = v55;
  v66 = v103;
  result = sub_1000163DC(v62, v100, v101, v102, v57, 1, v103);
  if (*(result + 16))
  {
    v68 = *(result + 32);
    v69 = *(result + 40);
    v70 = *(result + 41);
    v71 = *(result + 42);
    v72 = *(result + 48);

    v73 = v68;

    v107 = v73;
    v108 = v69;
    v109 = v70;
    v110 = v71;
    v111 = v72;
    v87(&v107);
    v74 = sub_100032A40();
    v75 = v86;
    if (os_log_type_enabled(v86, v74))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v107 = v77;
      *v76 = 136446210;
      v73 = v73;

      PhotosReliveWidgetEntry.description.getter();
      v79 = v78;
      v81 = v80;

      v82 = sub_100021264(v79, v81, &v107);

      *(v76 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v75, v74, "snapshot request completed with entry %{public}s", v76, 0xCu);
      sub_100022C1C(v77);
    }

    sub_100022A1C(v105, type metadata accessor for PhotosReliveWidgetSize);
    v85(v88, v90);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100018AB8()
{
  sub_100023FC4();
  v94 = v1;
  v95 = v2;
  v4 = v3;
  v108 = v5;
  v109 = v6;
  v106 = v7;
  v107 = v8;
  v9 = sub_1000327C0();
  v10 = sub_100011D60(v9);
  v102 = v11;
  v103 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10, v14);
  sub_100011DAC();
  v101 = v16 - v15;
  v17 = sub_100023ED4();
  v105 = type metadata accessor for PhotosReliveWidgetSize(v17);
  v18 = sub_100011D74(v105);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  sub_100011DAC();
  v111 = v23 - v22;
  sub_100023ED4();
  v24 = sub_100032800();
  v25 = sub_100011D60(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25, v30);
  sub_100023E54();
  v98 = v31;
  __chkstk_darwin(v32, v33);
  sub_1000240C0();
  v112 = sub_100032750();
  v34 = sub_100011D60(v112);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34, v39);
  sub_100011D9C();
  v42 = v40 - v41;
  __chkstk_darwin(v43, v44);
  v46 = &v91 - v45;
  v110 = sub_10001A5E8();
  sub_1000327E0();
  v47 = sub_100032A40();
  if (qword_100044620 != -1)
  {
    sub_100023F50();
  }

  v48 = qword_100048338;
  v49 = *(v36 + 16);
  v96 = v46;
  v49(v42, v46, v112);
  v99 = *(v27 + 16);
  v100 = v4;
  v99(v0, v4, v24);
  v50 = os_log_type_enabled(v48, v47);
  v51 = v24;
  v97 = v36;
  v93 = v48;
  v104 = v27;
  if (v50)
  {
    v52 = swift_slowAlloc();
    HIDWORD(v91) = v47;
    v53 = v52;
    v54 = sub_100024188();
    v113 = v54;
    *v53 = 136446466;
    sub_100023DAC();
    sub_10002283C(v55, v56);
    v57 = v48;
    v58 = sub_100032CB0();
    v92 = *(v36 + 8);
    v92(v42, v112);
    v59 = sub_100011F64();
    sub_100021264(v59, v60, v61);
    sub_100024214();

    *(v53 + 4) = v58;
    *(v53 + 12) = 1026;
    v62 = sub_1000327F0() & 1;
    v63 = *(v27 + 8);
    v63(v0, v24);
    *(v53 + 14) = v62;
    v64 = v57;
    v51 = v24;
    _os_log_impl(&_mh_execute_header, v64, BYTE4(v91), "snapshot requested at size %{public}s inAddSheet  %{BOOL,public}d", v53, 0x12u);
    sub_100022C1C(v54);
    sub_100023FAC();
    sub_100023FAC();
  }

  else
  {
    v65 = *(v27 + 8);
    v65(v0, v24);
    v66 = v42;
    v63 = v65;
    v92 = *(v36 + 8);
    v92(v66, v112);
  }

  v67 = v98;
  v99(v98, v100, v51);
  v68 = v101;
  sub_1000327D0();
  KeyPath = swift_getKeyPath();
  sub_1000327B0();
  sub_100024214();

  v70 = sub_100024030();
  v71(v70);
  v72 = v110;
  if (v68)
  {
    sub_100023EE0();
    if (v73)
    {
      v74 = *(v68 + 32);
    }

    else
    {
      v74 = 0;
    }
  }

  else
  {
    v74 = 0;
    KeyPath = 1;
  }

  v75 = v111;
  sub_1000327E0();
  sub_1000327A0();
  sub_10002410C();
  v63(v67, v51);
  sub_1000240F4();
  *v76 = v74;
  *(v76 + 8) = KeyPath;
  v78 = sub_1000163DC(v77, v107, v108, v109, v75, 1, v72);
  if (*(v78 + 16))
  {
    sub_10002403C(v78);
    v79 = KeyPath;

    v80 = sub_100023F70();
    v95(v80);
    v81 = sub_100032A40();
    v82 = v93;
    if (os_log_type_enabled(v93, v81))
    {
      v83 = sub_10002425C();
      v84 = sub_100024188();
      v113 = v84;
      *v83 = 136446210;
      v79 = v79;

      sub_100023F70();
      PhotosReliveWidgetEntry.description.getter();
      v86 = v85;
      v88 = v87;

      v89 = sub_100021264(v86, v88, &v113);

      *(v83 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v82, v81, "snapshot request completed with entry %{public}s", v83, 0xCu);
      sub_100022C1C(v84);
      sub_100023FAC();
      sub_100023FAC();
    }

    sub_100023D94();
    sub_100022A1C(v111, v90);
    v92(v96, v112);
    sub_100023FE0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100019100(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100019144()
{
  sub_100023EC8();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v7 = sub_100032800();
  v0[8] = v7;
  sub_100023E68(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = sub_1000240D0();
  v11 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v0[11] = v11;
  sub_100023E68(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = sub_1000240D0();
  v15 = sub_100023E90();

  return _swift_task_switch(v15);
}

uint64_t sub_100019248()
{
  sub_10002422C();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(*(v0 + 72) + 16);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v13 = *(v0 + 40);
  v14 = *(v0 + 24);
  v6 = sub_1000241F4();
  v7(v6);
  sub_100024014();
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *(v8 + 16) = v14;
  *(v8 + 32) = v13;
  *(v8 + 48) = v1;
  v9 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  sub_10000D4FC(&qword_1000453D0, &qword_100034870);
  *v10 = v0;
  v10[1] = sub_100019378;
  v11 = *(v0 + 16);
  sub_100023E78();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100019378()
{
  sub_100023EC8();
  sub_100024068();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  sub_100023EA0();
  *v5 = v4;

  v6 = sub_100023E90();

  return _swift_task_switch(v6);
}

uint64_t sub_100019478()
{
  sub_100023EC8();
  v1 = v0[10];
  (*(v0[12] + 8))(v0[13], v0[11]);

  sub_100024238();

  return v2();
}

uint64_t sub_1000194F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a2;
  v42 = a6;
  v44 = a4;
  v45 = a5;
  v39 = a3;
  v40 = a1;
  v48 = sub_100032670();
  v51 = *(v48 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin(v48, v8);
  v47 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000326A0();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  __chkstk_darwin(v10, v12);
  v46 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000D4FC(&qword_100045480, &qword_100034900);
  v37 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v36 - v18;
  v38 = &v36 - v18;
  v20 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v36 - v24;
  sub_1000230A4(0, &qword_100045470, OS_dispatch_queue_ptr);
  v43 = sub_100032A90();
  (*(v21 + 16))(v25, v42, v20);
  (*(v15 + 16))(v19, v40, v14);
  v26 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v27 = (v22 + *(v15 + 80) + v26) & ~*(v15 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v41;
  *(v28 + 3) = a3;
  v29 = v45;
  *(v28 + 4) = v44;
  *(v28 + 5) = v29;
  (*(v21 + 32))(&v28[v26], v25, v20);
  (*(v15 + 32))(&v28[v27], v38, v37);
  aBlock[4] = sub_100023218;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019100;
  aBlock[3] = &unk_100042938;
  v30 = _Block_copy(aBlock);

  v31 = v46;
  sub_100032680();
  v52 = &_swiftEmptyArrayStorage;
  sub_10002283C(&qword_100045488, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000D4FC(&qword_100045490, &qword_100034908);
  sub_100022D6C(&qword_100045498, &qword_100045490, &qword_100034908);
  v33 = v47;
  v32 = v48;
  sub_100032B60();
  v34 = v43;
  sub_100032AA0();
  _Block_release(v30);

  (*(v51 + 8))(v33, v32);
  (*(v49 + 8))(v31, v50);
}

uint64_t sub_1000199D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[2] = a3;
  v22[3] = a4;
  v22[1] = a2;
  v7 = sub_10000D4FC(&qword_100045480, &qword_100034900);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v22 - v11;
  v13 = sub_100032800();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100031CC0();
  (*(v8 + 16))(v12, a6, v7);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  (*(v8 + 32))(v20 + v19, v12, v7);
  sub_100019BF4();

  return (*(v14 + 8))(v18, v13);
}

void sub_100019BF4()
{
  sub_100023FC4();
  v138 = v5;
  v139 = v4;
  v7 = v6;
  v131 = v8;
  v141 = v9;
  v142 = v10;
  v140 = v11;
  v137 = sub_10000D4FC(&qword_1000453D0, &qword_100034870);
  v12 = sub_100011D60(v137);
  v148 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12, v16);
  sub_100023E54();
  sub_100023F20();
  __chkstk_darwin(v17, v18);
  sub_1000240C0();
  v129 = sub_10000D4FC(&qword_1000453D8, &qword_100034878);
  v19 = sub_100011D74(v129);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  sub_100023E54();
  sub_100023F20();
  __chkstk_darwin(v23, v24);
  v149 = &v119[-v25];
  sub_100023ED4();
  v26 = sub_1000327C0();
  v27 = sub_100011D60(v26);
  v122 = v28;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27, v31);
  sub_100011DAC();
  v121 = v33 - v32;
  sub_100023ED4();
  v127 = sub_100032800();
  v34 = sub_100011D60(v127);
  v126 = v35;
  v37 = *(v36 + 64);
  __chkstk_darwin(v34, v38);
  sub_100011DAC();
  v41 = v40 - v39;
  v125 = type metadata accessor for PhotosReliveWidgetSize(0);
  v42 = sub_100011D74(v125);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42, v45);
  sub_100011DAC();
  v147 = v47 - v46;
  sub_100023ED4();
  v48 = sub_100032750();
  v49 = sub_100011D60(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  __chkstk_darwin(v49, v54);
  sub_100023E54();
  sub_100023F20();
  __chkstk_darwin(v55, v56);
  sub_100024090();
  __chkstk_darwin(v57, v58);
  v60 = &v119[-v59];
  v146 = sub_10001A5E8();
  v128 = v7;
  sub_1000327E0();
  v61 = sub_100032A40();
  if (qword_100044620 != -1)
  {
    sub_100023F50();
  }

  v62 = qword_100048338;
  v63 = *(v51 + 16);
  v145 = v60;
  v124 = v51 + 16;
  v123 = v63;
  v63(v0, v60, v48);
  v64 = os_log_type_enabled(v62, v61);
  v136 = v1;
  v134 = v48;
  v133 = v51;
  v143 = v62;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v120 = v61;
    v66 = v65;
    v150 = swift_slowAlloc();
    *v66 = 136446466;
    sub_100023DAC();
    sub_10002283C(v67, v68);
    v69 = sub_100032CB0();
    v70 = v48;
    v72 = v71;
    v144 = *(v51 + 8);
    v144(v0, v70);
    v73 = sub_100021264(v69, v72, &v150);

    *(v66 + 4) = v73;
    *(v66 + 12) = 2080;
    v151 = v140;
    v152 = v141;
    v74 = v131;
    v153 = v142;
    v154 = v131;

    v75 = sub_100032920();
    v77 = sub_100021264(v75, v76, &v150);

    *(v66 + 14) = v77;
    _os_log_impl(&_mh_execute_header, v62, v120, "timeline requested for size %{public}s intent: %s", v66, 0x16u);
    swift_arrayDestroy();
    v1 = v136;
    sub_100023FAC();
    sub_100023FAC();
    v78 = v135;
  }

  else
  {
    v144 = *(v51 + 8);
    v144(v0, v48);
    v78 = v135;
    v74 = v131;
  }

  v79 = v126;
  v80 = v127;
  (*(v126 + 16))(v41, v128, v127);
  v81 = v121;
  sub_1000327D0();
  swift_getKeyPath();
  v82 = sub_1000327B0();

  (*(v122 + 8))(v81, v26);
  if (v82)
  {
    sub_100023EE0();
    if (v83)
    {
      v84 = *(v82 + 32);
    }

    else
    {
      v84 = 0;
    }
  }

  else
  {
    v84 = 0;
    LOBYTE(v26) = 1;
  }

  v85 = v147;
  sub_1000327E0();
  sub_1000327A0();
  sub_10002410C();
  (*(v79 + 8))(v41, v80);
  v86 = v125;
  v87 = (v85 + *(v125 + 20));
  *v87 = v2;
  v87[1] = v3;
  v88 = v85 + *(v86 + 24);
  *v88 = v84;
  *(v88 + 8) = v26;
  v89 = v146;
  v90 = sub_1000163DC(v140, v141, v142, v74, v85, 2, v146);
  v91 = v129;
  v92 = *(v129 + 48);
  v93 = v149;
  v94 = v145;
  sub_10001A790(v149, &v149[v92], v90, v145);
  v95 = v130;
  sub_100013C14(v93, v130, &qword_1000453D8, &qword_100034878);
  v96 = *(v91 + 48);
  sub_1000226C4();
  v97 = v94;
  sub_100032840();
  sub_100013B00(v95 + v96, &qword_1000453E0, &qword_1000348B0);
  type metadata accessor for PhotosReliveWidgetViewModel(0);
  sub_100025F70();
  [v89 setWidgetTimelineGeneratedForDisplaySize:{*&v151, *&v152}];
  sub_10001498C(&v93[v92], v94);
  v98 = sub_100032A40();
  v99 = v132;
  v100 = v134;
  v123(v132, v94, v134);
  v101 = v137;
  (*(v148 + 16))(v78, v1, v137);
  if (os_log_type_enabled(v143, v98))
  {
    v102 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v151 = v142;
    *v102 = 136446466;
    sub_100023DAC();
    sub_10002283C(v103, v104);
    sub_100032CB0();
    v105 = v148;
    LODWORD(v141) = v98;
    v144(v99, v100);
    v106 = sub_10002413C();

    *(v102 + 4) = v106;
    *(v102 + 12) = 2082;
    sub_100032850();
    v107 = sub_1000329B0();
    v108 = v78;
    v110 = v109;

    v111 = v100;
    v112 = *(v105 + 8);
    v113 = v108;
    v97 = v145;
    v112(v113, v101);
    v114 = v111;
    v115 = v107;
    v1 = v136;
    v116 = sub_100021264(v115, v110, &v151);

    *(v102 + 14) = v116;
    _os_log_impl(&_mh_execute_header, v143, v141, "timeline request completed for size %{public}s with entries %{public}s", v102, 0x16u);
    swift_arrayDestroy();
    sub_100023FAC();
    v117 = v144;
    sub_100023FAC();
  }

  else
  {
    v114 = v100;
    v112 = *(v148 + 8);
    v112(v78, v101);
    v117 = v144;
    v144(v99, v114);
  }

  v139(v1);

  v112(v1, v101);
  sub_100013B00(v149, &qword_1000453D8, &qword_100034878);
  sub_100023D94();
  sub_100022A1C(v147, v118);
  v117(v97, v114);
  sub_100023FE0();
}

id sub_10001A5E8()
{
  if (sub_10001F0C4())
  {
    return 0;
  }

  v0 = [objc_opt_self() sharedPhotoLibrary];
  v10 = 0;
  v1 = [v0 openAndWaitWithUpgrade:0 error:&v10];
  v2 = v10;
  if (!v1)
  {
    v4 = v2;
    sub_100031B10();

    swift_willThrow();
    v5 = sub_100032A20();
    if (qword_100044630 != -1)
    {
      sub_100023F30();
    }

    v6 = qword_100048348;
    if (os_log_type_enabled(qword_100048348, v5))
    {
      v7 = sub_10002425C();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v6, v5, "Cannot open photo library %@", v7, 0xCu);
      sub_100013B00(v8, &qword_100045468, &qword_1000348E8);
      sub_100023FAC();
      sub_100023FAC();
    }

    exit(0);
  }

  return v0;
}

void *sub_10001A790(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v127 = a1;
  v7 = sub_100032750();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v124 = (&v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10000D4FC(&qword_100045368, &unk_1000343F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v126 = &v112 - v15;
  v16 = sub_100031C40();
  v17 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16, v18);
  v21 = __chkstk_darwin(v19, v20);
  __chkstk_darwin(v21, v22);
  v25 = __chkstk_darwin(&v112 - v23, v24);
  v27 = &v112 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = (&v112 - v30);
  v33 = __chkstk_darwin(v29, v32);
  v38 = &v112 - v37;
  v39 = *(a3 + 16);
  v40 = (a3 + 48);
  if (v39)
  {
    while (1)
    {
      v41 = *v40;
      if (*v40)
      {
        if (!*(v40 - 8) && (!*(v41 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_image) || *(v41 + OBJC_IVAR____TtC18PhotosReliveWidget27PhotosReliveWidgetViewModel_imageIsDegraded) == 1))
        {
          break;
        }
      }

      v40 += 3;
      if (!--v39)
      {
        goto LABEL_7;
      }
    }

    v115 = v36;
    v116 = v33;
    v117 = v35;
    v112 = v8;
    v113 = v7;
    v114 = a3;
    v119 = v34;
    v122 = a2;
    v46 = *(v40 - 2);

    v47 = a4;
    v48 = v46;
    v49 = [v48 localIdentifier];
    v50 = v38;
    v51 = sub_100032910();
    v53 = v52;

    v118 = v51;
    v54 = v51;
    v55 = v50;
    v123 = v53;
    v120 = v47;
    v56 = sub_10001F99C(v54, v53, v47, 300.0);
    sub_100031C10();
    v121 = v48;
    v57 = [v48 endTime];
    v125 = v31;
    if (v57)
    {
      v58 = v57;
      sub_100031C20();

      v59 = v119;
      v60 = v16;
      v61 = v50;
      isa = v119[4].isa;
      v63 = v126;
      (isa)(v126, v27, v60);
      sub_10000D904(v63, 0, 1, v60);
      v64 = v60;
      (isa)(v125, v63, v60);
      v55 = v61;
    }

    else
    {
      v65 = v126;
      sub_10000D904(v126, 1, 1, v16);
      sub_100031BD0();
      v64 = v16;
      v66 = sub_10000D8C4(v65, 1, v16);
      v59 = v119;
      if (v66 != 1)
      {
        sub_100013B00(v65, &qword_100045368, &unk_1000343F0);
      }
    }

    sub_100031BE0();
    v67 = v123;
    if (v68 <= 300.0)
    {
      v89 = sub_100032A10();
      if (qword_100044618 != -1)
      {
        swift_once();
      }

      v90 = qword_100045360;
      v91 = v59[2].isa;
      v126 = v55;
      v91(v116, v55, v64);
      v92 = v115;
      v91(v115, v125, v64);
      v124 = v90;
      if (os_log_type_enabled(v90, v89))
      {
        v93 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v128[0] = v119;
        *v93 = 136446722;
        v94 = sub_100021264(v118, v67, v128);

        *(v93 + 4) = v94;
        *(v93 + 12) = 2082;
        sub_10002283C(&qword_100045420, &type metadata accessor for Date);
        LODWORD(v123) = v89;
        v95 = v116;
        v96 = sub_100032CB0();
        v98 = v97;
        v99 = v59[1].isa;
        v99(v95, v64);
        v100 = sub_100021264(v96, v98, v128);

        *(v93 + 14) = v100;
        *(v93 + 22) = 2082;
        v101 = v115;
        v102 = sub_100032CB0();
        v104 = v103;
        v99(v101, v64);
        v105 = sub_100021264(v102, v104, v128);

        *(v93 + 24) = v105;
        _os_log_impl(&_mh_execute_header, v124, v123, "not enough time to schedule reload for entry id %{public}s at %{public}s for entry ending at %{public}s", v93, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v99 = v59[1].isa;
        v99(v92, v64);
        v99(v116, v64);
      }

      v108 = v122;
      v109 = sub_10001F348(v114);
      sub_10001F3D8(v127, v108, v109, v110, v111, v120);
      sub_100022ACC(v109);

      v99(v125, v64);
      return (v99)(v126, v64);
    }

    else
    {
      LODWORD(v126) = sub_100032A40();
      if (qword_100044618 != -1)
      {
        swift_once();
      }

      v69 = qword_100045360;
      v71 = v112;
      v70 = v113;
      v72 = v124;
      (*(v112 + 16))(v124, v120, v113);
      v73 = v64;
      v120 = v59[2].isa;
      v120(v117, v55, v64);
      v119 = v69;
      if (os_log_type_enabled(v69, v126))
      {
        v74 = swift_slowAlloc();
        v116 = v59 + 2;
        v75 = v74;
        v115 = swift_slowAlloc();
        v128[0] = v115;
        *v75 = 136446722;
        sub_10002283C(&qword_1000453E8, &type metadata accessor for WidgetFamily);
        v76 = v72;
        v77 = sub_100032CB0();
        v79 = v78;
        (*(v71 + 8))(v76, v70);
        v80 = sub_100021264(v77, v79, v128);

        *(v75 + 4) = v80;
        *(v75 + 12) = 2082;
        *(v75 + 14) = sub_100021264(v118, v123, v128);
        *(v75 + 22) = 2082;
        sub_10002283C(&qword_100045420, &type metadata accessor for Date);
        v81 = v117;
        v82 = sub_100032CB0();
        v84 = v83;
        v85 = v59[1].isa;
        v85(v81, v73);
        v86 = sub_100021264(v82, v84, v128);

        *(v75 + 24) = v86;
        _os_log_impl(&_mh_execute_header, v119, v126, "scheduling reload for widget family %{public}s entry id %{public}s at %{public}s", v75, 0x20u);
        swift_arrayDestroy();

        v87 = v118;

        v88 = v123;
      }

      else
      {
        v85 = v59[1].isa;
        v85(v117, v64);
        (*(v71 + 8))(v72, v70);
        v88 = v123;
        v87 = v118;
      }

      v106 = v122;
      *v122 = v87;
      *(v106 + 8) = v88;
      *(v106 + 16) = v56;
      v107 = type metadata accessor for PhotosReliveWidgetScheduledReloadConfiguration(0);
      v120(v106 + *(v107 + 24), v55, v73);
      sub_100032770();

      v85(v125, v73);
      v85(v55, v73);
      return sub_10000D904(v106, 0, 1, v107);
    }
  }

  else
  {
LABEL_7:
    v42 = sub_10001F348(a3);
    sub_10001F3D8(v127, a2, v42, v43, v44, a4);

    return sub_100022ACC(v42);
  }
}

uint64_t sub_10001B270(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = swift_task_alloc();
  *(v2 + 24) = v7;
  *v7 = v2;
  v7[1] = sub_10001B330;

  return sub_100017830();
}

uint64_t sub_10001B330(uint64_t a1, int a2, uint64_t a3)
{
  sub_100024068();
  v8 = *(v7 + 24);
  v9 = *(v7 + 16);
  v10 = *v3;
  sub_100023EA0();
  *v11 = v10;

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 9) = BYTE1(a2) & 1;
  *(v9 + 10) = BYTE2(a2) & 1;
  *(v9 + 16) = a3;
  sub_100024238();

  return v12();
}

uint64_t sub_10001B458(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100023D64;

  return sub_100019144();
}

uint64_t sub_10001B520(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];

  return sub_100018300(v7, v8, v9, v10, a2, a3, a4);
}

void sub_10001B59C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_100019BF4();
}

uint64_t sub_10001B5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001B66C;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10001B66C()
{
  sub_100023EC8();
  sub_100024068();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100023EA0();
  *v4 = v3;

  sub_100024238();

  return v5();
}

uint64_t sub_10001B74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100023D64;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

id sub_10001B80C(uint64_t a1, void *a2)
{
  if (qword_100044630 != -1)
  {
    sub_100023F30();
  }

  v3 = qword_100048348;
  *a2 = qword_100048348;

  return v3;
}

uint64_t sub_10001B868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_100031D80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100044628 != -1)
  {
    swift_once();
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_10000D4FC(&qword_100045450, &qword_1000348E0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1000334C0;
    *(v28 + 32) = [objc_opt_self() privacyDisclosureEntryForContentType:1];
    *(v28 + 40) = 3;
    *(v28 + 42) = 0;
    *(v28 + 48) = 0;
    return v28;
  }

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_3:
  v32 = v8;
  v14 = qword_100048340;
  v15 = a5;
  v16 = v14;
  sub_100031D60();
  sub_100032AD0();
  sub_100031D50();
  sub_100031800();
  v17 = v34;
  sub_100031800();
  LOBYTE(v14) = v33;
  v18 = objc_opt_self();
  v19 = (a3 + *(type metadata accessor for PhotosReliveWidgetSize(0) + 20));
  v20 = [v18 timelineFromLibrary:v15 forWidgetSize:sub_100013C84() timelineSize:{*v19, v19[1]}];
  sub_1000230A4(0, &qword_100045458, PXTimelineEntry_ptr);
  v21 = sub_1000329A0();

  v22 = sub_1000174C4(a4, v21);
  __chkstk_darwin(v22, v23);
  *(&v31 - 4) = a3;
  *(&v31 - 24) = v17;
  *(&v31 - 23) = v14;
  *(&v31 - 2) = v15;
  sub_10001760C(sub_100023D44, (&v31 - 6), v22, v24, v25, v26);
  v28 = v27;
  sub_100032AC0();
  sub_100031D50();
  if (!*(v28 + 16))
  {

    sub_100032A40();
    sub_100031D30();
    sub_10000D4FC(&qword_100045450, &qword_1000348E0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1000334C0;
    v29 = objc_opt_self();
    *(v28 + 32) = [v29 fallbackEntryForContentType:1 sourceIdentifier:0 size:sub_100013C84()];
    *(v28 + 40) = 1;
    *(v28 + 42) = 0;
    *(v28 + 48) = 0;
  }

  swift_unknownObjectRelease();

  (*(v9 + 8))(v13, v32);
  return v28;
}

uint64_t sub_10001BC5C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for PhotosReliveWidgetSize(0);
  v10 = sub_100011EE8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  sub_100011DAC();
  sub_100024220();
  v14 = *a1;
  sub_100022B60(a2, v4);
  v15 = v14;
  sub_100015C10([v15 contentType], a3 & 0x101);
  type metadata accessor for PhotosReliveWidgetViewModel(0);
  sub_100025CA8();
  v17 = v16;
  sub_100023D94();
  result = sub_100022A1C(v4, v18);
  *a4 = v15;
  *(a4 + 8) = 0;
  *(a4 + 9) = a3 & 1;
  *(a4 + 10) = HIBYTE(a3) & 1;
  *(a4 + 16) = v17;
  return result;
}

uint64_t sub_10001BDA0()
{
  sub_100023EC8();
  v0[6] = v1;
  v0[7] = v2;
  v0[5] = v3;
  v4 = sub_100032800();
  v0[8] = v4;
  sub_100023E68(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = sub_1000240D0();
  v8 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v0[11] = v8;
  sub_100023E68(v8);
  v0[12] = v9;
  v11 = *(v10 + 64);
  v0[13] = sub_1000240D0();
  v12 = sub_100023E90();

  return _swift_task_switch(v12);
}

uint64_t sub_10001BEA0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(*(v0 + 72) + 16);
  v12 = *(v0 + 40);
  v6 = sub_1000241F4();
  v7(v6);
  sub_100024014();
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *(v8 + 16) = v12;
  *(v8 + 32) = v1;
  v9 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_10001BFC0;
  sub_100023E78();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10001BFC0()
{
  sub_100023EC8();
  sub_100024068();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  sub_100023EA0();
  *v5 = v4;

  v6 = sub_100023E90();

  return _swift_task_switch(v6);
}

uint64_t sub_10001C0C0()
{
  sub_10002422C();
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = sub_100023F8C(v0[12]);
  v5(v4);

  v6 = sub_100024118();

  return v7(v6);
}

uint64_t sub_10001C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v36 = a4;
  v38 = a3;
  v41 = sub_100032670();
  v44 = *(v41 - 8);
  v5 = *(v44 + 64);
  __chkstk_darwin(v41, v6);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000326A0();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  __chkstk_darwin(v8, v10);
  v39 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000D4FC(&qword_1000454A0, &qword_100034918);
  v34 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v34 - v16;
  v18 = sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &v34 - v22;
  sub_1000230A4(0, &qword_100045470, OS_dispatch_queue_ptr);
  v37 = sub_100032A90();
  (*(v19 + 16))(v23, v36, v18);
  (*(v13 + 16))(v17, a1, v12);
  v24 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v25 = (v20 + *(v13 + 80) + v24) & ~*(v13 + 80);
  v26 = swift_allocObject();
  v27 = v38;
  *(v26 + 16) = v35;
  *(v26 + 24) = v27;
  (*(v19 + 32))(v26 + v24, v23, v18);
  (*(v13 + 32))(v26 + v25, v17, v34);
  aBlock[4] = sub_100022F2C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019100;
  aBlock[3] = &unk_1000428C0;
  v28 = _Block_copy(aBlock);

  v29 = v39;
  sub_100032680();
  v45 = &_swiftEmptyArrayStorage;
  sub_10002283C(&qword_100045488, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000D4FC(&qword_100045490, &qword_100034908);
  sub_100022D6C(&qword_100045498, &qword_100045490, &qword_100034908);
  v31 = v40;
  v30 = v41;
  sub_100032B60();
  v32 = v37;
  sub_100032AA0();
  _Block_release(v28);

  (*(v44 + 8))(v31, v30);
  (*(v42 + 8))(v29, v43);
}

uint64_t sub_10001C62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a2;
  v5 = sub_10000D4FC(&qword_1000454A0, &qword_100034918);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = v20 - v9;
  v11 = sub_100032800();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D4FC(&qword_100045478, &qword_1000348F8);
  sub_100031CC0();
  (*(v6 + 16))(v10, a4, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, v10, v5);
  sub_10001D050();

  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_10001C840(void *a1)
{

  v2 = a1;
  sub_10000D4FC(&qword_1000454A0, &qword_100034918);
  return sub_1000329F0();
}

uint64_t sub_10001C8A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t **), uint64_t a5)
{
  v90 = a5;
  v86 = a4;
  v98 = a1;
  v99 = a2;
  v6 = sub_1000327C0();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  __chkstk_darwin(v6, v8);
  v93 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for PhotosReliveWidgetSize(0);
  v10 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97, v11);
  v101 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100032800();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v17 = __chkstk_darwin(v13, v16);
  v91 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v102 = &v81 - v20;
  v21 = sub_100032750();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v25 = __chkstk_darwin(v21, v24);
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v28);
  v30 = &v81 - v29;
  v31 = a3;
  sub_1000327E0();
  v100 = sub_10001A5E8();
  v32 = sub_100032A40();
  if (qword_100044628 != -1)
  {
    swift_once();
  }

  v33 = qword_100048340;
  v34 = v22[2];
  v87 = v30;
  v34(v27, v30, v21);
  v35 = v31;
  v36 = v14[2];
  v92 = v35;
  v36(v102);
  v37 = os_log_type_enabled(v33, v32);
  v88 = v22;
  v89 = v21;
  v85 = v33;
  v96 = v14;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v83 = v32;
    v39 = v22;
    v40 = v38;
    v82 = swift_slowAlloc();
    v103 = v82;
    *v40 = 136446466;
    sub_10002283C(&qword_1000453E8, &type metadata accessor for WidgetFamily);
    v41 = v33;
    v42 = sub_100032CB0();
    v43 = v21;
    v45 = v44;
    v84 = v39[1];
    v84(v27, v43);
    v46 = sub_100021264(v42, v45, &v103);

    *(v40 + 4) = v46;
    *(v40 + 12) = 1026;
    v47 = v102;
    LODWORD(v46) = sub_1000327F0() & 1;
    v48 = v14[1];
    v48(v47, v13);
    *(v40 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v41, v83, "snapshot requested at size %{public}s inAddSheet  %{BOOL,public}d", v40, 0x12u);
    sub_100022C1C(v82);
    v49 = v101;

    v50 = v13;
    v51 = v91;
  }

  else
  {
    v48 = v14[1];
    v48(v102, v13);
    v84 = v22[1];
    v84(v27, v21);
    v50 = v13;
    v51 = v91;
    v49 = v101;
  }

  (v36)(v51, v92, v50);
  v52 = v93;
  sub_1000327D0();
  swift_getKeyPath();
  v53 = sub_1000327B0();

  (*(v94 + 8))(v52, v95);
  if (v53)
  {
    v54 = *(v53 + 16);
    v55 = v54 == 0;
    if (v54)
    {
      v56 = *(v53 + 32);
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
    v55 = 1;
  }

  sub_1000327E0();
  sub_1000327A0();
  v58 = v57;
  v60 = v59;
  v48(v51, v50);
  v62 = v97;
  v61 = v98;
  v63 = (v49 + *(v97 + 20));
  *v63 = v58;
  v63[1] = v60;
  v64 = v49 + *(v62 + 24);
  *v64 = v56;
  *(v64 + 8) = v55;
  result = sub_10001B868(v61, v99, v49, 1, v100);
  if (*(result + 16))
  {
    v66 = *(result + 32);
    v67 = *(result + 40);
    v68 = *(result + 41);
    v69 = *(result + 42);
    v70 = *(result + 48);

    v71 = v66;

    v103 = v71;
    v104 = v67;
    v105 = v68;
    v106 = v69;
    v107 = v70;
    v86(&v103);
    v72 = sub_100032A40();
    v73 = v85;
    if (os_log_type_enabled(v85, v72))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v103 = v75;
      *v74 = 136446210;
      v71 = v71;

      PhotosReliveWidgetEntry.description.getter();
      v77 = v76;
      v79 = v78;

      v80 = sub_100021264(v77, v79, &v103);

      *(v74 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v73, v72, "snapshot request completed with entry %{public}s", v74, 0xCu);
      sub_100022C1C(v75);
    }

    sub_100022A1C(v101, type metadata accessor for PhotosReliveWidgetSize);
    v84(v87, v89);
  }

  else
  {
    __break(1u);
  }

  return result;
}