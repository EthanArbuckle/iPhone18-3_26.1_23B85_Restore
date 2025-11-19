uint64_t sub_17966C(void (*a1)(char *, void *, uint64_t, void *, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(char *, void *, uint64_t, void *, uint64_t, uint64_t, uint64_t))
{
  v51[1] = a7;
  v52 = a8;
  v60 = a5;
  v61 = a6;
  v57 = a3;
  v58 = a4;
  v56 = a2;
  v59 = a1;
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v55 = v51 - v12;
  v13 = sub_2CE000();
  v53 = *(v13 - 8);
  v54 = v13;
  v14 = *(v53 + 64);
  __chkstk_darwin(v13);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20410(&unk_3519A0, &qword_2D0980);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v51 - v19;
  v21 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = v51 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = v51 - v30;
  __chkstk_darwin(v29);
  v33 = v51 - v32;
  sub_F3F4(v59, v20, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_30B8(v20, &unk_3519A0, &qword_2D0980);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v34 = v54;
    v35 = sub_3ED0(v54, static Logger.default);
    swift_beginAccess();
    v36 = v53;
    (*(v53 + 16))(v16, v35, v34);
    v37 = sub_2CDFE0();
    v38 = sub_2CE680();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse error evaluating failure template", v39, 2u);
    }

    (*(v36 + 8))(v16, v34);
    v62[5] = v56;
    type metadata accessor for InternalRenderingFlowStrategy();
    sub_17ECF8(&qword_3530A8, type metadata accessor for InternalRenderingFlowStrategy);
    return sub_2C9440();
  }

  else
  {
    v59 = a10;
    sub_14A58(v20, v33, &qword_34C6E8, &unk_2D0FF0);
    (*(a9 + 40))(v62, v52, a9);
    v41 = sub_35E0(v62, v62[3]);
    sub_F3F4(v33, v31, &qword_34C6E8, &unk_2D0FF0);
    v42 = *&v31[*(v21 + 48)];
    v58 = *v41;
    v43 = sub_2CA130();
    v44 = *(v43 - 8);
    (*(v44 + 16))(v28, v31, v43);
    *&v28[*(v21 + 48)] = v42;
    sub_F3F4(v28, v25, &qword_34C6E8, &unk_2D0FF0);
    v45 = *&v25[*(v21 + 48)];
    v46 = sub_2CA000();
    v47 = v55;
    (*(*(v46 - 8) + 56))(v55, 1, 1, v46);
    v48 = v61;

    v49 = v42;
    v59(v25, v45, v47, _swiftEmptyArrayStorage, v58, v60, v48);

    sub_30B8(v47, &unk_353020, &unk_2D0970);
    sub_30B8(v28, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v33, &qword_34C6E8, &unk_2D0FF0);
    v50 = *(v44 + 8);
    v50(v25, v43);
    v50(v31, v43);
    return sub_306C(v62);
  }
}

uint64_t sub_179C50(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v48 = a8;
  v49 = a2;
  v54 = a6;
  v55 = a7;
  v52 = a1;
  v53 = a5;
  v50 = a3;
  v51 = a4;
  v12 = *(a11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(a1);
  v44 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  __chkstk_darwin(v14);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20410(&unk_3519A0, &qword_2D0980);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v43 - v19;
  v21 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v43 = *(v21 - 8);
  v22 = *(v43 + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v24 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v43 - v25;
  sub_F3F4(v52, v20, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_30B8(v20, &unk_3519A0, &qword_2D0980);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v27 = v47;
    v28 = sub_3ED0(v47, static Logger.default);
    swift_beginAccess();
    v30 = v45;
    v29 = v46;
    (*(v46 + 16))(v45, v28, v27);
    v31 = sub_2CDFE0();
    v32 = sub_2CE680();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse error evaluating failure template", v33, 2u);
    }

    (*(v29 + 8))(v30, v27);
    v56 = v49;
    type metadata accessor for InternalRenderingFlowStrategy();
    sub_17ECF8(&qword_3530A8, type metadata accessor for InternalRenderingFlowStrategy);
    return sub_2C9440();
  }

  else
  {
    v50 = a12;
    v51 = a10;
    v52 = a9;
    sub_14A58(v20, v26, &qword_34C6E8, &unk_2D0FF0);
    v35 = v44;
    (*(v12 + 16))(v44, v55, a11);
    sub_F3F4(v26, v24, &qword_34C6E8, &unk_2D0FF0);
    v36 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v37 = (v13 + *(v43 + 80) + v36) & ~*(v43 + 80);
    v38 = (v22 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = a11;
    v40 = v50;
    *(v39 + 24) = v50;
    (*(v12 + 32))(v39 + v36, v35);
    sub_14A58(v24, v39 + v37, &qword_34C6E8, &unk_2D0FF0);
    v41 = (v39 + v38);
    v42 = v54;
    *v41 = v53;
    v41[1] = v42;
    *(v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8)) = v51;

    sub_17B084(v48, v52, sub_17E3CC, v39, a11, v40);

    return sub_30B8(v26, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t sub_17A1AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = a8;
  v93 = a7;
  v89 = a6;
  v106 = a4;
  v107 = a5;
  v103 = a3;
  v92 = a2;
  v102 = a1;
  v8 = sub_20410(&unk_353020, &unk_2D0970);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v101 = &v86 - v10;
  v96 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v95 = *(v96 - 8);
  v11 = *(v95 + 64);
  v12 = __chkstk_darwin(v96);
  v100 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v99 = &v86 - v14;
  __chkstk_darwin(v13);
  v105 = &v86 - v15;
  v16 = sub_2C9B80();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_2CA630();
  v97 = *(v18 - 8);
  v98 = v18;
  v19 = *(v97 + 64);
  v20 = __chkstk_darwin(v18);
  v91 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v21;
  __chkstk_darwin(v20);
  v23 = &v86 - v22;
  v104 = sub_2CE000();
  v108 = *(v104 - 8);
  v24 = *(v108 + 8);
  v25 = __chkstk_darwin(v104);
  v87 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v86 - v27;
  v29 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v86 - v31;
  v33 = sub_2CD230();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v88 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v86 - v37;
  v40 = v39;
  sub_F3F4(v102, v32, &unk_3530C0, &unk_2D0A40);
  if ((*(v34 + 48))(v32, 1, v40) == 1)
  {
    v41 = v103;
    sub_30B8(v32, &unk_3530C0, &unk_2D0A40);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v42 = v104;
    v43 = sub_3ED0(v104, static Logger.default);
    swift_beginAccess();
    (*(v108 + 2))(v28, v43, v42);
    v44 = sub_2CDFE0();
    v45 = sub_2CE680();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v44, v45, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse returning error output without snippet.", v46, 2u);
    }

    (*(v108 + 1))(v28, v42);
    (*(v94 + 40))(v109, v93);
    v47 = sub_35E0(v109, v109[3]);
    v48 = v105;
    sub_F3F4(v41, v105, &qword_34C6E8, &unk_2D0FF0);
    v49 = v96;
    v50 = *(v48 + *(v96 + 48));
    v51 = *v47;
    v52 = sub_2CA130();
    v53 = *(v52 - 8);
    v54 = v99;
    (*(v53 + 16))(v99, v48, v52);
    *(v54 + *(v49 + 48)) = v50;
    v55 = v100;
    sub_F3F4(v54, v100, &qword_34C6E8, &unk_2D0FF0);
    v56 = *(v55 + *(v49 + 48));
    v57 = sub_2CA000();
    v58 = v101;
    (*(*(v57 - 8) + 56))(v101, 1, 1, v57);
    v59 = v50;
    sub_1C3480(v55, v56, v58, _swiftEmptyArrayStorage, v106, v107);

    sub_30B8(v58, &unk_353020, &unk_2D0970);
    sub_30B8(v54, &qword_34C6E8, &unk_2D0FF0);
    v60 = *(v53 + 8);
    v60(v55, v52);
    v60(v48, v52);
    return sub_306C(v109);
  }

  else
  {
    v100 = v34;
    v101 = v11;
    v62 = *(v34 + 32);
    v63 = v40;
    v99 = (v34 + 32);
    v96 = v62;
    v62(v38, v32, v40);
    v64 = sub_2C9B20();
    __chkstk_darwin(v64);
    v65 = v103;
    *(&v86 - 2) = v89;
    *(&v86 - 1) = v65;
    v102 = v23;
    sub_2CA560();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v66 = v104;
    v67 = sub_3ED0(v104, static Logger.default);
    swift_beginAccess();
    v68 = v87;
    (*(v108 + 2))(v87, v67, v66);
    v69 = sub_2CDFE0();
    v70 = sub_2CE680();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_0, v69, v70, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse returning error output with a button snippet.", v71, 2u);
    }

    (*(v108 + 1))(v68, v66);
    v72 = v100;
    v73 = *(v100 + 16);
    v74 = v88;
    v86 = v63;
    v73(v88, v38, v63);
    v75 = v105;
    sub_F3F4(v65, v105, &qword_34C6E8, &unk_2D0FF0);
    v77 = v97;
    v76 = v98;
    v78 = *(v97 + 16);
    v108 = v38;
    v79 = v91;
    v78(v91, v102, v98);
    v80 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v81 = (v35 + *(v95 + 80) + v80) & ~*(v95 + 80);
    v82 = &v101[*(v77 + 80) + v81] & ~*(v77 + 80);
    v83 = swift_allocObject();
    v84 = v74;
    v85 = v86;
    (v96)(v83 + v80, v84, v86);
    sub_14A58(v75, v83 + v81, &qword_34C6E8, &unk_2D0FF0);
    (*(v77 + 32))(v83 + v82, v79, v76);
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    (*(v77 + 8))(v102, v76);
    return (*(v72 + 8))(v108, v85);
  }
}

uint64_t sub_17AC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = sub_2CB260();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a3, v8, &qword_34C6E8, &unk_2D0FF0);
  v11 = *&v8[*(v5 + 56)];
  v12 = [v11 catId];

  sub_2CE270();
  sub_2CA590();
  v13 = sub_2CA130();
  return (*(*(v13 - 8) + 8))(v8, v13);
}

uint64_t sub_17ADD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_17AE7C, 0, 0);
}

uint64_t sub_17AE7C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = sub_2CA080();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[13] = sub_2CA070();
  v8 = sub_2CD230();
  v0[5] = v8;
  v0[6] = sub_17ECF8(&qword_34CC78, &type metadata accessor for SiriAudioSnippets);
  v9 = sub_F390(v0 + 2);
  (*(*(v8 - 8) + 16))(v9, v4, v8);
  sub_20410(&unk_351900, &unk_2D0960);
  v10 = swift_allocObject();
  v0[14] = v10;
  *(v10 + 16) = xmmword_2D0770;
  sub_F3F4(v3, v1, &qword_34C6E8, &unk_2D0FF0);
  *(v10 + 32) = *(v1 + *(v2 + 48));
  v11 = sub_2CA130();
  (*(*(v11 - 8) + 8))(v1, v11);
  v12 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + 1);
  v17 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_2D160;
  v14 = v0[10];
  v15 = v0[7];

  return v17(v15, v0 + 2, v10, v14);
}

uint64_t sub_17B084(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v29 = a5;
  v30 = a3;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);

  v18 = sub_2CDFE0();
  v19 = sub_2CE680();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v27 = v7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v28 = a6;
    v23 = a4;
    v24 = v22;
    v33[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_3F08(a1, a2, v33);
    _os_log_impl(&dword_0, v18, v19, "AppResolutionCommonStrategy#unsupportedValueSnippet for app: %{public}s", v21, 0xCu);
    sub_306C(v24);
    a4 = v23;
    a6 = v28;
  }

  (*(v13 + 8))(v16, v12);
  (*(a6 + 24))(v33, v29, a6);
  sub_35E0(v33, v33[3]);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = v30;
  v25[5] = a4;

  sub_2CBC50();

  sub_30B8(v31, &qword_34E970, &qword_2D2910);
  return sub_306C(v33);
}

uint64_t sub_17B390(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v43[1] = a1;
  v7 = sub_2CE000();
  v43[0] = *(v7 - 8);
  v8 = *(v43[0] + 64);
  __chkstk_darwin(v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CD2E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2CD2C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v43 - v23;
  if (a2)
  {
    v25 = objc_allocWithZone(SAAppsLaunchApp);

    v26 = [v25 init];
    v27 = sub_2CE260();
    [v26 setLaunchId:v27];

    (*(v17 + 104))(v20, enum case for SiriAudioActionButtonSnippetRole.standard(_:), v16);
    (*(v12 + 104))(v15, enum case for SiriAudioActionButtonSnippetStyle.button(_:), v11);
    v28 = v26;
    sub_2CD2D0();
    v29 = enum case for SiriAudioSnippets.actionButton(_:);
    v30 = sub_2CD230();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v24, v29, v30);
    (*(v31 + 56))(v24, 0, 1, v30);
    v46(v24);
  }

  else
  {
    v33 = v45;
    v32 = v46;
    v34 = v43[0];
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v35 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    (*(v34 + 16))(v10, v35, v7);

    v36 = sub_2CDFE0();
    v37 = sub_2CE680();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v33;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_3F08(v44, v38, &v48);
      _os_log_impl(&dword_0, v36, v37, "AppResolutionCommonStrategy#unsupportedValueSnippet error resolving display name for app: %{public}s", v39, 0xCu);
      sub_306C(v40);
    }

    (*(v34 + 8))(v10, v7);
    v41 = sub_2CD230();
    (*(*(v41 - 8) + 56))(v24, 1, 1, v41);
    v32(v24);
  }

  return sub_30B8(v24, &unk_3530C0, &unk_2D0A40);
}

uint64_t sub_17B8B4@<X0>(__int128 *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7 = a1[3];
  v15 = a1[2];
  v16 = v7;
  v17 = *(a1 + 8);
  v8 = a1[1];
  v13 = *a1;
  v14 = v8;
  v9 = sub_17B9B4(&v13, a3, a4);
  swift_unknownObjectRetain();
  sub_2CE3F0();
  if (*(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a2 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v12 = *(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8));
    sub_2CE430();
  }

  sub_2CE460();
  v10 = sub_17ED64(v9, v14, *(&v14 + 1), v13, *(&v13 + 1));
  result = swift_unknownObjectRelease();
  *a5 = v10;
  return result;
}

id sub_17B9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 8);
  v35 = *a1;
  v36 = v11;
  v37 = 3;
  v12 = sub_235B38();
  if (v12)
  {
    v13 = *(a3 + 72);
    v14 = v12;
    v13(&v30, a2, a3);
    sub_35E0(&v30, *(&v31 + 1));
    sub_2CA160();
    if (v15)
    {
      v16 = sub_2CE260();
    }

    else
    {
      v16 = 0;
    }

    sub_306C(&v30);
    [v14 setRefId:v16];
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v17 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v10, v17, v6);
    sub_333FC(a1, &v30);
    v18 = sub_2CDFE0();
    v19 = sub_2CE680();
    sub_9AA00(a1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      v22 = *(a1 + 48);
      v32 = *(a1 + 32);
      v33 = v22;
      v34 = *(a1 + 64);
      v23 = *(a1 + 16);
      v30 = *a1;
      v31 = v23;
      sub_333FC(a1, v28);
      v24 = sub_2CE2A0();
      v26 = sub_3F08(v24, v25, &v29);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_0, v18, v19, "AppResolutionCommonStrategy#generateCommandForAppConcept cannot construct rske for app: %s", v20, 0xCu);
      sub_306C(v21);
    }

    (*(v7 + 8))(v10, v6);
    return [objc_allocWithZone(SASendCommands) init];
  }

  return v14;
}

uint64_t sub_17BCE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v10 = *(a1 + 64);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  result = sub_17F1E0(v9);
  if (result)
  {

    sub_2CE3F0();
    if (*(&dword_10 + (*a4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a4 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v8 = *(&dword_10 + (*a4 & 0xFFFFFFFFFFFFFF8));
      sub_2CE430();
    }

    sub_2CE460();
  }

  return result;
}

unint64_t sub_17BDC0()
{
  result = qword_353000;
  if (!qword_353000)
  {
    sub_2DB30(&qword_353008, &qword_2D5670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353000);
  }

  return result;
}

uint64_t sub_17BFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for InternalRenderingFlowStrategy();

  return AppResolutionFlowStrategy.makeAppResolutionSuccessfulResponse(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_17C060()
{
  type metadata accessor for InternalRenderingFlowStrategy();

  return sub_2C9440();
}

uint64_t sub_17C0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for InternalRenderingFlowStrategy();

  return AppResolutionFlowStrategy.makeErrorOutput(intent:error:completion:)(a1, a2, a3, a4, v11, a6);
}

Swift::Int sub_17C140(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_17D0F8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_17C1AC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_17C1AC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2CEE60(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_2CE450();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_17C444(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_17C2A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_17C2A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    sub_17E984();
    v8 = (v7 + 72 * v4);
    v9 = v6 - v4 + 1;
LABEL_5:
    v10 = v9;
    for (i = v8; ; i = (i - 72))
    {
      v24 = i[2];
      v26 = i[3];
      v28 = *(i + 8);
      v20 = *i;
      v22 = i[1];
      v17 = *(i - 40);
      v18 = *(i - 24);
      v19 = *(i - 1);
      v15 = *(i - 72);
      v16 = *(i - 56);
      result = sub_2CE240();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v8 = (v8 + 72);
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v12 = i - 72;
      v23 = i[1];
      v25 = i[2];
      v27 = i[3];
      v29 = *(i + 8);
      v21 = *i;
      v13 = *(i - 24);
      i[2] = *(i - 40);
      i[3] = v13;
      *(i + 8) = *(i - 1);
      v14 = *(i - 56);
      *i = *(i - 72);
      i[1] = v14;
      *v12 = v21;
      *(v12 + 64) = v29;
      *(v12 + 32) = v25;
      *(v12 + 48) = v27;
      *(v12 + 16) = v23;
      if (!v10)
      {
        goto LABEL_4;
      }

      ++v10;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_17C444(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v4;
  v88 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_92:
    v6 = v7;
    v7 = *v88;
    if (!*v88)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = a3;
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_17D0D0(v10);
      v10 = result;
    }

    v81 = *(v10 + 2);
    if (v81 >= 2)
    {
      while (1)
      {
        v82 = *v5;
        if (!*v5)
        {
          goto LABEL_129;
        }

        v5 = *&v10[16 * v81];
        v83 = *&v10[16 * v81 + 24];
        sub_17CC90((v82 + 72 * v5), (v82 + 72 * *&v10[16 * v81 + 16]), (v82 + 72 * v83), v7);
        if (v6)
        {
        }

        if (v83 < v5)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_17D0D0(v10);
        }

        if (v81 - 2 >= *(v10 + 2))
        {
          goto LABEL_119;
        }

        v84 = &v10[16 * v81];
        *v84 = v5;
        *(v84 + 1) = v83;
        result = sub_17D044(v81 - 1);
        v81 = *(v10 + 2);
        v5 = a3;
        if (v81 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      v17 = v9 + 1;
    }

    else
    {
      v5 = *a3;
      v13 = *a3 + 72 * v12;
      v129 = *(v13 + 32);
      v130 = *(v13 + 48);
      v131 = *(v13 + 64);
      v127 = *v13;
      v128 = *(v13 + 16);
      v14 = *a3 + 72 * v11;
      v106 = *(v14 + 32);
      v108 = *(v14 + 48);
      v110 = *(v14 + 64);
      v102 = *v14;
      v104 = *(v14 + 16);
      sub_17E984();
      result = sub_2CE240();
      v6 = result;
      v15 = (v11 + 2);
      if (v11 + 2 >= v8)
      {
        v17 = v11 + 2;
      }

      else
      {
        v16 = v5 + 72 * v11 + 144;
        while (1)
        {
          v5 = v15;
          v99 = *(v16 + 32);
          v100 = *(v16 + 48);
          v101 = *(v16 + 64);
          v97 = *v16;
          v98 = *(v16 + 16);
          v94 = *(v16 - 40);
          v95 = *(v16 - 24);
          v96 = *(v16 - 8);
          v92 = *(v16 - 72);
          v93 = *(v16 - 56);
          result = sub_2CE240();
          if ((v6 ^ result))
          {
            break;
          }

          v15 = (v5 + 1);
          v16 += 72;
          if (v8 == v5 + 1)
          {
            v12 = v5;
            v17 = v8;
            goto LABEL_14;
          }
        }

        v12 = v5 - 1;
        v17 = v5;
      }

LABEL_14:
      v18 = a3;
      if ((v6 & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v17 < v11)
      {
        goto LABEL_122;
      }

      if (v11 > v12)
      {
        goto LABEL_17;
      }

      v6 = v7;
      v31 = 72 * v17 - 72;
      v5 = 72 * v11;
      v32 = v17;
      v33 = v11;
      do
      {
        if (v33 != --v32)
        {
          v35 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v34 = v35 + v31;
          v117 = *(v35 + v5 + 16);
          v120 = *(v35 + v5 + 32);
          v123 = *(v35 + v5 + 48);
          v126 = *(v35 + v5 + 64);
          v114 = *(v35 + v5);
          result = memmove((v35 + v5), (v35 + v31), 0x48uLL);
          *(v34 + 16) = v117;
          *(v34 + 32) = v120;
          *(v34 + 48) = v123;
          *(v34 + 64) = v126;
          *v34 = v114;
        }

        ++v33;
        v31 -= 72;
        v5 += 72;
      }

      while (v33 < v32);
      v7 = v6;
    }

    v18 = a3;
LABEL_17:
    v19 = v18[1];
    if (v17 < v19)
    {
      if (__OFSUB__(v17, v11))
      {
        goto LABEL_121;
      }

      if (v17 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_123;
        }

        if (v11 + a4 >= v19)
        {
          v5 = v18[1];
        }

        else
        {
          v5 = v11 + a4;
        }

        if (v5 < v11)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v17 != v5)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v17 < v11)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_B9248(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v37 = *(v10 + 2);
    v36 = *(v10 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_B9248((v36 > 1), v37 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v38;
    v39 = &v10[16 * v37];
    *(v39 + 4) = v11;
    *(v39 + 5) = v17;
    v6 = *v88;
    if (!*v88)
    {
      goto LABEL_130;
    }

    v90 = v17;
    if (v37)
    {
      while (1)
      {
        v40 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v41 = *(v10 + 4);
          v42 = *(v10 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_61:
          if (v44)
          {
            goto LABEL_109;
          }

          v57 = &v10[16 * v38];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_112;
          }

          v63 = &v10[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_116;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v38 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v67 = &v10[16 * v38];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_75:
        if (v62)
        {
          goto LABEL_111;
        }

        v70 = &v10[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_114;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_82:
        v78 = v40 - 1;
        if (v40 - 1 >= v38)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*v18)
        {
          goto LABEL_127;
        }

        v79 = *&v10[16 * v78 + 32];
        v5 = *&v10[16 * v40 + 40];
        sub_17CC90((*v18 + 72 * v79), (*v18 + 72 * *&v10[16 * v40 + 32]), (*v18 + 72 * v5), v6);
        if (v7)
        {
        }

        if (v5 < v79)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_17D0D0(v10);
        }

        if (v78 >= *(v10 + 2))
        {
          goto LABEL_106;
        }

        v80 = &v10[16 * v78];
        *(v80 + 4) = v79;
        *(v80 + 5) = v5;
        result = sub_17D044(v40);
        v38 = *(v10 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v10[16 * v38 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_107;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_108;
      }

      v52 = &v10[16 * v38];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_110;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_113;
      }

      if (v56 >= v48)
      {
        v74 = &v10[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_117;
        }

        if (v43 < v77)
        {
          v40 = v38 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    v8 = v18[1];
    v9 = v90;
    if (v90 >= v8)
    {
      goto LABEL_92;
    }
  }

  v86 = v7;
  v20 = v17;
  v21 = *v18;
  v6 = sub_17E984();
  v22 = (v21 + 72 * v20);
  v23 = v11;
  v24 = v20;
  v85 = v23;
  v25 = v23 - v20 + 1;
  v89 = v5;
LABEL_28:
  v26 = v25;
  for (i = v22; ; i = (i - 72))
  {
    v118 = i[2];
    v121 = i[3];
    v124 = *(i + 8);
    v112 = *i;
    v115 = i[1];
    v107 = *(i - 40);
    v109 = *(i - 24);
    v111 = *(i - 1);
    v103 = *(i - 72);
    v105 = *(i - 56);
    result = sub_2CE240();
    if ((result & 1) == 0)
    {
LABEL_27:
      v22 = (v22 + 72);
      --v25;
      v24 = (v24 + 1);
      v5 = v89;
      if (v24 != v89)
      {
        goto LABEL_28;
      }

      v17 = v89;
      v11 = v85;
      v7 = v86;
      v18 = a3;
      goto LABEL_41;
    }

    if (!v21)
    {
      break;
    }

    v28 = i - 72;
    v116 = i[1];
    v119 = i[2];
    v122 = i[3];
    v125 = *(i + 8);
    v113 = *i;
    v29 = *(i - 24);
    i[2] = *(i - 40);
    i[3] = v29;
    *(i + 8) = *(i - 1);
    v30 = *(i - 56);
    *i = *(i - 72);
    i[1] = v30;
    *v28 = v113;
    *(v28 + 64) = v125;
    *(v28 + 32) = v119;
    *(v28 + 48) = v122;
    *(v28 + 16) = v116;
    if (!v26)
    {
      goto LABEL_27;
    }

    ++v26;
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_17CC90(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 72;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 72;
  if (v9 < v11)
  {
    if (__dst != __src || &__src[72 * v9] <= __dst)
    {
      memmove(__dst, __src, 72 * v9);
    }

    v12 = &v4[72 * v9];
    if (v8 < 72 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_40;
    }

    sub_17E984();
    while (1)
    {
      v29 = *(v6 + 2);
      v31 = *(v6 + 3);
      v33 = *(v6 + 8);
      v25 = *v6;
      v27 = *(v6 + 1);
      v22 = *(v4 + 2);
      v23 = *(v4 + 3);
      v24 = *(v4 + 8);
      v20 = *v4;
      v21 = *(v4 + 1);
      if ((sub_2CE240() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 72;
      if (!v14)
      {
        goto LABEL_13;
      }

LABEL_14:
      v7 += 72;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_40;
      }
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 72;
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(v7, v13, 0x48uLL);
    goto LABEL_14;
  }

  if (__dst != a2 || &a2[72 * v11] <= __dst)
  {
    memmove(__dst, a2, 72 * v11);
  }

  v12 = &v4[72 * v11];
  if (v10 >= 72 && v6 > v7)
  {
    sub_17E984();
    do
    {
      v15 = v6 - 72;
      v5 -= 72;
      v16 = v12;
      while (1)
      {
        v12 = v16;
        v17 = v5 + 72;
        v30 = *(v6 - 40);
        v32 = *(v6 - 24);
        v34 = *(v6 - 1);
        v26 = *v15;
        v28 = *(v6 - 56);
        v37 = *(v16 - 40);
        v38 = *(v16 - 24);
        v39 = *(v16 - 8);
        v35 = *(v16 - 72);
        v36 = *(v16 - 56);
        if (sub_2CE240())
        {
          break;
        }

        v16 -= 72;
        if (v17 < v12 || v5 >= v12 || v17 != v12)
        {
          memmove(v5, v12 - 72, 0x48uLL);
        }

        v5 -= 72;
        if (v16 <= v4)
        {
          v12 -= 72;
          goto LABEL_40;
        }
      }

      if (v17 < v6 || v5 >= v6 || v17 != v6)
      {
        memmove(v5, v6 - 72, 0x48uLL);
      }

      if (v16 <= v4)
      {
        break;
      }

      v6 -= 72;
    }

    while (v15 > v7);
    v6 = v15;
  }

LABEL_40:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[72 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

uint64_t sub_17D044(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_17D0D0(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_17D10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a2;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v29 = v11;
  v31 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2CDFE0();
  v19 = sub_2CE670();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = a5;
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "AppResolutionCommonStrategy#makePromptForConfirmation...", v20, 2u);
    a5 = v28;
  }

  (*(v13 + 8))(v16, v12);
  v21 = v30;
  (*(a5 + 32))(a4, a5);
  v22 = v31;
  (*(v9 + 16))(v31, v21, a4);
  v23 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v24 = (v29 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  *(v25 + 32) = v32;
  *(v25 + 40) = a3;
  (*(v9 + 32))(v25 + v23, v22, a4);
  *(v25 + v24) = a1;

  sub_2872F4(v26, sub_17D44C, v25);
}

uint64_t sub_17D4B8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  v7 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1707CC(a1, v1 + v5, v1 + v8, v10, v11, v3, v4);
}

uint64_t sub_17D5D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24C84;

  return sub_1715F4(a1, v1 + v6, v10, v1 + v9);
}

unint64_t sub_17D750()
{
  result = qword_353060;
  if (!qword_353060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353060);
  }

  return result;
}

unint64_t sub_17D7A4()
{
  result = qword_353068;
  if (!qword_353068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353068);
  }

  return result;
}

unint64_t sub_17D7F8()
{
  result = qword_353078;
  if (!qword_353078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353078);
  }

  return result;
}

uint64_t sub_17D84C(unint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_2CD040() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + *(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v9 = (*(*(v3 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_179C50(a1, v1[4], v1[5], v1 + v6, *(v1 + v7), *(v1 + v7 + 8), v1 + v8, *(v1 + v9), *(v1 + v9 + 8), *(v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
}

uint64_t sub_17D98C()
{
  v1 = *(v0 + 16);
  v2 = sub_2CD040();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v2);
  v10 = *(v0 + v5 + 8);

  (*(v6 + 8))(v0 + v7, v1);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_17DB0C(void (*a1)(char *, void *, uint64_t, void *, uint64_t, uint64_t, uint64_t), void (*a2)(char *, void *, uint64_t, void *, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(sub_2CD040() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_17966C(a1, v2[4], v2[5], v2 + v8, *(v2 + v9), *(v2 + v9 + 8), v2 + ((v9 + *(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80)), v5, v6, a2);
}

uint64_t sub_17DC04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = a5;
  v87 = a6;
  v10 = sub_2CD230();
  v84 = *(v10 - 8);
  v85 = v10;
  v11 = *(v84 + 64);
  __chkstk_darwin(v10);
  v82 = v12;
  v83 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C9B80();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v78 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2CA630();
  v79 = *(v90 - 8);
  v16 = *(v79 + 64);
  v17 = __chkstk_darwin(v90);
  v80 = v18;
  v81 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v89 = &v68 - v19;
  v73 = sub_2CB260();
  v72 = *(v73 - 8);
  v20 = *(v72 + 64);
  __chkstk_darwin(v73);
  v71 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v28 = v27 - 8;
  v75 = *(v27 - 8);
  v29 = *(v75 + 64);
  v30 = __chkstk_darwin(v27);
  v76 = v31;
  v77 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v68 - v32;
  v34 = sub_2CA130();
  (*(*(v34 - 8) + 16))(v33, a2, v34);
  v35 = *(v28 + 56);
  v88 = v33;
  *&v33[v35] = a3;
  v36 = a3;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v39 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  (*(v23 + 16))(v26, v39, v22);

  v40 = sub_2CDFE0();
  v41 = v26;
  v42 = sub_2CE660();

  if (os_log_type_enabled(v40, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v70 = a1;
    v45 = v44;
    v91 = v44;
    *v43 = 136315138;
    sub_2CB130();
    v69 = v41;
    v46 = v71;
    sub_2CD3C0();

    v47 = sub_2CB200();
    v68 = v22;
    v48 = v38;
    v49 = a4;
    v51 = v50;
    (*(v72 + 8))(v46, v73);
    v52 = sub_3F08(v47, v51, &v91);
    a4 = v49;
    v38 = v48;

    *(v43 + 4) = v52;
    _os_log_impl(&dword_0, v40, v42, "AppResolutionCommonStrategy#clarificationOutput with responseMode = %s", v43, 0xCu);
    sub_306C(v45);
    a1 = v70;

    (*(v23 + 8))(v69, v68);
  }

  else
  {

    (*(v23 + 8))(v41, v22);
  }

  v74 = v38;
  v53 = sub_2C9B40();
  __chkstk_darwin(v53);
  *(&v68 - 4) = a4;
  *(&v68 - 3) = v38;
  v54 = v88;
  v55 = v89;
  *(&v68 - 2) = v88;
  sub_2CA560();
  v57 = v83;
  v56 = v84;
  v58 = v85;
  (*(v84 + 16))(v83, a1, v85);
  v59 = v77;
  sub_F3F4(v54, v77, &qword_34C6E8, &unk_2D0FF0);
  v60 = v79;
  v61 = v81;
  (*(v79 + 16))(v81, v55, v90);
  v62 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v63 = (v82 + *(v75 + 80) + v62) & ~*(v75 + 80);
  v64 = (v76 + *(v60 + 80) + v63) & ~*(v60 + 80);
  v65 = swift_allocObject();
  (*(v56 + 32))(v65 + v62, v57, v58);
  sub_14A58(v59, v65 + v63, &qword_34C6E8, &unk_2D0FF0);
  v66 = v90;
  (*(v60 + 32))(v65 + v64, v61, v90);
  sub_20410(&unk_353030, &unk_2D1450);
  sub_2CE4F0();

  (*(v60 + 8))(v89, v66);
  return sub_30B8(v88, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_17E3CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  v7 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1 + v9;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v1 + v10);

  return sub_17A1AC(a1, v1 + v5, v1 + v8, v12, v13, v14, v3, v4);
}

uint64_t sub_17E508(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_17ADD8(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_17E6CC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v6 = (*(*(v3 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_20410(&qword_3530D0, &qword_2D5728) - 8);
  v8 = v1[4];
  v9 = v1[5];
  v10 = *(v1 + v6);
  v11 = v1 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_173C74(a1, v8, v9, v1 + v5, v10, v11, v3, v4);
}

uint64_t sub_17E7D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24C84;

  return sub_1753F0(a1, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_17E984()
{
  result = qword_3530E8;
  if (!qword_3530E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3530E8);
  }

  return result;
}

uint64_t sub_17E9D8()
{
  v1 = *(v0 + 16);
  v2 = sub_20410(&qword_3530D0, &qword_2D5728);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v4, v2);
  (*(v5 + 8))(v0 + v6, v1);

  v9 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16);
}

uint64_t sub_17EB30(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(sub_20410(&qword_3530D0, &qword_2D5728) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v9 = (*(*(v4 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v9);
  v11 = (v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return a2(a1, v2 + v7, v2 + v8, v10, v12, v13, v4, v5);
}

double sub_17EC60@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[4];
  *&result = sub_175E14(a1, v2[5], v2[2], v2[3], a2).n128_u64[0];
  return result;
}

uint64_t sub_17EC80(uint64_t a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 48) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_176044(a1, *(v1 + 32), *(v1 + 40), v1 + v2, *(v1 + v3), *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_17ECF8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_17ED64(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a2;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  swift_unknownObjectRetain();

  v14 = sub_2CDFE0();
  v15 = sub_2CE660();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = a3;
    v17 = v16;
    v33 = swift_slowAlloc();
    v37 = a1;
    v38 = v33;
    *v17 = 136315394;
    swift_unknownObjectRetain();
    sub_20410(&unk_351990, &unk_2D49A8);
    v18 = sub_2CE2A0();
    v34 = a1;
    v20 = a5;
    v21 = sub_3F08(v18, v19, &v38);

    *(v17 + 4) = v21;
    a5 = v20;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_3F08(v36, v35, &v38);
    _os_log_impl(&dword_0, v14, v15, "AppResolutionCommonStrategy#createRowCardSectionWithCommand Creating RowCardSection with command %s title %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  (*(v9 + 8))(v12, v8);
  v22 = [objc_allocWithZone(SFRowCardSection) init];
  v23 = sub_2CE260();
  v24 = [objc_opt_self() textWithString:v23];

  [v22 setLeadingText:v24];
  sub_20410(&unk_351900, &unk_2D0960);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2D0770;
  v26 = v22;
  *(v25 + 32) = sub_2C9C60();
  sub_334A0(0, &qword_3519E0, SFAbstractCommand_ptr);
  isa = sub_2CE400().super.isa;

  [v26 setCommands:isa];

  if (a5)
  {
    v28 = [objc_allocWithZone(SFAppIconImage) init];
    v29 = sub_2CE260();
    [v28 setBundleIdentifier:v29];

    v30 = v28;
    [v30 setSize:{29.0, 29.0}];
    [v26 setImage:v30];
  }

  return v26;
}

uint64_t sub_17F1BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_17BCE4(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_17F1E0(uint64_t *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  sub_2C99A0();
  sub_2C9970();
  sub_2C9980();

  sub_2C9990();
  sub_2CE3F0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v13 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_2CE430();
  }

  sub_2CE460();
  v5 = *a1;
  v4 = a1[1];
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x64496D657469;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v5;
  *(inited + 56) = v4;

  v7 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  sub_237DEC(0xD000000000000034, 0x80000000002DA910, v7);

  v8 = sub_2C9930();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_2C9910();

  return v11;
}

unint64_t sub_17F3C4()
{
  result = qword_353130;
  if (!qword_353130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353130);
  }

  return result;
}

void *sub_17F430(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    sub_2DBFC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    sub_B96A0();
    v4 = (a1 + 40);
    do
    {
      v13 = *(v4 - 1);
      v14 = *v4;
      v5 = sub_2CEBC0();
      v15 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        v12 = v5;
        v10 = v6;
        sub_2DBFC((v7 > 1), v8 + 1, 1);
        v6 = v10;
        v5 = v12;
        v2 = v15;
      }

      v2[2] = v8 + 1;
      v9 = &v2[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_17F540(uint64_t a1, uint64_t a2)
{
  v3 = sub_2CD4E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_186D70(&qword_353140, &type metadata accessor for CommonAudio.Modifier), v9 = sub_2CE220(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_186D70(&qword_353148, &type metadata accessor for CommonAudio.Modifier);
      v17 = sub_2CE250();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_17F758(uint64_t a1, uint64_t a2)
{
  v3 = sub_2CD500();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_186D70(&qword_353150, &type metadata accessor for CommonAudio.Attribute), v9 = sub_2CE220(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_186D70(&qword_353158, &type metadata accessor for CommonAudio.Attribute);
      v17 = sub_2CE250();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_17F970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2CEF50();
  sub_2CE310();
  v7 = sub_2CEF80();
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
    if (v12 || (sub_2CEEA0() & 1) != 0)
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

uint64_t sub_17FA80(uint64_t a1, unsigned int *a2)
{
  v3 = sub_2CAE60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34CFD0, &qword_2D1030);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = sub_20410(&qword_34CFC0, &qword_2D1020);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v27 - v17;
  __chkstk_darwin(v16);
  v20 = &v27 - v19;
  if (sub_2CAD70())
  {
    sub_2CAE50();
  }

  else
  {
    (*(v4 + 56))(v20, 1, 1, v3);
  }

  (*(v4 + 104))(v18, *a2, v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v21 = *(v7 + 48);
  sub_F3F4(v20, v10, &qword_34CFC0, &qword_2D1020);
  sub_F3F4(v18, &v10[v21], &qword_34CFC0, &qword_2D1020);
  v22 = *(v4 + 48);
  if (v22(v10, 1, v3) != 1)
  {
    sub_F3F4(v10, v15, &qword_34CFC0, &qword_2D1020);
    if (v22(&v10[v21], 1, v3) != 1)
    {
      v24 = v28;
      (*(v4 + 32))(v28, &v10[v21], v3);
      sub_186D70(&qword_34CFE8, &type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues);
      v23 = sub_2CE250();
      v25 = *(v4 + 8);
      v25(v24, v3);
      sub_30B8(v18, &qword_34CFC0, &qword_2D1020);
      sub_30B8(v20, &qword_34CFC0, &qword_2D1020);
      v25(v15, v3);
      sub_30B8(v10, &qword_34CFC0, &qword_2D1020);
      return v23 & 1;
    }

    sub_30B8(v18, &qword_34CFC0, &qword_2D1020);
    sub_30B8(v20, &qword_34CFC0, &qword_2D1020);
    (*(v4 + 8))(v15, v3);
    goto LABEL_9;
  }

  sub_30B8(v18, &qword_34CFC0, &qword_2D1020);
  sub_30B8(v20, &qword_34CFC0, &qword_2D1020);
  if (v22(&v10[v21], 1, v3) != 1)
  {
LABEL_9:
    sub_30B8(v10, &qword_34CFD0, &qword_2D1030);
    v23 = 0;
    return v23 & 1;
  }

  sub_30B8(v10, &qword_34CFC0, &qword_2D1020);
  v23 = 1;
  return v23 & 1;
}

id sub_17FF0C(uint64_t a1, void (*a2)(unint64_t), _BYTE *a3, uint64_t a4, void *a5)
{
  v794 = a3;
  v789 = a2;
  v713 = sub_2CD4E0();
  v712 = *(v713 - 8);
  v8 = *(v712 + 64);
  __chkstk_darwin(v713);
  v711 = &v686[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v741 = sub_2CD560();
  v739 = *(v741 - 8);
  v10 = *(v739 + 64);
  v11 = __chkstk_darwin(v741);
  v710 = &v686[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v705 = &v686[-v13];
  v708 = sub_20410(&qword_34D680, &qword_2D1580);
  v14 = *(*(v708 - 8) + 64);
  __chkstk_darwin(v708);
  v709 = &v686[-v15];
  v696 = sub_20410(&qword_34D688, &qword_2D1588);
  v16 = *(*(v696 - 8) + 64);
  __chkstk_darwin(v696);
  v698 = &v686[-v17];
  v762 = sub_2CD4C0();
  v783 = *(v762 - 8);
  v18 = *(v783 + 64);
  __chkstk_darwin(v762);
  v724 = &v686[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v755 = sub_2CD4A0();
  v745 = *(v755 - 8);
  v20 = *(v745 + 64);
  __chkstk_darwin(v755);
  v715 = &v686[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v738 = sub_20410(&qword_34D690, &qword_2D1590);
  v22 = *(*(v738 - 8) + 64);
  __chkstk_darwin(v738);
  v754 = &v686[-v23];
  v24 = sub_20410(&qword_34D698, &qword_2D1598);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v721 = &v686[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v773 = &v686[-v29];
  __chkstk_darwin(v28);
  v774 = &v686[-v30];
  v782 = sub_2CE000();
  v781 = *(v782 - 8);
  v31 = *(v781 + 64);
  __chkstk_darwin(v782);
  v780 = &v686[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_20410(&unk_353080, &qword_2D1460);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v734 = &v686[-v35];
  v733 = sub_2CD5D0();
  v732 = *(v733 - 8);
  v36 = *(v732 + 64);
  __chkstk_darwin(v733);
  v731 = &v686[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = sub_20410(&qword_34D6A0, &unk_2D3490);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v718 = &v686[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = __chkstk_darwin(v40);
  v706 = &v686[-v43];
  v44 = __chkstk_darwin(v42);
  v717 = &v686[-v45];
  __chkstk_darwin(v44);
  v788 = &v686[-v46];
  v47 = sub_2CD540();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  v776 = &v686[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v806 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v51 = *(*(v806 - 1) + 64);
  v52 = __chkstk_darwin(v806);
  v786 = &v686[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = __chkstk_darwin(v52);
  v729 = &v686[-v55];
  v56 = __chkstk_darwin(v54);
  v728 = &v686[-v57];
  v58 = __chkstk_darwin(v56);
  v744 = &v686[-v59];
  v60 = __chkstk_darwin(v58);
  v748 = &v686[-v61];
  v62 = __chkstk_darwin(v60);
  v743 = &v686[-v63];
  v64 = __chkstk_darwin(v62);
  v784 = &v686[-v65];
  __chkstk_darwin(v64);
  v800 = &v686[-v66];
  v795 = sub_2CD500();
  v804 = *(v795 - 8);
  v67 = *(v804 + 64);
  __chkstk_darwin(v795);
  v790 = &v686[-((v68 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v775 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v69 = *(*(v775 - 8) + 64);
  v70 = __chkstk_darwin(v775);
  v753 = &v686[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = __chkstk_darwin(v70);
  v703 = &v686[-v73];
  v74 = __chkstk_darwin(v72);
  v725 = &v686[-v75];
  v76 = __chkstk_darwin(v74);
  v740 = &v686[-v77];
  __chkstk_darwin(v76);
  v796 = &v686[-v78];
  v79 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v80 = *(*(v79 - 8) + 64);
  v81 = __chkstk_darwin(v79 - 8);
  v716 = &v686[-((v82 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = __chkstk_darwin(v81);
  v771 = &v686[-v84];
  v85 = __chkstk_darwin(v83);
  v750 = &v686[-v86];
  v87 = __chkstk_darwin(v85);
  v720 = &v686[-v88];
  v89 = __chkstk_darwin(v87);
  v719 = &v686[-v90];
  v91 = __chkstk_darwin(v89);
  v707 = &v686[-v92];
  v93 = __chkstk_darwin(v91);
  v699 = &v686[-v94];
  v95 = __chkstk_darwin(v93);
  v702 = &v686[-v96];
  v97 = __chkstk_darwin(v95);
  v701 = &v686[-v98];
  v99 = __chkstk_darwin(v97);
  v765 = &v686[-v100];
  v101 = __chkstk_darwin(v99);
  v766 = &v686[-v102];
  v103 = __chkstk_darwin(v101);
  v767 = &v686[-v104];
  v105 = __chkstk_darwin(v103);
  v768 = &v686[-v106];
  v107 = __chkstk_darwin(v105);
  v805 = &v686[-v108];
  __chkstk_darwin(v107);
  v787 = &v686[-v109];
  v760 = sub_2CD570();
  v761 = *(v760 - 8);
  v110 = *(v761 + 64);
  v111 = __chkstk_darwin(v760);
  v691 = &v686[-((v112 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v111);
  v793 = &v686[-v113];
  v114 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  v115 = *(*(v114 - 8) + 64);
  v116 = __chkstk_darwin(v114 - 8);
  v692 = &v686[-((v117 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = __chkstk_darwin(v116);
  v697 = &v686[-v119];
  v120 = __chkstk_darwin(v118);
  v695 = &v686[-v121];
  __chkstk_darwin(v120);
  v798 = &v686[-v122];
  v123 = sub_20410(&qword_34D6C8, &unk_2D15C0);
  v124 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123 - 8);
  v126 = &v686[-v125];
  v127 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v128 = *(*(v127 - 8) + 64);
  v129 = __chkstk_darwin(v127 - 8);
  v722 = &v686[-((v130 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v131 = __chkstk_darwin(v129);
  v704 = &v686[-v132];
  v133 = __chkstk_darwin(v131);
  v700 = &v686[-v134];
  v135 = __chkstk_darwin(v133);
  v723 = &v686[-v136];
  v137 = __chkstk_darwin(v135);
  v714 = &v686[-v138];
  v139 = __chkstk_darwin(v137);
  v737 = &v686[-v140];
  v141 = __chkstk_darwin(v139);
  v772 = &v686[-v142];
  v143 = __chkstk_darwin(v141);
  v751 = &v686[-v144];
  v145 = __chkstk_darwin(v143);
  v726 = &v686[-v146];
  v147 = __chkstk_darwin(v145);
  v727 = &v686[-v148];
  v149 = __chkstk_darwin(v147);
  v749 = &v686[-v150];
  v151 = __chkstk_darwin(v149);
  v769 = &v686[-v152];
  v153 = __chkstk_darwin(v151);
  v770 = &v686[-v154];
  v155 = __chkstk_darwin(v153);
  v764 = &v686[-v156];
  v157 = __chkstk_darwin(v155);
  v746 = &v686[-v158];
  v159 = __chkstk_darwin(v157);
  v736 = &v686[-v160];
  v161 = __chkstk_darwin(v159);
  v791 = &v686[-v162];
  v163 = __chkstk_darwin(v161);
  v778 = &v686[-v164];
  v165 = __chkstk_darwin(v163);
  v763 = &v686[-v166];
  v167 = __chkstk_darwin(v165);
  v742 = &v686[-v168];
  v169 = __chkstk_darwin(v167);
  v735 = &v686[-v170];
  v171 = __chkstk_darwin(v169);
  v785 = &v686[-v172];
  v173 = __chkstk_darwin(v171);
  v777 = &v686[-v174];
  v175 = __chkstk_darwin(v173);
  v177 = &v686[-v176];
  v178 = __chkstk_darwin(v175);
  v801 = &v686[-v179];
  v180 = __chkstk_darwin(v178);
  v802 = &v686[-v181];
  v182 = __chkstk_darwin(v180);
  v184 = &v686[-v183];
  v185 = __chkstk_darwin(v182);
  v187 = &v686[-v186];
  v188 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v185);
  v190 = &v686[-((v189 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v759 = v191;
  (*(v191 + 16))(v190, a1, a4);
  v792 = sub_2CD770();
  v803 = v192;
  v812 = a4;
  sub_2CD780();
  v193 = *(v48 + 48);
  v194 = v193(v187, 1, v47);
  v810 = v190;
  v797 = v48;
  v807 = v48 + 48;
  v808 = v193;
  *&v811 = v47;
  if (v194 == 1)
  {
    sub_30B8(v187, &qword_34D6D0, qword_2D34A0);
    sub_2CD8D0();
    if (v193(v184, 1, v47) == 1)
    {
      sub_30B8(v184, &qword_34D6D0, qword_2D34A0);
      v799 = 0;
    }

    else
    {
      v799 = sub_2AA0F4();
      (*(v797 + 8))(v184, v811);
    }
  }

  else
  {
    v799 = sub_2AA0F4();
    (*(v48 + 8))(v187, v47);
  }

  v195 = v760;
  v196 = v798;
  sub_2CD830();
  v197 = sub_2CD4B0();
  v198 = *(v197 - 8);
  v199 = (*(v198 + 48))(v126, 1, v197);
  v747 = v177;
  if (v199 == 1)
  {
    sub_30B8(v126, &qword_34D6C8, &unk_2D15C0);
    v798 = 0;
  }

  else
  {
    v798 = sub_2AA118();
    (*(v198 + 8))(v126, v197);
  }

  v200 = sub_2CD880();
  v758 = sub_17F430(v200);

  v201 = sub_2CD850();
  v202 = sub_2CD710();
  v814 = v201;
  sub_80D34(v202);
  v203 = sub_17F430(v814);

  if (v203[2] != 1)
  {
    v794 = 0;
    v208 = 0;
    v206 = v761;
    v207 = v805;
    goto LABEL_20;
  }

  v204 = sub_2CBD90();
  v206 = v761;
  v207 = v805;
  if (v794)
  {
    if (v204 == v789 && v205 == v794)
    {
    }

    else
    {
      v209 = sub_2CEEA0();

      if ((v209 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (v203[2])
    {
      v208 = v203[5];
      v794 = v203[4];

      goto LABEL_20;
    }
  }

  else
  {
  }

LABEL_19:
  v794 = 0;
  v208 = 0;
LABEL_20:
  v756 = sub_1866D0(v810, v812);
  sub_2CD900();
  v210 = *(v206 + 48);
  v694 = v206 + 48;
  v211 = v210(v196, 1, v195);
  v757 = v203;
  v693 = v210;
  if (v211 == 1)
  {
    sub_30B8(v196, &qword_34D6C0, &qword_2D15B8);
    v730 = 0;
  }

  else
  {
    v212 = v793;
    (*(v206 + 16))(v793, v196, v195);
    v213 = (*(v206 + 88))(v212, v195);
    if (v213 == enum case for CommonAudio.Reference.definite(_:))
    {
      v730 = 1;
    }

    else
    {
      if (v213 != enum case for CommonAudio.Reference.indefinite(_:))
      {
        (*(v206 + 8))(v212, v195);
      }

      v730 = 0;
    }

    (*(v206 + 8))(v196, v195);
  }

  sub_20410(&qword_34D6D8, &qword_2D15D0);
  v214 = v804;
  v215 = *(v804 + 72);
  v216 = (*(v804 + 80) + 32) & ~*(v804 + 80);
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_2D0E40;
  v218 = v217 + v216;
  v220 = v214 + 104;
  v219 = *(v214 + 104);
  v221 = v217 + v216;
  v752 = enum case for CommonAudio.Attribute.affinity(_:);
  v222 = v795;
  v219(v221);
  v789 = v219;
  (v219)(v218 + v215, enum case for CommonAudio.Attribute.recommended(_:), v222);
  sub_186A50(v217);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  LOBYTE(v217) = sub_2CD950();

  v809 = a5;
  v779 = v220;
  if (v217)
  {
    goto LABEL_29;
  }

  v793 = v208;
  v224 = v787;
  sub_2CD840();
  v225 = v783;
  v226 = v762;
  v690 = *(v783 + 104);
  v690(v207, enum case for CommonAudio.Verb.start(_:), v762);
  v227 = *(v225 + 56);
  v689 = v225 + 56;
  v688 = v227;
  v227(v207, 0, 1, v226);
  v228 = *(v775 + 48);
  v229 = v207;
  v230 = v796;
  sub_F3F4(v224, v796, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v229, &v230[v228], &qword_34D6B8, &qword_2D15B0);
  v231 = *(v225 + 48);
  if (v231(v230, 1, v226) == 1)
  {
    sub_30B8(v229, &qword_34D6B8, &qword_2D15B0);
    v230 = v796;
    sub_30B8(v224, &qword_34D6B8, &qword_2D15B0);
    v232 = v231(&v230[v228], 1, v226);
    v233 = v771;
    if (v232 == 1)
    {
      sub_30B8(v230, &qword_34D6B8, &qword_2D15B0);
LABEL_43:
      v753 = &dword_8;
      v208 = v793;
      goto LABEL_49;
    }

    goto LABEL_35;
  }

  v234 = v720;
  sub_F3F4(v230, v720, &qword_34D6B8, &qword_2D15B0);
  if (v231(&v230[v228], 1, v226) == 1)
  {
    sub_30B8(v805, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v787, &qword_34D6B8, &qword_2D15B0);
    (*(v783 + 8))(v234, v226);
    v233 = v771;
LABEL_35:
    sub_30B8(v230, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_36;
  }

  v241 = v783;
  v242 = v724;
  (*(v783 + 32))(v724, &v230[v228], v226);
  sub_186D70(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v687 = sub_2CE250();
  v243 = *(v241 + 8);
  v243(v242, v226);
  sub_30B8(v805, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v787, &qword_34D6B8, &qword_2D15B0);
  v243(v234, v226);
  sub_30B8(v230, &qword_34D6B8, &qword_2D15B0);
  v233 = v771;
  if (v687)
  {
    goto LABEL_43;
  }

LABEL_36:
  v235 = v750;
  sub_2CD840();
  v690(v233, enum case for CommonAudio.Verb.play(_:), v226);
  v236 = v235;
  v688(v233, 0, 1, v226);
  v237 = *(v775 + 48);
  v238 = v753;
  sub_F3F4(v235, v753, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v233, &v238[v237], &qword_34D6B8, &qword_2D15B0);
  if (v231(v238, 1, v226) == 1)
  {
    sub_30B8(v233, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v235, &qword_34D6B8, &qword_2D15B0);
    v239 = v231(&v238[v237], 1, v226);
    v208 = v793;
    if (v239 == 1)
    {
      sub_30B8(v238, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_45;
    }

LABEL_41:
    sub_30B8(v238, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_46;
  }

  v240 = v716;
  sub_F3F4(v238, v716, &qword_34D6B8, &qword_2D15B0);
  if (v231(&v238[v237], 1, v226) == 1)
  {
    sub_30B8(v233, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v235, &qword_34D6B8, &qword_2D15B0);
    (*(v783 + 8))(v240, v226);
    v208 = v793;
    goto LABEL_41;
  }

  v244 = v783;
  v245 = v724;
  (*(v783 + 32))(v724, &v238[v237], v226);
  sub_186D70(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v246 = sub_2CE250();
  v247 = *(v244 + 8);
  v247(v245, v226);
  sub_30B8(v771, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v236, &qword_34D6B8, &qword_2D15B0);
  v247(v240, v226);
  sub_30B8(v238, &qword_34D6B8, &qword_2D15B0);
  v208 = v793;
  if ((v246 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_45:
  v248 = sub_2CD8E0();
  v249 = v712;
  v250 = v711;
  v251 = v713;
  (*(v712 + 104))(v711, enum case for CommonAudio.Modifier.moreOf(_:), v713);
  v252 = sub_17F540(v250, v248);

  (*(v249 + 8))(v250, v251);
  if ((v252 & 1) == 0)
  {
LABEL_46:
    v253 = v790;
    v254 = v795;
    (v789)(v790, enum case for CommonAudio.Attribute.discovery(_:), v795);
    v255 = sub_2CD910();
    (*(v804 + 8))(v253, v254);
    v223 = v798;
    if (v255)
    {
      v223 = (&dword_0 + 1);
    }

    goto LABEL_48;
  }

LABEL_29:
  v223 = &dword_8;
LABEL_48:
  v753 = v223;
LABEL_49:
  v256 = v790;
  v257 = v795;
  (v789)(v790, enum case for CommonAudio.Attribute.addToUnspecifiedPlaylist(_:), v795);
  v258 = sub_2CD910();
  v259 = *(v804 + 8);
  v804 += 8;
  v750 = v259;
  v259(v256, v257);
  v260 = v799;
  if (v258)
  {
    v260 = 0;
  }

  v771 = v260;
  v261 = sub_2CD740();
  if (!v261[2])
  {
    goto LABEL_55;
  }

  v263 = v261[4];
  v262 = v261[5];
  v264 = v261[6];
  v265 = v261[7];

  v266 = sub_BF40C(v263, v262);
  if (!v267)
  {

LABEL_55:

    v269 = v797;
    v270 = sub_2CD8B0();
    if (v270[2])
    {
      v268 = v270[5];
      v787 = v270[4];
    }

    else
    {

      v787 = 0;
      v268 = 0;
    }

    goto LABEL_58;
  }

  v268 = v267;
  v787 = v266;

  v792 = v264;
  v803 = v265;
  v269 = v797;
LABEL_58:
  v271 = sub_2CD730();
  v272 = v802;
  if (v271[2])
  {
    v273 = v271[5];
    v794 = v271[4];

    v796 = (&dword_0 + 1);
    v208 = v273;
  }

  else
  {

    v796 = 0;
  }

  v274 = v801;
  v805 = v268;
  if (v268)
  {

    sub_2CD8D0();
    v275 = v811;
    (*(v269 + 104))(v274, enum case for CommonAudio.MediaType.news(_:), v811);
    v276 = v269;
    (*(v269 + 56))(v274, 0, 1, v275);
    v277 = *(v806 + 12);
    v278 = v274;
    v279 = v800;
    sub_F3F4(v272, v800, &qword_34D6D0, qword_2D34A0);
    v280 = v279;
    sub_F3F4(v278, &v279[v277], &qword_34D6D0, qword_2D34A0);
    v281 = v808;
    if (v808(v279, 1, v275) == 1)
    {
      sub_30B8(v278, &qword_34D6D0, qword_2D34A0);
      v282 = v800;
      sub_30B8(v272, &qword_34D6D0, qword_2D34A0);
      v269 = v276;
      if (v281(&v282[v277], 1, v811) == 1)
      {
        sub_30B8(v282, &qword_34D6D0, qword_2D34A0);
LABEL_70:

        v794 = v787;
        v208 = v268;
        goto LABEL_71;
      }
    }

    else
    {
      v283 = v279;
      v284 = v747;
      sub_F3F4(v283, v747, &qword_34D6D0, qword_2D34A0);
      if (v281(&v280[v277], 1, v811) != 1)
      {
        v269 = v276;
        v285 = *(v276 + 32);
        v286 = &v280[v277];
        v287 = v280;
        v288 = v776;
        v793 = v208;
        v289 = v811;
        v285(v776, v286, v811);
        sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
        v290 = sub_2CE250();
        v291 = *(v269 + 8);
        v291(v288, v289);
        sub_30B8(v801, &qword_34D6D0, qword_2D34A0);
        sub_30B8(v802, &qword_34D6D0, qword_2D34A0);
        v208 = v793;
        v291(v284, v289);
        v268 = v805;
        sub_30B8(v287, &qword_34D6D0, qword_2D34A0);
        if (v290)
        {
          goto LABEL_70;
        }

LABEL_68:

        goto LABEL_71;
      }

      sub_30B8(v801, &qword_34D6D0, qword_2D34A0);
      v282 = v800;
      sub_30B8(v802, &qword_34D6D0, qword_2D34A0);
      v269 = v276;
      (*(v276 + 8))(v284, v811);
    }

    sub_30B8(v282, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_68;
  }

LABEL_71:
  v292 = sub_2CD760();
  v293 = v292[2];
  v294 = v785;
  v793 = v208;
  if (v293)
  {
    v295 = v292[4];
    v296 = v292[5];

    v297 = sub_BF40C(v295, v296);
    v299 = v298;

    v798 = v299;
    if (v299)
    {
      v747 = v297;
LABEL_79:
      v308 = v777;
      goto LABEL_82;
    }
  }

  else
  {

    v297 = 0;
  }

  v300 = sub_2CD790();
  if (!v300[2])
  {
    v747 = v297;

    v798 = 0;
    goto LABEL_79;
  }

  v301 = v300[4];
  v302 = v300[5];
  v304 = v300[6];
  v303 = v300[7];

  v305 = sub_BF40C(v301, v302);
  v798 = v306;
  if (v306)
  {
    v307 = v305;

    v792 = v304;
    v803 = v303;
    v747 = v307;
  }

  else
  {
    v747 = v297;

    v798 = 0;
  }

  v269 = v797;
  v308 = v777;
  v294 = v785;
LABEL_82:
  sub_2CD8D0();
  v309 = v294;
  v310 = v294;
  v311 = v811;
  v801 = *(v269 + 104);
  v802 = (v269 + 104);
  (v801)(v309, enum case for CommonAudio.MediaType.playlist(_:), v811);
  v799 = *(v269 + 56);
  v800 = (v269 + 56);
  (v799)(v310, 0, 1, v311);
  v312 = *(v806 + 12);
  v313 = v784;
  sub_F3F4(v308, v784, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v310, v313 + v312, &qword_34D6D0, qword_2D34A0);
  v314 = v808;
  if (v808(v313, 1, v311) == 1)
  {
    v315 = v314;
    sub_30B8(v310, &qword_34D6D0, qword_2D34A0);
    v316 = v784;
    sub_30B8(v308, &qword_34D6D0, qword_2D34A0);
    if (v315(v316 + v312, 1, v811) == 1)
    {
      v317 = v805;
LABEL_91:
      sub_30B8(v316, &qword_34D6D0, qword_2D34A0);
      goto LABEL_96;
    }

    goto LABEL_87;
  }

  v318 = v735;
  sub_F3F4(v313, v735, &qword_34D6D0, qword_2D34A0);
  if (v314(v313 + v312, 1, v811) == 1)
  {
    sub_30B8(v785, &qword_34D6D0, qword_2D34A0);
    v316 = v784;
    sub_30B8(v777, &qword_34D6D0, qword_2D34A0);
    (*(v269 + 8))(v318, v811);
LABEL_87:
    sub_30B8(v316, &qword_34D6A8, &unk_2D15A0);
    v319 = v743;
    v320 = v763;
    goto LABEL_88;
  }

  v332 = v776;
  v333 = v811;
  (*(v269 + 32))(v776, v313 + v312, v811);
  sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  v334 = sub_2CE250();
  v335 = *(v269 + 8);
  v335(v332, v333);
  sub_30B8(v785, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v777, &qword_34D6D0, qword_2D34A0);
  v335(v318, v333);
  v269 = v797;
  sub_30B8(v313, &qword_34D6D0, qword_2D34A0);
  v317 = v805;
  v319 = v743;
  v320 = v763;
  if ((v334 & 1) == 0)
  {
LABEL_88:
    v321 = v742;
    sub_2CD8D0();
    v322 = v811;
    (v801)(v320, enum case for CommonAudio.MediaType.musicPlaylist(_:), v811);
    (v799)(v320, 0, 1, v322);
    v323 = *(v806 + 12);
    sub_F3F4(v321, v319, &qword_34D6D0, qword_2D34A0);
    sub_F3F4(v320, v319 + v323, &qword_34D6D0, qword_2D34A0);
    v324 = v808;
    if (v808(v319, 1, v322) == 1)
    {
      sub_30B8(v320, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v321, &qword_34D6D0, qword_2D34A0);
      v325 = v324(v319 + v323, 1, v811);
      v317 = v805;
      if (v325 == 1)
      {
        v316 = v319;
        goto LABEL_91;
      }
    }

    else
    {
      v326 = v722;
      sub_F3F4(v319, v722, &qword_34D6D0, qword_2D34A0);
      if (v324(v319 + v323, 1, v811) != 1)
      {
        v336 = v776;
        v337 = v811;
        (*(v269 + 32))(v776, v319 + v323, v811);
        sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
        v338 = sub_2CE250();
        v339 = *(v269 + 8);
        v339(v336, v337);
        sub_30B8(v763, &qword_34D6D0, qword_2D34A0);
        sub_30B8(v321, &qword_34D6D0, qword_2D34A0);
        v339(v326, v337);
        sub_30B8(v319, &qword_34D6D0, qword_2D34A0);
        v327 = v798;
        v340 = (v798 != 0) | v338 ^ 1;
        v331 = v747;
        if ((v340 & 1) == 0)
        {
          v331 = 0;
        }

        v317 = v805;
        if (v805)
        {
          v328 = v791;
          v329 = v768;
          v330 = v767;
          if (v340)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        }

        v328 = v791;
LABEL_108:
        v329 = v768;
        v330 = v767;
        goto LABEL_109;
      }

      sub_30B8(v763, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v321, &qword_34D6D0, qword_2D34A0);
      (*(v269 + 8))(v326, v811);
    }

    sub_30B8(v319, &qword_34D6A8, &unk_2D15A0);
    v327 = v798;
    v328 = v791;
    v329 = v768;
    v330 = v767;
    v331 = v747;
    goto LABEL_109;
  }

LABEL_96:
  v327 = v798;
  v331 = v747;
  if (!v798)
  {
    v331 = 0;
  }

  if (!v317)
  {
    v328 = v791;
    goto LABEL_108;
  }

  v328 = v791;
  v329 = v768;
  v330 = v767;
  if (!v798)
  {
LABEL_105:
    v331 = sub_BF40C(v787, v317);
    v327 = v341;
  }

LABEL_109:
  v342 = sub_2CD930();
  v798 = v327;
  LODWORD(v785) = v342;
  if (!v327)
  {
    v343 = v766;
    v344 = v765;
    v327 = v793;
    goto LABEL_123;
  }

  if (v342)
  {

    v796 = (&dword_4 + 1);
    v794 = v331;
    v343 = v766;
    v344 = v765;
    goto LABEL_123;
  }

  sub_2CD840();
  v345 = v783;
  v346 = v762;
  (*(v783 + 104))(v330, enum case for CommonAudio.Verb.update(_:), v762);
  (*(v345 + 56))(v330, 0, 1, v346);
  v347 = *(v775 + 48);
  v348 = v740;
  sub_F3F4(v329, v740, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v330, &v348[v347], &qword_34D6B8, &qword_2D15B0);
  v349 = v345;
  v350 = v348;
  v351 = *(v349 + 48);
  if (v351(v350, 1, v346) == 1)
  {
    sub_30B8(v330, &qword_34D6B8, &qword_2D15B0);
    v352 = v740;
    sub_30B8(v329, &qword_34D6B8, &qword_2D15B0);
    v353 = v351(&v352[v347], 1, v346);
    v354 = v798;
    v328 = v791;
    if (v353 == 1)
    {
      sub_30B8(v352, &qword_34D6B8, &qword_2D15B0);
      v344 = v765;
      v327 = v793;
LABEL_121:

      goto LABEL_122;
    }

    goto LABEL_118;
  }

  v355 = v719;
  sub_F3F4(v350, v719, &qword_34D6B8, &qword_2D15B0);
  if (v351((v350 + v347), 1, v346) == 1)
  {
    sub_30B8(v767, &qword_34D6B8, &qword_2D15B0);
    v352 = v740;
    sub_30B8(v768, &qword_34D6B8, &qword_2D15B0);
    (*(v783 + 8))(v355, v346);
    v354 = v798;
    v328 = v791;
LABEL_118:
    sub_30B8(v352, &qword_34D6B0, &unk_2D4FC0);
    v344 = v765;
    goto LABEL_119;
  }

  v356 = v783;
  v357 = v724;
  (*(v783 + 32))(v724, v350 + v347, v346);
  sub_186D70(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v358 = sub_2CE250();
  v359 = *(v356 + 8);
  v359(v357, v346);
  sub_30B8(v767, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v768, &qword_34D6B8, &qword_2D15B0);
  v359(v719, v346);
  sub_30B8(v350, &qword_34D6B8, &qword_2D15B0);
  v354 = v798;
  v328 = v791;
  v344 = v765;
  v327 = v793;
  if (v358)
  {
    goto LABEL_121;
  }

LABEL_119:

  v796 = (&dword_4 + 1);
  v794 = v331;
  v327 = v354;
LABEL_122:
  v343 = v766;
LABEL_123:
  v360 = sub_2CD800();
  if (v360[2])
  {
    v361 = v360[4];
    v362 = v360[5];

    v363 = sub_BF40C(v361, v362);
    v365 = v364;

    if (!v365)
    {
      goto LABEL_135;
    }

    if ((v785 & 1) == 0)
    {
      v785 = v363;
      v793 = v327;
      sub_2CD840();
      v366 = v343;
      v367 = v783;
      v368 = v762;
      (*(v783 + 104))(v344, enum case for CommonAudio.Verb.update(_:), v762);
      (*(v367 + 56))(v344, 0, 1, v368);
      v369 = *(v775 + 48);
      v370 = v725;
      sub_F3F4(v366, v725, &qword_34D6B8, &qword_2D15B0);
      sub_F3F4(v344, &v370[v369], &qword_34D6B8, &qword_2D15B0);
      v371 = v367;
      v372 = v370;
      v373 = *(v371 + 48);
      if (v373(v372, 1, v368) == 1)
      {
        sub_30B8(v344, &qword_34D6B8, &qword_2D15B0);
        v374 = v725;
        sub_30B8(v366, &qword_34D6B8, &qword_2D15B0);
        if (v373(&v374[v369], 1, v368) == 1)
        {
          sub_30B8(v374, &qword_34D6B8, &qword_2D15B0);
          v327 = v793;
          v328 = v791;
          goto LABEL_134;
        }

        goto LABEL_131;
      }

      v375 = v707;
      sub_F3F4(v372, v707, &qword_34D6B8, &qword_2D15B0);
      if (v373((v372 + v369), 1, v368) == 1)
      {
        sub_30B8(v765, &qword_34D6B8, &qword_2D15B0);
        v374 = v725;
        sub_30B8(v766, &qword_34D6B8, &qword_2D15B0);
        (*(v783 + 8))(v375, v368);
LABEL_131:
        sub_30B8(v374, &qword_34D6B0, &unk_2D4FC0);
        v328 = v791;
        v363 = v785;
        goto LABEL_132;
      }

      v376 = v783;
      v377 = v372 + v369;
      v378 = v372;
      v379 = v724;
      (*(v783 + 32))(v724, v377, v368);
      sub_186D70(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
      LODWORD(v784) = sub_2CE250();
      v380 = *(v376 + 8);
      v380(v379, v368);
      sub_30B8(v765, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v766, &qword_34D6B8, &qword_2D15B0);
      v380(v375, v368);
      sub_30B8(v378, &qword_34D6B8, &qword_2D15B0);
      v327 = v793;
      v328 = v791;
      v363 = v785;
      if (v784)
      {
        goto LABEL_134;
      }
    }

LABEL_132:

    sub_2CD8F0();
    v794 = v363;
LABEL_137:
    v382 = v778;
    goto LABEL_158;
  }

LABEL_134:

LABEL_135:
  v381 = v788;
  sub_2CD8F0();
  if (v327)
  {
    v365 = v327;
    goto LABEL_137;
  }

  v383 = *(v739 + 48);
  if (v383(v381, 1, v741) == 1)
  {
    sub_2CD8C0();
    if (v384)
    {
      v385 = *(sub_2CD7A0() + 16);

      if (!v385)
      {
        v634 = v704;
        sub_2CD8D0();
        if (v808(v634, 1, v811) == 1)
        {
          sub_30B8(v634, &qword_34D6D0, qword_2D34A0);
          v365 = 0;
          v382 = v778;
          v328 = v791;
          goto LABEL_158;
        }

        v635 = sub_2CD530();
        v637 = v797 + 8;
        v636 = *(v797 + 8);
        v636(v634, v811);
        v328 = v791;
        if (v635)
        {
          v784 = v636;
          v785 = v637;
          if (v805)
          {
            v638 = sub_BF40C(v787, v805);
            if (v639)
            {
              v793 = v639;
              v794 = v638;
              v640 = v701;
              v641 = v702;
              goto LABEL_339;
            }
          }

          v642 = sub_2CD890();
          v643 = sub_7EF68(v642);
          v645 = v644;

          v640 = v701;
          v641 = v702;
          if (v645)
          {
            goto LABEL_338;
          }

          v646 = sub_2CD860();
          v643 = sub_7EF68(v646);
          v645 = v647;

          if (v645 || (v648 = sub_2CD730(), v643 = sub_7EF68(v648), v645 = v649, , v645))
          {
LABEL_338:
            v793 = v645;
            v794 = v643;
LABEL_339:
            sub_2CD840();
            v650 = v783;
            v651 = v762;
            (*(v783 + 104))(v641, enum case for CommonAudio.Verb.start(_:), v762);
            (*(v650 + 56))(v641, 0, 1, v651);
            v652 = *(v775 + 48);
            v653 = v703;
            sub_F3F4(v640, v703, &qword_34D6B8, &qword_2D15B0);
            v654 = v653;
            sub_F3F4(v641, &v653[v652], &qword_34D6B8, &qword_2D15B0);
            v655 = *(v650 + 48);
            if (v655(v654, 1, v651) == 1)
            {
              sub_30B8(v641, &qword_34D6B8, &qword_2D15B0);
              v656 = v703;
              sub_30B8(v640, &qword_34D6B8, &qword_2D15B0);
              if (v655(&v656[v652], 1, v651) == 1)
              {
                sub_30B8(v656, &qword_34D6B8, &qword_2D15B0);
                v328 = v791;
                goto LABEL_347;
              }
            }

            else
            {
              v657 = v699;
              sub_F3F4(v654, v699, &qword_34D6B8, &qword_2D15B0);
              if (v655((v654 + v652), 1, v651) != 1)
              {
                v659 = v783;
                v660 = v724;
                (*(v783 + 32))(v724, v654 + v652, v651);
                sub_186D70(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
                v661 = sub_2CE250();
                v662 = *(v659 + 8);
                v662(v660, v651);
                sub_30B8(v702, &qword_34D6B8, &qword_2D15B0);
                sub_30B8(v640, &qword_34D6B8, &qword_2D15B0);
                v662(v699, v651);
                sub_30B8(v654, &qword_34D6B8, &qword_2D15B0);
                v328 = v791;
                if ((v661 & 1) == 0)
                {
                  v658 = v700;
                  v365 = v793;
                  goto LABEL_356;
                }

LABEL_347:
                v663 = v695;
                sub_2CD900();
                v664 = v761;
                v665 = v697;
                v666 = v760;
                (*(v761 + 104))(v697, enum case for CommonAudio.Reference.definite(_:), v760);
                (*(v664 + 56))(v665, 0, 1, v666);
                v667 = *(v696 + 48);
                v668 = v698;
                sub_F3F4(v663, v698, &qword_34D6C0, &qword_2D15B8);
                v669 = &v668[v667];
                v670 = v668;
                v671 = v666;
                sub_F3F4(v665, v669, &qword_34D6C0, &qword_2D15B8);
                v672 = v693;
                if (v693(v670, 1, v666) == 1)
                {
                  sub_30B8(v665, &qword_34D6C0, &qword_2D15B8);
                  v673 = v698;
                  sub_30B8(v663, &qword_34D6C0, &qword_2D15B8);
                  v674 = v672(&v673[v667], 1, v666);
                  v365 = v793;
                  if (v674 == 1)
                  {
                    sub_30B8(v673, &qword_34D6C0, &qword_2D15B8);
                    v658 = v700;
LABEL_355:

                    v794 = 0;
                    v365 = 0xE000000000000000;
LABEL_356:
                    sub_2CD8D0();
                    v685 = v808(v658, 1, v811);
                    v382 = v778;
                    if (v685 == 1)
                    {
                      sub_30B8(v658, &qword_34D6D0, qword_2D34A0);
                      v796 = 0;
                    }

                    else
                    {
                      v796 = sub_2AA4C4();
                      (v784)(v658, v811);
                    }

                    goto LABEL_158;
                  }
                }

                else
                {
                  v675 = v692;
                  sub_F3F4(v670, v692, &qword_34D6C0, &qword_2D15B8);
                  if (v672(v670 + v667, 1, v671) != 1)
                  {
                    v676 = v663;
                    v677 = v761;
                    v678 = v670 + v667;
                    v679 = v691;
                    (*(v761 + 32))(v691, v678, v671);
                    sub_186D70(&qword_34D700, &type metadata accessor for CommonAudio.Reference);
                    v680 = v675;
                    v681 = v671;
                    v682 = v670;
                    v683 = sub_2CE250();
                    v684 = *(v677 + 8);
                    v684(v679, v681);
                    sub_30B8(v697, &qword_34D6C0, &qword_2D15B8);
                    sub_30B8(v676, &qword_34D6C0, &qword_2D15B8);
                    v684(v680, v681);
                    sub_30B8(v682, &qword_34D6C0, &qword_2D15B8);
                    v658 = v700;
                    v365 = v793;
                    if ((v683 & 1) == 0)
                    {
                      goto LABEL_356;
                    }

                    goto LABEL_355;
                  }

                  sub_30B8(v697, &qword_34D6C0, &qword_2D15B8);
                  v673 = v698;
                  sub_30B8(v663, &qword_34D6C0, &qword_2D15B8);
                  (*(v761 + 8))(v675, v671);
                  v365 = v793;
                }

                sub_30B8(v673, &qword_34D688, &qword_2D1588);
                v658 = v700;
                goto LABEL_356;
              }

              sub_30B8(v702, &qword_34D6B8, &qword_2D15B0);
              v656 = v703;
              sub_30B8(v640, &qword_34D6B8, &qword_2D15B0);
              (*(v783 + 8))(v657, v651);
            }

            sub_30B8(v656, &qword_34D6B0, &unk_2D4FC0);
            v658 = v700;
            v365 = v793;
            v328 = v791;
            goto LABEL_356;
          }
        }

        v365 = 0;
        goto LABEL_137;
      }
    }
  }

  v814 = 0;
  v815 = 0xE000000000000000;
  v386 = sub_2CD7A0();
  if (v386[2])
  {
    v387 = v386[4];
    v388 = v386[5];

    v816._countAndFlagsBits = v387;
    v816._object = v388;
    sub_2CE350(v816);
  }

  v389 = sub_2CD8C0();
  if (v390)
  {
    goto LABEL_154;
  }

  v391 = v389;
  v392 = v739;
  v393 = v717;
  v394 = v741;
  (*(v739 + 104))(v717, enum case for CommonAudio.RadioType.am(_:), v741);
  (*(v392 + 56))(v393, 0, 1, v394);
  v395 = v381;
  v396 = *(v708 + 48);
  v397 = v709;
  sub_F3F4(v395, v709, &qword_34D6A0, &unk_2D3490);
  sub_F3F4(v393, &v397[v396], &qword_34D6A0, &unk_2D3490);
  if (v383(v397, 1, v394) == 1)
  {
    sub_30B8(v393, &qword_34D6A0, &unk_2D3490);
    if (v383(&v397[v396], 1, v394) == 1)
    {
      sub_30B8(v397, &qword_34D6A0, &unk_2D3490);
      v381 = v788;
LABEL_152:
      sub_20410(&qword_34CEA8, &unk_2D0EB0);
      v406 = swift_allocObject();
      *(v406 + 16) = xmmword_2D0090;
      *(v406 + 56) = &type metadata for Double;
      *(v406 + 64) = &protocol witness table for Double;
      *(v406 + 32) = v391;
      v399._countAndFlagsBits = sub_2CE280();
      goto LABEL_153;
    }

    goto LABEL_149;
  }

  v398 = v706;
  sub_F3F4(v397, v706, &qword_34D6A0, &unk_2D3490);
  if (v383(&v397[v396], 1, v394) == 1)
  {
    sub_30B8(v717, &qword_34D6A0, &unk_2D3490);
    (*(v739 + 8))(v398, v394);
LABEL_149:
    sub_30B8(v397, &qword_34D680, &qword_2D1580);
    v381 = v788;
    goto LABEL_150;
  }

  v400 = v739;
  v401 = &v397[v396];
  v402 = v705;
  (*(v739 + 32))(v705, v401, v394);
  sub_186D70(&qword_34D6F8, &type metadata accessor for CommonAudio.RadioType);
  v403 = v397;
  v404 = sub_2CE250();
  v405 = *(v400 + 8);
  v405(v402, v394);
  sub_30B8(v717, &qword_34D6A0, &unk_2D3490);
  v405(v706, v394);
  sub_30B8(v403, &qword_34D6A0, &unk_2D3490);
  v381 = v788;
  if (v404)
  {
    goto LABEL_152;
  }

LABEL_150:
  v399._countAndFlagsBits = sub_2CE510();
LABEL_153:
  sub_BF464(v399);

LABEL_154:
  v407 = v718;
  sub_F3F4(v381, v718, &qword_34D6A0, &unk_2D3490);
  v408 = v741;
  if (v383(v407, 1, v741) == 1)
  {
    sub_30B8(v407, &qword_34D6A0, &unk_2D3490);
  }

  else
  {
    v409 = v739;
    v410 = v710;
    (*(v739 + 32))(v710, v407, v408);
    v817._countAndFlagsBits = sub_2CD550();
    sub_BF464(v817);

    (*(v409 + 8))(v410, v408);
  }

  v382 = v778;
  v328 = v791;
  v365 = v815;
  v794 = v814;
  v771 = &dword_10;
LABEL_158:
  v411 = sub_2CD750();
  if (v411[2])
  {
    v412 = v411[4];
    v413 = v411[5];

    v784 = sub_BF40C(v412, v413);
    v785 = v414;
  }

  else
  {

    v784 = 0;
    v785 = 0;
  }

  sub_2CD8D0();
  LODWORD(v783) = enum case for CommonAudio.MediaType.podcast(_:);
  v415 = v811;
  (v801)(v328);
  (v799)(v328, 0, 1, v415);
  v416 = *(v806 + 12);
  v417 = v748;
  sub_F3F4(v382, v748, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v328, &v417[v416], &qword_34D6D0, qword_2D34A0);
  v418 = v808;
  v419 = v808(v417, 1, v415);
  v793 = v365;
  if (v419 == 1)
  {
    sub_30B8(v328, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v382, &qword_34D6D0, qword_2D34A0);
    v420 = v418(&v417[v416], 1, v811);
    v421 = v794;
    if (v420 == 1)
    {
      goto LABEL_170;
    }

    goto LABEL_166;
  }

  v422 = v736;
  sub_F3F4(v417, v736, &qword_34D6D0, qword_2D34A0);
  if (v418(&v417[v416], 1, v811) == 1)
  {
    sub_30B8(v791, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v778, &qword_34D6D0, qword_2D34A0);
    (*(v797 + 8))(v422, v811);
    v421 = v794;
LABEL_166:
    sub_30B8(v417, &qword_34D6A8, &unk_2D15A0);
    v423 = v744;
    v424 = v764;
    goto LABEL_167;
  }

  v436 = v797;
  v437 = v776;
  v438 = v811;
  (*(v797 + 32))(v776, &v417[v416], v811);
  sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  v439 = sub_2CE250();
  v440 = *(v436 + 8);
  v440(v437, v438);
  sub_30B8(v791, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v778, &qword_34D6D0, qword_2D34A0);
  v440(v422, v438);
  sub_30B8(v417, &qword_34D6D0, qword_2D34A0);
  v423 = v744;
  v424 = v764;
  v421 = v794;
  if (v439)
  {
    goto LABEL_179;
  }

LABEL_167:
  v425 = v746;
  sub_2CD8D0();
  v426 = v811;
  (v801)(v424, enum case for CommonAudio.MediaType.episode(_:), v811);
  (v799)(v424, 0, 1, v426);
  v427 = *(v806 + 12);
  sub_F3F4(v425, v423, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v424, v423 + v427, &qword_34D6D0, qword_2D34A0);
  v428 = v424;
  v429 = v808;
  if (v808(v423, 1, v426) != 1)
  {
    v430 = v723;
    sub_F3F4(v423, v723, &qword_34D6D0, qword_2D34A0);
    if (v429(v423 + v427, 1, v811) != 1)
    {
      v441 = v797;
      v442 = v776;
      v443 = v811;
      (*(v797 + 32))(v776, v423 + v427, v811);
      sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
      v444 = sub_2CE250();
      v445 = v423;
      v446 = *(v441 + 8);
      v446(v442, v443);
      sub_30B8(v764, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v746, &qword_34D6D0, qword_2D34A0);
      v447 = v443;
      v421 = v794;
      v446(v430, v447);
      sub_30B8(v445, &qword_34D6D0, qword_2D34A0);
      if (v444)
      {
        goto LABEL_179;
      }

LABEL_174:
      v431 = v749;
      v432 = v770;
      v433 = v769;
      v434 = v793;
      v435 = v785;
      if (!v785)
      {
        goto LABEL_182;
      }

      goto LABEL_181;
    }

    sub_30B8(v764, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v746, &qword_34D6D0, qword_2D34A0);
    (*(v797 + 8))(v430, v811);
LABEL_173:
    sub_30B8(v423, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_174;
  }

  sub_30B8(v428, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v425, &qword_34D6D0, qword_2D34A0);
  if (v808((v423 + v427), 1, v811) != 1)
  {
    goto LABEL_173;
  }

  v417 = v423;
LABEL_170:
  sub_30B8(v417, &qword_34D6D0, qword_2D34A0);
LABEL_179:
  v431 = v749;
  v432 = v770;
  v433 = v769;
  v434 = v793;
  v435 = v785;
  if (v785 || (v448 = , v784 = v787, (v435 = v448) != 0))
  {
LABEL_181:

    v796 = (&dword_4 + 2);
    v421 = v784;
    v434 = v435;
  }

LABEL_182:
  v449 = sub_2CD7D0();
  v450 = sub_7EF68(v449);
  v452 = v451;

  if (!v452 || (v793 = sub_BF40C(v450, v452), v454 = v453, , (v794 = v454) == 0))
  {
    v793 = v421;
    v794 = v434;
LABEL_188:
    v464 = v751;
    goto LABEL_189;
  }

  sub_2CD8D0();
  v455 = v811;
  (v801)(v433, v783, v811);
  (v799)(v433, 0, 1, v455);
  v456 = *(v806 + 12);
  v457 = v728;
  sub_F3F4(v432, v728, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v433, &v457[v456], &qword_34D6D0, qword_2D34A0);
  v458 = v808;
  if (v808(v457, 1, v455) == 1)
  {
    sub_30B8(v433, &qword_34D6D0, qword_2D34A0);
    v459 = v432;
    v460 = v811;
    sub_30B8(v459, &qword_34D6D0, qword_2D34A0);
    v461 = v458(&v457[v456], 1, v460);
    v462 = v797;
    v463 = v729;
    if (v461 == 1)
    {
      sub_30B8(v457, &qword_34D6D0, qword_2D34A0);
LABEL_255:
      v796 = (&dword_4 + 2);
      goto LABEL_188;
    }

    goto LABEL_208;
  }

  v491 = v431;
  sub_F3F4(v457, v431, &qword_34D6D0, qword_2D34A0);
  v492 = v458(&v457[v456], 1, v811);
  v462 = v797;
  if (v492 == 1)
  {
    sub_30B8(v769, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v770, &qword_34D6D0, qword_2D34A0);
    (*(v462 + 8))(v491, v811);
    v463 = v729;
LABEL_208:
    sub_30B8(v457, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_209;
  }

  v565 = v776;
  v566 = v811;
  (*(v797 + 32))(v776, &v457[v456], v811);
  sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  LODWORD(v791) = sub_2CE250();
  v567 = *(v462 + 8);
  v567(v565, v566);
  sub_30B8(v769, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v770, &qword_34D6D0, qword_2D34A0);
  v567(v491, v566);
  sub_30B8(v457, &qword_34D6D0, qword_2D34A0);
  v463 = v729;
  if (v791)
  {
    goto LABEL_255;
  }

LABEL_209:
  v493 = v462;
  v494 = v727;
  sub_2CD8D0();
  v495 = v726;
  v496 = v811;
  (v801)(v726, enum case for CommonAudio.MediaType.episode(_:), v811);
  (v799)(v495, 0, 1, v496);
  v497 = *(v806 + 12);
  sub_F3F4(v494, v463, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v495, v463 + v497, &qword_34D6D0, qword_2D34A0);
  v498 = v808;
  if (v808(v463, 1, v496) == 1)
  {
    sub_30B8(v495, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v494, &qword_34D6D0, qword_2D34A0);
    v499 = v498(v463 + v497, 1, v811);
    v464 = v751;
    if (v499 == 1)
    {
      sub_30B8(v463, &qword_34D6D0, qword_2D34A0);
      v796 = (&dword_4 + 2);
      goto LABEL_189;
    }
  }

  else
  {
    v564 = v714;
    sub_F3F4(v463, v714, &qword_34D6D0, qword_2D34A0);
    if (v498(v463 + v497, 1, v811) != 1)
    {
      v585 = v776;
      v586 = v811;
      (*(v493 + 32))(v776, v463 + v497, v811);
      sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
      v587 = sub_2CE250();
      v588 = *(v493 + 8);
      v588(v585, v586);
      sub_30B8(v726, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v727, &qword_34D6D0, qword_2D34A0);
      v588(v564, v586);
      sub_30B8(v463, &qword_34D6D0, qword_2D34A0);
      v589 = v796;
      if (v587)
      {
        v589 = (&dword_4 + 2);
      }

      v796 = v589;
      goto LABEL_188;
    }

    sub_30B8(v726, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v727, &qword_34D6D0, qword_2D34A0);
    (*(v493 + 8))(v564, v811);
    v464 = v751;
  }

  sub_30B8(v463, &qword_34D6A8, &unk_2D15A0);
LABEL_189:
  v465 = sub_2CD7C0();
  v466 = sub_7EFAC(v465);
  v468 = v467;
  v785 = v469;
  v791 = v470;

  v783 = v466;
  if (v468)
  {

    v784 = sub_BF40C(v466, v468);
    v472 = v471;
  }

  else
  {
    v784 = 0;
    v472 = 0;
  }

  v473 = v772;
  sub_2CD8D0();
  v474 = v811;
  (v801)(v473, enum case for CommonAudio.MediaType.audioBook(_:), v811);
  (v799)(v473, 0, 1, v474);
  v475 = *(v806 + 12);
  v476 = v786;
  sub_F3F4(v464, v786, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v473, &v476[v475], &qword_34D6D0, qword_2D34A0);
  v477 = v808;
  if (v808(v476, 1, v474) == 1)
  {
    sub_30B8(v473, &qword_34D6D0, qword_2D34A0);
    v478 = v786;
    sub_30B8(v464, &qword_34D6D0, qword_2D34A0);
    if (v477(&v478[v475], 1, v811) == 1)
    {
      sub_30B8(v478, &qword_34D6D0, qword_2D34A0);
      v479 = v773;
      v480 = v791;
      v481 = v785;
      goto LABEL_202;
    }

    goto LABEL_197;
  }

  v482 = v737;
  sub_F3F4(v476, v737, &qword_34D6D0, qword_2D34A0);
  if (v477(&v476[v475], 1, v811) == 1)
  {
    sub_30B8(v473, &qword_34D6D0, qword_2D34A0);
    v478 = v786;
    sub_30B8(v464, &qword_34D6D0, qword_2D34A0);
    (*(v797 + 8))(v482, v811);
LABEL_197:
    sub_30B8(v478, &qword_34D6A8, &unk_2D15A0);
    v479 = v773;
    v480 = v791;
    v481 = v785;
LABEL_198:
    if (v472)
    {
      goto LABEL_203;
    }

    sub_6FB3C(v783, v468);
LABEL_200:
    v483 = v755;
    v484 = v754;
    goto LABEL_215;
  }

  v485 = v811;
  v486 = v797;
  v487 = &v476[v475];
  v488 = v776;
  (*(v797 + 32))(v776, v487, v811);
  sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  v489 = sub_2CE250();
  v490 = *(v486 + 8);
  v490(v488, v485);
  sub_30B8(v772, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v464, &qword_34D6D0, qword_2D34A0);
  v490(v482, v485);
  sub_30B8(v786, &qword_34D6D0, qword_2D34A0);
  v479 = v773;
  v480 = v791;
  v481 = v785;
  if ((v489 & 1) == 0)
  {
    goto LABEL_198;
  }

LABEL_202:
  if (v472)
  {
LABEL_203:

    if (v468)
    {
    }

    else
    {
      v480 = 0;
      v481 = 0;
    }

    goto LABEL_214;
  }

  sub_6FB3C(v783, v468);

  if (!v500)
  {
    v472 = 0;
    goto LABEL_200;
  }

  v472 = v500;
  v784 = v787;
  v480 = v803;
  v481 = v792;
LABEL_214:
  v483 = v755;
  v484 = v754;

  v796 = (&dword_8 + 2);
  v792 = v481;
  v803 = v480;
  v793 = v784;
  v794 = v472;
LABEL_215:
  v501 = sub_2CD7B0();
  v502 = v774;
  v799 = v472;
  if (v501)
  {
    v503 = v501;
    if (sub_2CD960() || sub_2CD990())
    {
      v504 = v732;
      v505 = *(v732 + 104);
      v506 = v731;
      v802 = v503;
      v507 = v733;
      v505(v731, enum case for AudioUsoIntent.UsoNamespace.identifier(_:), v733);
      sub_2CD700();
      sub_2CD630();
      v806 = sub_2CAD90();

      (*(v504 + 8))(v506, v507);
      v508 = sub_20410(&qword_34D6F0, &unk_2D15D8);
      v509 = sub_2CD620();
      v510 = *(v509 - 8);
      v511 = *(v510 + 72);
      v512 = (*(v510 + 80) + 32) & ~*(v510 + 80);
      v801 = v508;
      v513 = swift_allocObject();
      v811 = xmmword_2D0090;
      *(v513 + 16) = xmmword_2D0090;
      v514 = enum case for AudioUsoIntent.IterationOptions.includeResolvedReferences(_:);
      v515 = *(v510 + 104);
      v515(v513 + v512, enum case for AudioUsoIntent.IterationOptions.includeResolvedReferences(_:), v509);
      v808 = sub_2CADA0();

      v516 = swift_allocObject();
      *(v516 + 16) = v811;
      v515(v516 + v512, v514, v509);
      v807 = sub_2CADA0();

      v517 = swift_allocObject();
      *(v517 + 16) = v811;
      v515(v517 + v512, v514, v509);
      v518 = sub_2CADA0();

      v519 = v734;
      sub_7F014(v806, v734);

      v520 = sub_2CAB40();
      v521 = *(v520 - 8);
      if ((*(v521 + 48))(v519, 1, v520) == 1)
      {
        sub_30B8(v519, &unk_353080, &qword_2D1460);
      }

      else
      {
        v522 = sub_2CAB20();
        v524 = v523;
        (*(v521 + 8))(v519, v520);
        v525 = sub_BF40C(v522, v524);
        v527 = v526;

        if (v527)
        {

          v792 = v525;
          v803 = v527;
        }
      }

      v528 = v771;
      v529 = v807;
      if (v808 && (, v530 = sub_2CADC0(), v532 = v531, , v532))
      {
        v533 = sub_BF40C(v530, v532);
        v535 = v534;

        v808 = v535;
        if (v535)
        {
          v536 = v533;
        }

        else
        {
          v536 = 0;
        }

        v806 = v536;
        if (!v529)
        {
          goto LABEL_236;
        }
      }

      else
      {
        v806 = 0;
        v808 = 0;
        if (!v529)
        {
          goto LABEL_236;
        }
      }

      v537 = sub_2CADC0();
      v539 = v538;

      if (v539)
      {
        v540 = sub_BF40C(v537, v539);
        v542 = v541;

        v807 = v542;
        if (v542)
        {
          v543 = v540;
        }

        else
        {
          v543 = 0;
        }

        v801 = v543;
        if (v518)
        {
LABEL_237:

          v544 = sub_2CADC0();
          v546 = v545;

          if (v546)
          {
            v547 = sub_BF40C(v544, v546);
            v549 = v548;

            if (v549)
            {

              v550 = 1;
              v793 = v547;
              v794 = v549;
            }

            else
            {
              v550 = 1;
            }

            goto LABEL_257;
          }

LABEL_240:
          v550 = 1;
          goto LABEL_257;
        }

LABEL_235:

        goto LABEL_240;
      }

LABEL_236:
      v801 = 0;
      v807 = 0;
      if (v518)
      {
        goto LABEL_237;
      }

      goto LABEL_235;
    }
  }

  sub_2CD820();
  v551 = v745;
  (*(v745 + 104))(v479, enum case for CommonAudio.Noun.library(_:), v483);
  (*(v551 + 56))(v479, 0, 1, v483);
  v552 = *(v738 + 48);
  sub_F3F4(v502, v484, &qword_34D698, &qword_2D1598);
  sub_F3F4(v479, v484 + v552, &qword_34D698, &qword_2D1598);
  v553 = v502;
  v554 = *(v551 + 48);
  if (v554(v484, 1, v483) == 1)
  {
    sub_30B8(v479, &qword_34D698, &qword_2D1598);
    sub_30B8(v553, &qword_34D698, &qword_2D1598);
    v555 = v554(v484 + v552, 1, v483);
    v528 = v771;
    if (v555 == 1)
    {
      sub_30B8(v484, &qword_34D698, &qword_2D1598);
      v801 = 0;
      v806 = 0;
      v807 = 0;
      v808 = 0;
      v550 = 2;
      goto LABEL_257;
    }

    goto LABEL_247;
  }

  v556 = v721;
  sub_F3F4(v484, v721, &qword_34D698, &qword_2D1598);
  v557 = v554(v484 + v552, 1, v483);
  v528 = v771;
  if (v557 == 1)
  {
    sub_30B8(v773, &qword_34D698, &qword_2D1598);
    sub_30B8(v774, &qword_34D698, &qword_2D1598);
    (*(v745 + 8))(v556, v483);
LABEL_247:
    sub_30B8(v484, &qword_34D690, &qword_2D1590);
    v801 = 0;
    v806 = 0;
    v807 = 0;
    v808 = 0;
    v550 = v730;
    goto LABEL_257;
  }

  v558 = v745;
  v559 = v484 + v552;
  v560 = v715;
  (*(v745 + 32))(v715, v559, v483);
  sub_186D70(&qword_34D6E8, &type metadata accessor for CommonAudio.Noun);
  v561 = sub_2CE250();
  v562 = *(v558 + 8);
  v562(v560, v483);
  sub_30B8(v773, &qword_34D698, &qword_2D1598);
  sub_30B8(v774, &qword_34D698, &qword_2D1598);
  v562(v556, v483);
  sub_30B8(v484, &qword_34D698, &qword_2D1598);
  v801 = 0;
  v806 = 0;
  v807 = 0;
  v808 = 0;
  v563 = (v561 & 1) == 0;
  v550 = v730;
  if (!v563)
  {
    v550 = 2;
  }

LABEL_257:
  v568 = sub_2CD720();
  v569 = v790;
  v570 = v795;
  (v789)(v790, v752, v795);
  v571 = sub_17F758(v569, v568);

  v750(v569, v570);
  v572 = 2;
  if ((v571 & 1) == 0)
  {
    v572 = v550;
  }

  v797 = v572;
  v573 = sub_2CD860();
  v574 = sub_7EF68(v573);
  v576 = v575;

  if (!v576)
  {
    v577 = v793;
    v579 = v794;
    v583 = v796;
    goto LABEL_279;
  }

  v577 = sub_BF40C(v574, v576);
  v579 = v578;

  v580 = v794;
  v581 = v793;
  v582 = v805;
  if (v805)
  {
    v583 = v796;
    if (v579)
    {
      if (v528)
      {
        if (v528 == &dword_0 + 2)
        {

          v528 = 0;
          v583 = 0;
          v807 = v580;
          v581 = v787;
          v580 = v582;
LABEL_277:

          v801 = v577;
          v807 = v579;
          goto LABEL_278;
        }

        goto LABEL_268;
      }

      goto LABEL_270;
    }
  }

  else
  {
    v583 = v796;
    if (v579)
    {
      if (v528)
      {
LABEL_268:
        v584 = v528 == &dword_0 + 2;
        if (v794)
        {
          goto LABEL_277;
        }

LABEL_271:
        if (v584)
        {
          v583 = (&dword_0 + 2);
          goto LABEL_279;
        }

        v580 = 0;
        goto LABEL_277;
      }

LABEL_270:
      v584 = 1;
      if (v794)
      {
        goto LABEL_277;
      }

      goto LABEL_271;
    }
  }

LABEL_278:
  v577 = v581;
  v579 = v580;
LABEL_279:
  v590 = sub_2CD890();
  v591 = sub_7EF68(v590);
  v593 = v592;

  if (v593)
  {
    v594 = sub_BF40C(v591, v593);
    v596 = v595;
  }

  else
  {
    v594 = 0;
    v596 = 0;
  }

  v597 = sub_2CD7F0();
  *&v811 = sub_7EFAC(v597);
  v804 = v598;
  v802 = v599;
  v601 = v600;

  if (!v601)
  {
    v602 = sub_2CD7E0();
    *&v811 = sub_7EFAC(v602);
    v804 = v603;
    v802 = v604;
    v601 = v605;

    if (!v601)
    {
      v800 = 0;
      v610 = v805;
      if (v805)
      {
        goto LABEL_287;
      }

LABEL_292:
      if (v596)
      {
        if (!v528)
        {
          v611 = 0;
          v612 = 0;
          if (v579)
          {
            goto LABEL_295;
          }

          goto LABEL_298;
        }

        goto LABEL_294;
      }

LABEL_296:
      v594 = v577;
      v596 = v579;
LABEL_302:
      if (!v583 || v528)
      {
        if (v528 == &dword_10 + 2)
        {
          if (v583 == &dword_4 + 1)
          {
            v528 = (&dword_4 + 1);
          }

          else
          {
            v528 = (&dword_10 + 2);
          }
        }
      }

      else
      {
        v528 = v583;
      }

      if (v610)
      {
        if (!v528)
        {
          goto LABEL_314;
        }

        if (!v596)
        {

          goto LABEL_315;
        }
      }

      v787 = v594;
      goto LABEL_315;
    }
  }

  v800 = v601;
  v606 = sub_BF40C(v811, v601);
  if (v607)
  {
    v608 = v606;
    v609 = v607;

    v594 = v608;
    v596 = v609;
  }

  v610 = v805;
  if (!v805)
  {
    goto LABEL_292;
  }

LABEL_287:
  if (!v596)
  {
    goto LABEL_296;
  }

  if (!v528)
  {
    v612 = 0;
    v611 = 1;
    if (v579)
    {
      goto LABEL_295;
    }

    goto LABEL_298;
  }

  if (v528 != &dword_0 + 3)
  {
LABEL_294:
    v611 = 0;
    v612 = v528 != &dword_0 + 3;
    if (v579)
    {
LABEL_295:
      v806 = v594;
      v808 = v596;
      v596 = v579;
LABEL_301:

      v594 = v577;
      goto LABEL_302;
    }

LABEL_298:
    if (v612 || (v611 & 1) != 0)
    {
      v806 = v594;
      v808 = v596;
      v596 = 0;
    }

    else
    {
      if (!v800)
      {
        v583 = (&dword_0 + 3);
        goto LABEL_302;
      }

      v633 = v802;

      v583 = (&dword_0 + 3);
      v792 = v804;
      v803 = v633;
      v577 = v594;
    }

    goto LABEL_301;
  }

  v806 = v594;
  v808 = v596;
LABEL_314:

  v805 = v610;
LABEL_315:
  v613 = v781;
  v614 = v780;
  v615 = v810;
  if (sub_2CD920())
  {
    sub_2CD4F0();
  }

  sub_334A0(0, &qword_34D6E0, INMediaSearch_ptr);
  v809 = v756;

  v616 = sub_2CE630();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v617 = v782;
  v618 = sub_3ED0(v782, static Logger.default);
  swift_beginAccess();
  (*(v613 + 16))(v614, v618, v617);
  v619 = v616;
  v620 = sub_2CDFE0();
  v621 = sub_2CE690();

  v622 = os_log_type_enabled(v620, v621);
  v623 = v812;
  if (v622)
  {
    v624 = swift_slowAlloc();
    v625 = swift_slowAlloc();
    v813 = v625;
    *v624 = 136315138;
    v626 = v619;
    v627 = [v626 description];
    v628 = sub_2CE270();
    v630 = v629;

    v631 = sub_3F08(v628, v630, &v813);

    *(v624 + 4) = v631;
    _os_log_impl(&dword_0, v620, v621, "ConverterHelpers#convertMediaSearch mediaSearch: %s", v624, 0xCu);
    sub_306C(v625);

    (*(v781 + 8))(v780, v782);
    (*(v759 + 8))(v810, v812);
  }

  else
  {

    (*(v613 + 8))(v614, v617);
    (*(v759 + 8))(v615, v623);
  }

  sub_6FB3C(v811, v800);
  sub_30B8(v788, &qword_34D6A0, &unk_2D3490);
  return v619;
}

uint64_t sub_1866D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34D710, &qword_2D15E8);
  v22[0] = *(v4 - 8);
  v5 = *(v22[0] + 64);
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = sub_20410(&qword_34D718, &unk_2D15F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v22 - v11;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, a2);
  sub_2CD870();
  v17 = sub_2CD4D0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    sub_30B8(v12, &qword_34D718, &unk_2D15F0);
  }

  else
  {
    v19 = sub_2AA550();
    (*(v18 + 8))(v12, v17);
    if (v19)
    {
      goto LABEL_7;
    }
  }

  if (sub_2CD8A0())
  {
    sub_2CB0C0();
    sub_334A0(0, &qword_34D720, INDateComponentsRange_ptr);
    sub_2CB1E0();
    v20 = sub_2CB1F0();
    (*(v22[0] + 8))(v7, v4);
    v24 = sub_2CAD30();
    v20(&v23, &v24);

    v19 = v23;
  }

  else
  {
    v19 = 0;
  }

LABEL_7:
  (*(v13 + 8))(v16, a2);
  return v19;
}

void *sub_186A50(uint64_t a1)
{
  v2 = sub_2CD500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_20410(&qword_353160, &qword_2D96A0);
    v10 = sub_2CEC90();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_186D70(&qword_353150, &type metadata accessor for CommonAudio.Attribute);
      v18 = sub_2CE220();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_186D70(&qword_353158, &type metadata accessor for CommonAudio.Attribute);
          v25 = sub_2CE250();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_186D70(unint64_t *a1, void (*a2)(uint64_t))
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

objc_class *sub_186DB8(uint64_t a1, void *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_334A0(0, &qword_34D6E0, INMediaSearch_ptr);
  v9 = sub_2CE630();
  v10 = [a2 identifier];
  if (v10)
  {
    v11 = v10;
    sub_2CE270();
  }

  v12 = sub_2CE620();

  v13 = v12;
  v14.super.isa = sub_62CF4(a1, 0, 0);
  isa = v14.super.isa;
  v16.super.isa = sub_2CE610(v14).super.isa;

  v17 = [(objc_class *)v16.super.isa artistName];
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = v17;
  v19 = sub_2CE270();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_7:
    v23 = [a2 artist];
    if (v23)
    {

      v24 = [a2 artist];
      if (v24)
      {
        v25 = v24;
        sub_2CE270();
      }

      v26 = sub_2CE620();

      v16.super.isa = v26;
    }
  }

  v27 = [(objc_class *)v16.super.isa mediaName];
  if (!v27)
  {
    goto LABEL_15;
  }

  v28 = v27;
  v29 = sub_2CE270();
  v31 = v30;

  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
LABEL_15:
    v33 = [a2 title];
    if (v33)
    {

      v34 = [a2 title];
      if (v34)
      {
        v35 = v34;
        sub_2CE270();
      }

      v36 = sub_2CE620();

      v16.super.isa = v36;
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v37 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v37, v4);
  v38 = v16.super.isa;
  v39 = sub_2CDFE0();
  v40 = sub_2CE690();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v54 = v42;
    *v41 = 136315138;
    v43 = v38;
    v44 = [(objc_class *)v43 description];
    v53 = v4;
    v45 = v44;
    v46 = sub_2CE270();
    v52 = v8;
    v47 = v46;
    v49 = v48;

    v50 = sub_3F08(v47, v49, &v54);

    *(v41 + 4) = v50;
    _os_log_impl(&dword_0, v39, v40, "ConverterHelpers#convertDisambiguatedMediaSearch updatedMediaSearch: %s", v41, 0xCu);
    sub_306C(v42);

    (*(v5 + 8))(v52, v53);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return v38;
}

uint64_t sub_187344()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v4, v0);
  v11 = sub_2CC040();
  v12 = &protocol witness table for NowPlayingProvider;
  sub_F390(&v10);
  sub_2CC030();
  v8 = v0;
  v9 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v7);
  sub_2CC2A0();
  type metadata accessor for UpdateMediaAffinityFlowStrategy();
  v5 = swift_allocObject();
  sub_F338(&v10, v5 + 16);
  result = sub_F338(&v7, v5 + 56);
  qword_35F768 = v5;
  return result;
}

uint64_t sub_187484()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v4, v0);
  result = sub_70B6C();
  qword_35F770 = result;
  return result;
}

uint64_t sub_187554()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v4, v0);
  sub_2CD100();
  result = sub_2CD0F0();
  static UpdateMediaAffinity.intentHandler = result;
  return result;
}

uint64_t *UpdateMediaAffinity.intentHandler.unsafeMutableAddressor()
{
  if (qword_34BFB0 != -1)
  {
    swift_once();
  }

  return &static UpdateMediaAffinity.intentHandler;
}

id static UpdateMediaAffinity.intentHandler.getter()
{
  if (qword_34BFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static UpdateMediaAffinity.intentHandler;

  return v0;
}

void static UpdateMediaAffinity.intentHandler.setter(uint64_t a1)
{
  if (qword_34BFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static UpdateMediaAffinity.intentHandler;
  static UpdateMediaAffinity.intentHandler = a1;
}

uint64_t (*static UpdateMediaAffinity.intentHandler.modify())()
{
  if (qword_34BFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18781C()
{
  v1 = *(v0 + 16);

  sub_306C((v0 + 24));
  sub_306C((v0 + 64));
  sub_306C((v0 + 104));
  v2 = *(v0 + 144);

  v3 = *(v0 + 152);

  sub_306C((v0 + 160));
  v4 = *(v0 + 200);

  return v0;
}

uint64_t sub_18787C()
{
  sub_18781C();

  return swift_deallocClassInstance();
}

uint64_t _s25NeedsConfirmationStrategyCMa_1()
{
  result = qword_3531B8;
  if (!qword_3531B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1878F8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v35 = a2;
  v34 = sub_2CE990();
  v33 = *(v34 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v34);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2CE180();
  v30 = *(v31 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v31);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AddMediaCatDialogService();
  v9 = swift_allocObject();
  *(v9 + 55) = -18;
  *(v9 + 16) = 0xD000000000000011;
  *(v9 + 24) = 0x80000000002DA8D0;
  *(v9 + 32) = a1;
  strcpy((v9 + 40), "AddMediaIntent");
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v10 = sub_2CC2B0();
  v45 = v10;
  v46 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v44);
  sub_2CC2A0();
  v11 = sub_2CC360();
  v42 = v11;
  v43 = &protocol witness table for StringsFileResolver;
  sub_F390(&v41);
  sub_2CC350();
  v12 = sub_2CB4A0();
  v13 = sub_2CB490();
  v39 = v12;
  v40 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v38 = v13;
  type metadata accessor for AddMediaDialogProvider();
  v14 = swift_allocObject();
  v14[15] = v9;
  sub_EEAC(&v44, (v14 + 16));
  sub_EEAC(&v38, (v14 + 21));
  sub_EEAC(&v41, v37);
  sub_F338(&v38, v36);
  sub_306C(&v41);
  sub_306C(&v44);
  v14[13] = 0xD000000000000011;
  v14[14] = 0x80000000002DA8D0;
  v14[2] = a1;
  sub_F338(v37, (v14 + 3));
  sub_F338(v36, (v14 + 8));
  v45 = v11;
  v46 = &protocol witness table for StringsFileResolver;
  sub_F390(&v44);
  sub_2CC350();
  sub_20410(&qword_3532E0, qword_2D5890);
  v15 = swift_allocObject();
  sub_F338(&v44, v15 + 16);
  *(v15 + 56) = v14;
  v45 = v10;
  v46 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v44);

  sub_2CC2A0();
  type metadata accessor for SiriAudioOutputProvider();
  v16 = swift_allocObject();
  sub_F338(&v44, v16 + 16);
  v45 = v10;
  v46 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v44);
  sub_2CC2A0();
  v17 = sub_2CB490();
  v42 = v12;
  v43 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v41 = v17;
  v18 = sub_2CC900();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_2CC8F0();
  v45 = v18;
  v46 = &protocol witness table for AppleMediaServicesProvider;
  *&v44 = v21;
  v42 = v10;
  v43 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v41);
  sub_2CC2A0();
  v22 = sub_2CB490();
  v39 = v12;
  v40 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v38 = v22;
  if (qword_34BF88 != -1)
  {
    swift_once();
  }

  v23 = qword_35F740;

  sub_2C9A00();
  v24 = v29;
  sub_2CE170();
  v25 = v32;
  sub_2CE980();
  v26 = sub_2CBA00();

  sub_306C(v35);
  (*(v33 + 8))(v25, v34);
  (*(v30 + 8))(v24, v31);
  v3[26] = v26;
  v3[2] = v14;
  sub_F338(&v44, (v3 + 3));
  sub_F338(&v41, (v3 + 8));
  sub_F338(&v38, (v3 + 13));
  v3[18] = v23;
  sub_F338(v37, (v3 + 20));
  v3[25] = v16;
  v3[19] = v15;
  return v3;
}

uint64_t sub_187E44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v102 = a8;
  v103 = a7;
  v82 = a6;
  v97 = a5;
  v92 = a4;
  v87 = a2;
  v88 = a3;
  v100 = a1;
  v8 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v80 - v10;
  v98 = sub_20410(&unk_3519A0, &qword_2D0980);
  v12 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v99 = (&v80 - v13);
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v96 = &v80 - v16;
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v95 = &v80 - v19;
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v93 = &v80 - v22;
  v85 = sub_2CCB30();
  v23 = *(v85 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v85);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2CCAC0();
  v27 = *(v84 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v84);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2CE000();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v80 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v81 = &v80 - v37;
  __chkstk_darwin(v36);
  v39 = &v80 - v38;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v83 = v11;
  v40 = sub_3ED0(v31, static Logger.default);
  swift_beginAccess();
  v41 = v32;
  v42 = *(v32 + 16);
  v90 = v32 + 16;
  v91 = v40;
  v43 = v31;
  v89 = v42;
  v42(v39, v40, v31);
  v44 = sub_2CDFE0();
  v45 = sub_2CE670();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "FlowResponseUtils#submitGenericError Handling dialog Result...", v46, 2u);
  }

  v47 = *(v41 + 8);
  v86 = v43;
  v101 = v41 + 8;
  v94 = v47;
  v47(v39, v43);
  v48 = v84;
  (*(v27 + 104))(v30, enum case for AdditionalMetricsDescription.ModuleName.fru(_:), v84);
  v49 = v85;
  (*(v23 + 104))(v26, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v85);
  v88 = sub_2CCAE0();
  (*(v23 + 8))(v26, v49);
  (*(v27 + 8))(v30, v48);
  v50 = v92[4];
  sub_35E0(v92, v92[3]);
  v51 = enum case for ActivityType.failed(_:);
  v52 = sub_2C9C20();
  v53 = *(v52 - 8);
  v54 = v93;
  (*(v53 + 104))(v93, v51, v52);
  (*(v53 + 56))(v54, 0, 1, v52);
  v55 = sub_2CA130();
  v56 = v95;
  (*(*(v55 - 8) + 56))(v95, 1, 1, v55);
  v57 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v58 = sub_2C98F0();
  v59 = *(v58 - 8);
  v60 = v96;
  (*(v59 + 104))(v96, v57, v58);
  (*(v59 + 56))(v60, 0, 1, v58);
  sub_2CB4E0();

  sub_30B8(v60, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v56, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v54, &qword_34CB88, &unk_2D0D90);
  v61 = v99;
  sub_188844(v100, v99);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = *v61;
    v63 = v80;
    v64 = v86;
    v89(v80, v91, v86);
    v65 = sub_2CDFE0();
    v66 = sub_2CE680();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_0, v65, v66, "FlowResponseUtils#submitGenericError Could not properly create dialog", v67, 2u);
    }

    v94(v63, v64);
    swift_errorRetain();
    v103(v62);
  }

  else
  {
    v69 = v83;
    sub_24BE0(v61, v83);
    sub_2CB5B0();
    v70 = sub_2C9C10();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    sub_2C9BF0();
    v73 = sub_2C9BD0();
    v74 = v82[4];
    sub_35E0(v82, v82[3]);
    sub_2CA150();
    v75 = v81;
    v76 = v86;
    v89(v81, v91, v86);
    v77 = sub_2CDFE0();
    v78 = sub_2CE670();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_0, v77, v78, "FlowResponseUtils#submitGenericError Dialog successfully generated", v79, 2u);
    }

    v94(v75, v76);
    v103(0);

    return sub_30B8(v69, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t sub_188844(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_3519A0, &qword_2D0980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_1888B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v33 = a8;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v19 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v19 && (a1 != a4 || a5 != a2) && (sub_2CEEA0() & 1) == 0)
    {
      v20 = qword_34BF58;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = sub_3ED0(v14, static Logger.default);
      swift_beginAccess();
      (*(v15 + 16))(v18, v21, v14);

      v22 = sub_2CDFE0();
      v23 = sub_2CE670();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v31 = v22;
        v25 = v24;
        v32 = swift_slowAlloc();
        v34[0] = v32;
        *v25 = 136315394;
        *(v25 + 4) = sub_3F08(a1, a2, v34);
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_3F08(a6, a7, v34);
        v26 = v31;
        _os_log_impl(&dword_0, v31, v23, "DisplayApp#init found override display name: %s for bundle: %s", v25, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v15 + 8))(v18, v14);
      v27 = v33;
      swift_beginAccess();
      v28 = *(v27 + 24);
      *(v27 + 16) = a1;
      *(v27 + 24) = a2;
    }
  }

  return sub_2CEA40();
}

BOOL sub_188BA8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_B96A0();
  return sub_2CEBE0() == -1;
}

BOOL sub_188C08(__int128 *a1, __int128 *a2)
{
  v10 = a1[2];
  v11 = a1[3];
  v12 = *(a1 + 8);
  v8 = *a1;
  v9 = a1[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a2 + 8);
  v3 = *a2;
  v4 = a2[1];
  return (sub_2CE240() & 1) == 0;
}

BOOL sub_188C68(__int128 *a1, __int128 *a2)
{
  v10 = a1[2];
  v11 = a1[3];
  v12 = *(a1 + 8);
  v8 = *a1;
  v9 = a1[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a2 + 8);
  v3 = *a2;
  v4 = a2[1];
  return (sub_2CE240() & 1) == 0;
}

uint64_t sub_188CC8(__int128 *a1, __int128 *a2)
{
  v10 = a1[2];
  v11 = a1[3];
  v12 = *(a1 + 8);
  v8 = *a1;
  v9 = a1[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a2 + 8);
  v3 = *a2;
  v4 = a2[1];
  return sub_2CE240() & 1;
}

uint64_t sub_188D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18A9F0(v7, v9) & 1;
}

uint64_t sub_188D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CB7D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_18AB4C();
    v22 = sub_2CE250();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_188F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v227 = a5;
  v244 = a3;
  v239 = a6;
  v9 = sub_2CE130();
  isa = v9[-1].isa;
  v232 = v9;
  v10 = *(isa + 8);
  __chkstk_darwin(v9);
  v228 = &v210[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2CE1A0();
  v229 = *(v12 - 8);
  v230 = v12;
  v13 = *(v229 + 64);
  v14 = __chkstk_darwin(v12);
  v225 = &v210[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v226 = &v210[-v16];
  v240 = sub_2CB7D0();
  v237 = v240[-1].isa;
  v17 = *(v237 + 64);
  v18 = __chkstk_darwin(v240);
  v245 = &v210[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v221 = &v210[-v20];
  v21 = sub_2CE000();
  v246 = *(v21 - 8);
  v247 = v21;
  v22 = *(v246 + 64);
  v23 = __chkstk_darwin(v21);
  v236 = &v210[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin(v23);
  v219 = &v210[-v26];
  v27 = __chkstk_darwin(v25);
  v29 = &v210[-v28];
  v30 = __chkstk_darwin(v27);
  v233 = &v210[-v31];
  v32 = __chkstk_darwin(v30);
  v224 = &v210[-v33];
  v34 = __chkstk_darwin(v32);
  v235 = &v210[-v35];
  v36 = __chkstk_darwin(v34);
  v222 = &v210[-v37];
  v38 = __chkstk_darwin(v36);
  v220 = &v210[-v39];
  __chkstk_darwin(v38);
  v223 = &v210[-v40];
  v234 = sub_2C8EC0();
  v41 = *(v234 - 8);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v234);
  v45 = &v210[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = *(a4 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v43);
  v49 = &v210[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v238 = v46;
  v50 = *(v46 + 32);
  v241 = v49;
  v242 = a4;
  v50(v49, a2, a4);
  v248 = a1;
  v51 = sub_2CCF90();
  if (!v52)
  {
    goto LABEL_6;
  }

  v53 = v52;
  v243 = v51;
  v54 = sub_2CA0A0();
  if (!v54)
  {

LABEL_6:

    if (qword_34BF58 != -1)
    {
LABEL_70:
      swift_once();
    }

    v68 = v247;
    v69 = sub_3ED0(v247, static Logger.default);
    swift_beginAccess();
    v70 = v246;
    v71 = v236;
    (*(v246 + 16))(v236, v69, v68);

    v72 = sub_2CDFE0();
    v73 = sub_2CE680();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = v71;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v265 = v76;
      *v75 = 136446210;
      v249 = sub_2CCF90();
      v250 = v77;
      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v78 = sub_2CE2A0();
      v80 = sub_3F08(v78, v79, &v265);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_0, v72, v73, "DisplayApp#init could not build display app for bundle: %{public}s", v75, 0xCu);
      sub_306C(v76);

      (*(v70 + 8))(v74, v247);
    }

    else
    {

      (*(v70 + 8))(v71, v68);
    }

    result = (*(v238 + 8))(v241, v242);
    goto LABEL_11;
  }

  v55 = v54;

  v56 = v244;

  v217 = v55;
  v57 = v55;

  sub_2CB570();
  v58 = sub_B8CF4();
  v60 = v59;
  v218 = v57;

  v63 = *(v41 + 8);
  v62 = (v41 + 8);
  v61 = v63;
  v63(v45, v234);
  v216 = v29;
  v236 = v60;
  if (!v60)
  {
    v215 = v61;
    v236 = v62;
    v89 = v246;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v90 = v247;
    v91 = sub_3ED0(v247, static Logger.default);
    swift_beginAccess();
    v92 = *(v89 + 16);
    v93 = v223;
    v213 = v89 + 16;
    v214 = v91;
    v212 = v92;
    v92(v223, v91, v90);

    v94 = sub_2CDFE0();
    v95 = sub_2CE680();

    v96 = os_log_type_enabled(v94, v95);
    v66 = v243;
    if (v96)
    {
      v97 = swift_slowAlloc();
      v211 = v95;
      v98 = v97;
      v99 = v94;
      v100 = swift_slowAlloc();
      *&v258 = v100;
      *v98 = 136315138;
      *(v98 + 4) = sub_3F08(v66, v53, &v258);
      _os_log_impl(&dword_0, v99, v211, "DisplayApp#init couldn't find localized name for app info: %s, trying app name...", v98, 0xCu);
      sub_306C(v100);

      v101 = v246;
    }

    else
    {

      v101 = v89;
    }

    v102 = *(v101 + 8);
    v102(v93, v90);
    v103 = sub_2CA420();
    v104 = *(v103 + 48);
    v105 = *(v103 + 52);
    swift_allocObject();
    sub_2CA410();
    sub_2CB570();
    v58 = sub_2CA400();
    v107 = v106;

    v215(v45, v234);
    v67 = v235;
    if (v107)
    {
      v236 = v107;
      v64 = v246;
      v65 = v247;
      goto LABEL_19;
    }

    v128 = v220;
    v129 = v247;
    v212(v220, v214, v247);

    v130 = sub_2CDFE0();
    v131 = sub_2CE680();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *&v258 = v133;
      *v132 = 136315138;
      v134 = sub_3F08(v243, v53, &v258);

      *(v132 + 4) = v134;
      _os_log_impl(&dword_0, v130, v131, "DisplayApp#init couldn't find localized name for app: %s", v132, 0xCu);
      sub_306C(v133);

      v135 = v220;
    }

    else
    {

      v135 = v128;
    }

    v102(v135, v129);
    (*(v238 + 8))(v241, v242);

LABEL_11:
    v82 = 0;
    v53 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v56 = 0;
    goto LABEL_68;
  }

  v64 = v246;
  v65 = v247;
  v66 = v243;
  v67 = v235;
LABEL_19:
  v108 = HIBYTE(v236) & 0xF;
  if ((v236 & 0x2000000000000000) == 0)
  {
    v108 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (v108)
  {
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v234 = v58;
    v109 = sub_3ED0(v65, static Logger.default);
    swift_beginAccess();
    v110 = *(v64 + 16);
    v111 = v222;
    v220 = v109;
    v214 = v110;
    v215 = (v64 + 16);
    v110(v222, v109, v65);

    v112 = sub_2CDFE0();
    v113 = sub_2CE680();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *&v258 = v115;
      *v114 = 136315138;
      v116 = sub_2CE420();
      v118 = sub_3F08(v116, v117, &v258);

      *(v114 + 4) = v118;
      _os_log_impl(&dword_0, v112, v113, "DisplayApp#init Empty bundleIDs, looking in installed apps: %s", v114, 0xCu);
      sub_306C(v115);

      v119 = v247;
      v66 = v243;
      v120 = *(v246 + 8);
      v121 = v111;
    }

    else
    {

      v120 = *(v64 + 8);
      v121 = v111;
      v119 = v65;
    }

    v223 = v120;
    (v120)(v121, v119);
    v122 = *(v56 + 16);
    v123 = v240;
    if (v122)
    {
      v124 = 0;
      v125 = (v237 + 8);
      while (1)
      {
        if (v124 >= *(v56 + 16))
        {
          __break(1u);
          goto LABEL_70;
        }

        (*(v237 + 16))(v245, v56 + ((*(v237 + 80) + 32) & ~*(v237 + 80)) + *(v237 + 72) * v124, v123);
        if (sub_2CB7B0() == v66 && v53 == v126)
        {
          break;
        }

        v127 = sub_2CEEA0();

        if (v127)
        {
          goto LABEL_41;
        }

        ++v124;
        v123 = v240;
        (*v125)(v245, v240);
        if (v122 == v124)
        {
          goto LABEL_35;
        }
      }

LABEL_41:

      v136 = v240;
      v137 = v221;
      (*(v237 + 32))(v221, v245, v240);
      v138 = sub_2CB7C0();
      v58 = v234;
      if (v139)
      {
        v140 = v138;
        v141 = v139;

        v142 = v219;
        v143 = v247;
        v214(v219, v220, v247);

        v144 = sub_2CDFE0();
        v145 = sub_2CE690();

        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          *&v258 = swift_slowAlloc();
          *v146 = 136315394;
          *(v146 + 4) = sub_3F08(v140, v141, &v258);
          *(v146 + 12) = 2080;
          *(v146 + 14) = sub_3F08(v243, v53, &v258);
          _os_log_impl(&dword_0, v144, v145, "DisplayApp#init overriding empty displayName with:%s for identifier:%s", v146, 0x16u);
          swift_arrayDestroy();
          v56 = v244;

          v147 = v246;
          v148 = v219;
        }

        else
        {

          v147 = v246;
          v148 = v142;
        }

        (v223)(v148, v143);
        (*v125)(v221, v240);
        v58 = v140;
        v236 = v141;
        v65 = v143;
        v64 = v147;
      }

      else
      {
        (*v125)(v137, v136);
        v64 = v246;
        v65 = v247;
      }

      v67 = v235;
    }

    else
    {
LABEL_35:

      v64 = v246;
      v65 = v247;
      v58 = v234;
      v67 = v235;
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v149 = sub_3ED0(v65, static Logger.default);
  swift_beginAccess();
  v150 = *(v64 + 16);
  v240 = v149;
  v237 = v64 + 16;
  v223 = v150;
  (v150)(v67, v149, v65);

  v151 = v236;

  v152 = sub_2CDFE0();
  v153 = v64;
  v154 = sub_2CE690();

  v155 = os_log_type_enabled(v152, v154);
  v234 = v58;
  if (v155)
  {
    v156 = swift_slowAlloc();
    *&v258 = swift_slowAlloc();
    *v156 = 136315394;

    v157 = sub_3F08(v58, v151, &v258);

    *(v156 + 4) = v157;
    v158 = v243;
    v56 = v244;
    *(v156 + 12) = 2080;
    *(v156 + 14) = sub_3F08(v158, v53, &v258);
    _os_log_impl(&dword_0, v152, v154, "DisplayApp#init found default displayName:%s for identifier:%s", v156, 0x16u);
    swift_arrayDestroy();

    v159 = v65;
    v245 = *(v153 + 8);
    (v245)(v235, v65);
  }

  else
  {

    v159 = v65;
    v245 = *(v153 + 8);
    (v245)(v67, v65);
  }

  v160 = sub_2CBDB0();
  v87 = v248;
  if (v160)
  {
    v161 = v224;
    v162 = v159;
    (v223)(v224, v240, v159);

    v163 = sub_2CDFE0();
    v164 = sub_2CE670();

    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      *&v258 = v166;
      *v165 = 136315138;
      v167 = v243;
      *(v165 + 4) = sub_3F08(v243, v53, &v258);
      _os_log_impl(&dword_0, v163, v164, "DisplayApp#init checking for override name for identifier:%s...", v165, 0xCu);
      sub_306C(v166);

      (v245)(v161, v162);
    }

    else
    {

      (v245)(v161, v162);
      v167 = v243;
    }

    v168 = v234;
    v169 = dispatch_semaphore_create(0);
    v170 = swift_allocObject();
    *(v170 + 16) = 0;
    v235 = (v170 + 16);
    *(v170 + 24) = 0;
    v260 = 0;
    v258 = 0u;
    v259 = 0u;
    v171 = swift_allocObject();
    v171[2] = v169;
    v171[3] = v168;
    v171[4] = v236;
    v171[5] = v167;
    v171[6] = v53;
    v171[7] = v170;

    v172 = v169;

    sub_2CBC50();

    sub_18A864(&v258);
    v173 = v225;
    sub_2CE190();
    v174 = v228;
    *v228 = 1;
    v176 = isa;
    v175 = v232;
    (*(isa + 13))(v174, enum case for DispatchTimeInterval.seconds(_:), v232);
    v177 = v226;
    sub_2CE1B0();
    (*(v176 + 1))(v174, v175);
    v178 = v230;
    v179 = *(v229 + 8);
    v179(v173, v230);
    v232 = v172;
    sub_2CEA20();
    v180 = v177;
    v181 = v170;
    v179(v180, v178);
    v182 = v233;
    v183 = v247;
    (v223)(v233, v240, v247);

    v184 = sub_2CDFE0();
    v185 = sub_2CE670();
    v186 = v243;
    v187 = v185;

    if (os_log_type_enabled(v184, v187))
    {
      v188 = swift_slowAlloc();
      v249 = swift_slowAlloc();
      *v188 = 136315394;
      swift_beginAccess();
      v189 = *(v181 + 24);
      *&v258 = *(v181 + 16);
      *(&v258 + 1) = v189;

      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v190 = sub_2CE2A0();
      v192 = v191;

      v193 = sub_3F08(v190, v192, &v249);

      *(v188 + 4) = v193;
      v183 = v247;
      *(v188 + 12) = 2080;
      *(v188 + 14) = sub_3F08(v186, v53, &v249);
      _os_log_impl(&dword_0, v184, v187, "DisplayApp#init override name:%s for identifier:%s...", v188, 0x16u);
      swift_arrayDestroy();

      v194 = v233;
    }

    else
    {

      v194 = v182;
    }

    (v245)(v194, v183);
    v87 = v248;
    swift_beginAccess();
    v195 = *(v181 + 24);
    v85 = v234;
    if (v195)
    {
      v235 = v181;
      v83 = *(v181 + 16);
      (v223)(v216, v240, v183);
      swift_bridgeObjectRetain_n();

      v196 = v236;

      v197 = sub_2CDFE0();
      v198 = sub_2CE670();

      v240 = v197;
      v199 = os_log_type_enabled(v197, v198);
      v86 = v196;
      if (v199)
      {
        v200 = swift_slowAlloc();
        v237 = swift_slowAlloc();
        *&v258 = v237;
        *v200 = 136315650;
        v201 = sub_3F08(v83, v195, &v258);

        *(v200 + 4) = v201;
        *(v200 + 12) = 2080;
        v202 = sub_3F08(v85, v196, &v258);

        *(v200 + 14) = v202;
        *(v200 + 22) = 2080;
        v203 = sub_3F08(v243, v53, &v258);

        *(v200 + 24) = v203;
        v87 = v248;
        v204 = v198;
        v205 = v240;
        _os_log_impl(&dword_0, v240, v204, "DisplayApp#init found using primary:%s, alternate:%s for app:%s", v200, 0x20u);
        swift_arrayDestroy();

        v206 = v247;
        v207 = v216;
      }

      else
      {

        v207 = v216;
        v206 = v183;
      }

      (v245)(v207, v206);

      v84 = v195;
      v56 = v244;
    }

    else
    {

      v86 = 0;
      v83 = v85;
      v85 = 0;
      v56 = v244;
      v84 = v236;
    }
  }

  else
  {

    v86 = 0;
    v83 = v234;
    v85 = 0;
    v84 = v236;
  }

  v82 = v243;
  v249 = v243;
  v250 = v53;
  v251 = v83;
  v252 = v84;
  v253 = v85;
  v254 = v86;
  v208 = v218;
  v255 = v87;
  v256 = v218;
  v257 = v56;
  sub_333FC(&v249, &v258);
  (*(v238 + 8))(v241, v242);
  *&v258 = v82;
  *(&v258 + 1) = v53;
  *&v259 = v83;
  *(&v259 + 1) = v84;
  v260 = v85;
  v261 = v86;
  v262 = v87;
  v263 = v208;
  v264 = v56;
  result = sub_9AA00(&v258);
  v88 = v217;
LABEL_68:
  v209 = v239;
  *v239 = v82;
  v209[1] = v53;
  v209[2] = v83;
  v209[3] = v84;
  v209[4] = v85;
  v209[5] = v86;
  v209[6] = v87;
  v209[7] = v88;
  v209[8] = v56;
  return result;
}

uint64_t sub_18A864(uint64_t a1)
{
  v2 = sub_20410(&qword_34E970, &qword_2D2910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_18A8CC(uint64_t a1, uint64_t a2)
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

uint64_t sub_18A8F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_18A938(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_18A99C()
{
  result = qword_353380;
  if (!qword_353380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353380);
  }

  return result;
}

uint64_t sub_18A9F0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2CEEA0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2CEEA0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_2CEEA0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_2CCFB0();
  v8 = a1[6];
  v9 = a2[6];
  if ((sub_2CCFA0() & 1) == 0)
  {
    return 0;
  }

  sub_18AB00();
  v10 = a1[7];
  v11 = a2[7];
  if ((sub_2CEB30() & 1) == 0)
  {
    return 0;
  }

  v12 = a1[8];
  v13 = a2[8];

  return sub_188D80(v12, v13);
}

unint64_t sub_18AB00()
{
  result = qword_34DD50;
  if (!qword_34DD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34DD50);
  }

  return result;
}

unint64_t sub_18AB4C()
{
  result = qword_353388;
  if (!qword_353388)
  {
    sub_2CB7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353388);
  }

  return result;
}

uint64_t sub_18ABA4()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);
  sub_18ACA4(v0 + qword_3566B0);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s21ConfirmIntentStrategyCMa()
{
  result = qword_3533B8;
  if (!qword_3533B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18ACA4(uint64_t a1)
{
  v2 = sub_20410(qword_34F2C8, &unk_2D3070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShazamSuccessfulMatchModel.serializedData.getter()
{
  v0 = sub_2C8B80();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2C8B70();
  type metadata accessor for ShazamSuccessfulMatchModel();
  sub_18C5E0(&qword_352D40, type metadata accessor for ShazamSuccessfulMatchModel);
  v3 = sub_2C8B60();

  return v3;
}

uint64_t type metadata accessor for ShazamSuccessfulMatchModel()
{
  result = qword_353568;
  if (!qword_353568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AE80(void (*a1)(void))
{
  v2 = sub_2C8B80();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_2C8B70();
  a1();
  v5 = sub_2C8B60();

  return v5;
}

uint64_t sub_18AF20(uint64_t a1)
{
  v2 = sub_18AFDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18AF5C(uint64_t a1)
{
  v2 = sub_18AFDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_18AFDC()
{
  result = qword_3534B8;
  if (!qword_3534B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3534B8);
  }

  return result;
}

unint64_t sub_18B0A8()
{
  result = qword_3534C0;
  if (!qword_3534C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3534C0);
  }

  return result;
}

uint64_t sub_18B0FC(uint64_t a1)
{
  v2 = sub_18B2D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18B138(uint64_t a1)
{
  v2 = sub_18B2D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_18B1B8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = sub_20410(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_35E0(a1, a1[3]);
  a4();
  sub_2CEFF0();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_18B2D8()
{
  result = qword_3534D0;
  if (!qword_3534D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3534D0);
  }

  return result;
}

uint64_t sub_18B370(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = sub_20410(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_35E0(a1, a1[3]);
  a6();
  sub_2CEFF0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_18B4C4(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v6 = sub_2C8B50();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_2C8B40();
  a3();
  sub_2C8B30();
  sub_52628(a1, a2);
}

unint64_t sub_18B564()
{
  result = qword_3534D8;
  if (!qword_3534D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3534D8);
  }

  return result;
}

unint64_t sub_18B5B8(char a1)
{
  result = 0x44496D617A616873;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 0x65726E6567;
      break;
    case 5:
    case 6:
      result = 0x73754D656C707061;
      break;
    case 7:
      result = 0x4C5255626577;
      break;
    case 8:
      result = 0x556B726F77747261;
      break;
    case 9:
      result = 0x4C52556F65646976;
      break;
    case 10:
      result = 0x746963696C707865;
      break;
    case 11:
      result = 1668445033;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18B714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18CB6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18B748(uint64_t a1)
{
  v2 = sub_18BB58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18B784(uint64_t a1)
{
  v2 = sub_18BB58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShazamSuccessfulMatchModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_20410(&qword_3534E0, &unk_2D5A00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34[-v8];
  v10 = a1[4];
  sub_35E0(a1, a1[3]);
  sub_18BB58();
  sub_2CEFF0();
  v11 = *v3;
  v12 = v3[1];
  v34[31] = 0;
  sub_2CEE30();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v34[30] = 1;
    sub_2CEE30();
    v15 = v3[4];
    v16 = v3[5];
    v34[29] = 2;
    sub_2CEE30();
    v17 = v3[6];
    v18 = v3[7];
    v34[28] = 3;
    sub_2CEE30();
    v19 = v3[8];
    v20 = v3[9];
    v34[27] = 4;
    sub_2CEE30();
    v21 = v3[10];
    v22 = v3[11];
    v34[26] = 5;
    sub_2CEE30();
    matched = type metadata accessor for ShazamSuccessfulMatchModel();
    v24 = matched[10];
    v34[25] = 6;
    sub_2C8D90();
    sub_18C5E0(&qword_3534F0, &type metadata accessor for URL);
    sub_2CEE50();
    v25 = matched[11];
    v34[24] = 7;
    sub_2CEE50();
    v26 = matched[12];
    v34[15] = 8;
    sub_2CEE50();
    v27 = matched[13];
    v34[14] = 9;
    sub_2CEE50();
    v28 = *(v3 + matched[14]);
    v34[13] = 10;
    sub_2CEE40();
    v29 = (v3 + matched[15]);
    v30 = *v29;
    v31 = v29[1];
    v34[12] = 11;
    sub_2CEE30();
    v32 = *(v3 + matched[16]);
    v34[11] = 12;
    sub_2CEE40();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_18BB58()
{
  result = qword_3534E8;
  if (!qword_3534E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3534E8);
  }

  return result;
}

uint64_t ShazamSuccessfulMatchModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_20410(&unk_3519B0, &qword_2D1230);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v73 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = v68 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v68 - v11;
  __chkstk_darwin(v10);
  v14 = v68 - v13;
  v77 = sub_20410(&qword_3534F8, &qword_2D5A10);
  v74 = *(v77 - 8);
  v15 = *(v74 + 64);
  __chkstk_darwin(v77);
  v17 = v68 - v16;
  matched = type metadata accessor for ShazamSuccessfulMatchModel();
  v19 = *(*(matched - 8) + 64);
  __chkstk_darwin(matched);
  v21 = (v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1[3];
  v22 = a1[4];
  v79 = a1;
  sub_35E0(a1, v23);
  sub_18BB58();
  v76 = v17;
  v24 = v78;
  sub_2CEFE0();
  if (v24)
  {
    return sub_306C(v79);
  }

  v25 = v14;
  v71 = v9;
  v72 = v12;
  v27 = v74;
  v26 = v75;
  v78 = matched;
  v92 = 0;
  v28 = v76;
  v29 = v77;
  *v21 = sub_2CEE00();
  v21[1] = v31;
  v91 = 1;
  v21[2] = sub_2CEE00();
  v21[3] = v32;
  v90 = 2;
  v69 = 0;
  v21[4] = sub_2CEE00();
  v21[5] = v33;
  v89 = 3;
  v21[6] = sub_2CEE00();
  v21[7] = v34;
  v88 = 4;
  v21[8] = sub_2CEE00();
  v21[9] = v35;
  v87 = 5;
  v36 = sub_2CEE00();
  v70 = 0;
  v21[10] = v36;
  v21[11] = v37;
  v38 = sub_2C8D90();
  v86 = 6;
  v39 = sub_18C5E0(&qword_353500, &type metadata accessor for URL);
  v68[0] = v38;
  v68[1] = v39;
  v40 = v70;
  sub_2CEE20();
  v70 = v40;
  if (v40)
  {
    (*(v27 + 8))(v28, v29);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    sub_7FD30(v25, v21 + v78[10]);
    v85 = 7;
    v43 = v72;
    v44 = v70;
    sub_2CEE20();
    v70 = v44;
    if (v44)
    {
      (*(v27 + 8))(v28, v77);
      v42 = 0;
      v41 = 1;
    }

    else
    {
      sub_7FD30(v43, v21 + v78[11]);
      v84 = 8;
      v45 = v70;
      v46 = v71;
      v47 = v77;
      sub_2CEE20();
      v70 = v45;
      if (!v45)
      {
        sub_7FD30(v46, v21 + v78[12]);
        v83 = 9;
        v56 = v70;
        sub_2CEE20();
        if (v56)
        {
          (*(v27 + 8))(v76, v77);
          sub_306C(v79);
          v58 = v21[1];

          v59 = v21[3];

          v60 = v21[5];

          v61 = v21[7];

          v62 = v21[9];

          v63 = v21[11];

          v64 = v78;
          sub_7FDA0(v21 + v78[10]);
          sub_7FDA0(v21 + v64[11]);
          return sub_7FDA0(v21 + v64[12]);
        }

        else
        {
          sub_7FD30(v73, v21 + v78[13]);
          v82 = 10;
          *(v21 + v78[14]) = sub_2CEE10();
          v81 = 11;
          v57 = sub_2CEE00();
          v65 = (v21 + v78[15]);
          *v65 = v57;
          v65[1] = v66;
          v80 = 12;
          v67 = sub_2CEE10();
          (*(v27 + 8))(v76, v77);
          *(v21 + v78[16]) = v67;
          sub_18C418(v21, v26);
          sub_306C(v79);
          return sub_18C47C(v21);
        }
      }

      (*(v27 + 8))(v28, v47);
      v41 = 1;
      v42 = 1;
    }
  }

  v48 = v69;
  sub_306C(v79);
  v49 = v21[1];

  if (!v48)
  {
    v52 = v21[3];
  }

  v50 = v21[5];

  v53 = v21[7];

  v51 = v21[9];

  v54 = v21[11];

  v55 = v78;
  if (v41)
  {
    result = sub_7FDA0(v21 + v78[10]);
    if ((v42 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v42)
  {
    return result;
  }

  return sub_7FDA0(v21 + v55[11]);
}

uint64_t sub_18C418(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ShazamSuccessfulMatchModel();
  (*(*(matched - 8) + 16))(a2, a1, matched);
  return a2;
}

uint64_t sub_18C47C(uint64_t a1)
{
  matched = type metadata accessor for ShazamSuccessfulMatchModel();
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

uint64_t ShazamSuccessfulMatchModel.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_2C8B50();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2C8B40();
  type metadata accessor for ShazamSuccessfulMatchModel();
  sub_18C5E0(&qword_353508, type metadata accessor for ShazamSuccessfulMatchModel);
  sub_2C8B30();
  sub_52628(a1, a2);
}

uint64_t sub_18C5E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_18C670()
{
  sub_18C748(319, &qword_34EE78);
  if (v0 <= 0x3F)
  {
    sub_7FEC8();
    if (v1 <= 0x3F)
    {
      sub_18C748(319, &unk_353578);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18C748(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2CEB90();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ShazamSuccessfulMatchModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShazamSuccessfulMatchModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18C908()
{
  result = qword_3535D8;
  if (!qword_3535D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3535D8);
  }

  return result;
}

unint64_t sub_18C960()
{
  result = qword_3535E0;
  if (!qword_3535E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3535E0);
  }

  return result;
}

unint64_t sub_18C9B8()
{
  result = qword_3535E8;
  if (!qword_3535E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3535E8);
  }

  return result;
}

unint64_t sub_18CA10()
{
  result = qword_3535F0;
  if (!qword_3535F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3535F0);
  }

  return result;
}

unint64_t sub_18CA68()
{
  result = qword_3535F8;
  if (!qword_3535F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3535F8);
  }

  return result;
}

unint64_t sub_18CAC0()
{
  result = qword_353600;
  if (!qword_353600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353600);
  }

  return result;
}

unint64_t sub_18CB18()
{
  result = qword_353608;
  if (!qword_353608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353608);
  }

  return result;
}

uint64_t sub_18CB6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D617A616873 && a2 == 0xE800000000000000;
  if (v4 || (sub_2CEEA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747369747261 && a2 == 0xE600000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xEC00000044496369 || (sub_2CEEA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xED00004C52556369 || (sub_2CEEA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x556B726F77747261 && a2 == 0xEA00000000004C52 || (sub_2CEEA0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4C52556F65646976 && a2 == 0xE800000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xEF746E65746E6F43 || (sub_2CEEA0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1668445033 && a2 == 0xE400000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000002DE2D0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_2CEEA0();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

void *StringsBackedAppNameResolver.shared.unsafeMutableAddressor()
{
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  return &static StringsBackedAppNameResolver.shared;
}

uint64_t sub_18D000()
{
  v5 = sub_2CBBA0();
  v6 = &protocol witness table for AppNameResolver;
  sub_F390(&v4);
  sub_2CBB90();
  v2 = sub_2CC360();
  v3 = &protocol witness table for StringsFileResolver;
  sub_F390(&v1);
  sub_2CC350();
  sub_F338(&v4, &static StringsBackedAppNameResolver.shared);
  return sub_F338(&v1, &unk_35F7A8);
}

uint64_t StringsBackedAppNameResolver.init(coreAppNameResolver:stringsFileResolver:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_F338(a1, a3);

  return sub_F338(a2, a3 + 40);
}

uint64_t static StringsBackedAppNameResolver.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_34BFB8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_285EC(&static StringsBackedAppNameResolver.shared, v2);
}

uint64_t StringsBackedAppNameResolver.localizedAppName(for:helper:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v23 = a1;
  v24 = a2;
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = qword_34BF98;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "stringsBackedAppNameLocalizedAppName";
  *(v19 + 24) = 36;
  *(v19 + 32) = 2;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = (v19 + v18);
  *v20 = sub_18D44C;
  v20[1] = v14;

  sub_2CE9E0();
  sub_2CDF90();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_18E548;
  *(v21 + 24) = v19;

  sub_18D47C(sub_18E588, v21, v23, v24, v26, v25);

  (*(v8 + 8))(v13, v7);
}

uint64_t sub_18D44C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_18D47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v11 = sub_2CE150();
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CE180();
  v15 = *(v29 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v29);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = sub_18E68C;
  v20[5] = v19;

  v21 = sub_2CBB80();
  sub_285EC(a5, v35);
  sub_18E6B4(v28, v33);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v23 = v35[3];
  *(v22 + 64) = v35[2];
  *(v22 + 80) = v23;
  *(v22 + 96) = v35[4];
  v24 = v35[1];
  *(v22 + 32) = v35[0];
  *(v22 + 48) = v24;
  *(v22 + 112) = sub_18E694;
  *(v22 + 120) = v20;
  v25 = v33[1];
  *(v22 + 128) = v33[0];
  *(v22 + 144) = v25;
  *(v22 + 160) = v34;
  aBlock[4] = sub_18E724;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_3378B0;
  v26 = _Block_copy(aBlock);

  sub_2CE160();
  v31 = _swiftEmptyArrayStorage;
  sub_10101C();
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v26);

  (*(v30 + 8))(v14, v11);
  (*(v15 + 8))(v18, v29);
}

uint64_t sub_18D7F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a4;
  v46 = a5;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v44 - v17;
  __chkstk_darwin(v16);
  v20 = &v44 - v19;
  if (sub_2CBE10() == a1 && v21 == a2)
  {

LABEL_5:
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v23 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v20, v23, v10);
    v24 = sub_2CDFE0();
    v25 = sub_2CE670();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "StringsBackedAppNameResolver: resolving music localized name from Strings", v26, 2u);
    }

    (*(v11 + 8))(v20, v10);
    v27 = 0x754D20656C707041;
    v28 = 0xEB00000000636973;
    v29 = 0;
    return sub_18DD58(v29, v27, v28, v45, v46);
  }

  v44 = a6;
  v22 = sub_2CEEA0();

  if (v22)
  {
    goto LABEL_5;
  }

  if (sub_2CBE30() == a1 && v31 == a2)
  {

LABEL_15:
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v33 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v18, v33, v10);
    v34 = sub_2CDFE0();
    v35 = sub_2CE670();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "StringsBackedAppNameResolver: resolving podcasts localized name from Strings", v36, 2u);
    }

    (*(v11 + 8))(v18, v10);
    v27 = 0x6F5020656C707041;
    v28 = 0xEE00737473616364;
    v29 = 1;
    return sub_18DD58(v29, v27, v28, v45, v46);
  }

  v32 = sub_2CEEA0();

  if (v32)
  {
    goto LABEL_15;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v37 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v15, v37, v10);
  v38 = sub_2CDFE0();
  v39 = sub_2CE670();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "StringsBackedAppNameResolver: resolving localized name from core app name resolver", v40, 2u);
  }

  (*(v11 + 8))(v15, v10);
  v41 = a3[4];
  sub_35E0(a3, a3[3]);
  v42 = swift_allocObject();
  v42[2] = a1;
  v42[3] = a2;
  v43 = v46;
  v42[4] = v45;
  v42[5] = v43;

  sub_2CBC50();
}

uint64_t sub_18DD58(int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a3;
  v35 = a2;
  v34 = a1;
  v7 = sub_2CDFD0();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  v9 = __chkstk_darwin(v7);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2CDFE0();
  v19 = sub_2CE690();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "StringsBackedAppNameResolver: getting app name from Strings...", v20, 2u);
  }

  (*(v13 + 8))(v16, v12);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  v22 = qword_34BF98;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_35F760;
  sub_2CDFB0();
  v25 = v31;
  v24 = v32;
  v26 = v33;
  (*(v32 + 16))(v31, v11, v33);
  v27 = (*(v24 + 80) + 33) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = "stringsBackedAppNameStringsExecute";
  *(v28 + 24) = 34;
  *(v28 + 32) = 2;
  (*(v24 + 32))(v28 + v27, v25, v26);
  v29 = (v28 + ((v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v29 = sub_18EBA4;
  v29[1] = v21;

  sub_2CE9E0();
  sub_2CDF90();

  sub_18E790(v37, v34 & 1, v35, v36, sub_18EBA8, v28);

  (*(v24 + 8))(v11, v26);
}

uint64_t sub_18E190(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v30 = a6;
  v28 = a3;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);

  v16 = sub_2CDFE0();
  v17 = sub_2CE670();

  v18 = a2;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v29 = a2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27 = a5;
    v33 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_3F08(v28, a4, &v33);
    *(v20 + 12) = 2080;
    v22 = a1;
    v31 = a1;
    v32 = v29;

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v23 = sub_2CE2A0();
    v25 = sub_3F08(v23, v24, &v33);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_0, v16, v17, "StringsBackedAppNameResolver: resolved localized name for bundle: %s as %s", v20, 0x16u);
    swift_arrayDestroy();
    a5 = v27;

    v18 = v29;

    (*(v11 + 8))(v14, v10);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    v22 = a1;
  }

  return a5(v22, v18);
}

uint64_t sub_18E47C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int128 *))
{
  v8 = *a1;
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  return a6(&v8);
}

uint64_t sub_18E588(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

__n128 sub_18E5C4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_18E5E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_18E628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E6B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E970, &qword_2D2910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18E750()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_18E790(void *a1, char a2, char *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v36 = a3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C8EC0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[9];
  sub_35E0(a1 + 5, a1[8]);
  if (a2)
  {
    v19 = 0xD000000000000016;
  }

  else
  {
    v19 = 0xD000000000000013;
  }

  if (a2)
  {
    v20 = "NameStringsExecute";
  }

  else
  {
    v20 = "RESOURCE_BUTTON_LABEL";
  }

  type metadata accessor for AudioFlowDelegatePlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v35 = v19;
  v39 = sub_2CC620();
  v24 = v23;
  v36 = v20;

  (*(v14 + 8))(v17, v13);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = v37;
  v26 = sub_3ED0(v37, static Logger.default);
  swift_beginAccess();
  v27 = v38;
  (*(v38 + 16))(v12, v26, v25);

  v28 = sub_2CDFE0();
  v29 = sub_2CE690();

  v30 = v12;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v31 = 136315394;
    v32 = sub_3F08(v35, v36 | 0x8000000000000000, v42);

    *(v31 + 4) = v32;
    *(v31 + 12) = 2080;
    v33 = v39;
    *(v31 + 14) = sub_3F08(v39, v24, v42);
    _os_log_impl(&dword_0, v28, v29, "StringsBackedAppNameResolver: for input: %s found localized: %s", v31, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v30, v25);
  }

  else
  {

    (*(v27 + 8))(v12, v25);
    v33 = v39;
  }

  v42[0] = v33;
  v42[1] = v24;
  v41(v42);
}

uint64_t _s11descr32D959O21ConfirmIntentStrategyCMa()
{
  result = qword_353638;
  if (!qword_353638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18EBF8()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v10 = sub_2CBA00();
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_353730 = v10;
  return result;
}

uint64_t sub_18ED90()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v10 = sub_2CBA00();
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_353738 = v10;
  return result;
}

uint64_t sub_18EF28()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v10 = sub_2CBA00();
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_353740 = v10;
  return result;
}

uint64_t sub_18F0C0()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v10 = sub_2CBA00();
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_353748 = v10;
  return result;
}

uint64_t sub_18F258()
{
  result = sub_2CCC60();
  qword_353750 = result;
  return result;
}

uint64_t sub_18F290@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_F3F4(v1 + 192, &v4, &qword_3538C0, &qword_2D5F88);
  if (v5)
  {
    return sub_F338(&v4, a1);
  }

  sub_30B8(&v4, &qword_3538C0, &qword_2D5F88);
  sub_18F358(v1);
  sub_EEAC(a1, &v4);
  swift_beginAccess();
  sub_19532C(&v4, v1 + 192);
  return swift_endAccess();
}

uint64_t sub_18F358(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2CDFE0();
  v9 = sub_2CE690();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "AudioFlowDelegatePlugin#controlsProvider initializing ControlsFlowProvider...", v10, 2u);
  }

  v11 = (*(v3 + 8))(v6, v2);
  v12 = *(a1 + 184);
  return (*(a1 + 176))(v11);
}

uint64_t sub_18F524@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_2CDC30();
  a1[4] = &protocol witness table for ControlsFlowProvider;
  sub_F390(a1);
  return sub_2CDC20();
}

uint64_t sub_18F568(uint64_t a1, unint64_t a2)
{
  v101 = *v2;
  v102 = sub_2C8E30();
  v98 = *(v102 - 8);
  v5 = *(v98 + 64);
  v6 = __chkstk_darwin(v102);
  v91 = v7;
  v92 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v100 = &v86 - v8;
  v97 = sub_2CDFD0();
  v95 = *(v97 - 8);
  v9 = *(v95 + 64);
  v10 = __chkstk_darwin(v97);
  v93 = v11;
  v94 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = &v86 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v104 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v99 = &v86 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v86 - v21;
  __chkstk_darwin(v20);
  v24 = &v86 - v23;
  sub_20410(&qword_352D78, &unk_2D5320);
  v25 = swift_allocBox();
  v27 = v26;
  v28 = sub_2CC950();
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v90 = v22;
  v29 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v105 = v14[2];
  v106 = (v14 + 2);
  v105(v24, v29, v13);

  v30 = v24;
  v31 = sub_2CDFE0();
  v32 = sub_2CE690();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v89 = v29;
    v34 = v33;
    v35 = swift_slowAlloc();
    v103 = v25;
    v107 = v35;
    *v34 = 136446466;
    v36 = sub_2CCCC0();
    v38 = sub_3F08(v36, v37, &v107);
    v88 = v30;
    v39 = v14;
    v40 = v13;
    v41 = a1;
    v42 = a2;
    v43 = v38;

    *(v34 + 4) = v43;
    a2 = v42;
    v44 = v41;
    v13 = v40;
    v14 = v39;
    *(v34 + 12) = 2080;
    a1 = v44;
    *(v34 + 14) = sub_3F08(v44, a2, &v107);
    _os_log_impl(&dword_0, v31, v32, "AudioFlowDelegatePlugin#warmup %{public}s for refId: %s", v34, 0x16u);
    swift_arrayDestroy();
    v25 = v103;

    v29 = v89;

    v45 = v39[1];
    v45(v88, v13);
  }

  else
  {

    v45 = v14[1];
    v45(v30, v13);
  }

  if (qword_353760 && (qword_353758 == a1 && qword_353760 == a2 || (sub_2CEEA0() & 1) != 0))
  {
    v46 = v104;
    v105(v104, v29, v13);

    v47 = sub_2CDFE0();
    v48 = sub_2CE690();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = a2;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v107 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_3F08(a1, v49, &v107);
      _os_log_impl(&dword_0, v47, v48, "AudioFlowDelegatePlugin#warmup we have already done warmup for refId: %s", v50, 0xCu);
      sub_306C(v51);

      v52 = v104;
LABEL_20:
      v45(v52, v13);
    }

    goto LABEL_19;
  }

  if (qword_34BFE0 != -1)
  {
    swift_once();
  }

  if (![qword_353750 tryLock])
  {
    v46 = v99;
    v105(v99, v29, v13);

    v47 = sub_2CDFE0();
    v60 = sub_2CE690();

    if (os_log_type_enabled(v47, v60))
    {
      v61 = a2;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v107 = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_3F08(a1, v61, &v107);
      _os_log_impl(&dword_0, v47, v60, "AudioFlowDelegatePlugin#warmup already in warmup. Rejecting warmup request for: %s", v62, 0xCu);
      sub_306C(v63);

      v52 = v99;
      goto LABEL_20;
    }

LABEL_19:

    v52 = v46;
    goto LABEL_20;
  }

  v103 = v25;
  v53 = v90;
  v105(v90, v29, v13);

  v54 = sub_2CDFE0();
  v55 = sub_2CE690();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v106 = v14;
    v57 = a2;
    v58 = v56;
    v59 = swift_slowAlloc();
    v107 = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_3F08(a1, v57, &v107);
    _os_log_impl(&dword_0, v54, v55, "AudioFlowDelegatePlugin#warmup aquired lock for: %s... set warmupRefID to the same", v58, 0xCu);
    sub_306C(v59);

    a2 = v57;
  }

  v45(v53, v13);
  qword_353758 = a1;
  qword_353760 = a2;

  sub_2CE9F0();
  v64 = a2;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v65 = qword_35F760;
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_2D0090;
  *(v66 + 56) = &type metadata for String;
  *(v66 + 64) = sub_1087C();
  v87 = a1;
  *(v66 + 32) = a1;
  *(v66 + 40) = v64;

  v67 = v96;
  sub_2CDFC0();
  sub_2CDF90();

  v104 = v64;
  v68 = v95;
  v69 = *(v95 + 8);
  v105 = (v95 + 8);
  v106 = v69;
  v70 = v97;
  v69(v67, v97);
  v71 = v100;
  sub_2C8E20();
  v72 = v98;
  v73 = v92;
  v74 = v102;
  (*(v98 + 16))(v92, v71, v102);
  v75 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v76 = (v91 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  (*(v72 + 32))(v77 + v75, v73, v74);
  *(v77 + v76) = v101;

  v78 = v65;
  sub_2CDFB0();
  v79 = v94;
  (*(v68 + 16))(v94, v67, v70);
  v80 = (*(v68 + 80) + 33) & ~*(v68 + 80);
  v81 = (v93 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  *(v82 + 16) = "audioFlowDelegatePluginWarmup";
  *(v82 + 24) = 29;
  *(v82 + 32) = 2;
  (*(v68 + 32))(v82 + v80, v79, v70);
  v83 = (v82 + v81);
  *v83 = sub_1951CC;
  v83[1] = v77;

  sub_2CE9E0();
  sub_2CDF90();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_13B2C;
  *(v84 + 24) = v82;

  sub_1906A4(sub_13BD8, v84, v87, v104, v103, v101);

  v106(v67, v70);
  (*(v72 + 8))(v100, v102);
}

id sub_1901A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C8E30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v48 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v41[-v9];
  v47 = sub_20410(&qword_352D78, &unk_2D5320);
  v11 = *(*(v47 - 8) + 64);
  v12 = __chkstk_darwin(v47);
  v46 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v41[-v14];
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v41[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  (*(v17 + 16))(v20, v21, v16);
  sub_F3F4(a1, v15, &qword_352D78, &unk_2D5320);
  (*(v5 + 16))(v10, a2, v4);
  v22 = sub_2CDFE0();
  v23 = sub_2CE690();
  v24 = v10;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v45 = v17;
    v26 = v25;
    v43 = swift_slowAlloc();
    v49 = v43;
    *v26 = 136446722;
    v27 = sub_2CCCC0();
    v42 = v23;
    v29 = sub_3F08(v27, v28, &v49);
    v44 = v16;
    v30 = v29;

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    sub_F3F4(v15, v46, &qword_352D78, &unk_2D5320);
    v31 = sub_2CE2A0();
    v47 = v20;
    v32 = v4;
    v34 = v33;
    sub_30B8(v15, &qword_352D78, &unk_2D5320);
    v35 = sub_3F08(v31, v34, &v49);

    *(v26 + 14) = v35;
    *(v26 + 22) = 2048;
    v36 = v48;
    sub_2C8E20();
    sub_2C8DD0();
    v38 = v37;
    v39 = *(v5 + 8);
    v39(v36, v32);
    v39(v24, v32);
    *(v26 + 24) = v38;
    _os_log_impl(&dword_0, v22, v42, "AudioFlowDelegatePlugin#warmup %{public}s complete with code:%s in %f seconds", v26, 0x20u);
    swift_arrayDestroy();

    (*(v45 + 8))(v47, v44);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
    sub_30B8(v15, &qword_352D78, &unk_2D5320);
    (*(v17 + 8))(v20, v16);
  }

  if (qword_34BFE0 != -1)
  {
    swift_once();
  }

  return [qword_353750 unlock];
}

uint64_t sub_1906A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[0] = a6;
  v11 = sub_2CE150();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CE180();
  v16 = *(v25 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v25);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFC0 != -1)
  {
    swift_once();
  }

  v24[1] = qword_353730;
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a1;
  v21 = v24[0];
  v20[6] = a2;
  v20[7] = v21;
  aBlock[4] = sub_195268;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_337A68;
  v22 = _Block_copy(aBlock);

  sub_2CE160();
  v26 = _swiftEmptyArrayStorage;
  sub_E960(&qword_34FF20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80);
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v22);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v25);
}

uint64_t sub_1909DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v116 = a5;
  v117 = a4;
  v112 = a2;
  v101 = a1;
  v96 = sub_2CB6C0();
  v95 = *(v96 - 8);
  v6 = *(v95 + 64);
  __chkstk_darwin(v96);
  v94 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2CB850();
  v91 = *(v93 - 8);
  v8 = *(v91 + 64);
  __chkstk_darwin(v93);
  v92 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_352D78, &unk_2D5320);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v115 = &v88 - v12;
  v111 = sub_2CB700();
  v109 = *(v111 - 8);
  v13 = *(v109 + 64);
  __chkstk_darwin(v111);
  v105 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2CE130();
  v108 = *(v110 - 8);
  v15 = *(v108 + 64);
  __chkstk_darwin(v110);
  v104 = (&v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = sub_2CE1A0();
  v106 = *(v107 - 8);
  v17 = *(v106 + 64);
  v18 = __chkstk_darwin(v107);
  v102 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v103 = &v88 - v20;
  v118 = sub_2CE000();
  v114 = *(v118 - 8);
  v21 = *(v114 + 64);
  v22 = __chkstk_darwin(v118);
  v90 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v88 = &v88 - v24;
  v100 = sub_2CC2B0();
  v98 = *(v100 - 8);
  v25 = *(v98 + 64);
  __chkstk_darwin(v100);
  v97 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CE150();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_2CE180();
  v32 = *(v126 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v126);
  v35 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a3;
  v89 = swift_projectBox();
  v36 = dispatch_group_create();
  dispatch_group_enter(v36);
  if (qword_34BFD0 != -1)
  {
    swift_once();
  }

  v125 = qword_353740;
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  v133 = sub_195290;
  v134 = v37;
  aBlock = _NSConcreteStackBlock;
  v130 = 1107296256;
  v131 = sub_A4294;
  v132 = &unk_337AB8;
  v38 = _Block_copy(&aBlock);
  v99 = v36;
  sub_2CE160();
  v128 = _swiftEmptyArrayStorage;
  v39 = sub_E960(&qword_34FF20, 255, &type metadata accessor for DispatchWorkItemFlags);
  v40 = sub_20410(&qword_34DD48, &qword_2D5F80);
  v121 = sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80);
  v122 = v40;
  v124 = v39;
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v38);
  v41 = v31;
  v120 = *(v28 + 8);
  v120(v31, v27);
  v42 = *(v32 + 8);
  v123 = v35;
  v119 = v42;
  v42(v35, v126);

  v43 = v97;
  sub_2CC2A0();
  LOBYTE(v38) = sub_2CC270();
  (*(v98 + 8))(v43, v100);
  v100 = v28 + 8;
  v44 = v27;
  v125 = v32 + 8;
  if (v38)
  {
    v45 = v99;
    dispatch_group_enter(v99);
    if (qword_34BFD8 != -1)
    {
      swift_once();
    }

    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    v133 = sub_1952A4;
    v134 = v46;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_A4294;
    v132 = &unk_337B58;
    v47 = _Block_copy(&aBlock);
    v48 = v45;
    v49 = v123;
    sub_2CE160();
    v128 = _swiftEmptyArrayStorage;
    v50 = v41;
    sub_2CEC10();
    sub_2CE9C0();
    _Block_release(v47);
    v120(v41, v44);
    v51 = v126;
    v119(v49, v126);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v52 = v118;
    v53 = sub_3ED0(v118, static Logger.default);
    swift_beginAccess();
    v54 = v114;
    v55 = v88;
    (*(v114 + 16))(v88, v53, v52);
    v56 = sub_2CDFE0();
    v57 = sub_2CE670();
    v58 = os_log_type_enabled(v56, v57);
    v51 = v126;
    v50 = v41;
    if (v58)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v56, v57, "AudioFlowDelegatePlugin#warmup skipping app selection warmup on disabled platform", v59, 2u);
    }

    (*(v54 + 8))(v55, v52);
    v45 = v99;
  }

  dispatch_group_enter(v45);
  if (qword_34BFC8 != -1)
  {
    swift_once();
  }

  v60 = swift_allocObject();
  v61 = v112;
  v60[2] = v101;
  v60[3] = v61;
  v60[4] = v113;
  v60[5] = v45;
  v133 = sub_195298;
  v134 = v60;
  aBlock = _NSConcreteStackBlock;
  v130 = 1107296256;
  v131 = sub_A4294;
  v132 = &unk_337B08;
  v62 = _Block_copy(&aBlock);
  v63 = v45;

  v64 = v123;
  sub_2CE160();
  v127 = _swiftEmptyArrayStorage;
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v62);
  v120(v50, v44);
  v119(v64, v51);

  v65 = v102;
  sub_2CE190();
  v66 = v109;
  v67 = v105;
  v68 = v111;
  (*(v109 + 104))(v105, enum case for Completions.TimeoutMillis.audioFlowDelegatePluginWarmup(_:), v111);
  v69 = sub_2CB6F0();
  (*(v66 + 8))(v67, v68);
  v70 = v104;
  *v104 = v69;
  v71 = v108;
  v72 = v110;
  (*(v108 + 104))(v70, enum case for DispatchTimeInterval.milliseconds(_:), v110);
  v73 = v103;
  sub_2CE1B0();
  (*(v71 + 8))(v70, v72);
  v74 = *(v106 + 8);
  v75 = v107;
  v74(v65, v107);
  sub_2CE950();
  v74(v73, v75);
  if (sub_2CE140())
  {
    v76 = v89;
    swift_beginAccess();
    v77 = v76;
    v78 = v115;
    sub_F3F4(v77, v115, &qword_352D78, &unk_2D5320);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v79 = v118;
    v80 = sub_3ED0(v118, static Logger.default);
    swift_beginAccess();
    v81 = v114;
    v82 = v90;
    (*(v114 + 16))(v90, v80, v79);
    v83 = sub_2CDFE0();
    v84 = sub_2CE680();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_0, v83, v84, "AudioFlowDelegatePlugin#warmup timed out", v85, 2u);
      v79 = v118;
    }

    (*(v81 + 8))(v82, v79);
    (*(v91 + 104))(v92, enum case for PlaybackCode.unknown(_:), v93);
    (*(v95 + 104))(v94, enum case for DomainCode.audioFlow(_:), v96);
    v78 = v115;
    sub_2CC930();
    v86 = sub_2CC950();
    (*(*(v86 - 8) + 56))(v78, 0, 1, v86);
  }

  v117(v78);

  return sub_30B8(v78, &qword_352D78, &unk_2D5320);
}

uint64_t sub_1919BC(void *a1)
{
  v2 = sub_2CC590();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v11, v12, v7);
  v13 = sub_2CDFE0();
  v14 = sub_2CE690();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "AudioFlowDelegatePlugin#warmup InstalledAppProvider apps...", v15, 2u);
  }

  (*(v8 + 8))(v11, v7);
  sub_2CC580();
  *(swift_allocObject() + 16) = a1;
  v16 = a1;
  sub_2CC570();

  return (*(v3 + 8))(v6, v2);
}

void sub_191C68(uint64_t a1, NSObject *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2CDFE0();
  v11 = sub_2CE690();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = *(a1 + 16);

    _os_log_impl(&dword_0, v10, v11, "AudioFlowDelegatePlugin#warmup InstalledAppProvider apps:%ld", v12, 0xCu);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  dispatch_group_leave(a2);
}

uint64_t sub_191E54(void *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2CDFE0();
  v9 = sub_2CE690();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "AudioFlowDelegatePlugin#warmup PlayMediaAppSelector...", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  sub_2CC5C0();
  *(swift_allocObject() + 16) = a1;
  v11 = a1;
  sub_2CC5A0();
}

void sub_192058(char a1, NSObject *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2CDFE0();
  v11 = sub_2CE690();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v10, v11, "AudioFlowDelegatePlugin#warmup PlayMediaAppSelector success?:%{BOOL}d", v12, 8u);
  }

  (*(v5 + 8))(v8, v4);
  dispatch_group_leave(a2);
}

uint64_t sub_192224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "AudioFlowDelegatePlugin#warmup MediaPlaybackLite#warm starting...", v14, 2u);
  }

  (*(v7 + 8))(v10, v6);
  sub_2CBED0();
  sub_2CBEC0();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  v16 = a4;
  sub_2CBEA0();
}

void sub_192458(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v30 = a3;
  v29 = sub_20410(&qword_352D78, &unk_2D5320);
  v4 = *(*(v29 - 8) + 64);
  v5 = __chkstk_darwin(v29);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v16, v10);
  sub_F3F4(a1, v9, &qword_352D78, &unk_2D5320);
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v14;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136446210;
    v28 = v15;
    sub_F3F4(v9, v7, &qword_352D78, &unk_2D5320);
    v22 = sub_2CE2A0();
    v29 = v10;
    v23 = a1;
    v25 = v24;
    sub_30B8(v9, &qword_352D78, &unk_2D5320);
    v26 = sub_3F08(v22, v25, &v31);
    a1 = v23;

    *(v20 + 4) = v26;
    v15 = v28;
    _os_log_impl(&dword_0, v17, v18, "AudioFlowDelegatePlugin#warmup MediaPlaybackLite#warm complete with code:%{public}s", v20, 0xCu);
    sub_306C(v21);

    (*(v11 + 8))(v27, v29);
  }

  else
  {

    sub_30B8(v9, &qword_352D78, &unk_2D5320);
    (*(v11 + 8))(v14, v10);
  }

  swift_beginAccess();
  sub_1952BC(a1, v15, &qword_352D78, &unk_2D5320);
  dispatch_group_leave(v30);
}

uint64_t sub_1927D0(uint64_t a1)
{
  v2 = sub_2CA870();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CA7B0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_20410(&qword_352490, &unk_2D4D70);
  if (qword_34BF20 != -1)
  {
    swift_once();
  }

  v19 = qword_35F500;
  v9 = qword_34BF28;

  if (v9 != -1)
  {
    swift_once();
  }

  (*(v3 + 16))(v6, a1, v2);

  sub_2CA7A0();
  sub_2CA830();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v19 = sub_2CA8A0();
  sub_72068(&qword_352498, &qword_352490, &unk_2D4D70);
  v10 = sub_2C97B0();

  sub_20410(&qword_3524A0, &qword_2D5F70);
  v11 = *(sub_2C9620() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2D0090;
  sub_2C9610();
  type metadata accessor for GuardedFlow();
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  *(v15 + 24) = 0;
  *(v15 + 32) = v14;
  v19 = v15;
  sub_E960(&qword_3524A8, 255, type metadata accessor for GuardedFlow);
  v16 = sub_2C97B0();

  return v16;
}

uint64_t sub_192B40(uint64_t a1)
{
  v2 = sub_2CA870();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CA7B0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_20410(&qword_3538A0, &qword_2D5F68);
  if (qword_34BFA0 != -1)
  {
    swift_once();
  }

  v19 = qword_35F768;
  v9 = qword_34BFA8;

  if (v9 != -1)
  {
    swift_once();
  }

  (*(v3 + 16))(v6, a1, v2);

  sub_2CA7A0();
  sub_2CA830();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v19 = sub_2CA8A0();
  sub_72068(&qword_3538A8, &qword_3538A0, &qword_2D5F68);
  v10 = sub_2C97B0();

  sub_20410(&qword_3524A0, &qword_2D5F70);
  v11 = *(sub_2C9620() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2D0090;
  sub_2C9610();
  type metadata accessor for GuardedFlow();
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  *(v15 + 24) = 0;
  *(v15 + 32) = v14;
  v19 = v15;
  sub_E960(&qword_3524A8, 255, type metadata accessor for GuardedFlow);
  v16 = sub_2C97B0();

  return v16;
}

uint64_t sub_192EB0(char *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CA870();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34E480, &qword_2D2280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = -1;
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  if (qword_34BFA0 != -1)
  {
    swift_once();
  }

  v17 = qword_35F768;

  v18 = v16;
  v19 = a1;
  sub_10B83C(a1, 0, v17, v15, v18);

  sub_2CE960();
  swift_beginAccess();
  v20 = *(v15 + 24);
  if (v20 == 255 || (v20 & 1) != 0)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = v35;
    v22 = sub_3ED0(v35, static Logger.default);
    swift_beginAccess();
    v23 = v36;
    (*(v36 + 16))(v6, v22, v21);
    v24 = sub_2CDFE0();
    v25 = sub_2CE680();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "AudioFlowDelegatePlugin#makeFlow makeIntentFromParse for UpdateMediaAffinity intent returned failure to construct intent", v26, 2u);
    }

    else
    {
    }

    (*(v23 + 8))(v6, v21);

    return 0;
  }

  else
  {
    v28 = *(v15 + 16);
    (*(v33 + 16))(v10, v19, v34);
    sub_195158(v28, 0);
    sub_2CA7A0();
    v29 = sub_2CA7B0();
    (*(*(v29 - 8) + 56))(v14, 0, 1, v29);
    sub_195158(v28, 0);
    v30 = sub_1933A8(v19, v28);
    sub_2CA430();
    v31 = sub_193714(v14, v37, v28, v30);

    sub_A4194(v28, v20);
    sub_A4194(v28, v20);

    sub_306C(v37);
    sub_30B8(v14, &qword_34E480, &qword_2D2280);

    return v31;
  }
}

void sub_19332C(void *a1, char a2, uint64_t a3, NSObject *a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = *(a3 + 24);
  a2 &= 1u;
  *(a3 + 24) = a2;
  sub_A4194(v8, v9);
  sub_195158(a1, a2);
  dispatch_group_leave(a4);
}

uint64_t sub_1933A8(uint64_t a1, void *a2)
{
  v4 = sub_2CA870();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CA7B0();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_20410(&qword_3538A0, &qword_2D5F68);
  if (qword_34BFA0 != -1)
  {
    swift_once();
  }

  v23 = qword_35F768;
  v11 = qword_34BFA8;

  if (v11 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v8, a1, v4);

  sub_2CA7A0();
  v12 = a2;
  v23 = sub_2CA8A0();
  sub_72068(&qword_3538A8, &qword_3538A0, &qword_2D5F68);
  v13 = sub_2C97B0();

  sub_20410(&qword_3524A0, &qword_2D5F70);
  v14 = *(sub_2C9620() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2D0090;
  sub_2C9610();
  type metadata accessor for GuardedFlow();
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = 0;
  *(v18 + 32) = v17;
  v23 = v18;
  sub_E960(&qword_3524A8, 255, type metadata accessor for GuardedFlow);
  v19 = sub_2C97B0();

  v23 = v19;
  sub_2C95D0();
  v20 = sub_2C97B0();

  return v20;
}

uint64_t sub_193714(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_2CC2B0();
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  __chkstk_darwin(v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_34E480, &qword_2D2280);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v59 - v16;
  sub_F3F4(a1, &v59 - v16, &qword_34E480, &qword_2D2280);
  sub_EEAC(a2, v88);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = v10;
  v19 = qword_34BFB8;

  if (v19 != -1)
  {
    swift_once();
  }

  v87[3] = &type metadata for StringsBackedAppNameResolver;
  v59 = sub_2869C();
  v87[4] = v59;
  v87[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v87[0] + 16);
  sub_2C9A00();
  v20 = v11;
  v85[3] = v11;
  v85[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v85);
  sub_2CC2A0();
  v84[3] = sub_2CC040();
  v84[4] = &protocol witness table for NowPlayingProvider;
  sub_F390(v84);
  sub_2CC030();
  v21 = sub_2CB4A0();
  v22 = sub_2CB490();
  v83[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v83[3] = v21;
  v83[0] = v22;
  v23 = type metadata accessor for AudioAppResolutionFlow();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v63 = v23;
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input;
  v28 = sub_2CA7B0();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent;
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent) = 0;
  swift_beginAccess();
  v64 = v17;
  sub_1952BC(v17, v26 + v27, &qword_34E480, &qword_2D2280);
  swift_endAccess();
  v30 = *(v26 + v29);
  *(v26 + v29) = a3;

  sub_EEAC(v87, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appNameResolver);
  sub_EEAC(v86, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_aceService);
  sub_EEAC(v88, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_outputPublisher);
  v31 = (v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nextAppAcceptingFlow);
  *v31 = sub_1945D8;
  v31[1] = v18;
  sub_EEAC(v85, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_featureFlags);
  sub_EEAC(v84, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nowPlayingProvider);
  sub_EEAC(v83, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_siriKitTaskLoggingProvider);
  sub_EEAC(v87, v81);
  sub_EEAC(v86, v80);
  v32 = CATDefaultMode;
  v33 = sub_2CBC00();
  v34 = a3;
  v35 = sub_2CBBF0();
  v36 = v60;
  sub_2CC2A0();
  v37 = v82;
  v38 = sub_F9A0(v81, v82);
  v61 = &v59;
  v39 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v38);
  v41 = (&v59 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  type metadata accessor for CatService();
  v43 = swift_allocObject();
  v79[3] = &type metadata for StringsBackedAppNameResolver;
  v79[4] = v59;
  v44 = swift_allocObject();
  v79[0] = v44;
  v45 = v41[3];
  v44[3] = v41[2];
  v44[4] = v45;
  v44[5] = v41[4];
  v46 = v41[1];
  v44[1] = *v41;
  v44[2] = v46;
  v78[3] = v33;
  v78[4] = &protocol witness table for MorphunProvider;
  v78[0] = v35;
  v77[3] = v20;
  v77[4] = &protocol witness table for FeatureFlagProvider;
  v47 = sub_F390(v77);
  v48 = v62;
  (*(v62 + 16))(v47, v36, v20);
  *(v43 + 296) = v32;
  sub_EEAC(v77, v43 + 256);
  sub_EEAC(v79, v76);
  sub_EEAC(v78, v75);
  sub_EEAC(v80, v74);
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v49 = sub_2CCA30();

  v50 = sub_2CCA20();
  v71[3] = v49;
  v71[4] = &protocol witness table for MultiUserConnectionProvider;
  v71[0] = v50;
  v70[3] = sub_2CB9E0();
  v70[4] = &protocol witness table for DeviceProvider;
  sub_F390(v70);
  sub_2CB9C0();
  sub_EEAC(v76, v43 + 16);
  sub_EEAC(v75, v43 + 216);
  sub_EEAC(v74, v43 + 56);
  sub_EEAC(v71, v43 + 96);
  sub_EEAC(v70, v43 + 176);
  sub_F3F4(v72, &v65, qword_34C708, &qword_2D1620);
  if (v66)
  {

    sub_30B8(v72, qword_34C708, &qword_2D1620);
    sub_306C(v74);
    sub_306C(v75);
    sub_306C(v76);
    (*(v48 + 8))(v36, v20);
    sub_306C(v80);
    sub_306C(v77);
    sub_306C(v78);
    sub_306C(v79);
    sub_306C(v70);
    sub_306C(v71);
    sub_F338(&v65, &v67);
  }

  else
  {
    sub_EEAC(v74, &v67);
    v51 = sub_2C9E60();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    v54 = sub_2C9E50();
    v68 = v51;
    v69 = &protocol witness table for ContactsManager;

    *&v67 = v54;
    sub_30B8(v72, qword_34C708, &qword_2D1620);
    sub_306C(v74);
    sub_306C(v75);
    sub_306C(v76);
    (*(v48 + 8))(v36, v20);
    sub_306C(v80);
    sub_306C(v77);
    sub_306C(v78);
    sub_306C(v79);
    sub_306C(v70);
    sub_306C(v71);
    if (v66)
    {
      sub_30B8(&v65, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v67, v43 + 136);
  sub_306C(v81);
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_catService) = v43;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v55 = swift_allocObject();

  sub_306C(v86);
  sub_306C(v88);
  sub_30B8(v64, &qword_34E480, &qword_2D2280);
  sub_306C(v83);
  sub_306C(v84);
  sub_306C(v85);
  sub_306C(v87);
  v55[2] = 0xD000000000000011;
  v55[3] = 0x80000000002DA8D0;
  v55[4] = v43;
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_commonMediaIntentCatDialogService) = v55;
  v56 = (v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appResolutionFlowProducer);
  *v56 = sub_104BA4;
  v56[1] = 0;
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_state) = 0;
  v88[0] = v26;
  sub_E960(&qword_353898, 255, type metadata accessor for AudioAppResolutionFlow);
  v57 = sub_2C97B0();

  return v57;
}

uint64_t sub_19400C()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);
  sub_306C(v0 + 17);
  v1 = v0[23];

  sub_30B8((v0 + 24), &qword_3538C0, &qword_2D5F88);

  return swift_deallocClassInstance();
}

uint64_t sub_1940C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_194184();
  *a1 = result;
  return result;
}