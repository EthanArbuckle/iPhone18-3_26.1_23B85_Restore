uint64_t static BSUIFeedViewController.createSeriesViewController(from:with:navigationTypeValue:navigationContext:shouldReportFigaro:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_B5FE4;

  return (sub_14104C)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_140168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  *(v6 + 97) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  sub_2C5C18();
  *(v6 + 56) = sub_2C5C08();
  v8 = sub_2C5BB8();

  return _swift_task_switch(sub_14020C, v8, v7);
}

uint64_t sub_14020C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  *(v0 + 64) = _Block_copy(v1);
  v3 = sub_2C57E8();
  *(v0 + 72) = v3;
  if (v2)
  {
    v4 = sub_2C58C8();
    v2 = v5;
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 80) = v2;
  *(v0 + 96) = *(*(v0 + 40) + OBJC_IVAR___BSUINavigationContext_impl);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_140360;
  v8 = *(v0 + 97);
  v9 = *(v0 + 24);

  return sub_14104C(v3, v9, v4, v2, (v0 + 96), v8);
}

uint64_t sub_140360(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;

  v8 = *(v5 + 64);

  if (v3)
  {
    v9 = sub_2BE348();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

void sub_140534(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2BF368();
  v11 = *(v10 - 8);
  *&v13 = __chkstk_darwin(v10).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    swift_errorRetain();
    if (qword_3BB768 != -1)
    {
      swift_once();
    }

    v16 = sub_2C00B8();
    sub_57AD8(v16, qword_3C2EE8);
    swift_errorRetain();
    *&v35 = sub_2C0098();
    v17 = sub_2C5DC8();

    if (os_log_type_enabled(v35, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      sub_69198(v19, &qword_3BFEE0);

LABEL_18:
      v26 = v35;

      return;
    }
  }

  else
  {
    if (!a1 || (v21 = v12, ([a1 BOOLValue] & 1) == 0))
    {
      if (qword_3BB768 != -1)
      {
        swift_once();
      }

      v23 = sub_2C00B8();
      sub_57AD8(v23, qword_3C2EE8);
      *&v35 = sub_2C0098();
      v24 = sub_2C5DE8();
      if (os_log_type_enabled(v35, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v35, v24, "Skip live fetching series info, because server or fallback said so.", v25, 2u);
      }

      goto LABEL_18;
    }

    (*(v11 + 104))(v15, enum case for SeriesType.audiobook(_:), v21);
    sub_144ADC(&qword_3C1560, &type metadata accessor for SeriesType);
    sub_2C5A88();
    sub_2C5A88();
    if (v38 == v36 && v39 == v37)
    {
      (*(v11 + 8))(v15, v21);

      v22 = &BKSeriesManagerSeriesTypeAudiobookSeries;
    }

    else
    {
      v27 = sub_2C65B8();
      (*(v11 + 8))(v15, v21);

      v22 = &BKSeriesManagerSeriesTypeBookSeries;
      if (v27)
      {
        v22 = &BKSeriesManagerSeriesTypeAudiobookSeries;
      }
    }

    v28 = *v22;
    sub_6620C(&qword_3C2578);
    inited = swift_initStackObject();
    v35 = xmmword_2E3F30;
    *(inited + 16) = xmmword_2E3F30;
    *(inited + 32) = v28;
    sub_6620C(&qword_3BF590);
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 32) = a5;
    *(v30 + 40) = a6;
    *(inited + 40) = v30;
    v31 = v28;

    sub_68554(inited);
    swift_setDeallocating();
    sub_69198(inited + 32, &qword_3C2580);
    v32 = [objc_opt_self() sharedManager];
    if (v32)
    {
      v33 = v32;
      type metadata accessor for SeriesManagerSeriesType(0);
      sub_6620C(&qword_3BCA70);
      sub_144ADC(&qword_3BC468, type metadata accessor for SeriesManagerSeriesType);
      isa = sub_2C57C8().super.isa;

      [v33 updateSeriesForSeriesAdamIDsWithTypes:isa forceCheck:1];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_140AF8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

Swift::Void __swiftcall BSUIFeedViewController.observeCardActiveState()()
{
  sub_6620C(&unk_3C0230);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2E15C0;
  v1 = sub_2C09B8();
  v2 = sub_144ADC(&qword_3BFDF0, &type metadata accessor for IsInCardTrait);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_2C1458();
  v4 = sub_144ADC(&qword_3BFDF8, &type metadata accessor for IsInactiveCardTrait);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  sub_2C5E38();
  swift_unknownObjectRelease();
}

void sub_140E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2BF368();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = [objc_opt_self() defaultBag];
  v10 = [v9 seriesInfoLiveFetchesEnabled];

  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a1;
  v13[1] = a2;
  aBlock[4] = sub_144A0C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_140AF8;
  aBlock[3] = &unk_38EB90;
  v14 = _Block_copy(aBlock);

  [v10 valueWithCompletion:v14];
  _Block_release(v14);
}

uint64_t sub_14104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, char a6)
{
  *(v6 + 1513) = a6;
  *(v6 + 1024) = a4;
  *(v6 + 1016) = a3;
  *(v6 + 1008) = a2;
  *(v6 + 1000) = a1;
  *(v6 + 1032) = type metadata accessor for PageAlert(0);
  *(v6 + 1040) = swift_task_alloc();
  *(v6 + 1048) = swift_task_alloc();
  sub_6620C(&qword_3BEF88);
  *(v6 + 1056) = swift_task_alloc();
  *(v6 + 1064) = swift_task_alloc();
  *(v6 + 1072) = swift_task_alloc();
  *(v6 + 1080) = type metadata accessor for PageRootView();
  *(v6 + 1088) = swift_task_alloc();
  v8 = sub_2C1A28();
  *(v6 + 1096) = v8;
  *(v6 + 1104) = *(v8 - 8);
  *(v6 + 1112) = swift_task_alloc();
  *(v6 + 1120) = type metadata accessor for RootHostingControllerConfiguration(0);
  *(v6 + 1128) = swift_task_alloc();
  *(v6 + 1136) = swift_task_alloc();
  *(v6 + 1144) = swift_task_alloc();
  *(v6 + 1152) = swift_task_alloc();
  *(v6 + 1160) = sub_6620C(&qword_3BCE28);
  *(v6 + 1168) = swift_task_alloc();
  *(v6 + 1176) = swift_task_alloc();
  *(v6 + 1184) = swift_task_alloc();
  *(v6 + 1192) = swift_task_alloc();
  v9 = sub_2BFB08();
  *(v6 + 1200) = v9;
  *(v6 + 1208) = *(v9 - 8);
  *(v6 + 1216) = swift_task_alloc();
  *(v6 + 1224) = swift_task_alloc();
  sub_6620C(&qword_3BF478);
  *(v6 + 1232) = swift_task_alloc();
  *(v6 + 1240) = swift_task_alloc();
  *(v6 + 1248) = swift_task_alloc();
  v10 = sub_2BF368();
  *(v6 + 1256) = v10;
  *(v6 + 1264) = *(v10 - 8);
  *(v6 + 1272) = swift_task_alloc();
  *(v6 + 1280) = swift_task_alloc();
  *(v6 + 1288) = swift_task_alloc();
  *(v6 + 1296) = type metadata accessor for SeriesRoomPageIntent();
  *(v6 + 1304) = swift_task_alloc();
  *(v6 + 1312) = swift_task_alloc();
  sub_6620C(&qword_3C2560);
  *(v6 + 1320) = swift_task_alloc();
  v11 = sub_2C21F8();
  *(v6 + 1328) = v11;
  *(v6 + 1336) = *(v11 - 8);
  *(v6 + 1344) = swift_task_alloc();
  *(v6 + 1514) = *a5;
  *(v6 + 1352) = sub_2C5C18();
  *(v6 + 1360) = sub_2C5C08();
  v13 = sub_2C5BB8();
  *(v6 + 1368) = v13;
  *(v6 + 1376) = v12;

  return _swift_task_switch(sub_1414D0, v13, v12);
}

uint64_t sub_1414D0()
{
  v1 = [objc_opt_self() jsa_topMostViewControllerForWindow:0];
  *(v0 + 1384) = v1;
  UIViewController.jetActionHandlerInContext.getter();
  v2 = *(v0 + 1344);
  v3 = *(v0 + 1336);
  v4 = *(v0 + 1328);
  v5 = *(v0 + 1024);
  v7 = v6;
  ObjectType = swift_getObjectType();
  *(v0 + 1392) = (*(v7 + 8))(ObjectType, v7);
  swift_unknownObjectRelease();
  sub_2C4E68();
  (*(v3 + 104))(v2, enum case for Metrics.NavigationType.forward(_:), v4);
  if (v5)
  {
    v9 = *(v0 + 1336);
    v10 = *(v0 + 1328);
    v11 = *(v0 + 1320);

    sub_2C21E8();
    if ((*(v9 + 48))(v11, 1, v10) == 1)
    {
      sub_69198(*(v0 + 1320), &qword_3C2560);
    }

    else
    {
      v12 = *(v0 + 1344);
      v13 = *(v0 + 1336);
      v14 = *(v0 + 1328);
      v15 = *(v0 + 1320);
      (*(v13 + 8))(v12, v14);
      (*(v13 + 32))(v12, v15, v14);
    }
  }

  v16 = *(v0 + 1000);
  if (!*(v16 + 16))
  {
    goto LABEL_19;
  }

  v17 = sub_5D228(0x656372756F736572, 0xE800000000000000);
  if ((v18 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_68C64(*(*(v0 + 1000) + 56) + 32 * v17, v0 + 544);
  sub_6620C(&qword_3BC1F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v19 = *(v0 + 968);
  *(v0 + 816) = 25705;
  *(v0 + 824) = 0xE200000000000000;
  sub_2C61A8();
  if (!*(v19 + 16) || (v20 = sub_5D2A0(v0 + 264), (v21 & 1) == 0))
  {

    v28 = v0 + 264;
LABEL_18:
    sub_68D90(v28);
    goto LABEL_19;
  }

  sub_68C64(*(v19 + 56) + 32 * v20, v0 + 704);
  sub_68D90(v0 + 264);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v22 = *(v0 + 832);
  v23 = *(v0 + 840);
  *(v0 + 864) = 1701869940;
  *(v0 + 872) = 0xE400000000000000;
  sub_2C61A8();
  if (!*(v19 + 16) || (v24 = sub_5D2A0(v0 + 224), (v25 & 1) == 0))
  {

    v28 = v0 + 224;
    goto LABEL_18;
  }

  sub_68C64(*(v19 + 56) + 32 * v24, v0 + 640);
  sub_68D90(v0 + 224);
  if (swift_dynamicCast())
  {
    v26 = sub_2BF4C8();

    if (v26)
    {
      sub_2BF5B8();
      if (swift_dynamicCastMetatype())
      {
        v97 = v22;
        v27 = &enum case for SeriesType.audiobook(_:);
        goto LABEL_45;
      }

      sub_2BF428();
      if (swift_dynamicCastMetatype())
      {
        v97 = v22;
        v27 = &enum case for SeriesType.book(_:);
LABEL_45:
        v96 = *(v0 + 1280);
        v57 = *(v0 + 1264);
        v58 = *(v0 + 1256);
        v59 = *(v0 + 1248);
        v60 = *(v0 + 1224);
        v84 = *(v0 + 1216);
        v61 = *(v0 + 1208);
        v62 = *(v0 + 1200);
        (*(v57 + 104))(v59, *v27, v58);
        v87 = *(v57 + 56);
        v87(v59, 0, 1, v58);
        v94 = *(v57 + 32);
        v94(v96, v59, v58);
        (*(v61 + 104))(v60, enum case for MResource.Keys.attributes(_:), v62);
        (*(v61 + 16))(v84, v60, v62);
        sub_144ADC(&qword_3C2570, &type metadata accessor for MResource.Keys);
        sub_2C61A8();
        (*(v61 + 8))(v60, v62);
        if (*(v19 + 16) && (v63 = sub_5D2A0(v0 + 184), (v64 & 1) != 0))
        {
          sub_68C64(*(v19 + 56) + 32 * v63, v0 + 576);
          sub_68D90(v0 + 184);
          sub_69198(v0 + 576, qword_3C0250);
          sub_2BFB38();
          sub_2BF8D8();
          sub_2BFAD8();
        }

        else
        {
          sub_68D90(v0 + 184);
          *(v0 + 576) = 0u;
          *(v0 + 592) = 0u;
          sub_69198(v0 + 576, qword_3C0250);
        }

        v68 = *(v0 + 1336);
        v76 = *(v0 + 1328);
        v77 = *(v0 + 1344);
        v69 = *(v0 + 1312);
        v70 = *(v0 + 1296);
        v99 = *(v0 + 1288);
        v85 = *(v0 + 1280);
        v81 = *(v0 + 1264);
        v71 = *(v0 + 1256);
        v72 = *(v0 + 1240);
        v78 = *(v0 + 1272);
        v73 = *(v81 + 16);
        v73();
        v87(v72, 1, 1, v71);
        (*(v68 + 16))(&v69[v70[9]], v77, v76);
        v91 = v70[8];
        sub_2BF8D8();

        v88 = sub_2C1AE8();
        *v69 = v97;
        *(v69 + 1) = v23;
        (v73)(&v69[v70[5]], v78, v71);
        v74 = &v69[v70[6]];
        *v74 = 0;
        *(v74 + 1) = 0;
        sub_6932C(v72, &v69[v70[7]], &qword_3BF478);
        v75 = sub_2C1AE8();
        sub_69198(v72, &qword_3BF478);
        v51 = *(v81 + 8);
        v51(v78, v71);

        *&v69[v91] = v75;
        v94(v99, v85, v71);
        goto LABEL_38;
      }
    }

    v65 = *(v0 + 1264);
    v66 = *(v0 + 1256);
    v67 = *(v0 + 1248);

    (*(v65 + 56))(v67, 1, 1, v66);
    sub_69198(v67, &qword_3BF478);
  }

  else
  {
  }

LABEL_19:
  if (*(v16 + 16) && (v29 = sub_5D228(25705, 0xE200000000000000), (v30 & 1) != 0) && (v31 = *(v0 + 1000), sub_68C64(*(v31 + 56) + 32 * v29, v0 + 608), (swift_dynamicCast() & 1) != 0))
  {
    v32 = *(v0 + 856);
    if (*(v16 + 16) && (v33 = *(v0 + 848), v34 = sub_5D228(0x7954736569726573, 0xEA00000000006570), (v35 & 1) != 0) && (sub_68C64(*(v31 + 56) + 32 * v34, v0 + 672), (swift_dynamicCast() & 1) != 0))
    {
      v36 = sub_2BF4C8();

      if (v36)
      {
        sub_2BF5B8();
        if (swift_dynamicCastMetatype())
        {
          v95 = v32;
          v97 = v33;
          v37 = &enum case for SeriesType.audiobook(_:);
LABEL_37:
          v89 = *(v0 + 1328);
          v92 = *(v0 + 1344);
          v83 = *(v0 + 1296);
          v86 = *(v0 + 1336);
          v43 = *(v0 + 1288);
          v44 = *(v0 + 1272);
          v80 = *(v0 + 1264);
          v82 = *(v0 + 1312);
          v45 = *(v0 + 1256);
          v98 = *(v0 + 1240);
          v46 = *(v0 + 1232);
          (*(v80 + 104))(v46, *v37, v45);
          v47 = *(v80 + 56);
          v47(v46, 0, 1, v45);
          (*(v80 + 32))(v43, v46, v45);
          v48 = *(v80 + 16);
          v79 = v44;
          v48(v44, v43, v45);
          v47(v98, 1, 1, v45);
          (*(v86 + 16))(&v82[v83[9]], v92, v89);
          v93 = v83[8];
          sub_2BF8D8();
          v23 = v95;

          v90 = sub_2C1AE8();
          *v82 = v97;
          *(v82 + 1) = v95;
          v48(&v82[v83[5]], v44, v45);
          v49 = &v82[v83[6]];
          *v49 = 0;
          *(v49 + 1) = 0;
          sub_6932C(v98, &v82[v83[7]], &qword_3BF478);
          v50 = sub_2C1AE8();
          sub_69198(v98, &qword_3BF478);
          v51 = *(v80 + 8);
          v51(v79, v45);

          *&v82[v93] = v50;
LABEL_38:
          *(v0 + 1416) = v23;
          *(v0 + 1408) = v97;
          *(v0 + 1400) = v51;
          v52 = sub_6620C(&qword_3BDAC0);
          v53 = swift_task_alloc();
          *(v0 + 1424) = v53;
          *v53 = v0;
          v53[1] = sub_1423E0;

          return BaseObjectGraph.inject<A>(_:)(v0 + 304, v52, v52);
        }

        sub_2BF428();
        if (swift_dynamicCastMetatype())
        {
          v95 = v32;
          v97 = v33;
          v37 = &enum case for SeriesType.book(_:);
          goto LABEL_37;
        }
      }

      v54 = *(v0 + 1264);
      v55 = *(v0 + 1256);
      v56 = *(v0 + 1232);

      (*(v54 + 56))(v56, 1, 1, v55);
      sub_69198(v56, &qword_3BF478);
    }

    else
    {
    }
  }

  else
  {
  }

  v38 = *(v0 + 1344);
  v39 = *(v0 + 1336);
  v40 = *(v0 + 1328);
  sub_144848();
  swift_allocError();
  swift_willThrow();

  (*(v39 + 8))(v38, v40);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1423E0()
{
  v2 = *v1;
  *(*v1 + 1432) = v0;

  if (v0)
  {

    v3 = *(v2 + 1376);
    v4 = *(v2 + 1368);
    v5 = sub_143FF8;
  }

  else
  {
    v3 = *(v2 + 1376);
    v4 = *(v2 + 1368);
    v5 = sub_142504;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_142504()
{
  v1 = v0[41];
  v2 = v0[42];
  sub_72084(v0 + 38, v1);
  v0[116] = 0;
  v7 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[180] = v3;
  *v3 = v0;
  v3[1] = sub_142640;
  v4 = v0[177];
  v5 = v0[176];

  return v7(v0 + 43, v5, v4, v0 + 116, v1, v2);
}

uint64_t sub_142640()
{
  v1 = *v0;

  v2 = *(v1 + 1376);
  v3 = *(v1 + 1368);

  return _swift_task_switch(sub_142760, v3, v2);
}

uint64_t sub_142760()
{
  if (v0[46])
  {
    sub_140E38(v0[176], v0[177], v0[161]);
  }

  v1 = swift_task_alloc();
  v0[181] = v1;
  *v1 = v0;
  v1[1] = sub_142828;

  return BaseObjectGraph.inject<A>(_:)(v0 + 115, &type metadata for PageControllerFactory, &type metadata for PageControllerFactory);
}

uint64_t sub_142828()
{
  v2 = *v1;
  *(*v1 + 1456) = v0;

  v3 = *(v2 + 1376);
  v4 = *(v2 + 1368);
  if (v0)
  {
    v5 = sub_14426C;
  }

  else
  {
    v5 = sub_142964;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_142964()
{
  v1 = *(v0 + 1514);
  v11 = *(v0 + 1312);
  v10 = *(v0 + 1304);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1112);
  v5 = *(v0 + 1104);
  v6 = *(v0 + 1096);
  *(v0 + 1464) = *(v0 + 920);

  ActionOrigin.init(jsActionOptions:)(v7, v2);
  (*(v5 + 104))(v4, enum case for NavigationBarTitleStyle.inline(_:), v6);
  sub_2C0808();
  *v3 = v1;
  *(v0 + 1472) = sub_2C5C08();
  sub_1448A4(v11, v10, type metadata accessor for SeriesRoomPageIntent);
  v8 = swift_task_alloc();
  *(v0 + 1480) = v8;
  *v8 = v0;
  v8[1] = sub_142AD0;

  return BaseObjectGraph.withSyncDependenciesForSwiftUI.getter();
}

uint64_t sub_142AD0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1488) = v1;

  if (v1)
  {
    sub_14490C(*(v4 + 1304), type metadata accessor for SeriesRoomPageIntent);
    v5 = sub_2C5BB8();
    v7 = v6;
    v8 = sub_143CAC;
  }

  else
  {
    *(v4 + 1496) = a1;
    v5 = sub_2C5BB8();
    v7 = v9;
    v8 = sub_142C74;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_142C74()
{
  v64 = *(v0 + 1304);
  v53 = *(v0 + 1296);
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1184);
  v66 = *(v0 + 1176);
  v50 = *(v0 + 1168);
  v3 = *(v0 + 1152);
  v60 = v3;
  v4 = *(v0 + 1144);
  v67 = *(v0 + 1136);
  v52 = *(v0 + 1128);
  v61 = *(v0 + 1080);
  v62 = *(v0 + 1088);
  v63 = *(v0 + 1072);
  v54 = *(v0 + 1064);
  v56 = *(v0 + 1048);
  v57 = *(v0 + 1040);
  v58 = *(v0 + 1056);
  v48 = *(v0 + 1008);

  v59 = v2;
  sub_6932C(v1, v2, &qword_3BCE28);
  sub_1448A4(v3, v4, type metadata accessor for RootHostingControllerConfiguration);
  v5 = objc_allocWithZone(type metadata accessor for PageHostingController());
  sub_6620C(&qword_3BC330);
  sub_2C4968();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2E3F30;
  type metadata accessor for PaginationController();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 18) = 0;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v0 + 912) = v7;
  sub_2C4958();
  *(v0 + 896) = v6;
  sub_6620C(&unk_3BD220);
  sub_8A870();
  sub_2C4DF8();

  sub_6932C(v2, v66, &qword_3BCE28);
  sub_1448A4(v4, v67, type metadata accessor for RootHostingControllerConfiguration);
  *&v5[qword_3BCB60 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8 = &v5[qword_3BCC58];
  *v8 = 0;
  v8[8] = 1;
  v5[qword_3BCB80] = 0;
  *&v5[qword_3BCC60] = &_swiftEmptySetSingleton;
  v65 = type metadata accessor for HostProxy(0);
  swift_allocObject();
  v9 = v48;
  v10 = sub_C2644();
  v46 = qword_3BCB68;
  *&v5[qword_3BCB68] = v10;
  sub_2C09A8();
  swift_allocObject();
  v11 = sub_2C0998();
  v45 = qword_3BCC48;
  *&v5[qword_3BCC48] = v11;
  v49 = type metadata accessor for NavigationProvider();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = qword_3BCC50;
  *&v5[qword_3BCC50] = v12;
  sub_2BEED8();
  swift_allocObject();
  v13 = sub_2BEEC8();
  v14 = qword_3BCB90;
  *&v5[qword_3BCB90] = v13;
  sub_1448A4(v67, &v5[qword_3E8830], type metadata accessor for RootHostingControllerConfiguration);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_2E3BC0;
  sub_6932C(v66, v50, &qword_3BCE28);
  sub_2C4958();
  sub_2BF028();
  *(v0 + 944) = v9;
  v55 = v9;
  sub_2C4958();
  sub_2BEC48();
  swift_allocObject();
  *(v0 + 960) = sub_2BEC38();
  sub_2C4958();
  *(v0 + 1512) = sub_2C07D8() & 1;
  sub_2C4958();
  *(v0 + 992) = *&v5[v45];

  sub_2C4958();
  *(v0 + 984) = *&v5[v14];

  sub_2C4958();
  *(v0 + 976) = *&v5[v46];

  sub_2C4958();
  sub_6620C(&unk_3BFED0);
  sub_2C53F8();
  *(v0 + 800) = sub_2C53E8();
  *(v0 + 808) = &protocol witness table for BasicImpressionsTracker;
  sub_2C4958();
  sub_6620C(&qword_3BCE30);
  v15 = *&v5[v47];
  *(v0 + 168) = v49;
  *(v0 + 176) = &protocol witness table for NavigationProvider;
  *(v0 + 144) = v15;

  sub_2C4958();
  type metadata accessor for PageLifecycleHandler();
  v16 = swift_allocObject();
  type metadata accessor for Page.LifecycleInfo();
  v17 = swift_allocObject();
  *(v17 + 16) = &_swiftEmptyDictionarySingleton;
  *(v16 + 16) = v17;
  *(v0 + 952) = v16;
  sub_2C4958();
  sub_6620C(&qword_3BCE38);
  v18 = v5;
  v19 = *&v5[v46];
  *(v0 + 528) = v65;
  *(v0 + 536) = sub_144ADC(&qword_3BCE40, type metadata accessor for HostProxy);
  *(v0 + 504) = v19;

  sub_2C4958();
  sub_6620C(&qword_3BCE48);
  v20 = *&v18[v46];
  *(v0 + 488) = v65;
  *(v0 + 496) = sub_144ADC(&unk_3BCE50, type metadata accessor for HostProxy);
  *(v0 + 464) = v20;

  sub_2C4958();
  sub_1448A4(v67, v52, type metadata accessor for RootHostingControllerConfiguration);
  sub_2C4958();
  *(v0 + 904) = v51;
  v21 = sub_2C4DF8();

  *(v0 + 448) = v53;
  *(v0 + 456) = sub_144ADC(&qword_3BD300, type metadata accessor for SeriesRoomPageIntent);
  v22 = sub_720C8((v0 + 424));
  sub_1448A4(v64, v22, type metadata accessor for SeriesRoomPageIntent);
  v23 = v62 + v61[7];
  sub_144ADC(&qword_3BCB70, type metadata accessor for HostProxy);

  *v23 = sub_2C2568();
  *(v23 + 8) = v24 & 1;
  v25 = v62 + v61[8];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  sub_F41B8((v0 + 424), v21, v63);
  sub_691F8(v0 + 424, v0 + 384);
  sub_6932C(v63, v54, &qword_3BEF88);
  v26 = type metadata accessor for PageContent(0);
  v27 = sub_2C0368();
  v28 = *(*(v27 - 8) + 56);
  v28(v56, 1, 1, v27);
  sub_69198(v56, &qword_3C1E38);
  v28(v56, 1, 1, v27);
  sub_1448A4(v56, v57, type metadata accessor for PageAlert);
  sub_2C4368();
  sub_14490C(v56, type metadata accessor for PageAlert);
  v29 = v62 + *(v26 + 24);
  *v29 = sub_2C2568();
  *(v29 + 8) = v30 & 1;
  sub_691F8(v0 + 384, v62);
  sub_6932C(v54, v58, &qword_3BEF88);
  v31 = type metadata accessor for PageContent.PageInfo(0);
  v32 = v31[5];
  v33 = type metadata accessor for Page();
  v34 = *(*(v33 - 8) + 56);
  v34(v62 + v32, 1, 1, v33);
  v34(v62 + v31[6], 1, 1, v33);
  v34(v62 + v31[7], 1, 1, v33);
  *(v62 + v31[8]) = 0;
  sub_2BFC78();
  sub_69198(v54, &qword_3BEF88);
  sub_68CD0(v0 + 384);
  v34(v62 + v31[10], 1, 1, v33);
  sub_12D954(v58, v62 + v32);
  *(v62 + *(sub_6620C(&qword_3BEF90) + 28)) = 0;
  *(v62 + v61[5]) = v21;
  sub_2C1498();

  sub_2C4DB8();
  sub_69198(v63, &qword_3BEF88);
  sub_68CD0(v0 + 424);
  *(v62 + v61[6]) = *(v0 + 936);
  *(v0 + 80) = v21;
  *(v0 + 112) = v61;
  *(v0 + 120) = sub_144ADC(&qword_3BEF98, type metadata accessor for PageRootView);
  v35 = sub_720C8((v0 + 88));
  sub_1448A4(v62, v35, type metadata accessor for PageRootView);

  v37 = sub_BE58C(v36);
  v39 = v38;

  sub_14490C(v62, type metadata accessor for PageRootView);
  *(v0 + 128) = v37;
  *(v0 + 136) = v39;
  sub_77E04(v0 + 80, v0 + 16);
  v40 = sub_2C3398();
  *(v0 + 1504) = v40;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v41 = v40;
  sub_731AC();
  sub_73578();

  sub_14490C(v67, type metadata accessor for RootHostingControllerConfiguration);
  sub_69198(v66, &qword_3BCE28);
  sub_77C1C(v0 + 80);

  sub_14490C(v4, type metadata accessor for RootHostingControllerConfiguration);
  sub_69198(v59, &qword_3BCE28);
  sub_14490C(v60, type metadata accessor for RootHostingControllerConfiguration);
  sub_14490C(v64, type metadata accessor for SeriesRoomPageIntent);
  v42 = *(v0 + 1376);
  v43 = *(v0 + 1368);

  return _swift_task_switch(sub_1439F4, v43, v42);
}

uint64_t sub_1439F4()
{
  v1 = v0[173];
  v2 = v0[168];
  v3 = v0[167];
  v11 = v0[166];
  v12 = v0[164];
  v4 = v0[161];
  v5 = v0[158];
  v6 = v0[157];
  v7 = v0[149];

  sub_69198(v7, &qword_3BCE28);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v2, v11);
  sub_14490C(v12, type metadata accessor for SeriesRoomPageIntent);
  sub_69198((v0 + 43), &qword_3BDAC8);
  sub_68CD0((v0 + 38));

  v8 = v0[1];
  v9 = v0[188];

  return v8(v9);
}

uint64_t sub_143CAC()
{
  v1 = v0[144];

  sub_14490C(v1, type metadata accessor for RootHostingControllerConfiguration);
  v2 = v0[172];
  v3 = v0[171];

  return _swift_task_switch(sub_143D34, v3, v2);
}

uint64_t sub_143D34()
{
  v1 = v0[173];
  v9 = v0[175];
  v10 = v0[168];
  v2 = v0[167];
  v3 = v0[166];
  v11 = v0[164];
  v4 = v0[161];
  v5 = v0[157];
  v6 = v0[149];

  sub_69198(v6, &qword_3BCE28);
  v9(v4, v5);
  (*(v2 + 8))(v10, v3);
  sub_14490C(v11, type metadata accessor for SeriesRoomPageIntent);
  sub_69198((v0 + 43), &qword_3BDAC8);
  sub_68CD0((v0 + 38));

  v7 = v0[1];

  return v7();
}

uint64_t sub_143FF8()
{
  v1 = v0[175];
  v2 = v0[173];
  v3 = v0[168];
  v4 = v0[167];
  v5 = v0[166];
  v10 = v0[164];
  v6 = v0[161];
  v7 = v0[157];

  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  sub_14490C(v10, type metadata accessor for SeriesRoomPageIntent);

  v8 = v0[1];

  return v8();
}

uint64_t sub_14426C()
{
  v1 = v0[175];
  v2 = v0[173];
  v3 = v0[168];
  v4 = v0[167];
  v5 = v0[166];
  v10 = v0[164];
  v6 = v0[161];
  v7 = v0[157];

  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  sub_14490C(v10, type metadata accessor for SeriesRoomPageIntent);
  sub_69198((v0 + 43), &qword_3BDAC8);
  sub_68CD0((v0 + 38));

  v8 = v0[1];

  return v8();
}

void _sSo22BSUIFeedViewControllerC11BookStoreUIE35updateTopScrollEdgeEffectVisibility04viewC023previousTraitCollectionyAB_So07UITraitP0CtF_0(void *a1)
{
  if (a1 == v1)
  {
    v2 = [v1 scrollView];
    if (v2)
    {
      v10 = v2;
      v3 = [v1 hasUberHeaderBehindNavBar];
      v4 = [v1 traitCollection];
      v5 = v4;
      if (v3)
      {
        v6 = &dword_0 + 1;
      }

      else if ([v4 isInCard])
      {
        v6 = [v5 isInactiveCard];
      }

      else
      {
        v6 = 0;
      }

      v7 = [v10 topEdgeEffect];
      v8 = [v7 isHidden];

      if (v6 != v8)
      {
        v9 = [v10 topEdgeEffect];
        [v9 setHidden:v6];
      }
    }
  }
}

uint64_t sub_144650()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1446A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_88BE0;

  return sub_140168(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_144788()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_88BE0;

  return sub_297C40(v2, v3, v4);
}

unint64_t sub_144848()
{
  result = qword_3C2568;
  if (!qword_3C2568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2568);
  }

  return result;
}

uint64_t sub_1448A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_14490C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_14496C()
{
  v1 = sub_2BF368();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_144A0C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_2BF368() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_140534(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_144AC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_144ADC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_144B38()
{
  result = qword_3C2588;
  if (!qword_3C2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2588);
  }

  return result;
}

uint64_t sub_144B90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v40 = a3;
  v41 = a2;
  v45 = a6;
  v46 = a1;
  v8 = sub_6620C(&qword_3C25A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v44 = &v37 - v10;
  v11 = sub_6620C(&qword_3C25A8);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v38 = type metadata accessor for SwooshItemComponentModel();
  __chkstk_darwin(v38);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6620C(&qword_3C8300);
  v43 = *(v15 - 8);
  __chkstk_darwin(v15);
  v42 = &v37 - v16;
  v17 = sub_2C30F8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    if ((a4 & 1) == 0)
    {
LABEL_3:
      v21 = v44;
      sub_145144(v46, v41, v40 & 1, v44);
      (*(v9 + 16))(v13, v21, v8);
      swift_storeEnumTagMultiPayload();
      sub_72B74(&unk_3C8340, &qword_3C8300);
      v22 = sub_718D4(&qword_3C25B0);
      v23 = sub_1463B4();
      v47 = v22;
      v48 = v23;
      swift_getOpaqueTypeConformance2();
      sub_2C33C8();
      return (*(v9 + 8))(v21, v8);
    }
  }

  else
  {

    sub_2C5DD8();
    v25 = sub_2C3718();
    v37 = v11;
    v26 = v9;
    v27 = v15;
    v28 = v13;
    v29 = v8;
    v30 = v25;
    sub_2C0058();

    v8 = v29;
    v13 = v28;
    v15 = v27;
    v9 = v26;
    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(a4, 0);
    (*(v18 + 8))(v20, v17);
    if (v47 != 1)
    {
      goto LABEL_3;
    }
  }

  v31 = v39;
  sub_1466C4(v39);
  v49 = v38;
  v50 = sub_146AE8(&unk_3BD450, type metadata accessor for SwooshItemComponentModel);
  v32 = sub_720C8(&v47);
  sub_14694C(v31, v32);
  sub_9F8B8();
  v33 = v42;
  sub_2BFCA8();
  sub_13DA9C(v31);
  v34 = v43;
  (*(v43 + 16))(v13, v33, v15);
  swift_storeEnumTagMultiPayload();
  sub_72B74(&unk_3C8340, &qword_3C8300);
  v35 = sub_718D4(&qword_3C25B0);
  v36 = sub_1463B4();
  v47 = v35;
  v48 = v36;
  swift_getOpaqueTypeConformance2();
  sub_2C33C8();
  return (*(v34 + 8))(v33, v15);
}

uint64_t sub_145144@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v61 = a2;
  v70 = a4;
  v69 = sub_6620C(&qword_3C25B0);
  __chkstk_darwin(v69);
  v68 = &v47 - v5;
  v67 = sub_2BE9B8();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2C30F8();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2C33E8();
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2C1348();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2C07B8();
  v12 = *(v58 - 8);
  __chkstk_darwin(v58);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6620C(&qword_3C25E0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  v19 = sub_6620C(&qword_3C25C8);
  __chkstk_darwin(v19);
  v21 = &v47 - v20;
  v63 = sub_6620C(&qword_3C25C0);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v23 = &v47 - v22;
  v24 = *(type metadata accessor for ChartSwooshItemComponentModel() + 24);
  v64 = a1;
  v55 = v24;
  sub_2C1628();
  v56 = v11;
  sub_2C07C8();
  sub_2C46B8();
  sub_2C2AD8();
  (*(v12 + 32))(v18, v14, v58);
  v25 = v50;
  v26 = &v18[*(v16 + 44)];
  v27 = v78;
  *(v26 + 4) = v77;
  *(v26 + 5) = v27;
  *(v26 + 6) = v79;
  v28 = v74;
  *v26 = v73;
  *(v26 + 1) = v28;
  v29 = v76;
  *(v26 + 2) = v75;
  *(v26 + 3) = v29;
  sub_69130(v18, v21, &qword_3C25E0);
  v21[*(v19 + 36)] = 0;
  sub_2C2B18();
  v30 = sub_146550();
  v31 = sub_146AE8(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect);
  v58 = v23;
  v57 = v19;
  v53 = v30;
  v52 = v31;
  sub_2C3E88();
  (*(v51 + 8))(v9, v25);
  sub_146A18(v21);
  sub_6620C(&qword_3BC020);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2E15C0;
  if (v54)
  {
    v33 = v61;
    v34 = v61;
  }

  else
  {
    v35 = v61;

    sub_2C5DD8();
    v36 = sub_2C3718();
    sub_2C0058();

    v37 = v47;
    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v35, 0);
    (*(v48 + 8))(v37, v49);
    v33 = v71[0];
  }

  v38 = v60;
  v39 = v59;
  v40 = v56;
  if (v33)
  {
    sub_2C1628();
    sub_2C1328();
    (*(v39 + 8))(v40, v38);
    *(v32 + 56) = sub_2BE968();
    *(v32 + 64) = sub_146AE8(&qword_3BF460, &type metadata accessor for ContentData);
    *(v32 + 72) = sub_146AE8(&unk_3C4420, &type metadata accessor for ContentData);
    sub_720C8((v32 + 32));
    v41 = v33;
    sub_2BE928();
  }

  else
  {
    *(v32 + 48) = 0u;
    *(v32 + 64) = 0u;
    *(v32 + 32) = 0u;
  }

  sub_2BED18();
  *(v32 + 104) = sub_2BECC8();
  *(v32 + 112) = sub_146AE8(&qword_3BF440, &type metadata accessor for ContentExposureData);
  *(v32 + 120) = sub_146AE8(&qword_3BF448, &type metadata accessor for ContentExposureData);
  sub_720C8((v32 + 80));
  sub_2BEC98();
  sub_2C1628();
  sub_2C1328();
  (*(v39 + 8))(v40, v38);
  sub_72084(v71, v72);
  sub_2BF3B8();
  v42 = v65;
  sub_2BE9A8();
  sub_68CD0(v71);
  v71[0] = v57;
  v71[1] = v25;
  v71[2] = v53;
  v72 = v52;
  swift_getOpaqueTypeConformance2();
  sub_146AE8(&qword_3BF428, &type metadata accessor for ContentExposureEvent);
  v43 = v68;
  v44 = v63;
  v45 = v58;
  sub_2C3D98();
  sub_1463B4();
  sub_2C3D88();

  sub_146A80(v43);
  (*(v66 + 8))(v42, v67);
  return (*(v62 + 8))(v45, v44);
}

uint64_t sub_145B98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_691F8(a1, v13);
  v12[0] = xmmword_2ECB90;
  v3 = type metadata accessor for ContextActionMenuView(0);
  memset(&v12[1], 0, 32);
  a2[3] = v3;
  a2[4] = sub_146AE8(&qword_3C23D8, type metadata accessor for ContextActionMenuView);
  v4 = sub_720C8(a2);
  *v4 = swift_getKeyPath();
  *(v4 + 40) = 0;
  sub_691F8(v13, v11);
  sub_C04C8(v12, v10);
  sub_CC804(v11, v10, v4 + v3[5]);
  sub_72084(v13, v13[3]);
  v5 = sub_2BF3B8();
  v7 = v6;
  sub_C12F8(v12);
  v8 = (v4 + v3[6]);
  *v8 = v5;
  v8[1] = v7;
  *(v4 + v3[7]) = 0;
  return sub_68CD0(v13);
}

uint64_t sub_145CE8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_C9C28(*v0, *(v0 + 8));
  sub_146B38(v2, v3);
  sub_14625C();
  return sub_2BFD18();
}

uint64_t sub_145D64()
{
  v0 = sub_2C1348();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C1628();
  sub_2C12F8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_145E48()
{
  sub_6620C(&qword_3BC020);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2E3F30;
  *(v0 + 56) = sub_2BECC8();
  *(v0 + 64) = sub_146AE8(&qword_3BF440, &type metadata accessor for ContentExposureData);
  *(v0 + 72) = sub_146AE8(&qword_3BF448, &type metadata accessor for ContentExposureData);
  sub_720C8((v0 + 32));
  sub_2BEC98();
  return v0;
}

uint64_t sub_145F1C()
{
  v0 = sub_2C1A98();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2C29C8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C1938();
  v8 = sub_2C29B8();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    return sub_2BFD58();
  }

  *v3 = 0x3FF0000000000000;
  (*(v1 + 104))(v3, enum case for ShelfGridItemColumnSpan.absolute(_:), v0);
  sub_2BFD28();
  return (*(v1 + 8))(v3, v0);
}

__n128 sub_146158(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_14616C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t sub_1461B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_14625C()
{
  result = qword_3C8630;
  if (!qword_3C8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8630);
  }

  return result;
}

unint64_t sub_1462B4()
{
  result = qword_3C2598;
  if (!qword_3C2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2598);
  }

  return result;
}

unint64_t sub_1463B4()
{
  result = qword_3C25B8;
  if (!qword_3C25B8)
  {
    sub_718D4(&qword_3C25B0);
    sub_718D4(&qword_3C25C0);
    sub_2BED18();
    sub_718D4(&qword_3C25C8);
    sub_2C33E8();
    sub_146550();
    sub_146AE8(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_146AE8(&qword_3BF428, &type metadata accessor for ContentExposureEvent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C25B8);
  }

  return result;
}

unint64_t sub_146550()
{
  result = qword_3C25D0;
  if (!qword_3C25D0)
  {
    sub_718D4(&qword_3C25C8);
    sub_146608();
    sub_72B74(&qword_3C25F0, &qword_3C25F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C25D0);
  }

  return result;
}

unint64_t sub_146608()
{
  result = qword_3C25D8;
  if (!qword_3C25D8)
  {
    sub_718D4(&qword_3C25E0);
    sub_146AE8(&qword_3C25E8, &type metadata accessor for ListItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C25D8);
  }

  return result;
}

uint64_t sub_1466C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v4 - 8);
  v20 = &v21[-1] - v5;
  v6 = sub_2C1348();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChartSwooshItemComponentModel();
  sub_2C1628();
  sub_2C1328();
  v11 = *(v7 + 8);
  v11(v9, v6);
  v12 = type metadata accessor for SwooshItemComponentModel();
  sub_2C11E8();
  sub_68CD0(v21);
  sub_2C1628();
  v13 = sub_2C12E8();
  v15 = v14;
  v11(v9, v6);
  v21[0] = v13;
  v21[1] = v15;
  sub_2C61A8();
  sub_6932C(v2, v21, &qword_3BE370);
  v16 = v20;
  sub_6932C(v2 + *(v10 + 20), v20, &qword_3BF898);
  sub_69130(v16, a1 + *(v12 + 24), &qword_3BDF58);
  v17 = *(v12 + 28);
  v18 = sub_2BEE38();
  (*(*(v18 - 8) + 56))(a1 + v17, 1, 1, v18);
  *(a1 + 40) = 0u;
  a1 += 40;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  return sub_9FB04(v21, a1);
}

uint64_t sub_14694C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwooshItemComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1469B0@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();

  v3 = sub_25B524(v2, 0, &_swiftEmptyDictionarySingleton);

  *a1 = v3;
  return result;
}

uint64_t sub_146A18(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C25C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_146A80(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C25B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_146AE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_146B38(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_146B48()
{
  result = qword_3C2600;
  if (!qword_3C2600)
  {
    sub_718D4(&qword_3C2608);
    sub_72B74(&unk_3C8340, &qword_3C8300);
    sub_718D4(&qword_3C25B0);
    sub_1463B4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2600);
  }

  return result;
}

uint64_t sub_146C48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_2C0788();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v35 = sub_6620C(&qword_3C26B8);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v28 - v8;
  v10 = type metadata accessor for FanComponentModel();
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v39 = v12 + 40;
  sub_A9708(&v40, (v12 + 40), &unk_3BDC90);
  v13 = *(v10 + 24);
  v14 = sub_2C5018();
  v15 = *(*(v14 - 8) + 56);
  v37 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v38 = a1;
  sub_72084(a1, v16);
  sub_1478D4();
  v34 = v9;
  v17 = v36;
  sub_2C67A8();
  if (v17)
  {
    v19 = v37;
    sub_68CD0(v38);
    sub_69198(v39, &qword_3BE370);
    return sub_69198(&v12[v19], &qword_3BF898);
  }

  else
  {
    v36 = v7;
    v28 = v10;
    v29 = v4;
    v18 = v32;
    sub_6620C(&qword_3BE378);
    v43 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378);
    sub_2C64A8();
    v20 = v41;
    *v12 = v40;
    *(v12 + 1) = v20;
    *(v12 + 4) = v42;
    sub_6620C(&qword_3BE370);
    v43 = 1;
    v21 = v35;
    sub_72B74(&qword_3BE398, &qword_3BE370);
    v22 = v34;
    sub_2C64A8();
    v23 = v37;
    sub_A9708(&v40, v39, &qword_3BE370);
    LOBYTE(v40) = 2;
    sub_F2F40();
    v24 = v36;
    sub_2C64A8();
    v25 = v33;
    sub_A9708(v24, &v12[v23], &qword_3BF898);
    LOBYTE(v40) = 3;
    sub_147928(&qword_3C26C8, &type metadata accessor for FanViewModel);
    v26 = v29;
    sub_2C64A8();
    (*(v25 + 8))(v22, v21);
    (*(v30 + 32))(&v12[*(v28 + 28)], v26, v18);
    sub_147970(v12, v31);
    sub_68CD0(v38);
    return sub_1479D4(v12);
  }
}

unint64_t sub_14720C()
{
  v1 = 25705;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x65646F4D77656976;
  }

  if (*v0)
  {
    v1 = 0x6575676573;
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

uint64_t sub_147280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_147B48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1472B4(uint64_t a1)
{
  v2 = sub_1478D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1472F0(uint64_t a1)
{
  v2 = sub_1478D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_147344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_6932C(v2 + *(a1 + 24), &v9 - v6, &qword_3BF898);
  return sub_E1DC8(v7, a2);
}

uint64_t sub_1473F4@<X0>(void *a1@<X8>)
{
  *a1 = 1;
  v2 = enum case for ShelfGridLayout.vertical(_:);
  v3 = sub_2BFD68();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_147488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BF898);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2C0788();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1475CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BF898);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2C0788();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FanComponentModel()
{
  result = qword_3C2668;
  if (!qword_3C2668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_147748()
{
  sub_A62E4();
  if (v0 <= 0x3F)
  {
    sub_A6360();
    if (v1 <= 0x3F)
    {
      sub_F370C();
      if (v2 <= 0x3F)
      {
        sub_2C0788();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1478D4()
{
  result = qword_3C26C0;
  if (!qword_3C26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C26C0);
  }

  return result;
}

uint64_t sub_147928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_147970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FanComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1479D4(uint64_t a1)
{
  v2 = type metadata accessor for FanComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_147A44()
{
  result = qword_3C26D0;
  if (!qword_3C26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C26D0);
  }

  return result;
}

unint64_t sub_147A9C()
{
  result = qword_3C26D8;
  if (!qword_3C26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C26D8);
  }

  return result;
}

unint64_t sub_147AF4()
{
  result = qword_3C26E0;
  if (!qword_3C26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C26E0);
  }

  return result;
}

uint64_t sub_147B48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646F4D77656976 && a2 == 0xE90000000000006CLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_2C65B8();

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

uint64_t type metadata accessor for YearInReviewHostingController()
{
  result = qword_3C26E8;
  if (!qword_3C26E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_147D40(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_147DBC()
{
  v1 = sub_2C41A8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5._object = *(v0 + 32);
  if (v5._object && (v5._countAndFlagsBits = *(v0 + 24), (v6 = sub_2C0CA8(v5)) != 0))
  {
    v7 = v6;
    if (sub_2C0D28())
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v8];
    v10 = [v7 resolvedColorWithTraitCollection:v9];

    v11 = v10;
    v12 = sub_2C4288();

    if (sub_2C4198())
    {
      sub_2C4188();
      sub_2C4188();
      (*(v2 + 104))(v4, enum case for Color.RGBColorSpace.sRGB(_:), v1);
      v13 = sub_2C4278();
    }

    else
    {

      return v12;
    }
  }

  else
  {

    if (sub_2C4198())
    {
      sub_2C4188();
      (*(v2 + 104))(v4, enum case for Color.RGBColorSpace.sRGB(_:), v1);
      v13 = sub_2C4278();
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

uint64_t sub_148048()
{
  v1 = 0x63726550746E6974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6C6F43786568;
  }
}

uint64_t sub_1480B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_148768(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1480D8(uint64_t a1)
{
  v2 = sub_14831C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_148114(uint64_t a1)
{
  v2 = sub_14831C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TintColorInfo.encode(to:)(void *a1)
{
  v3 = sub_6620C(&qword_3C2738);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v8 = v1[3];
  v11[0] = v1[4];
  v11[1] = v8;
  sub_72084(a1, a1[3]);
  sub_14831C();
  sub_2C67B8();
  v15 = 0;
  v9 = v11[2];
  sub_2C6518();
  if (!v9)
  {
    v14 = v7;
    v13 = 1;
    sub_148370();
    sub_2C6538();
    v12 = 2;
    sub_2C6508();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_14831C()
{
  result = qword_3C2740;
  if (!qword_3C2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2740);
  }

  return result;
}

unint64_t sub_148370()
{
  result = qword_3C2748;
  if (!qword_3C2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2748);
  }

  return result;
}

uint64_t TintColorInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_6620C(&qword_3C2750);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_72084(a1, a1[3]);
  sub_14831C();
  sub_2C67A8();
  if (v2)
  {
    return sub_68CD0(a1);
  }

  v23 = 0;
  v9 = sub_2C6468();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  sub_BA968();
  sub_2C64A8();
  v13 = v22;
  v20 = 2;
  v14 = sub_2C6418();
  v17 = v16;
  v18 = *(v6 + 8);
  v19 = v14;
  v18(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v19;
  a2[4] = v17;

  sub_68CD0(a1);
}

unint64_t sub_148664()
{
  result = qword_3C2758;
  if (!qword_3C2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2758);
  }

  return result;
}

unint64_t sub_1486BC()
{
  result = qword_3C2760;
  if (!qword_3C2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2760);
  }

  return result;
}

unint64_t sub_148714()
{
  result = qword_3C2768;
  if (!qword_3C2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2768);
  }

  return result;
}

uint64_t sub_148768(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F43786568 && a2 == 0xE800000000000000;
  if (v4 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63726550746E6974 && a2 == 0xEB00000000746E65 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000304040 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2C65B8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id SwiftUICoverAnimationProvider.__allocating_init(frame:image:imageViewIdentifier:referenceView:isInNonHorizontalLayout:isVisible:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12)
{
  v25 = objc_allocWithZone(v12);
  *&v25[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_cardStackTransitioningCoverSourceExtraXOffset] = 0;
  v26 = &v25[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceFrame];
  *v26 = a9;
  v26[1] = a10;
  v26[2] = a11;
  v26[3] = a12;
  v27 = &v25[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_imageViewIdentifier];
  *v27 = a2;
  v27[1] = a3;
  *&v25[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceReferenceView] = a4;
  *&v25[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_coverSourceImage] = a1;
  v25[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_isInNonHorizontalLayout] = a5;
  v28 = &v25[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider__isVisible];
  *v28 = a6;
  *(v28 + 1) = a7;
  v28[16] = a8;
  v30.receiver = v25;
  v30.super_class = v12;
  return objc_msgSendSuper2(&v30, "init");
}

id SwiftUICoverAnimationProvider.init(frame:image:imageViewIdentifier:referenceView:isInNonHorizontalLayout:isVisible:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12)
{
  *&v12[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_cardStackTransitioningCoverSourceExtraXOffset] = 0;
  v13 = &v12[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceFrame];
  *v13 = a9;
  v13[1] = a10;
  v13[2] = a11;
  v13[3] = a12;
  v14 = &v12[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_imageViewIdentifier];
  *v14 = a2;
  v14[1] = a3;
  *&v12[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceReferenceView] = a4;
  *&v12[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_coverSourceImage] = a1;
  v12[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_isInNonHorizontalLayout] = a5;
  v15 = &v12[OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider__isVisible];
  *v15 = a6;
  *(v15 + 1) = a7;
  v15[16] = a8;
  v17.receiver = v12;
  v17.super_class = type metadata accessor for SwiftUICoverAnimationProvider();
  return objc_msgSendSuper2(&v17, "init");
}

double sub_148ABC()
{
  v1 = OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_cardStackTransitioningCoverSourceExtraXOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_148B54(double a1)
{
  v3 = OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_cardStackTransitioningCoverSourceExtraXOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SwiftUICoverAnimationProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUICoverAnimationProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall SwiftUICoverAnimationProvider.cardStackTransitioningCoverSourceReplaceReferenceView(_:)(UIView a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceFrame);
  if (!CGRectIsEmpty(*(v1 + OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceFrame)))
  {
    v4 = OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceReferenceView;
    [(objc_class *)a1.super.super.isa convertRect:*(v1 + OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceReferenceView) fromCoordinateSpace:*v3, v3[1], v3[2], v3[3]];
    *v3 = v5;
    *(v3 + 1) = v6;
    *(v3 + 2) = v7;
    *(v3 + 3) = v8;
    v10 = *(v1 + v4);
    *(v1 + v4) = a1;
    v9 = a1.super.super.isa;
  }
}

uint64_t (*SwiftUICoverAnimationProvider.cardStackTransitioningCoverSourceHide()())()
{
  sub_6620C(&qword_3C27A8);
  sub_2C44D8();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_148F80;
}

uint64_t sub_148F48()
{

  return _swift_deallocObject(v0, 24, 7);
}

UIImage_optional __swiftcall SwiftUICoverAnimationProvider.coverAnimationSourceImage()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_coverSourceImage);
  v2 = v1;
  v4 = v1;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

UIView_optional __swiftcall SwiftUICoverAnimationProvider.coverAnimationSourceView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceReferenceView);

  v2 = sub_2C5F68();

  v4 = v2;
  result.value.super.super.isa = v4;
  result.is_nil = v3;
  return result;
}

double sub_149350@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_cardStackTransitioningCoverSourceExtraXOffset;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1493A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_cardStackTransitioningCoverSourceExtraXOffset;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1494DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t JSABridge.perform<A, B>(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[48] = a6;
  v7[49] = v6;
  v7[46] = a4;
  v7[47] = a5;
  v7[44] = a2;
  v7[45] = a3;
  v7[43] = a1;
  v9 = sub_2C56D8();
  v7[50] = v9;
  v10 = *(v9 - 8);
  v7[51] = v10;
  v7[52] = *(v10 + 64);
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v11 = sub_2C4C48();
  v7[55] = v11;
  v7[56] = *(v11 - 8);
  v7[57] = swift_task_alloc();
  v12 = sub_2C4E88();
  v7[58] = v12;
  v7[59] = *(v12 - 8);
  v7[60] = swift_task_alloc();
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  sub_6620C(&qword_3C13C8);
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();
  v7[66] = swift_task_alloc();
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  sub_6620C(&qword_3C13D0);
  v7[70] = swift_task_alloc();
  v13 = sub_2C54A8();
  v7[71] = v13;
  v7[72] = *(v13 - 8);
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v7[75] = *(a5 - 8);
  v7[76] = swift_task_alloc();

  return _swift_task_switch(sub_149844, 0, 0);
}

uint64_t sub_149844()
{
  (*(*(v0 + 600) + 16))(*(v0 + 608), *(v0 + 352), *(v0 + 376));
  sub_6620C(&qword_3C27D8);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 576);
    v2 = *(v0 + 568);
    v3 = *(v0 + 560);
    sub_9FB74((v0 + 136), (v0 + 88));
    sub_2C4E18();
    v4 = *(v1 + 48);
    v5 = v4(v3, 1, v2);
    v6 = *(v0 + 592);
    v7 = *(v0 + 576);
    v8 = *(v0 + 568);
    v9 = *(v0 + 560);
    if (v5 == 1)
    {
      (*(v7 + 104))(v6, enum case for PageIntentInstrumentation.notInstrumented(_:), *(v0 + 568));
      if (v4(v9, 1, v8) != 1)
      {
        sub_69198(*(v0 + 560), &qword_3C13D0);
      }
    }

    else
    {
      (*(v7 + 32))(v6, *(v0 + 560), *(v0 + 568));
    }

    v14 = *(v0 + 584);
    v15 = *(v0 + 576);
    v16 = *(v0 + 568);
    (*(v15 + 16))(v14, *(v0 + 592), v16);
    v17 = (*(v15 + 88))(v14, v16);
    if (v17 == enum case for PageIntentInstrumentation.primaryData(_:))
    {
      v18 = *(v0 + 584);
      v19 = *(v0 + 552);
      v20 = *(v0 + 464);
      v21 = *(v0 + 472);
      (*(*(v0 + 576) + 96))(v18, *(v0 + 568));
      (*(v21 + 32))(v19, v18, v20);
      (*(v21 + 56))(v19, 0, 1, v20);
    }

    else if (v17 == enum case for PageIntentInstrumentation.secondaryData(_:))
    {
      v22 = *(v0 + 584);
      v23 = *(v0 + 576);
      v24 = *(v0 + 568);
      (*(*(v0 + 472) + 56))(*(v0 + 552), 1, 1, *(v0 + 464));
      (*(v23 + 8))(v22, v24);
    }

    else
    {
      v25 = enum case for PageIntentInstrumentation.notInstrumented(_:);
      v26 = v17;
      (*(*(v0 + 472) + 56))(*(v0 + 552), 1, 1, *(v0 + 464));
      if (v26 != v25)
      {
        (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
      }
    }

    v27 = *(v0 + 544);
    v28 = *(v0 + 464);
    v29 = *(v0 + 472);
    sub_14B080(*(v0 + 552), v27);
    v30 = *(v29 + 48);
    *(v0 + 616) = v30;
    *(v0 + 624) = (v29 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v30(v27, 1, v28) == 1)
    {
      sub_69198(*(v0 + 544), &qword_3C13C8);
    }

    else
    {
      (*(*(v0 + 472) + 32))(*(v0 + 504), *(v0 + 544), *(v0 + 464));
      if (qword_3BB928 != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 504);
      v32 = *(v0 + 464);
      v33 = *(v0 + 472);
      v35 = *(v0 + 448);
      v34 = *(v0 + 456);
      v36 = *(v0 + 440);
      v37 = sub_6620C(&qword_3C13E8);
      sub_57AD8(v37, qword_3E8918);
      sub_2C4E78();
      sub_2C4C38();
      sub_2C4EA8();

      (*(v35 + 8))(v34, v36);
      (*(v33 + 8))(v31, v32);
    }

    v38 = *(v0 + 552);
    v39 = *(v0 + 536);
    v40 = *(v0 + 424);
    v41 = *(v0 + 432);
    v43 = *(v0 + 408);
    v42 = *(v0 + 416);
    v44 = *(v0 + 400);
    sub_14B0F0(v0 + 88, v0 + 184);
    sub_14B080(v38, v39);
    sub_14B154((v0 + 184), v39, v0 + 16);
    v93 = v41;
    sub_2C56A8();
    *(v0 + 256) = &_s15DecoratedIntentVN;
    *(v0 + 264) = sub_14B370();
    v45 = swift_allocObject();
    *(v0 + 232) = v45;
    sub_14B40C(v0 + 16, v45 + 16);
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    (*(v43 + 16))(v40, v41, v44);
    sub_691F8(v0 + 232, v0 + 272);
    v47 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v48 = (v42 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    (*(v43 + 32))(v49 + v47, v40, v44);
    sub_693D0((v0 + 272), v49 + v48);
    *(v49 + ((v48 + 47) & 0xFFFFFFFFFFFFFFF8)) = v46;

    sub_2C6088();

    (*(v43 + 8))(v93, v44);
    swift_beginAccess();
    v50 = *(v46 + 16);
    *(v0 + 632) = v50;

    sub_68CD0(v0 + 232);
    if (v50)
    {

      v51 = sub_6620C(&qword_3C27F8);
      v52 = sub_14D164();
      v53 = swift_task_alloc();
      *(v0 + 640) = v53;
      *v53 = v0;
      v53[1] = sub_14A694;

      return dispatch thunk of Future.then()(v0 + 336, v51, v52);
    }

    v54 = *(v0 + 616);
    v55 = *(v0 + 528);
    v56 = *(v0 + 464);
    sub_14B080(*(v0 + 552), v55);
    if (v54(v55, 1, v56) == 1)
    {
      sub_69198(*(v0 + 528), &qword_3C13C8);
    }

    else
    {
      (*(*(v0 + 472) + 32))(*(v0 + 496), *(v0 + 528), *(v0 + 464));
      if (qword_3BB928 != -1)
      {
        swift_once();
      }

      v57 = *(v0 + 496);
      v58 = *(v0 + 464);
      v59 = *(v0 + 472);
      v61 = *(v0 + 448);
      v60 = *(v0 + 456);
      v62 = *(v0 + 440);
      v63 = sub_6620C(&qword_3C13E8);
      sub_57AD8(v63, qword_3E8918);
      sub_2C4E78();
      sub_2C4C38();
      sub_2C4E98();

      (*(v61 + 8))(v60, v62);
      (*(v59 + 8))(v57, v58);
    }

    v64 = *(v0 + 616);
    v65 = *(v0 + 520);
    v66 = *(v0 + 464);
    sub_14B080(*(v0 + 552), v65);
    if (v64(v65, 1, v66) == 1)
    {
      sub_69198(*(v0 + 520), &qword_3C13C8);
    }

    else
    {
      (*(*(v0 + 472) + 32))(*(v0 + 488), *(v0 + 520), *(v0 + 464));
      if (qword_3BB930 != -1)
      {
        swift_once();
      }

      v67 = *(v0 + 488);
      v68 = *(v0 + 464);
      v69 = *(v0 + 472);
      v71 = *(v0 + 448);
      v70 = *(v0 + 456);
      v72 = *(v0 + 440);
      v73 = sub_6620C(&qword_3C13E8);
      sub_57AD8(v73, qword_3E8930);
      sub_2C4E78();
      sub_2C4C38();
      sub_2C4EA8();

      (*(v71 + 8))(v70, v72);
      (*(v69 + 8))(v67, v68);
    }

    v74 = *(v0 + 376);
    v76 = *(v0 + 360);
    v75 = *(v0 + 368);
    v77 = *(v0 + 344);
    swift_getDynamicType();
    v78 = sub_14B47C(v77, 0, v76, v74, v75);
    v79 = *(v0 + 616);
    v80 = *(v0 + 512);
    v81 = *(v0 + 464);
    sub_14B080(*(v0 + 552), v80);
    if (v79(v80, 1, v81) == 1)
    {
      sub_69198(*(v0 + 512), &qword_3C13C8);
    }

    else
    {
      (*(*(v0 + 472) + 32))(*(v0 + 480), *(v0 + 512), *(v0 + 464));
      if (qword_3BB930 != -1)
      {
        swift_once();
      }

      v83 = *(v0 + 472);
      v82 = *(v0 + 480);
      v84 = *(v0 + 456);
      v94 = *(v0 + 464);
      v86 = *(v0 + 440);
      v85 = *(v0 + 448);
      v87 = sub_6620C(&qword_3C13E8);
      sub_57AD8(v87, qword_3E8930);
      sub_2C4E78();
      sub_2C4C38();
      sub_2C4E98();

      (*(v85 + 8))(v84, v86);
      (*(v83 + 8))(v82, v94);
    }

    v88 = *(v0 + 592);
    v89 = *(v0 + 576);
    v90 = *(v0 + 568);
    v91 = *(v0 + 552);
    v92._rawValue = v78;
    sub_2C5498(v92);

    sub_14CA5C(v0 + 16);
    sub_69198(v91, &qword_3C13C8);
    (*(v89 + 8))(v88, v90);
    sub_68CD0(v0 + 88);

    v12 = *(v0 + 8);
  }

  else
  {
    *(v0 + 168) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_69198(v0 + 136, &qword_3C27E0);
    v10 = sub_2C5268();
    sub_14D274(&qword_3C27E8, &type metadata accessor for IntentDispatcherError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for IntentDispatcherError.unsupported(_:), v10);
    swift_willThrow();

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_14A694()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = sub_14AED8;
  }

  else
  {
    *(v2 + 656) = *(v2 + 336);
    v3 = sub_14A7D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_14A7D0()
{
  v1 = v0[82];
  v50 = v0[81];
  v2 = v0[77];
  v3 = v0[66];
  v4 = v0[58];
  sub_14B080(v0[69], v3);
  v5 = v2(v3, 1, v4);
  v6 = v0[66];
  if (v5 == 1)
  {
    sub_69198(v6, &qword_3C13C8);
  }

  else
  {
    (*(v0[59] + 32))(v0[62], v6, v0[58]);
    if (qword_3BB928 != -1)
    {
      swift_once();
    }

    v7 = v0[62];
    v8 = v0[58];
    v9 = v0[59];
    v10 = v0[56];
    v11 = v0[57];
    v12 = v0[55];
    v13 = sub_6620C(&qword_3C13E8);
    sub_57AD8(v13, qword_3E8918);
    sub_2C4E78();
    sub_2C4C38();
    sub_2C4E98();

    (*(v10 + 8))(v11, v12);
    (*(v9 + 8))(v7, v8);
  }

  v14 = v0[77];
  v15 = v0[65];
  v16 = v0[58];
  sub_14B080(v0[69], v15);
  if (v14(v15, 1, v16) == 1)
  {
    sub_69198(v0[65], &qword_3C13C8);
  }

  else
  {
    (*(v0[59] + 32))(v0[61], v0[65], v0[58]);
    if (qword_3BB930 != -1)
    {
      swift_once();
    }

    v17 = v0[61];
    v18 = v0[58];
    v19 = v0[59];
    v20 = v0[56];
    v21 = v0[57];
    v22 = v0[55];
    v23 = sub_6620C(&qword_3C13E8);
    sub_57AD8(v23, qword_3E8930);
    sub_2C4E78();
    sub_2C4C38();
    sub_2C4EA8();

    (*(v20 + 8))(v21, v22);
    (*(v19 + 8))(v17, v18);
  }

  v24 = v0[47];
  v26 = v0[45];
  v25 = v0[46];
  v27 = v0[43];
  swift_getDynamicType();
  v28 = sub_14B47C(v27, v1, v26, v24, v25);
  if (v50)
  {
    v29 = v0[74];
    v30 = v0[72];
    v31 = v0[71];
    v32 = v0[69];

    sub_14CA5C((v0 + 2));
    sub_69198(v32, &qword_3C13C8);
    (*(v30 + 8))(v29, v31);
    sub_68CD0((v0 + 11));

    v33 = v0[1];
  }

  else
  {
    v34 = v28;
    v35 = v0[77];
    v36 = v0[64];
    v37 = v0[58];
    sub_14B080(v0[69], v36);
    if (v35(v36, 1, v37) == 1)
    {
      sub_69198(v0[64], &qword_3C13C8);
    }

    else
    {
      (*(v0[59] + 32))(v0[60], v0[64], v0[58]);
      if (qword_3BB930 != -1)
      {
        swift_once();
      }

      v39 = v0[59];
      v38 = v0[60];
      v40 = v0[57];
      v51 = v0[58];
      v42 = v0[55];
      v41 = v0[56];
      v43 = sub_6620C(&qword_3C13E8);
      sub_57AD8(v43, qword_3E8930);
      sub_2C4E78();
      sub_2C4C38();
      sub_2C4E98();

      (*(v41 + 8))(v40, v42);
      (*(v39 + 8))(v38, v51);
    }

    v44 = v0[74];
    v45 = v0[72];
    v46 = v0[71];
    v47 = v0[69];
    v48._rawValue = v34;
    sub_2C5498(v48);

    sub_14CA5C((v0 + 2));
    sub_69198(v47, &qword_3C13C8);
    (*(v45 + 8))(v44, v46);
    sub_68CD0((v0 + 11));

    v33 = v0[1];
  }

  return v33();
}

uint64_t sub_14AED8()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[69];

  sub_14CA5C((v0 + 2));
  sub_69198(v4, &qword_3C13C8);
  (*(v2 + 8))(v1, v3);
  sub_68CD0((v0 + 11));

  v5 = v0[1];

  return v5();
}

uint64_t sub_14B080(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C13C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14B0F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_14B154@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_6620C(&qword_3C13C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-1] - v7;
  v19 = *(a1 + 3);
  v9 = v19;
  v10 = sub_72084(a1, v19);
  v21 = v19;
  v11 = sub_720C8(v20);
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  sub_72084(a1, a1[3]);
  v22 = sub_2C4A88();
  v23 = v12;
  sub_14B080(a2, v8);
  v13 = sub_2C4E88();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_69198(a2, &qword_3C13C8);
    sub_69198(v8, &qword_3C13C8);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = sub_2C4E78();
    v16 = v17;
    sub_69198(a2, &qword_3C13C8);
    (*(v14 + 8))(v8, v13);
  }

  v24 = v15;
  v25 = v16;
  sub_14B40C(v20, a3);
  sub_68CD0(a1);
  return sub_14CA5C(v20);
}

unint64_t sub_14B370()
{
  result = qword_3C27F0;
  if (!qword_3C27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C27F0);
  }

  return result;
}

uint64_t sub_14B3C4()
{
  sub_68CD0(v0 + 16);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_14B444()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_14B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a3;
  v64 = a1;
  v8 = sub_2C60B8();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v61 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v65 = &v59 - v11;
  v12 = sub_6620C(&qword_3C2810);
  __chkstk_darwin(v12 - 8);
  v14 = &v59 - v13;
  v69 = sub_2C4B78();
  v15 = *(v69 - 8);
  __chkstk_darwin(v69);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v59 - v19;
  v21 = sub_6620C(&qword_3C2818);
  __chkstk_darwin(v21 - 8);
  v23 = &v59 - v22;
  v24 = sub_2C49F8();
  __chkstk_darwin(v24);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v74 = &v59 - v31;
  if (!a2)
  {
    (*(v29 + 56))(v23, 1, 1, v30);
    sub_69198(v23, &qword_3C2818);
    v42 = sub_2C5748();
    sub_14D274(&qword_3C2820, &type metadata accessor for JSONError);
    swift_allocError();
    *v43 = a5;
    v43[1] = _swiftEmptyArrayStorage;
    (*(*(v42 - 8) + 104))(v43, enum case for JSONError.malformedDocument(_:), v42);
    return swift_willThrow();
  }

  v66 = v29;
  v67 = v28;
  result = sub_2C5F88();
  if (v5)
  {
    return result;
  }

  v60 = a5;
  v33 = v66;
  v34 = v67;
  (*(v66 + 56))(v23, 0, 1, v67);
  (*(v33 + 32))(v74, v23, v34);
  v35 = v69;
  sub_2C4E18();
  v36 = v15;
  v37 = *(v15 + 48);
  v38 = v37(v14, 1, v35);
  v59 = v36;
  if (v38 == 1)
  {
    sub_2C4B68();
    v39 = v37(v14, 1, v35);
    v40 = v20;
    v41 = v60;
    if (v39 != 1)
    {
      sub_69198(v14, &qword_3C2810);
    }
  }

  else
  {
    v40 = v20;
    (*(v36 + 32))(v20, v14, v35);
    v41 = v60;
  }

  v44 = v74;
  v45 = sub_2C54C8();
  v46 = swift_conformsToProtocol2();
  if (v46 && v41)
  {
    v72 = v41;
    v73 = v46;
    sub_720C8(v71);
    sub_2C49C8();
    v54 = v45;
    sub_691F8(v71, v70);
    sub_6620C(&qword_3C2838);
    v55 = v65;
    if (swift_dynamicCast())
    {
      (*(v59 + 8))(v40, v35);
      (*(v66 + 8))(v44, v67);
      v56 = *(v41 - 8);
      (*(v56 + 56))(v55, 0, 1, v41);
      (*(v56 + 32))(v64, v55, v41);
      sub_68CD0(v71);
      return v54;
    }

    (*(*(v41 - 8) + 56))(v55, 1, 1, v41);
    (*(v62 + 8))(v55, v63);
    sub_14D30C();
    swift_allocError();
    swift_willThrow();
    (*(v59 + 8))(v40, v35);
    (*(v66 + 8))(v44, v67);
  }

  else
  {
    v68 = v45;
    v47 = swift_conformsToProtocol2();
    if (!v47 || !v41)
    {

      v52 = sub_2C5748();
      sub_14D274(&qword_3C2820, &type metadata accessor for JSONError);
      swift_allocError();
      *v53 = v41;
      v53[1] = _swiftEmptyArrayStorage;
      (*(*(v52 - 8) + 104))(v53, enum case for JSONError.malformedDocument(_:), v52);
      swift_willThrow();
      (*(v59 + 8))(v40, v35);
      return (*(v66 + 8))(v44, v67);
    }

    v48 = v47;
    v49 = v35;
    (*(v66 + 16))(v26, v44, v67);
    v50 = v40;
    v51 = v59;
    (*(v59 + 16))(v17, v50, v49);
    v72 = v41;
    v73 = v48;
    sub_720C8(v71);
    sub_2C4FC8();
    sub_691F8(v71, v70);
    sub_6620C(&qword_3C2828);
    v57 = v61;
    if (swift_dynamicCast())
    {
      (*(v51 + 8))(v50, v69);
      (*(v66 + 8))(v74, v67);
      v58 = *(v41 - 8);
      (*(v58 + 56))(v57, 0, 1, v41);
      (*(v58 + 32))(v64, v57, v41);
      sub_68CD0(v71);
      return v68;
    }

    (*(*(v41 - 8) + 56))(v57, 1, 1, v41);
    (*(v62 + 8))(v57, v63);
    sub_14D30C();
    swift_allocError();
    swift_willThrow();
    (*(v51 + 8))(v50, v69);
    (*(v66 + 8))(v74, v67);
  }

  return sub_68CD0(v71);
}

void sub_14BF08(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v65 = a4;
  v68 = a3;
  v6 = sub_2C56D8();
  v72 = *(v6 - 8);
  v73 = v6;
  __chkstk_darwin(v6);
  v70 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v62 - v9;
  v10 = sub_6620C(&qword_3C2840);
  __chkstk_darwin(v10 - 8);
  v66 = &v62 - v11;
  v12 = sub_2C5768();
  v67 = *(v12 - 8);
  __chkstk_darwin(v12);
  v64 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6620C(&qword_3C2848);
  __chkstk_darwin(v14 - 8);
  v16 = &v62 - v15;
  v17 = sub_2C4988();
  v69 = *(v17 - 8);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 globalObject];
  if (v21)
  {
    v22 = v21;
    sub_2C56B8();
    v23 = sub_2C5FB8();

    if ([v23 isObject])
    {
      sub_2C56C8();
      sub_2C5FB8();

      v74[3] = sub_2C5028();
      v74[4] = &protocol witness table for JSStrongReference;
      sub_720C8(v74);
      sub_2C5038();
      sub_2C4998();
      v24 = v69;
      if ((*(v69 + 48))(v16, 1, v17) == 1)
      {
        sub_69198(v16, &qword_3C2848);
        sub_2C56C8();
        sub_2C5FB8();

        sub_2C5698();
        sub_14D274(&qword_3C2850, &type metadata accessor for JSError);
        swift_allocError();
        sub_2C5678();
        swift_willThrow();
      }

      else
      {
        v63 = v12;
        (*(v24 + 32))(v20, v16, v17);
        sub_6620C(&qword_3BC308);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_2E3F30;
        sub_72084(v68, v68[3]);
        v27 = sub_2C5468();
        *(v26 + 56) = sub_66278(0, &qword_3C2808);
        *(v26 + 32) = v27;
        v28.super.isa = v23;
        v29._rawValue = v26;
        isa = sub_2C4978(v28, v29).super.isa;

        v31 = isa;
        v32 = v66;
        sub_2C5778();
        v33 = v67;
        v34 = v63;
        if ((*(v67 + 48))(v32, 1, v63) != 1)
        {
          v59 = v64;
          (*(v33 + 32))(v64, v32, v34);
          v60 = sub_2C5758();

          (*(v33 + 8))(v59, v34);
          (*(v69 + 8))(v20, v17);
          v61 = v65;
          swift_beginAccess();
          *(v61 + 16) = v60;

          return;
        }

        sub_69198(v32, &qword_3C2840);
        sub_2C5698();
        sub_14D274(&qword_3C2850, &type metadata accessor for JSError);
        swift_allocError();
        v35 = v31;
        sub_2C5678();
        swift_willThrow();

        (*(v69 + 8))(v20, v17);
      }
    }

    else
    {
      sub_2C5698();
      sub_14D274(&qword_3C2850, &type metadata accessor for JSError);
      swift_allocError();
      v25 = v23;
      sub_2C5678();
      swift_willThrow();
    }

    v37 = v72;
    v36 = v73;
    v38 = v70;
    if (qword_3BB7C0 != -1)
    {
      swift_once();
    }

    v39 = sub_2C00B8();
    sub_57AD8(v39, qword_3C2FF0);
    v40 = *(v37 + 16);
    v41 = v71;
    v40(v71, a2, v36);
    v40(v38, a2, v36);
    swift_errorRetain();
    v42 = sub_2C0098();
    v43 = sub_2C5DC8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v74[0] = v69;
      *v44 = 136315650;
      v45 = sub_2C56B8();
      v46 = v41;
      v47 = v38;
      v49 = v48;
      v50 = *(v37 + 8);
      v50(v46, v36);
      v51 = sub_5CCF4(v45, v49, v74);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2080;
      v52 = sub_2C56C8();
      v54 = v53;
      v50(v47, v36);
      v55 = sub_5CCF4(v52, v54, v74);

      *(v44 + 14) = v55;
      *(v44 + 22) = 2112;
      swift_errorRetain();
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 24) = v56;
      v57 = v68;
      *v68 = v56;
      _os_log_impl(&dword_0, v42, v43, "performRawCall to %s.%s failed with error: %@", v44, 0x20u);
      sub_69198(v57, &qword_3BFEE0);

      swift_arrayDestroy();
    }

    else
    {

      v58 = *(v37 + 8);
      v58(v38, v36);
      v58(v41, v36);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_14C908()
{
  v1 = sub_2C56D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_68CD0(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_14C9B4(void *a1)
{
  v3 = *(sub_2C56D8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8));

  sub_14BF08(a1, v1 + v4, (v1 + v5), v6);
}

uint64_t sub_14CA8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  sub_72084(v2, v2[3]);
  result = sub_2C5468();
  if (!v3)
  {
    v8 = result;
    v18._countAndFlagsBits = 0x646E696B24;
    v18._object = 0xE500000000000000;
    if (!sub_2C5FA8(v18))
    {
      v15 = v4[5];
      v16 = v4[6];

      v9 = sub_2C6658();
      v10 = [objc_opt_self() valueWithObject:v9 inContext:{a1, v15, v16}];
      result = swift_unknownObjectRelease();
      if (!v10)
      {
        __break(1u);
        goto LABEL_12;
      }

      sub_2C5FC8();
    }

    v11 = v4[8];
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = v4[7];
    v19._countAndFlagsBits = 0x6E65526567617024;
    v19._object = 0xED00004449726564;
    if (sub_2C5FA8(v19))
    {
      goto LABEL_9;
    }

    v17 = v11;

    v13 = sub_2C6658();
    v14 = [objc_opt_self() valueWithObject:v13 inContext:{a1, v12, v17}];
    result = swift_unknownObjectRelease();
    if (v14)
    {
      sub_2C5FC8();
LABEL_9:
      result = sub_66278(0, &qword_3C2808);
      a2[3] = result;
      a2[4] = &protocol witness table for JSValue;
      *a2 = v8;
      return result;
    }

LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_14CC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_88BE0;

  return JSABridge.perform<A, B>(_:asPartOf:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_14CD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  WitnessTable = swift_getWitnessTable();
  *v15 = v7;
  v15[1] = sub_7100C;

  return CustomIntentDispatcher.dispatcher<A, B>(for:asPartOf:)(a1, a2, a3, a7, a4, a5, WitnessTable, a6);
}

uint64_t sub_14CE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  WitnessTable = swift_getWitnessTable();
  *v13 = v6;
  v13[1] = sub_88BE0;

  return CustomIntentDispatcher.dispatch<A>(_:objectGraph:)(a1, a2, a3, a6, a4, WitnessTable, a5);
}

uint64_t sub_14CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_88BE0;

  return IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t sub_14D058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_88BE0;

  return IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, a4, a7, a5, a8, a6);
}

unint64_t sub_14D164()
{
  result = qword_3C2800;
  if (!qword_3C2800)
  {
    sub_718D4(&qword_3C27F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2800);
  }

  return result;
}

uint64_t sub_14D1CC(uint64_t a1, int a2)
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

uint64_t sub_14D214(uint64_t result, int a2, int a3)
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

uint64_t sub_14D274(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_14D2BC(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

unint64_t sub_14D30C()
{
  result = qword_3C2830;
  if (!qword_3C2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2830);
  }

  return result;
}

unint64_t sub_14D374()
{
  result = qword_3C2858;
  if (!qword_3C2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2858);
  }

  return result;
}

uint64_t JSShelfPaginationIntent.pathToResources.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t JSShelfPaginationIntent.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JSShelfPaginationIntent() + 32);
  v4 = sub_2C49F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for JSShelfPaginationIntent()
{
  result = qword_3C28C8;
  if (!qword_3C28C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t JSShelfPaginationIntent.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v3 = v2;
  v23 = a1;
  v4 = sub_6620C(&qword_3C2860);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  type metadata accessor for JSShelfPaginationIntent();
  sub_2C49A8();
  v7 = sub_2C4D58();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_14D84C(v6);
    v22 = 0;
  }

  else
  {
    v22 = sub_2C4D48();
    (*(v8 + 8))(v6, v7);
  }

  sub_6620C(&unk_3C43A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2EDF00;
  *(inited + 32) = 0x4449666C656873;
  *(inited + 40) = 0xE700000000000000;
  v10 = v2[1];
  *(inited + 48) = *v2;
  *(inited + 56) = v10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x666572487478656ELL;
  *(inited + 88) = 0xE800000000000000;
  v11 = v2[3];
  *(inited + 96) = v2[2];
  *(inited + 104) = v11;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x65526F5468746170;
  *(inited + 136) = 0xEF73656372756F73;
  v12 = v2[4];
  v13 = v3[5];
  v14 = sub_6620C(&qword_3BDB00);
  *(inited + 144) = v12;
  *(inited + 152) = v13;
  *(inited + 168) = v14;
  *(inited + 176) = 0x74657366666FLL;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = v3[6];
  *(inited + 216) = &type metadata for Int;
  *(inited + 224) = 0x747865746E6F63;
  *(inited + 232) = 0xE700000000000000;
  *(inited + 264) = sub_6620C(&qword_3C2868);
  *(inited + 240) = v22;

  v15 = sub_67AC8(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BC220);
  swift_arrayDestroy();
  v24 = v15;
  sub_6620C(&qword_3BD860);
  v16 = sub_2C6658();
  v17 = [objc_opt_self() valueWithObject:v16 inContext:v23];
  result = swift_unknownObjectRelease();
  if (v17)
  {

    result = sub_14D8EC();
    v19 = v21;
    v21[3] = result;
    v19[4] = &protocol witness table for JSValue;
    *v19 = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_14D84C(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C2860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_14D8EC()
{
  result = qword_3C2808;
  if (!qword_3C2808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3C2808);
  }

  return result;
}

uint64_t sub_14D94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2C49F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_14DA0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2C49F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_14DAB0()
{
  sub_A63F4();
  if (v0 <= 0x3F)
  {
    sub_2C49F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_14DB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1918985593 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2C65B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_14DBF4(uint64_t a1)
{
  v2 = sub_14DF24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14DC30(uint64_t a1)
{
  v2 = sub_14DF24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_14DC8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_6620C(&qword_3C2910);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_72084(a1, a1[3]);
  sub_14DF24();
  sub_2C67A8();
  if (v2)
  {
    return sub_68CD0(a1);
  }

  v9 = sub_2C6498();
  (*(v6 + 8))(v8, v5);
  result = sub_68CD0(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_14DDEC(void *a1)
{
  v2 = sub_6620C(&qword_3C2920);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_72084(a1, a1[3]);
  sub_14DF24();
  sub_2C67B8();
  sub_2C6528();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_14DF24()
{
  result = qword_3C2918;
  if (!qword_3C2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2918);
  }

  return result;
}

unint64_t sub_14DF8C()
{
  result = qword_3C2928;
  if (!qword_3C2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2928);
  }

  return result;
}

unint64_t sub_14DFE4()
{
  result = qword_3C2930;
  if (!qword_3C2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2930);
  }

  return result;
}

unint64_t sub_14E03C()
{
  result = qword_3C2938;
  if (!qword_3C2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2938);
  }

  return result;
}

uint64_t sub_14E090@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = sub_2C0FE8();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_6620C(&qword_3C2940);
  __chkstk_darwin(v41);
  v5 = &v34 - v4;
  v6 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = sub_6620C(&qword_3C2A08);
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for BrickComponentModel();
  __chkstk_darwin(v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v46 = v14 + 40;
  sub_A9708(&v50, (v14 + 40), &unk_3BDC90);
  v15 = *(v12 + 24);
  v16 = sub_2C5018();
  v17 = *(*(v16 - 8) + 56);
  v47 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 28);
  v19 = sub_2BF038();
  v20 = *(*(v19 - 8) + 56);
  v49 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v48 = a1;
  sub_72084(a1, v21);
  sub_14F034();
  v44 = v11;
  v22 = v45;
  sub_2C67A8();
  if (v22)
  {
    v24 = v46;
    sub_68CD0(v48);
    v25 = v47;
    sub_69198(v24, &qword_3BE370);
    sub_69198(&v14[v25], &qword_3BF898);
    return sub_69198(&v14[v49], &qword_3C2940);
  }

  else
  {
    v45 = v8;
    v35 = v12;
    v36 = v5;
    sub_6620C(&qword_3BE378);
    v53 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378);
    v23 = v43;
    sub_2C64A8();
    v26 = v51;
    *v14 = v50;
    *(v14 + 1) = v26;
    *(v14 + 4) = v52;
    sub_6620C(&qword_3BE370);
    v53 = 1;
    sub_72B74(&qword_3BE398, &qword_3BE370);
    sub_2C64A8();
    sub_A9708(&v50, v46, &qword_3BE370);
    LOBYTE(v50) = 2;
    sub_14F088(&qword_3C08B8, &qword_3BF898, &unk_2EA240, sub_F2FC4);
    v27 = v45;
    sub_2C64A8();
    v28 = v42;
    sub_A9708(v27, &v14[v47], &qword_3BF898);
    LOBYTE(v50) = 3;
    sub_14F088(&qword_3C2A18, &qword_3C2940, &unk_2EE218, sub_14F104);
    v29 = v36;
    sub_2C64A8();
    sub_A9708(v29, &v14[v49], &qword_3C2940);
    LOBYTE(v50) = 4;
    sub_14F1B8(&qword_3C2A30, &type metadata accessor for BrickLockupModel);
    v30 = v39;
    v31 = v40;
    v32 = v44;
    sub_2C64A8();
    (*(v28 + 8))(v32, v23);
    (*(v37 + 32))(&v14[*(v35 + 32)], v31, v30);
    sub_14F200(v14, v38);
    sub_68CD0(v48);
    return sub_14F264(v14);
  }
}

unint64_t sub_14E7C4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x7461446B63697262;
  if (v1 != 3)
  {
    v4 = 0x65646F4D77656976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
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

uint64_t sub_14E858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_14F3D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_14E880(uint64_t a1)
{
  v2 = sub_14F034();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14E8BC(uint64_t a1)
{
  v2 = sub_14F034();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_14E910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_6932C(v2 + *(a1 + 24), &v9 - v6, &qword_3BF898);
  return sub_E1DC8(v7, a2);
}

uint64_t sub_14E9C0()
{
  v0 = sub_2C1A98();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2C1928();
  *v3 = 0x3FF0000000000000;
  (*(v1 + 104))(v3, enum case for ShelfGridItemColumnSpan.absolute(_:), v0);
  sub_2BFD28();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_14EAF8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_6620C(&qword_3BF898);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_6620C(&qword_3C2940);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_2C0FE8();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_14EC90(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_6620C(&qword_3BF898);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_6620C(&qword_3C2940);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_2C0FE8();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for BrickComponentModel()
{
  result = qword_3C29A0;
  if (!qword_3C29A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_14EE60()
{
  sub_A62E4();
  if (v0 <= 0x3F)
  {
    sub_A6360();
    if (v1 <= 0x3F)
    {
      sub_D7504(319, &qword_3C0940, &qword_3BDF58);
      if (v2 <= 0x3F)
      {
        sub_D7504(319, &qword_3C29B0, &unk_3C29B8);
        if (v3 <= 0x3F)
        {
          sub_2C0FE8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_14F034()
{
  result = qword_3C2A10;
  if (!qword_3C2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2A10);
  }

  return result;
}

uint64_t sub_14F088(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_14F104()
{
  result = qword_3C2A20;
  if (!qword_3C2A20)
  {
    sub_718D4(&unk_3C29B8);
    sub_14F1B8(&qword_3C2A28, &type metadata accessor for BrickData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2A20);
  }

  return result;
}

uint64_t sub_14F1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_14F200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrickComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14F264(uint64_t a1)
{
  v2 = type metadata accessor for BrickComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_14F2D4()
{
  result = qword_3C2A38;
  if (!qword_3C2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2A38);
  }

  return result;
}

unint64_t sub_14F32C()
{
  result = qword_3C2A40;
  if (!qword_3C2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2A40);
  }

  return result;
}

unint64_t sub_14F384()
{
  result = qword_3C2A48;
  if (!qword_3C2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2A48);
  }

  return result;
}

uint64_t sub_14F3D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461446B63697262 && a2 == 0xE900000000000061 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F4D77656976 && a2 == 0xE90000000000006CLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_2C65B8();

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

id sub_14F5D4(objc_class *a1)
{
  v2 = sub_2C4C08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C2840);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  type metadata accessor for JSAction();
  sub_14FF9C(&qword_3C2A50);
  v9.super.isa = a1;
  v10.super.isa = sub_2C5478(v9).super.isa;
  result = [(objc_class *)a1 globalObject];
  if (result)
  {
    v12 = result;
    v13 = sub_2C5FB8();

    v14 = sub_2C5888();
    sub_6620C(&qword_3BC308);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2E3F30;
    *(v15 + 56) = sub_66278(0, &qword_3C2808);
    *(v15 + 32) = v10;
    v16 = v10.super.isa;
    isa = sub_2C5B18().super.isa;

    v18 = [v13 invokeMethod:v14 withArguments:isa];

    if (!v18)
    {
LABEL_5:
      (*(v3 + 104))(v5, enum case for ActionOutcome.unsupported(_:), v2);
      sub_2C5718();

      return (*(v3 + 8))(v5, v2);
    }

    v19 = v18;
    sub_2C5778();
    v20 = sub_2C5768();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v8, 1, v20) == 1)
    {

      sub_14FFE0(v8);
      goto LABEL_5;
    }

    sub_2C5758();
    (*(v21 + 8))(v8, v20);
    v22 = sub_66278(0, &qword_3BFEF0);
    swift_retain_n();
    v23 = sub_2C5E88();
    v24[3] = v22;
    v24[4] = &protocol witness table for OS_dispatch_queue;
    v24[0] = v23;
    sub_2C56E8();

    return sub_68CD0(v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_14FA0C()
{
  v0 = sub_2C4C08();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C5F98();
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v5 = &enum case for ActionOutcome.unsupported(_:);
  }

  else
  {
    v5 = &enum case for ActionOutcome.performed(_:);
  }

  (*(v1 + 104))(v3, *v5, v0);
  sub_2C5718();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_14FB2C(uint64_t a1)
{
  v2 = type metadata accessor for JSAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_6620C(&qword_3BDAB8);
  v5 = sub_2C5738();
  v6 = [objc_opt_self() sharedInstance];
  sub_14FCB0(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_14FE9C(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *(v8 + ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;

  sub_2C6088();

  return v5;
}

uint64_t sub_14FCB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14FD14()
{
  v1 = (type metadata accessor for JSAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2C4BF8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[9];
  v7 = sub_2BF088();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_14FE9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_14FF00(objc_class *a1)
{
  type metadata accessor for JSAction();

  return sub_14F5D4(a1);
}

uint64_t sub_14FF9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for JSAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_14FFE0(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C2840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PageNamespace.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t PageNamespace.wrappedValue.getter()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *v0;
  v6 = *(v0 + 8);
  if (*(v0 + 9) == 1)
  {
    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v7 = *v0;

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_1238D4(v7, v6, 0);
    (*(v2 + 8))(v4, v1);
    if (v14 != 1)
    {
      return v13;
    }
  }

  if (qword_3BB7F0 != -1)
  {
    swift_once();
  }

  v9 = sub_2C00B8();
  sub_57AD8(v9, qword_3C3080);
  v10 = sub_2C0098();
  v11 = sub_2C5DD8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
  }

  return sub_2C4738();
}

uint64_t sub_150300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1506E8();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_150364()
{
  sub_15059C();
  sub_2C3108();
  return v1;
}

uint64_t sub_1503AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = sub_2C4738();
  v6 = sub_6620C(&qword_3C2A58);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = sub_6620C(&qword_3C2A60);
  v8 = a2 + *(result + 36);
  *v8 = KeyPath;
  *(v8 + 8) = v5;
  *(v8 + 16) = 0;
  return result;
}

uint64_t sub_150470(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
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

uint64_t sub_1504B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

uint64_t sub_15050C()
{
  sub_2C2A08();
  sub_F8D5C();
  return swift_getWitnessTable();
}

unint64_t sub_15059C()
{
  result = qword_3C2A68;
  if (!qword_3C2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2A68);
  }

  return result;
}

unint64_t sub_150604()
{
  result = qword_3C2A70;
  if (!qword_3C2A70)
  {
    sub_718D4(&qword_3C2A60);
    sub_72B74(&qword_3C2A78, &qword_3C2A58);
    sub_72B74(&qword_3C2A80, &qword_3C2A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2A70);
  }

  return result;
}

unint64_t sub_1506E8()
{
  result = qword_3C2A90;
  if (!qword_3C2A90)
  {
    sub_718D4(&qword_3C2A98);
    sub_15076C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2A90);
  }

  return result;
}

unint64_t sub_15076C()
{
  result = qword_3C2AA0;
  if (!qword_3C2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2AA0);
  }

  return result;
}

__n128 sub_1507C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1507E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_15082C(uint64_t result, int a2, int a3)
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

void sub_150890()
{
  v1 = sub_6620C(&qword_3BE6C8);
  __chkstk_darwin(v1 - 8);
  v61 = &v52 - v2;
  v3 = sub_6620C(&qword_3BE6D0);
  __chkstk_darwin(v3 - 8);
  v60 = &v52 - v4;
  v5 = sub_2BEB08();
  __chkstk_darwin(v5 - 8);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2BE5F8();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C0428();
  __chkstk_darwin(v8 - 8);
  v58 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2C0D88();
  __chkstk_darwin(v10 - 8);
  v64 = sub_2C0DB8();
  v11 = *(v64 - 8);
  __chkstk_darwin(v64);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0[1];
  v54 = *v0;
  v15 = *(v0 + 4);
  v75 = *(v0 + 3);
  v76 = v15;
  v77 = v0[10];
  v16 = *(v0 + 2);
  v73 = *(v0 + 1);
  v74 = v16;
  v17 = *(v14 + 16);
  v62 = v14;
  if (v17)
  {
    v18 = 0;
    v19 = v14 + 32;
    v63 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v18 >= *(v14 + 16))
      {
        __break(1u);
        return;
      }

      sub_691F8(v19, &v65);
      sub_72084(&v65, *(&v66 + 1));
      sub_2BF8F8();
      v20 = sub_2BFA98();
      v22 = v21;
      if (v20 == sub_2BFA98() && v22 == v23)
      {
      }

      else
      {
        v25 = sub_2C65B8();

        if ((v25 & 1) == 0)
        {
          sub_693D0(&v65, v71);
          v26 = v63;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_64808(0, v26[2] + 1, 1);
            v26 = v72;
          }

          v29 = v26[2];
          v28 = v26[3];
          if (v29 >= v28 >> 1)
          {
            sub_64808((v28 > 1), v29 + 1, 1);
            v26 = v72;
          }

          v26[2] = v29 + 1;
          v63 = v26;
          sub_693D0(v71, &v26[5 * v29 + 4]);
          v14 = v62;
          goto LABEL_5;
        }
      }

      sub_68CD0(&v65);
LABEL_5:
      ++v18;
      v19 += 40;
      if (v17 == v18)
      {
        goto LABEL_18;
      }
    }
  }

  v63 = _swiftEmptyArrayStorage;
LABEL_18:
  v30 = v63[2];
  if (v30 >= 3 || (v31 = [objc_opt_self() mainScreen], objc_msgSend(v31, "bounds"), v33 = v32, v35 = v34, v37 = v36, v39 = v38, v31, v78.origin.x = v33, v78.origin.y = v35, v78.size.width = v37, v78.size.height = v39, CGRectGetHeight(v78), v30))
  {
    *&v71[0] = _swiftEmptyArrayStorage;
    sub_64654(0, v30, 0);
    v40 = *&v71[0];
    v41 = (v63 + 4);
    v53 = v30;
    do
    {
      sub_691F8(v41, &v65);
      sub_72084(&v65, *(&v66 + 1));
      sub_2BF9F8();
      sub_2C0D78();
      sub_2C0DA8();
      sub_68CD0(&v65);
      *&v71[0] = v40;
      v43 = *(v40 + 16);
      v42 = *(v40 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_64654(v42 > 1, v43 + 1, 1);
        v40 = *&v71[0];
      }

      *(v40 + 16) = v43 + 1;
      (*(v11 + 32))(v40 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v43, v13, v64);
      v41 += 40;
      --v30;
    }

    while (v30);

    v14 = v62;
    v30 = v53;
  }

  else
  {
  }

  LODWORD(v64) = v30 < 3;
  sub_6620C(&qword_3BC400);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_2E3F30;
  v45 = v55;
  sub_2BE5E8();
  v46 = v54;
  v63 = sub_1E2C58(v54, v45);
  (*(v56 + 8))(v45, v57);
  *&v65 = v46;
  *(&v65 + 1) = v14;
  v68 = v75;
  v69 = v76;
  v70 = v77;
  v67 = v74;
  v66 = v73;
  sub_151188();
  v47 = enum case for FrameName.booksFinished(_:);
  v48 = sub_2BF0C8();
  v49 = *(v48 - 8);
  v50 = v60;
  (*(v49 + 104))(v60, v47, v48);
  (*(v49 + 56))(v50, 0, 1, v48);
  v51 = sub_2BE8D8();
  (*(*(v51 - 8) + 56))(v61, 1, 1, v51);
  sub_2BEAF8();
  sub_2C0418();
  *(v44 + 56) = sub_2C03B8();
  *(v44 + 64) = sub_151464();
  sub_720C8((v44 + 32));
  sub_2C03A8();
}

uint64_t sub_151188()
{
  v0 = sub_2BE338();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 sharedProvider];
  v6 = [v5 primaryAppleAccount];

  if (v6 || (v7 = [v4 sharedProvider], v6 = objc_msgSend(v7, "activeStoreAccount"), v7, v6))
  {
    v8 = [v6 ams_firstName];

    if (v8)
    {
      sub_2C58C8();

      v9 = [v4 sharedProvider];
      v10 = [v9 primaryAppleAccount];

      if (v10 || (v11 = [v4 sharedProvider], v10 = objc_msgSend(v11, "activeStoreAccount"), v11, v10))
      {
        v12 = [v10 ams_lastName];

        if (v12)
        {
          sub_2C58C8();

          v13 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
          [v13 setStyle:1];
          sub_2BE328();
          sub_2BE2F8();
          sub_2BE308();
          v14 = sub_2BE318();
          v15 = [v13 stringFromPersonNameComponents:v14];

          v16 = sub_2C58C8();
          (*(v1 + 8))(v3, v0);
          return v16;
        }
      }
    }
  }

  return 0;
}

unint64_t sub_151464()
{
  result = qword_3C2AA8;
  if (!qword_3C2AA8)
  {
    sub_2C03B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2AA8);
  }

  return result;
}

uint64_t sub_1514BC@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, void (*a3)(void, void, void, void)@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v294) = a6;
  v292 = a5;
  v342 = a3;
  v281 = a7;
  v316 = type metadata accessor for Shelf();
  __chkstk_darwin(v316);
  v317 = &v265 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3C1C70);
  __chkstk_darwin(v11 - 8);
  v340 = &v265 - v12;
  v13 = sub_6620C(&qword_3C1A00);
  __chkstk_darwin(v13 - 8);
  v339 = &v265 - v14;
  v15 = sub_6620C(&qword_3C1730);
  __chkstk_darwin(v15 - 8);
  v338 = &v265 - v16;
  v17 = sub_6620C(&qword_3C2AB0);
  __chkstk_darwin(v17 - 8);
  v314 = &v265 - v18;
  v323 = sub_2C0AF8();
  v315 = *(v323 - 8);
  __chkstk_darwin(v323);
  v343 = &v265 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_2BF368();
  v283 = *(v284 - 8);
  __chkstk_darwin(v284);
  v282 = &v265 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_6620C(&qword_3C2AB8);
  __chkstk_darwin(v21 - 8);
  v288 = &v265 - v22;
  v23 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v23 - 8);
  v344 = &v265 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v299 = &v265 - v26;
  v298 = sub_2C1B58();
  v297 = *(v298 - 8);
  __chkstk_darwin(v298);
  v296 = &v265 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_2BE9E8();
  v303 = *(v304 - 8);
  __chkstk_darwin(v304);
  v305 = &v265 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = sub_2BEA38();
  v307 = *(v308 - 8);
  __chkstk_darwin(v308);
  v309 = &v265 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = type metadata accessor for SeriesRoomListHeaderSegmentedItem();
  __chkstk_darwin(v278);
  v295 = &v265 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_6620C(&qword_3C15B8);
  __chkstk_darwin(v31 - 8);
  v290 = &v265 - v32;
  v301 = type metadata accessor for SeriesRoomListHeaderComponentModel();
  v289 = *(v301 - 8);
  __chkstk_darwin(v301);
  v293 = &v265 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_2C21D8();
  v331 = *(v319 - 8);
  __chkstk_darwin(v319);
  v321 = &v265 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = sub_2C2258();
  v330 = *(v341 - 1);
  __chkstk_darwin(v341);
  v320 = &v265 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = sub_2C2198();
  v327 = *(v328 - 8);
  __chkstk_darwin(v328);
  v329 = &v265 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_6620C(&unk_3BDC80);
  __chkstk_darwin(v37 - 8);
  v318 = &v265 - v38;
  v306 = sub_2BF408();
  v322 = *(v306 - 8);
  __chkstk_darwin(v306);
  v280 = &v265 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v276 = &v265 - v41;
  __chkstk_darwin(v42);
  v279 = &v265 - v43;
  __chkstk_darwin(v44);
  v285 = &v265 - v45;
  __chkstk_darwin(v46);
  v287 = &v265 - v47;
  v313 = sub_2C2168();
  v312 = *(v313 - 8);
  __chkstk_darwin(v313);
  v349 = &v265 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_6620C(&qword_3C2AC0);
  __chkstk_darwin(v49 - 8);
  v325 = &v265 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v53 = &v265 - v52;
  v346 = sub_2C1CB8();
  v378 = *(v346 - 8);
  __chkstk_darwin(v346);
  v337 = &v265 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v348 = &v265 - v56;
  v358 = sub_2C1D08();
  v357 = *(v358 - 8);
  __chkstk_darwin(v358);
  v336 = &v265 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v302 = &v265 - v59;
  __chkstk_darwin(v60);
  v62 = &v265 - v61;
  v353 = sub_2C1B98();
  v352 = *(v353 - 8);
  __chkstk_darwin(v353);
  v335 = &v265 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v291 = &v265 - v65;
  __chkstk_darwin(v66);
  v68 = &v265 - v67;
  v69 = sub_6620C(&qword_3BDE70);
  __chkstk_darwin(v69 - 8);
  v334 = &v265 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v286 = (&v265 - v72);
  __chkstk_darwin(v73);
  v277 = &v265 - v74;
  __chkstk_darwin(v75);
  v77 = &v265 - v76;
  v354 = sub_2C22F8();
  v333 = *(v354 - 8);
  __chkstk_darwin(v354);
  v347 = &v265 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = _s11ShelfGridIDVMa();
  __chkstk_darwin(v311);
  v310 = &v265 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v332 = &v265 - v81;
  LODWORD(v345) = *a2;
  v326 = *a4;
  v82 = sub_2BEA28();
  v83 = *(v82 - 8);
  v84 = *(v83 + 56);
  v85 = v83 + 56;
  v355 = v77;
  v300 = v84;
  v84(v77, 1, 1, v82);
  v351 = v68;
  sub_2C1B88();
  v356 = v62;
  sub_2C1CC8();
  v86 = sub_2C0E58();
  v87 = *(v86 - 8);
  v88 = *(v87 + 56);
  v350 = v53;
  v88(v53, 1, 1, v86);
  v377 = 0;
  v375 = 0u;
  v376 = 0u;
  v89 = a1[3];
  v359 = a1;
  sub_72084(a1, v89);
  v90 = v361;
  sub_2BF328();
  if (v90)
  {
    sub_69198(v350, &qword_3C2AC0);
    (*(v357 + 8))(v356, v358);
    (*(v352 + 8))(v351, v353);
    sub_69198(v355, &qword_3BDE70);
    return sub_69198(&v375, &qword_3C2AC8);
  }

  v268 = v87;
  v269 = v85;
  v270 = v82;
  v273 = v88;
  v274 = v87 + 56;
  v275 = v86;
  v324 = 0;
  swift_getAssociatedTypeWitness();
  sub_6620C(&qword_3BC2C8);
  v92 = sub_2C6358();

  sub_72084(v359, v359[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = sub_2C60B8();
  v361 = &v265;
  v95 = *(v94 - 8);
  __chkstk_darwin(v94);
  v97 = &v265 - v96;
  sub_2BF388();
  v98 = *(AssociatedTypeWitness - 8);
  if ((*(v98 + 48))(v97, 1, AssociatedTypeWitness) == 1)
  {
    (*(v95 + 8))(v97, v94);
    AssociatedConformanceWitness = 0;
    v369 = 0u;
    v370 = 0u;
    sub_69198(&v369, &qword_3BDAC8);
    sub_72084(v359, v359[3]);
    v99 = sub_2BF3E8();
    v100 = v345;
    v101 = v331;
    if (v99)
    {

      v102 = v326;
      v103 = v92;
      goto LABEL_8;
    }
  }

  else
  {
    *(&v370 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v104 = sub_720C8(&v369);
    (*(v98 + 32))(v104, v97, AssociatedTypeWitness);
    sub_69198(&v369, &qword_3BDAC8);
    v100 = v345;
    v101 = v331;
  }

  v103 = sub_2BF708();

  v102 = v326;
LABEL_8:
  v105 = v329;
  v106 = v328;
  LOBYTE(v369) = v100;
  v107 = sub_1F9C0C(v103);

  v108 = v100 == 2 && v107[2] == 0;
  v109 = v359;
  v110 = v327;
  v271 = v108;
  v360 = 0xD000000000000015;
  v272 = v107;
  if (v102)
  {
    v361 = 0x8000000000304410;
    (*(v330 + 56))(v318, 1, 1, v341);
    v110[13](v105, enum case for Metrics.LocationType.section(_:), v106);
    sub_2C22E8();
    sub_72084(v109, v109[3]);
    v111 = v288;
    sub_2BF2A8();
    v112 = sub_2BF698();
    v113 = *(v112 - 8);
    if ((*(v113 + 48))(v111, 1, v112) == 1)
    {
      sub_69198(v111, &qword_3C2AB8);
      v114 = v321;
      v115 = v320;
      v116 = v319;
    }

    else
    {
      v127 = sub_2BF688();
      (*(v113 + 8))(v111, v112);
      v115 = v320;
      v116 = v319;
      if (v127)
      {
        v114 = v321;
        if (*(v127 + 16))
        {
        }
      }

      else
      {
        v114 = v321;
      }
    }

    (*(v330 + 104))(v115, enum case for Metrics.IdType.sequential(_:), v341);
    (*(v101 + 104))(v114, enum case for Metrics.ImpressionType.section(_:), v116);
    sub_2C2268();
    v145 = v359;
    sub_72084(v359, v359[3]);
    sub_2BF3B8();
    sub_2C2158();
    sub_72084(v145, v145[3]);
    sub_2BF3B8();
    (*(v307 + 104))(v309, enum case for SectionType.swoosh(_:), v308);
    (*(v303 + 104))(v305, enum case for SectionData.ComponentContained.swoosh(_:), v304);
    v146 = v286;
    sub_2BEA08();
    v147 = v355;
    sub_69198(v355, &qword_3BDE70);
    v300(v146, 0, 1, v270);
    sub_69130(v146, v147, &qword_3BDE70);
    v148 = v302;
    sub_2C1CC8();
    v149 = v357;
    v150 = v356;
    v151 = v358;
    (*(v357 + 8))(v356, v358);
    (*(v149 + 32))(v150, v148, v151);
    sub_2C1C78();
    if (v294)
    {
      sub_72084(v145, v145[3]);
      v152 = swift_getAssociatedTypeWitness();
      v153 = sub_2C60B8();
      v341 = &v265;
      v154 = *(v153 - 8);
      __chkstk_darwin(v153);
      v156 = &v265 - v155;
      sub_2BF388();
      v157 = *(v152 - 8);
      if ((*(v157 + 48))(v156, 1, v152) == 1)
      {
        (*(v154 + 8))(v156, v153);
        AssociatedConformanceWitness = 0;
        v369 = 0u;
        v370 = 0u;
        sub_69198(&v369, &qword_3BDAC8);
        sub_72084(v145, v145[3]);
        v158 = sub_2BF338();
        v160 = v159;
        v161 = v350;
        sub_69198(v350, &qword_3C2AC0);
        sub_69198(&v375, &qword_3C2AC8);
        v162 = v354;
        if (v160)
        {
          *v161 = v158;
          v161[1] = v160;
          v161[2] = 0;
          v161[3] = 0;
          v163 = v275;
          (*(v268 + 104))(v161, enum case for PaginationInfo.nextHref(_:), v275);
          v164 = v161;
          v165 = 0;
          v166 = v163;
        }

        else
        {
          v164 = v161;
          v165 = 1;
          v166 = v275;
        }

        v273(v164, v165, 1, v166);
        v133 = v344;
        v168 = v359;
      }

      else
      {
        *(&v370 + 1) = v152;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v170 = sub_720C8(&v369);
        (*(v157 + 32))(v170, v156, v152);
        sub_69198(&v369, &qword_3BDAC8);
        v171 = v272;
        v172 = v272[2];
        if (v172 >= 0xA)
        {
          v173 = 10;
        }

        else
        {
          v173 = v272[2];
        }

        if (v172 > 0xA)
        {
          v177 = v172 - v173;
          *&v367[0] = _swiftEmptyArrayStorage;

          result = sub_649D4(0, v177 & ~(v177 >> 63), 0);
          if (v177 < 0)
          {
LABEL_103:
            __break(1u);
            return result;
          }

          v175 = *&v367[0];
          v178 = &v171[5 * v173 + 4];
          v176 = v275;
          while (v177)
          {
            sub_691F8(v178, &v369);
            sub_72084(&v369, *(&v370 + 1));
            v179 = sub_2BF3B8();
            v181 = v180;
            result = sub_68CD0(&v369);
            *&v367[0] = v175;
            v183 = v175[2];
            v182 = v175[3];
            if (v183 >= v182 >> 1)
            {
              result = sub_649D4((v182 > 1), v183 + 1, 1);
              v175 = *&v367[0];
            }

            v175[2] = v183 + 1;
            v184 = &v175[2 * v183];
            v184[4] = v179;
            v184[5] = v181;
            v178 += 40;
            --v177;
            v168 = v359;
            v162 = v354;
            if (!v177)
            {

              v174 = v350;
              sub_69198(v350, &qword_3C2AC0);
              goto LABEL_53;
            }
          }

LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v174 = v350;
        sub_69198(v350, &qword_3C2AC0);
        v175 = _swiftEmptyArrayStorage;
        v168 = v359;
        v162 = v354;
        v176 = v275;
LABEL_53:
        v185 = v268;
        sub_69198(&v375, &qword_3C2AC8);
        *v174 = v175;
        (*(v185 + 104))(v174, enum case for PaginationInfo.nextAssetIDs(_:), v176);
        v273(v174, 0, 1, v176);
        v133 = v344;
      }

      v169 = v271;
    }

    else
    {
      v167 = v350;
      sub_69198(v350, &qword_3C2AC0);
      sub_69198(&v375, &qword_3C2AC8);
      v273(v167, 1, 1, v275);
      v168 = v145;
      v162 = v354;
      v169 = v271;
      v133 = v344;
    }

    v341 = 0x80000000003043F0;
    *(&v376 + 1) = &_s36SeriesSeeAllPaginationIntentProviderVN;
    v377 = &off_38F420;
    v186 = swift_allocObject();
    *&v375 = v186;
    sub_691F8(v168, v186 + 16);
    *(v186 + 56) = v345;
    v331 = 0xD000000000000013;
    if (!v169)
    {
      goto LABEL_58;
    }

LABEL_92:

    v222 = type metadata accessor for ContentUnavailableComponentModel();
    v329 = sub_1577FC(&qword_3BD3A8, type metadata accessor for ContentUnavailableComponentModel);
    sub_6620C(&qword_3BC1D0);
    v194 = swift_allocObject();
    *(v194 + 1) = xmmword_2E3F30;
    sub_72084(v168, v168[3]);
    v223 = v282;
    sub_2BF278();
    v168 = v359;
    LOBYTE(v369) = v326;
    v330 = v222;
    v194[7] = v222;
    v194[8] = sub_1577FC(&qword_3C2AD8, type metadata accessor for ContentUnavailableComponentModel);
    v224 = sub_720C8(v194 + 4);
    sub_1BFEE0(v223, &v369, v224);
    (*(v283 + 8))(v223, v284);
    v191 = v378;
    v197 = v133;
    goto LABEL_93;
  }

  sub_72084(v359, v359[3]);
  v117 = sub_2BF3B8();
  v361 = v118;
  sub_72084(v109, v109[3]);
  v119 = v287;
  sub_2BF288();
  v120 = v322;
  v121 = v285;
  v122 = v306;
  v266 = *(v322 + 16);
  v294 = v322 + 16;
  v266(v285, v119, v306);
  v286 = *(v120 + 88);
  v268 = v120 + 88;
  v123 = v286(v121, v122);
  v267 = enum case for ContentKind.pdf(_:);
  v124 = v318;
  v288 = v117;
  if (v123 == enum case for ContentKind.pdf(_:))
  {
    v125 = v330;
    v126 = v327;
  }

  else
  {
    v125 = v330;
    v126 = v327;
    if (v123 != enum case for ContentKind.audiobook(_:) && v123 != enum case for ContentKind.regularBook(_:) && v123 != enum case for ContentKind.manga(_:) && v123 != enum case for ContentKind.unknownBook(_:))
    {
      (*(v120 + 8))(v121, v122);
    }
  }

  v128 = *(v120 + 8);
  v322 = v120 + 8;
  v327 = v128;
  (v128)(v119, v122);
  v129 = enum case for Metrics.IdType.itsId(_:);
  v330 = *(v125 + 104);
  v130 = v341;
  (v330)(v124, enum case for Metrics.IdType.itsId(_:), v341);
  (*(v125 + 56))(v124, 0, 1, v130);
  v126[13](v329, enum case for Metrics.LocationType.filter(_:), v328);

  sub_2C22E8();
  v131 = v359;
  sub_72084(v359, v359[3]);
  sub_2BF3B8();
  (v330)(v320, v129, v130);
  (*(v331 + 104))(v321, enum case for Metrics.ImpressionType.section(_:), v319);
  sub_2C2268();
  sub_72084(v131, v131[3]);
  sub_2BF3C8();
  sub_2C2158();
  v132 = v290;
  sub_6932C(v292, v290, &qword_3C15B8);
  if ((*(v289 + 48))(v132, 1, v301) == 1)
  {
    sub_69198(v132, &qword_3C15B8);
    v133 = v344;
    v134 = v353;
    v135 = v352;
    v136 = v351;
  }

  else
  {
    sub_1571B8(v132, v293, type metadata accessor for SeriesRoomListHeaderComponentModel);
    sub_6620C(&qword_3C0370);
    v137 = v295;
    sub_2C1C48();
    v138 = *(v278 + 28);
    v139 = v279;
    v140 = v306;
    v141 = v266;
    v266(v279, (v137 + v138), v306);
    v142 = v286(v139, v140);
    v133 = v344;
    v136 = v351;
    if (v142 == v267)
    {
      v341 = 0x8000000000302710;
      v143 = v305;
      v144 = v280;
    }

    else
    {
      v143 = v305;
      v144 = v280;
      if (v142 == enum case for ContentKind.audiobook(_:))
      {
        v341 = 0x8000000000302770;
      }

      else if (v142 == enum case for ContentKind.regularBook(_:))
      {
        v341 = 0x8000000000302750;
      }

      else if (v142 == enum case for ContentKind.manga(_:))
      {
        v341 = 0x8000000000302730;
      }

      else if (v142 == enum case for ContentKind.unknownBook(_:))
      {
        v341 = 0x80000000003026F0;
      }

      else
      {
        v141(v276, v137 + v138, v140);
        sub_2C5928();
        v341 = v198;
        (v327)(v279, v140);
      }
    }

    v141(v144, v137 + v138, v140);
    v199 = v286(v144, v140);
    if (v199 == v267)
    {
      v200 = v309;
      v201 = v308;
      v202 = v307;
    }

    else
    {
      v200 = v309;
      v201 = v308;
      v202 = v307;
      if (v199 != enum case for ContentKind.audiobook(_:) && v199 != enum case for ContentKind.regularBook(_:) && v199 != enum case for ContentKind.manga(_:) && v199 != enum case for ContentKind.unknownBook(_:))
      {
        v203 = v137 + v138;
        v204 = v306;
        v141(v276, v203, v306);
        sub_2C5928();
        (v327)(v280, v204);
        v202 = v307;
        v201 = v308;
        v200 = v309;
      }
    }

    (*(v202 + 104))(v200, enum case for SectionType.swoosh(_:), v201);
    (*(v303 + 104))(v143, enum case for SectionData.ComponentContained.swoosh(_:), v304);
    v205 = v277;
    sub_2BEA08();
    v206 = v355;
    sub_69198(v355, &qword_3BDE70);
    v300(v205, 0, 1, v270);
    sub_69130(v205, v206, &qword_3BDE70);
    *(&v370 + 1) = v301;
    AssociatedConformanceWitness = sub_1577FC(&qword_3C1690, type metadata accessor for SeriesRoomListHeaderComponentModel);
    v207 = sub_720C8(&v369);
    v208 = v293;
    sub_157220(v293, v207, type metadata accessor for SeriesRoomListHeaderComponentModel);
    v209 = v302;
    sub_2C1CE8();
    sub_157288(v295, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    sub_157288(v208, type metadata accessor for SeriesRoomListHeaderComponentModel);
    v210 = v357;
    v211 = v356;
    v212 = v358;
    (*(v357 + 8))(v356, v358);
    (*(v210 + 32))(v211, v209, v212);
    v134 = v353;
    v135 = v352;
  }

  v162 = v354;
  v213 = v291;
  (*(v297 + 104))(v296, enum case for ShelfBackgroundViewModel.BackgroundKind.none(_:), v298);
  sub_2C1B68();
  (*(v135 + 8))(v136, v134);
  (*(v135 + 32))(v136, v213, v134);
  v214 = v359;
  sub_72084(v359, v359[3]);
  sub_2BF338();
  if (v215)
  {

    v216 = v342;
    v168 = v214;
    v217 = v299;
LABEL_84:
    v331 = 0x6C2D736569726573;
    *&v369 = 0xD000000000000015;
    *(&v369 + 1) = 0x8000000000304430;
    sub_2C61A8();
    sub_15523C(v168, v345, v216, &v372);
    v218 = sub_2C5018();
    (*(*(v218 - 8) + 56))(v217, 1, 1, v218);
    *(&v370 + 1) = sub_2C1FD8();
    AssociatedConformanceWitness = sub_1577FC(&qword_3BD438, &type metadata accessor for ShelfFooterSeeAllComponentModel);
    sub_720C8(&v369);
    sub_2C1FB8();
    sub_2C1C98();
    goto LABEL_91;
  }

  sub_72084(v214, v214[3]);
  v219 = sub_2BF2C8();
  if (v220)
  {
    sub_72084(v214, v214[3]);
    v219 = sub_2BF2F8();
    v216 = v342;
    v168 = v214;
    v217 = v299;
    if (v221)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v216 = v342;
    v168 = v214;
    v217 = v299;
  }

  if (v219 >= 11)
  {
    goto LABEL_84;
  }

LABEL_90:
  v331 = 0x6C2D736569726573;
  sub_2C1CA8();
LABEL_91:
  v341 = 0xEB00000000747369;
  v360 = v288;
  if (v271)
  {
    goto LABEL_92;
  }

LABEL_58:
  v187 = type metadata accessor for ListItemComponentModel();
  v188 = sub_1577FC(&qword_3BD3F8, type metadata accessor for ListItemComponentModel);
  v189 = v272[2];
  if (v189 >= 0xA)
  {
    v190 = 10;
  }

  else
  {
    v190 = v272[2];
  }

  v191 = v378;
  v330 = v187;
  v329 = v188;
  if (v189)
  {
    *&v364 = _swiftEmptyArrayStorage;
    v192 = (v272 + 4);
    result = sub_64994(0, v190, 0);
    v168 = v359;
    v193 = 0;
    v194 = v364;
    while (v190 != v193)
    {
      sub_691F8(v192, &v369 + 8);
      *&v367[0] = v193;
      sub_68D1C((&v369 + 8), v367 + 8);
      sub_155FF4(v193, v367 + 1, v168, v360, v361, &v372);
      sub_69198(v367, &unk_3BDC50);
      *&v364 = v194;
      v196 = v194[2];
      v195 = v194[3];
      if (v196 >= v195 >> 1)
      {
        sub_64994((v195 > 1), v196 + 1, 1);
        v168 = v359;
        v194 = v364;
      }

      v194[2] = v196 + 1;
      result = sub_68D1C(&v372, &v194[5 * v196 + 4]);
      ++v193;
      v192 += 40;
      v191 = v378;
      if (v190 == v193)
      {

        v197 = v344;
        v162 = v354;
        goto LABEL_93;
      }
    }

    __break(1u);
    goto LABEL_102;
  }

  v194 = _swiftEmptyArrayStorage;
  v197 = v344;
LABEL_93:
  sub_72084(v168, v168[3]);
  v225 = sub_2BF3B8();
  v227 = v226;
  v228 = *(v311 + 28);
  v229 = sub_2BF738();
  v230 = v332;
  (*(*(v229 - 8) + 16))(v332 + v228, v342, v229);
  v231 = v341;
  *v230 = v331;
  *(v230 + 8) = v231;
  *(v230 + 16) = v225;
  *(v230 + 24) = v227;
  *(v230 + 32) = v345;
  sub_157220(v230, v310, _s11ShelfGridIDVMa);
  sub_1577FC(&qword_3C2AD0, _s11ShelfGridIDVMa);
  sub_2C61A8();
  v232 = sub_2C0A78();
  (*(*(v232 - 8) + 56))(v314, 1, 1, v232);
  sub_2C0A88();
  v361 = sub_28F3C8(v194);

  sub_2C2138();
  v233 = sub_2C5018();
  v234 = *(v233 - 8);
  v359 = *(v234 + 56);
  v360 = (v234 + 56);
  (v359)(v197, 0, 1, v233);
  v235 = v333;
  v236 = v338;
  (*(v333 + 16))(v338, v347, v162);
  v342 = *(v235 + 56);
  v342(v236, 0, 1, v162);
  sub_6932C(v355, v334, &qword_3BDE70);
  (*(v352 + 16))(v335, v351, v353);
  (*(v357 + 16))(v336, v356, v358);
  (*(v191 + 16))(v337, v348, v346);
  v237 = type metadata accessor for ContentUnavailableComponentModel();
  v238 = *(*(v237 - 8) + 56);
  v238(v339, 1, 1, v237);
  v239 = v340;
  sub_2BFE38();
  v240 = sub_2BFE68();
  (*(*(v240 - 8) + 56))(v239, 0, 1, v240);
  v241 = v325;
  sub_6932C(v350, v325, &qword_3C2AC0);
  sub_6932C(&v375, v367, &qword_3C2AC8);
  v242 = v316;
  v243 = v317;
  v345 = &v317[*(v316 + 32)];
  (v359)();
  v359 = (v243 + v242[9]);
  (v342)();
  v244 = v243 + v242[16];
  v245 = v343;
  v238(v244, 1, 1, v237);
  v246 = v361;
  v247 = (v243 + v242[18]);
  v273(v247, 1, 1, v275);
  v248._rawValue = v246;
  v249 = v324;
  sub_2C0AB8(v248);
  v324 = v249;
  v360 = v244;
  if (v249)
  {

    sub_69198(v367, &qword_3C2AC8);
    sub_69198(v241, &qword_3C2AC0);
    sub_69198(v340, &qword_3C1C70);
    sub_69198(v339, &qword_3C1A00);
    v378 = *(v378 + 8);
    (v378)(v337, v346);
    v361 = *(v357 + 8);
    v250 = v358;
    (v361)(v336, v358);
    v357 = *(v352 + 8);
    v251 = v353;
    (v357)(v335, v353);
    sub_69198(v334, &qword_3BDE70);
    sub_69198(v338, &qword_3C1730);
    sub_69198(v344, &qword_3BDF58);
    (*(v315 + 8))(v245, v323);
    sub_69198(&v369, &qword_3BE008);
    (*(v312 + 8))(v349, v313);
    sub_69198(v350, &qword_3C2AC0);
    (v378)(v348, v346);
    (v361)(v356, v250);
    (v357)(v351, v251);
    sub_69198(v355, &qword_3BDE70);
    (*(v333 + 8))(v347, v354);
    sub_157288(v332, _s11ShelfGridIDVMa);
    sub_69198(v345, &qword_3BDF58);
    sub_69198(v359, &qword_3C1730);
    sub_69198(v360, &qword_3C1A00);
    sub_69198(v247, &qword_3C2AC0);
  }

  else
  {
    v342 = v247;
    v252 = v331;
    v253 = v341;
    *v243 = v331;
    *(v243 + 8) = v253;
    sub_6932C(&v369, &v364, &qword_3BE008);
    if (*(&v365 + 1))
    {
      sub_69198(&v369, &qword_3BE008);
      (*(v312 + 8))(v349, v313);
      sub_69198(v350, &qword_3C2AC0);
      v254 = v378;
      (*(v378 + 8))(v348, v346);
      v255 = v357;
      (*(v357 + 8))(v356, v358);
      v256 = v352;
      v257 = v353;
      (*(v352 + 8))(v351, v353);
      sub_69198(v355, &qword_3BDE70);
      (*(v333 + 8))(v347, v354);
      sub_157288(v332, _s11ShelfGridIDVMa);
      v372 = v364;
      v373 = v365;
      v374 = v366;
      v258 = v338;
      v259 = v323;
      v260 = v315;
    }

    else
    {
      v362 = v252;
      v363 = v253;

      sub_2C61A8();
      sub_69198(&v369, &qword_3BE008);
      (*(v312 + 8))(v349, v313);
      sub_69198(v350, &qword_3C2AC0);
      v254 = v378;
      (*(v378 + 8))(v348, v346);
      v255 = v357;
      (*(v357 + 8))(v356, v358);
      v256 = v352;
      v257 = v353;
      (*(v352 + 8))(v351, v353);
      sub_69198(v355, &qword_3BDE70);
      (*(v333 + 8))(v347, v354);
      sub_157288(v332, _s11ShelfGridIDVMa);
      v258 = v338;
      v259 = v323;
      v260 = v315;
      if (*(&v365 + 1))
      {
        sub_69198(&v364, &qword_3BE008);
        v259 = v323;
      }
    }

    v261 = v243 + v242[10];
    v262 = v373;
    *v261 = v372;
    *(v261 + 16) = v262;
    *(v261 + 32) = v374;
    *(v243 + v242[11]) = 0;
    *(v243 + 16) = 1;
    (*(v260 + 32))(v243 + v242[6], v343, v259);
    *(v243 + v242[17]) = v361;
    *(v243 + v242[7]) = 1;
    sub_A9708(v344, v345, &qword_3BDF58);
    sub_A9708(v258, v359, &qword_3C1730);
    sub_69130(v334, v243 + v242[20], &qword_3BDE70);
    (*(v256 + 32))(v243 + v242[13], v335, v257);
    (*(v255 + 32))(v243 + v242[14], v336, v358);
    (*(v254 + 32))(v243 + v242[15], v337, v346);
    sub_A9708(v339, v360, &qword_3C1A00);
    sub_69130(v340, v243 + v242[12], &qword_3C1C70);
    sub_A9708(v325, v342, &qword_3C2AC0);
    v263 = v243 + v242[19];
    v264 = v367[1];
    *v263 = v367[0];
    *(v263 + 16) = v264;
    *(v263 + 32) = v368;
    sub_1571B8(v243, v281, type metadata accessor for Shelf);
  }

  return sub_69198(&v375, &qword_3C2AC8);
}

uint64_t sub_15523C@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v81 = a3;
  v84 = a2;
  v89 = a4;
  v90 = a1;
  v88 = sub_2C06E8();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3BCE28);
  __chkstk_darwin(v5 - 8);
  v85 = &v61 - v6;
  v80 = sub_2C1A28();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2C0838();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v76 = &v61 - v10;
  v11 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v11 - 8);
  v74 = &v61 - v12;
  v73 = sub_2C22F8();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2BE3B8();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2C2208();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2C2178();
  v62 = *(v64 - 8);
  v17 = v62;
  __chkstk_darwin(v64);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2C4BF8();
  v93 = *(v68 - 8);
  __chkstk_darwin(v68);
  v94 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v92 = &v61 - v22;
  v23 = sub_2BEB28();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2BF048();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_2BF088();
  v63 = *(v91 - 8);
  v31 = __chkstk_darwin(v91);
  v33 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 104))(v30, enum case for ClickData.TargetType.navigate(_:), v27, v31);
  (*(v24 + 104))(v26, enum case for LinkActionType.click(_:), v23);
  v75 = v33;
  sub_2BF058();
  v34 = v64;
  (*(v17 + 104))(v19, enum case for Metrics.TargetType.button(_:), v64);
  v35 = v66;
  v36 = v65;
  v37 = v67;
  (*(v66 + 104))(v65, enum case for Metrics.ClickActionType.navigate(_:), v67);
  sub_72084(v90, v90[3]);
  sub_2BF318();
  sub_2BE378();
  (*(v69 + 8))(v15, v70);
  v38 = v71;
  sub_2C22A8();
  v39 = v92;
  sub_2C2118();

  (*(v72 + 8))(v38, v73);
  (*(v35 + 8))(v36, v37);
  (*(v62 + 8))(v19, v34);
  v40 = v68;
  (*(v93 + 16))(v94, v39, v68);
  v41 = v63;
  v42 = v74;
  v43 = v91;
  (*(v63 + 16))(v74, v33, v91);
  (*(v41 + 56))(v42, 0, 1, v43);
  v44 = type metadata accessor for SeriesSeeAllPageIntent();
  v96[3] = v44;
  v96[4] = sub_1577FC(&qword_3BD308, type metadata accessor for SeriesSeeAllPageIntent);
  v45 = sub_720C8(v96);
  v46 = v90;
  sub_691F8(v90, v45);
  v47 = *(v44 + 24);
  v48 = sub_2BF738();
  (*(*(v48 - 8) + 16))(v45 + v47, v81, v48);
  v49 = *(v44 + 28);
  v50 = enum case for Metrics.NavigationType.forward(_:);
  v51 = sub_2C21F8();
  (*(*(v51 - 8) + 104))(v45 + v49, v50, v51);
  *(v45 + 40) = v84;
  v52 = v46;
  sub_72084(v46, v46[3]);
  sub_2BF3C8();
  (*(v78 + 104))(v77, enum case for NavigationBarTitleStyle.inline(_:), v80);
  v53 = v76;
  sub_2C0808();
  v97[3] = sub_6620C(&qword_3BD490);
  v97[4] = sub_1572E8();
  sub_720C8(v97);
  sub_691F8(v96, v95);
  v54 = v82;
  v55 = v83;
  (*(v82 + 16))(v79, v53, v83);
  type metadata accessor for Page();
  sub_1577FC(&qword_3BD4F0, type metadata accessor for Page);
  sub_2C04C8();
  (*(v54 + 8))(v53, v55);
  sub_68CD0(v96);
  sub_72084(v52, v52[3]);
  sub_2BF3C8();
  sub_72084(v52, v52[3]);
  sub_2BF3B8();
  (*(v87 + 104))(v86, enum case for ActionOrigin.Kind.footer(_:), v88);
  v56 = v85;
  sub_2C0758();
  v57 = sub_2C0778();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  sub_2C5348();
  v58 = sub_2C0578();
  v59 = v89;
  v89[3] = v58;
  v59[4] = sub_1577FC(&qword_3C2AE0, &type metadata accessor for FlowAction);
  sub_720C8(v59);
  sub_2C0548();
  (*(v93 + 8))(v92, v40);
  return (*(v41 + 8))(v75, v91);
}

uint64_t sub_155FF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v78 = a5;
  v79 = a4;
  v81 = a1;
  v75 = a6;
  v8 = sub_2C4BD8();
  __chkstk_darwin(v8 - 8);
  v85 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6620C(&qword_3C0820);
  __chkstk_darwin(v10 - 8);
  v84 = v67 - v11;
  v12 = sub_6620C(&qword_3BF3C8);
  __chkstk_darwin(v12 - 8);
  v77 = v67 - v13;
  v14 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v14 - 8);
  v93 = v67 - v15;
  v16 = sub_2C5018();
  v91 = *(v16 - 8);
  v92 = v16;
  __chkstk_darwin(v16);
  v90 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2C21D8();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2C2258();
  v19 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2C2168();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v89 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_6620C(&qword_3BDCF8);
  __chkstk_darwin(v22 - 8);
  v24 = v67 - v23;
  v25 = sub_2C1348();
  v86 = v25;
  v76 = *(v25 - 8);
  v26 = v76;
  __chkstk_darwin(v25);
  v94 = v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v67 - v29;
  __chkstk_darwin(v31);
  v33 = v67 - v32;
  sub_72084(a3, a3[3]);
  sub_2BF3B8();
  sub_691F8(a2, &v99);
  sub_2C2318();
  v80 = v33;
  sub_2C1298();

  sub_69198(v24, &qword_3BDCF8);
  v87 = *(v26 + 16);
  v88 = v26 + 16;
  v71 = v30;
  v87(v30, v33, v25);
  sub_691F8(a2, &v99);
  sub_72084(a2, a2[3]);
  sub_2BF8F8();
  v67[2] = sub_2C2188();
  v67[1] = v34;
  v67[0] = type metadata accessor for ListItemComponentModel();
  v35 = v75;
  v75[3] = v67[0];
  v35[4] = sub_1577FC(&qword_3BE000, type metadata accessor for ListItemComponentModel);
  v68 = sub_720C8(v35);
  sub_72084(&v99, v100);
  sub_2BFA68();
  sub_72084(&v99, v100);
  sub_2BF3B8();
  (*(v19 + 104))(v69, enum case for Metrics.IdType.itsId(_:), v70);
  sub_72084(&v99, v100);
  v36 = sub_2BFA38();
  v37 = &enum case for Metrics.ImpressionType.uppLockup(_:);
  if ((v36 & 1) == 0)
  {
    v37 = &enum case for Metrics.ImpressionType.lockup(_:);
  }

  (*(v73 + 104))(v72, *v37, v74);
  sub_72084(&v99, v100);
  sub_2BFA58();

  sub_2C2158();
  v38 = v90;
  sub_2C2138();
  v39 = v86;
  v87(v94, v30, v86);
  v41 = v91;
  v40 = v92;
  v42 = v93;
  (*(v91 + 16))(v93, v38, v92);
  v43 = *(v41 + 56);
  v43(v42, 0, 1, v40);
  v44 = sub_2BEE38();
  v45 = *(*(v44 - 8) + 56);
  v46 = v77;
  v45(v77, 1, 1, v44);
  v47 = v68;
  v43(v68, 1, 1, v40);
  v48 = v67[0];
  v49 = v47 + *(v67[0] + 24);
  *(v49 + 32) = 0;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  v50 = *(v48 + 28);
  v81 = v50;
  v51 = v48;
  v78 = sub_2C5658();
  v52 = *(v78 - 8);
  v75 = *(v52 + 56);
  v79 = v52 + 56;
  (v75)(v47 + v50, 1, 1, v78);
  v53 = *(v51 + 32);
  v45((v47 + v53), 1, 1, v44);
  v87((v47 + *(v51 + 20)), v94, v39);
  sub_2C1288();
  v54 = v96;
  v55 = v97;
  v56 = sub_72084(v95, v96);
  v98[3] = v54;
  v98[4] = *(v55 + 8);
  v57 = sub_720C8(v98);
  (*(*(v54 - 8) + 16))(v57, v56, v54);
  sub_A9708(v98, v49, &unk_3BDC90);
  sub_68CD0(v95);
  v58 = v93;
  sub_15734C(v93, v47, &qword_3BDF58);
  sub_15734C(v46, v47 + v53, &qword_3BF3C8);
  sub_6620C(&qword_3C08C8);
  v59 = *(sub_2C5648() - 8);
  v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_2E3F30;
  v62 = (v61 + v60);
  *v62 = 0xD00000000000002DLL;
  v62[1] = 0x8000000000304480;
  (*(v59 + 104))();
  sub_2C4BC8();
  v63 = v84;
  sub_2C5638();
  sub_69198(v46, &qword_3BF3C8);
  sub_69198(v58, &qword_3BDF58);
  v64 = *(v76 + 8);
  v65 = v86;
  v64(v94, v86);
  (*(v91 + 8))(v90, v92);
  (*(v82 + 8))(v89, v83);
  v64(v71, v65);
  (v75)(v63, 0, 1, v78);
  sub_A9708(v63, v47 + v81, &qword_3C0820);
  v64(v80, v65);
  return sub_68CD0(&v99);
}

uint64_t _s11ShelfGridIDVMa()
{
  result = qword_3C2B40;
  if (!qword_3C2B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_156CF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3C2AC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_2C0E58();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Shelf();
  sub_6932C(a1 + *(v12 + 72), v7, &qword_3C2AC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_69198(v7, &qword_3C2AC0);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    v14 = *(v9 + 32);
    v14(v11, v7, v8);
    v15 = a1[1];
    v21 = *a1;
    v16 = type metadata accessor for SeriesSeeAllPaginationIntent();
    *(a2 + 24) = v16;
    *(a2 + 32) = sub_1577FC(&qword_3BD310, type metadata accessor for SeriesSeeAllPaginationIntent);
    v17 = sub_720C8(a2);
    sub_691F8(v2, (v17 + 2));
    v14(v17 + v16[6], v11, v8);
    v18 = *(*(a1 + *(v12 + 68)) + 16);
    v19 = *(v2 + 40);
    *v17 = v21;
    v17[1] = v15;
    *(v17 + v16[7]) = v18;
    *(v17 + v16[8]) = v19;
  }

  return result;
}

Swift::Int sub_156F50()
{
  sub_2C6738();
  sub_2C5958();
  sub_2C5958();
  sub_2C6748(*(v0 + 32));
  sub_2BF738();
  sub_1577FC(&qword_3C2B88, &type metadata accessor for SeriesListSortOrder);
  sub_2C5838();
  return sub_2C6778();
}

uint64_t sub_157014()
{
  sub_2C5958();
  sub_2C5958();
  sub_2C6748(*(v0 + 32));
  sub_2BF738();
  sub_1577FC(&qword_3C2B88, &type metadata accessor for SeriesListSortOrder);
  return sub_2C5838();
}

Swift::Int sub_1570BC()
{
  sub_2C6738();
  sub_2C5958();
  sub_2C5958();
  sub_2C6748(*(v0 + 32));
  sub_2BF738();
  sub_1577FC(&qword_3C2B88, &type metadata accessor for SeriesListSortOrder);
  sub_2C5838();
  return sub_2C6778();
}

uint64_t sub_157180()
{
  sub_68CD0(v0 + 16);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1571B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_157220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_157288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1572E8()
{
  result = qword_3BD498;
  if (!qword_3BD498)
  {
    sub_718D4(&qword_3BD490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD498);
  }

  return result;
}

uint64_t sub_15734C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_6620C(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1573B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1573FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_15746C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2BF738();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_15752C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2BF738();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1575D0()
{
  result = sub_2BF738();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1576A4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_2C65B8()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (sub_2C65B8()) && *(a1 + 32) == *(a2 + 32)))
  {
    _s11ShelfGridIDVMa();
    sub_2BF738();
    sub_1577FC(&qword_3C2B90, &type metadata accessor for SeriesListSortOrder);
    sub_2C5A88();
    sub_2C5A88();
    if (v10 == v8 && v11 == v9)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_2C65B8();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1577FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t UIBarButtonItem._anchoringToolbarView.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_3E8878);
  swift_endAccess();
  if (v1)
  {
    sub_2C6128();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_15791C();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_7A844(v6);
    return 0;
  }
}

unint64_t sub_15791C()
{
  result = qword_3C7E30;
  if (!qword_3C7E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3C7E30);
  }

  return result;
}

uint64_t sub_157968(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  objc_setAssociatedObject(v3, &unk_3E8878, v2, 0);
  return swift_endAccess();
}

void UIBarButtonItem._anchoringToolbarView.setter(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_3E8878, a1, 0);
  swift_endAccess();
}

void (*UIBarButtonItem._anchoringToolbarView.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = UIBarButtonItem._anchoringToolbarView.getter();
  return sub_157AB8;
}

void sub_157AB8(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  swift_beginAccess();
  v7 = v4;
  objc_setAssociatedObject(v6, &unk_3E8878, v7, 0);
  swift_endAccess();

  if (a2)
  {
    v7 = *v5;
  }

  free(v3);
}

uint64_t sub_157B5C@<X0>(uint64_t *a1@<X8>)
{
  result = UIBarButtonItem._anchoringToolbarView.getter();
  *a1 = result;
  return result;
}

id VCStackManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCStackManager();
  return objc_msgSendSuper2(&v2, "init");
}

id VCStackManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCStackManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s11BookStoreUI14VCStackManagerC7presentyySo16UIViewControllerC_SbSDys11AnyHashableVypGtFZ_0(void *a1, char a2, uint64_t a3)
{
  v6 = sub_2C48B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2C48D8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    sub_66278(0, &qword_3BEFB0);
    return sub_2C5E28();
  }

  else
  {
    sub_66278(0, &qword_3BFEF0);
    v20 = sub_2C5E88();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a3;
    *(v15 + 32) = a2 & 1;
    aBlock[4] = sub_15801C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_750DC;
    aBlock[3] = &unk_38F468;
    v16 = _Block_copy(aBlock);
    v17 = a1;

    sub_2C48C8();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_158098();
    sub_6620C(&qword_3C2BC8);
    sub_1580F0();
    sub_2C6158();
    v18 = v20;
    sub_2C5E98();
    _Block_release(v16);

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_157FDC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_158080(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_158098()
{
  result = qword_3C2BC0;
  if (!qword_3C2BC0)
  {
    sub_2C48B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2BC0);
  }

  return result;
}

unint64_t sub_1580F0()
{
  result = qword_3C2BD0;
  if (!qword_3C2BD0)
  {
    sub_718D4(&qword_3C2BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2BD0);
  }

  return result;
}

uint64_t sub_1581AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v58 = a5;
  v57 = a4;
  v56 = a3;
  v72 = a1;
  v7 = sub_6620C(&unk_3C4340);
  __chkstk_darwin(v7 - 8);
  v61 = &v49 - v8;
  v9 = sub_2BEF78();
  v64 = *(v9 - 8);
  v65 = v9;
  __chkstk_darwin(v9);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3BF3D8);
  __chkstk_darwin(v11 - 8);
  v55 = &v49 - v12;
  v54 = sub_2BE968();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v49 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2BEA98();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2BEA88();
  v62 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a2, v14, v19);
  sub_2BEA78();
  v67 = sub_6620C(&unk_3C43E0);
  v22 = sub_2BE798();
  v23 = *(v22 - 8);
  v24 = *(v23 + 80);
  v25 = (v24 + 32) & ~v24;
  v69 = *(v23 + 72);
  v26 = swift_allocObject();
  v71 = xmmword_2E3F30;
  *(v26 + 16) = xmmword_2E3F30;
  v27 = enum case for DataEventTrait.onlyOnce(_:);
  v66 = *(v23 + 104);
  v70 = v22;
  v66(v26 + v25, enum case for DataEventTrait.onlyOnce(_:), v22);
  v68 = "NSDictionary28";
  sub_15E5AC(&qword_3C2C00, &type metadata accessor for LocationData);
  v59 = v21;
  v63 = v18;
  sub_2BE768();

  v28 = swift_allocObject();
  *(v28 + 16) = v71;
  v29 = v22;
  v30 = v66;
  v66(v28 + v25, v27, v29);
  sub_2BF088();
  sub_15E5AC(&unk_3C0050, &type metadata accessor for ClickData);
  sub_2BE768();

  v53 = v24;
  v31 = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = v71;
  v51 = v25;
  LODWORD(v56) = v27;
  v30(v32 + v25, v27, v70);
  sub_2BEA28();
  sub_15E5AC(&unk_3C0030, &type metadata accessor for SectionData);
  v33 = v54;
  sub_2BE768();

  v34 = v55;
  sub_6932C(v58, v55, &qword_3BF3D8);
  v35 = v52;
  if ((*(v52 + 48))(v34, 1, v33) == 1)
  {
    sub_69198(v34, &qword_3BF3D8);
    v36 = v70;
  }

  else
  {
    v37 = v49;
    (*(v35 + 32))(v49, v34, v33);
    v38 = v51;
    v39 = swift_allocObject();
    *(v39 + 16) = v71;
    v40 = v70;
    v31(v39 + v38, v56, v70);
    sub_15E5AC(&qword_3BF460, &type metadata accessor for ContentData);
    sub_2BE768();

    (*(v35 + 8))(v37, v33);
    v36 = v40;
  }

  v41 = v61;
  sub_6932C(v60, v61, &unk_3C4340);
  v42 = v64;
  v43 = v65;
  if ((*(v64 + 48))(v41, 1, v65) == 1)
  {
    sub_69198(v41, &unk_3C4340);
  }

  else
  {
    v44 = v41;
    v45 = v50;
    (*(v42 + 32))(v50, v44, v43);
    v46 = v51;
    v47 = swift_allocObject();
    *(v47 + 16) = v71;
    v66(v47 + v46, v56, v36);
    sub_15E5AC(&unk_3C0040, &type metadata accessor for PageData);
    sub_2BE768();

    (*(v42 + 8))(v45, v43);
  }

  sub_2BE868();
  sub_15E5AC(&unk_3C0060, &type metadata accessor for ClickEvent);
  memset(v73, 0, 32);
  sub_2BE778();
  sub_69198(v73, qword_3C0250);
  return (*(v62 + 8))(v59, v63);
}

uint64_t sub_158B20()
{
  v0 = sub_2BED48();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BED38();
  sub_6620C(&unk_3C43E0);
  v4 = sub_2BE798();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2E3F30;
  (*(v5 + 104))(v7 + v6, enum case for DataEventTrait.onlyOnce(_:), v4);
  sub_15E5AC(&qword_3C2C08, &type metadata accessor for SingleCollectionData);
  sub_2BE768();

  sub_2BED08();
  sub_15E5AC(&qword_3C2C10, &type metadata accessor for AllInSeriesViewEvent);
  memset(v9, 0, sizeof(v9));
  sub_2BE778();
  sub_69198(v9, qword_3C0250);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_158DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v25 = a1;
  v23 = sub_2BEB28();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2BEF28();
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  __chkstk_darwin(v7);
  v26 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2BEE28();
  v11 = sub_15E5AC(&qword_3C2C18, &type metadata accessor for ContextualActionSheetExposureEvent);
  v27 = v10;
  v28 = v11;
  sub_2BE748();
  sub_2BEA18();
  sub_2BE9F8();
  sub_2BE948();
  (*(v4 + 104))(v6, enum case for LinkActionType.click(_:), v23);
  sub_2BEF18();
  v23 = sub_6620C(&unk_3C43E0);
  v12 = sub_2BE798();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v22 = xmmword_2E3F30;
  *(v15 + 16) = xmmword_2E3F30;
  v16 = enum case for DataEventTrait.onlyOnce(_:);
  v17 = *(v13 + 104);
  v17(v15 + v14, enum case for DataEventTrait.onlyOnce(_:), v12);
  sub_2BE968();
  sub_15E5AC(&qword_3BF460, &type metadata accessor for ContentData);
  sub_2BE768();

  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  v17(v18 + v14, v16, v12);
  sub_15E5AC(&qword_3C13A0, &type metadata accessor for LinkData);
  v19 = v26;
  v20 = v29;
  sub_2BE768();

  memset(v31, 0, sizeof(v31));
  sub_2BE778();
  sub_69198(v31, qword_3C0250);
  return (*(v30 + 8))(v19, v20);
}

uint64_t sub_15921C()
{
  sub_6620C(&unk_3C43E0);
  v0 = sub_2BE798();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2E3F30;
  (*(v1 + 104))(v3 + v2, enum case for DataEventTrait.onlyOnce(_:), v0);
  sub_2BE8C8();
  sub_15E5AC(&qword_3C2C20, &type metadata accessor for RatingData);
  sub_2BE768();

  sub_2BE9C8();
  sub_15E5AC(&qword_3C2C28, &type metadata accessor for RatingEvent);
  memset(v5, 0, sizeof(v5));
  sub_2BE778();
  return sub_69198(v5, qword_3C0250);
}

uint64_t sub_159408()
{
  sub_6620C(&unk_3C43E0);
  v0 = sub_2BE798();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2E3F30;
  v4 = enum case for DataEventTrait.onlyOnce(_:);
  v5 = *(v1 + 104);
  v5(v3 + v2, enum case for DataEventTrait.onlyOnce(_:), v0);
  sub_2BEBB8();
  sub_15E5AC(&qword_3C2C30, &type metadata accessor for DialogActionData);
  sub_2BE768();

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2E3F30;
  v5(v6 + v2, v4, v0);
  sub_2BE888();
  sub_15E5AC(&qword_3C2C38, &type metadata accessor for DialogData);
  sub_2BE768();

  sub_2BEC18();
  sub_15E5AC(&qword_3C2C40, &type metadata accessor for DialogActionEvent);
  memset(v8, 0, sizeof(v8));
  sub_2BE778();
  return sub_69198(v8, qword_3C0250);
}

uint64_t sub_1596B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[4] = a5;
  v7 = sub_2BEE18();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2BED88();
  v11 = sub_15E5AC(&qword_3C2C48, &type metadata accessor for SeriesDetailsViewEvent);
  v28[3] = v10;
  v28[2] = v11;
  sub_2BE748();
  v12 = sub_6620C(&unk_3C43E0);
  v13 = sub_2BE798();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v35 = *(v14 + 80);
  v36 = v15;
  v39 = v12;
  v17 = swift_allocObject();
  v34 = xmmword_2E3F30;
  *(v17 + 16) = xmmword_2E3F30;
  v18 = *(v14 + 104);
  v30 = v16;
  v33 = enum case for DataEventTrait.onlyOnce(_:);
  v37 = v14 + 104;
  v38 = v13;
  v32 = v18;
  v18(v17 + v16);
  sub_2BE8F8();
  sub_15E5AC(&qword_3C15D0, &type metadata accessor for SeriesData);
  v31 = "NSDictionary28";
  v40 = a1;
  sub_2BE768();

  if (a4)
  {
    v19 = sub_2BEC28();
    v20 = *(v19 + 16);
    if (v20)
    {
      v28[1] = v19;
      v21 = v19 + 32;
      ++v29;
      do
      {
        sub_14B0F0(v21, v42);
        sub_14B0F0(v42, v41);
        sub_6620C(&qword_3BC1A8);
        if (swift_dynamicCast())
        {
          (*v29)(v9, v7);
          sub_72084(v42, v42[3]);
          v22 = v9;
          v23 = v7;
          v24 = v30;
          v25 = swift_allocObject();
          *(v25 + 16) = v34;
          v26 = v25 + v24;
          v7 = v23;
          v9 = v22;
          v32(v26, v33, v38);
          sub_2BE768();
        }

        sub_68CD0(v42);
        v21 += 48;
        --v20;
      }

      while (v20);
    }
  }

  return sub_2BE758();
}

uint64_t sub_159AFC()
{
  sub_6620C(&unk_3C43E0);
  v0 = sub_2BE798();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2E3F30;
  v4 = enum case for DataEventTrait.onlyOnce(_:);
  v5 = *(v1 + 104);
  v5(v3 + v2, enum case for DataEventTrait.onlyOnce(_:), v0);
  sub_2BE8F8();
  sub_15E5AC(&qword_3C15D0, &type metadata accessor for SeriesData);
  sub_2BE768();

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2E3F30;
  v5(v6 + v2, v4, v0);
  sub_2BEBF8();
  sub_15E5AC(&qword_3C2C50, &type metadata accessor for FormatFilterData);
  sub_2BE768();

  sub_2BEC78();
  sub_15E5AC(&qword_3C2C58, &type metadata accessor for SeriesFilterEvent);
  memset(v8, 0, sizeof(v8));
  sub_2BE778();
  return sub_69198(v8, qword_3C0250);
}

uint64_t sub_159DA8()
{
  sub_2BED68();
  sub_15E5AC(&qword_3C2C60, &type metadata accessor for YearInReviewViewEvent);
  sub_2BE748();
  sub_2BEB78();
  sub_15E5AC(&qword_3C2C68, &type metadata accessor for YIRDetailedData);
  sub_2BE768();
  return sub_2BE758();
}

uint64_t sub_159ED8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_2C00B8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    sub_2C0068();

    v13 = sub_2C0098();
    v14 = sub_2C5DC8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_5CCF4(a2, a3, &v20);
      _os_log_impl(&dword_0, v13, v14, "Failed to retrieve assetCount for series id:%s. This will result in failing to emit AllInSeriesViewEvent", v15, 0xCu);
      sub_68CD0(v16);
    }

    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a2;
    v18[4] = a3;

    sub_2BEF88();
  }
}

uint64_t sub_15A10C(uint64_t a1, double a2)
{
  v25 = a1;
  v26 = sub_2BE8C8();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v26);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_2BEEE8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = *(v9 + 104);
  v16(&v23 - v14, enum case for Rating.unknown(_:), v8, v13);
  if (a2 == 0.2)
  {
    v17 = &enum case for Rating.one(_:);
LABEL_11:
    (*(v9 + 8))(v15, v8);
    (v16)(v15, *v17, v8);
    goto LABEL_12;
  }

  if (a2 == 0.4)
  {
    v17 = &enum case for Rating.two(_:);
    goto LABEL_11;
  }

  if (a2 == 0.6)
  {
    v17 = &enum case for Rating.three(_:);
    goto LABEL_11;
  }

  if (a2 == 0.8)
  {
    v17 = &enum case for Rating.four(_:);
    goto LABEL_11;
  }

  if (a2 == 1.0)
  {
    v17 = &enum case for Rating.five(_:);
    goto LABEL_11;
  }

LABEL_12:
  (*(v9 + 16))(v11, v15, v8);
  sub_2BE8B8();
  v18 = v24;
  v19 = v26;
  (*(v3 + 16))(v24, v7, v26);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  (*(v3 + 32))(v21 + v20, v18, v19);
  sub_2BEF88();

  (*(v3 + 8))(v7, v19);
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_15A468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a1;
  v50 = sub_2BE898();
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2BE888();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v44 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v6;
  __chkstk_darwin(v7);
  v42 = &v35 - v8;
  v43 = sub_2BEBB8();
  v40 = *(v43 - 8);
  v9 = *(v40 + 64);
  __chkstk_darwin(v43);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v35 - v11;
  v12 = sub_2BEBD8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = enum case for DialogActionType.unknown(_:);
  v17 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v18;
  v20 = *(v13 + 104);
  v20(v14);
  v39 = v13;
  if (a2 == 0x6C7566706C6568 && a3 == 0xE700000000000000 || (sub_2C65B8() & 1) != 0)
  {
    v38 = *(v13 + 8);
    v38(v17, v19);
    v21 = &enum case for DialogActionType.sortMostHelpful(_:);
  }

  else if (a2 == 0x6C6261726F766166 && a3 == 0xE900000000000065 || (sub_2C65B8() & 1) != 0)
  {
    v38 = *(v13 + 8);
    v38(v17, v19);
    v21 = &enum case for DialogActionType.sortMostFavorable(_:);
  }

  else if (a2 == 0x6C61636974697263 && a3 == 0xE800000000000000 || (sub_2C65B8() & 1) != 0)
  {
    v38 = *(v13 + 8);
    v38(v17, v19);
    v21 = &enum case for DialogActionType.sortMostCritical(_:);
  }

  else
  {
    if (a2 == 0x746E65636572 && a3 == 0xE600000000000000)
    {
      v38 = *(v13 + 8);
      v38(v17, v19);
    }

    else
    {
      v34 = sub_2C65B8();
      v38 = *(v13 + 8);
      v38(v17, v19);
      if ((v34 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v21 = &enum case for DialogActionType.sortMostRecent(_:);
  }

  v16 = *v21;
LABEL_6:
  v36 = v19;
  v37 = v17;
  (v20)(v17, v16, v19);
  sub_2BEBC8();
  v22 = v52;
  sub_2BEBA8();
  (*(v47 + 104))(v45, enum case for DialogType.sortReviews(_:), v50);
  v23 = v42;
  sub_2BE878();
  v25 = v40;
  v24 = v41;
  v26 = v43;
  (*(v40 + 16))(v41, v22, v43);
  v27 = v46;
  v28 = v44;
  v29 = v48;
  (*(v46 + 16))(v44, v23, v48);
  v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v31 = (v9 + *(v27 + 80) + v30) & ~*(v27 + 80);
  v32 = swift_allocObject();
  (*(v25 + 32))(v32 + v30, v24, v26);
  (*(v27 + 32))(v32 + v31, v28, v29);
  sub_2BEF88();

  (*(v27 + 8))(v23, v29);
  (*(v25 + 8))(v52, v26);
  return (v38)(v37, v36);
}

uint64_t sub_15AA90(void *a1, char *a2)
{
  v63 = a2;
  v3 = sub_2C4C08();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v72 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2BE8F8();
  v64 = *(v68 - 8);
  v6 = *(v64 + 64);
  __chkstk_darwin(v68);
  v67 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2BE588();
  v70 = *(v7 - 8);
  v8 = *(v70 + 64);
  __chkstk_darwin(v7);
  v66 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = v57 - v10;
  __chkstk_darwin(v11);
  v13 = v57 - v12;
  __chkstk_darwin(v14);
  v69 = v57 - v15;
  __chkstk_darwin(v16);
  v18 = v57 - v17;
  __chkstk_darwin(v19);
  v21 = v57 - v20;
  type metadata accessor for Page.LifecycleInfo();
  sub_2C4DB8();
  v22 = v74;
  sub_6620C(&qword_3BFBC8);
  v62 = a1;
  sub_2C4DB8();
  v71 = v74;
  swift_beginAccess();
  v23 = *(v22 + 16);
  if (!*(v23 + 16))
  {
    goto LABEL_11;
  }

  v24 = sub_5D350(2u);
  if ((v25 & 1) == 0)
  {

LABEL_11:
    sub_6620C(&qword_3BDAB8);
    (*(v4 + 104))(v72, enum case for ActionOutcome.unsupported(_:), v3);
    v53 = sub_2C56F8();

    return v53;
  }

  v60 = v4;
  v61 = v3;
  v26 = v70;
  v27 = *(v23 + 56) + *(v70 + 72) * v24;
  v28 = *(v70 + 16);
  v58 = *(v70 + 72);
  v59 = v28;
  v28(v18, v27, v7);

  v29 = v26 + 32;
  v30 = *(v26 + 32);
  v31 = v21;
  v32 = v29;
  v33 = v18;
  v34 = v30;
  v30(v31, v33, v7);
  v35 = *(v22 + 16);
  if (!*(v35 + 16))
  {
    goto LABEL_9;
  }

  v36 = sub_5D350(3u);
  if ((v37 & 1) == 0)
  {

LABEL_9:
    (*(v70 + 8))(v31, v7);
LABEL_10:
    v4 = v60;
    v3 = v61;
    goto LABEL_11;
  }

  v59(v13, *(v35 + 56) + v36 * v58, v7);

  v34(v69, v13, v7);
  if ((sub_2BE518() & 1) == 0)
  {
    v56 = *(v70 + 8);
    v56(v69, v7);
    v56(v31, v7);
    goto LABEL_10;
  }

  sub_2BF028();
  v58 = v34;
  sub_2C4DB8();
  v62 = v73;
  v38 = v59;
  v59(v65, v31, v7);
  v39 = v64;
  v40 = *(v64 + 16);
  v57[1] = v32;
  v40(v67, v63, v68);
  v38(v66, v69, v7);
  v41 = v70;
  v42 = *(v70 + 80);
  v43 = (v42 + 16) & ~v42;
  v44 = *(v39 + 80);
  v63 = v31;
  v45 = (v8 + v44 + v43) & ~v44;
  v46 = (v6 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = v7;
  v48 = (v42 + v46 + 8) & ~v42;
  v49 = swift_allocObject();
  v50 = v49 + v43;
  v51 = v58;
  v58(v50, v65, v47);
  (*(v39 + 32))(v49 + v45, v67, v68);
  *(v49 + v46) = v71;
  v51(v49 + v48, v66, v47);

  v52 = v62;
  sub_2BEF88();

  sub_6620C(&qword_3BDAB8);
  (*(v60 + 104))(v72, enum case for ActionOutcome.performed(_:), v61);
  v53 = sub_2C56F8();

  v54 = *(v41 + 8);
  v54(v69, v47);
  v54(v63, v47);
  return v53;
}

uint64_t sub_15B104(void *a1, char *a2)
{
  v69 = a2;
  v3 = sub_2C4C08();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2BEB78();
  v70 = *(v74 - 8);
  __chkstk_darwin(v74);
  v67 = v7;
  v73 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2BE588();
  v76 = *(v8 - 8);
  v9 = *(v76 + 64);
  __chkstk_darwin(v8);
  v72 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = &v60 - v11;
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  __chkstk_darwin(v15);
  v75 = &v60 - v16;
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  type metadata accessor for Page.LifecycleInfo();
  v68 = a1;
  sub_2C4DB8();
  v23 = v78;
  swift_beginAccess();
  v24 = *(v23 + 16);
  if (!*(v24 + 16))
  {
    goto LABEL_10;
  }

  v25 = sub_5D350(2u);
  if ((v26 & 1) == 0)
  {

LABEL_10:
    sub_6620C(&qword_3BDAB8);
    (*(v4 + 104))(v6, enum case for ActionOutcome.unsupported(_:), v3);
    v54 = sub_2C56F8();

    return v54;
  }

  v65 = v3;
  v66 = v4;
  v27 = v6;
  v28 = v76;
  v29 = *(v24 + 56) + *(v76 + 72) * v25;
  v30 = *(v76 + 16);
  v62 = *(v76 + 72);
  v63 = v30;
  v30(v19, v29, v8);

  v31 = v28;
  v6 = v27;
  v32 = *(v31 + 32);
  v33 = v22;
  v34 = v22;
  v4 = v66;
  v64 = v31 + 32;
  v35 = v32;
  v32(v34, v19, v8);
  v36 = *(v23 + 16);
  if (!*(v36 + 16))
  {
LABEL_9:
    (*(v76 + 8))(v33, v8);
    v3 = v65;
    goto LABEL_10;
  }

  v37 = sub_5D350(3u);
  if ((v38 & 1) == 0)
  {

    goto LABEL_9;
  }

  v63(v14, *(v36 + 56) + v37 * v62, v8);

  v39 = v75;
  v62 = v8;
  v35(v75, v14, v8);
  v40 = v33;
  if ((sub_2BE518() & 1) == 0)
  {
    v57 = *(v76 + 8);
    v58 = v39;
    v59 = v62;
    v57(v58, v62);
    v57(v40, v59);
    v3 = v65;
    v4 = v66;
    goto LABEL_10;
  }

  sub_2BF028();
  v61 = v35;
  sub_2C4DB8();
  v68 = v77;
  v41 = v33;
  v43 = v62;
  v42 = v63;
  v63(v71, v41, v62);
  v44 = v70;
  (*(v70 + 16))(v73, v69, v74);
  v42(v72, v39, v43);
  v45 = v76;
  v46 = *(v76 + 80);
  v47 = (v46 + 16) & ~v46;
  v48 = (v9 + *(v44 + 80) + v47) & ~*(v44 + 80);
  v69 = v6;
  v49 = (v67 + v46 + v48) & ~v46;
  v50 = v40;
  v51 = swift_allocObject();
  v52 = v61;
  v61(v51 + v47, v71, v43);
  (*(v44 + 32))(v51 + v48, v73, v74);
  v52(v51 + v49, v72, v43);
  v53 = v68;
  sub_2BEF88();

  sub_6620C(&qword_3BDAB8);
  (*(v66 + 104))(v69, enum case for ActionOutcome.performed(_:), v65);
  v54 = sub_2C56F8();

  v55 = *(v45 + 8);
  v55(v75, v43);
  v55(v50, v43);
  return v54;
}

uint64_t sub_15B750(uint64_t a1, void (*a2)(unint64_t, char *, uint64_t))
{
  v222 = a1;
  v182 = sub_2BEB78();
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = &v165 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_2C4C08();
  v4 = *(v210 - 8);
  __chkstk_darwin(v210);
  v211 = &v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_2BEBF8();
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v170 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v6;
  __chkstk_darwin(v7);
  v175 = &v165 - v8;
  v178 = sub_2BEEF8();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v168 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v174 = &v165 - v11;
  v184 = sub_2BE8A8();
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v167 = &v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v176 = &v165 - v14;
  v15 = sub_6620C(&qword_3C2BD8);
  __chkstk_darwin(v15 - 8);
  v173 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v185 = &v165 - v18;
  v19 = sub_6620C(&qword_3C2BE0);
  __chkstk_darwin(v19 - 8);
  v179 = &v165 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v186 = &v165 - v22;
  v189 = sub_2BE8F8();
  v190 = *(v189 - 8);
  __chkstk_darwin(v189);
  v188 = &v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = v23;
  __chkstk_darwin(v24);
  v187 = &v165 - v25;
  v199 = sub_2BE968();
  v197 = *(v199 - 1);
  __chkstk_darwin(v199);
  v27 = &v165 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = v26;
  __chkstk_darwin(v28);
  v198 = &v165 - v29;
  v196 = sub_2BE588();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v193 = &v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = v30;
  __chkstk_darwin(v31);
  v194 = &v165 - v32;
  v203 = sub_2C2508();
  v202 = *(v203 - 1);
  __chkstk_darwin(v203);
  v201 = (&v165 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v200 = &v165 - v35;
  v36 = sub_6620C(&unk_3C4340);
  v208 = *(v36 - 8);
  __chkstk_darwin(v36 - 8);
  v220 = (&v165 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v209 = v37;
  __chkstk_darwin(v38);
  v221 = (&v165 - v39);
  v40 = sub_6620C(&qword_3BF3D8);
  v205 = *(v40 - 8);
  __chkstk_darwin(v40 - 8);
  v207 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = v41;
  __chkstk_darwin(v42);
  v219 = &v165 - v43;
  v225 = sub_2BEA28();
  v218 = *(v225 - 8);
  v44 = *(v218 + 64);
  __chkstk_darwin(v225);
  v226 = &v165 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v227 = &v165 - v46;
  v47 = sub_2BF088();
  v223 = *(v47 - 8);
  v224 = v47;
  v48 = *(v223 + 64);
  __chkstk_darwin(v47);
  v213 = &v165 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v216 = &v165 - v50;
  v217 = sub_2BEA98();
  v215 = *(v217 - 8);
  v51 = *(v215 + 64);
  __chkstk_darwin(v217);
  v212 = &v165 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v214 = &v165 - v53;
  v54 = sub_2BE828();
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v57 = &v165 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2BF028();
  v204 = a2;
  sub_2C4DB8();
  v58 = v228;
  sub_2BE848();
  v59 = (*(v55 + 88))(v57, v54);
  if (v59 == enum case for AppAnalyticsAction.Type.clickEvent(_:))
  {
    (*(v55 + 96))(v57, v54);
    v60 = sub_6620C(&qword_3C2BF8);
    v61 = v60[12];
    v222 = v4;
    v62 = v60[20];
    v203 = v58;
    v194 = v60[24];
    v63 = v215;
    v64 = *(v215 + 32);
    v202 = v215 + 32;
    v204 = v64;
    v197 = v44;
    v65 = v214;
    v196 = v51;
    v66 = v217;
    (v64)();
    v67 = *(v223 + 32);
    v200 = (v223 + 32);
    v201 = v67;
    v68 = v216;
    v67(v216, &v57[v61], v224);
    v69 = v218;
    v70 = *(v218 + 32);
    v198 = (v218 + 32);
    v199 = v70;
    v195 = v48;
    v71 = v227;
    v72 = v225;
    v70();
    v73 = &v57[v62];
    v74 = v219;
    sub_69130(v73, v219, &qword_3BF3D8);
    v75 = v221;
    sub_69130(&v194[v57], v221, &unk_3C4340);
    (*(v63 + 16))(v212, v65, v66);
    v76 = v223;
    v77 = v68;
    v78 = v224;
    (*(v223 + 16))(v213, v77, v224);
    (*(v69 + 16))(v226, v71, v72);
    v79 = v74;
    v80 = v207;
    sub_6932C(v79, v207, &qword_3BF3D8);
    sub_6932C(v75, v220, &unk_3C4340);
    v81 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v82 = (v196 + *(v76 + 80) + v81) & ~*(v76 + 80);
    v83 = (v195 + *(v69 + 80) + v82) & ~*(v69 + 80);
    v84 = (v197 + *(v205 + 80) + v83) & ~*(v205 + 80);
    v85 = (v206 + *(v208 + 80) + v84) & ~*(v208 + 80);
    v86 = swift_allocObject();
    v87 = v86 + v81;
    v88 = v203;
    v89 = v217;
    v204(v87, v212, v217);
    v201(v86 + v82, v213, v78);
    v90 = v86 + v83;
    v91 = v225;
    v199(v90, v226, v225);
    sub_69130(v80, v86 + v84, &qword_3BF3D8);
    v92 = v86 + v85;
    v93 = v211;
    sub_69130(v220, v92, &unk_3C4340);
    sub_2BEF88();

    v4 = v222;
    sub_69198(v221, &unk_3C4340);
    sub_69198(v219, &qword_3BF3D8);
    (*(v69 + 8))(v227, v91);
    (*(v223 + 8))(v216, v224);
    v94 = v89;
    v58 = v88;
    (*(v215 + 8))(v214, v94);
    goto LABEL_12;
  }

  v224 = v27;
  v96 = v226;
  v95 = v227;
  v97 = v218;
  v98 = v225;
  if (v59 == enum case for AppAnalyticsAction.Type.popData(_:))
  {
    (*(v55 + 96))(v57, v54);
    v99 = *(sub_6620C(&qword_3C15C8) + 48);
    sub_9FB74(v57, &v228);
    v100 = v202;
    v101 = v200;
    v102 = v203;
    (*(v202 + 32))(v200, &v57[v99], v203);
    v103 = v201;
    sub_2C4DB8();
    if (sub_2C24F8())
    {
      sub_72084(&v228, v229);
      swift_getDynamicType();
      sub_2BEFC8();
    }

    v104 = *(v100 + 8);
    v104(v103, v102);
    v104(v101, v102);
    goto LABEL_10;
  }

  if (v59 == enum case for AppAnalyticsAction.Type.pushData(_:))
  {
    (*(v55 + 96))(v57, v54);
    sub_9FB74(v57, &v228);
    sub_72084(&v228, v229);
    sub_2BEFE8();
LABEL_10:
    sub_68CD0(&v228);
LABEL_11:
    v93 = v211;
LABEL_12:
    sub_6620C(&qword_3BDAB8);
    (*(v4 + 104))(v93, enum case for ActionOutcome.performed(_:), v210);
    v105 = sub_2C56F8();

    return v105;
  }

  if (v59 == enum case for AppAnalyticsAction.Type.reportAllInSeriesView(_:))
  {
    (*(v55 + 96))(v57, v54);
    sub_159ED8(v58, *v57, *(v57 + 1), *(v57 + 2), v57[24]);
LABEL_16:

    goto LABEL_11;
  }

  if (v59 == enum case for AppAnalyticsAction.Type.reportContextualActionSheetExposure(_:))
  {
    (*(v55 + 96))(v57, v54);
    v107 = sub_6620C(&qword_3C2BF0);
    v217 = *(v107 + 48);
    v215 = *(v107 + 64);
    v108 = v195;
    v222 = v4;
    v109 = *(v195 + 32);
    v219 = v195 + 32;
    v220 = v109;
    v110 = v194;
    (v109)(v194, v57, v196);
    v111 = v197;
    v221 = *(v197 + 32);
    v223 = v197 + 32;
    (v221)(v198, &v57[v217], v199);
    v112 = *(v97 + 32);
    v216 = (v97 + 32);
    v217 = v112;
    v112(v95, &v57[v215], v98);
    v113 = v110;
    v114 = v196;
    (*(v108 + 16))(v193, v113, v196);
    (*(v97 + 16))(v96, v95, v98);
    v115 = v111;
    v116 = v224;
    (*(v111 + 16))(v224, v198, v199);
    v117 = (*(v108 + 80) + 16) & ~*(v108 + 80);
    v118 = (v191 + *(v97 + 80) + v117) & ~*(v97 + 80);
    v119 = (v44 + *(v115 + 80) + v118) & ~*(v115 + 80);
    v120 = swift_allocObject();
    v121 = v120 + v117;
    v122 = v114;
    (v220)(v121, v193, v114);
    v4 = v222;
    (v217)(v120 + v118, v226, v98);
    v93 = v211;
    v123 = v199;
    (v221)(v120 + v119, v116, v199);
    sub_2BEF88();

    (*(v97 + 8))(v227, v98);
    (*(v197 + 8))(v198, v123);
    (*(v195 + 8))(v194, v122);
    goto LABEL_12;
  }

  if (v59 == enum case for AppAnalyticsAction.Type.reportRatingEvent(_:))
  {
    (*(v55 + 96))(v57, v54);
    v124 = *(v57 + 2);

    sub_15A10C(v58, v124);
    goto LABEL_11;
  }

  if (v59 == enum case for AppAnalyticsAction.Type.reportReviewsDialogEvent(_:))
  {
    (*(v55 + 96))(v57, v54);
    sub_15A468(v58, *v57, *(v57 + 1));
    goto LABEL_16;
  }

  if (v59 == enum case for AppAnalyticsAction.Type.reportSeriesDetailsView(_:))
  {
    (*(v55 + 96))(v57, v54);
    v125 = v190;
    v126 = v187;
    v127 = v189;
    (*(v190 + 32))(v187, v57, v189);
    v128 = sub_15AA90(v204, v126);
LABEL_30:
    v105 = v128;

    (*(v125 + 8))(v126, v127);
    return v105;
  }

  if (v59 == enum case for AppAnalyticsAction.Type.reportSeriesFilter(_:))
  {
    v203 = v58;
    v222 = v4;
    (*(v55 + 96))(v57, v54);
    v129 = sub_6620C(&qword_3C2BE8);
    v130 = *(v129 + 48);
    v131 = *(v129 + 64);
    v132 = *(v190 + 32);
    v133 = v189;
    v132(v188, v57, v189);
    v134 = &v57[v130];
    v135 = v186;
    sub_69130(v134, v186, &qword_3C2BE0);
    v136 = &v57[v131];
    v137 = v185;
    sub_69130(v136, v185, &qword_3C2BD8);
    v138 = v135;
    v139 = v179;
    sub_6932C(v138, v179, &qword_3C2BE0);
    v140 = v183;
    v141 = v184;
    if ((*(v183 + 48))(v139, 1, v184) == 1)
    {
      v142 = &qword_3C2BE0;
      v143 = v139;
    }

    else
    {
      v144 = v176;
      (*(v140 + 32))(v176, v139, v141);
      v145 = v173;
      sub_6932C(v137, v173, &qword_3C2BD8);
      v146 = v177;
      v147 = v178;
      if ((*(v177 + 48))(v145, 1, v178) != 1)
      {
        v151 = *(v146 + 32);
        v227 = v132;
        v152 = v174;
        v151();
        (*(v140 + 16))(v167, v144, v141);
        (*(v146 + 16))(v168, v152, v147);
        v153 = v175;
        sub_2BEBE8();
        sub_2C4DB8();
        v226 = v228;
        v154 = v190;
        v155 = v187;
        v133 = v189;
        (*(v190 + 16))(v187, v188, v189);
        v156 = v171;
        v157 = v170;
        v158 = v153;
        v159 = v140;
        v160 = v172;
        (*(v171 + 16))(v170, v158, v172);
        v161 = (*(v154 + 80) + 16) & ~*(v154 + 80);
        v162 = (v166 + *(v156 + 80) + v161) & ~*(v156 + 80);
        v163 = swift_allocObject();
        (v227)(v163 + v161, v155, v133);
        (*(v156 + 32))(v163 + v162, v157, v160);
        v164 = v226;
        sub_2BEF88();

        sub_6620C(&qword_3BDAB8);
        (*(v222 + 104))(v211, enum case for ActionOutcome.performed(_:), v210);
        v105 = sub_2C56F8();

        (*(v156 + 8))(v175, v160);
        (*(v177 + 8))(v174, v178);
        (*(v159 + 8))(v176, v184);
        v150 = v185;
        goto LABEL_35;
      }

      (*(v140 + 8))(v144, v141);
      v142 = &qword_3C2BD8;
      v143 = v145;
    }

    sub_69198(v143, v142);
    v148 = v211;
    v149 = v203;
    sub_6620C(&qword_3BDAB8);
    (*(v222 + 104))(v148, enum case for ActionOutcome.unsupported(_:), v210);
    v105 = sub_2C56F8();

    v150 = v137;
LABEL_35:
    sub_69198(v150, &qword_3C2BD8);
    sub_69198(v186, &qword_3C2BE0);
    (*(v190 + 8))(v188, v133);
    return v105;
  }

  if (v59 == enum case for AppAnalyticsAction.Type.reportYearInReviewViewEvent(_:))
  {
    (*(v55 + 96))(v57, v54);
    v125 = v181;
    v126 = v180;
    v127 = v182;
    (*(v181 + 32))(v180, v57, v182);
    v128 = sub_15B104(v204, v126);
    goto LABEL_30;
  }

  result = sub_2C65A8();
  __break(1u);
  return result;
}

uint64_t sub_15D3B0()
{
  v17 = sub_2BE588();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_2BEA28();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_2BE968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_15D584(uint64_t a1)
{
  v3 = *(sub_2BE588() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_2BEA28() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_2BE968() - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_158DB4(a1, v1 + v4, v1 + v7, v10);
}

uint64_t sub_15D6BC()
{
  v23 = sub_2BEA98();
  v1 = *(v23 - 8);
  v27 = *(v1 + 80);
  v2 = *(v1 + 64);
  v21 = sub_2BF088();
  v3 = *(v21 - 8);
  v26 = *(v3 + 80);
  v4 = (((v27 + 16) & ~v27) + v2 + v26) & ~v26;
  v5 = *(v3 + 64);
  v6 = sub_2BEA28();
  v7 = *(v6 - 8);
  v25 = *(v7 + 80);
  v8 = (v4 + v5 + v25) & ~v25;
  v9 = *(v7 + 64);
  v10 = *(sub_6620C(&qword_3BF3D8) - 8);
  v24 = *(v10 + 80);
  v11 = (v8 + v9 + v24) & ~v24;
  v12 = *(v10 + 64);
  v13 = *(sub_6620C(&unk_3C4340) - 8);
  v14 = *(v13 + 80);
  v15 = (v11 + v12 + v14) & ~v14;
  v22 = *(v13 + 64);
  (*(v1 + 8))(v0 + ((v27 + 16) & ~v27), v23);
  (*(v3 + 8))(v0 + v4, v21);
  (*(v7 + 8))(v0 + v8, v6);
  v16 = sub_2BE968();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v0 + v11, 1, v16))
  {
    (*(v17 + 8))(v0 + v11, v16);
  }

  v18 = sub_2BEF78();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v0 + v15, 1, v18))
  {
    (*(v19 + 8))(v0 + v15, v18);
  }

  return _swift_deallocObject(v0, v15 + v22, v27 | v26 | v25 | v24 | v14 | 7);
}

uint64_t sub_15DA78(uint64_t a1)
{
  v3 = *(sub_2BEA98() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_2BF088() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_2BEA28() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_6620C(&qword_3BF3D8) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(sub_6620C(&unk_3C4340) - 8);
  v16 = v1 + ((v13 + v14 + *(v15 + 80)) & ~*(v15 + 80));

  return sub_1581AC(a1, v1 + v4, v1 + v7, v1 + v10, v1 + v13, v16);
}

uint64_t sub_15DC88()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_15DCCC()
{
  v1 = sub_2BE8C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_15DD54()
{
  sub_2BE8C8();

  return sub_15921C();
}

uint64_t sub_15DDF0(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = a2(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v6 | v11;
  (*(v5 + 8))(v2 + v7, v4);
  (*(v10 + 8))(v2 + v12, v9);

  return _swift_deallocObject(v2, v12 + v13, v14 | 7);
}

uint64_t sub_15DF88(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *(a2(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3(0) - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a4(a1, v4 + v8, v11);
}

uint64_t sub_15E084()
{
  v1 = sub_2BE588();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v13 = *(v2 + 64);
  v5 = sub_2BE8F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v13 + v7) & ~v7;
  v12 = v3 | v7;
  v9 = (v3 + ((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  (*(v6 + 8))(v0 + v8, v5);

  v10(v0 + v9, v1);

  return _swift_deallocObject(v0, v9 + v13, v12 | 7);
}

uint64_t sub_15E214(uint64_t a1)
{
  v3 = *(sub_2BE588() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(sub_2BE8F8() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v9);

  return sub_1596B4(a1, v1 + v5, v1 + v8, v10, v1 + ((v4 + v9 + 8) & ~v4));
}

uint64_t sub_15E32C()
{
  v1 = sub_2BE588();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2BEB78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v13 = v3 | v8;
  v10 = (*(v7 + 64) + v3 + v9) & ~v3;
  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v11(v0 + v10, v1);

  return _swift_deallocObject(v0, v10 + v5, v13 | 7);
}

uint64_t sub_15E4A4()
{
  sub_2BE588();
  sub_2BEB78();

  return sub_159DA8();
}

uint64_t sub_15E5AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_15E5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  v10 = *(type metadata accessor for MCatalogRequestIntent() + 44);
  v11 = sub_2BF5E8();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a8[v10], a7, v11);
}

uint64_t sub_15E684(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2C65B8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_15E704(void *a1)
{
  type metadata accessor for MCatalogRequestIntent.Result.CodingKeys();
  swift_getWitnessTable();
  v10[0] = sub_2C64E8();
  v3 = *(v10[0] - 8);
  __chkstk_darwin(v10[0]);
  v5 = v10 - v4;
  v6 = sub_72084(a1, a1[3]);
  sub_2C67A8();
  if (!v1)
  {
    v7 = v3;
    sub_2C1088();
    sub_2C5B98();
    v10[1] = swift_getWitnessTable();
    swift_getWitnessTable();
    v8 = v10[0];
    sub_2C64A8();
    (*(v7 + 8))(v5, v8);
    v6 = v10[3];
  }

  sub_68CD0(a1);
  return v6;
}

uint64_t sub_15E938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_15E684(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_15E968@<X0>(_BYTE *a1@<X8>)
{
  result = static Shelf.ValidationError.== infix(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_15E998(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_15E9EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

void *sub_15EA40@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_15E704(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_15EA84@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v78 = a2;
  v77 = a1;
  v3 = sub_6620C(&qword_3C2D10);
  v85 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v77 - v7;
  sub_6620C(qword_3C2C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2EDF00;
  *(inited + 32) = 0x656372756F736572;
  *(inited + 40) = 0xE900000000000073;
  v79 = inited;
  v80 = v2;
  v10 = *(v2 + 16);
  sub_6620C(&qword_3BC120);
  result = sub_2C63A8();
  v12 = result;
  v13 = 0;
  v14 = v10;
  v83 = v10;
  v84 = result;
  v15 = *(v10 + 32);
  v16 = v5;
  v17 = 1 << v15;
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 64);
  v20 = (v17 + 63) >> 6;
  v81 = v14 + 64;
  v82 = result + 64;
  v86 = v16;
  if (v19)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v87 = (v19 - 1) & v19;
LABEL_10:
      v24 = v21 | (v13 << 6);
      v25 = *(v83 + 56);
      v26 = (*(v83 + 48) + 16 * v24);
      v27 = v26[1];
      v88 = *v26;
      sub_6932C(v25 + *(v85 + 72) * v24, v8, &qword_3C2D10);
      sub_6932C(v8, v16, &qword_3C2D10);
      v28 = sub_2BF4E8();
      v29 = v16;
      v30 = v8;
      v31 = *(v28 - 8);
      v32 = (*(v31 + 48))(v29, 1, v28);
      v89 = v27;

      if (v32 == 1)
      {
        sub_15FD30(v30);
        result = sub_15FD30(v29);
        v33 = 0;
        v34 = 0;
      }

      else
      {
        v33 = sub_2BF4D8();
        v34 = v35;
        sub_15FD30(v30);
        result = (*(v31 + 8))(v86, v28);
      }

      v8 = v30;
      *(v82 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v12 = v84;
      v36 = (*(v84 + 48) + 16 * v24);
      v37 = v89;
      *v36 = v88;
      v36[1] = v37;
      v38 = (*(v12 + 56) + 16 * v24);
      *v38 = v33;
      v38[1] = v34;
      v39 = *(v12 + 16);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        break;
      }

      *(v12 + 16) = v41;
      v16 = v86;
      v19 = v87;
      if (!v87)
      {
        goto LABEL_5;
      }
    }

LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_5:
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v13 >= v20)
      {
        break;
      }

      v23 = *(v81 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v87 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }

    v42 = sub_6620C(&qword_3BE1D0);
    v43 = v79;
    *(v79 + 72) = v42;
    v44 = sub_15FD98();
    *(v43 + 48) = v12;
    *(v43 + 80) = v44;
    strcpy((v43 + 88), "relationships");
    *(v43 + 102) = -4864;
    v45 = sub_6620C(&qword_3C2D50);
    *(v43 + 128) = v45;
    v46 = sub_15FE48();
    *(v43 + 136) = v46;
    v47 = v80;
    v48 = *(v80 + 24);
    if (v48)
    {
      v49 = *(v48 + 16);
      v50 = _swiftEmptyArrayStorage;
      if (v49)
      {
        v90 = _swiftEmptyArrayStorage;
        sub_649D4(0, v49, 0);
        v50 = v90;
        v51 = v48 + 32;
        do
        {
          v52 = sub_2C58C8();
          v90 = v50;
          v55 = v50[2];
          v54 = v50[3];
          if (v55 >= v54 >> 1)
          {
            v89 = v52;
            v57 = v53;
            sub_649D4((v54 > 1), v55 + 1, 1);
            v53 = v57;
            v52 = v89;
            v50 = v90;
          }

          v50[2] = v55 + 1;
          v56 = &v50[2 * v55];
          v56[4] = v52;
          v56[5] = v53;
          v51 += 8;
          --v49;
        }

        while (v49);
        v43 = v79;
        v47 = v80;
      }
    }

    else
    {
      v50 = 0;
    }

    *(v43 + 104) = v50;
    *(v43 + 144) = 0x7377656976;
    *(v43 + 152) = 0xE500000000000000;
    *(v43 + 184) = v45;
    *(v43 + 192) = v46;
    v58 = *(v47 + 32);
    if (v58)
    {
      v59 = *(v58 + 16);
      v60 = _swiftEmptyArrayStorage;
      if (v59)
      {
        v90 = _swiftEmptyArrayStorage;
        sub_649D4(0, v59, 0);
        v60 = v90;
        v61 = v58 + 32;
        do
        {
          v62 = sub_2C58C8();
          v90 = v60;
          v65 = v60[2];
          v64 = v60[3];
          if (v65 >= v64 >> 1)
          {
            v67 = v62;
            v68 = v63;
            sub_649D4((v64 > 1), v65 + 1, 1);
            v63 = v68;
            v62 = v67;
            v43 = v79;
            v47 = v80;
            v60 = v90;
          }

          v60[2] = v65 + 1;
          v66 = &v60[2 * v65];
          v66[4] = v62;
          v66[5] = v63;
          v61 += 8;
          --v59;
        }

        while (v59);
      }
    }

    else
    {
      v60 = 0;
    }

    v69 = v77;
    *(v43 + 160) = v60;
    *(v43 + 200) = 0xD000000000000014;
    *(v43 + 208) = 0x8000000000304620;
    v70 = *(v47 + 40);
    *(v43 + 240) = sub_6620C(&qword_3C2D68);
    v71 = sub_15FF58();
    *(v43 + 216) = v70;
    *(v43 + 248) = v71;
    *(v43 + 256) = 0x617461646174656DLL;
    *(v43 + 264) = 0xE800000000000000;
    v72 = *(v69 + 44);
    v73 = sub_2BF5E8();
    *(v43 + 296) = v73;
    *(v43 + 304) = sub_160008();
    v74 = sub_720C8((v43 + 272));
    (*(*(v73 - 8) + 16))(v74, v47 + v72, v73);
    v75 = v78;
    v78[3] = &type metadata for AnyCustomJSValueConvertible;
    v75[4] = &protocol witness table for AnyCustomJSValueConvertible;
    v76 = swift_allocObject();
    *v75 = v76;

    return AnyCustomJSValueConvertible.init(dictionaryLiteral:)(v43, (v76 + 16));
  }

  return result;
}

unint64_t AnyCustomJSValueConvertible.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  if (*(a1 + 16))
  {
    sub_6620C(&qword_3BC218);
    v2 = sub_2C63C8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v44[0] = v2;

  sub_15F51C(v3, 1, v44);

  v4 = v44[0];
  sub_6620C(&qword_3BC030);
  v5 = sub_2C63A8();
  v6 = v5;
  v7 = 0;
  v36 = v5;
  v37 = v4;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v4 + 64;
  v11 = v9 & *(v4 + 64);
  v12 = (v8 + 63) >> 6;
  v35 = v5 + 64;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v16 = v13 | (v7 << 6);
      v39 = 16 * v16;
      v17 = *(v37 + 56);
      v18 = (*(v37 + 48) + 16 * v16);
      v19 = v18[1];
      v40 = *v18;
      v20 = 40 * v16;
      sub_691F8(v17 + 40 * v16, v44);
      v38 = v44[4];
      v21 = sub_72084(v44, v44[3]);
      v22 = __chkstk_darwin(v21);
      (*(v24 + 16))(&v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);

      sub_2C54B8();
      sub_68CD0(v44);
      *(v35 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v6 = v36;
      v25 = (*(v36 + 48) + v39);
      *v25 = v40;
      v25[1] = v19;
      v26 = *(v6 + 56) + v20;
      v27 = v42;
      *v26 = v41;
      *(v26 + 16) = v27;
      *(v26 + 32) = v43;
      v28 = *(v6 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(v6 + 16) = v30;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v31 = sub_6620C(&qword_3C2C70);
        v32 = v34;
        v34[3] = v31;
        result = sub_15F900();
        v32[4] = result;
        *v32 = v6;
        return result;
      }

      v15 = *(v10 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t MRequestMetadata.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  sub_6620C(qword_3C2C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E15C0;
  *(inited + 32) = 0x4449656C6966;
  *(inited + 40) = 0xE600000000000000;
  v3 = sub_2BF5D8();
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 1701734764;
  *(inited + 96) = 0xE400000000000000;
  v5 = sub_2BF5C8();
  *(inited + 128) = &type metadata for Int32;
  *(inited + 136) = &protocol witness table for Int32;
  *(inited + 104) = v5;
  a1[3] = &type metadata for AnyCustomJSValueConvertible;
  a1[4] = &protocol witness table for AnyCustomJSValueConvertible;
  v6 = swift_allocObject();
  *a1 = v6;
  return AnyCustomJSValueConvertible.init(dictionaryLiteral:)(inited, (v6 + 16));
}

uint64_t sub_15F51C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_6932C(a1 + 32, &v44, qword_3C2D80);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_693D0(v46, v41);
  v9 = *a3;
  v10 = sub_5D228(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_5FFE4(v15, a2 & 1);
    v10 = sub_5D228(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_2C6678();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_63F90();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    swift_errorRetain();
    sub_6620C(&unk_3BF5A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_68CD0(v41);
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_693D0(v41, v21[7] + 40 * v10);
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
    }

    v25 = a1 + 88;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_6932C(v25, &v44, qword_3C2D80);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_693D0(v46, v41);
      v29 = *a3;
      v30 = sub_5D228(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_5FFE4(v34, 1);
        v30 = sub_5D228(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_693D0(v41, v37[7] + 40 * v30);
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 56;
      if (v4 == v26)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2C61F8(30);
  v48._object = 0x8000000000304660;
  v48._countAndFlagsBits = 0xD00000000000001BLL;
  sub_2C5978(v48);
  sub_2C6368();
  v49._countAndFlagsBits = 39;
  v49._object = 0xE100000000000000;
  sub_2C5978(v49);
  result = sub_2C6378();
  __break(1u);
  return result;
}

unint64_t sub_15F900()
{
  result = qword_3C2C78;
  if (!qword_3C2C78)
  {
    sub_718D4(&qword_3C2C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2C78);
  }

  return result;
}

uint64_t sub_15F97C()
{
  sub_68CD0(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_15F9B4()
{
  sub_15FC68();
  if (v0 <= 0x3F)
  {
    sub_15FCDC(319, &qword_3C2D18, &qword_3C2D20);
    if (v1 <= 0x3F)
    {
      sub_15FCDC(319, &qword_3C2D28, &qword_3C2D30);
      if (v2 <= 0x3F)
      {
        sub_15FCDC(319, &qword_3C2D38, &qword_3BD8A8);
        if (v3 <= 0x3F)
        {
          sub_2BF5E8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_15FAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2BF5E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_15FBAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2BF5E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_15FC68()
{
  if (!qword_3C2D08)
  {
    sub_718D4(&qword_3C2D10);
    v0 = sub_2C5818();
    if (!v1)
    {
      atomic_store(v0, &qword_3C2D08);
    }
  }
}

void sub_15FCDC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_718D4(a3);
    v4 = sub_2C60B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_15FD30(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C2D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_15FD98()
{
  result = qword_3C2D40;
  if (!qword_3C2D40)
  {
    sub_718D4(&qword_3BE1D0);
    sub_15FEF8(&qword_3C2D48, &qword_3BDB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2D40);
  }

  return result;
}

unint64_t sub_15FE48()
{
  result = qword_3C2D58;
  if (!qword_3C2D58)
  {
    sub_718D4(&qword_3C2D50);
    sub_15FEF8(&qword_3C2D60, &qword_3BCA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2D58);
  }

  return result;
}

uint64_t sub_15FEF8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_15FF58()
{
  result = qword_3C2D70;
  if (!qword_3C2D70)
  {
    sub_718D4(&qword_3C2D68);
    sub_15FEF8(&qword_3BD8B0, &qword_3BD8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2D70);
  }

  return result;
}

unint64_t sub_160008()
{
  result = qword_3C2D78;
  if (!qword_3C2D78)
  {
    sub_2BF5E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2D78);
  }

  return result;
}

uint64_t sub_160060()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static NavigationContext._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    *a2 = *(result + OBJC_IVAR___BSUINavigationContext_impl);
  }

  else
  {
    result = sub_2C6378();
    __break(1u);
  }

  return result;
}

id __BSUINavigationContext.__allocating_init(isInModal:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___BSUINavigationContext_impl] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id __BSUINavigationContext.init(isInModal:)(char a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___BSUINavigationContext_impl] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

id NavigationContext._bridgeToObjectiveC()()
{
  v1 = *v0;
  v2 = type metadata accessor for __BSUINavigationContext();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR___BSUINavigationContext_impl] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t getEnumTagSinglePayload for NavigationContext(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_160488(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1604A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1604E8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_16056C()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2EB8);
  sub_57AD8(v0, qword_3C2EB8);
  return sub_2C00A8();
}

uint64_t sub_160610()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2ED0);
  sub_57AD8(v0, qword_3C2ED0);
  return sub_2C00A8();
}

uint64_t sub_1606B4()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2EE8);
  sub_57AD8(v0, qword_3C2EE8);
  return sub_2C00A8();
}

uint64_t sub_160758()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2F00);
  sub_57AD8(v0, qword_3C2F00);
  return sub_2C00A8();
}

uint64_t sub_160800()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2F18);
  sub_57AD8(v0, qword_3C2F18);
  return sub_2C00A8();
}

uint64_t sub_1608A8()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2F30);
  sub_57AD8(v0, qword_3C2F30);
  return sub_2C00A8();
}

uint64_t sub_16094C()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2F48);
  sub_57AD8(v0, qword_3C2F48);
  return sub_2C00A8();
}

uint64_t sub_1609F0()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2F60);
  sub_57AD8(v0, qword_3C2F60);
  return sub_2C00A8();
}

uint64_t sub_160A98()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2F78);
  sub_57AD8(v0, qword_3C2F78);
  return sub_2C00A8();
}

uint64_t sub_160B3C()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2F90);
  sub_57AD8(v0, qword_3C2F90);
  return sub_2C00A8();
}

uint64_t sub_160BE0()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2FA8);
  sub_57AD8(v0, qword_3C2FA8);
  return sub_2C00A8();
}

uint64_t sub_160C88()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2FC0);
  sub_57AD8(v0, qword_3C2FC0);
  return sub_2C00A8();
}

uint64_t sub_160D2C()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2FD8);
  sub_57AD8(v0, qword_3C2FD8);
  return sub_2C00A8();
}

uint64_t sub_160DD0()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C2FF0);
  sub_57AD8(v0, qword_3C2FF0);
  return sub_2C00A8();
}

uint64_t sub_160E74()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C3008);
  sub_57AD8(v0, qword_3C3008);
  return sub_2C00A8();
}

uint64_t sub_160F18()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C3020);
  sub_57AD8(v0, qword_3C3020);
  return sub_2C00A8();
}

uint64_t sub_160FC0()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C3038);
  sub_57AD8(v0, qword_3C3038);
  return sub_2C00A8();
}

uint64_t sub_161068()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C3050);
  sub_57AD8(v0, qword_3C3050);
  return sub_2C00A8();
}

uint64_t sub_16110C()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C3068);
  sub_57AD8(v0, qword_3C3068);
  return sub_2C00A8();
}

uint64_t sub_1611B0()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C3080);
  sub_57AD8(v0, qword_3C3080);
  return sub_2C00A8();
}

uint64_t sub_161250()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C3098);
  sub_57AD8(v0, qword_3C3098);
  return sub_2C00A8();
}

uint64_t sub_1612F4()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C30B0);
  sub_57AD8(v0, qword_3C30B0);
  return sub_2C00A8();
}

uint64_t sub_161398()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C30C8);
  sub_57AD8(v0, qword_3C30C8);
  return sub_2C00A8();
}