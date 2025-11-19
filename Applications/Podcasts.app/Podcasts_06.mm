void sub_10016E94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = (v6 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  v10 = *(v6 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  sub_100183C98(a1);
  sub_100183CD8(v10);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100366FC0(v7);
    swift_unknownObjectRelease();
  }

  v11 = sub_100168088(&qword_1005736A8);
  v12 = objc_allocWithZone(v11);
  v13 = &v12[*((swift_isaMask & *v12) + 0x180)];
  *v13 = 0;
  v13[8] = 2;
  v14 = &v12[*((swift_isaMask & *v12) + 0x188)];
  *v14 = sub_100183D18;
  *(v14 + 1) = v7;
  v128.receiver = v12;
  v128.super_class = v11;

  v115.super_class = objc_msgSendSuper2(&v128, "init");
  v15 = sub_100168088(&qword_1005736B0);
  v16 = objc_allocWithZone(v15);
  v17 = &v16[*((swift_isaMask & *v16) + 0x180)];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 8) = 512;
  v18 = &v16[*((swift_isaMask & *v16) + 0x188)];
  *v18 = sub_100183D20;
  v18[1] = v7;
  v127.receiver = v16;
  v127.super_class = v15;

  v19 = objc_msgSendSuper2(&v127, "init");
  v20 = sub_100168088(&unk_10057A690);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[*((swift_isaMask & *v21) + 0x180)];
  *v22 = 0;
  v22[8] = 2;
  v23 = &v21[*((swift_isaMask & *v21) + 0x188)];
  *v23 = sub_100183D3C;
  v23[1] = v7;
  v126.receiver = v21;
  v126.super_class = v20;

  v115.receiver = objc_msgSendSuper2(&v126, "init");
  v24 = OBJC_IVAR____TtC8Podcasts11JobPipeline_jobStorage;
  sub_100009F1C(0, &qword_1005748A0);

  *v116 = *(v7 + v24);
  swift_unknownObjectRetain();
  v25 = static OS_os_log.downloads.getter();
  v26 = sub_100168088(&qword_1005736B8);
  v27 = objc_allocWithZone(v26);
  v28 = &v27[*((swift_isaMask & *v27) + 0x198)];
  *v28 = 0;
  v28[8] = 2;
  v29 = &v27[*((swift_isaMask & *v27) + 0x1A8)];
  *v29 = sub_100183D58;
  v29[1] = v7;
  *&v27[*((swift_isaMask & *v27) + 0x1A0)] = *v116;
  *&v27[*((swift_isaMask & *v27) + 0x1B0)] = v25;
  v125.receiver = v27;
  v125.super_class = v26;
  v112 = objc_msgSendSuper2(&v125, "init");
  v30 = sub_100168088(&qword_1005736C0);
  v31 = objc_allocWithZone(v30);
  sub_100168088(&qword_100581890);
  swift_storeEnumTagMultiPayload();
  v32 = (v31 + *((swift_isaMask & *v31) + 0x188));
  *v32 = sub_100183D60;
  v32[1] = v7;
  v124.receiver = v31;
  v124.super_class = v30;

  v111 = objc_msgSendSuper2(&v124, "init");
  v33 = swift_allocObject();
  *(v33 + 2) = v7;
  *(v33 + 3) = a5;
  *(v33 + 4) = a6;
  v34 = sub_100168088(&qword_1005736C8);
  v35 = objc_allocWithZone(v34);
  swift_storeEnumTagMultiPayload();
  v36 = (v35 + *((swift_isaMask & *v35) + 0x188));
  *v36 = sub_100183DBC;
  v36[1] = v33;

  v109 = a6;
  sub_100013CB4(a5);
  v123.receiver = v35;
  v123.super_class = v34;
  v110 = objc_msgSendSuper2(&v123, "init");
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = (v115.super_class + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v39 = *(v115.super_class + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  *v38 = sub_100183DDC;
  v38[1] = v37;

  sub_1000112B4(v39);

  ObjectType = swift_getObjectType();
  v41 = swift_conformsToProtocol2();
  if (!v41)
  {
    __break(1u);
    goto LABEL_10;
  }

  v42 = v41;
  v43 = swift_allocObject();
  *(v43 + 24) = v42;
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v43;
  v46 = *(v42 + 72);
  v47 = v115.super_class;

  v46(sub_10003B6A0, v45, ObjectType, v42);

  v122.receiver = v19;
  v122.super_class = type metadata accessor for BaseOperation();
  v115.super_class = v122.super_class;
  objc_msgSendSuper2(&v122, "addDependency:", v47);

  v108 = v47;
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = &v19[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v50 = *&v19[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v49 = sub_100182704;
  v49[1] = v48;
  v51 = v19;

  sub_1000112B4(v50);

  v52 = swift_getObjectType();
  v53 = swift_conformsToProtocol2();
  if (!v53)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v54 = v53;
  v55 = swift_allocObject();
  *(v55 + 24) = v54;
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v55;
  v58 = *(v54 + 72);
  v59 = v51;

  v58(sub_10003B6A0, v57, v52, v54);

  v121 = v115;
  objc_msgSendSuper2(&v121, "addDependency:", v59);

  v60 = v115.receiver;
  v115.receiver = v59;

  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = &v60[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v63 = *&v60[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v62 = sub_100182A20;
  v62[1] = v61;

  sub_1000112B4(v63);

  v64 = swift_getObjectType();
  v65 = swift_conformsToProtocol2();
  if (!v65)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v66 = v65;
  v67 = swift_allocObject();
  *(v67 + 24) = v66;
  swift_unknownObjectWeakInit();
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = swift_allocObject();
  *(v69 + 16) = v68;
  *(v69 + 24) = v67;
  v70 = *(v66 + 72);
  v71 = v60;

  v70(sub_10003B6A0, v69, v64, v66);

  v120.receiver = v112;
  v120.super_class = v115.super_class;
  objc_msgSendSuper2(&v120, "addDependency:", v71);

  v72 = v112;
  v113 = v71;

  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = &v72[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v75 = *&v72[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v74 = sub_100183DE4;
  v74[1] = v73;

  sub_1000112B4(v75);

  v76 = swift_getObjectType();
  v77 = swift_conformsToProtocol2();
  if (!v77)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v78 = v77;
  v79 = swift_allocObject();
  *(v79 + 24) = v78;
  swift_unknownObjectWeakInit();
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  *(v81 + 24) = v79;
  v82 = *(v78 + 72);
  v83 = v72;

  v82(sub_10003B6A0, v81, v76, v78);

  v119.receiver = v111;
  v119.super_class = v115.super_class;
  objc_msgSendSuper2(&v119, "addDependency:", v83);

  v84 = v111;
  v85 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v86 = &v84[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v87 = *&v84[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v86 = sub_100183DE4;
  v86[1] = v85;

  sub_1000112B4(v87);

  v88 = swift_getObjectType();
  v89 = swift_conformsToProtocol2();
  if (v89)
  {
    v90 = v89;
    v91 = swift_allocObject();
    *(v91 + 24) = v90;
    swift_unknownObjectWeakInit();
    v92 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v93 = swift_allocObject();
    *(v93 + 16) = v92;
    *(v93 + 24) = v91;
    v94 = *(v90 + 72);
    v95 = v84;

    v94(sub_10003B6A0, v93, v88, v90);

    v118.receiver = v110;
    v118.super_class = v115.super_class;
    objc_msgSendSuper2(&v118, "addDependency:", v95);

    v96 = v110;
    v97 = swift_allocObject();
    *(v97 + 16) = a5;
    *(v97 + 24) = v109;
    v98 = &v96[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v99 = *&v96[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    *v98 = sub_100183E2C;
    v98[1] = v97;
    sub_100013CB4(a5);
    sub_1000112B4(v99);

    v117 = sub_10016E37C();
    sub_100168088(&unk_100574680);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_100400780;
    *(v100 + 32) = v108;
    *(v100 + 40) = v115.receiver;
    *(v100 + 48) = v113;
    *(v100 + 56) = v83;
    *(v100 + 64) = v95;
    *(v100 + 72) = v96;
    sub_100009F1C(0, &unk_10057A6A0);
    v101 = v108;
    v102 = v115.receiver;
    v103 = v113;
    v104 = v83;
    v105 = v95;
    v106 = v96;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v117 addOperations:isa waitUntilFinished:0];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_10016F7C4(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *(a4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);

  if (v8)
  {
    sub_100183C98(v8);
    v9 = swift_unknownObjectRetain();
    sub_100183CD8(v9);

    sub_100347F30(v8, sub_1001841EC, v7);
    swift_unknownObjectRelease();
  }

  else
  {

    v11[0] = 0;
    v11[1] = 0;
    v12 = 64;
    return a2(v11);
  }
}

uint64_t sub_10016F904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v5 == 2)
    {
      static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v14 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100400790;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = v17;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_100022C18();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v19 = static OS_os_log.downloads.getter();
      os_log(_:dso:log:_:_:)();
    }

    goto LABEL_14;
  }

  if (v5)
  {
LABEL_14:
    result = 0;
    v21 = 0;
    goto LABEL_17;
  }

  v6 = *(a1 + 8);
  if (v4 == 2 && v3 == 1 && v6 == 0)
  {
    sub_1001841D0(1, 0, 2);
    sub_100182A04(1, 0, 2);
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v22 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_1001841D0(*a1, v6, v4);
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v9 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100400790;
    sub_100181AE8();
    v11 = Error.localizedDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100022C18();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)();

    sub_100180208(v3, v6, v4);
  }

  sub_100181AE8();
  result = swift_allocError();
  *v23 = v3;
  *(v23 + 8) = v6;
  *(v23 + 16) = v4;
  v21 = 1;
LABEL_17:
  *a2 = result;
  *(a2 + 8) = v21;
  return result;
}

uint64_t sub_10016FC68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  if (v3)
  {
    v5 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck + 16);

    sub_100183C98(v3);
    sub_100183CD8(v3);
    v6 = v5(a1);
    v8 = v7;
    v10 = v9;
    v11 = ~v9;

    if (v11)
    {
      static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v20 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100400790;
      sub_100181AE8();
      v13 = Error.localizedDescription.getter();
      v14 = v6;
      v16 = v15;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_100022C18();
      *(v12 + 32) = v13;
      *(v12 + 40) = v16;
      os_log(_:dso:log:_:_:)();

      sub_100180208(v14, v8, v10);
      result = swift_allocError();
      *v18 = v14;
      *(v18 + 8) = v8;
      *(v18 + 16) = v10;
      v19 = 1;
    }

    else
    {
      result = 0;
      v19 = 0;
    }
  }

  else
  {
    result = 0;
    v19 = 0;
  }

  *a2 = result;
  *(a2 + 8) = v19;
  return result;
}

uint64_t sub_10016FE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a5 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_1001BB608(v9, a3, a4);
  return sub_10018270C(v9, type metadata accessor for DownloadJob);
}

uint64_t sub_10016FF78(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v8 = *(type metadata accessor for DownloadJob(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  sub_100168088(&qword_100581890);
  __chkstk_darwin();
  v11 = &v16 - v10;
  v12 = *(a4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetPrefetchBlock);
  if (v12)
  {
    sub_100182784(a1, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DownloadJob);
    v13 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v14[2] = a4;
    v14[3] = a2;
    v14[4] = a3;
    sub_100182EF4(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for DownloadJob);
    sub_100013CB4(v12);

    v12(sub_1001840E4, v14);
    sub_1000112B4(v12);
  }

  else
  {
    sub_100182784(a1, v11, type metadata accessor for DownloadJob);
    swift_storeEnumTagMultiPayload();
    a2(v11);
    return sub_100009104(v11, &qword_100581890);
  }
}

uint64_t sub_1001701BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  sub_100168088(&qword_100581890);
  __chkstk_darwin();
  v9 = (&v13 - v8);
  if (a1)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_100180208(a1, 0, 1);
    sub_100181AE8();
    v10 = swift_allocError();
    *v11 = a1;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    *v9 = v10;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v9);
  }

  else
  {
    sub_100182784(a5, &v13 - v8, type metadata accessor for DownloadJob);
    swift_storeEnumTagMultiPayload();
    a3(v9);
  }

  return sub_100009104(v9, &qword_100581890);
}

uint64_t sub_100170340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v57 = a3;
  v59 = a5;
  v63 = type metadata accessor for DownloadJob(0);
  v60 = *(v63 - 8);
  v8 = *(v60 + 64);
  __chkstk_darwin();
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v52 - v9;
  __chkstk_darwin();
  v11 = &v52 - v10;
  __chkstk_darwin();
  v13 = &v52 - v12;
  v14 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v15 = static OS_os_log.downloads.getter();
  sub_100182784(a1, v13, type metadata accessor for DownloadJob);
  v58 = a1;
  sub_100182784(a1, v11, type metadata accessor for DownloadJob);
  v16 = &qword_100573000;
  if (os_log_type_enabled(v15, v14))
  {
    v17 = swift_slowAlloc();
    v54 = v14;
    v18 = v17;
    v55 = swift_slowAlloc();
    v68 = v55;
    *v18 = 136446722;
    v19 = *(a2 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    sub_100168088(&qword_100574900);
    OS_dispatch_queue.sync<A>(execute:)();
    v52 = v5;

    v53 = v15;
    v21 = v65;
    v20 = v66;
    sub_1000044A0(aBlock, v65);
    v22 = (*(v20 + 7))(v21, v20);
    v24 = v23;
    sub_100004590(aBlock);
    v25 = sub_1000153E0(v22, v24, &v68);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = &v13[*(v63 + 20)];
    v27 = *v26;
    v28 = v26[1];

    sub_10018270C(v13, type metadata accessor for DownloadJob);
    v29 = sub_1000153E0(v27, v28, &v68);

    *(v18 + 14) = v29;
    *(v18 + 22) = 2080;
    type metadata accessor for EpisodeMetadata(0);
    v30 = URL.absoluteString.getter();
    v32 = v31;
    sub_10018270C(v11, type metadata accessor for DownloadJob);
    v33 = sub_1000153E0(v30, v32, &v68);

    *(v18 + 24) = v33;
    v16 = &qword_100573000;
    v34 = v53;
    _os_log_impl(&_mh_execute_header, v53, v54, "Start download task %{public}s for episode %s at %s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10018270C(v11, type metadata accessor for DownloadJob);
    sub_10018270C(v13, type metadata accessor for DownloadJob);
  }

  v35 = v16[77];
  v36 = *(a2 + v35);
  sub_100168088(&qword_100574900);
  OS_dispatch_queue.sync<A>(execute:)();

  v37 = v65;
  v38 = v66;
  sub_1000044A0(aBlock, v65);
  (*(v38 + 14))(v37, v38);
  sub_100004590(aBlock);
  v39 = *(a2 + v35);
  v41 = v62;
  v40 = v63;
  OS_dispatch_queue.sync<A>(execute:)();

  v42 = v41 + *(v40 + 40);
  sub_10018276C(*v42, *(v42 + 8), *(v42 + 16), *(v42 + 24));
  *v42 = 0;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0;
  *(v42 + 24) = 2;
  *(v42 + 32) = 0;
  *(v42 + 40) = 0;
  *(v42 + 48) = 0;
  v43 = *(a2 + v35);
  v44 = v61;
  sub_100182784(v41, v61, type metadata accessor for DownloadJob);
  v45 = (*(v60 + 80) + 24) & ~*(v60 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = a2;
  sub_100182EF4(v44, v46 + v45, type metadata accessor for DownloadJob);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_100184608;
  *(v47 + 24) = v46;
  v66 = sub_10002D950;
  v67 = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  v65 = &unk_1004E1370;
  v48 = _Block_copy(aBlock);

  v49 = v43;

  dispatch_sync(v49, v48);
  _Block_release(v48);

  sub_10018270C(v41, type metadata accessor for DownloadJob);
  LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

  if (v48)
  {
    __break(1u);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_100360268(a2);
      Strong = swift_unknownObjectRelease();
    }

    if (v57)
    {
      v57(Strong);
    }

    sub_100182784(v58, v59, type metadata accessor for DownloadJob);
    sub_100168088(&qword_100581890);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_100170A58(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_errorRetain();
  sub_100168088(&qword_100575C50);
  if (!swift_dynamicCast())
  {
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v4 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100400790;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100022C18();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)();

    if (!a2)
    {
      return result;
    }

    return a2(result);
  }

  result = sub_1001829A0(v9, v10, v11);
  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_100170BCC()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v3 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136446210;
    v6 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    sub_100168088(&qword_100574900);
    OS_dispatch_queue.sync<A>(execute:)();

    v7 = v23;
    v8 = v24;
    sub_1000044A0(v22, v23);
    v9 = (*(v8 + 56))(v7, v8);
    v11 = v10;
    sub_100004590(v22);
    v12 = sub_1000153E0(v9, v11, &v21);

    *(v4 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v2, "Cancel download task %{public}s", v4, 0xCu);
    sub_100004590(v5);
  }

  v13 = *(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck);
  if (v13)
  {
    sub_100183C98(*(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck));
    v14 = swift_unknownObjectRetain();
    sub_100183CD8(v14);
    static os_log_type_t.default.getter();
    v15 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)();

    v16 = *(v13 + 56);
    [v16 cancel];

    swift_unknownObjectRelease();
  }

  v17 = *(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  sub_100168088(&qword_100574900);
  OS_dispatch_queue.sync<A>(execute:)();

  v18 = v23;
  v19 = v24;
  sub_1000044A0(v22, v23);
  (*(v19 + 120))(v18, v19);
  return sub_100004590(v22);
}

uint64_t sub_100170EBC()
{
  v1 = v0;
  v2 = type metadata accessor for DownloadJob(0);
  v168 = *(v2 - 8);
  v3 = *(v168 + 64);
  v4 = __chkstk_darwin(v2);
  v169 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v162 - v5;
  v7 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v8 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  sub_100168088(&qword_100574900);
  OS_dispatch_queue.sync<A>(execute:)();

  v9 = v172;
  v10 = v173;
  sub_1000044A0(v171, v172);
  v11 = (*(v10 + 8))(v9, v10);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v86 = static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v13 = static OS_os_log.downloads.getter();
      if (os_log_type_enabled(v13, v86))
      {
        v87 = swift_slowAlloc();
        LODWORD(v168) = v86;
        v15 = v87;
        v169 = swift_slowAlloc();
        v170[0] = v169;
        *v15 = 136446466;
        v88 = *(v1 + v7);
        OS_dispatch_queue.sync<A>(execute:)();

        v89 = v2;
        v90 = v6;
        v91 = v177;
        v92 = v178;
        sub_1000044A0(&aBlock, v177);
        v93 = (*(v92 + 7))(v91, v92);
        v95 = v94;
        sub_100004590(&aBlock);
        v96 = sub_1000153E0(v93, v95, v170);

        *(v15 + 4) = v96;
        *(v15 + 12) = 2082;
        v97 = *(v1 + v7);
        OS_dispatch_queue.sync<A>(execute:)();

        v98 = (v90 + *(v89 + 20));
        v99 = *v98;
        v100 = v98[1];

        sub_10018270C(v90, type metadata accessor for DownloadJob);
        v101 = sub_1000153E0(v99, v100, v170);

        *(v15 + 14) = v101;
        v30 = "Attempt to resume task which is being canceled, doing nothing %{public}s episode: %{public}s";
        goto LABEL_26;
      }

      goto LABEL_40;
    }

    if (v11 == 3)
    {
      v31 = static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v13 = static OS_os_log.downloads.getter();
      if (os_log_type_enabled(v13, v31))
      {
        v32 = swift_slowAlloc();
        LODWORD(v168) = v31;
        v15 = v32;
        v169 = swift_slowAlloc();
        v170[0] = v169;
        *v15 = 136446466;
        v33 = *(v1 + v7);
        OS_dispatch_queue.sync<A>(execute:)();

        v34 = v2;
        v35 = v6;
        v36 = v177;
        v37 = v178;
        sub_1000044A0(&aBlock, v177);
        v38 = (*(v37 + 7))(v36, v37);
        v40 = v39;
        sub_100004590(&aBlock);
        v41 = sub_1000153E0(v38, v40, v170);

        *(v15 + 4) = v41;
        *(v15 + 12) = 2082;
        v42 = *(v1 + v7);
        OS_dispatch_queue.sync<A>(execute:)();

        v43 = (v35 + *(v34 + 20));
        v44 = *v43;
        v45 = v43[1];

        sub_10018270C(v35, type metadata accessor for DownloadJob);
        v46 = sub_1000153E0(v44, v45, v170);

        *(v15 + 14) = v46;
        v30 = "Attempt to resume task, which has been completed already %{public}s episode: %{public}s";
        goto LABEL_26;
      }

LABEL_40:

      return sub_100004590(v171);
    }

LABEL_10:
    v47 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v13 = static OS_os_log.downloads.getter();
    if (!os_log_type_enabled(v13, v47))
    {
      goto LABEL_40;
    }

    LODWORD(v169) = v47;
    v166 = v2;
    v165 = v6;
    v48 = 0xE900000000000064;
    v49 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v170[0] = v168;
    *v49 = 136446722;
    v50 = v7;
    v51 = *(v1 + v7);
    OS_dispatch_queue.sync<A>(execute:)();

    v53 = v177;
    v52 = v178;
    sub_1000044A0(&aBlock, v177);
    v54 = (*(v52 + 1))(v53, v52);
    sub_100004590(&aBlock);
    if (v54 > 1)
    {
      if (v54 == 2)
      {
        v48 = 0xE900000000000067;
        v55 = 0x6E696C65636E6163;
        goto LABEL_38;
      }

      if (v54 == 3)
      {
        v55 = 0x6574656C706D6F63;
        goto LABEL_38;
      }
    }

    else
    {
      if (!v54)
      {
        v48 = 0xE700000000000000;
        v55 = 0x676E696E6E7572;
        goto LABEL_38;
      }

      if (v54 == 1)
      {
        v55 = 0x65646E6570737573;
LABEL_38:
        v128 = sub_1000153E0(v55, v48, v170);

        *(v49 + 4) = v128;
        *(v49 + 12) = 2082;
        v129 = *(v1 + v50);
        OS_dispatch_queue.sync<A>(execute:)();

        v130 = v177;
        v131 = v178;
        sub_1000044A0(&aBlock, v177);
        v132 = (*(v131 + 7))(v130, v131);
        v134 = v133;
        sub_100004590(&aBlock);
        v135 = sub_1000153E0(v132, v134, v170);

        *(v49 + 14) = v135;
        *(v49 + 22) = 2082;
        v136 = *(v1 + v50);
        v137 = v165;
        v138 = v166;
        OS_dispatch_queue.sync<A>(execute:)();

        v139 = (v137 + *(v138 + 20));
        v140 = *v139;
        v141 = v139[1];

        sub_10018270C(v137, type metadata accessor for DownloadJob);
        v142 = sub_1000153E0(v140, v141, v170);

        *(v49 + 24) = v142;
        _os_log_impl(&_mh_execute_header, v13, v169, "Not resuming task, which is in state: %{public}s task: %{public}s episode: %{public}s", v49, 0x20u);
        swift_arrayDestroy();

        goto LABEL_39;
      }
    }

    v48 = 0xE700000000000000;
    v55 = 0x6E776F6E6B6E75;
    goto LABEL_38;
  }

  if (v11)
  {
    if (v11 == 1)
    {
      v12 = static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v13 = static OS_os_log.downloads.getter();
      if (os_log_type_enabled(v13, v12))
      {
        v14 = swift_slowAlloc();
        LODWORD(v168) = v12;
        v15 = v14;
        v169 = swift_slowAlloc();
        v170[0] = v169;
        *v15 = 136446466;
        v16 = *(v1 + v7);
        OS_dispatch_queue.sync<A>(execute:)();

        v17 = v2;
        v18 = v6;
        v19 = v177;
        v20 = v178;
        sub_1000044A0(&aBlock, v177);
        v21 = (*(v20 + 7))(v19, v20);
        v23 = v22;
        sub_100004590(&aBlock);
        v24 = sub_1000153E0(v21, v23, v170);

        *(v15 + 4) = v24;
        *(v15 + 12) = 2082;
        v25 = *(v1 + v7);
        OS_dispatch_queue.sync<A>(execute:)();

        v26 = (v18 + *(v17 + 20));
        v27 = *v26;
        v28 = v26[1];

        sub_10018270C(v18, type metadata accessor for DownloadJob);
        v29 = sub_1000153E0(v27, v28, v170);

        *(v15 + 14) = v29;
        v30 = "Resuming suspended task %{public}s episode: %{public}s";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v13, v168, v30, v15, 0x16u);
        swift_arrayDestroy();

LABEL_39:

        goto LABEL_40;
      }

      goto LABEL_40;
    }

    goto LABEL_10;
  }

  v56 = *(v1 + v7);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_100009F1C(0, &qword_1005736A0);
  if (swift_dynamicCast() || (v57 = *(v1 + v7), OS_dispatch_queue.sync<A>(execute:)(), v57, sub_100009F1C(0, &qword_100577200), swift_dynamicCast()))
  {

    v167 = 0;
  }

  else
  {
    v102 = *(v1 + v7);
    OS_dispatch_queue.sync<A>(execute:)();

    v103 = v177;
    v104 = v178;
    sub_1000044A0(&aBlock, v177);
    v105 = (*(v104 + 2))(v103, v104);
    sub_100004590(&aBlock);
    v167 = v105;
    v106 = v105;
    v107 = &stru_100555000;
    if ([v106 completedUnitCount] >= 1 && objc_msgSend(v106, "totalUnitCount") >= 1)
    {
      v166 = v2;
      v108 = v6;
      v109 = static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v110 = static OS_os_log.downloads.getter();
      v111 = os_log_type_enabled(v110, v109);
      v165 = v108;
      if (v111)
      {
        v112 = swift_slowAlloc();
        v163 = v109;
        v113 = v112;
        v164 = swift_slowAlloc();
        v170[0] = v164;
        *v113 = 136446466;
        v114 = *(v1 + v7);
        v162 = v110;
        v115 = v114;
        OS_dispatch_queue.sync<A>(execute:)();

        v117 = v177;
        v116 = v178;
        sub_1000044A0(&aBlock, v177);
        v118 = (*(v116 + 7))(v117, v116);
        v120 = v119;
        sub_100004590(&aBlock);
        v121 = sub_1000153E0(v118, v120, v170);

        *(v113 + 4) = v121;
        *(v113 + 12) = 2082;
        v122 = *(v1 + v7);
        v123 = v166;
        OS_dispatch_queue.sync<A>(execute:)();

        v124 = (v108 + *(v123 + 20));
        v125 = *v124;
        v126 = v124[1];

        sub_10018270C(v108, type metadata accessor for DownloadJob);
        v127 = sub_1000153E0(v125, v126, v170);
        v107 = &stru_100555000;

        *(v113 + 14) = v127;
        v110 = v162;
        _os_log_impl(&_mh_execute_header, v162, v163, "Update task state and set current progress %{public}s episode: %{public}s", v113, 0x16u);
        swift_arrayDestroy();
      }

      v143 = *(v1 + v7);
      v144 = v169;
      OS_dispatch_queue.sync<A>(execute:)();

      v145 = [v106 totalUnitCount];
      v146 = [v106 v107[152].name];
      v147 = sub_100210480();
      v149 = v148;
      [v106 fractionCompleted];
      v151 = v150;
      v152 = NSProgress.estimatedTimeRemaining.getter();
      aBlock = v145;
      v175 = v146;
      v176 = v147;
      v177 = v149;
      v178 = v151;
      v179 = v152;
      v180 = v153 & 1;
      v154 = v165;
      sub_10020EF18(&aBlock, 0, v165);

      sub_10018270C(v144, type metadata accessor for DownloadJob);
      v155 = *(v1 + v7);
      v156 = v154;
      sub_100182784(v154, v144, type metadata accessor for DownloadJob);
      v157 = (*(v168 + 80) + 24) & ~*(v168 + 80);
      v158 = swift_allocObject();
      *(v158 + 16) = v1;
      sub_100182EF4(v144, v158 + v157, type metadata accessor for DownloadJob);
      v159 = swift_allocObject();
      v159[2] = sub_100184608;
      v159[3] = v158;
      v170[4] = sub_10002D950;
      v170[5] = v159;
      v170[0] = _NSConcreteStackBlock;
      v170[1] = 1107296256;
      v170[2] = sub_10002D904;
      v170[3] = &unk_1004E1118;
      v160 = _Block_copy(v170);

      v161 = v155;

      dispatch_sync(v161, v160);
      _Block_release(v160);

      sub_10018270C(v156, type metadata accessor for DownloadJob);
      LOBYTE(v143) = swift_isEscapingClosureAtFileLocation();

      if ((v143 & 1) == 0)
      {
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_44;
    }
  }

  v58 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v59 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v59, v58))
  {
    v60 = swift_slowAlloc();
    v163 = v58;
    v61 = v60;
    v164 = swift_slowAlloc();
    v170[0] = v164;
    *v61 = 136446466;
    v62 = *(v1 + v7);
    OS_dispatch_queue.sync<A>(execute:)();

    v166 = v7;
    v63 = v2;
    v64 = v6;
    v66 = v177;
    v65 = v178;
    sub_1000044A0(&aBlock, v177);
    v67 = (*(v65 + 7))(v66, v65);
    v69 = v68;
    sub_100004590(&aBlock);
    v70 = sub_1000153E0(v67, v69, v170);

    *(v61 + 4) = v70;
    *(v61 + 12) = 2082;
    v71 = *(v1 + v166);
    OS_dispatch_queue.sync<A>(execute:)();

    v72 = (v64 + *(v63 + 20));
    v73 = *v72;
    v74 = v72[1];

    sub_10018270C(v64, type metadata accessor for DownloadJob);
    v75 = sub_1000153E0(v73, v74, v170);
    v6 = v64;
    v2 = v63;
    v7 = v166;

    *(v61 + 14) = v75;
    _os_log_impl(&_mh_execute_header, v59, v163, "Update task state to running, download progress is not determined %{public}s episode: %{public}s", v61, 0x16u);
    swift_arrayDestroy();
  }

  v76 = *(v1 + v7);
  OS_dispatch_queue.sync<A>(execute:)();

  v77 = &v6[*(v2 + 40)];
  sub_10018276C(*v77, *(v77 + 1), *(v77 + 2), *(v77 + 3));
  *v77 = 0;
  *(v77 + 1) = 0;
  *(v77 + 2) = 0;
  *(v77 + 3) = 2;
  *(v77 + 4) = 0;
  *(v77 + 5) = 0;
  *(v77 + 24) = 0;
  v78 = *(v1 + v7);
  v79 = v169;
  sub_100182784(v6, v169, type metadata accessor for DownloadJob);
  v80 = (*(v168 + 80) + 24) & ~*(v168 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v1;
  sub_100182EF4(v79, v81 + v80, type metadata accessor for DownloadJob);
  v82 = swift_allocObject();
  *(v82 + 16) = sub_100184608;
  *(v82 + 24) = v81;
  v178 = sub_10002D950;
  v179 = v82;
  aBlock = _NSConcreteStackBlock;
  v175 = 1107296256;
  v176 = sub_10002D904;
  v177 = &unk_1004E10A0;
  v83 = _Block_copy(&aBlock);

  v84 = v78;

  dispatch_sync(v84, v83);
  _Block_release(v83);

  sub_10018270C(v6, type metadata accessor for DownloadJob);
  LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

  if ((v78 & 1) == 0)
  {
LABEL_21:
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100360268(v1);
      swift_unknownObjectRelease();
    }

    return sub_100004590(v171);
  }

LABEL_44:
  __break(1u);
  return result;
}

void sub_1001723C8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v3 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  sub_100168088(&qword_100574900);
  OS_dispatch_queue.sync<A>(execute:)();

  v4 = v22;
  v5 = v23;
  sub_1000044A0(v21, v22);
  v6 = (*(v5 + 8))(v4, v5);
  sub_100004590(v21);
  if (v6 == 1)
  {
    sub_1001729B4();
  }

  else if (v6)
  {
    v7 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v8 = static OS_os_log.downloads.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = 0xE900000000000064;
      v10 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v10 = 136446466;
      v11 = *(v1 + v2);
      OS_dispatch_queue.sync<A>(execute:)();

      v12 = v22;
      v13 = v23;
      sub_1000044A0(v21, v22);
      v14 = (*(v13 + 56))(v12, v13);
      v16 = v15;
      sub_100004590(v21);
      v17 = sub_1000153E0(v14, v16, v20);

      *(v10 + 4) = v17;
      *(v10 + 12) = 2082;
      if (v6 == 2)
      {
        v9 = 0xE900000000000067;
        v18 = 0x6E696C65636E6163;
      }

      else if (v6 == 3)
      {
        v18 = 0x6574656C706D6F63;
      }

      else
      {
        v9 = 0xE700000000000000;
        v18 = 0x6E776F6E6B6E75;
      }

      v19 = sub_1000153E0(v18, v9, v20);

      *(v10 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v7, "Invalid state. Attempt to pause or resume task %{public}s) which is in state: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    sub_1001726A0();
  }
}

uint64_t sub_1001726A0()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v3 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22[0] = v5;
    *v4 = 136446210;
    v6 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    sub_100168088(&qword_100574900);
    OS_dispatch_queue.sync<A>(execute:)();

    v7 = v24;
    v8 = v25;
    sub_1000044A0(v23, v24);
    v9 = (*(v8 + 56))(v7, v8);
    v11 = v10;
    sub_100004590(v23);
    v12 = sub_1000153E0(v9, v11, v22);

    *(v4 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v2, "Pause download task %{public}s", v4, 0xCu);
    sub_100004590(v5);
  }

  v13 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v14 = *(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  sub_100168088(&qword_100574900);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_100009F1C(0, &qword_100577200);
  if (swift_dynamicCast())
  {

    v15 = *(v1 + v13);
    OS_dispatch_queue.sync<A>(execute:)();

    v16 = v24;
    v17 = v25;
    sub_1000044A0(v23, v24);
    (*(v17 + 120))(v16, v17);
  }

  else
  {
    v18 = *(v1 + v13);
    OS_dispatch_queue.sync<A>(execute:)();

    v19 = v24;
    v20 = v25;
    sub_1000044A0(v23, v24);
    (*(v20 + 128))(v19, v20);
  }

  return sub_100004590(v23);
}

void sub_1001729B4()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v3 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18[0] = v5;
    *v4 = 136446210;
    v6 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    sub_100168088(&qword_100574900);
    OS_dispatch_queue.sync<A>(execute:)();

    v7 = v20;
    v8 = v21;
    sub_1000044A0(v19, v20);
    v9 = (*(v8 + 56))(v7, v8);
    v11 = v10;
    sub_100004590(v19);
    v12 = sub_1000153E0(v9, v11, v18);

    *(v4 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v2, "Resume download task %{public}s", v4, 0xCu);
    sub_100004590(v5);
  }

  v13 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v14 = *(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  sub_100168088(&qword_100574900);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_100009F1C(0, &qword_100577200);
  if (swift_dynamicCast())
  {
  }

  else
  {
    v15 = *(v1 + v13);
    OS_dispatch_queue.sync<A>(execute:)();

    v16 = v20;
    v17 = v21;
    sub_1000044A0(v19, v20);
    (*(v17 + 112))(v16, v17);
    sub_100004590(v19);
  }
}

uint64_t sub_100172C64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v128 = a7;
  v127 = a6;
  v125 = a4;
  v124 = a3;
  v123 = a2;
  *&v141 = a1;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v139 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v13;
  __chkstk_darwin(v12);
  v138 = &v119 - v14;
  v129 = type metadata accessor for DownloadJob(0);
  v131 = *(v129 - 8);
  v15 = __chkstk_darwin(v129);
  v137 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v16;
  __chkstk_darwin(v15);
  v18 = &v119 - v17;
  v19 = sub_100168088(&qword_100574040);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v119 - v23;
  LODWORD(v135) = static os_log_type_t.default.getter();
  v126 = sub_100009F1C(0, &qword_1005748A0);
  v121 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1004007A0;
  v140 = v11;
  v130 = a5;
  v122 = v10;
  if (!a5)
  {
    v28 = v7;
LABEL_8:
    v29 = 0;
    v30 = 0;
    goto LABEL_10;
  }

  v26 = [a5 URL];
  if (v26)
  {
    v27 = v26;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 56))(v22, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v22, 1, 1, v10);
  }

  sub_100010498(v22, v24, &qword_100574040);
  v28 = v8;
  if ((*(v11 + 48))(v24, 1, v10) == 1)
  {
    sub_100009104(v24, &qword_100574040);
    goto LABEL_8;
  }

  v29 = URL.absoluteString.getter();
  v30 = v31;
  (*(v11 + 8))(v24, v10);
LABEL_10:
  *(v25 + 56) = &type metadata for String;
  v32 = sub_100022C18();
  *(v25 + 64) = v32;
  if (v30)
  {
    v33 = v29;
  }

  else
  {
    v33 = 0;
  }

  v34 = 0xE000000000000000;
  if (v30)
  {
    v34 = v30;
  }

  *(v25 + 32) = v33;
  *(v25 + 40) = v34;
  v35 = URL.absoluteString.getter();
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v32;
  *(v25 + 72) = v35;
  *(v25 + 80) = v36;
  *(v25 + 136) = &type metadata for Int64;
  *(v25 + 144) = &protocol witness table for Int64;
  v37 = v125;
  *(v25 + 112) = v125;
  v38 = sub_100173980();
  *(v25 + 176) = &type metadata for UInt64;
  *(v25 + 184) = &protocol witness table for UInt64;
  if (v39)
  {
    v38 = 0;
  }

  *(v25 + 152) = v38;
  v40 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v41 = *(v28 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  v119 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v42 = v41;
  v43 = v129;
  OS_dispatch_queue.sync<A>(execute:)();

  v44 = &v18[*(v43 + 20)];
  v46 = *v44;
  v45 = *(v44 + 1);

  v120 = type metadata accessor for DownloadJob;
  sub_10018270C(v18, type metadata accessor for DownloadJob);
  *(v25 + 216) = &type metadata for String;
  *(v25 + 224) = v32;
  *(v25 + 192) = v46;
  *(v25 + 200) = v45;
  v47 = v121;
  os_log(_:dso:log:_:_:)();

  v48 = v28;
  v49 = *(v28 + v40);
  OS_dispatch_queue.sync<A>(execute:)();

  v121 = OBJC_IVAR____TtC8Podcasts11JobPipeline_assetsFolder;
  v50 = swift_allocObject();
  v135 = v50;
  v51 = v127;
  *(v50 + 16) = v28;
  *(v50 + 24) = v51;
  v52 = v123;
  *(v50 + 32) = v128;
  *(v50 + 40) = v52;
  *(v50 + 48) = v124 & 1;
  *(v50 + 56) = v37;
  v53 = *(v43 + 36);
  v54 = v53 + *(type metadata accessor for EpisodeMetadata(0) + 44);

  sub_100013CB4(v51);
  v128 = URL.pathExtension.getter();
  v127 = v55;
  v56 = v18;
  v134 = v18;
  v57 = *(v140 + 16);
  v58 = v138;
  v59 = v122;
  v57(v138, v141, v122);
  v60 = v139;
  v57(v139, &v56[v54], v59);
  v61 = *(v48 + v119);
  v62 = v137;
  v136 = v48;
  OS_dispatch_queue.sync<A>(execute:)();

  v63 = (v62 + *(v43 + 20));
  v64 = *v63;
  v65 = v63[1];

  sub_10018270C(v62, v120);
  v66 = type metadata accessor for ValidateOperation(0);
  v67 = objc_allocWithZone(v66);
  v68 = &v67[OBJC_IVAR____TtC8Podcasts17ValidateOperation_input];
  *v68 = 0;
  v68[8] = 2;
  v57(&v67[OBJC_IVAR____TtC8Podcasts17ValidateOperation_source], v58, v59);
  v57(&v67[OBJC_IVAR____TtC8Podcasts17ValidateOperation_origin], v60, v59);
  v69 = &v67[OBJC_IVAR____TtC8Podcasts17ValidateOperation_originalExtension];
  v70 = v127;
  *v69 = v128;
  v69[1] = v70;
  v71 = v130;
  *&v67[OBJC_IVAR____TtC8Podcasts17ValidateOperation_response] = v130;
  v72 = &v67[OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid];
  *v72 = v64;
  *(v72 + 1) = v65;
  v73 = v71;
  *&v67[OBJC_IVAR____TtC8Podcasts17ValidateOperation_log] = static OS_os_log.default.getter();
  v144.receiver = v67;
  v144.super_class = v66;
  v130 = objc_msgSendSuper2(&v144, "init");
  v74 = v140;
  v75 = *(v140 + 8);
  v75(v60, v59);
  v75(v58, v59);
  v57(v58, v141, v59);
  v57(v60, (v48 + v121), v59);
  v76 = v137;
  sub_100182784(v134, v137, type metadata accessor for DownloadJob);
  v77 = *(v74 + 80);
  v78 = (v77 + 16) & ~v77;
  v79 = (v133 + v77 + v78) & ~v77;
  v80 = (v133 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = (*(v131 + 80) + v80 + 16) & ~*(v131 + 80);
  v82 = (v132 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  v84 = *(v74 + 32);
  v84(v83 + v78, v138, v59);
  v84(v83 + v79, v139, v59);
  v85 = (v83 + v80);
  v86 = v135;
  *v85 = sub_100183A58;
  v85[1] = v86;
  sub_100182EF4(v76, v83 + v81, type metadata accessor for DownloadJob);
  *(v83 + v82) = v136;
  v87 = sub_100168088(&qword_100573668);
  v88 = objc_allocWithZone(v87);
  sub_100168088(&qword_100573670);
  swift_storeEnumTagMultiPayload();
  v89 = (v88 + *((swift_isaMask & *v88) + 0x188));
  *v89 = sub_100183A6C;
  v89[1] = v83;
  v143.receiver = v88;
  v143.super_class = v87;

  v90 = objc_msgSendSuper2(&v143, "init");
  v91 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v92 = v130;
  v93 = &v130[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v94 = *&v130[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v93 = sub_100183B9C;
  v93[1] = v91;

  sub_1000112B4(v94);

  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v97 = result;
    v98 = swift_allocObject();
    *(v98 + 24) = v97;
    swift_unknownObjectWeakInit();
    v99 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v100 = swift_allocObject();
    *(v100 + 16) = v99;
    *(v100 + 24) = v98;
    v101 = *(v97 + 72);
    v102 = v92;

    v101(sub_10003B6A0, v100, ObjectType, v97);

    v103 = type metadata accessor for BaseOperation();
    v142.receiver = v90;
    v142.super_class = v103;
    objc_msgSendSuper2(&v142, "addDependency:", v102);

    v104 = swift_allocObject();
    v105 = v135;
    *(v104 + 16) = sub_100183A58;
    *(v104 + 24) = v105;
    v106 = &v90[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v107 = *&v90[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    *v106 = sub_100183BA4;
    v106[1] = v104;

    v108 = v90;
    sub_1000112B4(v107);

    v109 = v136;
    v110 = sub_10016E37C();
    sub_100168088(&unk_100574680);
    v111 = swift_allocObject();
    v141 = xmmword_1004007B0;
    *(v111 + 16) = xmmword_1004007B0;
    *(v111 + 32) = v102;
    sub_100009F1C(0, &unk_10057A6A0);
    v112 = v102;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v110 addOperations:isa waitUntilFinished:1];

    v114 = *(v109 + OBJC_IVAR____TtC8Podcasts11JobPipeline____lazy_storage___operationQueue);
    v115 = swift_allocObject();
    *(v115 + 16) = v141;
    *(v115 + 32) = v108;
    v116 = v108;
    v117 = v114;
    v118 = Array._bridgeToObjectiveC()().super.isa;

    [v117 addOperations:v118 waitUntilFinished:0];

    return sub_10018270C(v134, type metadata accessor for DownloadJob);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100173980()
{
  v0 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v1 = String._bridgeToObjectiveC()();

  v15[0] = 0;
  v2 = [v0 attributesOfItemAtPath:v1 error:v15];

  v3 = v15[0];
  if (v2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_100182DE8(&qword_1005730E0, type metadata accessor for FileAttributeKey);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v3;

    if (*(v4 + 16) && (v6 = sub_100202D0C(NSFileSize), (v7 & 1) != 0))
    {
      sub_10001B944(*(v4 + 56) + 32 * v6, v15);

      if (swift_dynamicCast())
      {
        return v14;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v9 = v15[0];
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v15[0] = v10;
    swift_errorRetain();
    sub_100168088(&qword_100575C50);
    sub_100009F1C(0, &qword_100573598);
    if (swift_dynamicCast())
    {

      static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v11 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100400790;
      v13 = [v14 code];
      *(v12 + 56) = &type metadata for Int;
      *(v12 + 64) = &protocol witness table for Int;
      *(v12 + 32) = v13;
      os_log(_:dso:log:_:_:)();

      return 0;
    }

    else
    {
    }
  }
}

uint64_t sub_100173CA0(void (*a1)(char *, char *, uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, char *a5, int a6, uint64_t a7)
{
  v53 = a7;
  v54 = a6;
  v55 = a5;
  v56 = a1;
  v58 = a4;
  v59 = a2;
  v60 = a3;
  v51 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v51);
  v57 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v47 - v13;
  __chkstk_darwin(v12);
  v16 = &v47 - v15;
  v49 = sub_100168088(&qword_100582810);
  __chkstk_darwin(v49);
  v50 = (&v47 - v17);
  v18 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v18 - 8);
  v20 = (&v47 - v19);
  v21 = sub_100168088(&qword_100573678);
  __chkstk_darwin(v21);
  v23 = (&v47 - v22);
  sub_100010430(v56, &v47 - v22, &qword_100573678);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v25 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100400790;
    swift_getErrorValue();
    v27 = Error.localizedDescription.getter();
    v28 = v8;
    v30 = v29;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100022C18();
    *(v26 + 32) = v27;
    *(v26 + 40) = v30;
    os_log(_:dso:log:_:_:)();

    (*(v9 + 56))(v20, 1, 1, v28);
    swift_errorRetain();
    sub_10017DCE8(v24, 0, 128, v20);

    sub_100009104(v20, &qword_100574040);
    v31 = v60;
    if (v60)
    {
      v32 = v50;
      *v50 = v24;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v31(v32);

      return sub_100009104(v32, &qword_100582810);
    }

    else
    {
    }
  }

  else
  {
    v34 = *(sub_100168088(&qword_100573680) + 48);
    v35 = *(v9 + 32);
    v56 = v35;
    v48 = v16;
    v35(v16, v23, v8);
    v47 = v14;
    v35(v14, v23 + v34, v8);
    v36 = *(v59 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    OS_dispatch_queue.sync<A>(execute:)();

    v37 = swift_allocObject();
    swift_weakInit();
    v38 = v52;
    (*(v9 + 16))(v52, v14, v8);
    v39 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v40 = swift_allocObject();
    v41 = v60;
    *(v40 + 2) = v37;
    *(v40 + 3) = v41;
    v42 = v9;
    *(v40 + 4) = v58;
    v56(&v40[v39], v38, v8);

    sub_100013CB4(v41);
    v43 = v57;
    v45 = v47;
    v44 = v48;
    sub_1001758BC(v57, v48, v47, v55, v54 & 1, v53, sub_100183C00, v40);

    sub_10018270C(v43, type metadata accessor for DownloadJob);
    v46 = *(v42 + 8);
    v46(v45, v8);
    v46(v44, v8);
  }
}

uint64_t sub_1001742C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v55 = a4;
  v56 = a3;
  v6 = type metadata accessor for DownloadJob(0);
  v7 = *(v6 - 8);
  v49 = v6;
  v50 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v46 - v10;
  v53 = sub_100168088(&qword_100582810);
  __chkstk_darwin(v53);
  v54 = (&v46 - v11);
  v12 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v12 - 8);
  v14 = (&v46 - v13);
  v48 = type metadata accessor for JobPipelineError(0);
  v15 = __chkstk_darwin(v48);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v20 = sub_100168088(&qword_100573640);
  __chkstk_darwin(v20);
  v22 = &v46 - v21;
  sub_100010430(a1, &v46 - v21, &qword_100573640);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v30 = result;
      sub_1001749FC();
      v31 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
      v32 = *(v30 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      v33 = v52;
      v34 = v49;
      OS_dispatch_queue.sync<A>(execute:)();

      v35 = v33 + *(v34 + 40);
      sub_10018276C(*v35, *(v35 + 8), *(v35 + 16), *(v35 + 24));
      *v35 = 0;
      *(v35 + 8) = 0;
      *(v35 + 16) = 0;
      *(v35 + 24) = 3;
      *(v35 + 32) = 0;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      v36 = *(v30 + v31);
      v37 = v51;
      sub_100182784(v33, v51, type metadata accessor for DownloadJob);
      v38 = (*(v50 + 80) + 24) & ~*(v50 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v30;
      sub_100182EF4(v37, v39 + v38, type metadata accessor for DownloadJob);
      v40 = swift_allocObject();
      *(v40 + 16) = sub_100184608;
      *(v40 + 24) = v39;
      aBlock[4] = sub_10002D950;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002D904;
      aBlock[3] = &unk_1004E1028;
      v41 = _Block_copy(aBlock);
      v42 = v36;

      dispatch_sync(v42, v41);
      _Block_release(v41);

      sub_10018270C(v33, type metadata accessor for DownloadJob);
      LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

      if (v41)
      {
        __break(1u);
        return result;
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {

        v43 = v56;
        if (!v56)
        {
          return result;
        }

LABEL_12:
        v44 = type metadata accessor for URL();
        v45 = v54;
        (*(*(v44 - 8) + 16))(v54, v47, v44);
        swift_storeEnumTagMultiPayload();
        v43(v45);
        return sub_100009104(v45, &qword_100582810);
      }

      sub_100368020(v30);

      result = swift_unknownObjectRelease();
    }

    v43 = v56;
    if (!v56)
    {
      return result;
    }

    goto LABEL_12;
  }

  sub_100182EF4(v22, v19, type metadata accessor for JobPipelineError);
  sub_100182784(v19, v17, type metadata accessor for JobPipelineError);
  v23 = *v17;
  v24 = sub_100168088(&qword_100573648);
  sub_100010498(v17 + *(v24 + 48), v14, &qword_100574040);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_errorRetain();
    sub_10017DCE8(v23, 0, 128, v14);
  }

  sub_100009104(v14, &qword_100574040);
  v25 = v56;
  if (v56)
  {
    sub_100182DE8(&qword_100573698, type metadata accessor for JobPipelineError);
    v26 = swift_allocError();
    sub_100182784(v19, v27, type metadata accessor for JobPipelineError);
    v28 = v54;
    *v54 = v26;
    swift_storeEnumTagMultiPayload();
    v25(v28);
    sub_100009104(v28, &qword_100582810);
  }

  return sub_10018270C(v19, type metadata accessor for JobPipelineError);
}

void sub_1001749FC()
{
  v1 = v0;
  v2 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-v3];
  v5 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v9 = &v7[*(v5 + 20)];
  v10 = *v9;
  v11 = v9[1];

  sub_10018270C(v7, type metadata accessor for DownloadJob);
  sub_100174C3C(v10, v11, 2);

  v12 = v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata;
  v13 = type metadata accessor for EpisodeMetadata(0);
  sub_100010430(v12 + *(v13 + 60), v4, &qword_100574760);
  v14 = type metadata accessor for Date();
  LODWORD(v12) = (*(*(v14 - 8) + 48))(v4, 1, v14);
  sub_100009104(v4, &qword_100574760);
  if (v12 != 1)
  {
    v15 = *(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_analyticsChannel);
    type metadata accessor for AnalyticsEvent();
    swift_unknownObjectRetain();
    v16 = AnalyticsEvent.__allocating_init(cacheDeletedFilesRestored:failed:)();
    [v15 sendEvent:v16];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100174C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a3;
  v28 = a2;
  v3 = type metadata accessor for BugReportFrequency();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BugReport.Domain();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BugReport.ErrorKind();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PodcastsSystem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_feature_enabled_download_consistency_checks();
  if (result)
  {
    (*(v15 + 104))(v17, enum case for PodcastsSystem.downloads(_:), v14);
    (*(v11 + 104))(v13, enum case for BugReport.ErrorKind.duplicateDownloads(_:), v10);
    (*(v7 + 104))(v9, enum case for BugReport.Domain.podcasts(_:), v6);
    v19 = objc_allocWithZone(type metadata accessor for BugReport());
    v20 = BugReport.init(domain:system:errorKind:forceSubmissionAttempt:)();
    sub_100004428(v25[1] + OBJC_IVAR____TtC8Podcasts11JobPipeline_bugReporter, v31);
    sub_1000044A0(v31, v31[3]);
    v22 = v29;
    v21 = v30;
    (*(v29 + 104))(v5, enum case for BugReportFrequency.hourly(_:), v30);
    v23 = swift_allocObject();
    v24 = v27;
    v23[2] = v26;
    v23[3] = v28;
    v23[4] = v24;

    dispatch thunk of BugReporter.prepare(bugReport:maximumFrequency:checkBlock:)();

    (*(v22 + 8))(v5, v21);
    return sub_100004590(v31);
  }

  return result;
}

void sub_100174FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 loggingContext];

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a1;
  v12[7] = a2;
  v15[4] = sub_100183A18;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10000F038;
  v15[3] = &unk_1004E0E98;
  v13 = _Block_copy(v15);
  v14 = v11;

  [v14 performBlock:v13];
  _Block_release(v13);
}

void sub_100175134(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v58 = a4;
  v59 = a5;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v17 = String._bridgeToObjectiveC()();
  v18 = [a1 episodeForUuid:v17];

  if (v18)
  {
    v19 = [v18 podcast];
    if (v19)
    {
      v20 = v19;
      v55 = a6;
      v21 = [v19 uuid];
      if (v21)
      {
        v22 = v21;
        v54 = v10;
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v23;
        sub_100009F1C(0, &qword_100573660);
        v57 = [swift_getObjCClassFromMetadata() fetchRequest];
        v24 = objc_opt_self();
        v25 = [v24 predicateForDownloadBehavior:2];
        v26 = [v24 predicateForDownloadBehavior:4];
        v27 = [v25 OR:v26];

        v28 = v27;
        v29 = [v24 predicateForDownloadedEpisodesOnPodcastUuid:v22];

        v30 = [v27 NOT];
        v31 = [v29 AND:v30];

        v32 = v57;
        [v32 setPredicate:v31];

        v60 = 0;
        v33 = [a1 countForFetchRequest:v32 error:&v60];
        v34 = v60;
        if (v60)
        {
          swift_willThrow();
          v35 = v34;
          static Logger.downloads.getter();
          v36 = v56;

          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v59 = v35;
            v41 = v40;
            v60 = v40;
            *v39 = 136446210;
            v42 = sub_1000153E0(v53, v36, &v60);
            v43 = v28;
            v44 = v42;

            *(v39 + 4) = v44;
            _os_log_impl(&_mh_execute_header, v37, v38, "Failed to count downloaded episodes for podcast: %{public}s, unable to assess excessive downloads.", v39, 0xCu);
            sub_100004590(v41);
          }

          else
          {
          }

          (*(v11 + 8))(v14, v54);
        }

        else
        {
          v49 = v33;

          [v20 episodeLimitResolvedValue];
          v50 = swift_allocObject();
          v52 = v58;
          v51 = v59;
          v50[2] = v49;
          v50[3] = v52;
          v50[4] = v51;
          v50[5] = v55;

          MTPodcastEpisodeLimit.countValue(in:completionHandler:)();
        }

        return;
      }
    }

    else
    {
      v20 = v18;
    }
  }

  static Logger.downloads.getter();

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v60 = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_1000153E0(a2, a3, &v60);
    _os_log_impl(&_mh_execute_header, v45, v46, "Unable to assess for excessive download, episode or podcast not found for episodeUUID: %s", v47, 0xCu);
    sub_100004590(v48);
  }

  (*(v11 + 8))(v16, v10);
}

unint64_t sub_1001756F0(unint64_t result, char a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(unint64_t))
{
  if ((a2 & 1) == 0)
  {
    if (is_mul_ok(a5, result))
    {
      if (a4 >= 1 && a5 * result < a4)
      {
        v6 = result;
        sub_100168088(&qword_100573618);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004007C0;
        AnyHashable.init<A>(_:)();
        v10 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v6];
        v11 = sub_100009F1C(0, &qword_1005742A0);
        *(inited + 96) = v11;
        *(inited + 72) = v10;
        AnyHashable.init<A>(_:)();
        v12 = [objc_allocWithZone(NSNumber) initWithInteger:a4];
        *(inited + 168) = v11;
        *(inited + 144) = v12;
        v13 = sub_10016A0DC(inited);
        swift_setDeallocating();
        sub_100168088(&qword_100578590);
        swift_arrayDestroy();
        a6(v13);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1001758BC(objc_class *a1, void *a2, void *a3, char *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v286 = a3;
  v273 = a7;
  v274 = a8;
  v270 = a6;
  LODWORD(v277) = a5;
  v276 = a4;
  v289 = a1;
  v258 = type metadata accessor for DownloadJob(0);
  v279 = *(v258 - 8);
  v278 = v279[8];
  __chkstk_darwin(v258);
  v290 = (&v257 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for URL();
  v288 = *(v11 - 1);
  v12 = v288;
  v284 = v288[8];
  v13 = __chkstk_darwin(v11);
  v15 = &v257 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v257 - v16;
  v18 = v12[2];
  v266 = a2;
  v18(&v257 - v16, a2, v11);
  v18(v15, a3, v11);
  v280 = sub_100009F1C(0, &qword_1005748A0);
  v19 = static OS_os_log.downloads.getter();
  v20 = type metadata accessor for MoveFileOperation(0);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_input];
  *v22 = 0;
  v22[8] = 2;
  v18(&v21[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_destination], v15, v11);
  v18(&v21[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_source], v17, v11);
  *&v21[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_log] = v19;
  v312.receiver = v21;
  v312.super_class = v20;
  v267 = [(objc_class *)&v312 init];
  v23 = v288[1];
  v275 = v23;
  (v23)(v15, v11);
  (v23)(v17, v11);
  v18(v17, v286, v11);
  v281 = v18;
  v282 = v12 + 2;
  type metadata accessor for FairPlayRolloutController();
  v24 = static FairPlayRolloutController.shared.getter();
  LOBYTE(v15) = FairPlayRolloutController.isEnabled()();

  type metadata accessor for FairPlayKeyLoader();
  v25 = FairPlayKeyLoader.__allocating_init()();
  FairPlayKeyOperation = type metadata accessor for FetchFairPlayKeyOperation();
  v27 = objc_allocWithZone(FairPlayKeyOperation);
  v28 = &v27[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_input];
  *v28 = 0;
  v28[8] = 2;
  v29 = &v27[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation____lazy_storage___logPrefix];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v27[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_episodeAdamID];
  *v30 = v276;
  v30[8] = v277 & 1;
  v283 = v17;
  v285 = v11;
  v18(&v27[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_episodeLocation], v17, v11);
  *&v27[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_fairPlayKeyLoader] = v25;
  v27[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_iTunesCloudFairPlayOfflineEnabled] = v15 & 1;
  v311.receiver = v27;
  v311.super_class = FairPlayKeyOperation;
  v268 = [(objc_class *)&v311 init];
  v275(v17, v11);
  v277 = type metadata accessor for DownloadJob;
  v31 = v289;
  v32 = v290;
  sub_100182784(v289, v290, type metadata accessor for DownloadJob);
  v33 = *(v279 + 80);
  v34 = (v33 + 16) & ~v33;
  v35 = &v278[v34];
  v279 = (v33 | 7);
  v36 = swift_allocObject();
  v271 = type metadata accessor for DownloadJob;
  sub_100182EF4(v32, v36 + v34, type metadata accessor for DownloadJob);
  v37 = sub_100168088(&qword_100573620);
  v38 = objc_allocWithZone(v37);
  v39 = &v38[*((swift_isaMask & *v38) + 0x180)];
  *v39 = 0;
  v39[8] = 2;
  v40 = &v38[*((swift_isaMask & *v38) + 0x188)];
  *v40 = sub_100183118;
  v40[1] = v36;
  v310.receiver = v38;
  v310.super_class = v37;
  v261 = [(objc_class *)&v310 init];
  v41 = sub_100168088(&qword_100573628);
  v42 = objc_allocWithZone(v41);
  sub_100168088(&unk_100581880);
  swift_storeEnumTagMultiPayload();
  v43 = (v42 + *((swift_isaMask & *v42) + 0x188));
  *v43 = sub_100177CDC;
  v43[1] = 0;
  v309.receiver = v42;
  v309.super_class = v41;
  v276 = [(objc_class *)&v309 init];
  v44 = v31;
  v45 = v31;
  v46 = v290;
  sub_100182784(v45, v290, v277);
  v47 = swift_allocObject();
  v48 = v46;
  sub_100182EF4(v46, v47 + v34, type metadata accessor for DownloadJob);
  v49 = sub_100168088(&qword_100573630);
  v50 = objc_allocWithZone(v49);
  v51 = &v50[*((swift_isaMask & *v50) + 0x180)];
  *v51 = 0;
  v51[8] = 2;
  v52 = &v50[*((swift_isaMask & *v50) + 0x188)];
  *v52 = sub_100183374;
  v52[1] = v47;
  v308.receiver = v50;
  v308.super_class = v49;
  v260 = [(objc_class *)&v308 init];
  v53 = sub_100168088(&qword_100573638);
  v54 = objc_allocWithZone(v53);
  v55 = &v54[*((swift_isaMask & *v54) + 0x180)];
  *v55 = 0;
  v55[8] = 2;
  v56 = &v54[*((swift_isaMask & *v54) + 0x188)];
  *v56 = sub_100178824;
  *(v56 + 1) = 0;
  v307.receiver = v54;
  v307.super_class = v53;
  v275 = [(objc_class *)&v307 init];
  v57 = v287;
  v259 = sub_100181388(v44, 1);
  v58 = *&v57[OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage];
  v278 = *&v57[OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage + 8];
  swift_unknownObjectRetain();
  v269 = static OS_os_log.downloads.getter();
  sub_100182784(v44, v46, v277);
  v59 = v283;
  v60 = v285;
  v281(v283, v286, v285);
  v61 = v288;
  v62 = *(v288 + 80);
  v272 = ~v62;
  v264 = v35;
  v63 = &v35[v62] & ~v62;
  v64 = (v284 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v277 = v62;
  v65 = swift_allocObject();
  v265 = v34;
  sub_100182EF4(v48, v65 + v34, v271);
  v66 = v61[4];
  v288 = v61 + 4;
  v271 = v66;
  (v66)(v65 + v63, v59, v60);
  *(v65 + v64) = v270;
  v67 = sub_100168088(&qword_1005735B0);
  v68 = objc_allocWithZone(v67);
  v69 = &v68[*((swift_isaMask & *v68) + 0x198)];
  *v69 = 0;
  v69[8] = 2;
  v70 = &v68[*((swift_isaMask & *v68) + 0x1A8)];
  *v70 = sub_100183428;
  v70[1] = v65;
  v71 = &v68[*((swift_isaMask & *v68) + 0x1A0)];
  v72 = v278;
  *v71 = v58;
  *(v71 + 1) = v72;
  *&v68[*((swift_isaMask & *v68) + 0x1B0)] = v269;
  v306.receiver = v68;
  v306.super_class = v67;
  v262 = v67;
  v263 = v58;
  swift_unknownObjectRetain();
  v73 = v287;
  v270 = [(objc_class *)&v306 init];
  sub_100010430(&v73[OBJC_IVAR____TtC8Podcasts11JobPipeline_mediaLibraryClient], &v303, &unk_1005817C0);
  if (v304)
  {
    sub_1000109E4(&v303, v305);
    v74 = *&v73[OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue];
    v75 = v290;
    v76 = v258;
    OS_dispatch_queue.sync<A>(execute:)();

    v77 = (&v75->Flags + *(v76 + 20));
    v78 = *v77;
    v79 = v77[1];

    sub_10018270C(v75, type metadata accessor for DownloadJob);
    sub_100009F1C(0, &qword_10057AB20);
    v80 = [swift_getObjCClassFromMetadata() sharedInstance];
    v81 = [v80 activeDsid];

    v82 = sub_10017A7E8(v78, v79, v81, v305);

    sub_100004590(v305);
  }

  else
  {
    sub_100009104(&v303, &unk_1005817C0);
    v83 = static OS_os_log.default.getter();
    v84 = objc_allocWithZone(type metadata accessor for GroupOperation());
    v82 = sub_100394FF8(&_swiftEmptyArrayStorage, 0, v83);
  }

  v269 = v82;
  v85 = static OS_os_log.downloads.getter();
  v86 = v290;
  sub_100182784(v289, v290, type metadata accessor for DownloadJob);
  v87 = v283;
  v88 = v285;
  v281(v283, v266, v285);
  v89 = (v264 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v277 + v89 + 8) & v272;
  v91 = swift_allocObject();
  sub_100182EF4(v86, v265 + v91, type metadata accessor for DownloadJob);
  *(v91 + v89) = v73;
  (v271)(v91 + v90, v87, v88);
  v92 = v262;
  v93 = objc_allocWithZone(v262);
  v94 = &v93[*((swift_isaMask & *v93) + 0x198)];
  *v94 = 0;
  v94[8] = 2;
  v95 = &v93[*((swift_isaMask & *v93) + 0x1A8)];
  *v95 = sub_100183550;
  v95[1] = v91;
  v96 = &v93[*((swift_isaMask & *v93) + 0x1A0)];
  v97 = v278;
  *v96 = v263;
  *(v96 + 1) = v97;
  *&v93[*((swift_isaMask & *v93) + 0x1B0)] = v85;
  v302.receiver = v93;
  v302.super_class = v92;

  v280 = [(objc_class *)&v302 init];
  v98 = swift_allocObject();
  v100 = v273;
  v99 = v274;
  *(v98 + 16) = v273;
  *(v98 + 24) = v99;
  v101 = sub_100168088(&unk_10057A690);
  v102 = objc_allocWithZone(v101);
  v103 = v102 + *((swift_isaMask & *v102) + 0x180);
  *v103 = 0;
  v103[8] = 2;
  v104 = (v102 + *((swift_isaMask & *v102) + 0x188));
  *v104 = sub_10018365C;
  v104[1] = v98;
  sub_100013CB4(v100);
  v301.receiver = v102;
  v301.super_class = v101;
  v266 = [(objc_class *)&v301 init];
  v105 = swift_allocObject();
  v106 = v268;
  swift_unknownObjectWeakInit();
  v107 = v267;
  v108 = &v267[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v109 = *&v267[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v108 = sub_100183678;
  v108[1] = v105;

  sub_1000112B4(v109);

  ObjectType = swift_getObjectType();
  v290 = &protocol descriptor for PodcastsOperation;
  v111 = swift_conformsToProtocol2();
  if (!v111)
  {
    __break(1u);
    goto LABEL_16;
  }

  v112 = v111;
  v113 = swift_allocObject();
  *(v113 + 24) = v112;
  swift_unknownObjectWeakInit();
  v114 = v107;
  v115 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v116 = swift_allocObject();
  *(v116 + 16) = v115;
  *(v116 + 24) = v113;
  v117 = *(v112 + 72);
  v118 = v114;

  v117(sub_10003B6A0, v116, ObjectType, v112);

  v119 = type metadata accessor for BaseOperation();
  v300.receiver = v106;
  v300.super_class = v119;
  v289 = v119;
  [(objc_class *)&v300 addDependency:v118];

  v267 = v118;
  v120 = swift_allocObject();
  v121 = v261;
  swift_unknownObjectWeakInit();
  v122 = &v106[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v123 = *&v106[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v122 = sub_100182704;
  v122[1] = v120;

  sub_1000112B4(v123);

  v279 = swift_getObjectType();
  v124 = swift_conformsToProtocol2();
  if (!v124)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v125 = v124;
  v126 = swift_allocObject();
  *(v126 + 24) = v125;
  swift_unknownObjectWeakInit();
  v127 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v128 = swift_allocObject();
  *(v128 + 16) = v127;
  *(v128 + 24) = v126;
  v129 = *(v125 + 72);
  v130 = v106;

  v129(sub_10003B6A0, v128, v279, v125);

  v299.receiver = v121;
  v299.super_class = v289;
  [(objc_class *)&v299 addDependency:v130];

  v268 = v130;
  v131 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v132 = &v121[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v133 = *&v121[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v132 = sub_100183680;
  v132[1] = v131;

  sub_1000112B4(v133);

  v134 = swift_getObjectType();
  v135 = swift_conformsToProtocol2();
  if (!v135)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v136 = v135;
  v137 = swift_allocObject();
  *(v137 + 24) = v136;
  swift_unknownObjectWeakInit();
  v138 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v139 = swift_allocObject();
  *(v139 + 16) = v138;
  *(v139 + 24) = v137;
  v140 = *(v136 + 72);
  v141 = v121;

  v140(sub_10003B6A0, v139, v134, v136);
  v142 = v276;

  v298.receiver = v142;
  v298.super_class = v289;
  [(objc_class *)&v298 addDependency:v141];

  v265 = v141;
  v143 = swift_allocObject();
  v144 = v260;
  swift_unknownObjectWeakInit();
  v145 = &v142[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v146 = *&v142[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v145 = sub_100182704;
  v145[1] = v143;

  sub_1000112B4(v146);

  v147 = swift_getObjectType();
  v148 = swift_conformsToProtocol2();
  if (!v148)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v149 = v148;
  v150 = swift_allocObject();
  *(v150 + 24) = v149;
  swift_unknownObjectWeakInit();
  v151 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v152 = swift_allocObject();
  *(v152 + 16) = v151;
  *(v152 + 24) = v150;
  v153 = *(v149 + 72);
  v154 = v142;

  v153(sub_10003B6A0, v152, v147, v149);

  v297.receiver = v144;
  v297.super_class = v289;
  [(objc_class *)&v297 addDependency:v154];

  v276 = v154;
  v155 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v156 = &v144[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v157 = *&v144[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v156 = sub_100183688;
  v156[1] = v155;

  sub_1000112B4(v157);

  v158 = swift_getObjectType();
  v159 = swift_conformsToProtocol2();
  if (!v159)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v160 = v159;
  v161 = swift_allocObject();
  *(v161 + 24) = v160;
  swift_unknownObjectWeakInit();
  v162 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v163 = swift_allocObject();
  *(v163 + 16) = v162;
  *(v163 + 24) = v161;
  v164 = *(v160 + 72);
  v165 = v144;

  v164(sub_10003B6A0, v163, v158, v160);
  v166 = v275;

  v296.receiver = v166;
  v296.super_class = v289;
  [(objc_class *)&v296 addDependency:v165];

  v264 = v165;
  v167 = swift_allocObject();
  v168 = v259;
  swift_unknownObjectWeakInit();
  v169 = &v166[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v170 = *&v166[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v169 = sub_100182A20;
  v169[1] = v167;

  sub_1000112B4(v170);

  v171 = swift_getObjectType();
  v172 = swift_conformsToProtocol2();
  if (!v172)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v173 = v172;
  v174 = swift_allocObject();
  *(v174 + 24) = v173;
  swift_unknownObjectWeakInit();
  v175 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v176 = swift_allocObject();
  *(v176 + 16) = v175;
  *(v176 + 24) = v174;
  v177 = *(v173 + 72);
  v178 = v166;

  v177(sub_10003B6A0, v176, v171, v173);

  v295.receiver = v168;
  v295.super_class = v289;
  [(objc_class *)&v295 addDependency:v178];

  v275 = v178;
  v179 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v180 = &v168[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v181 = *&v168[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v180 = sub_100182A20;
  v180[1] = v179;

  sub_1000112B4(v181);

  v182 = swift_getObjectType();
  v183 = swift_conformsToProtocol2();
  if (!v183)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v184 = v183;
  v185 = swift_allocObject();
  *(v185 + 24) = v184;
  swift_unknownObjectWeakInit();
  v186 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v187 = swift_allocObject();
  *(v187 + 16) = v186;
  *(v187 + 24) = v185;
  v188 = *(v184 + 72);
  v189 = v168;

  v188(sub_10003B6A0, v187, v182, v184);
  v190 = v270;

  v191 = v289;
  v294.receiver = v190;
  v294.super_class = v289;
  [(objc_class *)&v294 addDependency:v189];

  v263 = v189;
  v192 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v193 = &v190[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v194 = *&v190[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v193 = sub_100182A18;
  v193[1] = v192;

  sub_1000112B4(v194);

  v195 = swift_getObjectType();
  v196 = swift_conformsToProtocol2();
  if (!v196)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v197 = v196;
  v198 = swift_allocObject();
  *(v198 + 24) = v197;
  swift_unknownObjectWeakInit();
  v199 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v200 = swift_allocObject();
  *(v200 + 16) = v199;
  *(v200 + 24) = v198;
  v201 = *(v197 + 72);
  v202 = v190;

  v201(sub_10003B6A0, v200, v195, v197);

  v203 = v269;

  v293.receiver = v203;
  v293.super_class = v191;
  [(objc_class *)&v293 addDependency:v202];

  v279 = v202;
  v204 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v205 = &v203[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v206 = *&v203[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v205 = sub_100182A20;
  v205[1] = v204;

  sub_1000112B4(v206);

  v207 = swift_getObjectType();
  v208 = swift_conformsToProtocol2();
  if (!v208)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v209 = v208;
  v210 = swift_allocObject();
  *(v210 + 24) = v209;
  swift_unknownObjectWeakInit();
  v211 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v212 = swift_allocObject();
  v213 = v203;
  v214 = v212;
  *(v212 + 16) = v211;
  *(v212 + 24) = v210;
  v215 = *(v209 + 72);
  v216 = v213;

  v215(sub_10003B6A0, v214, v207, v209);

  v217 = v280;

  v292.receiver = v217;
  v292.super_class = v191;
  [(objc_class *)&v292 addDependency:v216];

  v278 = v216;
  v218 = swift_allocObject();
  v219 = v266;
  swift_unknownObjectWeakInit();
  v220 = &v217[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v221 = *&v217[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v220 = sub_100182704;
  v220[1] = v218;

  sub_1000112B4(v221);

  v270 = swift_getObjectType();
  v222 = swift_conformsToProtocol2();
  if (v222)
  {
    v223 = v222;
    v224 = swift_allocObject();
    *(v224 + 24) = v223;
    swift_unknownObjectWeakInit();
    v225 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v226 = swift_allocObject();
    *(v226 + 16) = v225;
    *(v226 + 24) = v224;
    v227 = *(v223 + 72);
    v228 = v217;
    v229 = v219;

    v227(sub_10003B6A0, v226, v270, v223);

    v291.receiver = v229;
    v291.super_class = v289;
    v290 = v228;
    [(objc_class *)&v291 addDependency:v228];

    v230 = v283;
    v231 = v285;
    v281(v283, v286, v285);
    v232 = (v277 + 32) & v272;
    v233 = swift_allocObject();
    v235 = v273;
    v234 = v274;
    *(v233 + 16) = v273;
    *(v233 + 24) = v234;
    (v271)(v233 + v232, v230, v231);
    v236 = &v229[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v237 = *&v229[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    *v236 = sub_100183690;
    v236[1] = v233;
    sub_100013CB4(v235);
    sub_1000112B4(v237);

    v288 = sub_10016E37C();
    sub_100168088(&unk_100574680);
    v238 = swift_allocObject();
    *(v238 + 16) = xmmword_1004007D0;
    v239 = v267;
    v240 = v268;
    *(v238 + 32) = v267;
    *(v238 + 40) = v240;
    v241 = v264;
    v242 = v265;
    v243 = v275;
    v244 = v276;
    *(v238 + 48) = v265;
    *(v238 + 56) = v244;
    *(v238 + 64) = v241;
    *(v238 + 72) = v243;
    v245 = v263;
    v247 = v278;
    v246 = v279;
    *(v238 + 80) = v263;
    *(v238 + 88) = v246;
    v248 = v290;
    *(v238 + 96) = v247;
    *(v238 + 104) = v248;
    *(v238 + 112) = v229;
    v284 = sub_100009F1C(0, &unk_10057A6A0);
    v289 = v239;
    v287 = v240;
    v286 = v242;
    v285 = v244;
    v249 = v241;
    v250 = v243;
    v251 = v245;
    v252 = v279;
    v253 = v290;
    v254 = v229;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v256 = v288;
    [v288 addOperations:isa waitUntilFinished:0];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_100177750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DownloadJob(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 privateQueueContext];

  sub_100182784(a4, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DownloadJob);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_100182EF4(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for DownloadJob);
  v14 = (v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a2;
  v14[1] = a3;
  aBlock[4] = sub_100183978;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E0E20;
  v15 = _Block_copy(aBlock);
  v16 = v11;

  [v16 performBlock:v15];
  _Block_release(v15);
}

uint64_t sub_100177964(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v25 = a4;
  v26 = a3;
  v24 = sub_100168088(&unk_100581880);
  __chkstk_darwin(v24);
  v6 = &v23 - v5;
  v23 = type metadata accessor for AssetLifetime();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NetworkTaskPriority();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100168088(&qword_100573658);
  __chkstk_darwin(v14 - 8);
  v16 = &v23 - v15;
  type metadata accessor for DownloadJob(0);
  v17 = String._bridgeToObjectiveC()();
  v18 = [a1 episodeForUuid:v17];

  if (v18)
  {
    (*(v11 + 104))(v13, enum case for NetworkTaskPriority.background(_:), v10);
    v19 = v23;
    (*(v7 + 104))(v9, enum case for AssetLifetime.opportunistic(_:), v23);
    v20 = v18;
    MTEpisode.transcriptRequest(priority:lifetime:)();

    (*(v7 + 8))(v9, v19);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v21 = type metadata accessor for TranscriptRequest();
    (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  }

  sub_100010430(v16, v6, &qword_100573658);
  swift_storeEnumTagMultiPayload();
  v26(v6);

  sub_100009104(v6, &unk_100581880);
  return sub_100009104(v16, &qword_100573658);
}

uint64_t sub_100177CDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  v15 = type metadata accessor for TimeBombedTranscriptProvider();
  v3 = *(v15 - 8);
  __chkstk_darwin(v15);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100168088(&qword_100573658);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TranscriptRequest();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010430(a1, v8, &qword_100573658);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_100009104(v8, &qword_100573658);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    static TimeBombedTranscriptProvider.background.getter();
    TimeBombedTranscriptProvider.prefetch(request:)();

    (*(v3 + 8))(v5, v15);
    result = (*(v10 + 8))(v12, v9);
  }

  v14 = v16;
  *v16 = 0;
  *(v14 + 8) = 0;
  return result;
}

void sub_100177F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DownloadJob(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = objc_opt_self();

  v12 = [v11 sharedInstance];
  v13 = [v12 privateQueueContext];

  sub_100182784(a4, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DownloadJob);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v15[2] = sub_10002DD38;
  v15[3] = v10;
  v15[4] = v13;
  sub_100182EF4(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for DownloadJob);
  aBlock[4] = sub_100183910;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E0DD0;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  [v17 performBlock:v16];
  _Block_release(v16);
}

uint64_t sub_100178174(uint64_t (*a1)(void *, void), uint64_t a2, void *a3)
{
  v6 = sub_100168088(&unk_100578C10);
  v7 = __chkstk_darwin(v6 - 8);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v55 = &v46 - v10;
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v13 = type metadata accessor for ArtworkModel();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v53 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v52 = &v46 - v18;
  v19 = __chkstk_darwin(v17);
  v50 = &v46 - v20;
  v21 = __chkstk_darwin(v19);
  v49 = &v46 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v46 - v24;
  __chkstk_darwin(v23);
  v27 = &v46 - v26;
  type metadata accessor for DownloadJob(0);
  v28 = String._bridgeToObjectiveC()();
  v29 = [a3 episodeForUuid:v28];

  if (!v29)
  {
    return a1(&_swiftEmptyArrayStorage, 0);
  }

  v48 = a2;
  MTEpisode.artworkModel.getter();
  v54 = *(v14 + 48);
  if (v54(v12, 1, v13) == 1)
  {
    sub_100009104(v12, &unk_100578C10);
    v30 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v32 = v13;
    v47 = a1;
    sub_100182EF4(v12, v27, &type metadata accessor for ArtworkModel);
    sub_100182784(v27, v25, &type metadata accessor for ArtworkModel);
    v30 = sub_10024310C(0, 1, 1, &_swiftEmptyArrayStorage);
    v34 = v30[2];
    v33 = v30[3];
    if (v34 >= v33 >> 1)
    {
      v30 = sub_10024310C(v33 > 1, v34 + 1, 1, v30);
    }

    sub_10018270C(v27, &type metadata accessor for ArtworkModel);
    v30[2] = v34 + 1;
    sub_100182EF4(v25, v30 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v34, &type metadata accessor for ArtworkModel);
    a1 = v47;
    v13 = v32;
  }

  v35 = [v29 podcast];
  v36 = v55;
  if (v35)
  {
    v37 = v35;
    MTEpisode.artworkModel.getter();
    if (v54(v36, 1, v13) == 1)
    {
      sub_100009104(v36, &unk_100578C10);
      v38 = v51;
    }

    else
    {
      v40 = v49;
      sub_100182EF4(v36, v49, &type metadata accessor for ArtworkModel);
      sub_100182784(v40, v50, &type metadata accessor for ArtworkModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10024310C(0, v30[2] + 1, 1, v30);
      }

      v38 = v51;
      v42 = v30[2];
      v41 = v30[3];
      if (v42 >= v41 >> 1)
      {
        v30 = sub_10024310C(v41 > 1, v42 + 1, 1, v30);
      }

      sub_10018270C(v49, &type metadata accessor for ArtworkModel);
      v30[2] = v42 + 1;
      sub_100182EF4(v50, v30 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v42, &type metadata accessor for ArtworkModel);
    }

    MTPodcast.uberBackgroundArtworkModel.getter();
    if (v54(v38, 1, v13) == 1)
    {

      sub_100009104(v38, &unk_100578C10);
    }

    else
    {
      v43 = v52;
      sub_100182EF4(v38, v52, &type metadata accessor for ArtworkModel);
      sub_100182784(v43, v53, &type metadata accessor for ArtworkModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10024310C(0, v30[2] + 1, 1, v30);
      }

      v45 = v30[2];
      v44 = v30[3];
      if (v45 >= v44 >> 1)
      {
        v30 = sub_10024310C(v44 > 1, v45 + 1, 1, v30);
      }

      sub_10018270C(v52, &type metadata accessor for ArtworkModel);
      v30[2] = v45 + 1;
      sub_100182EF4(v53, v30 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v45, &type metadata accessor for ArtworkModel);
    }

    v39 = v30;
  }

  else
  {

    v39 = v30;
  }

  a1(v39, 0);
}

uint64_t sub_100178824@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for Logger();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArtworkRequest();
  v31 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v34 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ArtworkModel();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for LibraryImageProvider();
  v29 = *(v36 - 8);
  __chkstk_darwin(v36);
  v16 = *a1;
  v35 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LibraryImageProvider.background.getter();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v19 = *(v12 + 72);
    v32 = (v37 + 8);
    v33 = v19;
    ++v31;
    v39 = v10;
    do
    {
      v37 = v17;
      sub_100182784(v18, v14, &type metadata accessor for ArtworkModel);
      v20 = v34;
      ArtworkModel.preferredRequest.getter();
      sub_10018270C(v14, &type metadata accessor for ArtworkModel);
      static Logger.artwork.getter();
      static os_log_type_t.info.getter();
      SignpostAndLogTrace(domain:level:)();
      (*v32)(v5, v3);
      Traceable.traced(by:)();
      sub_100004590(v38);
      v21 = v5;
      v22 = v3;
      v23 = *v31;
      v24 = v20;
      v25 = v39;
      (*v31)(v24, v6);
      ImageProvider.prefetch(artwork:)();
      v23(v25, v6);
      v3 = v22;
      v5 = v21;
      v18 += v33;
      v17 = v37 - 1;
    }

    while (v37 != 1);
  }

  result = (*(v29 + 8))(v35, v36);
  v27 = v30;
  *v30 = 0;
  *(v27 + 8) = 0;
  return result;
}

void sub_100178BEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  v36 = type metadata accessor for URL();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v36);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = swift_allocObject();
  v37 = v15;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = (a5 + *(type metadata accessor for DownloadJob(0) + 20));
  v17 = *v16;
  v34 = v16[1];
  v18 = v34;
  v35 = v17;

  static Date.timeIntervalSinceReferenceDate.getter();
  v20 = v19;
  v21 = *(v14 + 16);

  v23 = v21(v22);

  v24 = v36;
  (*(v11 + 16))(v13, v38, v36);
  v25 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 2) = v23;
  *(v28 + 3) = v29;
  *(v28 + 4) = v18;
  (*(v11 + 32))(&v28[v25], v13, v24);
  *&v28[v26] = v20;
  v30 = &v28[v27];
  v31 = v37;
  *v30 = sub_100184690;
  *(v30 + 1) = v31;
  *&v28[(v27 + 23) & 0xFFFFFFFFFFFFFFF8] = v39;
  aBlock[4] = sub_100183860;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E0D58;
  v32 = _Block_copy(aBlock);
  v33 = v23;

  [v33 performBlock:v32];
  _Block_release(v32);
}

void sub_100178E94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = *a1;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = (a5 + *(type metadata accessor for DownloadJob(0) + 20));
  v18 = *v17;
  v31 = v17[1];
  v32 = v18;
  (*(v13 + 16))(&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v12);
  v19 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v33;
  (*(v13 + 32))(v20 + v19, &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v21 = (v20 + ((v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_100184690;
  v21[1] = v16;
  v22 = *(v15 + 16);

  v24 = v22(v23);

  v25 = swift_allocObject();
  v27 = v31;
  v26 = v32;
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v27;
  v25[5] = sub_100183704;
  v25[6] = v20;
  aBlock[4] = sub_1001837F0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E0CE0;
  v28 = _Block_copy(aBlock);
  v29 = v24;

  [v29 performBlock:v28];
  _Block_release(v28);
}

uint64_t sub_100179144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t a5)
{
  v33 = a5;
  v34 = a4;
  v30[1] = a2;
  v6 = type metadata accessor for Logger();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100168088(&qword_100573650);
  __chkstk_darwin(v13);
  v15 = (v30 - v14);
  sub_100010430(a1, v30 - v14, &qword_100573650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    static Logger.downloads.getter();
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35 = v16;
      v36 = v20;
      *v19 = 136315138;
      swift_errorRetain();
      v21 = String.init<A>(describing:)();
      v23 = sub_1000153E0(v21, v22, &v36);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to fetch job asset URL for iPod library check: %s", v19, 0xCu);
      sub_100004590(v20);
    }

    else
    {
    }

    (*(v31 + 8))(v8, v32);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v24 = URL.path.getter();
    v26 = v25;
    v27 = URL.path.getter();
    sub_100179990(v24, v26, v27, v28);

    (*(v10 + 8))(v12, v9);
  }

  return v34(0, 0);
}

void sub_1001794BC(void (*a1)(char *)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_100573640);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v7 = static OS_os_log.downloads.getter();
  os_log(_:dso:log:_:_:)();

  v8 = [objc_opt_self() defaultCenter];
  [v8 postNotificationName:PFMediaDownloadDidCompleteNotification object:0];

  if (a1)
  {
    swift_storeEnumTagMultiPayload();
    a1(v6);
    sub_100009104(v6, &qword_100573640);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
}

uint64_t sub_100179640(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v24 = a3;
  v23 = sub_100168088(&qword_100573640);
  __chkstk_darwin(v23);
  v7 = &v22 - v6;
  v8 = type metadata accessor for MoveOperationError(0);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v11 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100400790;
  swift_getErrorValue();
  v13 = Error.localizedDescription.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100022C18();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)();

  v25 = a1;
  swift_errorRetain();
  sub_100168088(&qword_100575C50);
  result = swift_dynamicCast();
  if (result)
  {
    result = sub_10018270C(v10, type metadata accessor for MoveOperationError);
    if (!a2)
    {
      return result;
    }

    v17 = *(sub_100168088(&qword_100573648) + 48);
    *v7 = a1;
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(&v7[v17], 1, 1, v18);
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v19 = *(sub_100168088(&qword_100573648) + 48);
    *v7 = a1;
    v20 = type metadata accessor for URL();
    v21 = *(v20 - 8);
    (*(v21 + 16))(&v7[v19], v22, v20);
    (*(v21 + 56))(&v7[v19], 0, 1, v20);
  }

  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a2(v7);
  return sub_100009104(v7, &qword_100573640);
}

uint64_t sub_100179990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v6 = type metadata accessor for Date();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BugReportFrequency();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for BugReport.Domain();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for BugReport.ErrorKind();
  v11 = *(v35 - 8);
  __chkstk_darwin(v35);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PodcastsSystem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[0] = a1;
  v48[1] = a2;
  strcpy(v49, "ipod-library");
  BYTE5(v49[1]) = 0;
  HIWORD(v49[1]) = -5120;
  sub_100183070();
  sub_1001830C4();
  result = BidirectionalCollection<>.starts<A>(with:)();
  if (result)
  {
    v19 = *(v45 + OBJC_IVAR____TtC8Podcasts11JobPipeline_analyticsChannel);
    type metadata accessor for AnalyticsEvent();
    swift_unknownObjectRetain();
    v33 = a2;
    v34 = a1;
    v20 = static AnalyticsEvent.downloadedFileHasiPodLibraryURL(discoveryPoint:path:source:)();
    [v19 sendEvent:v20];
    swift_unknownObjectRelease();

    (*(v15 + 104))(v17, enum case for PodcastsSystem.downloads(_:), v14);
    (*(v11 + 104))(v13, enum case for BugReport.ErrorKind.downloadediPodLibraryFile(_:), v35);
    (*(v36 + 104))(v37, enum case for BugReport.Domain.podcasts(_:), v38);
    v21 = objc_allocWithZone(type metadata accessor for BugReport());
    v22 = BugReport.init(domain:system:errorKind:forceSubmissionAttempt:)();
    sub_100004428(v45 + OBJC_IVAR____TtC8Podcasts11JobPipeline_bugReporter, v48);
    v45 = v48[4];
    sub_1000044A0(v48, v48[3]);
    v24 = v42;
    v23 = v43;
    v25 = v44;
    (*(v43 + 104))(v42, enum case for BugReportFrequency.daily(_:), v44);
    sub_100168088(&qword_100573618);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007E0;
    v49[0] = 0x6E696769724FLL;
    v49[1] = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    v27 = v33;
    *(inited + 72) = v34;
    *(inited + 80) = v27;
    strcpy(v49, "Destination");
    HIDWORD(v49[1]) = -352321536;

    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for String;
    v28 = v47;
    *(inited + 144) = v46;
    *(inited + 152) = v28;
    v49[0] = 1701669204;
    v49[1] = 0xE400000000000000;

    AnyHashable.init<A>(_:)();
    v29 = v39;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v31 = v30;
    (*(v40 + 8))(v29, v41);
    v32 = [objc_allocWithZone(NSNumber) initWithDouble:v31];
    *(inited + 240) = sub_100009F1C(0, &qword_1005742A0);
    *(inited + 216) = v32;
    sub_10016A0DC(inited);
    swift_setDeallocating();
    sub_100168088(&qword_100578590);
    swift_arrayDestroy();
    dispatch thunk of BugReporter.submit(bugReport:maximumFrequency:userInfo:)();

    (*(v23 + 8))(v24, v25);
    return sub_100004590(v48);
  }

  return result;
}

uint64_t sub_100179FD8@<X0>(char *a1@<X0>, uint64_t a2@<X2>, void (*a3)(uint64_t *)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v50 = a6;
  v51 = a5;
  v55 = a4;
  v56 = a2;
  v57 = a3;
  v60 = a7;
  v52 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v52);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100168088(&qword_100573678);
  __chkstk_darwin(v53);
  v54 = (&v47 - v13);
  v14 = sub_100168088(&qword_100573680);
  v15 = __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  if (URL.isPackagedMedia()())
  {
    v20 = type metadata accessor for ValidateOperation.Result(0);
    (*(v10 + 16))(v19, &a1[*(v20 + 20)], v9);
    URL.lastPathComponent.getter();
    URL.appendingPathComponent(_:)();

    v21 = v57;
    if (v57)
    {
      v22 = v54;
      sub_100010430(v19, v54, &qword_100573680);
      swift_storeEnumTagMultiPayload();
      v21(v22);
      sub_100009104(v22, &qword_100573678);
    }

    v23 = v19;
LABEL_16:
    result = sub_100009104(v23, &qword_100573680);
    goto LABEL_17;
  }

  v48 = v9;
  v24 = *(a1 + 1);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = &a1[*(type metadata accessor for ValidateOperation.Result(0) + 20)];
    v27 = v48;
    (*(v10 + 16))(v17, v26, v48);
    URL.appendingPathComponent(_:)();
    URL.appendingPathExtension(_:)();
    (*(v10 + 8))(v12, v27);
    v28 = v57;
    if (v57)
    {
      v29 = v54;
      sub_100010430(v17, v54, &qword_100573680);
      swift_storeEnumTagMultiPayload();
      v28(v29);
      sub_100009104(v29, &qword_100573678);
    }

    v23 = v17;
    goto LABEL_16;
  }

  static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v30 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100400790;
  v32 = *(v50 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  v33 = v49;
  v34 = v52;
  OS_dispatch_queue.sync<A>(execute:)();

  v35 = (v33 + *(v34 + 20));
  v37 = *v35;
  v36 = v35[1];

  sub_10018270C(v33, type metadata accessor for DownloadJob);
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_100022C18();
  *(v31 + 32) = v37;
  *(v31 + 40) = v36;
  os_log(_:dso:log:_:_:)();

  v39 = v57;
  if (v57)
  {
    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v58 = 0xD000000000000021;
    v59 = 0x8000000100465710;
    type metadata accessor for EpisodeMetadata(0);
    sub_100182DE8(&qword_100573688, &type metadata accessor for URL);
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v41 = v58;
    v42 = v59;
    sub_100183BAC();
    v43 = swift_allocError();
    *v44 = v41;
    v44[1] = v42;
    v45 = v54;
    *v54 = v43;
    swift_storeEnumTagMultiPayload();
    v39(v45);
    result = sub_100009104(v45, &qword_100573678);
  }

LABEL_17:
  v46 = v60;
  *v60 = 0;
  *(v46 + 8) = 0;
  return result;
}

uint64_t sub_10017A630(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_100168088(&qword_100573678);
  __chkstk_darwin(v4);
  v6 = (&v13 - v5);
  static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v7 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100400790;
  swift_getErrorValue();
  v9 = Error.localizedDescription.getter();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100022C18();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:_:_:)();

  if (a2)
  {
    *v6 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v6);
    return sub_100009104(v6, &qword_100573678);
  }

  return result;
}

uint64_t sub_10017A7E8(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v123 = a4;
  v8 = sub_100168088(&qword_100578010);
  v121 = *(v8 - 8);
  v120 = *(v121 + 8);
  v9 = __chkstk_darwin(v8 - 8);
  v118 = v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v117 = v115 - v11;
  v13 = *(v4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage);
  v116 = *(v4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage + 8);
  v12 = v116;
  v124 = sub_100009F1C(0, &qword_1005748A0);
  swift_unknownObjectRetain();
  v14 = static OS_os_log.downloads.getter();
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a1;
  *(v15 + 4) = a2;
  v16 = sub_100168088(&qword_1005735B8);
  v17 = objc_allocWithZone(v16);
  v18 = &v17[*((swift_isaMask & *v17) + 0x198)];
  *v18 = 0;
  v18[8] = 2;
  v19 = &v17[*((swift_isaMask & *v17) + 0x1A8)];
  *v19 = sub_100182A40;
  v19[1] = v15;
  v20 = &v17[*((swift_isaMask & *v17) + 0x1A0)];
  *v20 = v13;
  *(v20 + 1) = v12;
  *&v17[*((swift_isaMask & *v17) + 0x1B0)] = v14;
  v134.receiver = v17;
  v134.super_class = v16;
  swift_unknownObjectRetain();
  v21 = a3;

  ObjectType = objc_msgSendSuper2(&v134, "init");
  sub_100004428(v123, v133);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  sub_1000109E4(v133, v22 + 32);
  v23 = sub_100168088(&qword_1005735C0);
  v24 = objc_allocWithZone(v23);
  v25 = &v24[*((swift_isaMask & *v24) + 0x180)];
  *v25 = 0;
  v25[8] = 2;
  v26 = &v24[*((swift_isaMask & *v24) + 0x188)];
  *v26 = sub_100182A4C;
  v26[1] = v22;
  v132.receiver = v24;
  v132.super_class = v23;

  v119 = objc_msgSendSuper2(&v132, "init");
  v27 = static OS_os_log.downloads.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  v29 = sub_100168088(&qword_1005735C8);
  v30 = objc_allocWithZone(v29);
  v115[1] = sub_100168088(&qword_1005735D0);
  swift_storeEnumTagMultiPayload();
  v31 = (v30 + *((swift_isaMask & *v30) + 0x1A8));
  *v31 = sub_100182A58;
  v31[1] = v28;
  v32 = (v30 + *((swift_isaMask & *v30) + 0x1A0));
  v33 = v116;
  *v32 = v13;
  v32[1] = v33;
  *(v30 + *((swift_isaMask & *v30) + 0x1B0)) = v27;
  v131.receiver = v30;
  v131.super_class = v29;

  v116 = objc_msgSendSuper2(&v131, "init");
  v34 = v117;
  static TaskPriority.utility.getter();
  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = swift_allocObject();
  v115[0] = a1;
  *(v36 + 16) = a1;
  *(v36 + 24) = a2;
  v37 = v118;
  sub_100010430(v34, v118, &qword_100578010);
  v38 = (v121[80] + 16) & ~v121[80];
  v39 = &v120[v38 + 7] & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_100010498(v37, v40 + v38, &qword_100578010);
  v41 = (v40 + v39);
  *v41 = &unk_100400B18;
  v41[1] = v36;
  v42 = sub_100168088(&qword_1005735D8);
  v43 = objc_allocWithZone(v42);
  swift_storeEnumTagMultiPayload();
  v44 = (v43 + *((swift_isaMask & *v43) + 0x188));
  *v44 = sub_100182B14;
  v44[1] = v40;
  v130.receiver = v43;
  v130.super_class = v42;
  v118 = a2;

  v45 = objc_msgSendSuper2(&v130, "init");
  sub_100009104(v34, &qword_100578010);
  sub_100004428(v123, v133);
  v46 = swift_allocObject();
  sub_1000109E4(v133, v46 + 16);
  v47 = sub_100168088(&qword_1005735E0);
  v48 = objc_allocWithZone(v47);
  sub_100168088(&unk_100581860);
  swift_storeEnumTagMultiPayload();
  v49 = (v48 + *((swift_isaMask & *v48) + 0x188));
  *v49 = sub_100182BD8;
  v49[1] = v46;
  v129.receiver = v48;
  v129.super_class = v47;
  v50 = objc_msgSendSuper2(&v129, "init");
  sub_100168088(&unk_100574680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007F0;
  v52 = ObjectType;
  *(inited + 32) = ObjectType;
  v53 = v119;
  v54 = v116;
  *(inited + 40) = v119;
  *(inited + 48) = v54;
  *(inited + 56) = v45;
  *(inited + 64) = v50;
  v120 = v50;
  v55 = v52;
  v56 = v53;
  v123 = v54;
  v121 = v45;
  v57 = static OS_os_log.downloads.getter();
  v58 = objc_allocWithZone(type metadata accessor for GroupOperation());
  v119 = sub_100394FF8(inited, 1, v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = (v55 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v61 = *(v55 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  *v60 = sub_100182BE0;
  v60[1] = v59;

  sub_1000112B4(v61);

  ObjectType = swift_getObjectType();
  v124 = &protocol descriptor for PodcastsOperation;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v63 = result;
  v64 = swift_allocObject();
  *(v64 + 24) = v63;
  swift_unknownObjectWeakInit();
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  *(v66 + 24) = v64;
  v67 = v56;
  v68 = *(v63 + 72);
  v69 = v55;

  v68(sub_10003B6A0, v66, ObjectType, v63);
  v70 = v67;

  v71 = type metadata accessor for BaseOperation();
  v128.receiver = v67;
  v128.super_class = v71;
  ObjectType = v71;
  objc_msgSendSuper2(&v128, "addDependency:", v69);

  v117 = v69;
  v72 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = &v67[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v74 = *&v67[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v73 = sub_100182BE8;
  v73[1] = v72;

  sub_1000112B4(v74);

  v75 = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v76 = result;
  v77 = swift_allocObject();
  *(v77 + 24) = v76;
  swift_unknownObjectWeakInit();
  v78 = swift_allocObject();
  v79 = v70;
  v80 = v123;
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  *(v81 + 16) = v78;
  *(v81 + 24) = v77;
  v82 = *(v76 + 72);
  v83 = v79;

  v82(sub_10003B6A0, v81, v75, v76);

  v127.receiver = v80;
  v127.super_class = ObjectType;
  objc_msgSendSuper2(&v127, "addDependency:", v83);

  v116 = v83;
  v84 = swift_allocObject();
  v85 = v121;
  swift_unknownObjectWeakInit();
  v86 = &v80[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v87 = *&v80[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v86 = sub_100182BF0;
  v86[1] = v84;

  sub_1000112B4(v87);

  v88 = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v89 = result;
  v90 = swift_allocObject();
  *(v90 + 24) = v89;
  v91 = v123;
  swift_unknownObjectWeakInit();
  v92 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  *(v93 + 24) = v90;
  v94 = *(v89 + 72);
  v95 = v91;

  v94(sub_10003B6A0, v93, v88, v89);

  v126.receiver = v85;
  v126.super_class = ObjectType;
  objc_msgSendSuper2(&v126, "addDependency:", v95);

  v123 = v95;
  v96 = swift_allocObject();
  v97 = v120;
  swift_unknownObjectWeakInit();
  v98 = &v85[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v99 = *&v85[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v98 = sub_100182BF8;
  v98[1] = v96;

  sub_1000112B4(v99);

  v100 = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v101 = result;
    v102 = swift_allocObject();
    *(v102 + 24) = v101;
    swift_unknownObjectWeakInit();
    v103 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v104 = swift_allocObject();
    *(v104 + 16) = v103;
    *(v104 + 24) = v102;
    v105 = v85;
    v106 = v97;
    v107 = *(v101 + 72);
    v108 = v105;

    v107(sub_10003B6A0, v104, v100, v101);

    v125.receiver = v97;
    v125.super_class = ObjectType;
    objc_msgSendSuper2(&v125, "addDependency:", v108);

    v109 = swift_allocObject();
    v110 = v118;
    v111 = v119;
    *(v109 + 2) = v115[0];
    *(v109 + 3) = v110;
    *(v109 + 4) = v111;
    v112 = &v106[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v113 = *&v106[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    *v112 = sub_100182C00;
    v112[1] = v109;

    v114 = v111;
    sub_1000112B4(v113);

    return v114;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10017B67C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  if (!a5)
  {
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v14 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)();
  }

  v15 = *(v12 + 16);

  v17 = v15(v16);

  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a5;
  v18[6] = sub_100183054;
  v18[7] = v13;
  v22[4] = sub_100183058;
  v22[5] = v18;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10000F038;
  v22[3] = &unk_1004E0830;
  v19 = _Block_copy(v22);
  v20 = a5;

  v21 = v17;

  [v21 performBlock:v19];
  _Block_release(v19);
}

uint64_t sub_10017B85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v11 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v12 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000153E0(a4, a5, &v17);
    _os_log_impl(&_mh_execute_header, v12, v11, "Add episode to media library. EpisodeUUID %s", v13, 0xCu);
    sub_100004590(v14);
  }

  sub_1000044A0(a6, a6[3]);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  dispatch thunk of MediaLibraryClientProtocol.addEpisode(_:completion:)();
}

uint64_t sub_10017B9F8(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_100168088(&qword_100573600);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_100168088(&qword_1005735D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_100010430(a1, v6, &qword_100573600);
  sub_10017BB28(v6, v9);
  a2(v9);
  return sub_100009104(v9, &qword_1005735D0);
}

uint64_t sub_10017BB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_1005735D0);
  __chkstk_darwin(v4);
  v6 = (v16 - v5);
  v7 = sub_100168088(&qword_100573600);
  __chkstk_darwin(v7);
  v9 = (v16 - v8);
  sub_100010430(a1, v16 - v8, &qword_100573600);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v16[1] = v10;
    swift_errorRetain();
    sub_100168088(&qword_100575C50);
    v11 = _getErrorEmbeddedNSError<A>(_:)();
    if (v11)
    {
      v12 = v11;

      sub_100009104(a1, &qword_100573600);
    }

    else
    {
      v12 = swift_allocError();
      *v15 = v10;

      sub_100009104(a1, &qword_100573600);
    }

    *v6 = v12;
    swift_storeEnumTagMultiPayload();
    return sub_100010498(v6, a2, &qword_1005735D0);
  }

  else
  {
    sub_100009104(a1, &qword_100573600);
    v13 = type metadata accessor for MediaLibraryPid();
    (*(*(v13 - 8) + 32))(a2, v9, v13);
    return swift_storeEnumTagMultiPayload();
  }
}

void sub_10017BD8C(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v47 = a5;
  v48 = a6;
  v44 = a3;
  v9 = type metadata accessor for MediaLibraryPid();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v46 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v43 = &v38 - v14;
  v45 = v15;
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v42 = *a1;
  v18 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v19 = static OS_os_log.downloads.getter();
  v20 = a2;
  v49 = *(v10 + 16);
  v41 = v10 + 16;
  v49(v17, a2, v9);
  if (os_log_type_enabled(v19, v18))
  {
    v21 = swift_slowAlloc();
    v39 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 134218242;
    v24 = MediaLibraryPid.value.getter();
    (*(v10 + 8))(v17, v9);
    *(v22 + 4) = v24;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1000153E0(v47, v48, aBlock);
    _os_log_impl(&_mh_execute_header, v19, v18, "Update episode with media library persistent id %lld. EpisodeUUID %s.", v22, 0x16u);
    sub_100004590(v23);

    a4 = v39;
  }

  else
  {
    (*(v10 + 8))(v17, v9);
  }

  v25 = v43;
  v40 = v20;
  v49(v43, v20, v9);
  v26 = *(v10 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v44;
  *(v27 + 24) = a4;
  v44 = *(v10 + 32);
  v44(v27 + ((v26 + 32) & ~v26), v25, v9);
  v28 = *(v42 + 16);

  v30 = v28(v29);

  v31 = v46;
  v49(v46, v40, v9);
  v32 = (v26 + 56) & ~v26;
  v33 = swift_allocObject();
  v34 = v47;
  v35 = v48;
  v33[2] = v30;
  v33[3] = v34;
  v33[4] = v35;
  v33[5] = sub_100182F5C;
  v33[6] = v27;
  v44(v33 + v32, v31, v9);
  aBlock[4] = sub_100182FE0;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E0790;
  v36 = _Block_copy(aBlock);

  v37 = v30;

  [v37 performBlock:v36];
  _Block_release(v36);
}

uint64_t sub_10017C1D4(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v9 = sub_100168088(&qword_1005735F8);
  __chkstk_darwin(v9);
  v11 = (&v14 - v10);
  if (a2)
  {
    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
  }

  else
  {
    v12 = type metadata accessor for MediaLibraryPid();
    (*(*(v12 - 8) + 16))(v11, a5, v12);
    swift_storeEnumTagMultiPayload();
  }

  a3(v11);
  return sub_100009104(v11, &qword_1005735F8);
}

uint64_t sub_10017C308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_100168088(&qword_100574040);
  v4[6] = swift_task_alloc();
  type metadata accessor for NetworkTaskPriority();
  v4[7] = swift_task_alloc();
  sub_100168088(&unk_100582DE0);
  v4[8] = swift_task_alloc();
  v5 = type metadata accessor for ArtworkRequest();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for ArtworkModel();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = sub_100168088(&unk_100578C10);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for CachingImageContentProvider();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10017C5D0, 0, 0);
}

uint64_t sub_10017C5D0()
{
  static CachingImageContentProvider.shared.getter();
  sub_100009F1C(0, &qword_1005735F0);
  v1 = static MTDB.shared.getter();
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v1;
  v8 = [v1 privateQueueContext];
  v0[25] = v8;

  v0[26] = kMTPreferredArtworkSize;
  v9 = swift_allocObject();
  v0[27] = v9;
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v5;
  (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
  v8;

  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_10017C840;
  v11 = v0[21];
  v12 = v0[18];
  v13 = v0[19];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v12, sub_100182ED4, v9, v13);
}

uint64_t sub_10017C840()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = v2[18];
  v4 = v2[17];
  v5 = v2[16];
  if (v0)
  {
    (*(v4 + 8))(v2[18], v2[16]);

    v6 = sub_10017D0C4;
  }

  else
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_10017C9F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10017C9F4()
{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[13];
  sub_100010430(v0[21], v1, &unk_100578C10);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[24];
    v5 = v0[25];
    v6 = v0[22];
    v7 = v0[23];
    v8 = v0[21];
    sub_100009104(v0[20], &unk_100578C10);
    CachingImageContentProvider.placeholderURL(for:generatePlaceholder:)();

    sub_100009104(v8, &unk_100578C10);
    (*(v7 + 8))(v4, v6);
    v9 = *(sub_100168088(&qword_1005735E8) + 48);
    v10 = v0[2];
    v11 = v0[3];
    v12 = type metadata accessor for MediaLibraryPid();
    (*(*(v12 - 8) + 16))(v10 + v9, v11, v12);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[14];
    v16 = v0[15];
    v17 = v0[8];
    sub_100182EF4(v0[20], v16, &type metadata accessor for ArtworkModel);
    sub_100182784(v16, v15, &type metadata accessor for ArtworkModel);
    v18 = type metadata accessor for CropCode();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    static NetworkTaskPriority.dispatchQueuePriority()();
    ArtworkRequest.init(model:targetSize:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:priority:trace:)();
    v19 = swift_task_alloc();
    v0[30] = v19;
    *v19 = v0;
    v19[1] = sub_10017CD7C;
    v20 = v0[22];
    v21 = v0[11];
    v22 = v0[6];

    return ImageContentProvider.url(for:)(v22, v21, v20, &protocol witness table for CachingImageContentProvider);
  }
}

uint64_t sub_10017CD7C()
{

  if (v0)
  {

    v1 = sub_10017D1D4;
  }

  else
  {
    v1 = sub_10017CE94;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10017CE94()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 120);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  v17 = *(v0 + 16);

  (*(v6 + 8))(v7, v8);
  sub_10018270C(v5, &type metadata accessor for ArtworkModel);
  sub_100009104(v4, &unk_100578C10);
  (*(v3 + 8))(v1, v2);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = *(sub_100168088(&qword_1005735E8) + 48);
  sub_100010498(v9, v17, &qword_100574040);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = type metadata accessor for MediaLibraryPid();
  (*(*(v14 - 8) + 16))(v12 + v11, v13, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10017D0C4()
{
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017D1D4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 120);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  v17 = *(v0 + 16);

  (*(v6 + 8))(v7, v8);
  sub_10018270C(v5, &type metadata accessor for ArtworkModel);
  sub_100009104(v4, &unk_100578C10);
  (*(v3 + 8))(v1, v2);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = *(sub_100168088(&qword_1005735E8) + 48);
  sub_100010498(v9, v17, &qword_100574040);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = type metadata accessor for MediaLibraryPid();
  (*(*(v14 - 8) + 16))(v12 + v11, v13, v14);

  v15 = *(v0 + 8);

  return v15();
}

void sub_10017D404(uint64_t a1@<X8>)
{
  v3 = NSManagedObjectContext.episode(for:)();
  if (!v1)
  {
    if (v3 && (v4 = v3, v5 = [v3 podcast], v4, v5))
    {
      MTPodcast.artworkModel.getter();
    }

    else
    {
      v6 = type metadata accessor for ArtworkModel();
      (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
    }
  }
}

uint64_t sub_10017D4C4(double a1)
{
  v1 = [objc_opt_self() defaultPodcastArtworkWithWidth:a1];
  if (static ArtworkFormat.heicEncodingSupported()())
  {
    if (v1)
    {
      v2 = UIImageHEICRepresentation(v1);
      if (v2)
      {
LABEL_4:
        v3 = v2;
        v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        return v4;
      }

      goto LABEL_7;
    }
  }

  else if (v1)
  {
    v2 = UIImagePNGRepresentation(v1);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
  }

  return 0;
}

uint64_t sub_10017D584(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void *a4)
{
  v34 = a4;
  v43 = a1;
  v6 = type metadata accessor for URL();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100168088(&qword_1005735E8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for MediaLibraryPid();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100168088(&qword_100574040);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v22 = swift_allocObject();
  v35 = a2;
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  v39 = a3;
  v37 = v22;
  sub_100010430(v43, v11, &qword_1005735E8);
  v23 = *(v9 + 56);
  v24 = v40;
  sub_100010498(v11, v21, &qword_100574040);
  v38 = v13;
  v25 = *(v13 + 32);
  v26 = v12;
  v27 = v41;
  v42 = v26;
  v25(v15, &v11[v23]);
  v43 = v21;
  sub_100010430(v21, v19, &qword_100574040);
  if ((*(v24 + 48))(v19, 1, v27) == 1)
  {

    sub_100009104(v19, &qword_100574040);
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v28 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)();

    v44 = 0;
    v45 = 0;
    v35(&v44);
  }

  else
  {
    v29 = v36;
    (*(v24 + 32))(v36, v19, v27);

    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v30 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)();

    sub_1000044A0(v34, v34[3]);
    v31 = swift_allocObject();
    v32 = v37;
    *(v31 + 16) = sub_10002DD30;
    *(v31 + 24) = v32;
    dispatch thunk of MediaLibraryClientProtocol.addArtwork(withFileUrl:toEpisodeWithPersistentId:completion:)();

    (*(v24 + 8))(v29, v27);
  }

  (*(v38 + 8))(v15, v42);
  return sub_100009104(v43, &qword_100574040);
}

uint64_t sub_10017DA7C(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    sub_100168088(&qword_100575C50);
    v5 = _getErrorEmbeddedNSError<A>(_:)();
    if (v5)
    {
      v6 = v5;
      sub_100182C18(a1, 1);
    }

    else
    {
      v6 = swift_allocError();
      *v8 = a1;
    }

    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  a3(v6, v7);
  return sub_10003163C(v6, v7);
}

uint64_t sub_10017DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v8 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004007C0;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100022C18();
  *(v9 + 64) = v10;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  swift_getErrorValue();

  v11 = Error.localizedDescription.getter();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 72) = v11;
  *(v9 + 80) = v12;
  os_log(_:dso:log:_:_:)();

  v13 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  v14 = *(a4 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
  swift_errorRetain();
  [v14 lock];
  *(a4 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = a1;
  swift_errorRetain();

  [*(a4 + v13) unlock];
}

void sub_10017DCE8(uint64_t a1, void *a2, int a3, ProtocolDescriptor *a4)
{
  v191 = a4;
  v7 = sub_100168088(&qword_100574040);
  v181 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v183 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v9;
  __chkstk_darwin(v8);
  v176 = &v172 - v10;
  v179 = type metadata accessor for URL();
  v178 = *(v179 - 8);
  v11 = __chkstk_darwin(v179);
  v172 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v177 = &v172 - v13;
  v173 = type metadata accessor for UUID();
  v14 = *(v173 - 8);
  __chkstk_darwin(v173);
  v16 = &v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v190 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v190);
  v188 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v18 - 8);
  v20 = &v172 - v19;
  static os_log_type_t.error.getter();
  v187 = sub_100009F1C(0, &qword_1005748A0);
  v21 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100400790;
  v184 = a1;
  v202 = a1;
  v203 = a2;
  v185 = a2;
  LODWORD(v186) = a3;
  v204 = a3;
  sub_100182864();
  v23 = Error.localizedDescription.getter();
  v25 = v24;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100022C18();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  os_log(_:dso:log:_:_:)();

  v26 = v189;

  v27 = v26 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata;
  v28 = type metadata accessor for EpisodeMetadata(0);
  sub_100010430(v27 + *(v28 + 60), v20, &qword_100574760);
  v29 = type metadata accessor for Date();
  LODWORD(v27) = (*(*(v29 - 8) + 48))(v20, 1, v29);
  sub_100009104(v20, &qword_100574760);
  if (v27 != 1)
  {
    v30 = *(v26 + OBJC_IVAR____TtC8Podcasts11JobPipeline_analyticsChannel);
    type metadata accessor for AnalyticsEvent();
    swift_unknownObjectRetain();
    v31 = AnalyticsEvent.__allocating_init(cacheDeletedFilesRestored:failed:)();
    [v30 sendEvent:v31];
    swift_unknownObjectRelease();
  }

  v175 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v32 = *(v26 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  v33 = v188;
  OS_dispatch_queue.sync<A>(execute:)();
  v174 = 0;

  v34 = v173;
  (*(v14 + 16))(v16, v33, v173);
  sub_10018270C(v33, type metadata accessor for DownloadJob);
  v180 = sub_100181388(v16, 0);
  (*(v14 + 8))(v16, v34);
  v35 = v176;
  sub_100010430(v191, v176, &qword_100574040);
  v36 = v178;
  v37 = v179;
  v38 = &selRef_handleNotification_;
  if ((*(v178 + 48))(v35, 1, v179) == 1)
  {
    sub_100009104(v35, &qword_100574040);
    v39 = static OS_os_log.default.getter();
    v40 = objc_allocWithZone(type metadata accessor for GroupOperation());
    v41 = sub_100394FF8(&_swiftEmptyArrayStorage, 0, v39);
  }

  else
  {
    v42 = v177;
    (*(v36 + 32))(v177, v35, v37);
    sub_100168088(&unk_100574680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007B0;
    v44 = *(v36 + 16);
    v45 = v172;
    v44(v172, v42, v37);
    v46 = static OS_os_log.downloads.getter();
    v47 = type metadata accessor for DeleteFileOperation();
    v48 = objc_allocWithZone(v47);
    v49 = &v48[OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_input];
    *v49 = 0;
    v49[8] = 2;
    *&v48[OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_log] = v46;
    v44(&v48[OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_file], v45, v37);
    v38 = &selRef_handleNotification_;
    v48[OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_proceedOnFailure] = 1;
    v192.receiver = v48;
    v192.super_class = v47;
    v50 = objc_msgSendSuper2(&v192, "init");
    v51 = *(v36 + 8);
    v51(v45, v37);
    *(inited + 32) = v50;
    v52 = static OS_os_log.downloads.getter();
    v53 = objc_allocWithZone(type metadata accessor for GroupOperation());
    v41 = sub_100394FF8(inited, 1, v52);
    swift_setDeallocating();
    swift_arrayDestroy();
    v51(v177, v37);
  }

  v54 = v189;
  v55 = *(v189 + v175);
  v187 = v41;
  v56 = v55;
  v57 = v188;
  v58 = v190;
  OS_dispatch_queue.sync<A>(execute:)();

  v59 = &v57[*(v58 + 20)];
  v61 = *v59;
  v60 = *(v59 + 1);

  sub_10018270C(v57, type metadata accessor for DownloadJob);
  v62 = OBJC_IVAR____TtC8Podcasts11JobPipeline_episodeStorage;
  v63 = swift_allocObject();
  *(v63 + 16) = v61;
  *(v63 + 24) = v60;
  v190 = *(v54 + v62);
  swift_unknownObjectRetain();
  v64 = static OS_os_log.downloads.getter();
  v65 = sub_100168088(&qword_1005735B0);
  v66 = objc_allocWithZone(v65);
  v67 = &v66[*((swift_isaMask & *v66) + 0x198)];
  *v67 = 0;
  v67[8] = 2;
  v68 = &v66[*((swift_isaMask & *v66) + 0x1A8)];
  *v68 = sub_1001828B8;
  v68[1] = v63;
  *&v66[*((swift_isaMask & *v66) + 0x1A0)] = v190;
  *&v66[*((swift_isaMask & *v66) + 0x1B0)] = v64;
  v201.receiver = v66;
  v201.super_class = v65;
  v179 = objc_msgSendSuper2(&v201, v38[168]);
  v69 = swift_allocObject();
  swift_weakInit();
  v70 = v183;
  sub_100010430(v191, v183, &qword_100574040);
  v71 = v38;
  v72 = (*(v181 + 80) + 16) & ~*(v181 + 80);
  v73 = (v182 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  sub_100010498(v70, v74 + v72, &qword_100574040);
  *(v74 + v73) = v69;
  v75 = sub_100168088(&unk_10057A690);
  v76 = objc_allocWithZone(v75);
  v77 = &v76[*((swift_isaMask & *v76) + 0x180)];
  *v77 = 0;
  v77[8] = 2;
  v78 = &v76[*((swift_isaMask & *v76) + 0x188)];
  *v78 = sub_1001828C0;
  *(v78 + 1) = v74;
  v200.receiver = v76;
  v200.super_class = v75;
  v79 = v71;
  v80 = objc_msgSendSuper2(&v200, v71[168]);
  v81 = swift_allocObject();
  swift_weakInit();
  v82 = objc_allocWithZone(v75);
  v83 = &v82[*((swift_isaMask & *v82) + 0x180)];
  *v83 = 0;
  v83[8] = 2;
  v84 = &v82[*((swift_isaMask & *v82) + 0x188)];
  *v84 = sub_1001826D4;
  v84[1] = v81;
  v199.receiver = v82;
  v199.super_class = v75;
  v188 = objc_msgSendSuper2(&v199, v71[168]);
  v85 = swift_allocObject();
  swift_weakInit();
  v86 = swift_allocObject();
  v87 = v184;
  *(v86 + 16) = v85;
  *(v86 + 24) = v87;
  v88 = v185;
  *(v86 + 32) = v185;
  LOBYTE(v74) = v186;
  *(v86 + 40) = v186;
  v89 = objc_allocWithZone(v75);
  v90 = v89 + *((swift_isaMask & *v89) + 0x180);
  *v90 = 0;
  v90[8] = 2;
  v91 = (v89 + *((swift_isaMask & *v89) + 0x188));
  *v91 = sub_1001829B4;
  v91[1] = v86;
  sub_1001829D8(v87, v88, v74);
  v198.receiver = v89;
  v198.super_class = v75;
  v186 = objc_msgSendSuper2(&v198, v79[168]);
  v92 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v93 = v180;
  v94 = &v180[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v95 = *&v180[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v94 = sub_100184654;
  v94[1] = v92;

  v96 = v93;
  sub_1000112B4(v95);

  ObjectType = swift_getObjectType();
  v191 = &protocol descriptor for PodcastsOperation;
  v98 = swift_conformsToProtocol2();
  if (!v98)
  {
    __break(1u);
    goto LABEL_13;
  }

  v99 = v98;
  v100 = swift_allocObject();
  *(v100 + 24) = v99;
  swift_unknownObjectWeakInit();
  v101 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v102 = swift_allocObject();
  *(v102 + 16) = v101;
  *(v102 + 24) = v100;
  v103 = *(v99 + 72);
  v104 = v96;
  v105 = v80;

  v103(sub_10003B6A0, v102, ObjectType, v99);

  v106 = type metadata accessor for BaseOperation();
  v197.receiver = v105;
  v197.super_class = v106;
  *&v190 = v106;
  objc_msgSendSuper2(&v197, "addDependency:", v104);

  v185 = v104;
  v107 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v108 = &v105[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v109 = *&v105[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v108 = sub_100182A18;
  v108[1] = v107;

  sub_1000112B4(v109);

  v110 = swift_getObjectType();
  v111 = swift_conformsToProtocol2();
  if (!v111)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v112 = v111;
  v113 = swift_allocObject();
  *(v113 + 24) = v112;
  swift_unknownObjectWeakInit();
  v114 = swift_allocObject();
  v115 = v187;
  swift_unknownObjectWeakInit();
  v116 = swift_allocObject();
  *(v116 + 16) = v114;
  *(v116 + 24) = v113;
  v117 = *(v112 + 72);
  v118 = v105;
  v119 = v115;
  v120 = v118;

  v117(sub_10003B6A0, v116, v110, v112);

  v196.receiver = v119;
  v196.super_class = v190;
  objc_msgSendSuper2(&v196, "addDependency:", v120);

  v187 = v120;
  v121 = swift_allocObject();
  v122 = v188;
  swift_unknownObjectWeakInit();
  v123 = &v119[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v124 = *&v119[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v123 = sub_100182704;
  v123[1] = v121;

  sub_1000112B4(v124);

  v125 = swift_getObjectType();
  v126 = swift_conformsToProtocol2();
  if (!v126)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v127 = v126;
  v128 = swift_allocObject();
  *(v128 + 24) = v127;
  swift_unknownObjectWeakInit();
  v129 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v130 = swift_allocObject();
  *(v130 + 16) = v129;
  *(v130 + 24) = v128;
  v131 = *(v127 + 72);
  v132 = v119;
  v133 = v122;

  v131(sub_10003B6A0, v130, v125, v127);

  v195.receiver = v133;
  v195.super_class = v190;
  objc_msgSendSuper2(&v195, "addDependency:", v132);

  v188 = v132;
  v134 = swift_allocObject();
  v135 = v186;
  swift_unknownObjectWeakInit();
  v136 = &v133[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v137 = *&v133[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v136 = sub_100184654;
  v136[1] = v134;

  sub_1000112B4(v137);

  v138 = swift_getObjectType();
  v139 = swift_conformsToProtocol2();
  if (!v139)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v140 = v139;
  v141 = swift_allocObject();
  *(v141 + 24) = v140;
  swift_unknownObjectWeakInit();
  v142 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v143 = swift_allocObject();
  *(v143 + 16) = v142;
  *(v143 + 24) = v141;
  v144 = *(v140 + 72);
  v145 = v133;
  v146 = v135;

  v144(sub_10003B6A0, v143, v138, v140);

  v194.receiver = v146;
  v194.super_class = v190;
  objc_msgSendSuper2(&v194, "addDependency:", v145);

  v186 = v145;
  v147 = swift_allocObject();
  v148 = v179;
  swift_unknownObjectWeakInit();
  v149 = &v146[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v150 = *&v146[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v149 = sub_100182A20;
  v149[1] = v147;

  sub_1000112B4(v150);

  v151 = swift_getObjectType();
  v152 = swift_conformsToProtocol2();
  if (v152)
  {
    v153 = v152;
    v154 = swift_allocObject();
    *(v154 + 24) = v153;
    swift_unknownObjectWeakInit();
    v155 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v156 = v148;
    v157 = swift_allocObject();
    *(v157 + 16) = v155;
    *(v157 + 24) = v154;
    v158 = *(v153 + 72);
    v159 = v146;
    v160 = v156;
    v161 = v159;
    v162 = v160;

    v158(sub_10003B6A0, v157, v151, v153);

    v193.receiver = v162;
    v193.super_class = v190;
    objc_msgSendSuper2(&v193, "addDependency:", v161);

    v163 = &v162[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v164 = *&v162[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    *v163 = sub_10017FB78;
    v163[1] = 0;
    sub_1000112B4(v164);

    sub_100168088(&unk_100574680);
    v165 = swift_allocObject();
    *(v165 + 16) = xmmword_100400780;
    v166 = v185;
    v167 = v187;
    *(v165 + 32) = v185;
    *(v165 + 40) = v167;
    v168 = v188;

    *(v165 + 48) = v168;
    *(v165 + 56) = v162;
    v169 = v186;
    *(v165 + 64) = v186;
    *(v165 + 72) = v161;
    v170 = sub_10016E37C();
    sub_100009F1C(0, &unk_10057A6A0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v170 addOperations:isa waitUntilFinished:0];

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_10017F2CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = *(v10 + 16);

  v14 = v12(v13);

  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = sub_100184690;
  v15[6] = v11;
  v18[4] = sub_100182A28;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10000F038;
  v18[3] = &unk_1004E03A8;
  v16 = _Block_copy(v18);
  v17 = v14;

  [v17 performBlock:v16];
  _Block_release(v16);
}

void sub_10017F444(uint64_t a1@<X1>, void *a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for Logger();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010430(a1, v8, &qword_100574040);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100009104(v8, &qword_100574040);
LABEL_11:
    v25 = v28;
    *v28 = 0;
    *(v25 + 8) = 0;
    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  type metadata accessor for FairPlayRolloutController();
  v13 = static FairPlayRolloutController.shared.getter();
  v14 = FairPlayRolloutController.isEnabled()();

  if (!v14)
  {
LABEL_10:
    (*(v10 + 8))(v12, v9);
    goto LABEL_11;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC8Podcasts11JobPipeline_fairPlayInvalidationManager);
    swift_unknownObjectRetain();

    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    [v16 markKeyForInvalidationAt:v18 shouldRemove:0];

    swift_unknownObjectRelease();
  }

  static Logger.fairPlay.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
  }

  (*(v26 + 8))(v5, v27);
  v23 = [objc_opt_self() activeAccount];
  v24 = [objc_opt_self() controllerWithUserIdentity:v23];

  if (v24)
  {
    [v24 processPendingKeyInvalidations];

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_10017F808@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v27 = a3;
  v24 = a1;
  v25 = a2;
  v5 = type metadata accessor for DownloadJob(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = 0;
    return result;
  }

  v13 = result;
  v23 = a4;
  v14 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v15 = *(result + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v16 = &v11[*(v5 + 40)];
  sub_10018276C(*v16, *(v16 + 1), *(v16 + 2), *(v16 + 3));
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 4;
  *(v16 + 4) = 0;
  *(v16 + 5) = 0;
  *(v16 + 24) = 0;
  v17 = *(v13 + v14);
  sub_100182784(v11, v9, type metadata accessor for DownloadJob);
  v18 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  sub_100182EF4(v9, v19 + v18, type metadata accessor for DownloadJob);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100184608;
  *(v20 + 24) = v19;
  aBlock[4] = sub_10002D950;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E0330;
  v21 = _Block_copy(aBlock);
  v22 = v17;

  dispatch_sync(v22, v21);
  _Block_release(v21);

  sub_10018270C(v11, type metadata accessor for DownloadJob);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100368838(v13, v24, v25, v27);

      result = swift_unknownObjectRelease();
    }

    else
    {
    }

    a4 = v23;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017FB88(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v6 = a4;
  v53 = a4;
  v10 = type metadata accessor for DownloadJob(0);
  v55 = *(v10 - 8);
  v54 = *(v55 + 64);
  v11 = __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v52 = static os_log_type_t.debug.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v51 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004007A0;
  *(v16 + 56) = &type metadata for Double;
  *(v16 + 64) = &protocol witness table for Double;
  *(v16 + 32) = a3 / a2;
  *(v16 + 96) = &type metadata for Int64;
  *(v16 + 104) = &protocol witness table for Int64;
  *(v16 + 72) = a3;
  *(v16 + 136) = &type metadata for Int64;
  *(v16 + 144) = &protocol witness table for Int64;
  *(v16 + 112) = a2;
  v17 = sub_100022C18();
  v18 = v17;
  v19 = 28526;
  if (v6)
  {
    v19 = 7562617;
  }

  v20 = 0xE200000000000000;
  if (v6)
  {
    v20 = 0xE300000000000000;
  }

  *(v16 + 176) = &type metadata for String;
  *(v16 + 184) = v17;
  *(v16 + 152) = v19;
  *(v16 + 160) = v20;
  v48 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v21 = *(v4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v22 = *(v10 + 20);
  v49 = v15;
  v23 = &v15[v22];
  v25 = *v23;
  v24 = *(v23 + 1);

  v50 = type metadata accessor for DownloadJob;
  sub_10018270C(v15, type metadata accessor for DownloadJob);
  *(v16 + 216) = &type metadata for String;
  *(v16 + 224) = v18;
  *(v16 + 192) = v25;
  *(v16 + 200) = v24;
  v26 = v51;
  os_log(_:dso:log:_:_:)();

  v27 = v48;
  v28 = *(v5 + v48);
  OS_dispatch_queue.sync<A>(execute:)();

  v29 = [a1 totalUnitCount];
  v30 = [a1 completedUnitCount];
  v31 = sub_100210480();
  v33 = v32;
  [a1 fractionCompleted];
  v35 = v34;
  v36 = NSProgress.estimatedTimeRemaining.getter();
  v57[0] = v29;
  v57[1] = v30;
  v57[2] = v31;
  v57[3] = v33;
  v57[4] = v35;
  v57[5] = v36;
  v58 = v37 & 1;
  v38 = v49;
  sub_10020EF18(v57, v53, v49);

  v39 = v50;
  sub_10018270C(v13, v50);
  v40 = *(v5 + v27);
  v41 = v38;
  sub_100182784(v38, v13, type metadata accessor for DownloadJob);
  v42 = (*(v55 + 80) + 24) & ~*(v55 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v5;
  sub_100182EF4(v13, v43 + v42, type metadata accessor for DownloadJob);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_100184608;
  *(v44 + 24) = v43;
  aBlock[4] = sub_10002D950;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E00D8;
  v45 = _Block_copy(aBlock);
  v46 = v40;

  dispatch_sync(v46, v45);
  _Block_release(v45);

  sub_10018270C(v41, v39);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
    __break(1u);
  }

  else
  {

    sub_1002EE4A0(sub_100182854, v5);
  }

  return result;
}

void sub_1001800D8(uint64_t a1)
{
  v2 = sub_10016E37C();
  v4[4] = sub_10018285C;
  v4[5] = a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10000F038;
  v4[3] = &unk_1004E0100;
  v3 = _Block_copy(v4);

  [v2 addOperationWithBlock:v3];
  _Block_release(v3);
}

uint64_t sub_1001801A8(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100360268(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100180208(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v25 = a3;
  v26 = a1;
  v27 = a2;
  v5 = type metadata accessor for DownloadJob(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v24[-v9];
  v11 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v12 = *(v3 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v13 = &v10[*(v5 + 40)];
  sub_10018276C(*v13, *(v13 + 1), *(v13 + 2), *(v13 + 3));
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 3) = 4;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  *(v13 + 24) = 0;
  v14 = *(v4 + v11);
  sub_100182784(v10, v8, type metadata accessor for DownloadJob);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_100182EF4(v8, v16 + v15, type metadata accessor for DownloadJob);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100184608;
  *(v17 + 24) = v16;
  v30 = sub_10002D950;
  v31 = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  v29 = &unk_1004E0060;
  v18 = _Block_copy(aBlock);
  v19 = v14;

  dispatch_sync(v19, v18);
  _Block_release(v18);

  sub_10018270C(v10, type metadata accessor for DownloadJob);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v21 = *(v4 + v11);
    sub_100168088(&qword_100574900);
    OS_dispatch_queue.sync<A>(execute:)();

    v22 = v29;
    v23 = v30;
    sub_1000044A0(aBlock, v29);
    (*(v23 + 15))(v22, v23);
    sub_100004590(aBlock);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100368838(v4, v26, v27, v25 | 0x40);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1001805A4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v9 = static OS_os_log.downloads.getter();
  os_log(_:dso:log:_:_:)();

  v10 = *(v1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  (*(v3 + 16))(v5, v8, v2);
  sub_10018270C(v8, type metadata accessor for DownloadJob);
  v11 = sub_100181388(v5, 0);
  (*(v3 + 8))(v5, v2);
  v12 = sub_100168088(&unk_10057A690);
  v13 = objc_allocWithZone(v12);
  v14 = &v13[*((swift_isaMask & *v13) + 0x180)];
  *v14 = 0;
  v14[8] = 2;
  v15 = &v13[*((swift_isaMask & *v13) + 0x188)];
  *v15 = sub_1001826B8;
  *(v15 + 1) = v1;
  v65.receiver = v13;
  v65.super_class = v12;

  v61 = objc_msgSendSuper2(&v65, "init");
  v16 = swift_allocObject();
  v59 = v1;
  swift_weakInit();
  v17 = objc_allocWithZone(v12);
  v18 = &v17[*((swift_isaMask & *v17) + 0x180)];
  *v18 = 0;
  v18[8] = 2;
  v19 = &v17[*((swift_isaMask & *v17) + 0x188)];
  *v19 = sub_1001826D4;
  v19[1] = v16;
  v64.receiver = v17;
  v64.super_class = v12;
  v20 = objc_msgSendSuper2(&v64, "init");
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = &v11[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v23 = *&v11[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v22 = sub_100182704;
  v22[1] = v21;

  v24 = v11;
  sub_1000112B4(v23);

  ObjectType = swift_getObjectType();
  v60 = &protocol descriptor for PodcastsOperation;
  v26 = swift_conformsToProtocol2();
  if (v26)
  {
    v27 = v26;
    v28 = swift_allocObject();
    *(v28 + 24) = v27;
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    v31 = *(v27 + 72);
    v32 = v24;
    v33 = v20;

    v31(sub_1000319D0, v30, ObjectType, v27);

    v34 = type metadata accessor for BaseOperation();
    v63.receiver = v33;
    v63.super_class = v34;
    v57 = v34;
    objc_msgSendSuper2(&v63, "addDependency:", v32);

    v58 = v32;
    v35 = swift_allocObject();
    v36 = v61;
    swift_unknownObjectWeakInit();
    v37 = &v33[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    v38 = *&v33[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    *v37 = sub_100182704;
    v37[1] = v35;

    sub_1000112B4(v38);

    v56 = swift_getObjectType();
    v39 = swift_conformsToProtocol2();
    if (v39)
    {
      v40 = v39;
      v41 = swift_allocObject();
      *(v41 + 24) = v40;
      swift_unknownObjectWeakInit();
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      *(v43 + 24) = v41;
      v44 = *(v40 + 72);
      v45 = v33;
      v46 = v36;
      v47 = v45;
      v48 = v46;

      v44(sub_10003B6A0, v43, v56, v40);

      v62.receiver = v48;
      v62.super_class = v57;
      objc_msgSendSuper2(&v62, "addDependency:", v47);

      v49 = &v48[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
      v50 = *&v48[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
      *v49 = sub_100181268;
      v49[1] = 0;
      sub_1000112B4(v50);

      sub_100168088(&unk_100574680);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100400800;
      v52 = v58;
      *(v51 + 32) = v58;
      *(v51 + 40) = v47;
      *(v51 + 48) = v48;
      v53 = sub_10016E37C();
      sub_100009F1C(0, &unk_10057A6A0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v53 addOperations:isa waitUntilFinished:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100180D10@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for DownloadJob(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  v10 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
  v11 = *(a1 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  v12 = v9 + *(v3 + 40);
  sub_10018276C(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24));
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 3;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  v13 = *(a1 + v10);
  sub_100182784(v9, v7, type metadata accessor for DownloadJob);
  v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  sub_100182EF4(v7, v15 + v14, type metadata accessor for DownloadJob);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1001827EC;
  *(v16 + 24) = v15;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004DFFE8;
  v17 = _Block_copy(aBlock);
  v18 = v13;

  dispatch_sync(v18, v17);
  _Block_release(v17);

  sub_10018270C(v9, type metadata accessor for DownloadJob);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100367C64(a1);
      result = swift_unknownObjectRelease();
    }

    v20 = v22;
    *v22 = 0;
    *(v20 + 8) = 0;
  }

  return result;
}

void sub_100181034(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EpisodeMetadata(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for FairPlayRolloutController();
  v8 = static FairPlayRolloutController.shared.getter();
  v9 = FairPlayRolloutController.isEnabled()();

  if (!v9)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = *(Strong + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      OS_dispatch_queue.sync<A>(execute:)();

      sub_100182784(&v7[*(v5 + 36)], v4, type metadata accessor for EpisodeMetadata);
      sub_10018270C(v7, type metadata accessor for DownloadJob);
      v12 = v4[40];
      sub_10018270C(v4, type metadata accessor for EpisodeMetadata);
      if ((v12 & 1) == 0)
      {
        swift_beginAccess();
        v13 = swift_weakLoadStrong();
        if (v13)
        {
          v14 = *(v13 + OBJC_IVAR____TtC8Podcasts11JobPipeline_secureDownloadRenewalManager);

          dispatch thunk of SecureDownloadRenewalManager.requestSecureDeletion(of:completionHandler:)();
        }
      }
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
}

uint64_t sub_100181278()
{
  static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v0 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100400790;
  swift_getErrorValue();
  v2 = Error.localizedDescription.getter();
  v4 = v3;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_100022C18();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  os_log(_:dso:log:_:_:)();
}

id sub_100181388(uint64_t a1, char a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = OBJC_IVAR____TtC8Podcasts11JobPipeline_jobStorage;
  sub_100009F1C(0, &qword_1005748A0);
  v17 = *(v2 + v8);
  swift_unknownObjectRetain();
  v9 = static OS_os_log.downloads.getter();
  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v11 + v10 + v7) = a2;
  v12 = sub_100168088(&qword_1005735A0);
  v13 = objc_allocWithZone(v12);
  v14 = &v13[*((swift_isaMask & *v13) + 0x198)];
  *v14 = 0;
  v14[8] = 2;
  v15 = &v13[*((swift_isaMask & *v13) + 0x1A8)];
  *v15 = sub_100182604;
  v15[1] = v11;
  *&v13[*((swift_isaMask & *v13) + 0x1A0)] = v17;
  *&v13[*((swift_isaMask & *v13) + 0x1B0)] = v9;
  v18.receiver = v13;
  v18.super_class = v12;
  return objc_msgSendSuper2(&v18, "init");
}

uint64_t sub_1001815D0()
{
  sub_10018270C(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata, type metadata accessor for EpisodeMetadata);
  sub_100184228(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_delegate);
  sub_10018270C(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline__job, type metadata accessor for DownloadJob);
  sub_100004590(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline__task);
  sub_1000112B4(*(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_assetPrefetchBlock));
  v1 = OBJC_IVAR____TtC8Podcasts11JobPipeline_assetsFolder;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_mediaLibraryClient, &unk_1005817C0);
  sub_100004590(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_dsidProvider);
  sub_100004590(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_artworkStorage);
  swift_unknownObjectRelease();

  sub_100183CD8(*(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_takeOffCheck));
  swift_unknownObjectRelease();
  sub_100004590(v0 + OBJC_IVAR____TtC8Podcasts11JobPipeline_bugReporter);
  return v0;
}

uint64_t sub_1001817A4()
{
  sub_1001815D0();

  return swift_deallocClassInstance();
}

uint64_t sub_100181824()
{
  result = type metadata accessor for EpisodeMetadata(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DownloadJob(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1001819AC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1001819C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100181A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100181A54(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_100181A90()
{
  result = qword_100573588;
  if (!qword_100573588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573588);
  }

  return result;
}

unint64_t sub_100181AE8()
{
  result = qword_100573590;
  if (!qword_100573590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573590);
  }

  return result;
}

uint64_t sub_100181B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v22 = a4;
  v23 = a1;
  v8 = type metadata accessor for MediaLibraryPid();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  sub_100010430(v22, v14, &qword_100578010);
  (*(v9 + 16))(v11, v23, v8);
  v16 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v19 = v25;
  *(v18 + 4) = v24;
  *(v18 + 5) = v19;
  (*(v9 + 32))(&v18[v16], v11, v8);
  v20 = &v18[v17];
  *v20 = sub_100182C24;
  v20[1] = v15;

  sub_100217A04(0, 0, v14, &unk_100400B48, v18);
}

uint64_t sub_100181D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v20 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&unk_100581860);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  sub_100009F1C(0, &qword_1005729D0);
  v13 = static OS_dispatch_queue.localAssetSupportWorkQueue.getter();
  sub_100010430(v20, v12, &unk_100581860);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v16 = v22;
  *(v15 + 16) = v21;
  *(v15 + 24) = v16;
  sub_100010498(v12, v15 + v14, &unk_100581860);
  aBlock[4] = sub_100182D74;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E06F0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_100182DE8(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100182E30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v25 + 8))(v5, v3);
  (*(v23 + 8))(v8, v24);
}

uint64_t sub_10018211C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v8[4] = sub_100168088(&unk_100581860);
  v8[5] = swift_task_alloc();
  sub_100168088(&qword_1005735E8);
  v11 = swift_task_alloc();
  v8[6] = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v8[7] = v12;
  *v12 = v8;
  v12[1] = sub_1001822A0;

  return v14(v11, a6);
}

uint64_t sub_1001822A0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1001824A8;
  }

  else
  {
    v2 = sub_1001823B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001823B4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  sub_100010430(v1, v2, &qword_1005735E8);
  swift_storeEnumTagMultiPayload();
  v3(v2);
  sub_100009104(v2, &unk_100581860);
  sub_100009104(v1, &qword_1005735E8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001824A8()
{
  v1 = v0[5];
  v2 = v0[2];
  *v1 = v0[8];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v2(v1);

  sub_100009104(v1, &unk_100581860);

  v3 = v0[1];

  return v3();
}

uint64_t *sub_100182568(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1001825CC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100182604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
  sub_1001BC9A0(v8, *(v8 + *(v7 + 64)), a3, a4);
}

uint64_t sub_10018270C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10018276C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 - 1) >= 4)
  {
  }

  return result;
}

uint64_t sub_100182784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001827F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadJob(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100182864()
{
  result = qword_1005735A8;
  if (!qword_1005735A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005735A8);
  }

  return result;
}

uint64_t sub_100182974(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
    }
  }

  else
  {
    if (!(a3 >> 6))
    {
    }

    return sub_1001829A0(result, a2, a3 & 0x3F);
  }

  return result;
}

uint64_t sub_1001829A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1001829D8(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      return swift_errorRetain();
    }
  }

  else
  {
    if (!(a3 >> 6))
    {
      return swift_errorRetain();
    }

    return sub_100182A04(result, a2, a3 & 0x3F);
  }

  return result;
}

uint64_t sub_100182A04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_100182A60(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001C51C;

  return sub_10017C308(a1, a2, v7, v6);
}

uint64_t sub_100182B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100168088(&qword_100578010) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_100181B74(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_100182C18(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100182C2C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MediaLibraryPid() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001C51C;

  return sub_10018211C(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_100182DE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100182E30()
{
  result = qword_10057D390;
  if (!qword_10057D390)
  {
    sub_100168310(&unk_100575CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D390);
  }

  return result;
}

uint64_t sub_100182E94()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100182EF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100182F5C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for MediaLibraryPid() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10017C1D4(a1, a2 & 1, v6, v7, v8);
}

void sub_100182FE0()
{
  v1 = *(type metadata accessor for MediaLibraryPid() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_1003A4A00(v2, v3, v4, v5, v6, v7);
}

unint64_t sub_100183070()
{
  result = qword_100573608;
  if (!qword_100573608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573608);
  }

  return result;
}

unint64_t sub_1001830C4()
{
  result = qword_100573610;
  if (!qword_100573610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573610);
  }

  return result;
}

uint64_t sub_100183130()
{
  v1 = type metadata accessor for DownloadJob(0);
  v2 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v16 = (v2 + 16) & ~v2;
  v17 = v0;
  v3 = v0 + v16;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v16, v4);

  v5 = v1[6];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);

  v9 = v3 + v1[9];

  v10 = type metadata accessor for EpisodeMetadata(0);
  v11 = *(v10 + 44);
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  v13 = *(v10 + 60);
  if (!(*(v7 + 48))(v9 + v13, 1, v6))
  {
    v8(v9 + v13, v6);
  }

  if ((*(v3 + v1[10] + 24) - 1) >= 4)
  {
  }

  return _swift_deallocObject(v17, v16 + v15, v2 | 7);
}

uint64_t sub_10018338C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(type metadata accessor for DownloadJob(0) - 8);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a4(a1, a2, a3, v9);
}

void sub_100183428(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for DownloadJob(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for URL() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v4 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100178BEC(a1, a2, a3, a4, v4 + v10, v4 + v13, v14);
}

void sub_100183550(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for DownloadJob(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for URL() - 8);
  v13 = *(v4 + v11);
  v14 = v4 + ((v11 + *(v12 + 80) + 8) & ~*(v12 + 80));

  sub_100178E94(a1, a2, a3, a4, v4 + v10, v13, v14);
}

uint64_t sub_100183690(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100179640(a1, v4, v5, v6);
}

uint64_t sub_100183704(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_100179144(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1001837A8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100183820(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

void sub_100183860()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1003A4464(v5, v6, v7, v0 + v2, v9, v10, v11, v8);
}

uint64_t sub_100183910()
{
  type metadata accessor for DownloadJob(0);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_100178174(v1, v2, v3);
}

uint64_t sub_100183978()
{
  v1 = *(type metadata accessor for DownloadJob(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_100177964(v3, v0 + v2, v5, v6);
}

uint64_t sub_100183A6C@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (v7 + v6 + ((v6 + 16) & ~v6)) & ~v6;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for DownloadJob(0) - 8);
  v11 = (*(v10 + 80) + v9 + 16) & ~*(v10 + 80);
  return sub_100179FD8(a1, v2 + v8, *(v2 + v9), *(v2 + v9 + 8), v2 + v11, *(v2 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

unint64_t sub_100183BAC()
{
  result = qword_100573690;
  if (!qword_100573690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573690);
  }

  return result;
}

uint64_t sub_100183C00(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1001742C4(a1, v4, v5, v6, v7);
}

uint64_t sub_100183C98(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_100183CD8(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100183D68(uint64_t a1)
{

  if (*(v1 + 24))
  {
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100183DEC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100183E34()
{
  v1 = type metadata accessor for DownloadJob(0);
  v2 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);

  v16 = v0;
  v3 = v0 + ((v2 + 24) & ~v2);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = v1[6];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);

  v9 = v3 + v1[9];

  v10 = type metadata accessor for EpisodeMetadata(0);
  v11 = *(v10 + 44);
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  v13 = *(v10 + 60);
  if (!(*(v7 + 48))(v9 + v13, 1, v6))
  {
    v8(v9 + v13, v6);
  }

  if ((*(v3 + v1[10] + 24) - 1) >= 4)
  {
  }

  return _swift_deallocObject(v16, ((v2 + 24) & ~v2) + v15, v2 | 7);
}

uint64_t sub_100184080()
{
  v1 = *(type metadata accessor for DownloadJob(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10016E2E0(v2, v3);
}

uint64_t sub_1001840E4(uint64_t a1)
{
  v3 = *(type metadata accessor for DownloadJob(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1001701BC(a1, v4, v5, v6, v7);
}

uint64_t sub_10018415C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts11JobPipeline__job;
  swift_beginAccess();
  return sub_100182784(v1 + v3, a1, type metadata accessor for DownloadJob);
}

uint64_t sub_1001841D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 >> 6 == 2)
  {
    return swift_errorRetain();
  }

  if (!(a3 >> 6))
  {
    return sub_100182A04(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1001841EC(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3;
  return v4(v6);
}

uint64_t sub_100184250(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100573648);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001842C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100168088(&qword_100573648);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100184350(uint64_t a1)
{
  sub_100184424();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    sub_100012E4C();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v8;
    }
  }

  return v3;
}

void sub_100184424()
{
  if (!qword_100573750)
  {
    sub_100168310(&qword_100575C50);
    sub_100168310(&qword_100574040);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100573750);
    }
  }
}

uint64_t sub_1001844BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 17))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10018450C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

id sub_100184694()
{
  result = [objc_allocWithZone(type metadata accessor for CarPlayMigrationBridge()) init];
  qword_100593220 = result;
  return result;
}

uint64_t sub_1001847A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100184888@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100184908(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

id sub_100184A88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayMigrationBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarPlayMigrationBridge()
{
  result = qword_1005737A8;
  if (!qword_1005737A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100184B8C()
{
  sub_100184C1C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100184C1C()
{
  if (!qword_1005737B8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1005737B8);
    }
  }
}

uint64_t getEnumTagSinglePayload for DeleteHiddenShowsMigrator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DeleteHiddenShowsMigrator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

void sub_100184D14()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    [v0 immediatelyDeleteAllHiddenPodcasts];
  }

  else
  {
    __break(1u);
  }
}

void sub_100184D84()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  v3[4] = sub_100184D14;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10000F038;
  v3[3] = &unk_1004E15D0;
  v2 = _Block_copy(v3);
  [v1 performBlockAndWaitWithSave:v2];
  _Block_release(v2);
}

uint64_t PodcastsStateTransitionsExternalEffects.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void PodcastsStateTransitionsExternalEffects.unsafeUpdateFeed(for:shouldFetchPlayState:)(void *a1, char a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 uuid];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    v15 = [a1 managedObjectContext];
    if (v15)
    {
      v16 = v15;
      [v15 saveInCurrentBlock];
      v17 = [a1 title];
      v60 = v12;
      if (v17)
      {
        v18 = v17;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v59 = 0;
        v20 = 0;
      }

      v30 = a2;
      v31 = [a1 storeCollectionId];
      v32 = [a1 feedURL];
      if (v32)
      {
        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v37 = *(v2 + 24);
      v38 = swift_allocObject();
      v39 = v60;
      *(v38 + 16) = v59;
      *(v38 + 24) = v20;
      *(v38 + 32) = v39;
      *(v38 + 40) = v14;
      *(v38 + 48) = v31;
      *(v38 + 56) = v34;
      *(v38 + 64) = v36;
      *(v38 + 72) = v30 & 1;
      *(v38 + 80) = v2;
      aBlock[4] = sub_100186220;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100185CE0;
      aBlock[3] = &unk_1004E1620;
      v40 = _Block_copy(aBlock);

      [v37 updatePodcastWithUUID:v11 userInitiated:1 forced:1 forceBootstrap:0 source:21 completion:v40];
      _Block_release(v40);

      return;
    }
  }

  static Logger.podcastsStatesCoordination.getter();
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    HIDWORD(v58) = v23;
    v60 = v5;
    v24 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v24 = 136381699;
    v25 = [v21 title];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v29 = 0xEA00000000003E65;
      v27 = 0x6C746974206F6E3CLL;
    }

    v41 = 0x3E7974706D653CLL;
    v42 = sub_1000153E0(v27, v29, aBlock);

    *(v24 + 4) = v42;
    *(v24 + 12) = 2080;
    v43 = [v21 uuid];
    if (v43)
    {
      v44 = v43;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
    }

    else
    {
      v46 = 0xE700000000000000;
    }

    v47 = sub_1000153E0(v41, v46, aBlock);

    *(v24 + 14) = v47;
    *(v24 + 22) = 2080;
    aBlock[6] = [v21 managedObjectContext];
    sub_100168088(&qword_1005737C8);
    v48 = String.init<A>(describing:)();
    v50 = sub_1000153E0(v48, v49, aBlock);

    *(v24 + 24) = v50;
    *(v24 + 32) = 2049;
    v51 = [v21 storeCollectionId];

    *(v24 + 34) = v51;
    *(v24 + 42) = 2081;
    v52 = [v21 feedURL];
    if (v52)
    {
      v53 = v52;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;
    }

    else
    {
      v56 = 0xE700000000000000;
      v54 = 0x3E7974706D653CLL;
    }

    v57 = sub_1000153E0(v54, v56, aBlock);

    *(v24 + 44) = v57;
    _os_log_impl(&_mh_execute_header, v22, BYTE4(v58), "We cannot update feed for podcast without UUID and/or managedObjectContext. Podcast %{private}s, uuid: %s, MOC: %s, adamID: %{private}lld, feedURL: %{private}s.", v24, 0x34u);
    swift_arrayDestroy();

    (*(v6 + 8))(v9, v60);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

void sub_1001854A8(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v75 = a8;
  v71 = a5;
  v72 = a7;
  v70 = a3;
  v73 = a2;
  v14 = a10;
  v15 = a9;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  __chkstk_darwin(v24);
  v27 = &v66 - v26;
  v74 = v19;
  if (a1)
  {
    LODWORD(v73) = a10;
    static Logger.podcastsStatesCoordination.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = Logger.logObject.getter();
    if (os_log_type_enabled(v29, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v68 = v17;
      v76[0] = v31;
      *v30 = 136381443;
      v69 = v16;
      if (a4)
      {
        v32 = v70;
      }

      else
      {
        v32 = 0x6C746974206F6E3CLL;
      }

      if (a4)
      {
        v33 = a4;
      }

      else
      {
        v33 = 0xEA00000000003E65;
      }

      v34 = sub_1000153E0(v32, v33, v76);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1000153E0(v71, a6, v76);
      *(v30 + 22) = 2049;
      *(v30 + 24) = v72;
      *(v30 + 32) = 2081;
      v35 = v75;
      if (a9)
      {
        v36 = v75;
      }

      else
      {
        v36 = 0x3E7974706D653CLL;
      }

      if (a9)
      {
        v37 = a9;
      }

      else
      {
        v37 = 0xE700000000000000;
      }

      v38 = sub_1000153E0(v36, v37, v76);
      v16 = v69;

      *(v30 + 34) = v38;
      _os_log_impl(&_mh_execute_header, v29, v28, "Feed update completed for Podcast %{private}s, uuid: %s, adamID: %{private}lld, feedURL: %{private}s.", v30, 0x2Au);
      swift_arrayDestroy();
      v39 = v68;

      v15 = a9;
      v40 = *(v39 + 8);
      v40(v27, v16);
    }

    else
    {

      v40 = *(v17 + 8);
      v40(v27, v16);
      v35 = v75;
      v15 = a9;
    }

    v19 = v74;
    v14 = v73;
    goto LABEL_38;
  }

  v69 = v25;
  static Logger.podcastsStatesCoordination.getter();

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v41, v42))
  {

    v40 = *(v17 + 8);
    v40(v23, v16);
    v35 = v75;
    if (!v73)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  v43 = swift_slowAlloc();
  v66 = a6;
  v67 = v42;
  v44 = v43;
  v68 = swift_slowAlloc();
  v76[0] = v68;
  *v44 = 136381443;
  if (a4)
  {
    v45 = v70;
  }

  else
  {
    v45 = 0x6C746974206F6E3CLL;
  }

  if (a4)
  {
    v46 = a4;
  }

  else
  {
    v46 = 0xEA00000000003E65;
  }

  v47 = v45;
  v15 = a9;
  v14 = a10;
  v48 = sub_1000153E0(v47, v46, v76);

  *(v44 + 4) = v48;
  *(v44 + 12) = 2080;
  *(v44 + 14) = sub_1000153E0(v71, v66, v76);
  *(v44 + 22) = 2049;
  *(v44 + 24) = v72;
  *(v44 + 32) = 2081;
  v35 = v75;
  if (a9)
  {
    v49 = v75;
  }

  else
  {
    v49 = 0x3E7974706D653CLL;
  }

  if (a9)
  {
    v50 = a9;
  }

  else
  {
    v50 = 0xE700000000000000;
  }

  v51 = sub_1000153E0(v49, v50, v76);

  *(v44 + 34) = v51;
  v19 = v74;
  _os_log_impl(&_mh_execute_header, v41, v67, "Unable to complete feed update for Podcast %{private}s, uuid: %s, adamID: %{private}lld, feedURL: %{private}s.", v44, 0x2Au);
  swift_arrayDestroy();

  v40 = *(v17 + 8);
  v40(v23, v16);
  if (v73)
  {
LABEL_34:
    swift_errorRetain();
    static Logger.podcastsStatesCoordination.getter();
    swift_errorRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = v14;
      v56 = swift_slowAlloc();
      *v54 = 138412290;
      v57 = _convertErrorToNSError(_:)();
      *(v54 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&_mh_execute_header, v52, v53, "Feed Update Error: %@", v54, 0xCu);
      sub_100186264(v56);
      v14 = v55;
      v35 = v75;

      v19 = v74;
    }

    else
    {
    }

    v40(v69, v16);
  }

LABEL_38:
  if ((v14 & 1) != 0 && v15)
  {

    static Logger.podcastsStatesCoordination.getter();
    v58 = static os_log_type_t.default.getter();
    v59 = Logger.logObject.getter();
    if (os_log_type_enabled(v59, v58))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v76[0] = v61;
      *v60 = 136380675;
      *(v60 + 4) = sub_1000153E0(v35, v15, v76);
      sub_100004590(v61);

      v62 = v74;
    }

    else
    {

      v62 = v19;
    }

    v40(v62, v16);
    v63 = *(a11 + 32);
    sub_100168088(&unk_100573880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100400790;
    v76[0] = v35;
    v76[1] = v15;
    AnyHashable.init<A>(_:)();
    sub_10016AFD8(inited);
    swift_setDeallocating();
    sub_10016BE9C(inited + 32);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v63 scheduleVeryHighPriorityEpisodeStateGetWithFeedUrls:isa];
  }
}

void sub_100185CE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void PodcastsStateTransitionsExternalEffects.unsafeDelete(_:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 managedObjectContext];
  if (v8)
  {
    v9 = v8;
    v10 = *(v1 + 16);
    v39 = v9;
    [v10 _markAsHiddenPodcast:a1 inContext:?];
    [v39 saveInCurrentBlock];
    v11 = v39;
  }

  else
  {
    static Logger.podcastsStatesCoordination.getter();
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      LODWORD(v39) = v14;
      v15 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41 = v38;
      *v15 = 136381699;
      v16 = [v12 title];
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xEA00000000003E65;
        v18 = 0x6C746974206F6E3CLL;
      }

      v21 = sub_1000153E0(v18, v20, &v41);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      v22 = [v12 uuid];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v26 = 0xE700000000000000;
        v24 = 0x3E7974706D653CLL;
      }

      v27 = sub_1000153E0(v24, v26, &v41);

      *(v15 + 14) = v27;
      *(v15 + 22) = 2080;
      v40 = [v12 managedObjectContext];
      sub_100168088(&qword_1005737C8);
      v28 = String.init<A>(describing:)();
      v30 = sub_1000153E0(v28, v29, &v41);

      *(v15 + 24) = v30;
      *(v15 + 32) = 2049;
      v31 = [v12 storeCollectionId];

      *(v15 + 34) = v31;
      *(v15 + 42) = 2081;
      v32 = [v12 feedURL];
      if (v32)
      {
        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      else
      {
        v36 = 0xE700000000000000;
        v34 = 0x3E7974706D653CLL;
      }

      v37 = sub_1000153E0(v34, v36, &v41);

      *(v15 + 44) = v37;
      _os_log_impl(&_mh_execute_header, v13, v39, "We cannot delete podcast without a valid managedObjectContext. Podcast %{private}s, uuid: %s, MOC: %s, adamID: %{private}lld, feedURL: %{private}s.", v15, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
  }
}

void *sub_1001861D0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1001861F0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100186264(uint64_t a1)
{
  v2 = sub_100168088(&qword_100575B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001862CC()
{
  v1 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___actionController;
  if (*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___actionController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___actionController);
  }

  else
  {
    type metadata accessor for LibraryActionController();

    BaseObjectGraph.inject<A>(_:)();

    v2 = v4;
    *(v0 + v1) = v4;
  }

  return v2;
}

uint64_t LibraryDataProvider.libraryActionController.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___libraryActionController;
  swift_beginAccess();
  sub_100010430(v1 + v3, &v6, &qword_100573898);
  if (v7)
  {
    return sub_1000109E4(&v6, a1);
  }

  sub_100009104(&v6, &qword_100573898);
  v5 = sub_1001862CC();
  a1[3] = type metadata accessor for LibraryActionController();
  a1[4] = sub_10000F084(&qword_1005738A0, type metadata accessor for LibraryActionController);
  *a1 = v5;
  sub_100004428(a1, &v6);
  swift_beginAccess();
  sub_100016A14(&v6, v1 + v3, &qword_100573898);
  return swift_endAccess();
}

uint64_t LibraryDataProvider.libraryActionController.setter(__int128 *a1)
{
  sub_1000109E4(a1, v4);
  v2 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___libraryActionController;
  swift_beginAccess();
  sub_100016A14(v4, v1 + v2, &qword_100573898);
  return swift_endAccess();
}

void (*LibraryDataProvider.libraryActionController.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  LibraryDataProvider.libraryActionController.getter(v3);
  return sub_10018658C;
}

void sub_10018658C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    sub_100004428(*a1, v2 + 40);
    v4 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___libraryActionController;
    swift_beginAccess();
    sub_100016A14(v2 + 40, v3 + v4, &qword_100573898);
    swift_endAccess();
    sub_100004590(v2);
  }

  else
  {
    sub_1000109E4(*a1, v2 + 40);
    v5 = OBJC_IVAR____TtC8Podcasts19LibraryDataProvider____lazy_storage___libraryActionController;
    swift_beginAccess();
    sub_100016A14(v2 + 40, v3 + v5, &qword_100573898);
    swift_endAccess();
  }

  free(v2);
}

id LibraryDataProvider.__allocating_init(asPartOf:)(void (*a1)(uint64_t, _BYTE *, uint64_t))
{
  sub_100168088(&unk_1005738E0);
  BaseObjectGraph.inject<A>(_:)();
  sub_100009F1C(0, &qword_10057AFF0);
  BaseObjectGraph.inject<A>(_:)();
  v3 = objc_allocWithZone(v1);
  v4 = sub_10000B6F4(v7, v6, a1);

  return v4;
}

id LibraryDataProvider.__allocating_init(contextProvider:downloadsNotifier:objectGraph:)(void (*a1)(uint64_t, _BYTE *, uint64_t), void *a2, void (*a3)(uint64_t, _BYTE *, uint64_t))
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_10000B6F4(a1, a2, a3);

  return v8;
}

id LibraryDataProvider.init(contextProvider:downloadsNotifier:objectGraph:)(void (*a1)(uint64_t, _BYTE *, uint64_t), void *a2, void (*a3)(uint64_t, _BYTE *, uint64_t))
{
  v3 = sub_10000B6F4(a1, a2, a3);

  return v3;
}

uint64_t sub_100186868@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() defaultMediaLibrary];
  result = sub_100009F1C(0, &qword_100574428);
  a1[3] = result;
  a1[4] = &off_1004EE5A0;
  *a1 = v2;
  return result;
}

id AppCoreSpotlightEntityAnnotator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarPlaySceneDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t LibraryDataProvider.fetchEpisode(with:)()
{
  sub_100168088(&unk_100573A50);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v0 = Promise.init(signpost:log:metadata:logResult:)();
  type metadata accessor for CoreDataFetcher();

  static CoreDataFetcher.fetchEpisode(with:completion:)();

  return v0;
}

uint64_t LibraryDataProvider.fetchEpisodeBlocking(with:)()
{
  type metadata accessor for CoreDataFetcher();
  sub_100168088(&qword_100573A60);
  static CoreDataFetcher.performAndWaitOnEpisode<A>(with:block:)();
  return v1;
}

uint64_t sub_100186D00()
{
  sub_100168088(&qword_100573A68);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v0 = Promise.init(signpost:log:metadata:logResult:)();
  type metadata accessor for CoreDataFetcher();

  static CoreDataFetcher.episodeUuid(for:completion:)();

  return v0;
}

uint64_t LibraryDataProvider.episodeUuid(for:)()
{
  sub_100168088(&qword_100573A68);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v0 = Promise.init(signpost:log:metadata:logResult:)();
  type metadata accessor for CoreDataFetcher();

  static CoreDataFetcher.episodeUuid(for:completion:)();

  return v0;
}

id LibraryDataProvider.fetchEpisodeLockupBlocking(with:)(uint64_t a1)
{
  v3 = sub_100168088(&qword_100573A78);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_100168088(&unk_100573A80);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v17 - v8;
  result = [*(v1 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) mainOrPrivateContext];
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = [result episodeForStoreTrackID:a1];

    if (v12)
    {
      type metadata accessor for Episode();
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v13 = v12;
      if (Episode.__allocating_init(from:clickAction:wantsListenNowReason:)())
      {
        v14 = type metadata accessor for EpisodeListSettings();
        (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
        v15 = type metadata accessor for SectionContext();
        (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
        static MetricsDataConfiguration.default.getter();
        v16 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
        v22 = v17;
        sub_100009104(&v22, &unk_100574650);
        v21 = v18;
        sub_100009104(&v21, &unk_100573A90);
        v20 = *(&v18 + 1);
        sub_100009104(&v20, &unk_100574660);
        sub_1000112B4(v19);

        sub_100009104(v5, &qword_100573A78);
        sub_100009104(v9, &unk_100573A80);
        return v16;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100187270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t))
{
  v12 = [*(v7 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) mainOrPrivateContext];
  v13 = sub_100168088(a4);
  v14 = a7(a1, a6, 0, v13);

  return v14;
}

uint64_t sub_100187340(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, uint64_t))
{
  v10 = [*(v5 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) mainOrPrivateContext];
  v11 = sub_100168088(a2);
  v12 = a5(a1, a4, 0, v11);

  return v12;
}

uint64_t sub_1001873D4(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) mainOrPrivateContext];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_100009F1C(0, &qword_1005729D0);
  v5 = v3;

  v6 = static OS_dispatch_queue.main.getter();
  sub_100168088(&qword_100573AB0);
  v7 = NSManagedObjectContext.performAndPublish<A>(queue:_:)();

  return v7;
}

uint64_t LibraryDataProvider.fetchCategoryLockups(with:)(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) mainOrPrivateContext];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_100009F1C(0, &qword_1005729D0);
  v5 = v3;

  v6 = static OS_dispatch_queue.main.getter();
  sub_100168088(&qword_100573AB0);
  v7 = NSManagedObjectContext.performAndPublish<A>(queue:_:)();

  return v7;
}

uint64_t LibraryDataProvider.unlimitedShowsPublisher<A>(listType:sortBy:transform:updateRequiredComparator:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a6;
  v32 = a5;
  v33 = a4;
  sub_100009F1C(255, &qword_100573AC0);
  v25 = a8;
  v12 = type metadata accessor for FetchedResultsListPublisher();
  v35 = *(v12 - 8);
  __chkstk_darwin(v12);
  v26 = v24 - v13;
  type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v29 = type metadata accessor for Publishers.MapKeyPath();
  v34 = *(v29 - 8);
  __chkstk_darwin(v29);
  v15 = v24 - v14;
  v24[2] = sub_100029130(a1, a2 & 1);
  v24[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = sub_10002929C(a1, a2 & 1);
  ShowsSortType.sortDescriptors.getter(a3);
  v17 = [*(v27 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = v25;
  v20 = v26;
  static FetchedResultsListPublisher.unsafeUnlimitedListPublisher(identifier:entityName:predicate:sortDescriptors:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();

  v36 = v19;
  swift_getKeyPath();
  Publisher.map<A>(_:)();

  (*(v35 + 8))(v20, v12);
  v21 = v29;
  swift_getWitnessTable();
  v22 = Publisher.eraseToAnyPublisher()();
  (*(v34 + 8))(v15, v21);
  return v22;
}

uint64_t LibraryDataProvider.channelSubscribedPublisher(channelAdamId:)(uint64_t a1, char a2)
{
  v5 = sub_100168088(&qword_100573AE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - v7;
  v9 = sub_100168088(&qword_100573AF0);
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  v12 = sub_100168088(&qword_100573AF8);
  v23 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v21 - v13;
  if (a2 & 1) != 0 || (result = AdamID.isEmpty.getter(), (result))
  {
    LOBYTE(v25) = 0;
    Just.init(_:)();
    sub_100009FAC(&qword_100573B00, &qword_100573AE8);
    v16 = Publisher.eraseToAnyPublisher()();
    (*(v6 + 8))(v8, v5);
    return v16;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v25 = 0xD00000000000001BLL;
    v26 = 0x8000000100465B40;
    v24 = a1;
    sub_10019BAC4();
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v21[2] = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21[1] = v18;
    v19 = [objc_opt_self() predicateForChannelWithStoreId:a1];
    v20 = [*(v2 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
    sub_100009F1C(0, &qword_1005729D0);
    static OS_dispatch_queue.main.getter();
    sub_100009F1C(0, &qword_100573B10);
    FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
    sub_100009FAC(&qword_100573B18, &qword_100573AF0);
    Publisher.map<A>(_:)();
    (*(v22 + 8))(v11, v9);
    sub_100009FAC(&qword_100573B20, &qword_100573AF8);
    v16 = Publisher.eraseToAnyPublisher()();
    (*(v23 + 8))(v14, v12);
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t LibraryDataProvider.libraryChannelsPaginatedPublisher(sortBy:pageSize:)(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v3 = sub_100168088(&qword_100573B28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v12[0] = "channelSubscribedPublisher ";
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = [objc_opt_self() predicateForLibraryChannel];
  v8 = *(v2 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider);

  v9 = [v8 privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for LegacyChannelLockup();
  sub_100009F1C(0, &qword_100573B10);
  FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_100009FAC(&qword_100573B30, &qword_100573B28);
  v10 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();
  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t sub_1001880B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  sub_100168088(&qword_100573B38);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v8 = Promise.init(signpost:log:metadata:logResult:)();
  v9 = [*(v7 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v12[4] = a3;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000F038;
  v12[3] = a4;
  v10 = _Block_copy(v12);

  [v9 performBlock:v10];
  _Block_release(v10);

  return v8;
}

uint64_t LibraryDataProvider.fetchDownloadCountObserver(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100168088(&qword_100573B38);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v6 = Promise.init(signpost:log:metadata:logResult:)();
  v7 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  v11[4] = sub_10019BB38;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F038;
  v11[3] = &unk_1004E17F8;
  v9 = _Block_copy(v11);

  [v7 performBlock:v9];
  _Block_release(v9);

  return v6;
}

uint64_t LibraryDataProvider.fetchEpisodeCountObserver(for:)(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeListSettings();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10019BB44(a1, v11);
  EpisodeListSettings.init(_:sort:pubDateLimit:hidePlayedEpisodes:hideTrailers:hideVideoEpisodes:hideUnentitledContent:)();
  v6 = EpisodeListSettings.predicate.getter();
  v7 = EpisodeListType.importantKeys.getter();
  v8 = sub_10018CF74(v6, v7);

  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t sub_1001885A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 predicateForPodcastUUID:v7];

  type metadata accessor for CoreDataFetcher();
  sub_100168088(a5);
  static CoreDataFetcher.performAndWaitOnPodcast<A>(with:block:)();

  return v10;
}

uint64_t sub_100188698(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 predicateForPodcastUUID:v5];

  type metadata accessor for CoreDataFetcher();
  sub_100168088(a3);
  static CoreDataFetcher.performAndWaitOnPodcast<A>(with:block:)();

  return v8;
}

uint64_t sub_100188760(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_100168088(&qword_100573B50);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t LibraryDataProvider.fetchShowEpisodeCountHeaderData(for:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_100168088(&qword_100573B50);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t LibraryDataProvider.showDetailPublisher(uuid:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_100168088(&qword_100573B58);
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = sub_100168088(&qword_100573B60);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  __chkstk_darwin(v10);
  v32 = &v31 - v12;
  v40 = sub_100168088(&qword_100573B68);
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v33 = &v31 - v13;
  v39 = sub_100168088(&unk_100573B70);
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v34 = &v31 - v14;
  v15 = MTPodcastHidesPlayedEpisodesAppWideUserDefaults();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = NSUserDefaults.BOOLPublisher(forKey:)();

  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v43 = 0xD000000000000015;
  v44 = 0x8000000100465C30;
  v16._countAndFlagsBits = a1;
  v16._object = a2;
  String.append(_:)(v16);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 predicateForPodcastUUID:v18];

  v20 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for PodcastDetail();
  sub_100009F1C(0, &qword_100573AC0);
  FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  v43 = v31;
  sub_100168088(&unk_1005783E0);
  sub_100009FAC(&unk_100573B80, &qword_100573B58);
  sub_100009FAC(&qword_10057DE80, &unk_1005783E0);
  v21 = v32;
  v22 = v35;
  Publisher.combineLatest<A>(_:)();
  (*(v36 + 8))(v9, v22);
  swift_getKeyPath();
  sub_100009FAC(&qword_100573B90, &qword_100573B60);
  v23 = v33;
  v24 = v37;
  Publisher.map<A>(_:)();

  (*(v38 + 8))(v21, v24);
  sub_100009FAC(&qword_100573B98, &qword_100573B68);
  v25 = v34;
  v26 = v40;
  Publisher.tryMap<A>(_:)();
  (*(v42 + 8))(v23, v26);
  sub_100009FAC(&qword_100573BA0, &unk_100573B70);
  v27 = v39;
  v28 = Publisher.bufferedMulticast()();
  (*(v41 + 8))(v25, v27);
  v43 = v28;
  sub_100168088(&qword_100573BA8);
  sub_100009FAC(&qword_100573BB0, &qword_100573BA8);
  v29 = Publisher.eraseToAnyPublisher()();

  return v29;
}

uint64_t LibraryDataProvider.allAvailableEpisodeUserFiltersPublisher(forShow:)(uint64_t a1, void *a2)
{
  v5 = sub_100168088(&qword_100573BB8);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  __chkstk_darwin(v5);
  v58 = v48 - v7;
  v60 = sub_100168088(&unk_100573BC0);
  v63 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = v48 - v8;
  v52 = type metadata accessor for FetchedResultsCountPublisher();
  v66 = *(v52 - 8);
  __chkstk_darwin(v52);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100168088(&qword_100575D10);
  v56 = *(v11 - 8);
  v57 = v11;
  __chkstk_darwin(v11);
  v55 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = v48 - v14;
  __chkstk_darwin(v15);
  v53 = v48 - v16;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v67 = v48 - v19;
  v20 = [*(v2 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  strcpy(v68, "hasBookmarks ");
  HIWORD(v68[1]) = -4864;
  v64 = a1;
  v21._countAndFlagsBits = a1;
  v21._object = a2;
  String.append(_:)(v21);
  v50 = kMTEpisodeEntityName;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = objc_opt_self();
  v49 = v22;
  v23 = a2;
  v24 = String._bridgeToObjectiveC()();
  v25 = [v22 predicateForBookmarkedEpisodesOnPodcastUuid:v24];

  v51 = sub_100009F1C(0, &qword_1005729D0);
  v26 = v20;
  static OS_dispatch_queue.main.getter();
  v65 = v26;
  FetchedResultsCountPublisher.init(identifier:entityName:predicate:managedObjectContext:fetchLimit:receiveOn:)();
  v48[1] = sub_10000F084(&qword_100573BD0, &type metadata accessor for FetchedResultsCountPublisher);
  v27 = v52;
  Publisher.map<A>(_:)();
  v28 = *(v66 + 8);
  v66 += 8;
  v28(v10, v27);
  v68[0] = 0;
  v68[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v68, "hasSubscriber ");
  HIBYTE(v68[1]) = -18;
  v29._countAndFlagsBits = v64;
  v48[0] = v23;
  v29._object = v23;
  String.append(_:)(v29);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = String._bridgeToObjectiveC()();
  v31 = [v49 predicateForAllEpisodesOnPodcastUuid:v30];

  v32 = EpisodeUserFilter.basePredicate.getter();
  v33 = [v31 AND:v32];

  static OS_dispatch_queue.main.getter();
  FetchedResultsCountPublisher.init(identifier:entityName:predicate:managedObjectContext:fetchLimit:receiveOn:)();
  v34 = v53;
  Publisher.map<A>(_:)();
  v28(v10, v27);
  type metadata accessor for CoreDataFetcher();
  v35 = static OS_dispatch_queue.main.getter();
  sub_100168088(&qword_100573BD8);
  v36 = static CoreDataFetcher.performAndPublishOnPodcast<A>(with:queue:block:)();

  v68[0] = v36;
  v38 = v56;
  v37 = v57;
  v39 = *(v56 + 16);
  v39(v54, v67, v57);
  v39(v55, v34, v37);

  sub_100168088(&qword_100573BE0);
  sub_100009FAC(&qword_100573BE8, &qword_100573BE0);
  sub_100009FAC(&qword_100573BF0, &qword_100575D10);
  v40 = v58;
  v41 = v37;
  Publishers.CombineLatest3.init(_:_:_:)();
  sub_100168088(&qword_100573BF8);
  sub_100009FAC(&qword_100573C00, &qword_100573BB8);
  v42 = v59;
  v43 = v61;
  Publisher.map<A>(_:)();
  (*(v62 + 8))(v40, v43);
  sub_100009FAC(&qword_100573C08, &unk_100573BC0);
  v44 = v60;
  v45 = Publisher.eraseToAnyPublisher()();

  (*(v63 + 8))(v42, v44);
  v46 = *(v38 + 8);
  v46(v34, v41);
  v46(v67, v41);
  return v45;
}

uint64_t LibraryDataProvider.episodeListCountPublisher(settings:)()
{
  v1 = type metadata accessor for FetchedResultsCountPublisher();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v12[1] = 0xD00000000000001ALL;
  v12[2] = 0x8000000100465C90;
  EpisodeListSettings.listType.getter();
  v5 = EpisodeListType.description.getter();
  v7 = v6;
  sub_100018888(v13);
  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  EpisodeListSettings.predicate.getter();
  v9 = [*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0);
  static OS_dispatch_queue.main.getter();
  FetchedResultsCountPublisher.init(identifier:entityName:predicate:managedObjectContext:fetchLimit:receiveOn:)();
  sub_10000F084(&qword_100573BD0, &type metadata accessor for FetchedResultsCountPublisher);
  v10 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t LibraryDataProvider.seeAllEpisodesShelfPublisher(settings:pageSize:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_100168088(&qword_100573C28);
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v16 - v8;
  v10 = [*&v2[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider] privateQueueContext];
  v17 = a1;
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = a2;
  v11[4] = v10;
  v12 = v2;
  v16 = v10;
  sub_100168088(&unk_100573C30);
  sub_100168088(&qword_10057FA80);
  sub_100009FAC(&qword_100573C40, &unk_100573C30);
  Publisher.map<A>(_:)();

  sub_100009FAC(&qword_100573C48, &qword_100573C28);
  sub_100009FAC(&qword_100573C50, &qword_10057FA80);
  v13 = Publisher<>.paginatedSwitchToLatest()();
  (*(v6 + 8))(v9, v5);
  v17 = v13;
  v14 = PaginatedPublisher.paginatedBufferedMulticast()();

  return v14;
}

uint64_t LibraryDataProvider.episodeListSettingsPublisher(listType:)(uint64_t a1)
{
  v26 = sub_100168088(&qword_100573C58);
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v21 = &v20 - v2;
  v3 = sub_100168088(&qword_100573C60);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  __chkstk_darwin(v3);
  v22 = &v20 - v5;
  v6 = sub_100190528(a1);
  LibraryDataProvider.libraryActionController.getter(v30);
  sub_1000044A0(v30, v31);
  v7 = dispatch thunk of LibraryActionControllerProtocol.pubDateLimitPublisher(forListType:)();
  sub_100004590(v30);
  LibraryDataProvider.libraryActionController.getter(v30);
  sub_1000044A0(v30, v31);
  v8 = dispatch thunk of LibraryActionControllerProtocol.hidesPlayedEpisodesPublisher(forListType:)();
  v23 = v8;
  sub_100004590(v30);
  v24 = v7;
  v25 = v6;
  v30[0] = v6;
  v32 = v8;
  v33 = v7;

  v20 = sub_100168088(&qword_100573C68);
  sub_100168088(&qword_100573C70);
  sub_100168088(&unk_1005783E0);
  sub_100009FAC(&qword_100573C78, &qword_100573C68);
  sub_100009FAC(&qword_100573C80, &qword_100573C70);
  sub_100009FAC(&qword_10057DE80, &unk_1005783E0);
  v9 = v21;
  Publishers.CombineLatest3.init(_:_:_:)();
  v10 = swift_allocObject();
  v11 = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a1 + 64);
  v12 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10019C1D0;
  *(v13 + 24) = v10;
  sub_10019BB44(a1, v30);
  type metadata accessor for EpisodeListSettings();
  sub_100009FAC(&qword_100573C88, &qword_100573C58);
  v14 = v22;
  v15 = v26;
  Publisher.map<A>(_:)();

  (*(v29 + 8))(v9, v15);
  sub_100009FAC(&qword_100573C90, &qword_100573C60);
  v16 = v27;
  v17 = Publisher.bufferedMulticast()();
  (*(v28 + 8))(v14, v16);
  v30[0] = v17;
  sub_100168088(&unk_100573C30);
  sub_100009FAC(&qword_100573C40, &unk_100573C30);
  v18 = Publisher.eraseToAnyPublisher()();

  return v18;
}

uint64_t LibraryDataProvider.episodeListShelfPublisher(episodeSettingsPublisher:pageSize:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100168088(&qword_100573C98);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_100168088(&qword_100573CA0);
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v23 - v13;
  v15 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v26 = a1;
  sub_100168088(&unk_100573C30);
  sub_100009FAC(&qword_100573C40, &unk_100573C30);
  sub_10000F084(&qword_100573CA8, &type metadata accessor for EpisodeListSettings);
  Publisher<>.removeDuplicates()();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = v15;
  v18 = v15;
  sub_100168088(&qword_10057FA80);
  sub_100009FAC(&qword_100573CB0, &qword_100573C98);
  Publisher.compactMap<A>(_:)();

  (*(v7 + 8))(v9, v6);
  sub_100009FAC(&qword_100573CB8, &qword_100573CA0);
  sub_100009FAC(&qword_100573C50, &qword_10057FA80);
  v19 = v24;
  v20 = Publisher<>.paginatedSwitchToLatest()();
  (*(v25 + 8))(v14, v19);
  v26 = v20;
  v21 = PaginatedPublisher.paginatedBufferedMulticast()();

  return v21;
}

uint64_t sub_10018A4F8()
{
  sub_100168088(&qword_100573CC0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v0 = Promise.init(signpost:log:metadata:logResult:)();
  type metadata accessor for CoreDataFetcher();

  static CoreDataFetcher.fetchStation(with:completion:)();

  return v0;
}

uint64_t LibraryDataProvider.fetchStationDetail(with:)()
{
  sub_100168088(&qword_100573CC0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v0 = Promise.init(signpost:log:metadata:logResult:)();
  type metadata accessor for CoreDataFetcher();

  static CoreDataFetcher.fetchStation(with:completion:)();

  return v0;
}

uint64_t LibraryDataProvider.fetchStationDetailObserver(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100168088(&qword_100573CC8);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v6 = Promise.init(signpost:log:metadata:logResult:)();
  v7 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  v11[4] = sub_10019C28C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F038;
  v11[3] = &unk_1004E1960;
  v9 = _Block_copy(v11);

  [v7 performBlock:v9];
  _Block_release(v9);

  return v6;
}

uint64_t LibraryDataProvider.stationDetailPublisher(uuid:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v24 = sub_100168088(&qword_100573CD0);
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = v22 - v7;
  v23 = sub_100168088(&qword_100573CD8);
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = v22 - v10;
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v25 = 0xD000000000000018;
  v26 = 0x8000000100465D00;
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v22[0] = v26;
  v22[1] = v25;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 predicateForVisiblePlaylistWithUUID:v14];

  v16 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for StationDetail();
  sub_100009F1C(0, &qword_100573CE0);
  FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_100009FAC(&qword_100573CE8, &qword_100573CD0);
  v17 = v24;
  Publisher.tryMap<A>(_:)();
  (*(v6 + 8))(v8, v17);
  sub_100009FAC(&qword_100573CF0, &qword_100573CD8);
  v18 = v23;
  v19 = Publisher.bufferedMulticast()();
  (*(v9 + 8))(v11, v18);
  v25 = v19;
  sub_100168088(&qword_100573CF8);
  sub_100009FAC(&qword_100573D00, &qword_100573CF8);
  v20 = Publisher.eraseToAnyPublisher()();

  return v20;
}

uint64_t LibraryDataProvider.stationDetailEpisodesPublisher(stationPublisher:pageSize:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v30 = sub_100168088(&qword_100573D08);
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v29 - v5;
  v32 = sub_100168088(&qword_100573D10);
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = &v29 - v7;
  v33 = sub_100168088(&qword_100573D18);
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v10 = &v29 - v9;
  v11 = sub_100168088(&qword_100573D20);
  v12 = *(v11 - 8);
  v36 = v11;
  v37 = v12;
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v29 - v14;
  v16 = [*(v2 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v38 = a1;
  sub_100168088(&qword_100573D28);
  type metadata accessor for LibraryDataProvider._Station(0);
  sub_100009FAC(&qword_100573D30, &qword_100573D28);
  Publisher.map<A>(_:)();
  sub_100009FAC(&qword_100573D38, &qword_100573D08);
  sub_10000F084(&qword_100573D40, type metadata accessor for LibraryDataProvider._Station);
  v17 = v30;
  Publisher<>.removeDuplicates()();
  (*(v4 + 8))(v6, v17);
  v18 = swift_allocObject();
  v19 = v29;
  v20 = v31;
  v18[2] = v29;
  v18[3] = v20;
  v18[4] = v16;
  v21 = v19;
  v22 = v16;
  sub_100168088(&qword_100573D48);
  sub_100009FAC(&qword_100573D50, &qword_100573D10);
  v23 = v32;
  Publisher.compactMap<A>(_:)();

  (*(v34 + 8))(v8, v23);
  sub_100168088(&qword_100573D58);
  v24 = v33;
  Publishers.CompactMap.map<A>(_:)();
  (*(v35 + 8))(v10, v24);
  sub_100009FAC(&qword_100573D60, &qword_100573D20);
  sub_100009FAC(&qword_100573D68, &qword_100573D58);
  v25 = v36;
  v26 = Publisher<>.paginatedSwitchToLatest()();
  (*(v37 + 8))(v15, v25);
  v38 = v26;
  v27 = PaginatedPublisher.paginatedBufferedMulticast()();

  return v27;
}

uint64_t LibraryDataProvider.fetchGroupedSearchResults(term:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100168088(&unk_100573D70);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v6 = Promise.init(signpost:log:metadata:logResult:)();
  v7 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  v11[4] = sub_10019C304;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F038;
  v11[3] = &unk_1004E19D8;
  v9 = _Block_copy(v11);

  [v7 performBlock:v9];
  _Block_release(v9);

  return v6;
}

Swift::Bool __swiftcall LibraryDataProvider.hasFollowedShows()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) mainOrPrivateContext];
  v2 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  v3 = [objc_opt_self() predicateForSubscribedAndNotHidden];
  [v2 setPredicate:v3];

  [v2 setFetchLimit:1];
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v5;
}

uint64_t LibraryDataProvider.addApplicationBackgroundDependencies(to:)()
{
  sub_100168088(&unk_10057AAC0);
  v13 = v0;
  v14 = sub_10000F084(&qword_100573D80, type metadata accessor for LibraryDataProvider);
  v1 = v0;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_100573D88);
  v13 = *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodeBookmarkStateController];

  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_100573D90);
  v13 = *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodeDownloadStateController];

  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_10057A4A0);
  v13 = *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodePlayStateController];

  BaseObjectGraph.satisfying<A>(_:with:)();

  type metadata accessor for PodcastStateController();
  v13 = *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_podcastStateController];

  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_100573DA0);
  if (qword_100572820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static PodcastsStateCoordinator.shared;
  v15 = type metadata accessor for PodcastsStateCoordinator();
  v16 = sub_10000F084(&qword_100573DA8, type metadata accessor for PodcastsStateCoordinator);
  v13 = v2;
  v3 = v2;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100004590(&v13);
  v13 = static PodcastsStateCoordinator.shared;
  v4 = static PodcastsStateCoordinator.shared;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_100573DB0);
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_100573DB8);
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_100573DC0);
  v13 = *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_episodeDownloadStateControllerProvider];
  v5 = v13;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_100573DD0);
  v13 = *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_hudPresenter];
  v14 = &off_1004F1118;

  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_10057AAD0);
  sub_100009F1C(0, &qword_100573DE0);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = v6;
  v14 = &off_1004EBEC8;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_100573DE8);
  sub_100009F1C(0, &unk_100573DF0);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = v7;
  v14 = &off_1004E8B18;
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_10057AAE0);
  sub_100009F1C(0, &qword_100573E00);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  v9 = sub_100024384(&qword_10057AC50, &qword_100573E00);
  v13 = v8;
  v14 = v9;
  BaseObjectGraph.satisfying<A>(_:with:)();

  type metadata accessor for TranscriptReportConcernURLBuilder();
  v13 = swift_allocObject();
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_100573E10);
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&unk_10057AAF0);
  sub_100009F1C(0, &unk_100573E20);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = v10;
  v14 = &off_1004EE0B0;
  BaseObjectGraph.satisfying<A>(_:with:)();

  type metadata accessor for LibraryActionController();
  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_10057E670);
  v11 = BaseObjectGraph.satisfying<A>(_:with:)();

  *&v1[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_objectGraph] = v11;

  return v11;
}

void sub_10018BBCC(unint64_t a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  v3 = sub_100168088(&qword_100573A78);
  __chkstk_darwin(v3 - 8);
  v18 = &v18 - v4;
  v5 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v23 = _swiftEmptyArrayStorage;
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_20:
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

LABEL_19:
  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_3:
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  do
  {
    v11 = v9;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for Episode();
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      v14 = v13;
      if (Episode.__allocating_init(from:clickAction:wantsListenNowReason:)())
      {
        break;
      }

      ++v11;
      if (v9 == v8)
      {
        goto LABEL_21;
      }
    }

    v15 = type metadata accessor for EpisodeListSettings();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = type metadata accessor for SectionContext();
    v17 = v18;
    (*(*(v16 - 8) + 56))(v18, 1, 1, v16);
    static MetricsDataConfiguration.search.getter();
    dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v30 = v24;
    sub_100009104(&v30, &unk_100574650);
    v29 = v25;
    sub_100009104(&v29, &unk_100573A90);
    v28 = v26;
    sub_100009104(&v28, &unk_100574660);
    sub_1000112B4(v27);

    sub_100009104(v17, &qword_100573A78);
    sub_100009104(v7, &unk_100573A80);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = v23;
  }

  while (v9 != v8);
LABEL_21:
  *v19 = v10;
}

void sub_10018BF30(unint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v3 = type metadata accessor for ShowLockupStyle();
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v13 = _swiftEmptyArrayStorage;
  while (v6 != v7)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    type metadata accessor for LibraryShowLockup();
    static MetricsDataConfiguration.search.getter();
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v20 = -1;
    ShowLockupStyle.init(includesOfferButton:defaultSubtitle:unfollowedSubtitle:groupedEpisodesListType:)();
    ++v7;
    if (sub_100032D90(v9, v5, v15))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v14;
      v7 = v10;
    }
  }

  *v12 = v13;
}

unint64_t sub_10018C10C@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  if (result >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v9 = a2;
      v5 = 0;
      a2 = &unk_1004023D0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        type metadata accessor for LegacyChannelLockup();
        static MetricsDataConfiguration.search.getter();
        sub_100357920(v7, 1, &v10);
        v16 = v10;
        sub_100009104(&v16, &unk_100574650);
        v15 = v11;
        sub_100009104(&v15, &unk_100573A90);
        v14 = v12;
        sub_100009104(&v14, &unk_100574660);
        sub_1000112B4(v13);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v5;
        if (v8 == v4)
        {
          a2 = v9;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
    }

    while (result);
  }

LABEL_16:
  *a2 = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_10018C2EC@<X0>(Swift::OpaquePointer a1@<0:X1>, void *a2@<X8>)
{
  result = NSManagedObjectContext.unsafeCategories(for:)(a1);
  v4 = _swiftEmptyArrayStorage;
  if (result)
  {
    v5 = result;
    v11 = _swiftEmptyArrayStorage;
    v6 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v8 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v6 + 16))
          {
            goto LABEL_17;
          }

          v9 = *(v5 + 8 * v8 + 32);
        }

        v4 = v9;
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        type metadata accessor for LegacyCategoryLockup();
        static MetricsDataConfiguration.search.getter();
        LegacyCategoryLockup.__allocating_init(from:configuration:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v4 = &v11;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v8;
        if (v10 == i)
        {
          v4 = v11;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_14:
  }

  *a2 = v4;
  return result;
}

uint64_t sub_10018C514()
{
  sub_100168088(&qword_100574338);
  sub_100168088(&qword_100574340);
  FRPOutput.content.getter();
  FRPOutput.content.getter();
  return RecommendationsMetadata.Categories.init(from:dislikedInterests:)();
}

uint64_t sub_10018C5AC()
{
  sub_100168088(&qword_100574328);

  sub_100168088(&qword_100574330);
  FRPOutput.content.getter();
  FRPOutput.content.getter();
  return RecommendationsMetadata.Channels.init(from:favoritedChannels:dislikedChannels:)();
}

uint64_t sub_10018C664(unint64_t a1)
{
  v1 = sub_10037F7E0(a1);
  if (!v1)
  {
    v1 = _swiftEmptyArrayStorage;
  }

  return RecommendationsMetadata.Episodes.init(from:)(v1);
}

uint64_t sub_10018C6AC()
{
  sub_100168088(&qword_100574300);

  sub_100168088(&qword_100574308);
  FRPOutput.content.getter();
  return RecommendationsMetadata.Shows.init(from:dislikedPodcasts:)();
}

uint64_t sub_10018C734@<X0>(void *a1@<X8>)
{
  type metadata accessor for Array();
  type metadata accessor for FRPOutput();
  result = FRPOutput.content.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10018C78C(uint64_t a1)
{
  v2 = type metadata accessor for StationListOptions();
  __chkstk_darwin(v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  v6 = objc_allocWithZone(type metadata accessor for StationListObserver());
  v7 = sub_100037C20(v4);
  v11 = v7;
  sub_10000F084(&qword_1005742F8, type metadata accessor for StationListObserver);
  v8 = Observer.eraseToAnyObserver()();

  v11 = v8;
  Promise.resolve(_:)();
}

uint64_t sub_10018C8D8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v3 = result;
    type metadata accessor for ChannelDetail();
    v4 = v3;
    result = ChannelDetail.__allocating_init(from:)();
  }

  *a2 = result;
  return result;
}

uint64_t sub_10018C924()
{
  v0 = [objc_allocWithZone(type metadata accessor for ChannelListObserver()) init];
  sub_10000F084(&qword_1005742F0, type metadata accessor for ChannelListObserver);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

id sub_10018C9DC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 subscriptionActive];
  *a2 = result;
  return result;
}

void sub_10018CA30(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for LegacyChannelLockup();
  v4 = a1;
  static MetricsDataConfiguration.default.getter();
  sub_100357920(v4, 256, &v7);
  v6 = v5;
  v13 = v7;
  sub_100009104(&v13, &unk_100574650);
  v12 = v8;
  sub_100009104(&v12, &unk_100573A90);
  v11 = v9;
  sub_100009104(&v11, &unk_100574660);
  sub_1000112B4(v10);

  *a2 = v6;
}

uint64_t sub_10018CB08(uint64_t a1, char a2)
{
  type metadata accessor for ShowCountObserver();
  swift_allocObject();
  sub_1000319E0(a1, a2 & 1);
  sub_10000F084(&qword_1005742E8, type metadata accessor for ShowCountObserver);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

uint64_t sub_10018CBDC()
{
  type metadata accessor for StationCountObserver();
  swift_allocObject();
  sub_1002A97A4();
  sub_10000F084(&qword_1005742E0, type metadata accessor for StationCountObserver);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

uint64_t sub_10018CC9C()
{
  type metadata accessor for DownloadCountObserver();
  sub_100009F1C(0, &qword_1005742D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata sharedInstance];
  v2 = [v1 downloadManager];

  swift_getObjectType();
  v3 = [ObjCClassFromMetadata sharedInstance];
  v4 = [v3 downloadsNotifier];

  v5 = sub_10034E790(v2, v4, 0, 0);
  sub_10000F084(&qword_1005742D8, type metadata accessor for DownloadCountObserver);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

uint64_t sub_10018CDFC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DownloadCountObserver();
  sub_100009F1C(0, &qword_1005742D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata sharedInstance];
  v6 = [v5 downloadManager];

  swift_getObjectType();
  v7 = [ObjCClassFromMetadata sharedInstance];
  v8 = [v7 downloadsNotifier];

  v9 = sub_10034E790(v6, v8, a1, a2);
  sub_10000F084(&qword_1005742D8, type metadata accessor for DownloadCountObserver);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

uint64_t sub_10018CF74(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_100168088(&qword_100573B38);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v6 = Promise.init(signpost:log:metadata:logResult:)();
  v7 = [*(v3 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  v12[4] = sub_1001A077C;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000F038;
  v12[3] = &unk_1004E1EB0;
  v9 = _Block_copy(v12);
  v10 = a1;

  [v7 performBlock:v9];
  _Block_release(v9);

  return v6;
}

uint64_t sub_10018D100(void *a1)
{
  type metadata accessor for EpisodeCountObserver();
  swift_allocObject();

  sub_1002C22B8(a1);
  sub_10000F084(&qword_1005742C8, type metadata accessor for EpisodeCountObserver);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

id sub_10018D1E4@<X0>(id result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = [result smartPlayEpisode];
    if (result)
    {
      type metadata accessor for Episode();
      result = Episode.__allocating_init(from:clickAction:wantsListenNowReason:)();
    }
  }

  *a2 = result;
  return result;
}

void sub_10018D25C(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (a1)
  {
    type metadata accessor for PodcastDetail();
    v4 = v2;
    v2 = static PodcastDetail.fullPodcastDetails(from:)();
  }

  *a2 = v2;
}

uint64_t sub_10018D2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CoreDataFetcher();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  static CoreDataFetcher.fetchPodcast(with:completion:)();
}

uint64_t sub_10018D368(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v55 = a4;
  v65 = a3;
  v66 = a2;
  v6 = type metadata accessor for ShowEpisodeCountHeaderData();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v8 - 8);
  v61 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FlowDestinationPageHeader();
  v58 = *(v10 - 8);
  v59 = v10;
  __chkstk_darwin(v10);
  v60 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowPresentationContext();
  v53 = *(v12 - 8);
  v54 = v12;
  __chkstk_darwin(v12);
  v68 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for FlowDestination();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v16 - 8);
  v18 = &v47 - v17;
  v19 = type metadata accessor for ArtworkModel();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v56 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v67 = &v47 - v23;
  Entity = type metadata accessor for FetchEntityError.ErrorDomain();
  v25 = *(Entity - 8);
  __chkstk_darwin(Entity);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100168088(&qword_1005742A8);
  v29 = __chkstk_darwin(v28);
  v31 = &v47 - v30;
  if (a1)
  {
    v50 = v28;
    v32 = a1;
    v33 = [v32 title];
    if (v33)
    {
      v34 = v33;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v48 = 0;
    }

    MTPodcast.artworkModel.getter();
    v36 = *(v20 + 48);
    v37 = v36(v18, 1, v19);
    v49 = v32;
    if (v37 == 1)
    {
      static ArtworkModel.placeholder.getter();
      if (v36(v18, 1, v19) != 1)
      {
        sub_100009104(v18, &unk_100578C10);
      }
    }

    else
    {
      sub_1001A06C0(v18, v67, &type metadata accessor for ArtworkModel);
    }

    v38 = v57;
    *v15 = v55;
    v15[1] = v38;
    (*(v51 + 104))(v15, enum case for FlowDestination.podcastUUID(_:), v52);
    (*(v53 + 104))(v68, enum case for FlowPresentationContext.infer(_:), v54);
    sub_100168088(&qword_1005742B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;

    v40 = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v40;
    v41 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v41;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v40)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v41)
    {
      Link.Presentation.init(rawValue:)();
    }

    v42 = v66;
    (*(v58 + 104))(v60, enum case for FlowDestinationPageHeader.standard(_:), v59);
    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();

    FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    v43 = v67;
    sub_1001A05FC(v67, v56, &type metadata accessor for ArtworkModel);

    v44 = v62;
    ShowEpisodeCountHeaderData.init(title:artwork:action:)();
    v46 = v63;
    v45 = v64;
    (*(v63 + 16))(v31, v44, v64);
    swift_storeEnumTagMultiPayload();
    v42(v31);

    sub_100009104(v31, &qword_1005742A8);
    (*(v46 + 8))(v44, v45);
    return sub_1001A0664(v43);
  }

  else
  {
    (*(v25 + 104))(v27, enum case for FetchEntityError.ErrorDomain.fetchShowEpisodeCountHeaderData(_:), Entity, v29);
    FetchEntityError.init(domain:)();
    swift_storeEnumTagMultiPayload();
    v66(v31);
    return sub_100009104(v31, &qword_1005742A8);
  }
}

uint64_t sub_10018DB84@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v3 = result;
    type metadata accessor for PodcastDetail();
    v4 = v3;
    result = PodcastDetail.__allocating_init(from:episodes:episodeToPlay:seasonToShow:)();
  }

  *a2 = result;
  return result;
}

uint64_t sub_10018DBE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 hidden])
  {
    result = 0;
  }

  else
  {
    type metadata accessor for PodcastDetail();
    result = static PodcastDetail.fullPodcastDetails(from:)();
  }

  *a2 = result;
  return result;
}

void sub_10018DC38(void *a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v3 = a1;
  if (![v3 isSerialShowTypeInFeed])
  {

LABEL_17:
    v8 = _swiftEmptyArrayStorage;
LABEL_18:
    *a2 = v8;
    return;
  }

  v4 = [v3 seasonNumbers];
  if (v4)
  {
    v5 = v4;
    sub_100009F1C(0, &qword_1005742A0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v6 >> 62))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_5:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_16:

    goto LABEL_17;
  }

LABEL_6:
  sub_1001A73C8(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = _swiftEmptyArrayStorage;
    if ((v6 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [specialized _ArrayBuffer._getElementSlowPath(_:)() longLongValue];
        swift_unknownObjectRelease();
        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_1001A73C8((v11 > 1), v12 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v12 + 1;
        _swiftEmptyArrayStorage[v12 + 4] = v10;
      }
    }

    else
    {
      v13 = 32;
      do
      {
        v14 = [*(v6 + v13) longLongValue];
        v18 = v8;
        v16 = v8[2];
        v15 = v8[3];
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          sub_1001A73C8((v15 > 1), v16 + 1, 1);
          v14 = v17;
          v8 = v18;
        }

        v8[2] = v16 + 1;
        v8[v16 + 4] = v14;
        v13 += 8;
        --v7;
      }

      while (v7);
    }

    goto LABEL_18;
  }

  __break(1u);
}