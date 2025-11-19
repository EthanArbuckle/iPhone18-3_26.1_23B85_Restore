unint64_t sub_C3654(char a1)
{
  result = 0x616C50616964656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0x747241636973756DLL;
      break;
    case 4:
      result = 0x6449616964656DLL;
      break;
    case 5:
      result = 0x746163696C707061;
      break;
    case 6:
      result = 0x656D614E707061;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x7473696C79616C70;
      break;
    case 9:
      result = 0x746954636973756DLL;
      break;
    case 10:
      result = 0x626C41636973756DLL;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_C3828(char a1)
{
  sub_2CECB0(20);

  v2 = sub_C3654(a1);
  v4 = v3;
  sub_C394C(1);
  v5 = sub_2CEBA0();
  v7 = v6;

  sub_208000(1uLL, v2, v4);

  sub_C39E8();
  sub_2CE340();

  v9._countAndFlagsBits = v5;
  v9._object = v7;
  sub_2CE350(v9);

  return 0xD000000000000012;
}

uint64_t sub_C394C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2CE330();

    return sub_2CE3D0();
  }

  return result;
}

unint64_t sub_C39E8()
{
  result = qword_34F0A0;
  if (!qword_34F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34F0A0);
  }

  return result;
}

uint64_t sub_C3A3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21[-v6];
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "AmbiguousShuffleFlow#on Handling input", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v17 = sub_2CA7B0();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a1, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_input;
  swift_beginAccess();
  sub_A4888(v7, v2 + v19);
  swift_endAccess();
  return 1;
}

uint64_t sub_C3CEC(void (*a1)(void *), uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  v3 = sub_2C9EC0();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3);
  v47 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = sub_2CE000();
  v46 = *(v41 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin(v41);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CA870();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34E480, &qword_2D2280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v40 - v13;
  v15 = sub_2CA7B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v40 - v20;
  v22 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_input;
  swift_beginAccess();
  sub_F3F4(v2 + v22, v14, &qword_34E480, &qword_2D2280);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v23 = v50;
    sub_30B8(v14, &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v24 = v41;
    v25 = sub_3ED0(v41, static Logger.default);
    swift_beginAccess();
    v26 = v45;
    v27 = v46;
    (*(v46 + 16))(v45, v25, v24);
    v28 = sub_2CDFE0();
    v29 = sub_2CE680();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "AmbiguousShuffleFlow#execute Input is nil", v30, 2u);
    }

    (*(v27 + 8))(v26, v24);
    v31 = v47;
    sub_2C9EB0();
    v23(v31);
    return (*(v48 + 8))(v31, v49);
  }

  else
  {
    v33 = v2;
    v34 = v51;
    v46 = *(v16 + 32);
    (v46)(v21, v14, v15);
    v35 = *(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_controlsFlowProvider + 32);
    v48 = *(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_controlsFlowProvider + 24);
    v49 = v35;
    v47 = sub_35E0((v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_controlsFlowProvider), v48);
    v36 = v42;
    sub_2CA790();
    (*(v16 + 16))(v19, v21, v15);
    v37 = (*(v16 + 80) + 40) & ~*(v16 + 80);
    v38 = swift_allocObject();
    v39 = v50;
    v38[2] = v33;
    v38[3] = v39;
    v38[4] = v34;
    (v46)(v38 + v37, v19, v15);

    sub_2CDC60();

    (*(v43 + 8))(v36, v44);
    return (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_C4270(uint64_t a1, char a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t *a6)
{
  v56 = a6;
  v58 = a4;
  v59 = a5;
  v9 = sub_2C9EC0();
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v53 - v19;
  if (a2)
  {
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_2CECB0(66);
    v64._countAndFlagsBits = 0xD00000000000003FLL;
    v64._object = 0x80000000002DC350;
    sub_2CE350(v64);
    swift_getErrorValue();
    v65._countAndFlagsBits = sub_2CEEF0();
    sub_2CE350(v65);

    v66._countAndFlagsBits = 46;
    v66._object = 0xE100000000000000;
    sub_2CE350(v66);
    v21 = v62;
    v22 = 0;
    v23 = v63;
    v24 = v58;
    v25 = v59;
LABEL_3:
    sub_C48C0(v22, v21, v23, v24, v25);
  }

  if (a1)
  {
    v27 = qword_34BF58;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_3ED0(v13, static Logger.default);
    swift_beginAccess();
    (*(v14 + 16))(v20, v28, v13);
    v29 = sub_2CDFE0();
    v30 = v13;
    v31 = sub_2CE690();
    if (os_log_type_enabled(v29, v31))
    {
      v32 = swift_slowAlloc();
      v54 = v32;
      v56 = swift_slowAlloc();
      v60 = v56;
      *v32 = 136446210;
      v33 = sub_2CCCC0();
      v35 = sub_3F08(v33, v34, &v60);
      v55 = v30;
      v36 = v29;
      v37 = v35;

      v38 = v54;
      *(v54 + 4) = v37;
      _os_log_impl(&dword_0, v36, v31, "AmbiguousShuffleFlow#execute %{public}s executing shuffle flow from controls", v38, 0xCu);
      sub_306C(v56);

      (*(v14 + 8))(v20, v55);
    }

    else
    {

      (*(v14 + 8))(v20, v30);
    }

    sub_2C9EA0();
    v58(v12);
    sub_C7340(a1, 0);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v39 = sub_3ED0(v13, static Logger.default);
    swift_beginAccess();
    (*(v14 + 16))(v18, v39, v13);
    v40 = a3;

    v41 = sub_2CDFE0();
    v42 = sub_2CE690();

    v43 = off_34F000;
    if (os_log_type_enabled(v41, v42))
    {
      v44 = swift_slowAlloc();
      v55 = v13;
      v45 = v44;
      v54 = swift_slowAlloc();
      v60 = v54;
      *v45 = 136315138;
      v46 = *(v40 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_fallbackFlow);
      v47 = sub_2C95B0();
      v49 = v42;
      v50 = v12;
      v51 = sub_3F08(v47, v48, &v60);
      v43 = off_34F000;

      *(v45 + 4) = v51;
      v12 = v50;
      _os_log_impl(&dword_0, v41, v49, "AmbiguousShuffleFlow#execute No flow returned from controls, pushing fallback flow: %s", v45, 0xCu);
      sub_306C(v54);

      (*(v14 + 8))(v18, v55);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
    }

    v52 = *(v43[24] + v40);
    if ((sub_2C95C0() & 1) == 0)
    {
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_2CECB0(85);
      v67._countAndFlagsBits = 0xD00000000000003BLL;
      v67._object = 0x80000000002DC2F0;
      sub_2CE350(v67);
      sub_2CA7B0();
      sub_C72E8();
      v68._countAndFlagsBits = sub_2CEE70();
      sub_2CE350(v68);

      v69._object = 0x80000000002DC330;
      v69._countAndFlagsBits = 0xD000000000000018;
      sub_2CE350(v69);
      v21 = v60;
      v22 = 1;
      v23 = v61;
      v24 = v58;
      v25 = v59;
      goto LABEL_3;
    }

    sub_2C9EA0();
    v58(v12);
  }

  return (*(v57 + 8))(v12, v9);
}

uint64_t sub_C48C0(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  LODWORD(v8) = a1;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_2CDFE0();
  v16 = sub_2CE680();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = v8;
    v8 = v17;
    v18 = swift_slowAlloc();
    v25 = a4;
    v19 = v18;
    v27 = v18;
    *v8 = 136315138;
    *(v8 + 4) = sub_3F08(v26, a3, &v27);
    _os_log_impl(&dword_0, v15, v16, "%s", v8, 0xCu);
    sub_306C(v19);
    a4 = v25;

    LOBYTE(v8) = v24;
  }

  (*(v10 + 8))(v13, v9);
  if (v8)
  {
    v20 = 0x6B6361426C6C6166;
  }

  else
  {
    v20 = 0xD000000000000023;
  }

  if (v8)
  {
    v21 = 0xEF66664F776F6C46;
  }

  else
  {
    v21 = 0x80000000002DC2C0;
  }

  sub_C4B64(v20, v21, a4, a5);
}

uint64_t sub_C4B64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_2CDFE0();
  v16 = sub_2CE670();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v5;
    v18 = a4;
    v19 = v17;
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_3F08(a1, a2, &v33);
    _os_log_impl(&dword_0, v15, v16, "AmbiguousShuffleFlow#genericErrorDialog... %s", v19, 0xCu);
    sub_306C(v20);

    a4 = v18;
    v5 = v31;
  }

  (*(v10 + 8))(v13, v9);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  sub_2CC230();
  *(inited + 32) = sub_2CC200();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v22;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  *(inited + 80) = sub_2CC1F0();
  *(inited + 88) = v23;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_2CECB0(62);
  v35._object = 0x80000000002DC280;
  v35._countAndFlagsBits = 0xD00000000000003CLL;
  sub_2CE350(v35);
  v36._countAndFlagsBits = a1;
  v36._object = a2;
  sub_2CE350(v36);
  v24 = v33;
  v25 = v34;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v24;
  *(inited + 104) = v25;
  v26 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v27 = *(v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_playMediaCatDialogService);
  v28 = swift_allocObject();
  v28[2] = v5;
  v28[3] = a1;
  v29 = v32;
  v28[4] = a2;
  v28[5] = v29;
  v28[6] = a4;

  sub_3D150(v26, 0, sub_C7230, v28);
}

uint64_t sub_C4F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a5;
  v38 = a3;
  v35 = a4;
  v36 = a2;
  v8 = sub_20410(&unk_3519A0, &qword_2D0980);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v33 - v10;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "AmbiguousShuffleFlow#handleDialogResult Handling dialog Result...", v20, 2u);
  }

  (*(v13 + 8))(v16, v12);
  v21 = *(v6 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_appNameResolver + 24);
  v33[2] = *(v6 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_appNameResolver + 32);
  v33[1] = sub_35E0((v6 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_appNameResolver), v21);
  v33[0] = sub_2CBD50();
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_F3F4(a1, v11, &unk_3519A0, &qword_2D0980);
  v22 = v11;
  v23 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_14A58(v22, v26 + v23, &unk_3519A0, &qword_2D0980);
  *(v26 + v24) = v6;
  v27 = (v26 + v25);
  v28 = v36;
  v30 = v37;
  v29 = v38;
  *v27 = v35;
  v27[1] = v30;
  v31 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v31 = v28;
  v31[1] = v29;

  sub_2CBC50();

  return sub_30B8(v39, &qword_34E970, &qword_2D2910);
}

uint64_t sub_C529C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v85 = a8;
  v84 = a7;
  v102 = a6;
  v98 = a4;
  v99 = a5;
  v96 = a1;
  v97 = a3;
  v8 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v94 = &v82 - v10;
  v11 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v93 = &v82 - v13;
  v14 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v92 = &v82 - v16;
  v91 = sub_2CCB30();
  v90 = *(v91 - 8);
  v17 = *(v90 + 64);
  __chkstk_darwin(v91);
  v88 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2CCAC0();
  v87 = *(v89 - 8);
  v19 = *(v87 + 64);
  __chkstk_darwin(v89);
  v86 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2CE000();
  v82 = *(v83 - 8);
  v21 = *(v82 + 64);
  __chkstk_darwin(v83);
  v95 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2C9EC0();
  v100 = *(v23 - 8);
  v101 = v23;
  v24 = *(v100 + 64);
  __chkstk_darwin(v23);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v82 - v32;
  v34 = sub_20410(&unk_3519A0, &qword_2D0980);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = (&v82 - v36);
  sub_2CCFB0();

  v38 = sub_2CCF80();
  sub_F3F4(v97, v37, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v96 = v38;
    v97 = v26;
    v39 = v98;
    v40 = *v37;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v41 = v83;
    v42 = sub_3ED0(v83, static Logger.default);
    swift_beginAccess();
    v43 = v82;
    v44 = v95;
    (*(v82 + 16))(v95, v42, v41);
    swift_errorRetain();
    v45 = sub_2CDFE0();
    v46 = sub_2CE680();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v103 = v48;
      *v47 = 136315138;
      swift_getErrorValue();
      v104 = sub_2CEEF0();
      v105 = v49;
      v50 = sub_2CE3C0();
      v52 = v43;
      v53 = sub_3F08(v50, v51, &v103);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_0, v45, v46, "AmbiguousShuffleFlow#handleDialogResult Could not properly create dialog %s, silently failing...", v47, 0xCu);
      sub_306C(v48);

      (*(v52 + 8))(v95, v41);
    }

    else
    {

      (*(v43 + 8))(v44, v41);
    }

    v57 = v39;
    v104 = v84;
    v105 = v85;

    v106._countAndFlagsBits = 95;
    v106._object = 0xE100000000000000;
    sub_2CE350(v106);
    v59 = v104;
    v58 = v105;
    swift_getErrorValue();
    v104 = sub_2CEEF0();
    v105 = v60;
    v61 = sub_2CE3C0();
    v63 = v62;
    v104 = v59;
    v105 = v58;

    v107._countAndFlagsBits = v61;
    v107._object = v63;
    sub_2CE350(v107);

    v64 = v87;
    v65 = v86;
    v66 = v89;
    (*(v87 + 104))(v86, enum case for AdditionalMetricsDescription.ModuleName.asf(_:), v89);
    v67 = v90;
    v68 = v88;
    v69 = v91;
    (*(v90 + 104))(v88, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v91);
    v95 = sub_2CCAE0();

    (*(v67 + 8))(v68, v69);
    (*(v64 + 8))(v65, v66);
    v98 = v40;
    v70 = *(v57 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0((v57 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_siriKitTaskLoggingProvider), *(v57 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_siriKitTaskLoggingProvider + 24));
    v71 = enum case for ActivityType.failed(_:);
    v72 = sub_2C9C20();
    v73 = *(v72 - 8);
    v74 = v92;
    (*(v73 + 104))(v92, v71, v72);
    (*(v73 + 56))(v74, 0, 1, v72);
    v75 = sub_2CA130();
    v76 = v93;
    (*(*(v75 - 8) + 56))(v93, 1, 1, v75);
    v77 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v78 = sub_2C98F0();
    v79 = *(v78 - 8);
    v80 = v94;
    (*(v79 + 104))(v94, v77, v78);
    (*(v79 + 56))(v80, 0, 1, v78);

    sub_2CB4E0();

    sub_30B8(v80, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v76, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v74, &qword_34CB88, &unk_2D0D90);
    v81 = v97;
    sub_2C9EB0();
    v99(v81);

    return (*(v100 + 8))(v81, v101);
  }

  else
  {
    sub_14A58(v37, v33, &qword_34C6E8, &unk_2D0FF0);
    sub_F3F4(v33, v31, &qword_34C6E8, &unk_2D0FF0);
    v54 = *&v31[*(v27 + 48)];
    sub_C5DD0(v31, v54);

    v55 = sub_2CA130();
    (*(*(v55 - 8) + 8))(v31, v55);
    sub_2C9EB0();
    v99(v26);

    (*(v100 + 8))(v26, v101);
    return sub_30B8(v33, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t sub_C5DD0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  v18 = sub_2CA130();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v33 = v18;
  v20(v17, a1);
  *&v17[*(v11 + 48)] = a2;
  v21 = qword_34BF58;
  v22 = a2;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v10, v23, v6);
  v24 = sub_2CDFE0();
  v25 = sub_2CE670();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v32 = v11;
    *v26 = 0;
    _os_log_impl(&dword_0, v24, v25, "AmbiguousShuffleFlow#publishOutput Dialog successfully generated, responding and exiting...", v26, 2u);
    v11 = v32;
  }

  (*(v7 + 8))(v10, v6);
  v27 = sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_outputProvider), *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_outputProvider + 24));
  sub_F3F4(v17, v15, &qword_34C6E8, &unk_2D0FF0);
  v28 = *&v15[*(v11 + 48)];
  v29 = swift_allocObject();
  swift_weakInit();
  sub_1C4EB0(v15, v28, *v27, v29);

  sub_30B8(v17, &qword_34C6E8, &unk_2D0FF0);

  return (*(v19 + 8))(v15, v33);
}

uint64_t sub_C6128(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v3 = sub_2CE000();
  v82 = *(v3 - 8);
  v4 = *(v82 + 64);
  __chkstk_darwin(v3);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v86 = &v75 - v9;
  v10 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v85 = &v75 - v12;
  v13 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v84 = &v75 - v15;
  v88 = sub_2CB970();
  v16 = *(v88 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v88);
  v83 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2CCB30();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CCAC0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3F4(a1, &v96, qword_34C798, &qword_2D0DA0);
  if ((v97 & 1) == 0)
  {
    v44 = v16;
    sub_F338(&v96, v93);
    (*(v25 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.asf(_:), v24);
    (*(v20 + 104))(v23, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v19);
    sub_2CCAE0();
    (*(v20 + 8))(v23, v19);
    (*(v25 + 8))(v28, v24);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_EEAC(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_siriKitTaskLoggingProvider, v90);

      v82 = v91;
      v46 = v86;
      v87 = v92;
      v81 = sub_35E0(v90, v91);
      v47 = v83;
      (*(v16 + 104))(v83, enum case for TypeOfIntent.acousticID(_:), v88);
      v48 = enum case for ActivityType.failed(_:);
      v49 = sub_2C9C20();
      v50 = *(v49 - 8);
      v51 = v84;
      (*(v50 + 104))(v84, v48, v49);
      (*(v50 + 56))(v51, 0, 1, v49);
      v52 = sub_2CA130();
      v53 = v85;
      (*(*(v52 - 8) + 56))(v85, 1, 1, v52);
      v54 = enum case for SiriKitReliabilityCodes.genericError(_:);
      v55 = sub_2C98F0();
      v56 = *(v55 - 8);
      (*(v56 + 104))(v46, v54, v55);
      (*(v56 + 56))(v46, 0, 1, v55);
      sub_2CB4C0();

      sub_30B8(v46, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v53, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v51, &qword_34CB88, &unk_2D0D90);
      (*(v44 + 8))(v47, v88);
      sub_306C(v90);
    }

    else
    {
    }

    swift_beginAccess();
    v72 = swift_weakLoadStrong();
    if (v72)
    {
      sub_EEAC(v72 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_publisher, v90);

      sub_35E0(v90, v91);
      sub_2CA010();
      sub_306C(v93);
      v73 = v90;
      return sub_306C(v73);
    }

LABEL_14:
    v73 = v93;
    return sub_306C(v73);
  }

  v80 = v24;
  v29 = v82;
  v81 = v19;
  v79 = v16;
  v87 = v96;
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v30 = sub_3ED0(v3, qword_35F6A8);
  v31 = v29;
  (*(v29 + 16))(v6, v30, v3);
  swift_errorRetain();
  v32 = sub_2CDFE0();
  v33 = sub_2CE680();

  v78 = v33;
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v77 = v6;
    v75 = v32;
    v35 = v34;
    v76 = swift_slowAlloc();
    v90[0] = v76;
    *v35 = 136315394;
    swift_getErrorValue();
    v93[0] = sub_2CEEF0();
    v93[1] = v36;
    v37 = sub_2CE3C0();
    v39 = sub_3F08(v37, v38, v90);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2082;
    v40 = sub_2CCCA0();
    v42 = sub_3F08(v40, v41, v90);

    *(v35 + 14) = v42;
    v43 = v75;
    _os_log_impl(&dword_0, v75, v78, "AmbiguousShuffleFlow#handleDialogResult failed to create output %s  %{public}s", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v77, v3);
  }

  else
  {

    (*(v31 + 8))(v6, v3);
  }

  v57 = v81;
  v58 = v80;
  (*(v25 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.asf(_:), v80);
  (*(v20 + 104))(v23, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v57);
  swift_getErrorValue();
  sub_2CEEF0();
  sub_2CCAE0();

  (*(v20 + 8))(v23, v57);
  (*(v25 + 8))(v28, v58);
  swift_beginAccess();
  v59 = swift_weakLoadStrong();
  if (v59)
  {
    sub_EEAC(v59 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_siriKitTaskLoggingProvider, v93);

    v82 = v94;
    v89 = v95;
    v81 = sub_35E0(v93, v94);
    v60 = v79;
    v61 = v83;
    (*(v79 + 104))(v83, enum case for TypeOfIntent.acousticID(_:), v88);
    v62 = enum case for ActivityType.failed(_:);
    v63 = sub_2C9C20();
    v64 = *(v63 - 8);
    v65 = v84;
    (*(v64 + 104))(v84, v62, v63);
    (*(v64 + 56))(v65, 0, 1, v63);
    v66 = sub_2CA130();
    v67 = v85;
    (*(*(v66 - 8) + 56))(v85, 1, 1, v66);
    v68 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v69 = sub_2C98F0();
    v70 = *(v69 - 8);
    v71 = v86;
    (*(v70 + 104))(v86, v68, v69);
    (*(v70 + 56))(v71, 0, 1, v69);
    sub_2CB4C0();

    sub_30B8(v71, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v67, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v65, &qword_34CB88, &unk_2D0D90);
    (*(v60 + 8))(v61, v88);
    goto LABEL_14;
  }
}

uint64_t sub_C6ED4()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_input, &qword_34E480, &qword_2D2280);
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_controlsFlowProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_audioFlowProvider));
  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_fallbackFlow);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_outputProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_publisher));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_appNameResolver));
  v2 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_playMediaCatDialogService);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_siriKitTaskLoggingProvider));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AmbiguousShuffleFlow()
{
  result = qword_34F118;
  if (!qword_34F118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_C701C()
{
  sub_B104C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_C70D0(uint64_t a1)
{
  v2 = *v1;
  sub_C3A3C(a1);
  return 1;
}

uint64_t sub_C711C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AmbiguousShuffleFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_C7158(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20410(&unk_3519A0, &qword_2D0980) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);
  v12 = (v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_C529C(a1, a2, v2 + v6, v9, v10, v11, v13, v14);
}

uint64_t sub_C7230(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[2];
  return sub_C4F14(a1, v2, v3, v4, v5);
}

uint64_t sub_C7260(uint64_t a1, char a2)
{
  v5 = *(sub_2CA7B0() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80)));

  return sub_C4270(a1, a2 & 1, v6, v7, v8, v9);
}

unint64_t sub_C72E8()
{
  result = qword_34CD00;
  if (!qword_34CD00)
  {
    sub_2CA7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CD00);
  }

  return result;
}

uint64_t sub_C7340(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_C73C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for TCCAcceptanceFlowStrategy.ConfirmationDialogResponse();
  result = (v3)(a1 + v4[9], 1, 1, v2);
  v6 = (a1 + v4[10]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v4[11]);
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v4[12]) = 0;
  return result;
}

uint64_t sub_C749C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v84 = &v69 - v6;
  v85 = sub_2CD490();
  v7 = *(v85 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v85);
  v69 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v73 = &v69 - v12;
  __chkstk_darwin(v11);
  v78 = &v69 - v13;
  v14 = sub_2CA870();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  __chkstk_darwin(v14);
  v80 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CA7B0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v71 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v70 = &v69 - v28;
  __chkstk_darwin(v27);
  v30 = &v69 - v29;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  v32 = *(v23 + 16);
  v77 = v31;
  v76 = v23 + 16;
  v75 = v32;
  v32(v30, v31, v22);
  v33 = *(v18 + 16);
  v83 = a1;
  v33(v21, a1, v17);
  v34 = sub_2CDFE0();
  v35 = sub_2CE690();
  v86 = v22;
  v36 = v23;
  v37 = v35;
  v38 = os_log_type_enabled(v34, v35);
  v79 = v7;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v74 = a2;
    v41 = v40;
    v91[0] = v40;
    *v39 = 136315138;
    sub_CED0C(&qword_34CD00, &type metadata accessor for Input);
    v72 = v36;
    v42 = sub_2CEE70();
    v44 = v43;
    (*(v18 + 8))(v21, v17);
    v45 = sub_3F08(v42, v44, v91);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_0, v34, v37, "TCCAcceptanceFlowStrategy#actionForInput input:%s", v39, 0xCu);
    sub_306C(v41);
    a2 = v74;

    v46 = v72;
    v47 = *(v72 + 8);
    v48 = v86;
    v47(v30, v86);
  }

  else
  {

    (*(v18 + 8))(v21, v17);
    v47 = *(v36 + 8);
    v48 = v86;
    v47(v30, v86);
    v46 = v36;
  }

  v49 = v80;
  sub_2CA790();
  v50 = sub_D1D64(v49, &v89);
  (*(v81 + 8))(v49, v82, v50);
  v51 = v84;
  v52 = v85;
  if (v90)
  {
    sub_F338(&v89, v91);
    sub_35E0(v91, v91[3]);
    sub_2CD480();
    v53 = v79;
    if ((*(v79 + 48))(v51, 1, v52) == 1)
    {
      sub_30B8(v51, &qword_34CCE8, &unk_2D0E20);
LABEL_9:
      sub_2C9CE0();
      return sub_306C(v91);
    }

    v72 = v46;
    v74 = a2;
    (*(v53 + 32))(v78, v51, v52);
    v59 = *(v53 + 104);
    v59(v73, enum case for CommonAudio.Confirmation.cancel(_:), v52);
    sub_CED0C(&qword_34CCF8, &type metadata accessor for CommonAudio.Confirmation);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v89 == v87 && *(&v89 + 1) == v88)
    {
      v60 = 1;
    }

    else
    {
      v60 = sub_2CEEA0();
    }

    v61 = *(v79 + 8);
    v61(v73, v52);

    if ((v60 & 1) == 0)
    {
      v62 = v69;
      v59(v69, enum case for CommonAudio.Confirmation.no(_:), v52);
      sub_2CE3E0();
      sub_2CE3E0();
      if (v89 == v87 && *(&v89 + 1) == v88)
      {
        v61(v62, v52);
      }

      else
      {
        v63 = sub_2CEEA0();
        v61(v62, v52);

        if ((v63 & 1) == 0)
        {
          v61(v78, v52);
          goto LABEL_9;
        }
      }
    }

    v64 = v70;
    v65 = v86;
    v75(v70, v77, v86);
    v66 = sub_2CDFE0();
    v67 = sub_2CE690();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_0, v66, v67, "TCCAcceptanceFlowStrategy#actionForInput cancelled", v68, 2u);
    }

    v47(v64, v65);
    sub_2C9CD0();
    v61(v78, v52);
    return sub_306C(v91);
  }

  sub_30B8(&v89, &qword_34CCF0, &unk_2D1270);
  v54 = v71;
  v75(v71, v77, v48);
  v55 = sub_2CDFE0();
  v56 = sub_2CE690();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v55, v56, "TCCAcceptanceFlowStrategy#actionForInput received invalid NL intent", v57, 2u);
  }

  v47(v54, v48);
  return sub_2C9CF0();
}

uint64_t sub_C7EF0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v127 = a3;
  v128 = a2;
  v126 = sub_20410(&qword_34F2C0, &unk_2D3060);
  v5 = *(*(v126 - 8) + 64);
  v6 = __chkstk_darwin(v126);
  v8 = (&v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v123 = &v106 - v9;
  v119 = sub_2CD490();
  v125 = *(v119 - 8);
  v10 = *(v125 + 64);
  v11 = __chkstk_darwin(v119);
  v115 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v111 = &v106 - v13;
  v121 = sub_2C9900();
  v120 = *(v121 - 8);
  v14 = *(v120 + 64);
  v15 = __chkstk_darwin(v121);
  v117 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v116 = &v106 - v18;
  v19 = __chkstk_darwin(v17);
  v110 = &v106 - v20;
  __chkstk_darwin(v19);
  v112 = &v106 - v21;
  v22 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v118 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v106 - v26;
  v114 = sub_20410(qword_34F2C8, &unk_2D3070);
  v28 = *(*(v114 - 8) + 64);
  v29 = __chkstk_darwin(v114);
  v122 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v113 = &v106 - v31;
  v32 = sub_2CE000();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v37 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v124 = &v106 - v38;
  v39 = sub_2CA870();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v43 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CA790();
  v44 = sub_D1D64(v43, &v130);
  (*(v40 + 8))(v43, v39, v44);
  if (v131)
  {
    sub_F338(&v130, v132);
    v45 = *(v3 + 184);
    sub_35E0((v4 + 152), *(v4 + 176));
    sub_28C0E4();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v46 = sub_3ED0(v32, static Logger.default);
    swift_beginAccess();
    v47 = v124;
    (*(v33 + 16))(v124, v46, v32);
    sub_EEAC(v132, &v130);
    v48 = sub_2CDFE0();
    v49 = sub_2CE690();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v121;
    v52 = v120;
    v53 = v119;
    if (!v50)
    {

      (*(v33 + 8))(v47, v32);
      sub_306C(&v130);
      v65 = v118;
      goto LABEL_24;
    }

    v109 = v49;
    v54 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v129 = v107;
    v108 = v54;
    *v54 = 136315138;
    sub_35E0(&v130, v131);
    sub_2CD480();
    v55 = v125;
    if ((*(v125 + 48))(v27, 1, v53) == 1)
    {
      sub_30B8(v27, &qword_34CCE8, &unk_2D0E20);
      v56 = sub_2CA360();
      (*(*(v56 - 8) + 56))(v113, 1, 1, v56);
      goto LABEL_22;
    }

    v66 = v111;
    (*(v55 + 16))(v111, v27, v53);
    v67 = (*(v55 + 88))(v66, v53);
    if (v67 == enum case for CommonAudio.Confirmation.yes(_:))
    {
      v68 = v112;
      (*(v52 + 104))(v112, enum case for SiriKitConfirmationState.confirmed(_:), v51);
    }

    else
    {
      v68 = v112;
      if (v67 == enum case for CommonAudio.Confirmation.no(_:))
      {
        v69 = &enum case for SiriKitConfirmationState.rejected(_:);
      }

      else
      {
        if (v67 != enum case for CommonAudio.Confirmation.cancel(_:))
        {
          v104 = enum case for CommonAudio.Confirmation.moreInfo(_:);
          v105 = v67;
          (*(v52 + 104))(v112, enum case for SiriKitConfirmationState.unset(_:), v51);
          v103 = v105 == v104;
          v68 = v112;
          if (!v103)
          {
            (*(v55 + 8))(v111, v53);
          }

          goto LABEL_20;
        }

        v69 = &enum case for SiriKitConfirmationState.cancelled(_:);
      }

      (*(v52 + 104))(v112, *v69, v51);
    }

LABEL_20:
    (*(v55 + 8))(v27, v53);
    v70 = v110;
    (*(v52 + 32))(v110, v68, v51);
    v71 = (*(v52 + 88))(v70, v51);
    if (v71 != enum case for SiriKitConfirmationState.confirmed(_:))
    {
      v65 = v118;
      if (v71 == enum case for SiriKitConfirmationState.rejected(_:))
      {
        v89 = sub_2CA360();
        v90 = *(v89 - 8);
        v91 = v113;
        (*(v90 + 104))();
        (*(v90 + 56))(v91, 0, 1, v89);
      }

      else
      {
        v100 = sub_2CA360();
        (*(*(v100 - 8) + 56))(v113, 1, 1, v100);
        (*(v52 + 8))(v70, v51);
      }

      goto LABEL_23;
    }

    v72 = sub_2CA360();
    v73 = *(v72 - 8);
    v74 = v113;
    (*(v73 + 104))();
    (*(v73 + 56))(v74, 0, 1, v72);
LABEL_22:
    v65 = v118;
LABEL_23:
    v75 = v124;
    v76 = sub_2CE2A0();
    v78 = v77;
    sub_306C(&v130);
    v79 = sub_3F08(v76, v78, &v129);

    v80 = v108;
    *(v108 + 1) = v79;
    _os_log_impl(&dword_0, v48, v109, "TCCAcceptanceFlowStrategy#parseTCCConfirmationResponse %s", v80, 0xCu);
    sub_306C(v107);

    (*(v33 + 8))(v75, v32);
LABEL_24:
    sub_35E0(v132, v132[3]);
    sub_2CD480();
    v81 = v125;
    v82 = (*(v125 + 48))(v65, 1, v53);
    v83 = v122;
    if (v82 == 1)
    {
      sub_30B8(v65, &qword_34CCE8, &unk_2D0E20);
      v84 = sub_2CA360();
      (*(*(v84 - 8) + 56))(v83, 1, 1, v84);
      goto LABEL_41;
    }

    v85 = v115;
    (*(v81 + 16))(v115, v65, v53);
    v86 = (*(v81 + 88))(v85, v53);
    if (v86 == enum case for CommonAudio.Confirmation.yes(_:))
    {
      v87 = v116;
      (*(v52 + 104))(v116, enum case for SiriKitConfirmationState.confirmed(_:), v51);
    }

    else
    {
      v87 = v116;
      if (v86 == enum case for CommonAudio.Confirmation.no(_:))
      {
        v88 = &enum case for SiriKitConfirmationState.rejected(_:);
      }

      else
      {
        if (v86 != enum case for CommonAudio.Confirmation.cancel(_:))
        {
          v101 = enum case for CommonAudio.Confirmation.moreInfo(_:);
          v102 = v86;
          (*(v52 + 104))(v116, enum case for SiriKitConfirmationState.unset(_:), v51);
          v103 = v102 == v101;
          v87 = v116;
          v81 = v125;
          if (!v103)
          {
            (*(v125 + 8))(v115, v53);
          }

          goto LABEL_35;
        }

        v88 = &enum case for SiriKitConfirmationState.cancelled(_:);
      }

      (*(v52 + 104))(v116, *v88, v51);
    }

LABEL_35:
    (*(v81 + 8))(v65, v53);
    v92 = v117;
    (*(v52 + 32))(v117, v87, v51);
    v93 = (*(v52 + 88))(v92, v51);
    if (v93 == enum case for SiriKitConfirmationState.confirmed(_:))
    {
      v94 = &enum case for ConfirmationResponse.confirmed(_:);
    }

    else
    {
      if (v93 != enum case for SiriKitConfirmationState.rejected(_:))
      {
        v98 = sub_2CA360();
        (*(*(v98 - 8) + 56))(v83, 1, 1, v98);
        (*(v52 + 8))(v117, v51);
        goto LABEL_41;
      }

      v94 = &enum case for ConfirmationResponse.rejected(_:);
    }

    v95 = *v94;
    v96 = sub_2CA360();
    v97 = *(v96 - 8);
    (*(v97 + 104))(v83, v95, v96);
    (*(v97 + 56))(v83, 0, 1, v96);
LABEL_41:
    v99 = v123;
    sub_2CA750();
    swift_storeEnumTagMultiPayload();
    v128(v99);
    sub_30B8(v99, &qword_34F2C0, &unk_2D3060);
    return sub_306C(v132);
  }

  sub_30B8(&v130, &qword_34CCF0, &unk_2D1270);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v57 = sub_3ED0(v32, static Logger.default);
  swift_beginAccess();
  (*(v33 + 16))(v37, v57, v32);
  v58 = sub_2CDFE0();
  v59 = sub_2CE690();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v58, v59, "TCCAcceptanceFlowStrategy#parseTCCConfirmationResponse received invalid NL intent", v60, 2u);
  }

  (*(v33 + 8))(v37, v32);
  v61 = sub_2CB850();
  sub_CED0C(&qword_34CCA8, &type metadata accessor for PlaybackCode);
  v62 = swift_allocError();
  (*(*(v61 - 8) + 104))(v63, enum case for PlaybackCode.ceGE23(_:), v61);
  *v8 = v62;
  swift_storeEnumTagMultiPayload();
  v128(v8);
  return sub_30B8(v8, &qword_34F2C0, &unk_2D3060);
}

void (*sub_C8FCC(uint64_t a1, uint64_t a2, uint64_t a3))(_BYTE *, void)
{
  v4 = v3;
  v8 = sub_2CCF90();
  v10 = v9;
  v11 = sub_2CBE40();
  if (!v10)
  {

    goto LABEL_9;
  }

  if (v8 == v11 && v10 == v12)
  {

    goto LABEL_7;
  }

  v13 = sub_2CEEA0();

  if ((v13 & 1) == 0)
  {
LABEL_9:
    v18 = v3[2];
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    *(v19 + 32) = v4;

    sub_2850FC(a1, sub_CED00, v19);
  }

LABEL_7:
  v14 = v3[28];
  sub_35E0(v3 + 24, v3[27]);
  sub_2CBE40();
  sub_2CB960();

  swift_beginAccess();
  v15 = v3[13];
  sub_F9A0((v3 + 9), v3[12]);
  result = sub_2CC4D0();
  if (!__OFADD__(*v17, 1))
  {
    ++*v17;
    result(v20, 0);
    swift_endAccess();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_C9190(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v45 = a3;
  v46 = a2;
  v5 = sub_20410(&unk_353020, &unk_2D0970);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v42 - v7;
  v9 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = sub_2CE000();
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = *(v43 + 64);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20410(&unk_3519A0, &qword_2D0980);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v42 - v22);
  sub_F3F4(a1, &v42 - v22, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v25 = v44;
    v26 = sub_3ED0(v44, static Logger.default);
    swift_beginAccess();
    v27 = v43;
    (*(v43 + 16))(v19, v26, v25);
    swift_errorRetain();
    v28 = sub_2CDFE0();
    v29 = sub_2CE680();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47[0] = v31;
      *v30 = 136446210;
      swift_getErrorValue();
      v32 = sub_2CEEF0();
      v34 = sub_3F08(v32, v33, v47);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_0, v28, v29, "TCCAcceptanceFlowStrategy#makeRejectedResponse error generating dialog: %{public}s", v30, 0xCu);
      sub_306C(v31);

      (*(v27 + 8))(v19, v44);
    }

    else
    {

      (*(v27 + 8))(v19, v25);
    }

    v41 = v46;
    v47[0] = v24;
    v48 = 1;
    swift_errorRetain();
    v41(v47);

    return sub_30B8(v47, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v23, v15);
    v35 = sub_35E0((v42 + 112), *(v42 + 136));
    sub_F3F4(v15, v13, &qword_34C6E8, &unk_2D0FF0);
    v36 = *&v13[*(v9 + 48)];
    v37 = sub_2CA000();
    (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
    v38 = *v35;
    sub_1C077C(v13, v36, v8, _swiftEmptyArrayStorage, v46, v45);

    sub_30B8(v8, &unk_353020, &unk_2D0970);
    sub_30B8(v15, &qword_34C6E8, &unk_2D0FF0);
    v39 = sub_2CA130();
    return (*(*(v39 - 8) + 8))(v13, v39);
  }
}

uint64_t sub_C9694(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v22 = a1;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "TCCAcceptanceFlowStrategy#makeHandoffResponseForAuthenticationResponse", v18, 2u);
    a1 = v22;
  }

  (*(v11 + 8))(v14, v10);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a2;
  v19[5] = a1;
  v19[6] = v5;

  v20 = a2;

  sub_CC448(a1, sub_CECF0, v19);
}

uint64_t sub_C98F0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v127 = a5;
  v132 = a4;
  v138 = a3;
  v139 = a2;
  v133 = *a6;
  v136 = sub_20410(&qword_34F2B8, &unk_2D3050);
  v8 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v137 = (&v115 - v9);
  v125 = sub_2C9EF0();
  v124 = *(v125 - 8);
  v10 = *(v124 + 64);
  __chkstk_darwin(v125);
  v128 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_2C8EC0();
  v121 = *(v122 - 8);
  v12 = *(v121 + 64);
  __chkstk_darwin(v122);
  v120 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&unk_353020, &unk_2D0970);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v115 - v16;
  v130 = sub_2CA910();
  v129 = *(v130 - 8);
  v18 = *(v129 + 64);
  __chkstk_darwin(v130);
  v131 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_2CE000();
  v134 = *(v135 - 8);
  v20 = *(v134 + 64);
  v21 = __chkstk_darwin(v135);
  v23 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v123 = &v115 - v25;
  v26 = __chkstk_darwin(v24);
  v119 = &v115 - v27;
  __chkstk_darwin(v26);
  v29 = &v115 - v28;
  v30 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v115 - v32;
  v34 = sub_2CA130();
  v35 = *(*(v34 - 1) + 64);
  __chkstk_darwin(v34);
  v37 = &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v40 = v39;
  sub_F3F4(v38, v33, &qword_34CB80, &unk_2D0B30);
  if ((*(v40 + 48))(v33, 1, v34) == 1)
  {
    sub_30B8(v33, &qword_34CB80, &unk_2D0B30);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v41 = v135;
    v42 = sub_3ED0(v135, static Logger.default);
    swift_beginAccess();
    v43 = v134;
    (*(v134 + 16))(v29, v42, v41);
    v44 = sub_2CDFE0();
    v45 = sub_2CE680();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v44, v45, "TCCAcceptanceFlowStrategy#makeHandoffResponseForAuthenticationResponse unable to generate templating result", v46, 2u);
    }

    (*(v43 + 8))(v29, v41);
    v47 = sub_2CB850();
    sub_CED0C(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v48 = swift_allocError();
    (*(*(v47 - 8) + 104))(v49, enum case for PlaybackCode.ceGE24(_:), v47);
    v50 = v137;
    *v137 = v48;
    swift_storeEnumTagMultiPayload();
    v139(v50);
    return sub_30B8(v50, &qword_34F2B8, &unk_2D3050);
  }

  v118 = v40;
  v52 = *(v40 + 32);
  v126 = v37;
  v52(v37, v33, v34);
  v141[0] = v132;
  v53 = v133[10];
  v54 = v132;
  sub_20410(&unk_34FBF0, &qword_2D1EF0);
  if (swift_dynamicCast())
  {
    sub_F338(&v145, v144);
    sub_35E0(v144, v144[3]);
    v55 = sub_2CC180();
    if (v56)
    {
      v116 = v55;
      v117 = v56;
      v132 = v34;
      sub_2CB5B0();
      v57 = sub_2CA000();
      (*(*(v57 - 8) + 56))(v17, 1, 1, v57);
      memset(v146, 0, sizeof(v146));
      v145 = 0u;
      v58 = v131;
      v59 = v126;
      sub_2C9DC0();
      sub_30B8(&v145, &qword_34CC80, &qword_2D1520);
      sub_30B8(v17, &unk_353020, &unk_2D0970);
      *&v145 = sub_2CCF90();
      *(&v145 + 1) = v60;
      v146[0] = v54;
      *&v146[1] = v142;
      v147 = v143;
      v148 = 0;
      v61 = v54;
      v62 = sub_234C04();

      if (v62)
      {
        v63 = *(a6 + 56);
        sub_35E0((a6 + 24), *(a6 + 48));
        v64 = v133[11];
        type metadata accessor for TCCAcceptanceFlowStrategy();
        v65 = v58;
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v67 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v68 = v120;
        sub_2CB570();
        sub_2CC620();

        (*(v121 + 8))(v68, v122);
        v69 = v130;
        v141[3] = v130;
        v141[4] = &protocol witness table for AceOutput;
        v70 = sub_F390(v141);
        (*(v129 + 16))(v70, v65, v69);
        v133 = v62;
        sub_2C9EE0();
        v71 = v135;
        v72 = v134;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v73 = sub_3ED0(v71, static Logger.default);
        swift_beginAccess();
        v74 = v123;
        (*(v72 + 16))(v123, v73, v71);
        v75 = v117;

        v76 = sub_2CDFE0();
        v77 = sub_2CE690();

        v78 = os_log_type_enabled(v76, v77);
        v79 = v118;
        if (v78)
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v140 = v81;
          *v80 = 136315138;
          *(v80 + 4) = sub_3F08(v116, v75, &v140);
          _os_log_impl(&dword_0, v76, v77, "TCCAcceptanceFlowStrategy#makeHandoffResponseForAuthenticationResponse Sending handoff notification to assistant id: %s", v80, 0xCu);
          sub_306C(v81);
        }

        (*(v72 + 8))(v74, v71);
        v82 = v132;
        v83 = v126;
        v111 = v128;
        sub_2C9ED0();
        v112 = v124;
        v113 = v137;
        v114 = v125;
        (*(v124 + 16))(v137, v111, v125);
        swift_storeEnumTagMultiPayload();
        v139(v113);

        sub_30B8(v113, &qword_34F2B8, &unk_2D3050);
        (*(v112 + 8))(v111, v114);
        (*(v129 + 8))(v131, v130);
        (*(v79 + 8))(v83, v82);
      }

      else
      {

        v95 = v132;
        v96 = v135;
        v97 = v134;
        v98 = v130;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v99 = sub_3ED0(v96, static Logger.default);
        swift_beginAccess();
        v100 = v119;
        (*(v97 + 16))(v119, v99, v96);
        v101 = sub_2CDFE0();
        v102 = sub_2CE680();
        v103 = os_log_type_enabled(v101, v102);
        v104 = v118;
        v105 = v129;
        if (v103)
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&dword_0, v101, v102, "TCCAcceptanceFlowStrategy#makeHandoffResponseForAuthenticationResponse Unable to create RSKE command", v106, 2u);
          v95 = v132;
        }

        (*(v97 + 8))(v100, v96);
        v107 = sub_2CB850();
        sub_CED0C(&qword_34CCA8, &type metadata accessor for PlaybackCode);
        v108 = swift_allocError();
        (*(*(v107 - 8) + 104))(v109, enum case for PlaybackCode.ceGE26(_:), v107);
        v110 = v137;
        *v137 = v108;
        swift_storeEnumTagMultiPayload();
        v139(v110);
        sub_30B8(v110, &qword_34F2B8, &unk_2D3050);
        (*(v105 + 8))(v131, v98);
        (*(v104 + 8))(v59, v95);
      }

      return sub_306C(v144);
    }

    sub_306C(v144);
  }

  else
  {
    memset(v146, 0, sizeof(v146));
    v145 = 0u;
    sub_30B8(&v145, &qword_3530A0, &qword_2D1EF8);
  }

  v84 = v118;
  v85 = v135;
  v86 = v134;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v87 = sub_3ED0(v85, static Logger.default);
  swift_beginAccess();
  (*(v86 + 16))(v23, v87, v85);
  v88 = sub_2CDFE0();
  v89 = sub_2CE690();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_0, v88, v89, "TCCAcceptanceFlowStrategy#makeHandoffResponseForAuthenticationResponse Could not get companion assistant id for handoff notification", v90, 2u);
  }

  (*(v86 + 8))(v23, v85);
  v91 = sub_2CB850();
  sub_CED0C(&qword_34CCA8, &type metadata accessor for PlaybackCode);
  v92 = swift_allocError();
  (*(*(v91 - 8) + 104))(v93, enum case for PlaybackCode.ceGE25(_:), v91);
  v94 = v137;
  *v137 = v92;
  swift_storeEnumTagMultiPayload();
  v139(v94);
  sub_30B8(v94, &qword_34F2B8, &unk_2D3050);
  return (*(v84 + 8))(v126, v34);
}

void sub_CAAA4(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v48 = a1;
  v6 = *v4;
  v7 = sub_2C8EC0();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  __chkstk_darwin(v7);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v47 - v16;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v49 = v11[2];
  v50 = v18;
  v49(v17, v18, v10);
  v19 = sub_2CDFE0();
  v20 = sub_2CE690();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v47 = v10;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "TCCAcceptanceFlowStrategy#makePromptForTCCAcceptance", v21, 2u);
    v10 = v47;
  }

  v22 = v11[1];
  v22(v17, v10);
  v64 = a2;
  v23 = *(v6 + 80);
  v24 = a2;
  sub_20410(&unk_34FBF0, &qword_2D1EF0);
  if (swift_dynamicCast())
  {
    sub_F338(v66, v62);
    sub_35E0(v62, v63);
    if (sub_2CC140())
    {
      v49(v15, v50, v10);
      v25 = sub_2CDFE0();
      v26 = sub_2CE690();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_0, v25, v26, "TCCAcceptanceFlowStrategy#makePromptForTCCAcceptance Adding TCC acceptance required for SiriForAirPlay request", v27, 2u);
      }

      v22(v15, v10);
      sub_35E0(v62, v63);
      sub_2CC130();
    }

    sub_306C(v62);
  }

  else
  {
    memset(v66, 0, 40);
    sub_30B8(v66, &qword_3530A0, &qword_2D1EF8);
  }

  v28 = v56;
  v29 = v56[7];
  sub_35E0(v56 + 3, v56[6]);
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = ObjCClassFromMetadata;
  v31 = objc_opt_self();
  v32 = [v31 bundleForClass:ObjCClassFromMetadata];
  v33 = v51;
  sub_2CB570();
  v47 = sub_2CC620();
  v50 = v34;

  v35 = v53;
  v36 = *(v52 + 8);
  v36(v33, v53);
  v37 = v28[7];
  sub_35E0(v28 + 3, v28[6]);
  v38 = [v31 bundleForClass:v49];
  sub_2CB570();
  v39 = sub_2CC620();
  v41 = v40;

  v36(v33, v35);
  v66[0] = 0;
  *&v66[1] = v59;
  *&v66[17] = v60;
  *&v66[33] = *v61;
  *&v66[48] = *&v61[15];
  v67 = 2;
  v42 = sub_235B38();
  if (v42)
  {
    v43 = v42;
    v44 = v50;
    LOBYTE(v64) = 1;
    v65 = 2;
    v45 = sub_235B38();
    if (v45)
    {
      v46 = v45;
      sub_CE604(v48, v47, v44, v39, v41, v54, v55);

      return;
    }
  }

  else
  {
  }

  sub_CE5B0();
  v57[0] = swift_allocError();
  v58 = 1;
  v54(v57);
  sub_30B8(v57, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_CB148(char *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t), uint64_t a6, void (*a7)(char *, uint64_t), void *a8, void *a9, uint64_t a10)
{
  v112 = a8;
  v116 = a7;
  v115 = a6;
  v114 = a5;
  v113 = a4;
  v126 = a2;
  v127 = a3;
  v11 = sub_2CA000();
  v120 = *(v11 - 8);
  v121 = v11;
  v12 = *(v120 + 64);
  __chkstk_darwin(v11);
  v119 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_2CB260();
  v110 = *(v111 - 8);
  v13 = *(v110 + 64);
  __chkstk_darwin(v111);
  v109 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2CD300();
  v128 = *(v130 - 8);
  v15 = *(v128 + 64);
  v16 = __chkstk_darwin(v130);
  v123 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v105 - v19;
  v117 = v21;
  __chkstk_darwin(v18);
  v23 = &v105 - v22;
  v124 = sub_2CE000();
  v129 = *(v124 - 8);
  v24 = *(v129 + 64);
  v25 = __chkstk_darwin(v124);
  v122 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v125 = &v105 - v28;
  __chkstk_darwin(v27);
  v30 = &v105 - v29;
  v31 = sub_20410(&qword_34C820, &unk_2D0A30);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v105 - v33;
  v35 = type metadata accessor for TCCAcceptanceFlowStrategy.ConfirmationDialogResponse();
  v36 = *(v35 + 36);
  v118 = a1;
  sub_F3F4(&a1[v36], v34, &qword_34C820, &unk_2D0A30);
  v37 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if ((*(*(v37 - 8) + 48))(v34, 1, v37) == 1)
  {
    sub_30B8(v34, &qword_34C820, &unk_2D0A30);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v38 = v124;
    v39 = sub_3ED0(v124, static Logger.default);
    swift_beginAccess();
    v40 = v129;
    (*(v129 + 16))(v30, v39, v38);
    v41 = sub_2CDFE0();
    v42 = sub_2CE680();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "TCCAcceptanceFlowStrategy#createConfirmationViewOutput error generating dialog", v43, 2u);
    }

    (*(v40 + 8))(v30, v38);
    v44 = *(v35 + 48);
    if (*&v118[v44])
    {
      v45 = *&v118[v44];
    }

    else
    {
      v103 = sub_2CB850();
      sub_CED0C(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v45 = swift_allocError();
      (*(*(v103 - 8) + 104))(v104, enum case for PlaybackCode.ceGE92(_:), v103);
    }

    v131[0] = v45;
    v132 = 1;
    swift_errorRetain();
    v126(v131);
    return sub_30B8(v131, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v108 = v12;
    v107 = *&v34[*(v37 + 48)];
    v46 = sub_2CA130();
    (*(*(v46 - 8) + 8))(v34, v46);

    v47 = a9;
    v48 = v112;
    sub_2CD2F0();
    v49 = v23;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v50 = v124;
    v51 = sub_3ED0(v124, static Logger.default);
    swift_beginAccess();
    v52 = v129;
    v53 = *(v129 + 16);
    v113 = v51;
    v112 = (v129 + 16);
    v106 = v53;
    v53(v125, v51, v50);
    v54 = v128;
    v55 = v128 + 16;
    v56 = *(v128 + 16);
    v118 = v49;
    v57 = v130;
    v56(v20, v49, v130);
    v58 = sub_2CDFE0();
    v59 = sub_2CE690();
    v60 = os_log_type_enabled(v58, v59);
    v115 = v55;
    v114 = v56;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v133 = v62;
      *v61 = 136315138;
      v56(v123, v20, v57);
      v63 = sub_2CE2A0();
      v64 = v57;
      v65 = v63;
      v67 = v66;
      v116 = *(v128 + 8);
      v116(v20, v64);
      v68 = sub_3F08(v65, v67, &v133);

      *(v61 + 4) = v68;
      _os_log_impl(&dword_0, v58, v59, "TCCAcceptanceFlowStrategy#createConfirmationViewOutput Created RF 2.0 Snippet: %s", v61, 0xCu);
      sub_306C(v62);

      v69 = v129;
    }

    else
    {

      v116 = *(v54 + 8);
      v116(v20, v57);
      v69 = v52;
    }

    v70 = *(v69 + 8);
    v70(v125, v50);
    v71 = v50;
    v72 = a10;
    v73 = sub_2CB460();
    v74 = v122;
    if (!v73)
    {
      sub_2CB180();
      v73 = sub_2CB170();
    }

    v75 = v73;
    v106(v74, v113, v71);

    v76 = sub_2CDFE0();
    v77 = sub_2CE660();

    v78 = os_log_type_enabled(v76, v77);
    v125 = v75;
    if (v78)
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v133 = v80;
      *v79 = 136315138;
      sub_2CB130();
      v81 = v109;
      sub_2CD3C0();

      v82 = sub_2CB200();
      v84 = v83;
      (*(v110 + 8))(v81, v111);
      v85 = sub_3F08(v82, v84, &v133);

      *(v79 + 4) = v85;
      _os_log_impl(&dword_0, v76, v77, "TCCAcceptanceFlowStrategy#createConfirmationViewOutput with responseMode = %s", v79, 0xCu);
      sub_306C(v80);
      v72 = a10;

      v86 = v122;
    }

    else
    {

      v86 = v74;
    }

    v70(v86, v71);
    v87 = v130;
    v88 = v108;
    v89 = v119;
    v90 = v120;
    v91 = v121;
    (*(v120 + 16))(v119, v72, v121);
    v92 = v123;
    v114(v123, v118, v87);
    v93 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v94 = (v88 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
    v96 = v128;
    v97 = (*(v128 + 80) + v95 + 8) & ~*(v128 + 80);
    v98 = swift_allocObject();
    (*(v90 + 32))(v98 + v93, v89, v91);
    *(v98 + v94) = v125;
    v99 = v107;
    *(v98 + v95) = v107;
    v100 = v130;
    (*(v96 + 32))(v98 + v97, v92, v130);

    v101 = v99;
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    return (v116)(v118, v100);
  }
}

uint64_t sub_CBD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(sub_2C9B80() - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v7 = sub_2CA630();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_CBE5C, 0, 0);
}

uint64_t sub_CBE5C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v19 = *(v0 + 64);
  sub_2C9B30();
  v5 = swift_task_alloc();
  *(v5 + 16) = v19;
  *(v5 + 32) = v4;
  sub_2CA560();

  v6 = sub_2CA080();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 128) = sub_2CA070();
  v9 = sub_2CD230();
  *(v0 + 40) = v9;
  *(v0 + 48) = sub_CED0C(&qword_34CC78, &type metadata accessor for SiriAudioSnippets);
  v10 = sub_F390((v0 + 16));
  v11 = sub_2CD300();
  (*(*(v11 - 8) + 16))(v10, v2, v11);
  (*(*(v9 - 8) + 104))(v10, enum case for SiriAudioSnippets.confirmation(_:), v9);
  sub_20410(&unk_351900, &unk_2D0960);
  v12 = swift_allocObject();
  *(v0 + 136) = v12;
  *(v12 + 16) = xmmword_2D0770;
  *(v12 + 32) = v4;
  v13 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + 1);
  v20 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v14 = v4;
  v15 = swift_task_alloc();
  *(v0 + 144) = v15;
  *v15 = v0;
  v15[1] = sub_CC0B0;
  v16 = *(v0 + 120);
  v17 = *(v0 + 56);

  return v20(v17, v0 + 16, v12, v16);
}

uint64_t sub_CC0B0()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v6 = *v0;

  sub_306C((v1 + 16));

  return _swift_task_switch(sub_CC1F4, 0, 0);
}

uint64_t sub_CC1F4()
{
  v1 = v0[12];
  (*(v0[14] + 8))(v0[15], v0[13]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_CC27C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2CB260();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_20410(&unk_353020, &unk_2D0970);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_2CA000();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a2, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  v14 = [a4 catId];
  sub_2CE270();

  sub_2CA590();
  sub_2CA5F0();
  return sub_2CA5A0();
}

uint64_t sub_CC448(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_286C18(a1, sub_CE5A8, v8);
}

uint64_t sub_CC4DC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v45 = a2;
  v46 = a3;
  v4 = sub_2CE000();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v42 - v10;
  v12 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  v19 = sub_20410(&unk_3519A0, &qword_2D0980);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v42 - v21);
  sub_F3F4(a1, &v42 - v21, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v24 = v44;
    v25 = sub_3ED0(v44, static Logger.default);
    swift_beginAccess();
    v26 = v43;
    (*(v43 + 16))(v7, v25, v24);
    swift_errorRetain();
    v27 = sub_2CDFE0();
    v28 = sub_2CE680();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47 = v23;
      v48 = v30;
      *v29 = 136446210;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v31 = sub_2CE2A0();
      v33 = sub_3F08(v31, v32, &v48);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_0, v27, v28, "TCCAcceptanceFlowStrategy#continueOnCompanionDialog error generating dialog: %{public}s", v29, 0xCu);
      sub_306C(v30);

      (*(v26 + 8))(v7, v44);
    }

    else
    {

      (*(v26 + 8))(v7, v24);
    }

    v39 = v45;
    v40 = sub_2CA130();
    (*(*(v40 - 8) + 56))(v11, 1, 1, v40);
    v39(v11);

    v37 = &qword_34CB80;
    v38 = &unk_2D0B30;
    v36 = v11;
  }

  else
  {
    sub_24BE0(v22, v18);
    sub_F3F4(v18, v16, &qword_34C6E8, &unk_2D0FF0);

    v34 = sub_2CA130();
    v35 = *(v34 - 8);
    (*(v35 + 32))(v11, v16, v34);
    (*(v35 + 56))(v11, 0, 1, v34);
    v45(v11);
    sub_30B8(v11, &qword_34CB80, &unk_2D0B30);
    v36 = v18;
    v37 = &qword_34C6E8;
    v38 = &unk_2D0FF0;
  }

  return sub_30B8(v36, v37, v38);
}

uint64_t sub_CC9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v3 + 80);
  v9 = *(*v3 + 88);
  type metadata accessor for TCCAcceptanceFlowStrategy.ConfirmationDialogResponse();
  v10 = swift_allocBox();
  sub_C73C0(v11);
  v12 = *(v4 + 64);
  sub_20410(&qword_34F2A8, &qword_2D4990);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2D0E40;
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = a1;
  v14[4] = v10;
  *(v13 + 32) = sub_CE438;
  *(v13 + 40) = v14;
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = v10;
  *(v13 + 48) = sub_CE48C;
  *(v13 + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = v8;
  v16[3] = v9;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = v10;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_2CCC70();
}

uint64_t sub_CCBA8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *a1;
  v9 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = a2[2];
  v12 = swift_allocObject();
  *(v12 + 16) = *(v7 + 80);
  *(v12 + 24) = *(v7 + 88);
  *(v12 + 32) = sub_CEEA8;
  *(v12 + 40) = v10;
  *(v12 + 48) = a4;

  sub_2857C8(a3, sub_CE578, v12);
}

uint64_t sub_CCCB0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v85 = a5;
  v86 = a1;
  v89 = a3;
  v90 = a2;
  v6 = sub_2CE000();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  v8 = __chkstk_darwin(v6);
  v84 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v76 - v10;
  v81 = sub_2C9DB0();
  v80 = *(v81 - 8);
  v11 = *(v80 + 64);
  __chkstk_darwin(v81);
  v79 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2CA210();
  v77 = *(v78 - 8);
  v13 = *(v77 + 64);
  __chkstk_darwin(v78);
  v76 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20410(&qword_34C820, &unk_2D0A30);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v76 - v17;
  v82 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v19 = *(v82 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v82);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v76 - v24;
  v26 = sub_20410(&unk_3519A0, &qword_2D0980);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = (&v76 - v28);
  v30 = type metadata accessor for TCCAcceptanceFlowStrategy.ConfirmationDialogResponse();
  v85 = a4;
  v31 = swift_projectBox();
  sub_F3F4(v86, v29, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = v31;
    v32 = *v29;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v33 = v88;
    v34 = sub_3ED0(v88, static Logger.default);
    swift_beginAccess();
    v35 = v87;
    v36 = v84;
    (*(v87 + 16))(v84, v34, v33);
    swift_errorRetain();
    v37 = sub_2CDFE0();
    v38 = sub_2CE680();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v30;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v92 = v41;
      *v40 = 136446210;
      v91 = v32;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v42 = sub_2CE2A0();
      v44 = sub_3F08(v42, v43, &v92);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_0, v37, v38, "TCCAcceptanceFlowStrategy#confirmDialogContent error generating dialog: %{public}s", v40, 0xCu);
      sub_306C(v41);

      v30 = v39;

      (*(v35 + 8))(v84, v33);
    }

    else
    {

      (*(v35 + 8))(v36, v33);
    }

    v56 = v86;
    swift_beginAccess();
    v57 = *(v30 + 48);
    v58 = *(v56 + v57);
    *(v56 + v57) = v32;
  }

  else
  {
    sub_24BE0(v29, v25);
    sub_F3F4(v25, v18, &qword_34C6E8, &unk_2D0FF0);
    v45 = v82;
    (*(v19 + 56))(v18, 0, 1, v82);
    swift_beginAccess();
    v46 = v30;
    sub_CE4C8(v18, v31 + *(v30 + 36));
    sub_F3F4(v25, v23, &qword_34C6E8, &unk_2D0FF0);

    v47 = sub_2CA120();
    v48 = sub_2CA130();
    (*(*(v48 - 8) + 8))(v23, v48);
    if (*(v47 + 16))
    {
      v49 = v77;
      v50 = v76;
      v51 = v78;
      (*(v77 + 16))(v76, v47 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v78);

      v52 = v79;
      sub_2CA200();
      (*(v49 + 8))(v50, v51);
      v53 = sub_2C9DA0();
      v55 = v54;
      (*(v80 + 8))(v52, v81);
    }

    else
    {

      v53 = 0;
      v55 = 0xE000000000000000;
    }

    v61 = v87;
    v60 = v88;
    v62 = v83;
    swift_beginAccess();
    v63 = (v31 + *(v46 + 44));
    v64 = v63[1];
    *v63 = v53;
    v63[1] = v55;

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v65 = sub_3ED0(v60, static Logger.default);
    swift_beginAccess();
    (*(v61 + 16))(v62, v65, v60);

    v66 = sub_2CDFE0();
    v67 = sub_2CE690();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      swift_beginAccess();
      v70 = (v31 + *(v46 + 44));
      v71 = v70[1];
      if (v71)
      {
        v88 = *v70;
        sub_10C40();
        swift_allocError();
        *v72 = v88;
        v72[1] = v71;

        v73 = _swift_stdlib_bridgeErrorToNSError();
        v74 = v73;
      }

      else
      {
        v73 = 0;
        v74 = 0;
      }

      *(v68 + 4) = v73;
      *v69 = v74;
      _os_log_impl(&dword_0, v66, v67, "TCCAcceptanceFlowStrategy#confirmDialogContent text for confirmation subtitle: %@", v68, 0xCu);
      sub_30B8(v69, &unk_34FC00, &unk_2D0150);
    }

    (*(v61 + 8))(v62, v60);
    v59 = sub_30B8(v25, &qword_34C6E8, &unk_2D0FF0);
  }

  return v90(v59);
}

uint64_t sub_CD5F0(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *a1;
  v9 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = a2[2];
  v12 = swift_allocObject();
  v12[2] = *(v7 + 80);
  v12[3] = *(v7 + 88);
  v12[4] = sub_CE4A8;
  v12[5] = v10;
  v12[6] = a4;

  sub_28653C(a3, sub_CE4B0, v12);
}

uint64_t sub_CD6F8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = a5;
  v87 = a6;
  v91 = a3;
  v92 = a2;
  v88 = a1;
  v7 = sub_2CE000();
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = *(v89 + 64);
  v9 = __chkstk_darwin(v7);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v84 = &v76 - v11;
  v82 = sub_2C9DB0();
  v81 = *(v82 - 8);
  v12 = *(v81 + 64);
  __chkstk_darwin(v82);
  v80 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2CA210();
  v78 = *(v79 - 8);
  v14 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20410(&qword_34C820, &unk_2D0A30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v76 - v18;
  v83 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v20 = *(v83 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v83);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v76 - v25;
  v27 = sub_20410(&unk_3519A0, &qword_2D0980);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v76 - v29);
  v31 = type metadata accessor for TCCAcceptanceFlowStrategy.ConfirmationDialogResponse();
  v87 = a4;
  v32 = swift_projectBox();
  sub_F3F4(v88, v30, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v88 = v32;
    v33 = *v30;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v34 = v90;
    v35 = sub_3ED0(v90, static Logger.default);
    swift_beginAccess();
    v36 = v89;
    v37 = v85;
    (*(v89 + 16))(v85, v35, v34);
    swift_errorRetain();
    v38 = sub_2CDFE0();
    v39 = sub_2CE680();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v31;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v94 = v42;
      *v41 = 136446210;
      v93 = v33;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v43 = sub_2CE2A0();
      v45 = sub_3F08(v43, v44, &v94);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_0, v38, v39, "TCCAcceptanceFlowStrategy#confirmDialogContent error generating dialog: %{public}s", v41, 0xCu);
      sub_306C(v42);

      v31 = v40;

      (*(v36 + 8))(v85, v34);
    }

    else
    {

      (*(v36 + 8))(v37, v34);
    }

    v56 = v88;
    swift_beginAccess();
    v57 = *(v31 + 48);
    v58 = *(v56 + v57);
    *(v56 + v57) = v33;
  }

  else
  {
    sub_24BE0(v30, v26);
    sub_F3F4(v26, v19, &qword_34C6E8, &unk_2D0FF0);
    v46 = v83;
    (*(v20 + 56))(v19, 0, 1, v83);
    swift_beginAccess();
    sub_CE4C8(v19, v32);
    sub_F3F4(v26, v24, &qword_34C6E8, &unk_2D0FF0);

    v47 = sub_2CA120();
    v48 = sub_2CA130();
    (*(*(v48 - 8) + 8))(v24, v48);
    if (*(v47 + 16))
    {
      v49 = v78;
      v50 = v77;
      v51 = v79;
      (*(v78 + 16))(v77, v47 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v79);

      v52 = v80;
      sub_2CA200();
      (*(v49 + 8))(v50, v51);
      v53 = sub_2C9DA0();
      v55 = v54;
      (*(v81 + 8))(v52, v82);
    }

    else
    {

      v53 = 0;
      v55 = 0xE000000000000000;
    }

    v61 = v89;
    v60 = v90;
    v62 = v84;
    swift_beginAccess();
    v63 = (v32 + *(v31 + 40));
    v64 = v63[1];
    *v63 = v53;
    v63[1] = v55;

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v65 = sub_3ED0(v60, static Logger.default);
    swift_beginAccess();
    (*(v61 + 16))(v62, v65, v60);

    v66 = sub_2CDFE0();
    v67 = sub_2CE690();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      swift_beginAccess();
      v70 = (v32 + *(v31 + 40));
      v71 = v70[1];
      if (v71)
      {
        v90 = *v70;
        sub_10C40();
        swift_allocError();
        *v72 = v90;
        v72[1] = v71;

        v73 = _swift_stdlib_bridgeErrorToNSError();
        v74 = v73;
      }

      else
      {
        v73 = 0;
        v74 = 0;
      }

      *(v68 + 4) = v73;
      *v69 = v74;
      _os_log_impl(&dword_0, v66, v67, "TCCAcceptanceFlowStrategy#confirmDialogContent text for confirmation title: %@", v68, 0xCu);
      sub_30B8(v69, &unk_34FC00, &unk_2D0150);
    }

    (*(v61 + 8))(v62, v60);
    v59 = sub_30B8(v26, &qword_34C6E8, &unk_2D0FF0);
  }

  return v92(v59);
}

uint64_t sub_CE034(void (*a1)(char *))
{
  v2 = type metadata accessor for TCCAcceptanceFlowStrategy.ConfirmationDialogResponse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = swift_projectBox();
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  a1(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_CE150()
{
  v1 = *(v0 + 16);

  sub_306C((v0 + 24));

  sub_306C((v0 + 72));
  sub_306C((v0 + 112));
  sub_306C((v0 + 152));
  sub_306C((v0 + 192));
  return v0;
}

uint64_t sub_CE1A0()
{
  sub_CE150();

  return swift_deallocClassInstance();
}

uint64_t sub_CE2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(a5 + 80);
  v13 = *(a5 + 88);
  v14 = type metadata accessor for TCCAcceptanceFlowStrategy();

  return a7(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_CE358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 + 80);
  v14 = *(a6 + 88);
  v15 = type metadata accessor for TCCAcceptanceFlowStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_CE444()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_CE498()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  return sub_CE034(*(v0 + 32));
}

uint64_t sub_CE4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34C820, &unk_2D0A30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_CE538()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

unint64_t sub_CE5B0()
{
  result = qword_34F2B0;
  if (!qword_34F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34F2B0);
  }

  return result;
}

uint64_t sub_CE604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v51 = a7;
  v47 = a5;
  v45 = a4;
  v46 = a3;
  v50 = a1;
  v10 = *v7;
  v48 = sub_2CA000();
  v11 = *(v48 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v48);
  v44 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[1] = v14;
  __chkstk_darwin(v13);
  v49 = v43 - v15;
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  (*(v17 + 16))(v20, v21, v16);
  v22 = sub_2CDFE0();
  v23 = sub_2CE690();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v43[0] = a2;
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "TCCAcceptanceFlowStrategy#createConfirmationViewOutput...", v24, 2u);
    a2 = v43[0];
  }

  (*(v17 + 8))(v20, v16);
  v56 = 0;
  v57 = 2;
  v25 = sub_235B38();
  if (v25)
  {
    v26 = v25;
    v54 = 1;
    v55 = 2;
    v27 = sub_235B38();
    if (v27)
    {
      v28 = v27;
      v29 = *(v10 + 80);
      v30 = *(v10 + 88);
      v31 = v49;
      sub_B422C(v49);
      v32 = v44;
      (*(v11 + 16))(v44, v31, v48);
      v33 = (*(v11 + 80) + 96) & ~*(v11 + 80);
      v34 = swift_allocObject();
      v35 = a6;
      v36 = v34;
      v34[2] = v29;
      v34[3] = v30;
      v34[4] = v35;
      v34[5] = v51;
      v34[6] = a2;
      v37 = v45;
      v34[7] = v46;
      v34[8] = v37;
      v34[9] = v47;
      v34[10] = v26;
      v34[11] = v28;
      v38 = v34 + v33;
      v39 = v48;
      (*(v11 + 32))(v38, v32, v48);

      v40 = v26;
      v41 = v28;
      sub_CC9DC(v50, sub_CEAEC, v36);

      return (*(v11 + 8))(v49, v39);
    }
  }

  sub_CE5B0();
  v52[0] = swift_allocError();
  v53 = 1;
  a6(v52);
  return sub_30B8(v52, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_CEAEC(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_2CA000() - 8);
  return sub_CB148(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), v1 + ((*(v5 + 80) + 96) & ~*(v5 + 80)));
}

uint64_t sub_CEB7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CA000() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_2CD300() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_CBD68(a1, v1 + v6, v11, v12, v1 + v10);
}

uint64_t sub_CED0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_CED5C()
{
  sub_CEE50(319, &qword_34F350, &qword_34C6E8, &unk_2D0FF0);
  if (v0 <= 0x3F)
  {
    sub_BF320();
    if (v1 <= 0x3F)
    {
      sub_CEE50(319, &qword_34F358, &qword_34C6E0, &unk_2D0730);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_CEE50(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2DB30(a3, a4);
    v5 = sub_2CEB90();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_CEEB0(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5, char *a6)
{
  v7 = v6;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a4 code];
  if (_INAddMediaIntentResponseCodeFailureAlreadyInLibrary == v19)
  {
    v44 = a5;
    v20 = INUpdateMediaAffinityIntent.firstMediaItemType()();
    v21 = a6;
    if (v20 == 2)
    {
      v22 = 0xE500000000000000;
      v23 = 0x6D75626C61;
    }

    else if (v20 == 6)
    {
      v22 = 0xE700000000000000;
      v23 = 0x74736163646F70;
    }

    else
    {
      v23 = 0;
      v22 = 0xE000000000000000;
    }

    v47 = a1;

    v31 = sub_1E9600();
    v46 = &type metadata for String;
    *&v45 = v31;
    *(&v45 + 1) = v32;
    sub_270DC4(&v45, 0x656C746974, 0xE500000000000000, &v48);
    sub_30B8(&v48, &qword_34CEA0, &qword_2D0FC0);
    v46 = &type metadata for String;
    *&v45 = v23;
    *(&v45 + 1) = v22;
    sub_270DC4(&v45, 0x707954616964656DLL, 0xE900000000000065, &v48);
    sub_30B8(&v48, &qword_34CEA0, &qword_2D0FC0);
    v33 = [a3 mediaDestination];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 mediaDestinationType];

      v36 = v35 == &dword_0 + 2;
    }

    else
    {
      v36 = 0;
    }

    v46 = &type metadata for Bool;
    LOBYTE(v45) = v36;
    sub_270DC4(&v45, 0xD000000000000015, 0x80000000002DB710, &v48);
    sub_30B8(&v48, &qword_34CEA0, &qword_2D0FC0);
    v37 = sub_1E960C();
    v46 = &type metadata for String;
    *&v45 = v37;
    *(&v45 + 1) = v38;
    sub_270DC4(&v45, 0x7473696C79616C70, 0xED0000656C746954, &v48);
    sub_30B8(&v48, &qword_34CEA0, &qword_2D0FC0);
    v39 = *(v7 + 120);
    v40 = v47;
    v49 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v50 = &off_338D38;
    *&v48 = a3;
    v41 = a3;
    sub_124608(v40, a2, &v48, v44, v21);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v24 = sub_3ED0(v14, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v18, v24, v14);
    v25 = sub_2CDFE0();
    v26 = sub_2CE690();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v44 = v7;
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "AddMediaDialogProvider#makeFailureHandlingIntentDialog", v27, 2u);
      v7 = v44;
    }

    (*(v15 + 8))(v18, v14);
    v28 = *(v7 + 120);
    v29 = sub_112C0(_swiftEmptyArrayStorage);
    v49 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v50 = &off_338D38;
    *&v48 = a3;
    v30 = a3;
    sub_3CAE0(v29, a2, &v48, a5, a6);
  }

  return sub_30B8(&v48, &qword_34C6C0, &qword_2D0710);
}

id sub_CF364(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7, char *a8, char *a9)
{
  v10 = v9;
  v36 = a4;
  v37 = a1;
  v38 = a2;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v39 = a9;
  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);

  v20 = sub_2CDFE0();
  v21 = sub_2CE690();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v34 = a8;
    v35 = a5;
    v23 = v22;
    v24 = swift_slowAlloc();
    v40[0] = v24;
    *v23 = 136315138;
    v25 = v38;
    *(v23 + 4) = sub_3F08(v38, a3, v40);
    _os_log_impl(&dword_0, v20, v21, "AddMediaDialogProvider#makeUnsupportedDialog, parameterName: %s", v23, 0xCu);
    sub_306C(v24);

    a8 = v34;
    a5 = v35;

    (*(v15 + 8))(v18, v14);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
    v25 = v38;
  }

  v26 = sub_112C0(_swiftEmptyArrayStorage);
  if (v25 == 0x657449616964656DLL && a3 == 0xEA0000000000736DLL || (v27 = v26, (sub_2CEEA0() & 1) != 0))
  {

    return sub_D02B4(v37, a5, v36, a8, v39);
  }

  else if (v25 == 0xD000000000000010 && 0x80000000002D9DE0 == a3 || (v29 = sub_2CEEA0(), v30 = v27, (v29 & 1) != 0))
  {

    return sub_D1384(v37, a5, v36, a8, v39);
  }

  else
  {
    v31 = *(v10 + 120);
    v32 = v30;
    v40[3] = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v40[4] = &off_338D38;
    v40[0] = a5;
    v33 = a5;
    sub_129438(v32, v37, v40, a8, v39);

    return sub_30B8(v40, &qword_34C6C0, &qword_2D0710);
  }
}

uint64_t sub_CF718(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 120);
  v11 = sub_112C0(_swiftEmptyArrayStorage);
  v14[3] = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v14[4] = &off_338D38;
  v14[0] = a2;
  v12 = a2;
  sub_126D20(v11, a1, v14, a4, a5);

  return sub_30B8(v14, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_CF7D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v14 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v15 = *(v6 + 120);
  v18[3] = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v18[4] = &off_338D38;
  v18[0] = a4;
  v16 = a4;
  sub_1280AC(v14, a1, v18, a5, a6);

  return sub_30B8(v18, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_CF92C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_2D1010;
  *(inited + 40) = 0x80000000002D9DE0;
  sub_1E9824();
  v8 = INMediaDestinationTypeGetName();
  if (v8)
  {
    v9 = v8;
    v10 = sub_2CE270();
    v12 = v11;

    v13 = (inited + 48);
    *(inited + 72) = &type metadata for String;
    if (v12)
    {
      *v13 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = (inited + 48);
    *(inited + 72) = &type metadata for String;
  }

  *v13 = 0;
  v12 = 0xE000000000000000;
LABEL_6:
  *(inited + 56) = v12;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000000002DB710;
  v14 = [a4 mediaDestination];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 mediaDestinationType];

    v17 = v16 == &dword_0 + 2;
  }

  else
  {
    v17 = 0;
  }

  *(inited + 96) = v17;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x80000000002DC470;
  v18 = [a4 mediaDestination];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 mediaDestinationType];

    v21 = v20 == &dword_0 + 1;
  }

  else
  {
    v21 = 0;
  }

  *(inited + 144) = v21;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0x6574656D61726170;
  *(inited + 216) = &type metadata for String;
  *(inited + 184) = 0xE900000000000072;
  *(inited + 192) = v29;
  *(inited + 200) = v27;

  v22 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v23 = *(v30 + 120);
  v34[3] = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v34[4] = &off_338D38;
  v34[0] = a4;
  v24 = a4;
  sub_128730(v22, a1, v34, a5, a6);

  return sub_30B8(v34, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_CFBCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v62 = a7;
  v61 = a6;
  v12 = sub_20410(&qword_34CC98, &unk_2D3120);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v57 - v17;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = sub_2CCFB0();
  *(inited + 48) = a1;
  v60 = a1;

  v20 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v68 = v20;
  if ((a2 != 0xD000000000000010 || 0x80000000002D9DE0 != a3) && (sub_2CEEA0() & 1) == 0)
  {

    return sub_12D2A0(v60, a2, a3, a4, a5, v61, v62);
  }

  v21 = [a4 itemToConfirm];
  sub_2CEC00();
  swift_unknownObjectRelease();
  v22 = sub_2CE0A0();
  v23 = swift_dynamicCast();
  v24 = *(v22 - 8);
  (*(v24 + 56))(v18, v23 ^ 1u, 1, v22);
  v25 = sub_1E9600();
  v27 = v26;
  v28 = sub_1E9A74();
  v58 = v18;
  if (v25 == v28 && v27 == v29)
  {

LABEL_8:
    v31 = 0;
    v32 = 0;
    goto LABEL_11;
  }

  v30 = sub_2CEEA0();

  if (v30)
  {
    goto LABEL_8;
  }

  v31 = sub_1E9A74();
  v32 = v34;
LABEL_11:
  v35 = INUpdateMediaAffinityIntent.firstMediaItemType()();
  if (v35 == 2)
  {
    v36 = 0xE500000000000000;
    v37 = 0x6D75626C61;
  }

  else if (v35 == 6)
  {
    v36 = 0xE700000000000000;
    v37 = 0x74736163646F70;
  }

  else
  {
    v37 = 0;
    v36 = 0xE000000000000000;
  }

  v64 = &type metadata for String;
  *&v63 = v37;
  *(&v63 + 1) = v36;
  sub_E2DC(&v63, v67);
  v38 = v68;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = v38;
  sub_237690(v67, 0x707954616964656DLL, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v40 = v66;
  v64 = &type metadata for String;
  *&v63 = v25;
  *(&v63 + 1) = v27;
  sub_E2DC(&v63, v67);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v40;
  sub_237690(v67, 0x656C746974, 0xE500000000000000, v41);
  v42 = v66;
  v68 = v66;
  if (v32)
  {
    v64 = &type metadata for String;
    *&v63 = v31;
    *(&v63 + 1) = v32;
    sub_E2DC(&v63, v67);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v42;
    sub_237690(v67, 0x747369747261, 0xE600000000000000, v43);
    v68 = v66;
  }

  else
  {
    sub_236110(0x747369747261, 0xE600000000000000, &v63);
    sub_30B8(&v63, &qword_34CEA0, &qword_2D0FC0);
  }

  v44 = v58;
  v45 = [a5 mediaItems];
  if (v45)
  {
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v46 = sub_2CE410();

    if (v46 >> 62)
    {
      v45 = sub_2CEDA0();
    }

    else
    {
      v45 = *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));
    }
  }

  v64 = &type metadata for Int;
  *&v63 = v45;
  sub_E2DC(&v63, v67);
  v47 = v68;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v47;
  sub_237690(v67, 0x657449616964656DLL, 0xEE00746E756F436DLL, v48);
  v68 = v66;
  sub_73000(v44, v16);
  if ((*(v24 + 48))(v16, 1, v22) == 1)
  {
    sub_30B8(v16, &qword_34CC98, &unk_2D3120);
    v49 = 0;
    v64 = &type metadata for String;
LABEL_27:
    v51 = 0xE000000000000000;
    goto LABEL_28;
  }

  v49 = sub_2CE060();
  v51 = v50;
  (*(v24 + 8))(v16, v22);
  v64 = &type metadata for String;
  if (!v51)
  {
    v49 = 0;
    goto LABEL_27;
  }

LABEL_28:
  *&v63 = v49;
  *(&v63 + 1) = v51;
  sub_E2DC(&v63, v67);
  v52 = v68;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v52;
  sub_237690(v67, 0x7473696C79616C70, 0xED0000656C746954, v53);
  v54 = v66;
  v55 = *(v59 + 120);
  v64 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v65 = &off_338D38;
  *&v63 = a5;
  v56 = a5;
  sub_128DB4(v54, v60, &v63, v61, v62);

  sub_30B8(&v63, &qword_34C6C0, &qword_2D0710);
  return sub_30B8(v44, &qword_34CC98, &unk_2D3120);
}

id sub_D02B4(uint64_t a1, uint64_t *a2, void *a3, char *a4, char *a5)
{
  v128 = a5;
  v127 = a4;
  v125 = a1;
  v7 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v123 = &v113 - v9;
  v10 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v121 = &v113 - v12;
  v13 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v120 = &v113 - v15;
  v16 = sub_2CCB30();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v118 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_2CCAC0();
  v117 = *(v119 - 8);
  v20 = *(v117 + 64);
  __chkstk_darwin(v119);
  v116 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = [a3 unsupportedReason];
  v130 = v122;
  v131 = 0;
  sub_20410(&qword_34F5F0, &unk_2D3130);
  v115 = sub_2CE2A0();
  v28 = v27;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v124 = a2;
  v29 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  (*(v23 + 16))(v26, v29, v22);

  v30 = sub_2CDFE0();
  v31 = sub_2CE690();

  v32 = os_log_type_enabled(v30, v31);
  v126 = v28;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v113 = v17;
    v114 = v16;
    v34 = a3;
    v35 = v28;
    v36 = v33;
    v37 = swift_slowAlloc();
    v130 = v37;
    *v36 = 136315138;
    v38 = v35;
    a3 = v34;
    v16 = v114;
    *(v36 + 4) = sub_3F08(v115, v38, &v130);
    _os_log_impl(&dword_0, v30, v31, "AddMediaDialogProvider#makeUnsupportedMediaItemsDialog, reasonCode: %s", v36, 0xCu);
    sub_306C(v37);

    v17 = v113;
  }

  (*(v23 + 8))(v26, v22);
  v40 = v116;
  v39 = v117;
  v41 = v119;
  (*(v117 + 104))(v116, enum case for AdditionalMetricsDescription.ModuleName.amdp(_:), v119);
  v42 = v118;
  (*(v17 + 104))(v118, enum case for AdditionalMetricsDescription.SourceFunction.unsupportedMediaItemsDlg(_:), v16);
  v130 = [a3 unsupportedReason];
  sub_2CEE70();
  [a3 resolutionResultCode];
  v115 = sub_2CCAE0();

  (*(v17 + 8))(v42, v16);
  (*(v39 + 8))(v40, v41);
  v43 = v129[25];
  v119 = sub_35E0(v129 + 21, v129[24]);
  v44 = enum case for ActivityType.failed(_:);
  v45 = sub_2C9C20();
  v46 = *(v45 - 8);
  v47 = v120;
  (*(v46 + 104))(v120, v44, v45);
  (*(v46 + 56))(v47, 0, 1, v45);
  v48 = sub_2CA130();
  v49 = v121;
  (*(*(v48 - 8) + 56))(v121, 1, 1, v48);
  v50 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
  v51 = sub_2C98F0();
  v52 = *(v51 - 8);
  v53 = v123;
  (*(v52 + 104))(v123, v50, v51);
  (*(v52 + 56))(v53, 0, 1, v51);

  v55 = v124;
  v54 = v125;
  sub_2CB4E0();

  sub_30B8(v53, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v49, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v47, &qword_34CB88, &unk_2D0D90);
  sub_112C0(_swiftEmptyArrayStorage);
  v56 = v122;
  if (v122 <= 4)
  {
    if (v122 <= 2)
    {
      if (v122 == (&dword_0 + 1))
      {

        v69 = v129[15];
        v70 = sub_112C0(_swiftEmptyArrayStorage);
        v132 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
        v133 = &off_338D38;
        v130 = v55;
        v71 = v55;
        sub_38FC0(v70, v54, &v130, v127, v128);
        goto LABEL_36;
      }

      if (v122 == (&dword_0 + 2))
      {

        v57 = v129[15];
        v58 = sub_112C0(_swiftEmptyArrayStorage);
        v132 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
        v133 = &off_338D38;
        v130 = v55;
        v59 = v55;
        sub_39630(v58, v54, &v130, v127, v128);
LABEL_36:

        return sub_30B8(&v130, &qword_34C6C0, &qword_2D0710);
      }

      goto LABEL_23;
    }

    if (v122 != (&dword_0 + 3))
    {

      v63 = v129[15];
      v64 = sub_112C0(_swiftEmptyArrayStorage);
      v132 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
      v133 = &off_338D38;
      v130 = v55;
      v65 = v55;
      sub_38950(v64, v54, &v130, v127, v128);
      goto LABEL_36;
    }

    INUpdateMediaAffinityIntent.firstMediaItemType()();
    v75 = INMediaItemTypeGetName();
    if (v75)
    {
      v76 = v75;
      v77 = sub_2CE270();
      v79 = v78;
    }

    else
    {
      v77 = 0;
      v79 = 0xE000000000000000;
    }

    if (sub_1E9B98())
    {
      result = INMediaItemTypeGetName();
      if (result)
      {
        goto LABEL_33;
      }

      __break(1u);
    }

    if ((sub_1E9BA8() & 1) == 0)
    {

      goto LABEL_35;
    }

    result = INMediaItemTypeGetName();
    if (!result)
    {
      __break(1u);
      return result;
    }

LABEL_33:
    v92 = result;

    v77 = sub_2CE270();
    v79 = v93;

LABEL_35:
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0090;
    *(inited + 32) = 0x707954616964656DLL;
    v95 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = v77;
    *(inited + 56) = v79;
    v96 = sub_112C0(inited);
    swift_setDeallocating();
    sub_30B8(v95, &qword_34CBA0, &unk_2D0FE0);
    v97 = v129[15];
    v132 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v133 = &off_338D38;
    v130 = v55;
    v98 = v55;
    sub_12669C(v96, v54, &v130, v127, v128);
    goto LABEL_36;
  }

  if (v122 <= 6)
  {
    if (v122 == (&dword_4 + 1))
    {

      v72 = v129[15];
      v73 = sub_112C0(_swiftEmptyArrayStorage);
      v132 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
      v133 = &off_338D38;
      v130 = v55;
      v74 = v55;
      sub_33504(v73, v54, &v130, v127, v128);
    }

    else
    {

      v60 = v129[15];
      v61 = sub_112C0(_swiftEmptyArrayStorage);
      v132 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
      v133 = &off_338D38;
      v130 = v55;
      v62 = v55;
      sub_126018(v61, v54, &v130, v127, v128);
    }

    goto LABEL_36;
  }

  if (v122 == (&dword_4 + 3))
  {

    v80 = v129[15];
    v81 = sub_112C0(_swiftEmptyArrayStorage);
    v132 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v133 = &off_338D38;
    v130 = v55;
    v82 = v55;
    sub_39CA0(v81, v54, &v130, v127, v128);
    goto LABEL_36;
  }

  if (v122 == &dword_8)
  {

    v66 = v129[15];
    v67 = sub_112C0(_swiftEmptyArrayStorage);
    v132 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v133 = &off_338D38;
    v130 = v55;
    v68 = v55;
    sub_3C470(v67, v54, &v130, v127, v128);
    goto LABEL_36;
  }

LABEL_23:

  if (_INAddMediaMediaItemUnsupportedReasonAlreadyInLibrary == v56)
  {
    sub_20410(&unk_353120, &unk_2D0B50);
    v83 = swift_initStackObject();
    *(v83 + 16) = xmmword_2D0E40;
    *(v83 + 32) = 0x656C746974;
    *(v83 + 40) = 0xE500000000000000;
    *(v83 + 48) = sub_1E9600();
    *(v83 + 56) = v84;
    *(v83 + 72) = &type metadata for String;
    *(v83 + 80) = 0x736163646F507369;
    *(v83 + 88) = 0xE900000000000074;
    *(v83 + 120) = &type metadata for Bool;
    *(v83 + 96) = 0;
    v85 = sub_112C0(v83);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v86 = v129[15];
    v132 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v133 = &off_338D38;
    v130 = v55;
    v87 = v55;
    sub_1273A4(v85, v54, &v130, v127, v128);
    goto LABEL_36;
  }

  if (_INAddMediaMediaItemUnsupportedReasonCloudSyncOff == v56)
  {
    v88 = v129[15];
    v89 = sub_112C0(_swiftEmptyArrayStorage);
    v132 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v133 = &off_338D38;
    v130 = v55;
    v90 = v55;
    sub_127A28(v89, v54, &v130, v127, v128);
    goto LABEL_36;
  }

  if (_INAddMediaMediaItemUnsupportedReasonAppDoesntSupportIntent == v56)
  {
    v99 = v129[15];
    v100 = sub_112C0(_swiftEmptyArrayStorage);
    v132 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v133 = &off_338D38;
    v130 = v55;
    v101 = v55;
    sub_3A310(v100, v54, &v130, v127, v128);
    goto LABEL_36;
  }

  if (_INAddMediaMediaItemUnsupportedReasonAppNotAvailable == v56)
  {
    v102 = v129[15];
    v103 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3A980(v103, v54, v127, v128);
  }

  if (_INAddMediaMediaItemUnsupportedReasonAppNotConfigured == v56)
  {
    v104 = v129[15];
    v105 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3B03C(v105, v54, v127, v128);
  }

  v106 = v129[15];
  if (_INAddMediaMediaItemUnsupportedReasonAppAccountFailure != v56)
  {
    sub_20410(&unk_353120, &unk_2D0B50);
    v108 = swift_initStackObject();
    *(v108 + 16) = xmmword_2D0090;
    *(v108 + 32) = 0x736163646F507369;
    *(v108 + 40) = 0xE900000000000074;
    v130 = v55;
    v109 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    sub_D18A8();
    v110 = sub_2CBFA0() == 6;
    *(v108 + 72) = &type metadata for Bool;
    *(v108 + 48) = v110;
    v111 = sub_112C0(v108);
    swift_setDeallocating();
    sub_30B8(v108 + 32, &qword_34CBA0, &unk_2D0FE0);
    v132 = v109;
    v133 = &off_338D38;
    v130 = v55;
    v112 = v55;
    sub_382E0(v111, v54, &v130, v127, v128);
    goto LABEL_36;
  }

  v107 = sub_112C0(_swiftEmptyArrayStorage);
  sub_3B6F8(v107, v54, v127, v128);
}

uint64_t sub_D1384(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_112C0(_swiftEmptyArrayStorage);

  v12 = [a3 unsupportedReason];
  sub_20410(&unk_353120, &unk_2D0B50);
  if (v12 == &dword_0 + 2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0090;
    strcpy((inited + 32), "playlistName");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    v20 = sub_1E960C();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v20;
    *(inited + 56) = v21;
    v22 = sub_112C0(inited);
    swift_setDeallocating();
    sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
    v23 = *(v6 + 120);
    v41 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v42 = &off_338D38;
    v40[0] = a2;
    v24 = a2;
    sub_125994(v22, a1, v40, a4, a5);
  }

  else if (v12 == &dword_0 + 1)
  {
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_2D0090;
    strcpy((v13 + 32), "playlistName");
    *(v13 + 45) = 0;
    *(v13 + 46) = -5120;
    v14 = sub_1E960C();
    *(v13 + 72) = &type metadata for String;
    *(v13 + 48) = v14;
    *(v13 + 56) = v15;
    v16 = sub_112C0(v13);
    swift_setDeallocating();
    sub_30B8(v13 + 32, &qword_34CBA0, &unk_2D0FE0);
    v17 = *(v6 + 120);
    v41 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v42 = &off_338D38;
    v40[0] = a2;
    v18 = a2;
    sub_125310(v16, a1, v40, a4, a5);
  }

  else
  {
    v25 = swift_initStackObject();
    *(v25 + 32) = 0xD000000000000015;
    *(v25 + 16) = xmmword_2D10E0;
    *(v25 + 40) = 0x80000000002DB710;
    v26 = [a2 mediaDestination];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 mediaDestinationType];

      v29 = v28 == &dword_0 + 2;
    }

    else
    {
      v29 = 0;
    }

    *(v25 + 48) = v29;
    *(v25 + 72) = &type metadata for Bool;
    *(v25 + 80) = 0xD000000000000014;
    *(v25 + 88) = 0x80000000002DC470;
    v30 = [a2 mediaDestination];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 mediaDestinationType];

      v33 = v32 == &dword_0 + 1;
    }

    else
    {
      v33 = 0;
    }

    *(v25 + 96) = v33;
    *(v25 + 120) = &type metadata for Bool;
    *(v25 + 128) = 0x646E756F72477369;
    *(v25 + 136) = 0xEB00000000676E69;
    v40[0] = a2;
    v34 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    sub_D18A8();
    v35 = sub_2CBFB0();
    *(v25 + 168) = &type metadata for Bool;
    *(v25 + 144) = v35;
    v36 = sub_112C0(v25);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v37 = *(v6 + 120);
    v41 = v34;
    v42 = &off_338D38;
    v40[0] = a2;
    v38 = a2;
    sub_124C8C(v36, a1, v40, a4, a5);
  }

  return sub_30B8(v40, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_D17DC()
{
  v1 = v0[15];

  sub_306C(v0 + 16);
  return sub_306C(v0 + 21);
}

uint64_t type metadata accessor for AddMediaDialogProvider()
{
  result = qword_34F388;
  if (!qword_34F388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_D18A8()
{
  result = qword_34F5E8;
  if (!qword_34F5E8)
  {
    sub_334A0(255, &qword_34DD28, INAddMediaIntent_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34F5E8);
  }

  return result;
}

uint64_t INUpdateMediaAffinityIntent.firstMediaItemType()()
{
  v1 = [v0 mediaItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_736BC();
  v3 = sub_2CE410();

  if (v3 >> 62)
  {
    result = sub_2CEDA0();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = sub_2CECD0();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    v5 = *(v3 + 32);
LABEL_7:
    v6 = v5;

    v7 = [v6 type];

    return v7;
  }

  __break(1u);
  return result;
}

BOOL sub_D1A00()
{
  swift_getWitnessTable();

  return sub_2CBFB0();
}

BOOL sub_D1A54()
{
  swift_getWitnessTable();

  return sub_2CBFD0();
}

BOOL sub_D1AA8(uint64_t a1, void *a2)
{
  swift_getWitnessTable();
  v4.value._countAndFlagsBits = a1;
  v4.value._object = a2;

  return sub_2CBFF0(v4);
}

uint64_t sub_D1B14()
{
  swift_getWitnessTable();

  return sub_2CBFE0();
}

BOOL sub_D1B68()
{
  swift_getWitnessTable();

  return sub_2CC010();
}

uint64_t sub_D1BBC()
{
  swift_getWitnessTable();

  return sub_2CBF90();
}

uint64_t sub_D1C10()
{
  swift_getWitnessTable();

  return sub_2CBFC0();
}

id sub_D1CC4()
{
  v1 = [*v0 mediaSearch];

  return v1;
}

double sub_D1D64@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v164 = a2;
  v158 = sub_2CA810();
  v157 = *(v158 - 8);
  v3 = *(v157 + 64);
  v4 = __chkstk_darwin(v158);
  v141 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v163 = &v138 - v7;
  __chkstk_darwin(v6);
  v9 = &v138 - v8;
  v10 = sub_20410(&qword_34CC90, qword_2D40E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v150 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v149 = &v138 - v14;
  v145 = sub_2CA970();
  v144 = *(v145 - 8);
  v15 = *(v144 + 64);
  __chkstk_darwin(v145);
  v143 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_2CA8F0();
  v147 = *(v148 - 8);
  v17 = *(v147 + 64);
  __chkstk_darwin(v148);
  v146 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20410(&qword_34D360, &qword_2D11E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v161 = &v138 - v21;
  v168 = sub_2CA870();
  v22 = *(v168 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v168);
  v166 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v165 = (&v138 - v27);
  __chkstk_darwin(v26);
  v29 = &v138 - v28;
  v30 = sub_2CE000();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v142 = &v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v153 = &v138 - v36;
  v37 = __chkstk_darwin(v35);
  v151 = &v138 - v38;
  __chkstk_darwin(v37);
  v40 = &v138 - v39;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v41 = sub_3ED0(v30, static Logger.default);
  swift_beginAccess();
  v43 = v31 + 16;
  v42 = *(v31 + 16);
  v155 = v41;
  v154 = v42;
  v42(v40, v41, v30);
  v44 = *(v22 + 16);
  v167 = a1;
  v44(v29, a1, v168);
  v162 = v40;
  v45 = v31;
  v46 = sub_2CDFE0();
  v47 = sub_2CE670();
  v48 = os_log_type_enabled(v46, v47);
  v156 = v9;
  v160 = v45;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v152 = v30;
    v50 = v49;
    v139 = swift_slowAlloc();
    *&v173[0] = v139;
    *v50 = 136315138;
    v140 = v43;
    v51 = v168;
    v44(v165, v29, v168);
    v52 = sub_2CE2A0();
    v54 = v53;
    v159 = *(v22 + 8);
    v159(v29, v51);
    v55 = sub_3F08(v52, v54, v173);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_0, v46, v47, "CommonAudioIntent#from parse: %s", v50, 0xCu);
    sub_306C(v139);

    v30 = v152;

    v56 = v162;
    v162 = *(v160 + 8);
    v162(v56, v30);
    v57 = v51;
  }

  else
  {

    v57 = v168;
    v159 = *(v22 + 8);
    v159(v29, v168);
    v58 = v162;
    v162 = *(v45 + 8);
    v162(v58, v30);
  }

  v59 = v166;
  v44(v166, v167, v57);
  v60 = (*(v22 + 88))(v59, v57);
  v61 = v163;
  if (v60 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v159(v59, v57);
LABEL_10:
    v66 = v165;
    v44(v165, v167, v57);
    v67 = v161;
    sub_2B6170(v66, v161);
    v68 = type metadata accessor for AudioNLv3Intent();
    if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
    {
      v69 = &qword_34D360;
      v70 = &qword_2D11E0;
      v71 = v67;
LABEL_12:
      sub_30B8(v71, v69, v70);
      result = 0.0;
      v73 = v164;
      *v164 = 0u;
      *(v73 + 1) = 0u;
      v73[4] = 0;
      return result;
    }

    v74 = v164;
    v164[3] = v68;
    v74[4] = sub_D422C(&qword_34F618, type metadata accessor for AudioNLv3Intent);
    v75 = sub_F390(v74);
    sub_D416C(v67, v75);
    return result;
  }

  v62 = v22;
  if (v60 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v63 = v166;
    (*(v22 + 96))(v166, v57);
    v64 = *&v63[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];

    v65 = sub_2CAFE0();
    (*(*(v65 - 8) + 8))(v63, v65);
    goto LABEL_10;
  }

  if (v60 != enum case for Parse.directInvocation(_:))
  {
    v86 = v166;
    if (v60 == enum case for Parse.pommesResponse(_:))
    {
      v87 = v57;
      v88 = v30;
      (*(v62 + 96))(v166, v87);
      v89 = *v86;
      v90 = sub_1B7F14();
      if (v90)
      {
        v91 = v90;
        v92 = sub_2CD700();
        v93 = v150;
        sub_2CDA40();
        v94 = sub_2CAA00();
        (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
        v95 = sub_2CD600();
        if (v95)
        {
          v96 = v95;
          v97 = v164;
          v164[3] = v92;
          v97[4] = &protocol witness table for AudioUsoIntent;

          *v97 = v96;
          return result;
        }
      }

      else
      {
        v154(v151, v155, v88);
        v128 = sub_2CDFE0();
        v129 = sub_2CE680();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          *v130 = 0;
          _os_log_impl(&dword_0, v128, v129, "CommonAudioIntent#from pommesResponse contains no AudioExperience", v130, 2u);
        }

        v162(v151, v88);
      }
    }

    else
    {
      if (v60 != enum case for Parse.uso(_:))
      {
        v122 = v142;
        v123 = v30;
        v154(v142, v155, v30);
        v124 = sub_2CDFE0();
        v125 = sub_2CE680();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&dword_0, v124, v125, "CommonAudioIntent#from unsupported parse type", v126, 2u);
        }

        v162(v122, v123);
        v127 = v164;
        v164[4] = 0;
        *v127 = 0u;
        *(v127 + 1) = 0u;
        v159(v86, v57);
        return result;
      }

      (*(v62 + 96))(v166, v57);
      v98 = v147;
      v99 = v146;
      v100 = v148;
      (*(v147 + 32))(v146, v86, v148);
      v101 = v143;
      sub_2CA8E0();
      v102 = sub_2CA960();
      (*(v144 + 8))(v101, v145);
      if (*(v102 + 16))
      {
        v103 = sub_2CAA00();
        v104 = *(v103 - 8);
        v105 = v149;
        (*(v104 + 16))(v149, v102 + ((*(v104 + 80) + 32) & ~*(v104 + 80)), v103);

        (*(v104 + 56))(v105, 0, 1, v103);
      }

      else
      {

        v133 = sub_2CAA00();
        (*(*(v133 - 8) + 56))(v149, 1, 1, v133);
      }

      v134 = sub_2CD700();
      v135 = sub_2CD600();
      if (v135)
      {
        v136 = v164;
        v164[3] = v134;
        v136[4] = &protocol witness table for AudioUsoIntent;
        *v136 = v135;
        (*(v98 + 8))(v99, v100);
        return result;
      }

      (*(v98 + 8))(v99, v100);
    }

LABEL_40:
    v137 = v164;
    v164[4] = 0;
    result = 0.0;
    *v137 = 0u;
    *(v137 + 1) = 0u;
    return result;
  }

  v76 = *(v22 + 96);
  v77 = v166;
  v76(v166, v57);
  v78 = v156;
  (*(v157 + 32))(v156, v77, v158);
  sub_238E4C(v78, v170);
  if (v172 == 255)
  {
    v106 = v153;
    v154(v153, v155, v30);
    v107 = v157;
    v108 = *(v157 + 16);
    v108(v61, v78, v158);
    v109 = v61;
    v110 = v30;
    v111 = sub_2CDFE0();
    v112 = sub_2CE680();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v115 = v158;
      v152 = v110;
      v116 = v114;
      *&v173[0] = v114;
      *v113 = 136315138;
      v108(v141, v109, v115);
      v117 = sub_2CE2A0();
      v119 = v118;
      v120 = *(v107 + 8);
      v120(v109, v115);
      v121 = sub_3F08(v117, v119, v173);

      *(v113 + 4) = v121;
      _os_log_impl(&dword_0, v111, v112, "CommonAudioIntent#actionForInput received unsupported directInvocation: %s", v113, 0xCu);
      sub_306C(v116);

      v162(v153, v152);
      v120(v156, v115);
    }

    else
    {

      v131 = *(v107 + 8);
      v132 = v158;
      v131(v109, v158);
      v162(v106, v110);
      v131(v78, v132);
    }

    goto LABEL_40;
  }

  v79 = v78;
  v173[0] = v170[0];
  v173[1] = v170[1];
  v173[2] = v170[2];
  v174 = v171;
  v175 = v172;
  v80 = type metadata accessor for DirectInvocationIntent();
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  swift_allocObject();
  sub_D41D0(v173, v169);
  v83 = sub_132EA8(v173);
  if (!v83)
  {
    (*(v157 + 8))(v79, v158);
    v69 = &qword_34CCB0;
    v70 = &qword_2D5710;
    v71 = v170;
    goto LABEL_12;
  }

  v84 = v83;
  v85 = v164;
  v164[3] = v80;
  v85[4] = sub_D422C(&qword_34F610, type metadata accessor for DirectInvocationIntent);
  sub_30B8(v170, &qword_34CCB0, &qword_2D5710);
  *v85 = v84;
  (*(v157 + 8))(v79, v158);
  return result;
}

double sub_D2F98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v3 = sub_2CA810();
  v146 = *(v3 - 8);
  v4 = *(v146 + 64);
  __chkstk_darwin(v3);
  v6 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34CC90, qword_2D40E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v141 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v138 = &v127 - v11;
  v136 = sub_2CA970();
  v135 = *(v136 - 8);
  v12 = *(v135 + 64);
  __chkstk_darwin(v136);
  v134 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_2CA8F0();
  v139 = *(v140 - 8);
  v14 = *(v139 + 64);
  __chkstk_darwin(v140);
  v137 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20410(&qword_34D360, &qword_2D11E0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v148 = &v127 - v18;
  v19 = sub_2CA870();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v151 = (&v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __chkstk_darwin(v22);
  v152 = (&v127 - v25);
  __chkstk_darwin(v24);
  v154 = &v127 - v26;
  v27 = sub_2CE000();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v133 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v142 = &v127 - v33;
  v34 = __chkstk_darwin(v32);
  v131 = &v127 - v35;
  v36 = __chkstk_darwin(v34);
  v132 = &v127 - v37;
  __chkstk_darwin(v36);
  v39 = &v127 - v38;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v40 = sub_3ED0(v27, static Logger.default);
  swift_beginAccess();
  v41 = *(v28 + 16);
  v145 = v40;
  v144 = v28 + 16;
  v143 = v41;
  v41(v39, v40, v27);
  v42 = *(v20 + 16);
  v153 = a1;
  v42(v154, a1, v19);
  v149 = v39;
  v43 = v28;
  v44 = sub_2CDFE0();
  v45 = sub_2CE670();
  v46 = os_log_type_enabled(v44, v45);
  v147 = v43;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v129 = v6;
    v48 = v47;
    v49 = swift_slowAlloc();
    v130 = v3;
    v127 = v49;
    v155 = v49;
    *v48 = 136315138;
    v50 = v19;
    v51 = v27;
    v52 = v154;
    v53 = v50;
    (v42)(v152, v154);
    v54 = sub_2CE2A0();
    v128 = v51;
    v55 = v42;
    v57 = v56;
    v58 = v53;
    v154 = *(v20 + 8);
    (v154)(v52, v53);
    v59 = sub_3F08(v54, v57, &v155);
    v42 = v55;
    v27 = v128;

    *(v48 + 4) = v59;
    _os_log_impl(&dword_0, v44, v45, "CommonAudioIntent#from parse: %s", v48, 0xCu);
    sub_306C(v127);
    v3 = v130;

    v6 = v129;

    v60 = *(v147 + 8);
    v60(v149, v27);
    v19 = v58;
  }

  else
  {

    v61 = v154;
    v154 = *(v20 + 8);
    (v154)(v61, v19);
    v60 = *(v43 + 8);
    v60(v149, v27);
  }

  v62 = v151;
  v42(v151, v153, v19);
  v63 = (*(v20 + 88))(v62, v19);
  if (v63 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (v154)(v62, v19);
    goto LABEL_10;
  }

  if (v63 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v20 + 96))(v62, v19);
    v64 = *(v62 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));

    v65 = sub_2CAFE0();
    (*(*(v65 - 8) + 8))(v62, v65);
LABEL_10:
    v66 = v152;
    v42(v152, v153, v19);
    v67 = v148;
    sub_2B6170(v66, v148);
    v68 = type metadata accessor for AudioNLv3Intent();
    if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
    {
      sub_30B8(v67, &qword_34D360, &qword_2D11E0);
      result = 0.0;
      v70 = v150;
      *v150 = 0u;
      *(v70 + 16) = 0u;
      *(v70 + 32) = 0u;
    }

    else
    {
      v71 = v150;
      *(v150 + 24) = v68;
      v71[4] = sub_D422C(&qword_34F600, type metadata accessor for AudioNLv3Intent);
      v71[5] = sub_D422C(&qword_34F608, type metadata accessor for AudioNLv3Intent);
      v72 = sub_F390(v71);
      sub_D416C(v67, v72);
    }

    return result;
  }

  if (v63 == enum case for Parse.directInvocation(_:))
  {
    (*(v20 + 96))(v62, v19);
    (*(v146 + 32))(v6, v62, v3);
    sub_238E4C(v6, &v155);
    if (v156 == 4)
    {
      v96 = v27;
      v97 = v146;
      v98 = v155;

      if (v98)
      {
        v99 = v6;
        v100 = sub_2CD700();
        v101 = v98;
        v102 = v141;
        sub_2CDA40();
        v103 = sub_2CAA00();
        (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
        v104 = sub_2CD600();
        if (v104)
        {
          v105 = v104;
          v106 = v150;
          *(v150 + 24) = v100;
          v106[4] = &protocol witness table for AudioUsoIntent;
          v106[5] = sub_D422C(&qword_34F5F8, &type metadata accessor for AudioUsoIntent);

          *v106 = v105;
          (*(v97 + 8))(v99, v3);
          return result;
        }

        (*(v97 + 8))(v99, v3);
      }

      else
      {
        v117 = v131;
        v143(v131, v145, v27);
        v118 = sub_2CDFE0();
        v119 = sub_2CE680();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&dword_0, v118, v119, "CommonAudioIntent#from PlayMediaShim directinvocation is missing audioExperience", v120, 2u);
        }

        v60(v117, v96);
        (*(v97 + 8))(v6, v3);
      }
    }

    else
    {
      if (v156 != 255)
      {
        sub_30B8(&v155, &qword_34CCB0, &qword_2D5710);
      }

      v73 = v142;
      v74 = v27;
      v143(v142, v145, v27);
      v75 = sub_2CDFE0();
      v76 = sub_2CE680();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_0, v75, v76, "CommonAudioIntent#from unsupported directinvocation type", v77, 2u);
      }

      v60(v73, v74);
      (*(v146 + 8))(v6, v3);
    }

    goto LABEL_45;
  }

  if (v63 == enum case for Parse.pommesResponse(_:))
  {
    v78 = v27;
    (*(v20 + 96))(v62, v19);
    v79 = *v62;
    v80 = sub_1B7F14();
    if (v80)
    {
      v81 = v80;
      v82 = sub_2CD700();
      v83 = v141;
      sub_2CDA40();
      v84 = sub_2CAA00();
      (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
      v85 = sub_2CD600();
      if (v85)
      {
        v86 = v85;
        v87 = v150;
        *(v150 + 24) = v82;
        v87[4] = &protocol witness table for AudioUsoIntent;
        v87[5] = sub_D422C(&qword_34F5F8, &type metadata accessor for AudioUsoIntent);

        *v87 = v86;
        return result;
      }
    }

    else
    {
      v113 = v132;
      v143(v132, v145, v78);
      v114 = sub_2CDFE0();
      v115 = sub_2CE680();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_0, v114, v115, "CommonAudioIntent#from pommesResponse contains no AudioExperience", v116, 2u);
      }

      v60(v113, v78);
    }

LABEL_45:
    result = 0.0;
    v126 = v150;
    *(v150 + 16) = 0u;
    v126[2] = 0u;
    *v126 = 0u;
    return result;
  }

  if (v63 == enum case for Parse.uso(_:))
  {
    (*(v20 + 96))(v62, v19);
    v88 = v139;
    v89 = v137;
    v90 = v140;
    (*(v139 + 32))(v137, v62, v140);
    v91 = v134;
    sub_2CA8E0();
    v92 = sub_2CA960();
    (*(v135 + 8))(v91, v136);
    if (*(v92 + 16))
    {
      v93 = sub_2CAA00();
      v94 = *(v93 - 8);
      v95 = v138;
      (*(v94 + 16))(v138, v92 + ((*(v94 + 80) + 32) & ~*(v94 + 80)), v93);

      (*(v94 + 56))(v95, 0, 1, v93);
    }

    else
    {

      v121 = sub_2CAA00();
      (*(*(v121 - 8) + 56))(v138, 1, 1, v121);
    }

    v122 = sub_2CD700();
    v123 = sub_2CD600();
    if (v123)
    {
      v124 = v123;
      v125 = v150;
      *(v150 + 24) = v122;
      v125[4] = &protocol witness table for AudioUsoIntent;
      v125[5] = sub_D422C(&qword_34F5F8, &type metadata accessor for AudioUsoIntent);
      *v125 = v124;
      (*(v88 + 8))(v89, v90);
      return result;
    }

    (*(v88 + 8))(v89, v90);
    goto LABEL_45;
  }

  v107 = v133;
  v143(v133, v145, v27);
  v108 = sub_2CDFE0();
  v109 = sub_2CE680();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    _os_log_impl(&dword_0, v108, v109, "CommonAudioIntent#from unsupported parse type", v110, 2u);
  }

  v60(v107, v27);
  v112 = v150;
  v111 = v151;
  *(v150 + 16) = 0u;
  v112[2] = 0u;
  *v112 = 0u;
  (v154)(v111, v19);
  return result;
}

uint64_t sub_D416C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioNLv3Intent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D422C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_D4274(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v54 - v5;
  *(v1 + 2) = _swiftEmptyArrayStorage;
  *(v1 + 3) = _swiftEmptyArrayStorage;
  *(v1 + 4) = 0;
  *(v1 + 5) = 0;
  *(v1 + 6) = _swiftEmptyArrayStorage;
  v7 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_reference;
  v58 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_reference;
  v8 = sub_2CD570();
  v9 = *(v8 - 8);
  v56 = *(v9 + 56);
  v56(&v2[v7], 1, 1, v8);
  v10 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
  v11 = sub_2CD540();
  v55 = *(*(v11 - 8) + 56);
  v55(&v2[v10], 1, 1, v11);
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_activities] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appAudiobookAuthors] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appAudiobookTitles] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appMusicArtistNames] = _swiftEmptyArrayStorage;
  v12 = &v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appName];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appPlaylistTitles] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appShowTitles] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_applePlaylistTitles] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_applePodcastTitles] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_apps] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_attributes] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_dateTime] = 0;
  v13 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_confirmationState;
  v14 = sub_2CD490();
  (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_decade;
  v16 = sub_2CD4D0();
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_entities] = _swiftEmptyArrayStorage;
  v17 = &v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_frequency];
  *v17 = 0;
  v17[8] = 1;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_genres] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_modifiers] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_moods] = _swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_noun;
  v19 = sub_2CD4A0();
  (*(*(v19 - 8) + 56))(&v2[v18], 1, 1, v19);
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_playlistTitles] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_podcastTitles] = _swiftEmptyArrayStorage;
  v20 = &v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_newsPodcastTopicId];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_newsPodcastIdentifier];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioStationNames] = _swiftEmptyArrayStorage;
  v22 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioType;
  v23 = sub_2CD560();
  (*(*(v23 - 8) + 56))(&v2[v22], 1, 1, v23);
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_resolvedReference] = 0;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_showTitles] = _swiftEmptyArrayStorage;
  v24 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_sort;
  v25 = sub_2CD4B0();
  (*(*(v25 - 8) + 56))(&v2[v24], 1, 1, v25);
  v55(&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_targetMediaType], 1, 1, v11);
  v26 = v57;
  v27 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_verb;
  v28 = sub_2CD4C0();
  (*(*(v28 - 8) + 56))(&v2[v27], 1, 1, v28);
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_audioSettingNames] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appInferred] = 0;
  (*(v9 + 104))(v6, enum case for CommonAudio.Reference.definite(_:), v8);
  v56(v6, 0, 1, v8);
  v29 = v58;
  swift_beginAccess();
  sub_D5564(v6, &v2[v29]);
  swift_endAccess();
  v30 = sub_2CBA40();
  if (v31)
  {
    v32 = v30;
    v33 = v31;
    sub_20410(&unk_356F40, &unk_2D0740);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_2D0090;
    *(v34 + 32) = v32;
    *(v34 + 40) = v33;
    v35 = *(v2 + 3);
    *(v2 + 3) = v34;
  }

  v36 = sub_2CBA90();
  if (v37)
  {
    v38 = v36;
    v39 = v37;
    sub_20410(&unk_356F40, &unk_2D0740);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_2D0090;
    *(v40 + 32) = v38;
    *(v40 + 40) = v39;
    v41 = *(v2 + 2);
    *(v2 + 2) = v40;
  }

  v42 = sub_2CBAA0();
  if (v43)
  {
    v44 = v42;
    v45 = v43;
    sub_20410(&unk_356F40, &unk_2D0740);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_2D0090;
    *(v46 + 32) = v44;
    *(v46 + 40) = v45;
    v47 = *(v2 + 6);
    *(v2 + 6) = v46;
  }

  v48 = sub_2CBAC0();
  v50 = v49;
  v51 = sub_2CBAF0();
  (*(*(v51 - 8) + 8))(v26, v51);
  v52 = *(v2 + 5);
  *(v2 + 4) = v48;
  *(v2 + 5) = v50;

  return v2;
}

void *sub_D48B8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_reference, &qword_34D6C0, &qword_2D15B8);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType, &qword_34D6D0, qword_2D34A0);
  v5 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_activities);

  v6 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appAudiobookAuthors);

  v7 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appAudiobookTitles);

  v8 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appMusicArtistNames);

  v9 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appName + 8);

  v10 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appPlaylistTitles);

  v11 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appShowTitles);

  v12 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_applePlaylistTitles);

  v13 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_applePodcastTitles);

  v14 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_apps);

  v15 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_attributes);

  v16 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_dateTime);

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_confirmationState, &qword_34CCE8, &unk_2D0E20);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_decade, &qword_34D718, &unk_2D15F0);
  v17 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_entities);

  v18 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_genres);

  v19 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_modifiers);

  v20 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_moods);

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_noun, &qword_34D698, &qword_2D1598);
  v21 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_playlistTitles);

  v22 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_podcastTitles);

  v23 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_newsPodcastTopicId + 8);

  v24 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_newsPodcastIdentifier + 8);

  v25 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioStationNames);

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioType, &qword_34D6A0, &unk_2D3490);
  v26 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_resolvedReference);

  v27 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_showTitles);

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_sort, &qword_34D6C8, &unk_2D15C0);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_targetMediaType, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_verb, &qword_34D6B8, &qword_2D15B0);
  v28 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_audioSettingNames);

  return v0;
}

uint64_t sub_D4BAC()
{
  sub_D48B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NowPlayingIntent()
{
  result = qword_34F648;
  if (!qword_34F648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_D4C58()
{
  sub_D4FF4(319, &qword_34F658, &type metadata accessor for CommonAudio.Reference);
  if (v1 <= 0x3F)
  {
    v17 = *(v0 - 8) + 64;
    sub_D4FF4(319, &qword_34F660, &type metadata accessor for CommonAudio.MediaType);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_D4FF4(319, &qword_34F668, &type metadata accessor for CommonAudio.Confirmation);
      if (v6 <= 0x3F)
      {
        v18 = *(v5 - 8) + 64;
        sub_D4FF4(319, &qword_34F670, &type metadata accessor for CommonAudio.Decade);
        if (v8 <= 0x3F)
        {
          v19 = *(v7 - 8) + 64;
          sub_D4FF4(319, &qword_34F678, &type metadata accessor for CommonAudio.Noun);
          if (v10 <= 0x3F)
          {
            v20 = *(v9 - 8) + 64;
            sub_D4FF4(319, &qword_34F680, &type metadata accessor for CommonAudio.RadioType);
            if (v12 <= 0x3F)
            {
              v21 = *(v11 - 8) + 64;
              sub_D4FF4(319, &qword_34F688, &type metadata accessor for CommonAudio.Sort);
              if (v14 <= 0x3F)
              {
                v22 = *(v13 - 8) + 64;
                sub_D4FF4(319, &unk_34F690, &type metadata accessor for CommonAudio.Verb);
                if (v16 <= 0x3F)
                {
                  v23 = *(v15 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_D4FF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2CEB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_D518C()
{
  v1 = *v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_frequency;
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_D51BC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t sub_D52EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_D5394@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *a1;
  swift_beginAccess();
  return sub_F3F4(v8 + v9, a4, a2, a3);
}

unint64_t sub_D550C()
{
  result = qword_34FBE8;
  if (!qword_34FBE8)
  {
    type metadata accessor for NowPlayingIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34FBE8);
  }

  return result;
}

uint64_t sub_D5564(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static CommonMedia.makeSiriKitIntentHandler(app:intent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v17, v18);
  sub_2CBE60();
  v10 = sub_2CC3E0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_2CC3D0();
  sub_306C(v17);
  v18 = v10;
  v19 = &protocol witness table for AirPlayRouteProvider;
  v17[0] = v13;
  v16[3] = sub_2CB9E0();
  v16[4] = &protocol witness table for DeviceProvider;
  sub_F390(v16);
  sub_2CB9C0();
  v15[3] = sub_2CC7A0();
  v15[4] = &protocol witness table for MediaRemoteAPIProvider;
  v15[0] = sub_2CC790();
  sub_D5754();
  static CommonMedia.makeSiriKitIntentHandler(_:_:_:_:_:_:)(a1, a2, v17, v16, v15, a3, a5, a4);

  sub_306C(v15);
  sub_306C(v16);
  return sub_306C(v17);
}

uint64_t sub_D5754()
{
  sub_2CBC60();
  sub_35E0(v2, v2[3]);
  v0 = sub_2CBE60();
  sub_306C(v2);
  return v0;
}

uint64_t static CommonMedia.makeSiriKitIntentHandler(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v211 = a5;
  v212 = a3;
  v222 = a7;
  v213 = sub_2CC760();
  v220 = *(v213 - 8);
  v12 = *(v220 + 64);
  v13 = __chkstk_darwin(v213);
  v210 = &v197[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v214 = &v197[-v15];
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v224 = v16;
  v225 = v17;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v219 = &v197[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v217 = &v197[-v22];
  v23 = __chkstk_darwin(v21);
  v218 = &v197[-v24];
  v25 = __chkstk_darwin(v23);
  v208 = &v197[-v26];
  v27 = __chkstk_darwin(v25);
  v207 = &v197[-v28];
  v29 = __chkstk_darwin(v27);
  v209 = &v197[-v30];
  v31 = __chkstk_darwin(v29);
  v33 = &v197[-v32];
  v34 = __chkstk_darwin(v31);
  v36 = &v197[-v35];
  __chkstk_darwin(v34);
  v38 = &v197[-v37];
  *&v226 = a2;
  v216 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v223 = a2;
  sub_20410(&unk_34FBF0, &qword_2D1EF0);
  v221 = AssociatedTypeWitness;
  if (swift_dynamicCast())
  {
    sub_F338(v227, &v229);
    sub_35E0(&v229, v230);
    if (sub_2CC120())
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v40 = v224;
      v41 = sub_3ED0(v224, static Logger.default);
      swift_beginAccess();
      v42 = v225;
      (*(v225 + 16))(v38, v41, v40);
      v43 = sub_2CDFE0();
      v44 = sub_2CE690();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_0, v43, v44, "CommonMedia#makeSiriKitIntentHandler User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v45, 2u);
      }

      (*(v42 + 8))(v38, v40);
      v46 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

      [v46 init];
      v47 = v223;
      v48 = v222;
      sub_2C9870();
      v49 = sub_2C9880();
      (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      return sub_306C(&v229);
    }

    sub_306C(&v229);
  }

  else
  {
    v228 = 0;
    memset(v227, 0, sizeof(v227));
    sub_30B8(v227, &qword_3530A0, &qword_2D1EF8);
  }

  v51 = sub_D7070();
  v215 = a6;
  if (v51)
  {
    v52 = a4[4];
    sub_35E0(a4, a4[3]);
    if (sub_2CBBC0() & 1) != 0 || (v53 = a4[4], sub_35E0(a4, a4[3]), (sub_2CBBB0()))
    {
      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();
      if (v54)
      {
        v55 = v54;
        v56 = sub_2CC8E0();
        v57 = v223;
        v206 = v56;
        v58 = sub_2CC8D0();
        if (v58)
        {
          v59 = v58;
          v204 = v55;
          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v60 = v224;
          v61 = sub_3ED0(v224, static Logger.default);
          swift_beginAccess();
          v62 = v225;
          v63 = *(v225 + 16);
          v203 = v61;
          v202 = v225 + 16;
          v201 = v63;
          v63(v36, v61, v60);
          v64 = v57;

          v65 = sub_2CDFE0();
          v66 = sub_2CE670();
          v205 = v64;

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v199 = swift_slowAlloc();
            *&v229 = v199;
            *v67 = 136315394;
            *&v227[0] = v59;
            sub_D8BE4(&qword_34E198, &type metadata accessor for AirPlayRouteSetupContext);
            v198 = v66;
            v68 = sub_2CEE70();
            v70 = sub_3F08(v68, v69, &v229);
            v200 = v59;
            v71 = v70;

            *(v67 + 4) = v71;
            *(v67 + 12) = 2080;
            v72 = [v204 debugDescription];
            v73 = sub_2CE270();
            v75 = v74;

            v76 = v73;
            v59 = v200;
            v77 = sub_3F08(v76, v75, &v229);
            v62 = v225;

            *(v67 + 14) = v77;
            _os_log_impl(&dword_0, v65, v198, "CommonMedia#makeSiriKitIntentHandler Handling AirPlay Route setup for 3p app on iOS. Context: %s Intent: %s", v67, 0x16u);
            swift_arrayDestroy();
          }

          v78 = *(v62 + 8);
          v78(v36, v60);
          v79 = v213;
          v80 = v214;
          sub_2CC8B0();
          v81 = (*(v220 + 88))(v80, v79);
          v82 = v215;
          if (v81 != enum case for AirPlayRouteSetupState.none(_:))
          {
            if (v81 == enum case for AirPlayRouteSetupState.startedDeviceSearch(_:))
            {
              v144 = v212;
              v145 = v212[4];
              sub_35E0(v212, v212[3]);
              sub_2CC690();
              v146 = v144[4];
              sub_35E0(v144, v144[3]);
              sub_2CC670();
            }

            else
            {
              if (v81 == enum case for AirPlayRouteSetupState.startedDeviceSearchWithRouteSetup(_:))
              {
                v147 = v212;
                v148 = v212[4];
                sub_35E0(v212, v212[3]);
                sub_2CC690();
                v149 = v147[3];
                v150 = v147[4];
                v151 = v147;
              }

              else
              {
                if (v81 != enum case for AirPlayRouteSetupState.startedRouteSetup(_:))
                {
                  if (v81 == enum case for AirPlayRouteSetupState.complete(_:))
                  {
                    v200 = v59;
                    v154 = v209;
                    v155 = v224;
                    v201(v209, v203, v224);
                    v156 = v205;
                    v157 = sub_2CDFE0();
                    v158 = sub_2CE660();

                    if (os_log_type_enabled(v157, v158))
                    {
                      v159 = swift_slowAlloc();
                      v160 = swift_slowAlloc();
                      *&v229 = v160;
                      *v159 = 136315138;
                      v161 = [v156 debugDescription];
                      v162 = v156;
                      v163 = sub_2CE270();
                      v165 = v164;

                      v166 = sub_3F08(v163, v165, &v229);

                      *(v159 + 4) = v166;
                      _os_log_impl(&dword_0, v157, v158, "CommonMedia#makeSiriKitIntentHandler AirPlay route setup is complete, no need to wait before executing Handle, intent: %s", v159, 0xCu);
                      sub_306C(v160);

                      v78(v209, v224);
                    }

                    else
                    {

                      v78(v154, v155);
                    }
                  }

                  else
                  {
                    v167 = v224;
                    if (v81 == enum case for AirPlayRouteSetupState.error(_:))
                    {
                      v168 = v207;
                      v201(v207, v203, v224);

                      v169 = sub_2CDFE0();
                      v170 = sub_2CE680();

                      if (os_log_type_enabled(v169, v170))
                      {
                        v171 = swift_slowAlloc();
                        v172 = swift_slowAlloc();
                        *&v229 = v172;
                        *v171 = 136315138;
                        *&v227[0] = v59;
                        sub_D8BE4(&qword_34E198, &type metadata accessor for AirPlayRouteSetupContext);
                        v173 = sub_2CEE70();
                        v175 = sub_3F08(v173, v174, &v229);

                        *(v171 + 4) = v175;
                        _os_log_impl(&dword_0, v169, v170, "CommonMedia#makeSiriKitIntentHandler Something went wrong setting up AirPlay routes %s. Nothing to do here, will create error dialog in makePreHandleIntentOutput or makeIntentHandledResponse", v171, 0xCu);
                        sub_306C(v172);

                        v78(v207, v167);
                      }

                      else
                      {

                        v78(v168, v167);
                      }

                      v193 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

                      [v193 init];
                      v194 = v205;
                      v195 = v222;
                      sub_2C9870();

                      v196 = sub_2C9880();
                      return (*(*(v196 - 8) + 56))(v195, 0, 1, v196);
                    }

                    v176 = v208;
                    v201(v208, v203, v224);
                    v177 = v205;

                    v178 = sub_2CDFE0();
                    v179 = sub_2CE660();

                    if (os_log_type_enabled(v178, v179))
                    {
                      v180 = swift_slowAlloc();
                      v211 = v177;
                      v181 = v180;
                      v212 = swift_slowAlloc();
                      *&v229 = v212;
                      *v181 = 136315394;
                      sub_2CC8B0();
                      v182 = sub_2CE2A0();
                      v184 = sub_3F08(v182, v183, &v229);

                      *(v181 + 4) = v184;
                      *(v181 + 12) = 2080;
                      v185 = v211;
                      v186 = [v211 debugDescription];
                      v187 = sub_2CE270();
                      v189 = v188;

                      v190 = sub_3F08(v187, v189, &v229);
                      v79 = v213;

                      *(v181 + 14) = v190;
                      _os_log_impl(&dword_0, v178, v179, "CommonMedia#makeSiriKitIntentHandler Unexpected state of AirPlay route setup: %s, intent: %s", v181, 0x16u);
                      swift_arrayDestroy();

                      v191 = v224;
                      v192 = v208;
                    }

                    else
                    {

                      v192 = v176;
                      v191 = v167;
                    }

                    v78(v192, v191);
                    (*(v220 + 8))(v214, v79);
                  }

                  goto LABEL_24;
                }

                v151 = v212;
                v149 = v212[3];
                v152 = v212[4];
              }

              sub_35E0(v151, v149);
              sub_2CC6A0();
            }

            v153 = v205;
            (*(v216 + 32))(a1, v205, v82);
          }

          v201(v33, v203, v224);
          v83 = sub_2CDFE0();
          v84 = sub_2CE670();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&dword_0, v83, v84, "CommonMedia#makeSiriKitIntentHandler Suppressing common WHA routes", v85, 2u);
          }

          v78(v33, v224);
          sub_2CE700();
          (*(v220 + 104))(v210, enum case for AirPlayRouteSetupState.suppressedCommonRouteSetup(_:), v79);
          sub_2CC8C0();
          v86 = v212;
          v87 = v212[4];
          sub_35E0(v212, v212[3]);
          sub_EEAC(v86, &v229);
          sub_EEAC(a4, v227);
          sub_EEAC(v211, &v226);
          v88 = swift_allocObject();
          sub_F338(&v229, v88 + 16);
          sub_F338(v227, v88 + 56);
          sub_F338(&v226, v88 + 96);
          sub_2CC660();
        }

        else
        {
        }
      }
    }
  }

LABEL_24:
  v220 = a1;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v89 = v224;
  v90 = sub_3ED0(v224, static Logger.default);
  swift_beginAccess();
  v91 = v225;
  v92 = *(v225 + 16);
  v93 = v218;
  v92(v218, v90, v89);
  v94 = v223;
  v95 = sub_2CDFE0();
  v96 = sub_2CE690();

  v97 = os_log_type_enabled(v95, v96);
  v223 = v94;
  if (v97)
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *&v227[0] = v99;
    *v98 = 136315138;
    *&v226 = v94;
    swift_getWitnessTable();
    v100 = sub_2CEE70();
    v102 = sub_3F08(v100, v101, v227);

    *(v98 + 4) = v102;
    _os_log_impl(&dword_0, v95, v96, "CommonMedia#makeSiriKitIntentHandler for intent: %s", v98, 0xCu);
    sub_306C(v99);
    v89 = v224;

    v103 = *(v225 + 8);
  }

  else
  {

    v103 = *(v91 + 8);
  }

  (v103)(v93, v89);
  if (sub_8FD94())
  {
    v104 = v217;
    v92(v217, v90, v89);
    v105 = sub_2CDFE0();
    v106 = sub_2CE670();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *&v227[0] = v108;
      *v107 = 136315138;
      v109 = v216;
      v110 = *(v216 + 24);
      v219 = v103;
      v111 = v215;
      v112 = v110(v215, v216);
      ObjectType = swift_getObjectType();

      *&v226 = ObjectType;
      sub_20410(&unk_34FC10, &qword_2D1EE8);
      v114 = sub_2CE2A0();
      v116 = sub_3F08(v114, v115, v227);

      *(v107 + 4) = v116;
      _os_log_impl(&dword_0, v105, v106, "CommonMedia#makeSiriKitIntentHandler IS for 1p music or podcasts, returning embedded handler: %s", v107, 0xCu);
      sub_306C(v108);

      v117 = v110;

      (v219)(v217, v224);
    }

    else
    {

      (v103)(v104, v89);
      v109 = v216;
      v117 = *(v216 + 24);
      v111 = v215;
    }

    v132 = v223;

    v117(v111, v109);
    v133 = v132;
    v134 = v222;
    sub_2C9870();
    v135 = sub_2C9880();
    return (*(*(v135 - 8) + 56))(v134, 0, 1, v135);
  }

  else
  {
    v92(v219, v90, v89);
    v118 = v223;

    v119 = sub_2CDFE0();
    v120 = sub_2CE670();

    v121 = os_log_type_enabled(v119, v120);
    v122 = v222;
    if (v121)
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *v123 = 138412546;
      sub_2CCF90();
      if (v125)
      {
        v126 = sub_2CE2F0();
        v128 = v127;

        sub_10C40();
        swift_allocError();
        *v129 = v126;
        v129[1] = v128;
        v130 = _swift_stdlib_bridgeErrorToNSError();
        v131 = v130;
      }

      else
      {
        v130 = 0;
        v131 = 0;
      }

      *(v123 + 4) = v130;
      *v124 = v131;
      *(v123 + 12) = 2112;
      v136 = [v118 launchId];
      if (v136)
      {
        v137 = v136;
        v138 = sub_2CE270();
        v140 = v139;

        sub_10C40();
        swift_allocError();
        *v141 = v138;
        v141[1] = v140;
        v136 = _swift_stdlib_bridgeErrorToNSError();
        v142 = v136;
      }

      else
      {
        v142 = 0;
      }

      v89 = v224;
      *(v123 + 14) = v136;
      v124[1] = v142;
      _os_log_impl(&dword_0, v119, v120, "CommonMedia#makeSiriKitIntentHandler not for 1p music or podcasts (or radio on watch). Bundle: %@, intent launchId: %@", v123, 0x16u);
      sub_20410(&unk_34FC00, &unk_2D0150);
      swift_arrayDestroy();
    }

    (v103)(v219, v89);
    v143 = sub_2C9880();
    return (*(*(v143 - 8) + 56))(v122, 1, 1, v143);
  }
}

BOOL sub_D7070()
{
  v0 = sub_2CCF90();
  v2 = v1;
  v3 = sub_2CBE10();
  if (v2)
  {
    if (v0 == v3 && v2 == v4)
    {
      goto LABEL_16;
    }

    v5 = sub_2CEEA0();

    if (v5)
    {
      return 0;
    }
  }

  else
  {
  }

  v6 = sub_2CCF90();
  v8 = v7;
  v9 = sub_2CBE30();
  if (v8)
  {
    if (v6 == v9 && v8 == v10)
    {
      goto LABEL_16;
    }

    v11 = sub_2CEEA0();

    if (v11)
    {
      return 0;
    }
  }

  else
  {
  }

  v12 = sub_2CCF90();
  v14 = v13;
  v15 = sub_2CBD90();
  if (v14)
  {
    if (v12 == v15 && v14 == v16)
    {
LABEL_16:

      return 0;
    }

    v18 = sub_2CEEA0();

    return (v18 & 1) == 0;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_D71E4(uint64_t a1, void *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  if (a1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v12 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v9, v12, v4);
    v13 = sub_2CDFE0();
    v14 = sub_2CE670();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "CommonMedia#makeSiriKitIntentHandler Searching for output devices...", v15, 2u);
    }

    (*(v5 + 8))(v9, v4);
    v16 = a2[4];
    sub_35E0(a2, a2[3]);
    return sub_2CC680();
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v18 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v11, v18, v4);
    v19 = sub_2CDFE0();
    v20 = sub_2CE670();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "CommonMedia#makeSiriKitIntentHandler Routes not found in the intent", v21, 2u);
    }

    return (*(v5 + 8))(v11, v4);
  }
}

uint64_t sub_D767C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_D7750;

  return sub_D8284(v6);
}

uint64_t sub_D7750(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

id sub_D7934()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DialogProducingIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_D7978(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24C84;

  return v7();
}

uint64_t sub_D7A60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_E664;

  return v8();
}

uint64_t sub_D7B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20410(&qword_34E4B0, &qword_2D3520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_F3F4(a3, v25 - v11, &qword_34E4B0, &qword_2D3520);
  v13 = sub_2CE4D0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_30B8(v12, &qword_34E4B0, &qword_2D3520);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2CE4C0();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2CE490();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2CE2D0() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_30B8(a3, &qword_34E4B0, &qword_2D3520);

    return v23;
  }

LABEL_8:
  sub_30B8(a3, &qword_34E4B0, &qword_2D3520);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_D7E94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_E664;

  return sub_D767C(v2, v3, v4);
}

uint64_t sub_D7F48()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24C84;

  return sub_D7978(v2, v3, v5);
}

uint64_t sub_D8008()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_D8048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24C84;

  return sub_D7A60(a1, v4, v5, v7);
}

uint64_t sub_D8114(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24C84;

  return sub_AF06C(a1, v5);
}

uint64_t sub_D81CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_E664;

  return sub_AF06C(a1, v5);
}

uint64_t sub_D8284(uint64_t a1)
{
  v1[15] = a1;
  v2 = sub_2CC760();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = sub_20410(&qword_34FCB0, &unk_2D8580);
  v1[19] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v7 = *(*(sub_20410(&qword_34FCB8, &unk_2D3580) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v8 = sub_2CE000();
  v1[24] = v8;
  v9 = *(v8 - 8);
  v1[25] = v9;
  v10 = *(v9 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_D8438, 0, 0);
}

uint64_t sub_D8438()
{
  v67 = v0;
  v0[13] = v0[15];
  sub_D8B98();
  if (sub_2CC120())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v1 = v0[27];
    v2 = v0[24];
    v3 = v0[25];
    v4 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v1, v4, v2);
    v5 = sub_2CDFE0();
    v6 = sub_2CE690();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "DialogProducingIntentHandler#handle User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v7, 2u);
    }

    v8 = v0[27];
    v9 = v0[24];
    v10 = v0[25];

    (*(v10 + 8))(v8, v9);
    v11 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:4 userActivity:0];
    goto LABEL_25;
  }

  sub_2CC8E0();
  sub_2CBC60();
  v12 = v0[6];
  sub_35E0(v0 + 2, v0[5]);
  sub_2CBE60();
  sub_306C(v0 + 2);
  v13 = sub_2CC8D0();

  if (!v13)
  {
    goto LABEL_18;
  }

  v15 = v0[22];
  v14 = v0[23];
  v16 = v0[19];
  v17 = v0[20];
  v19 = v0[16];
  v18 = v0[17];
  sub_2CC8B0();
  v20 = *(v18 + 56);
  v20(v14, 0, 1, v19);
  (*(v18 + 104))(v15, enum case for AirPlayRouteSetupState.error(_:), v19);
  v20(v15, 0, 1, v19);
  v21 = *(v16 + 48);
  sub_F3F4(v14, v17, &qword_34FCB8, &unk_2D3580);
  sub_F3F4(v15, v17 + v21, &qword_34FCB8, &unk_2D3580);
  v22 = *(v18 + 48);
  if (v22(v17, 1, v19) != 1)
  {
    v25 = v0[16];
    sub_F3F4(v0[20], v0[21], &qword_34FCB8, &unk_2D3580);
    v26 = v22(v17 + v21, 1, v25);
    v28 = v0[22];
    v27 = v0[23];
    v29 = v0[21];
    if (v26 != 1)
    {
      v64 = v0[20];
      v32 = v0[17];
      v33 = v0[18];
      v34 = v0[16];
      (*(v32 + 32))(v33, v17 + v21, v34);
      sub_D8BE4(&qword_34FCC8, &type metadata accessor for AirPlayRouteSetupState);
      v63 = sub_2CE250();
      v35 = *(v32 + 8);
      v35(v33, v34);
      sub_30B8(v28, &qword_34FCB8, &unk_2D3580);
      sub_30B8(v27, &qword_34FCB8, &unk_2D3580);
      v35(v29, v34);
      sub_30B8(v64, &qword_34FCB8, &unk_2D3580);
      if (v63)
      {
        goto LABEL_15;
      }

LABEL_18:
      v37 = 6;
      goto LABEL_19;
    }

    v31 = v0[16];
    v30 = v0[17];
    sub_30B8(v0[22], &qword_34FCB8, &unk_2D3580);
    sub_30B8(v27, &qword_34FCB8, &unk_2D3580);
    (*(v30 + 8))(v29, v31);
LABEL_13:
    sub_30B8(v0[20], &qword_34FCB0, &unk_2D8580);
    goto LABEL_18;
  }

  v23 = v0[23];
  v24 = v0[16];
  sub_30B8(v0[22], &qword_34FCB8, &unk_2D3580);
  sub_30B8(v23, &qword_34FCB8, &unk_2D3580);
  if (v22(v17 + v21, 1, v24) != 1)
  {
    goto LABEL_13;
  }

  sub_30B8(v0[20], &qword_34FCB8, &unk_2D3580);
LABEL_15:
  v36 = sub_2CC890();
  if (v36 == 2 || (v36 & 1) == 0)
  {
    goto LABEL_18;
  }

  v37 = 4;
LABEL_19:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v38 = v0[25];
  v39 = v0[26];
  v40 = v0[24];
  v41 = sub_3ED0(v40, static Logger.default);
  swift_beginAccess();
  (*(v38 + 16))(v39, v41, v40);
  v42 = sub_2CDFE0();
  v43 = sub_2CE670();
  v44 = os_log_type_enabled(v42, v43);
  v46 = v0[25];
  v45 = v0[26];
  v47 = v0[24];
  if (v44)
  {
    v48 = v37;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v66 = v50;
    *v49 = 136315138;
    v0[14] = v48;
    type metadata accessor for INPlayMediaIntentResponseCode(0);
    v51 = sub_2CE2A0();
    v65 = v45;
    v53 = sub_3F08(v51, v52, &v66);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_0, v42, v43, "AirPlayErrorIntentHandler#handle short circuiting handle because of AirPlay setup error, returning %s", v49, 0xCu);
    sub_306C(v50);

    v37 = v48;

    (*(v46 + 8))(v65, v47);
  }

  else
  {

    (*(v46 + 8))(v45, v47);
  }

  v11 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:v37 userActivity:0];

LABEL_25:
  v55 = v0[26];
  v54 = v0[27];
  v57 = v0[22];
  v56 = v0[23];
  v59 = v0[20];
  v58 = v0[21];
  v60 = v0[18];

  v61 = v0[1];

  return v61(v11);
}

unint64_t sub_D8B98()
{
  result = qword_34FCC0;
  if (!qword_34FCC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34FCC0);
  }

  return result;
}

uint64_t sub_D8BE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s27NeedsDisambiguationStrategyCMa_1()
{
  result = qword_34FCF8;
  if (!qword_34FCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D8C78()
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
  qword_34FE20 = v10;
  return result;
}

uint64_t sub_D8E10()
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
  qword_34FE28 = v10;
  return result;
}

uint64_t sub_D8FB8(uint64_t (*a1)(uint64_t))
{
  v2 = v1;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, qword_35F6A8);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2CDFE0();
  v11 = sub_2CE690();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "ShazamKitRecognizer#enableLiveActivity true for iOS", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  [*(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession) setEnableLiveActivity:1];
  return a1(1);
}

uint64_t sub_D918C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v31 = a1;
  v4 = sub_2CB6C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CB850();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_34FF10, qword_2D3620);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = v28 - v16;
  v30 = sub_2CB700();
  v18 = *(v30 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v30);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_DB0D4())
  {
    v29 = v4;
    if (qword_34BF40 != -1)
    {
      swift_once();
    }

    v28[1] = qword_34FE20;
    v28[2] = "DeactivateAudioSession";
    if (qword_34BF48 != -1)
    {
      swift_once();
    }

    v28[0] = qword_34FE28;
    v22 = v30;
    (*(v18 + 104))(v21, enum case for Completions.TimeoutMillis.shazamKitRecognizer(_:), v30);
    (*(v10 + 104))(v13, enum case for PlaybackCode.acousticIDTimeout(_:), v9);
    (*(v5 + 104))(v8, enum case for DomainCode.shazamKit(_:), v29);
    sub_2CC930();
    swift_storeEnumTagMultiPayload();
    v23 = swift_allocObject();
    v25 = v31;
    v24 = v32;
    v23[2] = v32;
    v23[3] = v25;
    v23[4] = v33;
    v26 = v24;

    sub_2CB720();

    sub_30B8(v17, &qword_34FF10, qword_2D3620);
    return (*(v18 + 8))(v21, v22);
  }

  else
  {
    (*(v10 + 104))(v13, enum case for PlaybackCode.acousticIDGenericError(_:), v9);
    (*(v5 + 104))(v8, enum case for DomainCode.shazamKit(_:), v4);
    sub_2CC930();
    swift_storeEnumTagMultiPayload();
    v34(v17);
    return sub_30B8(v17, &qword_34FF10, qword_2D3620);
  }
}

uint64_t sub_D9638(uint64_t a1, uint64_t a2, char *a3, void (*a4)(id), NSObject *a5)
{
  v41[1] = a5;
  v42 = a4;
  v51 = a3;
  v43 = a1;
  v44 = a2;
  v5 = sub_2CE150();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  __chkstk_darwin(v5);
  v47 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2CE180();
  v46 = *(v48 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v48);
  v45 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v41 - v16;
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v10, qword_35F6A8);
  v19 = v11[2];
  v19(v17, v18, v10);
  v20 = sub_2CDFE0();
  v21 = sub_2CE690();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "ShazamKitRecognizer#performMatch Entering dispatchGroup", v22, 2u);
  }

  v23 = v11[1];
  v23(v17, v10);
  v24 = v51;
  v41[0] = *&v51[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_dispatchGroup];
  dispatch_group_enter(v41[0]);
  v25 = *&v24[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession];
  [v25 setDelegate:v24];
  v19(v15, v18, v10);
  v26 = sub_2CDFE0();
  v27 = sub_2CE690();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_0, v26, v27, "ShazamKitRecognizer#performMatch triggering matchAmbientAudioSnippet", v28, 2u);
  }

  v23(v15, v10);
  v29 = [v25 matchAmbientAudioSnippet];
  v42(v29);
  sub_334A0(0, &qword_34FF18, OS_dispatch_queue_ptr);
  v30 = sub_2CE9B0();
  v31 = swift_allocObject();
  v32 = v51;
  v33 = v43;
  v34 = v44;
  v31[2] = v51;
  v31[3] = v33;
  v31[4] = v34;
  aBlock[4] = sub_DB7F0;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_3346D0;
  v35 = _Block_copy(aBlock);
  v36 = v32;

  v37 = v45;
  sub_2CE160();
  v52 = _swiftEmptyArrayStorage;
  sub_DB814(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  v38 = v47;
  v39 = v50;
  sub_2CEC10();
  sub_2CE970();
  _Block_release(v35);

  (*(v49 + 8))(v38, v39);
  (*(v46 + 8))(v37, v48);
}

uint64_t sub_D9B9C(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_20410(&qword_34FF10, qword_2D3620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession) setDelegate:0];
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, qword_35F6A8);
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "ShazamKitRecognizer#performMatch completed", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v17 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_result;
  swift_beginAccess();
  sub_F3F4(a1 + v17, v7, &qword_34FF10, qword_2D3620);
  a2(v7);
  return sub_30B8(v7, &qword_34FF10, qword_2D3620);
}

uint64_t sub_D9E10(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result)
  {
    v8 = sub_2C8D20();
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v9 = sub_3ED0(v2, qword_35F6A8);
    (*(v3 + 16))(v7, v9, v2);
    v10 = v8;
    v11 = sub_2CDFE0();
    v12 = sub_2CE680();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_0, v11, v12, "ShazamKitRecognizer#sessionDidFindMatch Failed to add song to SHMediaLibrary: %@", v13, 0xCu);
      sub_30B8(v14, &unk_34FC00, &unk_2D0150);
    }

    else
    {
      v15 = v11;
      v11 = v10;
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

void sub_DA12C(void *a1)
{
  v2 = v1;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, qword_35F6A8);
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_2CDFE0();
  v12 = sub_2CE690();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    v16 = [v10 description];
    v17 = sub_2CE270();
    v19 = v18;

    v20 = sub_3F08(v17, v19, &v22);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "ShazamKitRecognizer#finishedManagedSession: %s", v14, 0xCu);
    sub_306C(v15);

    v2 = v21;
  }

  (*(v5 + 8))(v8, v4);
  [*(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession) setDelegate:0];
  sub_DAB34();
}

uint64_t sub_DA3F4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v63 = a3;
  v64 = a2;
  v61 = a1;
  v3 = sub_2CBAF0();
  v60 = *(v3 - 8);
  v4 = v60[8];
  __chkstk_darwin(v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v65 = v7;
  v66 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v58 = &v58 - v13;
  __chkstk_darwin(v12);
  v62 = &v58 - v14;
  v15 = sub_2CC2E0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v58 - v21;
  v23 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v58 - v25;
  sub_F3F4(v61, &v58 - v25, &qword_34FF00, &qword_2D3EB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v16 + 32))(v22, v26, v15);
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v27 = v65;
    v28 = sub_3ED0(v65, qword_35F6A8);
    v29 = v66;
    (*(v66 + 16))(v62, v28, v27);
    v30 = *(v16 + 16);
    v61 = v22;
    v30(v20, v22, v15);
    v31 = sub_2CDFE0();
    v32 = sub_2CE680();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v67 = v60;
      *v33 = 136446210;
      sub_DB814(&qword_34FF08, &type metadata accessor for NowPlayingInfoError);
      v34 = sub_2CEEF0();
      v36 = v35;
      v37 = *(v16 + 8);
      v37(v20, v15);
      v38 = sub_3F08(v34, v36, &v67);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_0, v31, v32, "ShazamKitRecognizer#shouldUseAsyncNotification failure with error: %{public}s, returning false", v33, 0xCu);
      sub_306C(v60);

      (*(v66 + 8))(v62, v65);
    }

    else
    {

      v37 = *(v16 + 8);
      v37(v20, v15);
      (*(v29 + 8))(v62, v27);
    }

    v64(0);
    return (v37)(v61, v15);
  }

  else
  {
    v39 = v60;
    (v60[4])(v6, v26, v3);
    v40 = sub_2CBAE0();
    v41 = v6;
    if ((v42 & 1) != 0 || v40 != 2)
    {
      v50 = v65;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v51 = sub_3ED0(v50, qword_35F6A8);
      v52 = v66;
      v53 = v59;
      (*(v66 + 16))(v59, v51, v50);
      v54 = sub_2CDFE0();
      v55 = sub_2CE690();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_0, v54, v55, "ShazamKitRecognizer#shouldUseAsyncNotification Now playing media type is not video, returning false", v56, 2u);
      }

      (*(v52 + 8))(v53, v50);
      v49 = 0;
    }

    else
    {
      v43 = v65;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v44 = sub_3ED0(v43, qword_35F6A8);
      v45 = v58;
      (*(v66 + 16))(v58, v44, v43);
      v46 = sub_2CDFE0();
      v47 = sub_2CE690();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "ShazamKitRecognizer#shouldUseAsyncNotification Now playing media type is video, returning true", v48, 2u);
      }

      (*(v66 + 8))(v45, v43);
      v49 = 1;
    }

    v64(v49);
    return (v39[1])(v41, v3);
  }
}

void sub_DAB34()
{
  v1 = v0;
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v7 = sub_3ED0(v2, qword_35F6A8);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2CDFE0();
  v9 = sub_2CE690();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "ShazamKitRecognizer#handleCompletion Triggering dispatchGroup leave", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  dispatch_group_leave(*(v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_dispatchGroup));
}

id sub_DAD0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShazamKitRecognizer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ShazamKitRecognizer()
{
  result = qword_34FED8;
  if (!qword_34FED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_DAE08()
{
  sub_DAEB0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_DAEB0()
{
  if (!qword_34FEE8)
  {
    sub_2DB30(&qword_34FEF0, &qword_2D35E8);
    sub_2CC950();
    sub_DB814(&qword_34FEF8, &type metadata accessor for PlaybackCodeAndDescription);
    v0 = sub_2CEFA0();
    if (!v1)
    {
      atomic_store(v0, &qword_34FEE8);
    }
  }
}

uint64_t sub_DAF8C(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_nowPlayingProvider);
  v6 = v5[4];
  sub_35E0(v5, v5[3]);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_2CC300();
}

void sub_DB058()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession;
  [*(v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession) stopMatchingAmbientAudioSnippet];
  [*(v1 + v2) setDelegate:0];
  sub_DAB34();
}

unint64_t sub_DB0D4()
{
  v57 = sub_2CDFD0();
  v0 = *(v57 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v57);
  v3 = &v51[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v51[-v10];
  v12 = [objc_opt_self() sharedInstance];
  v58[0] = 0;
  v13 = [v12 setActive:0 withOptions:1 error:v58];

  if (v13)
  {
    v14 = qword_34BF60;
    v15 = v58[0];
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_3ED0(v4, qword_35F6A8);
    (*(v5 + 16))(v11, v16, v4);
    v17 = sub_2CDFE0();
    v18 = sub_2CE690();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "ShazamKitRecognizer#deactivateAudioSession AVAudioSession logic change success", v19, 2u);
    }

    (*(v5 + 8))(v11, v4);
    sub_2CE9F0();
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2D0090;
    *(v20 + 56) = &type metadata for Int;
    *(v20 + 64) = &protocol witness table for Int;
    *(v20 + 32) = 0;
    sub_2CDFC0();
    sub_2CDF90();
  }

  else
  {
    v55 = 0;
    v21 = v58[0];
    v22 = sub_2C8D30();

    swift_willThrow();
    v54 = v22;
    v23 = sub_2C8D20();
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v24 = sub_3ED0(v4, qword_35F6A8);
    (*(v5 + 16))(v9, v24, v4);
    v25 = v23;
    v26 = sub_2CDFE0();
    v27 = sub_2CE680();

    v28 = os_log_type_enabled(v26, v27);
    v56 = v0;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v59 = v53;
      *v29 = 136315138;
      v30 = [v25 localizedDescription];
      v52 = v27;
      v31 = v30;
      v32 = v25;
      v33 = v3;
      v34 = sub_2CE270();
      v36 = v35;

      v58[0] = v34;
      v58[1] = v36;
      v3 = v33;
      v25 = v32;
      v37 = sub_2CE3C0();
      v39 = sub_3F08(v37, v38, &v59);

      *(v29 + 4) = v39;
      _os_log_impl(&dword_0, v26, v52, "ShazamKitRecognizer#deactivateAudioSession AVAudioSession logic change failed: %s", v29, 0xCu);
      sub_306C(v53);
    }

    (*(v5 + 8))(v9, v4);
    v58[0] = [v25 code];
    v40 = sub_2CEE70();
    v42 = v41;
    v43 = v25;
    v44 = [v25 localizedDescription];
    v45 = sub_2CE270();
    v47 = v46;

    sub_2CE9F0();
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_2D0E40;
    *(v48 + 56) = &type metadata for String;
    v49 = sub_1087C();
    *(v48 + 32) = v40;
    *(v48 + 40) = v42;
    *(v48 + 96) = &type metadata for String;
    *(v48 + 104) = v49;
    *(v48 + 64) = v49;
    *(v48 + 72) = v45;
    *(v48 + 80) = v47;
    sub_2CDFC0();
    sub_2CDF90();

    v0 = v56;
    v13 = v55;
  }

  (*(v0 + 8))(v3, v57);
  return v13;
}

uint64_t sub_DB7FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_DB814(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_DB85C(void *a1)
{
  v2 = v1;
  v4 = sub_2CB6C0();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CB850();
  v59 = *(v8 - 8);
  v9 = *(v59 + 64);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v62 = &v58 - v18;
  v63 = sub_20410(&qword_34FF10, qword_2D3620);
  v19 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v21 = (&v58 - v20);
  v22 = [a1 mediaItems];
  sub_334A0(0, &unk_34FF50, SHMatchedMediaItem_ptr);
  v23 = sub_2CE410();

  if (v23 >> 62)
  {
    if (sub_2CEDA0())
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = sub_2CECD0();
      goto LABEL_6;
    }

    if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
    {
      v24 = *(v23 + 32);
LABEL_6:
      v25 = v24;

      v26 = [objc_opt_self() defaultLibrary];
      sub_20410(&unk_351900, &unk_2D0960);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_2D0770;
      *(v27 + 32) = v25;
      sub_334A0(0, &unk_34FF60, SHMediaItem_ptr);
      v28 = v25;
      isa = sub_2CE400().super.isa;

      aBlock[4] = sub_D9E10;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25FAD4;
      aBlock[3] = &unk_3346F8;
      v30 = _Block_copy(aBlock);
      [v26 addMediaItems:isa completionHandler:v30];
      _Block_release(v30);

      v31 = type metadata accessor for ShazamKitMatch();
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      swift_allocObject();
      v34 = v28;
      v35 = ShazamKitMatch.init(matchedSong:)(v28);
      *v21 = v35;
      swift_storeEnumTagMultiPayload();
      v36 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_result;
      swift_beginAccess();

      sub_DCCD8(v21, &v2[v36]);
      swift_endAccess();
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v37 = sub_3ED0(v12, qword_35F6A8);
      v38 = v62;
      (*(v13 + 16))(v62, v37, v12);
      v39 = v34;
      v40 = sub_2CDFE0();
      v41 = sub_2CE690();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v63 = v35;
        aBlock[0] = v43;
        v44 = v13;
        v45 = v43;
        *v42 = 136315138;
        v46 = [v39 description];
        v47 = sub_2CE270();
        v61 = v12;
        v48 = v2;
        v50 = v49;

        v51 = sub_3F08(v47, v50, aBlock);
        v2 = v48;

        *(v42 + 4) = v51;
        _os_log_impl(&dword_0, v40, v41, "ShazamKitRecognizer#sessionDidFindMatch Got the following result: %s", v42, 0xCu);
        sub_306C(v45);

        (*(v44 + 8))(v62, v61);
      }

      else
      {

        (*(v13 + 8))(v38, v12);
      }

      [*&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession] setDelegate:0];
      sub_DAB34();

      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  v62 = v2;

  if (qword_34BF60 != -1)
  {
LABEL_19:
    swift_once();
  }

  v52 = sub_3ED0(v12, qword_35F6A8);
  (*(v13 + 16))(v17, v52, v12);
  v53 = sub_2CDFE0();
  v54 = sub_2CE680();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "ShazamKitRecognizer#sessionDidFindMatch Invalid results from ShazamKit", v55, 2u);
  }

  (*(v13 + 8))(v17, v12);
  (*(v59 + 104))(v11, enum case for PlaybackCode.acousticIDGenericError(_:), v8);
  (*(v60 + 104))(v7, enum case for DomainCode.shazamKit(_:), v61);
  sub_2CC930();
  swift_storeEnumTagMultiPayload();
  v56 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_result;
  v57 = v62;
  swift_beginAccess();
  sub_DCCD8(v21, &v57[v56]);
  swift_endAccess();
  [*&v57[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession] setDelegate:0];
  sub_DAB34();
}

void sub_DC078(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2CB6C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_2CB850();
  v9 = *(v109 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v109);
  v110 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_20410(&qword_34FF10, qword_2D3620);
  v12 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v114 = (&v93 - v13);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v21 = __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v25 = &v93 - v24;
  if (a1)
  {
    v102 = v23;
    v101 = v22;
    v111 = v9;
    v112 = v5;
    swift_errorRetain();
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v26 = sub_3ED0(v14, qword_35F6A8);
    v27 = v15[2];
    v104 = v26;
    v105 = v15 + 2;
    v103 = v27;
    (v27)(v25);
    swift_errorRetain();
    v28 = sub_2CDFE0();
    v29 = sub_2CE680();

    v30 = os_log_type_enabled(v28, v29);
    v107 = v15;
    v108 = v2;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v116[0] = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = sub_2CEEF0();
      v35 = sub_3F08(v33, v34, v116);
      v100 = v8;
      v36 = v4;
      v37 = v14;
      v38 = v35;

      *(v31 + 4) = v38;
      _os_log_impl(&dword_0, v28, v29, "ShazamKitRecognizer#sessionDidNotFindMatchForSignatureError Found no match for signature with error: %s", v31, 0xCu);
      sub_306C(v32);
      v2 = v108;

      v39 = v107[1];
      v40 = v25;
      v41 = v37;
      v42 = v37;
      v4 = v36;
      v8 = v100;
    }

    else
    {

      v39 = v15[1];
      v40 = v25;
      v41 = v14;
      v42 = v14;
    }

    v106 = v39;
    v39(v40, v42);
    v49 = *(v111 + 104);
    v111 += 104;
    v100 = v49;
    (v49)(v110, enum case for PlaybackCode.acousticIDGenericError(_:), v109);
    v50 = *(v112 + 104);
    v99 = enum case for DomainCode.shazamKit(_:);
    v112 += 104;
    v98 = v50;
    v50(v8);
    v51 = v114;
    sub_2CC930();
    swift_storeEnumTagMultiPayload();
    v52 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_result;
    swift_beginAccess();
    sub_DCCD8(v51, v2 + v52);
    swift_endAccess();
    v53 = sub_2C8D20();
    v54 = [v53 userInfo];

    v55 = sub_2CE200();
    v56 = sub_2CE270();
    if (*(v55 + 16))
    {
      v58 = sub_4F538(v56, v57);
      v60 = v59;

      if (v60)
      {
        sub_E2FC(*(v55 + 56) + 32 * v58, v116);

        sub_334A0(0, &qword_34FF48, NSError_ptr);
        if (swift_dynamicCast())
        {
          v61 = v115;
          v62 = v102;
          v63 = v41;
          v103(v102, v104, v41);
          v64 = v61;
          v65 = sub_2CDFE0();
          v66 = sub_2CE670();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v94 = v67;
            v97 = swift_slowAlloc();
            v116[0] = v97;
            *v67 = 136315138;
            v68 = v64;
            v95 = v66;
            v69 = v68;
            v70 = [v68 description];
            v71 = sub_2CE270();
            v96 = v63;
            v72 = v71;
            v73 = v64;
            v75 = v74;

            v76 = sub_3F08(v72, v75, v116);
            v64 = v73;

            v77 = v94;
            *(v94 + 1) = v76;
            _os_log_impl(&dword_0, v65, v95, "ShazamKitRecognizer#sessionDidNotFindMatchForSignatureError This is the underlying error: %s", v77, 0xCu);
            sub_306C(v97);

            v78 = v96;
            v106(v102, v96);
            v2 = v108;
          }

          else
          {

            v106(v62, v41);
            v2 = v108;
            v78 = v41;
          }

          v79 = [v64 code];
          if (qword_34BF50 != -1)
          {
            v91 = v78;
            v92 = v79;
            swift_once();
            v79 = v92;
            v78 = v91;
          }

          if (v79 == qword_34FE30)
          {
            v80 = v101;
            v103(v101, v104, v78);
            swift_errorRetain();
            v81 = sub_2CDFE0();
            v82 = sub_2CE670();

            if (os_log_type_enabled(v81, v82))
            {
              v83 = swift_slowAlloc();
              v104 = v64;
              v84 = v83;
              v103 = swift_slowAlloc();
              v116[0] = v103;
              *v84 = 136315138;
              swift_getErrorValue();
              LODWORD(v102) = v82;
              v85 = sub_2CEEF0();
              v105 = v4;
              v87 = sub_3F08(v85, v86, v116);

              *(v84 + 4) = v87;
              _os_log_impl(&dword_0, v81, v102, "ShazamKitRecognizer#sessionDidNotFindMatchForSignatureError This is privacy acknowledgement error: %s", v84, 0xCu);
              sub_306C(v103);

              v64 = v104;

              v88 = v80;
              v89 = v78;
              v4 = v105;
            }

            else
            {

              v88 = v80;
              v89 = v78;
            }

            v106(v88, v89);
            (v100)(v110, enum case for PlaybackCode.acousticIDPrivDiscAckNeeded(_:), v109);
            v98(v8, v99, v4);
            v90 = v114;
            sub_2CC930();

            swift_storeEnumTagMultiPayload();
            v2 = v108;
            swift_beginAccess();
            sub_DCCD8(v90, v2 + v52);
            swift_endAccess();
          }

          else
          {
          }

          goto LABEL_20;
        }
      }

      else
      {
      }

      v2 = v108;
    }

    else
    {
    }

LABEL_20:
    [*(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession) setDelegate:0];
    sub_DAB34();

    return;
  }

  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v43 = sub_3ED0(v14, qword_35F6A8);
  (v15[2])(v19, v43, v14);
  v44 = sub_2CDFE0();
  v45 = sub_2CE690();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "ShazamKitRecognizer#sessionDidNotFindMatchForSignatureError Found no match for signature", v46, 2u);
  }

  (v15[1])(v19, v14);
  v47 = v114;
  *v114 = 0;
  swift_storeEnumTagMultiPayload();
  v48 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_result;
  swift_beginAccess();
  sub_DCCD8(v47, v2 + v48);
  swift_endAccess();
  [*(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession) setDelegate:0];
  sub_DAB34();
}

uint64_t sub_DCCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34FF10, qword_2D3620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Logger.default.unsafeMutableAddressor()
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v0 = sub_2CE000();

  return sub_3ED0(v0, static Logger.default);
}

uint64_t sub_DCDB4()
{
  v0 = sub_2CE000();
  sub_9A944(v0, static Logger.default);
  sub_3ED0(v0, static Logger.default);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v1 = qword_35F760;
  return sub_2CE010();
}

uint64_t static Logger.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = sub_2CE000();
  v3 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Logger.default.setter(uint64_t a1)
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = sub_2CE000();
  v3 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Logger.default.modify())()
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v0 = sub_2CE000();
  sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_DD088()
{
  v0 = sub_2CE000();
  sub_9A944(v0, qword_35F6A8);
  sub_3ED0(v0, qword_35F6A8);
  return sub_2CDFF0();
}

uint64_t type metadata accessor for DetermineViewProvider()
{
  result = qword_34FFF8;
  if (!qword_34FFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_DD150(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v147 = a3;
  v145 = a1;
  v144 = sub_2C8E80();
  v143 = *(v144 - 8);
  v15 = *(v143 + 64);
  __chkstk_darwin(v144);
  v142 = v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v146 = v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v141 = v140 - v23;
  v24 = __chkstk_darwin(v22);
  v148 = v140 - v25;
  v26 = __chkstk_darwin(v24);
  v150 = v140 - v27;
  v28 = __chkstk_darwin(v26);
  v149 = v140 - v29;
  __chkstk_darwin(v28);
  v31 = v140 - v30;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v153 = a5;
  v154 = a4;
  v32[4] = a6;
  v32[5] = a7;
  v32[6] = a8;
  v32[7] = a9;
  v157 = v32;
  v33 = qword_34BF58;

  *&v155 = a6;

  v156 = a7;

  v151 = a8;
  v152 = a9;
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = sub_3ED0(v17, static Logger.default);
  swift_beginAccess();
  v35 = *(v18 + 16);
  v159 = v18 + 16;
  v160 = v34;
  v158 = v35;
  (v35)(v31, v34, v17);
  v36 = a2;
  v37 = sub_2CDFE0();
  v38 = v17;
  v39 = v18;
  v40 = sub_2CE670();

  if (os_log_type_enabled(v37, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v161[0] = v42;
    *v41 = 136315138;
    v43 = v36;
    ObjectType = swift_getObjectType();
    sub_20410(&qword_3500C0, &qword_2D3668);
    v44 = sub_2CE2A0();
    v46 = sub_3F08(v44, v45, v161);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_0, v37, v40, "DetermineViewProvider#makeViewsForHandleIntent called for Intent: %s", v41, 0xCu);
    sub_306C(v42);
  }

  else
  {
    v43 = v36;
  }

  v47 = *(v39 + 8);
  v47(v31, v38);
  v48 = v39;
  if (sub_2CB640())
  {
    v49 = v149;
    (v158)(v149, v160, v38);
    v50 = sub_2CDFE0();
    v51 = sub_2CE660();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "DetermineViewProvider#makeViewsForHandleIntent won't return an AceView for CarPlay", v52, 2u);
    }

    v47(v49, v38);
    v53 = v154;
    v54 = *(v154 + 72);
    v55 = swift_allocObject();
    v57 = v152;
    v56 = v153;
    *(v55 + 16) = v53;
    *(v55 + 24) = v56;
    v58 = v151;
    *(v55 + 32) = v155;
    *(v55 + 40) = v58;
    *(v55 + 48) = v57;
    *(v55 + 56) = _swiftEmptyArrayStorage;

    v59 = v58;
    v60 = v57;
    v61 = [v59 targetDeviceIds];
    if (v61)
    {
      v62 = v61;
      v63 = sub_2CE410();

      v64 = *(v63 + 16);

      if (v64)
      {
        v65 = sub_DE0D8;
LABEL_47:
        sub_4843C(v156, v59, v65, v55);
LABEL_50:

        return;
      }
    }

    v86 = sub_DE0D8;
    goto LABEL_49;
  }

  v66 = v43;
  v67 = [v43 nowPlayingIntentInfo];
  v68 = v150;
  if (!v67)
  {
LABEL_42:
    (v158)(v68, v160, v38);
    v127 = sub_2CDFE0();
    v128 = sub_2CE670();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_0, v127, v128, "DetermineViewProvider#makeViewsForHandleIntent no view as no nowPlayingIntentInfo could be found", v129, 2u);
    }

    v47(v68, v38);
    v130 = v154;
    v131 = *(v154 + 72);
    v55 = swift_allocObject();
    v133 = v152;
    v132 = v153;
    *(v55 + 16) = v130;
    *(v55 + 24) = v132;
    v134 = v151;
    *(v55 + 32) = v155;
    *(v55 + 40) = v134;
    *(v55 + 48) = v133;
    *(v55 + 56) = _swiftEmptyArrayStorage;

    v59 = v134;
    v135 = v133;
    v136 = [v59 targetDeviceIds];
    if (v136)
    {
      v137 = v136;
      v138 = sub_2CE410();

      v139 = *(v138 + 16);

      if (v139)
      {
        v65 = sub_DDFF4;
        goto LABEL_47;
      }
    }

    v86 = sub_DDFF4;
LABEL_49:
    sub_45370(v156, v59, v86, v55);
    goto LABEL_50;
  }

  v69 = v67;
  type metadata accessor for NowPlayingIntentInfo();
  v70 = sub_2CE410();

  if (!(v70 >> 62))
  {
    v71 = v148;
    if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

  v126 = sub_2CEDA0();
  v71 = v148;
  if (!v126)
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_15:
  if ((v70 & 0xC000000000000001) != 0)
  {
    v72 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v72 = *(v70 + 32);
  }

  v73 = v72;

  (v158)(v71, v160, v38);
  v74 = v73;
  v75 = sub_2CDFE0();
  v76 = sub_2CE670();

  v77 = os_log_type_enabled(v75, v76);
  v156 = v74;
  v140[1] = v48;
  if (v77)
  {
    *&v155 = v66;
    v78 = v38;
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    ObjectType = v80;
    *v79 = 136315138;
    v81 = [v74 appBundleId];
    if (v81)
    {
      v82 = v81;
      v83 = sub_2CE270();
      v85 = v84;
    }

    else
    {
      v83 = 0;
      v85 = 0;
    }

    v161[0] = v83;
    v161[1] = v85;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v87 = sub_2CE2A0();
    v89 = sub_3F08(v87, v88, &ObjectType);

    *(v79 + 4) = v89;
    _os_log_impl(&dword_0, v75, v76, "DetermineViewProvider#makeViewsForHandleIntent bundleId: %s", v79, 0xCu);
    sub_306C(v80);

    v47(v148, v38);
    v66 = v155;
  }

  else
  {

    v78 = v38;
    v47(v71, v38);
  }

  v90 = &off_349000;
  v91 = [objc_allocWithZone(SFMediaRemoteControlCardSection) init];
  v92 = v142;
  sub_2C8E70();
  sub_2C8E50();
  (*(v143 + 8))(v92, v144);
  v93 = sub_2CE260();

  [v91 setCardSectionId:v93];

  sub_2CCF90();
  if (v94)
  {
    v95 = sub_2CE260();
  }

  else
  {
    v95 = 0;
  }

  [v91 setPlaybackBundleIdentifier:v95];

  v96 = [v66 targetDeviceIds];
  if (v96)
  {
    v97 = v96;
    v98 = sub_2CE410();

    if (v98[2])
    {
      v100 = v98[4];
      v99 = v98[5];

      v101 = v78;
      v102 = v141;
      v158();

      v103 = sub_2CDFE0();
      v104 = sub_2CE660();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = v66;
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v161[0] = v107;
        *v106 = 136315138;
        *(v106 + 4) = sub_3F08(v100, v99, v161);
        _os_log_impl(&dword_0, v103, v104, "PlayMediaViewProvider#makeViews rendering snippet with route: %s", v106, 0xCu);
        sub_306C(v107);
        v90 = &off_349000;

        v66 = v105;

        v108 = v141;
      }

      else
      {

        v108 = v102;
      }

      v78 = v101;
      v47(v108, v101);
      v109 = sub_2CE260();

      [v91 setPlaybackRouteUniqueIdentifier:v109];
    }

    else
    {
    }
  }

  v110 = v66;
  v111 = [objc_allocWithZone(SACardSnippet) v90[477]];
  sub_20410(&unk_351900, &unk_2D0960);
  v112 = swift_allocObject();
  v155 = xmmword_2D0770;
  *(v112 + 16) = xmmword_2D0770;
  *(v112 + 32) = v91;
  v113 = [v156 appBundleId];
  if (v113)
  {
    v114 = v113;
    sub_2CE270();
  }

  sub_DDFF8();
  v115 = sub_2CE640();

  v116 = v146;
  (v158)(v146, v160, v78);
  v117 = v115;
  v118 = sub_2CDFE0();
  v119 = sub_2CE660();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&dword_0, v118, v119, "DetermineViewProvider#makeViewsForHandleIntent Returning snippet for iOS", v120, 2u);
  }

  v47(v116, v78);
  v121 = sub_35E0((v147 + 24), *(v147 + 48));
  v122 = swift_allocObject();
  *(v122 + 16) = v155;
  *(v122 + 32) = v117;
  v123 = swift_allocObject();
  v124 = v157;
  *(v123 + 16) = sub_DDFE0;
  *(v123 + 24) = v124;
  v125 = *v121;

  sub_203A68(v122, v110, sub_DE044, v123);
}

unint64_t sub_DDFF8()
{
  result = qword_3500B8;
  if (!qword_3500B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3500B8);
  }

  return result;
}

uint64_t sub_DE044(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0);
}

uint64_t sub_DE070()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_DE0DC()
{
  sub_187E40();

  return swift_deallocClassInstance();
}

uint64_t _s25NeedsConfirmationStrategyCMa()
{
  result = qword_3500F0;
  if (!qword_3500F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_DE190(uint64_t a1, uint64_t *a2)
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
  type metadata accessor for UpdateMediaAffinityCatDialogService();
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000011;
  v9[3] = 0x80000000002DA8D0;
  v9[5] = 0xD000000000000019;
  v9[6] = 0x80000000002DB1F0;
  v9[4] = a1;
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
  type metadata accessor for UpdateMediaAffinityDialogProvider();
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
  sub_20410(&qword_350218, qword_2D3690);
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

uint64_t sub_DE6CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CBD60();
  v11 = v10;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v12, v4);

  v13 = sub_2CDFE0();
  v14 = sub_2CE670();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v5;
    v16 = v15;
    v28 = swift_slowAlloc();
    v31 = v11;
    v32 = v28;
    *v16 = 136315394;
    v30 = v9;

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v17 = sub_2CE2A0();
    v19 = sub_3F08(v17, v18, &v32);
    v27 = v4;
    v20 = a1;
    v21 = v19;

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_3F08(v20, a2, &v32);
    _os_log_impl(&dword_0, v13, v14, "App#resolveWithSystemExtension resolved system extension: %s for bundle: %s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v8, v27);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v22 = sub_2CCFB0();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  return sub_2CCF70();
}

unint64_t sub_DE9F8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E696D7265746564;
    v7 = 2036427888;
    v8 = 6579297;
    if (a1 != 3)
    {
      v8 = 0x656C62616E65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x656B696C736964;
    v2 = 0x656C6666756873;
    if (a1 != 9)
    {
      v2 = 0x796669646F6DLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x656C6261736964;
    v4 = 0x6269726373627573;
    if (a1 != 6)
    {
      v4 = 1701538156;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_DEB38@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2CD4C0();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_334860 + a1);

  return v5(a2, v6, v4);
}

uint64_t getEnumTagSinglePayload for MediaPlayerVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaPlayerVerb(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_DED08()
{
  result = qword_350220;
  if (!qword_350220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350220);
  }

  return result;
}

uint64_t sub_DED5C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_DE9F8(*a1);
  v5 = v4;
  if (v3 == sub_DE9F8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2CEEA0();
  }

  return v8 & 1;
}

Swift::Int sub_DEDE4()
{
  v1 = *v0;
  sub_2CEF50();
  sub_DE9F8(v1);
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_DEE48()
{
  sub_DE9F8(*v0);
  sub_2CE310();
}

Swift::Int sub_DEE9C()
{
  v1 = *v0;
  sub_2CEF50();
  sub_DE9F8(v1);
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_DEEFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_DF0F4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_DEF2C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_DE9F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_DEF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_DF140();
  v5 = sub_DF194();
  v6 = sub_DF1E8();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_DEFE0()
{
  result = qword_350228;
  if (!qword_350228)
  {
    sub_2DB30(&qword_350230, &qword_2D36F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350228);
  }

  return result;
}

unint64_t sub_DF048()
{
  result = qword_350238;
  if (!qword_350238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350238);
  }

  return result;
}

unint64_t sub_DF0A0()
{
  result = qword_350240;
  if (!qword_350240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350240);
  }

  return result;
}

uint64_t sub_DF0F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_32FD78;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_DF140()
{
  result = qword_350248;
  if (!qword_350248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350248);
  }

  return result;
}

unint64_t sub_DF194()
{
  result = qword_350250;
  if (!qword_350250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350250);
  }

  return result;
}

unint64_t sub_DF1E8()
{
  result = qword_350258;
  if (!qword_350258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350258);
  }

  return result;
}

uint64_t sub_DF23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v63 = a2;
  v3 = sub_20410(&qword_34E938, &qword_2D28E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v59 = &v53 - v5;
  v6 = sub_2C8E80();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  __chkstk_darwin(v6);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  __chkstk_darwin(v9);
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_350260, qword_2D3810);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v53 = &v53 - v14;
  v15 = sub_2CD5D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_2CAB40();
  v20 = *(v62 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v62);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CADF0();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_2CADE0();
  v28 = v2[2];
  v29 = v2[3];
  sub_2CADD0();
  v31 = *v2;
  v30 = v2[1];
  (*(v16 + 104))(v19, enum case for AudioUsoIntent.UsoNamespace.appBundleId(_:), v15);
  swift_bridgeObjectRetain_n();
  sub_2CD5C0();
  (*(v16 + 8))(v19, v15);
  sub_2CAB10();

  sub_2CAAD0();

  (*(v20 + 8))(v23, v62);
  if (sub_2CAD20())
  {
    v32 = sub_2CAC40();
    v33 = v53;
    (*(*(v32 - 8) + 56))(v53, 1, 1, v32);
    v34 = sub_2CAC00();
    sub_DF928(v33);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v35 = v55;
    v36 = sub_3ED0(v55, static Logger.default);
    swift_beginAccess();
    v37 = v54;
    v38 = v61;
    (*(v54 + 16))(v61, v36, v35);

    v39 = sub_2CDFE0();
    v40 = sub_2CE670();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v62 = v27;
      v42 = v37;
      v43 = v41;
      v44 = swift_slowAlloc();
      v64 = v34;
      v65 = v44;
      *v43 = 136315138;
      sub_2CAFA0();
      sub_DFA00();
      v45 = sub_2CEE70();
      v47 = sub_3F08(v45, v46, &v65);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_0, v39, v40, "DisplayApp#toRREntity UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v43, 0xCu);
      sub_306C(v44);

      (*(v42 + 8))(v61, v35);
    }

    else
    {

      (*(v37 + 8))(v38, v35);
    }

    v50 = v63;
    v51 = v56;
    sub_2C8E70();
    sub_2C8E50();
    (*(v57 + 8))(v51, v58);
    sub_2CBD50();
    sub_DF990(v60, v59);
    sub_2CE040();

    v52 = sub_2CE050();
    return (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
  }

  else
  {
    v48 = sub_2CE050();
    (*(*(v48 - 8) + 56))(v63, 1, 1, v48);
  }
}

uint64_t sub_DF928(uint64_t a1)
{
  v2 = sub_20410(&qword_350260, qword_2D3810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DF990(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E938, &qword_2D28E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_DFA00()
{
  result = qword_350268;
  if (!qword_350268)
  {
    sub_2CAFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350268);
  }

  return result;
}

uint64_t ConvertibleToServerConversionParse.toServerConversionParse()@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v80 = sub_2CA870();
  v78 = *(v80 - 8);
  v2 = *(v78 + 64);
  v3 = __chkstk_darwin(v80);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v76 = &v70 - v5;
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v86 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v70 - v11;
  v12 = sub_2C9900();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20410(&qword_34D658, &qword_2D1530);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v70 - v19;
  v21 = sub_20410(&qword_34D660, &qword_2D1538);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v70 - v23;
  v25 = sub_2CAFE0();
  v84 = *(v25 - 8);
  v85 = v25;
  v26 = *(v84 + 64);
  v27 = __chkstk_darwin(v25);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v70 - v30;
  v89 = sub_2CACD0();
  v90 = &protocol witness table for NonTerminalIntentNode;
  sub_F390(v88);
  sub_2CACC0();
  v32 = sub_2CAFB0();
  (*(*(v32 - 8) + 56))(v24, 1, 1, v32);
  v33 = sub_2CACE0();
  (*(*(v33 - 8) + 56))(v20, 1, 1, v33);
  v34 = v31;
  sub_2CAFD0();
  (*(v13 + 104))(v16, enum case for SiriKitConfirmationState.unset(_:), v12);
  v89 = sub_2CCFE0();
  v90 = &protocol witness table for AppResolutionStateProvider;
  sub_F390(v88);
  sub_2CCFD0();
  v35 = sub_2CA860();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v71 = v1;
  v74 = sub_2CA820();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v38 = v82;
  v39 = sub_3ED0(v82, static Logger.default);
  swift_beginAccess();
  v40 = v81;
  v70 = *(v83 + 16);
  v70(v81, v39, v38);
  v42 = v84;
  v41 = v85;
  v43 = *(v84 + 16);
  v75 = v34;
  v72 = v43;
  v73 = v84 + 16;
  v43(v29, v34, v85);
  v44 = sub_2CDFE0();
  v45 = sub_2CE670();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = v29;
    v48 = swift_slowAlloc();
    v87 = v48;
    *v46 = 136315138;
    sub_E0318();
    v49 = sub_2CEE70();
    v50 = v41;
    v52 = v51;
    v53 = *(v42 + 8);
    v53(v47, v50);
    v54 = sub_3F08(v49, v52, &v87);

    *(v46 + 4) = v54;
    _os_log_impl(&dword_0, v44, v45, "ConvertibleToServerConversionParse#toServerConversionParse nlIntent:%s", v46, 0xCu);
    sub_306C(v48);

    v38 = v82;

    v55 = *(v83 + 8);
    v55(v81, v38);
  }

  else
  {

    v53 = *(v42 + 8);
    v53(v29, v41);
    v55 = *(v83 + 8);
    v55(v40, v38);
  }

  v70(v86, v39, v38);
  v56 = v71;
  v57 = sub_2CDFE0();
  v58 = sub_2CE670();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = v38;
    v61 = swift_slowAlloc();
    *v59 = 138412290;
    *(v59 + 4) = v56;
    *v61 = v56;
    v62 = v56;
    _os_log_impl(&dword_0, v57, v58, "ConvertibleToServerConversionParse#toServerConversionParse sirikitIntent:%@", v59, 0xCu);
    sub_212CC(v61);
    v38 = v60;
  }

  v55(v86, v38);
  v63 = *(sub_20410(&qword_353070, &unk_2D0FB0) + 48);
  v65 = v75;
  v64 = v76;
  v66 = v85;
  v72(v76, v75, v85);
  *&v64[v63] = v74;
  v67 = v78;
  v68 = v80;
  (*(v78 + 104))(v64, enum case for Parse.NLv3IntentPlusServerConversion(_:), v80);
  (*(v67 + 16))(v77, v64, v68);
  sub_2CA7A0();
  (*(v67 + 8))(v64, v68);
  return (v53)(v65, v66);
}

unint64_t sub_E0318()
{
  result = qword_34D678;
  if (!qword_34D678)
  {
    sub_2CAFE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D678);
  }

  return result;
}

uint64_t sub_E0370(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);

  v40 = v4;
  if (!v4)
  {
    return a2;
  }

  v5 = 0;
LABEL_5:
  v6 = *(a1 + 32 + 8 * v5);
  v41 = v5 + 1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = a2;
  v8 = 1 << *(v6 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v15 = v12;
LABEL_21:
    v18 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v19 = v18 | (v15 << 6);
    v20 = (*(v6 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    sub_E2FC(*(v6 + 56) + 32 * v19, &v42);
    *&v44 = v22;
    *(&v44 + 1) = v21;
    sub_E2DC(&v42, &v45);

LABEL_22:
    v42 = v44;
    v43[0] = v45;
    v43[1] = v46;
    v23 = *(&v44 + 1);
    if (!*(&v44 + 1))
    {
      memset(v48, 0, sizeof(v48));
      v47 = 0u;
LABEL_4:

      v5 = v41;
      if (v41 == v40)
      {
        return a2;
      }

      goto LABEL_5;
    }

    v24 = v42;
    sub_E2FC(v43, v48);
    *&v47 = v24;
    *(&v47 + 1) = v23;

    sub_E06AC(&v42);
    v25 = *(&v47 + 1);
    if (!*(&v47 + 1))
    {
      goto LABEL_4;
    }

    v26 = v47;
    sub_E2DC(v48, &v44);
    v27 = sub_4F538(v26, v25);
    v29 = a2[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_37;
    }

    v33 = v28;
    if (a2[3] < v32)
    {
      sub_236A58(v32, isUniquelyReferenced_nonNull_native & 1);
      v27 = sub_4F538(v26, v25);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_39;
      }

LABEL_29:
      if (v33)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v38 = v27;
    sub_23632C();
    v27 = v38;
    if (v33)
    {
LABEL_9:
      a2 = v49;
      v13 = 32 * v27;
      sub_E2FC(v49[7] + 32 * v27, &v42);
      sub_306C(&v44);

      v14 = a2[7];
      sub_306C((v14 + v13));
      sub_E2DC(&v42, (v14 + v13));
      goto LABEL_10;
    }

LABEL_30:
    a2 = v49;
    v49[(v27 >> 6) + 8] |= 1 << v27;
    v35 = (a2[6] + 16 * v27);
    *v35 = v26;
    v35[1] = v25;
    sub_E2DC(&v44, (a2[7] + 32 * v27));
    v36 = a2[2];
    v31 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v31)
    {
      goto LABEL_38;
    }

    a2[2] = v37;
LABEL_10:
    isUniquelyReferenced_nonNull_native = 1;
  }

  if (v11 <= v12 + 1)
  {
    v16 = v12 + 1;
  }

  else
  {
    v16 = v11;
  }

  v17 = v16 - 1;
  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      v10 = 0;
      v45 = 0u;
      v46 = 0u;
      v12 = v17;
      v44 = 0u;
      goto LABEL_22;
    }

    v10 = *(v6 + 64 + 8 * v15);
    ++v12;
    if (v10)
    {
      v12 = v15;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_2CEEE0();
  __break(1u);
  return result;
}

uint64_t sub_E06AC(uint64_t a1)
{
  v2 = sub_20410(&qword_350270, &qword_2D38A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void SearchForMedia.HandleIntentStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, void (*a2)(char *, uint64_t), void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v6 = v5;
  v44 = a5;
  v41 = a3;
  v42 = a4;
  v40 = a2;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v45 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  v39 = v9[2];
  v39(v14, v15, v8);

  v16 = sub_2CDFE0();
  v17 = sub_2CE670();

  v18 = os_log_type_enabled(v16, v17);
  v43 = v5;
  v46 = v8;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    ObjectType = a1;
    v48 = v20;
    *v19 = 136315138;
    sub_2CCFB0();
    v38 = a1;
    sub_E5FE0(&qword_34C170, 255, &type metadata accessor for App);
    v21 = sub_2CEE70();
    v23 = sub_3F08(v21, v22, &v48);

    *(v19 + 4) = v23;
    a1 = v38;
    _os_log_impl(&dword_0, v16, v17, "HandleIntentStrategy#makeIntentHandledResponse for app: %s", v19, 0xCu);
    sub_306C(v20);
    v6 = v43;

    v8 = v46;
  }

  v24 = v9[1];
  v24(v14, v8);
  v25 = v45;
  v39(v45, v15, v8);

  v26 = v40;
  v27 = v44;

  v28 = v41;
  v29 = sub_2CDFE0();
  v30 = sub_2CE670();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v41 = v9;
    v32 = v31;
    v33 = swift_slowAlloc();
    v48 = v33;
    *v32 = 136315138;
    ObjectType = swift_getObjectType();
    sub_20410(&qword_350278, &qword_2D38B0);
    v34 = sub_2CE2A0();
    v36 = sub_3F08(v34, v35, &v48);
    v40 = v24;
    v37 = v36;

    *(v32 + 4) = v37;
    _os_log_impl(&dword_0, v29, v30, "CommonViewProvider called for Intent: %s", v32, 0xCu);
    sub_306C(v33);
    v6 = v43;

    v40(v45, v46);
  }

  else
  {

    v24(v25, v46);
  }

  sub_E0BB8(_swiftEmptyArrayStorage, 0, v6, a1, v26, v42, v27, v28);
}