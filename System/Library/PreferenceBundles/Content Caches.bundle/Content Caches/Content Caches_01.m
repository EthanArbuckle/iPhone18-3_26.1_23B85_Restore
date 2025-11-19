unint64_t sub_17234()
{
  result = qword_45D98;
  if (!qword_45D98)
  {
    sub_8BD0(&qword_45D90, &qword_34C20);
    sub_17120();
    sub_8F50(&qword_45DA0, &qword_45DA8, &qword_34C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45D98);
  }

  return result;
}

uint64_t sub_172EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1733C()
{
}

uint64_t sub_17394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_173E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CachingServer() + 20);
  v4 = sub_32AC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CachingServer()
{
  result = qword_47390;
  if (!qword_47390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_174A8()
{
  v1 = (v0 + *(type metadata accessor for CachingServer() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1759C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  sub_32AB4();
  v17 = type metadata accessor for CachingServer();
  v18 = v17[5];
  v19 = sub_32AC4();
  result = (*(*(v19 - 8) + 32))(a9 + v18, a1, v19);
  v21 = (a9 + v17[6]);
  *v21 = a2;
  v21[1] = a3;
  *(a9 + v17[7]) = a4;
  *(a9 + v17[8]) = a5;
  *(a9 + v17[9]) = a6;
  *(a9 + v17[10]) = a7;
  *(a9 + v17[11]) = a8;
  return result;
}

uint64_t sub_176A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_32AC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_17774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_32AC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_17830()
{
  result = sub_32AC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t variable initialization expression of CacheLocatorSettings.cacheService@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AssetCacheLocatorService();
  result = sub_2B49C();
  a1[3] = v2;
  a1[4] = &off_41C90;
  *a1 = result;
  return result;
}

uint64_t sub_179BC()
{
  if (*(v0 + OBJC_IVAR___CacheLocatorSettings_isResultAvailableSubscription))
  {

    sub_32BF4();
  }

  return result;
}

Swift::Void __swiftcall CacheLocatorSettings.viewDidLoad()()
{
  v1 = v0;
  v2 = sub_32BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38.receiver = v1;
  v38.super_class = CacheLocatorSettings;
  objc_msgSendSuper2(&v38, "viewDidLoad");
  v7 = sub_2167C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_32BB4();
  v9 = sub_33434();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Loading the CacheLocatorView", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  type metadata accessor for CacheLocatorViewModel();
  sub_35E4(v1 + OBJC_IVAR___CacheLocatorSettings_cacheService, &v35);
  sub_14528(&v35);

  v35 = sub_1AEEC(v11);
  v36 = v12 & 1;
  v37 = v13;
  v14 = objc_allocWithZone(sub_279C(&qword_45E58, "$&"));
  v15 = sub_32EB4();
  v16 = sub_2A72C();
  swift_beginAccess();
  v17 = *v16;
  v18 = sub_33234();
  v19 = [v17 localizedStringForKey:v18 value:0 table:0];

  if (!v19)
  {
    sub_33244();
    v19 = sub_33234();
  }

  [v1 setTitle:v19];

  v20 = [v15 view];
  if (!v20)
  {

    v21 = v15;
    goto LABEL_10;
  }

  v21 = v20;
  v22 = [v1 view];
  if (v22)
  {
    v23 = v22;
    [v22 addSubview:v21];

    v24 = [v1 view];
    if (v24)
    {
      v25 = v24;
      [v24 bounds];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      [v21 setFrame:{v27, v29, v31, v33}];
      [v21 setAutoresizingMask:18];
      [v1 addChildViewController:v15];
      [v15 didMoveToParentViewController:v1];

LABEL_10:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __swiftcall CacheLocatorSettings.init(nibName:bundle:)(CacheLocatorSettings *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_33234();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id CacheLocatorSettings.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR___CacheLocatorSettings_isResultAvailableSubscription] = 0;
  v7 = &v3[OBJC_IVAR___CacheLocatorSettings_cacheService];
  v8 = type metadata accessor for AssetCacheLocatorService();
  v9 = sub_2B49C();
  v7[3] = v8;
  v7[4] = &off_41C90;
  *v7 = v9;
  if (a2)
  {
    v10 = sub_33234();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = CacheLocatorSettings;
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id CacheLocatorSettings.init(coder:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___CacheLocatorSettings_isResultAvailableSubscription] = 0;
  v4 = &v1[OBJC_IVAR___CacheLocatorSettings_cacheService];
  v5 = type metadata accessor for AssetCacheLocatorService();
  v6 = sub_2B49C();
  v4[3] = v5;
  v4[4] = &off_41C90;
  *v4 = v6;
  v9.receiver = v2;
  v9.super_class = CacheLocatorSettings;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_181A0(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v30 = a1;
  v2 = sub_279C(&qword_451C8, &qword_34850);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v30 - v4;
  v31 = sub_279C(&qword_459D8, &qword_34848);
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v31);
  v9 = &v30 - v8;
  v10 = sub_32BD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2167C();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_32BB4();
  v17 = sub_33434();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "Start scanning for caches", v18, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v19 = v33;
  v20 = *(v33 + OBJC_IVAR___CacheLocatorSettings_cacheService + 24);
  v21 = *(v33 + OBJC_IVAR___CacheLocatorSettings_cacheService + 32);
  sub_3294((v33 + OBJC_IVAR___CacheLocatorSettings_cacheService), v20);
  v35 = (*(v21 + 16))(v20, v21);
  sub_9334(0, &qword_451D8, OS_dispatch_queue_ptr);
  v22 = sub_33474();
  v34 = v22;
  v23 = sub_33454();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  sub_279C(&qword_45A00, &qword_34898);
  sub_8F50(&qword_45A08, &qword_45A00, &qword_34898);
  sub_8C18();
  sub_32C94();
  sub_150C8(v5);

  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 16) = v30;
  *(v24 + 24) = v25;
  sub_8F50(&qword_45A10, &qword_459D8, &qword_34848);

  v26 = v31;
  v27 = sub_32CA4();

  (*(v6 + 8))(v9, v26);
  v28 = *(v19 + OBJC_IVAR___CacheLocatorSettings_isResultAvailableSubscription);
  *(v19 + OBJC_IVAR___CacheLocatorSettings_isResultAvailableSubscription) = v27;
}

uint64_t sub_185E8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_18634()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1866C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (!*a1)
  {
    goto LABEL_4;
  }

  v4 = *(*a1 + 16);
  if (v4 >> 31)
  {
    __break(1u);
LABEL_4:
    v4 = 0;
  }

  return v2(v4);
}

uint64_t sub_186EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[1] = a4;
  v14[0] = sub_279C(&qword_45E88, &qword_34C90);
  v7 = *(v14[0] - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v14[0]);
  v10 = v14 - v9;
  v14[4] = a1;
  v15 = a2;
  v16 = a3;
  sub_279C(&qword_45E90, &unk_34C98);
  sub_8F50(&qword_45E98, &qword_45E90, &unk_34C98);
  sub_32F84();
  v17 = a2;
  v18 = a3;
  sub_279C(&qword_457C8, &qword_34300);
  sub_330F4();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  sub_8F50(&qword_45EA0, &qword_45E88, &qword_34C90);
  sub_1267C();

  v12 = v14[0];
  sub_33024();

  return (*(v7 + 8))(v10, v12);
}

uint64_t sub_18960@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v46 = a4;
  v44 = sub_279C(&qword_45ED0, &qword_34DE0);
  v7 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v9 = &v39 - v8;
  v45 = sub_279C(&qword_45ED8, &qword_34DE8);
  v42 = *(v45 - 8);
  v10 = *(v42 + 64);
  v11 = __chkstk_darwin(v45);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v48 = &v39 - v13;
  v41 = sub_279C(&qword_45EE0, &qword_34DF0);
  v40 = *(v41 - 8);
  v14 = v40;
  v15 = *(v40 + 64);
  v16 = __chkstk_darwin(v41);
  v47 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v39 - v18;
  v20 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_infoSectionHeader + 8);
  v55 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_infoSectionHeader);
  v56 = v20;
  sub_1288C();

  v55 = sub_32FE4();
  v56 = v21;
  v57 = v22 & 1;
  v58 = v23;
  v52 = a1;
  v53 = a2;
  v54 = a3;
  sub_279C(&qword_45EE8, &qword_34DF8);
  sub_8F50(&qword_45EF0, &qword_45EE8, &qword_34DF8);
  v39 = v19;
  sub_33154();
  *v9 = sub_32EA4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v24 = sub_279C(&qword_45EF8, &qword_34E00);
  sub_19134(a1, a2, a3, &v9[*(v24 + 44)]);
  v49 = a1;
  v50 = a2;
  v51 = a3;
  sub_279C(&qword_45F00, &qword_34E08);
  sub_8F50(&qword_45F08, &qword_45F00, &qword_34E08);
  sub_8F50(&qword_45F10, &qword_45ED0, &qword_34DE0);
  v25 = v48;
  sub_33174();
  v26 = *(v14 + 16);
  v27 = v47;
  v28 = v19;
  v29 = v41;
  v26(v47, v28, v41);
  v30 = v42;
  v31 = *(v42 + 16);
  v32 = v43;
  v33 = v45;
  v31(v43, v25, v45);
  v34 = v46;
  v26(v46, v27, v29);
  v35 = sub_279C(&qword_45F18, &unk_34E10);
  v31(&v34[*(v35 + 48)], v32, v33);
  v36 = *(v30 + 8);
  v36(v48, v33);
  v37 = *(v40 + 8);
  v37(v39, v29);
  v36(v32, v33);
  return (v37)(v47, v29);
}

uint64_t sub_18E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_32E54();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v28 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_rankLabel);
  v30 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_rankLabel + 8);
  sub_1288C();

  v26 = sub_32FE4();
  v27 = v6;
  v8 = v7;
  v25 = v9;
  v10 = (*(*a1 + 424))();
  sub_32E44();
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_32E34(v31);
  v11 = a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server;
  v29 = *(v11 + *(type metadata accessor for CachingServer() + 28));
  sub_32E24();
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_32E34(v32);
  sub_32E74();
  v12 = sub_32FD4();
  v14 = v13;
  v16 = v15;
  sub_32ED4();
  v17 = sub_32F94();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_128E0(v12, v14, v16 & 1);

  *a2 = v26;
  *(a2 + 8) = v8;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = v10;
  *(a2 + 40) = 0;
  *(a2 + 48) = v17;
  *(a2 + 56) = v19;
  *(a2 + 64) = v21 & 1;
  *(a2 + 72) = v23;
  sub_12948(v26, v8, v25 & 1);

  sub_12948(v17, v19, v21 & 1);

  sub_128E0(v17, v19, v21 & 1);

  sub_128E0(v26, v8, v25 & 1);
}

uint64_t sub_19134@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_279C(&qword_45810, &qword_34450);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v30 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_testSectionFooter + 8);
  v34 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_testSectionFooter);
  v35 = v15;
  sub_1288C();

  v16 = sub_32FE4();
  v18 = v17;
  v28 = v19;
  v29 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  v31 = a1;
  v32 = a2;
  v33 = a3;

  v27 = v14;
  sub_33104();
  v22 = v9[2];
  v23 = v30;
  v22(v30, v14, v8);
  *a4 = v16;
  *(a4 + 8) = v18;
  LOBYTE(a1) = v28 & 1;
  *(a4 + 16) = v28 & 1;
  *(a4 + 24) = v29;
  v24 = sub_279C(&qword_45FE8, &qword_34F20);
  v22((a4 + *(v24 + 48)), v23, v8);
  sub_12948(v16, v18, a1);
  v25 = v9[1];

  v25(v27, v8);
  v25(v23, v8);
  sub_128E0(v16, v18, a1);
}

uint64_t sub_193D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v132 = a4;
  v7 = sub_279C(&qword_451B8, &qword_35710);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v117 - v9;
  v11 = sub_279C(&qword_45F20, &qword_34E20);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v117 - v16;
  *v17 = sub_32E14();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = *(sub_279C(&qword_45F28, &qword_34E28) + 44);
  v133 = v17;
  v19 = sub_1A5D8(a1, a2, a3, &v17[v18]);
  (*(*a1 + 520))(v19);
  v20 = type metadata accessor for PerformanceResult();
  if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
  {
    sub_93EC(v10, &qword_451B8, &qword_35710);
    sub_1D910(&v213);
  }

  else
  {
    v131 = v15;
    sub_93EC(v10, &qword_451B8, &qword_35710);
    v130 = sub_32E14();
    LOBYTE(v144) = 1;
    v21 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_lastCheckedLabel + 8);
    *&v213 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_lastCheckedLabel);
    *(&v213 + 1) = v21;
    v22 = sub_1288C();

    v23 = sub_32FE4();
    v124 = v24;
    v125 = v23;
    v129 = v25;
    v126 = v26;
    v27 = (*(*a1 + 424))();
    *&v213 = (*(*a1 + 616))();
    *(&v213 + 1) = v28;
    v128 = v22;
    v29 = sub_32FE4();
    v31 = v30;
    v33 = v32;
    LODWORD(v213) = sub_32ED4();
    v34 = sub_32F94();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_128E0(v29, v31, v33 & 1);

    LOBYTE(v31) = v129 & 1;
    LOBYTE(v213) = v31;
    LOBYTE(v199) = v129 & 1;
    LOBYTE(v191) = 0;
    v41 = v38 & 1;
    LOBYTE(v177) = v38 & 1;
    LODWORD(v127) = 0;
    v129 = v38 & 1;
    v43 = v124;
    v42 = v125;
    sub_12948(v125, v124, v31);
    v44 = v126;

    sub_12948(v34, v36, v41);

    sub_128E0(v34, v36, v41);

    sub_128E0(v42, v43, v213);

    *(&v161 + 1) = v199;
    DWORD1(v161) = *(&v199 + 3);
    *(&v162 + 9) = v191;
    HIDWORD(v162) = *(&v191 + 3);
    DWORD1(v164) = *(&v177 + 3);
    *(&v164 + 1) = v177;
    *&v160 = v42;
    *(&v160 + 1) = v43;
    v165[0] = v42;
    v165[1] = v43;
    LOBYTE(v161) = v31;
    *(&v161 + 1) = v44;
    *&v162 = v27;
    BYTE8(v162) = v127;
    *&v163 = v34;
    *(&v163 + 1) = v36;
    LOBYTE(v164) = v129;
    *(&v164 + 1) = v40;
    v166 = v31;
    *&v167[3] = *(&v199 + 3);
    *v167 = v199;
    v168 = v44;
    v169 = v27;
    v170 = v127;
    *v171 = v191;
    *&v171[3] = *(&v191 + 3);
    v172 = v34;
    v173 = v36;
    v174 = v129;
    *&v175[3] = *(&v177 + 3);
    *v175 = v177;
    v176 = v40;
    sub_33C4(&v160, &v213, &qword_45F40, &qword_34E40);
    v45 = sub_93EC(v165, &qword_45F40, &qword_34E40);
    *&v159[23] = v161;
    *&v159[39] = v162;
    *&v159[55] = v163;
    *&v159[71] = v164;
    *&v159[7] = v160;
    v129 = v144;
    v46 = (*(*a1 + 568))(v45);
    if (v47)
    {
      v48 = v46;
      v49 = v47;
      v127 = sub_32E14();
      LOBYTE(v142[0]) = 1;
      *&v213 = v48;
      *(&v213 + 1) = v49;

      v50 = sub_32FE4();
      v125 = v51;
      LODWORD(v126) = v52;
      v54 = v53;
      v55 = (*(*a1 + 424))();
      v122 = sub_33094();
      *&v213 = sub_33074();
      sub_12A04();
      v120 = sub_33084();
      sub_32E64();
      v56 = sub_32FD4();
      v58 = v57;
      v60 = v59;
      LODWORD(v213) = sub_32ED4();
      v61 = sub_32F94();
      v128 = v49;
      v118 = v62;
      v119 = v63;
      v65 = v64;
      sub_128E0(v56, v58, v60 & 1);

      LOBYTE(v213) = v126 & 1;
      LOBYTE(v199) = v126 & 1;
      v66 = v126 & 1;
      v123 = v126 & 1;
      LOBYTE(v191) = 0;
      v65 &= 1u;
      LOBYTE(v177) = v65;
      LODWORD(v124) = 0;
      LODWORD(v126) = v65;
      v67 = v50;
      v68 = v50;
      v69 = v125;
      sub_12948(v68, v125, v66);
      v70 = v54;

      v71 = v122;

      v72 = v120;

      v73 = v61;
      v121 = v61;
      v74 = v118;
      sub_12948(v61, v118, v65);
      v75 = v119;

      sub_128E0(v73, v74, v65);

      sub_128E0(v67, v69, v213);

      *(&v145 + 1) = v199;
      DWORD1(v145) = *(&v199 + 3);
      *(&v146 + 9) = v191;
      HIDWORD(v146) = *(&v191 + 3);
      DWORD1(v149) = *(v151 + 3);
      *(&v149 + 1) = v151[0];
      *&v144 = v67;
      *(&v144 + 1) = v69;
      *&v177 = v67;
      *(&v177 + 1) = v69;
      LOBYTE(v145) = v123;
      *(&v145 + 1) = v70;
      *&v146 = v55;
      BYTE8(v146) = v124;
      *&v147 = v71;
      *(&v147 + 1) = v72;
      *&v148 = v121;
      *(&v148 + 1) = v74;
      LOBYTE(v149) = v126;
      *(&v149 + 1) = v75;
      LOBYTE(v178) = v123;
      DWORD1(v178) = *(&v199 + 3);
      *(&v178 + 1) = v199;
      *(&v178 + 1) = v70;
      *&v179 = v55;
      BYTE8(v179) = v124;
      *(&v179 + 9) = v191;
      HIDWORD(v179) = *(&v191 + 3);
      *&v180 = v71;
      *(&v180 + 1) = v72;
      *&v181 = v121;
      *(&v181 + 1) = v74;
      LOBYTE(v182) = v126;
      DWORD1(v182) = *(v151 + 3);
      *(&v182 + 1) = v151[0];
      *(&v182 + 1) = v75;
      sub_33C4(&v144, &v213, &qword_45F70, &qword_34E60);
      sub_93EC(&v177, &qword_45F70, &qword_34E60);

      *&v134[39] = v146;
      *&v134[55] = v147;
      *&v134[71] = v148;
      *&v134[87] = v149;
      *&v134[7] = v144;
      *&v134[23] = v145;
      v213 = v127;
      LOBYTE(v214[0]) = v142[0];
      *(&v214[2] + 1) = *&v134[32];
      *(&v214[1] + 1) = *&v134[16];
      *(v214 + 1) = *v134;
      *&v214[6] = *(&v149 + 1);
      *(&v214[5] + 1) = *&v134[80];
      *(&v214[4] + 1) = *&v134[64];
      *(&v214[3] + 1) = *&v134[48];
      sub_1D944(&v213);
    }

    else
    {
      v127 = sub_32E14();
      LOBYTE(v142[0]) = 1;
      v76 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadSpeedLabel + 8);
      *&v213 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadSpeedLabel);
      *(&v213 + 1) = v76;

      v124 = sub_32FE4();
      v125 = v77;
      v79 = v78;
      LODWORD(v126) = v80;
      v81 = (*(*a1 + 424))();
      *&v213 = (*(*a1 + 624))();
      *(&v213 + 1) = v82;
      v83 = sub_32FE4();
      v85 = v84;
      v87 = v86;
      LODWORD(v213) = sub_32ED4();
      v88 = sub_32F94();
      v90 = v89;
      v92 = v91;
      v94 = v93;
      sub_128E0(v83, v85, v87 & 1);

      v95 = v126 & 1;
      LOBYTE(v213) = v95;
      LOBYTE(v199) = v126 & 1;
      LOBYTE(v191) = 0;
      LOBYTE(v177) = v92 & 1;
      LODWORD(v126) = 0;
      LODWORD(v128) = v92 & 1;
      v96 = v124;
      sub_12948(v124, v79, v95);
      v97 = v125;

      sub_12948(v88, v90, v92 & 1);

      sub_128E0(v88, v90, v92 & 1);

      sub_128E0(v96, v79, v213);

      *(&v145 + 1) = v199;
      DWORD1(v145) = *(&v199 + 3);
      *(&v146 + 9) = v191;
      HIDWORD(v146) = *(&v191 + 3);
      DWORD1(v148) = *(v151 + 3);
      *(&v148 + 1) = v151[0];
      *&v144 = v96;
      *(&v144 + 1) = v79;
      *&v177 = v96;
      *(&v177 + 1) = v79;
      LOBYTE(v145) = v95;
      *(&v145 + 1) = v97;
      *&v146 = v81;
      BYTE8(v146) = v126;
      *&v147 = v88;
      *(&v147 + 1) = v90;
      LOBYTE(v148) = v128;
      *(&v148 + 1) = v94;
      LOBYTE(v178) = v95;
      DWORD1(v178) = *(&v199 + 3);
      *(&v178 + 1) = v199;
      *(&v178 + 1) = v97;
      *&v179 = v81;
      BYTE8(v179) = v126;
      *(&v179 + 9) = v191;
      HIDWORD(v179) = *(&v191 + 3);
      *&v180 = v88;
      *(&v180 + 1) = v90;
      LOBYTE(v181) = v128;
      DWORD1(v181) = *(v151 + 3);
      *(&v181 + 1) = v151[0];
      *(&v181 + 1) = v94;
      sub_33C4(&v144, &v213, &qword_45F40, &qword_34E40);
      sub_93EC(&v177, &qword_45F40, &qword_34E40);
      *&v158[23] = v145;
      *&v158[39] = v146;
      *&v158[55] = v147;
      *&v158[71] = v148;
      *&v158[7] = v144;
      v213 = v127;
      LOBYTE(v214[0]) = v142[0];
      *(&v214[1] + 1) = *&v158[16];
      *(v214 + 1) = *v158;
      *&v214[5] = *(&v148 + 1);
      *(&v214[4] + 1) = *&v158[64];
      *(&v214[3] + 1) = *&v158[48];
      *(&v214[2] + 1) = *&v158[32];
      sub_1D938(&v213);
    }

    v203 = v214[3];
    v204 = v214[4];
    v205[0] = v214[5];
    *(v205 + 9) = *(&v214[5] + 9);
    v199 = v213;
    v200 = v214[0];
    v201 = v214[1];
    v202 = v214[2];
    sub_279C(&qword_45F48, &qword_34E48);
    sub_279C(&qword_45F50, &qword_34E50);
    sub_8F50(&qword_45F58, &qword_45F48, &qword_34E48);
    sub_8F50(&qword_45F60, &qword_45F50, &qword_34E50);
    sub_32EC4();
    v181 = v195;
    v182 = v196;
    v183[0] = v197[0];
    *(v183 + 9) = *(v197 + 9);
    v177 = v191;
    v178 = v192;
    v179 = v193;
    v180 = v194;
    v98 = v130;
    v142[0] = v130;
    v142[1] = 0;
    v99 = v129;
    v143[0] = v129;
    *&v143[1] = *v159;
    *&v143[17] = *&v159[16];
    *&v143[80] = *&v159[79];
    *&v143[65] = *&v159[64];
    *&v143[49] = *&v159[48];
    *&v143[33] = *&v159[32];
    v135 = v130;
    v136 = *v143;
    v139 = *&v143[48];
    v140 = *&v143[64];
    v137 = *&v143[16];
    v138 = *&v143[32];
    v147 = v194;
    v146 = v193;
    v145 = v192;
    v144 = v191;
    *(v150 + 9) = *(v197 + 9);
    v150[0] = v197[0];
    v149 = v196;
    v148 = v195;
    *&v141[56] = v194;
    *&v141[40] = v193;
    *v141 = *&v143[80];
    *&v141[24] = v192;
    *&v141[8] = v191;
    *&v141[113] = *(v197 + 9);
    *&v141[104] = v197[0];
    *&v141[88] = v196;
    *&v141[72] = v195;
    sub_33C4(v142, &v213, &qword_45F50, &qword_34E50);
    sub_33C4(&v144, &v213, &qword_45F68, &qword_34E58);
    sub_93EC(&v177, &qword_45F68, &qword_34E58);
    v155 = *&v159[32];
    v156 = *&v159[48];
    *v157 = *&v159[64];
    v153 = *v159;
    v151[0] = v98;
    v151[1] = 0;
    v152 = v99;
    *&v157[15] = *&v159[79];
    v154 = *&v159[16];
    sub_93EC(v151, &qword_45F50, &qword_34E50);
    v210 = *&v141[96];
    v211 = *&v141[112];
    v212 = v141[128];
    v206 = *&v141[32];
    v207 = *&v141[48];
    v208 = *&v141[64];
    v209 = *&v141[80];
    v203 = v139;
    v204 = v140;
    v205[0] = *v141;
    v205[1] = *&v141[16];
    v199 = v135;
    v200 = v136;
    v201 = v137;
    v202 = v138;
    nullsub_1(&v199);
    v219 = v210;
    v220 = v211;
    v221 = v212;
    v215 = v206;
    v216 = v207;
    v217 = v208;
    v218 = v209;
    v214[3] = v203;
    v214[4] = v204;
    v214[5] = v205[0];
    v214[6] = v205[1];
    v213 = v199;
    v214[0] = v200;
    v214[1] = v201;
    v214[2] = v202;
    v15 = v131;
  }

  v100 = v133;
  sub_33C4(v133, v15, &qword_45F20, &qword_34E20);
  v188 = v219;
  v189 = v220;
  v190 = v221;
  v184 = v215;
  v185 = v216;
  v186 = v217;
  v187 = v218;
  v181 = v214[3];
  v182 = v214[4];
  v183[0] = v214[5];
  v183[1] = v214[6];
  v177 = v213;
  v178 = v214[0];
  v179 = v214[1];
  v180 = v214[2];
  v101 = v132;
  sub_33C4(v15, v132, &qword_45F20, &qword_34E20);
  v102 = v101 + *(sub_279C(&qword_45F30, &qword_34E30) + 48);
  v103 = v187;
  v197[6] = v188;
  v197[7] = v189;
  v104 = v183[1];
  v105 = v184;
  v197[2] = v184;
  v197[3] = v185;
  v106 = v185;
  v107 = v186;
  v197[4] = v186;
  v197[5] = v187;
  v108 = v180;
  v109 = v181;
  v195 = v181;
  v196 = v182;
  v110 = v182;
  v111 = v183[0];
  v197[0] = v183[0];
  v197[1] = v183[1];
  v191 = v177;
  v192 = v178;
  v113 = v177;
  v112 = v178;
  v114 = v179;
  v193 = v179;
  v194 = v180;
  v115 = v189;
  *(v102 + 192) = v188;
  *(v102 + 208) = v115;
  *(v102 + 128) = v105;
  *(v102 + 144) = v106;
  *(v102 + 160) = v107;
  *(v102 + 176) = v103;
  *(v102 + 64) = v109;
  *(v102 + 80) = v110;
  *(v102 + 96) = v111;
  *(v102 + 112) = v104;
  *v102 = v113;
  *(v102 + 16) = v112;
  v198 = v190;
  *(v102 + 224) = v190;
  *(v102 + 32) = v114;
  *(v102 + 48) = v108;
  sub_33C4(&v191, &v199, &qword_45F38, &qword_34E38);
  sub_93EC(v100, &qword_45F20, &qword_34E20);
  v210 = v188;
  v211 = v189;
  v212 = v190;
  v206 = v184;
  v207 = v185;
  v208 = v186;
  v209 = v187;
  v203 = v181;
  v204 = v182;
  v205[0] = v183[0];
  v205[1] = v183[1];
  v199 = v177;
  v200 = v178;
  v201 = v179;
  v202 = v180;
  sub_93EC(&v199, &qword_45F38, &qword_34E38);
  return sub_93EC(v15, &qword_45F20, &qword_34E20);
}

uint64_t sub_1A5D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v28 = sub_279C(&qword_45F78, &qword_34E68);
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v28);
  v10 = &v25 - v9;
  v26 = sub_279C(&qword_45F80, &qword_34E70);
  v11 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v13 = &v25 - v12;
  v14 = sub_279C(&qword_45F88, &qword_34E78);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v25 - v18;
  v20 = a2 & 1;
  if ((*(*a1 + 472))(v17))
  {
    v21 = swift_allocObject();
    v25 = &v25;
    *(v21 + 16) = a1;
    *(v21 + 24) = v20;
    *(v21 + 32) = a3;
    __chkstk_darwin(v21);
    *(&v25 - 4) = a1;
    *(&v25 - 24) = v20;
    *(&v25 - 2) = a3;

    sub_279C(&qword_45FB0, &qword_34E88);
    sub_8F50(&qword_45FB8, &qword_45FB0, &qword_34E88);
    sub_33104();
    (*(v15 + 16))(v13, v19, v14);
    swift_storeEnumTagMultiPayload();
    sub_8F50(&qword_45FA0, &qword_45F88, &qword_34E78);
    sub_8F50(&qword_45FA8, &qword_45F78, &qword_34E68);
    sub_32EC4();
    return (*(v15 + 8))(v19, v14);
  }

  else
  {
    v23 = swift_allocObject();
    v25 = &v25;
    *(v23 + 16) = a1;
    *(v23 + 24) = v20;
    *(v23 + 32) = a3;
    __chkstk_darwin(v23);
    *(&v25 - 4) = a1;
    *(&v25 - 24) = v20;
    *(&v25 - 2) = a3;

    sub_279C(&qword_45F90, &qword_34E80);
    sub_8F50(&qword_45F98, &qword_45F90, &qword_34E80);
    sub_33104();
    v24 = v28;
    (*(v7 + 16))(v13, v10, v28);
    swift_storeEnumTagMultiPayload();
    sub_8F50(&qword_45FA0, &qword_45F88, &qword_34E78);
    sub_8F50(&qword_45FA8, &qword_45F78, &qword_34E68);
    sub_32EC4();
    return (*(v7 + 8))(v10, v24);
  }
}

uint64_t sub_1AB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_279C(&qword_45FC8, &qword_352F0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v35 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v34 = &v31[-v9];
  v10 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_cancelDownloadLabel + 8);
  v36 = *(a1 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_cancelDownloadLabel);
  v37 = v10;
  sub_1288C();

  v11 = sub_32FE4();
  v13 = v12;
  v15 = v14;
  v36 = sub_33034();
  sub_12A04();
  v36 = sub_33084();
  v16 = sub_32F94();
  v18 = v17;
  v32 = v19;
  v33 = v20;
  sub_128E0(v11, v13, v15 & 1);

  v22 = (*(*a1 + 424))(v21);
  v23 = v34;
  sub_32CE4();
  v24 = (v23 + *(v5 + 44));
  v25 = *(sub_279C(&qword_45FD0, &qword_34EA0) + 28);
  v26 = enum case for ControlSize.small(_:);
  v27 = sub_32CD4();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  v28 = v35;
  sub_33C4(v23, v35, &qword_45FC8, &qword_352F0);
  *a2 = v16;
  *(a2 + 8) = v18;
  LOBYTE(v26) = v32 & 1;
  *(a2 + 16) = v32 & 1;
  *(a2 + 24) = v33;
  *(a2 + 32) = v22;
  *(a2 + 40) = 0;
  v29 = sub_279C(&qword_45FD8, &qword_34ED8);
  sub_33C4(v28, a2 + *(v29 + 64), &qword_45FC8, &qword_352F0);
  sub_12948(v16, v18, v26);

  sub_93EC(v23, &qword_45FC8, &qword_352F0);
  sub_93EC(v28, &qword_45FC8, &qword_352F0);
  sub_128E0(v16, v18, v26);
}

void sub_1AE50(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  type metadata accessor for InfoViewModel();
  sub_30E5C();
  sub_279C(&qword_457C8, &qword_34300);
  sub_330F4();
  sub_121D8();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8 & 1;
}

uint64_t sub_1AF48()
{
  v0 = sub_1B158();

  return NavigationStack.init<>(root:)(sub_1AFA4, 0, &type metadata for ServerView, v0);
}

uint64_t sub_1AFA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_32AC4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for CachingServer();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v19[-v11];
  v13 = type metadata accessor for MockContentCacheService();
  v14 = sub_268CC();
  sub_32AB4();
  sub_1759C(v5, 0xD000000000000013, 0x800000000003B2F0, 0, 1, 0, 0, 1, v12);
  type metadata accessor for ServerViewModel();
  v20[3] = v13;
  v20[4] = &off_41AF0;
  v20[0] = v14;
  sub_15954(v12, v10);

  v15 = sub_503C(v20, v10);
  v19[7] = 0;
  sub_330C4();

  result = sub_1B4D4(v12);
  v17 = v20[0];
  v18 = v20[1];
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  return result;
}

unint64_t sub_1B158()
{
  result = qword_45EA8;
  if (!qword_45EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45EA8);
  }

  return result;
}

unint64_t sub_1B1CC()
{
  result = qword_45EB0;
  if (!qword_45EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45EB0);
  }

  return result;
}

uint64_t sub_1B23C(uint64_t a1)
{
  v2 = sub_1B480();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_1B288(uint64_t a1)
{
  v2 = sub_1B480();

  return static PreviewProvider._platform.getter(a1, v2);
}

__n128 sub_1B2D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B2E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B330(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B390()
{
  sub_8BD0(&qword_45E88, &qword_34C90);
  sub_8F50(&qword_45EA0, &qword_45E88, &qword_34C90);
  sub_1267C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1B480()
{
  result = qword_45EC8;
  if (!qword_45EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_45EC8);
  }

  return result;
}

uint64_t sub_1B4D4(uint64_t a1)
{
  v2 = type metadata accessor for CachingServer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B530(uint64_t a1)
{
  __chkstk_darwin(a1);
  __dst = v2;
  v3 = *(v1 + 16);
  v199 = sub_32E14();
  LOBYTE(v326) = 1;
  v4 = *(v3 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_addressLabel + 8);
  *&__src[0] = *(v3 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_addressLabel);
  *(&__src[0] + 1) = v4;
  sub_1288C();

  v197 = sub_32FE4();
  v6 = v5;
  v203 = v7;
  v200 = v8;
  v9 = (*(*v3 + 424))();
  v10 = OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server;
  v208 = type metadata accessor for CachingServer();
  v11 = (v3 + v208[6] + v10);
  v12 = v11[1];
  *&__src[0] = *v11;
  *(&__src[0] + 1) = v12;

  v13 = sub_32FE4();
  v15 = v14;
  v17 = v16;
  LODWORD(__src[0]) = sub_32ED4();
  v18 = sub_32F94();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_128E0(v13, v15, v17 & 1);

  LOBYTE(__src[0]) = v203 & 1;
  LOBYTE(v337) = v203 & 1;
  LOBYTE(v330) = 0;
  LOBYTE(v328) = v22 & 1;
  sub_12948(v197, v6, v203 & 1);

  sub_12948(v18, v20, v22 & 1);

  sub_128E0(v18, v20, v22 & 1);

  sub_128E0(v197, v6, v203 & 1);

  *(&v220 + 1) = v337;
  DWORD1(v220) = *(&v337 + 3);
  *(&v221 + 9) = v330;
  HIDWORD(v221) = *(&v330 + 3);
  DWORD1(v223) = *(&v328 + 3);
  *(&v223 + 1) = v328;
  *&v219 = v197;
  *(&v219 + 1) = v6;
  v224[0] = v197;
  v224[1] = v6;
  LOBYTE(v220) = v203 & 1;
  *(&v220 + 1) = v200;
  *&v221 = v9;
  BYTE8(v221) = 0;
  *&v222 = v18;
  *(&v222 + 1) = v20;
  LOBYTE(v223) = v22 & 1;
  *(&v223 + 1) = v24;
  v225 = v203 & 1;
  *&v226[3] = *(&v337 + 3);
  *v226 = v337;
  v227 = v200;
  v228 = v9;
  v229 = 0;
  *v230 = v330;
  *&v230[3] = *(&v330 + 3);
  v231 = v18;
  v232 = v20;
  v233 = v22 & 1;
  *&v234[3] = *(&v328 + 3);
  *v234 = v328;
  v235 = v24;
  sub_33C4(&v219, __src, &qword_45F40, &qword_34E40);
  sub_93EC(v224, &qword_45F40, &qword_34E40);
  *&v218[23] = v220;
  *&v218[39] = v221;
  *&v218[55] = v222;
  *&v218[71] = v223;
  *&v218[7] = v219;
  v198 = v326;
  v196 = sub_32E14();
  LOBYTE(v366[0]) = 1;
  v25 = *(v3 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_guidLabel + 8);
  *&__src[0] = *(v3 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_guidLabel);
  *(&__src[0] + 1) = v25;

  v26 = sub_32FE4();
  v28 = v27;
  LOBYTE(v10) = v29;
  v31 = v30;
  v207 = v3;
  v32 = (*(*v3 + 424))();
  v33 = v3 + v208[5] + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server;
  *&__src[0] = sub_32AA4();
  *(&__src[0] + 1) = v34;
  v35 = sub_32FE4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  KeyPath = swift_getKeyPath();
  v43 = swift_getKeyPath();
  v39 &= 1u;
  LOBYTE(__src[0]) = v39;
  v44 = sub_32ED4();
  LOBYTE(v10) = v10 & 1;
  LOBYTE(v328) = v10;
  LOBYTE(v326) = 0;
  *&v337 = v35;
  *(&v337 + 1) = v37;
  v338[0] = v39;
  *&v338[8] = v41;
  *&v338[16] = KeyPath;
  v338[24] = 2;
  *&v338[32] = v43;
  v338[40] = 1;
  *&v338[44] = v44;
  *&v382[55] = *&v338[32];
  *&v382[39] = *&v338[16];
  *&v382[23] = *v338;
  *&v382[7] = v337;
  *&__src[0] = v35;
  *(&__src[0] + 1) = v37;
  LOBYTE(__src[1]) = v39;
  *(&__src[1] + 1) = v41;
  *&__src[2] = KeyPath;
  BYTE8(__src[2]) = 2;
  *&__src[3] = v43;
  BYTE8(__src[3]) = 1;
  HIDWORD(__src[3]) = v44;
  sub_12948(v26, v28, v10);

  sub_33C4(&v337, &v330, &qword_46058, &qword_34FE8);
  sub_93EC(__src, &qword_46058, &qword_34FE8);
  sub_128E0(v26, v28, v10);

  *&v238[25] = *&v382[16];
  *&v238[41] = *&v382[32];
  *&v238[57] = *&v382[48];
  *&v238[9] = *v382;
  *v238 = v32;
  v243 = v32;
  *&v248[15] = *&v382[63];
  *v248 = *&v382[48];
  v247 = *&v382[32];
  *(&v237 + 1) = v337;
  *&v236 = v26;
  *(&v236 + 1) = v28;
  LOBYTE(v237) = v10;
  DWORD1(v237) = *(&v337 + 3);
  *(&v237 + 1) = v31;
  v238[8] = 0;
  *&v238[72] = *&v382[63];
  v239[0] = v26;
  v239[1] = v28;
  v240 = v10;
  *&v241[3] = *(&v337 + 3);
  *v241 = v337;
  v242 = v31;
  v244 = 0;
  v246 = *&v382[16];
  v245 = *v382;
  sub_33C4(&v236, __src, &qword_45FF0, &qword_34F28);
  sub_93EC(v239, &qword_45FF0, &qword_34F28);
  *&v217[55] = *&v238[16];
  *&v217[71] = *&v238[32];
  *&v217[87] = *&v238[48];
  *&v217[103] = *&v238[64];
  *&v217[7] = v236;
  *&v217[23] = v237;
  *&v217[39] = *v238;
  v195 = v366[0];
  v194 = sub_32E14();
  LOBYTE(v326) = 1;
  v45 = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_typeLabel + 8);
  *&__src[0] = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_typeLabel);
  *(&__src[0] + 1) = v45;

  v46 = sub_32FE4();
  v48 = v47;
  LOBYTE(v200) = v49;
  v204 = v50;
  v51 = (*(*v207 + 424))();
  v52 = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server + v208[9]);
  *&__src[0] = sub_23CDC();
  *(&__src[0] + 1) = v53;
  v54 = sub_32FE4();
  v56 = v55;
  v58 = v57;
  LODWORD(__src[0]) = sub_32ED4();
  v59 = sub_32F94();
  v61 = v60;
  LOBYTE(v26) = v62;
  v64 = v63;
  sub_128E0(v54, v56, v58 & 1);

  LOBYTE(__src[0]) = v200 & 1;
  LOBYTE(v337) = v200 & 1;
  LOBYTE(v330) = 0;
  LOBYTE(v328) = v26 & 1;
  sub_12948(v46, v48, v200 & 1);

  sub_12948(v59, v61, v26 & 1);

  sub_128E0(v59, v61, v26 & 1);

  sub_128E0(v46, v48, __src[0]);

  *(&v250 + 1) = v337;
  DWORD1(v250) = *(&v337 + 3);
  *(&v251 + 9) = v330;
  HIDWORD(v251) = *(&v330 + 3);
  DWORD1(v253) = *(&v328 + 3);
  *(&v253 + 1) = v328;
  *&v249 = v46;
  *(&v249 + 1) = v48;
  v254[0] = v46;
  v254[1] = v48;
  LOBYTE(v250) = v200 & 1;
  *(&v250 + 1) = v204;
  *&v251 = v51;
  BYTE8(v251) = 0;
  *&v252 = v59;
  *(&v252 + 1) = v61;
  LOBYTE(v253) = v26 & 1;
  *(&v253 + 1) = v64;
  v255 = v200 & 1;
  *&v256[3] = *(&v337 + 3);
  *v256 = v337;
  v257 = v204;
  v258 = v51;
  v259 = 0;
  *v260 = v330;
  *&v260[3] = *(&v330 + 3);
  v261 = v59;
  v262 = v61;
  v263 = v26 & 1;
  *&v264[3] = *(&v328 + 3);
  *v264 = v328;
  v265 = v64;
  sub_33C4(&v249, __src, &qword_45F40, &qword_34E40);
  sub_93EC(v254, &qword_45F40, &qword_34E40);
  *&v216[23] = v250;
  *&v216[39] = v251;
  *&v216[55] = v252;
  *&v216[71] = v253;
  *&v216[7] = v249;
  v193 = v326;
  v192 = sub_32E14();
  LOBYTE(v330) = 1;
  sub_18E5C(v207, __src);
  v268 = __src[2];
  v269 = __src[3];
  v270 = __src[4];
  v267 = __src[1];
  v266 = __src[0];
  v271[2] = __src[2];
  v271[3] = __src[3];
  v271[4] = __src[4];
  v271[1] = __src[1];
  v271[0] = __src[0];
  sub_33C4(&v266, &v337, &qword_45F40, &qword_34E40);
  sub_93EC(v271, &qword_45F40, &qword_34E40);
  *&v215[23] = v267;
  *&v215[39] = v268;
  *&v215[55] = v269;
  *&v215[71] = v270;
  *&v215[7] = v266;
  v191 = v330;
  v190 = sub_32E14();
  LOBYTE(v328) = 1;
  v65 = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_healthLabel + 8);
  *&__src[0] = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_healthLabel);
  *(&__src[0] + 1) = v65;

  v66 = sub_32FE4();
  v180 = v67;
  v183 = v66;
  v69 = v68;
  v187 = v70;
  v71 = (*(*v207 + 424))();
  if (*(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server + v208[8]) < 1)
  {
    v85 = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_badLabel + 8);
    *&__src[0] = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_badLabel);
    *(&__src[0] + 1) = v85;

    v86 = sub_32FE4();
    v88 = v87;
    v90 = v89;
    LODWORD(__src[0]) = sub_32ED4();
    v91 = sub_32F94();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    sub_128E0(v86, v88, v90 & 1);

    *&v337 = v91;
    *(&v337 + 1) = v93;
    *v338 = v95 & 1;
    *&v338[8] = v97;
    v338[16] = 1;
  }

  else
  {
    v72 = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_goodLabel + 8);
    *&__src[0] = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_goodLabel);
    *(&__src[0] + 1) = v72;

    v73 = sub_32FE4();
    v75 = v74;
    v77 = v76;
    LODWORD(__src[0]) = sub_32ED4();
    v78 = sub_32F94();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    sub_128E0(v73, v75, v77 & 1);

    *&v337 = v78;
    *(&v337 + 1) = v80;
    *v338 = v82 & 1;
    *&v338[8] = v84;
    v338[16] = 0;
  }

  sub_32EC4();
  v201 = __src[0];
  v205 = __src[1];
  v98 = __src[2];
  LOBYTE(__src[0]) = v69 & 1;
  LOBYTE(v337) = 0;
  LOBYTE(v330) = __src[2];
  sub_12948(v183, v180, v69 & 1);

  sub_1DF5C(v201, *(&v201 + 1), v205);
  sub_1DF98(v201, *(&v201 + 1), v205);
  sub_128E0(v183, v180, v69 & 1);

  *(&v273 + 1) = v337;
  DWORD1(v273) = *(&v337 + 3);
  *(&v274 + 9) = v330;
  HIDWORD(v274) = *(&v330 + 3);
  *&v272 = v183;
  *(&v272 + 1) = v180;
  LOBYTE(v273) = v69 & 1;
  *(&v273 + 1) = v187;
  *&v274 = v71;
  BYTE8(v274) = 0;
  v276 = v205;
  v275 = v201;
  v277 = v98;
  v278[0] = v183;
  v278[1] = v180;
  v279 = v69 & 1;
  *&v280[3] = *(&v337 + 3);
  *v280 = v337;
  v281 = v187;
  v282 = v71;
  v283 = 0;
  *v284 = v330;
  *&v284[3] = *(&v330 + 3);
  v285 = v201;
  v286 = v205;
  v287 = v98;
  sub_33C4(&v272, __src, &qword_45FF8, &qword_34F30);
  sub_93EC(v278, &qword_45FF8, &qword_34F30);
  *&v214[39] = v274;
  *&v214[55] = v275;
  *&v214[71] = v276;
  v214[87] = v277;
  *&v214[7] = v272;
  *&v214[23] = v273;
  v206 = v328;
  v202 = sub_32E14();
  LOBYTE(v318[0]) = 1;
  v99 = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_inFavoredLabel + 8);
  *&__src[0] = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_inFavoredLabel);
  *(&__src[0] + 1) = v99;

  v100 = sub_32FE4();
  v181 = v101;
  v184 = v100;
  v178 = v102;
  v188 = v103;
  v104 = (*(*v207 + 424))();
  if (*(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server + v208[10]) == 1)
  {
    v174 = sub_33094();
    v105 = sub_32F64();
    v106 = swift_getKeyPath();
    v176 = sub_32ED4();
    sub_32E64();
    v107 = sub_32FD4();
    v109 = v108;
    v111 = v110;
    LODWORD(__src[0]) = sub_32ED4();
    v112 = sub_32F94();
    v114 = v113;
    v116 = v115;
    v118 = v117;
    sub_128E0(v107, v109, v111 & 1);

    LOBYTE(v328) = v116 & 1;

    sub_12948(v112, v114, v116 & 1);

    sub_12948(v112, v114, v116 & 1);

    sub_128E0(v112, v114, v116 & 1);

    LOBYTE(v330) = 0;
    *&__src[0] = v174;
    *(&__src[0] + 1) = v106;
    *&__src[1] = v105;
    DWORD2(__src[1]) = v176;
    *&__src[2] = v112;
    *(&__src[2] + 1) = v114;
    LOBYTE(__src[3]) = v116 & 1;
    *(&__src[3] + 1) = v118;
    LOBYTE(__src[4]) = 0;
    sub_279C(&qword_46040, &qword_34F78);
    sub_8F50(&qword_46048, &qword_46040, &qword_34F78);
    sub_32EC4();
    sub_128E0(v112, v114, v116 & 1);

    __src[2] = *&v338[16];
    __src[3] = *&v338[32];
    LOBYTE(__src[4]) = v338[48];
    __src[0] = v337;
    __src[1] = *v338;
  }

  else
  {
    sub_32E64();
    v119 = sub_32FD4();
    v121 = v120;
    v123 = v122;
    LODWORD(__src[0]) = sub_32ED4();
    v124 = sub_32F94();
    v126 = v125;
    v128 = v127;
    v130 = v129;
    sub_128E0(v119, v121, v123 & 1);

    LOBYTE(v326) = v128 & 1;
    LOBYTE(v366[0]) = 1;
    *&v337 = v124;
    *(&v337 + 1) = v126;
    v338[0] = v128 & 1;
    *&v338[1] = v328;
    *&v338[4] = *(&v328 + 3);
    *&v338[8] = v130;
    *&v338[16] = v330;
    *&v338[32] = *v331;
    v338[48] = 1;
    sub_279C(&qword_46040, &qword_34F78);
    sub_8F50(&qword_46048, &qword_46040, &qword_34F78);
    sub_32EC4();
  }

  *&v338[16] = __src[2];
  *&v338[32] = __src[3];
  *&v331[32] = __src[3];
  *&v331[16] = __src[2];
  *v338 = __src[1];
  v337 = __src[0];
  *v331 = __src[1];
  v330 = __src[0];
  v338[48] = __src[4];
  LOBYTE(v326) = v178 & 1;
  LOBYTE(v366[0]) = 0;
  v331[48] = __src[4];
  *&v383[7] = __src[0];
  v383[71] = __src[4];
  *&v383[55] = __src[3];
  *&v383[39] = __src[2];
  *&v383[23] = __src[1];
  sub_12948(v184, v181, v178 & 1);

  sub_33C4(&v330, &v328, &qword_46050, &qword_34F80);
  sub_93EC(&v337, &qword_46050, &qword_34F80);
  sub_128E0(v184, v181, v178 & 1);

  *(&v289 + 1) = v337;
  DWORD1(v289) = *(&v337 + 3);
  *&v290[9] = *v383;
  *&v290[73] = *&v383[64];
  *&v288 = v184;
  *(&v288 + 1) = v181;
  LOBYTE(v289) = v178 & 1;
  *(&v289 + 1) = v188;
  *v290 = v104;
  v290[8] = 0;
  *&v290[57] = *&v383[48];
  *&v290[41] = *&v383[32];
  *&v290[25] = *&v383[16];
  v291[0] = v184;
  v291[1] = v181;
  v292 = v178 & 1;
  *&v293[3] = *(&v337 + 3);
  *v293 = v337;
  v294 = v188;
  v295 = v104;
  v296 = 0;
  v297 = *v383;
  v301 = *&v383[64];
  v300 = *&v383[48];
  v299 = *&v383[32];
  v298 = *&v383[16];
  sub_33C4(&v288, __src, &qword_46000, &qword_34F38);
  sub_93EC(v291, &qword_46000, &qword_34F38);
  *&v213[71] = *&v290[32];
  *&v213[87] = *&v290[48];
  *&v213[103] = *&v290[64];
  *&v213[7] = v288;
  *&v213[23] = v289;
  *&v213[39] = *v290;
  v213[119] = v290[80];
  *&v213[55] = *&v290[16];
  v189 = v318[0];
  v185 = sub_32E14();
  LOBYTE(v318[0]) = 1;
  v131 = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_reachableLabel + 8);
  *&__src[0] = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_reachableLabel);
  *(&__src[0] + 1) = v131;

  v132 = sub_32FE4();
  v177 = v133;
  v179 = v132;
  v175 = v134;
  v182 = v135;
  v136 = (*(*v207 + 424))(v132, v133);
  if (*(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_server + v208[11]) == 1)
  {
    v137 = sub_33094();
    v209 = sub_32F64();
    v138 = swift_getKeyPath();
    *&__src[0] = sub_33054();
    sub_12A04();
    v172 = sub_33084();
    v139 = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_yesLabel + 8);
    *&__src[0] = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_yesLabel);
    *(&__src[0] + 1) = v139;

    v140 = sub_32FE4();
    v142 = v141;
    v144 = v143;
    LODWORD(__src[0]) = sub_32ED4();
    v145 = sub_32F94();
    v147 = v146;
    v149 = v148;
    v151 = v150;
    sub_128E0(v140, v142, v144 & 1);

    v152 = v149 & 1;
    LOBYTE(v328) = v149 & 1;

    sub_12948(v145, v147, v149 & 1);

    sub_12948(v145, v147, v149 & 1);

    sub_128E0(v145, v147, v149 & 1);

    LOBYTE(v330) = 0;
    *&__src[0] = v137;
    *(&__src[0] + 1) = v138;
    *&__src[1] = v209;
    *(&__src[1] + 1) = v172;
    *&__src[2] = v145;
    *(&__src[2] + 1) = v147;
    LOBYTE(__src[3]) = v149 & 1;
    *(&__src[3] + 1) = v151;
    LOBYTE(__src[4]) = 0;
    sub_279C(&qword_45860, &qword_344C8);
    sub_8F50(&qword_46030, &qword_45860, &qword_344C8);
    sub_32EC4();
    v153 = v145;
    v154 = v147;
  }

  else
  {
    v155 = sub_33094();
    v210 = sub_32F64();
    v156 = swift_getKeyPath();
    *&__src[0] = sub_33034();
    sub_12A04();
    v173 = sub_33084();
    v157 = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_noLabel + 8);
    *&__src[0] = *(v207 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_noLabel);
    *(&__src[0] + 1) = v157;

    v158 = sub_32FE4();
    v160 = v159;
    v162 = v161;
    LODWORD(__src[0]) = sub_32ED4();
    v163 = sub_32F94();
    v165 = v164;
    v167 = v166;
    v169 = v168;
    sub_128E0(v158, v160, v162 & 1);

    v152 = v167 & 1;
    LOBYTE(v328) = v167 & 1;

    sub_12948(v163, v165, v167 & 1);

    sub_12948(v163, v165, v167 & 1);

    sub_128E0(v163, v165, v167 & 1);

    LOBYTE(v330) = 1;
    *&__src[0] = v155;
    *(&__src[0] + 1) = v156;
    *&__src[1] = v210;
    *(&__src[1] + 1) = v173;
    *&__src[2] = v163;
    *(&__src[2] + 1) = v165;
    LOBYTE(__src[3]) = v167 & 1;
    *(&__src[3] + 1) = v169;
    LOBYTE(__src[4]) = 1;
    sub_279C(&qword_45860, &qword_344C8);
    sub_8F50(&qword_46030, &qword_45860, &qword_344C8);
    sub_32EC4();
    v153 = v163;
    v154 = v165;
  }

  sub_128E0(v153, v154, v152);

  __src[2] = *&v338[16];
  __src[3] = *&v338[32];
  LOBYTE(__src[4]) = v338[48];
  __src[0] = v337;
  __src[1] = *v338;
  *v331 = *v338;
  v330 = v337;
  *&v384[7] = v337;
  *&v331[16] = *&v338[16];
  *&v331[32] = *&v338[32];
  *&v384[55] = *&v338[32];
  *&v384[39] = *&v338[16];
  *&v384[23] = *v338;
  LOBYTE(v326) = v175 & 1;
  LOBYTE(v366[0]) = 0;
  v331[48] = v338[48];
  v384[71] = v338[48];
  sub_12948(v179, v177, v175 & 1);

  sub_33C4(&v330, &v328, &qword_46038, &qword_34F70);
  sub_93EC(&v337, &qword_46038, &qword_34F70);
  sub_128E0(v179, v177, v175 & 1);

  *&v304[9] = *v384;
  *&v304[57] = *&v384[48];
  *&v304[41] = *&v384[32];
  *&v304[25] = *&v384[16];
  *v304 = v136;
  v309 = v136;
  *(&v303 + 1) = v337;
  DWORD1(v303) = *(&v337 + 3);
  *&v304[73] = *&v384[64];
  *&v302 = v179;
  *(&v302 + 1) = v177;
  LOBYTE(v303) = v175 & 1;
  *(&v303 + 1) = v182;
  v304[8] = 0;
  v305[0] = v179;
  v305[1] = v177;
  v306 = v175 & 1;
  *&v307[3] = *(&v337 + 3);
  *v307 = v337;
  v308 = v182;
  v310 = 0;
  v311 = *v384;
  v315 = *&v384[64];
  v314 = *&v384[48];
  v313 = *&v384[32];
  v312 = *&v384[16];
  sub_33C4(&v302, __src, &qword_46008, &qword_34F40);
  sub_93EC(v305, &qword_46008, &qword_34F40);
  *&v212[71] = *&v304[32];
  *&v212[87] = *&v304[48];
  *&v212[103] = *&v304[64];
  v212[119] = v304[80];
  *&v212[7] = v302;
  *&v212[23] = v303;
  *&v212[39] = *v304;
  *&v212[55] = *&v304[16];
  v170 = v318[0];
  v316 = v199;
  v317[0] = v198;
  *&v317[1] = *v218;
  *&v317[17] = *&v218[16];
  *&v317[80] = *&v218[79];
  *&v317[65] = *&v218[64];
  *&v317[49] = *&v218[48];
  *&v317[33] = *&v218[32];
  __src[0] = v199;
  __src[1] = *v317;
  *&__src[6] = *&v317[80];
  __src[4] = *&v317[48];
  __src[5] = *&v317[64];
  __src[2] = *&v317[16];
  __src[3] = *&v317[32];
  v318[0] = v196;
  v318[1] = 0;
  v319[0] = v195;
  *&v319[49] = *&v217[48];
  *&v319[33] = *&v217[32];
  *&v319[17] = *&v217[16];
  *&v319[1] = *v217;
  *&v319[112] = *&v217[111];
  *&v319[97] = *&v217[96];
  *&v319[81] = *&v217[80];
  *&v319[65] = *&v217[64];
  *(&__src[6] + 8) = v196;
  *(&__src[10] + 8) = *&v319[48];
  *(&__src[9] + 8) = *&v319[32];
  *(&__src[8] + 8) = *&v319[16];
  *(&__src[7] + 8) = *v319;
  *(&__src[14] + 1) = *&v319[112];
  *(&__src[13] + 8) = *&v319[96];
  *(&__src[12] + 8) = *&v319[80];
  *(&__src[11] + 8) = *&v319[64];
  v320 = v194;
  v321[0] = v193;
  *&v321[1] = *v216;
  *&v321[17] = *&v216[16];
  *&v321[65] = *&v216[64];
  *&v321[49] = *&v216[48];
  *&v321[33] = *&v216[32];
  *&v321[80] = *&v216[79];
  __src[15] = v194;
  __src[16] = *v321;
  __src[19] = *&v321[48];
  __src[20] = *&v321[64];
  __src[17] = *&v321[16];
  __src[18] = *&v321[32];
  v322[0] = v192;
  v322[1] = 0;
  v323[0] = v191;
  *&v323[1] = *v215;
  *&v323[17] = *&v215[16];
  *&v323[80] = *&v215[79];
  *&v323[65] = *&v215[64];
  *&v323[49] = *&v215[48];
  *&v323[33] = *&v215[32];
  *(&__src[21] + 8) = v192;
  *(&__src[22] + 8) = *v323;
  *(&__src[25] + 8) = *&v323[48];
  *(&__src[26] + 8) = *&v323[64];
  *(&__src[23] + 8) = *&v323[16];
  *(&__src[24] + 8) = *&v323[32];
  *&__src[21] = *&v216[79];
  *(&__src[27] + 1) = *&v323[80];
  v324 = v190;
  v325[0] = v206;
  *&v325[17] = *&v214[16];
  *&v325[1] = *v214;
  *&v325[81] = *&v214[80];
  *&v325[65] = *&v214[64];
  *&v325[49] = *&v214[48];
  *&v325[33] = *&v214[32];
  *(&__src[33] + 9) = *&v325[73];
  __src[28] = v190;
  __src[29] = *v325;
  __src[32] = *&v325[48];
  __src[33] = *&v325[64];
  __src[30] = *&v325[16];
  __src[31] = *&v325[32];
  v326 = v202;
  v327[0] = v189;
  *&v327[49] = *&v213[48];
  *&v327[33] = *&v213[32];
  *&v327[17] = *&v213[16];
  *&v327[1] = *v213;
  *&v327[113] = *&v213[112];
  *&v327[97] = *&v213[96];
  *&v327[81] = *&v213[80];
  *&v327[65] = *&v213[64];
  *(&__src[42] + 9) = *&v327[105];
  __src[37] = *&v327[16];
  __src[38] = *&v327[32];
  __src[35] = v202;
  __src[36] = *v327;
  __src[41] = *&v327[80];
  __src[42] = *&v327[96];
  __src[39] = *&v327[48];
  __src[40] = *&v327[64];
  v328 = v185;
  v329[0] = v170;
  *&v329[17] = *&v212[16];
  *&v329[1] = *v212;
  *&v329[81] = *&v212[80];
  *&v329[65] = *&v212[64];
  *&v329[97] = *&v212[96];
  *&v329[113] = *&v212[112];
  *&v329[33] = *&v212[32];
  *&v329[49] = *&v212[48];
  *(&__src[51] + 9) = *&v329[105];
  __src[46] = *&v329[16];
  __src[47] = *&v329[32];
  __src[44] = v185;
  __src[45] = *v329;
  __src[51] = *&v329[96];
  __src[49] = *&v329[64];
  __src[50] = *&v329[80];
  __src[48] = *&v329[48];
  memcpy(__dst, __src, 0x349uLL);
  v333 = *&v212[64];
  v334 = *&v212[80];
  v335 = *&v212[96];
  *&v331[1] = *v212;
  *&v331[17] = *&v212[16];
  *&v331[33] = *&v212[32];
  v330 = v185;
  v331[0] = v170;
  v336 = *&v212[112];
  v332 = *&v212[48];
  sub_33C4(&v316, &v337, &qword_45F50, &qword_34E50);
  sub_33C4(v318, &v337, &qword_46010, &qword_34F48);
  sub_33C4(&v320, &v337, &qword_45F50, &qword_34E50);
  sub_33C4(v322, &v337, &qword_45F50, &qword_34E50);
  sub_33C4(&v324, &v337, &qword_46018, &qword_34F50);
  sub_33C4(&v326, &v337, &qword_46020, &qword_34F58);
  sub_33C4(&v328, &v337, &qword_46028, &unk_34F60);
  sub_93EC(&v330, &qword_46028, &unk_34F60);
  v340 = *&v213[64];
  v341 = *&v213[80];
  v342 = *&v213[96];
  *&v338[1] = *v213;
  *&v338[17] = *&v213[16];
  *&v338[33] = *&v213[32];
  v337 = v202;
  v338[0] = v189;
  v343 = *&v213[112];
  v339 = *&v213[48];
  sub_93EC(&v337, &qword_46020, &qword_34F58);
  v348 = *&v214[32];
  v349 = *&v214[48];
  v350 = *&v214[64];
  v346 = *v214;
  v344[0] = v190;
  v344[1] = 0;
  v345 = v206;
  v351 = *&v214[80];
  v347 = *&v214[16];
  sub_93EC(v344, &qword_46018, &qword_34F50);
  v356 = *&v215[32];
  v357 = *&v215[48];
  *v358 = *&v215[64];
  v354 = *v215;
  v352[0] = v192;
  v352[1] = 0;
  v353 = v191;
  *&v358[15] = *&v215[79];
  v355 = *&v215[16];
  sub_93EC(v352, &qword_45F50, &qword_34E50);
  v363 = *&v216[32];
  v364 = *&v216[48];
  *v365 = *&v216[64];
  v361 = *v216;
  v359[0] = v194;
  v359[1] = 0;
  v360 = v193;
  *&v365[15] = *&v216[79];
  v362 = *&v216[16];
  sub_93EC(v359, &qword_45F50, &qword_34E50);
  v372 = *&v217[64];
  v373 = *&v217[80];
  *v374 = *&v217[96];
  v368 = *v217;
  v369 = *&v217[16];
  v370 = *&v217[32];
  v366[0] = v196;
  v366[1] = 0;
  v367 = v195;
  *&v374[15] = *&v217[111];
  v371 = *&v217[48];
  sub_93EC(v366, &qword_46010, &qword_34F48);
  v375[0] = v199;
  v375[1] = 0;
  v376 = v198;
  v379 = *&v218[32];
  v380 = *&v218[48];
  *v381 = *&v218[64];
  *&v381[15] = *&v218[79];
  v377 = *v218;
  v378 = *&v218[16];
  return sub_93EC(v375, &qword_45F50, &qword_34E50);
}

double sub_1D910(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1D998@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v20 = sub_32E14();
  v24 = 1;
  v4 = *(v3 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadTestLabel + 8);
  *v23 = *(v3 + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_downloadTestLabel);
  *&v23[8] = v4;
  sub_1288C();

  v5 = sub_32FE4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = (*(*v3 + 424))();
  v13 = sub_33094();
  v14 = sub_32F34();
  KeyPath = swift_getKeyPath();
  v23[0] = v9 & 1;
  sub_12948(v5, v7, v9 & 1);

  sub_128E0(v5, v7, v9 & 1);

  *(&v26 + 1) = *v22;
  DWORD1(v26) = *&v22[3];
  *(&v27 + 9) = *v21;
  HIDWORD(v27) = *&v21[3];
  v29 = v14;
  v30[0] = v5;
  *&v25 = v5;
  *(&v25 + 1) = v7;
  LOBYTE(v26) = v9 & 1;
  *(&v26 + 1) = v11;
  *&v27 = v12;
  BYTE8(v27) = 0;
  *&v28 = v13;
  *(&v28 + 1) = KeyPath;
  v30[1] = v7;
  v31 = v9 & 1;
  *&v32[3] = *&v22[3];
  *v32 = *v22;
  v33 = v11;
  v34 = v12;
  v35 = 0;
  *v36 = *v21;
  *&v36[3] = *&v21[3];
  v37 = v13;
  v38 = KeyPath;
  v39 = v14;
  sub_33C4(&v25, v23, &qword_45FE0, &qword_34EE0);
  sub_93EC(v30, &qword_45FE0, &qword_34EE0);
  *&v23[7] = v25;
  *&v23[55] = v28;
  *&v23[39] = v27;
  *&v23[23] = v26;
  v16 = *v23;
  *(a1 + 33) = *&v23[16];
  v17 = *&v23[48];
  *(a1 + 49) = *&v23[32];
  *&v23[71] = v29;
  *(a1 + 65) = v17;
  result = *&v23[63];
  *(a1 + 80) = *&v23[63];
  v19 = v24;
  *a1 = v20;
  *(a1 + 8) = 0;
  *(a1 + 16) = v19;
  *(a1 + 17) = v16;
  return result;
}

uint64_t sub_1DC4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_32E14();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_279C(&qword_45FC0, &unk_34E90);
  return sub_1AB24(v3, a1 + *(v4 + 44));
}

uint64_t sub_1DCC8(uint64_t a1)
{
  v2 = sub_32CD4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_32D84();
}

uint64_t sub_1DD90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1DDD0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_279C(&qword_457C8, &qword_34300);
  sub_330D4();
  sub_330E4();
}

uint64_t sub_1DE68@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v1 + 16) + OBJC_IVAR____TtC14Content_Caches15ServerViewModel_learnMoreLabel);
  v17 = *v3;
  v18 = v3[1];
  sub_1288C();

  v4 = sub_32FE4();
  v6 = v5;
  v8 = v7;
  sub_32F64();
  v9 = sub_32FC4();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_128E0(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_1DF5C(uint64_t a1, uint64_t a2, char a3)
{
  sub_12948(a1, a2, a3 & 1);
}

uint64_t sub_1DF98(uint64_t a1, uint64_t a2, char a3)
{
  sub_128E0(a1, a2, a3 & 1);
}

uint64_t sub_1DFE4(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1E038(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1E08C(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1E0D8(uint64_t a1)
{
  v2 = sub_1EA5C(a1);

  if (v1)
  {
    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1E13C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_279C(&qword_460A0, &unk_35150);
    v2 = sub_335F4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_2740(*(a1 + 56) + 32 * v14, v34);
        *&v33 = v16;
        *(&v33 + 1) = v17;
        v31 = v33;
        v32[0] = v34[0];
        v32[1] = v34[1];
        v18 = v33;
        sub_3284(v32, &v25);

        sub_279C(&qword_45710, &qword_34278);
        swift_dynamicCast();
        v29 = v27;
        v30 = v28;
        v26 = v27;
        v27 = v28;
        result = sub_26C8(v18, *(&v18 + 1));
        if (v19)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v18;
          v11 = result;

          result = sub_21538(&v26, v2[7] + 32 * v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v18;
          v20 = (v2[7] + 32 * result);
          v21 = v27;
          *v20 = v26;
          v20[1] = v21;
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

size_t sub_1E3B0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_279C(a5, a6);
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

unint64_t sub_1E58C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_279C(&qword_460C8, &qword_35178);
    v3 = sub_335F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_1E6A0(uint64_t a1)
{
  sub_33C4(a1, v7, &qword_45710, &qword_34278);
  if (v8)
  {
    sub_279C(&qword_460C0, &qword_35170);
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  else
  {
    sub_93EC(v7, &qword_45710, &qword_34278);
  }

  sub_33C4(a1, v7, &qword_45710, &qword_34278);
  if (v8)
  {
    sub_27E4();
    if (swift_dynamicCast())
    {
      return swift_willThrow();
    }
  }

  else
  {
    sub_93EC(v7, &qword_45710, &qword_34278);
  }

  sub_279C(&qword_460A8, &qword_35160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_33E20;
  *(inited + 32) = sub_33244();
  *(inited + 40) = v4;
  *(inited + 48) = 0xD000000000000037;
  *(inited + 56) = 0x800000000003B3D0;
  v5 = sub_1E58C(inited);
  swift_setDeallocating();
  sub_93EC(inited + 32, &qword_460B0, &qword_35168);
  sub_215A8();
  swift_allocError();
  *v6 = v5;
  *(v6 + 8) = 1;
  return swift_willThrow();
}

uint64_t sub_1E87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = a2;
  v6 = a3 + 32;
  v7 = &qword_45170;
  v8 = &type metadata for Any;
  while (1)
  {
    sub_2740(v6, v23);
    sub_279C(v7, &unk_33E70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_5;
    }

    v10 = sub_16264();
    if (*(v21 + 16))
    {
      v11 = v8;
      v12 = v7;
      v13 = *v10;
      v14 = v10[1];

      v15 = sub_26C8(v13, v14);
      v17 = v16;

      if (v17)
      {
        sub_2740(*(v21 + 56) + 32 * v15, v23);

        v8 = v11;
        if (swift_dynamicCast())
        {
          v18 = v22;
          v7 = v12;
          v4 = a2;
          if (v21 != a1)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }

        v7 = v12;
      }

      else
      {

        v7 = v12;
        v8 = v11;
      }

      v4 = a2;
    }

    else
    {
    }

    v18 = 0xE000000000000000;
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_17:
    if (v18 == v4)
    {

      return 1;
    }

LABEL_4:
    v9 = sub_33644();

    if (v9)
    {
      return 1;
    }

LABEL_5:
    v6 += 32;
    if (!--v3)
    {
      return 0;
    }
  }
}

uint64_t sub_1EA5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_279C(&qword_46060, "^4");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  inited = &v247 - v6;
  v281 = type metadata accessor for AddressRange();
  v276 = *(v281 - 8);
  v8 = *(v276 + 64);
  __chkstk_darwin(v281);
  v280 = &v247 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_279C(&qword_46068, "^4");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v247 - v12;
  v284 = type metadata accessor for FavoredServer();
  v277 = *(v284 - 8);
  v14 = *(v277 + 64);
  __chkstk_darwin(v284);
  v283 = &v247 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CachingServer();
  v265 = *(v16 - 8);
  v17 = *(v265 + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v267 = &v247 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v266 = &v247 - v20;
  v272 = sub_32AC4();
  v268 = *(v272 - 8);
  v21 = *(v268 + 64);
  v22 = __chkstk_darwin(v272);
  v264 = &v247 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v247 - v24;
  v26 = sub_279C(&qword_46070, "^4");
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v274 = &v247 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v286 = &v247 - v30;
  v299 = sub_32BD4();
  v292 = *(v299 - 8);
  v31 = *(v292 + 64);
  v32 = __chkstk_darwin(v299);
  v269 = &v247 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v270 = &v247 - v35;
  v36 = __chkstk_darwin(v34);
  v271 = &v247 - v37;
  v38 = __chkstk_darwin(v36);
  v279 = &v247 - v39;
  v40 = __chkstk_darwin(v38);
  v278 = &v247 - v41;
  v42 = __chkstk_darwin(v40);
  v288 = &v247 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v247 - v45;
  __chkstk_darwin(v44);
  v48 = &v247 - v47;
  v49 = sub_160C4();
  v51 = *v49;
  v50 = v49[1];
  *&v297 = v51;
  *(&v297 + 1) = v50;

  sub_33544();
  v52 = *(a1 + 16);
  v289 = a1;
  if (v52 && (v53 = sub_2830(&v294), (v54 & 1) != 0))
  {
    sub_2740(*(a1 + 56) + 32 * v53, v293);
    sub_3310(&v294);
  }

  else
  {
    sub_3310(&v294);
    memset(v293, 0, sizeof(v293));
  }

  sub_33C4(v293, &v297, &qword_45710, &qword_34278);
  v55 = &type metadata for Any;
  v282 = inited;
  v285 = v13;
  if (*(&v298 + 1))
  {
    if (swift_dynamicCast())
    {
      v13 = v296[0];
      inited = v296[1];
      goto LABEL_15;
    }
  }

  else
  {
    sub_93EC(&v297, &qword_45710, &qword_34278);
  }

  sub_33C4(v293, &v297, &qword_45710, &qword_34278);
  if (!*(&v298 + 1))
  {
    sub_93EC(&v297, &qword_45710, &qword_34278);
    goto LABEL_13;
  }

  sub_27E4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    sub_279C(&qword_460A8, &qword_35160);
    inited = swift_initStackObject();
    *(inited + 1) = xmmword_33E20;
    *(inited + 4) = sub_33244();
    *(inited + 5) = v56;
    *(inited + 6) = 0xD000000000000038;
    *(inited + 7) = 0x800000000003B410;
    v13 = sub_1E58C(inited);
    swift_setDeallocating();
    sub_93EC((inited + 32), &qword_460B0, &qword_35168);
    sub_215A8();
    v2 = swift_allocError();
    *v57 = v13;
    *(v57 + 8) = 0;
    goto LABEL_14;
  }

  v2 = v296[0];
LABEL_14:
  swift_willThrow();
LABEL_15:
  v273 = v25;
  if (!v2)
  {
    v287 = 0;
    sub_93EC(v293, &qword_45710, &qword_34278);
    v73 = sub_2167C();
    v59 = v292;
    v290 = *(v292 + 16);
    v290(v48, v73, v299);

    v74 = sub_32BB4();
    v75 = sub_33414();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v297 = v77;
      *v76 = 136446210;
      v78 = sub_D148(v13, inited, &v297);

      *(v76 + 4) = v78;
      _os_log_impl(&dword_0, v74, v75, "This device public IP address is: %{public}s", v76, 0xCu);
      sub_3364(v77);
      v68 = v289;

      v55 = &type metadata for Any;

      v70 = *(v59 + 8);
      v71 = v48;
      v72 = v299;
      goto LABEL_20;
    }

    v80 = *(v59 + 8);
    v81 = v48;
LABEL_23:
    v291 = v80;
    (v80)(v81, v299);
    v79 = v288;
    v68 = v289;
    goto LABEL_24;
  }

  v287 = 0;
  sub_93EC(v293, &qword_45710, &qword_34278);
  v58 = sub_2167C();
  v59 = v292;
  v290 = *(v292 + 16);
  v290(v46, v58, v299);
  swift_errorRetain();
  v60 = sub_32BB4();
  v61 = sub_33424();

  if (!os_log_type_enabled(v60, v61))
  {

    v80 = *(v59 + 8);
    v81 = v46;
    goto LABEL_23;
  }

  v62 = swift_slowAlloc();
  v291 = v46;
  v63 = v62;
  v64 = swift_slowAlloc();
  *&v297 = v64;
  *v63 = 136446210;
  *&v294 = v2;
  swift_errorRetain();
  sub_279C(&qword_45540, &unk_35120);
  v65 = sub_33294();
  v67 = sub_D148(v65, v66, &v297);
  v68 = v289;

  *(v63 + 4) = v67;
  v69 = v299;
  _os_log_impl(&dword_0, v60, v61, "Converting device public IP address servers error: %{public}s", v63, 0xCu);
  sub_3364(v64);
  v59 = v292;

  v70 = *(v59 + 8);
  v71 = v291;
  v72 = v69;
LABEL_20:
  v291 = v70;
  (v70)(v71, v72);
  v79 = v288;
LABEL_24:
  v82 = sub_1609C();
  v84 = *v82;
  v83 = v82[1];
  *&v293[0] = v84;
  *(&v293[0] + 1) = v83;

  sub_33544();
  if (*(v68 + 16) && (v85 = sub_2830(&v297), (v86 & 1) != 0))
  {
    sub_2740(*(v68 + 56) + 32 * v85, &v294);
    sub_3310(&v297);
    sub_279C(&qword_45148, &qword_33E50);
    if (swift_dynamicCast())
    {
      v87 = *&v293[0];
      goto LABEL_30;
    }
  }

  else
  {
    sub_3310(&v297);
  }

  v87 = sub_2E50(_swiftEmptyArrayStorage);
LABEL_30:
  v88 = sub_2167C();
  v288 = (v59 + 16);
  v290(v79, v88, v299);

  v89 = sub_32BB4();
  v90 = sub_33414();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&v297 = v92;
    *v91 = 136446210;
    v93 = sub_331F4();
    v275 = v88;
    v95 = sub_D148(v93, v94, &v297);
    v96 = v292;

    *(v91 + 4) = v95;
    v55 = &type metadata for Any;
    v59 = v96;
    v97 = v291;
    _os_log_impl(&dword_0, v89, v90, "Refreshed servers: %{public}s", v91, 0xCu);
    sub_3364(v92);
    v68 = v289;

    (v97)(v79, v299);
    v88 = v275;
  }

  else
  {

    (v291)(v79, v299);
  }

  v98 = sub_16140();
  v100 = *v98;
  v99 = *(v98 + 1);
  *&v294 = v100;
  *(&v294 + 1) = v99;

  sub_33544();
  if (*(v87 + 16) && (v101 = sub_2830(&v297), (v102 & 1) != 0))
  {
    sub_2740(*(v87 + 56) + 32 * v101, &v294);
    sub_3310(&v297);
  }

  else
  {
    sub_3310(&v297);
    v294 = 0u;
    v295 = 0u;
  }

  v103 = v287;
  v104 = sub_1E6A0(&v294);
  if (v103)
  {
    sub_93EC(&v294, &qword_45710, &qword_34278);

    *&v297 = v103;
    swift_errorRetain();
    sub_279C(&qword_45540, &unk_35120);
    sub_27E4();
    if (swift_dynamicCast())
    {

      v105 = v294;
      v106 = v279;
      v290(v279, v88, v299);
      v107 = v105;
      v108 = sub_32BB4();
      v109 = sub_33424();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *&v293[0] = v111;
        *v110 = 136446210;
        v112 = v107;
        v113 = v106;
        v114 = [v112 description];
        v115 = sub_33244();
        v117 = v116;

        v118 = sub_D148(v115, v117, v293);

        *(v110 + 4) = v118;
        _os_log_impl(&dword_0, v108, v109, "Converting server error: %{public}s", v110, 0xCu);
        sub_3364(v111);

        v137 = v113;
      }

      else
      {

        v137 = v106;
      }

      (v291)(v137, v299);
      swift_willThrow();
    }
  }

  v119 = v104;
  sub_93EC(&v294, &qword_45710, &qword_34278);
  v120 = sub_1616C();
  v122 = *v120;
  v121 = *(v120 + 1);
  *&v294 = v122;
  *(&v294 + 1) = v121;

  sub_33544();
  if (*(v87 + 16) && (v123 = sub_2830(&v297), (v124 & 1) != 0))
  {
    sub_2740(*(v87 + 56) + 32 * v123, &v294);
    sub_3310(&v297);
  }

  else
  {
    sub_3310(&v297);
    v294 = 0u;
    v295 = 0u;
  }

  v279 = sub_1E6A0(&v294);
  sub_93EC(&v294, &qword_45710, &qword_34278);
  v125 = sub_1619C();
  v127 = *v125;
  v126 = v125[1];
  *&v294 = v127;
  *(&v294 + 1) = v126;

  sub_33544();
  if (*(v87 + 16) && (v128 = sub_2830(&v297), (v129 & 1) != 0))
  {
    sub_2740(*(v87 + 56) + 32 * v128, &v294);
    sub_3310(&v297);
  }

  else
  {
    sub_3310(&v297);
    v294 = 0u;
    v295 = 0u;
  }

  v263 = sub_1E6A0(&v294);
  sub_93EC(&v294, &qword_45710, &qword_34278);
  v130 = sub_161C4();
  v132 = *v130;
  v131 = v130[1];
  *&v294 = v132;
  *(&v294 + 1) = v131;

  sub_33544();
  if (*(v87 + 16) && (v133 = sub_2830(&v297), (v134 & 1) != 0))
  {
    sub_2740(*(v87 + 56) + 32 * v133, &v294);
    sub_3310(&v297);
  }

  else
  {

    sub_3310(&v297);
    v294 = 0u;
    v295 = 0u;
  }

  v135 = sub_1E6A0(&v294);
  v136 = v272;
  v262 = v135;
  sub_93EC(&v294, &qword_45710, &qword_34278);
  v140 = *(v119 + 2);
  if (v140)
  {
    v141 = 0;
    result = (v119 + 32);
    v259 = v59 + 8;
    v257 = (v268 + 48);
    v249 = (v268 + 32);
    v247 = (v268 + 16);
    v250 = (v268 + 8);
    v248 = _swiftEmptyArrayStorage;
    *&v139 = 136446210;
    v251 = v139;
    v269 = v119;
    v275 = v88;
    v260 = v140;
    while (1)
    {
      if (v141 >= *(v119 + 2))
      {
        goto LABEL_196;
      }

      v292 = result;
      sub_2740(result, &v297);
      sub_279C(&qword_45170, &unk_33E70);
      if (swift_dynamicCast())
      {
        break;
      }

LABEL_62:
      ++v141;
      result = v292 + 32;
      if (v140 == v141)
      {
        goto LABEL_157;
      }
    }

    v143 = v294;
    v144 = sub_162AC();
    v145 = *(v143 + 16);
    v270 = v141;
    if (v145)
    {
      v147 = *v144;
      v146 = v144[1];

      v148 = sub_26C8(v147, v146);
      if (v149)
      {
        sub_2740(*(v143 + 56) + 32 * v148, &v297);
      }

      else
      {
        v297 = 0u;
        v298 = 0u;
      }

      if (*(&v298 + 1))
      {
        swift_dynamicCast();
        goto LABEL_73;
      }
    }

    else
    {
      v297 = 0u;
      v298 = 0u;
    }

    sub_93EC(&v297, &qword_45710, &qword_34278);
LABEL_73:
    sub_32A94();

    v150 = sub_16264();
    if (*(v143 + 16))
    {
      v152 = *v150;
      v151 = v150[1];

      v153 = sub_26C8(v152, v151);
      if (v154)
      {
        sub_2740(*(v143 + 56) + 32 * v153, &v297);
      }

      else
      {
        v297 = 0u;
        v298 = 0u;
      }

      if (*(&v298 + 1))
      {
        v155 = swift_dynamicCast();
        v156 = v294;
        if (!v155)
        {
          v156 = 0;
        }

        v271 = v156;
        if (v155)
        {
          v157 = *(&v294 + 1);
        }

        else
        {
          v157 = 0;
        }

LABEL_85:
        v158 = sub_16308();
        if (*(v143 + 16))
        {
          v160 = *v158;
          v159 = v158[1];

          v161 = sub_26C8(v160, v159);
          if (v162)
          {
            sub_2740(*(v143 + 56) + 32 * v161, &v297);
          }

          else
          {
            v297 = 0u;
            v298 = 0u;
          }

          if (*(&v298 + 1))
          {
            v163 = swift_dynamicCast();
            v164 = v294;
            if (!v163)
            {
              v164 = 0;
            }

            v256 = v164;
            v165 = v163 ^ 1;
LABEL_95:
            LODWORD(v268) = v165;
            v166 = sub_16324();
            if (*(v143 + 16))
            {
              v168 = *v166;
              v167 = v166[1];

              v169 = sub_26C8(v168, v167);
              if (v170)
              {
                sub_2740(*(v143 + 56) + 32 * v169, &v297);
              }

              else
              {
                v297 = 0u;
                v298 = 0u;
              }

              if (*(&v298 + 1))
              {
                v171 = swift_dynamicCast();
                v172 = v294;
                if (!v171)
                {
                  v172 = 0;
                }

                v255 = v172;
                v173 = v171 ^ 1;
LABEL_105:
                v261 = v173;
                v174 = sub_162E4();
                if (*(v143 + 16))
                {
                  v176 = *v174;
                  v175 = v174[1];

                  v177 = sub_26C8(v176, v175);
                  if (v178)
                  {
                    sub_2740(*(v143 + 56) + 32 * v177, &v297);
                  }

                  else
                  {
                    v297 = 0u;
                    v298 = 0u;
                  }
                }

                else
                {
                  v297 = 0u;
                  v298 = 0u;
                }

                if (*(&v298 + 1))
                {
                  v179 = swift_dynamicCast();
                  v258 = v179 ^ 1;
                  if (v294 == 1)
                  {
                    v180 = v179;
                  }

                  else
                  {
                    v180 = 0;
                  }

                  v181 = &v286 + 4;
                }

                else
                {
                  sub_93EC(&v297, &qword_45710, &qword_34278);
                  v254 = 0;
                  v180 = 1;
                  v181 = &v290 + 4;
                }

                *(v181 - 64) = v180;
                v182 = v271;
                v183 = sub_1E87C(v271, v157, v279);
                v184 = sub_1E87C(v182, v157, v263);
                v185 = sub_1E87C(v182, v157, v262);
                v186 = 8;
                if ((v183 & 1) == 0)
                {
                  v186 = 0;
                }

                if (v184)
                {
                  v186 |= 0x10uLL;
                }

                if (v185)
                {
                  v186 |= 0x20uLL;
                }

                v253 = v186;
                v187 = sub_16114();
                v189 = *v187;
                v188 = *(v187 + 1);
                *&v293[0] = v189;
                *(&v293[0] + 1) = v188;

                sub_33544();
                if (*(v68 + 16))
                {
                  v190 = sub_2830(&v297);
                  v191 = v278;
                  if (v192)
                  {
                    sub_2740(*(v68 + 56) + 32 * v190, &v294);
                  }

                  else
                  {
                    v294 = 0u;
                    v295 = 0u;
                  }
                }

                else
                {
                  v294 = 0u;
                  v295 = 0u;
                  v191 = v278;
                }

                sub_3310(&v297);
                v290(v191, v88, v299);
                sub_33C4(&v294, &v297, &qword_45710, &qword_34278);
                v193 = sub_32BB4();
                v194 = sub_33414();
                v195 = os_log_type_enabled(v193, v194);
                v287 = v157;
                if (v195)
                {
                  v196 = swift_slowAlloc();
                  v197 = swift_slowAlloc();
                  v296[0] = v197;
                  *v196 = v251;
                  sub_33C4(&v297, v293, &qword_45710, &qword_34278);
                  sub_279C(&qword_45710, &qword_34278);
                  v198 = sub_33294();
                  v199 = v68;
                  v201 = v200;
                  sub_93EC(&v297, &qword_45710, &qword_34278);
                  v202 = sub_D148(v198, v201, v296);
                  v68 = v199;
                  v136 = v272;

                  *(v196 + 4) = v202;
                  _os_log_impl(&dword_0, v193, v194, "Converting reachability: %{public}s", v196, 0xCu);
                  sub_3364(v197);
                  v157 = v287;

                  (v291)(v278, v299);
                }

                else
                {

                  sub_93EC(&v297, &qword_45710, &qword_34278);
                  (v291)(v191, v299);
                }

                v55 = &type metadata for Any;
                sub_33C4(&v294, &v297, &qword_45710, &qword_34278);
                if (*(&v298 + 1))
                {
                  sub_279C(&qword_46080, &qword_35590);
                  if (swift_dynamicCast())
                  {
                    v203 = *&v293[0];
                    if (v157)
                    {

                      v252 = sub_6D1C(v271, v157, v203);

                      goto LABEL_142;
                    }
                  }
                }

                else
                {
                  sub_93EC(&v297, &qword_45710, &qword_34278);
                }

                sub_33C4(&v294, &v297, &qword_45710, &qword_34278);
                if (*(&v298 + 1))
                {
                  sub_27E4();
                  if (swift_dynamicCast())
                  {

                    swift_willThrow();
                    sub_93EC(&v294, &qword_45710, &qword_34278);
                    return sub_93EC(v286, &qword_46070, "^4");
                  }
                }

                else
                {
                  sub_93EC(&v297, &qword_45710, &qword_34278);
                }

                v252 = 0;
LABEL_142:
                v204 = v286;
                v205 = v274;
                sub_33C4(v286, v274, &qword_46070, "^4");
                if ((*v257)(v205, 1, v136) == 1)
                {

                  sub_93EC(&v294, &qword_45710, &qword_34278);
                  sub_93EC(v204, &qword_46070, "^4");
                  v142 = v205;
                }

                else
                {
                  v206 = v273;
                  (*v249)(v273, v205, v136);
                  if (v287)
                  {
                    v119 = v269;
                    v88 = v275;
                    if (v268)
                    {

                      (*v250)(v273, v136);
                      sub_93EC(&v294, &qword_45710, &qword_34278);
                      sub_93EC(v286, &qword_46070, "^4");
                    }

                    else
                    {
                      v140 = v260;
                      if (v261 || v258)
                      {

                        (*v250)(v273, v136);
                        sub_93EC(&v294, &qword_45710, &qword_34278);
                        sub_93EC(v286, &qword_46070, "^4");
                        goto LABEL_61;
                      }

                      v207 = 0x403040302010005uLL >> v253;
                      v208 = v264;
                      (*v247)(v264, v273, v136);
                      v209 = v266;
                      sub_1759C(v208, v271, v287, v256, v255, v207, v254, v252 & 1, v266);
                      sub_15954(v209, v267);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v248 = sub_1E3B0(0, v248[2] + 1, 1, v248, &qword_46088, &qword_35138, type metadata accessor for CachingServer);
                      }

                      v211 = v248[2];
                      v210 = v248[3];
                      v119 = v269;
                      if (v211 >= v210 >> 1)
                      {
                        v248 = sub_1E3B0(v210 > 1, v211 + 1, 1, v248, &qword_46088, &qword_35138, type metadata accessor for CachingServer);
                      }

                      sub_1B4D4(v266);
                      (*v250)(v273, v136);
                      sub_93EC(&v294, &qword_45710, &qword_34278);
                      sub_93EC(v286, &qword_46070, "^4");
                      v212 = v248;
                      v248[2] = v211 + 1;
                      sub_214D0(v267, v212 + ((*(v265 + 80) + 32) & ~*(v265 + 80)) + *(v265 + 72) * v211, type metadata accessor for CachingServer);
                    }

                    v140 = v260;
LABEL_61:
                    v141 = v270;
                    goto LABEL_62;
                  }

                  (*v250)(v206, v136);
                  sub_93EC(&v294, &qword_45710, &qword_34278);
                  v142 = v286;
                }

                sub_93EC(v142, &qword_46070, "^4");
                v119 = v269;
                v140 = v260;
                v88 = v275;
                goto LABEL_61;
              }
            }

            else
            {
              v297 = 0u;
              v298 = 0u;
            }

            sub_93EC(&v297, &qword_45710, &qword_34278);
            v255 = 0;
            v173 = 1;
            goto LABEL_105;
          }
        }

        else
        {
          v297 = 0u;
          v298 = 0u;
        }

        sub_93EC(&v297, &qword_45710, &qword_34278);
        v256 = 0;
        v165 = 1;
        goto LABEL_95;
      }
    }

    else
    {
      v297 = 0u;
      v298 = 0u;
    }

    sub_93EC(&v297, &qword_45710, &qword_34278);
    v271 = 0;
    v157 = 0;
    goto LABEL_85;
  }

  v248 = _swiftEmptyArrayStorage;
LABEL_157:

  v213 = sub_161EC();
  v215 = *v213;
  v214 = v213[1];
  *&v294 = v215;
  *(&v294 + 1) = v214;

  sub_33544();
  if (!*(v68 + 16) || (v216 = sub_2830(&v297), (v217 & 1) == 0))
  {
    result = sub_3310(&v297);
LABEL_165:
    v218 = _swiftEmptyArrayStorage;
    v219 = _swiftEmptyArrayStorage[2];
    if (!v219)
    {
      goto LABEL_161;
    }

    goto LABEL_166;
  }

  sub_2740(*(v68 + 56) + 32 * v216, &v294);
  sub_3310(&v297);
  sub_279C(&qword_46078, &qword_35130);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_165;
  }

  v218 = *&v293[0];
  v219 = *(*&v293[0] + 16);
  if (!v219)
  {
LABEL_161:

    v220 = sub_16214();
    v222 = *v220;
    v221 = v220[1];
    *&v294 = v222;
    *(&v294 + 1) = v221;

    sub_33544();
    v223 = v289;
    if (*(v289 + 16) && (v224 = sub_2830(&v297), (v225 & 1) != 0))
    {
      sub_2740(*(v223 + 56) + 32 * v224, &v294);
    }

    else
    {
      v294 = 0u;
      v295 = 0u;
    }

    sub_3310(&v297);
    if (*(&v295 + 1))
    {
      sub_279C(&qword_46078, &qword_35130);
      result = swift_dynamicCast();
      if (result)
      {
        v236 = *&v293[0];
LABEL_182:
        v237 = v236[2];
        if (!v237)
        {
LABEL_193:

          return v248;
        }

        v238 = 0;
        v299 = (v236 + 4);
        v239 = (v276 + 48);
        v240 = _swiftEmptyArrayStorage;
        while (v238 < v236[2])
        {
          v241 = *(v299 + 8 * v238);

          v243 = sub_1E13C(v242);
          v244 = v282;
          sub_F354(v243, v282);

          if ((*v239)(v244, 1, v281) == 1)
          {
            result = sub_93EC(v244, &qword_46060, "^4");
          }

          else
          {
            sub_214D0(v244, v280, type metadata accessor for AddressRange);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v240 = sub_1E3B0(0, v240[2] + 1, 1, v240, &qword_46090, &qword_35140, type metadata accessor for AddressRange);
            }

            v246 = v240[2];
            v245 = v240[3];
            if (v246 >= v245 >> 1)
            {
              v240 = sub_1E3B0(v245 > 1, v246 + 1, 1, v240, &qword_46090, &qword_35140, type metadata accessor for AddressRange);
            }

            v240[2] = v246 + 1;
            result = sub_214D0(v280, v240 + ((*(v276 + 80) + 32) & ~*(v276 + 80)) + *(v276 + 72) * v246, type metadata accessor for AddressRange);
          }

          if (v237 == ++v238)
          {
            goto LABEL_193;
          }
        }

        goto LABEL_195;
      }
    }

    else
    {
      result = sub_93EC(&v294, &qword_45710, &qword_34278);
    }

    v236 = _swiftEmptyArrayStorage;
    goto LABEL_182;
  }

LABEL_166:
  v226 = 0;
  v299 = (v218 + 4);
  v227 = (v277 + 48);
  v228 = _swiftEmptyArrayStorage;
  while (v226 < v218[2])
  {
    v229 = v55;
    v230 = *(v299 + 8 * v226);

    v232 = sub_1E13C(v231);
    v233 = v285;
    sub_30940(v232, v285);

    if ((*v227)(v233, 1, v284) == 1)
    {
      result = sub_93EC(v233, &qword_46068, "^4");
    }

    else
    {
      sub_214D0(v233, v283, type metadata accessor for FavoredServer);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v228 = sub_1E3B0(0, v228[2] + 1, 1, v228, &qword_46098, &qword_35148, type metadata accessor for FavoredServer);
      }

      v235 = v228[2];
      v234 = v228[3];
      if (v235 >= v234 >> 1)
      {
        v228 = sub_1E3B0(v234 > 1, v235 + 1, 1, v228, &qword_46098, &qword_35148, type metadata accessor for FavoredServer);
      }

      v228[2] = v235 + 1;
      result = sub_214D0(v283, v228 + ((*(v277 + 80) + 32) & ~*(v277 + 80)) + *(v277 + 72) * v235, type metadata accessor for FavoredServer);
    }

    ++v226;
    v55 = v229;
    if (v219 == v226)
    {
      goto LABEL_161;
    }
  }

  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
  return result;
}

uint64_t sub_21428(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_214D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21538(uint64_t a1, uint64_t a2)
{
  v4 = sub_279C(&qword_45710, &qword_34278);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_215A8()
{
  result = qword_460B8;
  if (!qword_460B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_460B8);
  }

  return result;
}

uint64_t sub_215FC()
{
  v0 = sub_32BD4();
  sub_217C0(v0, qword_47CF8);
  sub_216E0(v0, qword_47CF8);
  return sub_32BC4();
}

uint64_t sub_2167C()
{
  if (qword_475D0 != -1)
  {
    swift_once();
  }

  v0 = sub_32BD4();

  return sub_216E0(v0, qword_47CF8);
}

uint64_t sub_216E0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21718@<X0>(uint64_t a1@<X8>)
{
  if (qword_475D0 != -1)
  {
    swift_once();
  }

  v2 = sub_32BD4();
  v3 = sub_216E0(v2, qword_47CF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_217C0(uint64_t a1, uint64_t *a2)
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

uint64_t CacheLocatorView.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[1] = a4;
  v14[0] = sub_279C(&qword_460D0, &qword_35180);
  v7 = *(v14[0] - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v14[0]);
  v10 = v14 - v9;
  v14[4] = a1;
  v15 = a2;
  v16 = a3;
  sub_279C(&qword_460D8, &unk_35188);
  sub_8F50(&qword_460E0, &qword_460D8, &unk_35188);
  sub_32F84();
  v17 = a2;
  v18 = a3;
  sub_279C(&qword_457C8, &qword_34300);
  sub_330F4();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  sub_8F50(&qword_460E8, &qword_460D0, &qword_35180);
  sub_1267C();

  v12 = v14[0];
  sub_33024();

  return (*(v7 + 8))(v10, v12);
}

uint64_t sub_21A98@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v95 = a4;
  v7 = sub_279C(&qword_460F0, &qword_35248);
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = *(v92 + 64);
  __chkstk_darwin(v7);
  v82 = &v80 - v9;
  v10 = sub_279C(&qword_460F8, &qword_35250);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v94 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = &v80 - v14;
  v85 = sub_279C(&qword_46100, &qword_35258);
  v84 = *(v85 - 8);
  v15 = *(v84 + 64);
  __chkstk_darwin(v85);
  v81 = &v80 - v16;
  v17 = sub_279C(&qword_46108, &unk_35260);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v91 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v96 = &v80 - v21;
  v22 = sub_279C(&qword_45ED0, &qword_34DE0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v80 - v24;
  v26 = sub_279C(&qword_46110, &qword_35270);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v80 - v28;
  v30 = sub_279C(&qword_46118, &qword_35278);
  v89 = *(v30 - 8);
  v90 = v30;
  v31 = *(v89 + 64);
  v32 = __chkstk_darwin(v30);
  v88 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v80 - v34;
  *v29 = sub_32E14();
  *(v29 + 1) = 0;
  v36 = 1;
  v29[16] = 1;
  v37 = sub_279C(&qword_46120, &unk_35280);
  sub_22410(a1, &v29[*(v37 + 44)]);
  *v25 = sub_32EA4();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v38 = sub_279C(&qword_45EF8, &qword_34E00);
  sub_22BA0(a1, a2, a3, &v25[*(v38 + 44)]);
  v98 = a1;
  v83 = a2 & 1;
  v99 = a2;
  v86 = a3;
  v100 = a3;
  sub_279C(&qword_46128, &qword_35290);
  sub_8F50(&qword_46130, &qword_46110, &qword_35270);
  v78 = sub_23210();
  v79 = sub_8F50(&qword_45F10, &qword_45ED0, &qword_34DE0);
  v87 = v35;
  v39 = sub_33164();
  v40 = *((*(*a1 + 360))(v39) + 16);

  if (v40)
  {
    v41 = a1[22];
    v101 = a1[21];
    v102 = v41;
    sub_1288C();

    v101 = sub_32FE4();
    v102 = v42;
    v103 = v43 & 1;
    v104 = v44;
    __chkstk_darwin(v101);
    *(&v80 - 4) = a1;
    v45 = v83;
    *(&v80 - 24) = v83;
    v46 = v86;
    v78 = v86;
    sub_279C(&qword_46150, &qword_352A0);
    sub_23438();
    v47 = v81;
    sub_33154();
    v48 = v84;
    v49 = v96;
    v50 = v85;
    (*(v84 + 32))(v96, v47, v85);
    v36 = 0;
    v51 = v49;
    v52 = v50;
    v53 = v48;
    v54 = v45;
  }

  else
  {
    v51 = v96;
    v46 = v86;
    v52 = v85;
    v53 = v84;
    v54 = v83;
  }

  v55 = 1;
  v56 = (*(v53 + 56))(v51, v36, 1, v52);
  v57 = *((*(*a1 + 408))(v56) + 16);

  v58 = v97;
  if (v57)
  {
    v59 = a1[24];
    v101 = a1[23];
    v102 = v59;
    sub_1288C();

    v101 = sub_32FE4();
    v102 = v60;
    v103 = v61 & 1;
    v104 = v62;
    __chkstk_darwin(v101);
    *(&v80 - 4) = a1;
    *(&v80 - 24) = v54;
    v78 = v46;
    sub_279C(&qword_46160, &qword_352A8);
    sub_23664();
    v63 = v82;
    sub_33154();
    v65 = v92;
    v64 = v93;
    (*(v92 + 32))(v58, v63, v93);
    v55 = 0;
  }

  else
  {
    v65 = v92;
    v64 = v93;
  }

  (*(v65 + 56))(v58, v55, 1, v64);
  v67 = v88;
  v66 = v89;
  v68 = *(v89 + 16);
  v69 = v87;
  v70 = v90;
  v68(v88, v87, v90);
  v71 = v91;
  sub_33C4(v51, v91, &qword_46108, &unk_35260);
  v72 = v58;
  v73 = v94;
  sub_33C4(v72, v94, &qword_460F8, &qword_35250);
  v74 = v95;
  v68(v95, v67, v70);
  v75 = sub_279C(&qword_46178, &qword_352B0);
  sub_33C4(v71, &v74[*(v75 + 48)], &qword_46108, &unk_35260);
  sub_33C4(v73, &v74[*(v75 + 64)], &qword_460F8, &qword_35250);
  sub_93EC(v97, &qword_460F8, &qword_35250);
  sub_93EC(v96, &qword_46108, &unk_35260);
  v76 = *(v66 + 8);
  v76(v69, v70);
  sub_93EC(v73, &qword_460F8, &qword_35250);
  sub_93EC(v71, &qword_46108, &unk_35260);
  return (v76)(v67, v70);
}

uint64_t sub_22410@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v58 = sub_279C(&qword_461C8, &qword_352D0);
  v3 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v50 = (&v49 - v4);
  v5 = sub_279C(&qword_461D0, &qword_352D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v49 = sub_279C(&qword_461D8, &qword_352E0);
  v7 = *(v49 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v49);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v49 - v12;
  v52 = sub_279C(&qword_461E0, &qword_352E8);
  v14 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v16 = &v49 - v15;
  v54 = sub_279C(&qword_45FC8, &qword_352F0);
  v17 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v19 = &v49 - v18;
  v20 = sub_279C(&qword_461E8, &qword_352F8);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v53 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v49 - v24;
  v26 = a1[18];
  v63[0] = a1[17];
  v63[1] = v26;
  sub_1288C();

  v27 = sub_32FE4();
  v55 = v28;
  v56 = v27;
  v51 = v29;
  v57 = v30;
  if ((*(*a1 + 456))())
  {
    sub_32CE4();
    v31 = &v19[*(v54 + 36)];
    v32 = *(sub_279C(&qword_45FD0, &qword_34EA0) + 28);
    v33 = enum case for ControlSize.small(_:);
    v34 = sub_32CD4();
    (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
    *v31 = swift_getKeyPath();
    sub_33C4(v19, v16, &qword_45FC8, &qword_352F0);
    swift_storeEnumTagMultiPayload();
    sub_23AA4();
    sub_8F50(&qword_46228, &qword_461C8, &qword_352D0);
    sub_32EC4();
    sub_93EC(v19, &qword_45FC8, &qword_352F0);
  }

  else
  {
    (*(*a1 + 496))(v63);
    v35 = a1[28];
    v61 = a1[27];
    v62 = v35;

    v60 = sub_33094();
    sub_239FC();
    sub_32CF4();
    sub_23A50();
    sub_33194();
    v36 = v7[2];
    v37 = v11;
    v38 = v49;
    v36(v11, v13, v49);
    v39 = v50;
    *v50 = 0;
    *(v39 + 8) = 1;
    v40 = sub_279C(&qword_46200, &qword_35300);
    v36((v39 + *(v40 + 48)), v37, v38);
    v41 = v7[1];
    v41(v37, v38);
    sub_33C4(v39, v16, &qword_461C8, &qword_352D0);
    swift_storeEnumTagMultiPayload();
    sub_23AA4();
    sub_8F50(&qword_46228, &qword_461C8, &qword_352D0);
    sub_32EC4();
    sub_93EC(v39, &qword_461C8, &qword_352D0);
    v41(v13, v38);
  }

  v42 = v53;
  sub_33C4(v25, v53, &qword_461E8, &qword_352F8);
  v43 = v59;
  v45 = v55;
  v44 = v56;
  *v59 = v56;
  v43[1] = v45;
  v46 = v51 & 1;
  *(v43 + 16) = v51 & 1;
  v43[3] = v57;
  v47 = sub_279C(&qword_46230, &qword_35318);
  sub_33C4(v42, v43 + *(v47 + 48), &qword_461E8, &qword_352F8);
  sub_12948(v44, v45, v46);

  sub_93EC(v25, &qword_461E8, &qword_352F8);
  sub_93EC(v42, &qword_461E8, &qword_352F8);
  sub_128E0(v44, v45, v46);
}

uint64_t sub_22B60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_33094();
  *a1 = result;
  return result;
}

uint64_t sub_22BA0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = sub_279C(&qword_45810, &qword_34450);
  v8 = *(v30 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v30);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = *(a1 + 160);
  v34 = *(a1 + 152);
  v35 = v15;
  sub_1288C();

  v16 = sub_32FE4();
  v18 = v17;
  v28 = v19;
  v29 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  v31 = a1;
  v32 = a2;
  v33 = a3;

  v27 = v14;
  sub_33104();
  v22 = v8[2];
  v23 = v30;
  v22(v12, v14, v30);
  *a4 = v16;
  *(a4 + 8) = v18;
  LOBYTE(a1) = v28 & 1;
  *(a4 + 16) = v28 & 1;
  *(a4 + 24) = v29;
  v24 = sub_279C(&qword_45FE8, &qword_34F20);
  v22((a4 + *(v24 + 48)), v12, v23);
  sub_12948(v16, v18, a1);
  v25 = v8[1];

  v25(v27, v23);
  v25(v12, v23);
  sub_128E0(v16, v18, a1);
}

uint64_t sub_22E70(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(char *))
{
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v12 - v9;
  sub_238B0(a1, &v12 - v9, a3);
  return a4(v10);
}

uint64_t sub_22F94()
{
  sub_8BD0(&qword_460D0, &qword_35180);
  sub_8F50(&qword_460E8, &qword_460D0, &qword_35180);
  sub_1267C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23040()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  (*(*v1 + 312))();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;

  sub_279C(&qword_461B0, &qword_352C8);
  sub_32AC4();
  sub_279C(&qword_46148, &qword_35298);
  sub_8F50(&qword_461B8, &qword_461B0, &qword_352C8);
  sub_8F50(&qword_46140, &qword_46148, &qword_35298);
  sub_23868(&qword_461C0, type metadata accessor for CachingServer);
  return sub_33144();
}

unint64_t sub_23210()
{
  result = qword_46138;
  if (!qword_46138)
  {
    sub_8BD0(&qword_46128, &qword_35290);
    sub_8F50(&qword_46140, &qword_46148, &qword_35298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46138);
  }

  return result;
}

uint64_t sub_232C0()
{
  (*(**(v0 + 16) + 360))();
  sub_279C(&qword_46198, &qword_352C0);
  sub_32AC4();
  type metadata accessor for AddressRangeItemView();
  sub_8F50(&qword_461A0, &qword_46198, &qword_352C0);
  sub_23868(&qword_45990, type metadata accessor for AddressRangeItemView);
  sub_23868(&qword_461A8, type metadata accessor for AddressRange);
  return sub_33144();
}

unint64_t sub_23438()
{
  result = qword_46158;
  if (!qword_46158)
  {
    sub_8BD0(&qword_46150, &qword_352A0);
    sub_23868(&qword_45990, type metadata accessor for AddressRangeItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46158);
  }

  return result;
}

uint64_t sub_234EC()
{
  (*(**(v0 + 16) + 408))();
  sub_279C(&qword_46180, &qword_352B8);
  sub_32AC4();
  type metadata accessor for FavoredServerItemView();
  sub_8F50(&qword_46188, &qword_46180, &qword_352B8);
  sub_23868(&qword_46170, type metadata accessor for FavoredServerItemView);
  sub_23868(&qword_46190, type metadata accessor for FavoredServer);
  return sub_33144();
}

unint64_t sub_23664()
{
  result = qword_46168;
  if (!qword_46168)
  {
    sub_8BD0(&qword_46160, &qword_352A8);
    sub_23868(&qword_46170, type metadata accessor for FavoredServerItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46168);
  }

  return result;
}

uint64_t sub_23718()
{
  v1 = (*(**(v0 + 16) + 488))();
  sub_1AEEC(v1);
  type metadata accessor for CacheItemView();
  sub_23868(&qword_45C88, type metadata accessor for CacheItemView);
  sub_1B158();
  return sub_32D14();
}

uint64_t sub_23868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23918@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v17 = *(v3 + 200);
  v18 = *(v3 + 208);
  sub_1288C();

  v4 = sub_32FE4();
  v6 = v5;
  v8 = v7;
  sub_32F64();
  v9 = sub_32FC4();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_128E0(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

unint64_t sub_239FC()
{
  result = qword_461F0;
  if (!qword_461F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_461F0);
  }

  return result;
}

unint64_t sub_23A50()
{
  result = qword_461F8;
  if (!qword_461F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_461F8);
  }

  return result;
}

unint64_t sub_23AA4()
{
  result = qword_46208;
  if (!qword_46208)
  {
    sub_8BD0(&qword_45FC8, &qword_352F0);
    sub_8F50(&qword_46210, &qword_46218, &unk_35308);
    sub_8F50(&qword_46220, &qword_45FD0, &qword_34EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46208);
  }

  return result;
}

Swift::Int sub_23BC8(unsigned __int8 a1)
{
  sub_336C4();
  sub_336D4(a1);
  return sub_336E4();
}

Swift::Int sub_23C24()
{
  v1 = *v0;
  sub_336C4();
  sub_336D4(v1);
  return sub_336E4();
}

Swift::Int sub_23C98()
{
  v1 = *v0;
  sub_336C4();
  sub_336D4(v1);
  return sub_336E4();
}

uint64_t sub_23CDC()
{
  v0 = sub_32AE4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_33224();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_33214();
  v4 = sub_2A72C();
  swift_beginAccess();
  v5 = *v4;
  sub_32AD4();
  return sub_33284();
}

unint64_t sub_2404C()
{
  result = qword_46238;
  if (!qword_46238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46238);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CacheType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CacheType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoredServer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24284@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_279C(&qword_458D8, &qword_345B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  *v7 = sub_32E14();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_279C(&qword_458E0, &qword_345B8);
  sub_24444(v2, &v7[*(v8 + 44)]);
  sub_279C(&qword_458E8, &qword_345C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_345A0;
  v10 = sub_32EF4();
  *(inited + 32) = v10;
  v11 = sub_32F04();
  *(inited + 33) = v11;
  v12 = sub_32F14();
  sub_32F14();
  if (sub_32F14() != v10)
  {
    v12 = sub_32F14();
  }

  sub_32F14();
  if (sub_32F14() != v11)
  {
    v12 = sub_32F14();
  }

  sub_32CC4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_130EC(v7, a1);
  result = sub_279C(&qword_458F0, &qword_345C8);
  v22 = a1 + *(result + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_24444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_279C(&qword_459A0, &qword_346F0);
  v5 = *(v4 - 8);
  v64 = v4 - 8;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v75 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v57 - v9;
  v11 = type metadata accessor for FavoredServer();
  v12 = (a1 + v11[5]);
  v13 = v12[1];
  v77 = *v12;
  v78 = v13;
  sub_1288C();

  v14 = sub_32FE4();
  v66 = v15;
  v67 = v14;
  v63 = v16;
  v68 = v17;
  KeyPath = swift_getKeyPath();
  sub_32E64();
  v18 = sub_32FD4();
  v61 = v19;
  v62 = v18;
  v60 = v20;
  v73 = v21;
  v74 = swift_getKeyPath();
  v22 = (a1 + v11[6]);
  v23 = v22[1];
  v77 = *v22;
  v78 = v23;

  v24 = sub_32FE4();
  v69 = v25;
  v70 = v24;
  v59 = v26;
  v72 = v27;
  v71 = swift_getKeyPath();
  v28 = (a1 + v11[7]);
  v29 = v28[1];
  v77 = *v28;
  v78 = v29;

  v30 = sub_32FE4();
  v32 = v31;
  LOBYTE(a1) = v33;
  v57 = v34;
  v35 = &v10[*(sub_279C(&qword_459A8, &qword_34728) + 36)];
  v36 = *(sub_279C(&qword_459B0, &qword_34730) + 28);
  v37 = enum case for Text.Case.uppercase(_:);
  v38 = sub_32FA4();
  v39 = *(v38 - 8);
  (*(v39 + 104))(v35 + v36, v37, v38);
  (*(v39 + 56))(v35 + v36, 0, 1, v38);
  *v35 = swift_getKeyPath();
  *v10 = v30;
  *(v10 + 1) = v32;
  v10[16] = a1 & 1;
  *(v10 + 3) = v57;
  LODWORD(v39) = sub_32ED4();
  *&v10[*(sub_279C(&qword_459B8, &qword_34768) + 36)] = v39;
  v40 = swift_getKeyPath();
  v41 = *(v64 + 44);
  v58 = v10;
  v42 = &v10[v41];
  *v42 = v40;
  v42[8] = 1;
  LOBYTE(v36) = v63 & 1;
  LOBYTE(v77) = v63 & 1;
  LOBYTE(v30) = v60 & 1;
  v76 = v60 & 1;
  v43 = v75;
  sub_33C4(v10, v75, &qword_459A0, &qword_346F0);
  v45 = v66;
  v44 = v67;
  *a2 = v67;
  *(a2 + 8) = v45;
  *(a2 + 16) = v36;
  v46 = KeyPath;
  *(a2 + 24) = v68;
  *(a2 + 32) = v46;
  *(a2 + 40) = 1;
  v48 = v61;
  v47 = v62;
  *(a2 + 48) = v62;
  *(a2 + 56) = v48;
  *(a2 + 64) = v30;
  v49 = v74;
  *(a2 + 72) = v73;
  *(a2 + 80) = v49;
  *(a2 + 88) = 1;
  v50 = v69;
  *(a2 + 96) = v70;
  *(a2 + 104) = v50;
  LODWORD(v64) = v59 & 1;
  *(a2 + 112) = v59 & 1;
  v51 = v71;
  *(a2 + 120) = v72;
  *(a2 + 128) = v51;
  *(a2 + 136) = 1;
  *(a2 + 144) = 0;
  *(a2 + 152) = 1;
  v52 = sub_279C(&qword_459C0, &qword_34770);
  sub_33C4(v43, a2 + *(v52 + 96), &qword_459A0, &qword_346F0);
  sub_12948(v44, v45, v36);

  v53 = v47;
  sub_12948(v47, v48, v30);

  v55 = v69;
  v54 = v70;
  LOBYTE(v47) = v64;
  sub_12948(v70, v69, v64);

  sub_13774(v58);
  sub_13774(v75);
  sub_128E0(v54, v55, v47);

  sub_128E0(v53, v48, v76);

  sub_128E0(v67, v66, v77);
}

uint64_t sub_24914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoredServer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_249DC()
{
  result = qword_46240;
  if (!qword_46240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46240);
  }

  return result;
}

uint64_t sub_24A4C(uint64_t a1)
{
  v2 = sub_24D10();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_24A98(uint64_t a1)
{
  v2 = sub_24D10();

  return static PreviewProvider._platform.getter(a1, v2);
}

uint64_t sub_24AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoredServer();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoredServer();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FavoredServerItemView()
{
  result = qword_47970;
  if (!qword_47970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24C34()
{
  result = type metadata accessor for FavoredServer();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24CB8()
{
  result = qword_46170;
  if (!qword_46170)
  {
    type metadata accessor for FavoredServerItemView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46170);
  }

  return result;
}

unint64_t sub_24D10()
{
  result = qword_462C8;
  if (!qword_462C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_462C8);
  }

  return result;
}

uint64_t sub_24D8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_24DD8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

uint64_t (*sub_24E40(uint64_t *a1))()
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
  *(v3 + 48) = sub_32C44();
  return sub_28840;
}

uint64_t sub_24F0C(uint64_t a1)
{
  v2 = sub_279C(&qword_462D8, &qword_359C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_462D0, &unk_355E0);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25044(uint64_t *a1))()
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
  v5 = sub_279C(&qword_462D8, &qword_359C0);
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

  v9 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsInProgress;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_279C(&qword_462D0, &unk_355E0);
  sub_32C24();
  swift_endAccess();
  return sub_28844;
}

uint64_t sub_251B4()
{
  v1 = sub_279C(&qword_462D8, &qword_359C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v9 - v5;
  (*(*v0 + 136))(v4);
  sub_28454(&qword_462E0, &qword_462D8, &qword_359C0);
  v7 = sub_32C84();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t sub_2532C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_32C54();

  return v1;
}

uint64_t sub_253A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_253F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(**a2 + 176);
  sub_287F4(*a1);
  return v5(v2, v3, v4);
}

uint64_t sub_2546C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t (*sub_254F0(uint64_t *a1))()
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
  *(v3 + 48) = sub_32C44();
  return sub_28840;
}

uint64_t sub_255C0(uint64_t a1)
{
  v2 = sub_279C(&qword_462F8, &qword_35648);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_462F0, &qword_35640);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_256F8(uint64_t *a1))()
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
  v5 = sub_279C(&qword_462F8, &qword_35648);
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

  v9 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__contentCache;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_279C(&qword_462F0, &qword_35640);
  sub_32C24();
  swift_endAccess();
  return sub_28844;
}

uint64_t sub_25868()
{
  v1 = sub_279C(&qword_462F8, &qword_35648);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v9 - v5;
  (*(*v0 + 192))(v4);
  sub_28454(&qword_46300, &qword_462F8, &qword_35648);
  v7 = sub_32C84();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t sub_259BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_32C54();

  return v1;
}

uint64_t sub_25A30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25AC8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t (*sub_25B38(uint64_t *a1))()
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
  *(v3 + 48) = sub_32C44();
  return sub_25BDC;
}

uint64_t sub_25BFC(uint64_t a1)
{
  v2 = sub_279C(&qword_46310, &qword_356A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_46308, &qword_35698);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25D34(uint64_t *a1))()
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
  v5 = sub_279C(&qword_46310, &qword_356A0);
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

  v9 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__isFetchingContentCaches;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_279C(&qword_46308, &qword_35698);
  sub_32C24();
  swift_endAccess();
  return sub_25EA4;
}

uint64_t sub_25EA8()
{
  v1 = sub_279C(&qword_46310, &qword_356A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v9 - v5;
  (*(*v0 + 248))(v4);
  sub_28454(&qword_46318, &qword_46310, &qword_356A0);
  v7 = sub_32C84();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t sub_2603C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_32C54();

  return v1;
}

uint64_t sub_260A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_260FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 288);

  return v3(v4);
}

uint64_t sub_2616C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t (*sub_261D8(uint64_t *a1))()
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
  *(v3 + 48) = sub_32C44();
  return sub_28840;
}

void sub_2627C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2630C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_279C(a2, a3);
  sub_32C24();
  return swift_endAccess();
}

uint64_t sub_26384(uint64_t a1)
{
  v2 = sub_279C(&qword_46330, &unk_35700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_46328, &qword_356F8);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264BC(uint64_t *a1))()
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
  v5 = sub_279C(&qword_46330, &unk_35700);
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

  v9 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsByHostPort;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_279C(&qword_46328, &qword_356F8);
  sub_32C24();
  swift_endAccess();
  return sub_28844;
}

void sub_2662C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_32C34();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_32C34();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_26794()
{
  v1 = sub_279C(&qword_46330, &unk_35700);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v9 - v5;
  (*(*v0 + 304))(v4);
  sub_28454(&qword_46338, &qword_46330, &unk_35700);
  v7 = sub_32C84();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t sub_268CC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_26904();
  return v3;
}

uint64_t sub_26904()
{
  v1 = sub_32AC4();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CachingServer();
  v48 = *(v4 - 8);
  v49 = v4 - 8;
  v50 = v48;
  v5 = *(v48 + 64);
  __chkstk_darwin(v4 - 8);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_279C(&qword_46328, &qword_356F8);
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v43 = &v42 - v9;
  v42 = sub_279C(&qword_46308, &qword_35698);
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v42);
  v13 = &v42 - v12;
  v14 = sub_279C(&qword_462F0, &qword_35640);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  v19 = sub_279C(&qword_462D0, &unk_355E0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v42 - v22;
  v24 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsInProgress;
  v51 = &_swiftEmptySetSingleton;
  sub_279C(&qword_46080, &qword_35590);
  sub_32C14();
  (*(v20 + 32))(v0 + v24, v23, v19);
  v25 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__contentCache;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  sub_279C(&qword_462E8, &qword_355F0);
  sub_32C14();
  (*(v15 + 32))(v0 + v25, v18, v14);
  v26 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__isFetchingContentCaches;
  LOBYTE(v51) = 0;
  sub_32C14();
  (*(v10 + 32))(v0 + v26, v13, v42);
  v27 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsByHostPort;
  v51 = sub_28280(&_swiftEmptyArrayStorage);
  sub_279C(&qword_46320, &qword_356A8);
  v28 = v43;
  sub_32C14();
  (*(v44 + 32))(v0 + v27, v28, v45);
  v29 = v47;
  sub_32AB4();
  v30 = v46;
  sub_1759C(v29, 0xD000000000000013, 0x800000000003B2F0, 0, 1, 0, 0, 1, v46);
  sub_279C(&qword_46088, &qword_35138);
  v31 = *(v48 + 72);
  v32 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_33E20;
  v34 = v33 + v32;
  v35 = v30;
  sub_8F98(v30, v34, type metadata accessor for CachingServer);
  v36 = nullsub_1(v33);
  v38 = v37;
  v40 = v39;
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = v36;
  v52 = v38;
  v53 = v40;

  sub_32C64();
  sub_1B4D4(v35);
  return v0;
}

uint64_t sub_26E74(uint64_t a1, uint64_t a2)
{
  v5 = sub_32A84();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v19[-v10];
  v12 = sub_279C(&qword_451B8, &qword_35710);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v19[-v14];

  sub_32A44();
  sub_32A64();
  sub_A040(v11, v9, 1024000, 0, v15, 60.02);
  v16 = type metadata accessor for PerformanceResult();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v17 = (*(*v2 + 296))(v19);
  sub_27054(v15, a1, a2);
  return v17(v19, 0);
}

uint64_t sub_27054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_279C(&qword_451B8, &qword_35710);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PerformanceResult();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_28728(a1);
    sub_277AC(a2, a3, v10);

    return sub_28728(v10);
  }

  else
  {
    sub_EB0C(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_27E40(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

unint64_t sub_271EC()
{
  v0 = sub_2F8C(&_swiftEmptyArrayStorage);
  v1 = sub_28280(&_swiftEmptyArrayStorage);

  return sub_28E68(v0, v1);
}

uint64_t sub_2723C()
{
  v1 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsInProgress;
  v2 = sub_279C(&qword_462D0, &unk_355E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__contentCache;
  v4 = sub_279C(&qword_462F0, &qword_35640);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__isFetchingContentCaches;
  v6 = sub_279C(&qword_46308, &qword_35698);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsByHostPort;
  v8 = sub_279C(&qword_46328, &qword_356F8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_2738C()
{
  v1 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsInProgress;
  v2 = sub_279C(&qword_462D0, &unk_355E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__contentCache;
  v4 = sub_279C(&qword_462F0, &qword_35640);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__isFetchingContentCaches;
  v6 = sub_279C(&qword_46308, &qword_35698);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14Content_Caches23MockContentCacheService__performanceResultsByHostPort;
  v8 = sub_279C(&qword_46328, &qword_356F8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v9, v10);
}

uint64_t sub_277AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26C8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2803C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for PerformanceResult();
    v22 = *(v15 - 8);
    sub_EB0C(v14 + *(v22 + 72) * v9, a3);
    sub_27C54(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for PerformanceResult();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_27904(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PerformanceResult();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_279C(&qword_46510, &qword_35768);
  v44 = a2;
  result = sub_335E4();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_EB0C(v31, v45);
      }

      else
      {
        sub_8F98(v31, v45, type metadata accessor for PerformanceResult);
      }

      v32 = *(v12 + 40);
      sub_336C4();
      sub_332E4();
      result = sub_336E4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_EB0C(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_27C54(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_33504() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_336C4();

      sub_332E4();
      v13 = sub_336E4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for PerformanceResult() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_27E40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2803C();
      goto LABEL_7;
    }

    sub_27904(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_26C8(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_33664();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for PerformanceResult() - 8) + 72) * v12;

    return sub_28790(a1, v20);
  }

LABEL_13:
  sub_27FA4(v12, a2, a3, a1, v18);
}

uint64_t sub_27FA4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for PerformanceResult();
  result = sub_EB0C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_2803C()
{
  v1 = v0;
  v2 = type metadata accessor for PerformanceResult();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_279C(&qword_46510, &qword_35768);
  v5 = *v0;
  v6 = sub_335D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_8F98(*(v5 + 56) + v27, v31, type metadata accessor for PerformanceResult);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_EB0C(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

unint64_t sub_28280(uint64_t a1)
{
  v2 = sub_279C(&qword_46518, &qword_35770);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_279C(&qword_46510, &qword_35768);
    v8 = sub_335F4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_33C4(v10, v6, &qword_46518, &qword_35770);
      v12 = *v6;
      v13 = v6[1];
      result = sub_26C8(*v6, v13);
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
      v19 = type metadata accessor for PerformanceResult();
      result = sub_EB0C(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
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

uint64_t sub_28454(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_8BD0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MockContentCacheService()
{
  result = qword_479F0;
  if (!qword_479F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_284FC()
{
  sub_286D4(319, &qword_46368, &qword_46080, &qword_35590);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_286D4(319, &qword_46370, &qword_462E8, &qword_355F0);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_28684();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_286D4(319, &unk_46380, &qword_46320, &qword_356A8);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_28684()
{
  if (!qword_46378)
  {
    v0 = sub_32C74();
    if (!v1)
    {
      atomic_store(v0, &qword_46378);
    }
  }
}

void sub_286D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_8BD0(a3, a4);
    v5 = sub_32C74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_28728(uint64_t a1)
{
  v2 = sub_279C(&qword_451B8, &qword_35710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_28790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceResult();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_287F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_28854()
{
  v0 = sub_32BA4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_32B94();
  sub_23A50();
  return sub_32B74();
}

uint64_t sub_288FC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_32974();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_289C8, 0, 0);
}

uint64_t sub_289C8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = v5[3];
  v8 = v5[4];
  sub_3294(v5, v7);
  v9 = (*(v8 + 72))(v7, v8);
  sub_28AEC(v9, v10, v11);

  (*(v4 + 16))(v1, v2, v3);
  sub_32B84();
  (*(v4 + 8))(v2, v3);

  v12 = v0[1];

  return v12();
}

uint64_t sub_28AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  isa = sub_331D4().super.isa;
  v22[0] = 0;
  v7 = [v5 dataWithJSONObject:isa options:0 error:v22];

  v8 = v22[0];
  if (v7)
  {
    v9 = sub_32994();
    v11 = v10;

    v12 = sub_29DE0(v9, v11);
    if (!v13)
    {
      v20 = v9;
      v21 = v11;
      sub_29F8C(v9, v11);
      sub_279C(&qword_46520, &qword_35798);
      if (swift_dynamicCast())
      {
        sub_3484(v18, v22);
        sub_3294(v22, v23);
        if (sub_33614())
        {
          sub_EC48(v9, v11);
          sub_3294(v22, v23);
          sub_33604();
          v14 = *(&v18[0] + 1);
          v15 = *&v18[0];
          sub_3364(v22);
LABEL_10:
          sub_325EC(a2, a3, v15, v14);
        }

        sub_3364(v22);
      }

      else
      {
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        sub_93EC(v18, &qword_46528, &qword_357A0);
      }

      v12 = sub_29A1C(v9, v11);
    }

    v15 = v12;
    v14 = v13;
    sub_EC48(v9, v11);
    goto LABEL_10;
  }

  v17 = v8;
  sub_32924();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_28D84()
{
  v0 = sub_32BA4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_32B94();
  return sub_32B74();
}

unint64_t sub_28E68(uint64_t a1, uint64_t a2)
{
  v115 = a1;
  v3 = sub_32A84();
  v112 = *(v3 - 8);
  v4 = *(v112 + 64);
  __chkstk_darwin(v3);
  v111 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_279C(&qword_46530, &qword_357A8);
  v6 = *(*(v128 - 8) + 64);
  v7 = __chkstk_darwin(v128);
  v131 = (&v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v127 = &v106 - v9;
  v10 = sub_32BD4();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v106 - v17;
  __chkstk_darwin(v16);
  v20 = &v106 - v19;
  v21 = sub_2167C();
  v22 = v11[2];
  v117 = v21;
  v118 = v11 + 2;
  v116 = v22;
  (v22)(v20);

  v23 = sub_32BB4();
  v24 = sub_33434();
  v25 = os_log_type_enabled(v23, v24);
  v114 = v15;
  v113 = v3;
  if (v25)
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = *(a2 + 16);

    _os_log_impl(&dword_0, v23, v24, "Creating shareable result with %ld performance results", v26, 0xCu);
  }

  else
  {
  }

  v27 = v11[1];
  v120 = v11 + 1;
  v119 = v27;
  v27(v20, v10);
  v28 = sub_2F8C(&_swiftEmptyArrayStorage);
  v29 = sub_1623C();
  v31 = *v29;
  v30 = v29[1];
  v110 = v31;
  v32 = *(a2 + 16);
  if (v32)
  {
    v106 = v28;
    v108 = v18;
    v109 = v10;
    *&v137 = &_swiftEmptyArrayStorage;
    v107 = v30;

    sub_29B10(0, v32, 0);
    v33 = v137;
    v34 = a2 + 64;
    v35 = -1 << *(a2 + 32);
    v36 = sub_334F4();
    v123 = *(a2 + 36);
    result = sub_279C(&qword_451A0, qword_33ED0);
    v126 = result;
    v38 = 0;
    v39 = *(a2 + 32);
    v121 = a2 + 72;
    v125 = a2;
    v122 = v32;
    v124 = a2 + 64;
    v40 = v131;
    while ((v36 & 0x8000000000000000) == 0 && v36 < 1 << v39)
    {
      v44 = v36 >> 6;
      if ((*(v34 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
      {
        goto LABEL_31;
      }

      v129 = v38;
      v130 = 1 << v36;
      v45 = v128;
      v46 = *(v128 + 48);
      v47 = *(a2 + 56);
      v48 = (*(a2 + 48) + 16 * v36);
      v50 = *v48;
      v49 = v48[1];
      v51 = type metadata accessor for PerformanceResult();
      v52 = v127;
      sub_2A140(v47 + *(*(v51 - 8) + 72) * v36, &v127[v46]);
      *v40 = v50;
      v40[1] = v49;
      sub_EB0C(&v52[v46], v40 + *(v45 + 48));
      v134 = v50;
      v135 = v49;
      swift_bridgeObjectRetain_n();
      v136 = sub_9964();
      v53 = sub_335F4();

      v54 = v134;
      v55 = v135;
      v56 = v136;

      result = sub_26C8(v54, v55);
      if (v57)
      {
        goto LABEL_32;
      }

      v53[(result >> 6) + 8] |= 1 << result;
      v58 = (v53[6] + 16 * result);
      *v58 = v54;
      v58[1] = v55;
      *(v53[7] + 8 * result) = v56;
      v59 = v53[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_33;
      }

      v53[2] = v61;

      sub_93EC(&v134, &qword_45180, &qword_33E80);
      result = sub_93EC(v131, &qword_46530, &qword_357A8);
      *&v137 = v33;
      v63 = v33[2];
      v62 = v33[3];
      if (v63 >= v62 >> 1)
      {
        result = sub_29B10((v62 > 1), v63 + 1, 1);
        v33 = v137;
      }

      v33[2] = v63 + 1;
      v33[v63 + 4] = v53;
      a2 = v125;
      v39 = *(v125 + 32);
      v41 = 1 << v39;
      if (v36 >= 1 << v39)
      {
        goto LABEL_34;
      }

      v34 = v124;
      v64 = *(v124 + 8 * v44);
      if ((v64 & v130) == 0)
      {
        goto LABEL_35;
      }

      if (v123 != *(v125 + 36))
      {
        goto LABEL_36;
      }

      v65 = v64 & (-2 << (v36 & 0x3F));
      if (v65)
      {
        v41 = __clz(__rbit64(v65)) | v36 & 0x7FFFFFFFFFFFFFC0;
        v42 = v122;
        v43 = v129;
      }

      else
      {
        v66 = v44 << 6;
        v67 = v44 + 1;
        v68 = (v121 + 8 * v44);
        v42 = v122;
        v43 = v129;
        while (v67 < (v41 + 63) >> 6)
        {
          v70 = *v68++;
          v69 = v70;
          v66 += 64;
          ++v67;
          if (v70)
          {
            v41 = __clz(__rbit64(v69)) + v66;
            break;
          }
        }
      }

      v38 = v43 + 1;
      v36 = v41;
      if (v38 == v42)
      {
        v10 = v109;
        v18 = v108;
        v71 = v107;
        v28 = v106;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v71 = v30;

    v33 = &_swiftEmptyArrayStorage;
LABEL_25:
    v138 = sub_279C(&qword_46538, &unk_357B0);
    *&v137 = v33;
    sub_3284(&v137, v133);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v132 = v28;
    sub_A4AC(v133, v110, v71, isUniquelyReferenced_nonNull_native);

    v73 = v132;
    v74 = v115;

    v75 = swift_isUniquelyReferenced_nonNull_native();
    *&v137 = v73;
    sub_2A1A4(v74, sub_29AC4, 0, v75, &v137);

    nullsub_1(v76);
    isa = sub_331D4().super.isa;

    v78 = sub_1B14(isa);

    *&v137 = v78;
    sub_279C(&qword_45170, &unk_33E70);
    swift_dynamicCast();
    v79 = *&v133[0];
    v116(v18, v117, v10);

    v80 = sub_32BB4();
    v81 = sub_33434();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v137 = v83;
      *v82 = 136315138;
      v84 = sub_331F4();
      v86 = sub_D148(v84, v85, &v137);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_0, v80, v81, "Created shareable result %s", v82, 0xCu);
      sub_3364(v83);
    }

    v87 = v119(v18, v10);
    nullsub_1(v87);
    v88 = sub_1790();
    v90 = v89;
    nullsub_1(v88);
    v91 = sub_1A58(v115);
    v93 = v92;

    nullsub_1(v94);
    v95 = sub_1810();
    v97 = v96;
    *&v137 = 0;
    *(&v137 + 1) = 0xE000000000000000;
    sub_33584(35);

    *&v137 = 0xD000000000000012;
    *(&v137 + 1) = 0x800000000003B620;
    v139._countAndFlagsBits = v88;
    v139._object = v90;
    sub_33304(v139);

    v140._countAndFlagsBits = 544108320;
    v140._object = 0xE400000000000000;
    sub_33304(v140);
    v141._countAndFlagsBits = v95;
    v141._object = v97;
    sub_33304(v141);

    v142._countAndFlagsBits = 58;
    v142._object = 0xE100000000000000;
    sub_33304(v142);
    v143._countAndFlagsBits = v91;
    v143._object = v93;
    sub_33304(v143);

    v144._countAndFlagsBits = 544497952;
    v144._object = 0xE400000000000000;
    sub_33304(v144);
    v98 = v111;
    sub_32A74();
    sub_2A4B4();
    v99 = v113;
    v145._countAndFlagsBits = sub_33624();
    sub_33304(v145);

    (*(v112 + 8))(v98, v99);
    v100 = v137;
    v101 = v114;
    v116(v114, v117, v10);

    v102 = sub_32BB4();
    v103 = sub_33434();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v137 = v105;
      *v104 = 136315138;
      *(v104 + 4) = sub_D148(v100, *(&v100 + 1), &v137);
      _os_log_impl(&dword_0, v102, v103, "With filename %s", v104, 0xCu);
      sub_3364(v105);
    }

    v119(v101, v10);
    return v79;
  }

  return result;
}

uint64_t sub_29A1C(uint64_t a1, unint64_t a2)
{
  sub_29F8C(a1, a2);
  v4 = *(sub_29C64(a1, a2) + 2);
  v5 = sub_332C4();

  return v5;
}

uint64_t sub_29A88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_332C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2740((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

void *sub_29B10(void *a1, int64_t a2, char a3)
{
  result = sub_29B30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29B30(void *result, int64_t a2, char a3, void *a4)
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
    sub_279C(&qword_46560, &qword_35890);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_279C(&qword_46568, &unk_35898);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29C64(uint64_t a1, unint64_t a2)
{
  v4 = sub_329A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_EC48(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_D588(v11, 0);
      v15 = sub_32984();
      sub_EC48(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_29DE0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_332C4();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_332C4();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_328F4();
  if (a1)
  {
    a1 = sub_32914();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_328F4() || !__OFSUB__(v5, sub_32914()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_32904();
  return sub_332C4();
}

uint64_t sub_29F8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_29FE0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2740(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_3284(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_93EC(v22, &qword_46558, &qword_35888);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2A140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2A1A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_29FE0(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_3284(v46, v44);
  v14 = *a5;
  result = sub_26C8(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_A1F4(v20, a4 & 1);
    v22 = *a5;
    result = sub_26C8(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_33664();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_A668();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    sub_3364(v26);
    sub_3284(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_3284(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_29FE0(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_3284(v46, v44);
        v33 = *a5;
        result = sub_26C8(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_A1F4(v37, 1);
          v38 = *a5;
          result = sub_26C8(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          sub_3364(v32);
          sub_3284(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_3284(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_29FE0(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_2A654();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2A4B4()
{
  result = qword_46540;
  if (!qword_46540)
  {
    sub_32A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46540);
  }

  return result;
}

__n128 sub_2A528(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2A53C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2A584(uint64_t result, int a2, int a3)
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

unint64_t sub_2A5F0()
{
  result = qword_46548;
  if (!qword_46548)
  {
    sub_8BD0(&qword_46550, &qword_35880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_46548);
  }

  return result;
}

id sub_2A6A0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_2A6D8()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_47D10 = result;
  return result;
}

uint64_t *sub_2A72C()
{
  if (qword_47A80 != -1)
  {
    swift_once();
  }

  return &qword_47D10;
}

id sub_2A77C()
{
  if (qword_47A80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_47D10;

  return v0;
}

void sub_2A800(uint64_t a1)
{
  if (qword_47A80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_47D10;
  qword_47D10 = a1;
}

uint64_t (*sub_2A880())()
{
  if (qword_47A80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2A92C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_32C54();

  return v1;
}

uint64_t sub_2A9A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_2A9F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_287F4(v2);

  return sub_32C64();
}

uint64_t sub_2AA88()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t sub_2AB28(uint64_t a1)
{
  v2 = sub_279C(&qword_462F8, &qword_35648);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_462F0, &qword_35640);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_2AC60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_32C54();

  return v1;
}

uint64_t sub_2ACD4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2AD24(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t sub_2AD98()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t sub_2AE24(uint64_t a1)
{
  v2 = sub_279C(&qword_46310, &qword_356A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_46308, &qword_35698);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_2AF70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_2AFD0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t sub_2B05C(uint64_t a1)
{
  v2 = sub_279C(&qword_46330, &unk_35700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_279C(&qword_46328, &qword_356F8);
  sub_32C34();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t variable initialization expression of AssetCacheLocatorService.workQueue()
{
  v10 = sub_33464();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_33444();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_331C4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_1507C();
  sub_331B4();
  v11 = &_swiftEmptyArrayStorage;
  sub_3070C(&qword_46598, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_279C(&qword_465A0, &unk_359B0);
  sub_8F50(&qword_465A8, &qword_465A0, &unk_359B0);
  sub_334E4();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  return sub_33494();
}

id variable initialization expression of AssetCacheLocatorService.defaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_33234();
  v2 = [v0 initWithSuiteName:v1];

  return v2;
}

uint64_t sub_2B49C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_2B4D4();
  return v3;
}

uint64_t sub_2B4D4()
{
  v1 = v0;
  v2 = sub_33464();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  __chkstk_darwin(v2);
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_33444();
  v5 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_331C4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_279C(&qword_462D0, &unk_355E0);
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  __chkstk_darwin(v10);
  v45 = &v43 - v12;
  v44 = sub_279C(&qword_46328, &qword_356F8);
  v13 = *(v44 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v44);
  v16 = &v43 - v15;
  v17 = sub_279C(&qword_46308, &qword_35698);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v43 - v20;
  v22 = sub_279C(&qword_462F0, &qword_35640);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v43 - v25;
  v27 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__contentCache;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  sub_279C(&qword_462E8, &qword_355F0);
  sub_32C14();
  (*(v23 + 32))(v1 + v27, v26, v22);
  v28 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__isFetchingContentCaches;
  LOBYTE(v54) = 0;
  sub_32C14();
  (*(v18 + 32))(v1 + v28, v21, v17);
  v29 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__performanceResultsByHostPort;
  v54 = sub_28280(&_swiftEmptyArrayStorage);
  sub_279C(&qword_46320, &qword_356A8);
  sub_32C14();
  (*(v13 + 32))(v1 + v29, v16, v44);
  v30 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__hostPortsInProgress;
  v54 = &_swiftEmptySetSingleton;
  sub_279C(&qword_46080, &qword_35590);
  v31 = v45;
  sub_32C14();
  (*(v46 + 32))(v1 + v30, v31, v47);
  *(v1 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_reporter) = 0;
  v32 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_workQueue;
  sub_1507C();
  sub_331B4();
  v54 = &_swiftEmptyArrayStorage;
  sub_3070C(&qword_46598, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_279C(&qword_465A0, &unk_359B0);
  sub_8F50(&qword_465A8, &qword_465A0, &unk_359B0);
  sub_334E4();
  (*(v52 + 104))(v51, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v53);
  *(v1 + v32) = sub_33494();
  v33 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_downloader;
  type metadata accessor for DownloadTester();
  *(v1 + v33) = sub_CBD8();
  v34 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_defaults;
  v35 = objc_allocWithZone(NSUserDefaults);
  v36 = sub_33234();
  v37 = [v35 initWithSuiteName:v36];

  *(v1 + v34) = v37;
  *(v1 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_rawResults) = 0;
  v38 = [objc_allocWithZone(AssetCacheServicesReporter) initWithDelegate:v1 delegateQueue:*(v1 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_workQueue)];
  v39 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_reporter;
  v40 = *(v1 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_reporter);
  *(v1 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_reporter) = v38;

  v41 = *(v1 + v39);
  if (v41)
  {
    [v41 start];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v54) = 1;

  sub_32C64();
  return v1;
}

uint64_t sub_2BBB4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_279C(&qword_46800, &qword_35A28);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_32BD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2167C();
  (*(v11 + 16))(v14, v15, v10);

  v16 = sub_32BB4();
  v17 = sub_33434();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = v3;
    v19 = a1;
    v20 = v18;
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_D148(v19, a2, &v26);
    _os_log_impl(&dword_0, v16, v17, "Download Test Requested for %{public}s", v20, 0xCu);
    sub_3364(v21);

    a1 = v19;
    v3 = v25;
  }

  (*(v11 + 8))(v14, v10);
  v22 = sub_333F4();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = v3;

  sub_2CFC8(0, 0, v9, &unk_35A38, v23);
}

uint64_t sub_2BE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_32A84();
  v6[20] = v7;
  v8 = *(v7 - 8);
  v6[21] = v8;
  v9 = *(v8 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v10 = sub_279C(&qword_451B8, &qword_35710);
  v6[26] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v12 = sub_32BD4();
  v6[30] = v12;
  v13 = *(v12 - 8);
  v6[31] = v13;
  v14 = *(v13 + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return _swift_task_switch(sub_2C034, 0, 0);
}

uint64_t sub_2C034()
{
  v33 = v0;
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[18];
  v5 = sub_2167C();
  v0[36] = v5;
  v6 = *(v3 + 16);
  v0[37] = v6;
  v0[38] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_32BB4();
  v8 = sub_33434();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[35];
  v11 = v0[30];
  v12 = v0[31];
  if (v9)
  {
    v14 = v0[17];
    v13 = v0[18];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_D148(v14, v13, &v32);
    _os_log_impl(&dword_0, v7, v8, "Download Test started for %{public}s", v15, 0xCu);
    sub_3364(v16);
  }

  v17 = *(v12 + 8);
  v17(v10, v11);
  v0[39] = v17;
  v18 = v0[29];
  v19 = v0[25];
  v20 = v0[19];
  v21 = type metadata accessor for PerformanceResult();
  v0[40] = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v0[41] = v23;
  v0[42] = (v22 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v23(v18, 1, 1, v21);
  sub_32A64();
  v24 = *(**(v20 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_downloader) + 120);
  v31 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[43] = v26;
  *v26 = v0;
  v26[1] = sub_2C308;
  v27 = v0[28];
  v28 = v0[17];
  v29 = v0[18];

  return v31(v27, v28, v29);
}

uint64_t sub_2C308()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_2C9A4;
  }

  else
  {
    v3 = sub_2C41C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2C41C()
{
  v73 = v0;
  v1 = *(v0 + 336);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 272);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 224);
  (*(v0 + 328))(v8, 0, 1, *(v0 + 320));
  sub_8A84(v8, v7);
  v3(v5, v4, v6);
  v9 = sub_32BB4();
  v10 = sub_33434();
  if (os_log_type_enabled(v9, v10))
  {
    v63 = *(v0 + 272);
    v66 = *(v0 + 312);
    v12 = *(v0 + 240);
    v11 = *(v0 + 248);
    v13 = *(v0 + 232);
    v14 = *(v0 + 208);
    v15 = *(v0 + 216);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v72 = v17;
    *v16 = 136446210;
    swift_beginAccess();
    sub_33C4(v13, v15, &qword_451B8, &qword_35710);
    v18 = sub_33294();
    v20 = sub_D148(v18, v19, &v72);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "PerformanceResult : %{public}s", v16, 0xCu);
    sub_3364(v17);

    v66(v63, v12);
  }

  else
  {
    v21 = *(v0 + 312);
    v22 = *(v0 + 272);
    v23 = *(v0 + 240);
    v24 = *(v0 + 248);

    v21(v22, v23);
  }

  v64 = *(v0 + 296);
  v67 = *(v0 + 304);
  v25 = *(v0 + 232);
  v60 = *(v0 + 240);
  v61 = *(v0 + 288);
  v58 = *(v0 + 216);
  v59 = *(v0 + 264);
  v27 = *(v0 + 144);
  v26 = *(v0 + 152);
  v28 = *(v0 + 136);
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = sub_32C44();
  sub_2EE20(v28, v27);

  v29(v0 + 16, 0);

  swift_beginAccess();
  sub_33C4(v25, v58, &qword_451B8, &qword_35710);
  swift_getKeyPath();
  swift_getKeyPath();

  v30 = sub_32C44();
  sub_27054(v58, v28, v27);
  v30(v0 + 48, 0);

  v64(v59, v61, v60);

  v31 = sub_32BB4();
  v32 = sub_33434();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 312);
  v70 = *(v0 + 264);
  v36 = *(v0 + 240);
  v35 = *(v0 + 248);
  v37 = *(v0 + 232);
  v38 = *(v0 + 200);
  v40 = *(v0 + 160);
  v39 = *(v0 + 168);
  if (v33)
  {
    v65 = *(v0 + 312);
    v69 = *(v0 + 160);
    v42 = *(v0 + 136);
    v41 = *(v0 + 144);
    v68 = *(v0 + 232);
    v43 = swift_slowAlloc();
    v62 = v38;
    v44 = swift_slowAlloc();
    v72 = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_D148(v42, v41, &v72);
    _os_log_impl(&dword_0, v31, v32, "Download Test completed for %{public}s", v43, 0xCu);
    sub_3364(v44);

    v65(v70, v36);
    (*(v39 + 8))(v62, v69);
    v45 = v68;
  }

  else
  {

    v34(v70, v36);
    (*(v39 + 8))(v38, v40);
    v45 = v37;
  }

  sub_93EC(v45, &qword_451B8, &qword_35710);
  v47 = *(v0 + 272);
  v46 = *(v0 + 280);
  v49 = *(v0 + 256);
  v48 = *(v0 + 264);
  v51 = *(v0 + 224);
  v50 = *(v0 + 232);
  v52 = *(v0 + 216);
  v54 = *(v0 + 192);
  v53 = *(v0 + 200);
  v55 = *(v0 + 184);
  v71 = *(v0 + 176);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_2C9A4()
{
  v79 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 304);
  (*(v0 + 296))(*(v0 + 256), *(v0 + 288), *(v0 + 240));
  swift_errorRetain();
  v3 = sub_32BB4();
  v4 = sub_33424();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 352);
    v71 = *(v0 + 312);
    v7 = *(v0 + 248);
    v6 = *(v0 + 256);
    v8 = *(v0 + 240);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v78 = v10;
    *v9 = 136446210;
    *(v0 + 128) = v5;
    swift_errorRetain();
    sub_279C(&qword_45540, &unk_35120);
    v11 = sub_33294();
    v13 = sub_D148(v11, v12, &v78);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "Performance Error: %{public}s", v9, 0xCu);
    sub_3364(v10);

    v71(v6, v8);
  }

  else
  {
    v14 = *(v0 + 312);
    v16 = *(v0 + 248);
    v15 = *(v0 + 256);
    v17 = *(v0 + 240);

    v14(v15, v17);
  }

  v65 = *(v0 + 328);
  v68 = *(v0 + 336);
  v61 = *(v0 + 352);
  v63 = *(v0 + 320);
  v72 = *(v0 + 232);
  v18 = *(v0 + 216);
  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v24 = *(v0 + 160);
  v23 = *(v0 + 168);
  sub_32A64();
  v25 = *(v23 + 16);
  v25(v21, v19, v24);
  v25(v22, v20, v24);
  sub_329C4();
  sub_A040(v21, v22, 0, v61, v18, v26);
  (*(v23 + 8))(v20, v24);
  v65(v18, 0, 1, v63);
  sub_8A84(v18, v72);
  v69 = *(v0 + 296);
  v73 = *(v0 + 304);
  v27 = *(v0 + 232);
  v64 = *(v0 + 240);
  v66 = *(v0 + 288);
  v60 = *(v0 + 216);
  v62 = *(v0 + 264);
  v29 = *(v0 + 144);
  v28 = *(v0 + 152);
  v30 = *(v0 + 136);
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = sub_32C44();
  sub_2EE20(v30, v29);

  v31(v0 + 16, 0);

  swift_beginAccess();
  sub_33C4(v27, v60, &qword_451B8, &qword_35710);
  swift_getKeyPath();
  swift_getKeyPath();

  v32 = sub_32C44();
  sub_27054(v60, v30, v29);
  v32(v0 + 48, 0);

  v69(v62, v66, v64);

  v33 = sub_32BB4();
  v34 = sub_33434();

  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 312);
  v76 = *(v0 + 264);
  v38 = *(v0 + 240);
  v37 = *(v0 + 248);
  v39 = *(v0 + 232);
  v40 = *(v0 + 200);
  v42 = *(v0 + 160);
  v41 = *(v0 + 168);
  if (v35)
  {
    v70 = *(v0 + 312);
    v75 = *(v0 + 160);
    v44 = *(v0 + 136);
    v43 = *(v0 + 144);
    v74 = *(v0 + 232);
    v45 = swift_slowAlloc();
    v67 = v40;
    v46 = swift_slowAlloc();
    v78 = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_D148(v44, v43, &v78);
    _os_log_impl(&dword_0, v33, v34, "Download Test completed for %{public}s", v45, 0xCu);
    sub_3364(v46);

    v70(v76, v38);
    (*(v41 + 8))(v67, v75);
    v47 = v74;
  }

  else
  {

    v36(v76, v38);
    (*(v41 + 8))(v40, v42);
    v47 = v39;
  }

  sub_93EC(v47, &qword_451B8, &qword_35710);
  v49 = *(v0 + 272);
  v48 = *(v0 + 280);
  v51 = *(v0 + 256);
  v50 = *(v0 + 264);
  v53 = *(v0 + 224);
  v52 = *(v0 + 232);
  v54 = *(v0 + 216);
  v56 = *(v0 + 192);
  v55 = *(v0 + 200);
  v57 = *(v0 + 184);
  v77 = *(v0 + 176);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_2CFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_279C(&qword_46800, &qword_35A28);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_33C4(a3, v27 - v11, &qword_46800, &qword_35A28);
  v13 = sub_333F4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_93EC(v12, &qword_46800, &qword_35A28);
  }

  else
  {
    sub_333E4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_333D4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_332A4() + 32;
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

      sub_93EC(a3, &qword_46800, &qword_35A28);

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

  sub_93EC(a3, &qword_46800, &qword_35A28);
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

uint64_t sub_2D2F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2D35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v9 = sub_331A4();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_331C4();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v24);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v5 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_workQueue);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2D2F0;
  aBlock[3] = v22;
  v19 = _Block_copy(aBlock);

  sub_331B4();
  v26 = _swiftEmptyArrayStorage;
  sub_3070C(&qword_46818, &type metadata accessor for DispatchWorkItemFlags);
  sub_279C(&qword_46820, &qword_35AD0);
  sub_8F50(&qword_46828, &qword_46820, &qword_35AD0);
  sub_334E4();
  sub_33484();
  _Block_release(v19);
  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);
}

uint64_t sub_2D66C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_32BD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(**(result + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_downloader) + 136);

    v11(a2, a3);

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = sub_32C44();
    v18 = a2;
    sub_2EE20(a2, a3);

    v12(v19, 0);

    v13 = sub_2167C();
    (*(v6 + 16))(v9, v13, v5);

    v14 = sub_32BB4();
    v15 = sub_33434();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19[0] = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_D148(v18, a3, v19);
      _os_log_impl(&dword_0, v14, v15, "Download Test canceled for %{public}s", v16, 0xCu);
      sub_3364(v17);
    }

    else
    {
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t AssetCacheLocatorService.deinit()
{
  v1 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__contentCache;
  v2 = sub_279C(&qword_462F0, &qword_35640);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__isFetchingContentCaches;
  v4 = sub_279C(&qword_46308, &qword_35698);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__performanceResultsByHostPort;
  v6 = sub_279C(&qword_46328, &qword_356F8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService__hostPortsInProgress;
  v8 = sub_279C(&qword_462D0, &unk_355E0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  v9 = *(v0 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_downloader);

  v10 = *(v0 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_rawResults);

  return v0;
}

uint64_t AssetCacheLocatorService.__deallocating_deinit()
{
  AssetCacheLocatorService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_2DBD4()
{
  v0 = sub_279C(&qword_462D8, &qword_359C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_279C(&qword_462D0, &unk_355E0);
  sub_32C24();
  swift_endAccess();
  sub_8F50(&qword_462E0, &qword_462D8, &qword_359C0);
  v5 = sub_32C84();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_2DD34()
{
  v1 = sub_279C(&qword_462F8, &qword_35648);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v9 - v5;
  (*(*v0 + 176))(v4);
  sub_8F50(&qword_46300, &qword_462F8, &qword_35648);
  v7 = sub_32C84();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t sub_2DE6C()
{
  v1 = sub_279C(&qword_46310, &qword_356A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v9 - v5;
  (*(*v0 + 224))(v4);
  sub_8F50(&qword_46318, &qword_46310, &qword_356A0);
  v7 = sub_32C84();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t sub_2DFA4()
{
  v1 = sub_279C(&qword_46330, &unk_35700);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v9 - v5;
  (*(*v0 + 272))(v4);
  sub_8F50(&qword_46338, &qword_46330, &unk_35700);
  v7 = sub_32C84();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t sub_2E13C()
{
  v1 = sub_279C(&qword_462F8, &qword_35648);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v9 - v5;
  (*(**v0 + 176))(v4);
  sub_8F50(&qword_46300, &qword_462F8, &qword_35648);
  v7 = sub_32C84();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t sub_2E278()
{
  v1 = sub_279C(&qword_46310, &qword_356A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v9 - v5;
  (*(**v0 + 224))(v4);
  sub_8F50(&qword_46318, &qword_46310, &qword_356A0);
  v7 = sub_32C84();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t sub_2E3F8()
{
  v1 = sub_279C(&qword_46330, &unk_35700);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v9 - v5;
  (*(**v0 + 272))(v4);
  sub_8F50(&qword_46338, &qword_46330, &unk_35700);
  v7 = sub_32C84();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t sub_2E548()
{
  v1 = sub_279C(&qword_462D8, &qword_359C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  sub_279C(&qword_462D0, &unk_355E0);
  sub_32C24();
  swift_endAccess();
  sub_8F50(&qword_462E0, &qword_462D8, &qword_359C0);
  v7 = sub_32C84();
  (*(v2 + 8))(v5, v1);
  return v7;
}

unint64_t sub_2E6F4()
{
  v1 = *v0;
  if (*(v1 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_rawResults) && (v2 = *(v1 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_rawResults), v3 = , v4 = sub_2E848(v3), v5 = , v4))
  {
    v6 = (*(*v1 + 248))(v5);
    v7 = v4;
  }

  else
  {
    v8 = sub_2F8C(_swiftEmptyArrayStorage);
    v6 = sub_28280(_swiftEmptyArrayStorage);
    v7 = v8;
  }

  return sub_28E68(v7, v6);
}

unint64_t sub_2E7A0()
{
  if (*(v0 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_rawResults) && (v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_rawResults), v2 = , v3 = sub_2E848(v2), v4 = , v3))
  {
    v5 = (*(*v0 + 248))(v4);
    v6 = v3;
  }

  else
  {
    v7 = sub_2F8C(_swiftEmptyArrayStorage);
    v5 = sub_28280(_swiftEmptyArrayStorage);
    v6 = v7;
  }

  return sub_28E68(v6, v5);
}

unint64_t sub_2E848(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_279C(&qword_451A8, &qword_34190);
    v2 = sub_335F4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_3228(*(a1 + 48) + 40 * v14, v29);
        sub_2740(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_3228(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2740(v27 + 8, v22);
        sub_93EC(v26, &qword_46810, &unk_35AC0);
        v23 = v20;
        sub_3284(v22, v24);
        v15 = v23;
        sub_3284(v24, v25);
        sub_3284(v25, &v23);
        result = sub_26C8(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_3364(v12);
          result = sub_3284(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_3284(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_93EC(v26, &qword_46810, &unk_35AC0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2EB24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_32C54();

  *a2 = v5;
  return result;
}

uint64_t sub_2EBB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_32C64();
}

uint64_t sub_2EC30(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2ED28;

  return v7(a1);
}

uint64_t sub_2ED28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2EE20(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_336C4();
  sub_332E4();
  v7 = sub_336E4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_33644() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2EF5C();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_2F550(v9);
  *v2 = v20;
  return v13;
}

void *sub_2EF5C()
{
  v1 = v0;
  sub_279C(&qword_46808, &unk_35AB0);
  v2 = *v0;
  v3 = sub_33554();
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

uint64_t sub_2F0B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_279C(&qword_46808, &unk_35AB0);
  result = sub_33564();
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
      sub_336C4();

      sub_332E4();
      result = sub_336E4();
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

uint64_t sub_2F2F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_279C(&qword_46808, &unk_35AB0);
  result = sub_33564();
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
      sub_336C4();
      sub_332E4();
      result = sub_336E4();
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

unint64_t sub_2F550(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_33504();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_336C4();

        sub_332E4();
        v15 = sub_336E4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2F714(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_336C4();
  sub_332E4();
  v9 = sub_336E4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_33644() & 1) != 0)
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

    sub_2F864(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_2F864(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_2F2F0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2EF5C();
      goto LABEL_16;
    }

    sub_2F0B8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_336C4();
  sub_332E4();
  result = sub_336E4();
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

      result = sub_33644();
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
  result = sub_33654();
  __break(1u);
  return result;
}

uint64_t sub_2F9E4(uint64_t a1)
{
  v3 = sub_32BD4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_160EC();
  v10 = *v8;
  v9 = *(v8 + 1);
  v20 = v10;
  v21 = v9;

  sub_33544();
  if (*(a1 + 16) && (v11 = sub_2830(v22), (v12 & 1) != 0))
  {
    sub_2740(*(a1 + 56) + 32 * v11, v23);
    sub_3310(v22);
    if (swift_dynamicCast() && v20 >= 1)
    {

      result = sub_1E0D8(v13);
      if (v1)
      {
        return swift_willThrow();
      }

      return result;
    }
  }

  else
  {
    sub_3310(v22);
  }

  v15 = sub_2167C();
  (*(v4 + 16))(v7, v15, v3);
  v16 = sub_32BB4();
  v17 = sub_33414();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "There are no content caches", v18, 2u);
  }

  (*(v4 + 8))(v7, v3);
  return 0;
}

uint64_t sub_2FC18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_32BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_2167C();
  v11 = *(v5 + 16);
  v29 = v10;
  v30 = v5 + 16;
  v28 = v11;
  v11(v9);

  v12 = sub_32BB4();
  v13 = sub_33414();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v2;
    v15 = v14;
    v26 = swift_slowAlloc();
    v31 = a1;
    v32[0] = v26;
    *v15 = 136446210;

    sub_279C(&qword_46830, &qword_35AD8);
    v16 = sub_33294();
    v18 = sub_D148(v16, v17, v32);

    *(v15 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "reporter results : %{public}s", v15, 0xCu);
    sub_3364(v26);

    v2 = v27;
  }

  result = (*(v5 + 8))(v9, v4);
  if (a1)
  {
    v20 = sub_2F9E4(a1);
    v22 = v21;
    v24 = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    v32[0] = v20;
    v32[1] = v22;
    v32[2] = v24;

    sub_32C64();
    v25 = *(v2 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_rawResults);
    *(v2 + OBJC_IVAR____TtC14Content_Caches24AssetCacheLocatorService_rawResults) = a1;

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v32[0]) = 0;

    return sub_32C64();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for AssetCacheLocatorService()
{
  result = qword_47B00;
  if (!qword_47B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_30078()
{
  sub_286D4(319, &qword_46370, &qword_462E8, &qword_355F0);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_28684();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_286D4(319, &unk_46380, &qword_46320, &qword_356A8);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_286D4(319, &qword_46368, &qword_46080, &qword_35590);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_30228()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_30270()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_30318;

  return sub_2BE78(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_30318()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_3040C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_30444(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_307AC;

  return sub_2EC30(a1, v5);
}

uint64_t sub_304FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_30318;

  return sub_2EC30(a1, v5);
}