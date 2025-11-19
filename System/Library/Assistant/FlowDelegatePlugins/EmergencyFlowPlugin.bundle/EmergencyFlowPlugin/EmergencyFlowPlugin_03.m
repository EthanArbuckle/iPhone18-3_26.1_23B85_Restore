uint64_t getEnumTagSinglePayload for DispatchAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DispatchAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
        JUMPOUT(0x48CCCLL);
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_48D08()
{
  result = qword_6DBE8;
  if (!qword_6DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6DBE8);
  }

  return result;
}

uint64_t sub_48D5C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1FE8(v0, v1);
  v3 = *(v2 + 24);
  return v1;
}

uint64_t sub_48DC0()
{

  return swift_beginAccess();
}

uint64_t sub_48DDC()
{

  return sub_50CE4();
}

uint64_t sub_48DF8(uint64_t a1, unint64_t a2)
{

  return sub_4DE68(a1, a2, (v2 - 112));
}

uint64_t sub_48E38()
{

  return swift_beginAccess();
}

uint64_t sub_48E58()
{

  return sub_50CE4();
}

__n128 sub_48E78(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_48E8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_48ECC(uint64_t result, int a2, int a3)
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

id sub_48F24()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_50B44();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

uint64_t sub_48F98(uint64_t a1)
{
  v2 = sub_503A4();
  v3 = sub_72B0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_1A3A0();
  sub_EE14(v6);
  v7 = sub_50A24();
  v8 = sub_569C(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1A3A0();
  sub_EE14(v11);
  v133 = sub_50354();
  sub_5620();
  v135 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  sub_1A3A0();
  sub_EE14(v16);
  sub_50334();
  sub_5620();
  v144 = v18;
  v145 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_1A3A0();
  v143 = v21;
  v22 = sub_502E4();
  sub_5620();
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v27);
  v29 = (&v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_50B04();
  sub_5620();
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v35);
  sub_EE04();
  __chkstk_darwin(v36);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v37);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v38);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v39);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v40);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v41);
  v43 = &v127 - v42;
  v44 = sub_50AE4();
  sub_56AC();
  v142 = v32;
  v45 = *(v32 + 16);
  v147 = v32 + 16;
  v148 = v44;
  v146 = v45;
  v45(v43, v44, v30);
  v46 = *(v24 + 16);
  v140 = a1;
  v47 = v22;
  v46(v29, a1, v22);
  v48 = sub_50AF4();
  v49 = sub_50BD4();
  v50 = os_log_type_enabled(v48, v49);
  v132 = v7;
  if (v50)
  {
    v51 = sub_EFB0();
    v128 = v30;
    v52 = v51;
    v53 = sub_EFC8();
    v151[0] = v53;
    *v52 = 136315138;
    sub_4E560(&qword_6C078, 255, &type metadata accessor for Input);
    v54 = v47;
    v55 = sub_50CD4();
    v57 = v56;
    (*(v24 + 8))(v29, v54);
    v58 = sub_4DE68(v55, v57, v151);
    v59 = v141;

    *(v52 + 4) = v58;
    _os_log_impl(&dword_0, v48, v49, "#StartSirenFlow onInput: %s", v52, 0xCu);
    sub_253C(v53);
    sub_5674();
    v30 = v128;
    sub_5674();

    v60 = sub_4E894();
    v29(v60);
  }

  else
  {

    (*(v24 + 8))(v29, v22);
    v61 = sub_4E894();
    v29(v61);
    v59 = v141;
  }

  v62 = *(v59 + 48);
  sub_1FE8((v59 + 16), *(v59 + 40));
  v63 = *(v62 + 8);
  v64 = sub_4E7C8();
  v65(v64);
  sub_1FE8(v151, v152);
  sub_4E7C8();
  v66 = sub_500A4();
  sub_253C(v151);
  if ((v66 & 1) == 0)
  {
    sub_2AC34();
    v77 = v139;
    sub_2AC58();
    v78();
    v79 = sub_50AF4();
    v80 = sub_50BD4();
    if (sub_EF00(v80))
    {
      v81 = sub_5718();
      sub_EEC8(v81);
      sub_EED4(&dword_0, v82, v83, "#StartSirenFlow Not on watch. Flagging for remote execution.");
      sub_EE58();
    }

    (v29)(v77, v30);
    *(v59 + 136) = 3;
    return 1;
  }

  v67 = v143;
  sub_502D4();
  v68 = (*(v144 + 88))(v67, v145);
  if (v68 == enum case for Parse.NLv3IntentOnly(_:))
  {
    sub_2AC34();
    v69 = v138;
    sub_2AC58();
    v70();
    v71 = sub_50AF4();
    v72 = sub_50BD4();
    if (sub_EF00(v72))
    {
      v73 = sub_5718();
      sub_EEC8(v73);
      v76 = "#StartSirenFlow onInput .NLv3IntentOnly";
LABEL_14:
      sub_EED4(&dword_0, v74, v75, v76);
      sub_EE58();
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (v68 != enum case for Parse.directInvocation(_:))
  {
    if (v68 != enum case for Parse.uso(_:))
    {
      sub_2AC34();
      v109 = v131;
      sub_2AC58();
      v110();
      v111 = sub_50AF4();
      v112 = sub_50BE4();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = sub_EFB0();
        v114 = sub_EFC8();
        v149 = v114;
        *v113 = 136315138;
        v150 = 0;
        v115 = sub_50B64();
        v117 = sub_4DE68(v115, v116, &v149);

        *(v113 + 4) = v117;
        _os_log_impl(&dword_0, v111, v112, "%s", v113, 0xCu);
        sub_253C(v114);
        sub_5674();
        sub_5674();
      }

      (v29)(v109, v30);
      v106 = v143;
      v108 = *(v144 + 8);
      v107 = v145;
      goto LABEL_28;
    }

    v88 = v59;
    v89 = v143;
    (*(v144 + 96))(v143, v145);
    (*(v135 + 32))(v137, v89, v133);
    sub_56AC();
    v90 = v130;
    sub_2AC58();
    v91();
    v92 = sub_50AF4();
    v93 = sub_50BD4();
    if (sub_EF00(v93))
    {
      v94 = sub_5718();
      sub_EEC8(v94);
      sub_EED4(&dword_0, v95, v96, "#StartSirenFlow onInput .uso");
      sub_EE58();
    }

    (v29)(v90, v30);
    sub_50344();
    v152 = &type metadata for EmergencyFeatureFlagsKey;
    v153 = sub_EB68();
    LOBYTE(v151[0]) = 2;
    sub_50374();
    sub_253C(v151);
    v97 = v136;
    sub_50A14();
    v98 = v132;
    if (*(v97 + *(v132 + 24)) == 35)
    {
LABEL_22:
      sub_2AC34();
      v99 = v129;
      sub_2AC58();
      v100();
      v101 = sub_50AF4();
      v102 = sub_50BD4();
      if (sub_EF00(v102))
      {
        v103 = sub_5718();
        sub_EEC8(v103);
        sub_EED4(&dword_0, v104, v105, "#StartSirenFlow Received invalid input. Ignoring.");
        sub_EE58();
      }

      (v29)(v99, v30);
      sub_4E774();
      v106 = sub_4E7F8();
LABEL_28:
      v108(v106, v107);
      return 0;
    }

    if (sub_50A44() == 0x6E65726973 && v118 == 0xE500000000000000)
    {
    }

    else
    {
      v120 = sub_50CE4();

      if ((v120 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v121 = *(v98 + 20);
    v122 = *(v136 + v121);
    switch(*(v136 + v121))
    {
      case 2:
        sub_4E930();
        goto LABEL_41;
      case 4:
LABEL_43:

        goto LABEL_48;
      case 5:
        sub_4E87C();
        goto LABEL_41;
      case 6:
        sub_4E838();
        goto LABEL_41;
      case 7:
        sub_4E7D4();
        goto LABEL_41;
      case 8:
        goto LABEL_22;
      default:
LABEL_41:
        v123 = sub_50CE4();

        if ((v123 & 1) == 0)
        {
          sub_4E930();
          switch(v122)
          {
            case 3:
              goto LABEL_43;
            case 5:
              sub_4E87C();
              break;
            case 6:
              sub_4E838();
              break;
            case 7:
              sub_4E7D4();
              break;
            default:
              break;
          }

          v124 = sub_50CE4();

          if ((v124 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

LABEL_48:
        sub_4E774();
        v125 = sub_4E7F8();
        v126(v125);
        *(v88 + 136) = 2;
        break;
    }

    return 1;
  }

  sub_2AC34();
  v69 = v134;
  sub_2AC58();
  v84();
  v71 = sub_50AF4();
  v85 = sub_50BD4();
  if (sub_EF00(v85))
  {
    v86 = sub_5718();
    sub_EEC8(v86);
    v76 = "#StartSirenFlow onInput directInvocation";
    goto LABEL_14;
  }

LABEL_15:

  (v29)(v69, v30);
  *(v59 + 136) = 2;
  (*(v144 + 8))(v143, v145);
  return 1;
}

uint64_t sub_49B74()
{
  sub_EF64();
  v1[227] = v0;
  v1[226] = v2;
  v3 = sub_506C4();
  v1[228] = v3;
  sub_1F9CC(v3);
  v1[229] = v4;
  v6 = *(v5 + 64);
  v1[230] = sub_1F9DC();
  v7 = type metadata accessor for ConfirmationFlowConfigModel();
  v1[231] = v7;
  sub_72B0(v7);
  v9 = *(v8 + 64);
  v1[232] = sub_1F9DC();
  v10 = sub_4FD64();
  sub_72B0(v10);
  v12 = *(v11 + 64);
  v1[233] = sub_1F9DC();
  v13 = sub_508C4();
  v1[234] = v13;
  sub_72B0(v13);
  v15 = *(v14 + 64);
  v1[235] = sub_1F9DC();
  v16 = sub_2208(&qword_6B988, &qword_530B0);
  sub_72B0(v16);
  v18 = *(v17 + 64) + 15;
  v1[236] = swift_task_alloc();
  v1[237] = swift_task_alloc();
  v19 = sub_50884();
  v1[238] = v19;
  sub_72B0(v19);
  v21 = *(v20 + 64);
  v1[239] = sub_1F9DC();
  v22 = sub_2208(&qword_6C180, &qword_51FC0);
  sub_72B0(v22);
  v24 = *(v23 + 64);
  v1[240] = sub_1F9DC();
  v25 = sub_50104();
  v1[241] = v25;
  sub_1F9CC(v25);
  v1[242] = v26;
  v28 = *(v27 + 64);
  v1[243] = sub_1F9DC();
  v29 = sub_50B04();
  v1[244] = v29;
  sub_1F9CC(v29);
  v1[245] = v30;
  v32 = *(v31 + 64) + 15;
  v1[246] = swift_task_alloc();
  v1[247] = swift_task_alloc();
  v1[248] = swift_task_alloc();
  v1[249] = swift_task_alloc();
  v1[250] = swift_task_alloc();
  v1[251] = swift_task_alloc();
  v1[252] = swift_task_alloc();
  v1[253] = swift_task_alloc();
  v1[254] = swift_task_alloc();
  v1[255] = swift_task_alloc();
  v1[256] = swift_task_alloc();
  v1[257] = swift_task_alloc();
  v33 = sub_2AC10();

  return _swift_task_switch(v33, v34, v35);
}

uint64_t sub_49E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v324 = v14;
  v17 = *(v14 + 2056);
  v18 = *(v14 + 1960);
  v19 = *(v14 + 1952);
  *(v14 + 2064) = sub_50AE4();
  sub_56AC();
  v20 = *(v18 + 16);
  *(v14 + 2072) = v20;
  *(v14 + 2080) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21 = sub_4E710();
  v20(v21);
  sub_50AF4();
  v22 = sub_50BD4();
  if (sub_4E8EC(v22))
  {
    v23 = sub_5718();
    sub_36FB8(v23);
    sub_4E818(&dword_0, v24, v25, "#StartSirenFlow execute");
    sub_4E7A0();
  }

  v26 = *(v14 + 2056);
  sub_4E8D0();
  v27 = *(v15 + 8);
  *(v14 + 2088) = v27;
  v28 = sub_4E854();
  v27(v28);
  switch(*(v16 + 136))
  {
    case 1:
      sub_4E6A0();
      sub_4FFE4();
      v144 = *(v14 + 328);
      v145 = *(v14 + 336);
      sub_2ACF0((v14 + 304));
      v146 = sub_2AD80();
      v147(v146);
      v148 = sub_50014();
      sub_2AC20(v148);
      v150 = *(v149 + 104);
      v151 = sub_2AC84();
      v152(v151);
      sub_13D50();
      sub_28E0(v153, v154, v155, v20);
      sub_13B54();
      *(v14 + 2112) = sub_4E654();
      v156 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
      v42 = swift_task_alloc();
      *(v14 + 2120) = v42;
      *v42 = v14;
      v43 = sub_4B63C;
      goto LABEL_35;
    case 2:
      v318 = v27;
      v44 = *(v14 + 2048);
      v45 = *(v14 + 1952);
      sub_4E758();
      v46 = sub_4E710();
      v20(v46);
      sub_50AF4();
      v47 = sub_50BD4();
      if (sub_4E8EC(v47))
      {
        v48 = sub_5718();
        sub_36FB8(v48);
        sub_4E818(&dword_0, v49, v50, "#StartSirenFlow needsExecution");
        sub_4E7A0();
      }

      sub_4E908();
      v51 = *(v14 + 2048);
      sub_4E8D0();
      v52 = sub_4E854();
      v27(v52);
      sub_23BC(v16 + 144, v14 + 1264);
      v53 = sub_1FE8((v14 + 1264), *(v14 + 1288));
      sub_4E8AC();
      v55 = *(v54 + 8);
      v56 = sub_4E860();
      v57(v56);
      v58 = *v53;
      LOBYTE(v58) = sub_2D45C((v14 + 1304));
      sub_253C((v14 + 1304));
      sub_253C((v14 + 1264));
      if (v58)
      {
        v59 = *sub_1FE8((v16 + 144), *(*(v14 + 1816) + 168));
        if (sub_2D4D0())
        {
          v60 = *(v14 + 1912);
          v61 = *(v14 + 1904);
          v62 = *(v14 + 1896);
          v63 = *(v14 + 1880);
          v311 = *(v14 + 1872);
          v64 = *(v14 + 1864);
          v65 = *(v14 + 1848);
          v66 = *(v14 + 1816);
          v314 = *(v14 + 1808);
          v319 = *(v14 + 1856);
          sub_4E6F0();

          sub_24980();

          sub_23BC(v16 + 16, v14 + 1224);
          sub_50874();
          sub_4E63C();
          sub_4E560(v67, 255, v68);
          v69 = sub_4FF04();
          sub_4E624();
          sub_4E508(v60, v70);
          sub_4E8AC();
          v72 = *(v71 + 16);
          v73 = sub_4E860();
          v74(v73);
          sub_2D1AC(v64);
          sub_508B4();
          sub_4E560(&qword_6C7B0, 255, &type metadata accessor for AppPunchOutFlow);
          v75 = sub_4FF04();
          sub_4E508(v63, &type metadata accessor for AppPunchOutFlow);
          v76 = *(v16 + 48);
          sub_1FE8((v16 + 16), *(v16 + 40));
          v77 = *(v76 + 16);
          v78 = sub_4E854();
          v79(v78);
          sub_2208(&unk_6D0C0, &qword_53500);
          v80 = swift_allocObject();
          *(v80 + 16) = xmmword_54640;
          *(v80 + 32) = v69;
          *(v80 + 40) = v75;
          sub_508A4();
          swift_allocObject();
          *(v14 + 1792) = sub_50894();
          sub_4E560(&qword_6DD28, 255, &type metadata accessor for SequenceFlow);

          v81 = sub_4FF04();

          sub_4E6F0();

          sub_24960();

          sub_4E6F0();
          v82 = v65[5];

          sub_248C0();

          *(v319 + v65[6]) = v81;
          *(v319 + v65[7]) = 5;
          *(v319 + v65[8]) = 3;
          *(v319 + v65[9]) = 1;
          sub_509D4();
          sub_23BC(v16 + 16, v14 + 1184);
          sub_23BC(v66 + 56, v14 + 1064);
          sub_5260(v66 + 96, v14 + 944);
          v83 = *(v14 + 1088);
          v84 = sub_52BC(v14 + 1064, v83);
          sub_5620();
          v86 = v85;
          v88 = *(v87 + 64);
          v89 = sub_1F9DC();
          (*(v86 + 16))(v89, v84, v83);
          memcpy(v323, v89, 0x70uLL);
          *(v14 + 808) = v65;
          *(v14 + 816) = &off_66AB0;
          v90 = sub_530C((v14 + 784));
          sub_27468(v319, v90);
          *(v14 + 648) = &type metadata for EmergencyCATProvider;
          *(v14 + 656) = &off_66C88;
          v91 = swift_allocObject();
          *(v14 + 624) = v91;
          memcpy((v91 + 16), v323, 0x70uLL);
          type metadata accessor for EmergencyConfirmationFlow();
          v92 = swift_allocObject();
          v93 = *(v14 + 808);
          v94 = sub_52BC(v14 + 784, v93);
          sub_5620();
          v96 = v95;
          v98 = *(v97 + 64);
          v99 = sub_1F9DC();
          (*(v96 + 16))(v99, v94, v93);
          v100 = sub_52BC(v14 + 624, &type metadata for EmergencyCATProvider);
          sub_5620();
          v102 = v101;
          v104 = *(v103 + 64);
          v105 = sub_1F9DC();
          (*(v102 + 16))(v105, v100, &type metadata for EmergencyCATProvider);
          memcpy(__dst, v105, sizeof(__dst));
          *(v14 + 528) = v65;
          *(v14 + 536) = &off_66AB0;
          v106 = sub_530C((v14 + 504));
          sub_1A0FC(v99, v106);
          *(v92 + 256) = &type metadata for EmergencyCATProvider;
          *(v92 + 264) = &off_66C88;
          v107 = swift_allocObject();
          *(v92 + 232) = v107;
          memcpy((v107 + 16), __dst, 0x70uLL);
          memcpy((v92 + 24), (v14 + 16), 0x80uLL);
          sub_546C((v14 + 504), v92 + 152);
          sub_546C((v14 + 1184), v92 + 192);
          v108 = *(v14 + 960);
          *(v92 + 272) = *(v14 + 944);
          *(v92 + 288) = v108;
          v109 = *(v14 + 976);
          *(v92 + 16) = 0;
          *(v92 + 304) = v109;
          *(v92 + 312) = 0x7269537472617453;
          *(v92 + 320) = 0xEA00000000006E65;
          sub_253C((v14 + 624));

          sub_253C((v14 + 784));

          sub_253C((v14 + 1064));

          *(v14 + 1800) = v92;
          sub_4E560(&qword_6BB48, 255, type metadata accessor for EmergencyConfirmationFlow);
          sub_50174();

          sub_4E508(v319, type metadata accessor for ConfirmationFlowConfigModel);
          v110 = *(v14 + 2056);
          v111 = *(v14 + 2048);
          v112 = *(v14 + 2040);
          v113 = *(v14 + 2032);
          v114 = *(v14 + 2024);
          v115 = *(v14 + 2016);
          v116 = *(v14 + 2008);
          v117 = *(v14 + 2000);
          v118 = *(v14 + 1992);
          v119 = *(v14 + 1984);
          v304 = *(v14 + 1976);
          v305 = *(v14 + 1968);
          v306 = *(v14 + 1944);
          v307 = *(v14 + 1920);
          v308 = *(v14 + 1912);
          v309 = *(v14 + 1896);
          v310 = *(v14 + 1888);
          v312 = *(v14 + 1880);
          v313 = *(v14 + 1864);
          v315 = *(v14 + 1856);
          v320 = *(v14 + 1840);

          sub_2AD68();
          sub_4E944();

          __asm { BRAA            X1, X16 }
        }

        v194 = *(v14 + 2040);
        v195 = *(v14 + 1952);
        sub_4E758();
        v196 = sub_4E710();
        v20(v196);
        v197 = sub_50AF4();
        v198 = sub_50BD4();
        if (sub_EF00(v198))
        {
          v199 = sub_5718();
          sub_EEC8(v199);
          sub_EED4(&dword_0, v200, v201, "#StartSirenFlow App not installed on this device nor companion.");
          sub_EE58();
        }

        v202 = *(v14 + 2040);
        v203 = *(v14 + 1960);
        v204 = *(v14 + 1952);
        sub_4E6A0();

        v205 = sub_5668();
        v27(v205);
        sub_4FFE4();
        v206 = *(v14 + 1488);
        v207 = *(v14 + 1496);
        sub_2ACF0((v14 + 1464));
        v208 = sub_2AD80();
        v209(v208);
        v210 = sub_50014();
        sub_2AC20(v210);
        v212 = *(v211 + 104);
        v213 = sub_2AC84();
        v214(v213);
        sub_13D50();
        sub_28E0(v215, v216, v217, v20);
        sub_13B54();
        *(v14 + 2128) = sub_4E6CC();
        v218 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
        v42 = swift_task_alloc();
        *(v14 + 2136) = v42;
        *v42 = v14;
        v43 = sub_4B84C;
      }

      else
      {
        v157 = *(v14 + 2032);
        v158 = *(v14 + 1952);
        v159 = *(v14 + 1816);
        sub_4E758();
        v160 = sub_4E710();
        v20(v160);

        v161 = sub_50AF4();
        v162 = sub_50BD4();

        v163 = os_log_type_enabled(v161, v162);
        v164 = *(v14 + 2032);
        v165 = *(v14 + 1960);
        v166 = *(v14 + 1952);
        if (v163)
        {
          v167 = sub_EFB0();
          v316 = v166;
          v168 = sub_EFC8();
          v323[0] = v168;
          *v167 = 136315138;
          v169 = *(v16 + 40);
          v170 = *(v16 + 48);
          sub_4E960((v16 + 16));
          sub_4E86C();
          sub_4E908();
          v171();
          sub_2208(&unk_6D040, &qword_53408);
          v172 = sub_50B64();
          v20 = sub_4DE68(v172, v173, v323);

          *(v167 + 4) = v20;
          _os_log_impl(&dword_0, v161, v162, "#StartSirenFlow Cannot route to Siren from this device: %s", v167, 0xCu);
          sub_253C(v168);
          sub_4E7A0();
          sub_5674();

          v174 = v164;
          v175 = v316;
        }

        else
        {

          v174 = v164;
          v175 = v166;
        }

        (v318)(v174, v175);
        sub_4E6A0();
        sub_4FFE4();
        v219 = *(v14 + 1408);
        v220 = *(v14 + 1416);
        sub_2ACF0((v14 + 1384));
        v221 = sub_2AD80();
        v222(v221);
        v223 = sub_50014();
        sub_2AC20(v223);
        v225 = *(v224 + 104);
        v226 = sub_2AC84();
        v227(v226);
        sub_13D50();
        sub_28E0(v228, v229, v230, v20);
        sub_13B54();
        *(v14 + 2144) = sub_4E6CC();
        v231 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
        v42 = swift_task_alloc();
        *(v14 + 2152) = v42;
        *v42 = v14;
        v43 = sub_4BAC4;
      }

      goto LABEL_35;
    case 3:
      v122 = *(v14 + 2024);
      v123 = *(v14 + 1952);
      sub_4E758();
      v124 = sub_4E710();
      v20(v124);
      sub_50AF4();
      v125 = sub_50BD4();
      if (sub_4E8EC(v125))
      {
        v126 = sub_5718();
        sub_36FB8(v126);
        sub_4E818(&dword_0, v127, v128, "#StartSirenFlow needsRemoteExecution");
        sub_4E7A0();
      }

      v129 = *(v14 + 2024);
      sub_4E8D0();
      v130 = sub_4E854();
      v27(v130);
      sub_23BC(v16 + 144, v14 + 224);
      v131 = sub_1FE8((v14 + 224), *(v14 + 248));
      sub_4E8AC();
      v133 = *(v132 + 8);
      v134 = sub_4E860();
      v135(v134);
      v136 = *v131;
      LOBYTE(v136) = sub_2D45C((v14 + 264));
      sub_253C((v14 + 264));
      sub_253C((v14 + 224));
      if ((v136 & 1) == 0)
      {
        v176 = *(v14 + 1976);
        v177 = *(v14 + 1952);
        v178 = *(v14 + 1816);
        sub_4E758();
        v179 = sub_4E710();
        v20(v179);

        v180 = sub_50AF4();
        v181 = sub_50BD4();

        v182 = os_log_type_enabled(v180, v181);
        v183 = *(v14 + 1976);
        v184 = *(v14 + 1960);
        v185 = *(v14 + 1952);
        if (v182)
        {
          v186 = sub_EFB0();
          v317 = v185;
          v187 = sub_EFC8();
          v323[0] = v187;
          *v186 = 136315138;
          v321 = v27;
          v188 = *(v16 + 40);
          v189 = *(v16 + 48);
          sub_4E960((v16 + 16));
          v190 = sub_4E86C();
          v191(v190);
          sub_2208(&unk_6D040, &qword_53408);
          v192 = sub_50B64();
          v20 = sub_4DE68(v192, v193, v323);

          *(v186 + 4) = v20;
          _os_log_impl(&dword_0, v180, v181, "#StartSirenFlow Cannot route to Siren from this device: %s", v186, 0xCu);
          sub_253C(v187);
          sub_EE58();
          sub_5674();

          (v321)(v183, v317);
        }

        else
        {

          (v27)(v183, v185);
        }

        sub_4E6A0();
        sub_4FFE4();
        v257 = *(v14 + 368);
        v258 = *(v14 + 376);
        sub_2ACF0((v14 + 344));
        v259 = sub_2AD80();
        v260(v259);
        v261 = sub_50014();
        sub_2AC20(v261);
        v263 = *(v262 + 104);
        v264 = sub_2AC84();
        v265(v264);
        sub_13D50();
        sub_28E0(v266, v267, v268, v20);
        sub_13B54();
        *(v14 + 2352) = sub_4E654();
        v269 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
        v42 = swift_task_alloc();
        *(v14 + 2360) = v42;
        *v42 = v14;
        v43 = sub_4D22C;
LABEL_35:
        v42[1] = v43;
        sub_4E944();

        return dispatch thunk of SiriKitEventSending.sendAsync(_:)(v270, v271, v272, v273, v274, v275, v276, v277, a9, a10, a11, a12, a13, a14);
      }

      *(v14 + 488) = &type metadata for EmergencyFeatureFlagsKey;
      *(v14 + 496) = sub_EB68();
      *(v14 + 464) = 1;
      v137 = sub_50374();
      sub_253C((v14 + 464));
      if ((v137 & 1) == 0)
      {
        v232 = *(v14 + 1984);
        v233 = *(v14 + 1952);
        sub_4E758();
        v234 = sub_4E710();
        v20(v234);
        v235 = sub_50AF4();
        v236 = sub_50BD4();
        if (sub_EF00(v236))
        {
          v237 = sub_5718();
          sub_EEC8(v237);
          sub_EED4(&dword_0, v238, v239, "#StartSirenFlow Phone to watch handoff not enabled.");
          sub_EE58();
        }

        v240 = *(v14 + 1984);
        v241 = *(v14 + 1960);
        v242 = *(v14 + 1952);
        sub_4E6A0();

        v243 = sub_5668();
        v27(v243);
        sub_4FFE4();
        v244 = *(v14 + 568);
        v245 = *(v14 + 576);
        sub_2ACF0((v14 + 544));
        v246 = sub_2AD80();
        v247(v246);
        v248 = sub_50014();
        sub_2AC20(v248);
        v250 = *(v249 + 104);
        v251 = sub_2AC84();
        v252(v251);
        sub_13D50();
        sub_28E0(v253, v254, v255, v20);
        sub_13B54();
        *(v14 + 2336) = sub_4E654();
        v256 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
        v42 = swift_task_alloc();
        *(v14 + 2344) = v42;
        *v42 = v14;
        v43 = sub_4CF34;
        goto LABEL_35;
      }

      v138 = *sub_1FE8((v16 + 144), *(*(v14 + 1816) + 168));
      if ((sub_2D4D0() & 1) == 0)
      {
        v278 = *(v14 + 1992);
        v279 = *(v14 + 1952);
        sub_4E758();
        v280 = sub_4E710();
        v20(v280);
        v281 = sub_50AF4();
        v282 = sub_50BD4();
        if (sub_EF00(v282))
        {
          v283 = sub_5718();
          sub_EEC8(v283);
          sub_EED4(&dword_0, v284, v285, "#StartSirenFlow App not installed on this device nor companion.");
          sub_EE58();
        }

        v286 = *(v14 + 1992);
        v287 = *(v14 + 1960);
        v288 = *(v14 + 1952);
        sub_4E6A0();

        v289 = sub_5668();
        v27(v289);
        sub_4FFE4();
        v290 = *(v14 + 688);
        v291 = *(v14 + 696);
        sub_2ACF0((v14 + 664));
        v292 = sub_2AD80();
        v293(v292);
        v294 = sub_50014();
        sub_2AC20(v294);
        v296 = *(v295 + 104);
        v297 = sub_2AC84();
        v298(v297);
        sub_13D50();
        sub_28E0(v299, v300, v301, v20);
        sub_13B54();
        *(v14 + 2320) = sub_4E654();
        v302 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
        v42 = swift_task_alloc();
        *(v14 + 2328) = v42;
        *v42 = v14;
        v43 = sub_4CCBC;
        goto LABEL_35;
      }

      v139 = *(v14 + 1816);
      (*(*(v14 + 1832) + 104))(*(v14 + 1840), enum case for DeviceIdiom.watch(_:), *(v14 + 1824));
      sub_23BC(v139 + 184, v14 + 744);
      v140 = async function pointer to findRemoteDevice(with:deviceResolutionService:)[1];
      v141 = swift_task_alloc();
      *(v14 + 2160) = v141;
      *v141 = v14;
      v141[1] = sub_4BD3C;
      v142 = *(v14 + 1840);
      sub_4E944();

      return findRemoteDevice(with:deviceResolutionService:)();
    default:
      sub_4E6A0();
      sub_4FFE4();
      v29 = *(v14 + 168);
      v30 = *(v14 + 176);
      sub_2ACF0((v14 + 144));
      v31 = sub_2AD80();
      v32(v31);
      v33 = sub_50014();
      sub_2AC20(v33);
      v35 = *(v34 + 104);
      v36 = sub_2AC84();
      v37(v36);
      sub_13D50();
      sub_28E0(v38, v39, v40, v20);
      sub_13B54();
      *(v14 + 2096) = sub_4E654();
      v41 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
      v42 = swift_task_alloc();
      *(v14 + 2104) = v42;
      *v42 = v14;
      v43 = sub_4B3F0;
      goto LABEL_35;
  }
}

uint64_t sub_4B3F0()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 2104);
  v3 = *(v1 + 2096);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4B4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  v23 = v22[227];
  v24 = v22[226];
  sub_253C(v22 + 18);
  sub_E9D0();
  v25 = swift_allocError();
  *v26 = 2;
  sub_1D68(v25, v23 + 16, (v23 + 56), v24);

  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4B63C()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 2120);
  v3 = *(v1 + 2112);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4B73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  v23 = *(v22 + 1808);
  sub_253C((v22 + 304));
  sub_50194();
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4B84C()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 2136);
  v3 = *(v1 + 2128);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4B94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  sub_4E6B4();
  sub_253C((v23 + 1464));
  sub_4E6F0();

  sub_248E0();

  sub_23BC(v24 + 16, v23 + 1344);
  sub_2AE04();
  sub_4E63C();
  sub_4E560(v25, 255, v26);
  sub_2AE2C();
  sub_4E624();
  sub_4E508(v22, v27);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4BAC4()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 2152);
  v3 = *(v1 + 2144);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4BBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  sub_4E6B4();
  sub_253C((v23 + 1384));
  sub_4E6F0();

  sub_249A0();

  sub_23BC(v24 + 16, v23 + 1424);
  sub_2AE04();
  sub_4E63C();
  sub_4E560(v25, 255, v26);
  sub_2AE2C();
  sub_4E624();
  sub_4E508(v22, v27);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4BD3C()
{
  sub_2AD20();
  v2 = v1;
  v3 = v1[270];
  v4 = v1[230];
  v5 = v1[229];
  v6 = v1[228];
  v7 = *v0;
  sub_EF2C();
  *v8 = v7;
  v2[271] = v9;

  sub_253C(v2 + 93);
  v10 = *(v5 + 8);
  v11 = sub_4E7C8();
  v12(v11);
  v13 = sub_2AC10();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_4BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v99 = v14;
  v15 = *(v14 + 2168);
  if (v15)
  {
    v96 = *(v14 + 2072);
    v97 = *(v14 + 2080);
    v16 = *(v14 + 2064);
    v17 = *(v14 + 2016);
    v95 = *(v14 + 1952);
    v18 = *(v14 + 1816);
    sub_2C83C(0, &qword_6D0D0, SKIDirectInvocationPayload_ptr);
    v19 = sub_48F24();
    *(v14 + 2176) = v19;
    v20 = sub_50B24();
    sub_4E3E8(v20, v19);
    v21 = objc_opt_self();
    v22 = v18[5];
    v23 = v18[6];
    sub_4E960(v18 + 2);
    v24 = sub_4E86C();
    v25(v24);
    v26 = *(v14 + 936);
    sub_1FE8((v14 + 904), *(v14 + 928));
    v27 = sub_500E4();
    v28 = [v21 runSiriKitExecutorCommandWithContext:v27 payload:v19];
    *(v14 + 2184) = v28;

    sub_253C((v14 + 904));
    v29 = [v21 wrapCommandInStartLocalRequest:v28];
    *(v14 + 2192) = v29;
    v30 = [objc_allocWithZone(SAStartUIRequest) init];
    *(v14 + 2200) = v30;
    [v30 setStartLocalRequest:v29];
    sub_56AC();
    v31 = sub_5668();
    v96(v31);
    v32 = v15;
    v33 = sub_50AF4();
    v34 = sub_50BD4();

    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v14 + 2088);
    v37 = *(v14 + 2016);
    v38 = *(v14 + 1960);
    v39 = *(v14 + 1952);
    if (v35)
    {
      v40 = sub_EFB0();
      v41 = sub_EFC8();
      *v40 = 136315138;
      v98 = v41;
      v42 = sub_50AB4();
      v44 = sub_4DE68(v42, v43, &v98);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_0, v33, v34, "#StartSirenFlow Submitting start siren direct invocation to remote with assistantId: %s", v40, 0xCu);
      sub_253C(v41);
      sub_5674();
      sub_5674();

      v45 = sub_4E860();
      v36(v45);
    }

    else
    {

      v80 = sub_4E860();
      v36(v80);
    }

    v81 = *(v14 + 1944);
    v82 = *(v14 + 1936);
    v83 = *(v14 + 1928);
    v84 = *(v14 + 1920);
    sub_4FFE4();
    v63 = *(v14 + 1008);
    v64 = *(v14 + 1016);
    sub_1FE8((v14 + 984), v63);
    *(v14 + 2208) = sub_50034();
    *(v14 + 2384) = enum case for ActivityType.executeOnRemote(_:);
    v85 = *(v82 + 104);
    *(v14 + 2216) = v85;
    *(v14 + 2224) = (v82 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v85(v81);
    v86 = enum case for SiriKitReliabilityCodes.normal(_:);
    v87 = sub_50014();
    *(v14 + 2232) = v87;
    sub_569C(v87);
    v89 = *(v88 + 104);
    *(v14 + 2240) = v89;
    *(v14 + 2248) = (v88 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v89(v84, v86, v87);
    sub_13D50();
    sub_28E0(v90, v91, v92, v87);
    sub_13B54();
    sub_4E68C();
    sub_4E91C();
    v71 = sub_50024();
    *(v14 + 2256) = v71;
    v93 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
    v73 = swift_task_alloc();
    *(v14 + 2264) = v73;
    *v73 = v14;
    v79 = sub_4C49C;
  }

  else
  {
    v46 = *(v14 + 2080);
    v47 = *(v14 + 2072);
    v48 = *(v14 + 2064);
    v49 = *(v14 + 2000);
    v50 = *(v14 + 1952);
    sub_56AC();
    v47(v49, v48, v50);
    v51 = sub_50AF4();
    v52 = sub_50BE4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = sub_5718();
      sub_36FB8(v53);
      _os_log_impl(&dword_0, v51, v52, "#StartSirenFlow Failed to find remote device", v50, 2u);
      sub_4E7A0();
    }

    v54 = *(v14 + 2088);
    v55 = *(v14 + 2000);
    v56 = *(v14 + 1960);
    v57 = *(v14 + 1952);
    v58 = *(v14 + 1944);
    v59 = *(v14 + 1936);
    v60 = *(v14 + 1928);
    v61 = *(v14 + 1920);

    v62 = sub_4E860();
    v54(v62);
    sub_4FFE4();
    v63 = *(v14 + 848);
    v64 = *(v14 + 856);
    sub_1FE8((v14 + 824), v63);
    sub_50034();
    (*(v59 + 104))(v58, enum case for ActivityType.handoffToCompanion(_:), v60);
    v65 = enum case for SiriKitReliabilityCodes.companionUnavailable(_:);
    v66 = sub_50014();
    sub_569C(v66);
    (*(v67 + 104))(v61, v65, v66);
    sub_13D50();
    sub_28E0(v68, v69, v70, v66);
    sub_13B54();
    sub_4E68C();
    sub_4E91C();
    v71 = sub_50024();
    *(v14 + 2304) = v71;
    v72 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
    v73 = swift_task_alloc();
    *(v14 + 2312) = v73;
    *v73 = v14;
    v79 = sub_4CA44;
  }

  v73[1] = v79;

  return dispatch thunk of SiriKitEventSending.sendAsync(_:)(v71, v63, v64, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_4C49C()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 2264);
  v3 = *(v1 + 2256);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4C59C()
{
  v1 = v0[271];
  v2 = v0[227];
  sub_253C(v0 + 123);
  v3 = v2[6];
  sub_1FE8(v2 + 2, v2[5]);
  v4 = *(v3 + 24);
  v5 = sub_5668();
  v6(v5);
  v7 = v0[131];
  v8 = v0[132];
  sub_1FE8(v0 + 128, v7);
  v9 = sub_50AB4();
  v11 = v10;
  v0[284] = v10;
  v12 = async function pointer to AceServiceInvokerAsync.submitToRemote<A>(_:_:)[1];
  v13 = swift_task_alloc();
  v0[285] = v13;
  v14 = sub_2C83C(0, &qword_6BC20, SABaseCommand_ptr);
  *v13 = v0;
  v13[1] = sub_4C6E0;
  v15 = v0[275];

  return AceServiceInvokerAsync.submitToRemote<A>(_:_:)(v15, v9, v11, v7, v14, v8);
}

uint64_t sub_4C6E0()
{
  sub_EF64();
  sub_2AD20();
  v3 = v2;
  v4 = v2[285];
  v9 = *v1;
  v3[286] = v5;
  v3[287] = v0;

  if (v0)
  {
    v6 = sub_4D4A4;
  }

  else
  {
    v7 = v3[284];

    v6 = sub_4C7F8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_4C7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  v23 = v22[286];
  v24 = v22[260];
  v25 = v22[259];
  v26 = v22[258];
  v27 = v22[251];
  v28 = v22[244];
  sub_253C(v22 + 128);
  sub_56AC();
  v25(v27, v26, v28);
  v29 = v23;
  v30 = sub_50AF4();
  v31 = sub_50BD4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = v22[286];
    v33 = sub_EFB0();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v32;
    *v34 = v32;
    v35 = v32;
    _os_log_impl(&dword_0, v30, v31, "#StartSirenFlow Received submitToRemote response: %@", v33, 0xCu);
    sub_51C0(v34, &qword_6DD20, &unk_547A0);
    sub_4E7A0();
    sub_EE58();
  }

  v36 = v22[286];
  v37 = v22[275];
  v38 = v22[274];
  v39 = v22[273];
  v40 = v22[272];
  v58 = v22[271];
  v41 = v22[251];
  v42 = v30;
  v43 = v22[245];
  v44 = v22[244];
  v45 = v22[226];

  v46 = *(v43 + 8);
  v47 = sub_4E7C8();
  v48(v47);
  sub_50194();

  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v58, a20, a21, a22);
}

uint64_t sub_4CA44()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 2312);
  v3 = *(v1 + 2304);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4CB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  sub_4E6B4();
  sub_253C((v23 + 824));
  sub_4E6F0();

  sub_24920();

  sub_23BC(v24 + 16, v23 + 864);
  sub_2AE04();
  sub_4E63C();
  sub_4E560(v25, 255, v26);
  sub_2AE2C();
  sub_4E624();
  sub_4E508(v22, v27);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4CCBC()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 2328);
  v3 = *(v1 + 2320);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  sub_4E6B4();
  sub_253C((v23 + 664));
  sub_4E6F0();

  sub_248E0();

  sub_23BC(v24 + 16, v23 + 704);
  sub_2AE04();
  sub_4E63C();
  sub_4E560(v25, 255, v26);
  sub_2AE2C();
  sub_4E624();
  sub_4E508(v22, v27);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4CF34()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 2344);
  v3 = *(v1 + 2336);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4D034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  v23 = v22[227];
  sub_253C(v22 + 68);
  v24 = *sub_1FE8(v23 + 18, v23[21]);
  LOBYTE(v24) = sub_2D4D0();
  v25 = sub_1FE8(v23 + 7, v23[10])[11];

  v26 = v22[236];
  if (v24)
  {
    sub_24920();
  }

  else
  {
    sub_249A0();
  }

  v27 = v22[239];
  v28 = v22[238];
  v29 = v22[237];
  v30 = v22[236];
  v31 = v22[227];
  v32 = v22[226];

  sub_234C(v30, v29);
  sub_23BC(v31 + 16, (v22 + 73));
  sub_2AE04();
  sub_4E63C();
  sub_4E560(v33, 255, v34);
  sub_4E854();
  sub_50174();
  sub_4E624();
  sub_4E508(v27, v35);
  sub_51C0(v30, &qword_6B988, &qword_530B0);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4D22C()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 2360);
  v3 = *(v1 + 2352);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4D32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  sub_4E6B4();
  sub_253C((v23 + 344));
  sub_4E6F0();

  sub_249A0();

  sub_23BC(v24 + 16, v23 + 384);
  sub_2AE04();
  sub_4E63C();
  sub_4E560(v25, 255, v26);
  sub_2AE2C();
  sub_4E624();
  sub_4E508(v22, v27);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4D4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 2296);
  v16 = *(v14 + 2272);
  v17 = *(v14 + 2080);
  v18 = *(v14 + 2072);
  v19 = *(v14 + 2064);
  v20 = *(v14 + 1968);
  v21 = *(v14 + 1952);

  sub_253C((v14 + 1024));
  sub_56AC();
  v18(v20, v19, v21);
  swift_errorRetain();
  v22 = sub_50AF4();
  v23 = sub_50BE4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v14 + 2296);
    v25 = sub_EFB0();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v27;
    *v26 = v27;
    _os_log_impl(&dword_0, v22, v23, "#StartSirenFlow Error while submitting to remote: %@", v25, 0xCu);
    sub_51C0(v26, &qword_6DD20, &unk_547A0);
    sub_5674();
    sub_4E7A0();
  }

  v55 = *(v14 + 2240);
  v56 = *(v14 + 2248);
  v28 = *(v14 + 2232);
  v54 = *(v14 + 2224);
  v29 = v22;
  v30 = *(v14 + 2216);
  v31 = *(v14 + 2384);
  v57 = *(v14 + 2208);
  v32 = *(v14 + 1968);
  v33 = *(v14 + 1960);
  v34 = *(v14 + 1952);
  v35 = *(v14 + 1944);
  v36 = *(v14 + 1928);
  v37 = *(v14 + 1920);

  v38 = *(v33 + 8);
  v39 = sub_5668();
  v40(v39);
  sub_4FFE4();
  v41 = *(v14 + 1128);
  v58 = *(v14 + 1136);
  sub_1FE8((v14 + 1104), v41);
  v30(v35, v31, v36);
  v55(v37, enum case for SiriKitReliabilityCodes.errorSendingExecuteOnRemoteRequest(_:), v28);
  sub_13D50();
  sub_28E0(v42, v43, v44, v28);
  sub_13B54();
  sub_4E68C();
  v45 = sub_50024();
  *(v14 + 2368) = v45;
  v46 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
  v47 = swift_task_alloc();
  *(v14 + 2376) = v47;
  *v47 = v14;
  v47[1] = sub_4D750;

  return dispatch thunk of SiriKitEventSending.sendAsync(_:)(v45, v41, v58, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_4D750()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 2376);
  v3 = *(v1 + 2368);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  v23 = v22[287];
  v24 = v22[275];
  v45 = v22[274];
  v46 = v22[273];
  v25 = v22[272];
  v44 = v22[271];
  v26 = v22[239];
  v27 = v22[238];
  v28 = v22[237];
  v29 = v22[227];
  v30 = v22[226];
  sub_253C(v22 + 138);
  v31 = sub_1FE8((v29 + 56), *(v29 + 80))[11];

  sub_24920();

  sub_23BC(v29 + 16, (v22 + 143));
  sub_50874();
  sub_4E63C();
  sub_4E560(v32, 255, v33);
  sub_4E854();
  sub_50174();

  sub_4E624();
  sub_4E508(v26, v34);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, v44, v45, v46, a20, a21, a22);
}

uint64_t sub_4DA44()
{
  type metadata accessor for StartSirenFlow();
  sub_4E560(&qword_6DA30, v0, type metadata accessor for StartSirenFlow);
  return sub_4FF14();
}

uint64_t *sub_4DAD0()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_55C8((v0 + 12));
  sub_253C(v0 + 18);
  sub_253C(v0 + 23);
  return v0;
}

uint64_t sub_4DB10()
{
  sub_4DAD0();

  return _swift_deallocClassInstance(v0, 224, 7);
}

_BYTE *storeEnumTagSinglePayload for StartSirenFlow.StartSirenFlowState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x4DC34);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_4DC70()
{
  result = qword_6DD18;
  if (!qword_6DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6DD18);
  }

  return result;
}

uint64_t sub_4DD10()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2A96C;

  return sub_49B74();
}

uint64_t sub_4DDAC()
{
  type metadata accessor for StartSirenFlow();

  return sub_4FF64();
}

uint64_t sub_4DE0C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_4DE68(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_4DE68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4DF2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2C5D0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_253C(v11);
  return v7;
}

unint64_t sub_4DF2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_4E02C(a5, a6);
    *a1 = v9;
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
    result = sub_50C74();
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

char *sub_4E02C(uint64_t a1, unint64_t a2)
{
  v4 = sub_4E078(a1, a2);
  sub_4E190(&off_65860);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_4E078(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_50BB4())
  {
    result = sub_4E274(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_50C54();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_50C74();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_4E190(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_4E2E4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_4E274(uint64_t a1, uint64_t a2)
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

  sub_2208(&qword_6DD30, qword_547B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_4E2E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2208(&qword_6DD30, qword_547B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_4E3D8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_4E3E8(uint64_t a1, void *a2)
{
  isa = sub_50B14().super.isa;

  [a2 setUserData:isa];
}

uint64_t sub_4E468()
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

uint64_t sub_4E508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_569C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_4E560(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_4E5A8()
{
  v2 = v0[257];
  v3 = v0[256];
  v4 = v0[255];
  v5 = v0[254];
  v6 = v0[253];
  v7 = v0[252];
  v8 = v0[251];
  v9 = v0[250];
  v10 = v0[249];
  v11 = v0[248];
  v14 = v0[247];
  v15 = v0[246];
  v16 = v0[243];
  v17 = v0[240];
  v18 = v0[239];
  v19 = v0[237];
  v20 = v0[236];
  v21 = v0[235];
  v12 = v0[233];
  v22 = v0[232];
  v23 = v0[230];
}

uint64_t sub_4E654()
{

  return sub_50024();
}

void sub_4E6A0()
{
  v1 = v0[243];
  v2 = v0[242];
  v3 = v0[241];
  v4 = v0[240];
}

void sub_4E6B4()
{
  v1 = v0[239];
  v2 = v0[238];
  v3 = v0[237];
  v4 = v0[227];
  v5 = v0[226];
}

uint64_t sub_4E6CC()
{

  return sub_50024();
}

void *sub_4E6F0()
{
  result = sub_1FE8((v0 + 56), *(v0 + 80));
  v2 = result[11];
  return result;
}

uint64_t sub_4E758()
{

  return swift_beginAccess();
}

uint64_t sub_4E774()
{
  v2 = *(v0 - 288);

  return sub_4E508(v2, &type metadata accessor for EmergencyDialogAct);
}

uint64_t sub_4E7A0()
{
}

uint64_t sub_4E7F8()
{
  v1 = *(*(v0 - 296) + 8);
  result = *(v0 - 280);
  v3 = *(v0 - 312);
  return result;
}

void sub_4E818(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_4E8D0()
{
  v3 = v1[245];
  v4 = v1[244];
  v5 = v1[227];
}

BOOL sub_4E8EC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_4E960(void *a1)
{
  result = sub_1FE8(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_4E980(char a1)
{
  result = 0x535F48434E55414CLL;
  v3 = &SAAceConfirmationReasonCALL_RESOURCEValue;
  switch(a1)
  {
    case 1:
      v3 = &SAAceConfirmationReasonWEB_SEARCHValue;
      goto LABEL_4;
    case 2:
      v3 = &SAAceConfirmationReasonLAUNCH_WEBSITEValue;
      goto LABEL_4;
    case 3:
      return result;
    default:
LABEL_4:
      v4 = *v3;
      return sub_50B54();
  }
}

_BYTE *storeEnumTagSinglePayload for ConfirmationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x4EADCLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_4EB18()
{
  result = qword_6DD38;
  if (!qword_6DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6DD38);
  }

  return result;
}

uint64_t type metadata accessor for PoisonControlCATs()
{
  result = qword_6DD40;
  if (!qword_6DD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4ECAC(uint64_t a1, char a2)
{
  v4 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v4);
  v6 = *(v5 + 64);
  sub_72A4();
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v10 = swift_allocObject();
  sub_7260(v10, xmmword_517A0);
  sub_71A0(a1, v9, &qword_6B998, qword_51850);
  v11 = sub_50804();
  if (sub_513C(v9, 1, v11) == 1)
  {
    sub_7204(v9, &qword_6B998, qword_51850);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    sub_530C((v10 + 48));
    sub_7298(v11);
    (*(v12 + 32))();
  }

  *(v10 + 80) = 0xD000000000000012;
  *(v10 + 88) = 0x8000000000054BF0;
  *(v10 + 120) = &type metadata for Bool;
  *(v10 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_4EE58(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  sub_7BAC(v7, xmmword_51780);
  v8 = sub_50804();
  sub_7BF4(v8);
  if (v9)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = a1;
    sub_530C((v7 + 48));
    sub_7298(a1);
    (*(v10 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_4EF9C(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  sub_7260(v7, xmmword_51780);
  sub_71A0(a1, v1, &qword_6B998, qword_51850);
  v8 = sub_50804();
  sub_7BF4(v8);
  if (v9)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = a1;
    sub_530C((v7 + 48));
    sub_7298(a1);
    (*(v10 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_4F0F4(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  sub_7BAC(v7, xmmword_51780);
  v8 = sub_50804();
  sub_7BF4(v8);
  if (v9)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = a1;
    sub_530C((v7 + 48));
    sub_7298(a1);
    (*(v10 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_4F25C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_4F2B0(a1, a2);
}

uint64_t sub_4F2B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  v11 = *(v10 + 64);
  sub_72A4();
  __chkstk_darwin(v12);
  sub_71A0(a1, &v16 - v13, &unk_6D680, &qword_515B0);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v14;
}

uint64_t type metadata accessor for EmergencySexualAssaultBasicIntentCATs()
{
  result = qword_6DD90;
  if (!qword_6DD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4F534(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_517A0;
  strcpy((v9 + 32), "webSearchQuery");
  *(v9 + 47) = -18;
  sub_72BC();
  v10 = sub_50804();
  if (sub_513C(v8, 1, v10) == 1)
  {
    sub_7204(v8, &qword_6B998, qword_51850);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    sub_530C((v9 + 48));
    sub_7298(v10);
    (*(v11 + 32))();
  }

  sub_7280();
  *(v9 + 120) = &type metadata for Bool;
  *(v9 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_4F6E4(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v9 = swift_allocObject();
  sub_7260(v9, xmmword_517A0);
  sub_72BC();
  v10 = sub_50804();
  if (sub_513C(v8, 1, v10) == 1)
  {
    sub_7204(v8, &qword_6B998, qword_51850);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    sub_530C((v9 + 48));
    sub_7298(v10);
    (*(v11 + 32))();
  }

  sub_7280();
  *(v9 + 120) = &type metadata for Bool;
  *(v9 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_4F870(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v6);
  v8 = *(v7 + 64);
  sub_72A4();
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v12 = swift_allocObject();
  sub_7260(v12, xmmword_517D0);
  sub_71A0(a1, v11, &qword_6B998, qword_51850);
  v13 = sub_50804();
  if (sub_513C(v11, 1, v13) == 1)
  {
    sub_7204(v11, &qword_6B998, qword_51850);
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  else
  {
    *(v12 + 72) = v13;
    sub_530C((v12 + 48));
    sub_7298(v13);
    (*(v14 + 32))();
  }

  *(v12 + 80) = 0x65626D754E67726FLL;
  *(v12 + 88) = 0xE900000000000072;
  if (a2)
  {
    v15 = sub_50754();
    v16 = a2;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  *(v12 + 96) = v16;
  *(v12 + 120) = v15;
  *(v12 + 128) = 0xD000000000000012;
  *(v12 + 136) = 0x8000000000054BF0;
  *(v12 + 168) = &type metadata for Bool;
  *(v12 + 144) = a3 & 1;

  sub_50794();
}

uint64_t sub_4FA74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_4FAC8(a1, a2);
}

uint64_t sub_4FAC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  v11 = *(v10 + 64);
  sub_72A4();
  __chkstk_darwin(v12);
  sub_71A0(a1, &v16 - v13, &unk_6D680, &qword_515B0);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v14;
}