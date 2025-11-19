uint64_t sub_1000010DC(uint64_t a1)
{
  v2 = sub_10000122C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001184();
  sub_100004A34();
  return 0;
}

unint64_t sub_100001184()
{
  result = qword_10000C010;
  if (!qword_10000C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C010);
  }

  return result;
}

unint64_t sub_10000122C()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

uint64_t sub_100001290()
{
  v0 = sub_100004914();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_1000018B8();
  sub_10000181C();
  sub_100004924();
  v5 = sub_100004904();
  (*(v1 + 8))(v4, v0);
  sub_100001870(&qword_10000C028, &qword_100005F90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005EE0;
  *(v6 + 32) = v5;
  v7 = sub_1000048F4();

  return v7;
}

uint64_t sub_1000013F4()
{
  v0 = sub_100001870(&qword_10000C030, &qword_100005F98);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v15 - v3;
  sub_10000181C();
  sub_1000048E4();
  v20 = sub_1000048C4();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_1000048E4();
  v19 = sub_1000048C4();
  v5(v4, v0);
  sub_1000048E4();
  v18 = sub_1000048C4();
  v5(v4, v0);
  sub_1000048E4();
  v17 = sub_1000048C4();
  v5(v4, v0);
  sub_1000048E4();
  v16 = sub_1000048C4();
  v5(v4, v0);
  sub_1000048E4();
  v6 = sub_1000048C4();
  v5(v4, v0);
  sub_1000048E4();
  v7 = sub_1000048C4();
  v5(v4, v0);
  sub_1000048E4();
  v8 = sub_1000048C4();
  v5(v4, v0);
  sub_1000048E4();
  v9 = sub_1000048C4();
  v5(v4, v0);
  sub_100001870(&qword_10000C038, &unk_100005FA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100005EF0;
  v11 = v19;
  *(v10 + 32) = v20;
  *(v10 + 40) = v11;
  v12 = v17;
  *(v10 + 48) = v18;
  *(v10 + 56) = v12;
  *(v10 + 64) = v16;
  *(v10 + 72) = v6;
  *(v10 + 80) = v7;
  *(v10 + 88) = v8;
  *(v10 + 96) = v9;
  v13 = sub_1000048B4();

  return v13;
}

unint64_t sub_10000181C()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t sub_100001870(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000018B8()
{
  v0 = sub_1000049A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  (__chkstk_darwin)();
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100001870(&qword_10000C0E8, &qword_100006560);
  v6 = sub_10000478C(v5);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v23[-v12];
  v14 = sub_100001870(&qword_10000C0F0, &qword_100006568);
  v15 = sub_10000478C(v14);
  v17 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v19 = &v23[-v18];
  v20 = sub_100004A24();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  sub_100001870(&qword_10000C0F8, &qword_100006570);
  sub_1000046A4();
  sub_100004A14();
  sub_100004764(v19);
  v23[15] = 9;
  sub_100004864();
  sub_100004764(v13);
  sub_100004764(v11);
  (*(v1 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v0);
  sub_1000034F0();
  return sub_1000048A4();
}

uint64_t sub_100001B28()
{
  sub_100001870(&qword_10000C138, &qword_100006598);
  v0 = (sub_100001870(&qword_10000C140, &qword_1000065A0) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100005EF0;
  v4 = v3 + v2;
  v5 = v0[14];
  *(v3 + v2) = 0;
  v6 = sub_1000034F0();
  sub_1000046FC(0xD000000000000033, 0x80000001000058A0);
  v7 = v0[14];
  *(v4 + v1) = 1;
  sub_1000046E0();
  sub_1000046FC(0xD00000000000003BLL, v8 | 0x8000000000000000);
  v9 = v0[14];
  *(v4 + 2 * v1) = 2;
  sub_1000046E0();
  sub_1000046C4(0xD00000000000003CLL);
  v10 = v0[14];
  *(v4 + 3 * v1) = 3;
  sub_1000046E0();
  sub_1000046FC(0xD00000000000003BLL, v11 | 0x8000000000000000);
  v12 = v0[14];
  *(v4 + 4 * v1) = 4;
  sub_1000046E0();
  sub_1000046C4(0xD000000000000040);
  v13 = v0[14];
  *(v4 + 5 * v1) = 5;
  sub_1000046E0();
  sub_1000046C4(0xD000000000000044);
  v14 = v0[14];
  *(v4 + 6 * v1) = 6;
  sub_1000046FC(0xD00000000000003FLL, 0x8000000100005A40);
  v15 = v0[14];
  *(v4 + 7 * v1) = 7;
  sub_1000046E0();
  sub_1000046C4(0xD000000000000043);
  v16 = v0[14];
  *(v4 + 8 * v1) = 8;
  sub_1000046E0();
  sub_1000046C4(0xD000000000000042);
  sub_100001870(&qword_10000C148, &qword_1000065A8);
  sub_1000039E4();
  v17 = sub_100004A44();

  return _EnumURLRepresentation.init(_:)(v17, &type metadata for GameCenterSettingsDeepLinks, v6);
}

uint64_t sub_100001DDC()
{
  v0 = sub_100001870(&qword_10000C0F0, &qword_100006568);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_100004A24();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_100004A04();
  sub_1000045D0(v6, qword_10000CD50);
  sub_100004598(v6, qword_10000CD50);
  sub_100004A14();
  sub_100004474(v3, 1, 1, v4);
  return sub_1000049F4();
}

uint64_t sub_100001F14()
{
  v0 = sub_100001870(&qword_10000C118, &qword_100006578);
  v1 = sub_10000478C(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v101 - v4;
  v6 = sub_100001870(&qword_10000C0F0, &qword_100006568);
  v7 = sub_10000478C(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v101 - v10;
  v12 = sub_100004A24();
  v113 = v12;
  v122 = *(v12 - 8);
  v13 = v122;
  v14 = *(v122 + 64);
  v15 = __chkstk_darwin(v12);
  v124 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v101 - v17;
  sub_100001870(&qword_10000C120, &qword_100006580);
  v19 = sub_100001870(&qword_10000C128, &qword_100006588);
  v20 = *(v19 - 8);
  v121 = *(v20 + 72);
  v21 = v19 - 8;
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  v104 = v23;
  *(v23 + 16) = xmmword_100005EF0;
  v115 = v23 + v22;
  v111 = *(v21 + 56);
  v24 = v21;
  v119 = v21;
  *(v23 + v22) = 0;
  sub_1000046EC();
  v103 = v25 - 11;
  v26 = v18;
  sub_100004A14();
  sub_100004474(v11, 1, 1, v12);
  v118 = "K_EXT_GAME_CENTER";
  v114 = 0xD00000000000001CLL;
  sub_100004934();
  v120 = sub_100004944();
  sub_10000467C();
  sub_100004474(v27, v28, v29, v30);
  v112 = sub_100001870(&qword_10000C130, &qword_100006590);
  v110 = *(v13 + 72);
  v122 = *(v122 + 80);
  v31 = (v122 + 32) & ~v122;
  *(swift_allocObject() + 16) = xmmword_100005EE0;
  v108 = 0xD00000000000002BLL;
  sub_100004A14();
  sub_100004A14();
  v32 = v115;
  v123 = v26;
  sub_100004954();
  v102 = *(v24 + 56);
  *(v32 + v121) = 1;
  sub_100004A14();
  v107 = 0xD000000000000022;
  v116 = v11;
  sub_100004A14();
  sub_10000467C();
  v33 = v113;
  sub_100004474(v34, v35, v36, v113);
  sub_100004798();
  sub_100004934();
  v105 = v5;
  sub_10000467C();
  v37 = v120;
  sub_100004474(v38, v39, v40, v120);
  v117 = v31;
  v111 = v31 + 2 * v110;
  v41 = swift_allocObject();
  v109 = xmmword_100005FB0;
  *(v41 + 16) = xmmword_100005FB0;
  sub_1000046EC();
  v106 = v42 - 5;
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_100004954();
  v43 = v121;
  v44 = v115;
  v101 = (v115 + 2 * v121);
  v102 = *(v119 + 56);
  *v101 = 2;
  sub_100004A14();
  sub_100004A14();
  sub_10000467C();
  sub_100004474(v45, v46, v47, v33);
  sub_100004798();
  sub_100004934();
  sub_10000467C();
  sub_100004474(v48, v49, v50, v37);
  *(swift_allocObject() + 16) = v109;
  sub_100004A14();
  v51 = v110;
  sub_100004A14();
  sub_100004748();
  sub_100004714();
  sub_100004954();
  v101 = (v44 + 3 * v43);
  v52 = v119;
  v102 = *(v119 + 56);
  *v101 = 3;
  sub_1000046A4();
  sub_100004A14();
  sub_1000046A4();
  sub_100004A14();
  sub_10000467C();
  v53 = v113;
  sub_100004474(v54, v55, v56, v113);
  sub_100004798();
  sub_100004934();
  sub_10000467C();
  v57 = v120;
  sub_100004474(v58, v59, v60, v120);
  v111 = 3 * v51;
  sub_100004780();
  v61 = swift_allocObject();
  v109 = xmmword_100005FC0;
  *(v61 + 16) = xmmword_100005FC0;
  sub_1000046A4();
  sub_100004A14();
  sub_100004688();
  sub_100004688();
  sub_1000046EC();
  sub_10000472C();
  sub_100004714();
  sub_100004954();
  v62 = v121;
  v102 = *(v52 + 56);
  *(v115 + 4 * v121) = 4;
  sub_1000046A4();
  sub_100004A14();
  sub_1000046A4();
  sub_100004A14();
  sub_10000467C();
  sub_100004474(v63, v64, v65, v53);
  sub_100004934();
  sub_10000467C();
  sub_100004474(v66, v67, v68, v57);
  sub_100004780();
  *(swift_allocObject() + 16) = xmmword_100005FD0;
  sub_1000046A4();
  sub_100004A14();
  sub_100004688();
  sub_100004688();
  sub_100004688();
  sub_100004688();
  sub_100004688();
  sub_100004688();
  sub_100004748();
  sub_100004954();
  v102 = v115 + 5 * v62;
  v69 = *(v119 + 56);
  *v102 = 5;
  v106 = v69;
  v107 = 0xD000000000000026;
  sub_100004A14();
  sub_1000046A4();
  sub_100004A14();
  sub_10000467C();
  sub_100004474(v70, v71, v72, v113);
  sub_100004934();
  sub_10000467C();
  sub_100004474(v73, v74, v75, v120);
  sub_100004780();
  *(swift_allocObject() + 16) = xmmword_100005FE0;
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_10000472C();
  sub_100004954();
  v76 = v115;
  v102 = v115 + 6 * v121;
  v106 = *(v119 + 56);
  *v102 = 6;
  sub_1000046A4();
  sub_100004A14();
  sub_1000046A4();
  sub_100004A14();
  sub_10000467C();
  v77 = v113;
  sub_100004474(v78, v79, v80, v113);
  sub_100004934();
  sub_10000467C();
  sub_100004474(v81, v82, v83, v120);
  v84 = swift_allocObject();
  sub_1000046B0(v84);
  sub_1000046A4();
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_100004748();
  sub_100004954();
  v108 = *(v119 + 56);
  *(v76 + 7 * v121) = 7;
  sub_100004A14();
  sub_100004A14();
  sub_10000467C();
  sub_100004474(v85, v86, v87, v77);
  sub_100004934();
  sub_10000467C();
  sub_100004474(v88, v89, v90, v120);
  v91 = swift_allocObject();
  sub_1000046B0(v91);
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_10000472C();
  sub_1000047A4();
  v92 = *(v119 + 56);
  *(v115 + 8 * v121) = 8;
  sub_100004A14();
  sub_100004A14();
  sub_10000467C();
  sub_100004474(v93, v94, v95, v113);
  sub_100004798();
  sub_100004934();
  sub_10000467C();
  sub_100004474(v96, v97, v98, v120);
  sub_100004780();
  v99 = swift_allocObject();
  sub_1000046B0(v99);
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_100004A14();
  sub_1000047A4();
  sub_100004964();
  sub_1000039E4();
  return sub_100004A44();
}

uint64_t sub_100002D94(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000086A0;
  v6._object = a2;
  v4 = sub_100004A64(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100002DEC(char a1)
{
  result = 1953460082;
  switch(a1)
  {
    case 1:
      result = 0x6E496E676973;
      break;
    case 2:
      result = 0x74754F6E676973;
      break;
    case 3:
      v3 = 2003134838;
      goto LABEL_6;
    case 4:
      v3 = 1953064037;
LABEL_6:
      result = v3 | 0x666F725000000000;
      break;
    case 5:
      result = 0x7974697669746361;
      break;
    case 6:
      result = 0x6E656972466C6C61;
      break;
    case 7:
      result = 0x6552646E65697266;
      break;
    case 8:
      result = 0x7246657469766E69;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100002F34()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_100002F88(unsigned __int8 a1, char a2)
{
  v2 = 1953460082;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1953460082;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x6E496E676973;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x74754F6E676973;
      break;
    case 3:
      v6 = 2003134838;
      goto LABEL_6;
    case 4:
      v6 = 1953064037;
LABEL_6:
      v5 = v6 | 0x666F725000000000;
      v3 = 0xEB00000000656C69;
      break;
    case 5:
      v5 = 0x7974697669746361;
      v3 = 0xEF676E6972616853;
      break;
    case 6:
      v5 = 0x6E656972466C6C61;
      v3 = 0xEA00000000007364;
      break;
    case 7:
      v5 = 0x6552646E65697266;
      v3 = 0xEE00737473657571;
      break;
    case 8:
      v5 = 0x7246657469766E69;
      v3 = 0xED000073646E6569;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE600000000000000;
      v2 = 0x6E496E676973;
      break;
    case 2:
      v7 = 0xE700000000000000;
      v2 = 0x74754F6E676973;
      break;
    case 3:
      v8 = 2003134838;
      goto LABEL_16;
    case 4:
      v8 = 1953064037;
LABEL_16:
      v2 = v8 | 0x666F725000000000;
      v7 = 0xEB00000000656C69;
      break;
    case 5:
      v2 = 0x7974697669746361;
      v7 = 0xEF676E6972616853;
      break;
    case 6:
      v2 = 0x6E656972466C6C61;
      v7 = 0xEA00000000007364;
      break;
    case 7:
      v2 = 0x6552646E65697266;
      v7 = 0xEE00737473657571;
      break;
    case 8:
      v2 = 0x7246657469766E69;
      v7 = 0xED000073646E6569;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100004A74();
  }

  return v10 & 1;
}

Swift::Int sub_100003250(char a1)
{
  sub_100004A84();
  sub_100002DEC(a1);
  sub_100004A54();

  return sub_100004A94();
}

uint64_t sub_1000032BC()
{
  sub_100004A54();
}

Swift::Int sub_100003430(uint64_t a1, char a2)
{
  sub_100004A84();
  sub_100002DEC(a2);
  sub_100004A54();

  return sub_100004A94();
}

uint64_t sub_100003490@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100002D94(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000034C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002DEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000034F0()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100003548()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_1000035A0()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_1000035F8()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100003650()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

uint64_t sub_1000036B0()
{
  sub_100004544();
  v1 = sub_100004974();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100003720()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_100003778()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_1000037D0()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100003828()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

uint64_t sub_1000038E4(uint64_t a1)
{
  v2 = sub_1000034F0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003934()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_10000398C()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

unint64_t sub_1000039E4()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_100003A3C(uint64_t a1)
{
  v2 = sub_100003828();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003A8C()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    sub_100003AF0(&qword_10000C0C0, &qword_1000062B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_100003AF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003B4C()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

uint64_t sub_100003BA4()
{
  v0 = sub_100004A24();
  sub_1000045D0(v0, qword_10000CD68);
  sub_100004598(v0, qword_10000CD68);
  return sub_100004A14();
}

uint64_t sub_100003C70@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100003C08();
  *a1 = result;
  return result;
}

uint64_t sub_100003C9C(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  return sub_100003C3C();
}

void (*sub_100003CA8(void *a1))(void *a1)
{
  v3 = sub_100004634(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_100004874();
  return sub_100003D08;
}

void sub_100003D08(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100003D54()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_100003DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000449C();
  v5 = sub_100004544();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100003E18()
{
  v0 = qword_10000C040;

  return v0;
}

unint64_t sub_100003E58()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

unint64_t sub_100003EB0()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

uint64_t sub_100003FB4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = sub_100004598(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100004078(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000449C();
  v8 = sub_1000044F0();
  v9 = sub_100004544();
  *v6 = v2;
  v6[1] = sub_10000414C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10000414C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100004254@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000018B8();
  *a1 = result;
  return result;
}

uint64_t sub_10000427C(uint64_t a1)
{
  v2 = sub_10000181C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for GameCenterSettingsDeepLinks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GameCenterSettingsDeepLinks(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x10000442CLL);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000449C()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

unint64_t sub_1000044F0()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

unint64_t sub_100004544()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

uint64_t sub_100004598(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000045D0(uint64_t a1, uint64_t *a2)
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

void *sub_100004634(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_100004688()
{

  return sub_100004A14();
}

__n128 sub_1000046B0(__n128 *a1)
{
  result = *(v1 - 224);
  a1[1] = result;
  return result;
}

uint64_t sub_1000046C4(uint64_t a1)
{

  return _EnumURLRepresentation.EnumSingleURLRepresentation.init(stringLiteral:)(a1, v1 | 0x8000000000000000, v3, v2);
}

uint64_t sub_1000046FC(uint64_t a1, uint64_t a2)
{

  return _EnumURLRepresentation.EnumSingleURLRepresentation.init(stringLiteral:)(a1, a2, v3, v2);
}

uint64_t sub_10000472C()
{
  v2 = *(v0 - 96);

  return sub_100004A14();
}

uint64_t sub_100004748()
{
  v2 = *(v0 - 96);

  return sub_100004A14();
}

uint64_t sub_100004764(uint64_t a1)
{

  return sub_100004474(a1, 1, 1, v1);
}

uint64_t sub_1000047A4()
{

  return sub_100004954();
}