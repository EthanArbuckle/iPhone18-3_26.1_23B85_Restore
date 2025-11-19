uint64_t sub_100001DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v73 = a2;
  v5 = type metadata accessor for AppIconConfiguration(0);
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100003650(&qword_1000647C8, &qword_10004DA98);
  v10 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v65 = (&v64 - v11);
  v68 = sub_100003650(&qword_1000647D0, &qword_10004DAA0);
  v12 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v14 = &v64 - v13;
  v70 = sub_100003650(&qword_1000647D8, &qword_10004DAA8);
  v15 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v71 = &v64 - v16;
  v66 = sub_100003650(&qword_1000647E0, &qword_10004DAB0);
  v17 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v19 = &v64 - v18;
  v69 = sub_100003650(&qword_1000647E8, &qword_10004DAB8);
  v20 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v67 = &v64 - v21;
  v22 = type metadata accessor for AppIcon(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v28 = *(a1 + 16);
  if (v28 == 1)
  {
    sub_100003DD4(v27 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v14, type metadata accessor for AppIcon);
    (*(v23 + 56))(v14, 0, 1, v22);
    sub_10004C720();
    sub_10004BF90();
    v33 = &v14[*(sub_100003650(&qword_100064830, &qword_10004DAD8) + 36)];
    v34 = v76;
    *v33 = v75;
    *(v33 + 1) = v34;
    *(v33 + 2) = v77;
    sub_10004C7B0();
    v36 = v35;
    v38 = v37;
    v39 = &v14[*(sub_100003650(&qword_100064820, &qword_10004DAD0) + 36)];
    *v39 = 0xBFDBECDE5DA115A9;
    *(v39 + 1) = v36;
    *(v39 + 2) = v38;
    CGAffineTransformMakeTranslation(&v74, 16.0, 9.0);
    v40 = *&v74.c;
    v41 = *&v74.tx;
    v42 = &v14[*(v68 + 36)];
    *v42 = *&v74.a;
    *(v42 + 1) = v40;
    *(v42 + 2) = v41;
    v43 = &qword_1000647D0;
    v44 = &qword_10004DAA0;
    sub_100003E3C(v14, v19, &qword_1000647D0, &qword_10004DAA0);
    swift_storeEnumTagMultiPayload();
    sub_10000396C();
    sub_1000039C4();
    v45 = v67;
    sub_10004C320();
    sub_100003E3C(v45, v71, &qword_1000647E8, &qword_10004DAB8);
    swift_storeEnumTagMultiPayload();
    sub_1000038E0();
    sub_100003BEC();
    sub_10004C320();
    sub_100003EA4(v45, &qword_1000647E8, &qword_10004DAB8);
    v46 = v14;
  }

  else
  {
    if (!v28)
    {
      sub_10004BB60();
      *&v26[v5[5]] = 0;
      v29 = &v26[v5[6]];
      *v29 = 0;
      *(v29 + 1) = 0;
      v29[16] = 1;
      v26[v5[7]] = 0;
      v26[v5[8]] = 1;
      v30 = &v26[v5[9]];
      sub_10004CB40();
      sub_100003DD4(v26, v19, type metadata accessor for AppIcon);
      swift_storeEnumTagMultiPayload();
      sub_10000396C();
      sub_1000039C4();
      v31 = v67;
      sub_10004C320();
      sub_100003E3C(v31, v71, &qword_1000647E8, &qword_10004DAB8);
      swift_storeEnumTagMultiPayload();
      sub_1000038E0();
      sub_100003BEC();
      sub_10004C320();
      sub_100003EA4(v31, &qword_1000647E8, &qword_10004DAB8);
      return sub_100003D78(v26);
    }

    *&v75 = &_swiftEmptyArrayStorage;
    sub_1000269F4(0, v28, 0);
    v47 = v75;
    v48 = v27 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v49 = *(v23 + 72);
    do
    {
      sub_100003DD4(v48, v26, type metadata accessor for AppIcon);
      sub_10000387C(v26, v9);
      *&v75 = v47;
      v51 = *(v47 + 16);
      v50 = *(v47 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1000269F4(v50 > 1, v51 + 1, 1);
        v47 = v75;
      }

      *(v47 + 16) = v51 + 1;
      sub_10000387C(v9, v47 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v51);
      v48 += v49;
      --v28;
    }

    while (v28);
    v52 = sub_10000AF74(v47, 6, 0, 1);

    v53 = sub_10004C280();
    v54 = v65;
    *v65 = v53;
    *(v54 + 8) = 0;
    *(v54 + 16) = 1;
    v55 = sub_100003650(&qword_1000647F0, &qword_10004DAC0);
    sub_100002634(v52, v54 + *(v55 + 44), a3);

    sub_10004C7B0();
    v57 = v56;
    v59 = v58;
    v60 = (v54 + *(sub_100003650(&qword_1000647F8, &qword_10004DAC8) + 36));
    *v60 = 0xBFD0C152382D7365;
    v60[1] = v57;
    v60[2] = v59;
    sub_10004C720();
    sub_10004BF90();
    v61 = v71;
    v62 = (v54 + *(v72 + 36));
    v63 = v76;
    *v62 = v75;
    v62[1] = v63;
    v62[2] = v77;
    v43 = &qword_1000647C8;
    v44 = &qword_10004DA98;
    sub_100003E3C(v54, v61, &qword_1000647C8, &qword_10004DA98);
    swift_storeEnumTagMultiPayload();
    sub_1000038E0();
    sub_100003BEC();
    sub_10004C320();
    v46 = v54;
  }

  return sub_100003EA4(v46, v43, v44);
}

uint64_t sub_100002634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_100003650(&qword_100064868, &qword_10004DAF0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v32 = &v30 - v11;
  v12 = __chkstk_darwin(v10);
  v31 = &v30 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v30 - v18;
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  *v21 = sub_10004C1B0();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = sub_100003650(&qword_100064870, &qword_10004DAF8);
  sub_100002940(a1, &v21[*(v22 + 44)], a3);
  *v19 = sub_10004C1B0();
  *(v19 + 1) = 0;
  v19[16] = 1;
  sub_100002C94(a1, &v19[*(v22 + 44)], a3);
  *v16 = sub_10004C1B0();
  *(v16 + 1) = 0;
  v16[16] = 1;
  sub_100003004(a1, &v16[*(v22 + 44)], a3);
  v23 = v31;
  sub_100003E3C(v21, v31, &qword_100064868, &qword_10004DAF0);
  v24 = v32;
  sub_100003E3C(v19, v32, &qword_100064868, &qword_10004DAF0);
  v25 = v33;
  sub_100003E3C(v16, v33, &qword_100064868, &qword_10004DAF0);
  sub_100003E3C(v23, a2, &qword_100064868, &qword_10004DAF0);
  v26 = sub_100003650(&qword_100064878, &qword_10004DB00);
  v27 = a2 + v26[12];
  *v27 = a3;
  *(v27 + 8) = 0;
  sub_100003E3C(v24, a2 + v26[16], &qword_100064868, &qword_10004DAF0);
  v28 = a2 + v26[20];
  *v28 = a3;
  *(v28 + 8) = 0;
  sub_100003E3C(v25, a2 + v26[24], &qword_100064868, &qword_10004DAF0);
  sub_100003EA4(v16, &qword_100064868, &qword_10004DAF0);
  sub_100003EA4(v19, &qword_100064868, &qword_10004DAF0);
  sub_100003EA4(v21, &qword_100064868, &qword_10004DAF0);
  sub_100003EA4(v25, &qword_100064868, &qword_10004DAF0);
  sub_100003EA4(v24, &qword_100064868, &qword_10004DAF0);
  return sub_100003EA4(v23, &qword_100064868, &qword_10004DAF0);
}

CGAffineTransform *sub_100002940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_100003650(&qword_100064880, &qword_10004DB08);
  v7 = *(*(v6 - 8) + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v36 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v36 - v15;
  result = __chkstk_darwin(v14);
  v19 = &v36 - v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(type metadata accessor for AppIconConfiguration(0) - 8);
    v22 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    sub_100003DD4(v22, v19, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v23 = sub_100003650(&qword_100064888, &qword_10004DB10);
    v24 = &v19[*(v23 + 36)];
    v25 = v38;
    *v24 = v37;
    *(v24 + 1) = v25;
    *(v24 + 2) = v39;
    result = CGAffineTransformMakeTranslation(&v40, 0.0, 0.0);
    v26 = *&v40.c;
    v27 = *&v40.tx;
    v28 = &v19[*(v6 + 36)];
    *v28 = *&v40.a;
    *(v28 + 1) = v26;
    *(v28 + 2) = v27;
    if (v20 != 1)
    {
      sub_100003DD4(v22 + *(v21 + 72), v16, type metadata accessor for AppIconConfiguration);
      sub_10004C720();
      sub_10004BF90();
      v29 = &v16[*(v23 + 36)];
      v30 = *&v40.c;
      *v29 = *&v40.a;
      *(v29 + 1) = v30;
      *(v29 + 2) = *&v40.tx;
      CGAffineTransformMakeTranslation(&v36, 0.0, 0.0);
      v31 = *&v36.c;
      v32 = *&v36.tx;
      v33 = &v16[*(v6 + 36)];
      *v33 = *&v36.a;
      *(v33 + 1) = v31;
      *(v33 + 2) = v32;
      sub_100003E3C(v19, v13, &qword_100064880, &qword_10004DB08);
      sub_100003E3C(v16, v10, &qword_100064880, &qword_10004DB08);
      sub_100003E3C(v13, a2, &qword_100064880, &qword_10004DB08);
      v34 = sub_100003650(&qword_100064890, &qword_10004DB18);
      v35 = a2 + *(v34 + 48);
      *v35 = a3;
      *(v35 + 8) = 0;
      sub_100003E3C(v10, a2 + *(v34 + 64), &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v16, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v19, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v10, &qword_100064880, &qword_10004DB08);
      return sub_100003EA4(v13, &qword_100064880, &qword_10004DB08);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

CGAffineTransform *sub_100002C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_100003650(&qword_100064880, &qword_10004DB08);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v37 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - v15;
  result = __chkstk_darwin(v14);
  v19 = &v37 - v18;
  v20 = *(a1 + 16);
  if (v20 < 3)
  {
    __break(1u);
  }

  else
  {
    v21 = *(type metadata accessor for AppIconConfiguration(0) - 8);
    v22 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v23 = *(v21 + 72);
    sub_100003DD4(v22 + 2 * v23, v19, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v24 = sub_100003650(&qword_100064888, &qword_10004DB10);
    v25 = &v19[*(v24 + 36)];
    v26 = v39;
    *v25 = v38;
    *(v25 + 1) = v26;
    *(v25 + 2) = v40;
    result = CGAffineTransformMakeTranslation(&v41, 0.0, 0.0);
    v27 = *&v41.c;
    v28 = *&v41.tx;
    v29 = &v19[*(v6 + 36)];
    *v29 = *&v41.a;
    *(v29 + 1) = v27;
    *(v29 + 2) = v28;
    if (v20 != 3)
    {
      sub_100003DD4(v22 + 3 * v23, v16, type metadata accessor for AppIconConfiguration);
      sub_10004C720();
      sub_10004BF90();
      v30 = &v16[*(v24 + 36)];
      v31 = *&v41.c;
      *v30 = *&v41.a;
      *(v30 + 1) = v31;
      *(v30 + 2) = *&v41.tx;
      CGAffineTransformMakeTranslation(&v37, 0.0, 0.0);
      v32 = *&v37.c;
      v33 = *&v37.tx;
      v34 = &v16[*(v6 + 36)];
      *v34 = *&v37.a;
      *(v34 + 1) = v32;
      *(v34 + 2) = v33;
      sub_100003E3C(v19, v13, &qword_100064880, &qword_10004DB08);
      sub_100003E3C(v16, v10, &qword_100064880, &qword_10004DB08);
      sub_100003E3C(v13, a2, &qword_100064880, &qword_10004DB08);
      v35 = sub_100003650(&qword_100064890, &qword_10004DB18);
      v36 = a2 + *(v35 + 48);
      *v36 = a3;
      *(v36 + 8) = 0;
      sub_100003E3C(v10, a2 + *(v35 + 64), &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v16, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v19, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v10, &qword_100064880, &qword_10004DB08);
      return sub_100003EA4(v13, &qword_100064880, &qword_10004DB08);
    }
  }

  __break(1u);
  return result;
}

CGAffineTransform *sub_100003004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_100003650(&qword_100064880, &qword_10004DB08);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v37 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - v15;
  result = __chkstk_darwin(v14);
  v19 = &v37 - v18;
  v20 = *(a1 + 16);
  if (v20 < 5)
  {
    __break(1u);
  }

  else
  {
    v21 = *(type metadata accessor for AppIconConfiguration(0) - 8);
    v22 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v23 = *(v21 + 72);
    sub_100003DD4(v22 + 4 * v23, v19, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v24 = sub_100003650(&qword_100064888, &qword_10004DB10);
    v25 = &v19[*(v24 + 36)];
    v26 = v39;
    *v25 = v38;
    *(v25 + 1) = v26;
    *(v25 + 2) = v40;
    result = CGAffineTransformMakeTranslation(&v41, 0.0, 0.0);
    v27 = *&v41.c;
    v28 = *&v41.tx;
    v29 = &v19[*(v6 + 36)];
    *v29 = *&v41.a;
    *(v29 + 1) = v27;
    *(v29 + 2) = v28;
    if (v20 != 5)
    {
      sub_100003DD4(v22 + 5 * v23, v16, type metadata accessor for AppIconConfiguration);
      sub_10004C720();
      sub_10004BF90();
      v30 = &v16[*(v24 + 36)];
      v31 = *&v41.c;
      *v30 = *&v41.a;
      *(v30 + 1) = v31;
      *(v30 + 2) = *&v41.tx;
      CGAffineTransformMakeTranslation(&v37, 0.0, 0.0);
      v32 = *&v37.c;
      v33 = *&v37.tx;
      v34 = &v16[*(v6 + 36)];
      *v34 = *&v37.a;
      *(v34 + 1) = v32;
      *(v34 + 2) = v33;
      sub_100003E3C(v19, v13, &qword_100064880, &qword_10004DB08);
      sub_100003E3C(v16, v10, &qword_100064880, &qword_10004DB08);
      sub_100003E3C(v13, a2, &qword_100064880, &qword_10004DB08);
      v35 = sub_100003650(&qword_100064890, &qword_10004DB18);
      v36 = a2 + *(v35 + 48);
      *v36 = a3;
      *(v36 + 8) = 0;
      sub_100003E3C(v10, a2 + *(v35 + 64), &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v16, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v19, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v10, &qword_100064880, &qword_10004DB08);
      return sub_100003EA4(v13, &qword_100064880, &qword_10004DB08);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000033A4()
{
  sub_100003650(&qword_100064780, &qword_10004D990);
  sub_100003698(&qword_100064788, &qword_10004D998);
  sub_100003698(&qword_100064790, &qword_10004D9A0);
  sub_100003698(&qword_100064798, &qword_10004D9A8);
  sub_100003698(&qword_1000647A0, &qword_10004D9B0);
  sub_100003698(&qword_1000647A8, &qword_10004D9B8);
  sub_100003D30(&qword_1000647B0, &qword_1000647A8, &qword_10004D9B8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_10004C2F0();
}

uint64_t sub_100003570(__int128 *a1)
{
  v2 = *a1;
  if (sub_10004B588(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000035E4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (sub_10004B588(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100003650(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003698(uint64_t *a1, uint64_t *a2)
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

__n128 sub_1000036E0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000036F0(uint64_t a1, int a2)
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

uint64_t sub_100003710(uint64_t result, int a2, int a3)
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

void sub_100003780(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000037CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100003814(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10000387C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIconConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000038E0()
{
  result = qword_100064800;
  if (!qword_100064800)
  {
    sub_100003698(&qword_1000647E8, &qword_10004DAB8);
    sub_10000396C();
    sub_1000039C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064800);
  }

  return result;
}

unint64_t sub_10000396C()
{
  result = qword_100064808;
  if (!qword_100064808)
  {
    type metadata accessor for AppIcon(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064808);
  }

  return result;
}

unint64_t sub_1000039C4()
{
  result = qword_100064810;
  if (!qword_100064810)
  {
    sub_100003698(&qword_1000647D0, &qword_10004DAA0);
    sub_100003A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064810);
  }

  return result;
}

unint64_t sub_100003A50()
{
  result = qword_100064818;
  if (!qword_100064818)
  {
    sub_100003698(&qword_100064820, &qword_10004DAD0);
    sub_100003ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064818);
  }

  return result;
}

unint64_t sub_100003ADC()
{
  result = qword_100064828;
  if (!qword_100064828)
  {
    sub_100003698(&qword_100064830, &qword_10004DAD8);
    sub_100003B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064828);
  }

  return result;
}

unint64_t sub_100003B68()
{
  result = qword_100064838;
  if (!qword_100064838)
  {
    sub_100003698(&qword_100064840, &qword_10004DAE0);
    sub_10000396C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064838);
  }

  return result;
}

unint64_t sub_100003BEC()
{
  result = qword_100064848;
  if (!qword_100064848)
  {
    sub_100003698(&qword_1000647C8, &qword_10004DA98);
    sub_100003C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064848);
  }

  return result;
}

unint64_t sub_100003C78()
{
  result = qword_100064850;
  if (!qword_100064850)
  {
    sub_100003698(&qword_1000647F8, &qword_10004DAC8);
    sub_100003D30(&qword_100064858, &qword_100064860, &qword_10004DAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064850);
  }

  return result;
}

uint64_t sub_100003D30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003698(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003D78(uint64_t a1)
{
  v2 = type metadata accessor for AppIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100003E3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003650(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003EA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003650(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100003F08()
{
  result = qword_100064898;
  if (!qword_100064898)
  {
    sub_100003698(&qword_1000648A0, &unk_10004DB20);
    sub_1000038E0();
    sub_100003BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064898);
  }

  return result;
}

uint64_t sub_100003FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100004088(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003650(&qword_1000648A8, qword_10004DB30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for PlatterView()
{
  result = qword_100064908;
  if (!qword_100064908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004198()
{
  sub_10000420C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000420C()
{
  if (!qword_100064918)
  {
    sub_10004BF00();
    v0 = sub_10004BF10();
    if (!v1)
    {
      atomic_store(v0, &qword_100064918);
    }
  }
}

uint64_t getEnumTagSinglePayload for PlatterView.Style(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatterView.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000043DC()
{
  result = qword_100064948;
  if (!qword_100064948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064948);
  }

  return result;
}

Swift::Int sub_100004448()
{
  v1 = *v0;
  sub_10004D060();
  sub_10004D070(v1);
  return sub_10004D0A0();
}

Swift::Int sub_1000044BC()
{
  v1 = *v0;
  sub_10004D060();
  sub_10004D070(v1);
  return sub_10004D0A0();
}

double sub_10000451C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_10004BF00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = *(v1 + *(type metadata accessor for PlatterView() + 20));
  sub_1000048CC(&qword_100064958, &qword_10004FA30, &type metadata accessor for ColorScheme, v10);
  (*(v4 + 104))(v8, enum case for ColorScheme.light(_:), v3);
  v12 = sub_10004BEF0();
  v13 = *(v4 + 8);
  v13(v8, v3);
  v13(v10, v3);
  if (v11)
  {
    if (v12)
    {
      if (qword_1000646E8 != -1)
      {
        swift_once();
      }

      v14 = &xmmword_100068E40;
    }

    else
    {
      if (qword_1000646F0 != -1)
      {
        swift_once();
      }

      v14 = &xmmword_100068E68;
    }

    v16 = *v14;
    v26 = *(v14 + 8);
    v17 = *(v14 + 3);
    v18 = *(v14 + 4);

    v28 = v26;
    v29 = v17;
    v30 = v18;
    v31 = 1;
  }

  else
  {
    if (v12)
    {
      if (qword_1000646D8 != -1)
      {
        swift_once();
      }

      v15 = &xmmword_100068DF0;
    }

    else
    {
      if (qword_1000646E0 != -1)
      {
        swift_once();
      }

      v15 = &xmmword_100068E18;
    }

    v19 = *v15;
    v26 = *(v15 + 8);
    v20 = *(v15 + 3);
    v21 = *(v15 + 4);

    v28 = v26;
    v29 = v20;
    v30 = v21;
    v31 = 0;
  }

  sub_100004850();
  sub_10004C320();
  result = *&v32;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  *a1 = v32;
  *(a1 + 16) = v23;
  *(a1 + 32) = v24;
  *(a1 + 40) = v25;
  return result;
}

unint64_t sub_100004850()
{
  result = qword_100064950;
  if (!qword_100064950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064950);
  }

  return result;
}

uint64_t sub_1000048CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_10004C190();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003650(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_100003E3C(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_10004CDD0();
    v22 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

unint64_t sub_100004AD0()
{
  result = qword_100064968;
  if (!qword_100064968)
  {
    sub_100003698(&qword_100064970, qword_10004DC38);
    sub_100004850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064968);
  }

  return result;
}

uint64_t sub_100004B54()
{
  v0 = sub_10004CAB0();
  sub_100004D10(v0, qword_100068D98);
  sub_100004D74(v0, qword_100068D98);
  return sub_10004CAA0();
}

uint64_t sub_100004BB8()
{
  v0 = sub_10004CAB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004CAD0();
  sub_100004D10(v5, qword_100068DB0);
  sub_100004D74(v5, qword_100068DB0);
  if (qword_1000646A0 != -1)
  {
    swift_once();
  }

  v6 = sub_100004D74(v0, qword_100068D98);
  (*(v1 + 16))(v4, v6, v0);
  return sub_10004CAC0();
}

uint64_t *sub_100004D10(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100004D74(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BE80();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100004E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BE80();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for Trace()
{
  result = qword_1000649D0;
  if (!qword_1000649D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004EFC()
{
  result = sub_10004BE80();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

size_t sub_100004F70(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v120 = a5;
  v147 = a4;
  v143 = a3;
  v121 = a2;
  v146 = a1;
  v5 = type metadata accessor for AppIconConfiguration(0);
  v119 = *(v5 - 1);
  v6 = *(v119 + 64);
  __chkstk_darwin(v5);
  v8 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_10004C7F0();
  v126 = *(v127 - 8);
  v9 = *(v126 + 64);
  __chkstk_darwin(v127);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_10004C820();
  v123 = *(v125 - 8);
  v11 = *(v123 + 64);
  __chkstk_darwin(v125);
  v122 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10004CB70();
  v142 = *(v144 - 8);
  v13 = *(v142 + 64);
  __chkstk_darwin(v144);
  v118 = (&v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v129 = &v118 - v16;
  __chkstk_darwin(v17);
  v145 = (&v118 - v18);
  __chkstk_darwin(v19);
  v128 = &v118 - v20;
  __chkstk_darwin(v21);
  v23 = (&v118 - v22);
  __chkstk_darwin(v24);
  v26 = &v118 - v25;
  v27 = sub_10004C8A0();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000646A8 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v31 = sub_10004CAD0();
    v32 = sub_100004D74(v31, qword_100068DB0);
    v33 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
    v34 = *(sub_10004C8D0() - 8);
    v35 = *(v34 + 80);
    v36 = (v35 + 32) & ~v35;
    v132 = *(v34 + 72);
    v131 = v35;
    v133 = v33;
    v37 = swift_allocObject();
    v130 = xmmword_10004DC70;
    *(v37 + 16) = xmmword_10004DC70;
    sub_10004C890();
    v155._countAndFlagsBits = 0xD000000000000023;
    v155._object = 0x8000000100059FF0;
    sub_10004C880(v155);
    v38 = sub_10004BDA0();
    v152 = &type metadata for String;
    aBlock = v38;
    v150 = v39;
    sub_10004C860();
    sub_100003EA4(&aBlock, &qword_100064A10, &qword_10004FB00);
    v156._countAndFlagsBits = 46;
    v156._object = 0xE100000000000000;
    sub_10004C880(v156);
    v134 = v36;
    v141 = v30;
    sub_10004C8B0();
    v136 = v31;
    v135 = v32;
    sub_10004C9C0();

    sub_10004CC40();
    sub_10004CC80();
    v40 = v142;
    v41 = v144;
    v139 = *(v142 + 32);
    v140 = v142 + 32;
    v139(v23, v26, v144);
    v42 = *(v40 + 88);
    v138 = v40 + 88;
    v137 = v42;
    v43 = v42(v23, v41);
    v44 = enum case for WidgetFamily.systemLarge(_:);
    if (v43 != enum case for WidgetFamily.systemLarge(_:))
    {
      (*(v40 + 8))(v23, v41);
    }

    v45 = v145;
    v46 = v146;
    v47 = sub_10004BD20();
    if (v47 >> 62)
    {
      v48 = sub_10004CF90();
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_10004CC40();
    v50 = v49;
    v51 = v128;
    sub_10004CC80();
    v139(&v45->isa, v51, v41);
    v52 = v137(v45, v41);
    LODWORD(v128) = enum case for WidgetFamily.systemSmall(_:);
    if (v52 != enum case for WidgetFamily.systemSmall(_:))
    {
      if (v52 == enum case for WidgetFamily.systemMedium(_:))
      {
        if ((v48 - 1) < 4)
        {
          v53 = v50 * dbl_10004DCC0[v48 - 1];
        }
      }

      else if (v52 == v44)
      {
        if ((v121 & 1) != 0 && (v48 - 1) < 4)
        {
          v54 = dbl_10004DCC0[v48 - 1];
        }
      }

      else
      {
        (*(v142 + 8))(v45, v41);
      }
    }

    v30 = 0x2E64657565757120;
    v55 = dispatch_group_create();
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    v57 = sub_10004BD50();
    v145 = v55;
    if (v57)
    {
      v58 = v57;
      *(swift_allocObject() + 16) = v130;
      sub_10004C890();
      v157._countAndFlagsBits = 0xD000000000000024;
      v157._object = 0x800000010005A040;
      sub_10004C880(v157);
      v59 = sub_10004BDA0();
      v152 = &type metadata for String;
      aBlock = v59;
      v150 = v60;
      sub_10004C860();
      sub_100003EA4(&aBlock, &qword_100064A10, &qword_10004FB00);
      v158._countAndFlagsBits = 0x2E64657565757120;
      v158._object = 0xE800000000000000;
      sub_10004C880(v158);
      v46 = v146;
      sub_10004C8B0();
      sub_10004C9C0();

      dispatch_group_enter(v55);
      sub_10004154C(v58);
      v61 = swift_allocObject();
      v61[2] = v56;
      v61[3] = v46;
      v61[4] = v55;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_100007AA0;
      *(v62 + 24) = v61;
      v63 = swift_allocObject();
      v64 = v145;
      *(v63 + 16) = v46;
      *(v63 + 24) = v64;
      v65 = sub_100007874();
      swift_retain_n();
      v66 = v145;

      v67 = sub_10004CE20();
      v152 = v65;
      v153 = &protocol witness table for OS_dispatch_queue;
      aBlock = v67;
      sub_10004CA30();

      sub_100007B80(&aBlock);
    }

    v68 = sub_10004BD20();
    v69 = v68 >> 62 ? sub_10004CF90() : *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v70 = v129;

    if (sub_10004BD50())
    {

      sub_10004CC80();
      (*(v142 + 8))(v70, v144);
      v71 = 0;
    }

    else
    {
      sub_10004CC80();
      v72 = v118;
      v73 = v144;
      v139(&v118->isa, v70, v144);
      v74 = v137(v72, v73);
      if (v74 == v128)
      {
        v71 = v69 > 4 ? 3 : 4;
      }

      else
      {
        v75 = v72;
        v71 = (v121 & 1) != 0 ? 11 : 6;
        (*(v142 + 8))(v75, v73);
      }
    }

    v76 = sub_10004BD20();
    v77 = v76 >> 62 ? sub_10004CF90() : *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v78 = v77 >= v71 ? v71 : v77;
    v144 = swift_allocObject();
    *(v144 + 16) = _swiftEmptyArrayStorage;
    v79 = v46;
    v80 = sub_10004BD20();
    if (v77 < 0)
    {
      __break(1u);
    }

    else
    {
      v79 = v80;
      v71 = v80 >> 62;
      if (!(v80 >> 62))
      {
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) < v78)
        {
          goto LABEL_81;
        }

        goto LABEL_38;
      }
    }

    result = sub_10004CF90();
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_89;
    }

    if (sub_10004CF90() < v78)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

LABEL_38:
    v143 = v56;
    if ((v79 & 0xC000000000000001) != 0 && v78)
    {
      sub_10004BE40();

      v81 = 0;
      do
      {
        v82 = v81 + 1;
        sub_10004CF10(v81);
        v81 = v82;
      }

      while (v78 != v82);
      if (!v71)
      {
LABEL_43:
        v83 = 0;
        v23 = (v79 & 0xFFFFFFFFFFFFFF8);
        v26 = ((v79 & 0xFFFFFFFFFFFFFF8) + 32);
        v46 = v78;
        goto LABEL_46;
      }
    }

    else
    {

      if (!v71)
      {
        goto LABEL_43;
      }
    }

    v23 = sub_10004CFA0();
    v26 = v84;
    v83 = v85;
    v46 = v86 >> 1;
LABEL_46:
    swift_unknownObjectRetain();

    v87 = v46 - v83;
    if (__OFSUB__(v46, v83))
    {
      goto LABEL_82;
    }

    if (!v87)
    {
      break;
    }

    aBlock = _swiftEmptyArrayStorage;
    sub_10004CF50();
    result = swift_unknownObjectRelease();
    if (v87 < 0)
    {
      goto LABEL_87;
    }

    if (v46 <= v83)
    {
      v89 = v83;
    }

    else
    {
      v89 = v46;
    }

    v30 = v89 - v83;
    v90 = &v26[8 * v83];
    while (v30)
    {
      v91 = *v90;
      v90 += 8;

      sub_10004154C(v92);

      sub_10004CF30();
      v26 = aBlock[2];
      sub_10004CF60();
      sub_10004CF70();
      sub_10004CF40();
      --v30;
      if (!--v87)
      {
        swift_unknownObjectRelease();
        v93 = aBlock;
        v30 = 0x2E64657565757120;
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  swift_unknownObjectRelease_n();
  v93 = _swiftEmptyArrayStorage;
LABEL_57:
  v46 = v146;
  if (!(v93 >> 62))
  {
    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_83:
  if (sub_10004CF90() > 0)
  {
LABEL_59:
    *(swift_allocObject() + 16) = v130;
    sub_10004C890();
    v159._object = 0x800000010005A020;
    v159._countAndFlagsBits = 0xD000000000000019;
    sub_10004C880(v159);
    v94 = sub_10004BDA0();
    v152 = &type metadata for String;
    aBlock = v94;
    v150 = v95;
    sub_10004C860();
    sub_100003EA4(&aBlock, &qword_100064A10, &qword_10004FB00);
    v160._countAndFlagsBits = 0x2E64657565757120;
    v160._object = 0xE800000000000000;
    sub_10004C880(v160);
    sub_10004C8B0();
    sub_10004C9C0();

    v96 = v145;
    dispatch_group_enter(v145);
    v97 = swift_allocObject();
    v98 = v120;
    v97[2] = v46;
    v97[3] = v98;
    v30 = v144;
    v97[4] = v144;
    v97[5] = v96;
    sub_100007874();

    v99 = v96;

    v100 = sub_10004CE20();
    sub_100003650(&qword_100064A30, &qword_10004DCA8);
    sub_10004BD10();
  }

LABEL_60:

  v101 = sub_10004BD20();
  if (v101 >> 62)
  {
    v102 = sub_10004CF90();
  }

  else
  {
    v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = v102 - v78;
  if (v102 >= v78)
  {
    v26 = _swiftEmptyArrayStorage;
    v23 = _swiftEmptyArrayStorage;
    if (v102 == v78)
    {
LABEL_71:
      sub_100003650(&qword_100064A18, &qword_10004DC98);
      v109 = sub_10004CA90();
      sub_100007874();
      v110 = sub_10004CE20();
      v111 = swift_allocObject();
      v111[2] = v46;
      v111[3] = v109;
      v112 = v144;
      v111[4] = v143;
      v111[5] = v112;
      v111[6] = v23;
      v153 = sub_100007918;
      v154 = v111;
      aBlock = _NSConcreteStackBlock;
      v150 = 1107296256;
      v151 = sub_100007830;
      v152 = &unk_100062060;
      v113 = _Block_copy(&aBlock);

      v114 = v122;
      sub_10004C800();
      v148 = _swiftEmptyArrayStorage;
      sub_100007940();
      sub_100003650(&unk_100066AB0, &qword_10004DCA0);
      sub_100007998();
      v115 = v124;
      v116 = v127;
      sub_10004CED0();
      v117 = v145;
      sub_10004CDE0();
      _Block_release(v113);

      (*(v126 + 8))(v115, v116);
      (*(v123 + 8))(v114, v125);

      return v109;
    }

    aBlock = _swiftEmptyArrayStorage;
    result = sub_1000269F4(0, v103 & ~(v103 >> 63), 0);
    if (v103 < 0)
    {
      goto LABEL_88;
    }

    v23 = aBlock;
    v104 = v119;
    while (1)
    {
      v105 = &v8[v5[9]];
      sub_10004CB40();
      sub_10004BB60();
      *&v8[v5[5]] = 0;
      v106 = &v8[v5[6]];
      *v106 = 0;
      *(v106 + 1) = 0;
      v106[16] = 1;
      v8[v5[7]] = 0;
      v8[v5[8]] = 0;
      aBlock = v23;
      v108 = v23[2];
      v107 = v23[3];
      if (v108 >= v107 >> 1)
      {
        sub_1000269F4(v107 > 1, v108 + 1, 1);
        v104 = v119;
        v23 = aBlock;
      }

      v23[2] = (v108 + 1);
      sub_10000387C(v8, v23 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v108);
      if (!v103)
      {
        goto LABEL_73;
      }

      if (!--v103)
      {
        v46 = v146;
        goto LABEL_71;
      }
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_100006200()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006238()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100006270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v8 = sub_10004C8A0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  swift_beginAccess();
  v10 = *(a3 + 16);
  *(a3 + 16) = a2;

  v11 = qword_1000646A8;
  v12 = a2;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_10004CAD0();
  sub_100004D74(v13, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v14 = *(sub_10004C8D0() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v20._object = 0x800000010005A040;
  v20._countAndFlagsBits = 0xD000000000000024;
  sub_10004C880(v20);
  v17 = sub_10004BDA0();
  v19[3] = &type metadata for String;
  v19[0] = v17;
  v19[1] = v18;
  sub_10004C860();
  sub_100003EA4(v19, &qword_100064A10, &qword_10004FB00);
  v21._countAndFlagsBits = 0x6465656363757320;
  v21._object = 0xEB000000002E6465;
  sub_10004C880(v21);
  sub_10004C8B0();
  sub_10004C9C0();

  dispatch_group_leave(a5);
}

void sub_1000064BC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = sub_10004C8A0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v6 = sub_10004CAD0();
  sub_100004D74(v6, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v7 = *(sub_10004C8D0() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v16._object = 0x800000010005A040;
  v16._countAndFlagsBits = 0xD000000000000024;
  sub_10004C880(v16);
  v10 = sub_10004BDA0();
  v15 = &type metadata for String;
  v14[0] = v10;
  v14[1] = v11;
  sub_10004C860();
  sub_100003EA4(v14, &qword_100064A10, &qword_10004FB00);
  v17._countAndFlagsBits = 0x3A44454C49414620;
  v17._object = 0xE900000000000020;
  sub_10004C880(v17);
  swift_getErrorValue();
  v15 = v13;
  v12 = sub_100007BCC(v14);
  (*(*(v13 - 1) + 16))(v12);
  sub_10004C870();
  sub_100003EA4(v14, &qword_100064A10, &qword_10004FB00);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_10004C880(v18);
  sub_10004C8B0();
  sub_10004C9C0();

  dispatch_group_leave(a3);
}

void sub_100006764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v91 = a6;
  v90 = a5;
  v93 = a4;
  v9 = sub_100003650(&qword_100064A38, &qword_10004DCB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v96 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v106 = &v87 - v14;
  __chkstk_darwin(v13);
  v16 = &v87 - v15;
  v17 = type metadata accessor for AppIconConfiguration(0);
  v102 = *(v17 - 8);
  v103 = v17;
  v18 = *(v102 + 64);
  __chkstk_darwin(v17);
  v101 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100003650(&qword_100064A30, &qword_10004DCA8);
  v107 = *(v109 - 8);
  v20 = *(v107 + 64);
  v21 = __chkstk_darwin(v109);
  v108 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v105 = &v87 - v23;
  v24 = sub_100003650(&qword_100064A40, &qword_10004DCB8);
  v89 = *(v24 - 8);
  v25 = *(v89 + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v95 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v104 = &v87 - v28;
  v29 = sub_10004C8A0();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v31 = *(a2 + 16);
  v94 = a1;
  v92 = v16;
  if (!v31)
  {
    if (qword_1000646A8 != -1)
    {
      swift_once();
    }

    v45 = sub_10004CAD0();
    sub_100004D74(v45, qword_100068DB0);
    sub_100003650(&qword_100064A08, &unk_10004EAB0);
    v46 = *(sub_10004C8D0() - 8);
    v47 = *(v46 + 72);
    v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    *(swift_allocObject() + 16) = xmmword_10004DC70;
    sub_10004C890();
    v121._countAndFlagsBits = 0xD00000000000001DLL;
    v121._object = 0x800000010005A070;
    sub_10004C880(v121);
    v49 = sub_10004BDA0();
    v114 = &type metadata for String;
    v112 = v49;
    v113 = v50;
    sub_10004C860();
    sub_100003EA4(&v112, &qword_100064A10, &qword_10004FB00);
    v122._countAndFlagsBits = 0x6465656363757320;
    v122._object = 0xEB000000002E6465;
    sub_10004C880(v122);
    sub_10004C8B0();
    sub_10004C9C0();

    goto LABEL_9;
  }

  v88 = a2;
  v87 = a3;
  if (qword_1000646A8 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v32 = sub_10004CAD0();
    sub_100004D74(v32, qword_100068DB0);
    v33 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
    v34 = *(sub_10004C8D0() - 8);
    v35 = *(v34 + 72);
    v98 = *(v34 + 80);
    v99 = v35;
    v100 = v33;
    v36 = swift_allocObject();
    v97 = xmmword_10004DC70;
    *(v36 + 16) = xmmword_10004DC70;
    sub_10004C890();
    v115._countAndFlagsBits = 0;
    v115._object = 0xE000000000000000;
    sub_10004C880(v115);
    v114 = &type metadata for Int;
    v112 = v31;
    sub_10004C870();
    sub_100003EA4(&v112, &qword_100064A10, &qword_10004FB00);
    v116._countAndFlagsBits = 47;
    v116._object = 0xE100000000000000;
    sub_10004C880(v116);
    v37 = *(v94 + 16);
    v114 = &type metadata for Int;
    v112 = v37;
    sub_10004C870();
    sub_100003EA4(&v112, &qword_100064A10, &qword_10004FB00);
    v117._object = 0x800000010005A090;
    v117._countAndFlagsBits = 0xD000000000000019;
    sub_10004C880(v117);
    v38 = sub_10004BDA0();
    v114 = &type metadata for String;
    v112 = v38;
    v113 = v39;
    sub_10004C860();
    sub_100003EA4(&v112, &qword_100064A10, &qword_10004FB00);
    v118._countAndFlagsBits = 46;
    v118._object = 0xE100000000000000;
    sub_10004C880(v118);
    sub_10004C8B0();
    sub_10004C9E0();

    v40 = (v88 + 32);
    do
    {
      v41 = *v40++;
      *(swift_allocObject() + 16) = v97;
      swift_errorRetain();
      sub_10004C890();
      v119._countAndFlagsBits = 0x7265206863746546;
      v119._object = 0xED0000203A726F72;
      sub_10004C880(v119);
      swift_getErrorValue();
      v42 = v110;
      v43 = v111;
      v114 = v111;
      v44 = sub_100007BCC(&v112);
      (*(*(v43 - 1) + 16))(v44, v42, v43);
      sub_10004C870();
      sub_100003EA4(&v112, &qword_100064A10, &qword_10004FB00);
      v120._countAndFlagsBits = 0;
      v120._object = 0xE000000000000000;
      sub_10004C880(v120);
      sub_10004C8B0();
      sub_10004C9E0();

      v31 = (v31 - 1);
    }

    while (v31);
LABEL_9:
    LODWORD(v93) = sub_10004BBE0();
    v51 = *(v94 + 16);
    v52 = _swiftEmptyArrayStorage;
    if (v51)
    {
      v53 = v94 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
      v54 = (v107 + 48);
      v55 = *(v89 + 72);
      v56 = v95;
      v57 = v92;
      do
      {
        v58 = v104;
        sub_100003E3C(v53, v104, &qword_100064A40, &qword_10004DCB8);
        sub_100007C30(v58, v56, &qword_100064A40, &qword_10004DCB8);
        if ((*v54)(v56, 1, v109) == 1)
        {
          sub_100003EA4(v56, &qword_100064A40, &qword_10004DCB8);
        }

        else
        {
          sub_100007C30(v56, v105, &qword_100064A30, &qword_10004DCA8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_1000351D8(0, v52[2] + 1, 1, v52);
          }

          v60 = v52[2];
          v59 = v52[3];
          if (v60 >= v59 >> 1)
          {
            v52 = sub_1000351D8(v59 > 1, v60 + 1, 1, v52);
          }

          v52[2] = v60 + 1;
          sub_100007C30(v105, v52 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v60, &qword_100064A30, &qword_10004DCA8);
          v56 = v95;
        }

        v53 += v55;
        --v51;
      }

      while (v51);
    }

    else
    {
      v57 = v92;
    }

    v61 = v52[2];
    if (!v61)
    {
      break;
    }

    v112 = _swiftEmptyArrayStorage;
    sub_1000269F4(0, v61, 0);
    v62 = 0;
    v63 = v112;
    v104 = v52 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    LODWORD(v98) = enum case for Artwork.Style.round(_:);
    LODWORD(v97) = enum case for Artwork.Style.roundPrerendered(_:);
    if (v93)
    {
      v64 = 4;
    }

    else
    {
      v64 = 2;
    }

    LODWORD(v95) = v64;
    LODWORD(v94) = enum case for Artwork.Style.pill(_:);
    if (v93)
    {
      v65 = 3;
    }

    else
    {
      v65 = 0;
    }

    LODWORD(v105) = v65;
    v31 = &qword_100064A38;
    v99 = v61;
    v100 = v52;
    while (v62 < v52[2])
    {
      v66 = v108;
      sub_100003E3C(v104 + *(v107 + 72) * v62, v108, &qword_100064A30, &qword_10004DCA8);
      v67 = *(v66 + *(v109 + 48));
      v68 = sub_10004BE10();
      v69 = *(v68 - 8);
      (*(v69 + 16))(v57, v66, v68);
      (*(v69 + 56))(v57, 0, 1, v68);
      v70 = v57;
      v71 = v57;
      v72 = v106;
      sub_100003E3C(v71, v106, &qword_100064A38, &qword_10004DCB0);
      v73 = (*(v69 + 48))(v72, 1, v68);
      v74 = v105;
      if (v73 != 1)
      {
        v75 = v96;
        sub_100003E3C(v72, v96, &qword_100064A38, &qword_10004DCB0);
        v76 = (*(v69 + 88))(v75, v68);
        v77 = v76 == v98 || v76 == v97;
        v74 = v95;
        if (!v77)
        {
          if (v76 == v94)
          {
            v74 = 1;
          }

          else
          {
            (*(v69 + 8))(v96, v68);
            v74 = v105;
          }

          v72 = v106;
        }
      }

      sub_100003EA4(v72, &qword_100064A38, &qword_10004DCB0);
      v57 = v70;
      sub_100003EA4(v70, &qword_100064A38, &qword_10004DCB0);
      v78 = v103;
      v79 = v101;
      v80 = &v101[v103[9]];
      sub_10004CB40();
      v81 = v67;
      sub_10004BB60();
      *(v79 + v78[5]) = v67;
      v82 = v79 + v78[6];
      *v82 = 0;
      *(v82 + 8) = 0;
      *(v82 + 16) = 1;
      *(v79 + v78[7]) = v74;
      *(v79 + v78[8]) = 1;
      sub_100003EA4(v108, &qword_100064A30, &qword_10004DCA8);
      v112 = v63;
      v84 = v63[2];
      v83 = v63[3];
      if (v84 >= v83 >> 1)
      {
        sub_1000269F4(v83 > 1, v84 + 1, 1);
        v63 = v112;
      }

      ++v62;
      v63[2] = v84 + 1;
      sub_10000387C(v79, v63 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v84);
      v52 = v100;
      v31 = &qword_100064A38;
      if (v99 == v62)
      {

        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

  v63 = _swiftEmptyArrayStorage;
LABEL_43:
  v85 = v90;
  swift_beginAccess();
  v86 = *(v85 + 16);
  *(v85 + 16) = v63;

  dispatch_group_leave(v91);
}

uint64_t sub_1000074EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v45 = a2;
  v44 = type metadata accessor for WidgetTodayCard();
  v5 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004C8A0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v10 = sub_10004CAD0();
  sub_100004D74(v10, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v11 = *(sub_10004C8D0() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v48._object = 0x800000010005A0B0;
  v48._countAndFlagsBits = 0xD000000000000027;
  sub_10004C880(v48);
  v14 = sub_10004BDA0();
  v47[3] = &type metadata for String;
  v47[0] = v14;
  v47[1] = v15;
  sub_10004C860();
  sub_100003EA4(v47, &qword_100064A10, &qword_10004FB00);
  v49._countAndFlagsBits = 46;
  v49._object = 0xE100000000000000;
  sub_10004C880(v49);
  sub_10004C8B0();
  sub_10004C9C0();

  v16 = sub_10004BDA0();
  v39 = v17;
  v40 = v16;
  v18 = sub_10004BD90();
  v37 = v19;
  v38 = v18;
  v20 = sub_10004BD70();
  v22 = v21;
  LOBYTE(v13) = sub_10004BD80();
  v23 = v41;
  swift_beginAccess();
  v24 = *(v23 + 16);
  v25 = v42;
  swift_beginAccess();
  v46 = *(v25 + 16);
  v26 = v24;

  sub_100007C98(v27);
  v28 = v46;
  v29 = sub_10004BD40();
  v30 = v44;
  v31 = &v7[*(v44 + 44)];
  sub_10004BD60();
  v32 = &v7[*(v30 + 48)];
  sub_10004BD30();
  v33 = v39;
  *v7 = v40;
  *(v7 + 1) = v33;
  v34 = v37;
  *(v7 + 2) = v38;
  *(v7 + 3) = v34;
  *(v7 + 4) = v20;
  *(v7 + 5) = v22;
  v7[48] = v13 & 1;
  *(v7 + 7) = v24;
  *(v7 + 8) = v28;
  *(v7 + 9) = v29;
  sub_10004CA80();
  return sub_100007DC4(v7);
}

uint64_t sub_100007830(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_100007874()
{
  result = qword_100066AE0;
  if (!qword_100066AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100066AE0);
  }

  return result;
}

uint64_t sub_1000078C0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007928(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100007940()
{
  result = qword_100064A20;
  if (!qword_100064A20)
  {
    sub_10004C7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064A20);
  }

  return result;
}

unint64_t sub_100007998()
{
  result = qword_100064A28;
  if (!qword_100064A28)
  {
    sub_100003698(&unk_100066AB0, &qword_10004DCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064A28);
  }

  return result;
}

uint64_t sub_1000079FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007A58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007AAC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007AE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_100003650(&qword_100064A30, &qword_10004DCA8);
  return v4(a1, *(a1 + *(v5 + 48)));
}

uint64_t sub_100007B38()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007B80(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_100007BCC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100007C30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003650(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007C98(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1000351B0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for AppIconConfiguration(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100007DC4(uint64_t a1)
{
  v2 = type metadata accessor for WidgetTodayCard();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004BB70();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_10004CB50();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100007F78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004BB70();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_10004CB50();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000080BC()
{
  sub_10004BB70();
  if (v0 <= 0x3F)
  {
    sub_100008188();
    if (v1 <= 0x3F)
    {
      sub_1000081F0();
      if (v2 <= 0x3F)
      {
        sub_10004CB50();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100008188()
{
  if (!qword_100064AB0)
  {
    sub_10000AE54(255, &qword_100064AB8, UIImage_ptr);
    v0 = sub_10004CEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100064AB0);
    }
  }
}

void sub_1000081F0()
{
  if (!qword_100064AC0)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_10004CEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100064AC0);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppIconConfiguration.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppIconConfiguration.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000083A4()
{
  result = qword_100064B00;
  if (!qword_100064B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064B00);
  }

  return result;
}

uint64_t sub_100008454()
{
  v1 = v0;
  sub_10004BB70();
  sub_100008730(&qword_100064B08, &type metadata accessor for UUID);
  sub_10004CCD0();
  v2 = type metadata accessor for AppIconConfiguration(0);
  v3 = *(v0 + v2[5]);
  if (v3)
  {
    sub_10004D080(1u);
    v4 = v3;
    sub_10004CEA0();
  }

  else
  {
    sub_10004D080(0);
  }

  v5 = v1 + v2[6];
  if (*(v5 + 16) == 1)
  {
    sub_10004D080(0);
  }

  else
  {
    v7 = *v5;
    v6 = *(v5 + 8);
    sub_10004D080(1u);
    if (v7 == 0.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v7;
    }

    sub_10004D090(*&v8);
    if (v6 == 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v6;
    }

    sub_10004D090(*&v9);
  }

  sub_10004D070(*(v1 + v2[7]));
  sub_10004D080(*(v1 + v2[8]));
  v10 = v2[9];
  sub_10004CB50();
  sub_100008730(&qword_100064B18, &type metadata accessor for WidgetAccentedRenderingMode);
  return sub_10004CCD0();
}

Swift::Int sub_1000085FC()
{
  sub_10004D060();
  sub_100008454();
  return sub_10004D0A0();
}

Swift::Int sub_100008640()
{
  sub_10004D060();
  sub_100008454();
  return sub_10004D0A0();
}

uint64_t sub_100008680@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004BB70();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100008730(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100008778@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v113 = type metadata accessor for AppIconContentView(0);
  v1 = *(*(v113 - 1) + 64);
  __chkstk_darwin(v113);
  v101 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100003650(&qword_100064BB0, &qword_10004DE90);
  v3 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v112 = &v99 - v4;
  v120 = sub_100003650(&qword_100064BB8, &qword_10004DE98);
  v5 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v114 = &v99 - v6;
  v102 = sub_100003650(&qword_100064BC0, &qword_10004DEA0);
  v7 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v103 = &v99 - v8;
  v115 = sub_100003650(&qword_100064BC8, &qword_10004DEA8);
  v9 = *(*(v115 - 1) + 64);
  v10 = __chkstk_darwin(v115);
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v105 = &v99 - v12;
  v13 = sub_10004C690();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v106 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003650(&qword_100064BD0, &qword_10004DEB0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v99 - v18;
  v20 = sub_100003650(&qword_100064BD8, &qword_10004DEB8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v99 - v22;
  v110 = sub_100003650(&qword_100064BE0, &qword_10004DEC0);
  v24 = *(*(v110 - 8) + 64);
  v25 = __chkstk_darwin(v110);
  v27 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v99 - v28;
  v117 = sub_100003650(&qword_100064BE8, &qword_10004DEC8);
  v30 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v119 = &v99 - v31;
  v108 = sub_100003650(&qword_100064BF0, &qword_10004DED0);
  v32 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v107 = (&v99 - v33);
  v118 = sub_100003650(&qword_100064BF8, &qword_10004DED8);
  v34 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v109 = &v99 - v35;
  v36 = type metadata accessor for AppIcon(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36 - 8);
  v39 = type metadata accessor for AppIconConfiguration(0);
  v40 = *(v116 + v39[7]);
  if (v40 > 1)
  {
    if (v40 != 2)
    {
      if (v40 == 3)
      {
        if (!*(v116 + v39[5]))
        {
          goto LABEL_7;
        }

LABEL_9:
        v49 = v101;
        sub_10000A7A4(v116, v101, type metadata accessor for AppIconConfiguration);
        sub_10000A7A4(v49, v112, type metadata accessor for AppIconContentView);
        swift_storeEnumTagMultiPayload();
        sub_10000A2F0();
        sub_100008730(&qword_100064C18, type metadata accessor for AppIconContentView);
        v50 = v114;
        sub_10004C320();
        sub_100003E3C(v50, v119, &qword_100064BB8, &qword_10004DE98);
        swift_storeEnumTagMultiPayload();
        sub_10000A490();
        sub_10000A6E8();
        sub_10004C320();
        sub_100003EA4(v50, &qword_100064BB8, &qword_10004DE98);
        return sub_10000A80C(v49, type metadata accessor for AppIconContentView);
      }

      if (*(v116 + v39[5]))
      {
        goto LABEL_9;
      }
    }

    v52 = v116;
    v53 = v103;
    sub_10000A7A4(v116, v103, type metadata accessor for AppIconConfiguration);
    *(v53 + *(v102 + 36)) = 256;
    sub_10004C5C0();
    *(v52 + v39[8]);
    v54 = sub_10004C5F0();

    sub_10004BF40();
    v55 = v138;
    v57 = v139;
    v56 = v140;
    v58 = v141;
    v59 = v142;
    v60 = v143;
    v61 = sub_10004C720();
    v63 = v62;
    v64 = sub_10004C720();
    v66 = v65;
    *&v123 = v55;
    *(&v123 + 1) = __PAIR64__(v56, v57);
    *&v124 = v58;
    *(&v124 + 1) = v59;
    *&v125 = v60;
    *(&v125 + 1) = v54;
    LOWORD(v126) = 256;
    *(&v126 + 1) = v61;
    *&v127 = v63;
    *(&v127 + 1) = v64;
    v128 = v65;
    v67 = v53;
    v68 = v104;
    sub_100007C30(v67, v104, &qword_100064BC0, &qword_10004DEA0);
    v69 = v68 + *(v115 + 9);
    v70 = v126;
    v71 = v127;
    *(v69 + 32) = v125;
    *(v69 + 48) = v70;
    *(v69 + 64) = v71;
    *(v69 + 80) = v128;
    v72 = v124;
    *v69 = v123;
    *(v69 + 16) = v72;
    *&v129 = v55;
    *(&v129 + 1) = __PAIR64__(v56, v57);
    *&v130 = v58;
    *(&v130 + 1) = v59;
    v131 = v60;
    v132 = v54;
    v133 = 256;
    v134 = v61;
    v135 = v63;
    v136 = v64;
    v137 = v66;
    sub_100003E3C(&v123, &v122, &qword_100064C00, &qword_10004DEE0);
    sub_100003EA4(&v129, &qword_100064C00, &qword_10004DEE0);
    v73 = &qword_100064BC8;
    v74 = &qword_10004DEA8;
    v75 = v105;
    sub_100007C30(v68, v105, &qword_100064BC8, &qword_10004DEA8);
    sub_100003E3C(v75, v112, &qword_100064BC8, &qword_10004DEA8);
    swift_storeEnumTagMultiPayload();
    sub_10000A2F0();
    sub_100008730(&qword_100064C18, type metadata accessor for AppIconContentView);
    v76 = v114;
    sub_10004C320();
    sub_100003E3C(v76, v119, &qword_100064BB8, &qword_10004DE98);
    swift_storeEnumTagMultiPayload();
    sub_10000A490();
    sub_10000A6E8();
    sub_10004C320();
    sub_100003EA4(v76, &qword_100064BB8, &qword_10004DE98);
    v46 = v75;
LABEL_12:
    v47 = v73;
    v48 = v74;
    return sub_100003EA4(v46, v47, v48);
  }

  v113 = v19;
  v114 = v27;
  v41 = v106;
  v115 = v29;
  if (v40)
  {
    v77 = v116;
    v100 = v23;
    sub_10000A7A4(v116, v23, type metadata accessor for AppIconConfiguration);
    v78 = &v23[*(v20 + 36)];
    v79 = enum case for RoundedCornerStyle.continuous(_:);
    v80 = sub_10004C250();
    v81 = *(*(v80 - 8) + 104);
    v81(v78, v79, v80);
    *&v78[*(sub_100003650(&qword_100064C68, &qword_10004DEF8) + 36)] = 256;
    v81(v41, v79, v80);
    sub_10004C5C0();
    *(v77 + v39[8]);
    v82 = sub_10004C5F0();

    sub_10004BF40();
    v83 = v113;
    sub_10000A7A4(v41, v113, &type metadata accessor for Capsule);
    v84 = v83 + *(sub_100003650(&qword_100064C88, &qword_10004DF08) + 36);
    v85 = v130;
    *v84 = v129;
    *(v84 + 16) = v85;
    *(v84 + 32) = v131;
    v86 = sub_100003650(&qword_100064C90, &qword_10004DF10);
    *(v83 + *(v86 + 52)) = v82;
    *(v83 + *(v86 + 56)) = 256;
    v87 = sub_10004C720();
    v89 = v88;
    sub_10000A80C(v41, &type metadata accessor for Capsule);
    v90 = (v83 + *(sub_100003650(&qword_100064C98, &qword_10004DF18) + 36));
    *v90 = v87;
    v90[1] = v89;
    v91 = sub_10004C720();
    v93 = v92;
    v94 = v114;
    v95 = &v114[*(v110 + 36)];
    sub_100007C30(v83, v95, &qword_100064BD0, &qword_10004DEB0);
    v96 = (v95 + *(sub_100003650(&qword_100064C78, &qword_10004DF00) + 36));
    *v96 = v91;
    v96[1] = v93;
    sub_100007C30(v100, v94, &qword_100064BD8, &qword_10004DEB8);
    v73 = &qword_100064BE0;
    v74 = &qword_10004DEC0;
    v97 = v115;
    sub_100007C30(v94, v115, &qword_100064BE0, &qword_10004DEC0);
    sub_100003E3C(v97, v107, &qword_100064BE0, &qword_10004DEC0);
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100064C48, &qword_10004DEF0);
    sub_100003D30(&qword_100064C40, &qword_100064C48, &qword_10004DEF0);
    sub_10000A548();
    v98 = v109;
    sub_10004C320();
    sub_100003E3C(v98, v119, &qword_100064BF8, &qword_10004DED8);
    swift_storeEnumTagMultiPayload();
    sub_10000A490();
    sub_10000A6E8();
    sub_10004C320();
    sub_100003EA4(v98, &qword_100064BF8, &qword_10004DED8);
    v46 = v97;
    goto LABEL_12;
  }

LABEL_7:
  sub_10000A7A4(v116, &v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppIcon);
  v42 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v43 = swift_allocObject();
  sub_10000AA18(&v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42, type metadata accessor for AppIcon);
  v44 = v107;
  *v107 = sub_10000A998;
  v44[1] = v43;
  swift_storeEnumTagMultiPayload();

  sub_100003650(&qword_100064C48, &qword_10004DEF0);
  sub_100003D30(&qword_100064C40, &qword_100064C48, &qword_10004DEF0);
  sub_10000A548();
  v45 = v109;
  sub_10004C320();
  sub_100003E3C(v45, v119, &qword_100064BF8, &qword_10004DED8);
  swift_storeEnumTagMultiPayload();
  sub_10000A490();
  sub_10000A6E8();
  sub_10004C320();

  v46 = v45;
  v47 = &qword_100064BF8;
  v48 = &qword_10004DED8;
  return sub_100003EA4(v46, v47, v48);
}

uint64_t sub_1000095B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_100003650(&qword_100064CA0, &qword_10004DF20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v60 - v5;
  v7 = sub_10004C030();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v62 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v12 = (&v60 - v11);
  v13 = type metadata accessor for AppIconContentView(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003650(&qword_100064CA8, &qword_10004DF28);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v64 = &v60 - v19;
  v61 = a1;
  sub_10000A7A4(a1, v16, type metadata accessor for AppIconConfiguration);
  sub_10004BFA0();
  if (v21 >= v20)
  {
    if (qword_100064710 != -1)
    {
      v57 = v21;
      swift_once();
      v21 = v57;
    }

    v22 = *&qword_100065BA0;
    v23 = qword_100064708;
    v24 = &qword_100065B98;
    v20 = v21;
  }

  else
  {
    if (qword_100064710 != -1)
    {
      v56 = v20;
      swift_once();
      v20 = v56;
    }

    v22 = *&qword_100065BA0;
    v23 = qword_100064708;
    v24 = &qword_100065B90;
  }

  if (v23 != -1)
  {
    v54 = v20;
    swift_once();
    v20 = v54;
  }

  v25 = v22 * (v20 / *v24);
  v60 = v7;
  v26 = *(v7 + 20);
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = sub_10004C250();
  v29 = *(*(v28 - 8) + 104);
  v29(v12 + v26, v27, v28);
  *v12 = v25;
  v12[1] = v25;
  v30 = v64;
  v31 = v64 + *(v17 + 36);
  sub_10000AA18(v12, v31, &type metadata accessor for RoundedRectangle);
  *(v31 + *(sub_100003650(&qword_100064CB0, &qword_10004DF30) + 36)) = 256;
  sub_10000AA18(v16, v30, type metadata accessor for AppIconContentView);
  sub_10004BFA0();
  if (v33 >= v32)
  {
    if (qword_100064710 != -1)
    {
      v59 = v33;
      swift_once();
      v33 = v59;
    }

    v34 = qword_100064708;
    v35 = &qword_100065B98;
    v32 = v33;
  }

  else
  {
    if (qword_100064710 != -1)
    {
      v58 = v32;
      swift_once();
      v32 = v58;
    }

    v34 = qword_100064708;
    v35 = &qword_100065B90;
  }

  if (v34 != -1)
  {
    v55 = v32;
    swift_once();
    v32 = v55;
  }

  v36 = v22 * (v32 / *v35);
  v37 = v62;
  v29(v62 + *(v60 + 20), v27, v28);
  *v37 = v36;
  v37[1] = v36;
  sub_10004C5C0();
  *(v61 + *(type metadata accessor for AppIconConfiguration(0) + 32));
  v38 = sub_10004C5F0();

  sub_10004BF40();
  sub_10000A7A4(v37, v6, &type metadata accessor for RoundedRectangle);
  v39 = &v6[*(sub_100003650(&qword_100064CB8, &qword_10004DF38) + 36)];
  v40 = v66;
  *v39 = v65;
  *(v39 + 1) = v40;
  *(v39 + 4) = v67;
  v41 = sub_100003650(&qword_100064CC0, &qword_10004DF40);
  *&v6[*(v41 + 52)] = v38;
  *&v6[*(v41 + 56)] = 256;
  v42 = sub_10004C720();
  v44 = v43;
  sub_10000A80C(v37, &type metadata accessor for RoundedRectangle);
  v45 = &v6[*(sub_100003650(&qword_100064CC8, &qword_10004DF48) + 36)];
  *v45 = v42;
  v45[1] = v44;
  v46 = sub_10004C720();
  v48 = v47;
  v49 = sub_100003650(&qword_100064CD0, &qword_10004DF50);
  v50 = v63;
  v51 = v63 + *(v49 + 36);
  sub_100007C30(v6, v51, &qword_100064CA0, &qword_10004DF20);
  v52 = (v51 + *(sub_100003650(&qword_100064CD8, &qword_10004DF58) + 36));
  *v52 = v46;
  v52[1] = v48;
  return sub_100007C30(v64, v50, &qword_100064CA8, &qword_10004DF28);
}

uint64_t sub_100009BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_100003650(&qword_100064D88, &qword_10004DFD8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v35 = v33 - v5;
  v6 = sub_100003650(&qword_100064D90, &unk_10004DFE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v33 - v8;
  v10 = sub_10004C630();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003650(&qword_100064D98, &qword_100050060);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v33 - v17;
  v19 = type metadata accessor for AppIconConfiguration(0);
  v20 = v19;
  v21 = a1;
  v22 = *(a1 + *(v19 + 20));
  if (v22)
  {
    v34 = v22;
    sub_10004C620();
    (*(v11 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v10);
    sub_10004C680();
    v33[1] = v3;

    (*(v11 + 8))(v14, v10);
    v23 = *(v20 + 36);
    v24 = sub_10004CB50();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v9, v21 + v23, v24);
    (*(v25 + 56))(v9, 0, 1, v24);
    sub_10004C670();

    sub_100003EA4(v9, &qword_100064D90, &unk_10004DFE0);
    v26 = &v18[*(v15 + 36)];
    *v26 = 0;
    *(v26 + 4) = 1;
    sub_10000AE9C(v18, v35);
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100064DB0, &qword_10004DFF8);
    sub_10000AD24();
    sub_10000ADC8();
    sub_10004C320();

    return sub_10000AF0C(v18);
  }

  else
  {
    v28 = v35;
    if (*(v21 + *(v19 + 32)) == 1)
    {
      sub_10000AE54(0, &qword_100064DC8, UIColor_ptr);
      sub_10004CE80(0.0, 0.0, 0.0, 0.10259);
      v29 = sub_10004C5B0();
      v30 = 0x3FF0000000000000;
      if (*(v21 + *(v20 + 28)) == 1)
      {
        v30 = 0x3FF5555555555555;
      }

      v37 = v29;
      v38 = v30;
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v37 = sub_10004C5D0();
      v38 = 0;
      v39 = 0;
      v40 = 1;
    }

    sub_100003650(&qword_100064DA0, &qword_10004DFF0);
    sub_10000ACA0();
    sub_10004C320();
    v31 = v42;
    v32 = v43;
    *v28 = v41;
    *(v28 + 16) = v31;
    *(v28 + 18) = v32;
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100064DB0, &qword_10004DFF8);
    sub_10000AD24();
    sub_10000ADC8();
    return sub_10004C320();
  }
}

uint64_t sub_10000A09C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10004C280();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100003650(&qword_100064D80, &qword_10004DFD0);
  return sub_100009BDC(v1, a1 + *(v3 + 44));
}

uint64_t sub_10000A0F0(uint64_t a1, uint64_t a2)
{
  if ((sub_10004BB50() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AppIconConfiguration(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_10000AE54(0, &qword_100064AB8, UIImage_ptr);
    v8 = v7;
    v9 = v6;
    v10 = sub_10004CE90();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = v4[6];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 16);
  v14 = a2 + v11;
  if (v13)
  {
    if ((*(v14 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v14 + 16))
    {
      return 0;
    }

    if (*v12 != *v14 || v12[1] != *(v14 + 8))
    {
      return 0;
    }
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  v17 = v4[9];

  return sub_10004CB30();
}

uint64_t sub_10000A2B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000A2F0()
{
  result = qword_100064C08;
  if (!qword_100064C08)
  {
    sub_100003698(&qword_100064BC8, &qword_10004DEA8);
    sub_10000A3A8();
    sub_100003D30(&qword_100064C30, &qword_100064C00, &qword_10004DEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064C08);
  }

  return result;
}

unint64_t sub_10000A3A8()
{
  result = qword_100064C10;
  if (!qword_100064C10)
  {
    sub_100003698(&qword_100064BC0, &qword_10004DEA0);
    sub_100008730(&qword_100064C18, type metadata accessor for AppIconContentView);
    sub_100003D30(&qword_100064C20, &qword_100064C28, &qword_10004DEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064C10);
  }

  return result;
}

unint64_t sub_10000A490()
{
  result = qword_100064C38;
  if (!qword_100064C38)
  {
    sub_100003698(&qword_100064BF8, &qword_10004DED8);
    sub_100003D30(&qword_100064C40, &qword_100064C48, &qword_10004DEF0);
    sub_10000A548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064C38);
  }

  return result;
}

unint64_t sub_10000A548()
{
  result = qword_100064C50;
  if (!qword_100064C50)
  {
    sub_100003698(&qword_100064BE0, &qword_10004DEC0);
    sub_10000A600();
    sub_100003D30(&qword_100064C70, &qword_100064C78, &qword_10004DF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064C50);
  }

  return result;
}

unint64_t sub_10000A600()
{
  result = qword_100064C58;
  if (!qword_100064C58)
  {
    sub_100003698(&qword_100064BD8, &qword_10004DEB8);
    sub_100008730(&qword_100064C18, type metadata accessor for AppIconContentView);
    sub_100003D30(&qword_100064C60, &qword_100064C68, &qword_10004DEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064C58);
  }

  return result;
}

unint64_t sub_10000A6E8()
{
  result = qword_100064C80;
  if (!qword_100064C80)
  {
    sub_100003698(&qword_100064BB8, &qword_10004DE98);
    sub_10000A2F0();
    sub_100008730(&qword_100064C18, type metadata accessor for AppIconContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064C80);
  }

  return result;
}

uint64_t sub_10000A7A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000A80C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000A86C()
{
  v1 = *(type metadata accessor for AppIcon(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10004BB70();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for AppIconConfiguration(0);

  v7 = *(v6 + 36);
  v8 = sub_10004CB50();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A998@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppIcon(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000095B0(v4, a1);
}

uint64_t sub_10000AA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000AA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIconConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000AB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIconConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000AB88()
{
  result = type metadata accessor for AppIconConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10000ABF8()
{
  result = qword_100064D70;
  if (!qword_100064D70)
  {
    sub_100003698(&qword_100064D78, "PA");
    sub_10000A490();
    sub_10000A6E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064D70);
  }

  return result;
}

unint64_t sub_10000ACA0()
{
  result = qword_100064DA8;
  if (!qword_100064DA8)
  {
    sub_100003698(&qword_100064DA0, &qword_10004DFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064DA8);
  }

  return result;
}

unint64_t sub_10000AD24()
{
  result = qword_100064DB8;
  if (!qword_100064DB8)
  {
    sub_100003698(&qword_100064D98, &qword_100050060);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064DB8);
  }

  return result;
}

unint64_t sub_10000ADC8()
{
  result = qword_100064DC0;
  if (!qword_100064DC0)
  {
    sub_100003698(&qword_100064DB0, &qword_10004DFF8);
    sub_10000ACA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064DC0);
  }

  return result;
}

uint64_t sub_10000AE54(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000AE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100064D98, &qword_100050060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AF0C(uint64_t a1)
{
  v2 = sub_100003650(&qword_100064D98, &qword_100050060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AF74(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_100003650(&qword_100064DD0, &qword_10004E000);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for AppIconConfiguration(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v17 = &v49 - v16;
  __chkstk_darwin(v15);
  v21 = &v49 - v20;
  v22 = &_swiftEmptyArrayStorage;
  v57 = *(a1 + 16);
  if (!v57 || a2 < 1)
  {
    return v22;
  }

  v49 = v19;
  v50 = a3;
  v52 = a4;
  v51 = v11;
  v23 = 0;
  v24 = *(v18 + 80);
  v55 = a2;
  v56 = (v24 + 32) & ~v24;
  v25 = *(v18 + 72);
  v53 = v25;
  v54 = a1 + v56;
  do
  {
    sub_10000A7A4(v54 + v25 * (v23 % v57), v17, type metadata accessor for AppIconConfiguration);
    v26 = *&v17[v12[5]];
    v27 = &v17[v12[6]];
    v28 = *v27;
    v59 = *(v27 + 1);
    v58 = v27[16];
    v29 = v17[v12[7]];
    v30 = v17[v12[8]];
    v31 = v12[9];
    v32 = sub_10004CB50();
    (*(*(v32 - 8) + 16))(&v21[v31], &v17[v31], v32);
    v33 = v26;
    sub_10004BB60();
    sub_10000A80C(v17, type metadata accessor for AppIconConfiguration);
    *&v21[v12[5]] = v26;
    v34 = &v21[v12[6]];
    v35 = v59;
    *v34 = v28;
    *(v34 + 1) = v35;
    v34[16] = v58;
    v21[v12[7]] = v29;
    v21[v12[8]] = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1000351B0(0, v22[2] + 1, 1, v22);
    }

    v37 = v22[2];
    v36 = v22[3];
    v25 = v53;
    if (v37 >= v36 >> 1)
    {
      v22 = sub_1000351B0(v36 > 1, v37 + 1, 1, v22);
    }

    ++v23;
    v22[2] = v37 + 1;
    result = sub_10000AA18(v21, v22 + v56 + v37 * v25, type metadata accessor for AppIconConfiguration);
    v39 = v55;
  }

  while (v55 != v23);
  if (v52)
  {
LABEL_16:
    v46 = v22[2];
    if (v46 >= v39)
    {
      if (v46 != v39)
      {
        sub_1000464B0(v22, v22 + v56, 0, (2 * v39) | 1);
        v48 = v47;

        return v48;
      }

      return v22;
    }

    __break(1u);
    goto LABEL_21;
  }

  v40 = v49;
  v41 = v49 + v12[9];
  sub_10004CB40();
  sub_10004BB60();
  result = v40;
  *(v40 + v12[5]) = 0;
  v42 = v40 + v12[6];
  *v42 = 0;
  *(v42 + 8) = 0;
  *(v42 + 16) = 1;
  *(v40 + v12[7]) = 0;
  *(v40 + v12[8]) = 0;
  v43 = v22[2];
  v44 = v50;
  if (v43 < v50)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v50 & 0x8000000000000000) == 0)
  {
    sub_10000AA18(result, v51, type metadata accessor for AppIconConfiguration);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v22;
    if (!isUniquelyReferenced_nonNull_native || v43 >= v22[3] >> 1)
    {
      v22 = sub_1000351B0(isUniquelyReferenced_nonNull_native, v43 + 1, 1, v22);
      v60 = v22;
    }

    result = sub_100034FE8(v44, v44, 1, v51);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

__n128 sub_10000B418(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000B434(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10000B47C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10000B4F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v165 = a1;
  v3 = type metadata accessor for AppIcon(0);
  v142 = *(v3 - 8);
  v4 = *(v142 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for AppIconConfiguration(0);
  v7 = *(v151 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v151);
  v10 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_100003650(&qword_100064DE8, &qword_10004E0E8);
  v11 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v143 = (&v133 - v12);
  v138 = sub_10004C6E0();
  v137 = *(v138 - 8);
  v13 = *(v137 + 64);
  __chkstk_darwin(v138);
  v136 = (&v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = sub_10004C6F0();
  v140 = *(v141 - 8);
  v15 = *(v140 + 64);
  __chkstk_darwin(v141);
  v139 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_100003650(&qword_100064DF0, &qword_10004E0F0);
  v17 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v148 = &v133 - v18;
  v164 = sub_100003650(&qword_100064DF8, &qword_10004E0F8);
  v19 = *(*(v164 - 8) + 64);
  __chkstk_darwin(v164);
  v149 = &v133 - v20;
  v144 = sub_100003650(&qword_100064E00, &qword_10004E100);
  v21 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v145 = &v133 - v22;
  v159 = sub_100003650(&qword_100064E08, &qword_10004E108);
  v23 = *(*(v159 - 8) + 64);
  __chkstk_darwin(v159);
  v146 = &v133 - v24;
  v25 = sub_100003650(&qword_100064E10, &qword_10004E110);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v153 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v152 = &v133 - v29;
  v160 = sub_100003650(&qword_100064E18, &qword_10004E118);
  v30 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160);
  v154 = (&v133 - v31);
  v32 = sub_100003650(&qword_100064E20, &qword_10004E120);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v135 = &v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v134 = (&v133 - v36);
  v37 = sub_100003650(&qword_100064E28, &qword_10004E128);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = &v133 - v39;
  v161 = sub_100003650(&qword_100064E30, &qword_10004E130);
  v41 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v163 = &v133 - v42;
  v155 = sub_100003650(&qword_100064E38, &qword_10004E138);
  v43 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v157 = &v133 - v44;
  v45 = sub_100003650(&qword_100064E40, &qword_10004E140);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v48 = &v133 - v47;
  v156 = sub_100003650(&qword_100064E48, &qword_10004E148);
  v49 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v51 = (&v133 - v50);
  v162 = sub_100003650(&qword_100064E50, &qword_10004E150);
  v52 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v158 = &v133 - v53;
  v54 = type metadata accessor for AppIconContentView(0);
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v57 = &v133 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = v2;
  v58 = *v2;
  v59 = *(*v2 + 16);
  if (v59 <= 1)
  {
    v152 = v45;
    v70 = v48;
    v154 = v51;
    v71 = v151;
    v153 = v37;
    if (!v59)
    {
      sub_10004BB60();
      *&v57[v71[5]] = 0;
      v98 = &v57[v71[6]];
      *v98 = 0;
      *(v98 + 1) = 0;
      v98[16] = 1;
      v57[v71[7]] = 0;
      v57[v71[8]] = 1;
      v99 = &v57[v71[9]];
      sub_10004CB40();
      sub_10000FA20(v57, v70, type metadata accessor for AppIconContentView);
      swift_storeEnumTagMultiPayload();
      sub_10000F918(&qword_100064C18, type metadata accessor for AppIconContentView);
      sub_100003D30(&qword_100064EA0, &qword_100064E28, &qword_10004E128);
      v100 = v154;
      sub_10004C320();
      sub_100003E3C(v100, v157, &qword_100064E48, &qword_10004E148);
      swift_storeEnumTagMultiPayload();
      sub_10000F260();
      sub_10000F348();
      v101 = v158;
      sub_10004C320();
      sub_100003EA4(v100, &qword_100064E48, &qword_10004E148);
      sub_100003E3C(v101, v163, &qword_100064E50, &qword_10004E150);
      swift_storeEnumTagMultiPayload();
      sub_10000F1D4();
      sub_10000F3F8();
      sub_10004C320();
      sub_100003EA4(v101, &qword_100064E50, &qword_10004E150);
      return sub_10000F4B0(v57);
    }

    v72 = v154;
    if (v59 != 1)
    {
      goto LABEL_14;
    }

    v73 = v70;
    v61 = v40;
    *v40 = sub_10004C1B0();
    *(v40 + 1) = 0;
    v40[16] = 1;
    v74 = &v40[*(sub_100003650(&qword_100064ED0, &qword_10004E188) + 44)];
    v75 = sub_10004C280();
    v76 = v134;
    *v134 = v75;
    *(v76 + 8) = 0;
    *(v76 + 16) = 1;
    v77 = sub_100003650(&qword_100064ED8, &qword_10004E190);
    sub_10000CAB8(v166, (v76 + *(v77 + 44)), v78, v79);
    v80 = v135;
    sub_100003E3C(v76, v135, &qword_100064E20, &qword_10004E120);
    *v74 = 0;
    v74[8] = 1;
    v81 = sub_100003650(&qword_100064EE0, &qword_10004E198);
    sub_100003E3C(v80, &v74[*(v81 + 48)], &qword_100064E20, &qword_10004E120);
    sub_100003EA4(v76, &qword_100064E20, &qword_10004E120);
    sub_100003EA4(v80, &qword_100064E20, &qword_10004E120);
    v67 = &qword_100064E28;
    v68 = &qword_10004E128;
    sub_100003E3C(v61, v73, &qword_100064E28, &qword_10004E128);
    swift_storeEnumTagMultiPayload();
    sub_10000F918(&qword_100064C18, type metadata accessor for AppIconContentView);
    sub_100003D30(&qword_100064EA0, &qword_100064E28, &qword_10004E128);
    sub_10004C320();
    v82 = &qword_100064E48;
    v83 = &qword_10004E148;
    sub_100003E3C(v72, v157, &qword_100064E48, &qword_10004E148);
  }

  else
  {
    switch(v59)
    {
      case 2:
        v84 = sub_10004C1B0();
        v61 = v154;
        *v154 = v84;
        *(v61 + 8) = 0;
        v85 = v152;
        *(v61 + 16) = 1;
        v86 = v61 + *(sub_100003650(&qword_100064EB8, &qword_10004E170) + 44);
        *v85 = sub_10004C280();
        *(v85 + 8) = 0;
        *(v85 + 16) = 1;
        v87 = sub_100003650(&qword_100064EC0, &qword_10004E178);
        sub_10000CCEC(v166, v85 + *(v87 + 44), -50.0, -25.0);
        v88 = v153;
        sub_100003E3C(v85, v153, &qword_100064E10, &qword_10004E110);
        *v86 = 0;
        *(v86 + 8) = 1;
        v89 = sub_100003650(&qword_100064EC8, &qword_10004E180);
        sub_100003E3C(v88, v86 + *(v89 + 48), &qword_100064E10, &qword_10004E110);
        sub_100003EA4(v85, &qword_100064E10, &qword_10004E110);
        sub_100003EA4(v88, &qword_100064E10, &qword_10004E110);
        v67 = &qword_100064E18;
        v68 = &qword_10004E118;
        sub_100003E3C(v61, v145, &qword_100064E18, &qword_10004E118);
        break;
      case 3:
        v90 = sub_10004C1B0();
        v61 = v154;
        *v154 = v90;
        *(v61 + 8) = 0;
        v91 = v152;
        *(v61 + 16) = 1;
        v92 = v61 + *(sub_100003650(&qword_100064EB8, &qword_10004E170) + 44);
        *v91 = sub_10004C280();
        *(v91 + 8) = 0;
        *(v91 + 16) = 1;
        v93 = sub_100003650(&qword_100064EC0, &qword_10004E178);
        sub_10000D1D0(v166, v91 + *(v93 + 44), -30.0, -15.0);
        v94 = v153;
        sub_100003E3C(v91, v153, &qword_100064E10, &qword_10004E110);
        *v92 = 0;
        *(v92 + 8) = 1;
        v95 = sub_100003650(&qword_100064EC8, &qword_10004E180);
        sub_100003E3C(v94, v92 + *(v95 + 48), &qword_100064E10, &qword_10004E110);
        sub_100003EA4(v91, &qword_100064E10, &qword_10004E110);
        sub_100003EA4(v94, &qword_100064E10, &qword_10004E110);
        v67 = &qword_100064E18;
        v68 = &qword_10004E118;
        sub_100003E3C(v61, v145, &qword_100064E18, &qword_10004E118);
        break;
      case 4:
        v60 = sub_10004C1B0();
        v61 = v154;
        *v154 = v60;
        *(v61 + 8) = 0;
        v62 = v152;
        *(v61 + 16) = 1;
        v63 = v61 + *(sub_100003650(&qword_100064EB8, &qword_10004E170) + 44);
        *v62 = sub_10004C280();
        *(v62 + 8) = 0;
        *(v62 + 16) = 1;
        v64 = sub_100003650(&qword_100064EC0, &qword_10004E178);
        sub_10000D4DC(v166, v62 + *(v64 + 44), -25.0, -12.0);
        v65 = v153;
        sub_100003E3C(v62, v153, &qword_100064E10, &qword_10004E110);
        *v63 = 0;
        *(v63 + 8) = 1;
        v66 = sub_100003650(&qword_100064EC8, &qword_10004E180);
        sub_100003E3C(v65, v63 + *(v66 + 48), &qword_100064E10, &qword_10004E110);
        sub_100003EA4(v62, &qword_100064E10, &qword_10004E110);
        sub_100003EA4(v65, &qword_100064E10, &qword_10004E110);
        v67 = &qword_100064E18;
        v68 = &qword_10004E118;
        sub_100003E3C(v61, v148, &qword_100064E18, &qword_10004E118);
        swift_storeEnumTagMultiPayload();
        sub_100003D30(&qword_100064E68, &qword_100064E18, &qword_10004E118);
        sub_10000F090();
        v69 = v149;
LABEL_25:
        sub_10004C320();
        v96 = &qword_100064DF8;
        v97 = &qword_10004E0F8;
        sub_100003E3C(v69, v163, &qword_100064DF8, &qword_10004E0F8);
        goto LABEL_26;
      default:
LABEL_14:
        v103 = v166[1];
        v159 = v58;
        v104 = v103 * 0.36;
        v105 = v166[4];
        v106 = v166[5];
        v107 = v103 * 0.36 * 2.5 + v106 + v106;
        v108 = v106 + v103 * 0.36 * 1.5;
        v109 = v166[3];
        v110 = v136;
        *v136 = v103 * 0.36;
        (*(v137 + 104))(v110, enum case for GridItem.Size.fixed(_:), v138);
        v111 = v139;
        sub_10004C700();
        v112 = v141;
        v113 = sub_10004CD90();
        v158 = v113;
        *(v113 + 16) = 3;
        v114 = v140;
        v115 = v113 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
        v116 = *(v140 + 16);
        v116(v115, v111, v112);
        v117 = v116;
        v118 = *(v114 + 72);
        v117(v115 + v118, v111, v112);
        (*(v114 + 32))(v115 + 2 * v118, v111, v112);

        *&v167.a = &_swiftEmptyArrayStorage;
        sub_1000269F4(0, v59, 0);
        a = v167.a;
        v120 = v159 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
        v121 = *(v142 + 72);
        do
        {
          sub_10000FA20(v120, v6, type metadata accessor for AppIcon);
          sub_10000387C(v6, v10);
          v167.a = a;
          v123 = *(*&a + 16);
          v122 = *(*&a + 24);
          if (v123 >= v122 >> 1)
          {
            sub_1000269F4(v122 > 1, v123 + 1, 1);
            a = v167.a;
          }

          *(*&a + 16) = v123 + 1;
          sub_10000387C(v10, *&a + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v123);
          v120 += v121;
          --v59;
        }

        while (v59);
        if (v109 >= v107)
        {
          v124 = v107 - v109;
        }

        else
        {
          v124 = v109 - v107;
        }

        if (v105 >= v108)
        {
          v125 = v108 - v105;
        }

        else
        {
          v125 = v105 - v108;
        }

        v126 = sub_10000AF74(*&a, 12, 5, 0);

        v127 = sub_10004C280();
        v61 = v143;
        *v143 = v127;
        *(v61 + 8) = 0;
        *(v61 + 16) = 1;
        v128 = sub_100003650(&qword_100064E58, &qword_10004E158);
        sub_10000D7E8(v126, v166, v61 + *(v128 + 44));

        v129 = v61 + *(sub_100003650(&qword_100064E60, &qword_10004E160) + 36);
        *v129 = 0xBFD0C152382D7365;
        *(v129 + 8) = v107 / (v104 * 3.0 + v106 * 3.0 + -1.0);
        *(v129 + 16) = v108 / (v104 * 4.0 + v106 * 4.0 + -1.0);
        CGAffineTransformMakeTranslation(&v167, v124, v125);
        v130 = *&v167.c;
        v131 = *&v167.tx;
        v132 = (v61 + *(v150 + 36));
        *v132 = *&v167.a;
        v132[1] = v130;
        v132[2] = v131;
        v67 = &qword_100064DE8;
        v68 = &qword_10004E0E8;
        sub_100003E3C(v61, v148, &qword_100064DE8, &qword_10004E0E8);
        swift_storeEnumTagMultiPayload();
        sub_100003D30(&qword_100064E68, &qword_100064E18, &qword_10004E118);
        sub_10000F090();
        v69 = v149;
        goto LABEL_25;
    }

    swift_storeEnumTagMultiPayload();
    sub_100003D30(&qword_100064E68, &qword_100064E18, &qword_10004E118);
    v72 = v146;
    sub_10004C320();
    v82 = &qword_100064E08;
    v83 = &qword_10004E108;
    sub_100003E3C(v72, v157, &qword_100064E08, &qword_10004E108);
  }

  swift_storeEnumTagMultiPayload();
  sub_10000F260();
  sub_10000F348();
  v69 = v158;
  sub_10004C320();
  sub_100003EA4(v72, v82, v83);
  v96 = &qword_100064E50;
  v97 = &qword_10004E150;
  sub_100003E3C(v69, v163, &qword_100064E50, &qword_10004E150);
LABEL_26:
  swift_storeEnumTagMultiPayload();
  sub_10000F1D4();
  sub_10000F3F8();
  sub_10004C320();
  sub_100003EA4(v69, v96, v97);
  return sub_100003EA4(v61, v67, v68);
}

uint64_t sub_10000CAB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, int8x16_t a3@<Q2>, int8x16_t a4@<Q3>)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  v8 = v7 - 1;
  if ((v7 - 1) > 3)
  {
    v9 = 0.36;
  }

  else
  {
    v9 = dbl_10004E238[v8];
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 48);
  *a3.i64 = v8;
  a4.i64[0] = 0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = v10 / (v9 * v10 - *vbslq_s8(vnegq_f64(v12), a4, a3).i64);
  v14 = v9 * fabs((sqrt(v10 * v10 + v10 * v10) - v10) * sin(v11 * 3.14159265 / 180.0 * 0.5));
  *a2 = sub_10004C720();
  a2[1] = v15;
  v16 = *(sub_100003650(&qword_100064EE8, &unk_10004E1A0) + 44);
  v26 = 0;
  v27 = v7;
  swift_getKeyPath();
  v17 = swift_allocObject();
  v18 = *(a1 + 16);
  *(v17 + 24) = *a1;
  *(v17 + 16) = v6;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(a1 + 32);
  *(v17 + 72) = *(a1 + 48);
  *(v17 + 80) = v9;
  *(v17 + 88) = v11;
  *(v17 + 96) = xmmword_10004E020;
  *(v17 + 112) = 0;
  *(v17 + 120) = 0;
  *(v17 + 128) = v14;
  sub_10000F514(a1, v25);
  sub_10000F514(a1, v25);
  sub_100003650(&qword_100064EF0, &qword_10004E1C8);
  sub_100003650(&qword_100064EF8, &qword_10004E1D0);
  sub_10000F54C();
  sub_10000F62C();
  sub_10004C6A0();
  sub_10004C770();
  v20 = v19;
  v22 = v21;
  result = sub_100003650(&qword_100064F50, &qword_10004E1F8);
  v24 = (a2 + *(result + 36));
  *v24 = v13;
  v24[1] = v13;
  *(v24 + 2) = v20;
  *(v24 + 3) = v22;
  return result;
}

uint64_t sub_10000CCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_100003650(&qword_100064F50, &qword_10004E1F8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v40 - v10);
  v12 = *a1;
  sub_10000F514(a1, v41);
  v13 = sub_10000CFF8(v12);
  v14 = v13;
  v15 = v12[2];
  if ((v15 - 1) > 3)
  {
    v16 = 0.36;
  }

  else
  {
    v16 = dbl_10004E238[v15 - 1];
  }

  v17 = *(a1 + 8);
  v18 = *(a1 + 48);
  v19 = v17 / (v16 * v17 - (*(v13 + 16) - 1) * a3);
  v20 = v16 * fabs((sqrt(v17 * v17 + v17 * v17) - v17) * sin(v18 * 3.14159265 / 180.0 * 0.5));
  *v11 = sub_10004C720();
  v11[1] = v21;
  v22 = *(sub_100003650(&qword_100064EE8, &unk_10004E1A0) + 44);
  v23 = *(v14 + 16);
  v40[1] = 0;
  v40[2] = v23;
  swift_getKeyPath();
  v24 = swift_allocObject();
  v25 = *(a1 + 16);
  *(v24 + 24) = *a1;
  *(v24 + 16) = v14;
  *(v24 + 40) = v25;
  *(v24 + 56) = *(a1 + 32);
  *(v24 + 72) = *(a1 + 48);
  *(v24 + 80) = v16;
  *(v24 + 88) = v18;
  *(v24 + 96) = xmmword_10004E030;
  *(v24 + 112) = a3;
  *(v24 + 120) = a4;
  *(v24 + 128) = v20;
  sub_10000F514(a1, v41);
  sub_100003650(&qword_100064EF0, &qword_10004E1C8);
  sub_100003650(&qword_100064EF8, &qword_10004E1D0);
  sub_10000F54C();
  sub_10000F62C();
  sub_10004C6A0();
  sub_10004C770();
  v26 = (v11 + *(v8 + 36));
  *v26 = v19;
  v26[1] = v19;
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  v29 = sub_10004C3B0();
  sub_10004BEE0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_100007C30(v11, a2, &qword_100064F50, &qword_10004E1F8);
  result = sub_100003650(&qword_100064F58, &qword_10004E200);
  v39 = a2 + *(result + 36);
  *v39 = v29;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_10000CFF8(void *a1)
{
  v2 = type metadata accessor for AppIcon(0);
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v17 = &v16 - v8;
  v9 = a1[2];
  if (v9 < 2)
  {
    return a1;
  }

  v10 = 0;
  v11 = v9 >> 1;
  for (i = v9 - 1; ; --i)
  {
    if (v10 == i)
    {
      goto LABEL_5;
    }

    v13 = a1[2];
    if (v10 >= v13)
    {
      break;
    }

    v14 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v15 = *(v16 + 72);
    result = sub_10000FA20(a1 + v14 + v15 * v10, v17, type metadata accessor for AppIcon);
    if (i >= v13)
    {
      goto LABEL_14;
    }

    sub_10000FA20(a1 + v14 + v15 * i, v6, type metadata accessor for AppIcon);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1000355F4(a1);
    }

    result = sub_10000F960(v6, a1 + v14 + v15 * v10);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    result = sub_10000F960(v17, a1 + v14 + v15 * i);
LABEL_5:
    if (v11 == ++v10)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10000D1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_100003650(&qword_100064F50, &qword_10004E1F8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v40 - v10);
  v12 = *a1;
  sub_10000F514(a1, v41);
  v13 = sub_10000CFF8(v12);
  v14 = v13;
  v15 = v12[2];
  if ((v15 - 1) > 3)
  {
    v16 = 0.36;
  }

  else
  {
    v16 = dbl_10004E238[v15 - 1];
  }

  v17 = *(a1 + 8);
  v18 = *(a1 + 48);
  v19 = v17 / (v16 * v17 - (*(v13 + 16) - 1) * a3);
  v20 = v16 * fabs((sqrt(v17 * v17 + v17 * v17) - v17) * sin(v18 * 3.14159265 / 180.0 * 0.5));
  *v11 = sub_10004C720();
  v11[1] = v21;
  v22 = *(sub_100003650(&qword_100064EE8, &unk_10004E1A0) + 44);
  v23 = *(v14 + 16);
  v40[1] = 0;
  v40[2] = v23;
  swift_getKeyPath();
  v24 = swift_allocObject();
  v25 = *(a1 + 16);
  *(v24 + 24) = *a1;
  *(v24 + 16) = v14;
  *(v24 + 40) = v25;
  *(v24 + 56) = *(a1 + 32);
  *(v24 + 72) = *(a1 + 48);
  *(v24 + 80) = v16;
  *(v24 + 88) = v18;
  *(v24 + 96) = xmmword_10004E030;
  *(v24 + 112) = a3;
  *(v24 + 120) = a4;
  *(v24 + 128) = v20;
  sub_10000F514(a1, v41);
  sub_100003650(&qword_100064EF0, &qword_10004E1C8);
  sub_100003650(&qword_100064EF8, &qword_10004E1D0);
  sub_10000F54C();
  sub_10000F62C();
  sub_10004C6A0();
  sub_10004C770();
  v26 = (v11 + *(v8 + 36));
  *v26 = v19;
  v26[1] = v19;
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  v29 = sub_10004C3B0();
  sub_10004BEE0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_100007C30(v11, a2, &qword_100064F50, &qword_10004E1F8);
  result = sub_100003650(&qword_100064F58, &qword_10004E200);
  v39 = a2 + *(result + 36);
  *v39 = v29;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_10000D4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_100003650(&qword_100064F50, &qword_10004E1F8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v40 - v10);
  v12 = *a1;
  sub_10000F514(a1, v41);
  v13 = sub_10000CFF8(v12);
  v14 = v13;
  v15 = v12[2];
  if ((v15 - 1) > 3)
  {
    v16 = 0.36;
  }

  else
  {
    v16 = dbl_10004E238[v15 - 1];
  }

  v17 = *(a1 + 8);
  v18 = *(a1 + 48);
  v19 = v17 / (v16 * v17 - (*(v13 + 16) - 1) * a3);
  v20 = v16 * fabs((sqrt(v17 * v17 + v17 * v17) - v17) * sin(v18 * 3.14159265 / 180.0 * 0.5));
  *v11 = sub_10004C720();
  v11[1] = v21;
  v22 = *(sub_100003650(&qword_100064EE8, &unk_10004E1A0) + 44);
  v23 = *(v14 + 16);
  v40[1] = 0;
  v40[2] = v23;
  swift_getKeyPath();
  v24 = swift_allocObject();
  v25 = *(a1 + 16);
  *(v24 + 24) = *a1;
  *(v24 + 16) = v14;
  *(v24 + 40) = v25;
  *(v24 + 56) = *(a1 + 32);
  *(v24 + 72) = *(a1 + 48);
  *(v24 + 80) = v16;
  *(v24 + 88) = v18;
  *(v24 + 96) = xmmword_10004E030;
  *(v24 + 112) = a3;
  *(v24 + 120) = a4;
  *(v24 + 128) = v20;
  sub_10000F514(a1, v41);
  sub_100003650(&qword_100064EF0, &qword_10004E1C8);
  sub_100003650(&qword_100064EF8, &qword_10004E1D0);
  sub_10000F54C();
  sub_10000F62C();
  sub_10004C6A0();
  sub_10004C770();
  v26 = (v11 + *(v8 + 36));
  *v26 = v19;
  v26[1] = v19;
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  v29 = sub_10004C3B0();
  sub_10004BEE0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_100007C30(v11, a2, &qword_100064F50, &qword_10004E1F8);
  result = sub_100003650(&qword_100064F58, &qword_10004E200);
  v39 = a2 + *(result + 36);
  *v39 = v29;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_10000D7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_100003650(&qword_100064F60, &qword_10004E208);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v46 = &v42 - v10;
  v11 = __chkstk_darwin(v9);
  v45 = &v42 - v12;
  v13 = __chkstk_darwin(v11);
  v48 = &v42 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v42 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v42 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v42 - v22;
  __chkstk_darwin(v21);
  v25 = &v42 - v24;
  *v25 = sub_10004C1B0();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v26 = sub_100003650(&qword_100064F68, &qword_10004E210);
  sub_10000DBD4(a1, a2, &v25[*(v26 + 44)]);
  v27 = *(a2 + 40);
  *v23 = sub_10004C1B0();
  *(v23 + 1) = 0;
  v23[16] = 1;
  sub_10000E024(a1, a2, &v23[*(v26 + 44)]);
  *v20 = sub_10004C1B0();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v28 = &v20[*(v26 + 44)];
  v44 = v20;
  sub_10000E488(a1, a2, v28);
  *v17 = sub_10004C1B0();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v29 = &v17[*(v26 + 44)];
  v43 = v17;
  sub_10000E8EC(a1, a2, v29);
  v30 = v48;
  sub_100003E3C(v25, v48, &qword_100064F60, &qword_10004E208);
  v31 = v45;
  sub_100003E3C(v23, v45, &qword_100064F60, &qword_10004E208);
  v32 = v20;
  v33 = v46;
  sub_100003E3C(v32, v46, &qword_100064F60, &qword_10004E208);
  sub_100003E3C(v17, v49, &qword_100064F60, &qword_10004E208);
  v34 = v47;
  sub_100003E3C(v30, v47, &qword_100064F60, &qword_10004E208);
  v35 = sub_100003650(&qword_100064F70, &qword_10004E218);
  v36 = v34 + v35[12];
  *v36 = v27;
  *(v36 + 8) = 0;
  sub_100003E3C(v31, v34 + v35[16], &qword_100064F60, &qword_10004E208);
  v37 = v34 + v35[20];
  *v37 = v27;
  *(v37 + 8) = 0;
  sub_100003E3C(v33, v34 + v35[24], &qword_100064F60, &qword_10004E208);
  v38 = v34 + v35[28];
  *v38 = v27;
  *(v38 + 8) = 0;
  v39 = v34 + v35[32];
  v40 = v49;
  sub_100003E3C(v49, v39, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v43, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v44, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v23, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v25, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v40, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v33, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v31, &qword_100064F60, &qword_10004E208);
  return sub_100003EA4(v48, &qword_100064F60, &qword_10004E208);
}

uint64_t sub_10000DBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_100003650(&qword_100064888, &qword_10004DB10);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v11 = __chkstk_darwin(v10);
  v12 = __chkstk_darwin(v11);
  v14 = &v43 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v43 - v16;
  result = __chkstk_darwin(v15);
  v22 = &v43 - v21;
  v23 = *(a1 + 16);
  if (!v23)
  {
    __break(1u);
    goto LABEL_6;
  }

  v45 = v20;
  v46 = v19;
  v24 = *(type metadata accessor for AppIconConfiguration(0) - 8);
  v25 = a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  sub_10000FA20(v25, v22, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  result = sub_10004BF90();
  v26 = &v22[*(v5 + 36)];
  v27 = v49;
  *v26 = v48;
  *(v26 + 1) = v27;
  *(v26 + 2) = v50;
  if (v23 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v44 = v9;
  v28 = *(a2 + 40);
  v29 = *(v24 + 72);
  sub_10000FA20(v25 + v29, v17, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  result = sub_10004BF90();
  v30 = &v17[*(v5 + 36)];
  v31 = v52;
  *v30 = v51;
  *(v30 + 1) = v31;
  *(v30 + 2) = v53;
  if (v23 >= 3)
  {
    sub_10000FA20(v25 + 2 * v29, v14, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v32 = &v14[*(v5 + 36)];
    v33 = v55;
    *v32 = v54;
    *(v32 + 1) = v33;
    *(v32 + 2) = v56;
    v34 = v22;
    v35 = v47;
    v43 = v22;
    v36 = v17;
    v37 = v45;
    sub_100003E3C(v34, v45, &qword_100064888, &qword_10004DB10);
    v38 = v46;
    sub_100003E3C(v36, v46, &qword_100064888, &qword_10004DB10);
    v39 = v44;
    sub_100003E3C(v14, v44, &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v37, v35, &qword_100064888, &qword_10004DB10);
    v40 = sub_100003650(&qword_100064F78, &qword_10004E220);
    v41 = v35 + v40[12];
    *v41 = v28;
    *(v41 + 8) = 0;
    sub_100003E3C(v38, v35 + v40[16], &qword_100064888, &qword_10004DB10);
    v42 = v35 + v40[20];
    *v42 = v28;
    *(v42 + 8) = 0;
    sub_100003E3C(v39, v35 + v40[24], &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v14, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v36, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v43, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v39, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v38, &qword_100064888, &qword_10004DB10);
    return sub_100003EA4(v37, &qword_100064888, &qword_10004DB10);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10000E024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003650(&qword_100064888, &qword_10004DB10);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v9 = __chkstk_darwin(v8);
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  result = __chkstk_darwin(v14);
  v22 = &v42 - v21;
  v23 = *(a1 + 16);
  if (v23 < 4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v44 = v20;
  v45 = v19;
  v46 = v18;
  v24 = *(type metadata accessor for AppIconConfiguration(0) - 8);
  v25 = a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v26 = *(v24 + 72);
  sub_10000FA20(v25 + 3 * v26, v22, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  result = sub_10004BF90();
  v27 = &v22[*(v6 + 36)];
  v28 = v48;
  *v27 = v47;
  *(v27 + 1) = v28;
  *(v27 + 2) = v49;
  if (v23 == 4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v29 = *(a2 + 40);
  sub_10000FA20(v25 + 4 * v26, v16, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  result = sub_10004BF90();
  v30 = &v16[*(v6 + 36)];
  v31 = v51;
  *v30 = v50;
  *(v30 + 1) = v31;
  *(v30 + 2) = v52;
  if (v23 >= 6)
  {
    sub_10000FA20(v25 + 5 * v26, v13, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v32 = &v13[*(v6 + 36)];
    v33 = v54;
    *v32 = v53;
    *(v32 + 1) = v33;
    *(v32 + 2) = v55;
    v34 = v22;
    v43 = v22;
    v35 = v16;
    v36 = v44;
    sub_100003E3C(v34, v44, &qword_100064888, &qword_10004DB10);
    v37 = v45;
    sub_100003E3C(v35, v45, &qword_100064888, &qword_10004DB10);
    v38 = v46;
    sub_100003E3C(v13, v46, &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v36, a3, &qword_100064888, &qword_10004DB10);
    v39 = sub_100003650(&qword_100064F78, &qword_10004E220);
    v40 = a3 + v39[12];
    *v40 = v29;
    *(v40 + 8) = 0;
    sub_100003E3C(v37, a3 + v39[16], &qword_100064888, &qword_10004DB10);
    v41 = a3 + v39[20];
    *v41 = v29;
    *(v41 + 8) = 0;
    sub_100003E3C(v38, a3 + v39[24], &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v13, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v35, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v43, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v38, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v37, &qword_100064888, &qword_10004DB10);
    return sub_100003EA4(v36, &qword_100064888, &qword_10004DB10);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10000E488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003650(&qword_100064888, &qword_10004DB10);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v9 = __chkstk_darwin(v8);
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  result = __chkstk_darwin(v14);
  v22 = &v42 - v21;
  v23 = *(a1 + 16);
  if (v23 < 7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v44 = v20;
  v45 = v19;
  v46 = v18;
  v24 = *(type metadata accessor for AppIconConfiguration(0) - 8);
  v25 = a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v26 = *(v24 + 72);
  sub_10000FA20(v25 + 6 * v26, v22, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  result = sub_10004BF90();
  v27 = &v22[*(v6 + 36)];
  v28 = v48;
  *v27 = v47;
  *(v27 + 1) = v28;
  *(v27 + 2) = v49;
  if (v23 == 7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v29 = *(a2 + 40);
  sub_10000FA20(v25 - v26 + 8 * v26, v16, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  result = sub_10004BF90();
  v30 = &v16[*(v6 + 36)];
  v31 = v51;
  *v30 = v50;
  *(v30 + 1) = v31;
  *(v30 + 2) = v52;
  if (v23 >= 9)
  {
    sub_10000FA20(v25 + 8 * v26, v13, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v32 = &v13[*(v6 + 36)];
    v33 = v54;
    *v32 = v53;
    *(v32 + 1) = v33;
    *(v32 + 2) = v55;
    v34 = v22;
    v43 = v22;
    v35 = v16;
    v36 = v44;
    sub_100003E3C(v34, v44, &qword_100064888, &qword_10004DB10);
    v37 = v45;
    sub_100003E3C(v35, v45, &qword_100064888, &qword_10004DB10);
    v38 = v46;
    sub_100003E3C(v13, v46, &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v36, a3, &qword_100064888, &qword_10004DB10);
    v39 = sub_100003650(&qword_100064F78, &qword_10004E220);
    v40 = a3 + v39[12];
    *v40 = v29;
    *(v40 + 8) = 0;
    sub_100003E3C(v37, a3 + v39[16], &qword_100064888, &qword_10004DB10);
    v41 = a3 + v39[20];
    *v41 = v29;
    *(v41 + 8) = 0;
    sub_100003E3C(v38, a3 + v39[24], &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v13, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v35, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v43, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v38, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v37, &qword_100064888, &qword_10004DB10);
    return sub_100003EA4(v36, &qword_100064888, &qword_10004DB10);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10000E8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003650(&qword_100064888, &qword_10004DB10);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v9 = __chkstk_darwin(v8);
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  result = __chkstk_darwin(v14);
  v22 = &v42 - v21;
  v23 = *(a1 + 16);
  if (v23 < 0xA)
  {
    __break(1u);
    goto LABEL_6;
  }

  v44 = v20;
  v45 = v19;
  v46 = v18;
  v24 = *(type metadata accessor for AppIconConfiguration(0) - 8);
  v25 = a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v26 = *(v24 + 72);
  sub_10000FA20(v25 + 9 * v26, v22, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  result = sub_10004BF90();
  v27 = &v22[*(v6 + 36)];
  v28 = v48;
  *v27 = v47;
  *(v27 + 1) = v28;
  *(v27 + 2) = v49;
  if (v23 == 10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v29 = *(a2 + 40);
  sub_10000FA20(v25 + 10 * v26, v16, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  result = sub_10004BF90();
  v30 = &v16[*(v6 + 36)];
  v31 = v51;
  *v30 = v50;
  *(v30 + 1) = v31;
  *(v30 + 2) = v52;
  if (v23 >= 0xC)
  {
    sub_10000FA20(v25 + 11 * v26, v13, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v32 = &v13[*(v6 + 36)];
    v33 = v54;
    *v32 = v53;
    *(v32 + 1) = v33;
    *(v32 + 2) = v55;
    v34 = v22;
    v43 = v22;
    v35 = v16;
    v36 = v44;
    sub_100003E3C(v34, v44, &qword_100064888, &qword_10004DB10);
    v37 = v45;
    sub_100003E3C(v35, v45, &qword_100064888, &qword_10004DB10);
    v38 = v46;
    sub_100003E3C(v13, v46, &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v36, a3, &qword_100064888, &qword_10004DB10);
    v39 = sub_100003650(&qword_100064F78, &qword_10004E220);
    v40 = a3 + v39[12];
    *v40 = v29;
    *(v40 + 8) = 0;
    sub_100003E3C(v37, a3 + v39[16], &qword_100064888, &qword_10004DB10);
    v41 = a3 + v39[20];
    *v41 = v29;
    *(v41 + 8) = 0;
    sub_100003E3C(v38, a3 + v39[24], &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v13, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v35, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v43, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v38, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v37, &qword_100064888, &qword_10004DB10);
    return sub_100003EA4(v36, &qword_100064888, &qword_10004DB10);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10000ED54@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, CGFloat a11@<D6>)
{
  v22 = sub_100003650(&qword_100064F20, &qword_10004E1D8);
  v23 = *(*(v22 - 8) + 64);
  result = __chkstk_darwin(v22);
  v26 = &v52 - v25;
  v27 = *a1;
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v27 < *(a2 + 16))
  {
    v28 = *(type metadata accessor for AppIcon(0) - 8);
    sub_10000FA20(a2 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v27, v26, type metadata accessor for AppIcon);
    v29 = *(a3 + 8) * a5;
    sub_10004C720();
    sub_10004BF90();
    v30 = &v26[*(sub_100003650(&qword_100064888, &qword_10004DB10) + 36)];
    v31 = v56;
    *v30 = v55;
    *(v30 + 1) = v31;
    *(v30 + 2) = v57;
    v32 = a6 * 0.0174532925;
    sub_10004C7B0();
    v34 = v33;
    v36 = v35;
    v37 = &v26[*(sub_100003650(&qword_100064F40, &unk_10004E1E8) + 36)];
    *v37 = v32;
    *(v37 + 1) = v34;
    *(v37 + 2) = v36;
    CGAffineTransformMakeTranslation(&v54, v27 * a9 + a7, v27 * a10 + a8);
    tx = v54.tx;
    ty = v54.ty;
    v52 = *&v54.c;
    v53 = *&v54.a;
    v40 = &v26[*(sub_100003650(&qword_100064F30, &qword_10004E1E0) + 36)];
    v41 = v52;
    *v40 = v53;
    *(v40 + 1) = v41;
    *(v40 + 4) = tx;
    *(v40 + 5) = ty;
    CGAffineTransformMakeTranslation(&v54, -a11, a11);
    v42 = *&v54.c;
    v43 = *&v54.tx;
    v44 = &v26[*(v22 + 36)];
    *v44 = *&v54.a;
    *(v44 + 1) = v42;
    *(v44 + 2) = v43;
    sub_10004C5C0();
    v45 = sub_10004C5F0();

    sub_100007C30(v26, a4, &qword_100064F20, &qword_10004E1D8);
    result = sub_100003650(&qword_100064EF8, &qword_10004E1D0);
    v46 = a4 + *(result + 36);
    *v46 = v45;
    __asm { FMOV            V0.2D, #1.0 }

    *(v46 + 8) = _Q0;
    *(v46 + 24) = 0x3FF0000000000000;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F04C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_10000B4F4(a1);
}

unint64_t sub_10000F090()
{
  result = qword_100064E70;
  if (!qword_100064E70)
  {
    sub_100003698(&qword_100064DE8, &qword_10004E0E8);
    sub_10000F11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064E70);
  }

  return result;
}

unint64_t sub_10000F11C()
{
  result = qword_100064E78;
  if (!qword_100064E78)
  {
    sub_100003698(&qword_100064E60, &qword_10004E160);
    sub_100003D30(&qword_100064E80, &qword_100064E88, &qword_10004E168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064E78);
  }

  return result;
}

unint64_t sub_10000F1D4()
{
  result = qword_100064E90;
  if (!qword_100064E90)
  {
    sub_100003698(&qword_100064E50, &qword_10004E150);
    sub_10000F260();
    sub_10000F348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064E90);
  }

  return result;
}

unint64_t sub_10000F260()
{
  result = qword_100064E98;
  if (!qword_100064E98)
  {
    sub_100003698(&qword_100064E48, &qword_10004E148);
    sub_10000F918(&qword_100064C18, type metadata accessor for AppIconContentView);
    sub_100003D30(&qword_100064EA0, &qword_100064E28, &qword_10004E128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064E98);
  }

  return result;
}

unint64_t sub_10000F348()
{
  result = qword_100064EA8;
  if (!qword_100064EA8)
  {
    sub_100003698(&qword_100064E08, &qword_10004E108);
    sub_100003D30(&qword_100064E68, &qword_100064E18, &qword_10004E118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064EA8);
  }

  return result;
}

unint64_t sub_10000F3F8()
{
  result = qword_100064EB0;
  if (!qword_100064EB0)
  {
    sub_100003698(&qword_100064DF8, &qword_10004E0F8);
    sub_100003D30(&qword_100064E68, &qword_100064E18, &qword_10004E118);
    sub_10000F090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064EB0);
  }

  return result;
}

uint64_t sub_10000F4B0(uint64_t a1)
{
  v2 = type metadata accessor for AppIconContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000F54C()
{
  result = qword_100064F00;
  if (!qword_100064F00)
  {
    sub_100003698(&qword_100064EF0, &qword_10004E1C8);
    sub_10000F5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F00);
  }

  return result;
}

unint64_t sub_10000F5D8()
{
  result = qword_100064F08;
  if (!qword_100064F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F08);
  }

  return result;
}

unint64_t sub_10000F62C()
{
  result = qword_100064F10;
  if (!qword_100064F10)
  {
    sub_100003698(&qword_100064EF8, &qword_10004E1D0);
    sub_10000F6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F10);
  }

  return result;
}

unint64_t sub_10000F6B8()
{
  result = qword_100064F18;
  if (!qword_100064F18)
  {
    sub_100003698(&qword_100064F20, &qword_10004E1D8);
    sub_10000F744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F18);
  }

  return result;
}

unint64_t sub_10000F744()
{
  result = qword_100064F28;
  if (!qword_100064F28)
  {
    sub_100003698(&qword_100064F30, &qword_10004E1E0);
    sub_10000F7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F28);
  }

  return result;
}

unint64_t sub_10000F7D0()
{
  result = qword_100064F38;
  if (!qword_100064F38)
  {
    sub_100003698(&qword_100064F40, &unk_10004E1E8);
    sub_10000F85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F38);
  }

  return result;
}

unint64_t sub_10000F85C()
{
  result = qword_100064F48;
  if (!qword_100064F48)
  {
    sub_100003698(&qword_100064888, &qword_10004DB10);
    sub_10000F918(&qword_100064808, type metadata accessor for AppIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F48);
  }

  return result;
}

uint64_t sub_10000F918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIcon(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F9C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_10000FA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000FA8C()
{
  result = qword_100064F80;
  if (!qword_100064F80)
  {
    sub_100003698(&qword_100064F88, &unk_10004E228);
    sub_10000F1D4();
    sub_10000F3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F80);
  }

  return result;
}

uint64_t sub_10000FB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_100064F90, qword_10004E280);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100064F98, qword_10004E520);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10000FC84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003650(&qword_100064F90, qword_10004E280);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100003650(&qword_100064F98, qword_10004E520);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for PlaceholderTodayCardView()
{
  result = qword_100064FF8;
  if (!qword_100064FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000FDF4()
{
  sub_10000FEC8(319, &qword_100065008, &type metadata accessor for ContentSizeCategory);
  if (v0 <= 0x3F)
  {
    sub_10000FEC8(319, &qword_100065010, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      sub_10000FF1C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000FEC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004BF10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000FF1C()
{
  if (!qword_100065018)
  {
    v0 = sub_10004CEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100065018);
    }
  }
}

uint64_t sub_10000FF88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003650(&qword_100065080, &qword_10004E3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100003E3C(v2, &v17 - v11, &qword_100065080, &qword_10004E3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004C270();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100010188@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for PlaceholderTodayCardView();
  sub_100003E3C(v1 + *(v12 + 20), v11, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004CB70();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100010390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v119 = sub_10004C020();
  v118 = *(v119 - 8);
  v3 = *(v118 + 64);
  __chkstk_darwin(v119);
  v117 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for CardDetailView.Heading(0);
  v5 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v110 = (&v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = type metadata accessor for CardDetailView(0);
  v7 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v9 = (&v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_100003650(&qword_100065058, &qword_10004E328);
  v114 = *(v115 - 8);
  v10 = *(v114 + 64);
  __chkstk_darwin(v115);
  v113 = &v101 - v11;
  v128 = sub_100003650(&qword_100065060, &qword_10004E330);
  v127 = *(v128 - 8);
  v12 = *(v127 + 64);
  v13 = __chkstk_darwin(v128);
  v112 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v111 = &v101 - v15;
  v121 = sub_10004C270();
  v132 = *(v121 - 8);
  v16 = *(v132 + 64);
  v17 = __chkstk_darwin(v121);
  v131 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v130 = &v101 - v19;
  v105 = sub_10004CB70();
  v104 = *(v105 - 8);
  v20 = *(v104 + 64);
  v21 = __chkstk_darwin(v105);
  v103 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v102 = &v101 - v23;
  v24 = sub_100003650(&qword_100065068, &qword_10004E338);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v126 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v125 = &v101 - v28;
  v29 = type metadata accessor for TitleView();
  v30 = *(*(v29 - 1) + 64);
  __chkstk_darwin(v29);
  v32 = (&v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = sub_100003650(&qword_100065070, &qword_10004E340);
  v33 = *(*(v120 - 8) + 64);
  v34 = __chkstk_darwin(v120);
  v124 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v101 - v37;
  __chkstk_darwin(v36);
  v123 = &v101 - v39;
  v40 = (a1 + *(type metadata accessor for PlaceholderTodayCardView() + 24));
  v41 = v40[1];
  v122 = a1;
  if (v41)
  {
    v42 = v40[3];
    v43 = *(v40 + 4);
    v44 = *v40;
  }

  else
  {
    sub_10004C210();
  }

  v45 = sub_10004C500();
  v47 = v46;
  v49 = v48;
  v51 = v50 & 1;
  *v32 = swift_getKeyPath();
  v108 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  *(v32 + v29[5]) = swift_getKeyPath();
  v107 = sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  *(v32 + v29[6]) = swift_getKeyPath();
  v106 = sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  v52 = (v32 + v29[7]);
  *v52 = v45;
  v52[1] = v47;
  v52[2] = v51;
  v52[3] = v49;
  *(v32 + v29[8]) = 1;
  sub_100011AD4(v32, v38, type metadata accessor for TitleView);
  *&v38[*(v120 + 36)] = 0x3FF0000000000000;
  v53 = v123;
  sub_10001122C(v38, v123);
  sub_10004C720();
  sub_10004C040();
  *&v133[55] = v138;
  *&v133[71] = v139;
  *&v133[87] = v140;
  *&v133[103] = v141;
  *&v133[7] = v135;
  *&v133[23] = v136;
  v134 = 1;
  *&v133[39] = v137;
  v54 = v121;
  if (!v41)
  {
    goto LABEL_7;
  }

  v55 = v53;
  v56 = v102;
  sub_100010188(v102);
  v57 = v104;
  v58 = v103;
  v59 = v105;
  (*(v104 + 104))(v103, enum case for WidgetFamily.systemSmall(_:), v105);
  sub_100011D48(&qword_100065098, &type metadata accessor for WidgetFamily);
  v60 = sub_10004CD00();
  v61 = *(v57 + 8);
  v61(v58, v59);
  v62 = v56;
  v53 = v55;
  v61(v62, v59);
  if ((v60 & 1) == 0)
  {
    goto LABEL_7;
  }

  v63 = v130;
  sub_10000FF88(v130);
  v64 = v132;
  v65 = v131;
  (*(v132 + 104))(v131, enum case for ContentSizeCategory.large(_:), v54);
  v66 = sub_10001129C(v63, v65);
  v67 = *(v64 + 8);
  v67(v65, v54);
  v67(v63, v54);
  if (!v66)
  {
    v91 = 1;
    v87 = v128;
    v90 = v125;
  }

  else
  {
LABEL_7:
    v68 = v110;
    *v110 = 0xD000000000000011;
    *(v68 + 8) = 0x800000010005A0E0;
    swift_storeEnumTagMultiPayload();
    v69 = v130;
    sub_10000FF88(v130);
    v70 = v132;
    v71 = v131;
    (*(v132 + 104))(v131, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v54);
    v72 = sub_1000116B4(v69, v71);
    v73 = *(v70 + 8);
    v73(v71, v54);
    v73(v69, v54);
    v74 = !v72;
    if (v72)
    {
      v75 = 0x656E696C20656E4FLL;
    }

    else
    {
      v75 = 0xD000000000000024;
    }

    if (v74)
    {
      v76 = 0x800000010005A100;
    }

    else
    {
      v76 = 0xEE00656C74697420;
    }

    *v9 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v78 = v116;
    *(v9 + *(v116 + 20)) = KeyPath;
    swift_storeEnumTagMultiPayload();
    *(v9 + v78[6]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v79 = v78[7];
    *(v9 + v79) = swift_getKeyPath();
    sub_100003650(&qword_100064960, &qword_10004DC30);
    swift_storeEnumTagMultiPayload();
    sub_100011AD4(v68, v9 + v78[8], type metadata accessor for CardDetailView.Heading);
    v80 = v9 + v78[9];
    *v80 = sub_100021D20;
    *(v80 + 1) = 0;
    v80[16] = 0;
    v81 = (v9 + v78[10]);
    *v81 = v75;
    v81[1] = v76;
    v82 = v9 + v78[11];
    *v82 = sub_100021D20;
    *(v82 + 1) = 0;
    v82[16] = 0;
    *(v9 + v78[12]) = 0x8000000000000000;
    *(v9 + v78[13]) = 0x7FF0000000000000;
    v83 = (v9 + v78[14]);
    *v83 = xmmword_10004E260;
    v83[1] = xmmword_10004E270;
    v84 = v117;
    sub_10004C010();
    sub_100011D48(&qword_100065088, type metadata accessor for CardDetailView);
    v85 = v113;
    sub_10004C5A0();
    (*(v118 + 8))(v84, v119);
    sub_100011B3C(v9);
    v86 = v112;
    (*(v114 + 32))(v112, v85, v115);
    v87 = v128;
    *&v86[*(v128 + 36)] = 0x4000000000000000;
    v88 = v86;
    v89 = v111;
    sub_100011B98(v88, v111);
    v90 = v125;
    sub_100011B98(v89, v125);
    v91 = 0;
  }

  (*(v127 + 56))(v90, v91, 1, v87);
  v92 = v124;
  sub_100003E3C(v53, v124, &qword_100065070, &qword_10004E340);
  v93 = v126;
  sub_100011C08(v90, v126);
  v94 = v129;
  sub_100003E3C(v92, v129, &qword_100065070, &qword_10004E340);
  v95 = sub_100003650(&qword_100065090, &qword_10004E428);
  v96 = v94 + *(v95 + 48);
  v97 = *&v133[80];
  *(v96 + 73) = *&v133[64];
  *(v96 + 89) = v97;
  *(v96 + 105) = *&v133[96];
  v98 = *&v133[16];
  *(v96 + 9) = *v133;
  *(v96 + 25) = v98;
  v99 = *&v133[48];
  *(v96 + 41) = *&v133[32];
  *v96 = 0;
  *(v96 + 8) = 1;
  *(v96 + 120) = *&v133[111];
  *(v96 + 57) = v99;
  sub_100011C08(v93, v94 + *(v95 + 64));
  sub_100011C78(v90);
  sub_100011CE0(v53);
  sub_100011C78(v93);
  return sub_100011CE0(v92);
}

uint64_t sub_1000111C4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10004C290();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100003650(&qword_100065050, &qword_10004E320);
  return sub_100010390(v1, a1 + *(v3 + 44));
}

uint64_t sub_10001122C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065070, &qword_10004E340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_10001129C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_10004C270();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
}

BOOL sub_1000116B4(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_10004C270();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
}

uint64_t sub_100011AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100011B3C(uint64_t a1)
{
  v2 = type metadata accessor for CardDetailView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065060, &qword_10004E330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065068, &qword_10004E338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011C78(uint64_t a1)
{
  v2 = sub_100003650(&qword_100065068, &qword_10004E338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011CE0(uint64_t a1)
{
  v2 = sub_100003650(&qword_100065070, &qword_10004E340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011D48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100011D94()
{
  result = qword_1000650A0;
  if (!qword_1000650A0)
  {
    sub_100003698(&qword_1000650A8, &unk_10004E430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000650A0);
  }

  return result;
}

uint64_t sub_100011DF8(uint64_t a1, char a2)
{
  if (a2)
  {
    v11[3] = sub_10004BD00();
    v11[4] = sub_1000121C4();
    sub_100007BCC(v11);

    sub_10004BCF0();
    sub_10001221C(v11, &v8);
    sub_100012280(&v8, v9);
    if (sub_10004BC60())
    {
      sub_1000122C4(&v8, v7);
      v2 = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = _swiftEmptyArrayStorage;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100026A7C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        v2 = v10;
      }

      v5 = v2[2];
      v4 = v2[3];
      if (v5 >= v4 >> 1)
      {
        sub_100026A7C((v4 > 1), v5 + 1, 1);
        v2 = v10;
      }

      v2[2] = v5 + 1;
      sub_1000122C4(v7, &v2[5 * v5 + 4]);
    }

    else
    {
      sub_100007B80(&v8);
      v2 = _swiftEmptyArrayStorage;
    }

    sub_100007B80(v11);
    return v2;
  }

  else
  {
    result = sub_10004CF80();
    __break(1u);
  }

  return result;
}

Swift::Int OnboardingConfiguration.hashValue.getter(unsigned __int8 a1)
{
  sub_10004D060();
  sub_10004D070(a1);
  return sub_10004D0A0();
}

unint64_t sub_100012020()
{
  result = qword_1000650B0;
  if (!qword_1000650B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000650B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000121C4()
{
  result = qword_1000650B8;
  if (!qword_1000650B8)
  {
    sub_10004BD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000650B8);
  }

  return result;
}

uint64_t sub_10001221C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100012280(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000122C4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000122DC()
{
  sub_100003650(&qword_1000650C0, &qword_10004E508);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10004E4F0;
  sub_1000129C0();
  sub_10004CE80(0.10773, 0.78429, 0.98851, 1.0);
  *(v0 + 32) = sub_10004C5B0();
  sub_10004CE80(0.11167, 0.44028, 0.94921, 1.0);
  *(v0 + 40) = sub_10004C5B0();
  result = sub_10004C6D0();
  qword_100068DC8 = result;
  return result;
}

uint64_t sub_1000123B8()
{
  sub_100003650(&qword_1000650C0, &qword_10004E508);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10004E4F0;
  sub_1000129C0();
  sub_10004CE80(0.10196, 0.76078, 0.96078, 1.0);
  *(v0 + 32) = sub_10004C5B0();
  sub_10004CE80(0.1098, 0.40784, 0.88627, 1.0);
  *(v0 + 40) = sub_10004C5B0();
  result = sub_10004C6D0();
  qword_100068DD8 = result;
  return result;
}

uint64_t sub_100012494(uint64_t a1, uint64_t *a2)
{
  sub_100003650(&qword_1000650C0, &qword_10004E508);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10004E4F0;
  sub_1000129C0();
  isa = sub_10004CE80(1.0, 1.0, 1.0, 1.0).super.isa;
  v5 = [(objc_class *)isa colorWithAlphaComponent:0.2];

  *(v3 + 32) = sub_10004C5B0();
  v6 = sub_10004CE80(1.0, 1.0, 1.0, 1.0).super.isa;
  v7 = [(objc_class *)v6 colorWithAlphaComponent:0.0];

  *(v3 + 40) = sub_10004C5B0();
  result = sub_10004C6D0();
  *a2 = result;
  return result;
}

uint64_t sub_100012594()
{
  sub_100003650(&qword_1000650C0, &qword_10004E508);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10004E4F0;
  sub_10004C5C0();
  v1 = sub_10004C5F0();

  *(v0 + 32) = v1;
  sub_10004C5C0();
  v2 = sub_10004C5F0();

  *(v0 + 40) = v2;
  result = sub_10004C6D0();
  qword_100068DE8 = result;
  return result;
}

double sub_10001263C()
{
  if (qword_1000646B0 != -1)
  {
    swift_once();
  }

  sub_10004C780();
  sub_10004C7A0();
  sub_10004BFD0();
  result = *&v1;
  xmmword_100068DF0 = v1;
  unk_100068E00 = v2;
  qword_100068E10 = v3;
  return result;
}

double sub_1000126F0()
{
  if (qword_1000646B8 != -1)
  {
    swift_once();
  }

  sub_10004C780();
  sub_10004C7A0();
  sub_10004BFD0();
  result = *&v1;
  xmmword_100068E18 = v1;
  *algn_100068E28 = v2;
  qword_100068E38 = v3;
  return result;
}

double sub_1000127A4()
{
  if (qword_1000646C0 != -1)
  {
    swift_once();
  }

  sub_10004C780();
  sub_10004C7A0();
  sub_10004BFD0();
  result = *&v1;
  xmmword_100068E40 = v1;
  unk_100068E50 = v2;
  qword_100068E60 = v3;
  return result;
}

double sub_100012858()
{
  if (qword_1000646C8 != -1)
  {
    swift_once();
  }

  sub_10004C780();
  sub_10004C7A0();
  sub_10004BFD0();
  result = *&v1;
  xmmword_100068E68 = v1;
  *algn_100068E78 = v2;
  qword_100068E88 = v3;
  return result;
}

double sub_10001290C()
{
  if (qword_1000646D0 != -1)
  {
    swift_once();
  }

  sub_10004C780();
  sub_10004C7A0();
  sub_10004BFD0();
  result = *&v1;
  xmmword_100068E90 = v1;
  unk_100068EA0 = v2;
  qword_100068EB0 = v3;
  return result;
}

unint64_t sub_1000129C0()
{
  result = qword_100064DC8;
  if (!qword_100064DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100064DC8);
  }

  return result;
}

uint64_t sub_100012A20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100064F90, qword_10004E280);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100012BBC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003650(&qword_100064F98, qword_10004E520);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100003650(&qword_100064F90, qword_10004E280);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_100003650(&qword_1000648A8, qword_10004DB30);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 24) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for TitleView()
{
  result = qword_100065120;
  if (!qword_100065120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012D80()
{
  sub_100012E90(319, &qword_100065010, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_100012E90(319, &qword_100065008, &type metadata accessor for ContentSizeCategory);
    if (v1 <= 0x3F)
    {
      sub_100012E90(319, &qword_100064918, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_100012EE4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100012E90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004BF10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100012EE4()
{
  if (!qword_100065130)
  {
    v0 = sub_10004CEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100065130);
    }
  }
}

unint64_t sub_100012F48()
{
  result = qword_100065170;
  if (!qword_100065170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065170);
  }

  return result;
}

uint64_t sub_100012F9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100003E3C(v2, &v17 - v11, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004CB70();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001319C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100065080, &qword_10004E3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TitleView();
  sub_100003E3C(v1 + *(v12 + 20), v11, &qword_100065080, &qword_10004E3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004C270();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1000133A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100064958, &qword_10004FA30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TitleView();
  sub_100003E3C(v1 + *(v12 + 24), v11, &qword_100064958, &qword_10004FA30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004BF00();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1000135AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  LODWORD(v131) = a7;
  KeyPath = a6;
  v125 = a5;
  v122 = a3;
  v129 = a1;
  v130 = a2;
  v134 = a8;
  v9 = sub_10004CB70();
  v128 = *(v9 - 8);
  v10 = *(v128 + 64);
  __chkstk_darwin(v9);
  v124 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100003650(&qword_100065220, &qword_10004E700);
  v12 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v14 = &v106 - v13;
  v116 = sub_100003650(&qword_100065228, &qword_10004E708);
  v15 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v118 = &v106 - v16;
  v117 = sub_100003650(&qword_100065230, &qword_10004E710);
  v17 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v115 = &v106 - v18;
  v19 = sub_100003650(&qword_100065238, &qword_10004E718);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v119 = &v106 - v21;
  v132 = sub_100003650(&qword_100065240, &qword_10004E720);
  v22 = *(*(v132 - 8) + 64);
  v23 = __chkstk_darwin(v132);
  v120 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v121 = &v106 - v25;
  v26 = sub_100003650(&qword_100065248, &qword_10004E728);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v106 - v28;
  v127 = type metadata accessor for DynamicTypeFont();
  v30 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v32 = (&v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_100003650(&qword_100065250, &unk_10004E730);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v126 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v123 = &v106 - v37;
  v112 = sub_100003650(&qword_100065258, &qword_100050430);
  v38 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v40 = &v106 - v39;
  v113 = sub_100003650(&qword_100065260, &qword_10004E740);
  v41 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v43 = &v106 - v42;
  v133 = sub_100003650(&qword_100065268, &qword_10004E748);
  v44 = *(*(v133 - 8) + 64);
  v45 = __chkstk_darwin(v133);
  v47 = &v106 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v49 = &v106 - v48;
  if (v131)
  {
    if (a4)
    {
      v50 = a4;
      v111 = v26;
      v131 = v29;
      v51 = enum case for WidgetFamily.systemSmall(_:);
      v52 = v128;
      v53 = v124;
      v107 = *(v128 + 104);
      v107(v124, enum case for WidgetFamily.systemSmall(_:), v9);
      LODWORD(v122) = v122 & 1;
      sub_100015B80(v129, v130, v122);
      sub_100015B90(&qword_100065328, &type metadata accessor for WidgetFamily);
      v113 = v50;

      sub_10004CD40();
      sub_10004CD40();
      v54 = *(v52 + 8);
      v128 = v52 + 8;
      v54(v53, v9);
      if (v136 == v135)
      {
        v55 = sub_10004C260();
        v56 = 4;
        if (v55)
        {
          v56 = 5;
        }
      }

      else
      {
        v56 = 3;
      }

      v112 = v56;
      KeyPath = swift_getKeyPath();
      v109 = swift_getKeyPath();
      v138 = v122;
      v137 = 0;
      v108 = swift_getKeyPath();
      v79 = v124;
      v107(v124, v51, v9);
      sub_10004CD40();
      sub_10004CD40();
      v54(v79, v9);
      if (v136 == v135)
      {
        v80 = sub_10004C490();
      }

      else
      {
        v80 = sub_10004C3D0();
      }

      v81 = v80;
      v82 = enum case for ContentSizeCategory.accessibilityMedium(_:);
      v83 = sub_10004C270();
      v84 = *(v83 - 8);
      v85 = v123;
      (*(v84 + 104))(v123, v82, v83);
      v86 = *(v84 + 56);
      v86(v85, 0, 1, v83);
      v87 = v126;
      sub_100007C30(v85, v126, &qword_100065250, &unk_10004E730);
      *v32 = swift_getKeyPath();
      sub_100003650(&qword_100065078, &qword_10004E9D0);
      swift_storeEnumTagMultiPayload();
      v88 = v127;
      v89 = *(v127 + 20);
      *(v32 + v89) = swift_getKeyPath();
      sub_100003650(&qword_100065080, &qword_10004E3B0);
      swift_storeEnumTagMultiPayload();
      v90 = *(v88 + 28);
      v86(v32 + v90, 1, 1, v83);
      *(v32 + *(v88 + 24)) = v81;
      sub_100015C48(v87, v32 + v90);
      sub_100015CB8(v32, &v14[*(v114 + 36)]);
      v91 = v130;
      *v14 = v129;
      *(v14 + 1) = v91;
      v14[16] = v122;
      v92 = KeyPath;
      *(v14 + 3) = v113;
      *(v14 + 4) = v92;
      *(v14 + 5) = v112;
      v14[48] = 0;
      *(v14 + 7) = v109;
      v14[64] = 0;
      *(v14 + 9) = v108;
      *(v14 + 10) = 0x3FECCCCCCCCCCCCDLL;
      sub_100015D1C(v32);
      v93 = v118;
      sub_100007C30(v14, v118, &qword_100065220, &qword_10004E700);
      *(v93 + *(v116 + 36)) = 256;
      v94 = sub_10004C610();
      v95 = swift_getKeyPath();
      v96 = v93;
      v97 = v115;
      sub_100007C30(v96, v115, &qword_100065228, &qword_10004E708);
      v98 = (v97 + *(v117 + 36));
      *v98 = v95;
      v98[1] = v94;
      v99 = v119;
      sub_100007C30(v97, v119, &qword_100065230, &qword_10004E710);
      v100 = sub_100003650(&qword_100065270, &qword_10004E750);
      v101 = *(v100 + 36);
      v102 = enum case for BlendMode.plusLighter(_:);
      v103 = sub_10004C740();
      v104 = &v120[v101];
      v76 = v120;
      (*(*(v103 - 8) + 104))(v104, v102, v103);
      sub_100007C30(v99, v76, &qword_100065238, &qword_10004E718);
      (*(*(v100 - 8) + 56))(v76, 0, 1, v100);
      v29 = v131;
    }

    else
    {
      v75 = sub_100003650(&qword_100065270, &qword_10004E750);
      v76 = v120;
      (*(*(v75 - 8) + 56))(v120, 1, 1, v75);
    }

    v105 = v121;
    sub_100007C30(v76, v121, &qword_100065240, &qword_10004E720);
    sub_100003E3C(v105, v29, &qword_100065240, &qword_10004E720);
    swift_storeEnumTagMultiPayload();
    sub_1000153E8();
    sub_100015598();
    sub_10004C320();
    return sub_100003EA4(v105, &qword_100065240, &qword_10004E720);
  }

  else
  {
    if (a4)
    {
      sub_10004C420();
      LOBYTE(v136) = v122 & 1;
      v57 = sub_10004C4C0();
      v128 = v58;
      v129 = v57;
      LODWORD(v125) = v59;
      v130 = v60;
      v124 = sub_10004C450();
      v61 = enum case for ContentSizeCategory.accessibilityMedium(_:);
      v62 = sub_10004C270();
      v63 = *(v62 - 8);
      v111 = v26;
      v64 = v63;
      v65 = v123;
      (*(v63 + 104))(v123, v61, v62);
      v122 = *(v64 + 56);
      v122(v65, 0, 1, v62);
      v66 = v126;
      sub_100007C30(v65, v126, &qword_100065250, &unk_10004E730);
      *v32 = swift_getKeyPath();
      sub_100003650(&qword_100065078, &qword_10004E9D0);
      swift_storeEnumTagMultiPayload();
      v131 = v29;
      v67 = v127;
      v68 = *(v127 + 20);
      *(v32 + v68) = swift_getKeyPath();
      sub_100003650(&qword_100065080, &qword_10004E3B0);
      swift_storeEnumTagMultiPayload();
      v69 = *(v67 + 28);
      v122(v32 + v69, 1, 1, v62);
      *(v32 + *(v67 + 24)) = v124;
      v29 = v131;
      sub_100015C48(v66, v32 + v69);
      sub_100015CB8(v32, &v40[*(v112 + 36)]);
      v70 = v128;
      *v40 = v129;
      *(v40 + 1) = v70;
      v40[16] = v125 & 1;
      *(v40 + 3) = v130;
      sub_100015D1C(v32);
      v71 = sub_10004C600();
      v72 = swift_getKeyPath();
      sub_100007C30(v40, v43, &qword_100065258, &qword_100050430);
      v73 = &v43[*(v113 + 36)];
      *v73 = v72;
      v73[1] = v71;
      sub_100015760(&qword_100065280, &qword_100065260, &qword_10004E740, sub_1000154DC);
      sub_10004C550();
      sub_100003EA4(v43, &qword_100065260, &qword_10004E740);
      v74 = sub_100003650(&qword_100065330, &qword_10004E888);
      (*(*(v74 - 8) + 56))(v47, 0, 1, v74);
    }

    else
    {
      v77 = sub_100003650(&qword_100065330, &qword_10004E888);
      (*(*(v77 - 8) + 56))(v47, 1, 1, v77);
    }

    sub_100007C30(v47, v49, &qword_100065268, &qword_10004E748);
    sub_100003E3C(v49, v29, &qword_100065268, &qword_10004E748);
    swift_storeEnumTagMultiPayload();
    sub_1000153E8();
    sub_100015598();
    sub_10004C320();
    return sub_100003EA4(v49, &qword_100065268, &qword_10004E748);
  }
}

uint64_t sub_100014490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_100003650(&qword_100065180, &qword_10004E620);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = (&v46 - v7);
  v8 = sub_10004C270();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004CB70();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003650(&qword_100065188, &qword_10004E628);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16);
  v48 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v46 - v21;
  v23 = type metadata accessor for TitleView();
  v24 = *(v23 + 28);
  v25 = *(a1 + *(v23 + 32));
  v26 = *(a1 + v24);
  v27 = *(a1 + v24 + 8);
  v29 = *(a1 + v24 + 16);
  v28 = *(a1 + v24 + 24);
  sub_100012F9C(v15);
  sub_10001319C(v11);
  sub_1000135AC(v26, v27, v29, v28, v15, v11, v25, v22);
  (*(v49 + 8))(v11, v50);
  (*(v46 + 8))(v15, v47);
  v30 = sub_10004C3A0();
  v31 = &v22[*(v17 + 44)];
  *v31 = v30;
  __asm { FMOV            V0.2D, #16.0 }

  *(v31 + 8) = _Q0;
  *(v31 + 3) = 0;
  *(v31 + 4) = 0;
  v31[40] = 0;
  v37 = sub_10004C2A0();
  v38 = v51;
  *v51 = v37;
  *(v38 + 8) = 0;
  *(v38 + 16) = 1;
  v39 = sub_100003650(&qword_100065190, &qword_10004E630);
  sub_100014870(a1, v38 + *(v39 + 44));
  v40 = v48;
  sub_100003E3C(v22, v48, &qword_100065188, &qword_10004E628);
  v41 = v52;
  sub_100003E3C(v38, v52, &qword_100065180, &qword_10004E620);
  v42 = v53;
  sub_100003E3C(v40, v53, &qword_100065188, &qword_10004E628);
  v43 = sub_100003650(&qword_100065198, &qword_10004E638);
  v44 = v42 + *(v43 + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_100003E3C(v41, v42 + *(v43 + 64), &qword_100065180, &qword_10004E620);
  sub_100003EA4(v38, &qword_100065180, &qword_10004E620);
  sub_100003EA4(v22, &qword_100065188, &qword_10004E628);
  sub_100003EA4(v41, &qword_100065180, &qword_10004E620);
  return sub_100003EA4(v40, &qword_100065188, &qword_10004E628);
}

uint64_t sub_100014870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v75 = sub_10004BF00();
  v72 = *(v75 - 8);
  v3 = *(v72 + 64);
  v4 = __chkstk_darwin(v75);
  v70 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = &v55 - v6;
  v7 = sub_100003650(&qword_1000651A0, &qword_10004E640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v55 - v9;
  v11 = sub_100003650(&qword_1000651A8, &qword_10004E648);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v55 - v13;
  v71 = sub_100003650(&qword_1000651B0, &qword_10004E650);
  v69 = *(v71 - 8);
  v15 = *(v69 + 64);
  __chkstk_darwin(v71);
  v17 = &v55 - v16;
  v68 = sub_100003650(&qword_1000651B8, &qword_10004E658);
  v18 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v64 = &v55 - v19;
  v67 = sub_100003650(&qword_1000651C0, &qword_10004E660);
  v63 = *(v67 - 8);
  v20 = *(v63 + 64);
  __chkstk_darwin(v67);
  v62 = &v55 - v21;
  v61 = sub_100003650(&qword_1000651C8, &qword_10004E668);
  v22 = *(*(v61 - 8) + 64);
  v23 = __chkstk_darwin(v61);
  v73 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v60 = &v55 - v26;
  __chkstk_darwin(v25);
  v66 = &v55 - v27;
  sub_10004C720();
  sub_10004BF90();
  v59 = v81;
  v58 = v83;
  v57 = v85;
  v56 = v86;
  v89 = 1;
  v88 = v82;
  v87 = v84;
  sub_10004C650();
  v28 = enum case for Image.TemplateRenderingMode.template(_:);
  v29 = sub_10004C660();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v14, v28, v29);
  (*(v30 + 56))(v14, 0, 1, v29);
  v31 = sub_10004C640();

  sub_100003EA4(v14, &qword_1000651A8, &qword_10004E648);
  sub_10004C420();
  v32 = sub_10004C410();
  (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
  v33 = sub_10004C430();
  sub_100003EA4(v10, &qword_1000651A0, &qword_10004E640);
  KeyPath = swift_getKeyPath();
  v35 = sub_10004C600();
  v36 = swift_getKeyPath();
  v76 = v31;
  v77 = KeyPath;
  v78 = v33;
  v79 = v36;
  v80 = v35;
  sub_100003650(&qword_1000651D0, &qword_10004E6D0);
  sub_100015760(&qword_1000651D8, &qword_1000651D0, &qword_10004E6D0, sub_100015234);
  sub_10004C510();

  v37 = v65;
  sub_1000133A4(v65);
  v38 = v72;
  v39 = v70;
  v40 = v75;
  (*(v72 + 104))(v70, enum case for ColorScheme.dark(_:), v75);
  LOBYTE(v10) = sub_10004BEF0();
  v41 = *(v38 + 8);
  v41(v39, v40);
  v41(v37, v40);
  if (v10)
  {
    sub_10004C5C0();
    v42 = sub_10004C5F0();
  }

  else
  {
    v42 = sub_10004C5D0();
  }

  v43 = v64;
  (*(v69 + 32))(v64, v17, v71);
  v44 = v43 + *(v68 + 36);
  *v44 = v42;
  *(v44 + 8) = xmmword_10004E510;
  *(v44 + 24) = 0x3FF0000000000000;
  sub_1000152EC();
  v45 = v62;
  sub_10004C550();
  sub_100003EA4(v43, &qword_1000651B8, &qword_10004E658);
  v46 = sub_10004C2A0();
  v47 = v60;
  (*(v63 + 32))(v60, v45, v67);
  v48 = (v47 + *(v61 + 36));
  *v48 = v46;
  v48[1] = sub_1000150F8;
  v48[2] = 0;
  v49 = v66;
  sub_100007C30(v47, v66, &qword_1000651C8, &qword_10004E668);
  LOBYTE(v47) = v89;
  LOBYTE(v45) = v88;
  v50 = v87;
  v51 = v73;
  sub_100003E3C(v49, v73, &qword_1000651C8, &qword_10004E668);
  *a2 = 0;
  *(a2 + 8) = v47;
  *(a2 + 16) = v59;
  *(a2 + 24) = v45;
  *(a2 + 32) = v58;
  *(a2 + 40) = v50;
  v52 = v56;
  *(a2 + 48) = v57;
  *(a2 + 56) = v52;
  v53 = sub_100003650(&qword_100065218, &unk_10004E6F0);
  sub_100003E3C(v51, a2 + *(v53 + 48), &qword_1000651C8, &qword_10004E668);
  sub_100003EA4(v49, &qword_1000651C8, &qword_10004E668);
  return sub_100003EA4(v51, &qword_1000651C8, &qword_10004E668);
}

double sub_1000150F8()
{
  sub_10004C280();
  sub_10004BFF0();
  return v0 + 26.0;
}

uint64_t sub_100015128@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10004C1A0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100003650(&qword_100065178, &qword_10004E618);
  return sub_100014490(v1, a1 + *(v3 + 44));
}

uint64_t sub_10001517C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004C110();
  *a1 = result;
  return result;
}

uint64_t sub_1000151A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004C110();
  *a1 = result;
  return result;
}

uint64_t sub_1000151D4(uint64_t *a1)
{
  v1 = *a1;

  return sub_10004C120();
}

uint64_t sub_100015200(uint64_t *a1)
{
  v1 = *a1;

  return sub_10004C120();
}

unint64_t sub_100015234()
{
  result = qword_1000651E0;
  if (!qword_1000651E0)
  {
    sub_100003698(&qword_1000651E8, &qword_10004E6D8);
    sub_100003D30(&qword_1000651F0, &qword_1000651F8, &qword_10004E6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000651E0);
  }

  return result;
}

unint64_t sub_1000152EC()
{
  result = qword_100065210;
  if (!qword_100065210)
  {
    sub_100003698(&qword_1000651B8, &qword_10004E658);
    sub_100003698(&qword_1000651D0, &qword_10004E6D0);
    sub_100015760(&qword_1000651D8, &qword_1000651D0, &qword_10004E6D0, sub_100015234);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065210);
  }

  return result;
}

unint64_t sub_1000153E8()
{
  result = qword_100065278;
  if (!qword_100065278)
  {
    sub_100003698(&qword_100065268, &qword_10004E748);
    sub_100003698(&qword_100065260, &qword_10004E740);
    sub_100015760(&qword_100065280, &qword_100065260, &qword_10004E740, sub_1000154DC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065278);
  }

  return result;
}

unint64_t sub_1000154DC()
{
  result = qword_100065288;
  if (!qword_100065288)
  {
    sub_100003698(&qword_100065258, &qword_100050430);
    sub_100015B90(&qword_100065290, type metadata accessor for DynamicTypeFont);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065288);
  }

  return result;
}

unint64_t sub_100015598()
{
  result = qword_100065298;
  if (!qword_100065298)
  {
    sub_100003698(&qword_100065240, &qword_10004E720);
    sub_10001561C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065298);
  }

  return result;
}

unint64_t sub_10001561C()
{
  result = qword_1000652A0;
  if (!qword_1000652A0)
  {
    sub_100003698(&qword_100065270, &qword_10004E750);
    sub_1000156A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652A0);
  }

  return result;
}

unint64_t sub_1000156A8()
{
  result = qword_1000652A8;
  if (!qword_1000652A8)
  {
    sub_100003698(&qword_100065238, &qword_10004E718);
    sub_100015760(&qword_1000652B0, &qword_100065230, &qword_10004E710, sub_100015810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652A8);
  }

  return result;
}

uint64_t sub_100015760(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003698(a2, a3);
    a4();
    sub_100003D30(&qword_100065200, &qword_100065208, &qword_10004E6E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100015810()
{
  result = qword_1000652B8;
  if (!qword_1000652B8)
  {
    sub_100003698(&qword_100065228, &qword_10004E708);
    sub_10001589C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652B8);
  }

  return result;
}

unint64_t sub_10001589C()
{
  result = qword_1000652C0;
  if (!qword_1000652C0)
  {
    sub_100003698(&qword_100065220, &qword_10004E700);
    sub_100015958();
    sub_100015B90(&qword_100065290, type metadata accessor for DynamicTypeFont);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652C0);
  }

  return result;
}

unint64_t sub_100015958()
{
  result = qword_1000652C8;
  if (!qword_1000652C8)
  {
    sub_100003698(&qword_1000652D0, &qword_10004E758);
    sub_100015A10();
    sub_100003D30(&qword_100065318, &qword_100065320, &qword_10004E780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652C8);
  }

  return result;
}

unint64_t sub_100015A10()
{
  result = qword_1000652D8;
  if (!qword_1000652D8)
  {
    sub_100003698(&qword_1000652E0, &qword_10004E760);
    sub_100015AC8();
    sub_100003D30(&qword_100065308, &qword_100065310, &qword_10004E778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652D8);
  }

  return result;
}

unint64_t sub_100015AC8()
{
  result = qword_1000652E8;
  if (!qword_1000652E8)
  {
    sub_100003698(&qword_1000652F0, &qword_10004E768);
    sub_100003D30(&qword_1000652F8, &qword_100065300, &qword_10004E770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652E8);
  }

  return result;
}

uint64_t sub_100015B80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100015B90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100015BE8@<X0>(void *a1@<X8>)
{
  result = sub_10004C0D0();
  *a1 = v3;
  return result;
}

uint64_t sub_100015C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065250, &unk_10004E730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicTypeFont();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015D1C(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeFont();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100064F90, qword_10004E280);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100015F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003650(&qword_100064F98, qword_10004E520);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100003650(&qword_100064F90, qword_10004E280);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for TodayWidgetFallbackEntryView()
{
  result = qword_1000653A0;
  if (!qword_1000653A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001607C()
{
  sub_100016140(319, &qword_100065010, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_100016140(319, &qword_100065008, &type metadata accessor for ContentSizeCategory);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100016140(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004BF10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000161B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100003E3C(v2, &v17 - v11, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004CB70();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000163B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for PlaceholderTodayCardView();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100003650(&qword_100065458, &qword_10004E9D8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v32 = sub_100003650(&qword_100065428, &qword_10004E988);
  v11 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v13 = &v28 - v12;
  v14 = sub_10004CB70();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161B0(v18);
  if ((*(v15 + 88))(v18, v14) == enum case for WidgetFamily.systemLarge(_:))
  {
    *v13 = sub_10004C280();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v19 = sub_100003650(&qword_100065460, &qword_10004EA48);
    sub_100016828(a1, &v13[*(v19 + 44)]);
    sub_100003E3C(v13, v10, &qword_100065428, &qword_10004E988);
    swift_storeEnumTagMultiPayload();
    sub_100003D30(&qword_100065420, &qword_100065428, &qword_10004E988);
    sub_100017368(&qword_100065430, type metadata accessor for PlaceholderTodayCardView);
    sub_10004C320();
    return sub_100003EA4(v13, &qword_100065428, &qword_10004E988);
  }

  else
  {
    v21 = a1 + *(type metadata accessor for TodayWidgetFallbackEntryView() + 24);
    v22 = *v21;
    v29 = *(v21 + 8);
    v23 = v29;
    v24 = v3;
    v30 = *(v21 + 16);
    v31 = v22;
    v25 = *(v21 + 24);
    *v6 = swift_getKeyPath();
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    *(v6 + *(v24 + 20)) = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v26 = (v6 + *(v24 + 24));
    v27 = v30;
    *v26 = v31;
    v26[1] = v23;
    v26[2] = v27;
    v26[3] = v25;
    sub_1000173C4(v6, v10, type metadata accessor for PlaceholderTodayCardView);
    swift_storeEnumTagMultiPayload();
    sub_100003D30(&qword_100065420, &qword_100065428, &qword_10004E988);
    sub_100017368(&qword_100065430, type metadata accessor for PlaceholderTodayCardView);

    sub_10004C320();
    sub_10001742C(v6, type metadata accessor for PlaceholderTodayCardView);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_100016828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for PlaceholderTodayCardView();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v27 - v9);
  v11 = (a1 + *(type metadata accessor for TodayWidgetFallbackEntryView() + 24));
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v11 + 16);
  v15 = v11[3];
  *v10 = swift_getKeyPath();
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  *(v10 + *(v4 + 28)) = swift_getKeyPath();
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  v16 = (v10 + *(v4 + 32));
  *v16 = v13;
  v16[1] = v12;
  v16[2] = v14;
  v16[3] = v15;
  sub_100003650(&qword_100065468, &qword_10004EA50);
  v17 = *(type metadata accessor for TodayCardListViewItem(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10004E4F0;
  v21 = v20 + v19;
  v22 = type metadata accessor for WidgetTodayCard();
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 1, 1, v22);
  v23(v21 + v18, 1, 1, v22);
  sub_1000173C4(v10, v8, type metadata accessor for PlaceholderTodayCardView);
  v24 = v28;
  sub_1000173C4(v8, v28, type metadata accessor for PlaceholderTodayCardView);
  v25 = (v24 + *(sub_100003650(&qword_100065470, &qword_10004EA58) + 48));
  *v25 = 0x4030000000000000;
  v25[1] = v20;
  v25[2] = 0x4024000000000000;

  sub_10001742C(v10, type metadata accessor for PlaceholderTodayCardView);

  return sub_10001742C(v8, type metadata accessor for PlaceholderTodayCardView);
}

uint64_t sub_100016B00()
{
  v0 = sub_100003650(&qword_100065450, &qword_10004E990);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v17 - v2;
  v4 = type metadata accessor for PlatterView();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10004CB70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161B0(v12);
  v13 = (*(v9 + 88))(v12, v8);
  v14 = enum case for WidgetFamily.systemLarge(_:);
  *v7 = swift_getKeyPath();
  sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  v15 = *(v4 + 20);
  if (v13 == v14)
  {
    *(v7 + v15) = 1;
    sub_1000173C4(v7, v3, type metadata accessor for PlatterView);
    swift_storeEnumTagMultiPayload();
    sub_100017368(&qword_100065448, type metadata accessor for PlatterView);
    sub_10004C320();
    return sub_10001742C(v7, type metadata accessor for PlatterView);
  }

  else
  {
    *(v7 + v15) = 0;
    sub_1000173C4(v7, v3, type metadata accessor for PlatterView);
    swift_storeEnumTagMultiPayload();
    sub_100017368(&qword_100065448, type metadata accessor for PlatterView);
    sub_10004C320();
    sub_10001742C(v7, type metadata accessor for PlatterView);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_100016E18()
{
  v1 = sub_10004C380();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100003650(&qword_1000653E0, &unk_10004E930);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v15[-v8];
  sub_1000163B0(v0, &v15[-v8]);
  v10 = &v9[*(v6 + 36)];
  v11 = *(sub_100003650(&qword_1000653E8, &qword_10004F9C0) + 28);
  v12 = enum case for ColorScheme.dark(_:);
  v13 = sub_10004BF00();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  sub_10004C370();
  v16 = v0;
  sub_10004C720();
  sub_100003650(&qword_1000653F0, &qword_10004E970);
  sub_100017090();
  sub_1000172B4();
  sub_10004C580();
  (*(v2 + 8))(v5, v1);
  return sub_100003EA4(v9, &qword_1000653E0, &unk_10004E930);
}

unint64_t sub_100017090()
{
  result = qword_1000653F8;
  if (!qword_1000653F8)
  {
    sub_100003698(&qword_1000653E0, &unk_10004E930);
    sub_100017148();
    sub_100003D30(&qword_100065438, &qword_1000653E8, &qword_10004F9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000653F8);
  }

  return result;
}

unint64_t sub_100017148()
{
  result = qword_100065400;
  if (!qword_100065400)
  {
    sub_100003698(&qword_100065408, &qword_10004E978);
    sub_1000171CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065400);
  }

  return result;
}

unint64_t sub_1000171CC()
{
  result = qword_100065410;
  if (!qword_100065410)
  {
    sub_100003698(&qword_100065418, &qword_10004E980);
    sub_100003D30(&qword_100065420, &qword_100065428, &qword_10004E988);
    sub_100017368(&qword_100065430, type metadata accessor for PlaceholderTodayCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065410);
  }

  return result;
}

unint64_t sub_1000172B4()
{
  result = qword_100065440;
  if (!qword_100065440)
  {
    sub_100003698(&qword_1000653F0, &qword_10004E970);
    sub_100017368(&qword_100065448, type metadata accessor for PlatterView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065440);
  }

  return result;
}

uint64_t sub_100017368(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000173C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001742C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001748C()
{
  sub_100003698(&qword_1000653E0, &unk_10004E930);
  sub_100003698(&qword_1000653F0, &qword_10004E970);
  sub_100017090();
  sub_1000172B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001751C()
{
  v1 = v0;
  sub_100003650(&qword_100065548, &unk_10004EAD0);
  *(v0 + 16) = sub_10004CA90();
  *(v0 + 24) = 0;
  setenv("JSC_criticalGCMemoryThreshold", "0.25", 1);
  setenv("JavaScriptCoreUseJIT", "0", 1);
  v2 = objc_opt_self();
  v3 = [v2 sharedURLCache];
  [v3 setDiskCapacity:40485760];

  v4 = [v2 sharedURLCache];
  [v4 setMemoryCapacity:0];

  return v1;
}

uint64_t sub_100017608(uint64_t a1)
{
  v33 = a1;
  v1 = sub_10004BC20();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003650(&qword_100065520, "VX");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  v9 = sub_10004C9B0();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v30 = sub_10004BC50();
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v30);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10004BB40();
  v15 = *(v29 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v29);
  v18 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v29 - v19;
  sub_10004BB30();
  sub_10004C9A0();
  v21 = sub_10004BC80();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v35 = &type metadata for EmptyAppStateControllerFactory;
  v36 = sub_100018084();
  (*(v31 + 104))(v4, enum case for ASKBootstrapV2.TargetType.todayWidget(_:), v32);
  sub_10004BC30();
  sub_10004BC40();
  (*(v11 + 8))(v14, v30);
  v22 = v29;
  (*(v15 + 16))(v18, v20, v29);
  v23 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v24 = (v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v15 + 32))(v25 + v23, v18, v22);
  *(v25 + v24) = v33;
  v26 = sub_100007874();
  swift_retain_n();
  v27 = sub_10004CE20();
  v35 = v26;
  v36 = &protocol witness table for OS_dispatch_queue;
  v34[0] = v27;
  sub_10004CA30();

  (*(v15 + 8))(v20, v22);
  return sub_100007B80(v34);
}

uint64_t sub_100017A64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v4 = sub_10004BB40();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_10004BB30();
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v9 = sub_10004CAD0();
  sub_100004D74(v9, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v10 = *(sub_10004C8D0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_10004EA60;
  sub_10004C850();
  sub_10004BB00();
  v26[3] = &type metadata for Double;
  v26[0] = v13;
  sub_10004C8C0();
  sub_100018218(v26);
  sub_10004C850();
  sub_10004C9D0();

  sub_10004C900();

  sub_10004C910();
  sub_100003650(&qword_100065530, &qword_10004EAC0);
  v14 = *(sub_10004C840() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10004DC70;
  v26[0] = [objc_allocWithZone(type metadata accessor for WidgetArtworkLoader()) init];
  sub_10004C830();
  v26[0] = v17;
  sub_100003650(&qword_100065538, &qword_10004EAC8);
  sub_100018280();
  v18 = sub_10004C8F0();

  sub_10004C8E0();
  v19 = v25;
  v20 = *(v25 + 16);
  v26[0] = v18;

  sub_10004CA80();

  (*(v23 + 8))(v7, v24);

  *(v19 + 24) = 0;
  return result;
}

uint64_t sub_100017E3C(uint64_t a1, uint64_t a2)
{
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v3 = sub_10004CAD0();
  sub_100004D74(v3, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v4 = *(sub_10004C8D0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_10004E4F0;
  sub_10004C850();
  swift_getErrorValue();
  v11[3] = v10;
  v7 = sub_100007BCC(v11);
  (*(*(v10 - 8) + 16))(v7);
  sub_10004C8C0();
  sub_100018218(v11);
  sub_10004C9E0();

  v8 = *(a2 + 16);

  sub_10004CA60();

  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_100018028()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 25, 7);
}

unint64_t sub_100018084()
{
  result = qword_100065528;
  if (!qword_100065528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065528);
  }

  return result;
}

uint64_t sub_1000180D8()
{
  v1 = sub_10004BB40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100018174(uint64_t *a1)
{
  v3 = *(sub_10004BB40() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100017A64(a1, v1 + v4, v5);
}

uint64_t sub_100018218(uint64_t a1)
{
  v2 = sub_100003650(&qword_100064A10, &qword_10004FB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100018280()
{
  result = qword_100065540;
  if (!qword_100065540)
  {
    sub_100003698(&qword_100065538, &qword_10004EAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065540);
  }

  return result;
}

uint64_t sub_1000182F4()
{
  v2 = 0u;
  v3 = 0;
  v6[3] = sub_10004C7D0();
  v6[4] = &protocol witness table for ASDDeviceAppFetcher;
  sub_100007BCC(v6);
  sub_10004C7C0();
  v4 = sub_10004BCE0();
  v5 = sub_1000183A4();
  sub_100007BCC(&v2);
  sub_10004BCD0();
  v0 = sub_10004BB80();
  sub_100007B80(&v2);
  sub_100007B80(v6);
  return v0;
}

unint64_t sub_1000183A4()
{
  result = qword_100065550;
  if (!qword_100065550)
  {
    sub_10004BCE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065550);
  }

  return result;
}

__n128 sub_100018408(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100018414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t sub_100018464(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
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

uint64_t sub_1000184F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004BB40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if ((*(a1 + *(a3 + 20) + 16) >> 1) > 0x80000000)
  {
    return -(*(a1 + *(a3 + 20) + 16) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000185C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004BB40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 2 * -a2;
    v11[3] = 0;
  }

  return result;
}

uint64_t type metadata accessor for TodayWidgetEntry()
{
  result = qword_1000655B0;
  if (!qword_1000655B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000186D8()
{
  result = sub_10004BB40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001874C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for WidgetTodayCard();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v32 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  result = type metadata accessor for TodayWidgetEntry();
  v15 = (v1 + *(result + 20));
  if ((v15[2] & 0x8000000000000000) != 0)
  {
LABEL_15:
    sub_10004CC20();
    v27 = sub_10004CC30();
    return (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
  }

  v29 = a1;
  v16 = *v15;
  v31 = *(*v15 + 16);
  if (!v31)
  {
    v18 = &_swiftEmptyArrayStorage;
LABEL_14:
    v26 = v18[2];

    a1 = v29;
    goto LABEL_15;
  }

  v17 = 0;
  v18 = &_swiftEmptyArrayStorage;
  v30 = v7;
  while (v17 < *(v16 + 16))
  {
    v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v20 = *(v8 + 72);
    sub_100018AD0(v16 + v19 + v20 * v17, v13);
    sub_100018B34(&v13[*(v7 + 48)], v6);
    v21 = sub_10004BB40();
    v22 = (*(*(v21 - 8) + 48))(v6, 1, v21);
    sub_100018BA4(v6);
    if (v22 == 1)
    {
      result = sub_100007DC4(v13);
    }

    else
    {
      sub_100018C0C(v13, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100026A9C(0, v18[2] + 1, 1);
        v18 = v33;
      }

      v25 = v18[2];
      v24 = v18[3];
      if (v25 >= v24 >> 1)
      {
        sub_100026A9C(v24 > 1, v25 + 1, 1);
        v18 = v33;
      }

      v18[2] = v25 + 1;
      result = sub_100018C0C(v32, v18 + v19 + v25 * v20);
      v7 = v30;
    }

    if (v31 == ++v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100018A64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004BB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100018AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetTodayCard();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018BA4(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100018C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetTodayCard();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018C70()
{
  v0 = sub_100018D6C();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for TodayWidget, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100018CEC();
  sub_10004BF80();
  return 0;
}

unint64_t sub_100018CEC()
{
  result = qword_1000655F0;
  if (!qword_1000655F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000655F0);
  }

  return result;
}

unint64_t sub_100018D6C()
{
  result = qword_1000655F8;
  if (!qword_1000655F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000655F8);
  }

  return result;
}

uint64_t sub_100018E0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10004BEB0();

  return v1;
}

uint64_t sub_100018E80()
{
  v1 = OBJC_IVAR____TtCV24AppStoreWidgetsExtension22SingleLineTextObserver5State__isSingleLine;
  v2 = sub_100003650(&qword_1000656F0, &qword_10004ED88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for SingleLineTextObserver.State()
{
  result = qword_100065630;
  if (!qword_100065630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100018F7C()
{
  sub_10001900C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10001900C()
{
  if (!qword_100065640)
  {
    v0 = sub_10004BED0();
    if (!v1)
    {
      atomic_store(v0, &qword_100065640);
    }
  }
}

uint64_t sub_100019068@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SingleLineTextObserver.State();
  result = sub_10004BE90();
  *a1 = result;
  return result;
}

uint64_t sub_1000190A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v11 = sub_10004BFC0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  KeyPath = swift_getKeyPath();
  v15 = sub_100003650(&qword_1000656F8, &qword_10004EDE0);
  (*(*(v15 - 8) + 16))(a6, a2, v15);
  v16 = a6 + *(sub_100003650(&qword_100065700, &qword_10004EE18) + 36);
  *v16 = KeyPath;
  *(v16 + 8) = 1;
  *(v16 + 16) = 0;
  (*(v12 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  *(v18 + 4) = v25;
  (*(v12 + 32))(&v18[v17], &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  v19 = sub_10004C720();
  v21 = v20;
  result = sub_100003650(&qword_100065710, &unk_10004EE28);
  v23 = (a6 + *(result + 36));
  *v23 = sub_100019BE0;
  v23[1] = v18;
  v23[2] = v19;
  v23[3] = v21;
  return result;
}

uint64_t sub_1000192B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v9 = sub_10004BFC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v24 = sub_10004C5D0();
  v16 = *(v10 + 16);
  v16(v15, a5, v9);
  v16(v13, a1, v9);
  v17 = *(v10 + 80);
  v18 = (v17 + 40) & ~v17;
  v19 = (v11 + v17 + v18) & ~v17;
  v20 = swift_allocObject();
  v21 = v26;
  *(v20 + 2) = v25;
  *(v20 + 3) = v21;
  *(v20 + 4) = v27;
  v22 = *(v10 + 32);
  v22(&v20[v18], v15, v9);
  v22(&v20[v19], v13, v9);
  *a6 = v24;
  a6[1] = sub_100019D54;
  a6[2] = v20;
  a6[3] = 0;
  a6[4] = 0;
}

uint64_t sub_10001947C()
{

  sub_10004BFA0();
  sub_10004BFA0();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_10004BEC0();
}

uint64_t sub_100019534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003650(&qword_1000656F8, &qword_10004EDE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = *v2;
  v26 = v2[1];
  v27 = v10;
  v11 = v2[2];
  KeyPath = swift_getKeyPath();
  v13 = *(v6 + 16);
  v25 = a2;
  v13(a2, a1, v5);
  v14 = a2 + *(sub_100003650(&qword_100065700, &qword_10004EE18) + 36);
  *v14 = KeyPath;
  *(v14 + 8) = v11;
  *(v14 + 16) = 0;
  v13(v9, a1, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v9, v5);
  v17 = (v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v26;
  *v17 = v27;
  v17[1] = v18;
  v17[2] = v11;

  v19 = sub_10004C720();
  v21 = v20;
  result = sub_100003650(&qword_100065708, &qword_10004EE20);
  v23 = (v25 + *(result + 36));
  *v23 = sub_100019A5C;
  v23[1] = v16;
  v23[2] = v19;
  v23[3] = v21;
  return result;
}

uint64_t sub_100019724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10004BEB0();

  *a2 = v5;
  return result;
}

uint64_t sub_1000197A8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10004BEC0();
}

__n128 sub_100019820(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100019834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10001987C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000198E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_10004C160();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10001991C@<X0>(uint64_t a1@<X8>)
{
  result = sub_10004C160();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100019950(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10004C170();
}

uint64_t sub_100019980(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10004C170();
}

uint64_t sub_1000199B0()
{
  v1 = sub_100003650(&qword_1000656F8, &qword_10004EDE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

uint64_t sub_100019A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_100003650(&qword_1000656F8, &qword_10004EDE0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];

  return sub_1000190A8(a1, v2 + v6, v8, v9, v10, a2);
}

uint64_t sub_100019B1C()
{
  v1 = sub_10004BFC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100019BE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_10004BFC0() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1000192B0(a1, v6, v7, v8, v9, a2);
}

uint64_t sub_100019C68()
{
  v1 = sub_10004BFC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 24);

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_100019D54()
{
  v1 = *(sub_10004BFC0() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 64) + *(v1 + 80) + ((*(v1 + 80) + 40) & ~*(v1 + 80))) & ~*(v1 + 80));

  return sub_10001947C();
}

unint64_t sub_100019DEC()
{
  result = qword_100065718;
  if (!qword_100065718)
  {
    sub_100003698(&qword_100065708, &qword_10004EE20);
    sub_100019EA4();
    sub_100003D30(&qword_100065730, &qword_100065738, qword_10004EE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065718);
  }

  return result;
}

unint64_t sub_100019EA4()
{
  result = qword_100065720;
  if (!qword_100065720)
  {
    sub_100003698(&qword_100065700, &qword_10004EE18);
    sub_100003D30(&qword_100065728, &qword_1000656F8, &qword_10004EDE0);
    sub_100003D30(&qword_1000652F8, &qword_100065300, &qword_10004E770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065720);
  }

  return result;
}

uint64_t sub_100019FB4@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v70 = type metadata accessor for TodayWidgetTimelineProvider();
  v1 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v3 = &v66[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10004BBA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_100003650(&qword_1000647A8, &qword_10004D9B8);
  v72 = *(v71 - 8);
  v9 = *(v72 + 64);
  __chkstk_darwin(v71);
  v11 = &v66[-v10];
  v84 = sub_100003650(&qword_1000647A0, &qword_10004D9B0);
  *&v83 = *(v84 - 8);
  v12 = *(v83 + 64);
  __chkstk_darwin(v84);
  v69 = &v66[-v13];
  v86 = sub_100003650(&qword_100064798, &qword_10004D9A8);
  v73 = *(v86 - 8);
  v14 = *(v73 + 64);
  __chkstk_darwin(v86);
  v85 = &v66[-v15];
  v16 = sub_100003650(&qword_100064790, &qword_10004D9A0);
  v17 = *(v16 - 8);
  v76 = v16;
  v77 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v87 = &v66[-v19];
  v20 = sub_100003650(&qword_100064788, &qword_10004D998);
  v21 = *(v20 - 8);
  v78 = v20;
  v79 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v74 = &v66[-v23];
  v24 = sub_100003650(&qword_100064780, &qword_10004D990);
  v25 = *(v24 - 8);
  v80 = v24;
  v81 = v25;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v75 = &v66[-v27];
  v28 = enum case for WidgetKind.today(_:);
  v29 = *(v5 + 104);
  v29(v8, enum case for WidgetKind.today(_:), v4);
  sub_10004BB90();
  (*(v5 + 8))(v8, v4);
  v29(v3, v28, v4);
  type metadata accessor for TodayWidgetEntryView();
  sub_10001AB98(&qword_100065740, type metadata accessor for TodayWidgetEntryView);
  sub_10001AB98(&qword_100065748, type metadata accessor for TodayWidgetTimelineProvider);
  sub_10004CBE0();
  sub_10004C210();
  v30 = sub_10004C500();
  v32 = v31;
  LOBYTE(v5) = v33;
  v34 = sub_10001ABE0();
  v35 = v69;
  v36 = v71;
  sub_10004C300();
  sub_10001AC44(v30, v32, v5 & 1);

  (*(v72 + 8))(v11, v36);
  sub_10004C210();
  v37 = sub_10004C500();
  v39 = v38;
  LOBYTE(v11) = v40;
  v88 = v36;
  v89 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v84;
  sub_10004C2C0();
  sub_10001AC44(v37, v39, v11 & 1);

  (*(v83 + 8))(v35, v42);
  v72 = sub_100003650(&qword_100065750, &qword_10004EEA8);
  v43 = sub_10004CB70();
  v44 = *(v43 - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v71 = 3 * v45;
  v68 = 2 * v45;
  v47 = swift_allocObject();
  v83 = xmmword_10004EA60;
  *(v47 + 16) = xmmword_10004EA60;
  v48 = v47 + v46;
  LODWORD(v70) = enum case for WidgetFamily.systemSmall(_:);
  v49 = *(v44 + 104);
  v49(v47 + v46);
  LODWORD(v69) = enum case for WidgetFamily.systemMedium(_:);
  v49(v48 + v45);
  v67 = enum case for WidgetFamily.systemLarge(_:);
  v49(v48 + 2 * v45);
  v88 = v84;
  v89 = OpaqueTypeConformance2;
  v84 = swift_getOpaqueTypeConformance2();
  v50 = v86;
  v51 = v85;
  sub_10004C2D0();

  (*(v73 + 8))(v51, v50);
  sub_100003650(&qword_100065758, &qword_10004EEB0);
  v52 = *(sub_10004CBB0() - 8);
  v53 = *(v52 + 72);
  v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  *(swift_allocObject() + 16) = v83;
  sub_10004CB80();
  sub_10004CB90();
  sub_10004CBA0();
  v55 = swift_allocObject();
  *(v55 + 16) = v83;
  v56 = v55 + v46;
  (v49)(v55 + v46, v70, v43);
  (v49)(v56 + v45, v69, v43);
  (v49)(v56 + v68, v67, v43);
  v88 = v86;
  v89 = v84;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v74;
  v59 = v76;
  v60 = v87;
  sub_10004C2E0();

  (*(v77 + 8))(v60, v59);
  v88 = v59;
  v89 = v57;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v75;
  v63 = v78;
  sub_10004C310();
  (*(v79 + 8))(v58, v63);
  v88 = v63;
  v89 = v61;
  swift_getOpaqueTypeConformance2();
  v64 = v80;
  sub_10004C2F0();
  return (*(v81 + 8))(v62, v64);
}

uint64_t sub_10001AADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TodayWidgetEntry() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = swift_getKeyPath();
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + *(type metadata accessor for TodayWidgetEntryView() + 20));
  *v8 = v4;
  v8[1] = v5;
  v8[2] = v6;
  v8[3] = v7;

  return sub_10001AC58(v4, v5, v6);
}

uint64_t sub_10001AB98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001ABE0()
{
  result = qword_1000647B0;
  if (!qword_1000647B0)
  {
    sub_100003698(&qword_1000647A8, &qword_10004D9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000647B0);
  }

  return result;
}

uint64_t sub_10001AC44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10001AC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }
}

uint64_t sub_10001ACA8()
{
  sub_100003698(&qword_100064780, &qword_10004D990);
  sub_100003698(&qword_100064788, &qword_10004D998);
  sub_100003698(&qword_100064790, &qword_10004D9A0);
  sub_100003698(&qword_100064798, &qword_10004D9A8);
  sub_100003698(&qword_1000647A0, &qword_10004D9B0);
  sub_100003698(&qword_1000647A8, &qword_10004D9B8);
  sub_10001ABE0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001AE48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10001AE90(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_10001AEFC(void *result)
{
  if (result[2])
  {
    v1 = result;
    v2 = *(type metadata accessor for AppIcon(0) - 8);
    v3 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v4 = type metadata accessor for AppIconConfiguration(0);
    result = *&v3[*(v4 + 20)];
    if (result)
    {
      [result size];
      result = *&v3[*(v4 + 20)];
      if (result)
      {
        return [result size];
      }
    }
  }

  return result;
}

uint64_t sub_10001AFD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v118 = a2;
  v108 = sub_100003650(&qword_100065760, &qword_10004EFC8);
  v9 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v100 = v98 - v10;
  v106 = sub_100003650(&qword_100065768, &qword_10004EFD0);
  v11 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v107 = v98 - v12;
  v117 = sub_100003650(&qword_100065770, &qword_10004EFD8);
  v13 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v109 = v98 - v14;
  v103 = sub_10004C330();
  v15 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v104 = v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004C6E0();
  v101 = *(v17 - 8);
  v102 = v17;
  v18 = *(v101 + 64);
  __chkstk_darwin(v17);
  v20 = (v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = sub_100003650(&qword_100065778, &qword_10004EFE0);
  v21 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v99 = v98 - v22;
  v23 = sub_100003650(&qword_100065780, &qword_10004EFE8);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = v98 - v25;
  v114 = sub_100003650(&qword_100065788, &qword_10004EFF0);
  v27 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v116 = v98 - v28;
  v110 = sub_100003650(&qword_100065790, &qword_10004EFF8);
  v29 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v112 = v98 - v30;
  v31 = sub_100003650(&qword_100065798, &qword_10004F000);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = v98 - v33;
  v111 = sub_100003650(&qword_1000657A0, &qword_10004F008);
  v35 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v37 = v98 - v36;
  v115 = sub_100003650(&qword_1000657A8, &qword_10004F010);
  v38 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  *&v113 = v98 - v39;
  v40 = type metadata accessor for AppIcon(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1[2];
  if (v45 <= 1)
  {
    v98[1] = v31;
    v99 = v37;
    if (!v45)
    {
      v78 = type metadata accessor for AppIconConfiguration(0);
      v79 = &v44[v78[9]];
      sub_10004CB40();
      sub_10004BB60();
      *&v44[v78[5]] = 0;
      v80 = &v44[v78[6]];
      *v80 = 0;
      *(v80 + 1) = 0;
      v80[16] = 1;
      v44[v78[7]] = 0;
      v44[v78[8]] = 1;
      sub_10001F810(v44, v34, type metadata accessor for AppIcon);
      swift_storeEnumTagMultiPayload();
      sub_10001F480(&qword_100064808, type metadata accessor for AppIcon);
      sub_10001F4C8();
      v81 = v99;
      sub_10004C320();
      sub_100003E3C(v81, v112, &qword_1000657A0, &qword_10004F008);
      swift_storeEnumTagMultiPayload();
      sub_100003650(&qword_100065820, &qword_10004F040);
      sub_10001F3C4();
      sub_10001F554();
      v82 = v113;
      sub_10004C320();
      sub_100003EA4(v81, &qword_1000657A0, &qword_10004F008);
      sub_100003E3C(v82, v116, &qword_1000657A8, &qword_10004F010);
      swift_storeEnumTagMultiPayload();
      sub_10001F338();
      sub_10001F634();
      sub_10004C320();
      sub_100003EA4(v82, &qword_1000657A8, &qword_10004F010);
      return sub_10001F878(v44, type metadata accessor for AppIcon);
    }

    if (v45 != 1)
    {
      goto LABEL_13;
    }

    sub_10001AEFC(a1);
    sub_10001F810(a1 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v26, type metadata accessor for AppIcon);
    sub_10001AEFC(a1);
    sub_10001AEFC(a1);
    sub_10004C720();
    sub_10004BF90();
    v61 = v26;
    v62 = &v26[*(sub_100003650(&qword_100064888, &qword_10004DB10) + 36)];
    v63 = v124[1];
    *v62 = v124[0];
    *(v62 + 1) = v63;
    *(v62 + 2) = v124[2];
    v64 = &v26[*(v23 + 36)];
    *v64 = 0x3FF0000000000000;
    *(v64 + 4) = 0;
    sub_100003E3C(v26, v34, &qword_100065780, &qword_10004EFE8);
    swift_storeEnumTagMultiPayload();
    sub_10001F480(&qword_100064808, type metadata accessor for AppIcon);
    sub_10001F4C8();
    v65 = v99;
    sub_10004C320();
    sub_100003E3C(v65, v112, &qword_1000657A0, &qword_10004F008);
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100065820, &qword_10004F040);
    sub_10001F3C4();
    sub_10001F554();
    v66 = v113;
    sub_10004C320();
    sub_100003EA4(v65, &qword_1000657A0, &qword_10004F008);
    sub_100003E3C(v66, v116, &qword_1000657A8, &qword_10004F010);
    swift_storeEnumTagMultiPayload();
    sub_10001F338();
    sub_10001F634();
    sub_10004C320();
    sub_100003EA4(v66, &qword_1000657A8, &qword_10004F010);
    v60 = v61;
    v67 = &qword_100065780;
    v68 = &qword_10004EFE8;
  }

  else
  {
    switch(v45)
    {
      case 2:
        v69 = sub_10004C720();
        v71 = v70;
        sub_10001C4D4(a1, v124, a3, a4, a5);
        memcpy(v121, v124, 0x120uLL);
        memcpy(v122, v124, 0x120uLL);
        sub_100003E3C(v121, v120, &qword_100065868, &qword_10004F068);
        sub_100003EA4(v122, &qword_100065868, &qword_10004F068);
        memcpy(&v123[2], v121, 0x120uLL);
        v123[0] = v69;
        v123[1] = v71;
        memcpy(v124, v123, 0x130uLL);
        sub_10001F6FC(v124);
        memcpy(v119, v124, sizeof(v119));
        v72 = &qword_100065830;
        v73 = &qword_10004F048;
        sub_100003E3C(v123, v120, &qword_100065830, &qword_10004F048);
        sub_100003650(&qword_100065830, &qword_10004F048);
        sub_100003650(&qword_100065840, &qword_10004F050);
        sub_100003D30(&qword_100065828, &qword_100065830, &qword_10004F048);
        sub_100003D30(&qword_100065838, &qword_100065840, &qword_10004F050);
        break;
      case 3:
        v74 = sub_10004C720();
        v76 = v75;
        sub_10001CCB4(a1, v124, a3, a4, a5);
        memcpy(v121, v124, sizeof(v121));
        memcpy(v122, v124, sizeof(v122));
        sub_100003E3C(v121, v120, &qword_100065860, &qword_10004F060);
        sub_100003EA4(v122, &qword_100065860, &qword_10004F060);
        memcpy(&v123[2], v121, 0x1D0uLL);
        v123[0] = v74;
        v123[1] = v76;
        memcpy(v124, v123, 0x1E0uLL);
        sub_10001F6F0(v124);
        memcpy(v119, v124, sizeof(v119));
        v72 = &qword_100065840;
        v73 = &qword_10004F050;
        sub_100003E3C(v123, v120, &qword_100065840, &qword_10004F050);
        sub_100003650(&qword_100065830, &qword_10004F048);
        sub_100003650(&qword_100065840, &qword_10004F050);
        sub_100003D30(&qword_100065828, &qword_100065830, &qword_10004F048);
        sub_100003D30(&qword_100065838, &qword_100065840, &qword_10004F050);
        break;
      case 4:
        v98[0] = a1;
        sub_10001AEFC(a1);
        sub_100003650(&qword_1000657B0, &qword_10004F018);
        v46 = *(sub_10004C6F0() - 8);
        v47 = *(v46 + 72);
        v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        *(swift_allocObject() + 16) = xmmword_10004E4F0;
        v113 = xmmword_10004EEF0;
        *v20 = xmmword_10004EEF0;
        v49 = enum case for GridItem.Size.flexible(_:);
        v50 = v102;
        v51 = *(v101 + 104);
        v51(v20, enum case for GridItem.Size.flexible(_:), v102);
        sub_10004C700();
        *v20 = v113;
        v51(v20, v49, v50);
        v52 = sub_10004C700();
        *&v113 = v98;
        __chkstk_darwin(v52);
        v53 = v98[0];
        v98[-6] = v98[0];
        *&v98[-5] = a3;
        *&v98[-4] = a4;
        *&v98[-3] = a5;
        v112 = sub_10004C280();
        LODWORD(v124[0]) = 0;
        sub_10001F480(&qword_1000657B8, &type metadata accessor for PinnedScrollableViews);
        sub_10004D0B0();
        sub_100003650(&qword_100065850, &qword_10004F058);
        v97 = sub_100003D30(&qword_100065858, &qword_100065850, &qword_10004F058);
        v54 = v99;
        sub_10004C750();
        sub_10001AEFC(v53);
        sub_10001AEFC(v53);
        sub_10004C720();
        sub_10004BF90();
        v55 = (v54 + *(v105 + 36));
        v56 = v124[1];
        *v55 = v124[0];
        v55[1] = v56;
        v55[2] = v124[2];
        v57 = &qword_100065778;
        v58 = &qword_10004EFE0;
        sub_100003E3C(v54, v107, &qword_100065778, &qword_10004EFE0);
        swift_storeEnumTagMultiPayload();
        sub_10001F1C8();
        sub_10001F280();
        v59 = v109;
        sub_10004C320();
        sub_100003E3C(v59, v116, &qword_100065770, &qword_10004EFD8);
        swift_storeEnumTagMultiPayload();
        sub_10001F338();
        sub_10001F634();
        sub_10004C320();
        sub_100003EA4(v59, &qword_100065770, &qword_10004EFD8);
        v60 = v54;
LABEL_14:
        v67 = v57;
        v68 = v58;
        return sub_100003EA4(v60, v67, v68);
      default:
LABEL_13:
        v98[0] = a1;
        sub_10001AEFC(a1);
        sub_100003650(&qword_1000657B0, &qword_10004F018);
        v84 = *(sub_10004C6F0() - 8);
        v85 = *(v84 + 72);
        v86 = (*(v84 + 80) + 32) & ~*(v84 + 80);
        *(swift_allocObject() + 16) = xmmword_10004E4F0;
        v113 = xmmword_10004EEF0;
        *v20 = xmmword_10004EEF0;
        v87 = enum case for GridItem.Size.flexible(_:);
        v88 = v102;
        v89 = *(v101 + 104);
        v89(v20, enum case for GridItem.Size.flexible(_:), v102);
        sub_10004C700();
        *v20 = v113;
        v89(v20, v87, v88);
        v90 = sub_10004C700();
        *&v113 = v98;
        __chkstk_darwin(v90);
        v91 = v98[0];
        v98[-6] = v98[0];
        *&v98[-5] = a3;
        *&v98[-4] = a4;
        *&v98[-3] = a5;
        v112 = sub_10004C280();
        LODWORD(v124[0]) = 0;
        sub_10001F480(&qword_1000657B8, &type metadata accessor for PinnedScrollableViews);
        sub_10004D0B0();
        sub_100003650(&qword_1000657C0, &qword_10004F020);
        v97 = sub_100003D30(&qword_1000657C8, &qword_1000657C0, &qword_10004F020);
        v92 = v100;
        sub_10004C750();
        sub_10001AEFC(v91);
        sub_10001AEFC(v91);
        sub_10004C720();
        sub_10004BF90();
        v93 = v107;
        v94 = (v92 + *(v108 + 36));
        v95 = v124[1];
        *v94 = v124[0];
        v94[1] = v95;
        v94[2] = v124[2];
        v57 = &qword_100065760;
        v58 = &qword_10004EFC8;
        sub_100003E3C(v92, v93, &qword_100065760, &qword_10004EFC8);
        swift_storeEnumTagMultiPayload();
        sub_10001F1C8();
        sub_10001F280();
        v96 = v109;
        sub_10004C320();
        sub_100003E3C(v96, v116, &qword_100065770, &qword_10004EFD8);
        swift_storeEnumTagMultiPayload();
        sub_10001F338();
        sub_10001F634();
        sub_10004C320();
        sub_100003EA4(v96, &qword_100065770, &qword_10004EFD8);
        v60 = v92;
        goto LABEL_14;
    }

    sub_10004C320();
    memcpy(v112, v120, 0x1E1uLL);
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100065820, &qword_10004F040);
    sub_10001F3C4();
    sub_10001F554();
    v77 = v113;
    sub_10004C320();
    sub_100003E3C(v77, v116, &qword_1000657A8, &qword_10004F010);
    swift_storeEnumTagMultiPayload();
    sub_10001F338();
    sub_10001F634();
    sub_10004C320();
    sub_100003EA4(v123, v72, v73);
    v60 = v77;
    v67 = &qword_1000657A8;
    v68 = &qword_10004F010;
  }

  return sub_100003EA4(v60, v67, v68);
}