uint64_t sub_1000014C0()
{
  v0 = (*(*(sub_100001780(&qword_100010010, &qword_1000083C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v14[-v1];
  v3 = sub_100008134();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(*(sub_100008174() - 8) + 64);
  __chkstk_darwin();
  v9 = *(*(sub_1000081A4() - 8) + 64);
  __chkstk_darwin();
  v10 = sub_100008144();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  sub_100008194();
  sub_100008164();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_100008154();
  (*(v11 + 56))(v2, 1, 1, v10);
  return sub_100008124();
}

uint64_t sub_100001780(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000017C8()
{
  v0 = (*(*(sub_100001780(&qword_100010130, &qword_100008990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v99 = &v86 - v1;
  v2 = (*(*(sub_100001780(&qword_100010010, &qword_1000083C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v110 = &v86 - v3;
  v94 = sub_100008134();
  v4 = *(v94 - 8);
  v5 = *(v4 + 64);
  (__chkstk_darwin)();
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_100008174() - 8) + 64);
  (__chkstk_darwin)();
  v9 = *(*(sub_1000081A4() - 8) + 64);
  (__chkstk_darwin)();
  v108 = sub_100008144();
  v10 = *(v108 - 8);
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v98 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v86 - v14;
  sub_100001780(&qword_100010138, &qword_100008998);
  v15 = sub_100001780(&qword_100010140, &qword_1000089A0);
  v109 = v15;
  v16 = *(v15 - 8);
  v97 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v88 = 16 * v97;
  v18 = swift_allocObject();
  v89 = v18;
  *(v18 + 16) = xmmword_1000083B0;
  v107 = v18 + v17;
  v96 = *(v15 + 48);
  *(v18 + v17) = 0;
  sub_100008194();
  sub_100008164();
  v19 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v4 + 104);
  v21 = v94;
  v20(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v94);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v20(v7, v19, v21);
  v91 = v4 + 104;
  v22 = v110;
  sub_100008154();
  v104 = *(v10 + 56);
  v105 = v10 + 56;
  v104(v22, 0, 1, v108);
  v102 = "APPS_SETTINGS_SUBTITLE";
  v23 = v99;
  sub_100008024();
  v100 = sub_100008034();
  v24 = *(v100 - 8);
  v103 = *(v24 + 56);
  v101 = v24 + 56;
  v103(v23, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v25 = v94;
  v20(v7, v19, v94);
  sub_100008154();
  v26 = v107;
  sub_100008044();
  v87 = v26 + v97;
  v90 = *(v109 + 48);
  *v87 = 1;
  sub_100008194();
  sub_100008164();
  v20(v7, v19, v25);
  sub_100008154();
  v96 = "ICLOUD_PHOTOS_TITLE";
  v95 = 0xD000000000000018;
  sub_100008194();
  sub_100008164();
  v20(v7, v19, v25);
  v27 = v110;
  sub_100008154();
  v104(v27, 0, 1, v108);
  v28 = v99;
  sub_100008024();
  v103(v28, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v20(v7, v19, v25);
  sub_100008154();
  sub_100008044();
  v90 = 2 * v97;
  v86 = (v107 + 2 * v97);
  v87 = *(v109 + 48);
  *v86 = 2;
  sub_100008194();
  sub_100008164();
  v92 = v19;
  v29 = v94;
  v20(v7, v19, v94);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v20(v7, v19, v29);
  v93 = v20;
  v30 = v110;
  sub_100008154();
  v104(v30, 0, 1, v108);
  v31 = v99;
  sub_100008024();
  v103(v31, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v32 = v92;
  v33 = v94;
  v20(v7, v92, v94);
  sub_100008154();
  sub_100008044();
  v87 = v107 + v90 + v97;
  v90 = *(v109 + 48);
  *v87 = 3;
  sub_100008194();
  sub_100008164();
  v34 = v93;
  v93(v7, v32, v33);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v34(v7, v32, v33);
  v35 = v110;
  sub_100008154();
  v104(v35, 0, 1, v108);
  v36 = v99;
  sub_100008024();
  v103(v36, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v34(v7, v32, v33);
  sub_100008154();
  sub_100008044();
  v90 = 4 * v97;
  v86 = (v107 + 4 * v97);
  v87 = *(v109 + 48);
  *v86 = 4;
  sub_100008194();
  sub_100008164();
  v34(v7, v32, v33);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v34(v7, v32, v33);
  v37 = v110;
  sub_100008154();
  v104(v37, 0, 1, v108);
  v38 = v99;
  sub_100008024();
  v103(v38, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v39 = v93;
  v93(v7, v32, v33);
  sub_100008154();
  sub_100008044();
  v87 = v107 + v90 + v97;
  v90 = *(v109 + 48);
  *v87 = 5;
  sub_100008194();
  sub_100008164();
  v40 = v92;
  v39(v7, v92, v33);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v39(v7, v40, v33);
  v41 = v110;
  sub_100008154();
  v104(v41, 0, 1, v108);
  v42 = v99;
  sub_100008024();
  v103(v42, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v43 = v40;
  v44 = v40;
  v45 = v94;
  v39(v7, v43, v94);
  sub_100008154();
  sub_100008044();
  v87 = v107 + 6 * v97;
  v90 = *(v109 + 48);
  *v87 = 6;
  sub_100008194();
  sub_100008164();
  v46 = v45;
  v47 = v45;
  v48 = v39;
  v39(v7, v44, v47);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v39(v7, v44, v46);
  v49 = v110;
  sub_100008154();
  v104(v49, 0, 1, v108);
  v50 = v99;
  sub_100008024();
  v103(v50, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v51 = v48;
  v48(v7, v44, v46);
  sub_100008154();
  sub_100008044();
  v90 = 8 * v97;
  v86 = (v107 + 7 * v97);
  v87 = *(v109 + 48);
  *v86 = 7;
  sub_100008194();
  sub_100008164();
  v48(v7, v44, v46);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v48(v7, v44, v46);
  v52 = v110;
  sub_100008154();
  v104(v52, 0, 1, v108);
  v53 = v99;
  sub_100008024();
  v103(v53, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v54 = v46;
  v55 = v51;
  v51(v7, v44, v46);
  sub_100008154();
  sub_100008044();
  v86 = (v107 + v90);
  v87 = *(v109 + 48);
  *v86 = 8;
  sub_100008194();
  sub_100008164();
  v51(v7, v44, v46);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v51(v7, v44, v46);
  v56 = v110;
  sub_100008154();
  v57 = v56;
  v104(v56, 0, 1, v108);
  v58 = v99;
  sub_100008024();
  v103(v58, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v51(v7, v44, v54);
  sub_100008154();
  sub_100008044();
  v87 = v107 + v90 + v97;
  v90 = *(v109 + 48);
  *v87 = 9;
  sub_100008194();
  sub_100008164();
  v59 = v92;
  v55(v7, v92, v54);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v55(v7, v59, v54);
  sub_100008154();
  v104(v57, 0, 1, v108);
  v60 = v99;
  sub_100008024();
  v103(v60, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v55(v7, v59, v54);
  sub_100008154();
  v61 = v110;
  sub_100008044();
  v87 = v107 + 10 * v97;
  v90 = *(v109 + 48);
  *v87 = 10;
  sub_100008194();
  sub_100008164();
  v62 = v92;
  v55(v7, v92, v54);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v55(v7, v62, v54);
  sub_100008154();
  v104(v61, 0, 1, v108);
  v63 = v99;
  sub_100008024();
  v103(v63, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v64 = v92;
  v65 = v94;
  v66 = v93;
  v93(v7, v92, v94);
  sub_100008154();
  sub_100008044();
  v87 = v107 + 11 * v97;
  v90 = *(v109 + 48);
  *v87 = 11;
  sub_100008194();
  sub_100008164();
  v66(v7, v64, v65);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v66(v7, v64, v65);
  v67 = v110;
  sub_100008154();
  v104(v67, 0, 1, v108);
  v68 = v99;
  sub_100008024();
  v103(v68, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v66(v7, v64, v65);
  sub_100008154();
  sub_100008044();
  v87 = v107 + 12 * v97;
  v90 = *(v109 + 48);
  *v87 = 12;
  sub_100008194();
  sub_100008164();
  v69 = v94;
  v66(v7, v64, v94);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v66(v7, v64, v69);
  v70 = v110;
  sub_100008154();
  v104(v70, 0, 1, v108);
  v71 = v99;
  sub_100008024();
  v103(v71, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v72 = v69;
  v73 = v69;
  v74 = v93;
  v93(v7, v64, v73);
  sub_100008154();
  sub_100008044();
  v87 = v107 + 13 * v97;
  v90 = *(v109 + 48);
  *v87 = 13;
  sub_100008194();
  sub_100008164();
  v74(v7, v64, v72);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v75 = v64;
  v74(v7, v64, v72);
  v76 = v74;
  v77 = v110;
  sub_100008154();
  v104(v77, 0, 1, v108);
  v78 = v99;
  sub_100008024();
  v103(v78, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v76(v7, v75, v72);
  sub_100008154();
  sub_100008044();
  v87 = v107 + 14 * v97;
  v90 = *(v109 + 48);
  *v87 = 14;
  sub_100008194();
  sub_100008164();
  v79 = v93;
  v93(v7, v75, v72);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v79(v7, v75, v72);
  v80 = v110;
  sub_100008154();
  v104(v80, 0, 1, v108);
  v81 = v99;
  sub_100008024();
  v103(v81, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v82 = v93;
  v93(v7, v75, v72);
  sub_100008154();
  sub_100008044();
  v90 = v107 + v88 - v97;
  v97 = *(v109 + 48);
  *v90 = 15;
  sub_100008194();
  sub_100008164();
  v82(v7, v75, v72);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v82(v7, v75, v72);
  v83 = v110;
  sub_100008154();
  v104(v83, 0, 1, v108);
  sub_100008024();
  v103(v81, 0, 1, v100);
  sub_100008194();
  sub_100008164();
  v82(v7, v75, v72);
  sub_100008154();
  sub_100008044();
  v84 = sub_100006920(v89);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100010D10 = v84;
  return result;
}

uint64_t *sub_100003F58()
{
  if (qword_100010160 != -1)
  {
    swift_once();
  }

  return &qword_100010D10;
}

uint64_t sub_100003FA8()
{
  if (qword_100010160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_100004020(uint64_t a1)
{
  if (qword_100010160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_100010D10 = a1;
}

uint64_t (*sub_1000040A0())()
{
  if (qword_100010160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100004128()
{
  v0 = sub_100001780(&qword_100010020, &qword_1000083D0);
  sub_100007C2C(v0, qword_100010D18);
  sub_1000047CC(v0, qword_100010D18);
  sub_100001780(&qword_100010110, &qword_100008970);
  v1 = sub_100001780(&qword_100010118, &qword_100008978);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000083B0;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  *(v4 + v3) = 0;
  sub_100004708();
  sub_100008064();
  v7 = *(v1 + 48);
  *(v5 + v2) = 1;
  sub_100008064();
  v8 = *(v1 + 48);
  *(v5 + 2 * v2) = 2;
  sub_100008064();
  v9 = *(v1 + 48);
  *(v5 + 3 * v2) = 3;
  sub_100008064();
  v10 = *(v1 + 48);
  *(v5 + 4 * v2) = 4;
  sub_100008064();
  v11 = *(v1 + 48);
  *(v5 + 5 * v2) = 5;
  sub_100008064();
  v12 = *(v1 + 48);
  *(v5 + 6 * v2) = 6;
  sub_100008064();
  v13 = *(v1 + 48);
  *(v5 + 7 * v2) = 7;
  sub_100008064();
  v14 = *(v1 + 48);
  *(v5 + 8 * v2) = 8;
  sub_100008064();
  v15 = *(v1 + 48);
  *(v5 + 9 * v2) = 9;
  sub_100008064();
  v16 = *(v1 + 48);
  *(v5 + 10 * v2) = 10;
  sub_100008064();
  v17 = *(v1 + 48);
  *(v5 + 11 * v2) = 11;
  sub_100008064();
  v18 = *(v1 + 48);
  *(v5 + 12 * v2) = 12;
  sub_100008064();
  v19 = *(v1 + 48);
  *(v5 + 13 * v2) = 13;
  sub_100008064();
  v20 = *(v1 + 48);
  *(v5 + 14 * v2) = 14;
  sub_100008064();
  v21 = *(v1 + 48);
  *(v5 + 15 * v2) = 15;
  sub_100008064();
  sub_100006B08(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_100008074();
}

uint64_t sub_100004630(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    v5._countAndFlagsBits = 47;
  }

  else
  {
    v5._countAndFlagsBits = 35;
  }

  v5._object = 0xE100000000000000;
  sub_1000081C4(v5);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  sub_1000081C4(v8);

  sub_100004708();

  return sub_100008064();
}

unint64_t sub_100004708()
{
  result = qword_100010018;
  if (!qword_100010018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010018);
  }

  return result;
}

uint64_t sub_10000475C()
{
  if (qword_100010168 != -1)
  {
    swift_once();
  }

  v0 = sub_100001780(&qword_100010020, &qword_1000083D0);

  return sub_1000047CC(v0, qword_100010D18);
}

uint64_t sub_1000047CC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004804@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010168 != -1)
  {
    swift_once();
  }

  v2 = sub_100001780(&qword_100010020, &qword_1000083D0);
  v3 = sub_1000047CC(v2, qword_100010D18);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1000048D0(uint64_t a1)
{
  if (qword_100010168 != -1)
  {
    swift_once();
  }

  v2 = sub_100001780(&qword_100010020, &qword_1000083D0);
  v3 = sub_1000047CC(v2, qword_100010D18);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1000049D0())()
{
  if (qword_100010168 != -1)
  {
    swift_once();
  }

  v0 = sub_100001780(&qword_100010020, &qword_1000083D0);
  sub_1000047CC(v0, qword_100010D18);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_100004A80(char a1)
{
  result = 1953460082;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
    case 13:
      result = 0xD000000000000014;
      break;
    case 5:
    case 7:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000022;
      break;
    case 8:
      result = 0x79616C506F747561;
      break;
    case 9:
      result = 0x6374697753726468;
      break;
    case 10:
      result = 0x736569726F6D656DLL;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x726566736E617274;
      break;
    case 14:
      result = 0xD00000000000001FLL;
      break;
    case 15:
      result = 0x79636176697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100004C84(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100004A80(*a1);
  v5 = v4;
  if (v3 == sub_100004A80(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000081F4();
  }

  return v8 & 1;
}

Swift::Int sub_100004D0C()
{
  v1 = *v0;
  sub_100008204();
  sub_100004A80(v1);
  sub_1000081B4();

  return sub_100008214();
}

uint64_t sub_100004D70()
{
  sub_100004A80(*v0);
  sub_1000081B4();
}

Swift::Int sub_100004DC4()
{
  v1 = *v0;
  sub_100008204();
  sub_100004A80(v1);
  sub_1000081B4();

  return sub_100008214();
}

uint64_t sub_100004E24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100006CFC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100004E54@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100004A80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100004E80()
{
  sub_100007BD8();
  v1 = sub_100008014();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100004EF4(uint64_t a1)
{
  v2 = sub_100004708();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100004F40(uint64_t a1)
{
  v2 = sub_100007568();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100004F9C()
{
  v0 = sub_100008134();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100008174();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1000081A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100008144();
  sub_100007C2C(v9, qword_100010D30);
  sub_1000047CC(v9, qword_100010D30);
  sub_100008194();
  sub_100008164();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100008154();
}

uint64_t (*sub_100005230())()
{
  if (qword_100010170 != -1)
  {
    swift_once();
  }

  v0 = sub_100008144();
  sub_1000047CC(v0, qword_100010D30);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1000052C4()
{
  v0 = sub_100001780(&qword_100010010, &qword_1000083C8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_100008134();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008174();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000081A4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100008144();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100007FF4();
  sub_100007C2C(v15, qword_100010D48);
  sub_1000047CC(v15, qword_100010D48);
  sub_100008194();
  sub_100008164();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_100008154();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100008004();
}

uint64_t sub_1000055EC(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_1000047CC(v4, a3);
}

uint64_t sub_100005684@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_1000047CC(v6, a3);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_100005770(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 == -1)
  {
    v6 = a3(0);
  }

  else
  {
    swift_once();
    v6 = a3(0);
  }

  v7 = v6;
  v8 = sub_1000047CC(v6, a4);
  swift_beginAccess();
  v9 = *(v7 - 8);
  (*(v9 + 24))(v8, a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t (*sub_10000585C())()
{
  if (qword_100010178[0] != -1)
  {
    swift_once();
  }

  v0 = sub_100007FF4();
  sub_1000047CC(v0, qword_100010D48);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1000058F4()
{
  v0 = sub_100001780(&qword_100010028, &qword_1000083D8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100001780(&qword_100010030, &qword_1000083E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_100006D48();
  sub_1000080B4();
  v5._object = 0x8000000100008C50;
  v5._countAndFlagsBits = 0xD00000000000002FLL;
  sub_1000080A4(v5);
  swift_getKeyPath();
  sub_100001780(&qword_100010040, &qword_100008410);
  sub_100008094();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_1000080A4(v6);
  sub_1000080C4();
  return sub_100008084();
}

uint64_t sub_100005AC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100007FD4();
  *a2 = result;
  return result;
}

uint64_t (*sub_100005B68(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100007FA4();
  return sub_100007D00;
}

uint64_t sub_100005BE8()
{
  swift_beginAccess();
  v0 = qword_100010000;

  return v0;
}

uint64_t sub_100005C3C(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_100010000 = a1;
  off_100010008 = a2;
}

uint64_t sub_100005D10@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100007FB4();
  *a1 = v5;
  return result;
}

uint64_t sub_100005D4C(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100007FC4();
}

uint64_t (*sub_100005D84(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_100007FA4();
  return sub_100005DF8;
}

void sub_100005DFC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100005E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007B30();
  v5 = sub_100007BD8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100005EB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010170 != -1)
  {
    swift_once();
  }

  v2 = sub_100008144();
  v3 = sub_1000047CC(v2, qword_100010D30);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100005F84()
{
  v0 = sub_100001780(&qword_100010028, &qword_1000083D8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100001780(&qword_100010030, &qword_1000083E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_1000080B4();
  v5._object = 0x8000000100008C50;
  v5._countAndFlagsBits = 0xD00000000000002FLL;
  sub_1000080A4(v5);
  swift_getKeyPath();
  sub_100001780(&qword_100010040, &qword_100008410);
  sub_100008094();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_1000080A4(v6);
  sub_1000080C4();
  return sub_100008084();
}

uint64_t sub_100006130(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100007B30();
  v7 = sub_100007B84();
  v8 = sub_100007BD8();
  *v5 = v2;
  v5[1] = sub_1000061FC;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000061FC()
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

uint64_t sub_100006304@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006D9C();
  *a1 = result;
  return result;
}

uint64_t sub_10000632C(uint64_t a1)
{
  v2 = sub_100006D48();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100006368(char a1)
{
  v3 = *(v1 + 40);
  sub_100008204();
  sub_100004A80(a1);
  sub_1000081B4();

  v4 = sub_100008214();

  return sub_1000063F0(a1, v4);
}

unint64_t sub_1000063F0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1953460082;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100008A50;
          break;
        case 2:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100008A70;
          break;
        case 3:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100008A90;
          break;
        case 4:
          v8 = 0xD000000000000014;
          v7 = 0x8000000100008AB0;
          break;
        case 5:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100008AD0;
          break;
        case 6:
          v8 = 0xD000000000000022;
          v7 = 0x8000000100008AF0;
          break;
        case 7:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100008B20;
          break;
        case 8:
          v8 = 0x79616C506F747561;
          v7 = 0xEE00686374697753;
          break;
        case 9:
          v8 = 0x6374697753726468;
          v7 = 0xE900000000000068;
          break;
        case 0xA:
          v8 = 0x736569726F6D656DLL;
          goto LABEL_18;
        case 0xB:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100008B60;
          break;
        case 0xC:
          v8 = 0x726566736E617274;
LABEL_18:
          v7 = 0xED000070756F7247;
          break;
        case 0xD:
          v8 = 0xD000000000000014;
          v7 = 0x8000000100008B90;
          break;
        case 0xE:
          v8 = 0xD00000000000001FLL;
          v7 = 0x8000000100008BB0;
          break;
        case 0xF:
          v7 = 0xE700000000000000;
          v8 = 0x79636176697270;
          break;
        default:
          break;
      }

      v9 = 0xE400000000000000;
      v10 = 1953460082;
      switch(a1)
      {
        case 1:
          v9 = 0x8000000100008A50;
          if (v8 == 0xD000000000000012)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        case 2:
          v9 = 0x8000000100008A70;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 3:
          v9 = 0x8000000100008A90;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 4:
          v9 = 0x8000000100008AB0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 5:
          v9 = 0x8000000100008AD0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 6:
          v9 = 0x8000000100008AF0;
          if (v8 != 0xD000000000000022)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 7:
          v9 = 0x8000000100008B20;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 8:
          v9 = 0xEE00686374697753;
          if (v8 != 0x79616C506F747561)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 9:
          v9 = 0xE900000000000068;
          if (v8 != 0x6374697753726468)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 10:
          v10 = 0x736569726F6D656DLL;
          v9 = 0xED000070756F7247;
          goto LABEL_48;
        case 11:
          v9 = 0x8000000100008B60;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 12:
          v9 = 0xED000070756F7247;
          if (v8 != 0x726566736E617274)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 13:
          v9 = 0x8000000100008B90;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 14:
          v9 = 0x8000000100008BB0;
          if (v8 != 0xD00000000000001FLL)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 15:
          v9 = 0xE700000000000000;
          if (v8 != 0x79636176697270)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        default:
LABEL_48:
          if (v8 != v10)
          {
            goto LABEL_50;
          }

LABEL_49:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_50:
          v11 = sub_1000081F4();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_100006920(uint64_t a1)
{
  v2 = sub_100001780(&qword_100010140, &qword_1000089A0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001780(&qword_100010148, qword_1000089A8);
    v8 = sub_1000081D4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100007C90(v10, v6, &qword_100010140, &qword_1000089A0);
      v12 = *v6;
      result = sub_100006368(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100008054();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_100006B08(uint64_t a1)
{
  v2 = sub_100001780(&qword_100010118, &qword_100008978);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001780(&qword_100010120, &qword_100008980);
    v8 = sub_1000081D4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100007C90(v10, v6, &qword_100010118, &qword_100008978);
      v12 = *v6;
      result = sub_100006368(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100001780(&qword_100010128, &qword_100008988);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

uint64_t sub_100006CFC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C640;
  v6._object = a2;
  v4 = sub_1000081E4(v3, v6);

  if (v4 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100006D48()
{
  result = qword_100010038;
  if (!qword_100010038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010038);
  }

  return result;
}

uint64_t sub_100006D9C()
{
  v0 = sub_1000080F4();
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = *(v35 + 64);
  __chkstk_darwin(v0);
  v34 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001780(&qword_100010048, &qword_100008418);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v32 = &v28 - v7;
  v8 = sub_100001780(&qword_100010010, &qword_1000083C8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v31 = &v28 - v10;
  v11 = sub_100008134();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100008174();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_1000081A4();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v29 = sub_100008144();
  v20 = *(v29 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v29);
  v30 = sub_100001780(&qword_100010050, &qword_100008420);
  sub_100008194();
  sub_100008164();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v12 + 104);
  v23(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  sub_100008154();
  sub_100008194();
  sub_100008164();
  v23(v15, v22, v11);
  v24 = v31;
  sub_100008154();
  (*(v20 + 56))(v24, 0, 1, v29);
  v37 = 16;
  v25 = sub_100007F94();
  v26 = *(*(v25 - 8) + 56);
  v26(v32, 1, 1, v25);
  v26(v33, 1, 1, v25);
  (*(v35 + 104))(v34, enum case for InputConnectionBehavior.default(_:), v36);
  sub_100004708();
  return sub_100007FE4();
}

unint64_t sub_10000729C()
{
  result = qword_100010058;
  if (!qword_100010058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010058);
  }

  return result;
}

unint64_t sub_1000072F8()
{
  result = qword_100010060;
  if (!qword_100010060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010060);
  }

  return result;
}

unint64_t sub_10000734C()
{
  result = qword_100010068;
  if (!qword_100010068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010068);
  }

  return result;
}

unint64_t sub_1000073A4()
{
  result = qword_100010070;
  if (!qword_100010070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010070);
  }

  return result;
}

unint64_t sub_1000073FC()
{
  result = qword_100010078;
  if (!qword_100010078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010078);
  }

  return result;
}

unint64_t sub_100007460()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

unint64_t sub_1000074B8()
{
  result = qword_100010088;
  if (!qword_100010088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010088);
  }

  return result;
}

unint64_t sub_100007510()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

unint64_t sub_100007568()
{
  result = qword_100010098;
  if (!qword_100010098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010098);
  }

  return result;
}

unint64_t sub_100007610()
{
  result = qword_1000100A0;
  if (!qword_1000100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A0);
  }

  return result;
}

unint64_t sub_100007668()
{
  result = qword_1000100A8;
  if (!qword_1000100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A8);
  }

  return result;
}

unint64_t sub_1000076C0()
{
  result = qword_1000100B0;
  if (!qword_1000100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B0);
  }

  return result;
}

uint64_t sub_100007758(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000077A4()
{
  result = qword_1000100C8;
  if (!qword_1000100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C8);
  }

  return result;
}

unint64_t sub_100007804()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

unint64_t sub_10000785C()
{
  result = qword_1000100D8;
  if (!qword_1000100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D8);
  }

  return result;
}

unint64_t sub_1000078B4()
{
  result = qword_1000100E0;
  if (!qword_1000100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosDeepLink(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosDeepLink(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100007AE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007758(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100007B30()
{
  result = qword_1000100F8;
  if (!qword_1000100F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F8);
  }

  return result;
}

unint64_t sub_100007B84()
{
  result = qword_100010100;
  if (!qword_100010100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010100);
  }

  return result;
}

unint64_t sub_100007BD8()
{
  result = qword_100010108;
  if (!qword_100010108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010108);
  }

  return result;
}

uint64_t *sub_100007C2C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100007C90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001780(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100007D50()
{
  result = qword_100010150;
  if (!qword_100010150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010150);
  }

  return result;
}

uint64_t sub_100007DA4(uint64_t a1)
{
  v2 = sub_100007EA0();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100007D50();
  sub_100008184();
  return 0;
}

unint64_t sub_100007EA0()
{
  result = qword_100010158;
  if (!qword_100010158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010158);
  }

  return result;
}