uint64_t sub_32948()
{
  sub_253C((v0 + 16));
  sub_253C((v0 + 56));
  sub_55C8(v0 + 96);
  return v0;
}

uint64_t sub_32978()
{
  sub_32948();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_329F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3149C();
  *a1 = result;
  return result;
}

uint64_t sub_32A78(uint64_t a1)
{
  v2 = sub_2208(&qword_6D490, &unk_54350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_32AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_569C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_32B38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2208(a3, a4);
  sub_569C(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

uint64_t sub_32B98(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_32BE0()
{
  if (v0[5])
  {
    sub_253C(v0 + 2);
  }

  if (v0[10])
  {
    sub_253C(v0 + 7);
  }

  if (v0[15])
  {
    sub_253C(v0 + 12);
  }

  if (v0[20])
  {
    sub_253C(v0 + 17);
  }

  if (v0[25])
  {
    sub_253C(v0 + 22);
  }

  if (v0[30])
  {
    sub_253C(v0 + 27);
  }

  if (v0[35])
  {
    sub_253C(v0 + 32);
  }

  return _swift_deallocObject(v0, 296, 7);
}

uint64_t sub_32C80()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_32D94()
{
  v2 = *(v0 - 304);

  return swift_beginAccess();
}

uint64_t sub_32DF0()
{

  return sub_4DE68(v0, v1, (v2 - 200));
}

uint64_t sub_32E0C()
{
  v2 = *(v0 - 368);

  return sub_4FF74();
}

void sub_32E40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

_BYTE *storeEnumTagSinglePayload for EmergencyFeatureFlagsKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x32F3CLL);
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_32F78()
{
  result = qword_6D4B0;
  if (!qword_6D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6D4B0);
  }

  return result;
}

const char *sub_32FE0(char a1)
{
  if (!a1)
  {
    return "emergency_rf";
  }

  if (a1 == 1)
  {
    return "emergency_mandrake_handoff";
  }

  return "nlv4_migration";
}

uint64_t sub_33058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2208(&qword_6B988, &qword_530B0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_513C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_33124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2208(&qword_6B988, &qword_530B0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_28E0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ConfirmationFlowConfigModel()
{
  result = qword_6D510;
  if (!qword_6D510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_33224()
{
  sub_332C4();
  if (v0 <= 0x3F)
  {
    sub_4FEB4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_332C4()
{
  if (!qword_6D520)
  {
    sub_50264();
    sub_5218(&qword_6B980, qword_52B10);
    v0 = sub_50D74();
    if (!v1)
    {
      atomic_store(v0, &qword_6D520);
    }
  }
}

void sub_33340()
{
  sub_13C8C();
  v180 = v0;
  v2 = v1;
  v3 = sub_50324();
  v4 = sub_8558(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v9);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v10);
  sub_13C5C();
  v192 = v11;
  sub_13B48();
  v12 = type metadata accessor for EmergencyNLIntent();
  v13 = sub_72B0(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v16);
  sub_13C5C();
  sub_EE14(v17);
  v183 = sub_50654();
  v18 = sub_8558(v183);
  v188 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_5630();
  sub_EE14(v23 - v22);
  v24 = sub_503A4();
  v25 = sub_72B0(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_5630();
  sub_EE14(v29 - v28);
  v30 = sub_50A24();
  v31 = sub_72B0(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v34);
  sub_13C5C();
  sub_EE14(v35);
  v178 = sub_50354();
  v36 = sub_8558(v178);
  v173 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_5630();
  sub_EE14(v41 - v40);
  v190 = sub_50334();
  v42 = sub_8558(v190);
  v193 = v43;
  v45 = *(v44 + 64);
  __chkstk_darwin(v42);
  sub_5630();
  v191 = v47 - v46;
  sub_13B48();
  v48 = sub_502E4();
  v49 = sub_8558(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  __chkstk_darwin(v49);
  sub_5630();
  v56 = v55 - v54;
  v57 = sub_50B04();
  v58 = sub_8558(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  __chkstk_darwin(v58);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v63);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v64);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v65);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v66);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v67);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v68);
  v70 = &v168 - v69;
  v71 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v196 = v60;
  v72 = *(v60 + 16);
  v189 = v71;
  v185 = v57;
  v194 = v72;
  v195 = v60 + 16;
  (v72)(v70, v71, v57);
  sub_246FC();
  v186 = v2;
  v73(v56, v2, v48);
  v74 = sub_50AF4();
  v75 = sub_50BD4();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = sub_EFB0();
    v170 = v3;
    v169 = v6;
    v77 = v76;
    v78 = sub_EFC8();
    v197[0] = v78;
    *v77 = 136315138;
    sub_36DEC(&qword_6C078, 255, &type metadata accessor for Input);
    v79 = sub_50CD4();
    v81 = v80;
    (*(v51 + 8))(v56, v48);
    v82 = sub_4DE68(v79, v81, v197);

    *(v77 + 4) = v82;
    _os_log_impl(&dword_0, v74, v75, "EmergencyNumberFlow onInput: %s", v77, 0xCu);
    sub_253C(v78);
    sub_5674();
    v6 = v169;
    v3 = v170;
    sub_5674();
  }

  else
  {

    (*(v51 + 8))(v56, v48);
  }

  v83 = v196;
  v84 = *(v196 + 8);
  v85 = v185;
  v84(v70, v185);
  v86 = v191;
  sub_502D4();
  v87 = v190;
  v88 = (*(v193 + 88))(v86, v190);
  v89 = v192;
  if (v88 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v192 = v84;
    v90 = sub_36FD0();
    v91(v90);
    v92 = v183;
    (*(v188 + 32))(v187, v86, v183);
    sub_2970();
    swift_beginAccess();
    sub_36FAC();
    v93 = v194;
    v194();
    v94 = sub_50AF4();
    v95 = sub_50BD4();
    if (sub_27800(v95))
    {
      v96 = sub_5718();
      sub_36F28(v96);
      sub_36F08(&dword_0, v97, v98, "EmergencyNumberFlow onInput .NLv3IntentOnly");
      sub_5674();
    }

    v99 = sub_37030();
    v100(v99);
    v101 = v188;
    sub_246FC();
    v102 = v182;
    v103 = v187;
    v104(v182, v187, v92);
    sub_36D10(v102, v184);
    sub_41554();
    v106 = v105;
    sub_12B38(v102, type metadata accessor for EmergencyNLIntent);
    (*(v101 + 8))(v103, v92);
    goto LABEL_8;
  }

  if (v88 == enum case for Parse.directInvocation(_:))
  {
    v116 = sub_36FD0();
    v117(v116);
    v118 = v6;
    v119 = v86;
    v120 = v3;
    (*(v6 + 32))(v89, v119, v3);
    sub_2970();
    swift_beginAccess();
    sub_36FAC();
    v194();
    v121 = sub_50AF4();
    v122 = sub_50BD4();
    if (sub_EF00(v122))
    {
      v123 = sub_5718();
      sub_EEC8(v123);
      sub_EED4(&dword_0, v124, v125, "EmergencyNumberFlow onInput .directInvocation");
      sub_EE58();
    }

    v126 = v83 + 8;
    v84(v181, v85);
    if (sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v127)
    {

      v130 = v120;
    }

    else
    {
      v129 = sub_50CE4();

      v130 = v120;
      if ((v129 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v144 = sub_2B6B0();
    if (v144 != 35)
    {
      LOBYTE(v107) = v144;
      (*(v118 + 8))(v89, v130);
      LOBYTE(v106) = 0;
      LOWORD(v108) = 4;
      goto LABEL_34;
    }

LABEL_28:
    v196 = v126;
    sub_2970();
    swift_beginAccess();
    sub_36FAC();
    v194();
    v145 = v118;
    v146 = *(v118 + 16);
    v147 = v176;
    v146(v176, v89, v130);
    v148 = sub_50AF4();
    LODWORD(v195) = sub_50BE4();
    if (os_log_type_enabled(v148, v195))
    {
      v149 = v130;
      v150 = sub_EFB0();
      v194 = sub_EFC8();
      v198 = v194;
      *v150 = 136315138;
      v146(v171, v147, v149);
      v151 = sub_50B64();
      v153 = v152;
      v154 = *(v145 + 8);
      v154(v147, v149);
      v155 = sub_4DE68(v151, v153, &v198);

      *(v150 + 4) = v155;
      _os_log_impl(&dword_0, v148, v195, "Failed to get emergencySituation from DirectInvocation: %s", v150, 0xCu);
      sub_253C(v194);
      sub_5674();
      sub_EE58();

      v156 = sub_37050();
      (v84)(v156);
      v154(v192, v149);
    }

    else
    {

      v166 = *(v118 + 8);
      v166(v147, v130);
      v167 = sub_37050();
      (v84)(v167);
      v166(v89, v130);
    }

    goto LABEL_36;
  }

  if (v88 == enum case for Parse.uso(_:))
  {
    v192 = v84;
    v131 = sub_36FD0();
    v132(v131);
    v133 = v173;
    (*(v173 + 32))(v177, v86, v178);
    sub_2970();
    swift_beginAccess();
    sub_36FAC();
    v93 = v194;
    v194();
    v134 = sub_50AF4();
    v135 = sub_50BD4();
    if (sub_EF00(v135))
    {
      v136 = sub_5718();
      sub_EEC8(v136);
      sub_EED4(&dword_0, v137, v138, "EmergencyNumberFlow onInput .uso");
      sub_EE58();
    }

    v139 = sub_37030();
    v140(v139);
    v141 = v177;
    sub_50344();
    v197[3] = &type metadata for EmergencyFeatureFlagsKey;
    v197[4] = sub_EB68();
    LOBYTE(v197[0]) = 2;
    sub_50374();
    sub_253C(v197);
    v142 = v174;
    sub_50A14();
    sub_36D10(v142, v175);
    sub_411F8();
    v106 = v143;
    sub_12B38(v142, &type metadata accessor for EmergencyDialogAct);
    (*(v133 + 8))(v141, v178);
LABEL_8:
    v107 = HIWORD(v106);
    v108 = v106 >> 8;
    if (BYTE1(v106) == 4 && BYTE2(v106) == 35)
    {
      sub_2970();
      swift_beginAccess();
      v109 = v179;
      sub_36FAC();
      v93();
      v110 = v109;
      v111 = sub_50AF4();
      v112 = sub_50BD4();
      if (sub_EF00(v112))
      {
        v113 = sub_5718();
        sub_EEC8(v113);
        sub_EED4(&dword_0, v114, v115, "#EmergencyNumberFlow Produced an empty intent. Ignoring input.");
        sub_EE58();
      }

      v192(v110, v85);
      goto LABEL_36;
    }

LABEL_34:
    v165 = v180;
    *(v180 + 18) = v107;
    *(v165 + 16) = v106 & 1 | (v108 << 8);
    goto LABEL_36;
  }

  sub_2970();
  swift_beginAccess();
  v157 = v172;
  sub_36FAC();
  v194();
  v158 = sub_50AF4();
  sub_50BE4();
  sub_246B4();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = sub_EFB0();
    v161 = sub_EFC8();
    v199 = v161;
    *v160 = 136315138;
    LOBYTE(v198) = 0;
    v162 = sub_50B64();
    v164 = sub_4DE68(v162, v163, &v199);
    v87 = v190;

    *(v160 + 4) = v164;
    _os_log_impl(&dword_0, v158, v6, "%s", v160, 0xCu);
    sub_253C(v161);
    v86 = v191;
    sub_5674();
    sub_5674();
  }

  v84(v157, v85);
  (*(v193 + 8))(v86, v87);
LABEL_36:
  sub_8A94();
}

uint64_t sub_341E8()
{
  sub_EF64();
  v1[51] = v2;
  v1[52] = v0;
  v3 = sub_50B04();
  v1[53] = v3;
  v4 = *(v3 - 8);
  v1[54] = v4;
  v5 = *(v4 + 64) + 15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();

  return _swift_task_switch(sub_342BC, 0, 0);
}

uint64_t sub_342BC()
{
  v58 = v0;
  v1 = *(v0 + 456);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 416);
  v5 = sub_50AE4();
  *(v0 + 464) = v5;
  sub_2970();
  swift_beginAccess();
  v6 = *(v2 + 16);
  *(v0 + 472) = v6;
  *(v0 + 480) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);

  v7 = sub_50AF4();
  v8 = sub_50BD4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 432);
    v52 = *(v0 + 424);
    v53 = *(v0 + 456);
    v10 = v6;
    v11 = *(v0 + 416);
    v12 = sub_EFB0();
    v55 = v5;
    v13 = sub_EFC8();
    v57 = v13;
    *v12 = 136315138;
    v14 = *(v11 + 18);
    *(v0 + 511) = *(v11 + 16);
    *(v0 + 513) = v14;
    v15 = sub_50B64();
    v17 = sub_4DE68(v15, v16, &v57);
    v6 = v10;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v7, v8, "EmergencyNumberFlow execute with state: %s", v12, 0xCu);
    sub_253C(v13);
    v5 = v55;
    sub_5674();
    sub_5674();

    v18 = *(v9 + 8);
    v18(v53, v52);
  }

  else
  {
    v19 = *(v0 + 456);
    v20 = *(v0 + 424);
    v21 = *(v0 + 432);

    v18 = *(v21 + 8);
    v18(v19, v20);
  }

  *(v0 + 488) = v18;
  v22 = *(v0 + 416);
  v23 = *(v22 + 18);
  v24 = *(v22 + 16);
  v25 = v24 | (v23 << 16);
  *(v0 + 506) = v23;
  *(v0 + 504) = v24;
  if (v24 == 2)
  {
    v27 = *(v0 + 408);
    sub_E9D0();
    v28 = swift_allocError();
    *v29 = 2;
    sub_1D68(v28, v22 + 64, (v22 + 104), v27);

    goto LABEL_8;
  }

  if (v24 == 3)
  {
    v26 = *(v0 + 408);
    sub_50194();
LABEL_8:
    v31 = *(v0 + 448);
    v30 = *(v0 + 456);
    v32 = *(v0 + 440);

    v33 = *(v0 + 8);

    return v33();
  }

  v35 = *(v0 + 448);
  v36 = *(v0 + 424);
  sub_2970();
  swift_beginAccess();
  v6(v35, v5, v36);
  v37 = sub_50AF4();
  v38 = sub_50BD4();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 448);
  v41 = *(v0 + 424);
  v42 = *(v0 + 432);
  if (v39)
  {
    v56 = *(v0 + 424);
    v43 = sub_EFB0();
    v44 = sub_EFC8();
    v57 = v44;
    *v43 = 136315138;
    *(v0 + 508) = v25 & 1;
    *(v0 + 509) = BYTE1(v25);
    *(v0 + 510) = BYTE2(v25);
    v45 = sub_50B64();
    v54 = v40;
    v47 = sub_4DE68(v45, v46, &v57);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_0, v37, v38, "EmergencyNumberFlow needsExecution intent: %s", v43, 0xCu);
    sub_253C(v44);
    sub_5674();
    sub_5674();

    v48 = v54;
    v49 = v56;
  }

  else
  {

    v48 = v40;
    v49 = v41;
  }

  v18(v48, v49);
  v50 = *(v0 + 416);
  v51 = swift_task_alloc();
  *(v0 + 496) = v51;
  *v51 = v0;
  v51[1] = sub_34710;

  return sub_15100(v0 + 16, v50 + 24, SBYTE2(v25), SBYTE1(v25));
}

uint64_t sub_34710()
{
  sub_EF64();
  v1 = *(*v0 + 496);
  v2 = *v0;
  sub_EF2C();
  *v3 = v2;

  return _swift_task_switch(sub_34800, 0, 0);
}

uint64_t sub_34800()
{
  v1 = *(v0 + 506);
  if (v1 == 35)
  {
    if (HIBYTE(*(v0 + 504)) == 4)
    {
      v2 = &qword_6C050;
      v3 = &qword_51E00;
      v4 = v0 + 16;
      goto LABEL_8;
    }

    v1 = (*(v0 + 504) | (*(v0 + 506) << 16)) >> 8;
  }

  v5 = *(v0 + 416);
  sub_87A8();
  if (*(v0 + 320))
  {
    v6 = *(v0 + 408);
    v7 = *(v0 + 416);
    sub_EDD0((v0 + 296), v0 + 256);
    sub_1FE8((v7 + 184), *(v7 + 208));
    sub_259A0(v1, (v0 + 16), v0 + 256);
    sub_51C0(v0 + 16, &qword_6C050, &qword_51E00);
    sub_50184();

    sub_253C((v0 + 256));
    goto LABEL_11;
  }

  sub_51C0(v0 + 16, &qword_6C050, &qword_51E00);
  v2 = &qword_6C7A0;
  v3 = &unk_53C80;
  v4 = v0 + 296;
LABEL_8:
  sub_51C0(v4, v2, v3);
  v9 = *(v0 + 472);
  v8 = *(v0 + 480);
  v10 = *(v0 + 464);
  v11 = *(v0 + 440);
  v12 = *(v0 + 424);
  sub_2970();
  swift_beginAccess();
  sub_36F58();
  v9();
  v13 = sub_50AF4();
  v14 = sub_50BE4();
  if (sub_EF4C(v14))
  {
    v15 = sub_5718();
    sub_EEC8(v15);
    _os_log_impl(&dword_0, v13, v14, "EmergencyNumberFlow Failed to pick a catWrapper", v12, 2u);
    sub_EE58();
  }

  v16 = *(v0 + 488);
  v18 = *(v0 + 432);
  v17 = *(v0 + 440);
  v20 = *(v0 + 416);
  v19 = *(v0 + 424);
  v21 = *(v0 + 408);

  v16(v17, v19);
  v22 = sub_1FE8((v20 + 104), *(v20 + 128));
  memcpy((v0 + 144), v22, 0x70uLL);
  sub_202C(v20 + 64, (v0 + 144));
  sub_50184();

LABEL_11:
  v24 = *(v0 + 448);
  v23 = *(v0 + 456);
  v25 = *(v0 + 440);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_34A68()
{
  type metadata accessor for EmergencyNumberFlow();
  sub_36DEC(&qword_6D658, v0, type metadata accessor for EmergencyNumberFlow);
  sub_36F40();
  return sub_4FF14();
}

uint64_t *sub_34AF0()
{
  sub_253C(v0 + 3);
  sub_253C(v0 + 8);
  sub_253C(v0 + 13);
  sub_55C8((v0 + 18));
  sub_253C(v0 + 23);
  return v0;
}

uint64_t sub_34B30()
{
  sub_34AF0();

  return _swift_deallocClassInstance(v0, 224, 7);
}

uint64_t getEnumTagSinglePayload for EmergencyNumberFlow.EmergencyNumberFlowState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = (a2 + 16776963) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776963) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }
    }
  }

  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 >= 3)
  {
    return v7 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EmergencyNumberFlow.EmergencyNumberFlowState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776963) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776963) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v4)
    {
      v5 = ((a2 - 253) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_34CA4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_34CB8(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_34CF4()
{
  v1 = *v0;
  sub_33340();
  return v2 & 1;
}

uint64_t sub_34D40()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_CD54;

  return sub_341E8();
}

uint64_t sub_34DDC()
{
  type metadata accessor for EmergencyNumberFlow();

  return sub_4FF64();
}

void sub_34E14()
{
  sub_13C8C();
  v2 = v1;
  sub_24780();
  v3 = sub_50B04();
  v4 = sub_8558(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_5658();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  sub_36EF4();
  __chkstk_darwin(v13);
  if (sub_36FFC())
  {
    v14 = v2[4];
    sub_1FE8(v2, v2[3]);
    if ((sub_50044() & 1) == 0)
    {
      v15 = v2[4];
      sub_1FE8(v2, v2[3]);
      if ((sub_500B4() & 1) == 0 && (sub_50044() & 1) == 0)
      {
        sub_50AE4();
        sub_2970();
        swift_beginAccess();
        v30 = *(v6 + 16);
        v31 = sub_36F74();
        v32(v31);
        v17 = sub_50AF4();
        v33 = sub_50BD4();
        if (!sub_27800(v33))
        {
          sub_36FC4();
          goto LABEL_10;
        }

        v34 = sub_5718();
        *v34 = 0;
        sub_36F4C();
        _os_log_impl(v35, v36, v37, v38, v34, 2u);
        sub_36FC4();
        goto LABEL_9;
      }
    }

    v16 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v6 + 16))(v0, v16, v3);
    v17 = sub_50AF4();
    v18 = sub_50BD4();
    if (sub_EF4C(v18))
    {
      v19 = sub_5718();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "No prompt needed for this device. Not prompting for call followup.", v19, 2u);
LABEL_9:
      sub_5674();
    }
  }

  else
  {
    v20 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v6 + 16))(v11, v20, v3);
    v17 = sub_50AF4();
    v21 = sub_50BD4();
    if (sub_27800(v21))
    {
      v22 = sub_5718();
      *v22 = 0;
      sub_36F4C();
      _os_log_impl(v23, v24, v25, v26, v22, 2u);
      goto LABEL_9;
    }
  }

LABEL_10:

  v27 = *(v6 + 8);
  v28 = sub_13C68();
  v29(v28);
  sub_8A94();
}

uint64_t sub_3511C()
{
  sub_24780();
  v2 = sub_50B04();
  v3 = sub_8558(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_5658();
  sub_36F64();
  __chkstk_darwin(v8);
  sub_36EF4();
  __chkstk_darwin(v9);
  if ((sub_36FFC() & 1) != 0 || (sub_509C4() & 1) == 0)
  {
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_246FC();
    sub_36FA0();
    v14();
    v11 = sub_50AF4();
    v15 = sub_50BD4();
    if (!sub_27800(v15))
    {
      sub_37044();
      goto LABEL_14;
    }

    v16 = sub_5718();
    sub_36FB8(v16);
    sub_36F4C();
    sub_37018(v17, v18, v19, v20);
    sub_37044();
  }

  else
  {
    sub_36E60();
    if (sub_500D4() & 1) != 0 || (sub_36E60(), (sub_500C4()) || (sub_36E60(), (sub_500A4()) || (sub_36E60(), (sub_500B4()))
    {
      sub_50AE4();
      sub_2970();
      swift_beginAccess();
      sub_246FC();
      sub_36FA0();
      v10();
      v11 = sub_50AF4();
      v12 = sub_50BD4();
      if (!sub_EF4C(v12))
      {
        v1 = 0;
        goto LABEL_14;
      }

      v13 = sub_5718();
      sub_36FB8(v13);
      sub_37018(&dword_0, v11, v12, "No prompt needed for this device. Not prompting for website followup.");
      v1 = 0;
    }

    else
    {
      sub_50AE4();
      sub_2970();
      swift_beginAccess();
      sub_246FC();
      v22 = sub_36F74();
      v23(v22);
      v11 = sub_50AF4();
      v24 = sub_50BD4();
      if (!sub_27800(v24))
      {
        sub_36FC4();
        goto LABEL_14;
      }

      v25 = sub_5718();
      sub_36FB8(v25);
      sub_36F4C();
      sub_37018(v26, v27, v28, v29);
      sub_36FC4();
    }
  }

  sub_5674();
LABEL_14:

  (*(v5 + 8))(v0, v2);
  return v1;
}

uint64_t sub_353A8()
{
  sub_24780();
  v3 = sub_50B04();
  v4 = sub_8558(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_5658();
  sub_36F64();
  __chkstk_darwin(v9);
  sub_36EF4();
  __chkstk_darwin(v10);
  if ((sub_36FFC() & 1) == 0)
  {
    v11 = *(v0 + 104);
    if ((v11 & 0x2000000000000000) != 0)
    {
      if ((v11 & 0xF00000000000000) != 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(v0 + 96) & 0xFFFFFFFFFFFFLL) != 0)
    {
LABEL_4:
      sub_36E60();
      if (sub_500D4() & 1) != 0 || (sub_36E60(), (sub_500C4()) || (sub_36E60(), (sub_500A4()) || (sub_36E60(), (sub_500B4()))
      {
        sub_50AE4();
        sub_2970();
        swift_beginAccess();
        sub_246FC();
        sub_36FA0();
        v12();
        v13 = sub_50AF4();
        v14 = sub_50BD4();
        if (!sub_EF4C(v14))
        {
          v2 = 0;
          goto LABEL_16;
        }

        v15 = sub_5718();
        sub_36FB8(v15);
        sub_37018(&dword_0, v13, v14, "No prompt needed for this device. Not prompting for websearch followup.");
        v2 = 0;
      }

      else
      {
        sub_50AE4();
        sub_2970();
        swift_beginAccess();
        sub_246FC();
        v24 = sub_36F74();
        v25(v24);
        v13 = sub_50AF4();
        v26 = sub_50BD4();
        if (!sub_27800(v26))
        {
          sub_36FC4();
          goto LABEL_16;
        }

        v27 = sub_5718();
        sub_36FB8(v27);
        sub_36F4C();
        sub_37018(v28, v29, v30, v31);
        sub_36FC4();
      }

      goto LABEL_13;
    }
  }

  sub_50AE4();
  sub_2970();
  swift_beginAccess();
  sub_246FC();
  sub_36FA0();
  v16();
  v13 = sub_50AF4();
  v17 = sub_50BD4();
  if (!sub_27800(v17))
  {
    sub_37044();
    goto LABEL_16;
  }

  v18 = sub_5718();
  sub_36FB8(v18);
  sub_36F4C();
  sub_37018(v19, v20, v21, v22);
  sub_37044();
LABEL_13:
  sub_5674();
LABEL_16:

  (*(v6 + 8))(v1, v3);
  return v2;
}

void sub_35648()
{
  sub_13C8C();
  v3 = sub_50B04();
  v4 = sub_8558(v3);
  v81 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_5658();
  sub_13B08();
  __chkstk_darwin(v8);
  sub_EEF4();
  sub_13B08();
  __chkstk_darwin(v9);
  sub_EEF4();
  sub_13B08();
  __chkstk_darwin(v10);
  sub_13C5C();
  sub_13B48();
  v11 = sub_506E4();
  v12 = sub_8558(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_5630();
  v19 = v18 - v17;
  v20 = sub_2208(&qword_6D660, qword_53CD0);
  v21 = sub_569C(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_36FE0();
  v24 = sub_2208(&qword_6D668, &unk_53F60);
  v25 = sub_72B0(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_5658();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  sub_36EF4();
  __chkstk_darwin(v32);
  sub_37064();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  sub_28E0(v0, v33, 1, v11);
  sub_506D4();
  sub_13D50();
  sub_28E0(v34, v35, v36, v11);
  v37 = *(v20 + 48);
  sub_36D7C(v0, v2);
  sub_36D7C(v1, v2 + v37);
  sub_36EA4(v2);
  if (v45)
  {
    sub_36F58();
    sub_51C0(v38, v39, v40);
    sub_36F58();
    sub_51C0(v41, v42, v43);
    sub_36EA4(v2 + v37);
    if (v45)
    {
      sub_51C0(v2, &qword_6D668, &unk_53F60);
      v44 = v81;
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  sub_36D7C(v2, v30);
  sub_36EA4(v2 + v37);
  if (v45)
  {
    v46 = sub_36F74();
    sub_51C0(v46, v47, &unk_53F60);
    sub_51C0(v0, &qword_6D668, &unk_53F60);
    v48 = *(v14 + 8);
    v49 = sub_13C68();
    v50(v49);
LABEL_12:
    sub_51C0(v2, &qword_6D660, qword_53CD0);
    v44 = v81;
    goto LABEL_13;
  }

  (*(v14 + 32))(v19, v2 + v37, v11);
  sub_36E8C();
  sub_36DEC(v63, 255, v64);
  v80 = sub_50B34();
  v65 = *(v14 + 8);
  v65(v19, v11);
  sub_51C0(v1, &qword_6D668, &unk_53F60);
  sub_51C0(v0, &qword_6D668, &unk_53F60);
  v66 = sub_13C68();
  (v65)(v66);
  sub_51C0(v2, &qword_6D668, &unk_53F60);
  v44 = v81;
  if ((v80 & 1) == 0)
  {
LABEL_13:
    if (sub_509A4())
    {
      sub_36E34();
      if ((sub_50044() & 1) == 0)
      {
        sub_36E34();
        if ((sub_500B4() & 1) == 0)
        {
          sub_50AE4();
          sub_36EC4();
          sub_36F34();
          v74 = sub_36EE4();
          v75(v74);
          v53 = sub_50AF4();
          v76 = sub_50BD4();
          if (!sub_27800(v76))
          {
            goto LABEL_25;
          }

          v77 = sub_5718();
          sub_36F28(v77);
          sub_36F08(&dword_0, v78, v79, "Will listen after speaking the call followup.");
          goto LABEL_24;
        }
      }

      sub_50AE4();
      sub_36EC4();
      sub_36F34();
      v51 = sub_36EE4();
      v52(v51);
      v53 = sub_50AF4();
      v54 = sub_50BD4();
      if (!sub_27800(v54))
      {
        goto LABEL_25;
      }

      v55 = sub_5718();
      sub_36F28(v55);
      v58 = "No prompt needed for this device. Not listening after speaking.";
    }

    else
    {
      sub_50AE4();
      sub_36EC4();
      sub_36F34();
      v59 = sub_36EE4();
      v60(v59);
      v53 = sub_50AF4();
      v61 = sub_50BD4();
      if (!sub_27800(v61))
      {
        goto LABEL_25;
      }

      v62 = sub_5718();
      sub_36F28(v62);
      v58 = "orgInfo does not have name and number. Not listening after speaking.";
    }

LABEL_23:
    sub_36F08(&dword_0, v56, v57, v58);
LABEL_24:
    sub_5674();
    goto LABEL_25;
  }

LABEL_21:
  sub_50AE4();
  sub_36EC4();
  sub_36F34();
  v67 = sub_36EE4();
  v68(v67);
  v53 = sub_50AF4();
  v69 = sub_50BD4();
  if (sub_27800(v69))
  {
    v70 = sub_5718();
    sub_36F28(v70);
    v58 = "DisplayOnly request. Not listening after speaking.";
    goto LABEL_23;
  }

LABEL_25:

  v71 = *(v44 + 8);
  v72 = sub_36FF0();
  v73(v72);
  sub_8A94();
}

void sub_35C38()
{
  sub_13C8C();
  v3 = sub_50B04();
  v4 = sub_8558(v3);
  v82 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_5658();
  sub_13B08();
  __chkstk_darwin(v8);
  sub_EEF4();
  sub_13B08();
  __chkstk_darwin(v9);
  sub_EEF4();
  sub_13B08();
  __chkstk_darwin(v10);
  sub_13C5C();
  sub_13B48();
  v11 = sub_506E4();
  v12 = sub_8558(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_5630();
  v19 = v18 - v17;
  v20 = sub_2208(&qword_6D660, qword_53CD0);
  v21 = sub_569C(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_36FE0();
  v24 = sub_2208(&qword_6D668, &unk_53F60);
  v25 = sub_72B0(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_5658();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  sub_36EF4();
  __chkstk_darwin(v32);
  sub_37064();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  sub_28E0(v0, v33, 1, v11);
  sub_506D4();
  sub_13D50();
  sub_28E0(v34, v35, v36, v11);
  v37 = *(v20 + 48);
  sub_36D7C(v0, v2);
  sub_36D7C(v1, v2 + v37);
  sub_36EA4(v2);
  if (v45)
  {
    sub_36F58();
    sub_51C0(v38, v39, v40);
    sub_36F58();
    sub_51C0(v41, v42, v43);
    sub_36EA4(v2 + v37);
    if (v45)
    {
      sub_51C0(v2, &qword_6D668, &unk_53F60);
      v44 = v82;
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  sub_36D7C(v2, v30);
  sub_36EA4(v2 + v37);
  if (v45)
  {
    sub_36F58();
    sub_51C0(v46, v47, v48);
    sub_36F58();
    sub_51C0(v49, v50, v51);
    (*(v14 + 8))(v30, v11);
LABEL_12:
    sub_51C0(v2, &qword_6D660, qword_53CD0);
    v44 = v82;
    goto LABEL_13;
  }

  (*(v14 + 32))(v19, v2 + v37, v11);
  sub_36E8C();
  sub_36DEC(v64, 255, v65);
  v66 = sub_50B34();
  v67 = *(v14 + 8);
  v68 = sub_13C68();
  v67(v68);
  sub_51C0(v1, &qword_6D668, &unk_53F60);
  sub_51C0(v0, &qword_6D668, &unk_53F60);
  (v67)(v30, v11);
  sub_51C0(v2, &qword_6D668, &unk_53F60);
  v44 = v82;
  if ((v66 & 1) == 0)
  {
LABEL_13:
    if (sub_509C4())
    {
      sub_36E34();
      if ((sub_500D4() & 1) == 0)
      {
        sub_36E34();
        if ((sub_500C4() & 1) == 0)
        {
          sub_36E34();
          if ((sub_500A4() & 1) == 0)
          {
            sub_36E34();
            if ((sub_500B4() & 1) == 0)
            {
              sub_50AE4();
              sub_36EC4();
              sub_36F34();
              v76 = sub_36EE4();
              v77(v76);
              v54 = sub_50AF4();
              v78 = sub_50BD4();
              if (!sub_27800(v78))
              {
                goto LABEL_27;
              }

              v79 = sub_5718();
              sub_36F28(v79);
              sub_36F08(&dword_0, v80, v81, "Will listen after speaking the website followup.");
              goto LABEL_26;
            }
          }
        }
      }

      sub_50AE4();
      sub_36EC4();
      sub_36F34();
      v52 = sub_36EE4();
      v53(v52);
      v54 = sub_50AF4();
      v55 = sub_50BD4();
      if (!sub_27800(v55))
      {
        goto LABEL_27;
      }

      v56 = sub_5718();
      sub_36F28(v56);
      v59 = "No prompt needed for this device. Not listening after speaking.";
    }

    else
    {
      sub_50AE4();
      sub_36EC4();
      sub_36F34();
      v60 = sub_36EE4();
      v61(v60);
      v54 = sub_50AF4();
      v62 = sub_50BD4();
      if (!sub_27800(v62))
      {
        goto LABEL_27;
      }

      v63 = sub_5718();
      sub_36F28(v63);
      v59 = "orgInfo does not have name and website. Not listening after speaking.";
    }

LABEL_25:
    sub_36F08(&dword_0, v57, v58, v59);
LABEL_26:
    sub_5674();
    goto LABEL_27;
  }

LABEL_23:
  sub_50AE4();
  sub_36EC4();
  sub_36F34();
  v69 = sub_36EE4();
  v70(v69);
  v54 = sub_50AF4();
  v71 = sub_50BD4();
  if (sub_27800(v71))
  {
    v72 = sub_5718();
    sub_36F28(v72);
    v59 = "DisplayOnly request. Not listening after speaking.";
    goto LABEL_25;
  }

LABEL_27:

  v73 = *(v44 + 8);
  v74 = sub_36FF0();
  v75(v74);
  sub_8A94();
}

void sub_3623C()
{
  sub_13C8C();
  v88 = v2;
  v89 = v3;
  v4 = sub_50B04();
  v5 = sub_8558(v4);
  v91 = v6;
  v92 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_5658();
  v86 = v9 - v10;
  sub_13B08();
  __chkstk_darwin(v11);
  sub_EEF4();
  v85 = v12;
  sub_13B08();
  __chkstk_darwin(v13);
  sub_EEF4();
  v90 = v14;
  sub_13B08();
  __chkstk_darwin(v15);
  sub_13C5C();
  v87 = v16;
  sub_13B48();
  v17 = sub_506E4();
  v18 = sub_8558(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_5630();
  v25 = v24 - v23;
  v26 = sub_2208(&qword_6D660, qword_53CD0);
  v27 = sub_569C(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_36FE0();
  v30 = sub_2208(&qword_6D668, &unk_53F60);
  v31 = sub_72B0(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_5658();
  v36 = v34 - v35;
  __chkstk_darwin(v37);
  sub_36F64();
  __chkstk_darwin(v38);
  v40 = &v84 - v39;
  sub_50684();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  sub_28E0(v40, v41, 1, v17);
  sub_506D4();
  sub_13D50();
  sub_28E0(v42, v43, v44, v17);
  v45 = *(v26 + 48);
  sub_36D7C(v40, v1);
  sub_36D7C(v0, v1 + v45);
  sub_36EA4(v1);
  if (v48)
  {
    sub_51C0(v0, &qword_6D668, &unk_53F60);
    sub_51C0(v40, &qword_6D668, &unk_53F60);
    sub_36EA4(v1 + v45);
    v46 = v91;
    if (v48)
    {
      sub_51C0(v1, &qword_6D668, &unk_53F60);
      v47 = v92;
LABEL_24:
      sub_50AE4();
      sub_36EC4();
      sub_36F34();
      v64 = v87;
      sub_36F40();
      v70();
      v59 = sub_50AF4();
      sub_50BD4();
      sub_246B4();
      if (!os_log_type_enabled(v59, v71))
      {
        goto LABEL_32;
      }

      v72 = sub_5718();
      sub_36F28(v72);
      v75 = "DisplayOnly request. Not listening after speaking.";
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  sub_36D7C(v1, v36);
  sub_36EA4(v1 + v45);
  if (v48)
  {
    sub_36F58();
    sub_51C0(v49, v50, v51);
    sub_36F58();
    sub_51C0(v52, v53, v54);
    (*(v20 + 8))(v36, v17);
    v46 = v91;
LABEL_12:
    sub_51C0(v1, &qword_6D660, qword_53CD0);
    v47 = v92;
    goto LABEL_13;
  }

  (*(v20 + 32))(v25, v1 + v45, v17);
  sub_36E8C();
  sub_36DEC(v65, 255, v66);
  v67 = sub_50B34();
  v68 = *(v20 + 8);
  v69 = sub_13C68();
  v68(v69);
  sub_51C0(v0, &qword_6D668, &unk_53F60);
  sub_51C0(v40, &qword_6D668, &unk_53F60);
  (v68)(v36, v17);
  sub_51C0(v1, &qword_6D668, &unk_53F60);
  v46 = v91;
  v47 = v92;
  if (v67)
  {
    goto LABEL_24;
  }

LABEL_13:
  v55 = *(v88 + 104);
  if ((v55 & 0x2000000000000000) != 0)
  {
    v56 = HIBYTE(v55) & 0xF;
  }

  else
  {
    v56 = *(v88 + 96) & 0xFFFFFFFFFFFFLL;
  }

  v57 = v90;
  if (!v56)
  {
    sub_50AE4();
    sub_36EC4();
    sub_36F34();
    v64 = v86;
    sub_36F40();
    v76();
    v59 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v59, v77))
    {
      goto LABEL_32;
    }

    v78 = sub_5718();
    sub_36F28(v78);
    v75 = "orgInfo does not have a websearch query. Not listening after speaking.";
LABEL_28:
    sub_36F80(&dword_0, v73, v74, v75);
    goto LABEL_29;
  }

  sub_36E34();
  if (sub_500D4() & 1) != 0 || (sub_36E34(), (sub_500C4()) || (sub_36E34(), (sub_500A4()) || (sub_36E34(), (sub_500B4()))
  {
    sub_50AE4();
    sub_36EC4();
    sub_36F34();
    sub_36F40();
    v58();
    v59 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v59, v60))
    {
      v64 = v57;
      goto LABEL_32;
    }

    v61 = sub_5718();
    sub_36F28(v61);
    sub_36F80(&dword_0, v62, v63, "No prompt needed for this device. Not listening after speaking.");
    v64 = v57;
  }

  else
  {
    sub_50AE4();
    sub_36EC4();
    sub_36F34();
    v64 = v85;
    v79();
    v59 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v59, v80))
    {
      goto LABEL_32;
    }

    v81 = sub_5718();
    sub_36F28(v81);
    sub_36F80(&dword_0, v82, v83, "Will listen after speaking the websearch followup.");
  }

LABEL_29:
  sub_5674();
LABEL_32:

  (*(v46 + 8))(v64, v47);
  sub_8A94();
}

void sub_368B4()
{
  sub_13C8C();
  v61 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2208(&qword_6B998, qword_51850);
  v11 = sub_72B0(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_5658();
  sub_36F64();
  __chkstk_darwin(v14);
  v16 = &v60 - v15;
  v17 = sub_50804();
  v18 = sub_8558(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_5630();
  v25 = v24 - v23;
  memcpy(v63, v7, sizeof(v63));
  if (sub_E51C(v63) != 1)
  {
    v60 = v9;
    v62 = v20;
    memcpy(v64, v63, sizeof(v64));

    sub_2970();
    sub_507F4();
    v30 = sub_50744();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    sub_50734();
    sub_2970();
    sub_50724();

    v33 = sub_50714();

    if (sub_509A4())
    {
      v34 = sub_1FE8(v3, v3[3])[1];
      (*(v62 + 16))(v16, v25, v17);
      sub_13D50();
      sub_28E0(v35, v36, v37, v17);
      v38 = v61;
      v39 = v61[4];
      sub_1FE8(v61, v61[3]);

      v40 = sub_500B4();
      v41 = 0;
      if ((v40 & 1) == 0)
      {
        v42 = v38[4];
        sub_1FE8(v38, v38[3]);
        v41 = sub_50044() ^ 1;
      }

      sub_24CDC(v16, v33, v41 & 1);

      v43 = v16;
    }

    else
    {
      v44 = sub_509C4();
      v45 = v5[4];
      sub_1FE8(v5, v5[3]);
      if (v44)
      {
        v46 = v62;
        sub_246FC();
        v47(v0, v25, v17);
        sub_13D50();
        sub_28E0(v48, v49, v50, v17);
        v51 = *(v45 + 32);
        v52 = sub_36FF0();
        v53(v52);

        sub_51C0(v0, &qword_6B998, qword_51850);
        (*(v46 + 8))(v25, v17);
        goto LABEL_11;
      }

      sub_2970();
      sub_507F4();
      sub_13D50();
      sub_28E0(v54, v55, v56, v17);
      v57 = *(v45 + 24);
      v58 = sub_36FF0();
      v59(v58);

      v43 = v0;
    }

    sub_51C0(v43, &qword_6B998, qword_51850);
    (*(v62 + 8))(v25, v17);
    goto LABEL_11;
  }

  v26 = v5[4];
  sub_1FE8(v5, v5[3]);
  sub_28E0(v0, 1, 1, v17);
  v27 = *(v26 + 24);
  v28 = sub_36FF0();
  v29(v28);
  sub_51C0(v0, &qword_6B998, qword_51850);
LABEL_11:
  sub_8A94();
}

uint64_t sub_36D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_24780();
  v6 = v5(v4);
  sub_569C(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_36D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6D668, &unk_53F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_36DEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_36E34()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t sub_36E60()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t sub_36EC4()
{

  return swift_beginAccess();
}

void sub_36F08(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void sub_36F80(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t sub_36FFC()
{

  return sub_509A4();
}

void sub_37018(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_37030()
{
  result = v0;
  v3 = *(v1 - 224);
  return result;
}

uint64_t sub_37050()
{
  result = *(v0 - 336);
  v2 = *(v0 - 192);
  return result;
}

uint64_t sub_37064()
{

  return sub_50684();
}

uint64_t sub_37084@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_50864();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  type metadata accessor for CsamCATs();
  sub_37358();
  sub_3734C();
  v22 = sub_507A4();
  type metadata accessor for EmergencyCATs();
  sub_37358();
  sub_3734C();
  v21 = sub_507A4();
  type metadata accessor for DomesticViolenceCATs();
  sub_37358();
  sub_3734C();
  v20 = sub_507A4();
  type metadata accessor for PoisonControlCATs();
  sub_37358();
  sub_3734C();
  v19 = sub_507A4();
  type metadata accessor for SexualAssaultCATs();
  sub_37358();
  sub_3734C();
  v18 = sub_507A4();
  type metadata accessor for SuicidePreventionCATs();
  sub_37358();
  sub_3734C();
  v17 = sub_507A4();
  type metadata accessor for EmergencyDomesticViolenceBasicIntentCATs();
  sub_37358();
  sub_3734C();
  v4 = sub_507A4();
  type metadata accessor for EmergencyPoisonControlBasicIntentCATs();
  sub_37358();
  sub_3734C();
  v5 = sub_507A4();
  type metadata accessor for EmergencySexualAssaultBasicIntentCATs();
  sub_37358();
  sub_3734C();
  v6 = sub_507A4();
  type metadata accessor for EmergencySuicidePreventionBasicIntentCATs();
  sub_37358();
  sub_3734C();
  v7 = sub_507A4();
  type metadata accessor for EmergencyGeneralEmergencyCATs();
  sub_37358();
  sub_3734C();
  v8 = sub_507A4();
  type metadata accessor for SirenCATs();
  sub_37358();
  sub_3734C();
  v9 = sub_507A4();
  sub_50854();
  v10 = type metadata accessor for CommonCATs();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_3734C();
  v15 = sub_2B3C(v13, v14);
  type metadata accessor for EmergencyErrorsCATs();
  sub_37358();
  sub_3734C();
  result = sub_507A4();
  *a1 = v22;
  a1[1] = v21;
  a1[2] = v20;
  a1[3] = v19;
  a1[4] = v18;
  a1[5] = v17;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = v6;
  a1[9] = v7;
  a1[10] = v8;
  a1[11] = v9;
  a1[12] = v15;
  a1[13] = result;
  return result;
}

uint64_t sub_372A0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_372E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_37358()
{

  return sub_50854();
}

void *sub_37370(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_50B04();
  v9 = sub_8558(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_37A90();
  if (sub_500D4() & 1) != 0 || (sub_37A90(), (sub_500B4()) || (sub_37A90(), (sub_50044()))
  {
    v16 = sub_50AE4();
    swift_beginAccess();
    (*(v11 + 16))(v15, v16, v8);
    v17 = sub_50AF4();
    v18 = sub_50BD4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Device is HomePod or calling is not supported. Not making call button.", v19, 2u);
    }

    (*(v11 + 8))(v15, v8);
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v22 = sub_2BE64(a1, a2);
    sub_2208(&unk_6D0C0, &qword_53500);
    v20 = sub_37ABC();
    v28 = xmmword_51790;
    *(v20 + 16) = xmmword_51790;
    v23 = sub_37ABC();
    *(v23 + 16) = v28;
    *(v23 + 32) = v22;
    v24 = a2[4];
    sub_1FE8(a2, a2[3]);
    v25 = v22;
    v26 = sub_500A4();
    v27 = sub_37900(a3, a4, v23, v26 & 1);

    *(v20 + 32) = v27;
  }

  return v20;
}

void *sub_375D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v7 = sub_2208(&unk_6D680, &qword_515B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v35 - v9;
  v11 = sub_50B04();
  v12 = sub_8558(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_37AD4();
  if (sub_500D4() & 1) != 0 || (sub_37AD4(), (sub_500B4()))
  {
    v19 = sub_50AE4();
    swift_beginAccess();
    (*(v14 + 16))(v18, v19, v11);
    v20 = sub_50AF4();
    v21 = sub_50BD4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "Device is HomePod or AppleTV. Not making website button.", v22, 2u);
    }

    (*(v14 + 8))(v18, v11);
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v24 = [objc_allocWithZone(SAUIAppPunchOut) init];
    sub_8E60(a1, v10);
    v25 = sub_4FD64();
    v27 = 0;
    if (sub_513C(v10, 1, v25) != 1)
    {
      sub_4FD44(v26);
      v27 = v28;
      (*(*(v25 - 8) + 8))(v10, v25);
    }

    [v24 setPunchOutUri:v27];

    sub_2208(&unk_6D0C0, &qword_53500);
    v23 = sub_37ABC();
    v35 = xmmword_51790;
    *(v23 + 16) = xmmword_51790;
    v29 = sub_37ABC();
    *(v29 + 16) = v35;
    *(v29 + 32) = v24;
    v30 = a2[4];
    sub_1FE8(a2, a2[3]);
    v31 = v24;
    v32 = sub_500A4();
    v33 = sub_37900(a3, v36, v29, v32 & 1);

    *(v23 + 32) = v33;
  }

  return v23;
}

id sub_37900(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_2C83C(0, &qword_6D698, SASTButtonItem_ptr);

    v7 = sub_50C04();
    v8 = [objc_allocWithZone(SASTItemGroup) init];
    sub_2208(&unk_6D0C0, &qword_53500);
    v9 = sub_37ABC();
    *(v9 + 16) = xmmword_51790;
    *(v9 + 32) = v7;
    sub_37A10(v9, v8);
    return v8;
  }

  else
  {
    sub_2C83C(0, &qword_6D690, SAUIButton_ptr);

    return sub_2B558(a1, a2, a3);
  }
}

void sub_37A10(uint64_t a1, void *a2)
{
  sub_2208(&unk_6D700, qword_53DD0);
  isa = sub_50BC4().super.isa;

  [a2 setTemplateItems:isa];
}

uint64_t sub_37A90()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t sub_37ABC()
{

  return swift_allocObject();
}

uint64_t sub_37AD4()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t type metadata accessor for SuicidePreventionModernCATs()
{
  result = qword_6D710;
  if (!qword_6D710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_37B8C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_37BE0(a1, a2);
}

uint64_t sub_37BE0(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208(&unk_6D680, &qword_515B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_8E60(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_50814();
  (*(v8 + 8))(a2, v2);
  sub_8ED0(a1);
  return v16;
}

uint64_t sub_37D3C(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_50824();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_37E44(uint64_t a1)
{
  v2 = sub_50324();
  v3 = sub_8558(v2);
  v204 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v7);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v8);
  sub_EE14(v194 - v9);
  v10 = type metadata accessor for EmergencyNLIntent();
  v11 = sub_72B0(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v14);
  sub_EE14(v194 - v15);
  v209 = sub_50654();
  v16 = sub_8558(v209);
  v208 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_5630();
  sub_EE14(v21 - v20);
  v22 = sub_503A4();
  v23 = sub_72B0(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_5630();
  sub_EE14(v27 - v26);
  v28 = sub_50A24();
  v29 = sub_72B0(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v32);
  sub_EE14(v194 - v33);
  v195 = sub_50354();
  v34 = sub_8558(v195);
  v199 = v35;
  v37 = *(v36 + 64);
  __chkstk_darwin(v34);
  sub_5630();
  sub_EE14(v39 - v38);
  v40 = sub_50334();
  v41 = sub_8558(v40);
  v212 = v42;
  v213 = v41;
  v44 = *(v43 + 64);
  __chkstk_darwin(v41);
  sub_5630();
  v214 = v46 - v45;
  v47 = sub_502E4();
  v48 = sub_8558(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  __chkstk_darwin(v48);
  sub_5630();
  v55 = v54 - v53;
  v56 = sub_50B04();
  v57 = sub_8558(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  __chkstk_darwin(v57);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v62);
  sub_EEF4();
  sub_EE04();
  v64 = __chkstk_darwin(v63);
  v66 = v194 - v65;
  __chkstk_darwin(v64);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v67);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v68);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v69);
  v71 = v194 - v70;
  v72 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v216 = v59;
  v73 = *(v59 + 16);
  v210 = v72;
  v205 = v56;
  v218 = (v59 + 16);
  v215 = v73;
  v73(v71, v72, v56);
  v74 = *(v50 + 16);
  v206 = a1;
  v74(v55, a1, v47);
  v75 = sub_50AF4();
  v76 = sub_50BD4();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = sub_EFB0();
    v196 = v66;
    v78 = v77;
    v217 = sub_EFC8();
    v219 = v217;
    *v78 = 136315138;
    sub_3D9D4(&qword_6C078, 255, &type metadata accessor for Input);
    v79 = sub_50CD4();
    v80 = v2;
    v82 = v81;
    v84 = *(v50 + 8);
    v83 = v50 + 8;
    v84(v55, v47);
    v85 = sub_4DE68(v79, v82, &v219);
    v2 = v80;
    v86 = v204;

    *(v78 + 4) = v85;
    _os_log_impl(&dword_0, v75, v76, "#EmergencyBasicFlow onInput: %s", v78, 0xCu);
    sub_253C(v217);
    v87 = v211;
    sub_5674();
    v66 = v196;
    sub_5674();

    v88 = sub_3DA6C();
    v89(v88);
  }

  else
  {

    v90 = *(v50 + 8);
    v83 = v50 + 8;
    v90(v55, v47);
    v91 = sub_3DA6C();
    v92(v91);
    v86 = v204;
    v87 = v211;
  }

  v93 = v214;
  sub_502D4();
  v94 = v212;
  v95 = *(v212 + 88);
  v96 = sub_3DB3C();
  v98 = v97(v96);
  v99 = v210;
  if (v98 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v100 = v87;
    v102 = *(v94 + 96);
    v101 = v94 + 96;
    v103 = sub_3DB3C();
    v104(v103);
    (*(v208 + 32))(v207, v93, v209);
    sub_2970();
    swift_beginAccess();
    v105 = sub_3DADC(v225);
    v86(v105);
    v106 = sub_50AF4();
    v107 = sub_50BD4();
    if (sub_EF4C(v107))
    {
      v108 = sub_5718();
      *v108 = 0;
      _os_log_impl(&dword_0, v106, v107, "#EmergencyBasicFlow onInput .NLv3IntentOnly", v108, 2u);
      sub_5674();
    }

    v109 = sub_3DB48();
    v110(v109);
    v111 = v208;
    v112 = v202;
    v113 = v207;
    v114 = v209;
    (*(v208 + 16))(v202, v207, v209);
    sub_3D924();
    v115 = sub_3D4C0();
    v116 = v115;
    v117 = HIBYTE(v115);
    sub_1A2C0(v112, type metadata accessor for EmergencyNLIntent);
    (*(v111 + 8))(v113, v114);
    v87 = v100;
    goto LABEL_8;
  }

  if (v98 != enum case for Parse.directInvocation(_:))
  {
    if (v98 != enum case for Parse.uso(_:))
    {
      sub_2970();
      swift_beginAccess();
      v183 = v194[3];
      sub_3DA58();
      v184();
      v185 = sub_50AF4();
      v186 = sub_50BE4();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = sub_EFB0();
        v188 = sub_EFC8();
        v224 = v188;
        *v187 = 136315138;
        LOBYTE(v223) = 0;
        v189 = sub_50B64();
        v191 = sub_4DE68(v189, v190, &v224);

        *(v187 + 4) = v191;
        _os_log_impl(&dword_0, v185, v186, "%s", v187, 0xCu);
        sub_253C(v188);
        v94 = v212;
        sub_5674();
        sub_5674();
      }

      (v217)(v183, v76);
      (*(v94 + 8))(v214, v213);
      return 0;
    }

    v148 = *(v94 + 96);
    v101 = v94 + 96;
    v149 = sub_3DB3C();
    v150(v149);
    v151 = v195;
    (*(v199 + 32))(v198, v93, v195);
    sub_2970();
    swift_beginAccess();
    v152 = sub_3DADC(v220);
    v86(v152);
    v153 = sub_50AF4();
    v154 = sub_50BD4();
    if (sub_EF00(v154))
    {
      v155 = sub_5718();
      sub_EEC8(v155);
      sub_3DA48();
      _os_log_impl(v156, v157, v158, v159, v160, 2u);
      sub_EE58();
    }

    v161 = sub_3DB48();
    v162(v161);
    v163 = v198;
    sub_50344();
    v221 = &type metadata for EmergencyFeatureFlagsKey;
    v222 = sub_EB68();
    LOBYTE(v219) = 2;
    sub_50374();
    sub_253C(&v219);
    v164 = v194[5];
    sub_50A14();
    sub_3D924();
    v165 = sub_3D22C();
    v116 = v165;
    v117 = HIBYTE(v165);
    sub_1A2C0(v164, &type metadata accessor for EmergencyDialogAct);
    (*(v199 + 8))(v163, v151);
LABEL_8:
    if (v116 == 4 && v117 == 35)
    {
      sub_2970();
      swift_beginAccess();
      v118 = v200;
      (v86)(v200, v99, v101);
      v119 = sub_50AF4();
      v120 = sub_50BD4();
      if (sub_EF00(v120))
      {
        v121 = sub_5718();
        sub_EEC8(v121);
        sub_3DA48();
        _os_log_impl(v122, v123, v124, v125, v126, 2u);
        sub_EE58();
      }

      (v217)(v118, v101);
      return 0;
    }

LABEL_34:
    *(v87 + 216) = v116 | (v117 << 8);
    return 1;
  }

  v127 = v94;
  v128 = v87;
  v129 = *(v127 + 96);
  v130 = sub_3DB3C();
  v131(v130);
  v132 = v86;
  v133 = *(v86 + 4);
  v134 = v2;
  v133(v203, v93, v2);
  sub_2970();
  swift_beginAccess();
  sub_3DA58();
  v135();
  v136 = sub_50AF4();
  v137 = sub_50BD4();
  if (sub_EF00(v137))
  {
    v138 = sub_5718();
    sub_EEC8(v138);
    sub_3DA48();
    _os_log_impl(v139, v140, v141, v142, v143, 2u);
    sub_EE58();
  }

  v216 = v83 + 8;
  (v217)(v201, v76);
  v144 = v203;
  if (sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v145)
  {
  }

  else
  {
    v147 = sub_50CE4();

    if ((v147 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v166 = sub_2B6B0();
  if (v166 != 35)
  {
    LOWORD(v117) = v166;
    (*(v132 + 1))(v144, v134);
    LOWORD(v116) = 4;
    v87 = v128;
    goto LABEL_34;
  }

LABEL_28:
  sub_2970();
  swift_beginAccess();
  sub_3DA58();
  v167();
  v168 = *(v132 + 2);
  v169 = v197;
  v168(v197, v144, v134);
  v170 = sub_50AF4();
  v171 = sub_50BE4();
  if (sub_EF00(v171))
  {
    v172 = sub_EFB0();
    v218 = sub_EFC8();
    v223 = v218;
    *v172 = 136315138;
    v196 = v66;
    v168(v194[1], v169, v134);
    v173 = sub_50B64();
    v175 = v174;
    v176 = *(v132 + 1);
    v176(v169, v134);
    v177 = sub_4DE68(v173, v175, &v223);

    *(v172 + 4) = v177;
    sub_3DA48();
    _os_log_impl(v178, v179, v180, v181, v182, 0xCu);
    sub_253C(v218);
    sub_5674();
    sub_EE58();

    (v217)(v196, v76);
    v176(v203, v134);
  }

  else
  {

    v193 = *(v132 + 1);
    v193(v169, v134);
    (v217)(v66, v76);
    v193(v144, v134);
  }

  return 0;
}

uint64_t sub_38D38()
{
  sub_EF64();
  v1[57] = v2;
  v1[58] = v0;
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64) + 15;
  v1[59] = swift_task_alloc();
  v6 = sub_2208(&qword_6CEC0, &unk_53910);
  sub_72B0(v6);
  v8 = *(v7 + 64) + 15;
  v1[60] = swift_task_alloc();
  v9 = sub_2208(&qword_6B988, &qword_530B0);
  v1[61] = v9;
  sub_72B0(v9);
  v11 = *(v10 + 64) + 15;
  v1[62] = swift_task_alloc();
  v12 = sub_50B04();
  v1[63] = v12;
  v13 = *(v12 - 8);
  v1[64] = v13;
  v14 = *(v13 + 64) + 15;
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();

  return _swift_task_switch(sub_38EAC, 0, 0);
}

uint64_t sub_38EAC()
{
  v43 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v4 = sub_50AE4();
  *(v0 + 544) = v4;
  sub_2970();
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 552) = v5;
  *(v0 + 560) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_50AF4();
  v7 = sub_50BD4();
  if (sub_EF4C(v7))
  {
    *sub_5718() = 0;
    sub_3DB7C(&dword_0, v8, v7, "#EmergencyBasicFlow execute");
    sub_5674();
  }

  v9 = *(v0 + 536);
  v10 = *(v0 + 504);
  v11 = *(v0 + 512);
  v12 = *(v0 + 464);

  v13 = *(v11 + 8);
  *(v0 + 568) = v13;
  v13(v9, v10);
  v14 = *(v12 + 216);
  *(v0 + 584) = v14;
  if (v14 == 5)
  {
    v16 = *(v0 + 456);
    v17 = *(v0 + 464);
    sub_E9D0();
    v18 = swift_allocError();
    *v19 = 2;
    sub_1D68(v18, v17 + 16, (v17 + 56), v16);

    goto LABEL_7;
  }

  if (v14 == 6)
  {
    v15 = *(v0 + 456);
    sub_50194();
LABEL_7:
    sub_3DB98();

    v20 = *(v0 + 8);

    return v20();
  }

  v22 = *(v0 + 528);
  v23 = *(v0 + 504);
  sub_2970();
  swift_beginAccess();
  v5(v22, v4, v23);
  v24 = sub_50AF4();
  v25 = sub_50BD4();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 528);
  v28 = v14 >> 8;
  v29 = *(v0 + 504);
  v30 = *(v0 + 512);
  if (v26)
  {
    v41 = *(v0 + 512);
    v31 = sub_EFB0();
    v32 = sub_EFC8();
    v42 = v32;
    *v31 = 136315138;
    *(v0 + 586) = v14;
    v33 = sub_50B64();
    v40 = v27;
    v35 = sub_4DE68(v33, v34, &v42);
    v28 = v14 >> 8;

    *(v31 + 4) = v35;
    _os_log_impl(&dword_0, v24, v25, "#EmergencyBasicFlow needsExecution intent: %s", v31, 0xCu);
    sub_253C(v32);
    sub_5674();
    sub_5674();

    v36 = v29;
    v37 = v40;
  }

  else
  {

    v37 = v27;
    v36 = v29;
  }

  v13(v37, v36);
  v38 = *(v0 + 464);
  v39 = swift_task_alloc();
  *(v0 + 576) = v39;
  *v39 = v0;
  v39[1] = sub_39234;

  return sub_15100(v0 + 16, v38 + 136, v28, v14);
}

uint64_t sub_39234()
{
  sub_EF64();
  v1 = *(*v0 + 576);
  v2 = *v0;
  sub_EF2C();
  *v3 = v2;

  return _swift_task_switch(sub_39324, 0, 0);
}

uint64_t sub_39324()
{
  v1 = *(v0 + 584);
  v2 = sub_50A94();
  if (v2 == 35)
  {
    v3 = &qword_6C050;
    v4 = &qword_51E00;
    v5 = v0 + 16;
LABEL_8:
    sub_51C0(v5, v3, v4);
    v19 = *(v0 + 560);
    v20 = *(v0 + 552);
    v21 = *(v0 + 544);
    v22 = *(v0 + 520);
    v23 = *(v0 + 504);
    sub_2970();
    swift_beginAccess();
    v24 = sub_1A48C();
    v20(v24);
    v25 = sub_50AF4();
    v26 = sub_50BE4();
    if (sub_EF4C(v26))
    {
      v27 = sub_5718();
      sub_EEC8(v27);
      _os_log_impl(&dword_0, v25, v26, "#EmergencyBasicFlow Failed to pick a catWrapper", v23, 2u);
      sub_EE58();
    }

    v28 = *(v0 + 568);
    v29 = *(v0 + 520);
    v30 = *(v0 + 504);
    v31 = *(v0 + 512);
    v32 = *(v0 + 456);
    v33 = *(v0 + 464);

    v28(v29, v30);
    v34 = sub_1FE8((v33 + 56), *(v33 + 80));
    memcpy((v0 + 144), v34, 0x70uLL);
    sub_202C(v33 + 16, (v0 + 144));
    sub_50184();

    goto LABEL_16;
  }

  v6 = v2;
  v7 = *(v0 + 464);
  sub_856C();
  if (!*(v0 + 320))
  {
    sub_51C0(v0 + 16, &qword_6C050, &qword_51E00);
    v3 = &unk_6C7A8;
    v4 = &unk_526E0;
    v5 = v0 + 296;
    goto LABEL_8;
  }

  v9 = *(v0 + 480);
  v8 = *(v0 + 488);
  v10 = *(v0 + 464);
  sub_546C((v0 + 296), v0 + 256);
  v11 = v10[5];
  v12 = v10[6];
  sub_1FE8(v10 + 2, v11);
  (*(v12 + 8))(v11, v12);
  v13 = swift_task_alloc();
  *(v13 + 16) = v0 + 256;
  *(v13 + 24) = v0 + 336;
  sub_39748(sub_3D074, v9);

  if (sub_513C(v9, 1, v8) == 1)
  {
    v14 = *(v0 + 472);
    v15 = *(v0 + 280);
    v16 = *(v0 + 288);
    sub_1FE8((v0 + 256), v15);
    v17 = sub_50804();
    sub_28E0(v14, 1, 1, v17);
    sub_3DBC8();
    if (sub_500B4())
    {
      v18 = 0;
    }

    else
    {
      sub_3DBC8();
      v18 = sub_50044() ^ 1;
    }

    v38 = *(v0 + 488);
    v37 = *(v0 + 496);
    v39 = *(v0 + 472);
    v40 = *(v0 + 480);
    (*(v16 + 8))(v39, v18 & 1, v15, v16);
    sub_51C0(v39, &qword_6B998, qword_51850);
    if (sub_513C(v40, 1, v38) != 1)
    {
      sub_51C0(*(v0 + 480), &qword_6CEC0, &unk_53910);
    }
  }

  else
  {
    v35 = *(v0 + 496);
    v36 = *(v0 + 480);
    sub_3D17C();
  }

  v41 = *(v0 + 496);
  v42 = *(v0 + 456);
  sub_1FE8((*(v0 + 464) + 176), *(*(v0 + 464) + 200));
  sub_39CA4(v6, (v0 + 16), v41);
  sub_51C0(v0 + 16, &qword_6C050, &qword_51E00);
  sub_50184();

  sub_51C0(v41, &qword_6B988, &qword_530B0);
  sub_253C((v0 + 336));
  sub_253C((v0 + 256));
LABEL_16:
  sub_3DB98();

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_39748@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  if (sub_E51C(__dst) == 1)
  {
    v6 = sub_2208(&qword_6B988, &qword_530B0);
    v7 = a2;
    v8 = 1;
    return sub_28E0(v7, v8, 1, v6);
  }

  memcpy(__src, v2, sizeof(__src));
  memcpy(v12, v2, sizeof(v12));
  sub_5484(v12, v10);
  a1(__src);
  if (!v3)
  {
    memcpy(v10, __src, sizeof(v10));
    sub_5574(v10);
    v6 = sub_2208(&qword_6B988, &qword_530B0);
    v7 = a2;
    v8 = 0;
    return sub_28E0(v7, v8, 1, v6);
  }

  memcpy(v10, __src, sizeof(v10));
  result = sub_5574(v10);
  __break(1u);
  return result;
}

uint64_t sub_3987C()
{
  type metadata accessor for EmergencyBasicFlow();
  sub_3D9D4(&qword_6D858, v0, type metadata accessor for EmergencyBasicFlow);
  return sub_4FF14();
}

uint64_t sub_39908()
{
  sub_C840();

  return _swift_deallocClassInstance(v0, 218, 7);
}

uint64_t getEnumTagSinglePayload for EmergencyBasicFlow.EmergencyBasicFlowState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA)
  {
    v2 = a2 + 65286;
    if (a2 + 65286 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = *(a1 + 2);
        if (!*(a1 + 2))
        {
          break;
        }

        return (*a1 | (v5 << 16)) - 65286;
      case 2:
        v5 = a1[1];
        if (a1[1])
        {
          return (*a1 | (v5 << 16)) - 65286;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x39A20);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 16)) - 65286;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 <= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = *a1;
  }

  v9 = v8 - 4;
  if (v7 >= 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >= 3)
  {
    return v10 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EmergencyBasicFlow.EmergencyBasicFlowState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65286;
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x39B08);
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_39B30(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v2 - 4;
  if (v1 >= 4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_WORD *sub_39B50(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
  }

  else if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t sub_39BD0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_CD54;

  return sub_38D38();
}

uint64_t sub_39C6C()
{
  type metadata accessor for EmergencyBasicFlow();

  return sub_4FF64();
}

uint64_t sub_39CA4(unsigned int a1, const void *a2, uint64_t a3)
{
  v83 = a3;
  memcpy(__dst, a2, sizeof(__dst));
  v5 = sub_2208(&qword_6B988, &qword_530B0);
  sub_72B0(v5);
  v7 = *(v6 + 64);
  sub_72A4();
  __chkstk_darwin(v8);
  v81 = &v79 - v9;
  v82 = sub_50884();
  v10 = sub_569C(v82);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_5630();
  v15 = v14 - v13;
  v16 = sub_50B04();
  v17 = sub_8558(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v17);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v79 - v25;
  v27 = sub_2208(&qword_6CEB8, &qword_530A8);
  sub_72B0(v27);
  v29 = *(v28 + 64);
  sub_72A4();
  __chkstk_darwin(v30);
  v32 = &v79 - v31;
  v33 = type metadata accessor for ConfirmationFlowConfigModel();
  v34 = sub_569C(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_5630();
  v80 = v38 - v37;
  memcpy(v99, a2, sizeof(v99));
  if (sub_E51C(v99) == 1)
  {
    goto LABEL_4;
  }

  memcpy(v100, v99, sizeof(v100));
  memcpy(v98, __dst, sizeof(v98));
  sub_5484(v98, v97);
  sub_3A4E8(a1, v100, v83, v32);
  if (sub_513C(v32, 1, v33) == 1)
  {
    sub_51C0(a2, &qword_6C050, &qword_51E00);
    sub_51C0(v32, &qword_6CEB8, &qword_530A8);
LABEL_4:
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    v39 = *(v19 + 16);
    v40 = sub_3DB3C();
    v41(v40);
    v42 = sub_50AF4();
    v43 = sub_50BD4();
    if (sub_EF4C(v43))
    {
      *sub_5718() = 0;
      sub_3DB7C(&dword_0, v44, v43, "#EmergencyBasicFlow preparing promptless output");
      sub_5674();
    }

    (*(v19 + 8))(v24, v16);
    sub_3D1D4();
    sub_23BC(v84, v98);
    sub_50874();
    sub_3D9D4(&qword_6B990, 255, &type metadata accessor for OutputFlow);
    v45 = sub_4FF04();
    v46 = &type metadata accessor for OutputFlow;
    v47 = v15;
    goto LABEL_10;
  }

  sub_3DA2C();
  sub_3D97C();
  v48 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  (*(v19 + 16))(v26, v48, v16);
  v49 = sub_50AF4();
  v50 = sub_50BD4();
  if (sub_EF4C(v50))
  {
    *sub_5718() = 0;
    sub_3DB7C(&dword_0, v51, v50, "#EmergencyBasicFlow preparing for confirmation");
    sub_5674();
  }

  (*(v19 + 8))(v26, v16);
  v52 = v84;
  sub_23BC(v84, v95);
  sub_23BC(v52 + 40, v94);
  sub_5260(v52 + 80, v92);
  sub_52BC(v94, v94[3]);
  v84 = &v79;
  sub_5620();
  v54 = *(v53 + 64);
  __chkstk_darwin(v55);
  sub_5630();
  v58 = (v57 - v56);
  (*(v59 + 16))(v57 - v56);
  memcpy(v96, v58, sizeof(v96));
  v90 = v33;
  v91 = &off_66AB0;
  sub_530C(v89);
  v60 = v80;
  sub_3D924();
  v88[3] = &type metadata for EmergencyCATProvider;
  v88[4] = &off_66C88;
  v88[0] = swift_allocObject();
  memcpy((v88[0] + 16), v96, 0x70uLL);
  type metadata accessor for EmergencyConfirmationFlow();
  v61 = swift_allocObject();
  sub_52BC(v89, v90);
  sub_5620();
  v63 = *(v62 + 64);
  __chkstk_darwin(v64);
  sub_5630();
  (*(v67 + 16))(v66 - v65);
  sub_52BC(v88, &type metadata for EmergencyCATProvider);
  sub_5620();
  v69 = *(v68 + 64);
  __chkstk_darwin(v70);
  sub_5630();
  v73 = (v72 - v71);
  (*(v74 + 16))(v72 - v71);
  memcpy(v97, v73, 0x70uLL);
  v86 = v33;
  v87 = &off_66AB0;
  sub_530C(&v85);
  sub_3DA2C();
  sub_3D97C();
  *(v61 + 256) = &type metadata for EmergencyCATProvider;
  *(v61 + 264) = &off_66C88;
  v75 = swift_allocObject();
  *(v61 + 232) = v75;
  memcpy((v75 + 16), v97, 0x70uLL);
  memcpy((v61 + 24), v100, 0x80uLL);
  sub_546C(&v85, v61 + 152);
  sub_546C(v95, v61 + 192);
  v76 = v92[1];
  *(v61 + 272) = v92[0];
  *(v61 + 288) = v76;
  v77 = v93;
  *(v61 + 16) = 0;
  *(v61 + 312) = 0;
  *(v61 + 320) = 0;
  *(v61 + 304) = v77;
  sub_253C(v88);
  sub_253C(v89);
  sub_253C(v94);
  *&v95[0] = v61;
  sub_3D9D4(&qword_6BB48, 255, type metadata accessor for EmergencyConfirmationFlow);
  v45 = sub_4FF04();

  v46 = type metadata accessor for ConfirmationFlowConfigModel;
  v47 = v60;
LABEL_10:
  sub_1A2C0(v47, v46);
  return v45;
}

uint64_t sub_3A4E8@<X0>(unsigned int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v69 = a4;
  memcpy(__dst, a2, sizeof(__dst));
  v9 = sub_2208(&qword_6B988, &qword_530B0);
  sub_569C(v9);
  v11 = *(v10 + 64);
  sub_72A4();
  __chkstk_darwin(v12);
  v67 = v63 - v13;
  v14 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v14);
  v16 = *(v15 + 64);
  sub_72A4();
  __chkstk_darwin(v17);
  v19 = v63 - v18;
  v65 = sub_508C4();
  v20 = sub_569C(v65);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_5630();
  v25 = v24 - v23;
  v26 = sub_2208(&qword_6CEC0, &unk_53910);
  v27 = sub_72B0(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_EE34();
  v68 = v30;
  v32 = __chkstk_darwin(v31);
  v34 = v63 - v33;
  __chkstk_darwin(v32);
  v36 = v63 - v35;
  sub_28E0(v63 - v35, 1, 1, v9);
  v70 = a1;
  if (sub_3AAF0())
  {
    v66 = a3;
    sub_23BC(v5, v72);
    sub_23BC((v5 + 5), &v74);
    memcpy(v76, __dst, 0x80uLL);
    sub_1A058(v76);
    memcpy(v75, v76, sizeof(v75));
    sub_5484(a2, &v71);
    sub_EA30();
    v37 = sub_4FF04();
    sub_EA84(v72);
    sub_3DB08();
    sub_24CBC();

    sub_3DB60();
    sub_28E0(v34, 0, 1, v9);
    sub_3D17C();
    v38 = sub_3DAF8();
    v40 = sub_3AE88(v38, v39);
    v41 = 0;
    v42 = 2;
    goto LABEL_8;
  }

  v63[1] = v9;
  v64 = v36;
  v63[0] = v34;
  v43 = v70;
  if ((sub_3B57C() & 1) == 0)
  {
    if ((sub_3C2E4(v43, a2) & 1) == 0)
    {
      v55 = v64;
      goto LABEL_12;
    }

    v66 = a3;
    v50 = a2[12];
    v49 = a2[13];
    v9 = v5[3];
    v51 = v5[4];
    sub_1FE8(v5, v9);
    v52 = *(v51 + 16);

    v52(v73, v9, v51);
    v72[0] = v50;
    v72[1] = v49;
    sub_1A1BC();
    sub_4FF04();
    sub_1A210(v72);
    sub_3DB08();
    v37 = v63[0];
    sub_25110();

    sub_3DB60();
    v41 = 1;
    sub_3DA90();
    v53 = sub_3DAF8();
    v40 = sub_3C74C(v53, v54);
    v42 = 4;
LABEL_8:
    v55 = v68;
    sub_3D17C();
    if (sub_513C(v55, 1, v9) != 1)
    {
      v56 = v69;
      sub_3D17C();
      sub_3D1D4();
      v57 = v37;
      v58 = type metadata accessor for ConfirmationFlowConfigModel();
      v59 = v58[5];
      sub_3D17C();
      *(v56 + v58[6]) = v57;
      *(v56 + v58[7]) = v42;
      *(v56 + v58[8]) = v41;
      *(v56 + v58[9]) = v40 & 1;
      v60 = v56;
      v61 = 0;
      v62 = v58;
      return sub_28E0(v60, v61, 1, v62);
    }

    sub_275B8(v42);

LABEL_12:
    sub_51C0(v55, &qword_6CEC0, &unk_53910);
    v62 = type metadata accessor for ConfirmationFlowConfigModel();
    v60 = v69;
    v61 = 1;
    return sub_28E0(v60, v61, 1, v62);
  }

  v66 = a3;
  v9 = v5[3];
  v44 = v5[4];
  sub_1FE8(v5, v9);
  (*(v44 + 16))(v72, v9, v44);
  sub_50984();
  v45 = sub_4FD64();
  result = sub_513C(v19, 1, v45);
  if (result != 1)
  {
    sub_2970();
    sub_508B4();
    sub_3D9D4(&qword_6C7B0, 255, &type metadata accessor for AppPunchOutFlow);
    sub_4FF04();
    sub_1A2C0(v25, &type metadata accessor for AppPunchOutFlow);
    sub_3DB08();
    v37 = v63[0];
    sub_25110();

    sub_3DB60();
    sub_3DA90();
    v47 = sub_3DAF8();
    v40 = sub_3B9D0(v47, v48);
    v41 = 2;
    v42 = 3;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_3AAF0()
{
  v1 = sub_50B04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26[-1] - v7;
  if (sub_509A4())
  {
    v9 = v0[3];
    v10 = v0[4];
    sub_1FE8(v0, v9);
    (*(v10 + 8))(v26, v9, v10);
    sub_1FE8(v26, v27);
    if (sub_500B4())
    {
      v11 = 0;
    }

    else
    {
      sub_1FE8(v26, v27);
      v11 = sub_50044() ^ 1;
    }

    sub_253C(v26);
    v16 = sub_50AE4();
    swift_beginAccess();
    (*(v2 + 16))(v8, v16, v1);
    v17 = sub_50AF4();
    v18 = sub_50BD4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      if (v11)
      {
        v21 = 0x6E6974706D6F7250;
      }

      else
      {
        v21 = 0x6D6F727020746F4ELL;
      }

      if (v11)
      {
        v22 = 0xE900000000000067;
      }

      else
      {
        v22 = 0xED0000676E697470;
      }

      v23 = sub_4DE68(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_0, v17, v18, "%s for call followup.", v19, 0xCu);
      sub_253C(v20);
    }

    (*(v2 + 8))(v8, v1);
  }

  else
  {
    v12 = sub_50AE4();
    swift_beginAccess();
    (*(v2 + 16))(v6, v12, v1);
    v13 = sub_50AF4();
    v14 = sub_50BD4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "orgInfo does not have name and number. Not prompting for call followup.", v15, 2u);
    }

    (*(v2 + 8))(v6, v1);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_3AE88(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v2 = sub_50B04();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  v4 = __chkstk_darwin(v2);
  v49 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v48 = &v46[-v7];
  __chkstk_darwin(v6);
  v50 = &v46[-v8];
  v9 = sub_506E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2208(&qword_6D660, qword_53CD0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v46[-v16];
  v18 = sub_2208(&qword_6D668, &unk_53F60);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v46[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20);
  v25 = &v46[-v24];
  __chkstk_darwin(v23);
  v27 = &v46[-v26];
  sub_50684();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  sub_28E0(v27, v28, 1, v9);
  sub_506D4();
  sub_28E0(v25, 0, 1, v9);
  v29 = *(v14 + 48);
  sub_3D1D4();
  sub_3D1D4();
  if (sub_513C(v17, 1, v9) == 1)
  {
    sub_51C0(v25, &qword_6D668, &unk_53F60);
    sub_51C0(v27, &qword_6D668, &unk_53F60);
    if (sub_513C(&v17[v29], 1, v9) == 1)
    {
      sub_51C0(v17, &qword_6D668, &unk_53F60);
      v31 = v52;
      v30 = v53;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  sub_3D1D4();
  if (sub_513C(&v17[v29], 1, v9) == 1)
  {
    sub_51C0(v25, &qword_6D668, &unk_53F60);
    sub_51C0(v27, &qword_6D668, &unk_53F60);
    (*(v10 + 8))(v22, v9);
LABEL_9:
    sub_51C0(v17, &qword_6D660, qword_53CD0);
    v31 = v52;
    v30 = v53;
    goto LABEL_10;
  }

  (*(v10 + 32))(v13, &v17[v29], v9);
  sub_3D9D4(&unk_6D670, 255, &type metadata accessor for ResponseMode);
  v47 = sub_50B34();
  v43 = *(v10 + 8);
  v43(v13, v9);
  sub_51C0(v25, &qword_6D668, &unk_53F60);
  sub_51C0(v27, &qword_6D668, &unk_53F60);
  v43(v22, v9);
  sub_51C0(v17, &qword_6D668, &unk_53F60);
  v31 = v52;
  v30 = v53;
  if (v47)
  {
LABEL_16:
    v44 = sub_50AE4();
    swift_beginAccess();
    v35 = v50;
    (*(v31 + 16))(v50, v44, v30);
    v36 = sub_50AF4();
    v40 = sub_50BD4();
    if (os_log_type_enabled(v36, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "DisplayOnly request. Not listening after speaking.";
      goto LABEL_18;
    }

LABEL_20:
    v39 = 0;
    goto LABEL_22;
  }

LABEL_10:
  v32 = sub_509A4();
  v33 = sub_50AE4();
  v34 = (v31 + 16);
  if (v32)
  {
    swift_beginAccess();
    v35 = v48;
    (*v34)(v48, v33, v30);
    v36 = sub_50AF4();
    v37 = sub_50BD4();
    if (!os_log_type_enabled(v36, v37))
    {
      v39 = 1;
      goto LABEL_22;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "Will listen after speaking the call followup.", v38, 2u);
    v39 = 1;
    goto LABEL_19;
  }

  swift_beginAccess();
  v35 = v49;
  (*v34)(v49, v33, v30);
  v36 = sub_50AF4();
  v40 = sub_50BD4();
  if (!os_log_type_enabled(v36, v40))
  {
    goto LABEL_20;
  }

  v41 = swift_slowAlloc();
  *v41 = 0;
  v42 = "orgInfo does not have name and number. Not listening after speaking.";
LABEL_18:
  _os_log_impl(&dword_0, v36, v40, v42, v41, 2u);
  v39 = 0;
LABEL_19:

LABEL_22:

  (*(v31 + 8))(v35, v30);
  return v39;
}

uint64_t sub_3B57C()
{
  v1 = sub_50B04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v27[-v8];
  __chkstk_darwin(v7);
  v11 = &v27[-v10];
  if ((sub_509A4() & 1) != 0 || (sub_509C4() & 1) == 0)
  {
    v18 = sub_50AE4();
    swift_beginAccess();
    (*(v2 + 16))(v6, v18, v1);
    v19 = sub_50AF4();
    v20 = sub_50BD4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "orgInfo does not have name and website. Not prompting for website followup.", v21, 2u);
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }

  v12 = v0[3];
  v13 = v0[4];
  sub_1FE8(v0, v12);
  (*(v13 + 8))(v28, v12, v13);
  sub_1FE8(v28, v29);
  if (sub_500D4() & 1) != 0 || (sub_1FE8(v28, v29), (sub_50044()) || (sub_1FE8(v28, v29), (sub_500C4()) || (sub_1FE8(v28, v29), (sub_500A4()) || (sub_1FE8(v28, v29), (sub_500B4()))
  {
    v14 = sub_50AE4();
    swift_beginAccess();
    (*(v2 + 16))(v11, v14, v1);
    v15 = sub_50AF4();
    v16 = sub_50BD4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "No prompt needed for this device. Not prompting for website followup.", v17, 2u);
    }

    (*(v2 + 8))(v11, v1);
    sub_253C(v28);
    return 0;
  }

  v23 = sub_50AE4();
  swift_beginAccess();
  (*(v2 + 16))(v9, v23, v1);
  v24 = sub_50AF4();
  v25 = sub_50BD4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_0, v24, v25, "Prompting for website followup.", v26, 2u);
  }

  (*(v2 + 8))(v9, v1);
  sub_253C(v28);
  return 1;
}

uint64_t sub_3B9D0(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v2 = sub_50B04();
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = *(v63 + 64);
  v4 = __chkstk_darwin(v2);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v57 = &v57 - v7;
  v8 = __chkstk_darwin(v6);
  v58 = &v57 - v9;
  __chkstk_darwin(v8);
  v61 = &v57 - v10;
  v11 = sub_506E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2208(&qword_6D660, qword_53CD0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v57 - v18;
  v20 = sub_2208(&qword_6D668, &unk_53F60);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v57 - v26;
  __chkstk_darwin(v25);
  v29 = &v57 - v28;
  sub_50684();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  sub_28E0(v29, v30, 1, v11);
  sub_506D4();
  sub_28E0(v27, 0, 1, v11);
  v31 = *(v16 + 48);
  sub_3D1D4();
  sub_3D1D4();
  if (sub_513C(v19, 1, v11) == 1)
  {
    sub_51C0(v27, &qword_6D668, &unk_53F60);
    sub_51C0(v29, &qword_6D668, &unk_53F60);
    v32 = sub_513C(&v19[v31], 1, v11);
    v33 = v64;
    if (v32 == 1)
    {
      sub_51C0(v19, &qword_6D668, &unk_53F60);
      v34 = v63;
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  sub_3D1D4();
  if (sub_513C(&v19[v31], 1, v11) == 1)
  {
    sub_51C0(v27, &qword_6D668, &unk_53F60);
    sub_51C0(v29, &qword_6D668, &unk_53F60);
    (*(v12 + 8))(v24, v11);
    v33 = v64;
LABEL_9:
    sub_51C0(v19, &qword_6D660, qword_53CD0);
    v34 = v63;
    goto LABEL_10;
  }

  (*(v12 + 32))(v15, &v19[v31], v11);
  sub_3D9D4(&unk_6D670, 255, &type metadata accessor for ResponseMode);
  v48 = sub_50B34();
  v49 = *(v12 + 8);
  v49(v15, v11);
  sub_51C0(v27, &qword_6D668, &unk_53F60);
  sub_51C0(v29, &qword_6D668, &unk_53F60);
  v49(v24, v11);
  sub_51C0(v19, &qword_6D668, &unk_53F60);
  v34 = v63;
  v33 = v64;
  if (v48)
  {
LABEL_22:
    v50 = sub_50AE4();
    swift_beginAccess();
    v43 = v61;
    (*(v34 + 16))(v61, v50, v33);
    v44 = sub_50AF4();
    v45 = sub_50BD4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "DisplayOnly request. Not listening after speaking.";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

LABEL_10:
  if ((sub_509C4() & 1) == 0)
  {
    v42 = sub_50AE4();
    swift_beginAccess();
    v43 = v60;
    (*(v34 + 16))(v60, v42, v33);
    v44 = sub_50AF4();
    v45 = sub_50BD4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "orgInfo does not have name and website. Not listening after speaking.";
LABEL_24:
      _os_log_impl(&dword_0, v44, v45, v47, v46, 2u);
    }

LABEL_25:

    (*(v34 + 8))(v43, v33);
    return 0;
  }

  v35 = v59[3];
  v36 = v59[4];
  sub_1FE8(v59, v35);
  (*(v36 + 8))(v65, v35, v36);
  sub_1FE8(v65, v66);
  if (sub_500D4() & 1) != 0 || (sub_1FE8(v65, v66), (sub_50044()) || (sub_1FE8(v65, v66), (sub_500C4()) || (sub_1FE8(v65, v66), (sub_500A4()) || (sub_1FE8(v65, v66), (sub_500B4()))
  {
    v37 = sub_50AE4();
    swift_beginAccess();
    v38 = v58;
    (*(v34 + 16))(v58, v37, v33);
    v39 = sub_50AF4();
    v40 = sub_50BD4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "No prompt needed for this device. Not listening after speaking.", v41, 2u);
    }

    (*(v34 + 8))(v38, v33);
    sub_253C(v65);
    return 0;
  }

  v52 = sub_50AE4();
  swift_beginAccess();
  v53 = v57;
  (*(v34 + 16))(v57, v52, v33);
  v54 = sub_50AF4();
  v55 = sub_50BD4();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_0, v54, v55, "Will listen after speaking the website followup.", v56, 2u);
  }

  (*(v34 + 8))(v53, v33);
  sub_253C(v65);
  return 1;
}

uint64_t sub_3C2E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_50B04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v32[-v12];
  __chkstk_darwin(v11);
  v15 = &v32[-v14];
  if (sub_509A4())
  {
    goto LABEL_13;
  }

  v16 = *(a2 + 104);
  if ((v16 & 0x2000000000000000) != 0)
  {
    if ((v16 & 0xF00000000000000) != 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    v23 = sub_50AE4();
    swift_beginAccess();
    (*(v6 + 16))(v10, v23, v5);
    v24 = sub_50AF4();
    v25 = sub_50BD4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "orgInfo does not have a websearch query. Not prompting for websearch followup.", v26, 2u);
    }

    (*(v6 + 8))(v10, v5);
    return 0;
  }

  if ((*(a2 + 96) & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  v17 = v3[3];
  v18 = v3[4];
  sub_1FE8(v3, v17);
  (*(v18 + 8))(v33, v17, v18);
  sub_1FE8(v33, v34);
  if (sub_500D4() & 1) != 0 || (sub_1FE8(v33, v34), (sub_50044()) || (sub_1FE8(v33, v34), (sub_500C4()) || (sub_1FE8(v33, v34), (sub_500A4()) || (sub_1FE8(v33, v34), (sub_500B4()))
  {
    v19 = sub_50AE4();
    swift_beginAccess();
    (*(v6 + 16))(v15, v19, v5);
    v20 = sub_50AF4();
    v21 = sub_50BD4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "No prompt needed for this device. Not prompting for websearch followup.", v22, 2u);
    }

    (*(v6 + 8))(v15, v5);
    sub_253C(v33);
    return 0;
  }

  v28 = sub_50AE4();
  swift_beginAccess();
  (*(v6 + 16))(v13, v28, v5);
  v29 = sub_50AF4();
  v30 = sub_50BD4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "Prompting for websearch followup.", v31, 2u);
  }

  (*(v6 + 8))(v13, v5);
  sub_253C(v33);
  return 1;
}

uint64_t sub_3C74C(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v2 = sub_50B04();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  v4 = __chkstk_darwin(v2);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v58 = &v58 - v7;
  v8 = __chkstk_darwin(v6);
  v63 = &v58 - v9;
  __chkstk_darwin(v8);
  v60 = &v58 - v10;
  v11 = sub_506E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2208(&qword_6D660, qword_53CD0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  v20 = sub_2208(&qword_6D668, &unk_53F60);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v58 - v26;
  __chkstk_darwin(v25);
  v29 = &v58 - v28;
  sub_50684();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  sub_28E0(v29, v30, 1, v11);
  sub_506D4();
  sub_28E0(v27, 0, 1, v11);
  v31 = *(v16 + 48);
  sub_3D1D4();
  sub_3D1D4();
  if (sub_513C(v19, 1, v11) == 1)
  {
    sub_51C0(v27, &qword_6D668, &unk_53F60);
    sub_51C0(v29, &qword_6D668, &unk_53F60);
    v32 = sub_513C(&v19[v31], 1, v11);
    v33 = v65;
    if (v32 == 1)
    {
      sub_51C0(v19, &qword_6D668, &unk_53F60);
      v34 = v64;
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  sub_3D1D4();
  if (sub_513C(&v19[v31], 1, v11) == 1)
  {
    sub_51C0(v27, &qword_6D668, &unk_53F60);
    sub_51C0(v29, &qword_6D668, &unk_53F60);
    (*(v12 + 8))(v24, v11);
    v33 = v65;
LABEL_9:
    sub_51C0(v19, &qword_6D660, qword_53CD0);
    v34 = v64;
    goto LABEL_10;
  }

  (*(v12 + 32))(v15, &v19[v31], v11);
  sub_3D9D4(&unk_6D670, 255, &type metadata accessor for ResponseMode);
  v44 = sub_50B34();
  v45 = *(v12 + 8);
  v45(v15, v11);
  sub_51C0(v27, &qword_6D668, &unk_53F60);
  sub_51C0(v29, &qword_6D668, &unk_53F60);
  v45(v24, v11);
  sub_51C0(v19, &qword_6D668, &unk_53F60);
  v34 = v64;
  v33 = v65;
  if (v44)
  {
LABEL_23:
    v46 = sub_50AE4();
    swift_beginAccess();
    v47 = v60;
    (*(v34 + 16))(v60, v46, v33);
    v48 = sub_50AF4();
    v49 = sub_50BD4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "DisplayOnly request. Not listening after speaking.";
LABEL_27:
      _os_log_impl(&dword_0, v48, v49, v51, v50, 2u);

      goto LABEL_28;
    }

    goto LABEL_28;
  }

LABEL_10:
  v35 = *(v62 + 104);
  if ((v35 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v35) & 0xF;
  }

  else
  {
    v36 = *(v62 + 96) & 0xFFFFFFFFFFFFLL;
  }

  v37 = v63;
  if (!v36)
  {
    v52 = sub_50AE4();
    swift_beginAccess();
    v47 = v59;
    (*(v34 + 16))(v59, v52, v33);
    v48 = sub_50AF4();
    v49 = sub_50BD4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "orgInfo does not have a websearch query. Not listening after speaking.";
      goto LABEL_27;
    }

LABEL_28:

    (*(v34 + 8))(v47, v33);
    return 0;
  }

  v38 = v61[3];
  v39 = v61[4];
  sub_1FE8(v61, v38);
  (*(v39 + 8))(v66, v38, v39);
  sub_1FE8(v66, v67);
  if (sub_500D4() & 1) != 0 || (sub_1FE8(v66, v67), (sub_50044()) || (sub_1FE8(v66, v67), (sub_500C4()) || (sub_1FE8(v66, v67), (sub_500A4()) || (sub_1FE8(v66, v67), (sub_500B4()))
  {
    v40 = sub_50AE4();
    swift_beginAccess();
    (*(v34 + 16))(v37, v40, v33);
    v41 = sub_50AF4();
    v42 = sub_50BD4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "No prompt needed for this device. Not listening after speaking.", v43, 2u);
    }

    (*(v34 + 8))(v37, v33);
    sub_253C(v66);
    return 0;
  }

  v54 = sub_50AE4();
  swift_beginAccess();
  (*(v34 + 16))(v58, v54, v33);
  v55 = sub_50AF4();
  v56 = sub_50BD4();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v55, v56, "Will listen after speaking the websearch followup.", v57, 2u);
  }

  (*(v34 + 8))(v58, v33);
  sub_253C(v66);
  return 1;
}

uint64_t sub_3D074(void *__src)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  memcpy(v5, __src, sizeof(v5));
  return sub_2588(v2);
}

uint64_t sub_3D0DC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_3D17C()
{
  sub_3DBBC();
  v3 = sub_2208(v1, v2);
  sub_569C(v3);
  v5 = *(v4 + 32);
  v6 = sub_1A48C();
  v7(v6);
  return v0;
}

uint64_t sub_3D1D4()
{
  sub_3DBBC();
  v3 = sub_2208(v1, v2);
  sub_569C(v3);
  v5 = *(v4 + 16);
  v6 = sub_1A48C();
  v7(v6);
  return v0;
}

uint64_t sub_3D22C()
{
  v0 = sub_50B04();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_50A24();
  v25[3] = v5;
  v25[4] = &protocol witness table for EmergencyDialogAct;
  v6 = sub_530C(v25);
  sub_3D97C();
  v7 = sub_50AE4();
  swift_beginAccess();
  (*(v1 + 16))(v4, v7, v0);
  sub_23BC(v25, v24);
  v8 = sub_50AF4();
  v9 = sub_50BD4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = v0;
    v11 = v10;
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    sub_23BC(v24, v22);
    sub_2208(&qword_6C080, &qword_51E10);
    v13 = sub_50B64();
    v15 = v14;
    sub_253C(v24);
    v16 = sub_4DE68(v13, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, "Converting EmergencyDialogAct to EmergencyBasicIntent: %s", v11, 0xCu);
    sub_253C(v12);

    (*(v1 + 8))(v4, v21);
  }

  else
  {

    sub_253C(v24);
    (*(v1 + 8))(v4, v0);
  }

  v17 = *(v6 + *(v5 + 28));
  v18 = *(v6 + *(v5 + 24));
  sub_253C(v25);
  return v17 | (v18 << 8);
}

uint64_t sub_3D4C0()
{
  v0 = sub_50B04();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EmergencyNLIntent();
  v30 = v5;
  v31 = sub_3D9D4(&qword_6C088, 255, type metadata accessor for EmergencyNLIntent);
  sub_530C(v29);
  sub_3D97C();
  v6 = sub_50AE4();
  swift_beginAccess();
  (*(v1 + 16))(v4, v6, v0);
  sub_23BC(v29, v27);
  v7 = sub_50AF4();
  v8 = sub_50BD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v25[1] = v5;
    v10 = v9;
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    v12 = v28;
    v13 = sub_1FE8(v27, v28);
    v25[0] = v25;
    v14 = *(*(v12 - 8) + 64);
    __chkstk_darwin(v13);
    v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16);
    v18 = sub_3DBF4();
    v20 = v19;
    sub_1A2C0(v16, type metadata accessor for EmergencyNLIntent);
    sub_253C(v27);
    v21 = sub_4DE68(v18, v20, &v26);

    *(v10 + 4) = v21;
    _os_log_impl(&dword_0, v7, v8, "Converting EmergencyNLIntent: %s", v10, 0xCu);
    sub_253C(v11);

    (*(v1 + 8))(v4, v0);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
    sub_253C(v27);
  }

  sub_1FE8(v29, v30);
  if (qword_6B608 != -1)
  {
    swift_once();
  }

  sub_3D9D4(&qword_6BD68, 255, type metadata accessor for EmergencyNLIntent);
  sub_50524();
  v22 = LOBYTE(v27[0]);
  sub_1FE8(v29, v30);
  if (qword_6B5F8 != -1)
  {
    swift_once();
  }

  sub_50524();
  v23 = LOBYTE(v27[0]);
  sub_253C(v29);
  return v22 | (v23 << 8);
}

uint64_t sub_3D924()
{
  sub_3DBBC();
  v2 = v1(0);
  sub_569C(v2);
  v4 = *(v3 + 16);
  v5 = sub_1A48C();
  v6(v5);
  return v0;
}

uint64_t sub_3D97C()
{
  sub_3DBBC();
  v2 = v1(0);
  sub_569C(v2);
  v4 = *(v3 + 32);
  v5 = sub_1A48C();
  v6(v5);
  return v0;
}

uint64_t sub_3D9D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_3DA6C()
{
  result = v0;
  v3 = *(v1 - 296);
  *(v1 - 200) = *(*(v1 - 208) + 8);
  return result;
}

uint64_t sub_3DA90()
{
  sub_28E0(v1, 0, 1, *(v0 + 8));

  return sub_3D17C();
}

uint64_t sub_3DADC@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 216);
  v4 = *(v1 - 192);
  return result;
}

uint64_t sub_3DB08()
{
  v1 = sub_1FE8((v0 + 40), *(v0 + 64))[1];
}

uint64_t sub_3DB48()
{
  result = v0;
  v3 = *(v1 - 200);
  return result;
}

uint64_t sub_3DB60()
{

  return sub_51C0(v2, v0, v1);
}

void sub_3DB7C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_3DB98()
{
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[62];
  v7 = v0[59];
  v6 = v0[60];
}

uint64_t sub_3DBC8()
{
  v2 = *(v0 + 360);
  sub_1FE8(v1, v2);
  return v2;
}

uint64_t sub_3DBF4()
{
  sub_50C64(98);
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0x80000000000561B0;
  sub_50BA4(v3);
  if (qword_6B5F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for EmergencyNLIntent();
  sub_41B84();
  sub_41B3C(v0, 255, v1);
  sub_41CA0();
  sub_50524();
  sub_2208(&qword_6D960, &unk_54370);
  v4._countAndFlagsBits = sub_50C14();
  sub_41D84(v4);

  v5._countAndFlagsBits = 0x61757469532D200ALL;
  v5._object = 0xEE00203A6E6F6974;
  sub_50BA4(v5);
  if (qword_6B5F8 != -1)
  {
    sub_41C74();
  }

  sub_41C14();
  sub_2208(&qword_6C8C0, &qword_540E0);
  v6._countAndFlagsBits = sub_50C14();
  sub_41D84(v6);

  sub_41D00("\n -Confirmation: ");
  if (qword_6B600 != -1)
  {
    swift_once();
  }

  sub_41C14();
  sub_2208(&qword_6D968, &unk_540E8);
  v7._countAndFlagsBits = sub_50C14();
  sub_41D84(v7);

  sub_41D00("\n -Organization: ");
  if (qword_6B608 != -1)
  {
    sub_41C54();
  }

  sub_41C14();
  sub_2208(&qword_6C8C8, qword_52840);
  v8._countAndFlagsBits = sub_50C14();
  sub_41D84(v8);

  v9._countAndFlagsBits = 0x69727474412D200ALL;
  v9._object = 0xEE00203A65747562;
  sub_50BA4(v9);
  if (qword_6B610 != -1)
  {
    sub_41C34();
  }

  sub_41C14();
  sub_2208(&qword_6D970, &qword_540F8);
  v10._countAndFlagsBits = sub_50C14();
  sub_50BA4(v10);

  return 0;
}

void sub_3DEEC()
{
  sub_13C8C();
  v190 = v0;
  sub_24780();
  v1 = sub_50324();
  v2 = sub_8558(v1);
  v185 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v6);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v7);
  sub_13C5C();
  v192 = v8;
  sub_13B48();
  v9 = type metadata accessor for EmergencyNLIntent();
  v10 = sub_72B0(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v13);
  sub_13C5C();
  sub_EE14(v14);
  v189 = sub_50654();
  v15 = sub_8558(v189);
  v188 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_5630();
  sub_EE14(v20 - v19);
  v21 = sub_503A4();
  v22 = sub_72B0(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_5630();
  sub_EE14(v26 - v25);
  v27 = sub_50A24();
  v28 = sub_72B0(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v31);
  sub_13C5C();
  sub_EE14(v32);
  v174 = sub_50354();
  v33 = sub_8558(v174);
  v179 = v34;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33);
  sub_5630();
  sub_EE14(v38 - v37);
  v39 = sub_50334();
  v40 = sub_8558(v39);
  v194 = v41;
  v195 = v40;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40);
  sub_5630();
  v191 = v45 - v44;
  sub_13B48();
  v46 = sub_502E4();
  v47 = sub_8558(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  __chkstk_darwin(v47);
  sub_5630();
  v54 = v53 - v52;
  v55 = sub_50B04();
  v56 = sub_8558(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  __chkstk_darwin(v56);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v61);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v62);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v63);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v64);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v65);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v66);
  v67 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  sub_246FC();
  v198 = v67;
  sub_36F40();
  v196 = v68;
  v68();
  sub_36F34();
  v69 = v46;
  v70(v54, v0, v46);
  v71 = sub_50AF4();
  v72 = sub_50BD4();
  v186 = v58;
  if (os_log_type_enabled(v71, v72))
  {
    v73 = sub_EFB0();
    v168 = sub_EFC8();
    v199[0] = v168;
    *v73 = 136315138;
    sub_41B3C(&qword_6C078, 255, &type metadata accessor for Input);
    v74 = sub_50CD4();
    v169 = v1;
    v75 = v55;
    v77 = v76;
    (*(v49 + 8))(v54, v69);
    v78 = sub_4DE68(v74, v77, v199);
    v55 = v75;
    v1 = v169;

    *(v73 + 4) = v78;
    _os_log_impl(&dword_0, v71, v72, "EmergencyWebsiteFlow onInput: %s", v73, 0xCu);
    sub_253C(v168);
    v79 = v190;
    sub_5674();
    sub_5674();

    v80 = *(v186 + 8);
    v81 = sub_36FF0();
    v80(v81);
  }

  else
  {

    (*(v49 + 8))(v54, v69);
    v80 = *(v58 + 8);
    v82 = sub_36FF0();
    v80(v82);
    v79 = v0;
  }

  v83 = v191;
  sub_502D4();
  v84 = *(v194 + 88);
  v85 = sub_41C94();
  v87 = v86(v85);
  if (v87 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v193 = v80;
    v88 = *(v194 + 96);
    v89 = sub_41C94();
    v90(v89);
    (*(v188 + 32))(v187, v191, v189);
    v91 = v198;
    sub_2970();
    swift_beginAccess();
    v92 = v196;
    (v196)(v182, v198, v55);
    v93 = sub_50AF4();
    v94 = sub_50BD4();
    if (sub_EF00(v94))
    {
      v95 = sub_5718();
      sub_EEC8(v95);
      sub_3DA48();
      _os_log_impl(v96, v97, v98, v99, v100, 2u);
      sub_EE58();
    }

    (v80)(v182, v55);
    (*(v188 + 16))(v184, v187, v189);
    sub_41A24(v184, v183);
    sub_41554();
    v102 = v101;
    sub_41BFC();
    sub_41A7C(v184, v103);
    (*(v188 + 8))(v187, v189);
    goto LABEL_8;
  }

  if (v87 == enum case for Parse.directInvocation(_:))
  {
    v114 = *(v194 + 96);
    v115 = sub_41C94();
    v116(v115);
    (*(v185 + 32))(v192, v191, v1);
    sub_2970();
    swift_beginAccess();
    sub_36F40();
    v196();
    v117 = sub_50AF4();
    v118 = sub_50BD4();
    if (sub_EF00(v118))
    {
      v119 = sub_5718();
      sub_EEC8(v119);
      sub_3DA48();
      _os_log_impl(v120, v121, v122, v123, v124, 2u);
      sub_EE58();
    }

    (v80)(v177, v55);
    if (sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v125)
    {

      v128 = v185;
    }

    else
    {
      v127 = sub_50CE4();

      v128 = v185;
      if ((v127 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v141 = sub_2B6B0();
    if (v141 != 35)
    {
      LOBYTE(v104) = v141;
      (*(v128 + 8))(v192, v1);
      LOBYTE(v102) = 1;
      LOWORD(v105) = 4;
LABEL_33:
      *(v79 + 18) = v104;
      *(v79 + 16) = v102 & 1 | (v105 << 8);
      goto LABEL_37;
    }

LABEL_28:
    sub_2970();
    swift_beginAccess();
    sub_36F40();
    v196();
    v142 = *(v128 + 16);
    v142(v175, v192, v1);
    v143 = sub_50AF4();
    v144 = sub_50BE4();
    if (sub_EF00(v144))
    {
      v145 = v1;
      v146 = sub_EFB0();
      v197 = sub_EFC8();
      v200 = v197;
      *v146 = 136315138;
      v142(v170, v175, v145);
      v147 = sub_50B64();
      v149 = v148;
      v150 = *(v128 + 8);
      v150(v175, v145);
      v151 = sub_4DE68(v147, v149, &v200);

      *(v146 + 4) = v151;
      sub_3DA48();
      _os_log_impl(v152, v153, v154, v155, v156, 0xCu);
      sub_253C(v197);
      sub_5674();
      sub_EE58();

      (v80)(v181, v55);
      v150(v192, v145);
    }

    else
    {

      v167 = *(v128 + 8);
      v167(v175, v1);
      (v80)(v181, v55);
      v167(v192, v1);
    }

    goto LABEL_37;
  }

  if (v87 != enum case for Parse.uso(_:))
  {
    sub_2970();
    swift_beginAccess();
    sub_36F40();
    v196();
    v157 = sub_50AF4();
    sub_50BE4();
    sub_246B4();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = sub_EFB0();
      v160 = v55;
      v161 = sub_EFC8();
      v201 = v161;
      *v159 = 136315138;
      LOBYTE(v200) = 0;
      v162 = sub_50B64();
      v164 = sub_4DE68(v162, v163, &v201);
      v83 = v191;

      *(v159 + 4) = v164;
      _os_log_impl(&dword_0, v157, v1, "%s", v159, 0xCu);
      sub_253C(v161);
      sub_5674();
      sub_5674();

      v165 = v171;
      v166 = v160;
    }

    else
    {

      v165 = v171;
      v166 = v55;
    }

    (v80)(v165, v166);
    (*(v194 + 8))(v83, v195);
    goto LABEL_37;
  }

  v193 = v80;
  v129 = *(v194 + 96);
  v130 = sub_41C94();
  v131(v130);
  (*(v179 + 32))(v178, v191, v174);
  v91 = v198;
  sub_2970();
  swift_beginAccess();
  v92 = v196;
  (v196)(v176, v198, v55);
  v132 = sub_50AF4();
  v133 = sub_50BD4();
  if (sub_EF00(v133))
  {
    v134 = sub_5718();
    sub_EEC8(v134);
    sub_3DA48();
    _os_log_impl(v135, v136, v137, v138, v139, 2u);
    sub_EE58();
  }

  (v80)(v176, v55);
  sub_50344();
  v199[3] = &type metadata for EmergencyFeatureFlagsKey;
  v199[4] = sub_EB68();
  LOBYTE(v199[0]) = 2;
  sub_50374();
  sub_253C(v199);
  sub_50A14();
  sub_41A24(v173, v172);
  sub_411F8();
  v102 = v140;
  sub_41A7C(v173, &type metadata accessor for EmergencyDialogAct);
  (*(v179 + 8))(v178, v174);
LABEL_8:
  v104 = HIWORD(v102);
  v105 = v102 >> 8;
  if (BYTE1(v102) != 4 || BYTE2(v102) != 35)
  {
    goto LABEL_33;
  }

  sub_2970();
  swift_beginAccess();
  (v92)(v180, v91, v55);
  v106 = sub_50AF4();
  v107 = sub_50BD4();
  if (sub_EF00(v107))
  {
    v108 = sub_5718();
    sub_EEC8(v108);
    sub_3DA48();
    _os_log_impl(v109, v110, v111, v112, v113, 2u);
    sub_EE58();
  }

  v193(v180, v55);
LABEL_37:
  sub_8A94();
}

uint64_t sub_3EE28()
{
  sub_EF64();
  v1[137] = v0;
  v1[136] = v2;
  v3 = sub_508C4();
  v1[138] = v3;
  sub_72B0(v3);
  v5 = *(v4 + 64) + 15;
  v1[139] = swift_task_alloc();
  v6 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v6);
  v8 = *(v7 + 64) + 15;
  v1[140] = swift_task_alloc();
  v9 = sub_4FD64();
  v1[141] = v9;
  v10 = *(v9 - 8);
  v1[142] = v10;
  v11 = *(v10 + 64) + 15;
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v12 = sub_50B04();
  v1[145] = v12;
  v13 = *(v12 - 8);
  v1[146] = v13;
  v14 = *(v13 + 64) + 15;
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();

  return _swift_task_switch(sub_3EFC8, 0, 0);
}

uint64_t sub_3EFC8()
{
  v55 = v0;
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1096);
  v5 = sub_50AE4();
  *(v0 + 1200) = v5;
  sub_2970();
  swift_beginAccess();
  v6 = *(v2 + 16);
  *(v0 + 1208) = v6;
  *(v0 + 1216) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);

  v7 = sub_50AF4();
  v8 = sub_50BD4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1168);
    v49 = *(v0 + 1160);
    v50 = *(v0 + 1192);
    v10 = v6;
    v11 = *(v0 + 1096);
    v12 = sub_EFB0();
    v52 = v5;
    v13 = sub_EFC8();
    v54 = v13;
    *v12 = 136315138;
    v14 = *(v11 + 18);
    *(v0 + 1247) = *(v11 + 16);
    *(v0 + 1249) = v14;
    v15 = sub_50B64();
    v17 = sub_4DE68(v15, v16, &v54);
    v6 = v10;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v7, v8, "EmergencyWebsiteFlow execute with state: %s", v12, 0xCu);
    sub_253C(v13);
    v5 = v52;
    sub_5674();
    sub_5674();

    v18 = *(v9 + 8);
    v18(v50, v49);
  }

  else
  {
    v19 = *(v0 + 1192);
    v20 = *(v0 + 1168);
    v21 = *(v0 + 1160);

    v18 = *(v20 + 8);
    v18(v19, v21);
  }

  *(v0 + 1224) = v18;
  v22 = *(v0 + 1096);
  v23 = *(v22 + 18);
  v24 = *(v22 + 16);
  v25 = v24 | (v23 << 16);
  *(v0 + 1242) = v23;
  *(v0 + 1240) = v24;
  if (v24 == 2)
  {
    v27 = *(v0 + 1088);
    sub_E9D0();
    v28 = swift_allocError();
    *v29 = 2;
    sub_1D68(v28, v22 + 64, (v22 + 104), v27);

    goto LABEL_8;
  }

  if (v24 == 3)
  {
    v26 = *(v0 + 1088);
    sub_50194();
LABEL_8:
    sub_41CAC();

    v30 = *(v0 + 8);

    return v30();
  }

  v32 = *(v0 + 1184);
  v33 = *(v0 + 1160);
  sub_2970();
  swift_beginAccess();
  v6(v32, v5, v33);
  v34 = sub_50AF4();
  v35 = sub_50BD4();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 1184);
  v38 = *(v0 + 1168);
  v39 = *(v0 + 1160);
  if (v36)
  {
    v53 = *(v0 + 1160);
    v40 = sub_EFB0();
    v41 = sub_EFC8();
    v54 = v41;
    *v40 = 136315138;
    *(v0 + 1244) = v25 & 1;
    *(v0 + 1245) = BYTE1(v25);
    *(v0 + 1246) = BYTE2(v25);
    v42 = sub_50B64();
    v51 = v37;
    v44 = sub_4DE68(v42, v43, &v54);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_0, v34, v35, "EmergencyWebsiteFlow needsExecution intent: %s", v40, 0xCu);
    sub_253C(v41);
    sub_5674();
    sub_5674();

    v45 = v51;
    v46 = v53;
  }

  else
  {

    v45 = v37;
    v46 = v39;
  }

  v18(v45, v46);
  v47 = *(v0 + 1096);
  v48 = swift_task_alloc();
  *(v0 + 1232) = v48;
  *v48 = v0;
  v48[1] = sub_3F448;

  return sub_15100(v0 + 272, v47 + 24, SBYTE2(v25), SBYTE1(v25));
}

uint64_t sub_3F448()
{
  sub_EF64();
  v1 = *(*v0 + 1232);
  v4 = *v0;
  sub_EF2C();
  *v2 = v4;

  memcpy((v4 + 400), (v4 + 272), 0x80uLL);

  return _swift_task_switch(sub_3F548, 0, 0);
}

uint64_t sub_3F548()
{
  v47 = v0;
  v1 = *(v0 + 1242);
  if (v1 != 35)
  {
LABEL_5:
    v5 = *(v0 + 1096);
    sub_87A8();
    if (!*(v0 + 960))
    {
      sub_51C0(v0 + 272, &qword_6C050, &qword_51E00);
      v2 = &qword_6C7A0;
      v3 = &unk_53C80;
      v4 = v0 + 936;
      goto LABEL_10;
    }

    v6 = *(v0 + 1096);
    sub_EDD0((v0 + 936), v0 + 896);
    v7 = v6[11];
    v8 = v6[12];
    sub_1FE8(v6 + 8, v7);
    (*(v8 + 8))(v7, v8);
    v9 = *(v0 + 1008);
    sub_1A3F4((v0 + 976), *(v0 + 1000));
    v10 = sub_50094();
    sub_253C((v0 + 976));
    if (v10)
    {
      memcpy((v0 + 144), (v0 + 272), 0x80uLL);
      v11 = sub_E51C(v0 + 144);
      v12 = *(v0 + 1128);
      v13 = *(v0 + 1120);
      if (v11 == 1)
      {
        sub_28E0(*(v0 + 1120), 1, 1, *(v0 + 1128));
      }

      else
      {
        memcpy((v0 + 16), (v0 + 144), 0x80uLL);
        memcpy((v0 + 528), (v0 + 400), 0x80uLL);
        sub_5484(v0 + 528, v0 + 656);
        sub_50984();
        sub_51C0(v0 + 272, &qword_6C050, &qword_51E00);
        if (sub_513C(v13, 1, v12) != 1)
        {
          v33 = *(v0 + 1152);
          v34 = *(v0 + 1144);
          v35 = *(v0 + 1136);
          v36 = *(v0 + 1128);
          v37 = *(v0 + 1120);
          v38 = *(v0 + 1112);
          v44 = *(v0 + 1088);
          v45 = *(v0 + 1104);
          sub_51C0(v0 + 272, &qword_6C050, &qword_51E00);
          v39 = *(v35 + 32);
          v40 = sub_1A48C();
          v41(v40);
          v42 = v6[11];
          v43 = v6[12];
          sub_1FE8(v6 + 8, v42);
          (*(v43 + 16))(v46, v42, v43);
          (*(v35 + 16))(v34, v33, v36);
          sub_2970();
          sub_508B4();
          sub_41B3C(&qword_6C7B0, 255, &type metadata accessor for AppPunchOutFlow);
          sub_50174();
          sub_41A7C(v38, &type metadata accessor for AppPunchOutFlow);
          (*(v35 + 8))(v33, v36);
          goto LABEL_16;
        }
      }

      sub_51C0(*(v0 + 1120), &unk_6D680, &qword_515B0);
    }

    v30 = *(v0 + 1088);
    sub_1A3F4((*(v0 + 1096) + 184), *(*(v0 + 1096) + 208));
    sub_259A0(v1, (v0 + 272), v0 + 896);
    sub_51C0(v0 + 272, &qword_6C050, &qword_51E00);
    sub_50184();

LABEL_16:
    sub_253C((v0 + 896));
    goto LABEL_17;
  }

  if (HIBYTE(*(v0 + 1240)) != 4)
  {
    v1 = (*(v0 + 1240) | (*(v0 + 1242) << 16)) >> 8;
    goto LABEL_5;
  }

  v2 = &qword_6C050;
  v3 = &qword_51E00;
  v4 = v0 + 272;
LABEL_10:
  sub_51C0(v4, v2, v3);
  v14 = *(v0 + 1216);
  v15 = *(v0 + 1208);
  v16 = *(v0 + 1200);
  v17 = *(v0 + 1176);
  v18 = *(v0 + 1160);
  sub_2970();
  swift_beginAccess();
  v19 = sub_1A48C();
  v15(v19);
  v20 = sub_50AF4();
  v21 = sub_50BE4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = sub_5718();
    sub_EEC8(v22);
    _os_log_impl(&dword_0, v20, v21, "EmergencyWebsiteFlow Failed to pick a catWrapper", v18, 2u);
    sub_EE58();
  }

  v23 = *(v0 + 1224);
  v24 = *(v0 + 1176);
  v25 = *(v0 + 1168);
  v26 = *(v0 + 1160);
  v27 = *(v0 + 1096);
  v28 = *(v0 + 1088);

  v23(v24, v26);
  v29 = sub_1FE8((v27 + 104), *(v27 + 128));
  memcpy((v0 + 784), v29, 0x70uLL);
  sub_202C(v27 + 64, (v0 + 784));
  sub_50184();

LABEL_17:
  sub_41CAC();

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_3FA48()
{
  type metadata accessor for EmergencyWebsiteFlow();
  sub_41B3C(&qword_6D958, v0, type metadata accessor for EmergencyWebsiteFlow);
  sub_36F40();
  return sub_4FF14();
}

uint64_t sub_3FB04()
{
  v1 = *v0;
  sub_3DEEC();
  return v2 & 1;
}

uint64_t sub_3FB50()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_CD54;

  return sub_3EE28();
}

uint64_t sub_3FBEC()
{
  type metadata accessor for EmergencyWebsiteFlow();

  return sub_4FF64();
}

void sub_3FC24()
{
  sub_13C8C();
  v2 = v1;
  sub_24780();
  v3 = sub_50B04();
  v4 = sub_8558(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_5658();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  sub_41D24();
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  if (sub_509A4())
  {
    v16 = v2[4];
    sub_1A3F4(v2, v2[3]);
    if (sub_500B4() & 1) != 0 || (v17 = v2[4], sub_1A3F4(v2, v2[3]), (sub_50044()))
    {
      sub_50AE4();
      sub_2970();
      swift_beginAccess();
      v18 = *(v6 + 16);
      sub_36FA0();
      v19();
      v20 = sub_50AF4();
      sub_50BD4();
      sub_246B4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = sub_5718();
        sub_36FB8(v22);
        sub_EF90(&dword_0, v23, v24, "No prompt needed for this device. Not prompting for call followup.");
        sub_5674();
      }

      (*(v6 + 8))(v15, v3);
    }

    else
    {
      v30 = v2[3];
      v31 = v2[4];
      v32 = sub_36FF0();
      sub_1A3F4(v32, v33);
      if (sub_500D4())
      {
        v34 = 1;
      }

      else
      {
        v35 = v2[3];
        v36 = v2[4];
        v37 = sub_36FF0();
        sub_1A3F4(v37, v38);
        v34 = sub_500C4();
      }

      sub_50AE4();
      sub_2970();
      swift_beginAccess();
      v39 = *(v6 + 16);
      sub_36FA0();
      v40();
      v41 = sub_50AF4();
      v42 = sub_50BD4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = sub_EFB0();
        v44 = sub_EFC8();
        v48[0] = v44;
        *v43 = 136315138;
        if (v34)
        {
          v45 = 0x6E6974706D6F7250;
        }

        else
        {
          v45 = 0x6D6F727020746F4ELL;
        }

        if (v34)
        {
          v46 = 0xE900000000000067;
        }

        else
        {
          v46 = 0xED0000676E697470;
        }

        v47 = sub_4DE68(v45, v46, v48);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_0, v41, v42, "%s for call followup.", v43, 0xCu);
        sub_253C(v44);
        sub_5674();
        sub_5674();
      }

      (*(v6 + 8))(v0, v3);
    }
  }

  else
  {
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    v25 = *(v6 + 16);
    sub_36FA0();
    v26();
    v27 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = sub_5718();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v0, "orgInfo does not have name and number. Not prompting for call followup.", v29, 2u);
      sub_5674();
    }

    (*(v6 + 8))(v11, v3);
  }

  sub_8A94();
}

uint64_t sub_3FFDC(uint64_t a1, uint8_t *a2)
{
  sub_24780();
  v5 = sub_50B04();
  v6 = sub_8558(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_5658();
  sub_36F64();
  v12 = __chkstk_darwin(v11);
  v14 = &v38 - v13;
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = *(v2 + 104);
  if ((v17 & 0x2000000000000000) != 0)
  {
    if ((v17 & 0xF00000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_246FC();
    sub_36FA0();
    v27();
    v19 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v19, v28))
    {
      v26 = 0;
      v16 = v3;
      goto LABEL_15;
    }

    v29 = sub_5718();
    sub_36FB8(v29);
    sub_EF90(&dword_0, v30, v31, "orgInfo does not have a websearch query. Not prompting for websearch followup.");
    v26 = 0;
    v16 = v3;
    goto LABEL_12;
  }

  if ((*(v2 + 96) & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_41BC0();
  sub_41CF4();
  if (sub_500D4() & 1) != 0 || (sub_41BC0(), sub_41CF4(), (sub_500C4()) || (sub_41BC0(), sub_41CF4(), (sub_500A4()) || (sub_41BC0(), sub_41CF4(), (sub_500B4()))
  {
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_246FC();
    sub_36FA0();
    v18();
    v19 = sub_50AF4();
    v20 = sub_50BD4();
    if (!sub_41CD8(v20))
    {
      v26 = 0;
      goto LABEL_15;
    }

    v21 = sub_5718();
    sub_36FB8(v21);
    sub_41D58();
    _os_log_impl(v22, v23, v24, v25, a2, 2u);
    v26 = 0;
  }

  else
  {
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_246FC();
    sub_36FA0();
    v33();
    v19 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v19, v34))
    {
      v26 = 1;
      v16 = v14;
      goto LABEL_15;
    }

    v35 = sub_5718();
    sub_36FB8(v35);
    sub_EF90(&dword_0, v36, v37, "Prompting for websearch followup.");
    v26 = 1;
    v16 = v14;
  }

LABEL_12:
  sub_5674();
LABEL_15:

  (*(v8 + 8))(v16, v5);
  return v26;
}

void sub_402B4()
{
  sub_13C8C();
  v97 = v1;
  v101 = v2;
  v3 = sub_50B04();
  v4 = sub_8558(v3);
  v102 = v5;
  v103 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_5658();
  v98 = v8 - v9;
  sub_13B08();
  __chkstk_darwin(v10);
  sub_EEF4();
  v99 = v11;
  sub_13B08();
  __chkstk_darwin(v12);
  sub_13C5C();
  v100 = v13;
  sub_13B48();
  v14 = sub_506E4();
  v15 = sub_8558(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_5630();
  v22 = v21 - v20;
  v23 = sub_2208(&qword_6D660, qword_53CD0);
  v24 = sub_569C(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v95[-v27];
  v29 = sub_2208(&qword_6D668, &unk_53F60);
  v30 = sub_72B0(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_5658();
  v35 = v33 - v34;
  __chkstk_darwin(v36);
  sub_41D24();
  __chkstk_darwin(v37);
  v39 = &v95[-v38];
  sub_50684();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  sub_28E0(v39, v40, 1, v14);
  sub_506D4();
  sub_28E0(v0, 0, 1, v14);
  v41 = *(v23 + 48);
  v42 = sub_41D4C();
  sub_36D7C(v42, v43);
  sub_36D7C(v0, &v28[v41]);
  sub_41D9C(v28);
  if (v47)
  {
    sub_51C0(v0, &qword_6D668, &unk_53F60);
    v44 = sub_1A48C();
    sub_51C0(v44, v45, &unk_53F60);
    sub_41D9C(&v28[v41]);
    if (v47)
    {
      sub_51C0(v28, &qword_6D668, &unk_53F60);
      v46 = v103;
LABEL_20:
      v69 = sub_50AE4();
      sub_2970();
      swift_beginAccess();
      v70 = v102;
      v71 = v100;
      (*(v102 + 16))(v100, v69, v46);
      v72 = sub_50AF4();
      v73 = sub_50BD4();
      if (sub_EF00(v73))
      {
        v74 = sub_5718();
        sub_EEC8(v74);
        sub_3DA48();
        _os_log_impl(v75, v76, v77, v78, v79, 2u);
        sub_EE58();
      }

      (*(v70 + 8))(v71, v46);
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  sub_36D7C(v28, v35);
  sub_41D9C(&v28[v41]);
  if (v47)
  {
    sub_51C0(v0, &qword_6D668, &unk_53F60);
    v48 = sub_1A48C();
    sub_51C0(v48, v49, &unk_53F60);
    (*(v17 + 8))(v35, v14);
LABEL_12:
    sub_51C0(v28, &qword_6D660, qword_53CD0);
    v46 = v103;
    goto LABEL_13;
  }

  (*(v17 + 32))(v22, &v28[v41], v14);
  sub_41BE4();
  sub_41B3C(v66, 255, v67);
  v96 = sub_50B34();
  v68 = *(v17 + 8);
  v68(v22, v14);
  sub_51C0(v0, &qword_6D668, &unk_53F60);
  sub_51C0(v39, &qword_6D668, &unk_53F60);
  v68(v35, v14);
  sub_51C0(v28, &qword_6D668, &unk_53F60);
  v46 = v103;
  if (v96)
  {
    goto LABEL_20;
  }

LABEL_13:
  v50 = sub_509A4();
  v51 = v102;
  if (v50)
  {
    v52 = v97;
    v53 = v97[3];
    v54 = v97[4];
    sub_41B9C(v97);
    if (sub_500D4())
    {
      v55 = 1;
    }

    else
    {
      v80 = v52[3];
      v81 = v52[4];
      sub_41B9C(v52);
      v55 = sub_500C4();
    }

    v82 = v99;
    v83 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v51 + 16))(v82, v83, v46);
    v84 = sub_50AF4();
    v85 = sub_50BD4();
    if (sub_41CD8(v85))
    {
      v86 = sub_EFB0();
      v87 = sub_EFC8();
      v104 = v87;
      *v86 = 136315138;
      if (v55)
      {
        v88 = 0x73696C206C6C6957;
      }

      else
      {
        v88 = 0x746F6E206C6C6957;
      }

      if (v55)
      {
        v89 = 0xEB000000006E6574;
      }

      else
      {
        v89 = 0xEF6E657473696C20;
      }

      v90 = sub_4DE68(v88, v89, &v104);

      *(v86 + 4) = v90;
      sub_41D58();
      _os_log_impl(v91, v92, v93, v94, v86, 0xCu);
      sub_253C(v87);
      sub_5674();
      sub_EE58();
    }

    (*(v51 + 8))(v82, v46);
  }

  else
  {
    v56 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    v57 = v98;
    (*(v51 + 16))(v98, v56, v46);
    v58 = sub_50AF4();
    v59 = sub_50BD4();
    if (sub_EF00(v59))
    {
      v60 = sub_5718();
      sub_EEC8(v60);
      sub_3DA48();
      _os_log_impl(v61, v62, v63, v64, v65, 2u);
      sub_EE58();
    }

    (*(v51 + 8))(v57, v46);
  }

LABEL_33:
  sub_8A94();
}

void sub_40998()
{
  sub_13C8C();
  v103 = v1;
  v104 = v2;
  v3 = sub_50B04();
  v4 = sub_8558(v3);
  v106 = v5;
  v107 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_5658();
  v101 = v8 - v9;
  sub_13B08();
  __chkstk_darwin(v10);
  sub_EEF4();
  v100 = v11;
  sub_13B08();
  __chkstk_darwin(v12);
  sub_EEF4();
  v105 = v13;
  sub_13B08();
  __chkstk_darwin(v14);
  sub_13C5C();
  v102 = v15;
  sub_13B48();
  v16 = sub_506E4();
  v17 = sub_8558(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_5630();
  v24 = v23 - v22;
  v25 = sub_2208(&qword_6D660, qword_53CD0);
  v26 = sub_569C(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v99 - v29;
  v31 = sub_2208(&qword_6D668, &unk_53F60);
  v32 = sub_72B0(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_5658();
  v37 = v35 - v36;
  __chkstk_darwin(v38);
  sub_36F64();
  __chkstk_darwin(v39);
  v41 = &v99 - v40;
  sub_50684();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  sub_28E0(v41, v42, 1, v16);
  sub_506D4();
  sub_28E0(v0, 0, 1, v16);
  v43 = *(v25 + 48);
  sub_36D7C(v41, v30);
  sub_36D7C(v0, &v30[v43]);
  sub_36EA4(v30);
  if (v48)
  {
    v44 = sub_41C94();
    sub_51C0(v44, v45, &unk_53F60);
    sub_51C0(v41, &qword_6D668, &unk_53F60);
    sub_36EA4(&v30[v43]);
    v46 = v106;
    if (v48)
    {
      sub_51C0(v30, &qword_6D668, &unk_53F60);
      v47 = v107;
LABEL_24:
      sub_50AE4();
      sub_2970();
      swift_beginAccess();
      sub_36F34();
      v70 = v102;
      sub_36F40();
      v85();
      v65 = sub_50AF4();
      sub_50BD4();
      sub_246B4();
      if (!os_log_type_enabled(v65, v86))
      {
        goto LABEL_32;
      }

      v87 = sub_5718();
      sub_36F28(v87);
      v90 = "DisplayOnly request. Not listening after speaking.";
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  sub_36D7C(v30, v37);
  sub_36EA4(&v30[v43]);
  if (v48)
  {
    sub_51C0(v0, &qword_6D668, &unk_53F60);
    sub_51C0(v41, &qword_6D668, &unk_53F60);
    v49 = *(v19 + 8);
    v50 = sub_41D4C();
    v51(v50);
    v46 = v106;
LABEL_12:
    sub_51C0(v30, &qword_6D660, qword_53CD0);
    v47 = v107;
    goto LABEL_13;
  }

  (*(v19 + 32))(v24, &v30[v43], v16);
  sub_41BE4();
  sub_41B3C(v71, 255, v72);
  v73 = sub_50B34();
  v74 = *(v19 + 8);
  v74(v24, v16);
  sub_41CA0();
  sub_51C0(v75, v76, v77);
  sub_41CA0();
  sub_51C0(v78, v79, v80);
  v81 = sub_41D4C();
  (v74)(v81);
  sub_41CA0();
  sub_51C0(v82, v83, v84);
  v46 = v106;
  v47 = v107;
  if (v73)
  {
    goto LABEL_24;
  }

LABEL_13:
  v52 = *(v103 + 104);
  if ((v52 & 0x2000000000000000) != 0)
  {
    v53 = HIBYTE(v52) & 0xF;
  }

  else
  {
    v53 = *(v103 + 96) & 0xFFFFFFFFFFFFLL;
  }

  v54 = v104;
  v55 = v105;
  if (!v53)
  {
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_36F34();
    v70 = v101;
    sub_36F40();
    v91();
    v65 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v65, v92))
    {
      goto LABEL_32;
    }

    v93 = sub_5718();
    sub_36F28(v93);
    v90 = "orgInfo does not have a websearch query. Not listening after speaking.";
LABEL_28:
    sub_36F80(&dword_0, v88, v89, v90);
    goto LABEL_29;
  }

  v56 = v104[3];
  v57 = v104[4];
  sub_41B9C(v104);
  if (sub_500D4())
  {
    goto LABEL_21;
  }

  v58 = v54[3];
  v59 = v54[4];
  sub_41B9C(v54);
  if (sub_500C4() & 1) != 0 || (v60 = v54[3], v61 = v54[4], sub_41B9C(v54), (sub_500A4()) || (v62 = v54[3], v63 = v54[4], sub_41B9C(v54), (sub_500B4()))
  {
LABEL_21:
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_36F34();
    sub_36F40();
    v64();
    v65 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v65, v66))
    {
      v70 = v55;
      goto LABEL_32;
    }

    v67 = sub_5718();
    sub_36F28(v67);
    sub_36F80(&dword_0, v68, v69, "No prompt needed for this device. Not listening after speaking.");
    v70 = v55;
  }

  else
  {
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_36F34();
    v70 = v100;
    v94();
    v65 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v65, v95))
    {
      goto LABEL_32;
    }

    v96 = sub_5718();
    sub_36F28(v96);
    sub_36F80(&dword_0, v97, v98, "Will listen after speaking the websearch followup.");
  }

LABEL_29:
  sub_5674();
LABEL_32:

  (*(v46 + 8))(v70, v47);
  sub_8A94();
}

void sub_41060()
{
  sub_13C8C();
  v3 = v2;
  v4 = sub_2208(&qword_6B998, qword_51850);
  v5 = sub_72B0(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  memcpy(v17, v3, sizeof(v17));
  if (sub_E51C(v17) == 1)
  {
    sub_41BC0();
    v10 = sub_50804();
    v11 = v9;
    v12 = 1;
LABEL_6:
    sub_28E0(v11, v12, 1, v10);
    (*(v1 + 40))(v9, v0, v1);
    sub_51C0(v9, &qword_6B998, qword_51850);
    goto LABEL_7;
  }

  memcpy(v18, v17, sizeof(v18));
  v13 = sub_509A4();
  sub_41BC0();
  if ((v13 & 1) == 0)
  {

    sub_2970();
    sub_507F4();
    v10 = sub_50804();
    v11 = v9;
    v12 = 0;
    goto LABEL_6;
  }

  v14 = *(v1 + 48);
  v15 = sub_41CF4();
  v16(v15);
LABEL_7:
  sub_8A94();
}

void sub_411F8()
{
  sub_13C8C();
  v2 = v1;
  v3 = sub_50B04();
  v4 = sub_8558(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_5658();
  sub_36F64();
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v44 = sub_50A24();
  v48[3] = v44;
  v48[4] = &protocol witness table for EmergencyDialogAct;
  v12 = sub_530C(v48);
  sub_41AD4(v2, v12);
  v13 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v43 = *(v6 + 16);
  v43(v11, v13, v3);
  sub_23BC(v48, v47);
  v14 = sub_50AF4();
  v15 = sub_50BD4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_EFB0();
    v42 = v3;
    v17 = v16;
    v40 = sub_EFC8();
    v46 = v40;
    *v17 = 136315138;
    sub_23BC(v47, &v45);
    sub_2208(&qword_6C080, &qword_51E10);
    v18 = sub_50B64();
    v41 = v6 + 16;
    v19 = v13;
    v20 = v12;
    v21 = v0;
    v22 = v6;
    v24 = v23;
    sub_253C(v47);
    v25 = sub_4DE68(v18, v24, &v46);
    v6 = v22;
    v0 = v21;
    v12 = v20;
    v13 = v19;

    *(v17 + 4) = v25;
    sub_41D64(&dword_0, v26, v27, "Converting EmergencyDialogAct to EmergencyInformationIntent: %s");
    sub_253C(v40);
    sub_5674();
    v3 = v42;
    sub_5674();
  }

  else
  {

    sub_253C(v47);
  }

  v28 = *(v6 + 8);
  v28(v11, v3);
  v29 = v44;
  if (*(v12 + *(v44 + 32)) == 2)
  {
    sub_2970();
    swift_beginAccess();
    v43(v0, v13, v3);
    v30 = sub_50AF4();
    v31 = sub_50BD4();
    if (sub_41CD8(v31))
    {
      v32 = sub_5718();
      sub_36F28(v32);
      sub_41D58();
      _os_log_impl(v33, v34, v35, v36, v6, 2u);
      sub_5674();
    }

    v28(v0, v3);
  }

  v37 = *(v12 + *(v29 + 28));
  v38 = *(v12 + *(v29 + 24));
  sub_253C(v48);
  sub_8A94();
}

void sub_41554()
{
  sub_13C8C();
  sub_24780();
  v2 = sub_50B04();
  v3 = sub_8558(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_5658();
  v10 = (v8 - v9);
  __chkstk_darwin(v11);
  v13 = v49 - v12;
  v54 = type metadata accessor for EmergencyNLIntent();
  v59 = v54;
  sub_41B84();
  v60 = sub_41B3C(v14, 255, v15);
  v16 = sub_530C(v58);
  sub_41AD4(v0, v16);
  v17 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v53 = *(v5 + 16);
  v53(v13, v17, v2);
  sub_23BC(v58, v56);
  v18 = sub_50AF4();
  v19 = sub_50BD4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_EFB0();
    v52 = v2;
    v21 = v20;
    v50 = sub_EFC8();
    v51 = v17;
    v55 = v50;
    *v21 = 136315138;
    v22 = v57;
    v23 = sub_1FE8(v56, v57);
    v49[1] = v49;
    v24 = *(*(v22 - 8) + 64);
    __chkstk_darwin(v23);
    sub_5630();
    v27 = v26 - v25;
    (*(v28 + 16))(v26 - v25);
    v1 = sub_3DBF4();
    v29 = v10;
    v30 = v5;
    v32 = v31;
    sub_41BFC();
    sub_41A7C(v27, v33);
    sub_253C(v56);
    v34 = sub_4DE68(v1, v32, &v55);
    v5 = v30;
    v10 = v29;

    *(v21 + 4) = v34;
    sub_41D64(&dword_0, v35, v36, "Converting EmergencyNLIntent: %s");
    sub_253C(v50);
    v17 = v51;
    sub_5674();
    v2 = v52;
    sub_5674();

    v37 = sub_41D38();
    v1(v37);
  }

  else
  {

    v38 = sub_41D38();
    v1(v38);
    sub_253C(v56);
  }

  sub_1A3F4(v58, v59);
  if (qword_6B610 != -1)
  {
    sub_41C34();
  }

  sub_41B84();
  sub_41B3C(v39, 255, v40);
  sub_41DBC();
  if (LOBYTE(v56[0]) == 2)
  {
    sub_2970();
    swift_beginAccess();
    v53(v10, v17, v2);
    v41 = sub_50AF4();
    v42 = sub_50BD4();
    if (sub_41CD8(v42))
    {
      v43 = sub_5718();
      sub_EEC8(v43);
      sub_41D58();
      _os_log_impl(v44, v45, v46, v47, v5, 2u);
      sub_5674();
    }

    v48 = sub_41D4C();
    v1(v48);
  }

  sub_1A3F4(v58, v59);
  sub_41DBC();
  sub_1A3F4(v58, v59);
  if (qword_6B608 != -1)
  {
    sub_41C54();
  }

  sub_41DBC();
  sub_1A3F4(v58, v59);
  if (qword_6B5F8 != -1)
  {
    sub_41C74();
  }

  sub_41DBC();
  sub_253C(v58);
  sub_8A94();
}

uint64_t sub_41A24(uint64_t a1, uint64_t a2)
{
  v3 = sub_24780();
  v5 = v4(v3);
  sub_569C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1A48C();
  v9(v8);
  return a2;
}

uint64_t sub_41A7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_569C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_41AD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_24780();
  v5 = v4(v3);
  sub_569C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1A48C();
  v9(v8);
  return a2;
}

uint64_t sub_41B3C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_41C14()
{

  return sub_50524();
}

uint64_t sub_41C34()
{

  return swift_once();
}

uint64_t sub_41C54()
{

  return swift_once();
}

uint64_t sub_41C74()
{

  return swift_once();
}

uint64_t sub_41CAC()
{
  v2 = v0[149];
  v3 = v0[148];
  v4 = v0[147];
  v5 = v0[144];
  v6 = v0[143];
  v7 = v0[140];
  v8 = v0[139];
}

BOOL sub_41CD8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_41D00(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000011;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_50BA4(v2);
}

void sub_41D64(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void sub_41D84(Swift::String a1)
{

  sub_50BA4(a1);
}

uint64_t sub_41DBC()
{
  v2 = *(v0 - 208);

  return sub_50524();
}

uint64_t type metadata accessor for EmergencyModernCATs()
{
  result = qword_6D978;
  if (!qword_6D978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_41E60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_41EB4(a1, a2);
}

uint64_t sub_41EB4(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208(&unk_6D680, &qword_515B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_8E60(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_50814();
  (*(v8 + 8))(a2, v2);
  sub_8ED0(a1);
  return v16;
}

uint64_t sub_42010(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_50824();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t type metadata accessor for CsamCATs()
{
  result = qword_6D9C8;
  if (!qword_6D9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_421E4(unint64_t a1)
{
  sub_2208(&qword_6BBC8, &unk_518B0);
  v2 = swift_allocObject();
  sub_42564(v2, xmmword_51780);
  if (a1)
  {
    v3 = type metadata accessor for CsamSituation();
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;

  sub_50794();
}

uint64_t sub_422D0(unint64_t a1)
{
  sub_2208(&qword_6BBC8, &unk_518B0);
  v2 = swift_allocObject();
  sub_42564(v2, xmmword_51780);
  if (a1)
  {
    v3 = type metadata accessor for CsamSituation();
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;

  sub_50794();
}

uint64_t sub_4239C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_423F0(a1, a2);
}

uint64_t sub_423F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_8E60(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_8ED0(a1);
  return v12;
}

__n128 *sub_42564(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6F69746175746973;
  result[2].n128_u64[1] = 0xE90000000000006ELL;
  return result;
}

uint64_t sub_42590(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 209))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_425D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_42658()
{
  v0 = sub_50B04();
  v1 = sub_8558(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_50AE4();
  swift_beginAccess();
  (*(v3 + 16))(v7, v8, v0);
  v9 = sub_50AF4();
  v10 = sub_50BD4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_5718();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "CallFlow onInput", v11, 2u);
    sub_5674();
  }

  (*(v3 + 8))(v7, v0);
  return 1;
}

uint64_t sub_427A8(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v101 = a2;
  v102 = a1;
  v4 = sub_501C4();
  v5 = sub_8558(v4);
  v103 = v6;
  v104 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v100 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_50324();
  v10 = sub_8558(v105);
  v96 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_EE34();
  v92 = v14;
  v16 = __chkstk_darwin(v15);
  v18 = &v92 - v17;
  __chkstk_darwin(v16);
  v20 = &v92 - v19;
  v21 = sub_50B04();
  v22 = sub_8558(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_EE34();
  v94 = v27;
  v29 = __chkstk_darwin(v28);
  v31 = &v92 - v30;
  v32 = __chkstk_darwin(v29);
  v95 = &v92 - v33;
  __chkstk_darwin(v32);
  v35 = &v92 - v34;
  v36 = sub_50AE4();
  swift_beginAccess();
  v37 = *(v24 + 16);
  v98 = v24 + 16;
  v99 = v36;
  v97 = v37;
  (v37)(v35, v36, v21);
  v38 = sub_50AF4();
  v39 = sub_50BD4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = sub_5718();
    v93 = v18;
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "CallFlow execute", v40, 2u);
    v18 = v93;
    sub_5674();
  }

  v43 = *(v24 + 8);
  v41 = v24 + 8;
  v42 = v43;
  (v43)(v35, v21);
  memcpy(__dst, v3 + 80, 0x81uLL);
  if (sub_2B850(__dst))
  {
    v93 = v42;
    v94 = v41;
    sub_502F4();
    v44 = v3;
    v45 = *(v3 + 3);
    v46 = *(v3 + 4);
    sub_1FE8(v44, v45);
    (*(v46 + 56))(v106, v45, v46);
    v47 = v106[3];
    v48 = v106[4];
    sub_1FE8(v106, v106[3]);
    if ((*(v48 + 8))(v20, v47, v48))
    {
      sub_253C(v106);
      sub_42F70();
      v49 = v95;
      sub_42F38();
      v50();
      v51 = sub_50AF4();
      v52 = sub_50BD4();
      if (sub_27800(v52))
      {
        *sub_5718() = 0;
        sub_24694(&dword_0, v53, v54, "Handing off to phone flow");
        sub_5674();
      }

      (v93)(v49, v21);
      v55 = v100;
      sub_50184();
      v102(v55);

      v56 = sub_42F48();
      v57(v56);
      return (*(v96 + 8))(v20, v105);
    }

    else
    {
      v95 = v44;
      sub_253C(v106);
      sub_42F70();
      sub_42F38();
      v70();
      v71 = v18;
      v72 = v96;
      v73 = *(v96 + 16);
      v74 = v105;
      v73(v71, v20, v105);
      v75 = sub_50AF4();
      v76 = sub_50BF4();
      v99 = v31;
      v77 = sub_27800(v76);
      v98 = v21;
      if (v77)
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v97 = v20;
        v80 = v79;
        v106[0] = v79;
        *v78 = 136315138;
        v73(v92, v71, v105);
        v81 = sub_50B64();
        v83 = v82;
        v84 = sub_42F58();
        v72(v84, v105);
        v85 = sub_4DE68(v81, v83, v106);

        *(v78 + 4) = v85;
        _os_log_impl(&dword_0, v75, v31, "Phone flow not found for direct invocation %s", v78, 0xCu);
        sub_253C(v80);
        v20 = v97;
        sub_5674();
        v74 = v105;
        sub_5674();
      }

      else
      {

        v86 = sub_42F58();
        v72(v86, v74);
      }

      (v93)(v99, v98);
      v87 = v95;
      v88 = sub_1FE8(v95 + 5, *(v95 + 8));
      memcpy(v106, v88, sizeof(v106));
      sub_202C(v87, v106);
      v89 = v100;
      sub_50184();

      v102(v89);
      v90 = sub_42F48();
      v91(v90);
      return (v72)(v20, v74);
    }
  }

  else
  {
    swift_beginAccess();
    v59 = v94;
    sub_42F38();
    v60();
    v61 = sub_50AF4();
    v62 = sub_50BE4();
    if (sub_27800(v62))
    {
      *sub_5718() = 0;
      sub_24694(&dword_0, v63, v64, "Incorrectly formatted direct invocation payload");
      sub_5674();
    }

    (v42)(v59, v21);
    v65 = sub_1FE8(v3 + 5, *(v3 + 8));
    memcpy(v106, v65, sizeof(v106));
    sub_202C(v3, v106);
    v66 = v100;
    sub_50184();

    v102(v66);
    v67 = sub_42F48();
    return v69(v67, v68);
  }
}

uint64_t sub_42F48()
{
  v2 = *(v0 + 96);
  v3 = *(*(v0 + 88) + 8);
  return v1;
}

uint64_t sub_42F70()
{
  v2 = *(v0 + 56);

  return swift_beginAccess();
}

uint64_t sub_42F90()
{
  v0 = sub_503A4();
  sub_5620();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_5630();
  v8 = v7 - v6;
  sub_50344();
  sub_50394();
  v10 = v9;
  (*(v2 + 8))(v8, v0);
  if (v10)
  {
    if (sub_50A64() == 23)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      if (sub_50A74() == 0xD000000000000029 && 0x8000000000056380 == v11)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = sub_50CE4();
      }
    }
  }

  return v10 & 1;
}

void sub_430D8()
{
  sub_13C8C();
  v1 = v0;
  v2 = sub_2208(&qword_6D490, &unk_54350);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v30 - v4;
  v6 = sub_50324();
  sub_5620();
  v31 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  sub_5630();
  v13 = v12 - v11;
  v14 = type metadata accessor for FlowRouter();
  v15 = (v0 + v14[7]);
  v16 = v15[3];
  v17 = v15[4];
  sub_1FE8(v15, v16);
  (*(v17 + 64))(v38, v16, v17);
  v18 = v39;
  v19 = v40;
  sub_1FE8(v38, v39);
  v20 = (*(v19 + 8))(v18, v19);
  sub_253C(v38);
  if ((v20 & 1) == 0)
  {
    sub_12A88(v1 + v14[6], v5, &qword_6D490, &unk_54350);
    if (sub_513C(v5, 1, v6) == 1)
    {
      sub_51C0(v5, &qword_6D490, &unk_54350);
      sub_12A88(v1, &v36, &qword_6D498, qword_539E0);
      if (v37)
      {
        sub_546C(&v36, v38);
        v28 = sub_1FE8(v38, v39);
        sub_461BC(v28);
      }

      else
      {
        sub_51C0(&v36, &qword_6D498, qword_539E0);
        sub_12A88(v1 + 40, &v36, &qword_6D4A0, &qword_54360);
        if (!v37)
        {
          sub_51C0(&v36, &qword_6D4A0, &qword_54360);
          goto LABEL_10;
        }

        sub_546C(&v36, v38);
        sub_4813C(v38);
      }

      sub_253C(v38);
    }

    else
    {
      v29 = v31;
      (*(v31 + 32))(v13, v5, v6);
      sub_47A70(v13);
      (*(v29 + 8))(v13, v6);
    }

LABEL_10:
    sub_43548();
    goto LABEL_11;
  }

  sub_23BC(v15, &v36);
  sub_23BC(v1 + v14[8], v35);
  sub_5260(v1 + v14[9], v34);
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_52BC(v35, v35[3]);
  sub_47078();
  v22 = *(v21 + 64);
  __chkstk_darwin(v23);
  v25 = sub_47054(v24, v30);
  v26(v25);
  sub_47298(v38);
  v27 = sub_45F28(&v36, v38, v34, v32, 1280);
  sub_253C(v35);
  *&v36 = v27;
  type metadata accessor for OfflineFlow();
  sub_46B30(&qword_6C8B8, type metadata accessor for OfflineFlow);
  sub_4FF04();

LABEL_11:
  sub_47338();
  sub_8A94();
}

uint64_t type metadata accessor for FlowRouter()
{
  result = qword_6DAB8;
  if (!qword_6DAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_43548()
{
  sub_13C8C();
  v293 = v0;
  v2 = v1;
  v3 = sub_2208(&qword_6B988, &qword_530B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v291 = sub_50884();
  v5 = sub_569C(v291);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_5630();
  v10 = v9 - v8;
  v11 = sub_50704();
  sub_5620();
  v292 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  sub_5658();
  v18 = (v16 - v17);
  __chkstk_darwin(v19);
  v21 = &v291 - v20;
  v22 = sub_50B04();
  sub_5620();
  v24 = *(v23 + 64);
  __chkstk_darwin(v25);
  sub_5658();
  v28 = (v26 - v27);
  __chkstk_darwin(v29);
  v32 = &v291 - v31;
  switch(v2)
  {
    case 1:
      v155 = type metadata accessor for FlowRouter();
      v156 = sub_47100(v155);
      sub_23BC(v156, &v320);
      sub_47174();
      v157 = sub_471D0();
      sub_5260(v157, v318);
      sub_52BC(v324, v324[3]);
      sub_47078();
      v159 = *(v158 + 64);
      __chkstk_darwin(v160);
      v162 = sub_47054(v161, v291);
      v163(v162);
      v316 = &type metadata for EmergencyCATProvider;
      v317 = &off_66C88;
      sub_1A498();
      *&v315 = swift_allocObject();
      sub_47298((v315 + 16));
      type metadata accessor for EmergencyCSAMFlow();
      v164 = swift_allocObject();
      sub_52BC(&v315, &type metadata for EmergencyCATProvider);
      sub_47078();
      v166 = *(v165 + 64);
      __chkstk_darwin(v167);
      v169 = sub_4708C(v168, v291);
      v170(v169);
      *(v164 + 80) = &type metadata for EmergencyCATProvider;
      *(v164 + 88) = &off_66C88;
      sub_1A498();
      v171 = swift_allocObject();
      *(v164 + 56) = v171;
      memcpy((v171 + 16), v28, 0x70uLL);
      v172 = sub_47210();
      sub_546C(v172, v173);
      *(v164 + 96) = sub_47114();
      *(v164 + 112) = v174;
      *(v164 + 128) = v319;
      *(v164 + 136) = 0;
      *(v164 + 144) = 0;
      *(v164 + 152) = 1;
      sub_253C(&v315);
      sub_253C(v324);
      sub_472B0();
      v33 = &unk_6DA48;
      v34 = type metadata accessor for EmergencyCSAMFlow;
      goto LABEL_55;
    case 2:
      v89 = v30;
      v90 = sub_50AE4();
      swift_beginAccess();
      v91 = v89;
      (*(v89 + 16))(v28, v90, v22);
      v92 = sub_50AF4();
      v93 = sub_50BD4();
      if (os_log_type_enabled(v92, v93))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_0, v92, v93, "Going to EmergencyDirectCallFlow", v10, 2u);
        sub_5674();
      }

      (*(v91 + 8))(v28, v22);
      v94 = type metadata accessor for FlowRouter();
      v95 = sub_47100(v94);
      sub_23BC(v95, &v320);
      sub_47174();
      v96 = sub_471D0();
      sub_5260(v96, v318);
      sub_47128();
      sub_47078();
      v98 = *(v97 + 64);
      __chkstk_darwin(v99);
      v101 = sub_47054(v100, v291);
      v102(v101);
      v310 = &type metadata for EmergencyCATProvider;
      v311 = &off_66C88;
      sub_1A498();
      v103 = swift_allocObject();
      sub_471B0(v103);
      type metadata accessor for EmergencyDirectCallFlow();
      swift_allocObject();
      sub_47248();
      sub_47078();
      v105 = *(v104 + 64);
      __chkstk_darwin(v106);
      v108 = sub_4708C(v107, v291);
      v109(v108);
      v307 = &type metadata for EmergencyCATProvider;
      v308 = &off_66C88;
      sub_1A498();
      v110 = swift_allocObject();
      sub_47190(v110);
      v111 = sub_47210();
      sub_23BC(v111, v112);
      sub_4741C();
      v113 = sub_47404();
      sub_473EC(v113, v114, &qword_6DA18, &qword_54368);
      if (v303)
      {
        sub_51C0(&v315, &qword_6DA18, &qword_54368);
        sub_47434();
      }

      else
      {
        sub_4738C();
        v278 = sub_509F4();
        v279 = sub_473D4(v278, &protocol witness table for EmergencyOrganizationInfoProvider);
        sub_4744C(v279);
        sub_51C0(&v315, &qword_6DA18, &qword_54368);
        if (v303)
        {
          sub_51C0(v302, &qword_6DA18, &qword_54368);
        }
      }

      sub_473A4();
      v304 = &type metadata for EmergencyDirectCallFlowFollowupProvider;
      v305 = &off_662B8;
      sub_472BC();
      v280 = swift_allocObject();
      sub_470B0(v280);
      if (v281)
      {
        sub_51C0(v312, &qword_6DA40, &qword_54390);
      }

      sub_473BC();
      *(v10 + 218) = 2;
      *(v10 + 216) = 0;
      sub_253C(&v309);
      sub_253C(v324);
      sub_472B0();
      v33 = &qword_6CD70;
      v34 = type metadata accessor for EmergencyDirectCallFlow;
      goto LABEL_55;
    case 3:
      v115 = type metadata accessor for FlowRouter();
      v116 = sub_47100(v115);
      sub_23BC(v116, &v320);
      sub_47174();
      v117 = sub_471D0();
      goto LABEL_27;
    case 4:
      v39 = type metadata accessor for FlowRouter();
      v40 = sub_47100(v39);
      sub_23BC(v40, v324);
      sub_23BC(v2 + *(v32 + 8), v318);
      v41 = sub_471D0();
      sub_5260(v41, &v315);
      sub_471DC();
      sub_47078();
      v43 = *(v42 + 64);
      __chkstk_darwin(v44);
      v46 = sub_47054(v45, v291);
      v47(v46);
      v48 = sub_47298(&v320);
      sub_4721C(v48, v49, v50, v51, v52, v53, v54, &type metadata for EmergencyNumberFlowFollowupConfigModel, &off_66B98, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301);
      v56 = v55;
      sub_253C(v318);
      v324[0] = v56;
      type metadata accessor for EmergencyNumberFlow();
      v57 = &unk_6D658;
      v58 = type metadata accessor for EmergencyNumberFlow;
      goto LABEL_38;
    case 5:
      v176 = type metadata accessor for FlowRouter();
      v177 = sub_47100(v176);
      sub_23BC(v177, &v320);
      sub_47174();
      v178 = sub_471D0();
      sub_5260(v178, v318);
      sub_47128();
      sub_47078();
      v180 = *(v179 + 64);
      __chkstk_darwin(v181);
      v183 = sub_47054(v182, v291);
      v184(v183);
      v310 = &type metadata for EmergencyCATProvider;
      v311 = &off_66C88;
      sub_1A498();
      v185 = swift_allocObject();
      sub_471B0(v185);
      type metadata accessor for EmergencyOfferCallFlow();
      swift_allocObject();
      sub_47248();
      sub_47078();
      v187 = *(v186 + 64);
      __chkstk_darwin(v188);
      v190 = sub_4708C(v189, v291);
      v191(v190);
      v307 = &type metadata for EmergencyCATProvider;
      v308 = &off_66C88;
      sub_1A498();
      v192 = swift_allocObject();
      sub_47190(v192);
      v193 = sub_47210();
      sub_23BC(v193, v194);
      sub_4741C();
      v195 = sub_47404();
      sub_473EC(v195, v196, &qword_6DA18, &qword_54368);
      if (v303)
      {
        sub_51C0(&v315, &qword_6DA18, &qword_54368);
        sub_47434();
      }

      else
      {
        sub_4738C();
        v286 = sub_509F4();
        v287 = sub_473D4(v286, &protocol witness table for EmergencyOrganizationInfoProvider);
        sub_4744C(v287);
        sub_51C0(&v315, &qword_6DA18, &qword_54368);
        if (v303)
        {
          sub_51C0(v302, &qword_6DA18, &qword_54368);
        }
      }

      sub_473A4();
      v304 = &type metadata for EmergencyOfferCallFlowFollowupProvider;
      v305 = &off_660C0;
      sub_472BC();
      v288 = swift_allocObject();
      sub_470B0(v288);
      if (v289)
      {
        sub_51C0(v312, &qword_6DA38, &qword_54388);
      }

      sub_473BC();
      *(v10 + 218) = 2;
      *(v10 + 216) = 0;
      sub_253C(&v309);
      sub_253C(v324);
      sub_472B0();
      v33 = &qword_6C798;
      v34 = type metadata accessor for EmergencyOfferCallFlow;
      goto LABEL_55;
    case 6:
      v200 = type metadata accessor for FlowRouter();
      v118 = v293;
      v10 = v293 + v200[7];
      v201 = *(v10 + 24);
      v202 = *(v10 + 32);
      sub_1FE8(v10, v201);
      sub_47344();
      v203(v201, v202);
      sub_1FE8(&v320, v321);
      sub_50064();
      sub_506F4();
      sub_4715C();
      sub_46B30(v204, v205);
      v206 = sub_4736C();
      v207 = *(v292 + 8);
      v207(v18, v11);
      v207(v21, v11);
      sub_253C(&v320);
      if (v206)
      {
        sub_23BC(v10, &v320);
        sub_23BC(v118 + v200[8], v324);
        v127 = v200[9];
        goto LABEL_26;
      }

      v277 = v200[9];
      sub_47264((v118 + v200[8]));
      v324[0] = sub_45A20(v10, &v320, v118 + v277);
      type metadata accessor for EmergencyConfirmationFlow();
      v57 = &qword_6BB48;
      v58 = type metadata accessor for EmergencyConfirmationFlow;
LABEL_38:
      sub_46B30(v57, v58);
LABEL_39:
      sub_4FF04();
      goto LABEL_56;
    case 7:
      v10 = type metadata accessor for FlowRouter();
      v118 = v293;
      v119 = (v293 + *(v10 + 28));
      v120 = v119[3];
      v121 = v119[4];
      sub_1FE8(v119, v120);
      sub_47344();
      v122(v120, v121);
      sub_1FE8(&v320, v321);
      sub_50064();
      sub_506F4();
      sub_4715C();
      sub_46B30(v123, v124);
      v125 = sub_4736C();
      v126 = *(v292 + 8);
      v126(v18, v11);
      v126(v21, v11);
      sub_253C(&v320);
      if (v125)
      {
        sub_23BC(v119, &v320);
        sub_23BC(v118 + *(v10 + 32), v324);
        v127 = *(v10 + 36);
LABEL_26:
        v117 = v118 + v127;
LABEL_27:
        sub_5260(v117, v318);
        sub_47128();
        sub_47078();
        v209 = *(v208 + 64);
        __chkstk_darwin(v210);
        v212 = sub_47054(v211, v291);
        v213(v212);
        v310 = &type metadata for EmergencyCATProvider;
        v311 = &off_66C88;
        sub_1A498();
        v214 = swift_allocObject();
        sub_471B0(v214);
        type metadata accessor for GeneralEmergencyFlow();
        swift_allocObject();
        sub_47248();
        sub_47078();
        v216 = *(v215 + 64);
        __chkstk_darwin(v217);
        v219 = sub_4708C(v218, v291);
        v220(v219);
        v307 = &type metadata for EmergencyCATProvider;
        v308 = &off_66C88;
        sub_1A498();
        v221 = swift_allocObject();
        sub_47190(v221);
        v222 = sub_47210();
        sub_23BC(v222, v223);
        sub_4741C();
        v224 = sub_47404();
        sub_473EC(v224, v225, &qword_6DA18, &qword_54368);
        if (v303)
        {
          sub_51C0(&v315, &qword_6DA18, &qword_54368);
          sub_47434();
        }

        else
        {
          sub_4738C();
          v273 = sub_509F4();
          v274 = sub_473D4(v273, &protocol witness table for EmergencyOrganizationInfoProvider);
          sub_4744C(v274);
          sub_51C0(&v315, &qword_6DA18, &qword_54368);
          if (v303)
          {
            sub_51C0(v302, &qword_6DA18, &qword_54368);
          }
        }

        sub_473A4();
        v304 = &type metadata for GeneralEmergencyFlowFollowupProvider;
        v305 = &off_65EA0;
        sub_472BC();
        v275 = swift_allocObject();
        sub_470B0(v275);
        if (v276)
        {
          sub_51C0(v312, &qword_6DA28, &qword_54380);
        }

        sub_473BC();
        *(v10 + 216) = 35;
        sub_253C(&v309);
        sub_253C(v324);
        sub_472B0();
        v33 = &qword_6C040;
        v34 = type metadata accessor for GeneralEmergencyFlow;
LABEL_55:
        sub_46B30(v33, v34);
        sub_4FF04();
LABEL_56:
      }

      else
      {
        sub_23BC(v119, &v320);
        sub_23BC(v118 + *(v10 + 32), &v322);
        sub_EB48(v324);
        memcpy(v323, v324, sizeof(v323));
        sub_EA30();
        sub_4FF04();
        sub_EA84(&v320);
      }

LABEL_57:
      sub_47338();
      sub_8A94();
      return;
    case 8:
      v255 = type metadata accessor for FlowRouter();
      v256 = sub_47100(v255);
      sub_23BC(v256, v324);
      sub_23BC(v2 + *(v32 + 8), v318);
      v257 = sub_471D0();
      sub_5260(v257, &v315);
      sub_471DC();
      sub_47078();
      v259 = *(v258 + 64);
      __chkstk_darwin(v260);
      v262 = sub_47054(v261, v291);
      v263(v262);
      v264 = sub_47298(&v320);
      sub_4721C(v264, v265, v266, v267, v268, v269, v270, &type metadata for EmergencyWebsiteFlowFollowupConfigModel, &off_66F00, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301);
      v272 = v271;
      sub_253C(v318);
      v324[0] = v272;
      type metadata accessor for EmergencyWebsiteFlow();
      v57 = &unk_6D958;
      v58 = type metadata accessor for EmergencyWebsiteFlow;
      goto LABEL_38;
    case 9:
      v59 = type metadata accessor for FlowRouter();
      v60 = sub_47100(v59);
      sub_23BC(v60, &v320);
      sub_47174();
      v61 = sub_471D0();
      sub_5260(v61, v318);
      v62 = type metadata accessor for SirenAppProvider();
      v63 = swift_allocObject();
      v64 = sub_50AD4();
      v65 = sub_50AC4();
      v316 = v64;
      v317 = &protocol witness table for DeviceResolutionService;
      *&v315 = v65;
      sub_52BC(v324, v324[3]);
      v293 = &v291;
      sub_47078();
      v67 = *(v66 + 64);
      __chkstk_darwin(v68);
      sub_5630();
      v71 = (v70 - v69);
      (*(v72 + 16))(v70 - v69);
      v313 = &type metadata for EmergencyCATProvider;
      v314 = &off_66C88;
      sub_1A498();
      v312[0] = swift_allocObject();
      memcpy((v312[0] + 16), v71, 0x70uLL);
      v310 = v62;
      v311 = &off_668C0;
      *&v309 = v63;
      type metadata accessor for StartSirenFlow();
      v73 = swift_allocObject();
      sub_52BC(v312, &type metadata for EmergencyCATProvider);
      sub_47078();
      v75 = *(v74 + 64);
      __chkstk_darwin(v76);
      sub_5630();
      v78 = sub_2464C(v77);
      v79(v78);
      sub_52BC(&v309, v62);
      sub_5620();
      v81 = *(v80 + 64);
      __chkstk_darwin(v82);
      sub_5630();
      v84 = sub_47358(v83);
      v85(v84);
      v86 = *v18;
      *(v73 + 80) = &type metadata for EmergencyCATProvider;
      *(v73 + 88) = &off_66C88;
      sub_1A498();
      v87 = swift_allocObject();
      *(v73 + 56) = v87;
      sub_472C8(v87);
      v307 = v62;
      v308 = &off_668C0;
      *&v306 = v86;
      sub_546C(&v320, v73 + 16);
      *(v73 + 96) = sub_47114();
      *(v73 + 112) = v88;
      *(v73 + 128) = v319;
      *(v73 + 136) = 0;
      sub_546C(&v306, v73 + 144);
      sub_546C(&v315, v73 + 184);
      sub_253C(&v309);
      sub_253C(v312);
      sub_253C(v324);
      *&v320 = v73;
      sub_46B30(&qword_6DA30, type metadata accessor for StartSirenFlow);
      sub_4FF04();
      goto LABEL_56;
    case 10:
      v226 = type metadata accessor for FlowRouter();
      v227 = sub_47100(v226);
      sub_23BC(v227, &v320);
      sub_47174();
      v228 = sub_471D0();
      sub_5260(v228, v318);
      v229 = type metadata accessor for SirenAppProvider();
      v230 = swift_allocObject();
      sub_52BC(v324, v324[3]);
      v293 = &v291;
      sub_5620();
      v232 = *(v231 + 64);
      __chkstk_darwin(v233);
      sub_5630();
      v235 = sub_2464C(v234);
      v236(v235);
      v316 = &type metadata for EmergencyCATProvider;
      v317 = &off_66C88;
      sub_1A498();
      *&v315 = swift_allocObject();
      sub_472C8(v315);
      v313 = v229;
      v314 = &off_668C0;
      v312[0] = v230;
      type metadata accessor for StopSirenFlow();
      v237 = swift_allocObject();
      sub_52BC(&v315, &type metadata for EmergencyCATProvider);
      sub_5620();
      v239 = *(v238 + 64);
      __chkstk_darwin(v240);
      sub_5630();
      v242 = sub_2464C(v241);
      v243(v242);
      sub_52BC(v312, v229);
      sub_47078();
      v245 = *(v244 + 64);
      __chkstk_darwin(v246);
      sub_5630();
      v248 = sub_47358(v247);
      v249(v248);
      v250 = *v18;
      *(v237 + 80) = &type metadata for EmergencyCATProvider;
      *(v237 + 88) = &off_66C88;
      sub_1A498();
      v251 = swift_allocObject();
      *(v237 + 56) = v251;
      sub_472C8(v251);
      v310 = v229;
      v311 = &off_668C0;
      *&v309 = v250;
      v252 = sub_47210();
      sub_546C(v252, v253);
      *(v237 + 96) = sub_47114();
      *(v237 + 112) = v254;
      *(v237 + 128) = v319;
      *(v237 + 136) = 0;
      sub_546C(&v309, v237 + 144);
      sub_253C(v312);
      sub_253C(&v315);
      sub_253C(v324);
      *&v320 = v237;
      v33 = &qword_6D038;
      v34 = type metadata accessor for StopSirenFlow;
      goto LABEL_55;
    case 11:
    case 12:
    case 13:
      type metadata accessor for InfoDomainFallbackFlow();
      *&v320 = swift_allocObject();
      v33 = &qword_6DA20;
      v34 = type metadata accessor for InfoDomainFallbackFlow;
      goto LABEL_55;
    case 14:
      v36 = type metadata accessor for FlowRouter();
      v37 = *(v36 + 28);
      sub_47264((v293 + *(v36 + 32)));
      sub_451D4();
      v324[0] = v38;
      sub_4FEB4();
      goto LABEL_39;
    case 15:
      v175 = type metadata accessor for FlowRouter();
      sub_472E4(v175);
      sub_24C3C();
      goto LABEL_20;
    case 16:
      v35 = type metadata accessor for FlowRouter();
      sub_472E4(v35);
      sub_24C5C();
LABEL_20:

      sub_23BC(v11 + *(v2 + 28), &v320);
      sub_50874();
      sub_46B30(&qword_6B990, &type metadata accessor for OutputFlow);
      sub_4FF04();
      sub_46C28(v10, &type metadata accessor for OutputFlow);
      goto LABEL_57;
    case 17:
      v197 = type metadata accessor for FlowRouter();
      v198 = *(v197 + 28);
      v199 = v293;
      sub_47264((v293 + *(v197 + 32)));
      sub_202C(v199 + v198, &v320);
      goto LABEL_57;
    default:
      v128 = v30;
      v129 = sub_50AE4();
      swift_beginAccess();
      v130 = v128;
      (*(v128 + 16))(v32, v129, v22);
      v131 = sub_50AF4();
      v132 = sub_50BD4();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        *v133 = 0;
        _os_log_impl(&dword_0, v131, v132, "Going to EmergencyBasicFlow", v133, 2u);
        sub_5674();
      }

      (*(v130 + 8))(v32, v22);
      v134 = type metadata accessor for FlowRouter();
      v135 = sub_47100(v134);
      sub_23BC(v135, &v320);
      sub_47174();
      v136 = sub_471D0();
      sub_5260(v136, v318);
      sub_47128();
      sub_47078();
      v138 = *(v137 + 64);
      __chkstk_darwin(v139);
      v141 = sub_47054(v140, v291);
      v142(v141);
      v310 = &type metadata for EmergencyCATProvider;
      v311 = &off_66C88;
      sub_1A498();
      v143 = swift_allocObject();
      sub_471B0(v143);
      type metadata accessor for EmergencyBasicFlow();
      swift_allocObject();
      sub_47248();
      sub_47078();
      v145 = *(v144 + 64);
      __chkstk_darwin(v146);
      v148 = sub_4708C(v147, v291);
      v149(v148);
      v307 = &type metadata for EmergencyCATProvider;
      v308 = &off_66C88;
      sub_1A498();
      v150 = swift_allocObject();
      sub_47190(v150);
      v151 = sub_47210();
      sub_23BC(v151, v152);
      sub_4741C();
      v153 = sub_47404();
      sub_473EC(v153, v154, &qword_6DA18, &qword_54368);
      if (v303)
      {
        sub_51C0(&v315, &qword_6DA18, &qword_54368);
        sub_47434();
      }

      else
      {
        sub_4738C();
        v282 = sub_509F4();
        v283 = sub_473D4(v282, &protocol witness table for EmergencyOrganizationInfoProvider);
        sub_4744C(v283);
        sub_51C0(&v315, &qword_6DA18, &qword_54368);
        if (v303)
        {
          sub_51C0(v302, &qword_6DA18, &qword_54368);
        }
      }

      sub_473A4();
      v304 = &type metadata for EmergencyBasicFlowFollowupProvider;
      v305 = &off_66E40;
      sub_472BC();
      v284 = swift_allocObject();
      sub_470B0(v284);
      if (v285)
      {
        sub_51C0(v312, &qword_6DA50, &qword_54398);
      }

      sub_473BC();
      *(v132 + 216) = 5;
      sub_253C(&v309);
      sub_253C(v324);
      sub_472B0();
      v33 = &unk_6D858;
      v34 = type metadata accessor for EmergencyBasicFlow;
      goto LABEL_55;
  }
}

void sub_451D4()
{
  sub_13C8C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_50B04();
  sub_5620();
  v55 = v9;
  v56 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_5630();
  v54 = v13 - v12;
  v57 = sub_50324();
  sub_5620();
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  sub_5658();
  v21 = (v19 - v20);
  v23 = __chkstk_darwin(v22);
  v25 = &v50 - v24;
  __chkstk_darwin(v23);
  v27 = &v50 - v26;
  v60 = &type metadata for EmergencyCATProvider;
  v61 = &off_66C88;
  sub_1A498();
  v59[0] = swift_allocObject();
  memcpy((v59[0] + 16), v1, 0x70uLL);
  sub_2208(&qword_6C1C0, &unk_51FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_51780;
  sub_22F0(v1, v62);
  *(inited + 32) = sub_50A84();
  *(inited + 40) = v29;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v7;
  *(inited + 56) = v5;

  sub_50B24();
  sub_502F4();
  v30 = v3[3];
  v31 = v3[4];
  sub_1FE8(v3, v30);
  (*(v31 + 56))(v62, v30, v31);
  v32 = v62[3];
  v33 = v62[4];
  sub_1FE8(v62, v62[3]);
  if ((*(v33 + 8))(v27, v32, v33))
  {
    (*(v15 + 8))(v27, v57);
    sub_253C(v62);
  }

  else
  {
    sub_253C(v62);
    v34 = sub_50AE4();
    swift_beginAccess();
    (*(v55 + 16))(v54, v34, v56);
    v35 = *(v15 + 16);
    v35(v25, v27, v57);
    v36 = sub_50AF4();
    v37 = sub_50BE4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v52 = v36;
      v39 = v38;
      v53 = swift_slowAlloc();
      v62[0] = v53;
      *v39 = 136315138;
      v51 = v37;
      v37 = v21;
      v40 = v21;
      v41 = v57;
      v35(v40, v25, v57);
      v50 = sub_50B64();
      v43 = v42;
      v44 = sub_47324();
      v37(v44, v41);
      v45 = sub_4DE68(v50, v43, v62);

      v46 = v39;
      *(v39 + 4) = v45;
      v47 = v52;
      _os_log_impl(&dword_0, v52, v51, "Canned flow not found for direct invocation %s", v46, 0xCu);
      sub_253C(v53);
      sub_5674();
      sub_5674();
    }

    else
    {

      v48 = sub_47324();
      v37(v48, v57);
    }

    (*(v55 + 8))(v54, v56);
    v49 = sub_1FE8(v59, v60);
    memcpy(v62, v49, 0x70uLL);
    v58 = sub_202C(v3, v62);
    sub_4FEB4();
    sub_4FF04();
    v37(v27, v57);
  }

  sub_253C(v59);
  sub_47338();
  sub_8A94();
}

void sub_456A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_13C8C();
  v47 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v55[3] = &type metadata for EmergencyCATProvider;
  v55[4] = &off_66C88;
  sub_1A498();
  v55[0] = swift_allocObject();
  memcpy((v55[0] + 16), v33, 0x70uLL);
  v23(0);
  v36 = swift_allocObject();
  sub_52BC(v55, &type metadata for EmergencyCATProvider);
  sub_5620();
  v38 = *(v37 + 64);
  __chkstk_darwin(v39);
  sub_5630();
  v42 = (v41 - v40);
  (*(v43 + 16))(v41 - v40);
  v54[3] = &type metadata for EmergencyCATProvider;
  v54[4] = &off_66C88;
  sub_1A498();
  v54[0] = swift_allocObject();
  memcpy((v54[0] + 16), v42, 0x70uLL);
  sub_23BC(v35, v36 + 64);
  sub_23BC(v54, v36 + 104);
  sub_5260(v31, v36 + 144);
  sub_12A88(v29, &v49, &qword_6DA18, &qword_54368);
  if (v50)
  {
    sub_546C(&v49, &v51);
  }

  else
  {
    sub_23BC(v35, v48);
    v52 = sub_509F4();
    v53 = &protocol witness table for EmergencyOrganizationInfoProvider;
    v44 = sub_530C(&v51);
    EmergencyOrganizationInfoProvider.init(flowConfig:)(v48, v44);
    if (v50)
    {
      sub_51C0(&v49, &qword_6DA18, &qword_54368);
    }
  }

  sub_546C(&v51, v36 + 24);
  sub_12A88(v27, &v49, &qword_6DA58, qword_543A0);
  if (v50)
  {
    sub_51C0(v27, &qword_6DA58, qword_543A0);
    sub_51C0(v29, &qword_6DA18, &qword_54368);
    sub_55C8(v31);
    sub_253C(v35);
    sub_253C(v54);
    sub_546C(&v49, &v51);
  }

  else
  {
    v52 = &type metadata for EmergencyFlowFollowupProvider;
    v53 = &off_66648;
    v45 = swift_allocObject();
    *&v51 = v45;
    sub_23BC(v35, v45 + 16);
    sub_23BC(v54, v45 + 56);
    *(v45 + 120) = v47;
    *(v45 + 128) = a21;
    sub_51C0(v27, &qword_6DA58, qword_543A0);
    sub_51C0(v29, &qword_6DA18, &qword_54368);
    sub_253C(v35);
    sub_253C(v54);
    v46 = *(v31 + 16);
    *(v45 + 136) = *v31;
    *(v45 + 152) = v46;
    *(v45 + 168) = *(v31 + 32);
    if (v50)
    {
      sub_51C0(&v49, &qword_6DA58, qword_543A0);
    }
  }

  sub_546C(&v51, v36 + 184);
  *(v36 + 18) = BYTE2(v25);
  *(v36 + 16) = v25;
  sub_253C(v55);
  sub_47338();
  sub_8A94();
}

uint64_t sub_45A20(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for ConfirmationFlowConfigModel();
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = &v38[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = &type metadata for EmergencyCATProvider;
  v50 = &off_66C88;
  v48[0] = swift_allocObject();
  memcpy((v48[0] + 16), a2, 0x70uLL);
  sub_23BC(a1, v47);
  sub_23BC(v48, &v47[40]);
  sub_EB48(v51);
  memcpy(&v47[80], v51, 0x81uLL);
  sub_22F0(a2, __dst);
  sub_EA30();
  v10 = sub_4FF04();
  sub_EA84(v47);
  v11 = sub_1FE8(v48, v49)[1];

  sub_25090();

  v12 = sub_1FE8(v48, v49)[1];
  v13 = v6[5];

  sub_250F0();

  *&v9[v6[6]] = v10;
  *&v9[v6[7]] = 2;
  v9[v6[8]] = 0;
  v9[v6[9]] = 1;
  sub_509B4();
  sub_23BC(a1, v46);
  sub_23BC(v48, v44);
  sub_5260(a3, v42);
  v14 = v45;
  v15 = sub_52BC(v44, v45);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  memcpy(v52, v18, sizeof(v52));
  v40 = v6;
  v41 = &off_66AB0;
  v20 = sub_530C(v39);
  sub_46BC8(v9, v20, type metadata accessor for ConfirmationFlowConfigModel);
  v38[3] = &type metadata for EmergencyCATProvider;
  v38[4] = &off_66C88;
  v38[0] = swift_allocObject();
  memcpy((v38[0] + 16), v52, 0x70uLL);
  type metadata accessor for EmergencyConfirmationFlow();
  v21 = swift_allocObject();
  v22 = v40;
  v23 = sub_52BC(v39, v40);
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v38[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  v28 = sub_52BC(v38, &type metadata for EmergencyCATProvider);
  __chkstk_darwin(v28);
  v30 = &v38[-1] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  memcpy(__dst, v30, 0x70uLL);
  *(v21 + 176) = v6;
  *(v21 + 184) = &off_66AB0;
  v32 = sub_530C((v21 + 152));
  sub_1A0FC(v26, v32);
  *(v21 + 256) = &type metadata for EmergencyCATProvider;
  *(v21 + 264) = &off_66C88;
  v33 = swift_allocObject();
  *(v21 + 232) = v33;
  memcpy((v33 + 16), __dst, 0x70uLL);
  sub_46C28(v9, type metadata accessor for ConfirmationFlowConfigModel);
  memcpy((v21 + 24), v47, 0x80uLL);
  sub_546C(v46, v21 + 192);
  v34 = v42[1];
  *(v21 + 272) = v42[0];
  *(v21 + 288) = v34;
  v35 = v43;
  *(v21 + 16) = 0;
  *(v21 + 312) = 0;
  *(v21 + 320) = 0;
  *(v21 + 304) = v35;
  sub_253C(v38);
  sub_253C(v39);
  sub_253C(v44);
  sub_253C(v48);
  return v21;
}

uint64_t sub_45F28(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v25[3] = &type metadata for EmergencyCATProvider;
  v25[4] = &off_66C88;
  v25[0] = swift_allocObject();
  memcpy((v25[0] + 16), a2, 0x70uLL);
  type metadata accessor for OfflineFlow();
  v10 = swift_allocObject();
  v11 = sub_52BC(v25, &type metadata for EmergencyCATProvider);
  __chkstk_darwin(v11);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v24[3] = &type metadata for EmergencyCATProvider;
  v24[4] = &off_66C88;
  v24[0] = swift_allocObject();
  memcpy((v24[0] + 16), v13, 0x70uLL);
  sub_23BC(a1, v10 + 16);
  sub_23BC(v24, v10 + 56);
  sub_5260(a3, v10 + 96);
  sub_12A88(a4, &v19, &qword_6DA18, &qword_54368);
  if (v20)
  {
    sub_51C0(a4, &qword_6DA18, &qword_54368);
    sub_55C8(a3);
    sub_253C(a1);
    sub_253C(v24);
    sub_546C(&v19, &v21);
  }

  else
  {
    sub_23BC(a1, v18);
    v22 = sub_509F4();
    v23 = &protocol witness table for EmergencyOrganizationInfoProvider;
    v15 = sub_530C(&v21);
    EmergencyOrganizationInfoProvider.init(flowConfig:)(v18, v15);
    sub_51C0(a4, &qword_6DA18, &qword_54368);
    sub_55C8(a3);
    sub_253C(a1);
    sub_253C(v24);
    if (v20)
    {
      sub_51C0(&v19, &qword_6DA18, &qword_54368);
    }
  }

  sub_546C(&v21, v10 + 136);
  *(v10 + 176) = a5;
  sub_253C(v25);
  return v10;
}

uint64_t sub_461BC(uint64_t a1)
{
  v2 = sub_50B04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for EmergencyNLIntent();
  v32 = sub_46B30(&qword_6C088, type metadata accessor for EmergencyNLIntent);
  v7 = sub_530C(v30);
  sub_46BC8(a1, v7, type metadata accessor for EmergencyNLIntent);
  sub_1FE8(v30, v31);
  if (qword_6B5F8 != -1)
  {
    swift_once();
  }

  sub_46B30(&qword_6BD68, type metadata accessor for EmergencyNLIntent);
  sub_50524();
  if (LOBYTE(v29[0]) - 6 <= 3)
  {
    v8 = 1;
    goto LABEL_33;
  }

  sub_1FE8(v30, v31);
  sub_50524();
  if (LOBYTE(v29[0]) != 35)
  {
    if (sub_50A44() == 0xD00000000000001ALL && 0x8000000000056320 == v10)
    {
LABEL_31:

LABEL_32:
      v8 = 3;
      goto LABEL_33;
    }

    v12 = sub_50CE4();

    if (v12)
    {
      goto LABEL_32;
    }
  }

  sub_1FE8(v30, v31);
  sub_50524();
  if (LOBYTE(v29[0]) == 35)
  {
    goto LABEL_7;
  }

  if (sub_50A44() == 0xD00000000000001BLL && 0x8000000000056300 == v13)
  {
    goto LABEL_31;
  }

  v15 = sub_50CE4();

  if (v15)
  {
    goto LABEL_32;
  }

LABEL_7:
  sub_1FE8(v30, v31);
  if (qword_6B5F0 != -1)
  {
    swift_once();
  }

  sub_50524();
  if (!LOBYTE(v29[0]))
  {
    v8 = 2;
    goto LABEL_33;
  }

  if (LOBYTE(v29[0]) == 1)
  {
    sub_1FE8(v30, v31);
    if (qword_6B610 != -1)
    {
      swift_once();
    }

    sub_50524();
    if (LOBYTE(v29[0]) == 2)
    {
      goto LABEL_63;
    }

    if (v29[0])
    {
    }

    else
    {
      v25 = sub_50CE4();

      if ((v25 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_53;
  }

  if (LOBYTE(v29[0]) != 8)
  {
    v17 = sub_50AE4();
    swift_beginAccess();
    (*(v3 + 16))(v6, v17, v2);
    sub_23BC(v30, v29);
    v18 = sub_50AF4();
    v19 = sub_50BE4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v20 = 136315138;
      sub_1FE8(v29, v29[3]);
      sub_50524();
      sub_2208(&qword_6D960, &unk_54370);
      v21 = sub_50C14();
      v23 = v22;
      sub_253C(v29);
      v24 = sub_4DE68(v21, v23, &v28);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v18, v19, "Encountered unsupported verb in NLIntent: %s", v20, 0xCu);
      sub_253C(v27);

      (*(v3 + 8))(v6, v2);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
      sub_253C(v29);
    }

    v8 = 17;
    goto LABEL_33;
  }

  sub_1FE8(v30, v31);
  if (qword_6B610 != -1)
  {
    swift_once();
  }

  sub_50524();
  if (LOBYTE(v29[0]) != 2)
  {
    if (v29[0])
    {
    }

    else
    {
      v26 = sub_50CE4();

      if ((v26 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_1FE8(v30, v31);
    if (qword_6B608 != -1)
    {
      swift_once();
    }

    sub_50524();
    if (LOBYTE(v29[0]) != 4 || (sub_1FE8(v30, v31), sub_50524(), LOBYTE(v29[0]) != 35))
    {
LABEL_53:
      v8 = 8;
      goto LABEL_33;
    }
  }

LABEL_15:
  sub_1FE8(v30, v31);
  sub_50524();
  if (LOBYTE(v29[0]) != 2)
  {
    if (v29[0])
    {
      v9 = sub_50CE4();

      if ((v9 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
    }

    sub_1FE8(v30, v31);
    if (qword_6B608 != -1)
    {
      swift_once();
    }

    sub_50524();
    if (LOBYTE(v29[0]) == 4)
    {
      goto LABEL_58;
    }

LABEL_63:
    v8 = 4;
    goto LABEL_33;
  }

LABEL_58:
  sub_1FE8(v30, v31);
  if (qword_6B608 != -1)
  {
    swift_once();
  }

  sub_50524();
  if (LOBYTE(v29[0]) == 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 5;
  }

LABEL_33:
  sub_253C(v30);
  return v8;
}

uint64_t sub_46A4C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  sub_1A498();

  return _swift_deallocObject(v15, v16, v17);
}

uint64_t sub_46AEC()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_253C(v0 + 12);
  sub_472BC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_46B30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_46B78()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_253C(v0 + 12);
  sub_253C(v0 + 17);

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_46BC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_569C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_46C28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_569C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_46C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2208(&qword_6D490, &unk_54350);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return sub_513C(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_46D68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2208(&qword_6D490, &unk_54350);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return sub_28E0(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

void sub_46E24()
{
  sub_46F48(319, &qword_6DAC8, &qword_6DAD0, "Pg");
  if (v0 <= 0x3F)
  {
    sub_46F48(319, &qword_6DAD8, &qword_6C080, &qword_51E10);
    if (v1 <= 0x3F)
    {
      sub_46F9C();
      if (v2 <= 0x3F)
      {
        sub_46FF4(319, &qword_6DAE8);
        if (v3 <= 0x3F)
        {
          sub_46FF4(319, &unk_6DAF0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_46F48(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_5218(a3, a4);
    v5 = sub_50C24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_46F9C()
{
  if (!qword_6DAE0)
  {
    sub_50324();
    v0 = sub_50C24();
    if (!v1)
    {
      atomic_store(v0, &qword_6DAE0);
    }
  }
}

uint64_t sub_46FF4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 sub_470B0(uint64_t a1)
{
  *(v1 + 128) = a1;
  sub_546C((v1 + 384), a1 + 16);
  sub_546C((v1 + 168), a1 + 56);
  result = *(v1 + 344);
  v4 = *(v1 + 360);
  *(a1 + 96) = result;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 376);
  v5 = *(v1 + 280);
  return result;
}

__n128 sub_47114()
{
  result = *(v0 + 344);
  v2 = *(v0 + 360);
  return result;
}

uint64_t sub_47128()
{
  *(v0 + 336) = 0;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 288) = 0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  v3 = *(v1 - 208);

  return sub_52BC(v1 - 232, v3);
}

uint64_t sub_47174()
{
  v4 = v1 + *(v0 + 32);

  return sub_23BC(v4, v2 - 232);
}

void *sub_47190(uint64_t a1)
{
  *(v1 + 168) = a1;
  v4 = (a1 + 16);

  return memcpy(v4, v2, 0x70uLL);
}

void *sub_471B0(uint64_t a1)
{
  *(v1 + 208) = a1;
  v4 = (a1 + 16);

  return memcpy(v4, v2, 0x70uLL);
}

uint64_t sub_471DC()
{
  *(v0 + 288) = 0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 240) = 0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  v2 = *(v0 + 368);

  return sub_52BC(v0 + 344, v2);
}

void sub_4721C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  sub_456A8(v23 - 232, v22 + 384, v22 + 304, v22 + 256, v22 + 208, 2, v21, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_47248()
{

  return sub_52BC(v0 + 208, v1);
}

void *sub_47264(void *a1)
{
  v2 = sub_1FE8(a1, a1[3]);

  return memcpy((v1 + 384), v2, 0x70uLL);
}

void *sub_47298(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

void *sub_472C8(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x70uLL);
}

uint64_t sub_472E4(uint64_t a1)
{
  v2 = sub_1FE8((*(v1 + 16) + *(a1 + 32)), *(*(v1 + 16) + *(a1 + 32) + 24))[1];
}

uint64_t sub_4736C()
{

  return sub_50C34();
}

uint64_t sub_4738C()
{

  return sub_23BC(v0 + 384, v0 + 48);
}

uint64_t sub_473A4()
{

  return sub_546C((v0 + 128), v1 + 136);
}

uint64_t sub_473BC()
{

  return sub_546C((v0 + 128), v1 + 176);
}

uint64_t *sub_473D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[19] = a1;
  v2[20] = a2;

  return sub_530C(v2 + 16);
}

uint64_t sub_473EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_12A88(v4 + 304, v4 + 88, a3, a4);
}

uint64_t sub_47404()
{

  return sub_5260(v0 + 344, v1 + 96);
}

uint64_t sub_4741C()
{

  return sub_23BC(v0 + 168, v1 + 56);
}

uint64_t sub_47434()
{

  return sub_546C((v0 + 88), v0 + 128);
}

uint64_t sub_4744C(uint64_t a1)
{

  return EmergencyOrganizationInfoProvider.init(flowConfig:)((v1 + 48), a1);
}

uint64_t sub_47464()
{
  v0 = sub_50B04();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_50AE4();
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_50AF4();
  v7 = sub_50BD4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "InfoDomainFallbackFlow onInput", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return 1;
}

uint64_t sub_475D0(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_4FF84();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_50B04();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_476EC, 0, 0);
}

uint64_t sub_476EC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_50AE4();
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_50AF4();
  v6 = sub_50BD4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "InfoDomainFallbackFlow execute", v7, 2u);
  }

  v9 = v0[10];
  v8 = v0[11];
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[6];
  v13 = v0[7];
  v14 = v0[5];

  (*(v9 + 8))(v8, v10);
  (*(v13 + 104))(v11, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v12);
  sub_501A4();
  (*(v13 + 8))(v11, v12);

  v15 = v0[1];

  return v15();
}

uint64_t sub_4788C()
{
  type metadata accessor for InfoDomainFallbackFlow();
  sub_47A1C();
  return sub_4FF14();
}

uint64_t sub_4794C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4F9C;

  return sub_475D0(a1);
}

uint64_t sub_479E4()
{
  type metadata accessor for InfoDomainFallbackFlow();

  return sub_4FF64();
}

unint64_t sub_47A1C()
{
  result = qword_6DA20;
  if (!qword_6DA20)
  {
    type metadata accessor for InfoDomainFallbackFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6DA20);
  }

  return result;
}

uint64_t sub_47A70(uint64_t a1)
{
  v2 = sub_50324();
  v3 = sub_8558(v2);
  v82 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_5658();
  v9 = (v7 - v8);
  __chkstk_darwin(v10);
  v12 = &v78 - v11;
  v13 = sub_50B04();
  v14 = sub_8558(v13);
  v83 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_5658();
  v20 = v18 - v19;
  v22 = __chkstk_darwin(v21);
  v24 = &v78 - v23;
  __chkstk_darwin(v22);
  v81 = &v78 - v25;
  sub_50304();
  v27 = v26;
  sub_150F4();
  v30 = v28 == 0xD00000000000003FLL && v29 == v27;
  if (!v30)
  {
    v31 = v28;
    if ((sub_48DDC() & 1) == 0)
    {
      sub_150F4();
      v34 = v31 == 0xD000000000000034 && v33 == v27;
      if (v34 || (sub_48DDC() & 1) != 0)
      {

        return 9;
      }

      sub_150F4();
      if (v31 == 0xD000000000000035 && v35 == v27)
      {
      }

      else
      {
        v37 = sub_48DDC();

        if ((v37 & 1) == 0)
        {
          v38 = sub_50AE4();
          sub_48DC0();
          v39 = v83;
          v40 = v13;
          (*(v83 + 16))(v20, v38, v13);
          v41 = v82;
          v42 = *(v82 + 16);
          v42(v12, a1, v2);
          v43 = sub_50AF4();
          LODWORD(v81) = sub_50BE4();
          if (os_log_type_enabled(v43, v81))
          {
            v44 = swift_slowAlloc();
            v79 = v43;
            v45 = v44;
            v46 = swift_slowAlloc();
            v80 = v40;
            v47 = v46;
            v84[0] = v46;
            *v45 = 136315138;
            v42(v9, v12, v2);
            v48 = sub_50B64();
            v50 = v49;
            (*(v41 + 8))(v12, v2);
            v51 = sub_4DE68(v48, v50, v84);

            v52 = v45;
            *(v45 + 4) = v51;
            v53 = v79;
            _os_log_impl(&dword_0, v79, v81, "Encountered unsupported invocation in flow router: %s", v52, 0xCu);
            sub_253C(v47);
            sub_5674();
            sub_5674();

            (*(v39 + 8))(v20, v80);
          }

          else
          {

            (*(v41 + 8))(v12, v2);
            (*(v39 + 8))(v20, v40);
          }

          return 17;
        }
      }

      v54 = sub_50314();
      v55 = v13;
      if (v54)
      {
        v56 = v54;
        v57 = sub_50A84();
        sub_2B7EC(v57, v58, v56, &v85);

        if (*(&v86 + 1))
        {
          v59 = swift_dynamicCast();
          v60 = v83;
          if (v59)
          {
            v62 = v84[0];
            v61 = v84[1];
            sub_50A34();
            sub_48DB4();
            if (!v30)
            {
              v77 = v63;

              return sub_485EC(v77, 2);
            }

            v64 = sub_50AE4();
            sub_48DC0();
            v65 = v81;
            (*(v60 + 16))(v81, v64, v55);

            v66 = sub_50AF4();
            v67 = sub_50BE4();

            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              v84[0] = swift_slowAlloc();
              *v68 = 136315394;
              sub_150F4();
              *(v68 + 4) = sub_4DE68(0xD000000000000015, v69, v84);
              *(v68 + 12) = 2080;
              v70 = sub_4DE68(v62, v61, v84);

              *(v68 + 14) = v70;
              _os_log_impl(&dword_0, v66, v67, "%s Failed to create an EmergencySituation enum from payload value: %s.", v68, 0x16u);
              swift_arrayDestroy();
              sub_5674();
              sub_5674();
            }

            else
            {
            }

            (*(v60 + 8))(v65, v55);
            return 17;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v85 = 0u;
        v86 = 0u;
      }

      sub_2B784(&v85);
      v60 = v83;
LABEL_31:
      v71 = sub_50AE4();
      sub_48DC0();
      (*(v60 + 16))(v24, v71, v13);
      v72 = sub_50AF4();
      v73 = sub_50BE4();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v84[0] = v75;
        *v74 = 136315138;
        sub_150F4();
        *(v74 + 4) = sub_4DE68(0xD000000000000015, v76, v84);
        _os_log_impl(&dword_0, v72, v73, "%s Missing emergencySituation payload.", v74, 0xCu);
        sub_253C(v75);
        sub_5674();
        sub_5674();
      }

      (*(v60 + 8))(v24, v55);
      return 17;
    }
  }

  return 2;
}

uint64_t sub_4813C(void *a1)
{
  v2 = a1[4];
  sub_1FE8(a1, a1[3]);
  v3 = *(v2 + 16);
  v4 = sub_24660();
  v6 = v5(v4);
  result = 17;
  switch(v6)
  {
    case 1:
      sub_48D90();
      v24 = *(v23 + 40);
      v25 = sub_24660();
      v27 = v26(v25);
      if (v27 == 2)
      {
        return 4;
      }

      if (v27)
      {
        goto LABEL_56;
      }

      sub_48E24();
      sub_48E10();
      v28 = sub_50CE4();

      if (v28)
      {
        return 8;
      }

      return 4;
    case 2:
    case 6:
    case 7:
      v8 = sub_48D5C();
      v9(v8);
      sub_48DB4();
      if (v17)
      {
        goto LABEL_4;
      }

      v19 = sub_50A44();
      if (v19 == 0xD00000000000001ALL && 0x8000000000056320 == v20)
      {
        goto LABEL_35;
      }

      v22 = sub_50CE4();

      if (v22)
      {
        return 3;
      }

LABEL_4:
      v10 = sub_48D5C();
      v11(v10);
      sub_48DB4();
      if (v17)
      {
        goto LABEL_6;
      }

      v31 = sub_50A44();
      if (v31 == 0xD00000000000001BLL && 0x8000000000056300 == v32)
      {
LABEL_35:

        return 3;
      }

      v34 = sub_50CE4();

      if (v34)
      {
        return 3;
      }

LABEL_6:
      v12 = sub_48D5C();
      if ((v13(v12) - 6) < 4u)
      {
        return 1;
      }

      sub_48D90();
      v36 = *(v35 + 40);
      v37 = sub_24660();
      v39 = v38(v37);
      if (v39 == 2)
      {
        goto LABEL_38;
      }

      if ((v39 & 1) == 0)
      {

        return 4;
      }

      v62 = sub_50CE4();

      if (v62)
      {
        return 4;
      }

LABEL_38:
      sub_48D90();
      v41 = *(v40 + 40);
      v42 = sub_24660();
      v44 = v43(v42);
      if (v44 == 2)
      {
        goto LABEL_39;
      }

      if (v44)
      {
LABEL_56:

        return 8;
      }

      sub_48E24();
      sub_48E10();
      v63 = sub_50CE4();

      if (v63)
      {
        return 8;
      }

LABEL_39:
      sub_48D90();
      v46 = *(v45 + 32);
      v47 = sub_24660();
      if (v48(v47) != 4)
      {
        return 5;
      }

      sub_48D90();
      v50 = *(v49 + 56);
      v51 = sub_24660();
      v53 = v52(v51);
      v54 = sub_48D5C();
      v56 = v55(v54);
      v57 = v56;
      if (v53 == 3)
      {
        return 16 * (v56 == 35);
      }

      v64 = a1[3];
      v65 = a1[4];
      sub_1FE8(a1, v64);
      v66 = (*(v65 + 56))(v64, v65);

      return sub_485EC(v57, v66);
    case 3:
    case 4:
      v14 = sub_48D5C();
      v15(v14);
      sub_48DB4();
      if (v17)
      {
        return 17;
      }

      v17 = sub_50A44() == 0x6E65726973 && v16 == 0xE500000000000000;
      if (v17)
      {
      }

      else
      {
        v18 = sub_48E58();

        if ((v18 & 1) == 0)
        {
          return 17;
        }
      }

      return 9;
    case 5:
      v29 = sub_48D5C();
      v30(v29);
      sub_48DB4();
      if (v17)
      {
        return 17;
      }

      v58 = sub_50A44();
      if (v58 == 0x6E65726973 && v59 == 0xE500000000000000)
      {
      }

      else
      {
        v61 = sub_48E58();

        if ((v61 & 1) == 0)
        {
          return 17;
        }
      }

      return 10;
    case 8:
      return result;
    default:
      return 2;
  }
}

uint64_t sub_485EC(char a1, int a2)
{
  v67 = a2;
  v4 = sub_50B04();
  v5 = sub_8558(v4);
  v64 = v6;
  v65 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_5658();
  v63 = v9 - v10;
  __chkstk_darwin(v11);
  v62 = &v60 - v12;
  v13 = &byte_65A5A;
  v14 = 102;
  v66 = "crisisSituationMedium";
  do
  {
    if (a1 == 35)
    {
      goto LABEL_32;
    }

    v15 = *(v13 - 1);
    v16 = *v13;
    v17 = *(v13 - 2);
    v18 = sub_50A44();
    v20 = v19;
    v21 = sub_50A44();
    v2 = v22;
    if (v18 == v21 && v20 == v22)
    {
      v25 = v67;

      if (v25 == 3)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v24 = sub_50CE4();

      if ((v24 & 1) == 0 || v67 == 3)
      {
        goto LABEL_32;
      }
    }

    if (v15)
    {
      if (v15 == 1)
      {
        v26 = 0xD000000000000015;
      }

      else
      {
        v26 = 0xD000000000000013;
      }

      if (v15 == 1)
      {
        v27 = "crisisSituationHigh";
      }

      else
      {
        v27 = "dispatch(invocation:)";
      }
    }

    else
    {
      v26 = 0xD000000000000012;
      v27 = v66;
    }

    if (v67)
    {
      if (v67 == 1)
      {
        v28 = 0xD000000000000015;
      }

      else
      {
        v28 = 0xD000000000000013;
      }

      if (v67 == 1)
      {
        v29 = "crisisSituationHigh";
      }

      else
      {
        v29 = "dispatch(invocation:)";
      }
    }

    else
    {
      v28 = 0xD000000000000012;
      v29 = v66;
    }

    v2 = v29 | 0x8000000000000000;
    if (v26 == v28 && (v27 | 0x8000000000000000) == v2)
    {

LABEL_38:
      sub_50AE4();
      sub_48E38();
      v46 = v64;
      v45 = v65;
      v47 = v62;
      (*(v64 + 16))(v62, v2, v65);
      v48 = sub_50AF4();
      v49 = sub_50BD4();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v69 = v66;
        *v50 = 136315650;
        v61 = v16;
        v68 = v16;
        v51 = sub_50B64();
        v53 = sub_48DF8(v51, v52);

        *(v50 + 4) = v53;
        *(v50 + 12) = 2080;
        v68 = a1;
        sub_2208(&qword_6C8C0, &qword_540E0);
        v54 = sub_50C14();
        v56 = sub_48DF8(v54, v55);

        *(v50 + 14) = v56;
        *(v50 + 22) = 2080;
        v68 = v67;
        sub_2208(&qword_6DBE0, qword_54490);
        v57 = sub_50C14();
        v59 = sub_48DF8(v57, v58);

        *(v50 + 24) = v59;
        _os_log_impl(&dword_0, v48, v49, "Found Action [%s] for Situation [%s] and Severity [%s]", v50, 0x20u);
        swift_arrayDestroy();
        sub_5674();
        sub_5674();

        (*(v46 + 8))(v47, v45);
        return v61;
      }

      else
      {

        (*(v46 + 8))(v47, v45);
        return v16;
      }
    }

    v31 = sub_50CE4();

    if (v31)
    {
      goto LABEL_38;
    }

LABEL_32:
    v13 += 3;
    --v14;
  }

  while (v14);
  sub_50AE4();
  sub_48E38();
  v33 = v63;
  v32 = v64;
  v34 = v65;
  (*(v64 + 16))(v63, v2, v65);
  v35 = sub_50AF4();
  v36 = sub_50BE4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v37 = 136315394;
    v68 = a1;
    sub_2208(&qword_6C8C0, &qword_540E0);
    v38 = sub_50C14();
    v40 = sub_48DF8(v38, v39);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2080;
    v68 = v67;
    sub_2208(&qword_6DBE0, qword_54490);
    v41 = sub_50C14();
    v43 = sub_48DF8(v41, v42);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_0, v35, v36, "No Action found for Situation [%s] and Severity [%s]. Returning Fallback response.", v37, 0x16u);
    swift_arrayDestroy();
    sub_5674();
    sub_5674();
  }

  (*(v32 + 8))(v33, v34);
  return 16;
}