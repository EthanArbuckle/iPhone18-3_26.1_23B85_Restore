uint64_t sub_2EB8()
{
  sub_3058(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_306C((v0 + 80));
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_input, &qword_34E480, &qword_2D2280);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_audioFlowProvider));
  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_playFlowStrategy);

  v2 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_needsValueStrategy);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2F8C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 > 2u)
  {
    if (a8 != 3)
    {
      if (a8 != 4)
      {
        return;
      }
    }

    goto LABEL_8;
  }

  if (a8)
  {
    if (a8 != 1)
    {
      return;
    }

LABEL_8:

    return;
  }
}

void sub_3058(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 != 0xFF)
  {
    sub_2F8C(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_306C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_30B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_20410(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3128(uint64_t a1)
{
  v2 = sub_2C8EC0();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE000();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34C6B0, &qword_2D0700);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - v12;
  sub_2CCD50();
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_2CCD00();
  sub_30B8(&v37, &qword_34C6B8, &qword_2D0708);
  v14 = sub_2CB260();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_2CCD30();

  sub_30B8(v13, &qword_34C6B0, &qword_2D0700);
  sub_F3F4(a1, &v37, &qword_34C6C0, &qword_2D0710);
  v15 = *(&v38 + 1);
  if (*(&v38 + 1))
  {
    v16 = v39;
    sub_35E0(&v37, *(&v38 + 1));
    v17 = (*(v16 + 88))(v15, v16);
    v19 = v18;
    sub_306C(&v37);
    if (v19)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v20 = sub_3ED0(v6, static Logger.default);
      swift_beginAccess();
      v21 = v34;
      (*(v34 + 16))(v9, v20, v6);

      v22 = sub_2CDFE0();
      v23 = sub_2CE690();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v33 = v17;
        v25 = v21;
        v26 = v24;
        v27 = swift_slowAlloc();
        v32 = v2;
        v28 = v27;
        v36 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_3F08(v33, v19, &v36);
        _os_log_impl(&dword_0, v22, v23, "CatService#execute Found locale override: %s. Using for CAT execution", v26, 0xCu);
        sub_306C(v28);
        v2 = v32;

        (*(v25 + 8))(v9, v6);
      }

      else
      {

        (*(v21 + 8))(v9, v6);
      }

      sub_2C8E90();
      sub_2CCD10();

      (*(v35 + 8))(v5, v2);
      sub_2CCD20();
    }
  }

  else
  {
    sub_30B8(&v37, &qword_34C6C0, &qword_2D0710);
  }

  v29 = sub_2CCD40();

  return v29;
}

void *sub_35E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t CatService.executeDialog(for:parameters:bundle:globals:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v75 = a7;
  v74 = a6;
  v82 = a4;
  v80 = a2;
  v78 = a1;
  v9 = sub_2CDFD0();
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  v11 = __chkstk_darwin(v9);
  v73 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v12;
  __chkstk_darwin(v11);
  v84 = &v67 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v67 - v20;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v23 = v15[2];
  v72 = v22;
  v70 = v15 + 2;
  v69 = v23;
  v23(v21, v22, v14);

  v24 = a5;
  v25 = sub_2CDFE0();
  v26 = sub_2CE660();

  v27 = os_log_type_enabled(v25, v26);
  v83 = v15;
  v79 = a3;
  v76 = v24;
  v77 = v19;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v67 = v14;
    v29 = v24;
    v30 = v28;
    v31 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v30 = 136446722;
    v32 = sub_2CCCB0();
    v34 = sub_3F08(v32, v33, aBlock);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    v35 = sub_2CE210();
    v37 = sub_3F08(v35, v36, aBlock);

    *(v30 + 14) = v37;
    *(v30 + 22) = 2112;
    *(v30 + 24) = v29;
    *v31 = v29;
    v38 = v29;
    v14 = v67;
    _os_log_impl(&dword_0, v25, v26, "CatService#executeDialog %{public}s using params: %{public}s globals: %@", v30, 0x20u);
    sub_30B8(v31, &unk_34FC00, &unk_2D0150);

    swift_arrayDestroy();

    v68 = v83[1];
  }

  else
  {

    v68 = v15[1];
  }

  v68(v21, v14);
  v39 = v86;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v40 = qword_35F760;
  v41 = v84;
  sub_2CDFB0();
  v42 = v85;
  v43 = v73;
  (*(v85 + 16))(v73, v41, v39);
  v44 = (*(v42 + 80) + 33) & ~*(v42 + 80);
  v45 = (v71 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v47 = v39;
  v48 = v46;
  *(v46 + 16) = "catServiceInnerExecute";
  *(v46 + 24) = 22;
  *(v46 + 32) = 2;
  (*(v42 + 32))(v46 + v44, v43, v47);
  v49 = (v48 + v45);
  v50 = v75;
  *v49 = v74;
  v49[1] = v50;

  sub_2CE9E0();
  sub_2CDF90();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_13BD4;
  *(v51 + 24) = v48;
  v52 = v77;
  v69(v77, v72, v14);

  v53 = sub_2CDFE0();
  v54 = sub_2CE660();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "CatService#executeDialog CAT.execute ...", v55, 2u);
  }

  v68(v52, v14);
  v83 = objc_opt_self();
  v56 = v78;
  v57 = v80;
  v58 = sub_2CE260();
  v59 = v79;
  sub_E014(v79);
  isa = sub_2CE1F0().super.isa;

  sub_2CCCF0();
  v61 = sub_2CE1F0().super.isa;

  v62 = v81;
  v63 = *(v81 + 296);
  v64 = swift_allocObject();
  v64[2] = v62;
  v64[3] = v56;
  v64[4] = v57;
  v64[5] = v59;
  v64[6] = sub_13BD8;
  v64[7] = v51;
  aBlock[4] = sub_12EFC;
  aBlock[5] = v64;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_122F0;
  aBlock[3] = &unk_331208;
  v65 = _Block_copy(aBlock);

  [v83 execute:v82 catId:v58 parameters:isa globals:v61 callback:0 options:v63 completion:v65];
  _Block_release(v65);

  return (*(v85 + 8))(v84, v86);
}

uint64_t sub_3E48()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3E80()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_3ED0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_3F08(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3FD4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_E2FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_306C(v11);
  return v7;
}

unint64_t sub_3FD4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10160(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2CECF0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_40E0()
{
  v1 = *(v0 + 16);

  sub_306C((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_4120()
{
  sub_4154();

  return swift_deallocClassInstance();
}

uint64_t *sub_4154()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);
  v2 = v0[14];

  v3 = v0[15];

  sub_306C(v0 + 16);
  sub_306C(v0 + 21);
  sub_306C(v0 + 26);
  sub_306C(v0 + 31);
  return v0;
}

uint64_t sub_41B4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t CatService.__deallocating_deinit()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);
  sub_306C(v0 + 17);
  sub_306C(v0 + 22);
  sub_306C(v0 + 27);
  sub_306C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_4268(uint64_t *a1)
{
  v1084 = a1;
  v1 = sub_2CB3E0();
  v984 = *(v1 - 8);
  v985 = v1;
  v2 = *(v984 + 64);
  __chkstk_darwin(v1);
  v983 = &v940[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v986 = sub_2CA340();
  v1006 = *(v986 - 8);
  v4 = *(v1006 + 64);
  v5 = __chkstk_darwin(v986);
  v964 = &v940[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v974 = &v940[-v8];
  v9 = __chkstk_darwin(v7);
  v973 = &v940[-v10];
  __chkstk_darwin(v9);
  v1002 = &v940[-v11];
  v1038 = sub_2CA810();
  v1045 = *(v1038 - 8);
  v12 = v1045[8];
  v13 = __chkstk_darwin(v1038);
  v954 = &v940[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v953 = &v940[-v16];
  v17 = __chkstk_darwin(v15);
  v959 = &v940[-v18];
  v19 = __chkstk_darwin(v17);
  v969 = &v940[-v20];
  v21 = __chkstk_darwin(v19);
  v963 = &v940[-v22];
  v23 = __chkstk_darwin(v21);
  v978 = &v940[-v24];
  v25 = __chkstk_darwin(v23);
  v980 = &v940[-v26];
  v27 = __chkstk_darwin(v25);
  v995 = &v940[-v28];
  v29 = __chkstk_darwin(v27);
  v994 = &v940[-v30];
  v31 = __chkstk_darwin(v29);
  v1003 = &v940[-v32];
  __chkstk_darwin(v31);
  v1028 = &v940[-v33];
  v1016 = sub_2CD9F0();
  v1015 = *(v1016 - 8);
  v34 = *(v1015 + 64);
  __chkstk_darwin(v1016);
  v1014 = &v940[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_20410(&qword_34CC90, qword_2D40E0);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v1017 = &v940[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v38);
  v997 = &v940[-v40];
  v1029 = sub_2CAA00();
  v1022 = *(v1029 - 8);
  v41 = *(v1022 + 64);
  v42 = __chkstk_darwin(v1029);
  v998 = &v940[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v982 = &v940[-v44];
  v1024 = type metadata accessor for AcousticIDFlow.State(0);
  v45 = *(*(v1024 - 8) + 64);
  __chkstk_darwin(v1024);
  v1039 = &v940[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = sub_20410(&qword_34E480, &qword_2D2280);
  v48 = *(*(v47 - 8) + 64);
  v49 = __chkstk_darwin(v47 - 8);
  v993 = &v940[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = __chkstk_darwin(v49);
  v1009 = &v940[-v52];
  __chkstk_darwin(v51);
  v1051 = &v940[-v53];
  v1067 = sub_2CD4C0();
  v1058 = *(v1067 - 8);
  v54 = *(v1058 + 64);
  __chkstk_darwin(v1067);
  v1030 = &v940[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1059 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v56 = *(*(v1059 - 8) + 64);
  v57 = __chkstk_darwin(v1059);
  v966 = &v940[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = __chkstk_darwin(v57);
  v1011 = &v940[-v60];
  v61 = __chkstk_darwin(v59);
  v1037 = &v940[-v62];
  v63 = __chkstk_darwin(v61);
  v1044 = &v940[-v64];
  __chkstk_darwin(v63);
  v1043 = &v940[-v65];
  v66 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v67 = *(*(v66 - 8) + 64);
  v68 = __chkstk_darwin(v66 - 8);
  v960 = &v940[-((v69 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = __chkstk_darwin(v68);
  v970 = &v940[-v71];
  v72 = __chkstk_darwin(v70);
  v1033 = &v940[-v73];
  v74 = __chkstk_darwin(v72);
  v996 = &v940[-v75];
  v76 = __chkstk_darwin(v74);
  v1025 = &v940[-v77];
  v78 = __chkstk_darwin(v76);
  v1018 = &v940[-v79];
  v80 = __chkstk_darwin(v78);
  v1005 = &v940[-v81];
  v82 = __chkstk_darwin(v80);
  v1031 = &v940[-v83];
  v84 = __chkstk_darwin(v82);
  v1032 = &v940[-v85];
  v86 = __chkstk_darwin(v84);
  v1026 = &v940[-v87];
  v88 = __chkstk_darwin(v86);
  v1041 = &v940[-v89];
  v90 = __chkstk_darwin(v88);
  v1047 = &v940[-v91];
  v92 = __chkstk_darwin(v90);
  v1027 = &v940[-v93];
  v94 = __chkstk_darwin(v92);
  v1055 = &v940[-v95];
  __chkstk_darwin(v94);
  v1049 = &v940[-v96];
  v97 = sub_20410(&qword_34D360, &qword_2D11E0);
  v98 = *(*(v97 - 8) + 64);
  v99 = __chkstk_darwin(v97 - 8);
  v1023 = &v940[-((v100 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v99);
  v1056 = &v940[-v101];
  v1061 = type metadata accessor for AudioNLv3Intent();
  v1060 = *(v1061 - 8);
  v102 = *(v1060 + 64);
  v103 = __chkstk_darwin(v1061);
  v1019 = &v940[-((v104 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v103);
  v1062 = &v940[-v105];
  v1054 = sub_2C8E80();
  v1053 = *(v1054 - 8);
  v106 = *(v1053 + 64);
  __chkstk_darwin(v1054);
  v1052 = &v940[-((v107 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1076 = sub_2CDFD0();
  v1069 = *(v1076 - 1);
  v108 = *(v1069 + 8);
  __chkstk_darwin(v1076);
  v1064 = &v940[-((v109 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = sub_2CA870();
  v111 = *(v110 - 8);
  v112 = v111[8];
  v113 = __chkstk_darwin(v110);
  v981 = &v940[-((v114 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = __chkstk_darwin(v113);
  v1048 = &v940[-v116];
  v117 = __chkstk_darwin(v115);
  v1013 = &v940[-v118];
  v119 = __chkstk_darwin(v117);
  v1057 = &v940[-v120];
  v121 = __chkstk_darwin(v119);
  v1078 = &v940[-v122];
  v123 = __chkstk_darwin(v121);
  v1066 = &v940[-v124];
  v125 = __chkstk_darwin(v123);
  v1065 = &v940[-v126];
  v127 = __chkstk_darwin(v125);
  v1068 = &v940[-v128];
  v129 = __chkstk_darwin(v127);
  v131 = &v940[-v130];
  __chkstk_darwin(v129);
  v133 = &v940[-v132];
  v134 = sub_2CE000();
  v135 = *(v134 - 8);
  v136 = v135[8];
  v137 = __chkstk_darwin(v134);
  v991 = &v940[-((v138 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v139 = __chkstk_darwin(v137);
  v988 = &v940[-v140];
  v141 = __chkstk_darwin(v139);
  v957 = &v940[-v142];
  v143 = __chkstk_darwin(v141);
  v968 = &v940[-v144];
  v145 = __chkstk_darwin(v143);
  v1000 = &v940[-v146];
  v147 = __chkstk_darwin(v145);
  v1001 = &v940[-v148];
  v149 = __chkstk_darwin(v147);
  v989 = &v940[-v150];
  v151 = __chkstk_darwin(v149);
  v975 = &v940[-v152];
  v153 = __chkstk_darwin(v151);
  v990 = &v940[-v154];
  v155 = __chkstk_darwin(v153);
  v1021 = &v940[-v156];
  v157 = __chkstk_darwin(v155);
  v972 = &v940[-v158];
  v159 = __chkstk_darwin(v157);
  v946 = &v940[-v160];
  v161 = __chkstk_darwin(v159);
  v943 = &v940[-v162];
  v163 = __chkstk_darwin(v161);
  v945 = &v940[-v164];
  v165 = __chkstk_darwin(v163);
  v944 = &v940[-v166];
  v167 = __chkstk_darwin(v165);
  v950 = &v940[-v168];
  v169 = __chkstk_darwin(v167);
  v949 = &v940[-v170];
  v171 = __chkstk_darwin(v169);
  v948 = &v940[-v172];
  v173 = __chkstk_darwin(v171);
  v947 = &v940[-v174];
  v175 = __chkstk_darwin(v173);
  v956 = &v940[-v176];
  v177 = __chkstk_darwin(v175);
  v952 = &v940[-v178];
  v179 = __chkstk_darwin(v177);
  v958 = &v940[-v180];
  v181 = __chkstk_darwin(v179);
  v967 = &v940[-v182];
  v183 = __chkstk_darwin(v181);
  v965 = &v940[-v184];
  v185 = __chkstk_darwin(v183);
  v1012 = &v940[-v186];
  v187 = __chkstk_darwin(v185);
  v962 = &v940[-v188];
  v189 = __chkstk_darwin(v187);
  v987 = &v940[-v190];
  v191 = __chkstk_darwin(v189);
  v992 = &v940[-v192];
  v193 = __chkstk_darwin(v191);
  v1007 = &v940[-v194];
  v195 = __chkstk_darwin(v193);
  v1004 = &v940[-v196];
  v197 = __chkstk_darwin(v195);
  v955 = &v940[-v198];
  v199 = __chkstk_darwin(v197);
  v951 = &v940[-v200];
  v201 = __chkstk_darwin(v199);
  v976 = &v940[-v202];
  v203 = __chkstk_darwin(v201);
  v1040 = &v940[-v204];
  v205 = __chkstk_darwin(v203);
  v1042 = &v940[-v206];
  v207 = __chkstk_darwin(v205);
  v977 = &v940[-v208];
  v209 = __chkstk_darwin(v207);
  v971 = &v940[-v210];
  v211 = __chkstk_darwin(v209);
  v999 = &v940[-v212];
  v213 = __chkstk_darwin(v211);
  v979 = &v940[-v214];
  v215 = __chkstk_darwin(v213);
  v961 = &v940[-v216];
  v217 = __chkstk_darwin(v215);
  v1010 = &v940[-v218];
  v219 = __chkstk_darwin(v217);
  v1008 = &v940[-v220];
  v221 = __chkstk_darwin(v219);
  v1020 = &v940[-v222];
  v223 = __chkstk_darwin(v221);
  v1046 = &v940[-v224];
  v225 = __chkstk_darwin(v223);
  v1036 = &v940[-v226];
  v227 = __chkstk_darwin(v225);
  v1035 = &v940[-v228];
  v229 = __chkstk_darwin(v227);
  v1034 = &v940[-v230];
  __chkstk_darwin(v229);
  v232 = &v940[-v231];
  sub_2CB680();
  sub_2CB6A0();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v233 = sub_3ED0(v134, static Logger.default);
  swift_beginAccess();
  v234 = v135[2];
  v1071 = v233;
  v1073 = v135 + 2;
  v1072 = v234;
  v234(v232, v233, v134);
  v235 = v111[2];
  v235(v133, v1084, v110);
  v235(v131, v133, v110);
  v1075 = v111;
  v1063 = v131;
  v236 = v111[1];
  v236(v133, v110);
  v1074 = v232;
  v237 = sub_2CDFE0();
  v238 = sub_2CE690();
  v239 = os_log_type_enabled(v237, v238);
  v1070 = v110;
  v1081 = v111 + 1;
  v1077 = v236;
  v1083 = v134;
  v1082 = v135;
  v1080 = v111 + 2;
  v1079 = v235;
  if (v239)
  {
    v240 = swift_slowAlloc();
    v942 = swift_slowAlloc();
    v1106[0] = v942;
    *v240 = 136446722;
    v241 = sub_2CCCC0();
    v941 = v238;
    v243 = sub_3F08(v241, v242, v1106);

    *(v240 + 4) = v243;
    *(v240 + 12) = 2082;
    sub_2CBC60();
    sub_35E0(&v1107, v1108);
    v110 = v1070;
    *&v1085 = sub_2CBE60();
    *(&v1085 + 1) = v244;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v245 = sub_2CE2A0();
    v247 = v246;
    sub_306C(&v1107);
    v248 = sub_3F08(v245, v247, v1106);

    *(v240 + 14) = v248;
    *(v240 + 22) = 2080;
    v249 = v1063;
    v235(v1068, v1063, v110);
    v250 = sub_2CE2A0();
    v252 = sub_3F08(v250, v251, v1106);

    *(v240 + 24) = v252;
    v236(v249, v110);
    _os_log_impl(&dword_0, v237, v941, "AudioFlowProvider#makeFlow %{public}s for request id: %{public}s. Received parse: %s", v240, 0x20u);
    swift_arrayDestroy();

    v253 = v1074;
    v1074 = *(v1082 + 1);
    v1074(v253, v1083);
  }

  else
  {
    v236(v1063, v110);

    v254 = v1074;
    v1074 = v135[1];
    v1074(v254, v134);
  }

  sub_2CBC60();
  sub_35E0(&v1107, v1108);
  v255 = sub_2CBE60();
  if (v256)
  {
    v257 = v255;
  }

  else
  {
    v257 = 4144959;
  }

  if (v256)
  {
    v258 = v256;
  }

  else
  {
    v258 = 0xE300000000000000;
  }

  sub_306C(&v1107);
  sub_2CE9F0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v259 = swift_allocObject();
  *(v259 + 16) = xmmword_2D0090;
  *(v259 + 56) = &type metadata for String;
  *(v259 + 64) = sub_1087C();
  *(v259 + 32) = v257;
  *(v259 + 40) = v258;

  v260 = v1064;
  sub_2CDFC0();
  sub_2CDF90();

  (*(v1069 + 1))(v260, v1076);

  v1064 = sub_2CCC10();
  sub_2CCC00();
  sub_2CCBF0();

  sub_1945E4();
  sub_2CB360();
  v261 = v1065;
  v262 = v1084;
  v263 = v1079;
  v1079(v1065, v1084, v110);
  v264 = v1075;
  v1076 = v1075[11];
  v265 = (v1076)(v261, v110);
  LODWORD(v1069) = enum case for Parse.NLv3IntentPlusServerConversion(_:);
  if (v265 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (v264[12])(v261, v110);
    v266 = *&v261[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];
    v267 = sub_2CAFE0();
    (*(*(v267 - 8) + 8))(v261, v267);
    v268 = sub_2CA830();
    sub_2CEAE0();
    v270 = v269;

    v271 = v1083;
    if (v270)
    {
      v272 = v1083;
    }

    else
    {
      v1063 = v266;
      v273 = v1052;
      sub_2C8E70();
      v274 = sub_2C8E50();
      v276 = v275;
      (*(v1053 + 8))(v273, v1054);
      v277 = v1034;
      v1072(v1034, v1071, v271);
      swift_bridgeObjectRetain_n();
      v278 = sub_2CDFE0();
      v279 = sub_2CE690();
      v280 = os_log_type_enabled(v278, v279);
      v1065 = v276;
      if (v280)
      {
        v281 = swift_slowAlloc();
        v282 = swift_slowAlloc();
        *&v1107 = v282;
        *v281 = 136315138;

        v283 = sub_3F08(v274, v276, &v1107);

        *(v281 + 4) = v283;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_0, v278, v279, "AudioFlowProvider#makeFlow found nil intentId, updating to: %s", v281, 0xCu);
        sub_306C(v282);
        v271 = v1083;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v284 = v277;
      v272 = v271;
      v1074(v284, v271);
      v285 = v1035;
      v286 = sub_2CA830();
      v287 = [v286 _metadata];

      if (v287)
      {
        v288 = sub_2CE260();
        [v287 setIntentId:v288];
      }

      v1072(v285, v1071, v271);
      swift_retain_n();
      v289 = sub_2CDFE0();
      v290 = sub_2CE690();
      if (os_log_type_enabled(v289, v290))
      {
        v291 = swift_slowAlloc();
        v1063 = swift_slowAlloc();
        *&v1085 = v1063;
        *v291 = 136446210;
        v292 = sub_2CA830();
        v293 = sub_2CEAE0();
        v295 = v294;

        *&v1107 = v293;
        *(&v1107 + 1) = v295;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v296 = sub_2CE2A0();
        v298 = sub_3F08(v296, v297, &v1085);

        *(v291 + 4) = v298;

        _os_log_impl(&dword_0, v289, v290, "AudioFlowProvider#makeFlow Updated intentId: %{public}s", v291, 0xCu);
        sub_306C(v1063);
        v299 = v1083;

        v300 = v285;
        v272 = v299;
        v301 = v299;
      }

      else
      {

        v300 = v285;
        v301 = v272;
      }

      v1074(v300, v301);
      v110 = v1070;
      v262 = v1084;
    }

    v263 = v1079;
  }

  else
  {
    v1077(v261, v110);
    v272 = v1083;
  }

  v302 = v1066;
  v263(v1066, v262, v110);
  v303 = (v1076)(v302, v110);
  if (v303 == v1069)
  {
    (v1075[12])(v302, v110);
    v304 = *(v302 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v305 = sub_2CAFE0();
    (*(*(v305 - 8) + 8))(v302, v305);
    v306 = sub_2CA830();
    v307 = [v306 identifier];

    if (v307)
    {

      v262 = v1084;
      v263 = v1079;
      v308 = v272;
      v309 = v1078;
      v1079(v1078, v1084, v110);
    }

    else
    {
      v354 = v1052;
      sub_2C8E70();
      v355 = sub_2C8E50();
      v357 = v356;
      (*(v1053 + 8))(v354, v1054);
      v358 = v1036;
      v308 = v272;
      v1072(v1036, v1071, v272);
      swift_bridgeObjectRetain_n();
      v359 = sub_2CDFE0();
      v360 = sub_2CE690();
      if (os_log_type_enabled(v359, v360))
      {
        v361 = swift_slowAlloc();
        v362 = swift_slowAlloc();
        *&v1107 = v362;
        *v361 = 136315138;

        v363 = sub_3F08(v355, v357, &v1107);
        v1066 = v355;
        v364 = v363;

        *(v361 + 4) = v364;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_0, v359, v360, "AudioFlowProvider#makeFlow found nil identifier, updating to: %s", v361, 0xCu);
        sub_306C(v362);

        v308 = v1083;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v1074(v358, v308);
      v391 = sub_2CA830();
      v392 = sub_2CE260();
      [v391 setIdentifier:v392];

      v393 = v1046;
      v1072(v1046, v1071, v308);
      swift_retain_n();
      v394 = sub_2CDFE0();
      v395 = sub_2CE690();
      if (os_log_type_enabled(v394, v395))
      {
        v396 = swift_slowAlloc();
        v1066 = swift_slowAlloc();
        *&v1085 = v1066;
        *v396 = 136446210;
        v397 = sub_2CA830();
        v398 = [v397 identifier];

        if (v398)
        {
          v399 = sub_2CE270();
          v401 = v400;
        }

        else
        {
          v399 = 0;
          v401 = 0;
        }

        *&v1107 = v399;
        *(&v1107 + 1) = v401;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v499 = sub_2CE2A0();
        v501 = sub_3F08(v499, v500, &v1085);

        *(v396 + 4) = v501;

        _os_log_impl(&dword_0, v394, v395, "AudioFlowProvider#makeFlow Updated identifier: %{public}s", v396, 0xCu);
        sub_306C(v1066);

        v308 = v1083;
        v1074(v1046, v1083);
        v110 = v1070;
        v309 = v1078;
        v262 = v1084;
        v263 = v1079;
        v1079(v1078, v1084, v1070);
      }

      else
      {

        v1074(v393, v308);
        v110 = v1070;
        v262 = v1084;
        v263 = v1079;
        v309 = v1078;
        v1079(v1078, v1084, v1070);
      }
    }
  }

  else
  {
    v1077(v302, v110);
    v309 = v1078;
    v308 = v272;
    v263(v1078, v262, v110);
  }

  v310 = (v1076)(v309, v110);
  if (v310 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v311 = v263;
    v312 = v1068;
    v311(v1068, v262, v110);
    v313 = v1056;
    sub_2B6170(v312, v1056);
    if ((*(v1060 + 48))(v313, 1, v1061) == 1)
    {
      sub_30B8(v313, &qword_34D360, &qword_2D11E0);
      v314 = v1042;
      v1072(v1042, v1071, v308);
      v315 = sub_2CDFE0();
      v316 = sub_2CE680();
      if (os_log_type_enabled(v315, v316))
      {
        v317 = swift_slowAlloc();
        *v317 = 0;
        _os_log_impl(&dword_0, v315, v316, "AudioFlowProvider#makeFlow Fatal: Cannot get AudioNLv3Intent from NLv3IntentOnly parse", v317, 2u);
      }

      v1074(v314, v308);
LABEL_37:
      v318 = 0;
      goto LABEL_295;
    }

    sub_195164(v313, v1062, type metadata accessor for AudioNLv3Intent);
    sub_2CCC00();
    sub_2CCBE0();

    v334 = v1049;
    sub_2B7A00(v1049);
    v335 = v1058;
    v336 = *(v1058 + 104);
    v337 = v1055;
    v338 = v1067;
    v1075 = (v1058 + 104);
    v1079 = v336;
    v336(v1055, enum case for CommonAudio.Verb.directedAcousticId(_:), v1067);
    v339 = *(v335 + 56);
    v1080 = (v335 + 56);
    v1076 = v339;
    (v339)(v337, 0, 1, v338);
    v340 = *(v1059 + 48);
    v341 = v1043;
    sub_F3F4(v334, v1043, &qword_34D6B8, &qword_2D15B0);
    sub_F3F4(v337, &v341[v340], &qword_34D6B8, &qword_2D15B0);
    v342 = *(v335 + 48);
    if (v342(v341, 1, v338) == 1)
    {
      sub_30B8(v337, &qword_34D6B8, &qword_2D15B0);
      v343 = v1067;
      sub_30B8(v334, &qword_34D6B8, &qword_2D15B0);
      v344 = v342(&v341[v340], 1, v343);
      v345 = v1044;
      v346 = v1047;
      v347 = v342;
      if (v344 == 1)
      {
        sub_30B8(v341, &qword_34D6B8, &qword_2D15B0);
LABEL_79:
        v421 = v1020;
        v422 = v1083;
        v1072(v1020, v1071, v1083);
        v423 = sub_2CDFE0();
        v424 = sub_2CE690();
        if (os_log_type_enabled(v423, v424))
        {
          v425 = swift_slowAlloc();
          v426 = swift_slowAlloc();
          *&v1107 = v426;
          *v425 = 136446210;
          v427 = sub_2CCC80();
          v429 = sub_3F08(v427, v428, &v1107);

          *(v425 + 4) = v429;
          _os_log_impl(&dword_0, v423, v424, "AudioFlowDelegatePlugin#makeFlow %{public}s Returning acousticID flow", v425, 0xCu);
          sub_306C(v426);
        }

        v1074(v421, v422);
        v430 = sub_2CA7B0();
        v431 = *(*(v430 - 8) + 56);
        v432 = v1051;
        v431(v1051, 1, 1, v430);
        swift_storeEnumTagMultiPayload();
        sub_1338FC(&v1107);
        v433 = sub_2CC610();
        v434 = sub_2CC600();
        v1087 = &protocol witness table for ShazamSessionManager;
        v1086 = v433;
        *&v1085 = v434;
        v435 = sub_2C99F0();
        v1083 = sub_1396D0(v435);
        sub_2CA430();
        v436 = sub_2CB4A0();
        v437 = sub_2CB490();
        v1104 = &protocol witness table for SiriKitTaskLoggingProvider;
        v1103 = v436;
        *&v1102 = v437;
        v1100 = sub_2CC650();
        v1101 = &protocol witness table for SubscriptionProvider;
        sub_F390(&v1099);
        sub_2CC630();
        v1097 = sub_2CC2B0();
        v1098 = &protocol witness table for FeatureFlagProvider;
        sub_F390(&v1096);
        sub_2CC2A0();
        sub_133A2C(v1094);
        v438 = v1095;
        v439 = sub_F9A0(v1094, v1095);
        v1084 = v940;
        v440 = *(*(v438 - 8) + 64);
        __chkstk_darwin(v439);
        v442 = &v940[-((v441 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v443 + 16))(v442);
        v444 = *v442;
        v445 = type metadata accessor for SiriAudioOutputProvider();
        v1093 = &off_337EB0;
        v1092 = v445;
        v1091[0] = v444;
        v446 = type metadata accessor for AcousticIDFlow(0);
        v447 = *(v446 + 48);
        v448 = *(v446 + 52);
        v449 = swift_allocObject();
        v450 = sub_F9A0(v1091, v445);
        v1082 = v940;
        v451 = *(*(v445 - 8) + 64);
        __chkstk_darwin(v450);
        v453 = &v940[-((v452 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v454 + 16))(v453);
        v455 = *v453;
        v1090 = &off_337EB0;
        v1089 = v445;
        *&v1088 = v455;
        v456 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input;
        v431((v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input), 1, 1, v430);
        *(v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) = 0;
        *(v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_isInAmbient) = 0;
        swift_beginAccess();
        sub_1952BC(v432, v449 + v456, &qword_34E480, &qword_2D2280);
        swift_endAccess();
        sub_EEAC(&v1107, v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer);
        sub_EEAC(&v1085, v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager);
        type metadata accessor for AcousticIdCatDialogService();
        v457 = swift_allocObject();
        v457[2] = 0xD000000000000011;
        v457[3] = 0x80000000002DA8D0;
        v457[5] = 0xD000000000000010;
        v457[6] = 0x80000000002DDBD0;
        v457[4] = v1083;
        *(v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService) = v457;
        sub_EEAC(v1106, v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync);
        v458 = sub_2C9C10();
        v459 = *(v458 + 48);
        v460 = *(v458 + 52);
        swift_allocObject();
        v461 = sub_2C9BF0();
        sub_306C(v1106);
        sub_306C(&v1085);
        sub_306C(&v1107);
        sub_30B8(v432, &qword_34E480, &qword_2D2280);
        *(v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_viewFactory) = v461;
        sub_195164(v1039, v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state, type metadata accessor for AcousticIDFlow.State);
        sub_F338(v1105, v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher);
        sub_F338(&v1102, v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider);
        sub_F338(&v1099, v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider);
        sub_F338(&v1096, v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider);
        sub_F338(&v1088, v449 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider);
        sub_306C(v1091);
        sub_306C(v1094);
        *&v1107 = v449;
        sub_E960(&qword_3524C8, 255, type metadata accessor for AcousticIDFlow);
        v318 = sub_2C97B0();

        v462 = v1062;
LABEL_184:
        sub_FED50(v462);
        goto LABEL_185;
      }
    }

    else
    {
      v365 = v1027;
      sub_F3F4(v341, v1027, &qword_34D6B8, &qword_2D15B0);
      v1069 = v342;
      v366 = v342(&v341[v340], 1, v338);
      v345 = v1044;
      if (v366 != 1)
      {
        v416 = v1058;
        v417 = &v341[v340];
        v418 = v1030;
        (*(v1058 + 32))(v1030, v417, v338);
        sub_E960(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb);
        v419 = sub_2CE250();
        v420 = *(v416 + 8);
        v420(v418, v338);
        sub_30B8(v1055, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v1049, &qword_34D6B8, &qword_2D15B0);
        v420(v365, v1067);
        v343 = v1067;
        sub_30B8(v341, &qword_34D6B8, &qword_2D15B0);
        v346 = v1047;
        v347 = v1069;
        if (v419)
        {
          goto LABEL_79;
        }

LABEL_55:
        sub_2B7A00(v346);
        v367 = v1041;
        v1079(v1041, enum case for CommonAudio.Verb.determine(_:), v343);
        (v1076)(v367, 0, 1, v343);
        v368 = *(v1059 + 48);
        sub_F3F4(v346, v345, &qword_34D6B8, &qword_2D15B0);
        v369 = v1067;
        sub_F3F4(v367, v345 + v368, &qword_34D6B8, &qword_2D15B0);
        if (v347(v345, 1, v369) == 1)
        {
          sub_30B8(v367, &qword_34D6B8, &qword_2D15B0);
          v370 = v1067;
          sub_30B8(v346, &qword_34D6B8, &qword_2D15B0);
          if (v347(v345 + v368, 1, v370) == 1)
          {
            sub_30B8(v345, &qword_34D6B8, &qword_2D15B0);
LABEL_95:
            v483 = v1008;
            v484 = v1083;
            v1072(v1008, v1071, v1083);
            v485 = sub_2CDFE0();
            v486 = sub_2CE690();
            if (os_log_type_enabled(v485, v486))
            {
              v487 = swift_slowAlloc();
              v488 = swift_slowAlloc();
              *&v1107 = v488;
              *v487 = 136446210;
              v489 = sub_2CCC80();
              v491 = sub_3F08(v489, v490, &v1107);

              *(v487 + 4) = v491;
              _os_log_impl(&dword_0, v485, v486, "AudioFlowDelegatePlugin#makeFlow %{public}s Returning Ambiguous Determine flow", v487, 0xCu);
              sub_306C(v488);
            }

            v1074(v483, v484);
            v110 = v1070;
            v492 = v1062;
            v318 = sub_1386E8();
            sub_FED50(v492);
            goto LABEL_295;
          }
        }

        else
        {
          v404 = v1026;
          sub_F3F4(v345, v1026, &qword_34D6B8, &qword_2D15B0);
          if (v347(v345 + v368, 1, v369) != 1)
          {
            v478 = v1058;
            v479 = v345 + v368;
            v480 = v1030;
            (*(v1058 + 32))(v1030, v479, v369);
            sub_E960(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb);
            v481 = sub_2CE250();
            v482 = *(v478 + 8);
            v482(v480, v369);
            sub_30B8(v1041, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v1047, &qword_34D6B8, &qword_2D15B0);
            v482(v1026, v1067);
            v370 = v1067;
            sub_30B8(v345, &qword_34D6B8, &qword_2D15B0);
            if (v481)
            {
              goto LABEL_95;
            }

LABEL_73:
            v405 = v1032;
            sub_2B7A00(v1032);
            v406 = v1031;
            v1079(v1031, enum case for CommonAudio.Verb.like(_:), v370);
            (v1076)(v406, 0, 1, v370);
            v407 = *(v1059 + 48);
            v408 = v1037;
            sub_F3F4(v405, v1037, &qword_34D6B8, &qword_2D15B0);
            v409 = v1067;
            sub_F3F4(v406, &v408[v407], &qword_34D6B8, &qword_2D15B0);
            if (v347(v408, 1, v409) == 1)
            {
              sub_30B8(v406, &qword_34D6B8, &qword_2D15B0);
              v410 = v1037;
              v411 = v1067;
              sub_30B8(v405, &qword_34D6B8, &qword_2D15B0);
              if (v347(&v410[v407], 1, v411) == 1)
              {
                goto LABEL_93;
              }
            }

            else
            {
              v470 = v1005;
              sub_F3F4(v408, v1005, &qword_34D6B8, &qword_2D15B0);
              if (v347(&v408[v407], 1, v409) != 1)
              {
                v575 = v1058;
                v576 = &v408[v407];
                v577 = v1030;
                (*(v1058 + 32))(v1030, v576, v409);
                sub_E960(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb);
                LODWORD(v1069) = sub_2CE250();
                v578 = v470;
                v579 = *(v575 + 8);
                v579(v577, v409);
                sub_30B8(v1031, &qword_34D6B8, &qword_2D15B0);
                sub_30B8(v1032, &qword_34D6B8, &qword_2D15B0);
                v579(v578, v1067);
                v471 = v1025;
                v411 = v1067;
                sub_30B8(v1037, &qword_34D6B8, &qword_2D15B0);
                if (v1069)
                {
                  goto LABEL_181;
                }

LABEL_90:
                v472 = v1018;
                sub_2B7A00(v1018);
                v1079(v471, enum case for CommonAudio.Verb.unlike(_:), v411);
                v473 = v472;
                (v1076)(v471, 0, 1, v411);
                v474 = *(v1059 + 48);
                v475 = v347;
                v476 = v1011;
                sub_F3F4(v473, v1011, &qword_34D6B8, &qword_2D15B0);
                v477 = v1067;
                sub_F3F4(v471, &v476[v474], &qword_34D6B8, &qword_2D15B0);
                if (v475(v476, 1, v477) == 1)
                {
                  sub_30B8(v471, &qword_34D6B8, &qword_2D15B0);
                  sub_30B8(v473, &qword_34D6B8, &qword_2D15B0);
                  if (v475(&v476[v474], 1, v477) == 1)
                  {
                    v410 = v476;
LABEL_93:
                    sub_30B8(v410, &qword_34D6B8, &qword_2D15B0);
LABEL_181:
                    v639 = v1010;
                    v640 = v1083;
                    v1072(v1010, v1071, v1083);
                    v641 = sub_2CDFE0();
                    v642 = sub_2CE690();
                    if (os_log_type_enabled(v641, v642))
                    {
                      v643 = swift_slowAlloc();
                      v644 = swift_slowAlloc();
                      *&v1107 = v644;
                      *v643 = 136446210;
                      v645 = sub_2CCC80();
                      v647 = sub_3F08(v645, v646, &v1107);

                      *(v643 + 4) = v647;
                      _os_log_impl(&dword_0, v641, v642, "AudioFlowDelegatePlugin#makeFlow %{public}s Returning UpdateMediaAffinity flow", v643, 0xCu);
                      sub_306C(v644);
                    }

                    v1074(v639, v640);
                    v648 = v1062;
                    v318 = sub_192EB0(v1084);
                    v462 = v648;
                    goto LABEL_184;
                  }
                }

                else
                {
                  v533 = v996;
                  sub_F3F4(v476, v996, &qword_34D6B8, &qword_2D15B0);
                  if (v475(&v476[v474], 1, v477) != 1)
                  {
                    v634 = v1058;
                    v635 = &v476[v474];
                    v636 = v1030;
                    (*(v1058 + 32))(v1030, v635, v477);
                    sub_E960(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb);
                    v637 = sub_2CE250();
                    v638 = *(v634 + 8);
                    v638(v636, v477);
                    sub_30B8(v1025, &qword_34D6B8, &qword_2D15B0);
                    sub_30B8(v1018, &qword_34D6B8, &qword_2D15B0);
                    v638(v533, v477);
                    sub_30B8(v476, &qword_34D6B8, &qword_2D15B0);
                    if (v637)
                    {
                      goto LABEL_181;
                    }

LABEL_130:
                    v534 = v1062;
                    v535 = sub_2B7010();
                    v110 = v1070;
                    v536 = v1083;
                    if (v535)
                    {
                      v537 = v1050;
                      v538 = v1050[16];
                      sub_35E0(v1050 + 12, v1050[15]);
                      if (sub_2CC420())
                      {
                        v539 = v537[16];
                        sub_35E0(v537 + 12, v537[15]);
                        if (sub_2CC3F0())
                        {
                          v540 = v961;
                          v1072(v961, v1071, v536);
                          v541 = sub_2CDFE0();
                          v542 = sub_2CE690();
                          if (os_log_type_enabled(v541, v542))
                          {
                            v543 = swift_slowAlloc();
                            v544 = swift_slowAlloc();
                            *&v1107 = v544;
                            *v543 = 136446210;
                            v545 = sub_2CCC80();
                            v547 = sub_3F08(v545, v546, &v1107);

                            *(v543 + 4) = v547;
                            v110 = v1070;
                            _os_log_impl(&dword_0, v541, v542, "AudioFlowDelegatePlugin#makeFlow %{public}s Intent is ambiguous shuffle, pushing AmbiguousShuffleFlow", v543, 0xCu);
                            sub_306C(v544);
                          }

                          v1074(v540, v536);
                          v830 = v1062;
                          v831 = sub_13913C();
                          v318 = sub_137D70(v831);

                          sub_FED50(v830);
                          goto LABEL_295;
                        }
                      }

                      v649 = v979;
                      v1072(v979, v1071, v536);
                      v650 = sub_2CDFE0();
                      v651 = sub_2CE690();
                      if (os_log_type_enabled(v650, v651))
                      {
                        v652 = swift_slowAlloc();
                        *v652 = 0;
                        _os_log_impl(&dword_0, v650, v651, "AudioFlowDelegatePlugin#makeFlow Intent is ambiguous shuffle, but Siri X flag(s) are disabled. Continuing...", v652, 2u);
                      }

                      v1074(v649, v536);
                      v534 = v1062;
                    }

                    sub_E960(&qword_34F600, 255, type metadata accessor for AudioNLv3Intent);
                    if (sub_2CD980())
                    {
                      v1072(v999, v1071, v536);
                      v653 = sub_2CDFE0();
                      v654 = sub_2CE690();
                      if (os_log_type_enabled(v653, v654))
                      {
                        v655 = swift_slowAlloc();
                        *v655 = 0;
                        _os_log_impl(&dword_0, v653, v654, "AudioFlowDelegatePlugin#makeFlow#NLv3IntentOnly This is an AirPlay request without an app name, returning first audio play flow", v655, 2u);
                      }

                      v1074(v999, v536);
                      v656 = sub_2CA7B0();
                      v657 = v1051;
                      (*(*(v656 - 8) + 56))(v1051, 1, 1, v656);
                      v318 = sub_1362C8(v657);
                      sub_30B8(v657, &qword_34E480, &qword_2D2280);
                    }

                    else
                    {
                      sub_18F290(&v1107);
                      sub_35E0(&v1107, v1108);
                      v318 = sub_2CDC70();
                      sub_306C(&v1107);
                      if (!v318)
                      {
                        v727 = v1083;
                        v1072(v977, v1071, v1083);
                        v728 = sub_2CDFE0();
                        v729 = sub_2CE680();
                        if (os_log_type_enabled(v728, v729))
                        {
                          v730 = swift_slowAlloc();
                          *v730 = 0;
                          _os_log_impl(&dword_0, v728, v729, "AudioFlowDelegatePlugin#makeFlow Unable to get controls flow for parse", v730, 2u);
                        }

                        v1074(v977, v727);
                        sub_2CC230();
                        sub_2CC1E0();
                        sub_FED50(v534);
                        goto LABEL_37;
                      }

                      v658 = v971;
                      v659 = v1083;
                      v1072(v971, v1071, v1083);
                      v660 = sub_2CDFE0();
                      v661 = sub_2CE690();
                      if (os_log_type_enabled(v660, v661))
                      {
                        v662 = swift_slowAlloc();
                        v663 = swift_slowAlloc();
                        *&v1107 = v663;
                        *v662 = 136446210;
                        v664 = sub_2CCC80();
                        v666 = v534;
                        v667 = sub_3F08(v664, v665, &v1107);
                        v110 = v1070;

                        *(v662 + 4) = v667;
                        _os_log_impl(&dword_0, v660, v661, "AudioFlowDelegatePlugin#makeFlow %{public}s Returning controls frame from audio plugin", v662, 0xCu);
                        sub_306C(v663);

                        v1074(v658, v1083);
                        sub_FED50(v666);
                        goto LABEL_295;
                      }

                      v1074(v658, v659);
                    }

                    sub_FED50(v534);
                    goto LABEL_295;
                  }

                  sub_30B8(v1025, &qword_34D6B8, &qword_2D15B0);
                  sub_30B8(v473, &qword_34D6B8, &qword_2D15B0);
                  (*(v1058 + 8))(v533, v477);
                }

                sub_30B8(v476, &qword_34D6B0, &unk_2D4FC0);
                goto LABEL_130;
              }

              sub_30B8(v1031, &qword_34D6B8, &qword_2D15B0);
              v410 = v1037;
              v411 = v1067;
              sub_30B8(v1032, &qword_34D6B8, &qword_2D15B0);
              (*(v1058 + 8))(v470, v411);
            }

            sub_30B8(v410, &qword_34D6B0, &unk_2D4FC0);
            v471 = v1025;
            goto LABEL_90;
          }

          sub_30B8(v1041, &qword_34D6B8, &qword_2D15B0);
          v370 = v1067;
          sub_30B8(v346, &qword_34D6B8, &qword_2D15B0);
          (*(v1058 + 8))(v404, v370);
        }

        sub_30B8(v345, &qword_34D6B0, &unk_2D4FC0);
        goto LABEL_73;
      }

      sub_30B8(v1055, &qword_34D6B8, &qword_2D15B0);
      v343 = v1067;
      sub_30B8(v334, &qword_34D6B8, &qword_2D15B0);
      (*(v1058 + 8))(v365, v343);
      v346 = v1047;
      v347 = v1069;
    }

    sub_30B8(v341, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_55;
  }

  v319 = v1082;
  if (v310 == v1069)
  {
    v320 = v263;
    v321 = v1057;
    v320(v1057, v309, v110);
    (v1075[12])(v321, v110);
    v322 = *&v321[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];
    v323 = sub_2CA830();
    objc_opt_self();
    v324 = swift_dynamicCastObjCClass();
    v1076 = v323;
    if (v324)
    {
      v325 = v1040;
      v1072(v1040, v1071, v308);
      swift_retain_n();
      v326 = sub_2CDFE0();
      v327 = sub_2CE690();
      if (os_log_type_enabled(v326, v327))
      {
        v328 = swift_slowAlloc();
        v329 = swift_slowAlloc();
        *&v1085 = v329;
        *v328 = 136446210;
        v330 = sub_2CA830();
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v331 = sub_2CE770();
          v333 = v332;
        }

        else
        {

          v331 = 0;
          v333 = 0;
        }

        *&v1107 = v331;
        *(&v1107 + 1) = v333;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v548 = sub_2CE2A0();
        v550 = sub_3F08(v548, v549, &v1085);

        *(v328 + 4) = v550;

        _os_log_impl(&dword_0, v326, v327, "AudioFlowDelegatePlugin#makeFlow Using SiriKitFlowFrame for INPlayMediaIntent: %{public}s", v328, 0xCu);
        sub_306C(v329);

        v402 = v1040;
        v403 = v1083;
      }

      else
      {

        v402 = v325;
        v403 = v308;
      }

      v1074(v402, v403);
      v551 = v1033;
      v552 = sub_2CA830();
      objc_opt_self();
      v553 = swift_dynamicCastObjCClass();
      if (!v553)
      {

        v561 = sub_2CA7B0();
        v562 = v1051;
        (*(*(v561 - 8) + 56))(v1051, 1, 1, v561);
        v318 = sub_1362C8(v562);
        sub_30B8(v562, &qword_34E480, &qword_2D2280);

        v563 = sub_2CAFE0();
        (*(*(v563 - 8) + 8))(v1057, v563);
LABEL_185:
        v110 = v1070;
        goto LABEL_295;
      }

      *&v1107 = v553;
      sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      sub_2CC190();
      sub_2CCC00();
      sub_2CCBE0();

      v554 = v1068;
      v1079(v1068, v1084, v1070);
      v555 = v1023;
      sub_2B6170(v554, v1023);
      if ((*(v1060 + 48))(v555, 1, v1061) == 1)
      {
        sub_30B8(v555, &qword_34D360, &qword_2D11E0);
        v556 = v1004;
        v557 = v1083;
        v1072(v1004, v1071, v1083);
        v558 = sub_2CDFE0();
        v559 = sub_2CE680();
        if (os_log_type_enabled(v558, v559))
        {
          v560 = swift_slowAlloc();
          *v560 = 0;
          _os_log_impl(&dword_0, v558, v559, "AudioFlowProvider#makeFlow Fatal: Cannot get AudioNLv3Intent from NLv3IntentPlusServerConversion parse", v560, 2u);
          v557 = v1083;
        }

        else
        {
        }

        v1074(v556, v557);
        v580 = sub_2CAFE0();
        (*(*(v580 - 8) + 8))(v1057, v580);
        v318 = 0;
        goto LABEL_294;
      }

      v564 = v555;
      v565 = v1019;
      sub_195164(v564, v1019, type metadata accessor for AudioNLv3Intent);
      sub_1D04A0();
      v566 = v1083;
      if (v567)
      {
        v568 = v1070;
        v1079(v1068, v1084, v1070);
        v569 = v1051;
        sub_2CA7A0();
        v570 = sub_2CA7B0();
        (*(*(v570 - 8) + 56))(v569, 0, 1, v570);
        v318 = sub_138BA8(v569);
        v110 = v568;

        sub_30B8(v569, &qword_34E480, &qword_2D2280);
        sub_FED50(v565);
        v571 = sub_2CAFE0();
        (*(*(v571 - 8) + 8))(v1057, v571);
        goto LABEL_295;
      }

      sub_E960(&qword_34F600, 255, type metadata accessor for AudioNLv3Intent);
      if (sub_2CD980())
      {
        v581 = v976;
        v1072(v976, v1071, v566);
        v582 = sub_2CDFE0();
        v583 = sub_2CE690();
        if (os_log_type_enabled(v582, v583))
        {
          v584 = swift_slowAlloc();
          *v584 = 0;
          _os_log_impl(&dword_0, v582, v583, "AudioFlowDelegatePlugin#makeFlow#NLv3IntentPlusServerConversion This is an AirPlay request without an app name, returning first audio play flow", v584, 2u);
          v566 = v1083;
        }

LABEL_154:

        v1074(v581, v566);
LABEL_291:
        v791 = sub_2CA7B0();
        v792 = v1051;
        (*(*(v791 - 8) + 56))(v1051, 1, 1, v791);
        v318 = sub_1362C8(v792);
        sub_30B8(v792, &qword_34E480, &qword_2D2280);

        v793 = v1019;
LABEL_292:
        sub_FED50(v793);
LABEL_293:
        v794 = sub_2CAFE0();
        (*(*(v794 - 8) + 8))(v1057, v794);
        goto LABEL_294;
      }

      if ((sub_2CE7C0() & 1) == 0)
      {
        goto LABEL_291;
      }

      sub_2B7A00(v551);
      v674 = v1058;
      v675 = v970;
      v676 = v1067;
      (*(v1058 + 104))(v970, enum case for CommonAudio.Verb.shuffle(_:), v1067);
      (*(v674 + 56))(v675, 0, 1, v676);
      v677 = *(v1059 + 48);
      v678 = v966;
      sub_F3F4(v551, v966, &qword_34D6B8, &qword_2D15B0);
      v1084 = v677;
      sub_F3F4(v675, &v677[v678], &qword_34D6B8, &qword_2D15B0);
      v679 = *(v674 + 48);
      v680 = v676;
      if (v679(v678, 1, v676) == 1)
      {
        sub_30B8(v675, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v551, &qword_34D6B8, &qword_2D15B0);
        if (v679(&v1084[v678], 1, v676) == 1)
        {
          sub_30B8(v678, &qword_34D6B8, &qword_2D15B0);
LABEL_307:
          v844 = v1050;
          v845 = v1050[16];
          sub_35E0(v1050 + 12, v1050[15]);
          if (sub_2CC420())
          {
            v846 = v844[16];
            sub_35E0(v844 + 12, v844[15]);
            if (sub_2CC3F0())
            {
              v847 = v951;
              v848 = v1083;
              v1072(v951, v1071, v1083);
              v849 = sub_2CDFE0();
              v850 = sub_2CE690();
              if (os_log_type_enabled(v849, v850))
              {
                v851 = swift_slowAlloc();
                v1084 = swift_slowAlloc();
                *&v1107 = v1084;
                *v851 = 136446210;
                v852 = sub_2CCC80();
                v854 = v552;
                v855 = sub_3F08(v852, v853, &v1107);

                *(v851 + 4) = v855;
                v552 = v854;
                _os_log_impl(&dword_0, v849, v850, "AudioFlowDelegatePlugin#makeFlow %{public}s Intent is ambiguous shuffle, pushing AmbiguousShuffleFlow", v851, 0xCu);
                sub_306C(v1084);

                v856 = v847;
                v857 = v1083;
              }

              else
              {

                v856 = v847;
                v857 = v848;
              }

              v1074(v856, v857);
              v883 = v1019;
              v884 = sub_13913C();
              v318 = sub_137D70(v884);

              v793 = v883;
              goto LABEL_292;
            }
          }

          v581 = v955;
          v566 = v1083;
          v1072(v955, v1071, v1083);
          v582 = sub_2CDFE0();
          v858 = sub_2CE690();
          if (os_log_type_enabled(v582, v858))
          {
            v859 = swift_slowAlloc();
            *v859 = 0;
            _os_log_impl(&dword_0, v582, v858, "AudioFlowDelegatePlugin#makeFlow Intent is ambiguous shuffle, but Siri X flag(s) are disabled. Handling as play...", v859, 2u);
            v566 = v1083;
          }

          goto LABEL_154;
        }
      }

      else
      {
        v790 = v960;
        sub_F3F4(v678, v960, &qword_34D6B8, &qword_2D15B0);
        if (v679(&v1084[v678], 1, v680) != 1)
        {
          v841 = v1058;
          v842 = v1030;
          (*(v1058 + 32))(v1030, &v1084[v678], v680);
          sub_E960(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb);
          LODWORD(v1084) = sub_2CE250();
          v843 = *(v841 + 8);
          v843(v842, v680);
          sub_30B8(v970, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v551, &qword_34D6B8, &qword_2D15B0);
          v843(v960, v680);
          sub_30B8(v678, &qword_34D6B8, &qword_2D15B0);
          if ((v1084 & 1) == 0)
          {
            goto LABEL_291;
          }

          goto LABEL_307;
        }

        sub_30B8(v970, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v551, &qword_34D6B8, &qword_2D15B0);
        (*(v1058 + 8))(v790, v680);
      }

      sub_30B8(v678, &qword_34D6B0, &unk_2D4FC0);
      goto LABEL_291;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v385 = v1007;
      v1072(v1007, v1071, v308);

      v386 = sub_2CDFE0();
      v387 = sub_2CE690();
      if (os_log_type_enabled(v386, v387))
      {
        v388 = swift_slowAlloc();
        v389 = swift_slowAlloc();
        *v388 = 138543362;
        v390 = sub_2CA830();
        *(v388 + 4) = v390;
        *v389 = v390;

        _os_log_impl(&dword_0, v386, v387, "AudioFlowDelegatePlugin#makeFlow Using SiriKitFlowFrame for INAddMediaIntent: %{public}@", v388, 0xCu);
        sub_30B8(v389, &unk_34FC00, &unk_2D0150);

        v308 = v1083;
      }

      else
      {
      }

      v1074(v385, v308);
      v572 = sub_2CA830();
      objc_opt_self();
      v573 = swift_dynamicCastObjCClass();
      v574 = v573;
      if (v573)
      {
        *&v1107 = v573;
        sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
        sub_2CC190();
      }

      else
      {
      }

      sub_2CCC00();
      sub_2CCBE0();

      v585 = v1084;
      v586 = v1070;
      v1079(v1068, v1084, v1070);
      v587 = v1009;
      sub_2CA7A0();
      v588 = sub_2CA7B0();
      (*(*(v588 - 8) + 56))(v587, 0, 1, v588);
      v589 = v574;
      v590 = sub_1927D0(v585);
LABEL_222:
      v704 = v590;
      sub_2CA430();
      v318 = sub_193714(v587, &v1107, v574, v704);
      v110 = v586;

      sub_306C(&v1107);
      sub_30B8(v587, &qword_34E480, &qword_2D2280);
      v705 = sub_2CAFE0();
      (*(*(v705 - 8) + 8))(v1057, v705);
      goto LABEL_295;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v493 = v992;
      v1072(v992, v1071, v308);

      v494 = sub_2CDFE0();
      v495 = sub_2CE690();
      if (os_log_type_enabled(v494, v495))
      {
        v496 = swift_slowAlloc();
        v497 = swift_slowAlloc();
        *v496 = 138543362;
        v498 = sub_2CA830();
        *(v496 + 4) = v498;
        *v497 = v498;

        _os_log_impl(&dword_0, v494, v495, "AudioFlowDelegatePlugin#makeFlow Using SiriKitFlowFrame for INUpdateMediaAffinityIntent: %{public}@", v496, 0xCu);
        sub_30B8(v497, &unk_34FC00, &unk_2D0150);

        v308 = v1083;
      }

      else
      {
      }

      v1074(v493, v308);
      v696 = sub_2CA830();
      objc_opt_self();
      v697 = swift_dynamicCastObjCClass();
      v574 = v697;
      if (v697)
      {
        *&v1107 = v697;
        sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
        sub_2CC190();
      }

      else
      {
      }

      sub_2CCC00();
      sub_2CCBE0();

      v702 = v1084;
      v586 = v1070;
      v1079(v1068, v1084, v1070);
      v587 = v993;
      sub_2CA7A0();
      v703 = sub_2CA7B0();
      (*(*(v703 - 8) + 56))(v587, 0, 1, v703);
      v589 = v574;
      v590 = sub_192B40(v702);
      goto LABEL_222;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v668 = v323;
      v1072(v987, v1071, v308);

      v669 = sub_2CDFE0();
      v670 = sub_2CE690();
      if (os_log_type_enabled(v669, v670))
      {
        v671 = swift_slowAlloc();
        v672 = swift_slowAlloc();
        *v671 = 138543362;
        v673 = sub_2CA830();
        *(v671 + 4) = v673;
        *v672 = v673;

        _os_log_impl(&dword_0, v669, v670, "AudioFlowDelegatePlugin#makeFlow Using SiriKitFlowFrame for INSearchForMediaIntent: %{public}@", v671, 0xCu);
        sub_30B8(v672, &unk_34FC00, &unk_2D0150);

        v308 = v1083;
      }

      else
      {
      }

      v1074(v987, v308);
      v755 = sub_2CA830();
      objc_opt_self();
      v756 = swift_dynamicCastObjCClass();
      if (v756)
      {
        *&v1107 = v756;
        sub_334A0(0, &qword_34CB98, INSearchForMediaIntent_ptr);
        sub_2CC190();
        sub_2CCC00();
        sub_2CCBE0();
      }

      sub_20410(&qword_352470, &qword_2D4D68);
      if (qword_34BFE8 != -1)
      {
        swift_once();
      }

      *&v1107 = qword_35F7D0;
      v757 = qword_34BFF0;

      if (v757 != -1)
      {
        swift_once();
      }

      *&v1107 = sub_2CA8B0();
      sub_72068(&qword_352478, &qword_352470, &qword_2D4D68);
      v318 = sub_2C97B0();

      goto LABEL_293;
    }

    v750 = v962;
    v1072(v962, v1071, v308);
    v751 = sub_2CDFE0();
    v752 = sub_2CE680();
    if (os_log_type_enabled(v751, v752))
    {
      v753 = swift_slowAlloc();
      *v753 = 0;
      _os_log_impl(&dword_0, v751, v752, "AudioFlowDelegatePlugin#makeFlow Unexpected intent", v753, 2u);
    }

    v1074(v750, v308);
    sub_2CC230();
    sub_2CC1E0();

    v754 = sub_2CAFE0();
    (*(*(v754 - 8) + 8))(v1057, v754);
LABEL_257:
    v318 = 0;
    goto LABEL_185;
  }

  if (v310 == enum case for Parse.directInvocation(_:))
  {
    v348 = v263;
    v349 = v1048;
    v348(v1048, v309, v110);
    (v1075[12])(v349, v110);
    v350 = v1045[2];
    v351 = v1028;
    v352 = v1038;
    v350(v1028, v349, v1038);
    if (sub_2CA7F0() == 0xD000000000000033 && 0x80000000002DE4F0 == v353)
    {

LABEL_77:
      v413 = sub_2CA7B0();
      v414 = v1051;
      (*(*(v413 - 8) + 56))(v1051, 1, 1, v413);
      v318 = sub_1362C8(v414);
      sub_30B8(v414, &qword_34E480, &qword_2D2280);
      v415 = v1045[1];
      v415(v351, v352);
      v415(v1048, v352);
LABEL_294:
      v110 = v1070;
      goto LABEL_295;
    }

    v412 = sub_2CEEA0();

    if (v412)
    {
      goto LABEL_77;
    }

    v502 = v1045[1];
    v1076 = v1045 + 1;
    (v502)(v351, v352);
    v503 = v1003;
    v350(v1003, v1048, v352);
    if (sub_2CA7F0() == 0xD00000000000002CLL && 0x80000000002DA380 == v504)
    {

LABEL_171:
      v609 = v1000;
      v1072(v1000, v1071, v1083);
      v610 = v994;
      v611 = v1038;
      v350(v994, v503, v1038);
      v612 = v995;
      v350(v995, v610, v611);
      (v502)(v610, v611);
      v613 = sub_2CDFE0();
      v614 = sub_2CE690();
      if (os_log_type_enabled(v613, v614))
      {
        v615 = swift_slowAlloc();
        v1075 = v502;
        v616 = v615;
        v617 = swift_slowAlloc();
        *&v1107 = v617;
        *v616 = 136446210;
        v350(v980, v612, v611);
        v503 = v1003;
        v618 = sub_2CE2A0();
        v620 = sub_3F08(v618, v619, &v1107);

        *(v616 + 4) = v620;
        v621 = v611;
        v622 = v1075;
        (v1075)(v612, v621);
        _os_log_impl(&dword_0, v613, v614, "AudioFlowDelegatePlugin#makeFlow Using SiriKitFlow for invocation: %{public}s", v616, 0xCu);
        sub_306C(v617);

        v1074(v1000, v1083);
        v110 = v1070;
        v502 = v622;
      }

      else
      {
        (v502)(v612, v611);

        v1074(v609, v1083);
        v110 = v1070;
      }

      sub_238E4C(v503, &v1107);
      sub_2CA430();
      v681 = type metadata accessor for AudioFlowProvider();
      v682 = swift_allocObject();
      v1106[3] = v681;
      v1106[4] = &off_3367A0;
      v1106[0] = v682;
      if (qword_34C030 != -1)
      {
        swift_once();
      }

      v683 = static PlayMedia.flowStrategy;

      v684 = sub_F4B0();
      v685 = sub_F9A0(v1106, v681);
      v686 = *(*(v681 - 8) + 64);
      __chkstk_darwin(v685);
      v688 = &v940[-((v687 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v689 + 16))(v688);
      v690 = sub_FB74(&v1107, &v1085, *v688, v683, v684);
      sub_306C(v1106);
      *&v1085 = v690;
      type metadata accessor for DirectActionAudioSearchFlow();
      sub_E960(&qword_3538B0, 255, type metadata accessor for DirectActionAudioSearchFlow);
      v318 = sub_2C97B0();

      v691 = v1038;
      (v502)(v503, v1038);
      (v502)(v1048, v691);
      goto LABEL_295;
    }

    v608 = sub_2CEEA0();

    if (v608)
    {
      goto LABEL_171;
    }

    v706 = v1038;
    (v502)(v503, v1038);
    v707 = v978;
    v350(v978, v1048, v706);
    if (sub_2CA7F0() == 0xD000000000000030 && 0x80000000002DE530 == v708)
    {

LABEL_267:
      v759 = v968;
      v1072(v968, v1071, v1083);
      v760 = v963;
      v761 = v1038;
      v350(v963, v707, v1038);
      v762 = v969;
      v350(v969, v760, v761);
      v763 = v761;
      v764 = v502;
      (v502)(v760, v761);
      v765 = sub_2CDFE0();
      v766 = sub_2CE690();
      v767 = os_log_type_enabled(v765, v766);
      v1075 = v502;
      if (v767)
      {
        v768 = v762;
        v769 = swift_slowAlloc();
        v1084 = swift_slowAlloc();
        *&v1107 = v1084;
        *v769 = 136446210;
        v350(v980, v768, v763);
        v770 = sub_2CE2A0();
        v772 = sub_3F08(v770, v771, &v1107);

        *(v769 + 4) = v772;
        v764(v969, v763);
        _os_log_impl(&dword_0, v765, v766, "AudioFlowDelegatePlugin#makeFlow Got Acoustic ID reformation from appLaunch: %{public}s", v769, 0xCu);
        sub_306C(v1084);

        v773 = v968;
      }

      else
      {
        (v502)(v762, v763);

        v773 = v759;
      }

      v1074(v773, v1083);
      v796 = sub_2CA7B0();
      v797 = *(*(v796 - 8) + 56);
      v798 = v1051;
      v797(v1051, 1, 1, v796);
      swift_storeEnumTagMultiPayload();
      sub_1338FC(&v1107);
      v799 = sub_2CC610();
      v800 = sub_2CC600();
      v1087 = &protocol witness table for ShazamSessionManager;
      v1086 = v799;
      *&v1085 = v800;
      v801 = sub_2C99F0();
      v1083 = sub_1396D0(v801);
      sub_2CA430();
      v802 = sub_2CB4A0();
      v803 = sub_2CB490();
      v1104 = &protocol witness table for SiriKitTaskLoggingProvider;
      v1103 = v802;
      *&v1102 = v803;
      v1100 = sub_2CC650();
      v1101 = &protocol witness table for SubscriptionProvider;
      sub_F390(&v1099);
      sub_2CC630();
      v1097 = sub_2CC2B0();
      v1098 = &protocol witness table for FeatureFlagProvider;
      sub_F390(&v1096);
      sub_2CC2A0();
      sub_133A2C(v1094);
      v804 = v1095;
      v805 = sub_F9A0(v1094, v1095);
      v1084 = v940;
      v806 = *(*(v804 - 8) + 64);
      __chkstk_darwin(v805);
      v808 = &v940[-((v807 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v809 + 16))(v808);
      v810 = *v808;
      v811 = type metadata accessor for SiriAudioOutputProvider();
      v1093 = &off_337EB0;
      v1092 = v811;
      v1091[0] = v810;
      v812 = type metadata accessor for AcousticIDFlow(0);
      v813 = *(v812 + 48);
      v814 = *(v812 + 52);
      v815 = swift_allocObject();
      v816 = sub_F9A0(v1091, v811);
      v1082 = v940;
      v817 = *(*(v811 - 8) + 64);
      __chkstk_darwin(v816);
      v819 = &v940[-((v818 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v820 + 16))(v819);
      v821 = *v819;
      v1090 = &off_337EB0;
      v1089 = v811;
      *&v1088 = v821;
      v822 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input;
      v797((v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input), 1, 1, v796);
      *(v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) = 0;
      *(v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_isInAmbient) = 0;
      swift_beginAccess();
      sub_1952BC(v798, v815 + v822, &qword_34E480, &qword_2D2280);
      swift_endAccess();
      sub_EEAC(&v1107, v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer);
      sub_EEAC(&v1085, v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager);
      type metadata accessor for AcousticIdCatDialogService();
      v823 = swift_allocObject();
      v823[2] = 0xD000000000000011;
      v823[3] = 0x80000000002DA8D0;
      v823[5] = 0xD000000000000010;
      v823[6] = 0x80000000002DDBD0;
      v823[4] = v1083;
      *(v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService) = v823;
      sub_EEAC(v1106, v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync);
      v824 = sub_2C9C10();
      v825 = *(v824 + 48);
      v826 = *(v824 + 52);
      swift_allocObject();
      v827 = sub_2C9BF0();
      sub_306C(v1106);
      sub_306C(&v1085);
      sub_306C(&v1107);
      sub_30B8(v798, &qword_34E480, &qword_2D2280);
      *(v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_viewFactory) = v827;
      sub_195164(v1039, v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state, type metadata accessor for AcousticIDFlow.State);
      sub_F338(v1105, v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher);
      sub_F338(&v1102, v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider);
      sub_F338(&v1099, v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider);
      sub_F338(&v1096, v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider);
      sub_F338(&v1088, v815 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider);
      sub_306C(v1091);
      sub_306C(v1094);
      *&v1107 = v815;
      sub_E960(&qword_3524C8, 255, type metadata accessor for AcousticIDFlow);
      v318 = sub_2C97B0();

      v828 = v1038;
      v829 = v1075;
      (v1075)(v978, v1038);
      v829(v1048, v828);
      goto LABEL_185;
    }

    v758 = sub_2CEEA0();

    if (v758)
    {
      goto LABEL_267;
    }

    v837 = v1038;
    (v502)(v707, v1038);
    v838 = v959;
    (v1045[4])(v959, v1048, v837);
    if (sub_2CA7F0() == 0xD000000000000029 && 0x80000000002DE570 == v839)
    {

      v840 = v957;
LABEL_315:
      v1072(v840, v1071, v1083);
      v861 = v953;
      v862 = v838;
      v863 = v1038;
      v350(v953, v862, v1038);
      v864 = v954;
      v350(v954, v861, v863);
      (v502)(v861, v863);
      v865 = sub_2CDFE0();
      v866 = sub_2CE690();
      if (os_log_type_enabled(v865, v866))
      {
        v867 = swift_slowAlloc();
        v1075 = v502;
        v868 = v867;
        v869 = swift_slowAlloc();
        *&v1107 = v869;
        *v868 = 136446210;
        v350(v980, v864, v863);
        v870 = sub_2CE2A0();
        v872 = sub_3F08(v870, v871, &v1107);

        *(v868 + 4) = v872;
        v873 = v864;
        v874 = v1075;
        (v1075)(v873, v863);
        _os_log_impl(&dword_0, v865, v866, "AudioFlowDelegatePlugin#makeFlow Got PlayMediaShim invocation: %{public}s", v868, 0xCu);
        sub_306C(v869);

        v1074(v957, v1083);
        v502 = v874;
      }

      else
      {
        (v502)(v864, v863);

        v1074(v840, v1083);
      }

      v110 = v1070;
      v1079(v1068, v1084, v1070);
      v875 = v1051;
      sub_2CA7A0();
      v876 = sub_2CA7B0();
      (*(*(v876 - 8) + 56))(v875, 0, 1, v876);
      v877 = sub_1362C8(v875);
      sub_30B8(v875, &qword_34E480, &qword_2D2280);
      *&v1107 = v877;
      sub_2C95D0();
      v318 = sub_2C97B0();

      (v502)(v959, v863);
      goto LABEL_295;
    }

    v860 = sub_2CEEA0();

    v840 = v957;
    if (v860)
    {
      goto LABEL_315;
    }

    (v502)(v838, v1038);
    v110 = v1070;
    v308 = v1083;
    goto LABEL_270;
  }

  if (v310 == enum case for Parse.pommesResponse(_:))
  {
    v371 = v1013;
    v263(v1013, v309, v110);
    (v1075[12])(v371, v110);
    v372 = *v371;
    v373 = v1021;
    v1072(v1021, v1071, v308);
    v374 = v308;
    v375 = v372;
    v376 = sub_2CDFE0();
    v377 = sub_2CE690();
    if (os_log_type_enabled(v376, v377))
    {
      v378 = swift_slowAlloc();
      v379 = swift_slowAlloc();
      *&v1107 = v379;
      *v378 = 136315138;
      sub_2CDAD0();
      sub_2CDA50();
      v380 = sub_2CE420();
      v382 = v381;

      v383 = sub_3F08(v380, v382, &v1107);

      *(v378 + 4) = v383;

      _os_log_impl(&dword_0, v376, v377, "AudioFlowDelegatePlugin#makeFlow Received .pommesResponse parse: %s", v378, 0xCu);
      sub_306C(v379);
      v110 = v1070;

      v384 = v1021;
    }

    else
    {

      v384 = v373;
    }

    v1074(v384, v374);
    v505 = v1029;
    v506 = v1050[21];
    sub_35E0(v1050 + 17, v1050[20]);
    sub_2CB4F0();
    v507 = sub_2CDAF0();
    v508 = v1015;
    v509 = v1014;
    v510 = v1016;
    (*(v1015 + 104))(v1014, enum case for WarmupComponent.audioPluginWarmup(_:), v1016);
    v511 = sub_195470(v509, v507);

    (*(v508 + 8))(v509, v510);
    if (!v511)
    {
      sub_2CBC60();
      sub_35E0(&v1107, v1108);
      v512 = sub_2CBE60();
      if (v513)
      {
        v514 = v512;
      }

      else
      {
        v514 = 0;
      }

      if (v513)
      {
        v515 = v513;
      }

      else
      {
        v515 = 0xE000000000000000;
      }

      sub_306C(&v1107);
      sub_18F568(v514, v515);
    }

    sub_2CCC00();
    sub_2CCBE0();

    v516 = v1017;
    v517 = v1084;
    sub_2CA7E0();
    v518 = v1022;
    if ((*(v1022 + 48))(v516, 1, v505) == 1)
    {
      sub_30B8(v516, &qword_34CC90, qword_2D40E0);
    }

    else
    {
      v525 = v998;
      (*(v518 + 32))(v998, v516, v505);
      sub_2CCC00();
      sub_2CCBC0();

      (*(v518 + 8))(v525, v505);
    }

    v526 = v1083;
    sub_D2F98(v517, &v1085);
    if (v1086)
    {
      sub_420A4(&v1085, &v1107);
      sub_35E0(&v1107, v1108);
      if (sub_2CD980())
      {
        v527 = v990;
        v1072(v990, v1071, v526);
        v528 = sub_2CDFE0();
        v529 = sub_2CE690();
        if (os_log_type_enabled(v528, v529))
        {
          v530 = swift_slowAlloc();
          *v530 = 0;
          _os_log_impl(&dword_0, v528, v529, "AudioFlowDelegatePlugin#makeFlow#pommesResponse This is an AirPlay request without an app name, returning first audio play flow", v530, 2u);
        }

        v1074(v527, v526);
        v531 = sub_2CA7B0();
        v532 = v1051;
        (*(*(v531 - 8) + 56))(v1051, 1, 1, v531);
        v318 = sub_1362C8(v532);
        sub_30B8(v532, &qword_34E480, &qword_2D2280);
LABEL_218:

LABEL_219:
        sub_306C(&v1107);
        goto LABEL_295;
      }

      sub_306C(&v1107);
    }

    else
    {
      sub_30B8(&v1085, &qword_34CF98, &unk_2D1A40);
    }

    v591 = sub_2CA7C0();
    v592 = v1001;
    if (v591)
    {
      if (sub_435A0() || (sub_43C3C() & 1) != 0 || (sub_43638() & 1) != 0)
      {
        v593 = v1050[16];
        sub_35E0(v1050 + 12, v1050[15]);
        if (sub_2CC420())
        {
          v594 = v1050[16];
          sub_35E0(v1050 + 12, v1050[15]);
          if (sub_2CC3F0())
          {
            v595 = v1083;
            v1072(v975, v1071, v1083);
            v596 = sub_2CDFE0();
            v597 = sub_2CE690();
            if (os_log_type_enabled(v596, v597))
            {
              v598 = swift_slowAlloc();
              *v598 = 0;
              _os_log_impl(&dword_0, v596, v597, "AudioFlowDelegatePlugin#makeFlow Returning AmbiguousShuffleFlow", v598, 2u);
              v595 = v1083;
            }

            v1074(v975, v595);
            v599 = *sub_35E0(v1050 + 2, v1050[5]);
            sub_133EE4(&v1107);
            sub_35E0(&v1107, v1108);
            v600 = sub_2C97B0();
            v318 = sub_137D70(v600);

            sub_306C(&v1107);
            goto LABEL_295;
          }
        }

        v601 = v989;
        v526 = v1083;
        v1072(v989, v1071, v1083);
        v602 = sub_2CDFE0();
        v603 = sub_2CE690();
        if (os_log_type_enabled(v602, v603))
        {
          v604 = swift_slowAlloc();
          *v604 = 0;
          _os_log_impl(&dword_0, v602, v603, "AudioFlowDelegatePlugin#makeFlow Task is shuffle::MediaItem parse, but Siri X flag(s) are disabled. Falling through to PommesResponseFlow...", v604, 2u);
          v605 = v1083;

          v606 = v601;
          v526 = v605;
          v607 = v605;
        }

        else
        {

          v606 = v601;
          v607 = v526;
        }

        v1074(v606, v607);
      }

      else
      {
      }
    }

    v1072(v592, v1071, v526);
    v698 = sub_2CDFE0();
    v699 = sub_2CE690();
    if (os_log_type_enabled(v698, v699))
    {
      v700 = swift_slowAlloc();
      *v700 = 0;
      _os_log_impl(&dword_0, v698, v699, "AudioFlowDelegatePlugin#makeFlow Returning PommesResponseFlow", v700, 2u);
    }

    v1074(v592, v526);
    v701 = *sub_35E0(v1050 + 2, v1050[5]);
    sub_133EE4(&v1107);
    sub_35E0(&v1107, v1108);
    v318 = sub_2C97B0();
    goto LABEL_218;
  }

  v463 = v1029;
  if (v310 != enum case for Parse.uso(_:))
  {
    if (v310 == enum case for Parse.ifClientAction(_:))
    {
      v519 = v981;
      v263(v981, v309, v110);
      (v1075[12])(v519, v110);
      v520 = v986;
      (*(v1006 + 32))(v1002, v519, v986);
      v521 = v983;
      sub_2CA330();
      v522 = sub_2CB3D0();
      v524 = v523;
      (*(v984 + 8))(v521, v985);
      if (v522 == 0x64656D5F79616C70 && v524 == 0xEA00000000006169)
      {
      }

      else
      {
        v709 = sub_2CEEA0();

        if ((v709 & 1) == 0)
        {
          (*(v1006 + 8))(v1002, v520);
          goto LABEL_270;
        }
      }

      v710 = v988;
      v1072(v988, v1071, v308);
      v711 = v1006;
      v712 = *(v1006 + 16);
      v713 = v973;
      v712(v973, v1002, v520);
      v714 = v974;
      v712(v974, v713, v520);
      v717 = *(v711 + 8);
      v715 = v711 + 8;
      v716 = v717;
      (v717)(v713, v520);
      v718 = sub_2CDFE0();
      v719 = sub_2CE690();
      if (os_log_type_enabled(v718, v719))
      {
        v720 = swift_slowAlloc();
        v1006 = v715;
        v721 = v720;
        *&v1107 = swift_slowAlloc();
        v1076 = v716;
        v722 = v1107;
        *v721 = 136446210;
        v712(v964, v714, v520);
        v723 = sub_2CE2A0();
        v725 = sub_3F08(v723, v724, &v1107);

        *(v721 + 4) = v725;
        (v1076)(v714, v520);
        _os_log_impl(&dword_0, v718, v719, "AudioFlowDelegatePlugin#makeFlow Got ifClientAction play_media invocation: %{public}s", v721, 0xCu);
        sub_306C(v722);
        v716 = v1076;

        v726 = v988;
      }

      else
      {
        (v716)(v714, v520);

        v726 = v710;
      }

      v1074(v726, v1083);
      v110 = v1070;
      v1079(v1068, v1084, v1070);
      v747 = v1051;
      sub_2CA7A0();
      v748 = sub_2CA7B0();
      (*(*(v748 - 8) + 56))(v747, 0, 1, v748);
      v749 = sub_1362C8(v747);
      sub_30B8(v747, &qword_34E480, &qword_2D2280);
      *&v1107 = v749;
      sub_2C95D0();
      v318 = sub_2C97B0();

      (v716)(v1002, v520);
      goto LABEL_295;
    }

LABEL_270:
    v774 = v991;
    v1072(v991, v1071, v308);
    v775 = sub_2CDFE0();
    v776 = sub_2CE680();
    if (os_log_type_enabled(v775, v776))
    {
      v777 = swift_slowAlloc();
      *v777 = 0;
      _os_log_impl(&dword_0, v775, v776, "AudioFlowDelegatePlugin#makeFlow unexpected parse type. Rejecting...", v777, 2u);
    }

    v1074(v774, v308);
    sub_2CC230();
    sub_2CC1E0();
    goto LABEL_37;
  }

  v1072(v1012, v1071, v308);
  v464 = sub_2CDFE0();
  v465 = sub_2CE690();
  if (os_log_type_enabled(v464, v465))
  {
    v466 = swift_slowAlloc();
    *v466 = 0;
    _os_log_impl(&dword_0, v464, v465, "AudioFlowDelegatePlugin#makeFlow received .uso parse", v466, 2u);
    v262 = v1084;
  }

  v467 = (v319 + 8);
  v1074(v1012, v308);
  v468 = v997;
  sub_2CA7E0();
  v469 = v1022;
  if ((*(v1022 + 48))(v468, 1, v463) == 1)
  {
    sub_30B8(v468, &qword_34CC90, qword_2D40E0);
  }

  else
  {
    v623 = *(v469 + 32);
    v1084 = v467;
    v624 = v982;
    v623(v982, v468, v463);
    sub_2CCC00();
    sub_2CCBC0();

    v625 = v624;
    v467 = v1084;
    (*(v469 + 8))(v625, v463);
  }

  v626 = sub_2CA7C0();
  if (!v626)
  {
    v692 = v972;
    v1072(v972, v1071, v308);
    v693 = sub_2CDFE0();
    v694 = sub_2CE680();
    if (os_log_type_enabled(v693, v694))
    {
      v695 = swift_slowAlloc();
      *v695 = 0;
      _os_log_impl(&dword_0, v693, v694, "AudioFlowDelegatePlugin#makeFlow failed to get uso task from parse", v695, 2u);
    }

    v1074(v692, v308);
    goto LABEL_37;
  }

  v627 = v626;
  sub_2CCC00();
  sub_2CCBE0();

  sub_D2F98(v262, &v1085);
  if (v1086)
  {
    sub_420A4(&v1085, &v1107);
    sub_35E0(&v1107, v1108);
    if (sub_2CD980())
    {
      v628 = v965;
      v1072(v965, v1071, v308);
      v629 = sub_2CDFE0();
      v630 = sub_2CE690();
      if (os_log_type_enabled(v629, v630))
      {
        v631 = swift_slowAlloc();
        *v631 = 0;
        _os_log_impl(&dword_0, v629, v630, "AudioFlowDelegatePlugin#makeFlow#uso This is an AirPlay request without an app name, returning first audio play flow", v631, 2u);
      }

      v1074(v628, v308);
      v632 = sub_2CA7B0();
      v633 = v1051;
      (*(*(v632 - 8) + 56))(v1051, 1, 1, v632);
      v318 = sub_1362C8(v633);
      sub_30B8(v633, &qword_34E480, &qword_2D2280);

      goto LABEL_219;
    }

    sub_306C(&v1107);
  }

  else
  {
    sub_30B8(&v1085, &qword_34CF98, &unk_2D1A40);
  }

  if (sub_42190())
  {
    sub_2CBC60();
    sub_35E0(&v1107, v1108);
    v731 = sub_2CBE60();
    if (v732)
    {
      v733 = v731;
    }

    else
    {
      v733 = 0;
    }

    if (v732)
    {
      v734 = v732;
    }

    else
    {
      v734 = 0xE000000000000000;
    }

    sub_306C(&v1107);
    sub_18F568(v733, v734);

    v735 = v967;
    v1072(v967, v1071, v308);
    v736 = sub_2CDFE0();
    v737 = sub_2CE690();
    if (os_log_type_enabled(v736, v737))
    {
      v738 = swift_slowAlloc();
      *v738 = 0;
      _os_log_impl(&dword_0, v736, v737, "AudioFlowDelegatePlugin#makeFlow This is play request, returning first audio play flow", v738, 2u);
    }

    v1074(v735, v308);
    v739 = sub_2CA7B0();
    v740 = v1051;
    (*(*(v739 - 8) + 56))(v1051, 1, 1, v739);
    v318 = sub_1362C8(v740);
    sub_30B8(v740, &qword_34E480, &qword_2D2280);
LABEL_244:

    goto LABEL_295;
  }

  if ((sub_44BB4() & 1) == 0)
  {
    if (sub_435A0() || (sub_43C3C() & 1) != 0 || (sub_43638() & 1) != 0)
    {
      v778 = v1050;
      v779 = v1050[16];
      sub_35E0(v1050 + 12, v1050[15]);
      if (sub_2CC420())
      {
        v780 = v778[16];
        sub_35E0(v778 + 12, v778[15]);
        if (sub_2CC3F0())
        {
          sub_2CBC60();
          sub_35E0(&v1107, v1108);
          v781 = sub_2CBE60();
          if (v782)
          {
            v783 = v781;
          }

          else
          {
            v783 = 0;
          }

          if (v782)
          {
            v784 = v782;
          }

          else
          {
            v784 = 0xE000000000000000;
          }

          sub_306C(&v1107);
          sub_18F568(v783, v784);

          v785 = v952;
          v1072(v952, v1071, v308);
          v786 = sub_2CDFE0();
          v787 = sub_2CE690();
          if (os_log_type_enabled(v786, v787))
          {
            v788 = swift_slowAlloc();
            *v788 = 0;
            _os_log_impl(&dword_0, v786, v787, "AudioFlowDelegatePlugin#makeFlow uso parse returning AmbiguousShuffleFlow", v788, 2u);
          }

          v1074(v785, v308);
          v789 = sub_13913C();
          v318 = sub_137D70(v789);

          goto LABEL_244;
        }
      }

      v832 = v956;
      v1072(v956, v1071, v308);
      v833 = sub_2CDFE0();
      v834 = sub_2CE690();
      if (os_log_type_enabled(v833, v834))
      {
        v835 = swift_slowAlloc();
        *v835 = 0;
        v836 = "AudioFlowDelegatePlugin#makeFlow Task is shuffle::MediaItem parse, but Siri X flag(s) are disabled. Rejecting...";
LABEL_301:
        _os_log_impl(&dword_0, v833, v834, v836, v835, 2u);

        goto LABEL_302;
      }

      goto LABEL_302;
    }

    if (sub_4259C())
    {
      v878 = v1050[16];
      sub_35E0(v1050 + 12, v1050[15]);
      if (sub_2CC420())
      {
        v1084 = v467;
        v879 = v947;
        v1072(v947, v1071, v308);
        v880 = sub_2CDFE0();
        v881 = sub_2CE690();
        if (os_log_type_enabled(v880, v881))
        {
          v882 = swift_slowAlloc();
          *v882 = 0;
          _os_log_impl(&dword_0, v880, v881, "AudioFlowDelegatePlugin#makeFlow uso parse returning UpdateMediaAffinity flow", v882, 2u);
        }

        v1074(v879, v308);
        v318 = sub_192EB0(v262);
        goto LABEL_244;
      }

      v832 = v948;
      v1072(v948, v1071, v308);
      v833 = sub_2CDFE0();
      v834 = sub_2CE670();
      if (os_log_type_enabled(v833, v834))
      {
        v835 = swift_slowAlloc();
        *v835 = 0;
        v836 = "AudioFlowDelegatePlugin#makeFlow parse is uso affinity task, but music on on Siri X is disabled. Rejecting...";
        goto LABEL_301;
      }

LABEL_302:

      v1074(v832, v308);
      v318 = 0;
      goto LABEL_295;
    }

    if (sub_42E44())
    {
      v1084 = v627;
      v885 = v1050[16];
      sub_35E0(v1050 + 12, v1050[15]);
      if (sub_2CC420())
      {
        v1072(v949, v1071, v308);
        v886 = sub_2CDFE0();
        v887 = sub_2CE690();
        if (os_log_type_enabled(v886, v887))
        {
          v888 = swift_slowAlloc();
          *v888 = 0;
          _os_log_impl(&dword_0, v886, v887, "AudioFlowDelegatePlugin#makeFlow uso parse returning AcousticID flow", v888, 2u);
        }

        v1074(v949, v1083);
        v889 = sub_2CA7B0();
        v890 = *(*(v889 - 8) + 56);
        v891 = v1051;
        v890(v1051, 1, 1, v889);
        swift_storeEnumTagMultiPayload();
        sub_1338FC(&v1107);
        v892 = sub_2CC610();
        v893 = sub_2CC600();
        v1087 = &protocol witness table for ShazamSessionManager;
        v1086 = v892;
        *&v1085 = v893;
        v894 = sub_2C99F0();
        v1082 = sub_1396D0(v894);
        sub_2CA430();
        v895 = sub_2CB4A0();
        v896 = sub_2CB490();
        v1104 = &protocol witness table for SiriKitTaskLoggingProvider;
        v1103 = v895;
        *&v1102 = v896;
        v1100 = sub_2CC650();
        v1101 = &protocol witness table for SubscriptionProvider;
        sub_F390(&v1099);
        sub_2CC630();
        v1097 = sub_2CC2B0();
        v1098 = &protocol witness table for FeatureFlagProvider;
        sub_F390(&v1096);
        sub_2CC2A0();
        sub_133A2C(v1094);
        v897 = v1095;
        v898 = sub_F9A0(v1094, v1095);
        v1083 = v940;
        v899 = *(*(v897 - 8) + 64);
        __chkstk_darwin(v898);
        v901 = &v940[-((v900 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v902 + 16))(v901);
        v903 = *v901;
        v904 = type metadata accessor for SiriAudioOutputProvider();
        v1093 = &off_337EB0;
        v1092 = v904;
        v1091[0] = v903;
        v905 = type metadata accessor for AcousticIDFlow(0);
        v906 = *(v905 + 48);
        v907 = *(v905 + 52);
        v908 = swift_allocObject();
        v909 = sub_F9A0(v1091, v904);
        v1080 = v940;
        v910 = *(*(v904 - 8) + 64);
        __chkstk_darwin(v909);
        v912 = &v940[-((v911 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v913 + 16))(v912);
        v914 = *v912;
        v1090 = &off_337EB0;
        v1089 = v904;
        *&v1088 = v914;
        v915 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input;
        v890((v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input), 1, 1, v889);
        *(v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) = 0;
        *(v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_isInAmbient) = 0;
        swift_beginAccess();
        sub_1952BC(v891, v908 + v915, &qword_34E480, &qword_2D2280);
        swift_endAccess();
        sub_EEAC(&v1107, v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer);
        sub_EEAC(&v1085, v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager);
        type metadata accessor for AcousticIdCatDialogService();
        v916 = swift_allocObject();
        v916[2] = 0xD000000000000011;
        v916[3] = 0x80000000002DA8D0;
        v916[5] = 0xD000000000000010;
        v916[6] = 0x80000000002DDBD0;
        v916[4] = v1082;
        *(v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService) = v916;
        sub_EEAC(v1106, v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync);
        v917 = sub_2C9C10();
        v918 = *(v917 + 48);
        v919 = *(v917 + 52);
        swift_allocObject();
        v920 = sub_2C9BF0();
        sub_306C(v1106);
        sub_306C(&v1085);
        sub_306C(&v1107);
        sub_30B8(v891, &qword_34E480, &qword_2D2280);
        *(v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_viewFactory) = v920;
        sub_195164(v1039, v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state, type metadata accessor for AcousticIDFlow.State);
        sub_F338(v1105, v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher);
        sub_F338(&v1102, v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider);
        sub_F338(&v1099, v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider);
        sub_F338(&v1096, v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider);
        sub_F338(&v1088, v908 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider);
        sub_306C(v1091);
        sub_306C(v1094);
        *&v1107 = v908;
        sub_E960(&qword_3524C8, 255, type metadata accessor for AcousticIDFlow);
        v318 = sub_2C97B0();

        goto LABEL_185;
      }

      v1072(v950, v1071, v308);
      v925 = sub_2CDFE0();
      v926 = sub_2CE670();
      if (os_log_type_enabled(v925, v926))
      {
        v927 = swift_slowAlloc();
        *v927 = 0;
        _os_log_impl(&dword_0, v925, v926, "AudioFlowDelegatePlugin#makeFlow parse is uso AcousticID task, but music on on Siri X is disabled. Rejecting...", v927, 2u);
      }

      v928 = v950;
      goto LABEL_355;
    }

    if (sub_42784())
    {
      v921 = v1050[16];
      sub_35E0(v1050 + 12, v1050[15]);
      if (sub_2CC420())
      {
        v1072(v944, v1071, v1083);
        v922 = sub_2CDFE0();
        v923 = sub_2CE690();
        if (os_log_type_enabled(v922, v923))
        {
          v924 = swift_slowAlloc();
          *v924 = 0;
          _os_log_impl(&dword_0, v922, v923, "AudioFlowDelegatePlugin#makeFlow uso parse returning Ambiguous Determine flow", v924, 2u);
        }

        v1074(v944, v1083);
        v318 = sub_1386E8();
LABEL_347:

        goto LABEL_185;
      }

      v1072(v945, v1071, v1083);
      v934 = sub_2CDFE0();
      v935 = sub_2CE670();
      if (os_log_type_enabled(v934, v935))
      {
        v936 = swift_slowAlloc();
        *v936 = 0;
        _os_log_impl(&dword_0, v934, v935, "AudioFlowDelegatePlugin#makeFlow parse is uso Determine task, but music on on Siri X is disabled. Rejecting...", v936, 2u);
      }

      v928 = v945;
    }

    else
    {
      v929 = *sub_35E0(v1050 + 2, v1050[5]);
      sub_133EE4(&v1107);
      sub_20410(&qword_3538B8, &qword_2D5F78);
      type metadata accessor for PommesResponseFlow();
      if (swift_dynamicCast())
      {
        v930 = v1085;
        if (sub_2A9A20())
        {
          v1072(v943, v1071, v1083);
          v931 = sub_2CDFE0();
          v932 = sub_2CE690();
          if (os_log_type_enabled(v931, v932))
          {
            v933 = swift_slowAlloc();
            *v933 = 0;
            _os_log_impl(&dword_0, v931, v932, "AudioFlowDelegatePlugin#makeFlow uso parse returning PommesResponseFlow", v933, 2u);
          }

          v1074(v943, v1083);
          *&v1107 = v930;
          sub_E960(&qword_3524E8, 255, type metadata accessor for PommesResponseFlow);
          v318 = sub_2C97B0();

          goto LABEL_347;
        }
      }

      v1072(v946, v1071, v1083);
      v937 = sub_2CDFE0();
      v938 = sub_2CE680();
      if (os_log_type_enabled(v937, v938))
      {
        v939 = swift_slowAlloc();
        *v939 = 0;
        _os_log_impl(&dword_0, v937, v938, "AudioFlowDelegatePlugin#makeFlow unexpected uso parse", v939, 2u);
      }

      v928 = v946;
    }

LABEL_355:
    v1074(v928, v1083);
    goto LABEL_257;
  }

  v741 = v958;
  v1072(v958, v1071, v308);
  v742 = sub_2CDFE0();
  v743 = sub_2CE690();
  if (os_log_type_enabled(v742, v743))
  {
    v744 = swift_slowAlloc();
    *v744 = 0;
    _os_log_impl(&dword_0, v742, v743, "AudioFlowDelegatePlugin#makeFlow resume+app request. Returning flow", v744, 2u);
  }

  v1074(v741, v308);
  v745 = sub_2CA7B0();
  v746 = v1051;
  (*(*(v745 - 8) + 56))(v1051, 1, 1, v745);
  v318 = sub_1362C8(v746);
  sub_30B8(v746, &qword_34E480, &qword_2D2280);

LABEL_295:
  v1077(v1078, v110);
  sub_2CB680();
  return v318;
}

id sub_CCDC()
{
  v0 = [objc_allocWithZone(INPlayMediaIntent) init];
  v1 = objc_allocWithZone(INSpeakerIDInfo);
  v2 = sub_2CE260();
  v3 = [v1 initWithSharedUserID:v2 speakerIDConfidence:3];

  v4 = [objc_allocWithZone(INPrivateMediaIntentData) initWithSpeakerIDInfo:v3 proxiedThirdPartyAppInfo:0 isAppAttributionRequired:0 useDialogMemoryForAttribution:0 isAppCorrection:0 fallbackUsername:0 wholeHouseAudioMetadata:0 nlConfidenceScore:0 nlConfidenceLevel:0 asrConfidenceScore:0 asrConfidenceLevel:0 resolvedSharedUserID:0];
  v5 = objc_allocWithZone(INPrivatePlayMediaIntentData);
  v6 = v4;
  isa = sub_2CE400().super.isa;
  v8 = [v5 initWithAppSelectionEnabled:0 appInferred:0 audioSearchResults:0 privateMediaIntentData:v6 appSelectionSignalsEnabled:0 appSelectionSignalsFrequencyDenominator:0 shouldSuppressCommonWholeHouseAudioRoutes:0 immediatelyStartPlayback:0 isAmbiguousPlay:0 isPersonalizedRequest:0 internalSignals:isa entityConfidenceSignalsEnabled:0 entityConfidenceSignalsFrequencyDenominatorInternal:0 entityConfidenceSignalsFrequencyDenominatorProd:0 entityConfidenceSignalsMaxItemsToDisambiguate:0];

  [v0 setPrivatePlayMediaIntentData:v8];
  return v0;
}

id sub_CE40(void (*a1)(char *), void *a2)
{
  v3 = v2;
  v148 = a2;
  v5 = sub_20410(&qword_34E480, &qword_2D2280);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v134 = &v129 - v7;
  v8 = sub_2C9EC0();
  v145 = *(v8 - 1);
  v146 = v8;
  v9 = *(v145 + 64);
  __chkstk_darwin(v8);
  v144 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  v137 = *(v11 - 8);
  v12 = *(v137 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v138 = v14;
  v139 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v143 = &v129 - v15;
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v132 = &v129 - v23;
  v24 = __chkstk_darwin(v22);
  v135 = &v129 - v25;
  v26 = __chkstk_darwin(v24);
  v136 = &v129 - v27;
  v28 = __chkstk_darwin(v26);
  v142 = &v129 - v29;
  __chkstk_darwin(v28);
  v31 = &v129 - v30;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v33 = v17[2];
  v147 = v32;
  v149 = v33;
  v150 = v17 + 2;
  v33(v31, v32, v16);
  v34 = sub_2CDFE0();
  v35 = sub_2CE670();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_0, v34, v35, "DirectActionAudioSearchFlowFrame#execute", v36, 2u);
  }

  v37 = v17[1];
  v37(v31, v16);
  v38 = sub_CCDC();
  v39 = v38;
  *(v156 + 9) = *(v3 + 57);
  v40 = v3[2];
  v154 = v3[1];
  v155 = v40;
  v156[0] = v3[3];
  if (BYTE8(v156[1]) != 1)
  {
    v149(v21, v147, v16);
    v50 = sub_2CDFE0();
    v51 = sub_2CE680();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "DirectActionAudioSearchFlowFrame#execute not an audioSearch direct invocation", v52, 2u);
    }

    v37(v21, v16);
    v53 = v144;
    sub_2C9EB0();
    a1(v53);

    return (*(v145 + 8))(v53, v146);
  }

  v133 = v38;
  v140 = v37;
  v141 = v16;
  v130 = a1;
  v131 = v17 + 1;
  v41 = v154;
  sub_2CCFB0();
  v42 = v155;
  v43 = v156[0];
  v44 = *&v156[1];
  sub_F3F4(&v154, &v151, &qword_34CCB0, &qword_2D5710);
  sub_100B8(v41._countAndFlagsBits, v41._object, v42, *(&v42 + 1), v43, *(&v43 + 1), v44, 1u);
  v45 = sub_2CCF80();
  v46 = v45;
  if ((*(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_state) & 1) == 0)
  {
    v129 = v45;
    sub_30B8(&v154, &qword_34CCB0, &qword_2D5710);
    v56 = v141;
    v55 = v142;
    v57 = v147;
    v149(v142, v147, v141);
    v58 = v133;
    v59 = sub_2CDFE0();
    v60 = sub_2CE670();

    v61 = os_log_type_enabled(v59, v60);
    v146 = v58;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v151.value._countAndFlagsBits = v63;
      *v62 = 136315138;
      v64 = sub_2CE770();
      v66 = sub_3F08(v64, v65, &v151.value._countAndFlagsBits);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_0, v59, v60, "DirectActionAudioSearchFlowFrame#execute direct invocation. Sending PlayMedia.NeedsValue prompt with intent %s", v62, 0xCu);
      sub_306C(v63);

      v67 = v142;
    }

    else
    {

      v67 = v55;
    }

    v140(v67, v56);
    v145 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_needsValueStrategy);
    v68 = [objc_opt_self() needsValue];
    v69 = swift_allocObject();
    swift_weakInit();
    v70 = swift_allocObject();
    v71 = v130;
    v70[2] = v69;
    v70[3] = v71;
    v72 = v149;
    v70[4] = v148;
    v73 = v136;
    v72(v136, v57, v56);
    v150 = v69;

    v74 = sub_2CDFE0();
    v75 = sub_2CE690();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v151.value._countAndFlagsBits = v77;
      *v76 = 136446210;
      *(v76 + 4) = sub_3F08(0x657449616964656DLL, 0xEA0000000000736DLL, &v151.value._countAndFlagsBits);
      _os_log_impl(&dword_0, v74, v75, "PlayMediaNeedsValueStrategy#makePromptForValue parameter: %{public}s", v76, 0xCu);
      sub_306C(v77);
    }

    v140(v73, v56);
    v78 = v143;
    v79 = v146;
    sub_1C9250(v146, 0x657449616964656DLL, 0xEA0000000000736DLL, v143);
    v80 = v145;
    v149 = *(v145 + 16);
    v81 = v139;
    sub_F3F4(v78, v139, &unk_353020, &unk_2D0970);
    v82 = (*(v137 + 80) + 80) & ~*(v137 + 80);
    v83 = swift_allocObject();
    v83[2] = 0x657449616964656DLL;
    v83[3] = 0xEA0000000000736DLL;
    v83[4] = v68;
    v83[5] = v80;
    v83[6] = v129;
    v83[7] = v79;
    v83[8] = sub_1C06E8;
    v83[9] = v70;
    sub_1C06F4(v81, v83 + v82);
    v151.value._countAndFlagsBits = v79;
    v84 = sub_D8B98();
    v85 = v79;
    v148 = v68;
    v86 = v84;

    if (sub_2CBFA0())
    {
      result = INMediaItemTypeGetName();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v87 = result;
      v88 = sub_2CE270();
      v90 = v89;
    }

    else
    {
      v88 = 0;
      v90 = 0xE000000000000000;
    }

    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0E40;
    *(inited + 32) = 0x6574656D61726170;
    *(inited + 40) = 0xE900000000000072;
    *(inited + 48) = 0x657449616964656DLL;
    *(inited + 56) = 0xEA0000000000736DLL;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0x707954616964656DLL;
    *(inited + 120) = &type metadata for String;
    *(inited + 88) = 0xE900000000000065;
    *(inited + 96) = v88;
    *(inited + 104) = v90;
    v98 = sub_112C0(inited);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v99 = *(v149 + 15);
    v152 = v86;
    v153 = &off_3381B8;
    v151.value._countAndFlagsBits = v85;
    v100 = v85;
    sub_101AC(v98, v129, &v151, sub_13DB8, v83);

    sub_30B8(v143, &unk_353020, &unk_2D0970);
    sub_30B8(&v151, &qword_34C6C0, &qword_2D0710);
  }

  v47 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_playMediaIntent);
  v48 = v141;
  v49 = v133;
  if (!v47)
  {
    sub_30B8(&v154, &qword_34CCB0, &qword_2D5710);
    v91 = v132;
    v149(v132, v147, v48);
    v92 = sub_2CDFE0();
    v93 = sub_2CE670();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v140;
    if (v94)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_0, v92, v93, "DirectActionAudioSearchFlowFrame#execute received nil playMediaIntent post prompt", v96, 2u);
      v48 = v141;
    }

    v95(v91, v48);
    v53 = v144;
    sub_2C9EB0();
    v130(v53);

    return (*(v145 + 8))(v53, v146);
  }

  if (v41._object)
  {
    v47;
    if (sub_2CBDC0() & 1) != 0 || (sub_2CBD80())
    {
      v151.value._countAndFlagsBits = 0;
      v151.value._object = 0xE000000000000000;
      sub_2CECB0(21);

      v151.value._countAndFlagsBits = 0xD000000000000013;
      v151.value._object = 0x80000000002DEC70;
      sub_2CE350(v41);
      sub_30B8(&v154, &qword_34CCB0, &qword_2D5710);
      v157._countAndFlagsBits = 0xD00000000000002ELL;
      v157._object = 0x80000000002DEC90;
      sub_2CEAA0(v151, v157);
    }

    else
    {
      sub_30B8(&v154, &qword_34CCB0, &qword_2D5710);
    }

    v48 = v141;
  }

  else
  {
    v101 = v47;
  }

  v102 = [v47 backingStore];
  objc_opt_self();
  v103 = swift_dynamicCastObjCClass();
  v104 = v135;
  if (v103)
  {
    v105 = [v103 privatePlayMediaIntentData];

    [v105 setAppInferred:0];
    v102 = v105;
    v48 = v141;
  }

  v149(v104, v147, v48);
  v106 = v47;
  v107 = sub_2CDFE0();
  v108 = sub_2CE670();

  if (os_log_type_enabled(v107, v108))
  {
    v129 = v46;
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v151.value._countAndFlagsBits = v150;
    *v109 = 136315394;
    v111 = v106;
    v112 = [v111 description];
    v113 = sub_2CE270();
    v115 = v114;

    v116 = sub_3F08(v113, v115, &v151.value._countAndFlagsBits);

    *(v109 + 4) = v116;
    *(v109 + 12) = 2112;
    v117 = [v111 launchId];
    if (v117)
    {
      v118 = v117;
      v119 = sub_2CE270();
      v121 = v120;

      sub_10C40();
      swift_allocError();
      *v122 = v119;
      v122[1] = v121;
      v117 = _swift_stdlib_bridgeErrorToNSError();
      v123 = v117;
    }

    else
    {
      v123 = 0;
    }

    *(v109 + 14) = v117;
    *v110 = v123;
    _os_log_impl(&dword_0, v107, v108, "DirectActionAudioSearchFlowFrame#execute handling intent post prompt and setting intent intent:%s launchId: %@", v109, 0x16u);
    sub_30B8(v110, &unk_34FC00, &unk_2D0150);

    sub_306C(v150);

    v124 = v135;
    v125 = v141;
  }

  else
  {

    v124 = v104;
    v125 = v48;
  }

  v140(v124, v125);
  v126 = v134;
  INPlayMediaIntent.toServerConversionParse()(v134);
  v127 = sub_2CA7B0();
  (*(*(v127 - 8) + 56))(v126, 0, 1, v127);
  sub_1362C8(v126);
  sub_30B8(v126, &qword_34E480, &qword_2D2280);
  v128 = v144;
  sub_2C9EA0();

  v130(v128);

  return (*(v145 + 8))(v128, v146);
}

uint64_t sub_DE90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DECC()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = *(v0 + 48);

  v8 = *(v0 + 72);

  v9 = sub_2CA000();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_E014(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_20410(&qword_34E1B0, &qword_2D1F10);
    v2 = sub_2CEDE0();
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
    sub_E2FC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_E2DC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_E2DC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_E2DC(v31, v32);
    result = sub_2CEC40(v2[5]);
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
    result = sub_E2DC(v32, (v2[7] + 32 * v10));
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

_OWORD *sub_E2DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_E2EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E2FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_E358(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v21[1] = a3;
  v5 = sub_2C9EC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v21[0] = v6;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "DirectActionAudioSearchFlowFrame#execute Dialog successfully generated, returning ongoing waiting for response", v18, 2u);
    v6 = v21[0];
  }

  (*(v11 + 8))(v14, v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_state) = 1;
  }

  sub_2C9E70();
  a4(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_E61C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E664()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_E758()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_E7F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_E838()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_E878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

void *sub_E8CC(uint64_t a1, uint64_t a2)
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

  sub_20410(&qword_34D3D8, &qword_2D26C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

__n128 sub_E940(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_E960(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_E9A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v56 = &v49 - v11;
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v54 = *(v5 + 16);
  v55 = v14;
  v54(v13, v14, v4);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v53 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v52 = a2;
    v20 = v19;
    v57 = v19;
    *v18 = 136446210;
    v21 = sub_2CCCC0();
    v50 = a1;
    v51 = v9;
    v23 = sub_3F08(v21, v22, &v57);
    v9 = v51;

    *(v18 + 4) = v23;
    _os_log_impl(&dword_0, v15, v16, "AudioFlowProvider#findFlowForX %{public}s reaching logic", v18, 0xCu);
    sub_306C(v20);

    v4 = v53;

    v24 = v5;
    a1 = v50;
  }

  else
  {

    v24 = v5;
  }

  v25 = *(v24 + 8);
  v25(v13, v4);
  sub_2CC230();
  sub_2CC1D0();
  if (sub_4268(a1))
  {
    v54(v56, v55, v4);
    v26 = sub_2CDFE0();
    v27 = sub_2CE690();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v4;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55 = v5;
      v31 = v30;
      v57 = v30;
      *v29 = 136446210;
      v32 = sub_2CCCC0();
      v34 = sub_3F08(v32, v33, &v57);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_0, v26, v27, "AudioFlowProvider#findFlowForX %{public}s returned flow", v29, 0xCu);
      sub_306C(v31);

      v35 = v56;
      v36 = v28;
    }

    else
    {

      v35 = v56;
      v36 = v4;
    }

    v25(v35, v36);
    sub_2C9820();
  }

  else
  {
    v54(v9, v55, v4);
    v37 = sub_2CDFE0();
    v38 = sub_2CE690();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v9;
      v53 = v4;
      v41 = v39;
      v42 = swift_slowAlloc();
      v57 = v42;
      *v41 = 136446210;
      v43 = sub_2CCCC0();
      v45 = sub_3F08(v43, v44, &v57);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_0, v37, v38, "AudioFlowProvider#findFlowForX %{public}s returned no flow", v41, 0xCu);
      sub_306C(v42);

      v46 = v40;
      v47 = v53;
    }

    else
    {

      v46 = v9;
      v47 = v4;
    }

    v25(v46, v47);
    return sub_2C9810();
  }
}

uint64_t sub_EEAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_EF10()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v5 = CATDefaultMode;
  v6 = sub_2CBC00();
  v7 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v8 = swift_allocObject();
  v31[3] = &type metadata for StringsBackedAppNameResolver;
  v31[4] = sub_2869C();
  v31[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v31[0] + 16);
  v30[3] = v6;
  v30[4] = &protocol witness table for MorphunProvider;
  v30[0] = v7;
  v29[3] = v0;
  v29[4] = &protocol witness table for FeatureFlagProvider;
  v9 = sub_F390(v29);
  (*(v1 + 16))(v9, v4, v0);
  *(v8 + 296) = v5;
  sub_EEAC(v29, v8 + 256);
  sub_EEAC(v31, v28);
  sub_EEAC(v30, v27);
  sub_EEAC(v32, v26);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v10 = sub_2CCA30();

  v11 = sub_2CCA20();
  v23[3] = v10;
  v23[4] = &protocol witness table for MultiUserConnectionProvider;
  v23[0] = v11;
  v22[3] = sub_2CB9E0();
  v22[4] = &protocol witness table for DeviceProvider;
  sub_F390(v22);
  sub_2CB9C0();
  sub_EEAC(v28, v8 + 16);
  sub_EEAC(v27, v8 + 216);
  sub_EEAC(v26, v8 + 56);
  sub_EEAC(v23, v8 + 96);
  sub_EEAC(v22, v8 + 176);
  sub_F3F4(v24, &v17, qword_34C708, &qword_2D1620);
  if (v18)
  {

    sub_30B8(v24, qword_34C708, &qword_2D1620);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    sub_F338(&v17, &v19);
  }

  else
  {
    sub_EEAC(v26, &v19);
    v12 = sub_2C9E60();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_2C9E50();
    v20 = v12;
    v21 = &protocol witness table for ContactsManager;

    *&v19 = v15;
    sub_30B8(v24, qword_34C708, &qword_2D1620);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    if (v18)
    {
      sub_30B8(&v17, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v19, v8 + 136);
  return v8;
}

uint64_t sub_F338(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_F350()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t *sub_F390(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_F3F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_20410(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_F45C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_F4B0()
{
  v28 = sub_EF10();
  v0 = sub_2CB4A0();
  v43 = v0;
  v44 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v42 = sub_2CB490();
  sub_2C9A00();
  v40[3] = sub_2CC2B0();
  v40[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v40);
  sub_2CC2A0();
  v39[3] = sub_2CC360();
  v39[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v39);
  sub_2CC350();
  if (qword_34C048 != -1)
  {
    swift_once();
  }

  v1 = qword_35F900;
  v2 = type metadata accessor for DialogHistoryProvider();
  v38[3] = v2;
  v38[4] = &off_33CAE0;
  v38[0] = v1;
  _s18NeedsValueStrategyCMa_0();
  v26 = swift_allocObject();
  v3 = sub_F9A0(v38, v2);
  v27 = &v23;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = *(v4 + 16);
  v24(&v23 - v6);
  v7 = *(&v23 - v6);
  v37[3] = v2;
  v37[4] = &off_33CAE0;
  v37[0] = v7;
  type metadata accessor for PlayMediaCatDialogService();
  v8 = swift_allocObject();
  v8[6] = 0xEF746E65746E4961;
  v25 = 0x80000000002DA8D0;
  v8[2] = 0xD000000000000011;
  v8[3] = 0x80000000002DA8D0;
  v8[4] = v28;
  v8[5] = 0x6964654D79616C50;
  sub_EEAC(v40, v36);
  sub_EEAC(v39, v35);
  sub_EEAC(v37, v33);
  sub_FA14(_swiftEmptyArrayStorage);

  v9 = sub_2CB490();
  v32[3] = v0;
  v32[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v32[0] = v9;
  sub_2CBC60();
  v10 = v34;
  v11 = sub_F9A0(v33, v34);
  v23 = &v23;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v30[3] = v2;
  v30[4] = &off_33CAE0;
  v30[0] = v16;
  type metadata accessor for PlayMediaDialogProvider();
  v17 = swift_allocObject();
  v18 = sub_F9A0(v30, v2);
  __chkstk_darwin(v18);
  v24(&v23 - v6);
  v19 = *(&v23 - v6);
  v29[3] = v2;
  v29[4] = &off_33CAE0;
  v29[0] = v19;
  v17[15] = v8;
  sub_EEAC(v36, (v17 + 16));
  sub_EEAC(v32, (v17 + 31));
  sub_EEAC(v29, (v17 + 21));
  sub_EEAC(v31, (v17 + 26));
  sub_EEAC(v35, (v17 + 3));
  v20 = sub_2CB490();
  v17[11] = v0;
  v17[12] = &protocol witness table for SiriKitTaskLoggingProvider;
  v17[8] = v20;
  sub_306C(v31);
  sub_306C(v35);
  sub_306C(v36);
  sub_306C(v41);
  sub_306C(v39);
  sub_306C(v40);
  sub_306C(v37);
  sub_306C(v32);
  sub_306C(v29);
  v17[13] = 0xD000000000000011;
  v17[14] = v25;
  v17[2] = v28;
  sub_306C(v30);
  sub_306C(v33);
  v21 = v26;
  *(v26 + 16) = v17;
  sub_F338(&v42, v21 + 24);
  sub_306C(v38);
  return v21;
}

uint64_t sub_F9A0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_FA14(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_20410(&qword_34E170, &qword_2D1EB8);
  v3 = sub_2CEDE0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_4F5F4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_4F5F4(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for PlayMediaDialogProvider()
{
  result = qword_3538F0;
  if (!qword_3538F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FB74(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v43 = a4;
  v42 = a2;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AudioFlowProvider();
  v52[3] = v12;
  v52[4] = &off_3367A0;
  v52[0] = a3;
  v13 = type metadata accessor for DirectActionAudioSearchFlow();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = sub_F9A0(v52, v12);
  v18 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v50 = v12;
  v51 = &off_3367A0;
  *&v49 = v22;
  *(v16 + 16) = 0u;
  v23 = (v16 + 16);
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0;
  *(v16 + 72) = -1;
  v24 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_input;
  v25 = sub_2CA7B0();
  (*(*(v25 - 8) + 56))(v16 + v24, 1, 1, v25);
  *(v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_playMediaIntent) = 0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v11, v26, v7);
  sub_F3F4(a1, &v46, &qword_34CCB0, &qword_2D5710);
  v27 = v7;
  v28 = sub_2CDFE0();
  v29 = sub_2CE670();
  sub_30B8(a1, &qword_34CCB0, &qword_2D5710);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45 = v31;
    *v30 = 136315138;
    v32 = a1[1];
    v46 = *a1;
    v47 = v32;
    v48[0] = a1[2];
    *(v48 + 9) = *(a1 + 41);
    v39 = v11;
    v40 = v27;
    sub_F3F4(a1, v44, &qword_34CCB0, &qword_2D5710);
    sub_20410(&qword_34CCB0, &qword_2D5710);
    v33 = sub_2CE2A0();
    v35 = sub_3F08(v33, v34, &v45);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_0, v28, v29, "DirectActionAudioSearchFlowFrame#init with useCase: %s", v30, 0xCu);
    sub_306C(v31);

    (*(v8 + 8))(v39, v40);
  }

  else
  {

    (*(v8 + 8))(v11, v27);
  }

  v36 = *(v16 + 32);
  v46 = *v23;
  v47 = v36;
  v48[0] = *(v16 + 48);
  *(v48 + 9) = *(v16 + 57);
  v37 = a1[1];
  *v23 = *a1;
  *(v16 + 32) = v37;
  *(v16 + 48) = a1[2];
  *(v16 + 57) = *(a1 + 41);
  sub_30B8(&v46, &qword_34CCB0, &qword_2D5710);
  sub_F338(v42, v16 + 80);
  *(v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_state) = 0;
  sub_F338(&v49, v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_audioFlowProvider);
  *(v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_playFlowStrategy) = v43;
  *(v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_needsValueStrategy) = v41;
  sub_306C(v52);
  return v16;
}

uint64_t type metadata accessor for DirectActionAudioSearchFlow()
{
  result = qword_3541D8;
  if (!qword_3541D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B8(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 > 2u)
  {
    if (a8 != 3)
    {
      if (a8 != 4)
      {
        return result;
      }

      v8 = result;

      v9 = v8;
    }
  }

  else if (a8)
  {
    if (a8 != 1)
    {
      return result;
    }
  }

  else
  {
    v10 = a3;
  }
}

char *sub_10160(uint64_t a1, unint64_t a2)
{
  v4 = sub_108D0(a1, a2);
  sub_10A04(&off_32F088);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

uint64_t sub_101AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC090;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000012;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000012, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000012;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_10838()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1087C()
{
  result = qword_34FF40;
  if (!qword_34FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34FF40);
  }

  return result;
}

char *sub_108D0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_E8CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2CECF0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2CE360();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_E8CC(v10, 0);
        result = sub_2CECA0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10A04(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_4F360(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10AF0()
{
  v1 = *v0;
  sub_10B60(v4);
  sub_35E0(v4, v4[3]);
  v2 = sub_2CA160();
  sub_306C(v4);
  return v2;
}

uint64_t sub_10B60@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_F3F4(v1 + 32, &v4, &qword_3528A0, &qword_2D5080);
  if (v5)
  {
    return sub_F338(&v4, a1);
  }

  sub_30B8(&v4, &qword_3528A0, &qword_2D5080);
  sub_14CD40(v1);
  sub_EEAC(a1, &v4);
  swift_beginAccess();
  sub_FECE8(&v4, v1 + 32, &qword_3528A0, &qword_2D5080);
  return swift_endAccess();
}

unint64_t sub_10C40()
{
  result = qword_3518F0;
  if (!qword_3518F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3518F0);
  }

  return result;
}

uint64_t DialogService.buildParams(with:app:intentDialogContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a1;
  v35 = a5;
  v31 = a4;
  v33 = a2;
  v7 = sub_20410(&qword_355900, &qword_2D7B58);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_112C0(_swiftEmptyArrayStorage);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_112C0(_swiftEmptyArrayStorage);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_112C0(_swiftEmptyArrayStorage);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_112C0(_swiftEmptyArrayStorage);
  if (sub_2CB460())
  {
    sub_2CB130();

    sub_2CD3D0();

    v15 = sub_2CD430();
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  }

  else
  {
    v16 = sub_2CD430();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  }

  v32 = v10;
  if (qword_34C010 != -1)
  {
    swift_once();
  }

  v30 = qword_3557D0;
  sub_20410(&qword_34F2A8, &qword_2D4990);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2D10E0;
  sub_F3F4(a3, &v40, &qword_34C6C0, &qword_2D0710);
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v5;
  v19 = v41;
  *(v18 + 32) = v40;
  *(v18 + 48) = v19;
  v20 = v33;
  *(v18 + 64) = v42;
  *(v18 + 72) = v20;
  *(v18 + 80) = v13;
  *(v17 + 32) = sub_11524;
  *(v17 + 40) = v18;
  sub_F3F4(a3, v38, &qword_34C6C0, &qword_2D0710);
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = v20;
  v22 = v38[1];
  *(v21 + 32) = v38[0];
  *(v21 + 48) = v22;
  *(v21 + 64) = v39;
  *(v21 + 72) = v11;
  *(v17 + 48) = sub_11E74;
  *(v17 + 56) = v21;
  sub_F3F4(a3, v36, &qword_34C6C0, &qword_2D0710);
  v23 = swift_allocObject();
  v24 = v36[1];
  *(v23 + 16) = v36[0];
  *(v23 + 32) = v24;
  *(v23 + 48) = v37;
  *(v23 + 56) = v5;
  *(v23 + 64) = v14;
  *(v17 + 64) = sub_228308;
  *(v17 + 72) = v23;
  sub_F3F4(a3, &v40, &qword_34C6C0, &qword_2D0710);
  v25 = swift_allocObject();
  *(v25 + 16) = v11;
  *(v25 + 24) = v13;
  *(v25 + 32) = v5;
  *(v25 + 40) = v14;
  v26 = v41;
  *(v25 + 48) = v40;
  *(v25 + 64) = v26;
  *(v25 + 80) = v42;
  *(v25 + 88) = v12;
  v27 = v35;
  v28 = v31;
  *(v25 + 96) = v34;
  *(v25 + 104) = v28;
  *(v25 + 112) = v27;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_2CCC70();

  sub_30B8(v32, &qword_355900, &qword_2D7B58);
}

uint64_t sub_11108()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11140()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[7])
  {
    sub_306C(v0 + 4);
  }

  v3 = v0[9];

  v4 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_111A0()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[7])
  {
    sub_306C(v0 + 4);
  }

  v3 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_111F8()
{
  if (v0[5])
  {
    sub_306C(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_11248()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  if (v0[9])
  {
    sub_306C(v0 + 6);
  }

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_112C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E1C0, &unk_2D7FD0);
    v3 = sub_2CEDE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_F3F4(v4, &v13, &qword_34CBA0, &unk_2D0FE0);
      v5 = v13;
      v6 = v14;
      result = sub_4F538(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_E2DC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_113F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = DialogService.buildIntentParams(for:with:)(a4, a5);
  swift_beginAccess();
  v12 = *(a2 + 16);
  *(a2 + 16) = v11;

  sub_F3F4(a4, v20, &qword_34C6C0, &qword_2D0710);
  v13 = v21;
  if (v21)
  {
    v14 = v22;
    sub_35E0(v20, v21);
    v15 = (*(v14 + 48))(v13, v14);
    sub_306C(v20);
  }

  else
  {
    sub_30B8(v20, &qword_34C6C0, &qword_2D0710);
    v15 = 0;
  }

  v16 = sub_228754(v15);

  swift_beginAccess();
  v17 = *(a6 + 16);
  *(a6 + 16) = v16;

  return v10(v18);
}

unint64_t DialogService.buildIntentParams(for:with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CD430();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CCF00();
  v34[0] = sub_1BE550();
  sub_227960();
  v33 = sub_2CCF10();

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0050;
  *(inited + 32) = 0x646E756F72477369;
  v32[1] = inited + 32;
  *(inited + 40) = 0xEB00000000676E69;
  sub_F3F4(a1, v34, &qword_34C6C0, &qword_2D0710);
  v9 = v35;
  if (v35)
  {
    v10 = v36;
    sub_35E0(v34, v35);
    v11 = (*(v10 + 8))(v9, v10) & 1;
    sub_306C(v34);
  }

  else
  {
    sub_30B8(v34, &qword_34C6C0, &qword_2D0710);
    v11 = 0;
  }

  *(inited + 48) = v11;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000000002DFDA0;
  sub_F3F4(a1, v34, &qword_34C6C0, &qword_2D0710);
  v12 = v35;
  if (v35)
  {
    v13 = v36;
    sub_35E0(v34, v35);
    if (a2)
    {
      v14 = sub_2CCF90();
      a2 = v15;
    }

    else
    {
      v14 = 0;
    }

    v17 = (*(v13 + 24))(v14, a2, v12, v13);

    v16 = v17 & 1;
    sub_306C(v34);
  }

  else
  {
    sub_30B8(v34, &qword_34C6C0, &qword_2D0710);
    v16 = 0;
  }

  *(inited + 96) = v16;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000020;
  *(inited + 136) = 0x80000000002DFDC0;
  sub_F3F4(a1, v34, &qword_34C6C0, &qword_2D0710);
  v18 = v35;
  if (v35)
  {
    v19 = v36;
    sub_35E0(v34, v35);
    v20 = (*(v19 + 40))(v18, v19) & 1;
    sub_306C(v34);
  }

  else
  {
    sub_30B8(v34, &qword_34C6C0, &qword_2D0710);
    v20 = 0;
  }

  *(inited + 144) = v20;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x80000000002DFDF0;
  if (sub_2CB460())
  {
    sub_2CB130();

    sub_2CD3D0();

    v21 = sub_2CD420();
    sub_2282AC(v7);
    v22 = v21 ^ 1;
  }

  else
  {
    v22 = 1;
  }

  *(inited + 192) = v22 & 1;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000000002DFE10;
  sub_F3F4(a1, v34, &qword_34C6C0, &qword_2D0710);
  v23 = v35;
  if (v35)
  {
    v24 = v36;
    sub_35E0(v34, v35);
    v25 = (*(v24 + 16))(v23, v24) & 1;
    sub_306C(v34);
  }

  else
  {
    sub_30B8(v34, &qword_34C6C0, &qword_2D0710);
    v25 = 0;
  }

  *(inited + 240) = v25;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x80000000002DFE30;
  v26 = DialogService.fallbackUsername(for:)(a1);
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v27)
  {
    v29 = v27;
  }

  *(inited + 288) = v28;
  *(inited + 296) = v29;
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0x656369766564;
  *(inited + 328) = 0xE600000000000000;
  *(inited + 360) = sub_20410(&qword_34CCD8, &unk_2D10D0);
  *(inited + 336) = v33;
  v30 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  return v30;
}

uint64_t sub_11A2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a2;
  v33 = a4;
  v8 = sub_2CDFD0();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  v10 = __chkstk_darwin(v8);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;

  if (a3)
  {
    v29 = sub_2CCF90();
    v31 = v17;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = sub_CEEA8;
  v18[3] = v16;
  v18[4] = a5;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_228358;
  *(v19 + 24) = v18;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  v22 = v30;
  (*(v30 + 16))(v11, v13, v8);
  v23 = (*(v22 + 80) + 33) & ~*(v22 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceBuildAppParams";
  *(v25 + 24) = 24;
  *(v25 + 32) = 2;
  (*(v22 + 32))(v25 + v23, v11, v8);
  v26 = (v25 + v24);
  *v26 = sub_228378;
  v26[1] = v19;

  sub_2CE9E0();
  sub_2CDF90();

  sub_11E84(v29, v31, v32, v33, sub_2283A4, v25);

  (*(v22 + 8))(v13, v8);
}

uint64_t sub_11D8C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_11DC8()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_11E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6)
{
  v28 = a1;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_229CD0;
  *(v17 + 24) = v16;
  if (a2)
  {
    sub_EEAC(a3 + 16, v35);
    sub_35E0(v35, v35[3]);
    sub_F3F4(a4, &v29, &qword_34C6C0, &qword_2D0710);
    v18 = *(&v30 + 1);

    if (v18)
    {
      sub_20410(&unk_3530B0, &qword_2D2270);
      sub_20410(&qword_355910, &qword_2D7B68);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
      }
    }

    else
    {
      sub_30B8(&v29, &qword_34C6C0, &qword_2D0710);
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
    }

    sub_F3F4(a4, &v29, &qword_34C6C0, &qword_2D0710);
    v25 = swift_allocObject();
    v26 = v30;
    *(v25 + 16) = v29;
    *(v25 + 32) = v26;
    *(v25 + 48) = v31;
    *(v25 + 56) = sub_229D0C;
    v27 = v28;
    *(v25 + 64) = v17;
    *(v25 + 72) = v27;
    *(v25 + 80) = a2;

    sub_2CBC50();

    sub_30B8(&v32, &qword_34E970, &qword_2D2910);
    sub_306C(v35);
  }

  else
  {
    v19 = a5;

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v20 = sub_3ED0(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v15, v20, v11);
    v21 = sub_2CDFE0();
    v22 = sub_2CE690();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "No app present, passing empty app parameter values for CAT", v23, 2u);
    }

    (*(v12 + 8))(v15, v11);
    *&v32 = sub_112C0(_swiftEmptyArrayStorage);
    v19(&v32);
  }
}

uint64_t sub_12298()
{
  if (v0[5])
  {
    sub_306C(v0 + 2);
  }

  v1 = v0[8];

  v2 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

void sub_122F0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_1237C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v112 = a8;
  v113 = a7;
  v13 = sub_2CA130();
  v108 = *(v13 - 8);
  v14 = *(v108 + 64);
  __chkstk_darwin(v13);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_20410(&unk_3519A0, &qword_2D0980);
  v17 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v111 = (&v99 - v18);
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v114 = v19;
  *&v115 = v20;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v109 = (&v99 - v25);
  v26 = [a1 meta];
  v27 = sub_2CE200();

  sub_12F0C(a4, a5, v27, a6);

  if (a2)
  {
    swift_errorRetain();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v28 = v114;
    v29 = sub_3ED0(v114, static Logger.default);
    swift_beginAccess();
    v30 = v115;
    v31 = v109;
    (*(v115 + 16))(v109, v29, v28);
    swift_errorRetain();
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v34 = 136446466;
      v35 = sub_2CCCB0();
      v37 = sub_3F08(v35, v36, &v116);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      swift_getErrorValue();
      v38 = sub_2CEEF0();
      v40 = sub_3F08(v38, v39, &v116);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_0, v32, v33, "CatService#executeDialog %{public}s Error evaluating CAT: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
    }

    (*(v30 + 8))(v31, v28);
    v41 = v111;
    *v111 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v113(v41);

    return sub_30B8(v41, &unk_3519A0, &qword_2D0980);
  }

  v105 = v24;
  v107 = a5;
  v104 = v16;
  v103 = v13;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v43 = v114;
  v44 = sub_3ED0(v114, static Logger.default);
  swift_beginAccess();
  v45 = v115;
  v46 = v105;
  (*(v115 + 16))(v105, v44, v43);
  v47 = a1;
  v48 = sub_2CDFE0();
  v49 = sub_2CE690();

  v50 = os_log_type_enabled(v48, v49);
  v51 = &off_349000;
  v106 = a4;
  v109 = v47;
  if (!v50)
  {
    v47 = &off_349000;

    (*(v45 + 8))(v46, v43);
    v52 = v104;
    goto LABEL_28;
  }

  v101 = v49;
  v102 = v48;
  v52 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  v100 = swift_slowAlloc();
  v116 = v100;
  *v52 = 136446722;
  v54 = sub_2CCCB0();
  v56 = sub_3F08(v54, v55, &v116);

  *(v52 + 4) = v56;
  *(v52 + 12) = 2114;
  v57 = [(SEL *)v47 dialog];
  sub_13AE0();
  v58 = sub_2CE410();

  if (v58 >> 62)
  {
    result = sub_2CEDA0();
    if (result)
    {
      goto LABEL_12;
    }

LABEL_18:

    v66 = 0;
    goto LABEL_19;
  }

  result = *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((v58 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  if (!*(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
LABEL_52:
    __break(1u);
    return result;
  }

  for (i = *(v58 + 32); ; i = sub_2CECD0())
  {
    v60 = i;

    v61 = [v60 fullPrint];

    v62 = sub_2CE270();
    v64 = v63;

    sub_10C40();
    swift_allocError();
    *v65 = v62;
    v65[1] = v64;
    v66 = _swift_stdlib_bridgeErrorToNSError();
LABEL_19:
    *(v52 + 14) = v66;
    *v53 = v66;
    *(v52 + 22) = 2114;
    v67 = [v47 v51[473]];
    v68 = sub_2CE410();

    if (v68 >> 62)
    {
      result = sub_2CEDA0();
      if (!result)
      {
LABEL_26:

        v76 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      result = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8));
      if (!result)
      {
        goto LABEL_26;
      }
    }

    if ((v68 & 0xC000000000000001) != 0)
    {
      v69 = sub_2CECD0();
    }

    else
    {
      if (!*(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_52;
      }

      v69 = *(v68 + 32);
    }

    v70 = v69;

    v71 = [v70 fullSpeak];

    v72 = sub_2CE270();
    v74 = v73;

    sub_10C40();
    swift_allocError();
    *v75 = v72;
    v75[1] = v74;
    v76 = _swift_stdlib_bridgeErrorToNSError();
LABEL_27:
    v47 = v51;
    *(v52 + 24) = v76;
    *(v53 + 8) = v76;
    v77 = v102;
    _os_log_impl(&dword_0, v102, v101, "CatService#executeDialog %{public}s Successfully evaluated dialog to Print: %{public}@ speak:%{public}@", v52, 0x20u);
    sub_20410(&unk_34FC00, &unk_2D0150);
    swift_arrayDestroy();

    sub_306C(v100);

    (*(v45 + 8))(v105, v43);
    v52 = v104;
LABEL_28:
    v53 = sub_20410(&unk_356F40, &unk_2D0740);
    v43 = swift_allocObject();
    v115 = xmmword_2D0090;
    *(v43 + 16) = xmmword_2D0090;
    v78 = [v109 v47[473]];
    sub_13AE0();
    v79 = sub_2CE410();

    v45 = v103;
    if (v79 >> 62)
    {
      v86 = sub_2CEDA0();
      v51 = v108;
      if (!v86)
      {
LABEL_35:

        v83 = 0;
        v85 = 0xE000000000000000;
        goto LABEL_36;
      }
    }

    else
    {
      v51 = v108;
      if (!*(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_35;
      }
    }

    if ((v79 & 0xC000000000000001) != 0)
    {
      v80 = sub_2CECD0();
    }

    else
    {
      if (!*(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_48;
      }

      v80 = *(v79 + 32);
    }

    v81 = v80;

    v82 = [v81 fullSpeak];

    v83 = sub_2CE270();
    v85 = v84;

LABEL_36:
    *(v43 + 32) = v83;
    *(v43 + 40) = v85;
    v53 = swift_allocObject();
    *(v53 + 16) = v115;
    v87 = v47[473];
    v47 = v109;
    v88 = [v109 v87];
    v89 = sub_2CE410();

    if (!(v89 >> 62))
    {
      if (!*(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8)))
      {
        break;
      }

      goto LABEL_38;
    }

    if (!sub_2CEDA0())
    {
      break;
    }

LABEL_38:
    if ((v89 & 0xC000000000000001) != 0)
    {
      v90 = sub_2CECD0();
      goto LABEL_41;
    }

    if (*(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8)))
    {
      v90 = *(v89 + 32);
LABEL_41:
      v91 = v90;

      v92 = [v91 fullPrint];

      v93 = sub_2CE270();
      v95 = v94;

      goto LABEL_44;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v93 = 0;
  v95 = 0xE000000000000000;
LABEL_44:
  *(v53 + 32) = v93;
  *(v53 + 40) = v95;

  sub_2CA0C0();
  v96 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
  v97 = v111;
  (v51[2])(v111, v52, v45);
  *(v97 + v96) = v47;
  swift_storeEnumTagMultiPayload();
  v98 = v47;
  v113(v97);
  sub_30B8(v97, &unk_3519A0, &qword_2D0980);
  return (v51[1])(v52, v45);
}

uint64_t sub_12F0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v92 = a4;
  v93 = a2;
  v6 = sub_20410(&qword_34C6F0, &qword_2D0750);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v83 - v8;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v83 - v17;
  __chkstk_darwin(v16);
  v20 = &v83 - v19;
  result = sub_13874(a3);
  if (v22)
  {
    v23 = result;
    v24 = v22;
    v89 = v18;
    v96[0] = result;
    v96[1] = v22;
    __chkstk_darwin(result);
    v82 = v96;
    if ((sub_13964(sub_13A68, &v80, &off_32F0B0) & 1) == 0)
    {
    }

    v90 = v15;
    v91 = a1;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v25 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    v26 = *(v11 + 16);
    v86 = v11 + 16;
    v87 = v25;
    v85 = v26;
    v26(v20, v25, v10);
    v27 = v11;
    v28 = v93;

    v29 = sub_2CDFE0();
    v30 = sub_2CE660();

    v31 = os_log_type_enabled(v29, v30);
    v88 = v9;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v96[0] = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_3F08(v91, v28, v96);
      *(v32 + 12) = 2080;
      v33 = sub_3F08(v23, v24, v96);

      *(v32 + 14) = v33;
      _os_log_impl(&dword_0, v29, v30, "CatService#catchAllForRadarFilingConsideration, catId: %s and category: %s, possible TTR candidate", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v34 = *(v27 + 8);
    v34(v20, v10);
    sub_2CC230();
    v35 = sub_2CC1F0();
    v37 = v92;
    v38 = v10;
    if (*(v92 + 16))
    {
      v39 = sub_4F538(v35, v36);
      v41 = v40;

      if (v41)
      {
        sub_E2FC(*(v37 + 56) + 32 * v39, v96);
        v42 = swift_dynamicCast();
        v43 = v94;
        if (!v42)
        {
          v43 = 0;
        }

        v84 = v43;
        if (v42)
        {
          v44 = v95;
        }

        else
        {
          v44 = 0;
        }

LABEL_18:
        v45 = sub_2CC210();
        if (*(v37 + 16))
        {
          v47 = sub_4F538(v45, v46);
          v49 = v48;

          if ((v49 & 1) == 0)
          {
            goto LABEL_29;
          }

          sub_E2FC(*(v37 + 56) + 32 * v47, v96);
          if (!swift_dynamicCast() || (v94 & 1) == 0)
          {
            goto LABEL_29;
          }

          v50 = sub_2CC200();
          if (*(v37 + 16))
          {
            v52 = sub_4F538(v50, v51);
            v54 = v53;

            if (v54)
            {
              sub_E2FC(*(v37 + 56) + 32 * v52, v96);
              sub_2CC8E0();
              if (swift_dynamicCast())
              {
                v92 = v44;
                v85(v89, v87, v38);
                v55 = sub_2CDFE0();
                v56 = sub_2CE670();
                if (os_log_type_enabled(v55, v56))
                {
                  v57 = swift_slowAlloc();
                  *v57 = 0;
                  _os_log_impl(&dword_0, v55, v56, "CatService#catchAllForRadarFilingConsideration SFA TTR attempt", v57, 2u);
                }

                v34(v89, v38);
                sub_2CC880();
                sub_2CC870();
                v58 = sub_2CD470();
                v59 = v88;
                (*(*(v58 - 8) + 56))(v88, 1, 1, v58);
                v82 = v93;
                v81 = v91;
                v80 = v92;
                sub_2CC220();

                v60 = v59;
                return sub_30B8(v60, &qword_34C6F0, &qword_2D0750);
              }
            }

LABEL_29:
            v61 = sub_2CC200();
            if (*(v37 + 16))
            {
              v63 = sub_4F538(v61, v62);
              v65 = v64;

              v66 = v91;
              if (v65)
              {
                sub_E2FC(*(v37 + 56) + 32 * v63, v96);
                if (swift_dynamicCast())
                {
                  v67 = v95;
LABEL_40:
                  v85(v90, v87, v38);
                  v74 = sub_2CDFE0();
                  v75 = sub_2CE670();
                  if (os_log_type_enabled(v74, v75))
                  {
                    v76 = swift_slowAlloc();
                    *v76 = 0;
                    _os_log_impl(&dword_0, v74, v75, "CatService#catchAllForRadarFilingConsideration TTR attempt", v76, 2u);
                    v66 = v91;
                  }

                  v34(v90, v38);
                  v77 = v93;
                  if (!v67)
                  {
                  }

                  v78 = sub_2CD470();
                  v79 = v88;
                  (*(*(v78 - 8) + 56))(v88, 1, 1, v78);
                  v81 = v66;
                  v82 = v77;
                  v80 = v44;
                  sub_2CC220();

                  v60 = v79;
                  return sub_30B8(v60, &qword_34C6F0, &qword_2D0750);
                }
              }
            }

            else
            {

              v66 = v91;
            }

            v68 = sub_2CC200();
            if (*(v37 + 16))
            {
              v70 = sub_4F538(v68, v69);
              v72 = v71;

              if (v72)
              {
                sub_E2FC(*(v37 + 56) + 32 * v70, v96);
                if (swift_dynamicCast())
                {
                  v96[0] = v94;
                  sub_2CEE70();
                  v67 = v73;
                  goto LABEL_40;
                }
              }
            }

            else
            {
            }

            v67 = 0;
            goto LABEL_40;
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    v84 = 0;
    v44 = 0;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1388C(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, uint64_t))
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_2CEC20();
  if (v5 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v7 = a2(v5, *(a1 + 36), 0, a1);

  return v7;
}

uint64_t sub_13910(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 56) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_13964(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_13A10(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2CEEA0() & 1;
  }
}

uint64_t sub_13A88(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2CEEA0() & 1;
  }
}

unint64_t sub_13AE0()
{
  result = qword_34C6D8;
  if (!qword_34C6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34C6D8);
  }

  return result;
}

uint64_t sub_13B2C(uint64_t a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + 32);

  return sub_13C10(a1, v5, v6, v10, v1 + v4, v8, v9);
}

uint64_t sub_13C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  return a6(a1);
}

uint64_t sub_13CD4(uint64_t a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_13C14(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_13D8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_13DB8(uint64_t a1)
{
  v3 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v5 = v1 + ((*(v3 + 80) + 80) & ~*(v3 + 80));
  return sub_13E44(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
}

uint64_t sub_13E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(__int128 *), uint64_t a9)
{
  v97 = a8;
  v94 = a6;
  v95 = a7;
  v88 = a4;
  v89 = a5;
  v87 = a3;
  v86 = a2;
  v85 = a1;
  v96 = a9;
  v79 = sub_2CCB20();
  v78 = *(v79 - 8);
  v9 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2CA910();
  v83 = *(v84 - 8);
  v11 = *(v83 + 64);
  __chkstk_darwin(v84);
  v90 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v13 = *(*(v80 - 8) + 64);
  v14 = __chkstk_darwin(v80);
  v81 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v82 = &v76 - v16;
  v17 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v93 = &v76 - v19;
  v20 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v92 = &v76 - v22;
  v23 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v91 = &v76 - v25;
  v26 = sub_2CCB30();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2CCAC0();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20410(&unk_3519A0, &qword_2D0980);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = (&v76 - v38);
  sub_F3F4(v85, &v76 - v38, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v39;
    (*(v32 + 104))(v35, enum case for AdditionalMetricsDescription.ModuleName.pmnvs(_:), v31);
    (*(v27 + 104))(v30, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v26);
    swift_getErrorValue();
    sub_2CEEF0();
    v90 = sub_2CCAF0();

    (*(v27 + 8))(v30, v26);
    (*(v32 + 8))(v35, v31);
    v41 = v89[7];
    v89 = sub_35E0(v89 + 3, v89[6]);
    v42 = enum case for ActivityType.failed(_:);
    v43 = sub_2C9C20();
    v44 = *(v43 - 8);
    v45 = v91;
    (*(v44 + 104))(v91, v42, v43);
    (*(v44 + 56))(v45, 0, 1, v43);
    v46 = sub_2CA130();
    v47 = v92;
    (*(*(v46 - 8) + 56))(v92, 1, 1, v46);
    v48 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v49 = sub_2C98F0();
    v50 = *(v49 - 8);
    v51 = v93;
    (*(v50 + 104))(v93, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v51, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v47, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v45, &qword_34CB88, &unk_2D0D90);
    *&v98 = v40;
    v101 = 1;
    swift_errorRetain();
    v97(&v98);
  }

  else
  {
    v52 = v82;
    sub_14A58(v39, v82, &qword_34C6E8, &unk_2D0FF0);
    sub_2CB5B0();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_2C9DE0();
    sub_30B8(&v98, &qword_34CC80, &qword_2D1520);
    (*(v32 + 104))(v35, enum case for AdditionalMetricsDescription.ModuleName.pmnvs(_:), v31);
    (*(v27 + 104))(v30, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v26);
    v53 = v78;
    v54 = v77;
    v55 = v79;
    (*(v78 + 104))(v77, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v79);
    v88 = sub_2CCB00();
    v87 = v56;
    (*(v53 + 8))(v54, v55);
    (*(v27 + 8))(v30, v26);
    (*(v32 + 8))(v35, v31);
    v57 = v89[7];
    sub_35E0(v89 + 3, v89[6]);
    v58 = enum case for ActivityType.resolveSlotNeedsValue(_:);
    v59 = sub_2C9C20();
    v60 = *(v59 - 8);
    v61 = v91;
    (*(v60 + 104))(v91, v58, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    v62 = v52;
    v63 = v81;
    sub_F3F4(v52, v81, &qword_34C6E8, &unk_2D0FF0);

    v64 = sub_2CA130();
    v65 = *(v64 - 8);
    v66 = v92;
    (*(v65 + 32))(v92, v63, v64);
    (*(v65 + 56))(v66, 0, 1, v64);
    v67 = enum case for SiriKitReliabilityCodes.success(_:);
    v68 = sub_2C98F0();
    v69 = *(v68 - 8);
    v70 = v93;
    (*(v69 + 104))(v93, v67, v68);
    (*(v69 + 56))(v70, 0, 1, v68);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v70, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v66, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v61, &qword_34CB88, &unk_2D0D90);
    v71 = v84;
    *(&v99 + 1) = v84;
    v100 = &protocol witness table for AceOutput;
    v72 = sub_F390(&v98);
    v73 = v83;
    v74 = v90;
    (*(v83 + 16))(v72, v90, v71);
    v101 = 0;
    v97(&v98);
    (*(v73 + 8))(v74, v71);
    sub_30B8(v62, &qword_34C6E8, &unk_2D0FF0);
  }

  return sub_30B8(&v98, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_14A58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_20410(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_14AD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_14AF0()
{
  v1 = sub_20410(&qword_34C6C8, &qword_2D0718);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_14B84()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_14BD4()
{
  v1 = *(v0 + 24);

  if (*(v0 + 56))
  {
    sub_306C((v0 + 32));
  }

  v2 = *(v0 + 80);

  v3 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_14C60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_14CA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_14CD8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_14D30()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_14D70()
{
  v1 = sub_20410(&qword_34CC70, &qword_2D0D78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  v8 = *(v0 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_14E58()
{
  v0 = sub_2CD230();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v5 = (v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = sub_2CA630();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v8 + 64);
  (*(v1 + 8))(v13 + v2, v0);
  v10 = sub_2CA130();
  (*(*(v10 - 8) + 8))(v13 + v5, v10);

  (*(v8 + 8))(v13 + v9, v7);

  return _swift_deallocObject(v13, v9 + v12);
}

uint64_t sub_1506C()
{
  v1 = sub_20410(&qword_34CC70, &qword_2D0D78);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 88);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_15164()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 96) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 40);

  v8 = *(v0 + 56);

  v9 = *(v0 + 64);

  v10 = *(v0 + 88);

  v11 = v0 + v2;
  v12 = sub_2CA130();
  (*(*(v12 - 8) + 8))(v11, v12);

  v13 = sub_2CA000();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v5, 1, v13))
  {
    (*(v14 + 8))(v0 + v5, v13);
  }

  return _swift_deallocObject(v0, v5 + v6);
}

uint64_t sub_15368()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_153A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1550C()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 40);

  v6 = *(v0 + 48);

  v7 = *(v0 + 72);

  v8 = sub_2CA000();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2, 1, v8))
  {
    (*(v9 + 8))(v0 + v2, v8);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_15654()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 40);

  v6 = *(v0 + 48);

  v7 = *(v0 + 72);

  v8 = sub_2CA000();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2, 1, v8))
  {
    (*(v9 + 8))(v0 + v2, v8);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1579C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_157D4()
{
  v1 = sub_20410(&qword_34D4C0, &qword_2D1438);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 88);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_158CC()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 96) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 40);

  v8 = *(v0 + 56);

  v9 = *(v0 + 64);

  v10 = *(v0 + 88);

  v11 = v0 + v2;
  v12 = sub_2CA130();
  (*(*(v12 - 8) + 8))(v11, v12);

  v13 = sub_2CA000();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v5, 1, v13))
  {
    (*(v14 + 8))(v0 + v5, v13);
  }

  return _swift_deallocObject(v0, v5 + v6);
}

uint64_t sub_15AD0()
{
  v1 = sub_20410(&qword_34D4C0, &qword_2D1438);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 32);

  v6 = *(v0 + 40);

  v7 = *(v0 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_15BB8()
{
  v0 = sub_2CD230();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v5 = (v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = sub_2CA630();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v8 + 64);
  (*(v1 + 8))(v13 + v2, v0);
  v10 = sub_2CA130();
  (*(*(v10 - 8) + 8))(v13 + v5, v10);

  (*(v8 + 8))(v13 + v9, v7);

  return _swift_deallocObject(v13, v9 + v12);
}

uint64_t sub_15DCC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_15E08()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_15E50()
{
  v1 = sub_2C8D90();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_15F08()
{
  v1 = *(v0 + 24);

  sub_306C((v0 + 40));
  sub_306C((v0 + 80));
  sub_306C((v0 + 120));

  return _swift_deallocObject(v0, 160);
}

uint64_t sub_15F60()
{
  v1 = *(v0 + 24);

  sub_306C((v0 + 32));

  v2 = *(v0 + 88);

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_15FB0()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_16028()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 40);

  v6 = *(v0 + 48);

  v7 = *(v0 + 72);

  v8 = sub_2CA000();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2, 1, v8))
  {
    (*(v9 + 8))(v0 + v2, v8);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_16174()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_161D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_16234()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_16284()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_162C4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_162FC()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 80) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 24);

  v5 = *(v0 + 40);

  v6 = *(v0 + 48);

  v7 = *(v0 + 72);

  v8 = v0 + v2;
  v9 = sub_2CA130();
  (*(*(v9 - 8) + 8))(v8, v9);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_16438()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_16494()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_164EC()
{
  v1 = *(sub_20410(&unk_3530C0, &unk_2D0A40) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v17 = *(v1 + 64);
  v3 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4 = *(*(v3 - 8) + 80);
  v15 = *(*(v3 - 8) + 64);
  v5 = sub_2CA630();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v16 = *(v6 + 64);
  v8 = sub_2CD230();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2, 1, v8))
  {
    (*(v9 + 8))(v0 + v2, v8);
  }

  v10 = (v2 + v17 + v4) & ~v4;
  v11 = (v10 + v15 + v7) & ~v7;
  v12 = v0 + v10;
  v13 = sub_2CA130();
  (*(*(v13 - 8) + 8))(v12, v13);

  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v11 + v16);
}

uint64_t sub_16764()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_167C4()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_16864()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1689C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_16900()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_169FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_16A5C()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_16AFC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_16B34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_16B74()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_16BB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_16C0C()
{
  v1 = sub_2CDDB0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16);
}

uint64_t sub_16D10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_16D60()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_16DA0()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_16DD8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 81);
}

uint64_t sub_16E30()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_16E68()
{
  v1 = sub_20410(&qword_34E738, &qword_2D26C8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_16F74()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_16FAC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_16FFC()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1709C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_170D8()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_17118()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_17158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20410(&unk_3530C0, &unk_2D0A40);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_17230(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20410(&unk_3530C0, &unk_2D0A40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_172FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_173E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_17418()
{
  v1 = *(sub_20410(&unk_3519A0, &qword_2D0980) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
  }

  else
  {
    v6 = sub_2CA130();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v7);

  v11 = *(v0 + v8 + 8);

  v12 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16);
}

uint64_t sub_1757C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_175C4()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_176C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17700()
{
  v1 = sub_2CA000();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);

  v6 = *(v0 + 56);

  v7 = *(v0 + 72);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_177E4()
{
  v1 = sub_2CA000();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2CD300();
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v11 = *(v7 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4);

  (*(v7 + 8))(v0 + v8, v6);

  return _swift_deallocObject(v0, v8 + v11);
}

uint64_t sub_17960()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_179B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_179F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20410(&qword_34C820, &unk_2D0A30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
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
}

uint64_t sub_17AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20410(&qword_34C820, &unk_2D0A30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

uint64_t sub_17BA4()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);

  return _swift_deallocObject(v0, 136);
}

uint64_t sub_17BEC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_17C38()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17C78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17CB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_17D10()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17D58()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17DB8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17DF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_17E30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_17E88()
{
  v14 = sub_2CCA10();
  v1 = *(v14 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2C8E30();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + v5 + 8) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v1 + 8))(v0 + v2, v14);
  v10 = *(v0 + v3 + 8);

  v11 = *(v0 + v4 + 8);

  v12 = *(v0 + v5);

  (*(v7 + 8))(v0 + v8, v6);

  return _swift_deallocObject(v0, v9 + 8);
}

uint64_t sub_1802C()
{
  v1 = sub_2CCA10();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_180F0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_18128()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_18178()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_181C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_181F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_18238()
{
  v1 = sub_2CC100();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_2C8E80();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v0 + v4 + 8);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_183A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_183E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_18430()
{
  v1 = sub_2CCA70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_184D0()
{
  v1 = sub_2CCA70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1859C()
{
  v1 = sub_2CCA70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  (*(v2 + 8))(&v0[v3], v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_18670()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_186A8()
{
  v1 = sub_2CCA70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 5);

  v7 = *(v0 + 6);

  v8 = *(v0 + 8);

  (*(v2 + 8))(&v0[v3], v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1879C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_18804()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  sub_306C((v0 + v5));

  return _swift_deallocObject(v0, v5 + 48);
}

uint64_t sub_18904()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_306C((v0 + 16));

  v5 = *(v0 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_18A10()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 81);
}

uint64_t sub_18A68()
{
  v1 = sub_2CC100();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_18B68()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_18BB4()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_18BF8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_18C3C()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_18C7C()
{
  v1 = *(v0 + 24);

  sub_306C((v0 + 32));
  sub_306C((v0 + 72));

  v2 = *(v0 + 128);

  return _swift_deallocObject(v0, 136);
}

uint64_t sub_18CD4()
{
  v1 = *(v0 + 24);

  sub_306C((v0 + 32));
  sub_306C((v0 + 72));
  sub_306C((v0 + 112));

  return _swift_deallocObject(v0, 160);
}

uint64_t sub_18D2C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_18D74()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_18DAC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_18DF4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_18E2C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_18E7C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_18EB8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_18F04()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_18F3C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_18F74()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_18FD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1902C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_19084()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_190C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1910C()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 2);

  v9 = *(v0 + 3);

  v10 = *(v0 + 4);

  (*(v2 + 8))(&v0[v3], v1);
  v11 = *&v0[v4 + 8];

  v12 = *&v0[v5];

  v13 = *&v0[((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8];

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_19250()
{
  v1 = sub_2C8E80();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_19304()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_193DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1943C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1948C()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1952C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_19564()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_195A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_19608()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_19648()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_19690()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_20410(&unk_3530C0, &unk_2D0A40) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v0 + 16);

  v11 = v0 + v2;
  v12 = sub_2CA130();
  (*(*(v12 - 8) + 8))(v11, v12);

  v13 = sub_2CA000();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v5, 1, v13))
  {
    (*(v14 + 8))(v0 + v5, v13);
  }

  v15 = sub_2CD230();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v8, 1, v15))
  {
    (*(v16 + 8))(v0 + v8, v15);
  }

  v17 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v17 + 8);

  return _swift_deallocObject(v0, v17 + 16);
}

uint64_t sub_1997C()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2CA630();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_2CA130();
  (*(*(v8 - 8) + 8))(v0 + v2, v8);

  (*(v5 + 8))(v0 + v6, v4);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_19AFC()
{
  v0 = sub_2CD230();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v5 = (v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = sub_2CA630();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v8 + 64);
  (*(v1 + 8))(v13 + v2, v0);
  v10 = sub_2CA130();
  (*(*(v10 - 8) + 8))(v13 + v5, v10);

  (*(v8 + 8))(v13 + v9, v7);

  return _swift_deallocObject(v13, v9 + v12);
}

uint64_t sub_19D10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_19D7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_19DB4()
{
  v1 = *(sub_20410(&qword_352D78, &unk_2D5320) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 32);

  v6 = sub_2CC950();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  v8 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16);
}

uint64_t sub_19EF4()
{
  v1 = sub_2CC950();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_19FD8()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = sub_2CA130();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1A0EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1A12C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1A164()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1A1C0()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v19 = *(v1 + 64);
  v3 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4 = *(*(v3 - 8) + 80);
  v18 = *(*(v3 - 8) + 64);
  v5 = sub_2CD330();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v20 = *(v6 + 64);
  v8 = *(v0 + 24);

  v9 = sub_2CA000();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v2, 1, v9))
  {
    (*(v10 + 8))(v0 + v2, v9);
  }

  v11 = (v2 + v19 + v4) & ~v4;
  v12 = (v18 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v7 + 8) & ~v7;
  v14 = v0 + v11;
  v15 = sub_2CA130();
  (*(*(v15 - 8) + 8))(v14, v15);

  v16 = *(v0 + v12);

  (*(v6 + 8))(v0 + v13, v5);

  return _swift_deallocObject(v0, v13 + v20);
}

uint64_t sub_1A454()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1A48C()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v18 = *(v1 + 64);
  v3 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4 = *(*(v3 - 8) + 80);
  v17 = *(*(v3 - 8) + 64);
  v5 = sub_2CD330();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v19 = *(v6 + 64);
  v8 = sub_2CA000();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2, 1, v8))
  {
    (*(v9 + 8))(v0 + v2, v8);
  }

  v10 = (v18 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + v4 + 8) & ~v4;
  v12 = (v11 + v17 + v7) & ~v7;
  v13 = *(v0 + v10);

  v14 = v0 + v11;
  v15 = sub_2CA130();
  (*(*(v15 - 8) + 8))(v14, v15);

  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v19);
}

uint64_t sub_1A724()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1A7E0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1A820()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1A8F0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v8 = sub_2CA130();
  (*(*(v8 - 8) + 8))(v0 + v6, v8);

  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1AA78()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = sub_2CA000();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  v9 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + v5 + 8) & ~v5;
  v11 = *(v0 + v9);

  v12 = sub_2CA130();
  (*(*(v12 - 8) + 8))(v0 + v10, v12);

  return _swift_deallocObject(v0, v10 + v6);
}

uint64_t sub_1AC68()
{
  sub_306C((v0 + 16));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1ACA8()
{
  v1 = *(v0 + 16);
  v2 = sub_2CD040();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v2);
  v11 = *(v0 + v5 + 8);

  (*(v6 + 8))(v0 + v7, v1);
  v12 = *(v0 + v8 + 8);

  v13 = *(v0 + v9);

  return _swift_deallocObject(v0, v9 + 8);
}

uint64_t sub_1AE4C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v9 = sub_2CA130();
  (*(*(v9 - 8) + 8))(v0 + v6, v9);

  v10 = *(v0 + v7 + 8);

  v11 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_1AFEC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1B034()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_20410(&qword_3530D0, &qword_2D5728);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v0 + v4);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_1B19C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_1B2AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1B2E4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1B334@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1B3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_20410(&unk_3519B0, &qword_2D1230);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B46C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_20410(&unk_3519B0, &qword_2D1230);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B51C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1B55C()
{
  v1 = v0[3];

  sub_306C(v0 + 4);
  sub_306C(v0 + 9);
  v2 = v0[15];

  if (v0[19])
  {
    sub_306C(v0 + 16);
  }

  return _swift_deallocObject(v0, 168);
}

uint64_t sub_1B5D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1B608()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_A41AC(*(v0 + 16), v1 & 1);
  }

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1B650()
{
  v1 = sub_2C8E30();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1B6E4()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1B784()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1B7BC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1B804()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1B83C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1B884()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1B8D4()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1B974()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1B9AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1B9EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1BA3C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1BA84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1BAE0()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_A41AC(*(v0 + 16), v1 & 1);
  }

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1BB2C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1BB90()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 40);

  v6 = *(v0 + 48);

  v7 = *(v0 + 72);

  v8 = sub_2CA000();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2, 1, v8))
  {
    (*(v9 + 8))(v0 + v2, v8);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1BCD8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1BD10()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1BD48()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1BD88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1BDC8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1BE04()
{
  v1 = sub_2CC5F0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = *(v0 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1BEF4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1BF44()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1BF8C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1BFD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1C014()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1C05C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1C0F0()
{
  sub_306C((v0 + 24));
  sub_306C((v0 + 64));
  v1 = *(v0 + 104);

  v2 = *(v0 + 112);

  v3 = *(v0 + 128);

  return _swift_deallocObject(v0, 136);
}

uint64_t sub_1C150()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1C190()
{
  v1 = *(v0 + 24);

  sub_306C((v0 + 32));
  sub_306C((v0 + 72));

  sub_306C((v0 + 120));

  return _swift_deallocObject(v0, 160);
}

uint64_t sub_1C220()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1C2F4()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1C334()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1C404()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1C440()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1C47C()
{
  v1 = sub_2CDFD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1C52C()
{
  v1 = sub_2C8D90();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_1C61C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1C664()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1C6CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1C720()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1C764()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1C7AC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1C7FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1C834()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1C900()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1C944()
{
  v1 = *(v0 + 24);

  sub_306C((v0 + 32));
  sub_306C((v0 + 72));

  sub_306C((v0 + 120));

  return _swift_deallocObject(v0, 160);
}

uint64_t sub_1C9CC()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1CA0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1CA48()
{
  v1 = *(v0 + 32);

  sub_306C((v0 + 40));
  sub_306C((v0 + 80));

  return _swift_deallocObject(v0, 120);
}

uint64_t sub_1CA98()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1CAE0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1CB18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1CB68()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1CC10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1CC50()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1CFA0()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 40);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 88);

  v8 = sub_2CA000();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2, 1, v8))
  {
    (*(v9 + 8))(v0 + v2, v8);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1D0E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1D138()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext();
  v4 = (*(*(v3 - 1) + 80) + 72) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  v8 = *(v0 + 64);

  v9 = v0 + v4;
  v10 = *(v0 + v4);

  v11 = v3[9];
  v12 = sub_2CD230();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v4 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = *(v9 + v3[10]);

  v15 = v9 + v3[11];
  v16 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = sub_2CA130();
    (*(*(v17 - 8) + 8))(v15, v17);
  }

  v18 = v3[12];
  v19 = sub_2CA000();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v9 + v18, 1, v19))
  {
    (*(v20 + 8))(v9 + v18, v19);
  }

  return _swift_deallocObject(v0, v4 + v5);
}

uint64_t sub_1D3C4()
{
  v1 = sub_2CA630();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1D44C()
{
  v1 = sub_2CA630();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1D510()
{
  v1 = sub_2CD230();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_2CA630();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_1D66C()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 104) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 40);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 88);

  v8 = *(v0 + 96);

  v9 = sub_2CA000();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v2, 1, v9))
  {
    (*(v10 + 8))(v0 + v2, v9);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1D7BC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1D814()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1D874()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1D8D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1D914()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1D954()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1D990(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
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

  v9 = sub_20410(&unk_3530C0, &unk_2D0A40);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[9];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = sub_20410(&qword_34C820, &unk_2D0A30);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[11];
    goto LABEL_11;
  }

  v15 = sub_20410(&unk_353020, &unk_2D0970);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[12]];

  return v16(v17, a2, v15);
}

char *sub_1DB2C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = sub_20410(&unk_3530C0, &unk_2D0A40);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_20410(&qword_34C820, &unk_2D0A30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = sub_20410(&unk_353020, &unk_2D0970);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[12]];

  return v15(v16, a2, a2, v14);
}