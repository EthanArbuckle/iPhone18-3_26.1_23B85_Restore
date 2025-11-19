uint64_t sub_10001C808()
{
  v0 = sub_10004098C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100040ACC();
  v5 = sub_10004097C();
  v6 = sub_1000420AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10001BA5C(0xD00000000000001FLL, 0x800000010004C3F0, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Should not be calling the completion version of %s", v7, 0xCu);
    sub_100010DCC(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10001C9A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C9D8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000AB88;

  return sub_100015558();
}

uint64_t sub_10001CAF4()
{
  v1 = sub_100040D7C();
  v2 = *(v1 - 8);
  v32 = *(v2 + 80);
  v3 = (v32 + 160) & ~v32;
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100003DC0(&qword_1000546F0, &unk_100044170) - 8);
  v29 = *(v5 + 80);
  v24 = (v4 + v29) & ~v29;
  v28 = *(v5 + 64);
  v31 = sub_100041E5C();
  v6 = *(v31 - 8);
  v7 = *(v6 + 80);
  v26 = *(v6 + 64);
  v30 = sub_100003DC0(&qword_100054E08, &qword_100043550);
  v8 = *(v30 - 8);
  v9 = *(v8 + 80);
  v23 = *(v8 + 64);
  v27 = sub_10004095C();
  v10 = *(v27 - 8);
  v11 = *(v10 + 80);
  v25 = *(v10 + 64);
  sub_100010DCC((v0 + 16));
  sub_100010DCC((v0 + 56));
  sub_100010DCC((v0 + 96));
  v12 = *(v0 + 136);

  v13 = *(v0 + 144);

  (*(v2 + 8))(v0 + v3, v1);
  v14 = sub_100041C6C();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v24, 1, v14))
  {
    (*(v15 + 8))(v0 + v24, v14);
  }

  v16 = v32 | v29 | v7 | v9 | v11;
  v17 = (v28 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (((v17 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v19 = (v18 + v26 + v9) & ~v9;
  v20 = (v19 + v23 + v11) & ~v11;
  v21 = *(v0 + v17 + 8);

  (*(v6 + 8))(v0 + v18, v31);
  (*(v8 + 8))(v0 + v19, v30);
  (*(v10 + 8))(v0 + v20, v27);

  return _swift_deallocObject(v0, v20 + v25, v16 | 7);
}

uint64_t sub_10001CEAC(void (*a1)(void, void), char a2)
{
  v5 = *(sub_100040D7C() - 8);
  v6 = (*(v5 + 80) + 160) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100003DC0(&qword_1000546F0, &unk_100044170) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_100041E5C() - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(sub_100003DC0(&qword_100054E08, &qword_100043550) - 8);
  v16 = (v13 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(sub_10004095C() - 8);
  return sub_100015CB4(a1, a2 & 1, v2 + 16, *(v2 + 152), v2 + v6, v2 + v9, *(v2 + v10), *(v2 + v10 + 8), *(v2 + v11), v2 + v13, v2 + v16, v2 + ((v16 + v17 + *(v18 + 80)) & ~*(v18 + 80)));
}

uint64_t sub_10001D120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleContactTimelineEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D198()
{
  v23 = sub_100003DC0(&qword_100054E20, &unk_1000435A8);
  v1 = *(v23 - 8);
  v25 = *(v1 + 80);
  v2 = *(v1 + 64);
  v3 = sub_100040D7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (((v25 + 160) & ~v25) + v2 + v5) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(sub_100003DC0(&qword_1000546F0, &unk_100044170) - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v21 = *(v8 + 64);
  v24 = sub_10004095C();
  v11 = *(v24 - 8);
  v12 = *(v11 + 80);
  v22 = *(v11 + 64);
  sub_100010DCC((v0 + 16));
  sub_100010DCC((v0 + 56));
  sub_100010DCC((v0 + 96));
  v13 = *(v0 + 136);

  v14 = *(v0 + 144);

  (*(v1 + 8))(v0 + ((v25 + 160) & ~v25), v23);
  (*(v4 + 8))(v0 + v6, v3);
  v15 = sub_100041C6C();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v10, 1, v15))
  {
    (*(v16 + 8))(v0 + v10, v15);
  }

  v17 = (v21 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + v12 + 16) & ~v12;
  v19 = *(v0 + v17 + 8);

  (*(v11 + 8))(v0 + v18, v24);

  return _swift_deallocObject(v0, v18 + v22, v25 | v5 | v9 | v12 | 7);
}

uint64_t sub_10001D4B0(uint64_t a1, char a2)
{
  v5 = *(sub_100003DC0(&qword_100054E20, &unk_1000435A8) - 8);
  v6 = (*(v5 + 80) + 160) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100040D7C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_100003DC0(&qword_1000546F0, &unk_100044170) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(sub_10004095C() - 8);
  return sub_1000133E8(a1, a2 & 1, v2 + 16, *(v2 + 152), v2 + v6, v2 + v9, v2 + v12, *(v2 + v13), *(v2 + v13 + 8), v2 + ((v13 + *(v14 + 80) + 16) & ~*(v14 + 80)));
}

uint64_t sub_10001D6B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004146C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003DC0(&qword_100054710, &unk_100042C00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100011258(v2, &v17 - v11, &qword_100054710, &unk_100042C00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100041CFC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1000420BC();
    v16 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001D8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v28 = a2;
  v27 = sub_100003DC0(&qword_100054FF0, &qword_100043760);
  v2 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v4 = &v25 - v3;
  v5 = sub_100003DC0(&qword_100054FF8, &qword_100043768);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = sub_100041CFC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  sub_10001D6B4(&v25 - v16);
  sub_100041CEC();
  v18 = sub_100041CCC();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v19(v17, v10);
  v20 = sub_100003DC0(&qword_100055000, &unk_100043770);
  v21 = v20;
  if (v18)
  {
    v22 = sub_100004D80(&qword_100055008, &qword_100055000, &unk_100043770);
    sub_1000417AC();
    (*(v6 + 16))(v4, v9, v5);
    swift_storeEnumTagMultiPayload();
    v29 = v21;
    v30 = v22;
    swift_getOpaqueTypeConformance2();
    sub_10004158C();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(*(v20 - 8) + 16))(v4, v26, v20);
    swift_storeEnumTagMultiPayload();
    v24 = sub_100004D80(&qword_100055008, &qword_100055000, &unk_100043770);
    v29 = v21;
    v30 = v24;
    swift_getOpaqueTypeConformance2();
    return sub_10004158C();
  }
}

uint64_t sub_10001DC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v48 = a2;
  v2 = sub_100003DC0(&qword_100054E28, &qword_100043620);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v41 - v4;
  v6 = sub_100003DC0(&qword_100054E30, &qword_100043628);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v42 = &v41 - v8;
  v43 = sub_100040A7C();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v43);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100040A5C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v41 - v20;
  v22 = sub_10004083C();
  v23 = *(v22 - 8);
  v45 = v22;
  v46 = v23;
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v44 = &v41 - v28;
  if ((sub_100040DAC() & 1) == 0)
  {
    goto LABEL_4;
  }

  v41 = v2;
  (*(v14 + 104))(v17, enum case for PeopleURL.PathAction.showGatheredMetrics(_:), v13);
  sub_10001F24C(&_swiftEmptyArrayStorage);
  sub_10001F434(&_swiftEmptyArrayStorage);
  (*(v9 + 104))(v12, enum case for PeopleURL.Scheme.people(_:), v43);
  sub_10004082C();
  v29 = v45;
  if ((*(v46 + 48))(v21, 1, v45) == 1)
  {
    sub_1000049F8(v21, &qword_1000546B0, &qword_100043630);
LABEL_4:
    v30 = sub_100003DC0(&qword_100054E38, &qword_100043638);
    (*(*(v30 - 8) + 16))(v5, v47, v30);
    swift_storeEnumTagMultiPayload();
    sub_10001E43C();
    sub_100004D80(&qword_100054E48, &qword_100054E38, &qword_100043638);
    return sub_10004158C();
  }

  v32 = v46;
  v33 = v44;
  (*(v46 + 32))(v44, v21, v29);
  v34 = sub_100041A5C();
  v36 = v35;
  v37 = v42;
  v38 = &v42[*(v6 + 36)];
  (*(v32 + 16))(v27, v33, v29);
  sub_100003DC0(&qword_100054E60, &qword_100043648);
  sub_10001F61C();
  sub_1000416FC();
  v39 = &v38[*(sub_100003DC0(&qword_100054E58, &qword_100043640) + 36)];
  *v39 = v34;
  v39[1] = v36;
  v40 = sub_100003DC0(&qword_100054E38, &qword_100043638);
  (*(*(v40 - 8) + 16))(v37, v47, v40);
  sub_100011258(v37, v5, &qword_100054E30, &qword_100043628);
  swift_storeEnumTagMultiPayload();
  sub_10001E43C();
  sub_100004D80(&qword_100054E48, &qword_100054E38, &qword_100043638);
  sub_10004158C();
  sub_1000049F8(v37, &qword_100054E30, &qword_100043628);
  return (*(v32 + 8))(v44, v29);
}

double sub_10001E29C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10004194C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004193C();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = sub_10004197C();

  (*(v3 + 8))(v6, v2);
  sub_100041A9C();
  sub_10004120C();
  v8 = v13[4];
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  result = *&v17;
  *(a1 + 40) = v17;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  return result;
}

unint64_t sub_10001E43C()
{
  result = qword_100054E40;
  if (!qword_100054E40)
  {
    sub_100003E08(&qword_100054E30, &qword_100043628);
    sub_100004D80(&qword_100054E48, &qword_100054E38, &qword_100043638);
    sub_100004D80(&qword_100054E50, &qword_100054E58, &qword_100043640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054E40);
  }

  return result;
}

uint64_t sub_10001E520()
{
  v0 = sub_10004089C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSDateFormatter) init];
  [v5 setTimeStyle:1];
  [v5 setDateStyle:0];
  v6 = sub_100041F4C();
  v8 = v7;
  sub_10004088C();
  isa = sub_10004087C().super.isa;
  (*(v1 + 8))(v4, v0);
  v10 = [v5 stringFromDate:isa];

  v11 = sub_100041EFC();
  v13 = v12;

  v15[0] = v6;
  v15[1] = v8;

  v16._countAndFlagsBits = v11;
  v16._object = v13;
  sub_100041F6C(v16);

  return v15[0];
}

uint64_t sub_10001E6CC(uint64_t a1)
{
  v3 = sub_100003DC0(&qword_100055010, &qword_100043780);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_100003DC0(&qword_100055018, &qword_100043788);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v21 - v9);
  if (sub_100040DBC())
  {
    *v10 = sub_100041A7C();
    v10[1] = v11;
    v12 = sub_100003DC0(&qword_100055048, &qword_1000437A0);
    sub_10001E980(v1, v10 + *(v12 + 44));
    v13 = sub_1000415EC();
    sub_10004117C();
    v14 = v10 + *(v7 + 36);
    *v14 = v13;
    *(v14 + 1) = v15;
    *(v14 + 2) = v16;
    *(v14 + 3) = v17;
    *(v14 + 4) = v18;
    v14[40] = 0;
    sub_100011258(v10, v6, &qword_100055018, &qword_100043788);
    swift_storeEnumTagMultiPayload();
    sub_100003DC0(&qword_100055020, &qword_100043790);
    sub_10001FCC0();
    sub_100004D80(&qword_100055040, &qword_100055020, &qword_100043790);
    sub_10004158C();
    return sub_1000049F8(v10, &qword_100055018, &qword_100043788);
  }

  else
  {
    v20 = sub_100003DC0(&qword_100055020, &qword_100043790);
    (*(*(v20 - 8) + 16))(v6, a1, v20);
    swift_storeEnumTagMultiPayload();
    sub_10001FCC0();
    sub_100004D80(&qword_100055040, &qword_100055020, &qword_100043790);
    return sub_10004158C();
  }
}

uint64_t sub_10001E980@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v58 = a1;
  v64 = a2;
  v2 = sub_10004169C();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  __chkstk_darwin(v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003DC0(&qword_100055050, &qword_1000437A8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v55 - v8;
  v65 = sub_100003DC0(&qword_100055020, &qword_100043790);
  v63 = *(v65 - 8);
  v10 = v63;
  v11 = *(v63 + 64);
  v12 = __chkstk_darwin(v65);
  v66 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = *(v10 + 16);
  v62 = &v55 - v14;
  v61();
  v84 = sub_10001E520();
  v85 = v15;
  sub_100004924();
  v16 = sub_10004178C();
  v18 = v17;
  v20 = v19;
  sub_1000418FC();
  v21 = sub_10004173C();
  v56 = v22;
  v57 = v21;
  v24 = v23;
  v55 = v25;

  sub_10001FD78(v16, v18, v20 & 1);

  sub_10004165C();
  v26 = sub_10004164C();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  sub_10004168C();
  sub_1000049F8(v9, &qword_100055050, &qword_1000437A8);
  v28 = v59;
  v27 = v60;
  (*(v59 + 104))(v5, enum case for Font.Leading.tight(_:), v60);
  sub_1000416AC();

  (*(v28 + 8))(v5, v27);
  v30 = v56;
  v29 = v57;
  v31 = sub_10004176C();
  v33 = v32;
  v35 = v34;
  v60 = v36;

  sub_10001FD78(v29, v30, v24 & 1);

  if (*(v58 + *(type metadata accessor for TimeStampModifier(0) + 20)))
  {
    v37 = 16.0;
  }

  else
  {
    v37 = -8.0;
  }

  sub_100041A9C();
  sub_10004125C();
  v38 = v35 & 1;
  v99 = v35 & 1;
  v40 = v65;
  v39 = v66;
  v41 = v61;
  v42 = v62;
  (v61)(v66, v62, v65);
  v43 = v64;
  (v41)(v64, v39, v40);
  v44 = (v43 + *(sub_100003DC0(&qword_100055058, &qword_1000437B0) + 48));
  *&v74 = v31;
  *(&v74 + 1) = v33;
  LOBYTE(v75) = v38;
  *(&v75 + 1) = *v98;
  DWORD1(v75) = *&v98[3];
  v45 = v60;
  *(&v75 + 1) = v60;
  *&v76 = 0;
  *(&v76 + 1) = v37;
  v81 = v71;
  v82 = v72;
  v83 = v73;
  v77 = v67;
  v78 = v68;
  v79 = v69;
  v80 = v70;
  v46 = v69;
  v44[4] = v68;
  v44[5] = v46;
  v47 = v75;
  *v44 = v74;
  v44[1] = v47;
  v48 = v83;
  v44[8] = v82;
  v44[9] = v48;
  v49 = v81;
  v44[6] = v80;
  v44[7] = v49;
  v50 = v77;
  v44[2] = v76;
  v44[3] = v50;
  sub_100011258(&v74, &v84, &qword_100055060, &qword_1000437B8);
  v51 = *(v63 + 8);
  v52 = v42;
  v53 = v65;
  v51(v52, v65);
  v84 = v31;
  v85 = v33;
  v86 = v38;
  *v87 = *v98;
  *&v87[3] = *&v98[3];
  v88 = v45;
  v89 = 0;
  v90 = v37;
  v95 = v71;
  v96 = v72;
  v97 = v73;
  v91 = v67;
  v92 = v68;
  v93 = v69;
  v94 = v70;
  sub_1000049F8(&v84, &qword_100055060, &qword_1000437B8);
  return (v51)(v66, v53);
}

unint64_t sub_10001EF04(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100040A6C();
  sub_10001F72C(&qword_100054E90, &type metadata accessor for PeopleURL.ArrayParameter);
  v5 = sub_100041ECC();
  return sub_10001F0AC(a1, v5, &type metadata accessor for PeopleURL.ArrayParameter, &qword_100054E98, &type metadata accessor for PeopleURL.ArrayParameter, &protocol conformance descriptor for PeopleURL.ArrayParameter);
}

unint64_t sub_10001EFD8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100040A8C();
  sub_10001F72C(&qword_100054EB0, &type metadata accessor for PeopleURL.Parameter);
  v5 = sub_100041ECC();
  return sub_10001F0AC(a1, v5, &type metadata accessor for PeopleURL.Parameter, &qword_100054EB8, &type metadata accessor for PeopleURL.Parameter, &protocol conformance descriptor for PeopleURL.Parameter);
}

unint64_t sub_10001F0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_10001F72C(v24, v25);
      v20 = sub_100041EDC();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_10001F24C(uint64_t a1)
{
  v2 = sub_100003DC0(&qword_100054EA0, &qword_100043668);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003DC0(&qword_100054EA8, &unk_100043670);
    v8 = sub_1000421EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100011258(v10, v6, &qword_100054EA0, &qword_100043668);
      result = sub_10001EFD8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_100040A8C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

unint64_t sub_10001F434(uint64_t a1)
{
  v2 = sub_100003DC0(&qword_100054E80, &qword_100043658);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003DC0(&qword_100054E88, &qword_100043660);
    v8 = sub_1000421EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100011258(v10, v6, &qword_100054E80, &qword_100043658);
      result = sub_10001EF04(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_100040A6C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

unint64_t sub_10001F61C()
{
  result = qword_100054E68;
  if (!qword_100054E68)
  {
    sub_100003E08(&qword_100054E60, &qword_100043648);
    sub_10001F6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054E68);
  }

  return result;
}

unint64_t sub_10001F6A8()
{
  result = qword_100054E70;
  if (!qword_100054E70)
  {
    sub_100003E08(&qword_100054E78, &qword_100043650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054E70);
  }

  return result;
}

uint64_t sub_10001F72C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003DC0(&qword_100054848, &unk_100042E60);
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
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001F874(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003DC0(&qword_100054848, &unk_100042E60);
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

void sub_10001F958()
{
  sub_10001F9CC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10001F9CC()
{
  if (!qword_1000548C8)
  {
    sub_100041CFC();
    v0 = sub_1000411AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000548C8);
    }
  }
}

uint64_t sub_10001FA38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001FAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10001FB60()
{
  sub_10001F9CC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_10001FBD0()
{
  result = qword_100054FE0;
  if (!qword_100054FE0)
  {
    sub_100003E08(&qword_100054FE8, "44");
    sub_10001E43C();
    sub_100004D80(&qword_100054E48, &qword_100054E38, &qword_100043638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054FE0);
  }

  return result;
}

unint64_t sub_10001FCC0()
{
  result = qword_100055028;
  if (!qword_100055028)
  {
    sub_100003E08(&qword_100055018, &qword_100043788);
    sub_100004D80(&qword_100055030, &qword_100055038, &qword_100043798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055028);
  }

  return result;
}

uint64_t sub_10001FD78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10001FD8C()
{
  result = qword_100055068;
  if (!qword_100055068)
  {
    sub_100003E08(&qword_100055070, &qword_1000437C0);
    sub_100003E08(&qword_100055000, &unk_100043770);
    sub_100004D80(&qword_100055008, &qword_100055000, &unk_100043770);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055068);
  }

  return result;
}

unint64_t sub_10001FE88()
{
  result = qword_100055078;
  if (!qword_100055078)
  {
    sub_100003E08(&qword_100055080, &qword_1000437C8);
    sub_10001FCC0();
    sub_100004D80(&qword_100055040, &qword_100055020, &qword_100043790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055078);
  }

  return result;
}

uint64_t sub_10001FF60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100041CAC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[13];
      goto LABEL_3;
    }

    v14 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[14];
      goto LABEL_3;
    }

    v15 = sub_100003DC0(&qword_100054848, &unk_100042E60);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[15];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100020150(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100041CAC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_3;
  }

  v14 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[14];
    goto LABEL_3;
  }

  v15 = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[15];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for StatusAndNameView()
{
  result = qword_1000550E8;
  if (!qword_1000550E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100020378()
{
  sub_100020620(319, &qword_1000550F8, sub_100010EE4, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100041CAC();
    if (v1 <= 0x3F)
    {
      sub_100020558();
      if (v2 <= 0x3F)
      {
        sub_1000205BC();
        if (v3 <= 0x3F)
        {
          sub_100020620(319, &qword_1000548B8, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_100020620(319, &unk_100055118, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_100020620(319, &qword_1000548C8, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
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

unint64_t sub_100020558()
{
  result = qword_100055100;
  if (!qword_100055100)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100055100);
  }

  return result;
}

void sub_1000205BC()
{
  if (!qword_100055108)
  {
    sub_100003E08(&qword_100055110, qword_1000437F8);
    v0 = sub_1000411AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100055108);
    }
  }
}

void sub_100020620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000206A0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v3 = sub_100003DC0(&qword_100055178, &qword_100043858);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v99 = (&v98 - v5);
  v115 = sub_100003DC0(&qword_100055180, &qword_100043860);
  v113 = *(v115 - 8);
  v6 = *(v113 + 64);
  v7 = __chkstk_darwin(v115);
  v100 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v101 = &v98 - v9;
  v10 = sub_1000414EC();
  v103 = *(v10 - 8);
  v104 = v10;
  v11 = *(v103 + 64);
  __chkstk_darwin(v10);
  v102 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003DC0(&qword_100055188, &qword_100043868);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v114 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v98 - v17;
  v19 = sub_10004169C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100003DC0(&qword_100055190, &qword_100043870);
  v24 = *(*(v109 - 8) + 64);
  v25 = __chkstk_darwin(v109);
  v111 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v108 = &v98 - v28;
  __chkstk_darwin(v27);
  v29 = *a1;
  v112 = v18;
  v110 = &v98 - v30;
  v117 = a1;
  v106 = v29;
  if (v29)
  {
    v31 = (a1 + *(type metadata accessor for StatusAndNameView() + 32));
    v32 = v31[4];
    sub_100010A94(v31, v31[3]);
    v33 = v29;
    v34 = sub_1000410CC();
    v36 = v35;
  }

  else
  {
    v34 = sub_100041F4C();
    v36 = v37;
  }

  *&v128 = v34;
  *(&v128 + 1) = v36;
  v107 = sub_100004924();
  v38 = sub_10004178C();
  v40 = v39;
  v42 = v41;
  v105 = type metadata accessor for StatusAndNameView();
  v43 = *(v117 + *(v105 + 24));
  (*(v20 + 104))(v23, enum case for Font.Leading.tight(_:), v19);
  sub_1000416AC();
  (*(v20 + 8))(v23, v19);
  v44 = sub_10004176C();
  v46 = v45;
  v48 = v47;

  sub_10001FD78(v38, v40, v42 & 1);

  sub_10004167C();
  v49 = sub_10004170C();
  v51 = v50;
  LOBYTE(v43) = v52;
  v54 = v53;
  v55 = v46;
  v56 = v105;
  sub_10001FD78(v44, v55, v48 & 1);

  v57 = v117;
  v58 = *(v117 + v56[10]);
  KeyPath = swift_getKeyPath();
  v60 = swift_getKeyPath();
  v127 = v43 & 1;
  v126 = 0;
  *&v121 = v49;
  *(&v121 + 1) = v51;
  LOBYTE(v122) = v43 & 1;
  *(&v122 + 1) = v54;
  *&v123 = KeyPath;
  *(&v123 + 1) = v58;
  LOBYTE(v124) = 0;
  *(&v124 + 1) = v60;
  v125 = 1;
  v61 = v106;
  if (v106)
  {
    v62 = (v57 + v56[8]);
    v63 = v62[4];
    sub_100010A94(v62, v62[3]);
    v64 = sub_1000410CC();
    v66 = v65;
  }

  else
  {
    v64 = sub_100041F4C();
    v66 = v67;
  }

  v68 = v110;
  *&v128 = v64;
  *(&v128 + 1) = v66;
  v69 = sub_10004178C();
  v71 = v70;
  v73 = v72;
  sub_100003DC0(&qword_100055198, &qword_1000438D8);
  sub_100021BF8();
  v74 = v108;
  sub_10004182C();
  sub_10001FD78(v69, v71, v73 & 1);

  v119[2] = v123;
  v119[3] = v124;
  v120 = v125;
  v119[0] = v121;
  v119[1] = v122;
  sub_1000049F8(v119, &qword_100055198, &qword_1000438D8);
  sub_100040B6C();
  sub_10004124C();

  sub_1000049F8(v74, &qword_100055190, &qword_100043870);
  v75 = v117;
  v76 = v117 + v56[5];
  sub_100041C8C();
  v77 = v68;
  if (*(&v129 + 1))
  {
    sub_100004B44(&v128, v118);
    v78 = v75 + v56[13];
    v79 = v102;
    sub_10002F610(v102);
    LOBYTE(v78) = sub_1000414DC();
    (*(v103 + 8))(v79, v104);
    v80 = v112;
    if ((v78 & 1) == 0)
    {
      v81 = sub_1000414BC();
      v82 = v99;
      *v99 = v81;
      *(v82 + 8) = 0x4008000000000000;
      *(v82 + 16) = 0;
      v83 = sub_100003DC0(&qword_1000551E8, &qword_100043908);
      sub_10002108C(v75, v118, v82 + *(v83 + 44));
      v84 = *(v75 + v56[11]);
      sub_100041A9C();
      sub_10004125C();
      v85 = v100;
      sub_100004C8C(v82, v100, &qword_100055178, &qword_100043858);
      v86 = v115;
      v87 = (v85 + *(v115 + 36));
      v88 = v133;
      v87[4] = v132;
      v87[5] = v88;
      v87[6] = v134;
      v89 = v129;
      *v87 = v128;
      v87[1] = v89;
      v90 = v131;
      v87[2] = v130;
      v87[3] = v90;
      v91 = v85;
      v92 = v101;
      sub_100004C8C(v91, v101, &qword_100055180, &qword_100043860);
      sub_100004C8C(v92, v80, &qword_100055180, &qword_100043860);
      (*(v113 + 56))(v80, 0, 1, v86);
      sub_100010DCC(v118);
      goto LABEL_13;
    }

    sub_100010DCC(v118);
  }

  else
  {
    sub_1000049F8(&v128, &qword_1000551D8, &qword_100044540);
    v80 = v112;
  }

  (*(v113 + 56))(v80, 1, 1, v115);
LABEL_13:
  v93 = v111;
  sub_100011258(v68, v111, &qword_100055190, &qword_100043870);
  v94 = v114;
  sub_100011258(v80, v114, &qword_100055188, &qword_100043868);
  v95 = v116;
  sub_100011258(v93, v116, &qword_100055190, &qword_100043870);
  v96 = sub_100003DC0(&qword_1000551E0, &qword_100043900);
  sub_100011258(v94, v95 + *(v96 + 48), &qword_100055188, &qword_100043868);
  sub_1000049F8(v80, &qword_100055188, &qword_100043868);
  sub_1000049F8(v77, &qword_100055190, &qword_100043870);
  sub_1000049F8(v94, &qword_100055188, &qword_100043868);
  return sub_1000049F8(v93, &qword_100055190, &qword_100043870);
}

uint64_t sub_10002108C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a3;
  v101 = sub_100003DC0(&qword_1000551F0, &qword_100043910);
  v5 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v100 = &v93 - v6;
  v7 = sub_100003DC0(&qword_1000551F8, &qword_100043918);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v103 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v102 = &v93 - v11;
  v12 = sub_10004169C();
  v107 = *(v12 - 8);
  v108 = v12;
  v13 = *(v107 + 64);
  __chkstk_darwin(v12);
  v106 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003DC0(&qword_100055200, &qword_100043920);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v93 - v17;
  v19 = sub_100003DC0(&qword_100055208, &qword_100043928);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v93 - v22;
  v24 = sub_100003DC0(&qword_100055210, &unk_100043930);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v98 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v93 - v28;
  v97 = type metadata accessor for StatusAndNameView();
  v30 = *(v97 + 20);
  v99 = a1;
  sub_100041C9C();
  v105 = v29;
  if (!v110)
  {
    sub_1000049F8(&v109, &qword_100055218, &unk_100044680);
    goto LABEL_7;
  }

  sub_100004B44(&v109, &v111);
  sub_100010A94(&v111, v113);
  if ((sub_100041C0C() & 1) == 0 || (sub_100010A94(&v111, v113), (v31 = sub_100041C1C()) == 0))
  {
    sub_100010DCC(&v111);
LABEL_7:
    (*(v20 + 56))(v29, 1, 1, v19);
    LODWORD(v96) = enum case for Font.Leading.tight(_:);
    goto LABEL_8;
  }

  v95 = v31;

  v93 = sub_10004179C();
  v33 = v32;
  v35 = v34;
  v96 = v36;
  v37 = &v18[*(sub_100003DC0(&qword_100055268, &qword_1000439C8) + 36)];
  v38 = *(sub_100003DC0(&qword_100055270, &qword_1000439D0) + 28);
  v94 = v15;
  v39 = enum case for Image.Scale.small(_:);
  v40 = sub_10004195C();
  (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
  *v37 = swift_getKeyPath();
  *v18 = v93;
  *(v18 + 1) = v33;
  v18[16] = v35 & 1;
  *(v18 + 3) = v96;
  sub_1000416BC();
  v42 = v106;
  v41 = v107;
  v43 = *(v107 + 104);
  LODWORD(v96) = enum case for Font.Leading.tight(_:);
  v44 = v108;
  v43(v106);
  v45 = sub_1000416AC();

  (*(v41 + 8))(v42, v44);
  KeyPath = swift_getKeyPath();
  v47 = &v18[*(sub_100003DC0(&qword_100055278, &qword_100043A38) + 36)];
  *v47 = KeyPath;
  v47[1] = v45;
  sub_100010A94(&v111, v113);
  v48 = sub_100041BFC();
  v49 = swift_getKeyPath();
  v50 = &v18[*(v94 + 36)];
  *v50 = v49;
  v50[1] = v48;
  sub_1000221C0();
  sub_10004184C();

  sub_1000049F8(v18, &qword_100055200, &qword_100043920);
  v51 = v105;
  sub_100004C8C(v23, v105, &qword_100055208, &qword_100043928);
  (*(v20 + 56))(v51, 0, 1, v19);
  sub_100010DCC(&v111);
LABEL_8:
  v52 = a2[4];
  sub_100010A94(a2, a2[3]);
  v111 = sub_100040C2C();
  v112 = v53;
  sub_100004924();
  v54 = sub_10004178C();
  v56 = v55;
  v58 = v57;
  v111 = sub_100040C2C();
  v112 = v59;
  v60 = sub_10004178C();
  v62 = v61;
  v64 = v63;
  v95 = sub_10004174C();
  v66 = v65;
  v68 = v67;
  v94 = v69;
  sub_10001FD78(v60, v62, v64 & 1);

  sub_10001FD78(v54, v56, v58 & 1);

  sub_1000416BC();
  v71 = v106;
  v70 = v107;
  v72 = v108;
  (*(v107 + 104))(v106, v96, v108);
  sub_1000416AC();

  (*(v70 + 8))(v71, v72);
  v73 = v95;
  v108 = sub_10004176C();
  v75 = v74;
  LOBYTE(v72) = v76;
  v78 = v77;

  sub_10001FD78(v73, v66, v68 & 1);

  v79 = *(v99 + *(v97 + 36));
  v80 = swift_getKeyPath();
  v81 = swift_getKeyPath();
  LOBYTE(v73) = v72 & 1;
  LOBYTE(v111) = v72 & 1;
  LOBYTE(v109) = 0;
  v82 = swift_getKeyPath();
  v83 = *(v101 + 36);
  v84 = swift_getKeyPath();
  v85 = v100;
  *&v100[v83] = v84;
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  *v85 = v108;
  *(v85 + 8) = v75;
  *(v85 + 16) = v73;
  *(v85 + 24) = v78;
  *(v85 + 32) = v80;
  *(v85 + 40) = v79;
  *(v85 + 48) = 0;
  *(v85 + 56) = v81;
  *(v85 + 64) = 1;
  *(v85 + 72) = v82;
  *(v85 + 80) = 1;
  sub_100040B5C();
  sub_100021EE4();
  v86 = v102;
  sub_10004187C();

  sub_1000049F8(v85, &qword_1000551F0, &qword_100043910);
  v87 = v105;
  v88 = v98;
  sub_100011258(v105, v98, &qword_100055210, &unk_100043930);
  v89 = v103;
  sub_100011258(v86, v103, &qword_1000551F8, &qword_100043918);
  v90 = v104;
  sub_100011258(v88, v104, &qword_100055210, &unk_100043930);
  v91 = sub_100003DC0(&qword_100055260, &qword_1000439C0);
  sub_100011258(v89, v90 + *(v91 + 48), &qword_1000551F8, &qword_100043918);
  sub_1000049F8(v86, &qword_1000551F8, &qword_100043918);
  sub_1000049F8(v87, &qword_100055210, &unk_100043930);
  sub_1000049F8(v89, &qword_1000551F8, &qword_100043918);
  return sub_1000049F8(v88, &qword_100055210, &unk_100043930);
}

uint64_t sub_100021A30@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000414FC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100003DC0(&qword_100055170, &qword_100043850);
  return sub_1000206A0(v1, a1 + *(v3 + 44));
}

uint64_t sub_100021A80@<X0>(uint64_t a1@<X8>)
{
  result = sub_10004141C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100021AB4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10004141C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100021AE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10004142C();
}

uint64_t sub_100021B18(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10004142C();
}

uint64_t sub_100021B48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004131C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100021B78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004131C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100021BF8()
{
  result = qword_1000551A0;
  if (!qword_1000551A0)
  {
    sub_100003E08(&qword_100055198, &qword_1000438D8);
    sub_100021CB0();
    sub_100004D80(&qword_1000551C8, &qword_1000551D0, &unk_1000438F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000551A0);
  }

  return result;
}

unint64_t sub_100021CB0()
{
  result = qword_1000551A8;
  if (!qword_1000551A8)
  {
    sub_100003E08(&qword_1000551B0, &qword_1000438E0);
    sub_100004D80(&qword_1000551B8, &qword_1000551C0, &qword_1000438E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000551A8);
  }

  return result;
}

uint64_t sub_100021D68(uint64_t a1)
{
  v2 = sub_10004195C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10004129C();
}

uint64_t sub_100021E30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000412FC();
  *a1 = result;
  return result;
}

uint64_t sub_100021E5C(uint64_t *a1)
{
  v1 = *a1;

  return sub_10004130C();
}

uint64_t sub_100021E88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004137C();
  *a1 = result;
  return result;
}

unint64_t sub_100021EE4()
{
  result = qword_100055220;
  if (!qword_100055220)
  {
    sub_100003E08(&qword_1000551F0, &qword_100043910);
    sub_100021F70();
    sub_1000220E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055220);
  }

  return result;
}

unint64_t sub_100021F70()
{
  result = qword_100055228;
  if (!qword_100055228)
  {
    sub_100003E08(&qword_100055230, &qword_1000439A8);
    sub_100022028();
    sub_100004D80(&qword_1000551C8, &qword_1000551D0, &unk_1000438F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055228);
  }

  return result;
}

unint64_t sub_100022028()
{
  result = qword_100055238;
  if (!qword_100055238)
  {
    sub_100003E08(&qword_100055240, &qword_1000439B0);
    sub_100021CB0();
    sub_100004D80(&qword_100055248, &qword_100055250, &qword_1000439B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055238);
  }

  return result;
}

unint64_t sub_1000220E0()
{
  result = qword_100055258;
  if (!qword_100055258)
  {
    type metadata accessor for WidgetAccentModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055258);
  }

  return result;
}

uint64_t sub_100022168@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000412FC();
  *a1 = result;
  return result;
}

uint64_t sub_100022194(uint64_t *a1)
{
  v1 = *a1;

  return sub_10004130C();
}

unint64_t sub_1000221C0()
{
  result = qword_100055280;
  if (!qword_100055280)
  {
    sub_100003E08(&qword_100055200, &qword_100043920);
    sub_100022278();
    sub_100004D80(&qword_1000552B0, &qword_1000552B8, &unk_1000444D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055280);
  }

  return result;
}

unint64_t sub_100022278()
{
  result = qword_100055288;
  if (!qword_100055288)
  {
    sub_100003E08(&qword_100055278, &qword_100043A38);
    sub_100022330();
    sub_100004D80(&qword_1000552A0, &qword_1000552A8, &unk_100043A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055288);
  }

  return result;
}

unint64_t sub_100022330()
{
  result = qword_100055290;
  if (!qword_100055290)
  {
    sub_100003E08(&qword_100055268, &qword_1000439C8);
    sub_100004D80(&qword_100055298, &qword_100055270, &qword_1000439D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055290);
  }

  return result;
}

void sub_100022430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(TUCallProviderManager) init];
  v8 = [v7 telephonyProvider];

  v9 = [objc_allocWithZone(TUDialRequest) initWithProvider:v8];
  v10 = objc_allocWithZone(CNPhoneNumber);
  v11 = sub_100041EEC();
  v12 = [v10 initWithStringValue:v11];

  v13 = [v12 stringValue];
  sub_100041EFC();

  sub_100041F5C();
  v15 = v14;

  if (v15)
  {

    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  v17 = objc_allocWithZone(TUHandle);
  v18 = sub_100041EEC();
  v19 = [v17 initWithType:v16 value:v18];

  [v9 setHandle:v19];
  [v9 setVideo:0];
  v21[4] = a3;
  v21[5] = a4;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_100022678;
  v21[3] = &unk_1000526E0;
  v20 = _Block_copy(v21);

  [v4 launchAppForDialRequest:v9 completion:v20];
  _Block_release(v20);
}

void sub_100022678(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100022708()
{
  v1 = v0[12];
  sub_100010A94(v0 + 8, v0[11]);
  v2 = sub_1000410DC();
  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = &_swiftEmptyArrayStorage;
    sub_1000243FC(0, v3, 0);
    v4 = &_swiftEmptyArrayStorage;
    v5 = v2 + 32;
    do
    {
      sub_100010F30(v5, v14);
      sub_100010A94(v14, v14[3]);
      v6 = sub_100040E3C();
      v8 = v7;
      sub_100010DCC(v14);
      v15 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        sub_1000243FC((v9 > 1), v10 + 1, 1);
        v4 = v15;
      }

      v4[2] = v10 + 1;
      v11 = &v4[2 * v10];
      v11[4] = v6;
      v11[5] = v8;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = &_swiftEmptyArrayStorage;
  }

  v12 = sub_1000259C8(v4);

  return v12;
}

id sub_100022868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003DC0(&qword_1000553D8, &qword_100043B68);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100043AA0;
  *(v8 + 32) = a1;
  v9 = objc_allocWithZone(INStartCallIntent);
  sub_100025A60(0, &qword_1000553E0, INPerson_ptr);
  v20 = a1;
  isa = sub_100041FBC().super.isa;

  v11 = [v9 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:1 contacts:isa callCapability:a2];

  if (a4)
  {
    sub_100025A60(0, &qword_1000553E8, INStartCallIntent_ptr);
    v12 = sub_100022708();
    v13 = sub_100022A44(a3, a4, v12);

    if ((v13 & 1) == 0)
    {
      if (a2 == 2)
      {
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_100043AA0;
        *(v14 + 32) = v20;
        v15 = objc_allocWithZone(INStartVideoCallIntent);
        v16 = v20;
        v17 = sub_100041FBC().super.isa;

        v18 = [v15 initWithContacts:v17];

        return v18;
      }

      else
      {

        return 0;
      }
    }
  }

  return v11;
}

uint64_t sub_100022A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_10004226C();
  sub_100041F2C();
  v7 = sub_10004227C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_10004222C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_100022B3C(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v187 = a2;
  v185 = a3;
  v186 = a4;
  v5 = sub_10004098C();
  v177 = *(v5 - 8);
  v178 = v5;
  v6 = *(v177 + 64);
  v7 = __chkstk_darwin(v5);
  v175 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v179 = &v164 - v9;
  v10 = sub_100003DC0(&qword_1000553B0, &qword_100043B38);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v181 = &v164 - v12;
  v171 = sub_100040BEC();
  v170 = *(v171 - 8);
  v13 = *(v170 + 64);
  __chkstk_darwin(v171);
  v169 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003DC0(&qword_100054CF0, &unk_100043230);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v168 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v167 = &v164 - v20;
  v21 = __chkstk_darwin(v19);
  v174 = &v164 - v22;
  v23 = __chkstk_darwin(v21);
  v182 = &v164 - v24;
  v25 = __chkstk_darwin(v23);
  v184 = &v164 - v26;
  v27 = __chkstk_darwin(v25);
  v166 = &v164 - v28;
  __chkstk_darwin(v27);
  v176 = &v164 - v29;
  v30 = sub_100040DFC();
  v183 = *(v30 - 8);
  v31 = v183[8];
  v32 = __chkstk_darwin(v30);
  v34 = &v164 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v164 - v35;
  v37 = sub_100003DC0(&qword_1000549E8, &qword_100043520);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v173 = &v164 - v39;
  v40 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v164 - v42;
  v180 = sub_10004083C();
  v44 = *(v180 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v180);
  v47 = &v164 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v49 = &v164 - v48;
  v50 = a1;
  if (sub_100040C9C())
  {
    v172 = a1;
    sub_100040C8C();
    if ((*(v44 + 48))(v43, 1, v180) != 1)
    {
      v64 = *(v44 + 32);
      v65 = v49;
      v66 = v49;
      v165 = v49;
      v67 = v180;
      v64(v66, v43, v180);
      v68 = sub_10004205C();
      v69 = v173;
      (*(*(v68 - 8) + 56))(v173, 1, 1, v68);
      (*(v44 + 16))(v47, v65, v67);
      v70 = (*(v44 + 80) + 40) & ~*(v44 + 80);
      v71 = swift_allocObject();
      *(v71 + 2) = 0;
      *(v71 + 3) = 0;
      *(v71 + 4) = v188;
      v64(&v71[v70], v47, v67);
      v72 = &v71[(v45 + v70 + 7) & 0xFFFFFFFFFFFFFFF8];
      v73 = v186;
      *v72 = v185;
      v72[1] = v73;

      sub_1000279C0(0, 0, v69, &unk_100043B48, v71);

      (*(v44 + 8))(v165, v67);
      return;
    }

    sub_1000049F8(v43, &qword_1000546B0, &qword_100043630);
    v50 = v172;
  }

  sub_100040CBC();
  v51 = v183;
  (v183[13])(v34, enum case for QuickActionType.videoCall(_:), v30);
  sub_1000256B4();
  sub_100041F9C();
  sub_100041F9C();
  if (v191 == v189 && v192 == v190)
  {
    v52 = 2;
  }

  else
  {
    v53 = sub_10004222C();
    v52 = 1;
    if (v53)
    {
      v52 = 2;
    }
  }

  v180 = v52;
  v54 = v51[1];
  v54(v34, v30);
  v54(v36, v30);

  sub_100040CCC();
  if (v55)
  {
    v56 = objc_allocWithZone(CNPhoneNumber);
    v57 = sub_100041EEC();
    v58 = [v56 initWithStringValue:v57];

    if (v58)
    {

      v59 = 2;
    }

    else
    {
      v59 = 1;
    }

    v74 = objc_allocWithZone(INPersonHandle);
    v75 = sub_100041EEC();

    v76 = [v74 initWithValue:v75 type:v59];
    goto LABEL_30;
  }

  v60 = v176;
  sub_10002570C(v187, v176);
  v61 = sub_10004116C();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v60, 1, v61) == 1)
  {
    sub_1000049F8(v60, &qword_100054CF0, &unk_100043230);
  }

  else
  {
    v77 = v170;
    v78 = v169;
    v79 = v171;
    (*(v170 + 104))(v169, enum case for HandleType.phoneNumber(_:), v171);
    v183 = sub_10004110C();
    v81 = v80;
    (*(v77 + 8))(v78, v79);
    (*(v62 + 8))(v60, v61);
    if (v81)
    {
      v82 = objc_allocWithZone(CNPhoneNumber);
      v83 = sub_100041EEC();
      v84 = [v82 initWithStringValue:v83];

      if (v84)
      {

        v85 = 2;
      }

      else
      {
        v85 = 1;
      }

      v95 = objc_allocWithZone(INPersonHandle);
      v75 = sub_100041EEC();

      v76 = [v95 initWithValue:v75 type:v85];
      goto LABEL_30;
    }
  }

  sub_100040CCC();
  if (!v86)
  {
    v89 = v166;
    sub_10002570C(v187, v166);
    if (v63(v89, 1, v61) == 1)
    {
      sub_1000049F8(v89, &qword_100054CF0, &unk_100043230);
      v87 = objc_allocWithZone(INPersonHandle);
    }

    else
    {
      v90 = v170;
      v91 = v169;
      v92 = v171;
      (*(v170 + 104))(v169, enum case for HandleType.email(_:), v171);
      sub_10004110C();
      v94 = v93;
      (*(v90 + 8))(v91, v92);
      (*(v62 + 8))(v89, v61);
      v87 = objc_allocWithZone(INPersonHandle);
      if (v94)
      {
        goto LABEL_22;
      }
    }

    v75 = 0;
    goto LABEL_27;
  }

  v87 = objc_allocWithZone(INPersonHandle);
LABEL_22:
  v88 = v87;
  v75 = sub_100041EEC();

  v87 = v88;
LABEL_27:
  v76 = [v87 initWithValue:v75 type:1];
LABEL_30:
  v96 = v76;
  v97 = v184;

  v98 = sub_1000407DC();
  v99 = *(v98 - 8);
  v100 = v181;
  (*(v99 + 56))(v181, 1, 1, v98);
  v183 = v96;
  sub_100040C7C();
  sub_100040C6C();
  v101 = v100;
  v103 = v102;
  v104 = (*(v99 + 48))(v100, 1, v98);
  v105 = 0;
  if (v104 != 1)
  {
    v105 = sub_1000407CC();
    (*(v99 + 8))(v101, v98);
  }

  v106 = sub_100041EEC();

  if (v103)
  {
    v107 = sub_100041EEC();
  }

  else
  {
    v107 = 0;
  }

  v108 = v182;
  v109 = v183;
  v110 = [objc_allocWithZone(INPerson) initWithPersonHandle:v183 nameComponents:v105 displayName:0 image:0 contactIdentifier:v106 customIdentifier:v107];

  v111 = sub_100040CDC();
  v113 = sub_100022868(v110, v180, v111, v112);

  if (v113)
  {
    v182 = v110;
    v114 = v179;
    sub_100040ABC();
    sub_10002570C(v187, v97);
    v115 = v113;
    v116 = sub_10004097C();
    v117 = sub_1000420CC();

    if (os_log_type_enabled(v116, v117))
    {
      v172 = v50;
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v191 = v120;
      *v118 = 138412546;
      *(v118 + 4) = v115;
      *v119 = v113;
      *(v118 + 12) = 2080;
      sub_10002570C(v97, v108);
      v121 = sub_10004116C();
      v122 = *(v121 - 8);
      v123 = (*(v122 + 48))(v108, 1, v121);
      v124 = v115;
      if (v123 == 1)
      {
        sub_1000049F8(v108, &qword_100054CF0, &unk_100043230);
        v125 = 0xE100000000000000;
        v126 = 45;
      }

      else
      {
        v142 = sub_1000410EC();
        v143 = v108;
        v126 = v142;
        v125 = v144;
        (*(v122 + 8))(v143, v121);
      }

      sub_1000049F8(v184, &qword_100054CF0, &unk_100043230);
      v145 = sub_10001BA5C(v126, v125, &v191);

      *(v118 + 14) = v145;
      _os_log_impl(&_mh_execute_header, v116, v117, "handling call intent: %@ for person: %s", v118, 0x16u);
      sub_1000049F8(v119, &qword_1000553B8, "p8");

      sub_100010DCC(v120);

      (*(v177 + 8))(v179, v178);
      v109 = v183;
    }

    else
    {

      sub_1000049F8(v97, &qword_100054CF0, &unk_100043230);
      (*(v177 + 8))(v114, v178);
    }

    v146 = v188[7];
    v147 = sub_100040CDC();
    sub_10002A38C(v115, v147, v148, v185, v186);
  }

  else
  {
    v127 = sub_100040CCC();
    if (v128)
    {
      v129 = v127;
      v130 = v128;
      v182 = v110;
      v131 = v175;
      sub_100040ABC();
      v132 = v174;
      sub_10002570C(v187, v174);

      v133 = sub_10004097C();
      v134 = sub_1000420CC();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v191 = v136;
        *v135 = 136315394;
        *(v135 + 4) = sub_10001BA5C(v129, v130, &v191);
        *(v135 + 12) = 2080;
        v137 = v167;
        sub_10002570C(v132, v167);
        v138 = sub_10004116C();
        v139 = *(v138 - 8);
        if ((*(v139 + 48))(v137, 1, v138) == 1)
        {
          sub_1000049F8(v137, &qword_100054CF0, &unk_100043230);
          v140 = 0xE100000000000000;
          v141 = 45;
        }

        else
        {
          v187 = v136;
          v157 = v129;
          v158 = v137;
          v141 = sub_1000410EC();
          v140 = v159;
          v160 = v158;
          v129 = v157;
          (*(v139 + 8))(v160, v138);
        }

        sub_1000049F8(v174, &qword_100054CF0, &unk_100043230);
        v161 = sub_10001BA5C(v141, v140, &v191);

        *(v135 + 14) = v161;
        _os_log_impl(&_mh_execute_header, v133, v134, "handling telephony voice call for handle: %s, person: %s", v135, 0x16u);
        swift_arrayDestroy();

        (*(v177 + 8))(v175, v178);
        v109 = v183;
      }

      else
      {

        sub_1000049F8(v132, &qword_100054CF0, &unk_100043230);
        (*(v177 + 8))(v131, v178);
      }

      v162 = v188[5];
      v163 = v188[6];
      sub_100010A94(v188 + 2, v162);
      (*(v163 + 8))(v129, v130, v185, v186, v162, v163);
    }

    else
    {
      v191 = 0;
      v192 = 0xE000000000000000;
      sub_10004217C(56);
      v193._object = 0x800000010004C550;
      v193._countAndFlagsBits = 0xD000000000000036;
      sub_100041F6C(v193);
      v149 = v168;
      sub_10002570C(v187, v168);
      v150 = sub_10004116C();
      v151 = *(v150 - 8);
      if ((*(v151 + 48))(v149, 1, v150) == 1)
      {
        sub_1000049F8(v149, &qword_100054CF0, &unk_100043230);
        v152 = 0xE100000000000000;
        v153._countAndFlagsBits = 45;
      }

      else
      {
        v154 = sub_1000410EC();
        v152 = v155;
        (*(v151 + 8))(v149, v150);
        v153._countAndFlagsBits = v154;
      }

      v153._object = v152;
      sub_100041F6C(v153);

      v156 = sub_100040A9C();

      v185(v156);
    }
  }
}

uint64_t sub_100023E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  return _swift_task_switch(sub_100023EB8, 0, 0);
}

uint64_t sub_100023EB8()
{
  v2 = v0[30];
  v1 = v0[31];
  sub_100003DC0(&qword_1000553C0, &unk_100043B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100042C30;
  *(inited + 32) = sub_100041EFC();
  *(inited + 40) = v4;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v5 = sub_100029484(inited);
  swift_setDeallocating();
  sub_1000049F8(inited + 32, &qword_1000553C8, &unk_100043CB0);
  v6 = *(v2 + 104);
  sub_10004081C(v7);
  v9 = v8;
  v0[34] = v8;
  sub_100027CC0(v5);

  isa = sub_100041EBC().super.isa;
  v0[35] = isa;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1000240CC;
  v11 = swift_continuation_init();
  v0[27] = sub_100003DC0(&qword_1000553D0, &qword_100043B60);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100027F88;
  v0[23] = &unk_1000526B8;
  v0[24] = v11;
  [v6 openSensitiveURLInBackground:v9 withOptions:isa completionHandler:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000240CC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000241AC, 0, 0);
}

uint64_t sub_1000241AC()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[29];

  v4(0);
  v6 = v0[1];

  return v6();
}

uint64_t sub_100024230()
{
  sub_100010DCC((v0 + 16));
  v1 = *(v0 + 56);

  sub_100010DCC((v0 + 64));

  return _swift_deallocClassInstance(v0, 112, 7);
}

void *sub_1000242CC(void *a1, int64_t a2, char a3)
{
  result = sub_10002443C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000242EC(size_t a1, int64_t a2, char a3)
{
  result = sub_100024584(a1, a2, a3, *v3, &qword_100054A60, &qword_1000430D0, &type metadata accessor for PersonInfo);
  *v3 = result;
  return result;
}

size_t sub_100024330(size_t a1, int64_t a2, char a3)
{
  result = sub_100024584(a1, a2, a3, *v3, &qword_1000549F0, &unk_100043060, type metadata accessor for MultipleContactsEntry);
  *v3 = result;
  return result;
}

size_t sub_100024374(size_t a1, int64_t a2, char a3)
{
  result = sub_100024584(a1, a2, a3, *v3, &qword_100055408, &unk_100043B80, type metadata accessor for PersonEntryType);
  *v3 = result;
  return result;
}

size_t sub_1000243B8(size_t a1, int64_t a2, char a3)
{
  result = sub_100024584(a1, a2, a3, *v3, &qword_100054DF8, &qword_100043540, type metadata accessor for SingleContactTimelineEntry);
  *v3 = result;
  return result;
}

char *sub_1000243FC(char *a1, int64_t a2, char a3)
{
  result = sub_100024760(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002441C(char *a1, int64_t a2, char a3)
{
  result = sub_10002486C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10002443C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003DC0(&qword_100055410, &unk_100043B90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003DC0(&qword_100054A30, &unk_1000430A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100024584(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003DC0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100024760(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003DC0(&qword_100054A58, &qword_1000430C8);
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

char *sub_10002486C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003DC0(&qword_100055418, &unk_100043BA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100024994(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10004226C();
  sub_100041F2C();
  v9 = sub_10004227C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_10004222C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100024D44(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100024AE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003DC0(&qword_1000553F0, &unk_100043B70);
  result = sub_10004215C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_10004226C();
      sub_100041F2C();
      result = sub_10004227C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100024D44(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100024AE4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100024EC4();
      goto LABEL_16;
    }

    sub_100025020(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10004226C();
  sub_100041F2C();
  result = sub_10004227C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10004222C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10004223C();
  __break(1u);
  return result;
}

void *sub_100024EC4()
{
  v1 = v0;
  sub_100003DC0(&qword_1000553F0, &unk_100043B70);
  v2 = *v0;
  v3 = sub_10004214C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100025020(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003DC0(&qword_1000553F0, &unk_100043B70);
  result = sub_10004215C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_10004226C();

      sub_100041F2C();
      result = sub_10004227C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

id sub_100025258()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = objc_opt_self();
  result = [v1 defaultWorkspace];
  if (result)
  {
    v3 = result;
    v4 = sub_100025A60(0, &qword_1000553F8, LSApplicationWorkspace_ptr);
    v13 = v4;
    v14 = &off_100052828;
    *&v12 = v3;
    type metadata accessor for IntentLauncher();
    v5 = swift_allocObject();
    sub_100004B44(&v12, v5 + 16);
    result = [v1 defaultWorkspace];
    if (result)
    {
      v6 = result;
      v7 = [objc_allocWithZone(CNLaunchServices) init];
      v13 = sub_100025A60(0, &qword_100055400, TUCallCenter_ptr);
      v14 = &off_100052668;
      *&v12 = v0;
      v10 = v4;
      v11 = &protocol witness table for LSApplicationWorkspace;
      *&v9 = v6;
      type metadata accessor for CallActionHandler();
      v8 = swift_allocObject();
      sub_100004B44(&v12, v8 + 16);
      *(v8 + 56) = v5;
      sub_100004B44(&v9, v8 + 64);
      *(v8 + 104) = v7;
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000253DC(uint64_t a1)
{
  v2 = sub_100040DFC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v22 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v21 = v20 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = v20 - v10;
  __chkstk_darwin(v9);
  v13 = v20 - v12;
  v20[1] = a1;
  sub_100040CBC();
  v20[0] = v3[13];
  (v20[0])(v11, enum case for QuickActionType.videoCall(_:), v2);
  sub_1000256B4();
  sub_100041F9C();
  sub_100041F9C();
  if (v25 == v23 && v26 == v24)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_10004222C();
  }

  v15 = v3[1];
  v15(v11, v2);
  v15(v13, v2);

  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v17 = v21;
    sub_100040CBC();
    v18 = v22;
    (v20[0])(v22, enum case for QuickActionType.voiceCall(_:), v2);
    sub_100041F9C();
    sub_100041F9C();
    if (v25 == v23 && v26 == v24)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_10004222C();
    }

    v15(v18, v2);
    v15(v17, v2);
  }

  return v16 & 1;
}

unint64_t sub_1000256B4()
{
  result = qword_1000553A8;
  if (!qword_1000553A8)
  {
    sub_100040DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000553A8);
  }

  return result;
}

uint64_t sub_10002570C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100054CF0, &unk_100043230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002577C()
{
  v1 = sub_10004083C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100025860(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004083C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000AB88;

  return sub_100023E94(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1000259C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10004206C();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100024994(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100025A60(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100025AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100025AC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100040E0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[7];
  sub_100010A94(v1 + 3, v1[6]);
  sub_100040C7C();
  v9 = sub_10004109C();

  if (v9)
  {
    (*(v4 + 104))(v7, enum case for ContactFormatter.Style.shortName(_:), v3);
    v10 = v9;
    sub_100041F4C();
    v16[3] = sub_100040E2C();
    v16[4] = &protocol witness table for ContactFormatter;
    sub_100004AC8(v16);
    sub_100040E1C();
    sub_10004113C();

    v11 = sub_10004116C();
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  else
  {
    v13 = sub_10004116C();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

uint64_t sub_100025D10(uint64_t a1)
{
  v2 = sub_100040CEC();
  v112 = *(v2 - 8);
  v113 = v2;
  v3 = *(v112 + 64);
  v4 = __chkstk_darwin(v2);
  v100 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v103 = &v98 - v7;
  v8 = __chkstk_darwin(v6);
  v102 = &v98 - v9;
  v104 = v10;
  __chkstk_darwin(v8);
  v12 = &v98 - v11;
  v13 = sub_10004098C();
  v110 = *(v13 - 8);
  v111 = v13;
  v14 = *(v110 + 64);
  v15 = __chkstk_darwin(v13);
  v101 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v105 = &v98 - v18;
  __chkstk_darwin(v17);
  v20 = &v98 - v19;
  v21 = sub_100003DC0(&qword_100054CF0, &unk_100043230);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v106 = (&v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v23);
  v27 = &v98 - v26;
  __chkstk_darwin(v25);
  v29 = &v98 - v28;
  v30 = sub_100040DFC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100040B3C();
  sub_100040B2C();
  sub_100040CBC();
  sub_100040B1C();

  v35 = v30;
  v36 = v20;
  v37 = v112;
  (*(v31 + 8))(v34, v35);
  v38 = v27;
  v39 = v12;
  v40 = v113;
  sub_100025AC4(v29);
  sub_100040AAC();
  v41 = *(v37 + 16);
  v109 = a1;
  v114 = v41;
  v115 = v37 + 16;
  v41(v39, a1, v40);
  v108 = v29;
  sub_10002570C(v29, v38);
  v42 = sub_10004097C();
  v43 = sub_10004209C();
  if (os_log_type_enabled(v42, v43))
  {
    v99 = v36;
    v44 = swift_slowAlloc();
    v120[0] = swift_slowAlloc();
    *v44 = 136315394;
    sub_100026D5C();
    v45 = sub_1000421FC();
    v47 = v46;
    v107 = *(v37 + 8);
    v107(v39, v40);
    v48 = sub_10001BA5C(v45, v47, v120);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = v38;
    v50 = v106;
    sub_10002570C(v38, v106);
    v51 = sub_10004116C();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v50, 1, v51) == 1)
    {
      sub_1000049F8(v50, &qword_100054CF0, &unk_100043230);
      v53 = 0xE100000000000000;
      v54 = 45;
    }

    else
    {
      v54 = sub_1000410EC();
      v53 = v59;
      (*(v52 + 8))(v50, v51);
    }

    v57 = v109;
    sub_1000049F8(v49, &qword_100054CF0, &unk_100043230);
    v60 = sub_10001BA5C(v54, v53, v120);

    *(v44 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v42, v43, "Attempting to handle action: %s, for person: %s", v44, 0x16u);
    swift_arrayDestroy();

    v55 = v111;
    v106 = *(v110 + 8);
    v56 = (v106)(v99, v111);
    v37 = v112;
    v40 = v113;
    v58 = v108;
  }

  else
  {

    sub_1000049F8(v38, &qword_100054CF0, &unk_100043230);
    v107 = *(v37 + 8);
    v107(v39, v40);
    v55 = v111;
    v106 = *(v110 + 8);
    v56 = (v106)(v36, v111);
    v58 = v108;
    v57 = v109;
  }

  v61 = *(v116 + 16);
  __chkstk_darwin(v56);
  *(&v98 - 2) = v57;
  *(&v98 - 1) = v58;
  sub_100026898(sub_100026CE8, v62, &v118);
  if (v119)
  {
    sub_100004B44(&v118, v120);
    v63 = v105;
    sub_100040AAC();
    sub_100010F30(v120, &v118);
    v64 = v102;
    v114(v102, v57, v40);
    v65 = sub_10004097C();
    v66 = sub_10004209C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v117[0] = swift_slowAlloc();
      *v67 = 136315394;
      v68 = v64;
      sub_100010A94(&v118, v119);
      swift_getDynamicType();
      v69 = sub_10004228C();
      v71 = v70;
      sub_100010DCC(&v118);
      v72 = sub_10001BA5C(v69, v71, v117);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2080;
      sub_100026D5C();
      v73 = sub_1000421FC();
      v75 = v74;
      v107(v68, v40);
      v76 = sub_10001BA5C(v73, v75, v117);

      *(v67 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v65, v66, "Got handler: %s for action: %s", v67, 0x16u);
      swift_arrayDestroy();
      v57 = v109;

      v77 = v111;
      v78 = v105;
    }

    else
    {

      v107(v64, v40);
      sub_100010DCC(&v118);
      v78 = v63;
      v77 = v55;
    }

    (v106)(v78, v77);
    v92 = v121;
    v93 = v122;
    sub_100010A94(v120, v121);
    v94 = v103;
    v114(v103, v57, v40);
    v95 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v96 = swift_allocObject();
    (*(v37 + 32))(v96 + v95, v94, v40);
    (*(v93 + 16))(v57, v58, sub_100026E3C, v96, v92, v93);

    sub_100010DCC(v120);
  }

  else
  {
    sub_1000049F8(&v118, &qword_1000554D8, "~;");
    v79 = v101;
    sub_100040AAC();
    v80 = v100;
    v114(v100, v57, v40);
    v81 = sub_10004097C();
    v82 = sub_1000420AC();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = v80;
      v85 = swift_slowAlloc();
      v120[0] = v85;
      *v83 = 136315138;
      sub_100026D5C();
      v86 = sub_1000421FC();
      v88 = v87;
      v107(v84, v40);
      v89 = sub_10001BA5C(v86, v88, v120);

      *(v83 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v81, v82, "No available handler for action: %s", v83, 0xCu);
      sub_100010DCC(v85);

      v90 = v111;
      v91 = v101;
    }

    else
    {

      v107(v80, v40);
      v91 = v79;
      v90 = v55;
    }

    (v106)(v91, v90);
  }

  return sub_1000049F8(v58, &qword_100054CF0, &unk_100043230);
}

uint64_t sub_100026898@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_100010F30(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return sub_100010DCC(v9);
      }

      if (v8)
      {
        return sub_100004B44(v9, a3);
      }

      result = sub_100010DCC(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100026950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100040CEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004098C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = __chkstk_darwin(v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_100040AAC();
    (*(v5 + 16))(v8, a2, v4);
    swift_errorRetain();
    v15 = sub_10004097C();
    v16 = sub_1000420AC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = v9;
      v18 = v17;
      v26 = swift_slowAlloc();
      v29 = v26;
      *v18 = 136315394;
      sub_100026D5C();
      v19 = sub_1000421FC();
      v27 = v10;
      v21 = v20;
      (*(v5 + 8))(v8, v4);
      v22 = sub_10001BA5C(v19, v21, &v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v23 = sub_10004225C();
      v25 = sub_10001BA5C(v23, v24, &v29);

      *(v18 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to handle action: %s with error: %s", v18, 0x16u);
      swift_arrayDestroy();

      return (*(v27 + 8))(v14, v28);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      return (*(v10 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_100026C84()
{
  v1 = *(v0 + 16);

  sub_100010DCC((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_100026CE8(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[3];
  v5 = a1[4];
  sub_100010A94(a1, v4);
  return (*(v5 + 8))(v3, v2, v4, v5) & 1;
}

unint64_t sub_100026D5C()
{
  result = qword_1000554E0;
  if (!qword_1000554E0)
  {
    sub_100040CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000554E0);
  }

  return result;
}

uint64_t sub_100026DB4()
{
  v1 = sub_100040CEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100026E3C(uint64_t a1)
{
  v3 = *(sub_100040CEC() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100026950(a1, v4);
}

id sub_100026EAC()
{
  sub_100003DC0(&qword_1000554E8, &unk_100043C00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100043BB0;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    v12 = sub_100027020();
    v13 = &off_100052828;
    *&v11 = v2;
    type metadata accessor for IntentLauncher();
    v3 = swift_allocObject();
    sub_100004B44(&v11, v3 + 16);
    v4 = [objc_allocWithZone(CNLaunchServices) init];
    v5 = type metadata accessor for MessageActionHandler();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    *(v0 + 56) = v5;
    *(v0 + 64) = &off_100052730;
    *(v0 + 32) = v6;
    v7 = sub_100025258();
    *(v0 + 96) = type metadata accessor for CallActionHandler();
    *(v0 + 104) = &off_100052678;
    *(v0 + 72) = v7;
    v8 = sub_100040D9C();
    v9 = sub_100040D8C();
    v12 = v8;
    v13 = &protocol witness table for ContactFetcher;
    *&v11 = v9;
    type metadata accessor for ActionLauncher();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    sub_100004B44(&v11, v10 + 24);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100027020()
{
  result = qword_1000553F8;
  if (!qword_1000553F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000553F8);
  }

  return result;
}

uint64_t sub_10002706C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a3;
  v75 = a2;
  v81 = a1;
  v3 = sub_10004098C();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v66 - v8;
  v10 = sub_100003DC0(&qword_100054E10, &qword_100043558);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v66 - v12;
  v14 = sub_100040A4C();
  v80 = *(v14 - 8);
  v15 = *(v80 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v66 - v20;
  __chkstk_darwin(v19);
  v23 = &v66 - v22;
  v24 = sub_100041CAC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_AXSPrefersHorizontalTextLayout())
  {
    goto LABEL_9;
  }

  v70 = v23;
  v71 = v25;
  v73 = v9;
  v74 = v24;
  v68 = v18;
  v69 = v13;
  v66 = v21;
  v67 = v7;
  v72 = v14;
  if (qword_100054548 != -1)
  {
    swift_once();
  }

  sub_100010A94(qword_1000554F0, qword_100055508);
  v29 = sub_10004114C();
  sub_1000410CC();
  v31 = v30;

  v32 = sub_100041F3C(8);
  v33 = v74;
  if (!v32)
  {
LABEL_8:

LABEL_9:
    v41 = 0;
    return v41 & 1;
  }

  sub_10004115C();
  sub_100040F9C();
  sub_100041CBC();

  sub_100041C8C();
  (*(v71 + 8))(v28, v33);
  v34 = v72;
  v35 = v80;
  if (v83)
  {
    sub_100010A94(v82, v83);
    sub_100040C2C();
    v37 = v36;
    sub_100010DCC(v82);

    v38 = sub_100041F3C(8);

    v39 = v73;
    v40 = v78;
    if (!v38)
    {

      goto LABEL_8;
    }
  }

  else
  {
    sub_1000049F8(v82, &qword_1000551D8, &qword_100044540);
    v37 = 0;
    v39 = v73;
    v40 = v78;
  }

  v43 = v69;
  sub_100027950(v40, v69);
  v44 = (*(v35 + 48))(v43, 1, v34);
  v45 = v70;
  if (v44 == 1)
  {

    sub_1000049F8(v43, &qword_100054E10, &qword_100043558);
    v46 = v67;
    sub_100040ACC();

    v47 = sub_10004097C();
    v48 = sub_1000420CC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 67109120;
      *(v49 + 4) = sub_100040FAC() & 1;

      _os_log_impl(&_mh_execute_header, v47, v48, "Using device language to determine vertical layout: %{BOOL}d", v49, 8u);
    }

    else
    {
    }

    (*(v76 + 8))(v46, v77);
    v41 = sub_100040FAC();
    return v41 & 1;
  }

  v81 = v31;
  (*(v35 + 32))(v70, v43, v34);
  sub_100040ACC();
  v50 = v66;
  v79 = *(v35 + 16);
  v79(v66, v45, v34);
  v51 = sub_10004097C();
  v52 = sub_1000420CC();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    LODWORD(v74) = v52;
    v54 = v50;
    v55 = v53;
    v56 = swift_slowAlloc();
    v82[0] = v56;
    *v55 = 136315138;
    v57 = sub_100040A3C();
    v78 = v37;
    v58 = v57;
    v60 = v59;
    v61 = *(v35 + 8);
    v61(v54, v34);
    v62 = sub_10001BA5C(v58, v60, v82);

    *(v55 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v51, v74, "Using app intent configuration to determine vertical layout, kind: %s", v55, 0xCu);
    sub_100010DCC(v56);
    v45 = v70;

    (*(v76 + 8))(v73, v77);
  }

  else
  {

    v61 = *(v35 + 8);
    v61(v50, v34);
    (*(v76 + 8))(v39, v77);
  }

  v63 = v68;
  v79(v68, v45, v34);
  v64 = (*(v35 + 88))(v63, v34);
  if (v64 == enum case for PeopleWidgetVerticalLayoutToggleKind.showVerticalLayoutToggleDT(_:))
  {

    v65 = sub_100040D3C();
LABEL_24:
    v41 = v65;
    v61(v45, v34);
    return v41 & 1;
  }

  if (v64 == enum case for PeopleWidgetVerticalLayoutToggleKind.showVerticalLayoutToggleDF(_:))
  {

    v65 = sub_100040D2C();
    goto LABEL_24;
  }

  result = sub_10004221C();
  __break(1u);
  return result;
}

uint64_t sub_100027838()
{
  v0 = sub_100040E0C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ContactFormatter.Style.shortName(_:));
  sub_100041F4C();
  qword_100055508 = sub_100040E2C();
  unk_100055510 = &protocol witness table for ContactFormatter;
  sub_100004AC8(qword_1000554F0);
  return sub_100040E1C();
}

uint64_t sub_100027950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100054E10, &qword_100043558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000279C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003DC0(&qword_1000549E8, &qword_100043520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100011258(a3, v27 - v11, &qword_1000549E8, &qword_100043520);
  v13 = sub_10004205C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000049F8(v12, &qword_1000549E8, &qword_100043520);
  }

  else
  {
    sub_10004204C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10004200C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100041F0C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000049F8(a3, &qword_1000549E8, &qword_100043520);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000049F8(a3, &qword_1000549E8, &qword_100043520);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100027CC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003DC0(&qword_1000555D8, &qword_100043CC0);
    v2 = sub_1000421EC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10001C004(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100029C18(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100029C18(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100029C18(v31, v32);
    result = sub_10004213C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100029C18(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100027F88(uint64_t a1, char a2, void *a3)
{
  v5 = sub_100010A94((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  *(v7 + 8) = a3;
  v8 = a3;

  return _swift_continuation_resume(v6);
}

void sub_100027FFC(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v121 = a3;
  v122 = a4;
  v6 = sub_1000407AC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v114 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000407BC();
  v115 = *(v9 - 8);
  v10 = *(v115 + 64);
  __chkstk_darwin(v9);
  v113 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004098C();
  v111 = *(v12 - 8);
  v112 = v12;
  v13 = *(v111 + 64);
  __chkstk_darwin(v12);
  v118 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003DC0(&qword_1000553B0, &qword_100043B38);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v119 = (&v103 - v17);
  v18 = sub_100040BEC();
  v109 = *(v18 - 8);
  v110 = v18;
  v19 = *(v109 + 64);
  __chkstk_darwin(v18);
  v108 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100003DC0(&qword_100054CF0, &unk_100043230);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v107 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v103 - v26;
  __chkstk_darwin(v25);
  v117 = &v103 - v28;
  v29 = sub_100003DC0(&qword_1000549E8, &qword_100043520);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v116 = &v103 - v31;
  v32 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v103 - v34;
  v36 = sub_10004083C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v40 = &v103 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v103 - v41;
  if (sub_100040C9C())
  {
    v106 = v27;
    sub_100040C8C();
    if ((*(v37 + 48))(v35, 1, v36) != 1)
    {
      v119 = *(v37 + 32);
      v119(v42, v35, v36);
      v53 = sub_10004205C();
      v54 = v116;
      (*(*(v53 - 8) + 56))(v116, 1, 1, v53);
      (*(v37 + 16))(v40, v42, v36);
      v55 = (*(v37 + 80) + 40) & ~*(v37 + 80);
      v56 = swift_allocObject();
      *(v56 + 2) = 0;
      *(v56 + 3) = 0;
      v57 = v119;
      *(v56 + 4) = v120;
      v57(&v56[v55], v40, v36);
      v58 = &v56[(v38 + v55 + 7) & 0xFFFFFFFFFFFFFFF8];
      v59 = v122;
      *v58 = v121;
      v58[1] = v59;

      sub_1000279C0(0, 0, v54, &unk_100043C88, v56);

      (*(v37 + 8))(v42, v36);
      return;
    }

    sub_1000049F8(v35, &qword_1000546B0, &qword_100043630);
    v27 = v106;
  }

  sub_100040CCC();
  if (v43)
  {
    goto LABEL_5;
  }

  v106 = a1;
  v116 = a2;
  v49 = v117;
  sub_100011258(a2, v117, &qword_100054CF0, &unk_100043230);
  v50 = sub_10004116C();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  if (v52(v49, 1, v50) == 1)
  {
    sub_1000049F8(v49, &qword_100054CF0, &unk_100043230);
LABEL_18:
    v120 = v9;
    v87 = v118;
    sub_100040ABC();
    sub_100011258(v116, v27, &qword_100054CF0, &unk_100043230);
    v88 = sub_10004097C();
    v89 = sub_1000420AC();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v92 = v27;
      v93 = v91;
      v123 = v91;
      *v90 = 136315138;
      v106 = v92;
      v94 = v107;
      sub_100011258(v92, v107, &qword_100054CF0, &unk_100043230);
      if (v52(v94, 1, v50) == 1)
      {
        sub_1000049F8(v94, &qword_100054CF0, &unk_100043230);
        v95 = 0;
        v96 = 0xE000000000000000;
      }

      else
      {
        v97 = v94;
        v95 = sub_1000410EC();
        v96 = v98;
        (*(v51 + 8))(v97, v50);
      }

      sub_1000049F8(v106, &qword_100054CF0, &unk_100043230);
      v99 = sub_10001BA5C(v95, v96, &v123);

      *(v90 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v88, v89, "Could not find handle for person %s", v90, 0xCu);
      sub_100010DCC(v93);

      (*(v111 + 8))(v118, v112);
    }

    else
    {

      sub_1000049F8(v27, &qword_100054CF0, &unk_100043230);
      (*(v111 + 8))(v87, v112);
    }

    sub_10004079C();
    sub_100029484(&_swiftEmptyArrayStorage);
    sub_1000297A4(&qword_1000555D0, &type metadata accessor for CocoaError);
    v100 = v113;
    v101 = v120;
    sub_1000407EC();
    v102 = sub_10004078C();
    (*(v115 + 8))(v100, v101);
    v121(v102);

    return;
  }

  v104 = v52;
  v105 = v50;
  v80 = v109;
  v79 = v110;
  v81 = v51;
  v82 = v108;
  (*(v109 + 104))(v108, enum case for HandleType.phoneNumber(_:), v110);
  v83 = v49;
  sub_10004110C();
  v85 = v84;
  v86 = v82;
  v51 = v81;
  v50 = v105;
  (*(v80 + 8))(v86, v79);
  v52 = v104;
  (*(v51 + 8))(v83, v50);
  if (!v85)
  {
    goto LABEL_18;
  }

LABEL_5:
  v44 = objc_allocWithZone(CNPhoneNumber);
  v45 = sub_100041EEC();
  v46 = [v44 initWithStringValue:v45];

  v47 = v119;
  if (v46)
  {

    v48 = 2;
  }

  else
  {
    v48 = 1;
  }

  v60 = objc_allocWithZone(INPersonHandle);
  v61 = sub_100041EEC();

  v62 = [v60 initWithValue:v61 type:v48];

  v63 = sub_1000407DC();
  v64 = *(v63 - 8);
  (*(v64 + 56))(v47, 1, 1, v63);
  sub_100040C7C();
  sub_100040C6C();
  v66 = v65;
  v67 = 0;
  if ((*(v64 + 48))(v47, 1, v63) != 1)
  {
    v67 = sub_1000407CC();
    (*(v64 + 8))(v47, v63);
  }

  v68 = sub_100041EEC();

  if (v66)
  {
    v69 = sub_100041EEC();
  }

  else
  {
    v69 = 0;
  }

  v70 = [objc_allocWithZone(INPerson) initWithPersonHandle:v62 nameComponents:v67 displayName:0 image:0 contactIdentifier:v68 customIdentifier:v69];

  sub_100003DC0(&qword_1000553D8, &qword_100043B68);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_100043AA0;
  *(v71 + 32) = v70;
  v72 = objc_allocWithZone(INSendMessageIntent);
  sub_1000297EC();
  v73 = v70;
  isa = sub_100041FBC().super.isa;

  v75 = [v72 initWithRecipients:isa outgoingMessageType:1 content:0 speakableGroupName:0 conversationIdentifier:0 serviceName:0 sender:0 attachments:0];

  v76 = *(v120 + 16);
  v77 = sub_100040CDC();
  sub_10002A38C(v75, v77, v78, v121, v122);
}

uint64_t sub_100028C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  return _swift_task_switch(sub_100028CA0, 0, 0);
}

uint64_t sub_100028CA0()
{
  v2 = v0[30];
  v1 = v0[31];
  sub_100003DC0(&qword_1000553C0, &unk_100043B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100042C30;
  *(inited + 32) = sub_100041EFC();
  *(inited + 40) = v4;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v5 = sub_100029484(inited);
  swift_setDeallocating();
  sub_1000049F8(inited + 32, &qword_1000553C8, &unk_100043CB0);
  v6 = *(v2 + 24);
  sub_10004081C(v7);
  v9 = v8;
  v0[34] = v8;
  sub_100027CC0(v5);

  isa = sub_100041EBC().super.isa;
  v0[35] = isa;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1000240CC;
  v11 = swift_continuation_init();
  v0[27] = sub_100003DC0(&qword_1000553D0, &qword_100043B60);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100027F88;
  v0[23] = &unk_1000527C0;
  v0[24] = v11;
  [v6 openSensitiveURLInBackground:v9 withOptions:isa completionHandler:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100028EB4()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100028F40(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100029038;

  return v7(a1);
}

uint64_t sub_100029038()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100029130(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10004222C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100029200(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  sub_10004226C();
  sub_100041F2C();
  v7 = sub_10004227C();

  return a3(a1, a2, v7);
}

unint64_t sub_100029284(uint64_t a1)
{
  v2 = sub_100003DC0(&qword_1000555E8, &unk_100043CD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003DC0(&qword_100054A50, &qword_1000430C0);
    v8 = sub_1000421EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100011258(v10, v6, &qword_1000555E8, &unk_100043CD0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100029200(*v6, v13, sub_100029130);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_100041C6C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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

unint64_t sub_100029484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003DC0(&qword_1000555E0, &qword_100043CC8);
    v3 = sub_1000421EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011258(v4, &v13, &qword_1000553C8, &unk_100043CB0);
      v5 = v13;
      v6 = v14;
      result = sub_100029200(v13, v14, sub_100029130);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100029C18(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_1000295C8()
{
  v0 = sub_100040DFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  sub_100040CBC();
  (*(v1 + 104))(v5, enum case for QuickActionType.message(_:), v0);
  sub_1000297A4(&qword_1000553A8, &type metadata accessor for QuickActionType);
  sub_100041F9C();
  sub_100041F9C();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004222C();
  }

  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);

  return v8 & 1;
}

uint64_t sub_1000297A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000297EC()
{
  result = qword_1000553E0;
  if (!qword_1000553E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000553E0);
  }

  return result;
}

uint64_t sub_100029838()
{
  v1 = sub_10004083C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10002991C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004083C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000AB88;

  return sub_100028C7C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100029A58()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029A90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011628;

  return sub_100028F40(a1, v5);
}

uint64_t sub_100029B48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000AB88;

  return sub_100028F40(a1, v5);
}

_OWORD *sub_100029C18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100029C2C()
{
  v0 = sub_100003DC0(&qword_1000555F8, &qword_100043D38);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100029CB4();
  sub_1000411FC();
  return 0;
}

unint64_t sub_100029CB4()
{
  result = qword_1000555F0;
  if (!qword_1000555F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000555F0);
  }

  return result;
}

unint64_t sub_100029D38()
{
  result = qword_100055600;
  if (!qword_100055600)
  {
    sub_100003E08(&qword_100055608, &qword_100043D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055600);
  }

  return result;
}

uint64_t sub_100029DC8@<X0>(uint64_t a1@<X8>)
{
  v27 = sub_10004193C();
  v26 = sub_10004163C();
  KeyPath = swift_getKeyPath();
  sub_100041F4C();
  sub_100004924();
  v2 = sub_10004178C();
  v4 = v3;
  v6 = v5;
  sub_1000418FC();
  v7 = sub_10004173C();
  v9 = v8;
  v11 = v10;

  sub_10001FD78(v2, v4, v6 & 1);

  sub_1000416CC();
  v12 = sub_10004176C();
  v14 = v13;
  v16 = v15;

  sub_10001FD78(v7, v9, v11 & 1);

  sub_10004167C();
  v17 = sub_10004170C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_10001FD78(v12, v14, v16 & 1);

  *a1 = v27;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v26;
  *(a1 + 24) = v17;
  *(a1 + 32) = v19;
  v21 &= 1u;
  *(a1 + 40) = v21;
  *(a1 + 48) = v23;

  sub_10002A118(v17, v19, v21);

  sub_10001FD78(v17, v19, v21);
}

__n128 sub_100029FF4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1000414FC();
  v13 = 0;
  sub_100029DC8(v9);
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v7 = v9[0];
  result = v9[1];
  v8 = v13;
  *a1 = v2;
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  *(a1 + 40) = result;
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

uint64_t sub_10002A068@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004139C();
  *a1 = result;
  return result;
}

uint64_t sub_10002A094@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004139C();
  *a1 = result;
  return result;
}

uint64_t sub_10002A0C0(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000413AC();
}

uint64_t sub_10002A0EC(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000413AC();
}

uint64_t sub_10002A118(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10002A12C()
{
  result = qword_100055610;
  if (!qword_100055610)
  {
    sub_100003E08(&qword_100055618, &unk_100043DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055610);
  }

  return result;
}

void sub_10002A190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {

    v9 = sub_100041EEC();
    v10 = [objc_opt_self() applicationProxyForIdentifier:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_10002AAE0;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10002A2F0;
  v13[3] = &unk_100052888;
  v12 = _Block_copy(v13);

  [v5 openUserActivity:a1 withApplicationProxy:v10 completionHandler:v12];
  _Block_release(v12);
}

void sub_10002A2F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10002A38C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v47 = a4;
  v48 = a5;
  v10 = sub_10004098C();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    v14 = sub_100041EEC();
    v15 = [objc_opt_self() applicationProxyForIdentifier:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(INInteraction) initWithIntent:a1 response:0];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v18)
  {
    sub_100041EFC();
    v18 = sub_100041EEC();
  }

  v19 = [objc_allocWithZone(NSUserActivity) initWithActivityType:v18];

  v44 = v16;
  [v19 _setInteraction:v16 donate:0];
  sub_100040ABC();
  v20 = v15;
  v21 = a1;
  v22 = v13;
  v23 = sub_10004097C();
  v24 = sub_1000420CC();
  v49 = v20;

  if (os_log_type_enabled(v23, v24))
  {
    v41 = v22;
    v42 = v6;
    v43 = a2;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v50 = v27;
    *v25 = 138412546;
    *(v25 + 4) = v21;
    *v26 = v21;
    *(v25 + 12) = 2080;
    v28 = v21;
    if (v15)
    {
      v29 = a3;
      v30 = [v49 description];
      v31 = sub_100041EFC();
      v33 = v32;

      a3 = v29;
    }

    else
    {
      v33 = 0xE100000000000000;
      v31 = 45;
    }

    v34 = sub_10001BA5C(v31, v33, &v50);

    *(v25 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "Launching intent: %@ with application proxy: %s", v25, 0x16u);
    sub_10002AA78(v26);

    sub_100010DCC(v27);

    (*(v45 + 8))(v41, v46);
    v6 = v42;
    a2 = v43;
  }

  else
  {

    (*(v45 + 8))(v22, v46);
  }

  v35 = v47;
  v36 = v6[5];
  v37 = v6[6];
  sub_100010A94(v6 + 2, v36);
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  *(v38 + 24) = v48;
  v39 = *(v37 + 8);

  v39(v19, a2, a3, sub_10002AA70, v38, v36, v37);
}

uint64_t sub_10002A7A4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_10004098C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_100040AAC();
    swift_errorRetain();
    v9 = sub_10004097C();
    v10 = sub_1000420AC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v22 = v5;
      v12 = v11;
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_10004225C();
      v16 = sub_10001BA5C(v14, v15, &v23);
      v21 = v4;
      v17 = a2;
      v18 = v16;

      *(v12 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to launch activity: %s", v12, 0xCu);
      sub_100010DCC(v13);

      (*(v22 + 8))(v8, v21);
      return v17(a1);
    }

    (*(v5 + 8))(v8, v4);
  }

  return a2(a1);
}

uint64_t sub_10002A9DC()
{
  sub_100010DCC((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10002AA38()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002AA78(uint64_t a1)
{
  v2 = sub_100003DC0(&qword_1000553B8, "p8");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002AAE0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t sub_10002AB0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002AB28()
{
  sub_1000409FC();
  result = sub_1000409DC();
  byte_1000574A8 = result & 1;
  return result;
}

unint64_t sub_10002AB84()
{
  result = qword_1000556C8;
  if (!qword_1000556C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000556C8);
  }

  return result;
}

unint64_t sub_10002ABDC()
{
  result = qword_1000556D0;
  if (!qword_1000556D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000556D0);
  }

  return result;
}

unint64_t sub_10002AC9C()
{
  result = qword_1000556D8;
  if (!qword_1000556D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000556D8);
  }

  return result;
}

uint64_t sub_10002ACF0()
{
  v0 = sub_10004080C();
  sub_10002F960(v0, qword_1000574B0);
  sub_10002F928(v0, qword_1000574B0);
  return sub_1000407FC();
}

uint64_t sub_10002AD54(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_10004083C() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(sub_100003DC0(&qword_100055708, &qword_100043FC8) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_100040CEC();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10002AE78, 0, 0);
}

uint64_t sub_10002AE78()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_10004074C();
  sub_100040CAC();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000049F8(v0[5], &qword_100055708, &qword_100043FC8);
  }

  else
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];
    (*(v7 + 32))(v6, v0[5], v8);
    sub_100026EAC();
    sub_100025D10(v6);

    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[8];
  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[2];
  sub_10004073C();

  v13 = v0[1];

  return v13();
}

uint64_t sub_10002AFC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100054558 != -1)
  {
    swift_once();
  }

  v2 = sub_10004080C();
  v3 = sub_10002F928(v2, qword_1000574B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002B084(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000AB88;

  return sub_10002AD54(a1, v4);
}

uint64_t sub_10002B124@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = sub_10004077C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003DC0(&qword_1000556F0, &unk_100043FA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - v12;
  v14 = sub_100003DC0(&qword_1000556F8, &qword_100043FB0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v24 - v16;
  v18 = sub_10004080C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100003DC0(&qword_100055700, &qword_100043FB8);
  sub_1000407FC();
  (*(v19 + 56))(v17, 1, 1, v18);
  v21 = sub_10004083C();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_10004072C();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  (*(v2 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_10004076C();
  *v25 = result;
  return result;
}

uint64_t sub_10002B454(uint64_t a1)
{
  v2 = sub_10002AC9C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10002B4E4()
{
  v1 = v0;
  v2 = sub_100003DC0(&qword_100055970, &qword_1000442A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v18 - v4;
  sub_10002B6A0(v1, v18 - v4);
  v6 = sub_1000418FC();
  KeyPath = swift_getKeyPath();
  v8 = &v5[*(sub_100003DC0(&qword_100055978, &qword_1000442E0) + 36)];
  *v8 = KeyPath;
  v8[1] = v6;
  v9 = &v5[*(v2 + 36)];
  v10 = v9 + *(sub_100003DC0(&qword_100055980, &qword_1000442E8) + 28);
  sub_10004126C();
  *v9 = swift_getKeyPath();
  v11 = (v1 + *(type metadata accessor for WidgetButton(0) + 24));
  v12 = v11[1];
  v18[2] = *v11;
  v18[3] = v12;
  sub_100004924();

  v13 = sub_10004178C();
  v15 = v14;
  LOBYTE(KeyPath) = v16;
  sub_100030C6C();
  sub_10004182C();
  sub_10001FD78(v13, v15, KeyPath & 1);

  return sub_1000049F8(v5, &qword_100055970, &qword_1000442A8);
}

uint64_t sub_10002B6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = sub_100003DC0(&qword_1000559C0, &qword_100044330);
  v31 = *(v36 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin(v36);
  v30 = &v30 - v4;
  v33 = sub_100003DC0(&qword_1000559F0, &qword_100044350);
  v5 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v32 = &v30 - v6;
  v34 = sub_100003DC0(&qword_1000559D0, &qword_100044338);
  v7 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v9 = &v30 - v8;
  v10 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v30 - v12;
  v14 = sub_10004083C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  sub_100011258(a1, v13, &qword_1000546B0, &qword_100043630);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v22 = sub_1000049F8(v13, &qword_1000546B0, &qword_100043630);
    __chkstk_darwin(v22);
    *(&v30 - 2) = a1;
    sub_1000419DC();
    KeyPath = swift_getKeyPath();
    v24 = swift_allocObject();
    *(v24 + 16) = 1;
    v25 = &v9[*(v34 + 36)];
    *v25 = KeyPath;
    v25[1] = sub_100031080;
    v25[2] = v24;
    sub_100011258(v9, v32, &qword_1000559D0, &qword_100044338);
    swift_storeEnumTagMultiPayload();
    sub_100004D80(&qword_1000559B8, &qword_1000559C0, &qword_100044330);
    sub_100030F18();
    sub_10004158C();
    return sub_1000049F8(v9, &qword_1000559D0, &qword_100044338);
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    (*(v15 + 16))(v19, v21, v14);
    v37 = sub_100031098(v19);
    __chkstk_darwin(v37);
    *(&v30 - 2) = a1;
    sub_10002AC9C();
    v27 = v30;
    sub_1000419CC();
    v28 = v31;
    v29 = v36;
    (*(v31 + 16))(v32, v27, v36);
    swift_storeEnumTagMultiPayload();
    sub_100004D80(&qword_1000559B8, &qword_1000559C0, &qword_100044330);
    sub_100030F18();
    sub_10004158C();
    (*(v28 + 8))(v27, v29);
    return (*(v15 + 8))(v21, v14);
  }
}

uint64_t sub_10002BC34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WidgetButton(0) + 20));
  v4 = *v3;
  v5 = v3[1];

  result = sub_10004193C();
  *a2 = result;
  return result;
}

uint64_t sub_10002BC8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004146C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003DC0(&qword_100054700, &qword_100042B60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  sub_100011258(v1 + *(v12 + 20), v11, &qword_100054700, &qword_100042B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004119C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1000420BC();
    v16 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

id sub_10002BE98()
{
  v1 = sub_10004116C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  sub_100011258(v0 + *(v10 + 24), v9, &qword_1000546B8, &unk_100042AD0);
  v11 = sub_100041BAC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1000049F8(v9, &qword_1000546B8, &unk_100042AD0);
    isa = 0;
  }

  else
  {
    sub_100041B8C();
    (*(v12 + 8))(v9, v11);
    v14 = sub_10004114C();
    (*(v2 + 8))(v5, v1);
    isa = [v14 memojiMetadata];

    if (isa)
    {
      v15 = sub_10004085C();
      v17 = v16;

      isa = sub_10004084C().super.isa;
      sub_100010FFC(v15, v17);
    }
  }

  v18 = [objc_opt_self() memojiMetadataFromData:isa];

  return v18;
}

unint64_t sub_10002C104()
{
  v19 = sub_10004189C();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002BE98();
  if (!v4)
  {
    sub_100003DC0(&qword_100055840, &qword_1000440C0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100042C30;
    *(v16 + 32) = sub_1000418CC();
    return v16;
  }

  v5 = v4;
  v20 = &_swiftEmptyArrayStorage;
  result = [v4 backgroundColorDescription];
  if (result)
  {
    v7 = result;
    v8 = [objc_allocWithZone(CNMemojiBackgroundParameters) initWithColorDescription:result];

    result = [v8 numberOfLayers];
    if ((result & 0x8000000000000000) == 0)
    {
      v9 = result;
      if (result)
      {
        v18 = v5;
        v10 = 0;
        v11 = (v0 + 104);
        v12 = enum case for Color.RGBColorSpace.sRGB(_:);
        do
        {
          v14 = [v8 colorAtIndex:0 forLayer:v10];
          if (v14)
          {
            v13 = v14;
            [v14 red];
            [v13 green];
            [v13 blue];
            [v13 alpha];
            (*v11)(v3, v12, v19);
            sub_10004191C();
            sub_100041FAC();
            if (v20[2] >= v20[3] >> 1)
            {
              sub_100041FDC();
            }

            sub_100041FFC();
          }

          else
          {
            sub_1000418DC();
            sub_100041FAC();
            if (v20[2] >= v20[3] >> 1)
            {
              v15 = v20[2];
              sub_100041FDC();
            }

            sub_100041FFC();
          }

          ++v10;
        }

        while (v9 != v10);
        v16 = v20;
      }

      else
      {

        return &_swiftEmptyArrayStorage;
      }

      return v16;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C420()
{
  v1 = sub_10004189C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004119C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  sub_10002BC8C(&v18 - v12);
  (*(v7 + 104))(v11, enum case for ColorScheme.dark(_:), v6);
  v14 = sub_10004118C();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v15(v13, v6);
  if (v14)
  {
    v16 = *(v0 + *(type metadata accessor for SingleContactQuickActionWidgetView(0) + 40));
  }

  (*(v2 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v1);
  return sub_10004191C();
}

uint64_t sub_10002C670@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_1000415CC();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000415AC();
  v45 = *(v46 - 8);
  v6 = *(v45 + 64);
  __chkstk_darwin(v46);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100003DC0(&qword_1000557C8, &qword_100044058);
  v9 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v11 = &v40 - v10;
  v44 = sub_100003DC0(&qword_1000557D0, &qword_100044060);
  v43 = *(v44 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v44);
  v42 = &v40 - v13;
  v47 = sub_100003DC0(&qword_1000557D8, &qword_100044068);
  v14 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v16 = &v40 - v15;
  v17 = sub_10004116C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v40 - v24;
  v26 = *(type metadata accessor for SingleContactQuickActionWidgetView(0) + 24);
  v48 = v2;
  sub_100011258(v2 + v26, v25, &qword_1000546B8, &unk_100042AD0);
  v27 = sub_100041BAC();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v25, 1, v27) == 1)
  {
    sub_1000049F8(v25, &qword_1000546B8, &unk_100042AD0);
LABEL_4:
    sub_100041F4C();

    goto LABEL_5;
  }

  sub_100041B8C();
  (*(v28 + 8))(v25, v27);
  sub_1000410FC();
  v30 = v29;
  (*(v18 + 8))(v21, v17);
  if (!v30)
  {
    goto LABEL_4;
  }

LABEL_5:

  *v11 = sub_1000414FC();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v31 = sub_100003DC0(&qword_1000557E0, &qword_100044070);
  sub_10002CD18(v48, &v11[*(v31 + 44)]);
  sub_10004159C();
  sub_100004D80(&qword_1000557E8, &qword_1000557C8, &qword_100044058);
  v32 = v42;
  sub_10004186C();
  (*(v45 + 8))(v8, v46);
  sub_1000049F8(v11, &qword_1000557C8, &qword_100044058);
  sub_100041A9C();
  sub_10004125C();
  (*(v43 + 32))(v16, v32, v44);
  v33 = &v16[*(v47 + 36)];
  v34 = v58;
  *(v33 + 4) = v57;
  *(v33 + 5) = v34;
  *(v33 + 6) = v59;
  v35 = v54;
  *v33 = v53;
  *(v33 + 1) = v35;
  v36 = v56;
  *(v33 + 2) = v55;
  *(v33 + 3) = v36;
  v37 = v49;
  v38 = sub_1000415BC();
  __chkstk_darwin(v38);
  sub_100041A9C();
  sub_100003DC0(&qword_1000557F0, &qword_100044078);
  sub_10002FFA8();
  sub_1000300A4();
  sub_10004185C();
  (*(v51 + 8))(v37, v52);
  return sub_100030238(v16);
}

uint64_t sub_10002CD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_100003DC0(&qword_100055848, &qword_1000440C8);
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = *(v85 + 64);
  __chkstk_darwin(v3);
  v78 = (&v77 - v5);
  v6 = sub_100003DC0(&qword_100055850, &qword_1000440D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v88 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v87 = &v77 - v10;
  v11 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v81 = &v77 - v13;
  v14 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v77 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v83 = &v77 - v19;
  __chkstk_darwin(v18);
  v21 = &v77 - v20;
  v80 = sub_1000415AC();
  v22 = *(v80 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v80);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100003DC0(&qword_100055858, &qword_1000440D8);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v77 - v28;
  v91 = sub_100003DC0(&qword_100055860, &unk_1000440E0);
  v30 = *(v91 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v91);
  v33 = &v77 - v32;
  v82 = sub_100003DC0(&qword_100054698, &qword_100042AB8);
  v34 = *(*(v82 - 8) + 64);
  v35 = __chkstk_darwin(v82);
  v84 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v79 = &v77 - v38;
  __chkstk_darwin(v37);
  v90 = &v77 - v39;
  *v29 = sub_1000414FC();
  *(v29 + 1) = 0;
  v29[16] = 0;
  v40 = sub_100003DC0(&qword_100055868, &qword_1000440F0);
  sub_10002D64C(a1, &v29[*(v40 + 44)]);
  sub_10004159C();
  sub_100004D80(&qword_100055870, &qword_100055858, &qword_1000440D8);
  sub_10004186C();
  (*(v22 + 8))(v25, v80);
  sub_1000049F8(v29, &qword_100055858, &qword_1000440D8);
  v80 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  v41 = *(v80 + 24);
  sub_100041B4C();
  v42 = sub_10004083C();
  v43 = *(v42 - 8);
  (*(v43 + 56))(v21, 0, 1, v42);
  v44 = sub_10003BAEC(v21);
  sub_1000049F8(v21, &qword_1000546B0, &qword_100043630);
  v45 = a1;
  v46 = v81;
  (*(v30 + 8))(v33, v91);
  v94 = v44;
  v91 = v45;
  sub_100011258(v45 + v41, v46, &qword_1000546B8, &unk_100042AD0);
  v47 = sub_100041BAC();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    sub_1000049F8(v46, &qword_1000546B8, &unk_100042AD0);
    v49 = sub_100041F4C();
    v51 = v50;
  }

  else
  {
    v49 = sub_100041B6C();
    v51 = v52;
    (*(v48 + 8))(v46, v47);
  }

  v92 = v49;
  v93 = v51;
  sub_100004924();
  v53 = v79;
  sub_10004183C();

  sub_100040B7C();
  sub_10004124C();

  sub_1000049F8(v53, &qword_100054698, &qword_100042AB8);
  v54 = v80;
  v55 = v83;
  sub_100011258(v91 + *(v80 + 36), v83, &qword_1000546B0, &qword_100043630);
  v56 = *(v43 + 48);
  LODWORD(v53) = v56(v55, 1, v42);
  sub_1000049F8(v55, &qword_1000546B0, &qword_100043630);
  v58 = v86;
  v57 = v87;
  if (v53 != 1 || (v59 = v77, sub_100011258(v91 + *(v54 + 32), v77, &qword_1000546B0, &qword_100043630), v60 = 1, v61 = v56(v59, 1, v42), sub_1000049F8(v59, &qword_1000546B0, &qword_100043630), v61 != 1))
  {
    v62 = sub_1000414BC();
    v63 = v78;
    *v78 = v62;
    *(v63 + 8) = 0;
    *(v63 + 16) = 1;
    v64 = sub_100003DC0(&qword_100055880, &qword_100044100);
    sub_10002E810(v91, v63 + *(v64 + 44));
    v65 = sub_1000415FC();
    sub_10004117C();
    v66 = v63 + *(v58 + 36);
    *v66 = v65;
    *(v66 + 8) = v67;
    *(v66 + 16) = v68;
    *(v66 + 24) = v69;
    *(v66 + 32) = v70;
    *(v66 + 40) = 0;
    sub_100004C8C(v63, v57, &qword_100055848, &qword_1000440C8);
    v60 = 0;
  }

  (*(v85 + 56))(v57, v60, 1, v58);
  v71 = v90;
  v72 = v84;
  sub_100011258(v90, v84, &qword_100054698, &qword_100042AB8);
  v73 = v88;
  sub_100011258(v57, v88, &qword_100055850, &qword_1000440D0);
  v74 = v89;
  sub_100011258(v72, v89, &qword_100054698, &qword_100042AB8);
  v75 = sub_100003DC0(&qword_100055878, &qword_1000440F8);
  sub_100011258(v73, v74 + *(v75 + 48), &qword_100055850, &qword_1000440D0);
  sub_1000049F8(v57, &qword_100055850, &qword_1000440D0);
  sub_1000049F8(v71, &qword_100054698, &qword_100042AB8);
  sub_1000049F8(v73, &qword_100055850, &qword_1000440D0);
  return sub_1000049F8(v72, &qword_100054698, &qword_100042AB8);
}

uint64_t sub_10002D64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v168 = a2;
  v158 = sub_100040E0C();
  v157 = *(v158 - 8);
  v3 = *(v157 + 64);
  __chkstk_darwin(v158);
  v160 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for StatusAndNameView();
  v5 = *(*(v163 - 8) + 64);
  v6 = __chkstk_darwin(v163);
  v8 = (&v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v165 = &v137 - v9;
  v164 = sub_100003DC0(&qword_1000558C8, &qword_100044168);
  v10 = *(*(v164 - 8) + 64);
  v11 = __chkstk_darwin(v164);
  v167 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v162 = &v137 - v14;
  __chkstk_darwin(v13);
  v166 = &v137 - v15;
  v16 = sub_100041CAC();
  v174 = *(v16 - 8);
  v175 = v16;
  v17 = *(v174 + 64);
  v18 = __chkstk_darwin(v16);
  v161 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v149 = &v137 - v20;
  v21 = sub_1000408CC();
  v172 = *(v21 - 8);
  v173 = v21;
  v22 = *(v172 + 64);
  __chkstk_darwin(v21);
  v171 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v170 = &v137 - v26;
  v152 = sub_10004116C();
  v151 = *(v152 - 8);
  v27 = *(v151 + 64);
  __chkstk_darwin(v152);
  v150 = &v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v153 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v148 = &v137 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v137 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v137 - v39;
  __chkstk_darwin(v38);
  v42 = &v137 - v41;
  v43 = sub_100003DC0(&qword_1000546F8, &qword_100042B00);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43 - 8);
  v155 = &v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v154 = &v137 - v48;
  v49 = __chkstk_darwin(v47);
  v145 = &v137 - v50;
  __chkstk_darwin(v49);
  v52 = &v137 - v51;
  v53 = type metadata accessor for AvatarView();
  v54 = *(*(v53 - 1) + 64);
  v55 = __chkstk_darwin(v53);
  v159 = &v137 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v59 = &v137 - v58;
  __chkstk_darwin(v57);
  v156 = &v137 - v60;
  v144 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  v61 = *(v144 + 24);
  v178 = a1;
  v62 = v61;
  sub_100011258(a1 + v61, v42, &qword_1000546B8, &unk_100042AD0);
  v63 = sub_100041BAC();
  v64 = *(v63 - 8);
  v176 = *(v64 + 48);
  v177 = v64 + 48;
  v65 = v176(v42, 1, v63);
  v169 = v64;
  if (v65 == 1)
  {
    sub_1000049F8(v42, &qword_1000546B8, &unk_100042AD0);
    v66 = 1;
  }

  else
  {
    sub_100041B7C();
    (*(v64 + 8))(v42, v63);
    v66 = 0;
  }

  v67 = *(v174 + 56);
  v147 = v174 + 56;
  v146 = v67;
  v67(v52, v66, 1, v175);
  v68 = v62;
  sub_100011258(v178 + v62, v40, &qword_1000546B8, &unk_100042AD0);
  if (v176(v40, 1, v63) == 1)
  {
    sub_1000049F8(v40, &qword_1000546B8, &unk_100042AD0);
    v140 = 0;
  }

  else
  {
    v69 = v150;
    sub_100041B8C();
    (*(v169 + 8))(v40, v63);
    v140 = sub_10004114C();
    (*(v151 + 8))(v69, v152);
  }

  sub_100011258(v178 + v68, v37, &qword_1000546B8, &unk_100042AD0);
  v70 = v176(v37, 1, v63);
  v142 = v68;
  if (v70 == 1)
  {
    sub_1000049F8(v37, &qword_1000546B8, &unk_100042AD0);
    v71 = sub_100041C6C();
    (*(*(v71 - 8) + 56))(v170, 1, 1, v71);
  }

  else
  {
    sub_100041B5C();
    (*(v169 + 8))(v37, v63);
  }

  (*(v172 + 16))(v171, v178 + *(v144 + 28), v173);
  sub_100040D9C();
  v139 = sub_100040D8C();
  v72 = v53[7];
  v73 = sub_100041C6C();
  v74 = *(*(v73 - 8) + 56);
  v138 = v72;
  v74(&v59[v72], 1, 1, v73);
  v137 = sub_100040D8C();
  v75 = &v59[v53[12]];
  KeyPath = swift_getKeyPath();
  *(v75 + 1) = 0;
  *(v75 + 2) = 0;
  *v75 = KeyPath;
  *(v75 + 12) = 0;
  v77 = v53[13];
  sub_100041B0C();
  *&v59[v77] = v78;
  v79 = &v59[v53[14]];
  *v79 = xmmword_100042940;
  *(v79 + 1) = xmmword_100042950;
  v80 = v53[15];
  *&v59[v80] = swift_getKeyPath();
  v141 = sub_100003DC0(&qword_100054700, &qword_100042B60);
  swift_storeEnumTagMultiPayload();
  v81 = v145;
  sub_100011258(v52, v145, &qword_1000546F8, &qword_100042B00);
  v83 = v174;
  v82 = v175;
  v84 = v174 + 48;
  v85 = *(v174 + 48);
  v86 = v85(v81, 1, v175);
  v144 = v84;
  v143 = v85;
  if (v86 == 1)
  {
    v87 = v149;
    sub_100041B1C();
    sub_1000049F8(v52, &qword_1000546F8, &qword_100042B00);
    v88 = v85(v81, 1, v82) == 1;
    v89 = v81;
    v90 = v82;
    if (!v88)
    {
      sub_1000049F8(v89, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v52, &qword_1000546F8, &qword_100042B00);
    v91 = *(v83 + 32);
    v87 = v149;
    v91(v149, v81, v82);
    v90 = v82;
  }

  v92 = v53[5];
  v93 = &v59[v53[6]];
  v94 = v53[8];
  v174 = *(v174 + 32);
  (v174)(v59, v87, v90);
  *&v59[v92] = v140;
  *v93 = 0;
  v93[8] = 1;
  sub_100004A58(v170, &v59[v138]);

  *&v59[v94] = v139;
  v59[v53[9]] = 0;
  v59[v53[10]] = 1;
  (*(v172 + 32))(&v59[v53[11]], v171, v173);
  v95 = v156;
  sub_10003079C(v59, v156, type metadata accessor for AvatarView);
  v96 = v142;
  v97 = v148;
  sub_100011258(v178 + v142, v148, &qword_1000546B8, &unk_100042AD0);
  if (v176(v97, 1, v63) == 1)
  {
    sub_1000049F8(v97, &qword_1000546B8, &unk_100042AD0);
    v98 = 0;
    v99 = v153;
    v100 = v169;
  }

  else
  {
    v101 = v150;
    sub_100041B8C();
    v100 = v169;
    (*(v169 + 8))(v97, v63);
    v98 = sub_10004114C();
    (*(v151 + 8))(v101, v152);
    v99 = v153;
  }

  sub_100011258(v178 + v96, v99, &qword_1000546B8, &unk_100042AD0);
  v102 = v176(v99, 1, v63);
  v103 = v175;
  if (v102 == 1)
  {
    sub_1000049F8(v99, &qword_1000546B8, &unk_100042AD0);
    v104 = 1;
    v105 = v154;
  }

  else
  {
    v105 = v154;
    sub_100041B7C();
    (*(v100 + 8))(v99, v63);
    v104 = 0;
  }

  v146(v105, v104, 1, v103);
  v178 = sub_1000416CC();
  (*(v157 + 104))(v160, enum case for ContactFormatter.Style.shortName(_:), v158);
  sub_100041F4C();
  v180 = sub_100040E2C();
  v181 = &protocol witness table for ContactFormatter;
  sub_100004AC8(&v179);
  sub_100040E1C();
  v106 = v163;
  v107 = v8 + *(v163 + 48);
  *v107 = swift_getKeyPath();
  *(v107 + 1) = 0;
  v107[16] = 0;
  v108 = v106[13];
  *(v8 + v108) = swift_getKeyPath();
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  swift_storeEnumTagMultiPayload();
  v109 = v106[14];
  *(v8 + v109) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v110 = v106[15];
  *(v8 + v110) = swift_getKeyPath();
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  *v8 = v98;
  v111 = v155;
  sub_100011258(v105, v155, &qword_1000546F8, &qword_100042B00);
  v112 = v143;
  if (v143(v111, 1, v103) == 1)
  {
    v113 = v95;
    v114 = v112;
    v115 = v161;
    sub_100041B1C();
    sub_1000049F8(v105, &qword_1000546F8, &qword_100042B00);
    v116 = v114(v111, 1, v103);
    v95 = v113;
    v117 = v174;
    if (v116 != 1)
    {
      sub_1000049F8(v111, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v105, &qword_1000546F8, &qword_100042B00);
    v115 = v161;
    v117 = v174;
    (v174)(v161, v111, v103);
  }

  v117(v8 + v106[5], v115, v103);
  *(v8 + v106[6]) = v178;
  *(v8 + v106[7]) = 0x4008000000000000;
  sub_100004B44(&v179, v8 + v106[8]);
  *(v8 + v106[9]) = 1;
  *(v8 + v106[10]) = 1;
  *(v8 + v106[11]) = 0x4060C00000000000;
  v118 = v165;
  sub_10003079C(v8, v165, type metadata accessor for StatusAndNameView);
  v119 = sub_1000415FC();
  sub_10004117C();
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v128 = v118;
  v129 = v162;
  sub_10003079C(v128, v162, type metadata accessor for StatusAndNameView);
  v130 = v129 + *(v164 + 36);
  *v130 = v119;
  *(v130 + 8) = v121;
  *(v130 + 16) = v123;
  *(v130 + 24) = v125;
  *(v130 + 32) = v127;
  *(v130 + 40) = 0;
  v131 = v166;
  sub_100004C8C(v129, v166, &qword_1000558C8, &qword_100044168);
  v132 = v159;
  sub_100030814(v95, v159, type metadata accessor for AvatarView);
  v133 = v167;
  sub_100011258(v131, v167, &qword_1000558C8, &qword_100044168);
  v134 = v168;
  sub_100030814(v132, v168, type metadata accessor for AvatarView);
  v135 = sub_100003DC0(&qword_1000558D0, &qword_100044240);
  sub_100011258(v133, v134 + *(v135 + 48), &qword_1000558C8, &qword_100044168);
  sub_1000049F8(v131, &qword_1000558C8, &qword_100044168);
  sub_10003087C(v95);
  sub_1000049F8(v133, &qword_1000558C8, &qword_100044168);
  return sub_10003087C(v132);
}

uint64_t sub_10002E810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v85 = a1;
  v77 = sub_100003DC0(&qword_100055888, &qword_100044108);
  v2 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v78 = &v72 - v3;
  v81 = sub_100003DC0(&qword_100055890, &qword_100044110);
  v4 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v6 = &v72 - v5;
  v76 = sub_100003DC0(&qword_100055898, &qword_100044118);
  v7 = *(*(v76 - 8) + 64);
  v8 = __chkstk_darwin(v76);
  v83 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = &v72 - v10;
  v11 = sub_100003DC0(&qword_100055708, &qword_100043FC8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v72 - v13;
  v15 = sub_100040CEC();
  v73 = *(v15 - 8);
  v74 = v15;
  v16 = *(v73 + 64);
  __chkstk_darwin(v15);
  v72 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v72 - v20;
  v22 = sub_10004083C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v72 - v28;
  v30 = sub_100003DC0(&qword_1000558A0, &qword_100044120);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v80 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v79 = &v72 - v34;
  v75 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  v35 = *(v75 + 36);
  sub_100011258(v85 + v35, v21, &qword_1000546B0, &qword_100043630);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v36 = &qword_1000546B0;
    v37 = &qword_100043630;
    v38 = v21;
  }

  else
  {
    (*(v23 + 32))(v29, v21, v22);
    v39 = *(v23 + 16);
    v39(v27, v29, v22);
    sub_100040CAC();
    if ((*(v73 + 48))(v14, 1, v74) != 1)
    {
      (*(v73 + 32))();
      v39(v6, v29, v22);
      (*(v23 + 56))(v6, 0, 1, v22);
      v51 = sub_100040C5C();
      v53 = v52;
      v54 = sub_100041F4C();
      v56 = v55;
      v44 = type metadata accessor for WidgetButton(0);
      v57 = &v6[*(v44 + 20)];
      *v57 = v51;
      v57[1] = v53;
      v58 = &v6[*(v44 + 24)];
      *v58 = v54;
      v58[1] = v56;
      v47 = v81;
      v59 = *(v81 + 36);
      *&v6[v59] = swift_getKeyPath();
      sub_100003DC0(&qword_100054710, &unk_100042C00);
      swift_storeEnumTagMultiPayload();
      sub_100040B8C();
      sub_100030658();
      v49 = v82;
      sub_10004187C();

      sub_1000049F8(v6, &qword_100055890, &qword_100044110);
      sub_100011258(v49, v78, &qword_100055898, &qword_100044118);
      swift_storeEnumTagMultiPayload();
      sub_100031510(&qword_1000558B8, &qword_100055898, &qword_100044118, sub_100030658);
      v50 = v79;
      sub_10004158C();
      sub_1000049F8(v49, &qword_100055898, &qword_100044118);
      (*(v73 + 8))(v72, v74);
      (*(v23 + 8))(v29, v22);
      v40 = v85;
      goto LABEL_7;
    }

    (*(v23 + 8))(v29, v22);
    v36 = &qword_100055708;
    v37 = &qword_100043FC8;
    v38 = v14;
  }

  sub_1000049F8(v38, v36, v37);
  v40 = v85;
  sub_100011258(v85 + v35, v6, &qword_1000546B0, &qword_100043630);
  v41 = sub_100041F4C();
  v43 = v42;
  v44 = type metadata accessor for WidgetButton(0);
  v45 = &v6[*(v44 + 20)];
  *v45 = 0x69662E656E6F6870;
  *(v45 + 1) = 0xEA00000000006C6CLL;
  v46 = &v6[*(v44 + 24)];
  *v46 = v41;
  v46[1] = v43;
  v47 = v81;
  v48 = *(v81 + 36);
  *&v6[v48] = swift_getKeyPath();
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  sub_100040B8C();
  sub_100030658();
  v49 = v82;
  sub_10004187C();

  sub_1000049F8(v6, &qword_100055890, &qword_100044110);
  sub_100011258(v49, v78, &qword_100055898, &qword_100044118);
  swift_storeEnumTagMultiPayload();
  sub_100031510(&qword_1000558B8, &qword_100055898, &qword_100044118, sub_100030658);
  v50 = v79;
  sub_10004158C();
  sub_1000049F8(v49, &qword_100055898, &qword_100044118);
LABEL_7:
  sub_100011258(v40 + *(v75 + 32), v6, &qword_1000546B0, &qword_100043630);
  v60 = sub_100041F4C();
  v62 = v61;
  type metadata accessor for WidgetButton(0);
  v63 = &v6[*(v44 + 20)];
  strcpy(v63, "message.fill");
  v63[13] = 0;
  *(v63 + 7) = -5120;
  v64 = &v6[*(v44 + 24)];
  *v64 = v60;
  v64[1] = v62;
  v65 = *(v47 + 36);
  *&v6[v65] = swift_getKeyPath();
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  sub_100040B9C();
  sub_100030658();
  sub_10004187C();

  sub_1000049F8(v6, &qword_100055890, &qword_100044110);
  v66 = v80;
  sub_100011258(v50, v80, &qword_1000558A0, &qword_100044120);
  v67 = v83;
  sub_100011258(v49, v83, &qword_100055898, &qword_100044118);
  v68 = v84;
  sub_100011258(v66, v84, &qword_1000558A0, &qword_100044120);
  v69 = sub_100003DC0(&qword_1000558C0, &qword_100044160);
  v70 = v68 + *(v69 + 48);
  *v70 = 0;
  *(v70 + 8) = 1;
  sub_100011258(v67, v68 + *(v69 + 64), &qword_100055898, &qword_100044118);
  sub_1000049F8(v49, &qword_100055898, &qword_100044118);
  sub_1000049F8(v50, &qword_1000558A0, &qword_100044120);
  sub_1000049F8(v67, &qword_100055898, &qword_100044118);
  return sub_1000049F8(v66, &qword_1000558A0, &qword_100044120);
}

uint64_t sub_10002F22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v14[1] = sub_10002C104();
  swift_getKeyPath();
  sub_100030814(a1, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleContactQuickActionWidgetView);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_10003079C(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for SingleContactQuickActionWidgetView);
  sub_100003DC0(&qword_100055828, &qword_1000440B8);
  sub_100004D80(&qword_100055830, &qword_100055828, &qword_1000440B8);
  sub_1000305DC();
  sub_100041A2C();
  v10 = *(a1 + *(v5 + 56));
  *(a2 + *(sub_100003DC0(&qword_100055810, &qword_100044080) + 36)) = v10;
  sub_10002C420();
  v11 = *(a1 + *(v5 + 52));
  v12 = sub_1000418EC();

  result = sub_100003DC0(&qword_1000557F0, &qword_100044078);
  *(a2 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_10002F464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10004146C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  v12 = *a2;
  if (*(a2 + 8) != 1)
  {
    v14 = *a2;

    sub_1000420BC();
    v15 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();
    sub_10000FEBC(v12, 0);
    (*(v7 + 8))(v10, v6);
    if (v16[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:

    goto LABEL_6;
  }

  if (v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = sub_1000418CC();
  v11 = result;
LABEL_6:
  *a3 = v11;
  return result;
}

uint64_t sub_10002F638@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_10004146C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(*(sub_100003DC0(a1, a2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v17 = (&v22 - v16);
  sub_100011258(v8, &v22 - v16, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = a3(0);
    return (*(*(v18 - 8) + 32))(a4, v17, v18);
  }

  else
  {
    v20 = *v17;
    sub_1000420BC();
    v21 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_10002F860(uint64_t a1)
{
  v2 = sub_10004127C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10004134C();
}

uint64_t sub_10002F928(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10002F960(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10002F9D8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = sub_1000408CC();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_10002FBBC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_1000408CC();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_10002FDB0()
{
  sub_10000E1FC();
  if (v0 <= 0x3F)
  {
    sub_10002FF20(319, &unk_100055118, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10002FF20(319, &qword_100054C48, &type metadata accessor for PersonInfo, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000408CC();
        if (v3 <= 0x3F)
        {
          sub_10002FF20(319, &unk_100055778, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10002FF20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10002FFA8()
{
  result = qword_1000557F8;
  if (!qword_1000557F8)
  {
    sub_100003E08(&qword_1000557D8, &qword_100044068);
    sub_100003E08(&qword_1000557C8, &qword_100044058);
    sub_100004D80(&qword_1000557E8, &qword_1000557C8, &qword_100044058);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000557F8);
  }

  return result;
}

unint64_t sub_1000300A4()
{
  result = qword_100055800;
  if (!qword_100055800)
  {
    sub_100003E08(&qword_1000557F0, &qword_100044078);
    sub_100030130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055800);
  }

  return result;
}

unint64_t sub_100030130()
{
  result = qword_100055808;
  if (!qword_100055808)
  {
    sub_100003E08(&qword_100055810, &qword_100044080);
    sub_1000301BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055808);
  }

  return result;
}

unint64_t sub_1000301BC()
{
  result = qword_100055818;
  if (!qword_100055818)
  {
    sub_100003E08(&qword_100055820, &unk_100044088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055818);
  }

  return result;
}

uint64_t sub_100030238(uint64_t a1)
{
  v2 = sub_100003DC0(&qword_1000557D8, &qword_100044068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000302A0()
{
  v1 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  v2 = *(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_10000FEBC(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_100003DC0(&qword_100054700, &qword_100042B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10004119C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
    v7 = *(v4 + v5);
  }

  v8 = v1[6];
  v9 = sub_100041BAC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v11 = v1[7];
  v12 = sub_1000408CC();
  (*(*(v12 - 8) + 8))(v4 + v11, v12);
  v13 = v1[8];
  v14 = sub_10004083C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (!v16(v4 + v13, 1, v14))
  {
    (*(v15 + 8))(v4 + v13, v14);
  }

  v17 = v1[9];
  if (!v16(v4 + v17, 1, v14))
  {
    (*(v15 + 8))(v4 + v17, v14);
  }

  return _swift_deallocObject(v0, v3 + v19, v2 | 7);
}

uint64_t sub_10003055C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for SingleContactQuickActionWidgetView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10002F464(a1, v6, a2);
}

unint64_t sub_1000305DC()
{
  result = qword_100055838;
  if (!qword_100055838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055838);
  }

  return result;
}

unint64_t sub_100030658()
{
  result = qword_1000558A8;
  if (!qword_1000558A8)
  {
    sub_100003E08(&qword_100055890, &qword_100044110);
    sub_100030744(&qword_1000558B0, type metadata accessor for WidgetButton);
    sub_100030744(&qword_100055258, type metadata accessor for WidgetAccentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000558A8);
  }

  return result;
}

uint64_t sub_100030744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003079C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100030814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003087C(uint64_t a1)
{
  v2 = type metadata accessor for AvatarView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000308EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000309CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100030A94()
{
  sub_10002FF20(319, &unk_100055778, &type metadata accessor for URL, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100030B40()
{
  sub_100003E08(&qword_1000557D8, &qword_100044068);
  sub_100003E08(&qword_1000557F0, &qword_100044078);
  sub_10002FFA8();
  sub_1000300A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100030BEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004143C();
  *a1 = result;
  return result;
}

uint64_t sub_100030C18(uint64_t *a1)
{
  v1 = *a1;

  return sub_10004144C();
}

unint64_t sub_100030C6C()
{
  result = qword_100055988;
  if (!qword_100055988)
  {
    sub_100003E08(&qword_100055970, &qword_1000442A8);
    sub_100030D24();
    sub_100004D80(&qword_1000559E8, &qword_100055980, &qword_1000442E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055988);
  }

  return result;
}

unint64_t sub_100030D24()
{
  result = qword_100055990;
  if (!qword_100055990)
  {
    sub_100003E08(&qword_100055978, &qword_1000442E0);
    sub_100030DDC();
    sub_100004D80(&qword_1000552B0, &qword_1000552B8, &unk_1000444D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055990);
  }

  return result;
}

unint64_t sub_100030DDC()
{
  result = qword_100055998;
  if (!qword_100055998)
  {
    sub_100003E08(&qword_1000559A0, &qword_100044320);
    sub_100030E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055998);
  }

  return result;
}

unint64_t sub_100030E60()
{
  result = qword_1000559A8;
  if (!qword_1000559A8)
  {
    sub_100003E08(&qword_1000559B0, &qword_100044328);
    sub_100004D80(&qword_1000559B8, &qword_1000559C0, &qword_100044330);
    sub_100030F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000559A8);
  }

  return result;
}

unint64_t sub_100030F18()
{
  result = qword_1000559C8;
  if (!qword_1000559C8)
  {
    sub_100003E08(&qword_1000559D0, &qword_100044338);
    sub_100004D80(&qword_1000559B8, &qword_1000559C0, &qword_100044330);
    sub_100004D80(&qword_1000559D8, &qword_1000559E0, &unk_100044340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000559C8);
  }

  return result;
}

uint64_t sub_100031018@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000413FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031098(uint64_t a1)
{
  v38 = a1;
  v1 = sub_10004083C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v33 - v6;
  v7 = sub_10004077C();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003DC0(&qword_1000556F0, &unk_100043FA0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - v13;
  v15 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v33 - v17;
  v19 = sub_100003DC0(&qword_1000556F8, &qword_100043FB0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v33 - v21;
  v23 = sub_10004080C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_100003DC0(&qword_100055700, &qword_100043FB8);
  sub_1000407FC();
  (*(v24 + 56))(v22, 1, 1, v23);
  (*(v2 + 56))(v18, 1, 1, v1);
  v26 = sub_10004072C();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  (*(v34 + 104))(v10, enum case for InputConnectionBehavior.default(_:), v35);
  v27 = sub_10004076C();
  v28 = *(v2 + 16);
  v29 = v36;
  v30 = v38;
  v28(v36, v38, v1);
  v28(v37, v29, v1);

  sub_10004075C();

  v31 = *(v2 + 8);
  v31(v30, v1);
  v31(v29, v1);
  return v27;
}

uint64_t sub_100031510(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E08(a2, a3);
    a4();
    sub_100030744(&qword_1000546A0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000315E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100041CAC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[7];
      goto LABEL_3;
    }

    v14 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_100031788(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100041CAC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
    return result;
  }

  v13 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_3;
  }

  v14 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for StatusAndNameViewVertical()
{
  result = qword_100055A60;
  if (!qword_100055A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031960()
{
  sub_100031ABC(319, &qword_1000550F8, sub_100010EE4, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100041CAC();
    if (v1 <= 0x3F)
    {
      sub_100020558();
      if (v2 <= 0x3F)
      {
        sub_100031ABC(319, &qword_1000548B8, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100031ABC(319, &unk_100055118, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100031ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100031B3C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v3 = sub_100003DC0(&qword_100055AB0, &qword_100044418);
  v142 = *(v3 - 8);
  v143 = v3;
  v4 = *(v142 + 64);
  __chkstk_darwin(v3);
  v115 = (&v115 - v5);
  v118 = sub_1000414EC();
  v117 = *(v118 - 8);
  v6 = *(v117 + 64);
  __chkstk_darwin(v118);
  v116 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003DC0(&qword_100055AB8, &qword_100044420);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v144 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v141 = &v115 - v12;
  v132 = sub_10004172C();
  v130 = *(v132 - 8);
  v13 = *(v130 + 64);
  __chkstk_darwin(v132);
  v15 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_100003DC0(&qword_100055AC0, &qword_100044428);
  v129 = *(v131 - 8);
  v16 = *(v129 + 64);
  __chkstk_darwin(v131);
  v18 = &v115 - v17;
  v120 = sub_100003DC0(&qword_100055AC8, &qword_100044430);
  v19 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v21 = &v115 - v20;
  v121 = sub_100003DC0(&qword_100055AD0, &qword_100044438);
  v22 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v126 = &v115 - v23;
  v125 = sub_100003DC0(&qword_100055AD8, &qword_100044440);
  v24 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v128 = &v115 - v25;
  v137 = sub_100003DC0(&qword_100055AE0, &qword_100044448);
  v26 = *(*(v137 - 8) + 64);
  __chkstk_darwin(v137);
  v28 = &v115 - v27;
  v138 = sub_100003DC0(&qword_100055AE8, &qword_100044450);
  v136 = *(v138 - 8);
  v29 = *(v136 + 64);
  __chkstk_darwin(v138);
  v134 = &v115 - v30;
  v135 = sub_100003DC0(&qword_100055AF0, &qword_100044458);
  v133 = *(v135 - 8);
  v31 = *(v133 + 64);
  __chkstk_darwin(v135);
  v127 = &v115 - v32;
  v124 = sub_100003DC0(&qword_100055AF8, &qword_100044460);
  v33 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v123 = &v115 - v34;
  v122 = sub_100003DC0(&qword_100055B00, &qword_100044468);
  v35 = *(*(v122 - 8) + 64);
  v36 = __chkstk_darwin(v122);
  v140 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v40 = &v115 - v39;
  __chkstk_darwin(v38);
  v139 = &v115 - v41;
  v42 = *a1;
  v119 = a1;
  if (v42)
  {
    v43 = (a1 + *(type metadata accessor for StatusAndNameViewVertical() + 24));
    v44 = v43[4];
    sub_100010A94(v43, v43[3]);
    v45 = v42;
    v46 = sub_1000410CC();
    v48 = v47;
  }

  else
  {
    v46 = sub_100041F4C();
    v48 = v49;
  }

  v148 = v46;
  v149 = v48;
  sub_100004924();
  v50 = sub_10004178C();
  v52 = v51;
  v148 = v50;
  v149 = v51;
  v54 = v53 & 1;
  v150 = v53 & 1;
  v151 = v55;
  sub_10004171C();
  sub_1000417FC();
  (*(v130 + 8))(v15, v132);
  sub_10001FD78(v50, v52, v54);

  v56 = sub_1000418FC();
  KeyPath = swift_getKeyPath();
  (*(v129 + 32))(v21, v18, v131);
  v58 = &v21[*(v120 + 36)];
  *v58 = KeyPath;
  v58[1] = v56;
  LOBYTE(v56) = sub_10004161C();
  sub_10004117C();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v126;
  sub_100004C8C(v21, v126, &qword_100055AC8, &qword_100044430);
  v68 = v67 + *(v121 + 36);
  *v68 = v56;
  *(v68 + 8) = v60;
  *(v68 + 16) = v62;
  *(v68 + 24) = v64;
  *(v68 + 32) = v66;
  *(v68 + 40) = 0;
  LOBYTE(v56) = sub_10004160C();
  sub_10004117C();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = v128;
  sub_100004C8C(v67, v128, &qword_100055AD0, &qword_100044438);
  v78 = v77 + *(v125 + 36);
  *v78 = v56;
  *(v78 + 8) = v70;
  *(v78 + 16) = v72;
  *(v78 + 24) = v74;
  *(v78 + 32) = v76;
  *(v78 + 40) = 0;
  v79 = sub_1000416CC();
  v80 = swift_getKeyPath();
  sub_100004C8C(v77, v28, &qword_100055AD8, &qword_100044440);
  v81 = v137;
  v82 = &v28[*(v137 + 36)];
  *v82 = v80;
  v82[1] = v79;
  v83 = sub_100033474();
  v84 = v134;
  sub_10004188C();
  sub_1000049F8(v28, &qword_100055AE0, &qword_100044448);
  sub_10004167C();
  v148 = v81;
  v149 = v83;
  swift_getOpaqueTypeConformance2();
  v85 = v127;
  v86 = v138;
  sub_1000417EC();
  (*(v136 + 8))(v84, v86);
  v87 = swift_getKeyPath();
  v88 = v123;
  (*(v133 + 32))(v123, v85, v135);
  v89 = v88 + *(v124 + 36);
  *v89 = v87;
  *(v89 + 8) = 1;
  v90 = swift_getKeyPath();
  sub_100004C8C(v88, v40, &qword_100055AF8, &qword_100044460);
  v91 = &v40[*(v122 + 36)];
  *v91 = v90;
  *(v91 + 1) = 1;
  v91[16] = 0;
  v92 = v139;
  sub_100004C8C(v40, v139, &qword_100055B00, &qword_100044468);
  v93 = type metadata accessor for StatusAndNameViewVertical();
  v94 = v119;
  v95 = v119 + *(v93 + 20);
  sub_100041C8C();
  if (v147)
  {
    sub_100004B44(&v146, &v148);
    v96 = v94 + *(v93 + 28);
    v97 = v116;
    sub_10002F610(v116);
    v98 = sub_1000414DC();
    (*(v117 + 8))(v97, v118);
    v99 = v141;
    if ((v98 & 1) == 0)
    {
      v100 = sub_1000414FC();
      v101 = v115;
      *v115 = v100;
      *(v101 + 8) = 0x4004000000000000;
      *(v101 + 16) = 0;
      v102 = sub_100003DC0(&qword_100055B30, &qword_100044550);
      sub_10003280C(v94, &v148, v101 + *(v102 + 44));
      v103 = sub_10004160C();
      sub_10004117C();
      v104 = v143;
      v105 = v101 + *(v143 + 36);
      *v105 = v103;
      *(v105 + 8) = v106;
      *(v105 + 16) = v107;
      *(v105 + 24) = v108;
      *(v105 + 32) = v109;
      *(v105 + 40) = 0;
      sub_100004C8C(v101, v99, &qword_100055AB0, &qword_100044418);
      (*(v142 + 56))(v99, 0, 1, v104);
      sub_100010DCC(&v148);
      goto LABEL_10;
    }

    sub_100010DCC(&v148);
  }

  else
  {
    sub_1000049F8(&v146, &qword_1000551D8, &qword_100044540);
    v99 = v141;
  }

  (*(v142 + 56))(v99, 1, 1, v143);
LABEL_10:
  v110 = v140;
  sub_100011258(v92, v140, &qword_100055B00, &qword_100044468);
  v111 = v144;
  sub_100011258(v99, v144, &qword_100055AB8, &qword_100044420);
  v112 = v145;
  sub_100011258(v110, v145, &qword_100055B00, &qword_100044468);
  v113 = sub_100003DC0(&qword_100055B28, &qword_100044548);
  sub_100011258(v111, v112 + *(v113 + 48), &qword_100055AB8, &qword_100044420);
  sub_1000049F8(v99, &qword_100055AB8, &qword_100044420);
  sub_1000049F8(v92, &qword_100055B00, &qword_100044468);
  sub_1000049F8(v111, &qword_100055AB8, &qword_100044420);
  return sub_1000049F8(v110, &qword_100055B00, &qword_100044468);
}

uint64_t sub_10003280C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a3;
  v5 = sub_10004119C();
  v138 = *(v5 - 8);
  v139 = v5;
  v6 = *(v138 + 64);
  v7 = __chkstk_darwin(v5);
  v134 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v133 = &v106 - v9;
  v10 = sub_100041AAC();
  v136 = *(v10 - 8);
  v137 = v10;
  v11 = *(v136 + 64);
  __chkstk_darwin(v10);
  v132 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004172C();
  v115 = *(v13 - 8);
  v116 = v13;
  v14 = *(v115 + 64);
  __chkstk_darwin(v13);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_100003DC0(&qword_100055B38, &qword_100044558);
  v17 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v19 = &v106 - v18;
  v123 = sub_100003DC0(&qword_100055B40, &qword_100044560);
  v121 = *(v123 - 8);
  v20 = *(v121 + 64);
  __chkstk_darwin(v123);
  v117 = &v106 - v21;
  v22 = sub_100003DC0(&qword_100055B48, &qword_100044568);
  v128 = *(v22 - 8);
  v129 = v22;
  v23 = *(v128 + 64);
  __chkstk_darwin(v22);
  v127 = &v106 - v24;
  v119 = sub_100003DC0(&qword_100055B50, &qword_100044570);
  v25 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v126 = &v106 - v26;
  v124 = sub_100003DC0(&qword_100055B58, &qword_100044578);
  v27 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v125 = &v106 - v28;
  v122 = sub_100003DC0(&qword_100055B60, &unk_100044580);
  v29 = *(*(v122 - 8) + 64);
  v30 = __chkstk_darwin(v122);
  v131 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v118 = &v106 - v33;
  __chkstk_darwin(v32);
  v130 = &v106 - v34;
  v35 = sub_10004194C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for StatusAndNameViewVertical();
  v40 = *(v108 + 20);
  v135 = a1;
  sub_100041C9C();
  if (*(&v147 + 1))
  {
    v107 = a2;
    sub_100004B44(&v146, &v154);
    sub_100010A94(&v154, v157);
    if ((sub_100041C0C() & 1) != 0 && (sub_100010A94(&v154, v157), sub_100041C1C()))
    {
      (*(v36 + 104))(v39, enum case for Image.ResizingMode.stretch(_:), v35);
      v114 = sub_10004197C();
      (*(v36 + 8))(v39, v35);
      sub_100041A9C();
      sub_10004120C();
      v41 = v170;
      v112 = v171;
      v113 = v169;
      v42 = v172;
      v111 = v173;
      v144 = v174;
      sub_100010A94(&v154, v157);
      v109 = sub_100041BFC();
      KeyPath = swift_getKeyPath();
      LOBYTE(v146) = v41;
      v145 = v42;
      v142 = v41;
      v143 = KeyPath;
      v140 = v42;
      v44 = sub_10004161C();
      sub_10004117C();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      sub_100010DCC(&v154);
      v141 = v44;
    }

    else
    {
      sub_100010DCC(&v154);
      v113 = 0;
      v114 = 0;
      v111 = 0;
      v112 = 0;
      v143 = 0;
      v144 = 0;
      v109 = 0;
      v140 = 0;
      v141 = 0;
      v142 = 0;
      v46 = 0;
      v48 = 0;
      v50 = 0;
      v52 = 0;
    }

    a2 = v107;
  }

  else
  {
    sub_1000049F8(&v146, &qword_100055218, &unk_100044680);
    v113 = 0;
    v114 = 0;
    v111 = 0;
    v112 = 0;
    v143 = 0;
    v144 = 0;
    v109 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v46 = 0;
    v48 = 0;
    v50 = 0;
    v52 = 0;
  }

  v53 = a2[4];
  sub_100010A94(a2, a2[3]);
  v154 = sub_100040C2C();
  v155 = v54;
  sub_100004924();
  v55 = sub_10004178C();
  v57 = v56;
  v154 = v55;
  v155 = v56;
  v59 = v58 & 1;
  LOBYTE(v156) = v58 & 1;
  v157 = v60;
  sub_10004171C();
  sub_1000417FC();
  (*(v115 + 8))(v16, v116);
  sub_10001FD78(v55, v57, v59);

  v61 = sub_1000416BC();
  v62 = swift_getKeyPath();
  v63 = &v19[*(sub_100003DC0(&qword_100055B68, &qword_100044590) + 36)];
  *v63 = v62;
  v63[1] = v61;
  v64 = sub_10004190C();
  v65 = swift_getKeyPath();
  v66 = v120;
  v67 = &v19[*(v120 + 36)];
  *v67 = v65;
  v67[1] = v64;
  sub_10004166C();
  v68 = sub_100033704();
  v69 = v117;
  sub_1000417EC();
  sub_1000049F8(v19, &qword_100055B38, &qword_100044558);
  v154 = v66;
  v155 = v68;
  swift_getOpaqueTypeConformance2();
  v70 = v127;
  v71 = v123;
  sub_10004188C();
  (*(v121 + 8))(v69, v71);
  v72 = v135 + *(v108 + 32);
  v73 = v133;
  sub_10002F838(v133);
  v75 = v138;
  v74 = v139;
  v76 = v134;
  (*(v138 + 104))(v134, enum case for ColorScheme.dark(_:), v139);
  LOBYTE(v72) = sub_10004118C();
  v77 = *(v75 + 8);
  v77(v76, v74);
  v77(v73, v74);
  v78 = v136;
  v79 = &enum case for BlendMode.plusLighter(_:);
  if ((v72 & 1) == 0)
  {
    v79 = &enum case for BlendMode.plusDarker(_:);
  }

  v80 = v132;
  v81 = v137;
  (*(v136 + 104))(v132, *v79, v137);
  v82 = v126;
  (*(v78 + 32))(&v126[*(v119 + 36)], v80, v81);
  (*(v128 + 32))(v82, v70, v129);
  v83 = swift_getKeyPath();
  v84 = v125;
  sub_100004C8C(v82, v125, &qword_100055B50, &qword_100044570);
  v85 = v84 + *(v124 + 36);
  *v85 = v83;
  *(v85 + 8) = 1;
  *(v85 + 16) = 0;
  v86 = swift_getKeyPath();
  v87 = v84;
  v88 = v118;
  sub_100004C8C(v87, v118, &qword_100055B58, &qword_100044578);
  v89 = v88 + *(v122 + 36);
  *v89 = v86;
  *(v89 + 8) = 1;
  v90 = v130;
  sub_100004C8C(v88, v130, &qword_100055B60, &unk_100044580);
  v91 = v131;
  sub_100011258(v90, v131, &qword_100055B60, &unk_100044580);
  v93 = v113;
  v92 = v114;
  *&v146 = v114;
  *(&v146 + 1) = v113;
  v95 = v111;
  v94 = v112;
  *&v147 = v142;
  *(&v147 + 1) = v112;
  *&v148 = v140;
  *(&v148 + 1) = v111;
  *&v149 = v144;
  *(&v149 + 1) = v143;
  v97 = v109;
  v96 = v110;
  *&v150 = v109;
  *(&v150 + 1) = v141;
  *&v151 = v46;
  *(&v151 + 1) = v48;
  *&v152 = v50;
  *(&v152 + 1) = v52;
  v153 = 0;
  v98 = v146;
  v99 = v147;
  v100 = v149;
  *(v110 + 32) = v148;
  *(v96 + 48) = v100;
  *v96 = v98;
  *(v96 + 16) = v99;
  v101 = v150;
  v102 = v151;
  v103 = v152;
  *(v96 + 112) = 0;
  *(v96 + 80) = v102;
  *(v96 + 96) = v103;
  *(v96 + 64) = v101;
  v104 = sub_100003DC0(&qword_100055B80, &qword_100044598);
  sub_100011258(v91, v96 + *(v104 + 48), &qword_100055B60, &unk_100044580);
  sub_1000338A4(&v146, &v154);
  sub_1000049F8(v90, &qword_100055B60, &unk_100044580);
  sub_1000049F8(v91, &qword_100055B60, &unk_100044580);
  v154 = v92;
  v155 = v93;
  v156 = v142;
  v157 = v94;
  v158 = v140;
  v159 = v95;
  v160 = v144;
  v161 = v143;
  v162 = v97;
  v163 = v141;
  v164 = v46;
  v165 = v48;
  v166 = v50;
  v167 = v52;
  v168 = 0;
  return sub_1000049F8(&v154, &qword_100055B88, &qword_1000445A0);
}

uint64_t sub_100033410@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000414AC();
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  v3 = sub_100003DC0(&qword_100055AA8, &qword_100044410);
  return sub_100031B3C(v1, a1 + *(v3 + 44));
}

unint64_t sub_100033474()
{
  result = qword_100055B08;
  if (!qword_100055B08)
  {
    sub_100003E08(&qword_100055AE0, &qword_100044448);
    sub_100033588(&qword_100055B10, &qword_100055AD8, &qword_100044440, sub_100033558);
    sub_100004D80(&qword_1000552A0, &qword_1000552A8, &unk_100043A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055B08);
  }

  return result;
}

uint64_t sub_100033588(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E08(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003360C()
{
  result = qword_100055B20;
  if (!qword_100055B20)
  {
    sub_100003E08(&qword_100055AC8, &qword_100044430);
    swift_getOpaqueTypeConformance2();
    sub_100004D80(&qword_1000552B0, &qword_1000552B8, &unk_1000444D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055B20);
  }

  return result;
}

unint64_t sub_100033704()
{
  result = qword_100055B70;
  if (!qword_100055B70)
  {
    sub_100003E08(&qword_100055B38, &qword_100044558);
    sub_1000337BC();
    sub_100004D80(&qword_1000552B0, &qword_1000552B8, &unk_1000444D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055B70);
  }

  return result;
}

unint64_t sub_1000337BC()
{
  result = qword_100055B78;
  if (!qword_100055B78)
  {
    sub_100003E08(&qword_100055B68, &qword_100044590);
    swift_getOpaqueTypeConformance2();
    sub_100004D80(&qword_1000552A0, &qword_1000552A8, &unk_100043A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055B78);
  }

  return result;
}

uint64_t sub_1000338A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100055B88, &qword_1000445A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003396C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100041CAC();
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
    v12 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100033ABC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100041CAC();
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
    v11 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for StatusBadgeView()
{
  result = qword_100055BF8;
  if (!qword_100055BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100033C38()
{
  sub_100041CAC();
  if (v0 <= 0x3F)
  {
    sub_100033D44(319, &unk_100055C08, type metadata accessor for CTFont, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100033D44(319, &qword_1000548B8, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100033D44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100033DC4()
{
  v1 = v0;
  v2 = sub_100040C1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  v11 = *(v0 + 40);
  type metadata accessor for CGSize(0);
  sub_1000421AC();
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  sub_100010A94(v1, v8);
  v9 = *(v7 + 8);
  sub_100040CFC();
  sub_100036A84(&qword_100055D80);
  v14._countAndFlagsBits = sub_1000421FC();
  sub_100041F6C(v14);

  (*(v3 + 8))(v6, v2);
  sub_100041F6C(*(v1 + 56));
  sub_100041F2C();
}

Swift::Int sub_100033F58()
{
  sub_10004226C();
  sub_100033DC4();
  return sub_10004227C();
}

Swift::Int sub_100033F9C()
{
  sub_10004226C();
  sub_100033DC4();
  return sub_10004227C();
}

uint64_t sub_100033FDC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

uint64_t sub_100033FE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v203 = a1;
  v3 = sub_100003DC0(&qword_100055C48, &qword_100044650);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v176 - v5;
  v187 = sub_100003DC0(&qword_100055C50, &qword_100044658);
  v7 = *(*(v187 - 8) + 64);
  v8 = __chkstk_darwin(v187);
  v189 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v188 = &v176 - v10;
  v191 = sub_100003DC0(&qword_100055C58, &qword_100044660);
  v11 = *(*(v191 - 8) + 64);
  __chkstk_darwin(v191);
  v190 = (&v176 - v12);
  v13 = type metadata accessor for StatusBadgeView();
  v193 = *(v13 - 8);
  v14 = *(v193 + 64);
  __chkstk_darwin(v13);
  v194 = v15;
  v195 = &v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003DC0(&qword_100055C60, &qword_100044668);
  v197 = *(v16 - 8);
  v198 = v16;
  v17 = *(v197 + 64);
  v18 = __chkstk_darwin(v16);
  v196 = &v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v199 = &v176 - v20;
  v21 = sub_100003DC0(&qword_100055C68, &qword_100044670);
  v201 = *(v21 - 8);
  v202 = v21;
  v22 = *(v201 + 64);
  __chkstk_darwin(v21);
  v200 = (&v176 - v23);
  v209 = sub_1000408CC();
  v24 = *(v209 - 1);
  v25 = *(v24 + 64);
  __chkstk_darwin(v209);
  v208 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000414EC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v183 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v176 - v32;
  v34 = *(sub_100041C7C() + 16);

  v192 = v13;
  v179 = *(v13 + 32);
  sub_10002F610(v33);
  v35 = sub_1000414DC();
  v184 = v28;
  v185 = v27;
  v36 = *(v28 + 8);
  v181 = v28 + 8;
  v182 = v33;
  v180 = v36;
  v36(v33, v27);
  if (v35)
  {
    sub_100041B3C();
  }

  else
  {
    sub_100041AFC();
  }

  v39 = v37;
  v40 = v38;
  v41 = *(sub_100041C7C() + 16);

  v204 = v2;
  v186 = v6;
  if (v41)
  {
    v42 = sub_100041A8C();
  }

  else
  {
    v42 = sub_100041A9C();
  }

  v44 = v42;
  v45 = v43;
  v46 = sub_100041C7C();
  v47 = *(v46 + 16);
  if (!v47)
  {

    v209 = &_swiftEmptyArrayStorage;
    v65 = v203;
LABEL_16:
    sub_100041C9C();
    if (*(&v231 + 1))
    {
      sub_10002242C(&v230, v233);
      sub_100010A94(v233, v234);
      if (sub_100041C1C())
      {

        v66 = v200;
        *v200 = v44;
        v66[1] = v45;
        *&v230 = v209;
        v67 = v204;
        v68 = v195;
        sub_100035CEC(v204, v195);
        v69 = (*(v193 + 80) + 16) & ~*(v193 + 80);
        v70 = (v194 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
        v71 = swift_allocObject();
        sub_100035EBC(v68, v71 + v69);
        v72 = (v71 + v70);
        *v72 = xmmword_1000445B0;
        v72[1] = xmmword_1000445C0;
        v73 = (v71 + ((v70 + 39) & 0xFFFFFFFFFFFFFFF8));
        *v73 = v39;
        v73[1] = v40;

        sub_100003DC0(&qword_100055C78, &qword_100044690);
        sub_100004D80(&qword_100055C80, &qword_100055C78, &qword_100044690);
        sub_100035FE4();
        sub_100041A3C();
        v74 = sub_100041A9C();
        v76 = v75;
        sub_100010A94(v233, v234);
        v77 = sub_100041C1C();
        if (v77)
        {
          v78 = v77;
          v208 = v76;
          v79 = v182;
          sub_10002F610(v182);
          v80 = v183;
          v81 = v185;
          (*(v184 + 104))(v183, enum case for ContentSizeCategory.accessibilityLarge(_:), v185);
          v82 = sub_100010598(v79, v80);
          v83 = v180;
          v180(v80, v81);
          v83(v79, v81);
          v205 = v78;
          if (v82)
          {
            v84 = *(v67 + *(v192 + 20));
            if (v84)
            {
              v85 = *(v67 + *(v192 + 20));
            }

            else
            {
              sub_100036804();
              v84 = 0;
            }

            v87 = v186;
            v88 = v208;
            v89 = v84;
            v206 = sub_1000416EC();
          }

          else
          {
            sub_100010A94(v233, v234);
            v206 = sub_100041BDC();
            v87 = v186;
            v88 = v208;
          }

          v90 = v190;
          *v190 = v74;
          v90[1] = v88;
          v91 = v90 + *(sub_100003DC0(&qword_100055CA0, &qword_1000446A8) + 44);
          sub_100010A94(v233, v234);
          v195 = sub_100041BCC();
          v92 = v192;
          v93 = v204;
          v94 = *(v204 + *(v192 + 24));
          sub_100041A9C();
          sub_10004120C();
          v95 = *(v93 + *(v92 + 28));
          sub_100010A94(v233, v234);
          sub_100041BEC();
          sub_100041A4C();
          sub_100041ACC();
          sub_100041ABC();
          sub_10004123C();
          v204 = v235;
          v96 = v236;
          v97 = v237;
          v207 = v40;
          v208 = v39;
          v98 = v238;
          v99 = v239;
          sub_100041A9C();
          sub_10004120C();
          *&v210[6] = v240;
          *&v210[22] = v241;
          *&v210[38] = v242;
          sub_100041D1C();
          v100 = sub_100041D2C();
          (*(*(v100 - 8) + 56))(v87, 0, 1, v100);
          v101 = v188;
          sub_10004196C();
          sub_1000049F8(v87, &qword_100055C48, &qword_100044650);
          v102 = *(sub_100003DC0(&qword_100055CA8, &qword_1000446B0) + 36);
          *(v101 + v102) = swift_getKeyPath();
          sub_100003DC0(&qword_100054710, &unk_100042C00);
          swift_storeEnumTagMultiPayload();
          KeyPath = swift_getKeyPath();
          v104 = (v101 + *(sub_100003DC0(&qword_100055CB0, &qword_100044720) + 36));
          v105 = v206;
          *v104 = KeyPath;
          v104[1] = v105;
          v206 = v105;
          sub_100010A94(v233, v234);

          v106 = sub_100041BFC();
          v107 = swift_getKeyPath();
          v108 = (v101 + *(sub_100003DC0(&qword_100055CB8, &qword_100044758) + 36));
          *v108 = v107;
          v108[1] = v106;
          sub_100010A94(v233, v234);
          sub_100041BBC();
          v109 = (v101 + *(v187 + 36));
          *v109 = v110;
          v109[1] = v111;
          v112 = v189;
          sub_10003632C(v101, v189);
          v113 = v195;
          *&v217 = v195;
          WORD4(v217) = 256;
          *(&v217 + 10) = v215;
          HIWORD(v217) = v216;
          *&v218 = 0x4010000000000000;
          BYTE8(v218) = 0;
          HIDWORD(v218) = *&v214[3];
          *(&v218 + 9) = *v214;
          *&v219[0] = 0x3FE3333333333333;
          *(&v219[1] + 8) = v212;
          *(v219 + 8) = v211;
          *(&v219[2] + 8) = v213;
          *(&v219[3] + 1) = 0;
          v220 = v95;
          v114 = v218;
          v115 = v219[0];
          *v91 = v217;
          *(v91 + 1) = v114;
          v116 = v219[1];
          v117 = v219[3];
          *(v91 + 4) = v219[2];
          *(v91 + 5) = v117;
          *(v91 + 12) = v220;
          *(v91 + 2) = v115;
          *(v91 + 3) = v116;
          v118 = v204;
          *&v221 = v204;
          *(&v221 + 1) = v96;
          *&v222 = v97;
          *(&v222 + 1) = v98;
          *&v223[0] = v99;
          WORD4(v223[0]) = 256;
          *(&v223[3] + 1) = *&v210[46];
          *(&v223[2] + 10) = *&v210[32];
          *(&v223[1] + 10) = *&v210[16];
          *(v223 + 10) = *v210;
          v119 = v221;
          *(v91 + 120) = v222;
          *(v91 + 104) = v119;
          v120 = v223[0];
          v121 = v223[1];
          v122 = v223[2];
          *(v91 + 184) = v223[3];
          *(v91 + 168) = v122;
          *(v91 + 152) = v121;
          *(v91 + 136) = v120;
          v123 = sub_100003DC0(&qword_100055CC0, &qword_100044760);
          sub_10003632C(v112, &v91[*(v123 + 64)]);
          sub_100011258(&v217, &v230, &qword_100055CC8, &qword_100044768);
          sub_100011258(&v221, &v230, &qword_100055CD0, &qword_100044770);
          sub_10003639C(v101);
          sub_10003639C(v112);
          v224 = v118;
          v225[0] = v96;
          v225[1] = v97;
          v225[2] = v98;
          v225[3] = v99;
          v226 = 256;
          v227 = *v210;
          v228 = *&v210[16];
          *v229 = *&v210[32];
          *&v229[14] = *&v210[46];
          sub_1000049F8(&v224, &qword_100055CD0, &qword_100044770);
          *&v232[1] = v211;
          *&v230 = v113;
          WORD4(v230) = 256;
          *(&v230 + 10) = v215;
          HIWORD(v230) = v216;
          *&v231 = 0x4010000000000000;
          BYTE8(v231) = 0;
          *(&v231 + 9) = *v214;
          HIDWORD(v231) = *&v214[3];
          v232[0] = 0x3FE3333333333333;
          *&v232[3] = v212;
          *&v232[5] = v213;
          v232[7] = 0;
          v232[8] = v95;
          sub_1000049F8(&v230, &qword_100055CC8, &qword_100044768);
          LOBYTE(v118) = sub_1000415FC();
          sub_10004117C();
          v125 = v124;
          v127 = v126;
          v129 = v128;
          v131 = v130;
          v132 = v90 + *(sub_100003DC0(&qword_100055CD8, &qword_100044778) + 36);
          *v132 = v118;
          *(v132 + 1) = v125;
          *(v132 + 2) = v127;
          *(v132 + 3) = v129;
          *(v132 + 4) = v131;
          v132[40] = 0;
          LOBYTE(v118) = sub_10004160C();
          sub_10004117C();
          v134 = v133;
          v136 = v135;
          v138 = v137;
          v140 = v139;
          v141 = v90 + *(sub_100003DC0(&qword_100055CE0, &qword_100044780) + 36);
          *v141 = v118;
          *(v141 + 1) = v134;
          *(v141 + 2) = v136;
          *(v141 + 3) = v138;
          *(v141 + 4) = v140;
          v141[40] = 0;
          LOBYTE(v118) = sub_10004161C();
          sub_10004117C();
          v143 = v142;
          v145 = v144;
          v147 = v146;
          v149 = v148;
          v150 = v90 + *(sub_100003DC0(&qword_100055CE8, &qword_100044788) + 36);
          *v150 = v118;
          *(v150 + 1) = v143;
          *(v150 + 2) = v145;
          *(v150 + 3) = v147;
          *(v150 + 4) = v149;
          v150[40] = 0;
          LOBYTE(v118) = sub_10004162C();
          sub_10004117C();
          v152 = v151;
          v154 = v153;
          v156 = v155;
          v158 = v157;
          v159 = v90 + *(sub_100003DC0(&qword_100055CF0, &qword_100044790) + 36);
          *v159 = v118;
          *(v159 + 1) = v152;
          *(v159 + 2) = v154;
          *(v159 + 3) = v156;
          *(v159 + 4) = v158;
          v159[40] = 0;
          *(v90 + *(sub_100003DC0(&qword_100055CF8, &qword_100044798) + 36)) = xmmword_1000445D0;
          sub_100041A9C();
          sub_10004120C();
          v160 = (v90 + *(sub_100003DC0(&qword_100055D00, &qword_1000447A0) + 36));
          v161 = v244;
          *v160 = v243;
          v160[1] = v161;
          v160[2] = v245;
          v162 = (v90 + *(v191 + 36));
          sub_100036404();
          *v162 = 0;
          v162[1] = 0;
          v86 = sub_1000419EC();
        }

        else
        {
          v86 = sub_1000419EC();
          v207 = v40;
          v208 = v39;
        }

        v163 = sub_100003DC0(&qword_100055C90, &qword_100044698);
        v164 = v199;
        v165 = v200;
        v166 = v200 + *(v163 + 44);
        v168 = v196;
        v167 = v197;
        v169 = *(v197 + 16);
        v170 = v198;
        v169(v196, v199, v198);
        v169(v166, v168, v170);
        *&v166[*(sub_100003DC0(&qword_100055C98, &qword_1000446A0) + 48)] = v86;
        v171 = *(v167 + 8);

        v171(v164, v170);

        v171(v168, v170);

        sub_100041A9C();
        sub_10004120C();
        v172 = v202;
        v173 = v203;
        v174 = (v165 + *(v202 + 36));
        v175 = v231;
        *v174 = v230;
        v174[1] = v175;
        v174[2] = *v232;
        sub_100036038(v165, v173);
        (*(v201 + 56))(v173, 0, 1, v172);
        return sub_100010DCC(v233);
      }

      sub_100010DCC(v233);
    }

    else
    {

      sub_1000049F8(&v230, &qword_100055218, &unk_100044680);
    }

    return (*(v201 + 56))(v65, 1, 1, v202);
  }

  v177 = v45;
  v178 = v44;
  *&v221 = &_swiftEmptyArrayStorage;
  v48 = v46;
  sub_10002441C(0, v47, 0);
  result = v48;
  v50 = 0;
  v51 = v221;
  v52 = *(v48 + 16);
  v205 = (v24 + 8);
  v206 = v47;
  v53 = v48 + 40 * v52 - 8;
  v207 = v48;
  while (v52)
  {
    if (v52 > *(result + 16))
    {
      goto LABEL_32;
    }

    v54 = v51;
    sub_100010F30(v53, &v217 + 8);
    v224 = v50;
    sub_10002242C((&v217 + 8), v225);
    sub_100010F30(v225, &v230);
    v55 = v208;
    sub_1000408BC();
    v56 = sub_1000408AC();
    v58 = v57;
    (*v205)(v55, v209);
    v232[3] = v56;
    v232[4] = v58;
    *&v232[1] = v34 * 6.0;
    v232[2] = 0;
    sub_1000049F8(&v224, &qword_100055C70, &qword_100044678);
    v51 = v54;
    *&v221 = v54;
    v60 = v54[2];
    v59 = v54[3];
    if (v60 >= v59 >> 1)
    {
      sub_10002441C((v59 > 1), v60 + 1, 1);
      v51 = v221;
    }

    ++v50;
    v51[2] = v60 + 1;
    v61 = &v51[9 * v60];
    *(v61 + 2) = v230;
    v62 = v231;
    v63 = *v232;
    v64 = *&v232[2];
    v61[12] = v232[4];
    *(v61 + 4) = v63;
    *(v61 + 5) = v64;
    *(v61 + 3) = v62;
    --v34;
    v53 -= 40;
    --v52;
    result = v207;
    if (v206 == v50)
    {
      v209 = v51;

      v65 = v203;
      v45 = v177;
      v44 = v178;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10003524C@<X0>(void *a1@<X0>, double a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  v144 = a2;
  v17 = sub_100003DC0(&qword_100055C48, &qword_100044650);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v138 = v132 - v19;
  v139 = sub_100003DC0(&qword_100055C50, &qword_100044658);
  v20 = *(*(v139 - 8) + 64);
  v21 = __chkstk_darwin(v139);
  v141 = v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v140 = v132 - v23;
  v142 = sub_100003DC0(&qword_100055C58, &qword_100044660);
  v24 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v145 = (v132 - v25);
  v26 = sub_1000414EC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v132 - v32;
  v34 = a1[5];
  *&v35 = COERCE_DOUBLE(sub_100041A8C());
  v136 = v36;
  v137 = *&v35;
  v37 = a1[4];
  sub_100010A94(a1, a1[3]);
  v38 = sub_100041C1C();
  if (v38)
  {
    v143 = v38;
    v135 = a3;
    v39 = type metadata accessor for StatusBadgeView();
    v40 = *&v144 + v39[8];
    sub_10002F610(v33);
    (*(v27 + 104))(v31, enum case for ContentSizeCategory.accessibilityLarge(_:), v26);
    LOBYTE(v40) = sub_100010598(v33, v31);
    v41 = *(v27 + 8);
    v41(v31, v26);
    v41(v33, v26);
    v133 = v34;
    v134 = a7;
    if (v40)
    {
      v42 = v144;
      v43 = *(*&v144 + v39[5]);
      v44 = a4;
      if (v43)
      {
        v45 = *(*&v144 + v39[5]);
      }

      else
      {
        sub_100036804();
        v43 = 0;
      }

      v48 = a6;
      v51 = v43;
      v50 = sub_1000416EC();
    }

    else
    {
      v44 = a4;
      v48 = a6;
      v49 = a1[4];
      sub_100010A94(a1, a1[3]);
      v50 = sub_100041BDC();
      v42 = v144;
    }

    v52 = v145;
    v53 = v136;
    *v145 = v137;
    *(v52 + 1) = v53;
    v54 = v52 + *(sub_100003DC0(&qword_100055CA0, &qword_1000446A8) + 44);
    v55 = a1[4];
    sub_100010A94(a1, a1[3]);
    v136 = sub_100041BCC();
    v56 = *(*&v42 + v39[6]);
    sub_100041A9C();
    sub_10004120C();
    v57 = *(*&v42 + v39[7]);
    v58 = a1[4];
    sub_100010A94(a1, a1[3]);
    sub_100041BEC();
    sub_100041A4C();
    sub_100041ACC();
    sub_100041ABC();
    sub_10004123C();
    v132[0] = v178;
    v59 = v179;
    v60 = v180;
    v137 = a8;
    v144 = a9;
    v61 = v181;
    v62 = v182;
    sub_100041A9C();
    sub_10004120C();
    *&v146[6] = v183;
    *&v146[22] = v184;
    *&v146[38] = v185;
    v63 = v138;
    sub_100041D1C();
    v64 = sub_100041D2C();
    (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
    v65 = v140;
    sub_10004196C();
    sub_1000049F8(v63, &qword_100055C48, &qword_100044650);
    v66 = *(sub_100003DC0(&qword_100055CA8, &qword_1000446B0) + 36);
    *(v65 + v66) = swift_getKeyPath();
    sub_100003DC0(&qword_100054710, &unk_100042C00);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v68 = (v65 + *(sub_100003DC0(&qword_100055CB0, &qword_100044720) + 36));
    *v68 = KeyPath;
    v68[1] = v50;
    v132[1] = v50;
    v69 = a1[4];
    sub_100010A94(a1, a1[3]);

    v70 = sub_100041BFC();
    v71 = swift_getKeyPath();
    v72 = (v65 + *(sub_100003DC0(&qword_100055CB8, &qword_100044758) + 36));
    *v72 = v71;
    v72[1] = v70;
    v73 = a1[4];
    sub_100010A94(a1, a1[3]);
    sub_100041BBC();
    v74 = (v65 + *(v139 + 36));
    *v74 = v75;
    v74[1] = v76;
    v77 = v141;
    sub_10003632C(v65, v141);
    v78 = v136;
    *&v153 = v136;
    WORD4(v153) = 256;
    *(&v153 + 10) = v151;
    HIWORD(v153) = v152;
    *&v154 = 0x4010000000000000;
    BYTE8(v154) = 0;
    HIDWORD(v154) = *&v150[3];
    *(&v154 + 9) = *v150;
    *&v155[0] = 0x3FE3333333333333;
    *(&v155[1] + 8) = v148;
    *(v155 + 8) = v147;
    *(&v155[2] + 8) = v149;
    *(&v155[3] + 1) = 0;
    v156 = v57;
    v79 = v154;
    v80 = v155[0];
    *v54 = v153;
    *(v54 + 1) = v79;
    v81 = v155[1];
    v82 = v155[3];
    *(v54 + 4) = v155[2];
    *(v54 + 5) = v82;
    *(v54 + 12) = v156;
    *(v54 + 2) = v80;
    *(v54 + 3) = v81;
    v83 = v132[0];
    *&v157 = v132[0];
    *(&v157 + 1) = v59;
    *&v158 = v60;
    *(&v158 + 1) = v61;
    *&v159[0] = v62;
    WORD4(v159[0]) = 256;
    *(&v159[3] + 1) = *&v146[46];
    *(&v159[2] + 10) = *&v146[32];
    *(&v159[1] + 10) = *&v146[16];
    *(v159 + 10) = *v146;
    v84 = v157;
    *(v54 + 120) = v158;
    *(v54 + 104) = v84;
    v85 = v159[0];
    v86 = v159[1];
    v87 = v159[2];
    *(v54 + 184) = v159[3];
    *(v54 + 168) = v87;
    *(v54 + 152) = v86;
    *(v54 + 136) = v85;
    v88 = sub_100003DC0(&qword_100055CC0, &qword_100044760);
    sub_10003632C(v77, &v54[*(v88 + 64)]);
    sub_100011258(&v153, &v165, &qword_100055CC8, &qword_100044768);
    sub_100011258(&v157, &v165, &qword_100055CD0, &qword_100044770);
    sub_10003639C(v65);
    sub_10003639C(v77);
    v160[0] = v83;
    v160[1] = v59;
    v160[2] = v60;
    v160[3] = v61;
    v160[4] = v62;
    v161 = 256;
    v162 = *v146;
    v163 = *&v146[16];
    *v164 = *&v146[32];
    *&v164[14] = *&v146[46];
    sub_1000049F8(v160, &qword_100055CD0, &qword_100044770);
    v173 = v147;
    v165 = v78;
    v166 = 256;
    v167 = v151;
    v168 = v152;
    v169 = 0x4010000000000000;
    v170 = 0;
    *v171 = *v150;
    *&v171[3] = *&v150[3];
    v172 = 0x3FE3333333333333;
    v174 = v148;
    v175 = v149;
    v176 = 0;
    v177 = v57;
    sub_1000049F8(&v165, &qword_100055CC8, &qword_100044768);
    LOBYTE(v77) = sub_1000415FC();
    sub_10004117C();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v97 = sub_100003DC0(&qword_100055CD8, &qword_100044778);
    v98 = v145;
    v99 = v145 + *(v97 + 36);
    *v99 = v77;
    *(v99 + 1) = v90;
    *(v99 + 2) = v92;
    *(v99 + 3) = v94;
    *(v99 + 4) = v96;
    v99[40] = 0;
    LOBYTE(v77) = sub_10004160C();
    sub_10004117C();
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v108 = v98 + *(sub_100003DC0(&qword_100055CE0, &qword_100044780) + 36);
    *v108 = v77;
    *(v108 + 1) = v101;
    *(v108 + 2) = v103;
    *(v108 + 3) = v105;
    *(v108 + 4) = v107;
    v108[40] = 0;
    LOBYTE(v77) = sub_10004161C();
    sub_10004117C();
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v117 = v98 + *(sub_100003DC0(&qword_100055CE8, &qword_100044788) + 36);
    *v117 = v77;
    *(v117 + 1) = v110;
    *(v117 + 2) = v112;
    *(v117 + 3) = v114;
    *(v117 + 4) = v116;
    v117[40] = 0;
    LOBYTE(v77) = sub_10004162C();
    v118 = v134;
    sub_10004117C();
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v126 = v125;
    v127 = v98 + *(sub_100003DC0(&qword_100055CF0, &qword_100044790) + 36);
    *v127 = v77;
    *(v127 + 1) = v120;
    *(v127 + 2) = v122;
    *(v127 + 3) = v124;
    *(v127 + 4) = v126;
    v127[40] = 0;
    v128 = (v98 + *(sub_100003DC0(&qword_100055CF8, &qword_100044798) + 36));
    *v128 = (v118 - a5) * 0.5;
    v128[1] = (v48 - v44) * 0.5;
    sub_100041A9C();
    sub_10004120C();
    v129 = (v98 + *(sub_100003DC0(&qword_100055D00, &qword_1000447A0) + 36));
    v130 = v187;
    *v129 = v186;
    v129[1] = v130;
    v129[2] = v188;
    v131 = (v98 + *(v142 + 36));
    *v131 = v133;
    v131[1] = 0;
    sub_100036404();
    v47 = sub_1000419EC();

    a3 = v135;
  }

  else
  {
    result = sub_1000419EC();
    v47 = result;
  }

  *a3 = v47;
  return result;
}

uint64_t sub_100035CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusBadgeView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035D50()
{
  v1 = (type metadata accessor for StatusBadgeView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_100041CAC();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v1[10];
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000414EC();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100035EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusBadgeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035F20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for StatusBadgeView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  v14 = *(v2 + v8);
  v15 = *(v2 + v8 + 8);

  return sub_10003524C(a1, COERCE_DOUBLE(v2 + v6), a2, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_100035FE4()
{
  result = qword_100055C88;
  if (!qword_100055C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055C88);
  }

  return result;
}

uint64_t sub_100036038(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100055C68, &qword_100044670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000360A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100040C1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_5;
  }

  v14 = *(a1 + 32);
  sub_100010A94(a1, *(a1 + 24));
  v15 = *(v14 + 8);
  sub_100040CFC();
  v16 = *(a2 + 32);
  sub_100010A94(a2, *(a2 + 24));
  v17 = *(v16 + 8);
  sub_100040CFC();
  sub_100036A84(&qword_100055D88);
  sub_100041F9C();
  sub_100041F9C();
  if (v22[2] == v22[0] && v22[3] == v22[1])
  {
    v18 = *(v5 + 8);
    v18(v9, v4);
    v18(v11, v4);
  }

  else
  {
    v19 = sub_10004222C();
    v20 = *(v5 + 8);
    v20(v9, v4);
    v20(v11, v4);

    if ((v19 & 1) == 0)
    {
LABEL_5:
      v13 = 0;
      return v13 & 1;
    }
  }

  if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_10004222C();
  }

  return v13 & 1;
}

uint64_t sub_10003632C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100055C50, &qword_100044658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003639C(uint64_t a1)
{
  v2 = sub_100003DC0(&qword_100055C50, &qword_100044658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100036404()
{
  result = qword_100055D08;
  if (!qword_100055D08)
  {
    sub_100003E08(&qword_100055C58, &qword_100044660);
    sub_100036490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D08);
  }

  return result;
}

unint64_t sub_100036490()
{
  result = qword_100055D10;
  if (!qword_100055D10)
  {
    sub_100003E08(&qword_100055D00, &qword_1000447A0);
    sub_10003651C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D10);
  }

  return result;
}

unint64_t sub_10003651C()
{
  result = qword_100055D18;
  if (!qword_100055D18)
  {
    sub_100003E08(&qword_100055CF8, &qword_100044798);
    sub_1000365A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D18);
  }

  return result;
}

unint64_t sub_1000365A8()
{
  result = qword_100055D20;
  if (!qword_100055D20)
  {
    sub_100003E08(&qword_100055CF0, &qword_100044790);
    sub_100036634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D20);
  }

  return result;
}

unint64_t sub_100036634()
{
  result = qword_100055D28;
  if (!qword_100055D28)
  {
    sub_100003E08(&qword_100055CE8, &qword_100044788);
    sub_1000366C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D28);
  }

  return result;
}

unint64_t sub_1000366C0()
{
  result = qword_100055D30;
  if (!qword_100055D30)
  {
    sub_100003E08(&qword_100055CE0, &qword_100044780);
    sub_10003674C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D30);
  }

  return result;
}

unint64_t sub_10003674C()
{
  result = qword_100055D38;
  if (!qword_100055D38)
  {
    sub_100003E08(&qword_100055CD8, &qword_100044778);
    sub_100004D80(&qword_100055D40, &qword_100055D48, &qword_1000447A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D38);
  }

  return result;
}

__n128 sub_100036814(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100036838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100036880(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1000368E4()
{
  result = qword_100055D50;
  if (!qword_100055D50)
  {
    sub_100003E08(&qword_100055D58, "bB");
    sub_100036968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D50);
  }

  return result;
}

unint64_t sub_100036968()
{
  result = qword_100055D60;
  if (!qword_100055D60)
  {
    sub_100003E08(&qword_100055C68, &qword_100044670);
    sub_100004D80(&qword_100055D68, &qword_100055D70, &qword_1000447F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D60);
  }

  return result;
}

unint64_t sub_100036A24()
{
  result = qword_100055D78;
  if (!qword_100055D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D78);
  }

  return result;
}

uint64_t sub_100036A84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100040C1C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EnvironmentValues.avatarSizeBinding.getter()
{
  sub_100036B0C();
  sub_10004147C();
  return v1;
}

unint64_t sub_100036B0C()
{
  result = qword_100055DB0;
  if (!qword_100055DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055DB0);
  }

  return result;
}

uint64_t sub_100036BF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100054560 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_100055D98;
  v2 = qword_100055DA0;
  v3 = byte_100055DA8;
  *a1 = qword_100055D90;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

void (*EnvironmentValues.avatarSizeBinding.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = sub_100036B0C();
  sub_10004147C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  *v4 = *(v4 + 32);
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  return sub_100036D30;
}

void sub_100036D30(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v2[4] = **a1;
  v4 = v2[2];
  v5 = *(v2 + 24);
  v6 = v2[8];
  v7 = v2[9];
  v2[5] = v3;
  v2[6] = v4;
  *(v2 + 56) = v5;
  if (a2)
  {

    sub_10004148C();
    v9 = *v2;
    v8 = v2[1];
  }

  else
  {
    sub_10004148C();
  }

  free(v2);
}

uint64_t sub_100036E0C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100041CAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[8]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_1000408CC();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[11];
      goto LABEL_5;
    }

    v17 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[15];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100036FF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100041CAC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
    return result;
  }

  v16 = sub_1000408CC();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  v17 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[15];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for AvatarView()
{
  result = qword_100055E10;
  if (!qword_100055E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100037214()
{
  sub_100041CAC();
  if (v0 <= 0x3F)
  {
    sub_10003749C(319, &qword_1000550F8, sub_100010EE4, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000373E8();
      if (v2 <= 0x3F)
      {
        sub_10003749C(319, &qword_100055E20, &type metadata accessor for ContactImage, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100040D9C();
          if (v4 <= 0x3F)
          {
            sub_1000408CC();
            if (v5 <= 0x3F)
            {
              sub_100037438();
              if (v6 <= 0x3F)
              {
                type metadata accessor for UIEdgeInsets(319);
                if (v7 <= 0x3F)
                {
                  sub_10003749C(319, &unk_100055118, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
                  if (v8 <= 0x3F)
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

void sub_1000373E8()
{
  if (!qword_100054618)
  {
    v0 = sub_1000420FC();
    if (!v1)
    {
      atomic_store(v0, &qword_100054618);
    }
  }
}

void sub_100037438()
{
  if (!qword_100055E28)
  {
    sub_100003E08(&unk_100055E30, qword_100044930);
    v0 = sub_1000411AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100055E28);
    }
  }
}

void sub_10003749C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10003751C()
{
  v1 = sub_10004146C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for AvatarView() + 48);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  if (*(v6 + 25) == 1)
  {
  }

  else
  {

    sub_1000420BC();
    v11 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();
    sub_10003A45C(v7, v8, v9, v10, 0);
    (*(v2 + 8))(v5, v1);
    return v13;
  }

  return v7;
}

uint64_t sub_1000376BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004146C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003DC0(&qword_100054700, &qword_100042B60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AvatarView();
  sub_100011258(v1 + *(v12 + 60), v11, &qword_100054700, &qword_100042B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004119C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1000420BC();
    v16 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1000378C4(double a1)
{
  v2 = sub_10004119C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v25 = sub_100003DC0(&qword_100056050, &qword_100044B20);
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  v29 = 0x3FF0000000000000;
  v30 = 0.0;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  sub_10003B010();
  sub_100040C3C();
  v29 = 0x3FD3333333333333;
  v30 = 0.0;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  sub_100040C3C();
  sub_1000376BC(v9);
  (*(v3 + 104))(v7, enum case for ColorScheme.dark(_:), v2);
  v17 = sub_10004118C();
  v18 = *(v3 + 8);
  v18(v7, v2);
  v18(v9, v2);
  if (v17)
  {
    v19 = *(v10 + 8);
    v20 = v25;
    v19(v14, v25);
    return (v19)(v16, v20);
  }

  else
  {
    v30 = a1;
    v22 = v25;
    sub_100040C4C();
    v23 = *(v10 + 8);
    v23(v14, v22);
    return (v23)(v16, v22);
  }
}