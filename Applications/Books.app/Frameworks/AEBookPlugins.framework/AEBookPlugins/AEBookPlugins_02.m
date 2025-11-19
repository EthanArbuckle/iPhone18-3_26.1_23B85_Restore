uint64_t sub_11CE48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_11CE60(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_11CE98(uint64_t a1, uint64_t *a2)
{
  v3 = sub_11B940(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_11CEF8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_11CF5C(uint64_t (*a1)(void))
{
  v2 = sub_139500();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v33 = v3;
  v34 = *(v37 + 80);
  v4 = *(v37 + 64);
  v36 = sub_139670();
  v25 = *(v36 - 8);
  v5 = (v3 + v4 + *(v25 + 80)) & ~*(v25 + 80);
  v30 = *(v25 + 80);
  v31 = v5;
  v6 = *(v25 + 64);
  v35 = sub_1396C0();
  v7 = *(v35 - 8);
  v8 = *(v7 + 80);
  v26 = (v5 + v6 + v8) & ~v8;
  v9 = *(v7 + 64);
  v32 = sub_1394E0();
  v10 = *(v32 - 8);
  v11 = *(v10 + 80);
  v12 = (v26 + v9 + v11) & ~v11;
  v24 = v12;
  v13 = *(v10 + 64);
  v27 = sub_1397B0();
  v14 = *(v27 - 8);
  v15 = *(v14 + 80);
  v16 = (v12 + v13 + v15) & ~v15;
  v17 = *(v14 + 64);
  v29 = a1(0);
  v18 = *(v29 - 8);
  v19 = *(v18 + 80);
  v20 = (v16 + v17 + v19) & ~v19;
  v23 = *(v18 + 64);
  v21 = v34 | v30 | v8 | v11 | v15 | v19;

  (*(v37 + 8))(v1 + v33, v38);
  (*(v25 + 8))(v1 + v31, v36);
  (*(v7 + 8))(v1 + v26, v35);
  (*(v10 + 8))(v1 + v24, v32);
  (*(v14 + 8))(v1 + v16, v27);
  (*(v18 + 8))(v1 + v20, v29);

  return _swift_deallocObject(v1, v20 + v23, v21 | 7);
}

uint64_t sub_11D2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_11B940(&qword_22C908);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_11D358()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11D398(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_11B940(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_11D400()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11D440()
{
  v1 = sub_139500();
  v26 = *(v1 - 8);
  v27 = v1;
  v21 = *(v26 + 80);
  v2 = *(v26 + 64);
  v25 = sub_139670();
  v3 = *(v25 - 8);
  v4 = *(v3 + 80);
  v22 = (((v21 + 48) & ~v21) + v2 + v4) & ~v4;
  v5 = *(v3 + 64);
  v24 = sub_1396C0();
  v6 = *(v24 - 8);
  v7 = *(v6 + 80);
  v19 = (v22 + v5 + v7) & ~v7;
  v8 = *(v6 + 64);
  v23 = sub_1394E0();
  v9 = *(v23 - 8);
  v10 = *(v9 + 80);
  v11 = (v19 + v8 + v10) & ~v10;
  v12 = *(v9 + 64);
  v20 = sub_1397B0();
  v13 = *(v20 - 8);
  v14 = *(v13 + 80);
  v15 = (v11 + v12 + v14) & ~v14;
  v16 = v21 | v4 | v7 | v10 | v14;
  v17 = (*(v13 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v26 + 8))(v0 + ((v21 + 48) & ~v21), v27);
  (*(v3 + 8))(v0 + v22, v25);
  (*(v6 + 8))(v0 + v19, v24);
  (*(v9 + 8))(v0 + v11, v23);
  (*(v13 + 8))(v0 + v15, v20);

  return _swift_deallocObject(v0, v17 + 16, v16 | 7);
}

uint64_t sub_11D754(uint64_t a1)
{
  v2 = *(sub_139500() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_139670() - 8);
  v15 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v6 = *(v5 + 64);
  v7 = *(sub_1396C0() - 8);
  v8 = (v15 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  sub_1394E0();
  sub_1397B0();
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = swift_task_alloc();
  *(v16 + 16) = v13;
  *v13 = v16;
  v13[1] = sub_11C84C;

  return sub_117F40(a1, v9, v10, v11, v12, v1 + v3, v1 + v15, v1 + v8);
}

uint64_t sub_11DA18()
{
  v30 = sub_139500();
  v23 = *(v30 - 8);
  v1 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v26 = v1;
  v27 = *(v23 + 80);
  v2 = *(v23 + 64);
  v29 = sub_139670();
  v3 = *(v29 - 8);
  v4 = *(v3 + 80);
  v5 = (v1 + v2 + v4) & ~v4;
  v24 = v5;
  v6 = *(v3 + 64);
  v28 = sub_1396C0();
  v7 = *(v28 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v21 = v9;
  v10 = *(v7 + 64);
  v25 = sub_1394E0();
  v11 = *(v25 - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  v14 = *(v11 + 64);
  v22 = sub_1397B0();
  v15 = *(v22 - 8);
  v16 = *(v15 + 80);
  v17 = (v13 + v14 + v16) & ~v16;
  v18 = v27 | v4 | v8 | v12 | v16;
  v19 = (*(v15 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v23 + 8))(v0 + v26, v30);
  (*(v3 + 8))(v0 + v24, v29);
  (*(v7 + 8))(v0 + v21, v28);
  (*(v11 + 8))(v0 + v13, v25);
  (*(v15 + 8))(v0 + v17, v22);

  return _swift_deallocObject(v0, v19 + 16, v18 | 7);
}

uint64_t sub_11DD20(unint64_t a1)
{
  v3 = *(sub_139500() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_139670() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1396C0() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1394E0() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(sub_1397B0() - 8);
  v16 = (v13 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = (v1 + ((*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_119108(a1, *(v1 + 16), v1 + v4, v1 + v7, v1 + v10, v1 + v13, v1 + v16, *v17, v17[1]);
}

uint64_t sub_11DF54()
{
  v1 = sub_139640();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_11E018(char a1)
{
  v3 = *(sub_139640() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_115880(a1, v4, v5, v6);
}

uint64_t sub_11E08C()
{
  v33 = sub_139500();
  v32 = *(v33 - 8);
  v1 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v28 = v1;
  v29 = *(v32 + 80);
  v2 = *(v32 + 64);
  v31 = sub_139670();
  v22 = *(v31 - 8);
  v25 = *(v22 + 80);
  v26 = (v1 + v2 + v25) & ~v25;
  v3 = *(v22 + 64);
  v30 = sub_1396C0();
  v4 = *(v30 - 8);
  v5 = *(v4 + 80);
  v23 = (v26 + v3 + v5) & ~v5;
  v6 = *(v4 + 64);
  v27 = sub_1394E0();
  v7 = *(v27 - 8);
  v8 = *(v7 + 80);
  v20 = (v23 + v6 + v8) & ~v8;
  v9 = *(v7 + 64);
  v24 = sub_1397B0();
  v10 = *(v24 - 8);
  v11 = *(v10 + 80);
  v12 = (v20 + v9 + v11) & ~v11;
  v13 = *(v10 + 64);
  v21 = sub_139600();
  v14 = *(v21 - 8);
  v15 = *(v14 + 80);
  v16 = (v12 + v13 + v15) & ~v15;
  v17 = v29 | v25 | v5 | v8 | v11 | v15;
  v18 = (*(v14 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v32 + 8))(v0 + v28, v33);
  (*(v22 + 8))(v0 + v26, v31);
  (*(v4 + 8))(v0 + v23, v30);
  (*(v7 + 8))(v0 + v20, v27);
  (*(v10 + 8))(v0 + v12, v24);
  (*(v14 + 8))(v0 + v16, v21);

  return _swift_deallocObject(v0, v18 + 16, v17 | 7);
}

uint64_t sub_11E424()
{
  v1 = *(sub_139500() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_139670() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1396C0() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1394E0() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_1397B0() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(sub_139600() - 8);
  v17 = (v14 + v15 + *(v16 + 80)) & ~*(v16 + 80);
  return sub_119714(*(v0 + 16), v0 + v2, v0 + v5, v0 + v8, v0 + v11, v0 + v14, v0 + v17, *(v0 + ((*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_11E700(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v35 = sub_139500();
  v26 = *(v35 - 8);
  v33 = *(v26 + 80);
  v7 = *(v26 + 64);
  v34 = a1(0);
  v8 = *(v34 - 8);
  v9 = *(v8 + 80);
  v27 = (((v33 + 24) & ~v33) + v7 + v9) & ~v9;
  v10 = *(v8 + 64);
  v32 = a2(0);
  v11 = *(v32 - 8);
  v12 = *(v11 + 80);
  v13 = (v27 + v10 + v12) & ~v12;
  v25 = v13;
  v14 = *(v11 + 64);
  v29 = a3(0);
  v15 = *(v29 - 8);
  v16 = *(v15 + 80);
  v17 = (v13 + v14 + v16) & ~v16;
  v18 = *(v15 + 64);
  v31 = a4(0);
  v19 = *(v31 - 8);
  v20 = *(v19 + 80);
  v21 = (v17 + v18 + v20) & ~v20;
  v24 = *(v19 + 64);
  v22 = v33 | v9 | v12 | v16 | v20;

  (*(v26 + 8))(v4 + ((v33 + 24) & ~v33), v35);
  (*(v8 + 8))(v4 + v27, v34);
  (*(v11 + 8))(v4 + v25, v32);
  (*(v15 + 8))(v4 + v17, v29);
  (*(v19 + 8))(v4 + v21, v31);

  return _swift_deallocObject(v4, v21 + v24, v22 | 7);
}

uint64_t sub_11EA20()
{
  sub_139500();
  sub_1396C0();
  sub_1394E0();
  sub_1397B0();
  sub_139720();

  return sub_11A46C();
}

uint64_t sub_11EC0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_11ED1C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_12023C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Int sub_11ED78()
{
  v1 = *v0;
  sub_139D00();
  sub_139D10(v1);
  return sub_139D20();
}

Swift::Int sub_11EDC0()
{
  v1 = *v0;
  sub_139D00();
  sub_139D10(v1);
  return sub_139D20();
}

unint64_t sub_11EE04@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_12024C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_11EE5C(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___BEDocumentPaginationDataInfo_pageSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_11EF5C()
{
  v1 = OBJC_IVAR___BEDocumentPaginationDataInfo_pageCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_11EFF4(uint64_t a1)
{
  v3 = OBJC_IVAR___BEDocumentPaginationDataInfo_pageCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_11F0B0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  return *v3;
}

double sub_11F100(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_11F150(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v7 = (a1 + *a5);
  result = swift_beginAccess();
  *v7 = a2;
  v7[1] = a3;
  return result;
}

uint64_t sub_11F1A4(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___BEDocumentPaginationDataInfo_contentSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_11F2A4()
{
  v1 = OBJC_IVAR___BEDocumentPaginationDataInfo_pageOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_11F33C(uint64_t a1)
{
  v3 = OBJC_IVAR___BEDocumentPaginationDataInfo_pageOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_11F438()
{
  v1 = OBJC_IVAR___BEDocumentPaginationDataInfo_paginationDirection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_11F4D0(uint64_t a1)
{
  v3 = OBJC_IVAR___BEDocumentPaginationDataInfo_paginationDirection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_11F5C8()
{
  v1 = OBJC_IVAR___BEDocumentPaginationDataInfo_navigationDirection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_11F660(uint64_t a1)
{
  v3 = OBJC_IVAR___BEDocumentPaginationDataInfo_navigationDirection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Class sub_11F83C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    type metadata accessor for CGRect(0);

    v5.super.isa = sub_1398E0().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_11F8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  if (a3)
  {
    type metadata accessor for CGRect(0);
    v5 = sub_1398F0();
  }

  v7 = *a4;
  swift_beginAccess();
  *(a1 + v7) = v5;
}

Class sub_11FC30(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  if (*(a1 + v4))
  {

    v5.super.isa = sub_139A30().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_11FD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v6 = sub_139A40();
  }

  else
  {
    v6 = 0;
  }

  v7 = *a4;
  swift_beginAccess();
  *(a1 + v7) = v6;
}

uint64_t sub_11FD9C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_11FDF0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

id DocumentPaginationDataInfo.__allocating_init(pageSize:pageCount:contentSize:pageOffset:paginationDirection:documentNavigationDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v17 = objc_allocWithZone(v8);
  *&v17[OBJC_IVAR___BEDocumentPaginationDataInfo_userAnnotations] = 0;
  *&v17[OBJC_IVAR___BEDocumentPaginationDataInfo_navigationAnchors] = 0;
  *&v17[OBJC_IVAR___BEDocumentPaginationDataInfo_mediaElements] = 0;
  *&v17[OBJC_IVAR___BEDocumentPaginationDataInfo_navigationAnchorItems] = 0;
  *&v17[OBJC_IVAR___BEDocumentPaginationDataInfo_landmarkAnchorItems] = 0;
  *&v17[OBJC_IVAR___BEDocumentPaginationDataInfo_physicalPageAnchors] = 0;
  *&v17[OBJC_IVAR___BEDocumentPaginationDataInfo_bookmarks] = 0;
  *&v17[OBJC_IVAR___BEDocumentPaginationDataInfo_historyEntries] = 0;
  v18 = &v17[OBJC_IVAR___BEDocumentPaginationDataInfo_pageSize];
  *v18 = a5;
  v18[1] = a6;
  *&v17[OBJC_IVAR___BEDocumentPaginationDataInfo_pageCount] = a1;
  v19 = &v17[OBJC_IVAR___BEDocumentPaginationDataInfo_contentSize];
  *v19 = a7;
  v19[1] = a8;
  *&v17[OBJC_IVAR___BEDocumentPaginationDataInfo_pageOffset] = a2;
  *&v17[OBJC_IVAR___BEDocumentPaginationDataInfo_paginationDirection] = a3;
  *&v17[OBJC_IVAR___BEDocumentPaginationDataInfo_navigationDirection] = a4;
  v21.receiver = v17;
  v21.super_class = v8;
  return objc_msgSendSuper2(&v21, "init");
}

id DocumentPaginationDataInfo.init(pageSize:pageCount:contentSize:pageOffset:paginationDirection:documentNavigationDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  *&v8[OBJC_IVAR___BEDocumentPaginationDataInfo_userAnnotations] = 0;
  *&v8[OBJC_IVAR___BEDocumentPaginationDataInfo_navigationAnchors] = 0;
  *&v8[OBJC_IVAR___BEDocumentPaginationDataInfo_mediaElements] = 0;
  *&v8[OBJC_IVAR___BEDocumentPaginationDataInfo_navigationAnchorItems] = 0;
  *&v8[OBJC_IVAR___BEDocumentPaginationDataInfo_landmarkAnchorItems] = 0;
  *&v8[OBJC_IVAR___BEDocumentPaginationDataInfo_physicalPageAnchors] = 0;
  *&v8[OBJC_IVAR___BEDocumentPaginationDataInfo_bookmarks] = 0;
  *&v8[OBJC_IVAR___BEDocumentPaginationDataInfo_historyEntries] = 0;
  v9 = &v8[OBJC_IVAR___BEDocumentPaginationDataInfo_pageSize];
  *v9 = a5;
  v9[1] = a6;
  *&v8[OBJC_IVAR___BEDocumentPaginationDataInfo_pageCount] = a1;
  v10 = &v8[OBJC_IVAR___BEDocumentPaginationDataInfo_contentSize];
  *v10 = a7;
  v10[1] = a8;
  *&v8[OBJC_IVAR___BEDocumentPaginationDataInfo_pageOffset] = a2;
  *&v8[OBJC_IVAR___BEDocumentPaginationDataInfo_paginationDirection] = a3;
  *&v8[OBJC_IVAR___BEDocumentPaginationDataInfo_navigationDirection] = a4;
  v12.receiver = v8;
  v12.super_class = type metadata accessor for DocumentPaginationDataInfo();
  return objc_msgSendSuper2(&v12, "init");
}

id DocumentPaginationDataInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentPaginationDataInfo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_12023C(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_12024C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_120284()
{
  result = qword_22CAC0;
  if (!qword_22CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CAC0);
  }

  return result;
}

unint64_t sub_1202DC()
{
  result = qword_22CAC8;
  if (!qword_22CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CAC8);
  }

  return result;
}

__n128 sub_12036C@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, __n128 *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t sub_1203CC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (*a2 + *a5);
  result = swift_beginAccess();
  *v7 = v5;
  v7[1] = v6;
  return result;
}

uint64_t sub_12042C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_1204BC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_12064C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

id sub_1210F4()
{
  result = _AEPaginationLog();
  qword_22CB90 = result;
  return result;
}

id static OS_os_log.paginationDataProvider.getter()
{
  if (qword_22C590 != -1)
  {
    swift_once();
  }

  v1 = qword_22CB90;

  return v1;
}

uint64_t __PaginationDataLogWriteLog(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_22C590 != -1)
  {
    swift_once();
  }

  v6 = qword_22CB90;
  sub_11B940(&qword_22CB98);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1939C0;
  *(v7 + 56) = sub_11B940(&qword_22CBA0);
  *(v7 + 64) = sub_1212B0();
  *(v7 + 32) = a5;
  v8 = v6;

  sub_139810();
}

unint64_t sub_1212B0()
{
  result = qword_22CBA8;
  if (!qword_22CBA8)
  {
    sub_11BF38(&qword_22CBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CBA8);
  }

  return result;
}

uint64_t sub_121374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();
  if (qword_22C590 != -1)
  {
    swift_once();
  }

  v6 = qword_22CB90;
  sub_11B940(&qword_22CB98);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1939C0;
  *(v7 + 56) = sub_11B940(&qword_22CBA0);
  *(v7 + 64) = sub_1212B0();
  *(v7 + 32) = a4;
  v8 = v6;

  sub_139810();
}

char *sub_121554(double a1, double a2, double a3, double a4)
{
  v9 = sub_139480();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v43 = &v42 - v13;
  v48 = sub_139980();
  v14 = *(v48 - 8);
  v15 = __chkstk_darwin(v48);
  v42 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v42 - v17;
  *&v4[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_regularButtonPadding] = 0x4010000000000000;
  *&v4[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_compactButtonPadding] = 0x4008000000000000;
  *&v4[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_intrinsicWidthPadding] = 0x4036000000000000;
  *&v4[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_intrinsicHeight] = 0x4046000000000000;
  *&v4[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_luminanceThreshold] = 0x3FE0000000000000;
  v4[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_selected] = 0;
  *&v4[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_buttonPadding] = 0x4010000000000000;
  v19 = sub_139990();
  v20 = [objc_opt_self() systemImageNamed:v19];

  v45 = v20;
  if (v20)
  {
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 configurationWithPointSize:4 weight:3 scale:17.0];
    v44 = v12;
    v24 = v23;
    v25 = [v22 imageWithConfiguration:v23];

    *&v4[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_regularImage] = v25;
    v26 = v22;
    v27 = [v21 configurationWithPointSize:4 weight:2 scale:17.0];
    v28 = [v26 imageWithConfiguration:v27];

    v12 = v44;
  }

  else
  {
    v28 = 0;
    *&v4[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_regularImage] = 0;
  }

  *&v4[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_compactImage] = v28;
  v29 = [objc_opt_self() buttonWithType:1];
  v30 = OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button;
  *&v4[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button] = v29;
  [v29 setImage:*&v4[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_regularImage] forState:0];
  [*&v4[v30] setClipsToBounds:1];
  v44 = *&v4[v30];
  sub_139920();
  v31 = v43;
  sub_139470();
  v32 = v48;
  (*(v14 + 16))(v42, v18, v48);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v35 = v46;
  v36 = v47;
  (*(v46 + 16))(v12, v31, v47);
  sub_1399B0();
  (*(v35 + 8))(v31, v36);
  (*(v14 + 8))(v18, v32);
  v37 = sub_139990();

  v38 = v44;
  [v44 setAccessibilityLabel:v37];

  v39 = type metadata accessor for MarkupButtonContainerView();
  v49.receiver = v4;
  v49.super_class = v39;
  v40 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  [v40 setAutoresizingMask:45];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button]];
  sub_12243C();
  sub_139B00();
  sub_139B30();

  swift_unknownObjectRelease();

  return v40;
}

void sub_121B08()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for MarkupButtonContainerView();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  v1 = OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button;
  [*&v0[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button] intrinsicContentSize];
  if (v2 <= v3)
  {
    v2 = v3;
  }

  v4 = *&v0[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_buttonPadding] + v2;
  [*&v0[v1] setFrame:{0.0, 0.0, v4, v4}];
  v5 = *&v0[v1];
  [v0 bounds];
  CGRectGetCenter();
  [v5 setCenter:?];

  v6 = [*&v0[v1] layer];
  [v6 setCornerRadius:v4 * 0.5];
}

void sub_121CB4()
{
  v1 = OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_buttonPadding;
  *&v0[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_buttonPadding] = 0x4010000000000000;
  v5 = *&v0[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_regularImage];
  v2 = [v0 traitCollection];
  v3 = [v2 verticalSizeClass];

  if (v3 == &dword_0 + 1)
  {

    *&v0[v1] = 0x4008000000000000;
    v4 = *&v0[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_compactImage];
  }

  else
  {
    v4 = v5;
  }

  v6 = v4;
  [*&v0[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button] setImage:? forState:?];
  [v0 setNeedsLayout];
}

void sub_121E48()
{
  v1 = v0;
  v2 = sub_139480();
  v41 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v40 = sub_139980();
  v7 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = objc_opt_self();
  [v13 begin];
  [v13 setDisableActions:1];
  v14 = [objc_opt_self() clearColor];
  v42 = v1;
  v15 = [v1 tintColor];
  if (v15)
  {
    v16 = v15;
    v17 = v42[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_selected];
    v38 = v13;
    if (v17 != 1)
    {
      v37 = *&v42[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button];
      sub_139920();
      sub_139470();
      v27 = *(v7 + 16);
      v28 = v12;
      v36 = v12;
      v23 = v40;
      v27(v10, v28, v40);
      type metadata accessor for BundleFinder();
      v29 = v2;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v26 = v41;
      (*(v41 + 16))(v39, v6, v29);
      v22 = v36;
      v2 = v29;
      sub_1399B0();
      goto LABEL_6;
    }

    v18 = [v42 tintColor];
    if (v18)
    {
      v19 = v18;

      v14 = v19;
      v36 = sub_122488(v14);

      v37 = *&v42[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button];
      sub_139920();
      sub_139470();
      v20 = v10;
      v21 = v12;
      v22 = v12;
      v23 = v40;
      (*(v7 + 16))(v20, v21, v40);
      type metadata accessor for BundleFinder();
      v24 = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass:v24];
      v26 = v41;
      (*(v41 + 16))(v39, v6, v2);
      sub_1399B0();
      v16 = v36;
LABEL_6:
      (*(v26 + 8))(v6, v2);
      (*(v7 + 8))(v22, v23);
      v32 = sub_139990();

      v33 = v37;
      [v37 setAccessibilityValue:v32];

      v34 = OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button;
      v35 = v42;
      [*&v42[OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button] setBackgroundColor:v14];
      [*&v35[v34] setTintColor:v16];
      [v38 commit];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_12233C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarkupButtonContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1223F0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_12243C()
{
  result = qword_22CC28;
  if (!qword_22CC28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_22CC28);
  }

  return result;
}

id sub_122488(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 blackColor];
  v4 = [a1 bc_invertedDynamicColor];
  if (!v4)
  {
    v6 = [v2 labelColor];
    v5 = [v6 bc_invertedDynamicColor];

    if (v5)
    {
      goto LABEL_4;
    }

    [a1 _luminance];
    if (v8 >= 0.5)
    {
      return v3;
    }

    v4 = [v2 whiteColor];
  }

  v5 = v4;
LABEL_4:

  return v5;
}

id AEAnnotation.annotation.getter()
{
  v0 = sub_139430();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_139460();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139450();
  v8 = sub_139440();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_139420();
  v11 = type metadata accessor for Annotation();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR___BEAnnotation_cfi];
  *v13 = 0;
  v13[1] = 0;
  *&v12[OBJC_IVAR___BEAnnotation_rects] = &_swiftEmptyArrayStorage;
  v14 = &v12[OBJC_IVAR___BEAnnotation_content];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v12[OBJC_IVAR___BEAnnotation_representativeContent];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v12[OBJC_IVAR___BEAnnotation_note];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v12[OBJC_IVAR___BEAnnotation_pageNumber];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v12[OBJC_IVAR___BEAnnotation_uuid];
  *v18 = v8;
  v18[1] = v10;
  v12[OBJC_IVAR___BEAnnotation_type] = 1;
  v12[OBJC_IVAR___BEAnnotation_style] = 0;
  v19 = *(v1 + 16);
  v19(&v12[OBJC_IVAR___BEAnnotation_creationDate], v3, v0);
  v19(&v12[OBJC_IVAR___BEAnnotation_modificationDate], v3, v0);
  v22.receiver = v12;
  v22.super_class = v11;
  v20 = objc_msgSendSuper2(&v22, "init");
  (*(v1 + 8))(v3, v0);
  return v20;
}

void *static AEAnnotation.insertObject(into:ordinal:location:annotationStyle:selectedText:representativeText:assetID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39 = a7;
  v40 = a8;
  v38 = a6;
  v37 = a5;
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v12 = sub_139430();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_139460();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_opt_self();
  v41 = sub_122BE4();
  sub_11B940(&qword_22CC38);
  sub_1399C0();
  v21 = sub_139990();

  v22 = [v20 insertNewObjectForEntityForName:v21 inManagedObjectContext:a1];

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v33[0] = a10;
    v33[1] = a11;
    sub_139450();
    sub_139440();
    (*(v17 + 8))(v19, v16);
    v24 = sub_139990();

    [v23 setAnnotationUuid:v24];

    sub_139420();
    isa = sub_139400().super.isa;
    v26 = *(v13 + 8);
    v26(v15, v12);
    [v23 setAnnotationCreationDate:isa];

    sub_139420();
    v27 = sub_139400().super.isa;
    v26(v15, v12);
    [v23 setUserModificationDate:v27];

    [v23 setOrdinal:v34];
    v28 = sub_139990();
    [v23 setAnnotationLocation:v28];

    [v23 setAnnotationStyle:v37];
    v29 = sub_139990();
    [v23 setAnnotationSelectedText:v29];

    v30 = sub_139990();
    [v23 setAnnotationRepresentativeText:v30];

    [v23 setAnnotationCreatorIdentifier:kAEAnnotationCreatorIdentifier_iBooks];
    v31 = sub_139990();
    [v23 setAnnotationAssetID:v31];
  }

  else
  {
  }

  return v23;
}

unint64_t sub_122BE4()
{
  result = qword_22CC30;
  if (!qword_22CC30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_22CC30);
  }

  return result;
}

uint64_t DocumentCollectionType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 3)
    {
      return 7630194;
    }

    if (a1 == 2)
    {
      return 6710384;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6261776F6C666572;
    }

    if (a1 == 1)
    {
      return 0x79614C6465786966;
    }
  }

  result = sub_139CE0();
  __break(1u);
  return result;
}

uint64_t sub_122D60()
{
  v1 = (v0 + OBJC_IVAR___BEBookViewModel_documentUniqueID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_122E24(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___BEBookViewModel_documentUniqueID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_122E84(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___BEBookViewModel_documentUniqueID);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t BookViewModel.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___BEBookViewModel_title);

  return v1;
}

id sub_122FA4()
{

  v0 = sub_139990();

  return v0;
}

uint64_t BookViewModel.path.getter()
{
  v1 = *(v0 + OBJC_IVAR___BEBookViewModel_path);

  return v1;
}

uint64_t sub_123100()
{
  v1 = OBJC_IVAR___BEBookViewModel_sample;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_123198(char a1)
{
  v3 = OBJC_IVAR___BEBookViewModel_sample;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id BookViewModel.__allocating_init(uuid:title:authors:sample:path:documents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v10 = v9;
  v35 = a7;
  v36 = a8;
  v34 = a6;
  v33 = a5;
  v15 = sub_11B940(&qword_22CC68);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - v17;
  v32 = v10;
  v19 = objc_allocWithZone(v10);
  v20 = OBJC_IVAR___BEBookViewModel__pageTotal;
  v39 = 0;
  sub_139850();
  (*(v16 + 32))(&v19[v20], v18, v15);
  v21 = &v19[OBJC_IVAR___BEBookViewModel_documentUniqueID];
  *v21 = a1;
  v21[1] = a2;
  v22 = &v19[OBJC_IVAR___BEBookViewModel_title];
  *v22 = a3;
  v22[1] = a4;
  *&v19[OBJC_IVAR___BEBookViewModel_authors] = v33;
  v19[OBJC_IVAR___BEBookViewModel_sample] = v34;
  v23 = &v19[OBJC_IVAR___BEBookViewModel_path];
  v24 = v36;
  *v23 = v35;
  v23[1] = v24;
  if (!(a9 >> 62))
  {
    v25 = *(&dword_10 + (a9 & 0xFFFFFFFFFFFFFF8));
    if (v25)
    {
      goto LABEL_3;
    }

LABEL_11:

    v39 = sub_1268A8(v29, sub_126944);
    sub_125B5C(&v39);

    v30 = v39;
    swift_beginAccess();
    v38 = v30;
    sub_11B940(&qword_22CC80);
    sub_139850();
    swift_endAccess();
    v37.receiver = v19;
    v37.super_class = v32;
    return objc_msgSendSuper2(&v37, "init");
  }

  v25 = sub_139C70();
  if (!v25)
  {
    goto LABEL_11;
  }

LABEL_3:
  v39 = &_swiftEmptyArrayStorage;
  sub_139C10();
  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    do
    {
      if ((a9 & 0xC000000000000001) != 0)
      {
        v27 = sub_139BE0();
      }

      else
      {
        v27 = *(a9 + 8 * v26 + 32);
        swift_unknownObjectRetain();
      }

      ++v26;
      v28 = objc_allocWithZone(type metadata accessor for Document());
      Document.init(document:)(v27);
      sub_139BF0();
      sub_139C20();
      sub_139C30();
      sub_139C00();
    }

    while (v25 != v26);
    goto LABEL_11;
  }

  __break(1u);

  __break(1u);
  return result;
}

id BookViewModel.init(uuid:title:authors:sample:path:documents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v10 = v9;
  v35 = a7;
  v36 = a8;
  v34 = a6;
  v33 = a5;
  v15 = sub_11B940(&qword_22CC68);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - v17;
  v19 = OBJC_IVAR___BEBookViewModel__pageTotal;
  v39 = 0;
  sub_139850();
  (*(v16 + 32))(&v10[v19], v18, v15);
  v20 = &v10[OBJC_IVAR___BEBookViewModel_documentUniqueID];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v10[OBJC_IVAR___BEBookViewModel_title];
  *v21 = a3;
  v21[1] = a4;
  *&v10[OBJC_IVAR___BEBookViewModel_authors] = v33;
  v10[OBJC_IVAR___BEBookViewModel_sample] = v34;
  v22 = &v10[OBJC_IVAR___BEBookViewModel_path];
  v23 = v36;
  *v22 = v35;
  v22[1] = v23;
  if (!(a9 >> 62))
  {
    v24 = *(&dword_10 + (a9 & 0xFFFFFFFFFFFFFF8));
    if (v24)
    {
      goto LABEL_3;
    }

LABEL_11:

    v39 = sub_1268A8(v28, sub_126944);
    sub_125B5C(&v39);

    v29 = v39;
    swift_beginAccess();
    v38 = v29;
    sub_11B940(&qword_22CC80);
    sub_139850();
    swift_endAccess();
    v30 = type metadata accessor for BookViewModel();
    v37.receiver = v10;
    v37.super_class = v30;
    return objc_msgSendSuper2(&v37, "init");
  }

  v24 = sub_139C70();
  if (!v24)
  {
    goto LABEL_11;
  }

LABEL_3:
  v39 = &_swiftEmptyArrayStorage;
  sub_139C10();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    do
    {
      if ((a9 & 0xC000000000000001) != 0)
      {
        v26 = sub_139BE0();
      }

      else
      {
        v26 = *(a9 + 8 * v25 + 32);
        swift_unknownObjectRetain();
      }

      ++v25;
      v27 = objc_allocWithZone(type metadata accessor for Document());
      Document.init(document:)(v26);
      sub_139BF0();
      sub_139C20();
      sub_139C30();
      sub_139C00();
    }

    while (v24 != v25);
    goto LABEL_11;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1238A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1398A0();
}

uint64_t BookViewModel.init(book:)(void *a1)
{
  v40 = sub_11B940(&qword_22CC68);
  v2 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = &v35 - v3;
  v5 = [a1 documentUniqueID];
  v6 = sub_1399A0();
  v38 = v7;
  v39 = v6;

  v8 = [a1 title];
  v9 = sub_1399A0();
  v36 = v10;
  v37 = v9;

  v11 = [a1 authors];
  v12 = sub_139A40();

  v13 = [a1 sample];
  v14 = [a1 path];
  v15 = sub_1399A0();
  v17 = v16;

  v18 = [a1 paginatableDocuments];
  sub_11B940(&qword_22CC88);
  v19 = sub_139A40();

  v35 = type metadata accessor for BookViewModel();
  v20 = objc_allocWithZone(v35);
  v21 = OBJC_IVAR___BEBookViewModel__pageTotal;
  v43 = 0;
  sub_139850();
  (*(v2 + 32))(&v20[v21], v4, v40);
  v22 = &v20[OBJC_IVAR___BEBookViewModel_documentUniqueID];
  v23 = v38;
  *v22 = v39;
  v22[1] = v23;
  v24 = &v20[OBJC_IVAR___BEBookViewModel_title];
  v25 = v36;
  *v24 = v37;
  v24[1] = v25;
  *&v20[OBJC_IVAR___BEBookViewModel_authors] = v12;
  v20[OBJC_IVAR___BEBookViewModel_sample] = v13;
  v26 = &v20[OBJC_IVAR___BEBookViewModel_path];
  *v26 = v15;
  v26[1] = v17;
  if (!(v19 >> 62))
  {
    v27 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_11:

    v43 = sub_1268A8(v31, sub_126944);
    sub_125B5C(&v43);

    v32 = v43;
    swift_beginAccess();
    v42 = v32;
    sub_11B940(&qword_22CC80);
    sub_139850();
    swift_endAccess();
    v41.receiver = v20;
    v41.super_class = v35;
    v33 = objc_msgSendSuper2(&v41, "init");
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v33;
  }

  v27 = sub_139C70();
  if (!v27)
  {
    goto LABEL_11;
  }

LABEL_3:
  v43 = &_swiftEmptyArrayStorage;
  sub_139C10();
  if ((v27 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v29 = sub_139BE0();
      }

      else
      {
        v29 = *(v19 + 8 * v28 + 32);
        swift_unknownObjectRetain();
      }

      ++v28;
      v30 = objc_allocWithZone(type metadata accessor for Document());
      Document.init(document:)(v29);
      sub_139BF0();
      sub_139C20();
      sub_139C30();
      sub_139C00();
    }

    while (v27 != v28);
    goto LABEL_11;
  }

  __break(1u);

  __break(1u);
  return result;
}

id BookViewModel.__allocating_init(uuid:title:author:sample:path:documents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v38 = a8;
  v37 = a7;
  v35 = a4;
  v36 = a9;
  v15 = sub_11B940(&qword_22CC68);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v34 - v17;
  sub_11B940(&qword_22CC90);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1939C0;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  v34 = type metadata accessor for BookViewModel();
  v20 = objc_allocWithZone(v34);
  v21 = OBJC_IVAR___BEBookViewModel__pageTotal;
  v41 = 0;
  sub_139850();
  (*(v16 + 32))(&v20[v21], v18, v15);
  v22 = &v20[OBJC_IVAR___BEBookViewModel_documentUniqueID];
  *v22 = a1;
  v22[1] = a2;
  v23 = &v20[OBJC_IVAR___BEBookViewModel_title];
  v24 = v35;
  *v23 = a3;
  v23[1] = v24;
  *&v20[OBJC_IVAR___BEBookViewModel_authors] = v19;
  v20[OBJC_IVAR___BEBookViewModel_sample] = v37;
  v25 = &v20[OBJC_IVAR___BEBookViewModel_path];
  v26 = v36;
  *v25 = v38;
  v25[1] = v26;
  if (!(a10 >> 62))
  {
    v27 = *(&dword_10 + (a10 & 0xFFFFFFFFFFFFFF8));
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_11:

    v41 = sub_1268A8(v31, sub_126944);
    sub_125B5C(&v41);

    v32 = v41;
    swift_beginAccess();
    v40 = v32;
    sub_11B940(&qword_22CC80);
    sub_139850();
    swift_endAccess();
    v39.receiver = v20;
    v39.super_class = v34;
    return objc_msgSendSuper2(&v39, "init");
  }

  v27 = sub_139C70();
  if (!v27)
  {
    goto LABEL_11;
  }

LABEL_3:
  v41 = &_swiftEmptyArrayStorage;
  sub_139C10();
  if ((v27 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    do
    {
      if ((a10 & 0xC000000000000001) != 0)
      {
        v29 = sub_139BE0();
      }

      else
      {
        v29 = *(a10 + 8 * v28 + 32);
        swift_unknownObjectRetain();
      }

      ++v28;
      v30 = objc_allocWithZone(type metadata accessor for Document());
      Document.init(document:)(v29);
      sub_139BF0();
      sub_139C20();
      sub_139C30();
      sub_139C00();
    }

    while (v27 != v28);
    goto LABEL_11;
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_124168(id a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  if (v7 >> 62)
  {
LABEL_15:
    v2 = sub_139C70();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v4 = sub_139BE0();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return v4;
          }
        }

        else
        {
          if (v3 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          v4 = *(v7 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        if ([v4 ordinal] == a1)
        {
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

uint64_t sub_1243D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  return v1;
}

uint64_t sub_1244D8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  *a1 = v3;
  return result;
}

uint64_t sub_124558(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1398A0();
}

uint64_t (*sub_1245D0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_139880();
  return sub_124674;
}

uint64_t sub_124678(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CCA0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CC98);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_124818(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CCA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CC98);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_124950(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_11B940(&qword_22CCA0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___BEBookViewModel__paginatableDocuments;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_11B940(&qword_22CC98);
  sub_139860();
  swift_endAccess();
  return sub_127650;
}

uint64_t sub_124AC0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  *a1 = v3;
  return result;
}

uint64_t sub_124B40(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1398A0();
}

uint64_t sub_124BB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  return v1;
}

uint64_t sub_124C24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1398A0();
}

uint64_t (*sub_124C90(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_139880();
  return sub_12764C;
}

void sub_124D34(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_124D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_11B940(a5);
  sub_139860();
  return swift_endAccess();
}

uint64_t sub_124E18(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CCA8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CC68);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_124FB8(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_11B940(a2);
  sub_139860();
  return swift_endAccess();
}

uint64_t sub_125030(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CCA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CC68);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_125168(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_11B940(&qword_22CCA8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___BEBookViewModel__pageTotal;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_11B940(&qword_22CC68);
  sub_139860();
  swift_endAccess();
  return sub_1252D8;
}

void sub_1252DC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_139870();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_139870();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id BookViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BookViewModel.description.getter()
{
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_139BD0(20);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BookViewModel();
  v1 = objc_msgSendSuper2(&v7, "description");
  v2 = sub_1399A0();
  v4 = v3;

  v8 = v2;
  v9 = v4;
  v10._object = 0x8000000000185B90;
  v10._countAndFlagsBits = 0xD000000000000010;
  sub_1399F0(v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  if (v6 >> 62)
  {
    sub_139C70();
  }

  v11._countAndFlagsBits = sub_139CA0();
  sub_1399F0(v11);

  return v8;
}

id sub_125784(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_139990();

  return v5;
}

char *BookViewModel.debugDescription.getter()
{
  v1 = [v0 description];
  v2 = sub_1399A0();

  v18._countAndFlagsBits = 10;
  v18._object = 0xE100000000000000;
  sub_1399F0(v18);

  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  if (!(v2 >> 62))
  {
    v4 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:

LABEL_17:
    sub_11B940(&qword_22CCB0);
    sub_127604(&qword_22CCB8, &qword_22CCB0);
    v15 = sub_139900();
    v17 = v16;

    v19._countAndFlagsBits = v15;
    v19._object = v17;
    sub_1399F0(v19);

    return v3;
  }

  v4 = sub_139C70();
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  result = sub_12674C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        sub_139BE0();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      type metadata accessor for Document();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = [v7 debugDescription];
        v9 = sub_1399A0();
        v11 = v10;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_12674C((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v11;
    }

    while (v4 != v6);

    v3 = v2;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void *sub_125AD4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_11B940(&qword_22CD20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_125B5C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_136A3C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_125BD8(v6);
  return sub_139C00();
}

Swift::Int sub_125BD8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_139C90(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_11B940(&qword_22CC88);
        v6 = sub_139A70();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_125DE8(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_125CE8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_125CE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v15 = v7;
    v16 = v6;
    while (1)
    {
      v9 = *v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = [v8 ordinal];
      v11 = [v9 ordinal];
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v10 >= v11)
      {
LABEL_4:
        ++v4;
        v6 = v16 + 8;
        v7 = v15 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v12 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v12;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_125DE8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_90:
    v7 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_136310(v8);
      v8 = result;
    }

    v87 = *(v8 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = v8;
        v8 = (v87 - 1);
        v89 = *&v88[16 * v87];
        v90 = *&v88[16 * v87 + 24];
        sub_126468((*a3 + 8 * v89), (*a3 + 8 * *&v88[16 * v87 + 16]), (*a3 + 8 * v90), v7);
        if (v5)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_136310(v88);
        }

        if (v87 - 2 >= *(v88 + 2))
        {
          goto LABEL_116;
        }

        v91 = &v88[16 * v87];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_136284(v87 - 1);
        v8 = v88;
        v87 = *(v88 + 2);
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v97 = v5;
      v10 = *(*a3 + 8 * v7);
      v93 = 8 * v9;
      v11 = (*a3 + 8 * v9);
      v13 = *v11;
      v12 = v11 + 2;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v102 = [v10 ordinal];
      v100 = [v13 ordinal];
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v95 = v9;
      v14 = v9 + 2;
      while (v6 != v14)
      {
        v16 = *(v12 - 1);
        v15 = *v12;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v17 = v8;
        v18 = [v15 ordinal];
        v7 = [v16 ordinal];
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v19 = v18 < v7;
        v8 = v17;
        v20 = !v19;
        ++v14;
        ++v12;
        if ((((v102 < v100) ^ v20) & 1) == 0)
        {
          v6 = v14 - 1;
          break;
        }
      }

      v9 = v95;
      v5 = v97;
      v21 = v93;
      if (v102 < v100)
      {
        if (v6 < v95)
        {
          goto LABEL_119;
        }

        if (v95 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v95;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v25 = *(v26 + v21);
              *(v26 + v21) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v21 += 8;
          }

          while (v24 < v23);
        }
      }

      v7 = v6;
    }

    v27 = a3[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v28 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v28)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_135758(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v41 = *(v8 + 2);
    v40 = *(v8 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_135758((v40 > 1), v41 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v42;
    v43 = &v8[16 * v41];
    *(v43 + 4) = v9;
    *(v43 + 5) = v7;
    v44 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v8 + 4);
          v47 = *(v8 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_59:
          if (v49)
          {
            goto LABEL_106;
          }

          v62 = &v8[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_109;
          }

          v68 = &v8[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_113;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v72 = &v8[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_73:
        if (v67)
        {
          goto LABEL_108;
        }

        v75 = &v8[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_111;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_80:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = *&v8[16 * v83 + 32];
        v85 = *&v8[16 * v45 + 40];
        sub_126468((*a3 + 8 * v84), (*a3 + 8 * *&v8[16 * v45 + 32]), (*a3 + 8 * v85), v44);
        if (v5)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_136310(v8);
        }

        if (v83 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v86 = &v8[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_136284(v45);
        v42 = *(v8 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v8[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_104;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_105;
      }

      v57 = &v8[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_107;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_110;
      }

      if (v61 >= v53)
      {
        v79 = &v8[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_114;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v94 = v8;
  v96 = v9;
  v98 = v5;
  v29 = *a3;
  v30 = *a3 + 8 * v7 - 8;
  v31 = v9 - v7;
  v101 = v28;
LABEL_32:
  v103 = v7;
  v32 = *(v29 + 8 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v36 = [v32 ordinal];
    v37 = [v35 ordinal];
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v36 >= v37)
    {
LABEL_31:
      v7 = v103 + 1;
      v30 += 8;
      --v31;
      if ((v103 + 1) != v101)
      {
        goto LABEL_32;
      }

      v7 = v101;
      v9 = v96;
      v5 = v98;
      v8 = v94;
      goto LABEL_39;
    }

    if (!v29)
    {
      break;
    }

    v38 = *v34;
    v32 = *(v34 + 8);
    *v34 = v32;
    *(v34 + 8) = v38;
    v34 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_126468(char *__dst, void **a2, void **a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v22 = a2;
      v23 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v23;
      a2 = v22;
    }

    v37 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v35 = v5;
LABEL_27:
        v36 = a2;
        v24 = a2 - 1;
        --v4;
        v25 = v14;
        v26 = v14;
        do
        {
          v27 = v4 + 1;
          v28 = *--v26;
          v29 = v24;
          v30 = *v24;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v31 = [v28 ordinal];
          v32 = [v30 ordinal];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v31 < v32)
          {
            v33 = v29;
            if (v27 != v36)
            {
              *v4 = *v29;
            }

            v13 = v37;
            v14 = v25;
            if (v25 <= v37 || (a2 = v33, v33 <= v35))
            {
              a2 = v33;
              goto LABEL_39;
            }

            goto LABEL_27;
          }

          if (v27 != v25)
          {
            *v4 = *v26;
          }

          --v4;
          v25 = v26;
          v13 = v37;
          v24 = v29;
        }

        while (v26 > v37);
        v14 = v26;
        a2 = v36;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v15;
        v17 = *v13;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = [v16 ordinal];
        v19 = [v17 ordinal];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v18 >= v19)
        {
          break;
        }

        v20 = v15;
        v21 = v5 == v15++;
        if (!v21)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v13 >= v14 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v20 = v13;
      v21 = v5 == v13++;
      if (v21)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v20;
      goto LABEL_18;
    }

LABEL_20:
    a2 = v5;
  }

LABEL_39:
  if (a2 != v13 || a2 >= (v13 + ((v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * ((v14 - v13) / 8));
  }

  return 1;
}

char *sub_12674C(char *a1, int64_t a2, char a3)
{
  result = sub_12676C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_12676C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_11B940(&qword_22CC90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1268A8(unint64_t a1, void (*a2)(char *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_139C70();
  if (!v5)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_125AD4(v5, 0);
  a2(v7 + 32, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_126944(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_139C70();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_139C70();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_127604(&qword_22CD28, &qword_22CC80);
          for (i = 0; i != v6; ++i)
          {
            sub_11B940(&qword_22CC80);
            v9 = sub_126C98(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_11B940(&qword_22CC88);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_126AF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_139C70();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_139C70();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_127604(&qword_22CD18, &qword_22CD10);
          for (i = 0; i != v6; ++i)
          {
            sub_11B940(&qword_22CD10);
            v9 = sub_126D20(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for Page();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_126C98(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_139BE0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_126D18;
  }

  __break(1u);
  return result;
}

void (*sub_126D20(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_139BE0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_126DA0;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for BookViewModel()
{
  result = qword_22CCF0;
  if (!qword_22CCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_126E08()
{
  result = qword_22CCC0;
  if (!qword_22CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCC0);
  }

  return result;
}

uint64_t sub_126E5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___BEBookViewModel_documentUniqueID);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_126EB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BEBookViewModel_sample;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_126F10(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BEBookViewModel_sample;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_126FE4()
{
  sub_12754C();
  if (v0 <= 0x3F)
  {
    sub_1275B0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_12754C()
{
  if (!qword_22CD00)
  {
    sub_11BF38(&qword_22CC80);
    v0 = sub_1398B0();
    if (!v1)
    {
      atomic_store(v0, &qword_22CD00);
    }
  }
}

void sub_1275B0()
{
  if (!qword_22CD08)
  {
    v0 = sub_1398B0();
    if (!v1)
    {
      atomic_store(v0, &qword_22CD08);
    }
  }
}

uint64_t sub_127604(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_11BF38(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *MarkupBarButtonItem.init()()
{
  *&v0[OBJC_IVAR___AEMarkupBarButtonItem_toggleView] = [objc_allocWithZone(type metadata accessor for MarkupButtonContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MarkupBarButtonItem();
  v1 = objc_msgSendSuper2(&v3, "init");
  [v1 setCustomView:*&v1[OBJC_IVAR___AEMarkupBarButtonItem_toggleView]];
  return v1;
}

uint64_t sub_1278B0(uint64_t a1)
{
  v3 = [v1 action];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 target];
    if (v5)
    {
      [*(*&v1[OBJC_IVAR___AEMarkupBarButtonItem_toggleView] + OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button) removeTarget:v5 action:v4 forControlEvents:64];
      swift_unknownObjectRelease();
    }
  }

  v12.receiver = v1;
  v12.super_class = type metadata accessor for MarkupBarButtonItem();
  objc_msgSendSuper2(&v12, "setTarget:", a1);
  v6 = [v1 action];
  if (v6)
  {
    v7 = v6;
    v8 = [v1 target];
    if (v8)
    {
      v9 = v8;
      v10 = *(*&v1[OBJC_IVAR___AEMarkupBarButtonItem_toggleView] + OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button);
      swift_unknownObjectRetain();
      [v10 addTarget:v9 action:v7 forControlEvents:64];

      swift_unknownObjectRelease_n();
    }
  }

  return swift_unknownObjectRelease();
}

id sub_127A9C(uint64_t a1)
{
  v3 = [v1 action];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 target];
    if (v5)
    {
      [*(*&v1[OBJC_IVAR___AEMarkupBarButtonItem_toggleView] + OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button) removeTarget:v5 action:v4 forControlEvents:64];
      swift_unknownObjectRelease();
    }
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for MarkupBarButtonItem();
  objc_msgSendSuper2(&v8, "setAction:", a1);
  result = [v1 action];
  if (result)
  {
    v7 = result;
    result = [v1 target];
    if (result)
    {
      [*(*&v1[OBJC_IVAR___AEMarkupBarButtonItem_toggleView] + OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button) addTarget:result action:v7 forControlEvents:64];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_127C78(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MarkupBarButtonItem();
  return objc_msgSendSuper2(&v5, *a3);
}

id MarkupBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarkupBarButtonItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id BKDocument.document.getter()
{
  v1 = v0;
  v2 = sub_11B940(&qword_22CD60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - v4;
  v6 = sub_11B940(&qword_22CC68);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  result = [v1 documentOrdinal];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  v12 = [result integerValue];

  result = [v1 href];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v13 = result;
  v14 = sub_1399A0();
  v38 = v15;
  v39 = v14;

  result = [v1 manifestId];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = result;
  v36 = v12;
  v37 = v2;
  v17 = sub_1399A0();
  v34 = v18;
  v35 = v17;

  result = [v1 manifestId];
  if (result)
  {
    v19 = result;
    v20 = sub_1399A0();
    v22 = v21;

    v23 = type metadata accessor for Document();
    v24 = objc_allocWithZone(v23);
    v25 = OBJC_IVAR___BEDocument__pageOffset;
    v41 = 0;
    sub_139850();
    (*(v7 + 32))(&v24[v25], v9, v6);
    v26 = OBJC_IVAR___BEDocument__pages;
    v41 = _swiftEmptyArrayStorage;
    sub_11B940(&qword_22CD10);
    sub_139850();
    (*(v3 + 32))(&v24[v26], v5, v37);
    *&v24[OBJC_IVAR___BEDocument_paginationData] = 0;
    *&v24[OBJC_IVAR___BEDocument_ordinal] = v36;
    v27 = &v24[OBJC_IVAR___BEDocument_href];
    v28 = v38;
    *v27 = v39;
    v27[1] = v28;
    v29 = &v24[OBJC_IVAR___BEDocument_manifestId];
    v30 = v34;
    *v29 = v35;
    v29[1] = v30;
    v31 = &v24[OBJC_IVAR___BEDocument_assetId];
    *v31 = v20;
    v31[1] = v22;
    v32 = &v24[OBJC_IVAR___BEDocument_title];
    *v32 = 0;
    *(v32 + 1) = 0;
    *&v24[OBJC_IVAR___BEDocument_file_size] = 0;
    v40.receiver = v24;
    v40.super_class = v23;
    return objc_msgSendSuper2(&v40, "init");
  }

LABEL_9:
  __break(1u);
  return result;
}

Swift::Void __swiftcall CABasicAnimation.reverseValues()()
{
  if ([v0 toValue])
  {
    sub_139B70();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if ([v0 fromValue])
  {
    sub_139B70();
    swift_unknownObjectRelease();
    sub_1283D4(&v8, *(&v9 + 1));
    v1 = sub_139CB0();
    sub_1223F0(&v8);
  }

  else
  {
    v1 = 0;
  }

  [v0 setToValue:v1];
  swift_unknownObjectRelease();
  sub_1282FC(v10, &v8);
  v2 = *(&v9 + 1);
  if (*(&v9 + 1))
  {
    v3 = sub_1283D4(&v8, *(&v9 + 1));
    v4 = *(v2 - 8);
    __chkstk_darwin(v3);
    v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_139CB0();
    (*(v4 + 8))(v6, v2);
    sub_1223F0(&v8);
  }

  else
  {
    v7 = 0;
  }

  [v0 setFromValue:v7];
  swift_unknownObjectRelease();
  sub_12836C(v10);
}

uint64_t sub_1282FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_11B940(&qword_22C8D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12836C(uint64_t a1)
{
  v2 = sub_11B940(&qword_22C8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1283D4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id Annotation.__allocating_init(uuid:type:style:creationDate:)(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = *a3;
  v13 = *a4;
  v14 = &v11[OBJC_IVAR___BEAnnotation_cfi];
  *v14 = 0;
  v14[1] = 0;
  *&v11[OBJC_IVAR___BEAnnotation_rects] = _swiftEmptyArrayStorage;
  v15 = &v11[OBJC_IVAR___BEAnnotation_content];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v11[OBJC_IVAR___BEAnnotation_representativeContent];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v11[OBJC_IVAR___BEAnnotation_note];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v11[OBJC_IVAR___BEAnnotation_pageNumber];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v11[OBJC_IVAR___BEAnnotation_uuid];
  *v19 = a1;
  v19[1] = a2;
  v11[OBJC_IVAR___BEAnnotation_type] = v12;
  v11[OBJC_IVAR___BEAnnotation_style] = v13;
  v20 = OBJC_IVAR___BEAnnotation_creationDate;
  v21 = sub_139430();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v23(&v11[v20], a5, v21);
  v23(&v11[OBJC_IVAR___BEAnnotation_modificationDate], a5, v21);
  v26.receiver = v11;
  v26.super_class = v5;
  v24 = objc_msgSendSuper2(&v26, "init");
  (*(v22 + 8))(a5, v21);
  return v24;
}

uint64_t sub_1287D8(uint64_t a1)
{
  v3 = OBJC_IVAR___BEAnnotation_rects;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_128830(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BEAnnotation_rects;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id sub_128904(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_139990();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1289A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1399A0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_128B04(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_128B78(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_128BD8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

BOOL sub_128C94()
{
  v1 = v0 + OBJC_IVAR___BEAnnotation_note;
  swift_beginAccess();
  return *(v1 + 8) != 0;
}

uint64_t sub_128D5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_139430();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_128DE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_139430();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v12 + v13, v11, v8);
  return swift_endAccess();
}

uint64_t sub_128F08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_139430();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_128F98(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_139430();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

AEBookPlugins::Annotation::AnnotationType_optional __swiftcall Annotation.AnnotationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AEBookPlugins::Annotation::Style_optional __swiftcall Annotation.Style.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int sub_129110()
{
  v1 = *v0;
  sub_139D00();
  sub_139D10(v1);
  return sub_139D20();
}

Swift::Int sub_129158()
{
  v1 = *v0;
  sub_139D00();
  sub_139D10(v1);
  return sub_139D20();
}

uint64_t sub_1291A4@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___BEAnnotation_type;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1291F8(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___BEAnnotation_type;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1292A8@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___BEAnnotation_style;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1292FC(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___BEAnnotation_style;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1293AC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___BEAnnotation_uuid);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_129418()
{
  v1 = (v0 + OBJC_IVAR___BEAnnotation_uuid);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_129470(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___BEAnnotation_uuid);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_129530()
{
  v1 = v0 + OBJC_IVAR___BEAnnotation_pageNumber;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_12957C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___BEAnnotation_pageNumber;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id Annotation.init(uuid:type:style:creationDate:)(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5)
{
  v7 = *a3;
  v8 = *a4;
  v9 = &v5[OBJC_IVAR___BEAnnotation_cfi];
  *v9 = 0;
  v9[1] = 0;
  *&v5[OBJC_IVAR___BEAnnotation_rects] = _swiftEmptyArrayStorage;
  v10 = &v5[OBJC_IVAR___BEAnnotation_content];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v5[OBJC_IVAR___BEAnnotation_representativeContent];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v5[OBJC_IVAR___BEAnnotation_note];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v5[OBJC_IVAR___BEAnnotation_pageNumber];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v5[OBJC_IVAR___BEAnnotation_uuid];
  *v14 = a1;
  v14[1] = a2;
  v5[OBJC_IVAR___BEAnnotation_type] = v7;
  v5[OBJC_IVAR___BEAnnotation_style] = v8;
  v15 = OBJC_IVAR___BEAnnotation_creationDate;
  v16 = sub_139430();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(&v5[v15], a5, v16);
  v18(&v5[OBJC_IVAR___BEAnnotation_modificationDate], a5, v16);
  v21.receiver = v5;
  v21.super_class = type metadata accessor for Annotation();
  v19 = objc_msgSendSuper2(&v21, "init");
  (*(v17 + 8))(a5, v16);
  return v19;
}

uint64_t type metadata accessor for Annotation()
{
  result = qword_22CDE0;
  if (!qword_22CDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Annotation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Annotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t Annotation.description.getter()
{
  v1 = v0;
  sub_139BD0(57);
  v19 = 0;
  v20 = 0xE000000000000000;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for Annotation();
  v2 = objc_msgSendSuper2(&v18, "description");
  v3 = sub_1399A0();
  v5 = v4;

  v21._countAndFlagsBits = v3;
  v21._object = v5;
  sub_1399F0(v21);

  v22._countAndFlagsBits = 0x203A6469757520;
  v6 = 0xE700000000000000;
  v22._object = 0xE700000000000000;
  sub_1399F0(v22);
  v7 = &v1[OBJC_IVAR___BEAnnotation_uuid];
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];

  v23._countAndFlagsBits = v8;
  v23._object = v9;
  sub_1399F0(v23);

  v24._countAndFlagsBits = 0x6F697461636F6C20;
  v24._object = 0xEB00000000203A6ELL;
  sub_1399F0(v24);
  swift_beginAccess();

  sub_11B940(&qword_22CD90);
  v25._countAndFlagsBits = sub_1399C0();
  sub_1399F0(v25);

  v26._countAndFlagsBits = 0x6D754E6567617020;
  v26._object = 0xEC000000203A7265;
  sub_1399F0(v26);
  swift_beginAccess();
  sub_11B940(&qword_22CD98);
  v27._countAndFlagsBits = sub_1399C0();
  sub_1399F0(v27);

  v28._countAndFlagsBits = 0x203A6570797420;
  v28._object = 0xE700000000000000;
  sub_1399F0(v28);
  v10 = OBJC_IVAR___BEAnnotation_type;
  swift_beginAccess();
  v11 = v1[v10];
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v6 = 0xE600000000000000;
      v12._countAndFlagsBits = 0x6C61626F6C67;
    }

    else
    {
      if (v11 == 4)
      {
        v6 = 0xEC00000065676150;
      }

      else
      {
        v6 = 0xEF72657470616843;
      }

      v12._countAndFlagsBits = 0x6C61636973796870;
    }
  }

  else if (v1[v10])
  {
    v6 = 0xE500000000000000;
    if (v11 == 1)
    {
      v12._countAndFlagsBits = 0x746E696F70;
    }

    else
    {
      v12._countAndFlagsBits = 0x65676E6172;
    }
  }

  else
  {
    v12._countAndFlagsBits = 0x6E776F6E6B6E75;
  }

  v12._object = v6;
  sub_1399F0(v12);

  v29._countAndFlagsBits = 0x203A656C79747320;
  v29._object = 0xE800000000000000;
  sub_1399F0(v29);
  v13 = OBJC_IVAR___BEAnnotation_style;
  swift_beginAccess();
  v14 = v1[v13];
  if (v14 <= 2)
  {
    if (v1[v13])
    {
      if (v14 == 1)
      {
        v15 = 0xE500000000000000;
        v16._countAndFlagsBits = 0x6E65657267;
      }

      else
      {
        v15 = 0xE400000000000000;
        v16._countAndFlagsBits = 1702194274;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      v16._countAndFlagsBits = 1701736302;
    }
  }

  else if (v1[v13] > 4u)
  {
    if (v14 == 5)
    {
      v15 = 0xE600000000000000;
      v16._countAndFlagsBits = 0x656C70727570;
    }

    else
    {
      v15 = 0xE900000000000065;
      v16._countAndFlagsBits = 0x6E696C7265646E75;
    }
  }

  else if (v14 == 3)
  {
    v15 = 0xE600000000000000;
    v16._countAndFlagsBits = 0x776F6C6C6579;
  }

  else
  {
    v15 = 0xE400000000000000;
    v16._countAndFlagsBits = 1802398064;
  }

  v16._object = v15;
  sub_1399F0(v16);

  return v19;
}

id sub_129DE8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_139990();

  return v5;
}

uint64_t Annotation.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_139430();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 description];
  v7 = sub_1399A0();
  v9 = v8;

  v28 = v7;
  v29 = v9;

  v32._countAndFlagsBits = 10;
  v32._object = 0xE100000000000000;
  sub_1399F0(v32);

  v10 = v29;
  v23 = v28;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_139BD0(45);

  v30 = 0x3A746E65746E6F63;
  v31 = 0xE900000000000020;
  v11 = &v1[OBJC_IVAR___BEAnnotation_content];
  swift_beginAccess();
  v12 = *(v11 + 1);
  v26 = *v11;
  v27 = v12;

  sub_11B940(&qword_22CD90);
  v33._countAndFlagsBits = sub_1399C0();
  sub_1399F0(v33);

  v34._countAndFlagsBits = 0x203A65746F6E20;
  v34._object = 0xE700000000000000;
  sub_1399F0(v34);
  v13 = &v1[OBJC_IVAR___BEAnnotation_note];
  swift_beginAccess();
  v14 = *(v13 + 1);
  v24 = *v13;
  v25 = v14;

  v35._countAndFlagsBits = sub_1399C0();
  sub_1399F0(v35);

  v36._countAndFlagsBits = 0x6465746165726320;
  v36._object = 0xEA0000000000203ALL;
  sub_1399F0(v36);
  v15 = OBJC_IVAR___BEAnnotation_creationDate;
  swift_beginAccess();
  v16 = *(v3 + 16);
  v16(v5, &v1[v15], v2);
  sub_12A1C8();
  v37._countAndFlagsBits = sub_139CA0();
  sub_1399F0(v37);

  v17 = *(v3 + 8);
  v17(v5, v2);
  v38._countAndFlagsBits = 0x65696669646F6D20;
  v38._object = 0xEB00000000203A64;
  sub_1399F0(v38);
  v18 = OBJC_IVAR___BEAnnotation_modificationDate;
  swift_beginAccess();
  v16(v5, &v1[v18], v2);
  v39._countAndFlagsBits = sub_139CA0();
  sub_1399F0(v39);

  v17(v5, v2);
  v19 = v30;
  v20 = v31;
  v30 = v23;
  v31 = v10;

  v40._countAndFlagsBits = v19;
  v40._object = v20;
  sub_1399F0(v40);

  return v30;
}

unint64_t sub_12A1C8()
{
  result = qword_22CDA0;
  if (!qword_22CDA0)
  {
    sub_139430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CDA0);
  }

  return result;
}

unint64_t sub_12A224()
{
  result = qword_22CDA8;
  if (!qword_22CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CDA8);
  }

  return result;
}

unint64_t sub_12A27C()
{
  result = qword_22CDB0;
  if (!qword_22CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CDB0);
  }

  return result;
}

uint64_t sub_12A2FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BEAnnotation_rects;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_12A3C0@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t sub_12A4D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_12A538(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_12A588@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___BEAnnotation_uuid);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_12A5E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___BEAnnotation_pageNumber;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_12A640(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR___BEAnnotation_pageNumber;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_12A6A8()
{
  result = sub_139430();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Annotation.AnnotationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Annotation.AnnotationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Annotation.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Annotation.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t (*sub_12B338(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_139880();
  return sub_12764C;
}

uint64_t sub_12B3DC(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE10);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE08);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_12B57C(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE08);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_12B6B4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_11B940(&qword_22CE10);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___BEPage__annotations;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_11B940(&qword_22CE08);
  sub_139860();
  swift_endAccess();
  return sub_127650;
}

uint64_t (*sub_12B8A4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_139880();
  return sub_12764C;
}

uint64_t sub_12B948(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE10);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE08);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_12BAE8(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE08);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_12BC20(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_11B940(&qword_22CE10);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___BEPage__bookmarks;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_11B940(&qword_22CE08);
  sub_139860();
  swift_endAccess();
  return sub_127650;
}

Class sub_12BDA4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  sub_139890();

  type metadata accessor for Annotation();
  v3.super.isa = sub_139A30().super.isa;

  return v3.super.isa;
}

uint64_t sub_12BE7C(void *a1)
{
  type metadata accessor for Annotation();
  sub_139A40();
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_1398A0();
}

uint64_t (*sub_12BF48(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_139880();
  return sub_12764C;
}

uint64_t sub_12BFEC(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE10);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE08);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_12C18C(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE08);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_12C2C4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_11B940(&qword_22CE10);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___BEPage__highlights;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_11B940(&qword_22CE08);
  sub_139860();
  swift_endAccess();
  return sub_127650;
}

uint64_t (*sub_12C4B4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_139880();
  return sub_12764C;
}

uint64_t sub_12C558(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE38);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE30);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_12C6F8(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE30);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_12C830(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_11B940(&qword_22CE38);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___BEPage__anchors;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_11B940(&qword_22CE30);
  sub_139860();
  swift_endAccess();
  return sub_127650;
}

Class sub_12C9B4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  sub_139890();

  sub_11B940(&qword_22CE80);
  v3.super.isa = sub_139A30().super.isa;

  return v3.super.isa;
}

uint64_t sub_12CA84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  return v1;
}

uint64_t sub_12CB04(void *a1)
{
  sub_11B940(&qword_22CE80);
  sub_139A40();
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_1398A0();
}

uint64_t sub_12CBAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1398A0();
}

uint64_t sub_12CC28@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  *a1 = v3;
  return result;
}

uint64_t sub_12CCBC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1398A0();
}

uint64_t (*sub_12CD34(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_139880();
  return sub_12764C;
}

uint64_t sub_12CDD8(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE38);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE30);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_12CF78(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE30);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_12D0B0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_11B940(&qword_22CE38);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___BEPage__mediaElements;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_11B940(&qword_22CE30);
  sub_139860();
  swift_endAccess();
  return sub_127650;
}

uint64_t (*sub_12D2A0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_139880();
  return sub_124674;
}

uint64_t sub_12D344(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE58);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE50);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_12D4E4(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE58);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE50);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_12D61C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_11B940(&qword_22CE58);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___BEPage__physicalPageMarkers;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_11B940(&qword_22CE50);
  sub_139860();
  swift_endAccess();
  return sub_1252D8;
}

Class sub_12D7A0(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  sub_139890();

  if (v5)
  {
    sub_11B940(&qword_22CE80);
    v3.super.isa = sub_139A30().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t sub_12D890(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_11B940(&qword_22CE80);
    sub_139A40();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  return sub_1398A0();
}

uint64_t (*sub_12D96C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_139880();
  return sub_12764C;
}

uint64_t sub_12DA10(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE58);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE50);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_12DBB0(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CE58);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CE50);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_12DCE8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_11B940(&qword_22CE58);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___BEPage__physicalChapterMarkers;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_11B940(&qword_22CE50);
  sub_139860();
  swift_endAccess();
  return sub_127650;
}

id Page.init(contentOffset:contentSize:)(double a1, double a2, double a3, double a4)
{
  v9 = sub_11B940(&qword_22CE50);
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v36 = &v35 - v10;
  v37 = sub_11B940(&qword_22CE30);
  v11 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = &v35 - v12;
  v14 = sub_11B940(&qword_22CE08);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - v16;
  v18 = OBJC_IVAR___BEPage__annotations;
  v41 = _swiftEmptyArrayStorage;
  sub_11B940(&qword_22CE68);
  sub_139850();
  v19 = *(v15 + 32);
  v19(&v4[v18], v17, v14);
  v20 = OBJC_IVAR___BEPage__bookmarks;
  v41 = _swiftEmptyArrayStorage;
  sub_139850();
  v19(&v4[v20], v17, v14);
  v21 = OBJC_IVAR___BEPage__highlights;
  v41 = _swiftEmptyArrayStorage;
  sub_139850();
  v19(&v4[v21], v17, v14);
  v22 = OBJC_IVAR___BEPage__anchors;
  v41 = _swiftEmptyArrayStorage;
  sub_11B940(&qword_22CE70);
  sub_139850();
  v23 = *(v11 + 32);
  v24 = v37;
  v23(&v4[v22], v13, v37);
  v25 = OBJC_IVAR___BEPage__mediaElements;
  v41 = _swiftEmptyArrayStorage;
  sub_139850();
  v23(&v4[v25], v13, v24);
  v26 = OBJC_IVAR___BEPage__physicalPageMarkers;
  v41 = _swiftEmptyArrayStorage;
  sub_11B940(&qword_22CE78);
  v27 = v36;
  sub_139850();
  v28 = v39;
  v29 = *(v38 + 32);
  v29(&v4[v26], v27, v39);
  v30 = OBJC_IVAR___BEPage__physicalChapterMarkers;
  v41 = _swiftEmptyArrayStorage;
  sub_139850();
  v29(&v4[v30], v27, v28);
  v31 = &v4[OBJC_IVAR___BEPage_contentOffset];
  *v31 = a1;
  v31[1] = a2;
  v32 = &v4[OBJC_IVAR___BEPage_contentSize];
  *v32 = a3;
  v32[1] = a4;
  v33 = type metadata accessor for Page();
  v40.receiver = v4;
  v40.super_class = v33;
  return objc_msgSendSuper2(&v40, "init");
}

uint64_t type metadata accessor for Page()
{
  result = qword_22CEB0;
  if (!qword_22CEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Page.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Page();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t Page.description.getter()
{
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  sub_139BD0(248);
  v23 = v21;
  v24._countAndFlagsBits = 0x2020202020202020;
  v24._object = 0xE800000000000000;
  sub_1399F0(v24);
  v22.receiver = v0;
  v22.super_class = type metadata accessor for Page();
  v1 = objc_msgSendSuper2(&v22, "description");
  v2 = sub_1399A0();
  v4 = v3;

  v25._countAndFlagsBits = v2;
  v25._object = v4;
  sub_1399F0(v25);

  v26._object = 0x8000000000185E50;
  v26._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1399F0(v26);
  type metadata accessor for CGRect(0);
  sub_139C40();
  v27._object = 0x8000000000185E70;
  v27._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1399F0(v27);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  type metadata accessor for Annotation();
  v5 = sub_139A50();
  v7 = v6;

  v28._countAndFlagsBits = v5;
  v28._object = v7;
  sub_1399F0(v28);

  v29._countAndFlagsBits = 0xD000000000000018;
  v29._object = 0x8000000000185E90;
  sub_1399F0(v29);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  v8 = sub_139A50();
  v10 = v9;

  v30._countAndFlagsBits = v8;
  v30._object = v10;
  sub_1399F0(v30);

  v31._countAndFlagsBits = 0xD000000000000019;
  v31._object = 0x8000000000185EB0;
  sub_1399F0(v31);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  v11 = sub_139A50();
  v13 = v12;

  v32._countAndFlagsBits = v11;
  v32._object = v13;
  sub_1399F0(v32);

  v33._countAndFlagsBits = 0xD000000000000016;
  v33._object = 0x8000000000185ED0;
  sub_1399F0(v33);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  sub_11B940(&qword_22CE80);
  v14 = sub_139A50();
  v16 = v15;

  v34._countAndFlagsBits = v14;
  v34._object = v16;
  sub_1399F0(v34);

  v35._countAndFlagsBits = 0xD00000000000001CLL;
  v35._object = 0x8000000000185EF0;
  sub_1399F0(v35);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  v17 = sub_139A50();
  v19 = v18;

  v36._countAndFlagsBits = v17;
  v36._object = v19;
  sub_1399F0(v36);

  v37._countAndFlagsBits = 0xD000000000000022;
  v37._object = 0x8000000000185F10;
  sub_1399F0(v37);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  sub_11B940(&qword_22CE78);
  v38._countAndFlagsBits = sub_1399C0();
  sub_1399F0(v38);

  v39._countAndFlagsBits = 0xD000000000000025;
  v39._object = 0x8000000000185F40;
  sub_1399F0(v39);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  v40._countAndFlagsBits = sub_1399C0();
  sub_1399F0(v40);

  return v23;
}

uint64_t static Page._contentOffset(forPaginationDirection:size:index:totalPageCount:)(uint64_t result)
{
  if (result <= 1)
  {
    if (result && result != 1)
    {
      goto LABEL_11;
    }
  }

  else if (result != 2 && result != 4 && result != 3)
  {
LABEL_11:
    result = sub_139CE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_12EC24@<X0>(uint64_t a1@<X0>, void *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v62 = a2;
  v12 = sub_139430();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_139460();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13231C(a1, &v58);

  sub_132298(&v60, v61);
  sub_11C0B4(v61, &v58);
  sub_11BF80(0, &qword_22CEF0);
  if (swift_dynamicCast())
  {
    *&v54 = v6;
    v20 = v56;
    [v56 CGRectValue];
    x = v63.origin.x;
    y = v63.origin.y;
    width = v63.size.width;
    height = v63.size.height;
    v64.origin.x = a3;
    v64.origin.y = a4;
    v64.size.width = a5;
    v64.size.height = a6;
    if (CGRectIntersectsRect(v63, v64))
    {
      sub_139450();
      v25 = sub_139440();
      v27 = v26;
      (*(v17 + 8))(v19, v16);
      sub_139420();
      v28 = type metadata accessor for Annotation();
      v29 = objc_allocWithZone(v28);
      v30 = &v29[OBJC_IVAR___BEAnnotation_cfi];
      *v30 = 0;
      v30[1] = 0;
      *&v29[OBJC_IVAR___BEAnnotation_rects] = _swiftEmptyArrayStorage;
      v31 = &v29[OBJC_IVAR___BEAnnotation_content];
      *v31 = 0;
      v31[1] = 0;
      v32 = &v29[OBJC_IVAR___BEAnnotation_representativeContent];
      *v32 = 0;
      v32[1] = 0;
      v33 = &v29[OBJC_IVAR___BEAnnotation_note];
      *v33 = 0;
      v33[1] = 0;
      v34 = &v29[OBJC_IVAR___BEAnnotation_pageNumber];
      *v34 = 0;
      v34[8] = 1;
      v35 = &v29[OBJC_IVAR___BEAnnotation_uuid];
      *v35 = v25;
      v35[1] = v27;
      v29[OBJC_IVAR___BEAnnotation_type] = 1;
      v29[OBJC_IVAR___BEAnnotation_style] = 0;
      v36 = *(v13 + 16);
      v36(&v29[OBJC_IVAR___BEAnnotation_creationDate], v15, v12);
      v36(&v29[OBJC_IVAR___BEAnnotation_modificationDate], v15, v12);
      v55.receiver = v29;
      v55.super_class = v28;
      v37 = objc_msgSendSuper2(&v55, "init");
      (*(v13 + 8))(v15, v12);
      sub_11B940(&qword_22CF00);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1939C0;
      *(v38 + 32) = x;
      *(v38 + 40) = y;
      *(v38 + 48) = width;
      *(v38 + 56) = height;

      sub_1223F0(v61);
      v39 = OBJC_IVAR___BEAnnotation_rects;
      swift_beginAccess();
      *&v37[v39] = v38;
    }

    else
    {
      v53 = v20;
      v52 = sub_11B940(&qword_22CB98);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1942B0;
      v56 = 0;
      v57 = 0xE000000000000000;
      v58 = x;
      v59 = y;
      *&v60 = width;
      *(&v60 + 1) = height;
      type metadata accessor for CGRect(0);
      sub_139C40();
      v46 = v56;
      v47 = v57;
      *(v45 + 56) = &type metadata for String;
      v48 = sub_13238C();
      *(v45 + 64) = v48;
      *(v45 + 32) = v46;
      *(v45 + 40) = v47;
      v56 = 0;
      v57 = 0xE000000000000000;
      v58 = a3;
      v59 = a4;
      *&v60 = a5;
      *(&v60 + 1) = a6;
      sub_139C40();
      v49 = v56;
      v50 = v57;
      *(v45 + 96) = &type metadata for String;
      *(v45 + 104) = v48;
      *(v45 + 72) = v49;
      *(v45 + 80) = v50;
      sub_139AC0();
      if (qword_22C590 != -1)
      {
        swift_once();
      }

      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1939C0;
      *(v51 + 56) = sub_11B940(&qword_22CBA0);
      *(v51 + 64) = sub_1212B0();
      *(v51 + 32) = v45;
      sub_139810();

      result = sub_1223F0(v61);
      v37 = 0;
    }
  }

  else
  {
    sub_11B940(&qword_22CB98);
    v41 = swift_allocObject();
    v54 = xmmword_1939C0;
    *(v41 + 16) = xmmword_1939C0;
    v58 = 0.0;
    v59 = -2.68156159e154;
    sub_139C40();
    v42 = v58;
    v43 = v59;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_13238C();
    *(v41 + 32) = v42;
    *(v41 + 40) = v43;
    sub_139AD0();
    if (qword_22C590 != -1)
    {
      swift_once();
    }

    v44 = swift_allocObject();
    *(v44 + 16) = v54;
    *(v44 + 56) = sub_11B940(&qword_22CBA0);
    *(v44 + 64) = sub_1212B0();
    *(v44 + 32) = v41;
    sub_139810();

    result = sub_1223F0(v61);
    v37 = 0;
  }

  *v62 = v37;
  return result;
}

uint64_t sub_12F334@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_139430();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_139460();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_11C0B4(a1, &v48);
  sub_11B940(&qword_22CEE0);
  if (swift_dynamicCast())
  {
    *&v45 = v5;
    countAndFlagsBits = v47._countAndFlagsBits;
    if (*(v47._countAndFlagsBits + 16))
    {
      v13 = sub_1301D8(0x666572486C6C7566, 0xE800000000000000);
      if (v14)
      {
        sub_11C0B4(*(countAndFlagsBits + 56) + 32 * v13, &v48);
        if (swift_dynamicCast())
        {
          object = v47._object;
          if (*(countAndFlagsBits + 16))
          {
            v43 = v47._countAndFlagsBits;
            v15 = sub_1301D8(1701667182, 0xE400000000000000);
            if (v16)
            {
              sub_11C0B4(*(countAndFlagsBits + 56) + 32 * v15, &v48);
              if (swift_dynamicCast())
              {
                if (*(countAndFlagsBits + 16) && (v42 = v47, v17 = sub_1301D8(0x746E656D75636F64, 0xEE0074657366664FLL), (v18 & 1) != 0))
                {
                  sub_11C0B4(*(countAndFlagsBits + 56) + 32 * v17, &v48);

                  if (swift_dynamicCast())
                  {
                    v19 = v47._countAndFlagsBits;
                    sub_11B940(&qword_22CF10);
                    v41 = swift_allocObject();
                    *(v41 + 16) = xmmword_1939C0;
                    v48 = v43;
                    v49 = object;
                    v50._countAndFlagsBits = 32;
                    v50._object = 0xE100000000000000;
                    sub_1399F0(v50);
                    sub_1399F0(v42);

                    v51._countAndFlagsBits = 32;
                    v51._object = 0xE100000000000000;
                    sub_1399F0(v51);
                    v47._countAndFlagsBits = v19;
                    v52._countAndFlagsBits = sub_139CA0();
                    sub_1399F0(v52);

                    v20 = v48;
                    v21 = v49;
                    v22 = v41;
                    *(v41 + 56) = &type metadata for String;
                    *(v22 + 32) = v20;
                    *(v22 + 40) = v21;
                    sub_139CF0();

                    sub_139450();
                    v23 = sub_139440();
                    v25 = v24;
                    (*(v9 + 8))(v11, v8);
                    sub_139420();
                    v26 = type metadata accessor for Annotation();
                    v27 = objc_allocWithZone(v26);
                    v28 = &v27[OBJC_IVAR___BEAnnotation_cfi];
                    *v28 = 0;
                    v28[1] = 0;
                    *&v27[OBJC_IVAR___BEAnnotation_rects] = _swiftEmptyArrayStorage;
                    v29 = &v27[OBJC_IVAR___BEAnnotation_content];
                    *v29 = 0;
                    v29[1] = 0;
                    v30 = &v27[OBJC_IVAR___BEAnnotation_representativeContent];
                    *v30 = 0;
                    v30[1] = 0;
                    v31 = &v27[OBJC_IVAR___BEAnnotation_note];
                    *v31 = 0;
                    v31[1] = 0;
                    v32 = &v27[OBJC_IVAR___BEAnnotation_pageNumber];
                    *v32 = 0;
                    v32[8] = 1;
                    v33 = &v27[OBJC_IVAR___BEAnnotation_uuid];
                    *v33 = v23;
                    v33[1] = v25;
                    v27[OBJC_IVAR___BEAnnotation_type] = 1;
                    v27[OBJC_IVAR___BEAnnotation_style] = 0;
                    v34 = v45;
                    v35 = *(v45 + 16);
                    v35(&v27[OBJC_IVAR___BEAnnotation_creationDate], v7, v4);
                    v35(&v27[OBJC_IVAR___BEAnnotation_modificationDate], v7, v4);
                    v46.receiver = v27;
                    v46.super_class = v26;
                    v36 = objc_msgSendSuper2(&v46, "init");
                    result = (*(v34 + 8))(v7, v4);
                    goto LABEL_19;
                  }
                }

                else
                {
                }
              }
            }
          }
        }
      }
    }
  }

  sub_11B940(&qword_22CB98);
  v38 = swift_allocObject();
  v45 = xmmword_1939C0;
  *(v38 + 16) = xmmword_1939C0;
  sub_11C0B4(a1, &v48);
  sub_11B940(&qword_22CF08);
  swift_dynamicCast();
  sub_139AD0();
  if (qword_22C590 != -1)
  {
    swift_once();
  }

  v39 = swift_allocObject();
  *(v39 + 16) = v45;
  *(v39 + 56) = sub_11B940(&qword_22CBA0);
  *(v39 + 64) = sub_1212B0();
  *(v39 + 32) = v38;
  sub_139810();

  v36 = 0;
LABEL_19:
  *a2 = v36;
  return result;
}

void sub_12F9A4(uint64_t a1@<X0>, id a2@<X1>, void *a3@<X8>)
{
  sub_11C0B4(a1, &v21);
  sub_11B940(&qword_22CEE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v19[2])
  {
    goto LABEL_10;
  }

  v6 = sub_1301D8(0x44497463656A626FLL, 0xE800000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_11C0B4(v19[7] + 32 * v6, &v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!v19[2] || (v8 = sub_1301D8(0x65676E6172, 0xE500000000000000), (v9 & 1) == 0))
  {

    goto LABEL_10;
  }

  sub_11C0B4(v19[7] + 32 * v8, &v21);

  sub_11BF80(0, &qword_22CEF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:

LABEL_11:
    sub_11B940(&qword_22CB98);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1939C0;
    sub_11C0B4(a1, &v21);
    sub_11B940(&qword_22CF08);
    swift_dynamicCast();
    sub_139AD0();
    if (qword_22C590 != -1)
    {
      swift_once();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1939C0;
    *(v15 + 56) = sub_11B940(&qword_22CBA0);
    *(v15 + 64) = sub_1212B0();
    *(v15 + 32) = v14;
    sub_139810();
    goto LABEL_14;
  }

  v10 = [v19 rangeValue];
  if (v10 != a2)
  {
    v16 = v10;

    sub_11B940(&qword_22CB98);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1942B0;
    *(v17 + 56) = &type metadata for Int;
    *(v17 + 64) = &protocol witness table for Int;
    *(v17 + 32) = a2;
    *(v17 + 96) = &type metadata for Int;
    *(v17 + 104) = &protocol witness table for Int;
    *(v17 + 72) = v16;
    sub_139AD0();
    if (qword_22C590 != -1)
    {
      swift_once();
    }

    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1939C0;
    *(v18 + 56) = sub_11B940(&qword_22CBA0);
    *(v18 + 64) = sub_1212B0();
    *(v18 + 32) = v17;
    sub_139810();

LABEL_14:

    goto LABEL_15;
  }

  sub_11B940(&qword_22CF10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1939C0;
  v21 = v19;
  v22 = v20;
  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  sub_1399F0(v23);
  v24._countAndFlagsBits = sub_139B40();
  sub_1399F0(v24);

  v12 = v21;
  v13 = v22;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  sub_139CF0();

LABEL_15:
  *a3 = 0;
}

void sub_12FE20(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_11C0B4(a1, &v18);
  sub_11B940(&qword_22CEE0);
  if (swift_dynamicCast())
  {
    if (v17[2] && (v4 = sub_1301D8(0x7366664F65676170, 0xEA00000000007465), (v5 & 1) != 0) && (sub_11C0B4(v17[7] + 32 * v4, &v18), (swift_dynamicCast() & 1) != 0) && v17[2] && (v6 = sub_1301D8(0x726F747369484B42, 0xEF797469746E4579), (v7 & 1) != 0))
    {
      sub_11C0B4(v17[7] + 32 * v6, &v18);

      sub_11BF80(0, &qword_22CF18);
      if (swift_dynamicCast())
      {
        sub_11B940(&qword_22CF10);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1939C0;
        v9 = [v17 description];
        v10 = sub_1399A0();
        v12 = v11;

        v18 = v10;
        v19 = v12;
        v20._countAndFlagsBits = 32;
        v20._object = 0xE100000000000000;
        sub_1399F0(v20);
        v21._countAndFlagsBits = sub_139CA0();
        sub_1399F0(v21);

        v13 = v18;
        v14 = v19;
        *(v8 + 56) = &type metadata for String;
        *(v8 + 32) = v13;
        *(v8 + 40) = v14;
        sub_139CF0();

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  sub_11B940(&qword_22CB98);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1939C0;
  sub_11C0B4(a1, &v18);
  sub_11B940(&qword_22CF08);
  swift_dynamicCast();
  sub_139AD0();
  if (qword_22C590 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1939C0;
  *(v16 + 56) = sub_11B940(&qword_22CBA0);
  *(v16 + 64) = sub_1212B0();
  *(v16 + 32) = v15;
  sub_139810();

LABEL_13:
  *a2 = 0;
}

unint64_t sub_130194(uint64_t a1)
{
  v2 = v1;
  v4 = sub_139BA0(*(v2 + 40));

  return sub_130250(a1, v4);
}

unint64_t sub_1301D8(uint64_t a1, uint64_t a2)
{
  sub_139D00();
  sub_1399E0();
  v4 = sub_139D20();

  return sub_130318(a1, a2, v4);
}

unint64_t sub_130250(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1323E0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_139BB0();
      sub_11C060(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_130318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_139CC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1303D0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    sub_11C0B4(*(a5 + 56) + 32 * a2, result);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s13AEBookPlugins4PageC10_pageCount4from0D4Size19paginationDirectionSiSo6CGSizeV_AiA07ContentcI0OtFZ_0(unint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a1 > 4)
  {
    goto LABEL_11;
  }

  if (a1 == 2)
  {
    a4 = a5;
    a2 = a3;
  }

  v5 = ceil(a2 / a4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v5 > -9.22337204e18)
  {
    if (v5 < 9.22337204e18)
    {
      return v5;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  result = sub_139CE0();
  __break(1u);
  return result;
}

uint64_t sub_1304F8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  sub_11C0B4(a1, &v24);
  sub_11B940(&qword_22CEE0);
  if (swift_dynamicCast())
  {
    v11 = v22[0];
    v12 = *(v22[0] + 16);
    v13 = _swiftEmptyArrayStorage;
    if (v12)
    {
      v27 = _swiftEmptyArrayStorage;
      sub_139C10();
      v14 = v22[0] + 64;
      v5 = sub_139B80();
      while (1)
      {
        v6 = *(v11 + 36);
        v22[0] = sub_1303D0(v25, v5, *(v11 + 36), 0, v11);
        v22[1] = v15;
        sub_132298(v25, &v23);
        sub_12EC24(v22, &v26, a2, a3, a4, a5);
        sub_1322A8(v22);
        sub_139BF0();
        sub_139C20();
        sub_139C30();
        sub_139C00();
        if (v5 < 0 || v5 >= -(-1 << *(v11 + 32)))
        {
          break;
        }

        if (((*(v14 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_21;
        }

        if (v6 != *(v11 + 36))
        {
          goto LABEL_22;
        }

        v5 = sub_139B90();
        if (!--v12)
        {

          v16 = v27;
          v13 = _swiftEmptyArrayStorage;
          goto LABEL_11;
        }
      }
    }

    else
    {

      v16 = _swiftEmptyArrayStorage;
LABEL_11:
      v17 = 0;
      v24 = _swiftEmptyArrayStorage;
      v18 = v16[2];
      while (1)
      {
        if (v18 == v17)
        {

          return v13;
        }

        if (v17 >= v16[2])
        {
          break;
        }

        v19 = v16[v17++ + 4];
        if (v19)
        {
          v20 = v19;
          sub_139A20();
          if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v5 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
            sub_139A60();
          }

          sub_139A80();
          v13 = v24;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    sub_132310(v5, v6, 0);

    __break(1u);
  }

  result = sub_139C50();
  __break(1u);
  return result;
}

uint64_t sub_13080C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_139C10();
    v6 = a1 + 32;
    do
    {
      sub_12F9A4(v6, a2, &v13);
      sub_139BF0();
      sub_139C20();
      sub_139C30();
      sub_139C00();
      v6 += 32;
      --v2;
    }

    while (v2);
    v7 = v14;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = 0;
  v14 = _swiftEmptyArrayStorage;
  v9 = v7[2];
  while (1)
  {
    if (v9 == v8)
    {

      return v3;
    }

    if (v8 >= v7[2])
    {
      break;
    }

    v10 = v7[v8++ + 4];
    if (v10)
    {
      v11 = v10;
      sub_139A20();
      if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v14 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_139A60();
      }

      sub_139A80();
      v3 = v14;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_130988(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_139C10();
    v6 = a1 + 32;
    do
    {
      a2(&v13, v6);
      sub_139BF0();
      sub_139C20();
      sub_139C30();
      sub_139C00();
      v6 += 32;
      --v2;
    }

    while (v2);
    v7 = v14;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = 0;
  v14 = _swiftEmptyArrayStorage;
  v9 = v7[2];
  while (1)
  {
    if (v9 == v8)
    {

      return v3;
    }

    if (v8 >= v7[2])
    {
      break;
    }

    v10 = v7[v8++ + 4];
    if (v10)
    {
      v11 = v10;
      sub_139A20();
      if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v14 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_139A60();
      }

      sub_139A80();
      v3 = v14;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t _s13AEBookPlugins4PageC13generatePages4fromSayACGAA30DocumentPaginationDataProvider_p_tFZ_0(void *a1)
{
  v73 = _swiftEmptyArrayStorage;
  [a1 pageSize];
  v3 = v2;
  v5 = v4;
  v70 = a1;
  if ([a1 pageCount] <= 1)
  {
    KeyPath = &selRef_cancelActions;
    [v70 contentSize];
    if ((v8 != 0.0 || v7 != 0.0) && (sub_139B20() & 1) == 0 && (sub_139B10() & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  v9 = [v70 pageCount];
  for (i = v9; (v9 & 0x8000000000000000) == 0; i = v9)
  {
    v11 = _swiftEmptyArrayStorage;
    if (!i)
    {
      return v11;
    }

    v12 = 0;
    v13 = &stru_214000;
    v14 = v3 * i;
    v67 = i;
    while (1)
    {
      v9 = [v70 v13[203].name];
      v15 = v12;
      if (v9 <= 1)
      {
        if (v9)
        {
          if (v9 != 1)
          {
            goto LABEL_78;
          }

LABEL_17:
          v17 = v14 - v3 * v15;
        }

        else
        {
LABEL_15:
          v17 = v3 * v15;
        }

        v16 = 0.0;
        goto LABEL_19;
      }

      if (v9 == 4)
      {
        goto LABEL_17;
      }

      if (v9 == 3)
      {
        goto LABEL_15;
      }

      if (v9 != 2)
      {
        goto LABEL_78;
      }

      v16 = v5 * v15;
      v17 = 0.0;
LABEL_19:
      v18 = objc_allocWithZone(type metadata accessor for Page());
      v19 = Page.init(contentOffset:contentSize:)(v17, v16, v3, v5);
      v20 = [v70 navigationAnchors];
      v69 = v19;
      if (v20)
      {
        v21 = v20;
        type metadata accessor for CGRect(0);
        v22 = sub_1398F0();

        v72 = sub_11B940(&qword_22CED8);
        v71[0] = v22;
        v23 = sub_1304F8(v71, *&v19[OBJC_IVAR___BEPage_contentOffset], *&v19[OBJC_IVAR___BEPage_contentOffset + 8], *&v19[OBJC_IVAR___BEPage_contentSize], *&v19[OBJC_IVAR___BEPage_contentSize + 8]);
        sub_1223F0(v71);

        if (v23 >> 62)
        {
          sub_11B940(&qword_22CE80);
          v24 = sub_139C60();
        }

        else
        {
          sub_139CD0();
          v24 = v23;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v71[0] = v24;
        v25 = v19;
        sub_1398A0();
      }

      v26 = [v70 mediaElements];
      if (v26)
      {
        v27 = v26;
        type metadata accessor for CGRect(0);
        v28 = sub_1398F0();

        v72 = sub_11B940(&qword_22CED8);
        v71[0] = v28;
        v29 = sub_1304F8(v71, *&v19[OBJC_IVAR___BEPage_contentOffset], *&v19[OBJC_IVAR___BEPage_contentOffset + 8], *&v19[OBJC_IVAR___BEPage_contentSize], *&v19[OBJC_IVAR___BEPage_contentSize + 8]);
        sub_1223F0(v71);

        if (v29 >> 62)
        {
          sub_11B940(&qword_22CE80);
          v30 = sub_139C60();
        }

        else
        {
          sub_139CD0();
          v30 = v29;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v71[0] = v30;
        v31 = v19;
        sub_1398A0();
      }

      v32 = [v70 bookmarks];
      if (v32)
      {
        break;
      }

LABEL_59:
      v54 = [v70 physicalPageAnchors];
      if (v54)
      {
        v55 = v54;
        v56 = sub_139A40();

        v57 = sub_130988(v56, sub_12F334);

        if (v57 >> 62)
        {
          sub_11B940(&qword_22CE80);
          v58 = sub_139C60();
          swift_bridgeObjectRelease_n();
        }

        else
        {
          sub_139CD0();

          v58 = v57;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v71[0] = v58;
        v59 = v19;
        sub_1398A0();
      }

      v60 = [v70 historyEntries];
      if (v60)
      {
        v61 = v60;
        v62 = sub_139A40();

        sub_130988(v62, sub_12FE20);
      }

      v63 = v19;
      sub_139A20();
      if (*(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v73 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_139A60();
      }

      ++v12;
      sub_139A80();

      if (v12 == i)
      {
        return v73;
      }
    }

    v33 = v32;
    v34 = sub_139A40();

    v35 = sub_13080C(v34, v12);

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    v71[0] = v35;
    v36 = v19;

    sub_1398A0();
    v71[0] = _swiftEmptyArrayStorage;
    if (!(v35 >> 62))
    {
      v37 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
      if (v37)
      {
        goto LABEL_30;
      }

      goto LABEL_57;
    }

    v37 = sub_139C70();
    if (!v37)
    {
LABEL_57:
      swift_getKeyPath();
      swift_getKeyPath();
      v71[0] = _swiftEmptyArrayStorage;
      v52 = v36;
      sub_1398A0();
      v71[0] = _swiftEmptyArrayStorage;
      v51 = v36;
      v50 = _swiftEmptyArrayStorage;
LABEL_58:

      swift_getKeyPath();
      swift_getKeyPath();
      v71[0] = v50;
      v53 = v51;
      sub_1398A0();
      v19 = v69;
      goto LABEL_59;
    }

LABEL_30:
    v68 = v36;
    v38 = 0;
    v39 = v35 & 0xC000000000000001;
    do
    {
      if (v39)
      {
        v40 = sub_139BE0();
      }

      else
      {
        if (v38 >= *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_72;
        }

        v40 = *(v35 + 8 * v38 + 32);
      }

      v41 = v40;
      v42 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      KeyPath = OBJC_IVAR___BEAnnotation_type;
      swift_beginAccess();
      if (*(KeyPath + v41) != 1)
      {
        goto LABEL_31;
      }

      v9 = [v70 pageOffset];
      v43 = &v12[v9];
      if (__OFADD__(v9, v12))
      {
        goto LABEL_77;
      }

      KeyPath = &v41[OBJC_IVAR___BEAnnotation_pageNumber];
      swift_beginAccess();
      if ((KeyPath[1] & 1) == 0 && v43 == *KeyPath)
      {
        sub_139BF0();
        sub_139C20();
        sub_139C30();
        KeyPath = v71;
        sub_139C00();
      }

      else
      {
LABEL_31:
      }

      ++v38;
    }

    while (v42 != v37);
    v44 = v71[0];
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    v71[0] = v44;
    v45 = v36;
    sub_1398A0();
    v46 = 0;
    v71[0] = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v39)
      {
        v47 = sub_139BE0();
      }

      else
      {
        if (v46 >= *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_74;
        }

        v47 = *(v35 + 8 * v46 + 32);
      }

      v48 = v47;
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      KeyPath = OBJC_IVAR___BEAnnotation_type;
      swift_beginAccess();
      if (*(KeyPath + v48) == 2)
      {
        sub_139BF0();
        sub_139C20();
        sub_139C30();
        KeyPath = v71;
        sub_139C00();
      }

      else
      {
      }

      ++v46;
      if (v49 == v37)
      {
        v50 = v71[0];
        i = v67;
        v51 = v68;
        v13 = &stru_214000;
        goto LABEL_58;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    [v70 KeyPath[223]];
    v9 = _s13AEBookPlugins4PageC10_pageCount4from0D4Size19paginationDirectionSiSo6CGSizeV_AiA07ContentcI0OtFZ_0([v70 paginationDirection], v65, v66, v3, v5);
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  v71[0] = v9;
  result = sub_139CE0();
  __break(1u);
  return result;
}

void sub_131698()
{
  sub_132244(319, &qword_22CEC0, &qword_22CE68);
  if (v0 <= 0x3F)
  {
    sub_132244(319, &qword_22CEC8, &qword_22CE70);
    if (v1 <= 0x3F)
    {
      sub_132244(319, &qword_22CED0, &qword_22CE78);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_132244(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_11BF38(a3);
    v4 = sub_1398B0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_OWORD *sub_132298(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1322A8(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CEE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_132310(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_13231C(uint64_t a1, uint64_t a2)
{
  v4 = sub_11B940(&qword_22CEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_13238C()
{
  result = qword_22CEF8;
  if (!qword_22CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CEF8);
  }

  return result;
}

id AEBookInfo.epub.getter()
{
  v1 = sub_11B940(&qword_22CC68);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v49 - v3;
  v5 = [v0 assetID];
  if (!v5)
  {
    goto LABEL_38;
  }

  v6 = v5;
  v7 = sub_1399A0();
  v9 = v8;

  v10 = [v0 bookTitle];
  if (!v10)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v11 = v10;
  v12 = sub_1399A0();
  v59 = v13;

  v14 = [v0 bookAuthor];
  if (!v14)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v15 = v14;
  v16 = sub_1399A0();
  v55 = v17;
  v56 = v16;

  v18 = [v0 sampleContent];
  v58 = v12;
  if (v18)
  {
    v19 = v18;
    v57 = [v18 BOOLValue];
  }

  else
  {
    v57 = 0;
  }

  v20 = [v0 bookBundlePath];
  if (!v20)
  {
    goto LABEL_41;
  }

  v21 = v20;
  v22 = sub_1399A0();
  v54 = v23;

  v24 = [v0 linearDocuments];
  if (v24)
  {
    v25 = v24;
    v52 = v9;
    sub_132A38();
    v26 = sub_139A40();

    if (v26 >> 62)
    {
      goto LABEL_33;
    }

    v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
LABEL_11:
    v53 = v7;
    if (v27)
    {
      v62[0] = _swiftEmptyArrayStorage;
      sub_139C10();
      if ((v27 & 0x8000000000000000) == 0)
      {
        v50 = v22;
        v51 = v4;
        v4 = v2;
        v2 = v1;
        v1 = 0;
        v22 = v26 & 0xC000000000000001;
        v7 = v26 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v22)
          {
            v28 = sub_139BE0();
          }

          else
          {
            if ((v1 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              v27 = sub_139C70();
              goto LABEL_11;
            }

            if (v1 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_32;
            }

            v28 = *(v26 + 8 * v1 + 32);
          }

          ++v1;
          v29 = v28;
          BKDocument.document.getter();

          sub_139BF0();
          sub_139C20();
          sub_139C30();
          sub_139C00();
          if (v27 == v1)
          {

            v30 = v62[0];
            v1 = v2;
            v2 = v4;
            v22 = v50;
            v4 = v51;
            goto LABEL_22;
          }
        }
      }

      __break(1u);
      goto LABEL_37;
    }

    v30 = _swiftEmptyArrayStorage;
LABEL_22:
    sub_11B940(&qword_22CC90);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1939C0;
    v32 = v55;
    *(v31 + 32) = v56;
    *(v31 + 40) = v32;
    v33 = type metadata accessor for BookViewModel();
    v34 = objc_allocWithZone(v33);
    v35 = OBJC_IVAR___BEBookViewModel__pageTotal;
    v62[0] = 0;
    sub_139850();
    (*(v2 + 4))(&v34[v35], v4, v1);
    v36 = &v34[OBJC_IVAR___BEBookViewModel_documentUniqueID];
    v37 = v52;
    *v36 = v53;
    v36[1] = v37;
    v38 = &v34[OBJC_IVAR___BEBookViewModel_title];
    v39 = v59;
    *v38 = v58;
    v38[1] = v39;
    *&v34[OBJC_IVAR___BEBookViewModel_authors] = v31;
    v34[OBJC_IVAR___BEBookViewModel_sample] = v57;
    v40 = &v34[OBJC_IVAR___BEBookViewModel_path];
    v41 = v54;
    *v40 = v22;
    v40[1] = v41;
    if (v30 >> 62)
    {
      v42 = sub_139C70();
      if (!v42)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v42 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
      if (!v42)
      {
        goto LABEL_35;
      }
    }

    v62[0] = _swiftEmptyArrayStorage;
    sub_139C10();
    if (v42 < 0)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v43 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v44 = sub_139BE0();
      }

      else
      {
        v44 = *(v30 + 8 * v43 + 32);
        swift_unknownObjectRetain();
      }

      ++v43;
      v45 = objc_allocWithZone(type metadata accessor for Document());
      Document.init(document:)(v44);
      sub_139BF0();
      sub_139C20();
      sub_139C30();
      sub_139C00();
    }

    while (v42 != v43);
LABEL_35:

    v62[0] = sub_126878(v46);
    sub_125B5C(v62);

    v47 = v62[0];
    swift_beginAccess();
    v61 = v47;
    sub_11B940(&qword_22CC80);
    sub_139850();
    swift_endAccess();
    v60.receiver = v34;
    v60.super_class = v33;
    return objc_msgSendSuper2(&v60, "init");
  }

LABEL_42:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_132A38()
{
  result = qword_22CF20;
  if (!qword_22CF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_22CF20);
  }

  return result;
}

uint64_t _sSo8NSStringC13AEBookPluginsE22searchResultDetailText5countSSSu_tFZ_0(uint64_t a1)
{
  v2 = sub_139480();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v21 - v7;
  v9 = sub_139980();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v21 - v14;
  v16 = sub_139960();
  __chkstk_darwin(v16 - 8);
  sub_139950();
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_139940(v22);
  v21[1] = a1;
  sub_139930();
  v23._countAndFlagsBits = 0x7365686374616D20;
  v23._object = 0xEE00646E756F6620;
  sub_139940(v23);
  sub_139970();
  sub_139470();
  (*(v10 + 16))(v13, v15, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v3 + 16))(v6, v8, v2);
  v19 = sub_1399B0();
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v15, v9);
  return v19;
}

id Document.__allocating_init(ordinal:href:manifestId:assetId:title:fileSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a6;
  v38 = a7;
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v39 = a10;
  v40 = a8;
  v36 = a9;
  v12 = sub_11B940(&qword_22CD60);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v16 = sub_11B940(&qword_22CC68);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  v20 = objc_allocWithZone(v10);
  v21 = OBJC_IVAR___BEDocument__pageOffset;
  v42 = 0;
  sub_139850();
  (*(v17 + 32))(&v20[v21], v19, v16);
  v22 = OBJC_IVAR___BEDocument__pages;
  v42 = _swiftEmptyArrayStorage;
  sub_11B940(&qword_22CD10);
  sub_139850();
  (*(v13 + 32))(&v20[v22], v15, v12);
  *&v20[OBJC_IVAR___BEDocument_paginationData] = 0;
  *&v20[OBJC_IVAR___BEDocument_ordinal] = a1;
  v23 = &v20[OBJC_IVAR___BEDocument_href];
  v24 = v33;
  *v23 = v32;
  *(v23 + 1) = v24;
  v25 = &v20[OBJC_IVAR___BEDocument_manifestId];
  v26 = v35;
  *v25 = v34;
  *(v25 + 1) = v26;
  v27 = &v20[OBJC_IVAR___BEDocument_assetId];
  v28 = v38;
  *v27 = v37;
  *(v27 + 1) = v28;
  v29 = &v20[OBJC_IVAR___BEDocument_title];
  v30 = v36;
  *v29 = v40;
  *(v29 + 1) = v30;
  *&v20[OBJC_IVAR___BEDocument_file_size] = v39;
  v41.receiver = v20;
  v41.super_class = v10;
  return objc_msgSendSuper2(&v41, "init");
}

uint64_t sub_1330AC(unint64_t a1)
{
  if (a1 >> 62)
  {

    sub_11B940(&qword_22CF68);
    v1 = sub_139C60();
  }

  else
  {
    v1 = a1;

    sub_139CD0();
  }

  return v1;
}

uint64_t Document.href.getter()
{
  v1 = *(v0 + OBJC_IVAR___BEDocument_href);

  return v1;
}

uint64_t Document.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___BEDocument_title);

  return v1;
}

uint64_t Document.manifestId.getter()
{
  v1 = *(v0 + OBJC_IVAR___BEDocument_manifestId);

  return v1;
}

uint64_t Document.assetId.getter()
{
  v1 = *(v0 + OBJC_IVAR___BEDocument_assetId);

  return v1;
}

uint64_t sub_133314()
{
  v1 = OBJC_IVAR___BEDocument_file_size;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1333AC(uint64_t a1)
{
  v3 = OBJC_IVAR___BEDocument_file_size;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_133538()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  if (v2 >> 62)
  {
    sub_11B940(&qword_22CF68);
    v0 = sub_139C60();
  }

  else
  {
    sub_139CD0();
    v0 = v2;
  }

  return v0;
}

id Document.init(document:)(void *a1)
{
  v3 = sub_11B940(&qword_22CD60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43 - v5;
  v7 = sub_11B940(&qword_22CC68);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - v9;
  v11 = OBJC_IVAR___BEDocument__pageOffset;
  v45 = 0;
  sub_139850();
  (*(v8 + 32))(&v1[v11], v10, v7);
  v12 = OBJC_IVAR___BEDocument__pages;
  v45 = &_swiftEmptyArrayStorage;
  sub_11B940(&qword_22CD10);
  sub_139850();
  (*(v4 + 32))(&v1[v12], v6, v3);
  *&v1[OBJC_IVAR___BEDocument_paginationData] = 0;
  v13 = [a1 ordinal];
  *&v1[OBJC_IVAR___BEDocument_ordinal] = v13;
  v14 = [a1 href];
  v15 = sub_1399A0();
  v17 = v16;

  v18 = &v1[OBJC_IVAR___BEDocument_href];
  *v18 = v15;
  v18[1] = v17;
  v19 = [a1 pageOffset];
  swift_beginAccess();
  (*(v8 + 8))(&v1[v11], v7);
  v44 = v19;
  sub_139850();
  swift_endAccess();
  v20 = [a1 title];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1399A0();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = &v1[OBJC_IVAR___BEDocument_title];
  *v25 = v22;
  v25[1] = v24;
  v26 = [a1 manifestId];
  v27 = sub_1399A0();
  v29 = v28;

  v30 = &v1[OBJC_IVAR___BEDocument_manifestId];
  *v30 = v27;
  v30[1] = v29;
  v31 = [a1 assetId];
  v32 = sub_1399A0();
  v34 = v33;

  v35 = &v1[OBJC_IVAR___BEDocument_assetId];
  *v35 = v32;
  v35[1] = v34;
  v36 = [a1 file_size];
  *&v1[OBJC_IVAR___BEDocument_file_size] = v36;
  v37 = type metadata accessor for Document();
  v43.receiver = v1;
  v43.super_class = v37;
  v38 = objc_msgSendSuper2(&v43, "init");
  v39 = [a1 contentFragments];
  sub_11B940(&qword_22CF68);
  v40 = sub_139A40();

  v41 = sub_133AD8(v40);

  if (v41)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v41;
    sub_1398A0();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v38;
}

uint64_t sub_133A6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1398A0();
}

void *sub_133AD8(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_139C70();
    sub_139C10();
    v2 = sub_139C70();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_139C10();
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_139BE0();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for Page();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_139BF0();
        sub_139C20();
        sub_139C30();
        sub_139C00();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_133C48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1398A0();
}

id Document.init(ordinal:href:manifestId:assetId:title:fileSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v39 = a6;
  v40 = a7;
  v36 = a4;
  v37 = a5;
  v35 = a3;
  v41 = a10;
  v42 = a8;
  v38 = a9;
  v13 = sub_11B940(&qword_22CD60);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = sub_11B940(&qword_22CC68);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v34 - v19;
  v21 = OBJC_IVAR___BEDocument__pageOffset;
  v44 = 0;
  sub_139850();
  (*(v18 + 32))(&v10[v21], v20, v17);
  v22 = OBJC_IVAR___BEDocument__pages;
  v44 = _swiftEmptyArrayStorage;
  sub_11B940(&qword_22CD10);
  sub_139850();
  (*(v14 + 32))(&v10[v22], v16, v13);
  *&v10[OBJC_IVAR___BEDocument_paginationData] = 0;
  *&v10[OBJC_IVAR___BEDocument_ordinal] = a1;
  v23 = &v10[OBJC_IVAR___BEDocument_href];
  v24 = v35;
  v25 = v36;
  *v23 = a2;
  *(v23 + 1) = v24;
  v26 = &v10[OBJC_IVAR___BEDocument_manifestId];
  v27 = v37;
  *v26 = v25;
  *(v26 + 1) = v27;
  v28 = &v10[OBJC_IVAR___BEDocument_assetId];
  v29 = v40;
  *v28 = v39;
  *(v28 + 1) = v29;
  v30 = &v10[OBJC_IVAR___BEDocument_title];
  v31 = v38;
  *v30 = v42;
  *(v30 + 1) = v31;
  *&v10[OBJC_IVAR___BEDocument_file_size] = v41;
  v32 = type metadata accessor for Document();
  v43.receiver = v10;
  v43.super_class = v32;
  return objc_msgSendSuper2(&v43, "init");
}

uint64_t sub_133FC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  return v1;
}

uint64_t sub_1340A4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  *a1 = v3;
  return result;
}

uint64_t sub_134124(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1398A0();
}

uint64_t (*sub_134194(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_139880();
  return sub_124674;
}

uint64_t sub_134238(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CCA8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CC68);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1343D8(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CCA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CC68);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_134510(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_11B940(&qword_22CCA8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___BEDocument__pageOffset;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_11B940(&qword_22CC68);
  sub_139860();
  swift_endAccess();
  return sub_1252D8;
}

uint64_t sub_134734()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  return v1;
}

uint64_t sub_134830@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  *a1 = v3;
  return result;
}

uint64_t sub_1348B4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1398A0();
}

uint64_t type metadata accessor for Document()
{
  result = qword_22CFA0;
  if (!qword_22CFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_134984(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_139880();
  return sub_12764C;
}

uint64_t sub_134A28(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CF70);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CD60);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_134BC8(uint64_t a1)
{
  v2 = sub_11B940(&qword_22CF70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_11B940(&qword_22CD60);
  sub_139870();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_134D00(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_11B940(&qword_22CF70);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___BEDocument__pages;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_11B940(&qword_22CD60);
  sub_139860();
  swift_endAccess();
  return sub_127650;
}

uint64_t sub_134E70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  if (v2 >> 62)
  {
    v0 = sub_139C70();
  }

  else
  {
    v0 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  return v0;
}

uint64_t sub_134FB4(void *a1)
{
  *&v1[OBJC_IVAR___BEDocument_paginationData] = a1;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (a1)
  {
    _s13AEBookPlugins4PageC13generatePages4fromSayACGAA30DocumentPaginationDataProvider_p_tFZ_0(a1);

    v7 = sub_126890(v4);
    sub_13585C(&v7);

    v5 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v5;
    v6 = v1;
    sub_1398A0();
    return swift_unknownObjectRelease();
  }

  return result;
}

id Document.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Document();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t Document.description.getter()
{
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_139BD0(28);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for Document();
  v1 = objc_msgSendSuper2(&v7, "description");
  v2 = sub_1399A0();
  v4 = v3;

  v8 = v2;
  v9 = v4;
  v10._countAndFlagsBits = 0x6C616E6964724F20;
  v10._object = 0xEA0000000000203ALL;
  sub_1399F0(v10);
  v6 = *&v0[OBJC_IVAR___BEDocument_ordinal];
  v11._countAndFlagsBits = sub_139CA0();
  sub_1399F0(v11);

  v12._countAndFlagsBits = 0x756F436567615020;
  v12._object = 0xEC000000203A746ELL;
  sub_1399F0(v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  if (v6 >> 62)
  {
    sub_139C70();
  }

  v13._countAndFlagsBits = sub_139CA0();
  sub_1399F0(v13);

  return v8;
}

id sub_135460(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_139990();

  return v5;
}

char *Document.debugDescription.getter()
{
  v1 = [v0 description];
  v2 = sub_1399A0();

  v21._countAndFlagsBits = 10;
  v21._object = 0xE100000000000000;
  sub_1399F0(v21);

  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_139890();

  v4 = v2;
  if (!(v2 >> 62))
  {
    v5 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

LABEL_14:
    sub_11B940(&qword_22CCB0);
    sub_136324();
    v17 = sub_139900();
    v19 = v18;

    v22._countAndFlagsBits = v17;
    v22._object = v19;
    sub_1399F0(v22);

    return v3;
  }

  v5 = sub_139C70();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_12674C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v20 = v2;
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_139BE0();
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v9 description];
      v11 = sub_1399A0();
      v13 = v12;

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_12674C((v14 > 1), v15 + 1, 1);
      }

      ++v7;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
    }

    while (v5 != v7);

    v3 = v20;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

char *sub_135758(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_11B940(&qword_22CFB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_13585C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_136A28(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1358D8(v6);
  return sub_139C00();
}

Swift::Int sub_1358D8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_139C90(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Page();
        v6 = sub_139A70();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_135A60(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1359DC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1359DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      v11 = (*v9 + OBJC_IVAR___BEPage_contentOffset);
      if (*(v7 + OBJC_IVAR___BEPage_contentOffset) >= *v11 && *(v7 + OBJC_IVAR___BEPage_contentOffset + 8) >= v11[1])
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_135A60(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v85 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_98:
    v6 = *v85;
    if (!*v85)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_100;
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v5)
    {
      ++v7;
      goto LABEL_26;
    }

    v11 = *(*a3 + 8 * v10);
    v12 = *(v11 + OBJC_IVAR___BEPage_contentOffset);
    v13 = (*(*a3 + 8 * v7) + OBJC_IVAR___BEPage_contentOffset);
    v14 = v13[1];
    v15 = v12 < *v13;
    if (*(v11 + OBJC_IVAR___BEPage_contentOffset + 8) < v14)
    {
      v15 = 1;
    }

    v7 += 2;
    if (v9 + 2 < v5)
    {
      v10 = v5 - 1;
      while (1)
      {
        v16 = v12;
        v17 = *(*a3 + 8 * v7);
        v12 = *(v17 + OBJC_IVAR___BEPage_contentOffset);
        if (v12 >= v16)
        {
          if (v15 == *(v17 + OBJC_IVAR___BEPage_contentOffset + 8) >= *(v11 + OBJC_IVAR___BEPage_contentOffset + 8))
          {
            v10 = v7 - 1;
            if (!v15)
            {
              goto LABEL_26;
            }

LABEL_17:
            if (v7 >= v9)
            {
              if (v9 <= v10)
              {
                v18 = 8 * v7 - 8;
                v19 = 8 * v9;
                v20 = v7;
                v21 = v9;
                do
                {
                  if (v21 != --v20)
                  {
                    v22 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_133;
                    }

                    v23 = *(v22 + v19);
                    *(v22 + v19) = *(v22 + v18);
                    *(v22 + v18) = v23;
                  }

                  ++v21;
                  v18 -= 8;
                  v19 += 8;
                }

                while (v21 < v20);
                v5 = a3[1];
              }

              goto LABEL_26;
            }

LABEL_129:
            __break(1u);
LABEL_130:
            result = sub_136310(v8);
            v8 = result;
LABEL_100:
            v80 = *(v8 + 2);
            if (v80 >= 2)
            {
              while (*a3)
              {
                v81 = *&v8[16 * v80];
                v82 = *&v8[16 * v80 + 24];
                sub_136048((*a3 + 8 * v81), (*a3 + 8 * *&v8[16 * v80 + 16]), (*a3 + 8 * v82), v6);
                if (v4)
                {
                }

                if (v82 < v81)
                {
                  goto LABEL_123;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v8 = sub_136310(v8);
                }

                if (v80 - 2 >= *(v8 + 2))
                {
                  goto LABEL_124;
                }

                v83 = &v8[16 * v80];
                *v83 = v81;
                *(v83 + 1) = v82;
                result = sub_136284(v80 - 1);
                v80 = *(v8 + 2);
                if (v80 <= 1)
                {
                }
              }

              goto LABEL_134;
            }
          }
        }

        else if (!v15)
        {
          goto LABEL_26;
        }

        ++v7;
        v11 = v17;
        if (v5 == v7)
        {
          v7 = v5;
          break;
        }
      }
    }

    if (v15)
    {
      goto LABEL_17;
    }

LABEL_26:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_126;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_127;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_47:
    if (v7 < v9)
    {
      goto LABEL_125;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_135758(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v35 = *(v8 + 2);
    v34 = *(v8 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_135758((v34 > 1), v35 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v36;
    v37 = &v8[16 * v35];
    *(v37 + 4) = v9;
    *(v37 + 5) = v7;
    v38 = *v85;
    if (!*v85)
    {
      goto LABEL_135;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v8 + 4);
          v41 = *(v8 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_67:
          if (v43)
          {
            goto LABEL_114;
          }

          v56 = &v8[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_117;
          }

          v62 = &v8[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_121;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v66 = &v8[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_81:
        if (v61)
        {
          goto LABEL_116;
        }

        v69 = &v8[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_119;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_88:
        v6 = v39 - 1;
        if (v39 - 1 >= v36)
        {
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v77 = *&v8[16 * v6 + 32];
        v78 = *&v8[16 * v39 + 40];
        sub_136048((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v39 + 32]), (*a3 + 8 * v78), v38);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_136310(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_111;
        }

        v79 = &v8[16 * v6];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = sub_136284(v39);
        v36 = *(v8 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v8[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_112;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_113;
      }

      v51 = &v8[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_115;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_118;
      }

      if (v55 >= v47)
      {
        v73 = &v8[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_122;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_98;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v7 - 8;
  v26 = v9 - v7;
LABEL_36:
  v27 = *(v24 + 8 * v7);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    v31 = (*v29 + OBJC_IVAR___BEPage_contentOffset);
    if (*(v27 + OBJC_IVAR___BEPage_contentOffset) >= *v31 && *(v27 + OBJC_IVAR___BEPage_contentOffset + 8) >= v31[1])
    {
LABEL_35:
      ++v7;
      v25 += 8;
      --v26;
      if (v7 != v5)
      {
        goto LABEL_36;
      }

      v7 = v5;
      goto LABEL_47;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_136048(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_29:
      v20 = v6 - 8;
      v5 -= 8;
      v21 = v14;
      do
      {
        v22 = v5 + 8;
        v24 = *(v21 - 8);
        v21 -= 8;
        v23 = v24;
        v25 = *(v24 + OBJC_IVAR___BEPage_contentOffset + 8);
        v26 = (*v20 + OBJC_IVAR___BEPage_contentOffset);
        if (*(v24 + OBJC_IVAR___BEPage_contentOffset) < *v26 || v25 < v26[1])
        {
          if (v22 != v6)
          {
            *v5 = *v20;
          }

          if (v14 <= v4 || (v6 -= 8, v20 <= v7))
          {
            v6 = v20;
            goto LABEL_43;
          }

          goto LABEL_29;
        }

        if (v22 != v14)
        {
          *v5 = v23;
        }

        v5 -= 8;
        v14 = v21;
      }

      while (v21 > v4);
      v14 = v21;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        v16 = (*v6 + OBJC_IVAR___BEPage_contentOffset);
        v17 = (*v4 + OBJC_IVAR___BEPage_contentOffset);
        if (*v16 >= *v17 && v16[1] >= v17[1])
        {
          break;
        }

        v19 = v7 == v6;
        v6 += 8;
        if (!v19)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v15 = *v4;
      v19 = v7 == v4;
      v4 += 8;
      if (v19)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = v15;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
  }

LABEL_43:
  v28 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v28 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v28 >> 3));
  }

  return 1;
}

uint64_t sub_136284(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_136310(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_136324()
{
  result = qword_22CCB8;
  if (!qword_22CCB8)
  {
    sub_11BF38(&qword_22CCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCB8);
  }

  return result;
}

uint64_t sub_136388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BEDocument_file_size;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1363E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BEDocument_file_size;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_1364A4()
{
  sub_1275B0();
  if (v0 <= 0x3F)
  {
    sub_1369C4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1369C4()
{
  if (!qword_22CFB0)
  {
    sub_11BF38(&qword_22CD10);
    v0 = sub_1398B0();
    if (!v1)
    {
      atomic_store(v0, &qword_22CFB0);
    }
  }
}

void sub_136AD4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
}

void sub_136E38()
{
  sub_303B8();
  sub_303CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_136F18()
{
  sub_303B8();
  sub_303CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_13716C(void *a1, void *a2, NSObject *a3)
{
  v6 = objc_opt_class();
  v7 = v6;
  v8 = [a1 tocContentType];
  v9 = [a2 userInfo];
  v10 = 138413058;
  v11 = v6;
  v12 = 2048;
  v13 = v8;
  v14 = 2114;
  v15 = a2;
  v16 = 2114;
  v17 = v9;
  _os_log_fault_impl(&dword_0, a3, OS_LOG_TYPE_FAULT, "%@; type:%ld; performFetch Failed. error:%{public}@ info:%{public}@", &v10, 0x2Au);
}

void sub_137520(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "AEPDFPlugin coordinateReadingItemAtURL Error taking coordinate read for %@;  Error: %{public}@", &v4, 0x16u);
}

void sub_137C7C()
{
  sub_3BC30();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "edited annotation: %@\nNote text:\n%@", v2, 0x16u);
}

void sub_137D00(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1 != 0;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "missing contentData, assetViewControllerDelegate still exist ? %d", buf, 8u);
}

void sub_137EC4(void *a1)
{
  if (a1)
  {
    v3 = +[UITraitCollection bc_allAPITraits];
    v2 = [a1 registerForTraitChanges:v3 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }
}

void sub_137F74(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "dismissCurrentPopoverWithCompletion: failed because %@ is being presented or dismissed", &v2, 0xCu);
}

void sub_137FEC(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "showOverlayViewController: failed because %@ is being presented or dismissed", &v3, 0xCu);
}

void sub_13807C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unresolved error %{public}@", &v2, 0xCu);
}

void sub_138108(void *a1, uint64_t a2, NSObject *a3)
{
  [a1 row];
  sub_3BC30();
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Unexpected _configureRangeAnnotationCell with indexPath.row (%ld) >= count (%ld)", v5, 0x16u);
}

void sub_138258(void *a1, NSObject *a2)
{
  v3 = [a1 editingToolbar];
  v4 = [v3 superview];
  sub_3BC30();
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Skipping edit mode toolbar install, seems it already has a superview:%@", v5, 0xCu);
}

void sub_1384B8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Unexpected condition: document with nil href", buf, 2u);
}

void sub_1385D0()
{
  sub_D2C38();
  sub_303B8();
  sub_303CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1386A8()
{
  sub_D2C38();
  sub_303B8();
  sub_303CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_138780()
{
  sub_D2C38();
  sub_303B8();
  sub_303CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_138858()
{
  sub_D2C38();
  sub_303B8();
  sub_303CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_138930()
{
  sub_D2C38();
  sub_303B8();
  sub_303CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_138A08()
{
  sub_D2C38();
  sub_303B8();
  sub_303CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_138AE0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "deleted annotation: %@", &v2, 0xCu);
}

void sub_138B58(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "added annotation: %@", &v2, 0xCu);
}

void sub_138D9C(void *a1, NSObject *a2)
{
  v3 = [a1 storageKey];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error: Timed out waiting for First Paint ending operation [Key: %@]", &v4, 0xCu);
}

void sub_138EA8(char a1, NSObject *a2)
{
  v2 = @"disabled";
  if (a1)
  {
    v2 = @"ENABLED";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "setAssetEditingEnabled: %@", &v3, 0xCu);
}

void sub_138F38(uint64_t a1, NSObject *a2)
{
  if (*(*a1 + 24))
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "_needToSaveChanges: %@", &v3, 0xCu);
}

void sub_13906C(void *a1)
{
  [a1 isBookmarked];
  sub_F1188();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_139118(uint64_t a1, void *a2)
{
  v3 = [NSNumber numberWithInteger:a1];
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a2 isBookmarked]);
  sub_F1188();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1391F0(uint64_t a1)
{
  v6 = [NSNumber numberWithUnsignedInteger:a1];
  sub_F1188();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1392A0(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to archive: %@", &v1, 0xCu);
}

void sub_139334(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Snapshotting a CGSizeZero view: %{public}@", &v1, 0xCu);
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}