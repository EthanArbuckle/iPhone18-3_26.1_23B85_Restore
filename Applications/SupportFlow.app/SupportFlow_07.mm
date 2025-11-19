void *sub_10009E58C@<X0>(char a1@<W0>, void *a2@<X8>)
{
  switch(a1)
  {
    case 1:
      sub_1000A03E4();
      *&v185[8] = v86;
      *&v185[16] = 0uLL;
      *&v185[32] = 1;
      sub_10009FC94();
      v87 = sub_10009FCE8();
      sub_1000A037C(v87, &type metadata for AirPodsStepBluetoothDisabled, &type metadata for AirPodsStepNoDevicesFound, v88, v87, v89, v90, v91, v169, v177, 18);
      _ConditionalContent<>.init(storage:)();
      sub_1000A0368();
      sub_100003768(&qword_10018EA88, &qword_10012B578);
      sub_100003768(&qword_10018EAA8, &qword_10012B580);
      sub_10009FC08();
      v92 = sub_10009FD3C();
      sub_1000A02D4(v92, v93, v94, v95, v96, v97, v98, v99, v176, v184, v185[0]);
      sub_10001B42C();
      sub_1000A04AC();
      sub_1000A046C();
      goto LABEL_13;
    case 2:
      type metadata accessor for AirPodsFlowViewModel();
      sub_1000699F4();
      sub_100005914();
      sub_1000A034C();
      *&v185[16] = v74 | 1;
      *&v185[24] = v73;
      *&v185[32] = 256;
      sub_10009FDC8();
      sub_10009FE1C();
      sub_10001B448();
      sub_1000A02E4();
      sub_1000A0368();
      goto LABEL_10;
    case 3:
      type metadata accessor for AirPodsFlowViewModel();
      sub_1000699F4();
      sub_100005914();
      sub_1000A034C();
      *&v185[16] = v76;
      *&v185[24] = v75;
      *&v185[32] = 257;
      sub_10009FDC8();
      sub_10009FE1C();
      sub_10001B448();
      sub_1000A02E4();
      sub_1000A0368();
      goto LABEL_10;
    case 4:
      *&v185[8] = 0;
      sub_10009FF88();
      v36 = sub_10009FFDC();
      sub_1000A037C(v36, &type metadata for AirPodsStepIssueHardwareView, &type metadata for AirPodsStepIssueAudioView, v37, v36, v38, v39, v40, v169, v177, 0);
      _ConditionalContent<>.init(storage:)();
      sub_1000A0424();
      sub_1000A0498();
      sub_100003768(&qword_10018EAD8, &qword_10012B590);
      sub_100003768(&qword_10018EAF8, &qword_10012B598);
      sub_10009FEFC();
      v41 = sub_1000A0030();
      sub_1000A02D4(v41, v42, v43, v44, v45, v46, v47, v48, v173, v181, v185[0]);
      sub_10001B42C();
      sub_1000A03C4();
      sub_1000A04CC();
      v185[34] = 1;
LABEL_13:
      sub_100003768(&qword_10018EA78, &qword_10012B570);
      sub_100003768(&qword_10018EAC8, &qword_10012B588);
      sub_10009FB7C();
      v100 = sub_10009FE70();
      sub_1000A02D4(v100, v101, v102, v103, v104, v105, v106, v107, v174, v182, v185[0]);
      sub_10001B42C();
      *v185 = sub_1000A040C();
      *&v185[16] = v108;
      *&v185[32] = v109;
      v185[34] = v110;
      v185[93] = 0;
      goto LABEL_27;
    case 5:
      type metadata accessor for AirPodsFlowViewModel();
      sub_1000699F4();
      *v185 = sub_100005914();
      v185[8] = v111 & 1;
      v185[9] = 1;
      sub_10009FF88();
      sub_10009FFDC();
      sub_10001B448();
      sub_1000A02E4();
      sub_1000A0424();
      sub_1000A0498();
      goto LABEL_19;
    case 6:
      type metadata accessor for AirPodsFlowViewModel();
      sub_1000699F4();
      *v185 = sub_100005914();
      *&v185[8] = v123 & 1;
      v185[10] = 0;
      sub_1000A00BC();
      sub_1000A0110();
      sub_10001B448();
      sub_1000A02E4();
      sub_1000A043C();
      sub_1000A0484();
      goto LABEL_18;
    case 7:
      type metadata accessor for AirPodsFlowViewModel();
      sub_1000699F4();
      *v185 = sub_100005914();
      *&v185[8] = v85 & 1 | 0x900;
      v185[10] = 1;
      sub_1000A00BC();
      sub_1000A0110();
      sub_10001B448();
      sub_1000A02E4();
      sub_1000A043C();
      sub_1000A0484();
LABEL_18:
      v185[11] = 1;
LABEL_19:
      sub_100003768(&qword_10018EAD8, &qword_10012B590);
      sub_100003768(&qword_10018EAF8, &qword_10012B598);
      sub_10009FEFC();
      v124 = sub_1000A0030();
      sub_1000A02D4(v124, v125, v126, v127, v128, v129, v130, v131, v169, v177, v185[0]);
      sub_1000A03A8();
      sub_1000A03C4();
      sub_1000A04CC();
      v185[34] = 1;
      goto LABEL_20;
    case 8:
      sub_1000A03E4();
      BYTE6(v177) = 0;
      *&__dst[0] = 0xD000000000000013;
      *(&__dst[0] + 1) = v149;
      WORD5(__dst[5]) = 0;
      sub_10009F888();
      sub_10009F8DC();
      _ConditionalContent<>.init(storage:)();
      v150 = sub_1000A04C0();
      memcpy(v150, v151, 0x5BuLL);
      v187 = 0;
      sub_100003768(&qword_10018EA18, &qword_10012B550);
      sub_100003768(&qword_10018EA38, &qword_10012B558);
      sub_10009F7FC();
      sub_10009F930();
      v152 = sub_1000A0304();
      sub_1000A03F0(v152, v153, v154, v155, v156, v157, v158, v159, v169, v177, v185[0]);
      v188 = 0;
      BYTE12(__dst[5]) = 0;
      sub_100003768(&qword_10018E9F8, &qword_10012B540);
      sub_100003768(&qword_10018EA00, &qword_10012B548);
      sub_10009F770();
      sub_10009FA64();
      sub_1000A032C();
      memcpy(v185, v186, 0x5DuLL);
      __src[0] = 1;
      v185[93] = 1;
      goto LABEL_27;
    case 9:
      sub_1000698C8(__src);
      memcpy(__dst, __src, 0x5AuLL);
      BYTE4(v177) = 1;
      BYTE10(__dst[5]) = 1;
      sub_100069D2C(__src, v185);
      sub_10009F888();
      sub_10009F8DC();
      _ConditionalContent<>.init(storage:)();
      v61 = sub_1000A04C0();
      memcpy(v61, v62, 0x5BuLL);
      BYTE6(v177) = 0;
      BYTE11(__dst[5]) = 0;
      sub_100003768(&qword_10018EA18, &qword_10012B550);
      sub_100003768(&qword_10018EA38, &qword_10012B558);
      sub_10009F7FC();
      sub_10009F930();
      v63 = sub_1000A0304();
      sub_1000A03F0(v63, v64, v65, v66, v67, v68, v69, v70, v169, v177, v185[0]);
      v187 = 0;
      BYTE12(__dst[5]) = 0;
      sub_100003768(&qword_10018E9F8, &qword_10012B540);
      sub_100003768(&qword_10018EA00, &qword_10012B548);
      sub_10009F770();
      sub_10009FA64();
      sub_1000A032C();
      v71 = sub_1000A04C0();
      memcpy(v71, v72, 0x5DuLL);
      v188 = 1;
      BYTE13(__dst[5]) = 1;
      sub_100003768(&qword_10018EA58, &qword_10012B560);
      sub_100003768(&qword_10018EA60, &qword_10012B568);
      sub_10009FAF0();
      sub_1000A0164();
      sub_1000A0304();
      sub_1000A01F0(__src);
      goto LABEL_22;
    case 10:
      *&v185[8] = 0;
      *&v185[16] = 256;
      sub_100003768(&qword_10018E9E0, &qword_10012B538);
      v143 = sub_10009F690();
      sub_1000A037C(v143, v144, &type metadata for EmptyView, v143, &protocol witness table for EmptyView, v145, v146, v147, v169, v177, 0);
      _ConditionalContent<>.init(storage:)();
      v17 = sub_1000A0388();
      v188 = v148;
      goto LABEL_24;
    case 11:
      sub_1000A03E4();
      *&v185[8] = v19;
      *&v185[16] = 12;
      sub_10009F9BC();
      v20 = sub_10009FA10();
      sub_1000A037C(v20, &type metadata for AirPodsStepFirmwareUpdatesView, &type metadata for AirPodsStepResetDeviceView, v21, v20, v22, v23, v24, v169, v177, 24);
      _ConditionalContent<>.init(storage:)();
      v25 = sub_1000A0388();
      v187 = v26;
      BYTE6(v180) = 1;
      sub_1000A0398(v27, v25);
      *(&__dst[5] + 11) = 1;
      sub_100003768(&qword_10018EA18, &qword_10012B550);
      sub_100003768(&qword_10018EA38, &qword_10012B558);
      sub_10009F7FC();
      sub_10009F930();
      v28 = sub_1000A0304();
      sub_1000A03F0(v28, v29, v30, v31, v32, v33, v34, v35, v172, v180, v185[0]);
      v188 = 0;
      goto LABEL_25;
    case 12:
      type metadata accessor for AirPodsFlowViewModel();
      sub_1000699F4();
      v185[0] = sub_100005914();
      *&v185[8] = v49 & 1 | 0xD00;
      *&v185[16] = 256;
      sub_10009F9BC();
      sub_10009FA10();
      sub_10001B448();
      sub_1000A02E4();
      v50 = sub_1000A0388();
      v187 = v51;
      BYTE6(v177) = 1;
      sub_1000A0398(v52, v50);
      *(&__dst[5] + 11) = 1;
      sub_100003768(&qword_10018EA18, &qword_10012B550);
      sub_100003768(&qword_10018EA38, &qword_10012B558);
      sub_10009F7FC();
      sub_10009F930();
      v53 = sub_1000A03A8();
      sub_1000A03F0(v53, v54, v55, v56, v57, v58, v59, v60, v169, v177, v185[0]);
      v188 = 0;
      goto LABEL_16;
    case 13:
      type metadata accessor for AirPodsFlowViewModel();
      sub_1000699F4();
      v185[0] = sub_100005914();
      *&v185[8] = v112 & 1 | 0xE00;
      v185[16] = 0;
      sub_10009F71C();
      sub_10001B21C();
      sub_10001B448();
      sub_1000A02E4();
      sub_1000A0454();
      sub_100003768(&qword_10018E9E0, &qword_10012B538);
      v113 = sub_10009F690();
      sub_1000A037C(v113, v114, &type metadata for EmptyView, v113, &protocol witness table for EmptyView, v115, v116, v117, v169, v177, v185[0]);
      _ConditionalContent<>.init(storage:)();
      v118 = sub_1000A0388();
      v188 = v119;
      v187 = 1;
      sub_1000A0398(v120, v118);
      BYTE12(__dst[5]) = 1;
LABEL_16:
      sub_100003768(&qword_10018E9F8, &qword_10012B540);
      sub_100003768(&qword_10018EA00, &qword_10012B548);
      sub_10009F770();
      sub_10009FA64();
      sub_1000A03A8();
      v121 = sub_1000A04C0();
      memcpy(v121, v122, 0x5DuLL);
      __src[0] = 1;
      BYTE13(__dst[5]) = 1;
      goto LABEL_21;
    case 14:
      sub_1000A03E4();
      *&v185[8] = v5;
      v185[16] = 1;
      sub_10009F71C();
      v6 = sub_10001B21C();
      sub_1000A037C(v6, &type metadata for AirPodsStepReconnectDeviceView, &_s18ContactSupportViewVN, v7, v6, v8, v9, v10, v169, v177, 23);
      _ConditionalContent<>.init(storage:)();
      sub_1000A0454();
      sub_100003768(&qword_10018E9E0, &qword_10012B538);
      v11 = sub_10009F690();
      sub_1000A037C(v11, v12, &type metadata for EmptyView, v11, &protocol witness table for EmptyView, v13, v14, v15, v170, v178, v185[0]);
      _ConditionalContent<>.init(storage:)();
      v17 = sub_1000A0388();
      v188 = v18;
LABEL_24:
      v187 = 1;
      sub_1000A0398(v16, v17);
      BYTE12(__dst[5]) = 1;
LABEL_25:
      sub_100003768(&qword_10018E9F8, &qword_10012B540);
      sub_100003768(&qword_10018EA00, &qword_10012B548);
      sub_10009F770();
      sub_10009FA64();
      sub_1000A032C();
      memcpy(v185, v186, 0x5DuLL);
      __src[0] = 1;
      v185[93] = 1;
LABEL_27:
      sub_100003768(&qword_10018EA58, &qword_10012B560);
      sub_100003768(&qword_10018EA60, &qword_10012B568);
      sub_10009FAF0();
      v160 = sub_1000A0164();
      sub_1000A02D4(v160, v161, v162, v163, v164, v165, v166, v167, v171, v179, v185[0]);
      sub_10001B42C();
      return memcpy(a2, __dst, 0x5EuLL);
    default:
      type metadata accessor for AirPodsFlowViewModel();
      sub_1000699F4();
      sub_100005914();
      sub_1000A034C();
      *&v185[16] = v4 | 8;
      *&v185[24] = v3;
      *&v185[32] = 0;
      sub_10009FC94();
      sub_10009FCE8();
      sub_10001B448();
      sub_1000A02E4();
      sub_1000A0368();
LABEL_10:
      sub_100003768(&qword_10018EA88, &qword_10012B578);
      sub_100003768(&qword_10018EAA8, &qword_10012B580);
      sub_10009FC08();
      v77 = sub_10009FD3C();
      sub_1000A02D4(v77, v78, v79, v80, v81, v82, v83, v84, v169, v177, v185[0]);
      sub_1000A03A8();
      sub_1000A04AC();
      sub_1000A046C();
LABEL_20:
      sub_100003768(&qword_10018EA78, &qword_10012B570);
      sub_100003768(&qword_10018EAC8, &qword_10012B588);
      sub_10009FB7C();
      v132 = sub_10009FE70();
      sub_1000A02D4(v132, v133, v134, v135, v136, v137, v138, v139, v175, v183, v185[0]);
      sub_1000A03A8();
      __dst[0] = sub_1000A040C();
      __dst[1] = v140;
      LOWORD(__dst[2]) = v141;
      BYTE2(__dst[2]) = v142;
      BYTE13(__dst[5]) = 0;
LABEL_21:
      sub_100003768(&qword_10018EA58, &qword_10012B560);
      sub_100003768(&qword_10018EA60, &qword_10012B568);
      sub_10009FAF0();
      sub_1000A0164();
      sub_1000A03A8();

LABEL_22:
      memcpy(__dst, v185, 0x5EuLL);
      return memcpy(a2, __dst, 0x5EuLL);
  }
}

unint64_t sub_10009F23C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176910, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10009F288(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000012;
      break;
    case 2:
    case 8:
      result = 0xD000000000000013;
      break;
    case 4:
    case 6:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 9:
    case 12:
      result = 0xD000000000000014;
      break;
    case 10:
    case 11:
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009F418@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009F23C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10009F448@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10009F288(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10009F474@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000E738C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10009F4D4()
{
  result = qword_10018E9C0;
  if (!qword_10018E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9C0);
  }

  return result;
}

uint64_t sub_10009F554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10009F590()
{
  result = qword_10018E9C8;
  if (!qword_10018E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9C8);
  }

  return result;
}

unint64_t sub_10009F5E4()
{
  result = qword_10018E9D0;
  if (!qword_10018E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9D0);
  }

  return result;
}

unint64_t sub_10009F63C()
{
  result = qword_10018E9D8;
  if (!qword_10018E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9D8);
  }

  return result;
}

unint64_t sub_10009F690()
{
  result = qword_10018E9E8;
  if (!qword_10018E9E8)
  {
    sub_100004D48(&qword_10018E9E0, &qword_10012B538);
    sub_10009F71C();
    sub_10001B21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9E8);
  }

  return result;
}

unint64_t sub_10009F71C()
{
  result = qword_10018E9F0;
  if (!qword_10018E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9F0);
  }

  return result;
}

unint64_t sub_10009F770()
{
  result = qword_10018EA08;
  if (!qword_10018EA08)
  {
    sub_100004D48(&qword_10018E9F8, &qword_10012B540);
    sub_10009F7FC();
    sub_10009F930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA08);
  }

  return result;
}

unint64_t sub_10009F7FC()
{
  result = qword_10018EA10;
  if (!qword_10018EA10)
  {
    sub_100004D48(&qword_10018EA18, &qword_10012B550);
    sub_10009F888();
    sub_10009F8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA10);
  }

  return result;
}

unint64_t sub_10009F888()
{
  result = qword_10018EA20;
  if (!qword_10018EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA20);
  }

  return result;
}

unint64_t sub_10009F8DC()
{
  result = qword_10018EA28;
  if (!qword_10018EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA28);
  }

  return result;
}

unint64_t sub_10009F930()
{
  result = qword_10018EA30;
  if (!qword_10018EA30)
  {
    sub_100004D48(&qword_10018EA38, &qword_10012B558);
    sub_10009F9BC();
    sub_10009FA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA30);
  }

  return result;
}

unint64_t sub_10009F9BC()
{
  result = qword_10018EA40;
  if (!qword_10018EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA40);
  }

  return result;
}

unint64_t sub_10009FA10()
{
  result = qword_10018EA48;
  if (!qword_10018EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA48);
  }

  return result;
}

unint64_t sub_10009FA64()
{
  result = qword_10018EA50;
  if (!qword_10018EA50)
  {
    sub_100004D48(&qword_10018EA00, &qword_10012B548);
    sub_10009F690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA50);
  }

  return result;
}

unint64_t sub_10009FAF0()
{
  result = qword_10018EA68;
  if (!qword_10018EA68)
  {
    sub_100004D48(&qword_10018EA58, &qword_10012B560);
    sub_10009FB7C();
    sub_10009FE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA68);
  }

  return result;
}

unint64_t sub_10009FB7C()
{
  result = qword_10018EA70;
  if (!qword_10018EA70)
  {
    sub_100004D48(&qword_10018EA78, &qword_10012B570);
    sub_10009FC08();
    sub_10009FD3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA70);
  }

  return result;
}

unint64_t sub_10009FC08()
{
  result = qword_10018EA80;
  if (!qword_10018EA80)
  {
    sub_100004D48(&qword_10018EA88, &qword_10012B578);
    sub_10009FC94();
    sub_10009FCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA80);
  }

  return result;
}

unint64_t sub_10009FC94()
{
  result = qword_10018EA90;
  if (!qword_10018EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA90);
  }

  return result;
}

unint64_t sub_10009FCE8()
{
  result = qword_10018EA98;
  if (!qword_10018EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EA98);
  }

  return result;
}

unint64_t sub_10009FD3C()
{
  result = qword_10018EAA0;
  if (!qword_10018EAA0)
  {
    sub_100004D48(&qword_10018EAA8, &qword_10012B580);
    sub_10009FDC8();
    sub_10009FE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAA0);
  }

  return result;
}

unint64_t sub_10009FDC8()
{
  result = qword_10018EAB0;
  if (!qword_10018EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAB0);
  }

  return result;
}

unint64_t sub_10009FE1C()
{
  result = qword_10018EAB8;
  if (!qword_10018EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAB8);
  }

  return result;
}

unint64_t sub_10009FE70()
{
  result = qword_10018EAC0;
  if (!qword_10018EAC0)
  {
    sub_100004D48(&qword_10018EAC8, &qword_10012B588);
    sub_10009FEFC();
    sub_1000A0030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAC0);
  }

  return result;
}

unint64_t sub_10009FEFC()
{
  result = qword_10018EAD0;
  if (!qword_10018EAD0)
  {
    sub_100004D48(&qword_10018EAD8, &qword_10012B590);
    sub_10009FF88();
    sub_10009FFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAD0);
  }

  return result;
}

unint64_t sub_10009FF88()
{
  result = qword_10018EAE0;
  if (!qword_10018EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAE0);
  }

  return result;
}

unint64_t sub_10009FFDC()
{
  result = qword_10018EAE8;
  if (!qword_10018EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAE8);
  }

  return result;
}

unint64_t sub_1000A0030()
{
  result = qword_10018EAF0;
  if (!qword_10018EAF0)
  {
    sub_100004D48(&qword_10018EAF8, &qword_10012B598);
    sub_1000A00BC();
    sub_1000A0110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EAF0);
  }

  return result;
}

unint64_t sub_1000A00BC()
{
  result = qword_10018EB00;
  if (!qword_10018EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EB00);
  }

  return result;
}

unint64_t sub_1000A0110()
{
  result = qword_10018EB08;
  if (!qword_10018EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EB08);
  }

  return result;
}

unint64_t sub_1000A0164()
{
  result = qword_10018EB10;
  if (!qword_10018EB10)
  {
    sub_100004D48(&qword_10018EA60, &qword_10012B568);
    sub_10009F770();
    sub_10009FA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EB10);
  }

  return result;
}

unint64_t sub_1000A0248()
{
  result = qword_10018EB18;
  if (!qword_10018EB18)
  {
    sub_100004D48(qword_10018EB20, &unk_10012B5A0);
    sub_10009FAF0();
    sub_1000A0164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EB18);
  }

  return result;
}

uint64_t sub_1000A02E4()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000A0304()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000A032C()
{

  return _ConditionalContent<>.init(storage:)();
}

__n128 sub_1000A0368()
{
  result = *v0;
  v3 = *(v0 + 16);
  v4 = *(v1 - 128);
  return result;
}

__n128 sub_1000A0388()
{
  v2 = *(v1 - 144);
  v3 = *(v1 - 143);
  return *v0;
}

void sub_1000A0398(char a1@<W8>, __n128 a2@<Q0>)
{
  *v3 = a2;
  *(v4 - 144) = a1;
  *(v4 - 143) = v2;
}

uint64_t sub_1000A03A8()
{

  return _ConditionalContent<>.init(storage:)();
}

void sub_1000A03C4()
{
  v2 = *v0;
  v3 = *(v1 - 152) | (*(v1 - 150) << 16);
  v4 = *(v1 - 149) == 0;
}

void *sub_1000A03F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src)
{

  return memcpy((v11 - 160), &__src, 0x5CuLL);
}

__n128 sub_1000A040C()
{
  v2 = *(v1 - 128);
  result = *v0;
  v4 = *(v0 + 16);
  v5 = *(v1 - 126);
  return result;
}

void sub_1000A0424()
{
  v2 = *v0;
  v3 = *(v1 - 152);
  v4 = *(v1 - 151) == 0;
}

void sub_1000A043C()
{
  v2 = *v0;
  v3 = *(v1 - 152);
  v4 = *(v1 - 150) == 0;
}

__n128 sub_1000A0454()
{
  result = *v0;
  v3 = *(v1 - 144);
  return result;
}

__n128 sub_1000A046C()
{
  result = *v0;
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_1000A050C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_100188370;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1001A5960;
  v7 = *algn_1001A5968;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 48) = 0;
  *(a3 + 56) = v8;
  *(a3 + 64) = v7;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
}

uint64_t sub_1000A05B4(uint64_t a1)
{
  result = type metadata accessor for SupportFlowIdentifier();
  if (v3 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v4 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      v6 = *(a1 + 80);
      result = type metadata accessor for Optional();
      if (v7 <= 0x3F)
      {
        v11 = *(result - 8) + 64;
        result = type metadata accessor for ObservationRegistrar();
        if (v8 <= 0x3F)
        {
          v12 = *(result - 8) + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

char *sub_1000A0738()
{
  v1 = *v0;
  v2 = qword_1001A57E0;
  v3 = type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C(v3);
  (*(v4 + 8))(&v0[v2]);
  sub_1000A3190();
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(v5 + 128)]);
  sub_1000A3190();
  v7 = *&v0[*(v6 + 136)];

  sub_1000A3190();
  v9 = *&v0[*(v8 + 152) + 8];

  sub_1000A3190();
  v11 = *&v0[*(v10 + 160) + 8];

  sub_1000A3190();
  v13 = *&v0[*(v12 + 168) + 8];

  sub_1000A3190();
  v15 = *&v0[*(v14 + 176)];

  sub_1000A3190();
  v17 = *(v16 + 184);
  v18 = *(v1 + 80);
  v19 = type metadata accessor for Optional();
  sub_10000AF7C(v19);
  (*(v20 + 8))(&v0[v17]);
  sub_1000A3190();
  v22 = *&v0[*(v21 + 192)];

  sub_1000A3190();
  v24 = *(v23 + 200);
  v25 = type metadata accessor for ObservationRegistrar();
  sub_10000AF7C(v25);
  (*(v26 + 8))(&v0[v24]);
  return v0;
}

uint64_t sub_1000A091C()
{
  sub_1000A31DC();
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  sub_1000A3190();
  return *(v0 + *(v3 + 144));
}

uint64_t sub_1000A099C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *(v1 + v3);
  v4 = a1 & 1;
  result = sub_1000A1F1C();
  if (result)
  {
    __chkstk_darwin(result);
    sub_1000A319C();
    v6 = *(v2 + 96);
    *(v7 - 32) = *(v2 + 80);
    *(v7 - 16) = v6;
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    sub_1000A31E8(v9);
  }

  else
  {
    *(v1 + v3) = v4;
  }

  return result;
}

uint64_t sub_1000A0ACC()
{
  sub_1000A3190();
  sub_1000A3204(*(v1 + 152));
  return v0;
}

uint64_t sub_1000A0B04()
{
  sub_1000A3190();
  v2 = (v0 + *(v1 + 152));
  v3 = v2[1];
  *v2 = v4;
  v2[1] = v5;

  return sub_1000A1F48();
}

uint64_t sub_1000A0B4C()
{
  sub_1000A31DC();
  v3 = *(v0 + 80);
  v4 = *(v0 + 96);
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  return sub_1000A0ACC();
}

uint64_t sub_1000A0BBC()
{
  sub_1000A3190();
  v1 = v0;
  sub_1000A0ACC();
  sub_100003768(&qword_10018A518, &qword_100124920);
  sub_10003BF10();
  v2 = sub_1000A1F1C();

  if (!v2)
  {
    return sub_1000A0B04();
  }

  __chkstk_darwin(v3);
  sub_1000A319C();
  v4 = *(v1 + 96);
  *(v5 - 32) = *(v1 + 80);
  *(v5 - 16) = v4;
  swift_getKeyPath();
  sub_1000A31C8();
  __chkstk_darwin(v6);
  sub_100025A0C();
  sub_1000A31E8(v7);
}

uint64_t *sub_1000A0CF4()
{
  sub_1000A31DC();
  v4 = *(v0 + 80);
  v5 = *(v0 + 96);
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  sub_1000A3190();
  sub_1000A3204(*(v2 + 160));
  return KeyPath;
}

uint64_t sub_1000A0D7C()
{
  sub_1000A3268();
  v4 = v3;
  sub_1000A3220(v5, v6, *(v3 + 160));
  sub_100003768(&qword_10018A518, &qword_100124920);
  sub_10003BF10();
  v7 = sub_1000A327C();

  if (v7)
  {
    __chkstk_darwin(v8);
    sub_1000A319C();
    v9 = *(v4 + 96);
    *(v10 - 32) = *(v4 + 80);
    *(v10 - 16) = v9;
    swift_getKeyPath();
    sub_1000A31C8();
    __chkstk_darwin(v11);
    sub_100025A0C();
    sub_1000A31E8(v12);
  }

  else
  {
    v14 = v2[1];
    *v2 = v1;
    v2[1] = v0;
  }
}

uint64_t *sub_1000A0EB0()
{
  sub_1000A31DC();
  v4 = *(v0 + 80);
  v5 = *(v0 + 96);
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  sub_1000A3190();
  sub_1000A3204(*(v2 + 168));
  return KeyPath;
}

uint64_t sub_1000A0F38()
{
  sub_1000A3268();
  v4 = v3;
  sub_1000A3220(v5, v6, *(v3 + 168));
  sub_100003768(&qword_10018A518, &qword_100124920);
  sub_10003BF10();
  v7 = sub_1000A327C();

  if (v7)
  {
    __chkstk_darwin(v8);
    sub_1000A319C();
    v9 = *(v4 + 96);
    *(v10 - 32) = *(v4 + 80);
    *(v10 - 16) = v9;
    swift_getKeyPath();
    sub_1000A31C8();
    __chkstk_darwin(v11);
    sub_100025A0C();
    sub_1000A31E8(v12);
  }

  else
  {
    v14 = v2[1];
    *v2 = v1;
    v2[1] = v0;
  }
}

uint64_t sub_1000A106C()
{
  sub_1000A31DC();
  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  sub_1000A3190();
  v4 = *(v0 + *(v3 + 176));
}

uint64_t sub_1000A1158@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1000A325C();
  v5 = *(v4 + 184);
  swift_beginAccess();
  sub_1000A325C();
  v7 = *(v6 + 80);
  v8 = type metadata accessor for Optional();
  sub_10000AF7C(v8);
  return (*(v9 + 16))(a1, &v1[v5]);
}

uint64_t sub_1000A11F4(uint64_t a1)
{
  v3 = *v1;
  sub_1000A325C();
  v5 = *(v4 + 184);
  swift_beginAccess();
  sub_1000A325C();
  v7 = *(v6 + 80);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  (*(v9 + 24))(&v1[v5], a1, v8);
  v10 = swift_endAccess();
  sub_1000A23BC(v10);
  return (*(v9 + 8))(a1, v8);
}

uint64_t sub_1000A12DC@<X0>(uint64_t a1@<X8>)
{
  sub_1000A31DC();
  v5 = *(v2 + 80);
  v6 = *(v2 + 96);
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  return sub_1000A1158(a1);
}

uint64_t sub_1000A135C(char *a1)
{
  v21 = *v1;
  v3 = v21;
  v4 = *(v21 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  sub_1000A1158(&v20 - v8);
  v10 = *(v3 + 96);
  v22 = *(*(*(v10 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v3) = sub_1000A1F1C();
  v11 = *(v6 + 8);
  v12 = v11(v9, v5);
  if (v3)
  {
    __chkstk_darwin(v12);
    sub_1000A319C();
    v13 = v21;
    v14 = *(v21 + 88);
    *(v15 - 32) = v4;
    *(v15 - 24) = v14;
    v16 = *(v13 + 104);
    *(v15 - 16) = v10;
    *(v15 - 8) = v16;
    KeyPath = swift_getKeyPath();
    v18 = __chkstk_darwin(KeyPath);
    *(&v20 - 2) = v1;
    *(&v20 - 1) = a1;
    sub_1000A31E8(v18);
  }

  else
  {
    (*(v6 + 16))(v9, a1, v5);
    sub_1000A11F4(v9);
  }

  return v11(a1, v5);
}

uint64_t sub_1000A15B0()
{
  sub_1000A31DC();
  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  KeyPath = swift_getKeyPath();
  sub_1000A1DB4(KeyPath);

  sub_1000A3190();
  v4 = *(v0 + *(v3 + 192));
}

uint64_t sub_1000A1654()
{
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 96);
  KeyPath = swift_getKeyPath();
  sub_1000A1E4C(KeyPath);
}

uint64_t sub_1000A1708()
{
  sub_100025A94();
  v1[167] = v0;
  type metadata accessor for MainActor();
  v1[173] = sub_10006F3C8();
  v3 = sub_1000A3244();
  v1[179] = v3;
  v1[185] = v2;

  return _swift_task_switch(sub_1000A1790, v3, v2);
}

uint64_t sub_1000A1790()
{
  sub_10003DCD8();
  v1 = *(v0 + 1336);
  v2 = *(v1 + *(*v1 + 136));
  sub_1000925F0(v1 + qword_1001A57E0);
  *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_delegate + 8) = &off_10017D108;
  swift_unknownObjectWeakAssign();
  swift_asyncLet_begin();
  v3 = swift_task_alloc();
  *(v0 + 1488) = v3;
  *(v3 + 16) = &unk_10012B738;
  *(v3 + 24) = v1;

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16, v4, sub_1000A18C8, v0 + 1296);
}

uint64_t sub_1000A18C8()
{
  sub_100025A94();
  if (v0)
  {

    v3 = *(v1 + 1480);
    v4 = *(v1 + 1432);

    return _swift_task_switch(sub_1000A1B8C, v4, v3);
  }

  else
  {

    return _swift_asyncLet_get(v1 + 656, v2, sub_1000A1968, v1 + 1440);
  }
}

uint64_t sub_1000A1984()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *(*v0 + 1496);
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;

  v5 = *(v1 + 1480);
  v6 = *(v1 + 1432);

  return _swift_task_switch(sub_1000A1A98, v6, v5);
}

uint64_t sub_1000A1A98()
{
  sub_100025A94();
  v1 = *(v0 + 1336);
  sub_1000A099C(1);

  return _swift_asyncLet_finish(v0 + 656, v2, sub_1000A1B00, v0 + 1344);
}

uint64_t sub_1000A1B1C()
{
  sub_100025A94();
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1336);

  return _swift_asyncLet_finish(v0 + 16, v3, sub_10005F0B0, v0 + 1392);
}

uint64_t sub_1000A1B8C()
{
  sub_10003DCD8();
  v1 = *(v0 + 1336);
  sub_1000A3190();
  (*(v2 + 600))();
  sub_1000A3190();
  v8 = (*(v3 + 608) + **(v3 + 608));
  v4 = *(*(v3 + 608) + 4);
  v5 = swift_task_alloc();
  *(v0 + 1496) = v5;
  *v5 = v0;
  v5[1] = sub_1000A1984;
  v6 = *(v0 + 1336);

  return v8();
}

uint64_t sub_1000A1CCC()
{
  sub_100025A94();
  type metadata accessor for MainActor();
  *(v0 + 16) = sub_10006F3C8();
  sub_1000A3244();
  sub_100062F98();
  v1 = sub_100062F00();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000A1D40()
{
  sub_100025A94();
  type metadata accessor for MainActor();
  *(v0 + 16) = sub_10006F3C8();
  sub_1000A3244();
  sub_100062F98();
  v1 = sub_100062F00();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000A1DB4(uint64_t *a1)
{
  v2 = *(*v1 + 200);
  sub_1000A31AC(*a1);
  swift_getWitnessTable();
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000A1E4C(uint64_t *a1)
{
  v2 = *(*v1 + 200);
  sub_1000A31AC(*a1);
  swift_getWitnessTable();
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000A1F48()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1000A0B4C();
  if (v4)
  {
    v6 = v4;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_100003768(&qword_100188810, &unk_100121780);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100121620;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100017A18();
    *(v7 + 32) = v5;
    *(v7 + 40) = v6;
    String.init(format:_:)();

    sub_1000A0D7C();
    if (qword_100188238 != -1)
    {
      swift_once();
    }

    return sub_1000A0F38();
  }

  else
  {
    sub_1000A0D7C();

    return sub_1000A0F38();
  }
}

uint64_t sub_1000A2168(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000A0B4C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t *sub_1000A21F8(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000A0CF4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1000A2238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + *(*a1 + 160));
  v4 = v3[1];
  *v3 = a2;
  v3[1] = a3;
}

uint64_t *sub_1000A228C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000A0EB0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1000A22CC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_1000A2314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + *(*a1 + 168));
  v4 = v3[1];
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1000A2368(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000A106C();
  *v1 = result;
  return result;
}

uint64_t sub_1000A2390(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000A10F0();
}

uint64_t sub_1000A23BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(a1);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v34 - v8;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  sub_1000A12DC(&v34 - v16);
  v18 = sub_10000E5F0(v17, 1, v3);
  v34 = v11;
  if (v18)
  {
    v19 = v2;
    v20 = v4;
    v21 = *(v11 + 8);
    v21(v17, v10);
    v22 = v19;
  }

  else
  {
    (*(v4 + 16))(v9, v17, v3);
    v21 = *(v11 + 8);
    v21(v17, v10);
    v23 = *(*(*(v2 + 96) + 8) + 16);
    sub_1000C2D64(v3);
    v24 = v2;
    v20 = v4;
    (*(v4 + 8))(v9, v3);
    v22 = v24;
  }

  sub_1000A1634();
  sub_1000A12DC(v15);
  if (sub_10000E5F0(v15, 1, v3) == 1)
  {
    return (v21)(v15, v10);
  }

  v26 = v20;
  v27 = *(v20 + 32);
  v28 = v35;
  v27(v35, v15, v3);
  v29 = *(v1 + *(*v1 + 136));
  v30 = sub_10008A620();
  v32 = v31;
  v33 = type metadata accessor for SupportFlowSession();
  if (!sub_10000E5F0(v32, 1, v33))
  {
    (*(*(v22 + 96) + 24))(v3);
    SupportFlowSession.currentStepId.setter();
  }

  (v30)(v36, 0);
  return (*(v26 + 8))(v28, v3);
}

uint64_t sub_1000A274C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a2);
  return sub_1000A11F4(v7);
}

uint64_t sub_1000A2830(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 192);
  v3 = *(a1 + v2);
  *(a1 + v2) = a2;
}

uint64_t sub_1000A2880()
{
  sub_100025A94();
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000A2938, 0, 0);
}

uint64_t sub_1000A2938()
{
  sub_10003DCD8();
  v1 = *(v0 + 32);
  static Bool.disableMinimumLoadTime.getter();
  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000A2A20;
  v3 = *(v0 + 32);

  return sub_100111FB4();
}

uint64_t sub_1000A2A20()
{
  sub_10004622C();
  v3 = v2;
  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = v2[2];
  v8 = *v1;
  sub_10000870C();
  *v9 = v8;
  v3[6] = v0;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {

    return _swift_task_switch(sub_1000A2BB8, 0, 0);
  }

  else
  {
    v10 = v3[4];

    sub_10000875C();

    return v11();
  }
}

uint64_t sub_1000A2BB8()
{
  sub_100025A94();
  v1 = *(v0 + 32);

  sub_10000875C();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1000A2C14(uint64_t a1)
{
  v2 = *(*a1 + 592);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100045AB0;

  return v6();
}

uint64_t sub_1000A2D30()
{
  sub_1000A0738();
  sub_1000A31DC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t sub_1000A2D9C()
{
  v2 = *(*v0 + 608);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100046160;

  return v6();
}

uint64_t sub_1000A2EB4()
{
  sub_100025A94();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100045AB0;

  return sub_1000A2C14(v0);
}

__n128 sub_1000A2F4C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1000A2F9C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000A106C();
  *v1 = result;
  return result;
}

uint64_t *sub_1000A2FCC(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000A0EB0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t *sub_1000A3044(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000A0CF4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1000A30BC(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000A0B4C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1000A3114()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000A21A8();
}

uint64_t sub_1000A31E8(uint64_t *a1)
{

  return sub_1000A1E4C(a1);
}

uint64_t sub_1000A3204@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_1000A3220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + a3 + 8);
  *(v4 - 80) = *(v3 + a3);
  *(v4 - 72) = v6;
  *(v4 - 96) = a1;
  *(v4 - 88) = a2;
}

uint64_t sub_1000A3244()
{

  return dispatch thunk of Actor.unownedExecutor.getter();
}

BOOL sub_1000A327C()
{

  return sub_1000A1F1C();
}

uint64_t getEnumTagSinglePayload for FlowListOverrideProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FlowListOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x1000A33F0);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000A3444(char a1)
{
  result = 0x2065636976726553;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x65745320776F6853;
      break;
    case 3:
      result = 45;
      break;
    case 4:
      result = 0x20746C7561666544;
      break;
    case 5:
      result = 0x73646F50726941;
      break;
    case 6:
      result = 0x79726574746142;
      break;
    case 7:
      result = 0x736567617373654DLL;
      break;
    case 8:
      result = 0x6573616863727550;
      break;
    case 9:
      result = 0x6572617774666F53;
      break;
    default:
      result = 0xD000000000000022;
      break;
  }

  return result;
}

uint64_t (*sub_1000A35A4(uint64_t a1))@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003768(&qword_10018EC20, &qword_10012BA20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v51 - v4;
  v6 = sub_100003768(&qword_10018EC28, &qword_10012BA28);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v51 - v9;
  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (!qword_1001A5950)
  {
    return 0;
  }

  v11 = type metadata accessor for FlowDebugCoordinator();
  sub_1000AA668(&qword_10018EC30, type metadata accessor for FlowDebugCoordinator);
  swift_retain_n();
  Bindable<A>.init(_:)();
  switch(a1)
  {
    case 1:
      swift_getKeyPath();
      sub_1000AACA8();

      sub_1000AAD0C();
      v35 = sub_1000AAD00();
      v52 = sub_100003768(v35, v36);
      v37 = sub_1000AAC40(&qword_10018ED18);
      v38 = sub_1000AACC4(v37);
      __chkstk_darwin(v38);
      sub_1000AAC6C();
      *(v39 - 16) = 1;
      goto LABEL_13;
    case 2:
      swift_getKeyPath();
      sub_1000AACA8();

      sub_1000AAD0C();
      v25 = sub_1000AAD00();
      v52 = sub_100003768(v25, v26);
      v27 = sub_1000AAC40(&qword_10018ED18);
      v28 = sub_1000AACC4(v27);
      __chkstk_darwin(v28);
      sub_1000AAC6C();
      *(v29 - 16) = 2;
      goto LABEL_13;
    case 3:
      v52 = type metadata accessor for Divider();
      v30 = sub_1000AA668(&qword_10018ED08, &type metadata accessor for Divider);
      sub_1000AACC4(v30);
      Divider.init()();
      goto LABEL_17;
    case 4:
      swift_getKeyPath();
      Bindable<A>.subscript.getter();

      v18 = sub_100003768(&qword_10018ECE0, &qword_10012BBC8);
      sub_100003CE8(v5, 0, 1, v18);
      v52 = sub_100003768(&qword_10018ECE8, &qword_10012BBD0);
      v19 = sub_1000AA2F8();
      sub_1000AACC4(v19);
      sub_1000A3DA8(0, v5, 4);

      sub_1000AA8C8(v5, &qword_10018EC20);
      break;
    case 5:
      sub_100003768(&qword_10018EC38, &qword_10012BA30);
      sub_1000AAC80();
      *(swift_allocObject() + 16) = xmmword_100121620;
      swift_getKeyPath();
      sub_1000AAC8C();

      swift_getKeyPath();
      Bindable<A>.subscript.getter();

      v40 = *(&v53 + 1);
      v41 = v54;
      v52 = sub_100003768(&qword_10018ECC0, &qword_10012BB90);
      v42 = sub_1000AA208();
      sub_1000AACC4(v42);
      v43 = sub_1000AACDC();
      sub_1000A3F9C(v43, v44, v40, v41, 5);
      goto LABEL_15;
    case 6:
      swift_getKeyPath();
      sub_1000AACA8();

      sub_1000AAD0C();
      v52 = sub_100003768(&qword_10018ECA0, &qword_10012BB30);
      v45 = sub_1000AA110();
      sub_1000AACC4(v45);
      sub_1000A41A4(0, v5, a1, v11, 6);

      goto LABEL_17;
    case 7:
      sub_100003768(&qword_10018EC38, &qword_10012BA30);
      sub_1000AAC80();
      *(swift_allocObject() + 16) = xmmword_100121620;
      swift_getKeyPath();
      sub_1000AAC8C();

      v52 = sub_100003768(&qword_10018EC80, &qword_10012BAF8);
      v31 = sub_1000AA020();
      sub_1000AACC4(v31);
      v32 = sub_1000AACEC();
      sub_1000A43AC(v32, v33, v34, 7);
      goto LABEL_19;
    case 8:
      sub_100003768(&qword_10018EC38, &qword_10012BA30);
      sub_1000AAC80();
      *(swift_allocObject() + 16) = xmmword_100121620;
      swift_getKeyPath();
      sub_1000AAC8C();

      v52 = sub_100003768(&qword_10018EC60, &qword_10012BAC0);
      v46 = sub_1000A9F30();
      sub_1000AACC4(v46);
      v47 = sub_1000AACEC();
      sub_1000A45AC(v47, v48, v49, 8);
LABEL_19:

      break;
    case 9:
      sub_100003768(&qword_10018EC38, &qword_10012BA30);
      sub_1000AAC80();
      *(swift_allocObject() + 16) = xmmword_100121620;
      swift_getKeyPath();
      sub_1000AAC8C();

      swift_getKeyPath();
      Bindable<A>.subscript.getter();

      v20 = *(&v53 + 1);
      v21 = v54;
      v52 = sub_100003768(&qword_10018EC40, &qword_10012BA88);
      v22 = sub_1000A9E00();
      sub_1000AACC4(v22);
      v23 = sub_1000AACDC();
      sub_1000A47AC(v23, v24, v20, v21, 9);
LABEL_15:

LABEL_17:

      break;
    default:
      swift_getKeyPath();
      sub_1000AACA8();

      sub_1000AAD0C();
      v12 = sub_1000AAD00();
      v52 = sub_100003768(v12, v13);
      v14 = sub_1000AAC40(&qword_10018ED18);
      v15 = sub_1000AACC4(v14);
      __chkstk_darwin(v15);
      sub_1000AAC6C();
      *(v16 - 16) = 0;
LABEL_13:
      sub_1000AACDC();
      Toggle.init(isOn:label:)();

      break;
  }

  (*(v7 + 8))(v10, v6);
  sub_10003C91C(&v51, &v53);
  sub_10003C91C(&v53, &v51);
  sub_1000AAC80();
  v50 = swift_allocObject();
  sub_10003C91C(&v51, v50 + 16);
  return sub_1000A9F1C;
}

uint64_t sub_1000A3DA8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_100003768(&qword_10018ED00, &qword_10012BBD8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12[-v9];
  v13 = a1;
  v14 = a3;
  v15 = a2;
  v12[16] = a3;
  sub_100003768(&qword_10018ED20, &qword_10012BC60);
  sub_1000AABC8(&qword_10018ED28, &qword_10018ED20);
  Menu.init(content:label:)();
  static String.overrideMenuSubContentMenu.getter();
  sub_1000AABC8(&qword_10018ECF8, &qword_10018ED00);
  View.accessibilityIdentifier(_:)();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000A3F9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v10 = sub_100003768(&qword_10018ECD8, &qword_10012BB98);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16[-v13];
  v20[0] = a2;
  v20[1] = a3;
  v21 = a4;
  v17 = a1;
  v18 = a5;
  v19 = v20;
  v16[16] = a5;
  sub_100003768(&qword_10018ED98, &qword_10012BCD0);
  sub_1000AABC8(&qword_10018EDA0, &qword_10018ED98);
  Menu.init(content:label:)();
  static String.overrideMenuSubContentMenu.getter();
  sub_1000AABC8(&qword_10018ECD0, &qword_10018ECD8);
  View.accessibilityIdentifier(_:)();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1000A41A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v10 = sub_100003768(&qword_10018ECB8, &qword_10012BB38);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16[-v13];
  v20[0] = a2;
  v20[1] = a3;
  v21 = a4;
  v17 = a1;
  v18 = a5;
  v19 = v20;
  v16[16] = a5;
  sub_100003768(&qword_10018EE38, &qword_10012BD40);
  sub_1000AABC8(&qword_10018EE40, &qword_10018EE38);
  Menu.init(content:label:)();
  static String.overrideMenuSubContentMenu.getter();
  sub_1000AABC8(&qword_10018ECB0, &qword_10018ECB8);
  View.accessibilityIdentifier(_:)();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1000A43AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_100003768(&qword_10018EC98, &qword_10012BB00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v14[-v11];
  v18[0] = a2;
  v18[1] = a3;
  v15 = a1;
  v16 = a4;
  v17 = v18;
  v14[16] = a4;
  sub_100003768(&qword_10018EEA8, &qword_10012BD88);
  sub_1000AABC8(&qword_10018EEB0, &qword_10018EEA8);
  Menu.init(content:label:)();
  static String.overrideMenuSubContentMenu.getter();
  sub_1000AABC8(&qword_10018EC90, &qword_10018EC98);
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000A45AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_100003768(&qword_10018EC78, &qword_10012BAC8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v14[-v11];
  v18[0] = a2;
  v18[1] = a3;
  v15 = a1;
  v16 = a4;
  v17 = v18;
  v14[16] = a4;
  sub_100003768(&qword_10018EF28, &qword_10012BDE0);
  sub_1000AABC8(&qword_10018EF30, &qword_10018EF28);
  Menu.init(content:label:)();
  static String.overrideMenuSubContentMenu.getter();
  sub_1000AABC8(&qword_10018EC70, &qword_10018EC78);
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000A47AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v10 = sub_100003768(&qword_10018EC58, &qword_10012BA90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16[-v13];
  v20[0] = a2;
  v20[1] = a3;
  v21 = a4;
  v17 = a1;
  v18 = a5;
  v19 = v20;
  v16[16] = a5;
  sub_100003768(&qword_10018EFA8, &qword_10012BE38);
  sub_1000AABC8(&qword_10018EFB0, &qword_10018EFA8);
  Menu.init(content:label:)();
  static String.overrideMenuSubContentMenu.getter();
  sub_1000AABC8(&qword_10018EC50, &qword_10018EC58);
  View.accessibilityIdentifier(_:)();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1000A49B4@<X0>(uint64_t a1@<X8>)
{
  sub_10000AC24();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000A4B84@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v73 = a5;
  v11 = type metadata accessor for InlinePickerStyle();
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = *(v78 + 64);
  __chkstk_darwin(v11);
  v77 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003768(&qword_10018EFB8, &qword_10012BE40);
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  __chkstk_darwin(v14);
  v74 = v67 - v16;
  v17 = sub_100003768(&qword_10018EFC0, &qword_10012BE48);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v82 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v81 = v67 - v21;
  v22 = sub_100003768(&qword_10018EDB8, &qword_10012BCE8);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v72 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = v67 - v26;
  v28 = sub_100003768(&qword_10018EFC8, &qword_10012BE50);
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = __chkstk_darwin(v28);
  v71 = v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = v67 - v33;
  v35 = sub_100003768(&qword_10018EFD0, &qword_10012BE58);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v80 = v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = v67 - v39;
  if (a1 && *(a1 + 16) == 1)
  {

    sub_10002C334(&off_100176A98);
    v68 = a3;
    v83 = v41;
    __chkstk_darwin(v41);
    v69 = a4;
    v70 = a6;
    sub_1000AAB24();
    v67[1] = swift_getKeyPath();
    v42 = swift_allocObject();
    *(v42 + 16) = a2;
    *(v42 + 24) = a1;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1000AAB78;
    *(v43 + 24) = v42;
    sub_100003768(&qword_10018F010, &qword_10012BE80);
    sub_100003768(&qword_10018EE10, &qword_10012BD28);
    sub_1000AABC8(&qword_10018F018, &qword_10018F010);
    sub_10009DCCC();
    sub_1000AA79C();
    ForEach<>.init(_:id:content:)();
    Divider.init()();
    v44 = type metadata accessor for Divider();
    sub_100003CE8(v27, 0, 1, v44);
    v45 = v29[2];
    v46 = v71;
    v45(v71, v34, v28);
    v47 = v72;
    sub_10002BE60(v27, v72, &qword_10018EDB8, &qword_10012BCE8);
    v45(v40, v46, v28);
    a6 = v70;
    v48 = sub_100003768(&qword_10018F020, &qword_10012BE88);
    sub_10002BE60(v47, &v40[*(v48 + 48)], &qword_10018EDB8, &qword_10012BCE8);
    sub_1000AA8C8(v27, &qword_10018EDB8);
    v49 = v29[1];
    v49(v34, v28);
    v50 = v47;
    a3 = v68;
    a4 = v69;
    sub_1000AA8C8(v50, &qword_10018EDB8);
    v49(v46, v28);
    v51 = sub_100003768(&qword_10018EFD8, &qword_10012BE60);
    v52 = v40;
    v53 = 0;
  }

  else
  {
    v51 = sub_100003768(&qword_10018EFD8, &qword_10012BE60);
    v52 = v40;
    v53 = 1;
  }

  v54 = sub_100003CE8(v52, v53, 1, v51);
  if (a4)
  {
    v86 = 0;
    v87 = 0xE000000000000000;
    v88 = &off_1001768C0;
    v83 = a3;
    v84 = a4;
    v85 = v73;
    __chkstk_darwin(v54);

    sub_100003768(&qword_10018EFF0, &qword_10012BE78);
    sub_10009DCCC();
    sub_1000AAABC(&qword_10018EFF8, &qword_10018EFF0);
    sub_10000AC24();
    v55 = v74;
    Picker<>.init<A>(_:selection:content:)();
    v56 = v77;
    InlinePickerStyle.init()();
    sub_1000AABC8(&qword_10018F000, &qword_10018EFB8);
    v57 = v81;
    v58 = v76;
    v59 = v79;
    View.pickerStyle<A>(_:)();
    (*(v78 + 8))(v56, v59);
    (*(v75 + 8))(v55, v58);
    v60 = sub_100003768(&qword_10018EFE0, &qword_10012BE68);
    v61 = v57;
    v62 = 0;
  }

  else
  {
    v60 = sub_100003768(&qword_10018EFE0, &qword_10012BE68);
    v57 = v81;
    v61 = v81;
    v62 = 1;
  }

  sub_100003CE8(v61, v62, 1, v60);
  v63 = v80;
  sub_10002BE60(v40, v80, &qword_10018EFD0, &qword_10012BE58);
  v64 = v82;
  sub_10002BE60(v57, v82, &qword_10018EFC0, &qword_10012BE48);
  sub_10002BE60(v63, a6, &qword_10018EFD0, &qword_10012BE58);
  v65 = sub_100003768(&qword_10018EFE8, &qword_10012BE70);
  sub_10002BE60(v64, a6 + *(v65 + 48), &qword_10018EFC0, &qword_10012BE48);
  sub_1000AA8C8(v57, &qword_10018EFC0);
  sub_1000AA8C8(v40, &qword_10018EFD0);
  sub_1000AA8C8(v64, &qword_10018EFC0);
  return sub_1000AA8C8(v63, &qword_10018EFD0);
}

uint64_t sub_1000A5478@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = a5;
  v9 = type metadata accessor for InlinePickerStyle();
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  __chkstk_darwin(v9);
  v73 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003768(&qword_10018EF38, &qword_10012BDE8);
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = *(v71 + 64);
  __chkstk_darwin(v12);
  v70 = v65 - v14;
  v15 = sub_100003768(&qword_10018EF40, &qword_10012BDF0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v78 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v76 = v65 - v19;
  v20 = sub_100003768(&qword_10018EDB8, &qword_10012BCE8);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v69 = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = v65 - v24;
  v26 = sub_100003768(&qword_10018EF48, &qword_10012BDF8);
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v68 = v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = v65 - v31;
  v33 = sub_100003768(&qword_10018EF50, &qword_10012BE00);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v77 = v65 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = v65 - v37;
  if (a1 && *(a1 + 16) == 1)
  {

    sub_10002C348();
    v66 = a3;
    v82 = v39;
    __chkstk_darwin(v39);
    v67 = a4;
    sub_1000AAA44();
    v65[1] = swift_getKeyPath();
    v40 = swift_allocObject();
    *(v40 + 16) = a2;
    *(v40 + 24) = a1;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1000AAA98;
    *(v41 + 24) = v40;
    sub_100003768(&qword_10018EF90, &qword_10012BE28);
    sub_100003768(&qword_10018EE10, &qword_10012BD28);
    sub_1000AABC8(&qword_10018EF98, &qword_10018EF90);
    sub_10009B770();
    sub_1000AA79C();
    ForEach<>.init(_:id:content:)();
    Divider.init()();
    v42 = type metadata accessor for Divider();
    sub_100003CE8(v25, 0, 1, v42);
    v43 = v27[2];
    v44 = v68;
    v43(v68, v32, v26);
    v45 = v69;
    sub_10002BE60(v25, v69, &qword_10018EDB8, &qword_10012BCE8);
    v43(v38, v44, v26);
    v46 = sub_100003768(&qword_10018EFA0, &qword_10012BE30);
    sub_10002BE60(v45, &v38[*(v46 + 48)], &qword_10018EDB8, &qword_10012BCE8);
    sub_1000AA8C8(v25, &qword_10018EDB8);
    v47 = v27[1];
    v47(v32, v26);
    a3 = v66;
    a4 = v67;
    sub_1000AA8C8(v45, &qword_10018EDB8);
    v47(v44, v26);
    v48 = sub_100003768(&qword_10018EF58, &qword_10012BE08);
    v49 = v38;
    v50 = 0;
  }

  else
  {
    v48 = sub_100003768(&qword_10018EF58, &qword_10012BE08);
    v49 = v38;
    v50 = 1;
  }

  v51 = sub_100003CE8(v49, v50, 1, v48);
  v52 = v76;
  if (a4)
  {
    v81 = a4;
    v82 = 0;
    v83 = 0xE000000000000000;
    v84 = &off_100176AE8;
    v80 = a3;
    __chkstk_darwin(v51);

    sub_100003768(&qword_10018EF70, &qword_10012BE20);
    sub_10009B770();
    sub_1000AAABC(&qword_10018EF78, &qword_10018EF70);
    sub_10000AC24();
    v53 = v70;
    Picker<>.init<A>(_:selection:content:)();
    v54 = v73;
    InlinePickerStyle.init()();
    sub_1000AABC8(&qword_10018EF80, &qword_10018EF38);
    v55 = v72;
    v56 = v75;
    View.pickerStyle<A>(_:)();
    (*(v74 + 8))(v54, v56);
    (*(v71 + 8))(v53, v55);
    v57 = sub_100003768(&qword_10018EF60, &qword_10012BE10);
    v58 = v52;
    v59 = 0;
  }

  else
  {
    v57 = sub_100003768(&qword_10018EF60, &qword_10012BE10);
    v58 = v52;
    v59 = 1;
  }

  sub_100003CE8(v58, v59, 1, v57);
  v60 = v77;
  sub_10002BE60(v38, v77, &qword_10018EF50, &qword_10012BE00);
  v61 = v78;
  sub_10002BE60(v52, v78, &qword_10018EF40, &qword_10012BDF0);
  v62 = v79;
  sub_10002BE60(v60, v79, &qword_10018EF50, &qword_10012BE00);
  v63 = sub_100003768(&qword_10018EF68, &qword_10012BE18);
  sub_10002BE60(v61, v62 + *(v63 + 48), &qword_10018EF40, &qword_10012BDF0);
  sub_1000AA8C8(v52, &qword_10018EF40);
  sub_1000AA8C8(v38, &qword_10018EF50);
  sub_1000AA8C8(v61, &qword_10018EF40);
  return sub_1000AA8C8(v60, &qword_10018EF50);
}

uint64_t sub_1000A5D50@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = a5;
  v9 = type metadata accessor for InlinePickerStyle();
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  __chkstk_darwin(v9);
  v73 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003768(&qword_10018EEB8, &qword_10012BD90);
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = *(v71 + 64);
  __chkstk_darwin(v12);
  v70 = v65 - v14;
  v15 = sub_100003768(&qword_10018EEC0, &qword_10012BD98);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v78 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v76 = v65 - v19;
  v20 = sub_100003768(&qword_10018EDB8, &qword_10012BCE8);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v69 = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = v65 - v24;
  v26 = sub_100003768(&qword_10018EEC8, &qword_10012BDA0);
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v68 = v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = v65 - v31;
  v33 = sub_100003768(&qword_10018EED0, &qword_10012BDA8);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v77 = v65 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = v65 - v37;
  if (a1 && *(a1 + 16) == 1)
  {

    sub_10002C35C();
    v66 = a3;
    v82 = v39;
    __chkstk_darwin(v39);
    v67 = a4;
    sub_1000AA9A0();
    v65[1] = swift_getKeyPath();
    v40 = swift_allocObject();
    *(v40 + 16) = a2;
    *(v40 + 24) = a1;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1000AA9F4;
    *(v41 + 24) = v40;
    sub_100003768(&qword_10018EF10, &qword_10012BDD0);
    sub_100003768(&qword_10018EE10, &qword_10012BD28);
    sub_1000AABC8(&qword_10018EF18, &qword_10018EF10);
    sub_100006D24();
    sub_1000AA79C();
    ForEach<>.init(_:id:content:)();
    Divider.init()();
    v42 = type metadata accessor for Divider();
    sub_100003CE8(v25, 0, 1, v42);
    v43 = v27[2];
    v44 = v68;
    v43(v68, v32, v26);
    v45 = v69;
    sub_10002BE60(v25, v69, &qword_10018EDB8, &qword_10012BCE8);
    v43(v38, v44, v26);
    v46 = sub_100003768(&qword_10018EF20, &qword_10012BDD8);
    sub_10002BE60(v45, &v38[*(v46 + 48)], &qword_10018EDB8, &qword_10012BCE8);
    sub_1000AA8C8(v25, &qword_10018EDB8);
    v47 = v27[1];
    v47(v32, v26);
    a3 = v66;
    a4 = v67;
    sub_1000AA8C8(v45, &qword_10018EDB8);
    v47(v44, v26);
    v48 = sub_100003768(&qword_10018EED8, &qword_10012BDB0);
    v49 = v38;
    v50 = 0;
  }

  else
  {
    v48 = sub_100003768(&qword_10018EED8, &qword_10012BDB0);
    v49 = v38;
    v50 = 1;
  }

  v51 = sub_100003CE8(v49, v50, 1, v48);
  v52 = v76;
  if (a4)
  {
    v81 = a4;
    v82 = 0;
    v83 = 0xE000000000000000;
    v84 = &off_100176B38;
    v80 = a3;
    __chkstk_darwin(v51);

    sub_100003768(&qword_10018EEF0, &qword_10012BDC8);
    sub_100006D24();
    sub_1000AAABC(&qword_10018EEF8, &qword_10018EEF0);
    sub_10000AC24();
    v53 = v70;
    Picker<>.init<A>(_:selection:content:)();
    v54 = v73;
    InlinePickerStyle.init()();
    sub_1000AABC8(&qword_10018EF00, &qword_10018EEB8);
    v55 = v72;
    v56 = v75;
    View.pickerStyle<A>(_:)();
    (*(v74 + 8))(v54, v56);
    (*(v71 + 8))(v53, v55);
    v57 = sub_100003768(&qword_10018EEE0, &qword_10012BDB8);
    v58 = v52;
    v59 = 0;
  }

  else
  {
    v57 = sub_100003768(&qword_10018EEE0, &qword_10012BDB8);
    v58 = v52;
    v59 = 1;
  }

  sub_100003CE8(v58, v59, 1, v57);
  v60 = v77;
  sub_10002BE60(v38, v77, &qword_10018EED0, &qword_10012BDA8);
  v61 = v78;
  sub_10002BE60(v52, v78, &qword_10018EEC0, &qword_10012BD98);
  v62 = v79;
  sub_10002BE60(v60, v79, &qword_10018EED0, &qword_10012BDA8);
  v63 = sub_100003768(&qword_10018EEE8, &qword_10012BDC0);
  sub_10002BE60(v61, v62 + *(v63 + 48), &qword_10018EEC0, &qword_10012BD98);
  sub_1000AA8C8(v52, &qword_10018EEC0);
  sub_1000AA8C8(v38, &qword_10018EED0);
  sub_1000AA8C8(v61, &qword_10018EEC0);
  return sub_1000AA8C8(v60, &qword_10018EED0);
}

uint64_t sub_1000A6628@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  LODWORD(v44) = a3;
  v7 = type metadata accessor for InlinePickerStyle();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003768(&qword_10018EE48, &qword_10012BD48);
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v45 = &v40 - v14;
  v15 = sub_100003768(&qword_10018EE50, &qword_10012BD50);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  v22 = sub_100003768(&qword_10018EE58, &qword_10012BD58);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v40 - v27;
  v29 = sub_100003768(&qword_10018EE60, &qword_10012BD60);
  v30 = sub_100003CE8(v28, 1, 1, v29);
  if (a2)
  {
    v42 = &v40;
    v51 = 0;
    v52 = 0xE000000000000000;
    v53 = &off_1001765A0;
    v48 = a1;
    v49 = a2;
    v50 = v44;
    __chkstk_darwin(v30);
    v43 = v28;
    v31 = v8;

    sub_100003768(&qword_10018EE78, &qword_10012BD78);
    v44 = v26;
    v41 = v7;
    sub_10006F790();
    sub_1000AAABC(&qword_10018EE80, &qword_10018EE78);
    sub_10000AC24();
    v32 = v45;
    Picker<>.init<A>(_:selection:content:)();
    InlinePickerStyle.init()();
    sub_1000AABC8(&qword_10018EE88, &qword_10018EE48);
    v33 = v47;
    v34 = v41;
    View.pickerStyle<A>(_:)();
    v26 = v44;
    (*(v31 + 8))(v11, v34);
    v28 = v43;
    (*(v46 + 8))(v32, v33);
    v35 = sub_100003768(&qword_10018EE68, &qword_10012BD68);
    v36 = v21;
    v37 = 0;
  }

  else
  {
    v35 = sub_100003768(&qword_10018EE68, &qword_10012BD68);
    v36 = v21;
    v37 = 1;
  }

  sub_100003CE8(v36, v37, 1, v35);
  sub_10002BE60(v28, v26, &qword_10018EE58, &qword_10012BD58);
  sub_10002BE60(v21, v19, &qword_10018EE50, &qword_10012BD50);
  sub_10002BE60(v26, a4, &qword_10018EE58, &qword_10012BD58);
  v38 = sub_100003768(&qword_10018EE70, &qword_10012BD70);
  sub_10002BE60(v19, a4 + *(v38 + 48), &qword_10018EE50, &qword_10012BD50);
  sub_1000AA8C8(v21, &qword_10018EE50);
  sub_1000AA8C8(v28, &qword_10018EE58);
  sub_1000AA8C8(v19, &qword_10018EE50);
  return sub_1000AA8C8(v26, &qword_10018EE58);
}

uint64_t sub_1000A6B50@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v73 = a5;
  v11 = type metadata accessor for InlinePickerStyle();
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = *(v78 + 64);
  __chkstk_darwin(v11);
  v77 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003768(&qword_10018EDA8, &qword_10012BCD8);
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  __chkstk_darwin(v14);
  v74 = v67 - v16;
  v17 = sub_100003768(&qword_10018EDB0, &qword_10012BCE0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v82 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v81 = v67 - v21;
  v22 = sub_100003768(&qword_10018EDB8, &qword_10012BCE8);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v72 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = v67 - v26;
  v28 = sub_100003768(&qword_10018EDC0, &qword_10012BCF0);
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = __chkstk_darwin(v28);
  v71 = v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = v67 - v33;
  v35 = sub_100003768(&qword_10018EDC8, &qword_10012BCF8);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v80 = v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = v67 - v39;
  if (a1 && *(a1 + 16) == 1)
  {

    sub_10002C4B8(&off_100176B60);
    v68 = a3;
    v83 = v41;
    __chkstk_darwin(v41);
    v69 = a4;
    v70 = a6;
    sub_1000AA6C8();
    v67[1] = swift_getKeyPath();
    v42 = swift_allocObject();
    *(v42 + 16) = a2;
    *(v42 + 24) = a1;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1000AA754;
    *(v43 + 24) = v42;
    sub_100003768(&qword_10018EE08, &qword_10012BD20);
    sub_100003768(&qword_10018EE10, &qword_10012BD28);
    sub_1000AABC8(&qword_10018EE18, &qword_10018EE08);
    sub_10006417C();
    sub_1000AA79C();
    ForEach<>.init(_:id:content:)();
    Divider.init()();
    v44 = type metadata accessor for Divider();
    sub_100003CE8(v27, 0, 1, v44);
    v45 = v29[2];
    v46 = v71;
    v45(v71, v34, v28);
    v47 = v72;
    sub_10002BE60(v27, v72, &qword_10018EDB8, &qword_10012BCE8);
    v45(v40, v46, v28);
    a6 = v70;
    v48 = sub_100003768(&qword_10018EE28, &qword_10012BD30);
    sub_10002BE60(v47, &v40[*(v48 + 48)], &qword_10018EDB8, &qword_10012BCE8);
    sub_1000AA8C8(v27, &qword_10018EDB8);
    v49 = v29[1];
    v49(v34, v28);
    v50 = v47;
    a3 = v68;
    a4 = v69;
    sub_1000AA8C8(v50, &qword_10018EDB8);
    v49(v46, v28);
    v51 = sub_100003768(&qword_10018EDD0, &qword_10012BD00);
    v52 = v40;
    v53 = 0;
  }

  else
  {
    v51 = sub_100003768(&qword_10018EDD0, &qword_10012BD00);
    v52 = v40;
    v53 = 1;
  }

  v54 = sub_100003CE8(v52, v53, 1, v51);
  if (a4)
  {
    v86 = 0;
    v87 = 0xE000000000000000;
    v88 = &off_100176390;
    v83 = a3;
    v84 = a4;
    v85 = v73;
    __chkstk_darwin(v54);

    sub_100003768(&qword_10018EDE8, &qword_10012BD18);
    sub_10006417C();
    sub_1000AAABC(&qword_10018EDF0, &qword_10018EDE8);
    sub_10000AC24();
    v55 = v74;
    Picker<>.init<A>(_:selection:content:)();
    v56 = v77;
    InlinePickerStyle.init()();
    sub_1000AABC8(&qword_10018EDF8, &qword_10018EDA8);
    v57 = v81;
    v58 = v76;
    v59 = v79;
    View.pickerStyle<A>(_:)();
    (*(v78 + 8))(v56, v59);
    (*(v75 + 8))(v55, v58);
    v60 = sub_100003768(&qword_10018EDD8, &qword_10012BD08);
    v61 = v57;
    v62 = 0;
  }

  else
  {
    v60 = sub_100003768(&qword_10018EDD8, &qword_10012BD08);
    v57 = v81;
    v61 = v81;
    v62 = 1;
  }

  sub_100003CE8(v61, v62, 1, v60);
  v63 = v80;
  sub_10002BE60(v40, v80, &qword_10018EDC8, &qword_10012BCF8);
  v64 = v82;
  sub_10002BE60(v57, v82, &qword_10018EDB0, &qword_10012BCE0);
  sub_10002BE60(v63, a6, &qword_10018EDC8, &qword_10012BCF8);
  v65 = sub_100003768(&qword_10018EDE0, &qword_10012BD10);
  sub_10002BE60(v64, a6 + *(v65 + 48), &qword_10018EDB0, &qword_10012BCE0);
  sub_1000AA8C8(v57, &qword_10018EDB0);
  sub_1000AA8C8(v40, &qword_10018EDC8);
  sub_1000AA8C8(v64, &qword_10018EDB0);
  return sub_1000AA8C8(v63, &qword_10018EDC8);
}

uint64_t sub_1000A7444@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v52 = a1;
  v54 = a2;
  v2 = type metadata accessor for InlinePickerStyle();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  __chkstk_darwin(v2);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_10018ED30, &qword_10012BC68);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  __chkstk_darwin(v6);
  v9 = v46 - v8;
  v10 = sub_100003768(&qword_10018EC20, &qword_10012BA20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v46 - v12;
  v14 = sub_100003768(&qword_10018ECE0, &qword_10012BBC8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v46 - v19;
  v21 = sub_100003768(&qword_10018ED38, &qword_10012BC70);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v53 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v46 - v25;
  v27 = sub_100003768(&qword_10018ED40, &qword_10012BC78);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = v46 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v46 - v32;
  v34 = sub_100003768(&qword_10018ED48, &qword_10012BC80);
  sub_100003CE8(v33, 1, 1, v34);
  sub_10002BE60(v52, v13, &qword_10018EC20, &qword_10012BA20);
  if (sub_10000E5F0(v13, 1, v14) == 1)
  {
    sub_1000AA8C8(v13, &qword_10018EC20);
    v35 = sub_100003768(&qword_10018ED50, &qword_10012BC88);
    sub_100003CE8(v26, 1, 1, v35);
  }

  else
  {
    v48 = v20;
    sub_1000AA41C(v13, v20);
    v52 = sub_100067958();
    v55 = 0;
    v56 = 0xE000000000000000;
    v57 = v52;
    v46[3] = v18;
    v36 = sub_10002BE60(v20, v18, &qword_10018ECE0, &qword_10012BBC8);
    v46[4] = v46;
    __chkstk_darwin(v36);
    v46[2] = type metadata accessor for DefaultFlowOverride();
    v47 = v6;
    v38 = v49;
    v37 = v50;
    v46[1] = sub_100003768(&qword_10018ED60, &unk_10012BC98);
    sub_1000AA668(&qword_10018CAD0, type metadata accessor for DefaultFlowOverride);
    sub_1000AAABC(&qword_10018ED68, &qword_10018ED60);
    sub_10000AC24();
    Picker<>.init<A>(_:selection:content:)();
    InlinePickerStyle.init()();
    sub_1000AABC8(&qword_10018ED78, &qword_10018ED30);
    v39 = v47;
    v40 = v51;
    View.pickerStyle<A>(_:)();
    (*(v37 + 8))(v5, v40);
    (*(v38 + 8))(v9, v39);
    sub_1000AA8C8(v48, &qword_10018ECE0);
    v41 = sub_100003768(&qword_10018ED50, &qword_10012BC88);
    sub_100003CE8(v26, 0, 1, v41);
  }

  sub_10002BE60(v33, v31, &qword_10018ED40, &qword_10012BC78);
  v42 = v53;
  sub_10002BE60(v26, v53, &qword_10018ED38, &qword_10012BC70);
  v43 = v54;
  sub_10002BE60(v31, v54, &qword_10018ED40, &qword_10012BC78);
  v44 = sub_100003768(&qword_10018ED58, &qword_10012BC90);
  sub_10002BE60(v42, v43 + *(v44 + 48), &qword_10018ED38, &qword_10012BC70);
  sub_1000AA8C8(v26, &qword_10018ED38);
  sub_1000AA8C8(v33, &qword_10018ED40);
  sub_1000AA8C8(v42, &qword_10018ED38);
  return sub_1000AA8C8(v31, &qword_10018ED40);
}

uint64_t sub_1000A7AC4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a3;
  v42 = a2;
  v8 = type metadata accessor for MenuActionDismissBehavior();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003768(&qword_10018ED10, &qword_10012BC08);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = sub_100003768(&qword_10018EE30, &qword_10012BD38);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v23 = &v34 - v22;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(a4 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    JUMPOUT(0x1000A7F38);
  }

  v35 = v14;
  v36 = v9;
  v37 = v8;
  v38 = v21;
  v24 = a4 + 24 * a1;
  v25 = *(v24 + 32);
  v26 = *(v24 + 40);
  v27 = *(v24 + 48);
  v28 = 0xE900000000000072;
  v39 = v20;
  v40 = a1;
  v41 = a5;
  switch(v42)
  {
    case 1:
      v28 = 0xE400000000000000;
      break;
    case 2:
      v28 = 0x8000000100137C20;
      break;
    case 3:
      v28 = 0x8000000100137C00;
      break;
    default:
      break;
  }

  __chkstk_darwin(v20);
  *(&v34 - 4) = v29;
  *(&v34 - 3) = v28;
  *(&v34 - 16) = v43;

  Toggle.init(isOn:label:)();

  static MenuActionDismissBehavior.disabled.getter();
  v30 = sub_1000AABC8(&qword_10018ED18, &qword_10018ED10);
  View.menuActionDismissBehavior(_:)();
  (*(v36 + 8))(v12, v37);
  (*(v35 + 8))(v17, v13);
  static String.overrideMenuSubContentMenuToggleFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100121620;
  *(v31 + 56) = &type metadata for Int;
  *(v31 + 64) = &protocol witness table for Int;
  *(v31 + 32) = v40;
  String.init(format:_:)();

  v44 = v13;
  v45 = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v39;
  View.accessibilityIdentifier(_:)();

  return (*(v38 + 8))(v23, v32);
}

uint64_t sub_1000A7F48@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v36) = a2;
  v7 = type metadata accessor for MenuActionDismissBehavior();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003768(&qword_10018ED10, &qword_10012BC08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = sub_100003768(&qword_10018EE30, &qword_10012BD38);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = __chkstk_darwin(v16);
  v21 = &v32 - v20;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a1)
  {
    v32 = v7;
    v33 = v11;
    v22 = a3 + 24 * a1;
    v35 = a4;
    v24 = *(v22 + 32);
    v23 = *(v22 + 40);
    v25 = *(v22 + 48);
    v26 = __chkstk_darwin(result);
    v34 = a1;
    *(&v32 - 4) = 0xD000000000000013;
    *(&v32 - 3) = v27;
    *(&v32 - 16) = v36;
    v36 = v26;

    Toggle.init(isOn:label:)();
    static MenuActionDismissBehavior.disabled.getter();
    v28 = sub_1000AABC8(&qword_10018ED18, &qword_10018ED10);
    v29 = v33;
    View.menuActionDismissBehavior(_:)();
    (*(v37 + 8))(v10, v32);
    (*(v12 + 8))(v15, v29);
    static String.overrideMenuSubContentMenuToggleFormat.getter();
    sub_100003768(&qword_100188810, &unk_100121780);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100121620;
    *(v30 + 56) = &type metadata for Int;
    *(v30 + 64) = &protocol witness table for Int;
    *(v30 + 32) = v34;
    String.init(format:_:)();

    v38 = v29;
    v39 = v28;
    swift_getOpaqueTypeConformance2();
    v31 = v36;
    View.accessibilityIdentifier(_:)();

    return (*(v17 + 8))(v21, v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A8340@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v36) = a2;
  v7 = type metadata accessor for MenuActionDismissBehavior();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003768(&qword_10018ED10, &qword_10012BC08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = sub_100003768(&qword_10018EE30, &qword_10012BD38);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = __chkstk_darwin(v16);
  v21 = &v32 - v20;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a1)
  {
    v32 = v7;
    v33 = v11;
    v22 = a3 + 24 * a1;
    v35 = a4;
    v24 = *(v22 + 32);
    v23 = *(v22 + 40);
    v25 = *(v22 + 48);
    v26 = __chkstk_darwin(result);
    v34 = a1;
    *(&v32 - 4) = 0xD000000000000011;
    *(&v32 - 3) = v27;
    *(&v32 - 16) = v36;
    v36 = v26;

    Toggle.init(isOn:label:)();
    static MenuActionDismissBehavior.disabled.getter();
    v28 = sub_1000AABC8(&qword_10018ED18, &qword_10018ED10);
    v29 = v33;
    View.menuActionDismissBehavior(_:)();
    (*(v37 + 8))(v10, v32);
    (*(v12 + 8))(v15, v29);
    static String.overrideMenuSubContentMenuToggleFormat.getter();
    sub_100003768(&qword_100188810, &unk_100121780);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100121620;
    *(v30 + 56) = &type metadata for Int;
    *(v30 + 64) = &protocol witness table for Int;
    *(v30 + 32) = v34;
    String.init(format:_:)();

    v38 = v29;
    v39 = v28;
    swift_getOpaqueTypeConformance2();
    v31 = v36;
    View.accessibilityIdentifier(_:)();

    return (*(v17 + 8))(v21, v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A8738@<X0>(unint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v9 = type metadata accessor for MenuActionDismissBehavior();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003768(&qword_10018ED10, &qword_10012BC08);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v37 - v17;
  v19 = sub_100003768(&qword_10018EE30, &qword_10012BD38);
  v20 = *(*(v19 - 8) + 64);
  result = __chkstk_darwin(v19);
  v24 = v37 - v23;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a4 + 16) > a1)
  {
    v25 = a4 + 24 * a1;
    v26 = a2;
    v27 = v10;
    v28 = *(v25 + 32);
    v29 = *(v25 + 40);
    v39 = v14;
    v40 = v9;
    v37[1] = *(v25 + 48);
    v42 = result;
    v43 = v22;
    v38 = v24;
    v30 = sub_100063DA4(v26);
    v41 = a1;
    *&v37[-8] = __chkstk_darwin(v30);
    *&v37[-6] = v31;
    LOBYTE(v37[-4]) = a3;

    Toggle.init(isOn:label:)();

    static MenuActionDismissBehavior.disabled.getter();
    v32 = sub_1000AABC8(&qword_10018ED18, &qword_10018ED10);
    v34 = v38;
    v33 = v39;
    View.menuActionDismissBehavior(_:)();
    (*(v27 + 8))(v13, v40);
    (*(v15 + 8))(v18, v33);
    static String.overrideMenuSubContentMenuToggleFormat.getter();
    sub_100003768(&qword_100188810, &unk_100121780);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100121620;
    *(v35 + 56) = &type metadata for Int;
    *(v35 + 64) = &protocol witness table for Int;
    *(v35 + 32) = v41;
    String.init(format:_:)();

    v45 = v33;
    v46 = v32;
    swift_getOpaqueTypeConformance2();
    v36 = v42;
    View.accessibilityIdentifier(_:)();

    return (*(v43 + 8))(v34, v36);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A8B3C(uint64_t a1)
{
  sub_10002C334(a1);
  sub_1000AAB24();
  swift_getKeyPath();
  sub_100003768(&qword_10018F010, &qword_10012BE80);
  sub_100003768(&qword_100189580, &qword_100123A50);
  sub_1000AABC8(&qword_10018F018, &qword_10018F010);
  sub_10009DCCC();
  sub_1000AA5AC();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000A8C50()
{
  sub_10002C348();
  sub_1000AAA44();
  swift_getKeyPath();
  sub_100003768(&qword_10018EF90, &qword_10012BE28);
  sub_100003768(&qword_100189580, &qword_100123A50);
  sub_1000AABC8(&qword_10018EF98, &qword_10018EF90);
  sub_10009B770();
  sub_1000AA5AC();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000A8D64()
{
  sub_10002C35C();
  sub_1000AA9A0();
  swift_getKeyPath();
  sub_100003768(&qword_10018EF10, &qword_10012BDD0);
  sub_100003768(&qword_100189580, &qword_100123A50);
  sub_1000AABC8(&qword_10018EF18, &qword_10018EF10);
  sub_100006D24();
  sub_1000AA5AC();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000A8E78(uint64_t a1)
{
  sub_10002C4A4(a1);
  sub_1000AA934();
  swift_getKeyPath();
  sub_100003768(&qword_10018EE98, &qword_10012BD80);
  sub_100003768(&qword_100189580, &qword_100123A50);
  sub_1000AABC8(&qword_10018EEA0, &qword_10018EE98);
  sub_10006F790();
  sub_1000AA5AC();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000A8F8C(uint64_t a1)
{
  sub_10002C4B8(a1);
  sub_1000AA6C8();
  swift_getKeyPath();
  sub_100003768(&qword_10018EE08, &qword_10012BD20);
  sub_100003768(&qword_100189580, &qword_100123A50);
  sub_1000AABC8(&qword_10018EE18, &qword_10018EE08);
  sub_10006417C();
  sub_1000AA5AC();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000A90A0()
{
  sub_10002C618();
  type metadata accessor for DefaultFlowOverride();
  sub_1000AA668(&qword_10018ED80, type metadata accessor for DefaultFlowOverride);
  swift_getKeyPath();
  sub_100003768(&qword_10018ED88, &qword_10012BCC8);
  sub_100003768(&qword_100189580, &qword_100123A50);
  sub_1000AABC8(&qword_10018ED90, &qword_10018ED88);
  sub_1000AA668(&qword_10018CAD0, type metadata accessor for DefaultFlowOverride);
  sub_1000AA5AC();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000A9210(uint64_t a1)
{
  sub_10000AC24();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5 & 1;
  static String.overrideMenuSubContentMenuPickerFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100121620;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = a1;
  String.init(format:_:)();

  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v2, v4, v6);
}

uint64_t sub_1000A93DC(uint64_t a1)
{
  sub_10000AC24();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5 & 1;
  static String.overrideMenuSubContentMenuPickerFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100121620;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = a1;
  String.init(format:_:)();

  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v2, v4, v6);
}

uint64_t sub_1000A952C(uint64_t a1)
{
  sub_10000AC24();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5 & 1;
  static String.overrideMenuSubContentMenuPickerFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100121620;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = a1;
  String.init(format:_:)();

  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v2, v4, v6);
}

uint64_t sub_1000A967C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_10000AC24();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7 & 1;
  static String.overrideMenuSubContentMenuPickerFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100121620;
  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  *(v9 + 32) = a1;
  sub_1000AAD00();
  String.init(format:_:)();

  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v4, v6, v8);
}

uint64_t sub_1000A97BC(uint64_t a1)
{
  sub_100067570();
  sub_10000AC24();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5 & 1;
  static String.overrideMenuSubContentMenuPickerFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100121620;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = a1;
  String.init(format:_:)();

  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v2, v4, v6);
}

uint64_t sub_1000A98FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1 + *(sub_100003768(&qword_10018A5A0, &qword_1001244C0) + 48);

  return sub_1000A97BC(v1);
}

uint64_t sub_1000A9960@<X0>(uint64_t a1@<X8>)
{
  sub_10000AC24();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_1000A9B58()
{
  result = qword_10018EBA8;
  if (!qword_10018EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EBA8);
  }

  return result;
}

unint64_t sub_1000A9BAC()
{
  result = qword_10018EBB0;
  if (!qword_10018EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EBB0);
  }

  return result;
}

uint64_t sub_1000A9CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000A9CF0()
{
  result = qword_10018EC08;
  if (!qword_10018EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC08);
  }

  return result;
}

unint64_t sub_1000A9D44()
{
  result = qword_10018EC10;
  if (!qword_10018EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC10);
  }

  return result;
}

unint64_t sub_1000A9D9C()
{
  result = qword_10018EC18;
  if (!qword_10018EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC18);
  }

  return result;
}

unint64_t sub_1000A9E00()
{
  result = qword_10018EC48;
  if (!qword_10018EC48)
  {
    sub_100004D48(&qword_10018EC40, &qword_10012BA88);
    sub_1000AABC8(&qword_10018EC50, &qword_10018EC58);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC48);
  }

  return result;
}

uint64_t sub_1000A9EE8()
{
  sub_1000086BC((v0 + 16));
  sub_1000AAC80();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_1000A9F30()
{
  result = qword_10018EC68;
  if (!qword_10018EC68)
  {
    sub_100004D48(&qword_10018EC60, &qword_10012BAC0);
    sub_1000AABC8(&qword_10018EC70, &qword_10018EC78);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC68);
  }

  return result;
}

unint64_t sub_1000AA020()
{
  result = qword_10018EC88;
  if (!qword_10018EC88)
  {
    sub_100004D48(&qword_10018EC80, &qword_10012BAF8);
    sub_1000AABC8(&qword_10018EC90, &qword_10018EC98);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC88);
  }

  return result;
}

unint64_t sub_1000AA110()
{
  result = qword_10018ECA8;
  if (!qword_10018ECA8)
  {
    sub_100004D48(&qword_10018ECA0, &qword_10012BB30);
    sub_1000AABC8(&qword_10018ECB0, &qword_10018ECB8);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ECA8);
  }

  return result;
}

unint64_t sub_1000AA208()
{
  result = qword_10018ECC8;
  if (!qword_10018ECC8)
  {
    sub_100004D48(&qword_10018ECC0, &qword_10012BB90);
    sub_1000AABC8(&qword_10018ECD0, &qword_10018ECD8);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ECC8);
  }

  return result;
}

unint64_t sub_1000AA2F8()
{
  result = qword_10018ECF0;
  if (!qword_10018ECF0)
  {
    sub_100004D48(&qword_10018ECE8, &qword_10012BBD0);
    sub_1000AABC8(&qword_10018ECF8, &qword_10018ED00);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ECF0);
  }

  return result;
}

uint64_t sub_1000AA3E8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1000A49B4(a1);
}

uint64_t sub_1000AA404@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000A7444(*(v1 + 32), a1);
}

uint64_t sub_1000AA41C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018ECE0, &qword_10012BBC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000AA5AC()
{
  result = qword_10018ED70;
  if (!qword_10018ED70)
  {
    sub_100004D48(&qword_100189580, &qword_100123A50);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ED70);
  }

  return result;
}

uint64_t sub_1000AA668(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000AA6C8()
{
  result = qword_10018EE00;
  if (!qword_10018EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EE00);
  }

  return result;
}

uint64_t sub_1000AA71C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AA760()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000AA79C()
{
  result = qword_10018EE20;
  if (!qword_10018EE20)
  {
    sub_100004D48(&qword_10018EE10, &qword_10012BD28);
    sub_100004D48(&qword_10018ED10, &qword_10012BC08);
    sub_1000AABC8(&qword_10018ED18, &qword_10018ED10);
    swift_getOpaqueTypeConformance2();
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EE20);
  }

  return result;
}

uint64_t sub_1000AA8C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000AAD18(a1, a2);
  v5 = sub_100003768(v3, v4);
  sub_10000AF7C(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1000AA91C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000AA4F4(*(v1 + 32), a1);
}

unint64_t sub_1000AA934()
{
  result = qword_10018EE90;
  if (!qword_10018EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EE90);
  }

  return result;
}

unint64_t sub_1000AA9A0()
{
  result = qword_10018EF08;
  if (!qword_10018EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EF08);
  }

  return result;
}

uint64_t sub_1000AAA00(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_1000AAA44()
{
  result = qword_10018EF88;
  if (!qword_10018EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EF88);
  }

  return result;
}

uint64_t sub_1000AAABC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_1000AAD18(0, a2);
    sub_100004D48(v4, v5);
    sub_1000AA5AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000AAB24()
{
  result = qword_10018F008;
  if (!qword_10018F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F008);
  }

  return result;
}

uint64_t sub_1000AAB84(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v6 = *(a1 + 8);
  return v2(v4, &v6);
}

uint64_t sub_1000AABC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_1000AAD18(0, a2);
    sub_100004D48(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000AAC40(unint64_t *a1)
{

  return sub_1000AABC8(a1, v1);
}

uint64_t sub_1000AAC8C()
{

  return Bindable<A>.subscript.getter();
}

uint64_t sub_1000AACA8()
{

  return Bindable<A>.subscript.getter();
}

uint64_t *sub_1000AACC4(uint64_t a1)
{
  *(v1 - 128) = a1;

  return sub_10003EE2C((v1 - 160));
}

void sub_1000AAD0C()
{
  v1 = *(v0 - 120);
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);
}

uint64_t sub_1000AAD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_10018C138, &unk_10012BE90);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000AAE04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_10018C138, &unk_10012BE90);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FlowListItemView()
{
  result = qword_10018F080;
  if (!qword_10018F080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AAF04()
{
  sub_1000AAF88();
  if (v0 <= 0x3F)
  {
    sub_1000AAFE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000AAF88()
{
  if (!qword_10018C1B8)
  {
    type metadata accessor for ContentSizeCategory();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10018C1B8);
    }
  }
}

unint64_t sub_1000AAFE0()
{
  result = qword_10018E470;
  if (!qword_10018E470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018E470);
  }

  return result;
}

uint64_t sub_1000AB040@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = sub_100008780(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000C30C();
  v12 = v11 - v10;
  v13 = sub_100003768(&qword_10018C120, &qword_100127308);
  sub_10000AF7C(v13);
  v15 = *(v14 + 64);
  sub_10000ED78();
  __chkstk_darwin(v16);
  v18 = (&v24 - v17);
  sub_10000EC9C(v2, &v24 - v17, &qword_10018C120, &qword_100127308);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = type metadata accessor for ContentSizeCategory();
    sub_10000AF7C(v19);
    return (*(v20 + 32))(a1, v18);
  }

  else
  {
    v22 = *v18;
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v12, v4);
  }
}

void *sub_1000AB218@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v4 = sub_100008780(v3);
  v42 = v5;
  v43 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000C30C();
  v10 = v9 - v8;
  v41 = type metadata accessor for AccessibilityChildBehavior();
  v11 = sub_100008780(v41);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000C30C();
  v18 = v17 - v16;
  v19 = sub_100003768(&qword_10018F0B8, &qword_10012BF08);
  sub_10000AF7C(v19);
  v21 = *(v20 + 64);
  sub_10000ED78();
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  v25 = sub_100003768(&qword_10018F0C0, &qword_10012BF10);
  sub_100008780(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_10000ED78();
  __chkstk_darwin(v30);
  v32 = &v41 - v31;
  v33 = *(*(sub_100003768(&qword_10018F0C8, &qword_10012BF18) - 8) + 64);
  sub_10000ED78();
  __chkstk_darwin(v34);
  v36 = &v41 - v35;
  sub_1000AB580(v2, v24);
  static AccessibilityChildBehavior.combine.getter();
  v37 = sub_1000AD044();
  View.accessibilityElement(children:)();
  (*(v13 + 8))(v18, v41);
  sub_10000ABCC(v24, &qword_10018F0B8, &qword_10012BF08);
  static AccessibilityTraits.isButton.getter();
  __src[0] = v19;
  __src[1] = v37;
  swift_getOpaqueTypeConformance2();
  View.accessibilityAddTraits(_:)();
  (*(v42 + 8))(v10, v43);
  (*(v27 + 8))(v32, v25);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v38 = v44;
  sub_1000AD1AC(v36, v44);
  v39 = sub_100003768(&qword_10018F108, &qword_10012BF38);
  return memcpy((v38 + *(v39 + 36)), __src, 0x70uLL);
}

uint64_t sub_1000AB580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = sub_100003768(&qword_10018F100, &qword_10012BF30);
  v3 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v5 = &v28 - v4;
  v28 = sub_100003768(&qword_10018F110, &qword_10012BF40);
  v6 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v8 = &v28 - v7;
  v29 = sub_100003768(&qword_10018F0F0, &qword_10012BF28);
  v9 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ContentSizeCategory();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  sub_1000AB040(&v28 - v18);
  (*(v13 + 104))(v17, enum case for ContentSizeCategory.accessibilityMedium(_:), v12);
  v20 = sub_1000AB9A0(v19, v17);
  v21 = *(v13 + 8);
  v21(v17, v12);
  v21(v19, v12);
  if (v20)
  {
    *v11 = static VerticalAlignment.center.getter();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v22 = sub_100003768(&qword_10018F120, &qword_10012BF50);
    sub_1000ABDB8(a1, &v11[*(v22 + 44)]);
    v23 = &qword_10018F0F0;
    v24 = &qword_10012BF28;
    sub_10000EC9C(v11, v8, &qword_10018F0F0, &qword_10012BF28);
    swift_storeEnumTagMultiPayload();
    sub_10000AAEC(&qword_10018F0E8, &qword_10018F0F0, &qword_10012BF28);
    sub_10000AAEC(&qword_10018F0F8, &qword_10018F100, &qword_10012BF30);
    _ConditionalContent<>.init(storage:)();
    v25 = v11;
  }

  else
  {
    *v5 = static HorizontalAlignment.leading.getter();
    *(v5 + 1) = 0x4018000000000000;
    v5[16] = 0;
    v26 = sub_100003768(&qword_10018F118, &qword_10012BF48);
    sub_1000AC6A4(a1, &v5[*(v26 + 44)]);
    v23 = &qword_10018F100;
    v24 = &qword_10012BF30;
    sub_10000EC9C(v5, v8, &qword_10018F100, &qword_10012BF30);
    swift_storeEnumTagMultiPayload();
    sub_10000AAEC(&qword_10018F0E8, &qword_10018F0F0, &qword_10012BF28);
    sub_10000AAEC(&qword_10018F0F8, &qword_10018F100, &qword_10012BF30);
    _ConditionalContent<>.init(storage:)();
    v25 = v5;
  }

  return sub_10000ABCC(v25, v23, v24);
}

BOOL sub_1000AB9A0(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

uint64_t sub_1000ABDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34[1] = a1;
  v36 = a2;
  v3 = sub_100003768(&qword_10018F128, &qword_10012BF58);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v35 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v34 - v7;
  v9 = sub_100003768(&qword_10018F130, &qword_10012BF60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v34 - v11;
  v13 = sub_100003768(&qword_10018F138, &qword_10012BF68);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v34 - v15;
  v17 = sub_100003768(&qword_10018F140, &qword_10012BF70);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v34 - v23;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v25 = sub_100003768(&qword_10018F148, &qword_10012BF78);
  sub_1000ACC5C(a1, &v12[*(v25 + 44)]);
  sub_10000AAEC(&qword_10018F150, &qword_10018F130, &qword_10012BF60);
  View.accessibilityHidden(_:)();
  sub_10000ABCC(v12, &qword_10018F130, &qword_10012BF60);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000AD214(v16, v24);
  v26 = sub_100003768(&qword_10018F158, &qword_10012BF80);
  memcpy(&v24[*(v26 + 36)], __src, 0x70uLL);
  v27 = static Edge.Set.trailing.getter();
  v28 = &v24[*(v18 + 44)];
  *v28 = v27;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0x4000000000000000;
  v8[16] = 0;
  v29 = sub_100003768(&qword_10018F160, &qword_10012BF88);
  sub_1000AC1C0(&v8[*(v29 + 44)]);
  sub_10000EC9C(v24, v22, &qword_10018F140, &qword_10012BF70);
  v30 = v35;
  sub_10000EC9C(v8, v35, &qword_10018F128, &qword_10012BF58);
  v31 = v36;
  sub_10000EC9C(v22, v36, &qword_10018F140, &qword_10012BF70);
  v32 = sub_100003768(&qword_10018F168, &unk_10012BF90);
  sub_10000EC9C(v30, v31 + *(v32 + 48), &qword_10018F128, &qword_10012BF58);
  sub_10000ABCC(v8, &qword_10018F128, &qword_10012BF58);
  sub_10000ABCC(v24, &qword_10018F140, &qword_10012BF70);
  sub_10000ABCC(v30, &qword_10018F128, &qword_10012BF58);
  return sub_10000ABCC(v22, &qword_10018F140, &qword_10012BF70);
}

uint64_t sub_1000AC1C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003768(&qword_100188A28, &qword_100121D40);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = sub_100003768(&qword_10018F170, &qword_10012BFA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  *v15 = static VerticalAlignment.firstTextLineCenter.getter();
  *(v15 + 1) = 0x4010000000000000;
  v15[16] = 0;
  v16 = &v15[*(sub_100003768(&qword_10018F178, &qword_10012BFA8) + 44)];
  sub_1000AC3D8();
  sub_1000AC538();
  sub_10000EC9C(v15, v13, &qword_10018F170, &qword_10012BFA0);
  sub_10000EC9C(v8, v6, &qword_100188A28, &qword_100121D40);
  sub_10000EC9C(v13, a1, &qword_10018F170, &qword_10012BFA0);
  v17 = sub_100003768(&qword_10018F180, &qword_10012BFB0);
  sub_10000EC9C(v6, a1 + *(v17 + 48), &qword_100188A28, &qword_100121D40);
  sub_10000ABCC(v8, &qword_100188A28, &qword_100121D40);
  sub_10000ABCC(v15, &qword_10018F170, &qword_10012BFA0);
  sub_10000ABCC(v6, &qword_100188A28, &qword_100121D40);
  return sub_10000ABCC(v13, &qword_10018F170, &qword_10012BFA0);
}

uint64_t sub_1000AC3D8()
{
  type metadata accessor for FlowViewDataProvider(0);
  v1 = type metadata accessor for FlowListItemView();
  sub_100090EAC(*(v0 + *(v1 + 20)));
  sub_10000AC24();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.headline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10000AC78(v2, v4, v6 & 1);

  static String.landingListTopicTitle.getter();
  sub_100003768(&qword_100188A38, &qword_100121D48);
  sub_10000AC88();
  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v7, v9, v11 & 1);
}

uint64_t sub_1000AC538()
{
  type metadata accessor for FlowViewDataProvider(0);
  v1 = type metadata accessor for FlowListItemView();
  sub_100090CE4(*(v0 + *(v1 + 20)));
  sub_10000AC24();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static HierarchicalShapeStyle.secondary.getter();
  v7 = Text.foregroundStyle<A>(_:)();
  v9 = v8;
  v11 = v10;
  sub_10000AC78(v2, v4, v6 & 1);

  static String.landingListTopicDescription.getter();
  sub_100003768(&qword_100188A38, &qword_100121D48);
  sub_10000AC88();
  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v7, v9, v11 & 1);
}

uint64_t sub_1000AC6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v3 = sub_100003768(&qword_10018F1D8, &qword_10012C0D8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_100003768(&qword_10018F130, &qword_10012BF60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v14 = sub_100003768(&qword_10018F138, &qword_10012BF68);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v32 - v16;
  v18 = sub_100003768(&qword_10018F1E0, &qword_10012C0E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v32 - v23;
  *v24 = static VerticalAlignment.top.getter();
  *(v24 + 1) = 0;
  v24[16] = 1;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v25 = sub_100003768(&qword_10018F148, &qword_10012BF78);
  sub_1000ACC5C(a1, &v13[*(v25 + 44)]);
  sub_10000AAEC(&qword_10018F150, &qword_10018F130, &qword_10012BF60);
  View.accessibilityHidden(_:)();
  sub_10000ABCC(v13, &qword_10018F130, &qword_10012BF60);
  static Alignment.center.getter();
  v26 = &v24[*(sub_100003768(&qword_10018F1E8, &qword_10012C0E8) + 44)];
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000AD214(v17, v26);
  v27 = sub_100003768(&qword_10018F158, &qword_10012BF80);
  memcpy((v26 + *(v27 + 36)), __src, 0x70uLL);
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v28 = sub_100003768(&qword_10018F1F0, &qword_10012C0F0);
  sub_1000ACAAC(&v9[*(v28 + 44)]);
  sub_10000EC9C(v24, v22, &qword_10018F1E0, &qword_10012C0E0);
  sub_10000EC9C(v9, v7, &qword_10018F1D8, &qword_10012C0D8);
  v29 = v33;
  sub_10000EC9C(v22, v33, &qword_10018F1E0, &qword_10012C0E0);
  v30 = sub_100003768(&qword_10018F1F8, &qword_10012C0F8);
  sub_10000EC9C(v7, v29 + *(v30 + 48), &qword_10018F1D8, &qword_10012C0D8);
  sub_10000ABCC(v9, &qword_10018F1D8, &qword_10012C0D8);
  sub_10000ABCC(v24, &qword_10018F1E0, &qword_10012C0E0);
  sub_10000ABCC(v7, &qword_10018F1D8, &qword_10012C0D8);
  return sub_10000ABCC(v22, &qword_10018F1E0, &qword_10012C0E0);
}

uint64_t sub_1000ACAAC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003768(&qword_100188A28, &qword_100121D40);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v17 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v17 - v11;
  __chkstk_darwin(v10);
  v14 = &v17 - v13;
  sub_1000AC3D8();
  sub_1000AC538();
  sub_10000EC9C(v14, v9, &qword_100188A28, &qword_100121D40);
  sub_10000EC9C(v12, v6, &qword_100188A28, &qword_100121D40);
  sub_10000EC9C(v9, a1, &qword_100188A28, &qword_100121D40);
  v15 = sub_100003768(&qword_10018F200, &unk_10012C100);
  sub_10000EC9C(v6, a1 + *(v15 + 48), &qword_100188A28, &qword_100121D40);
  sub_10000ABCC(v12, &qword_100188A28, &qword_100121D40);
  sub_10000ABCC(v14, &qword_100188A28, &qword_100121D40);
  sub_10000ABCC(v6, &qword_100188A28, &qword_100121D40);
  return sub_10000ABCC(v9, &qword_100188A28, &qword_100121D40);
}

uint64_t sub_1000ACC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_100003768(qword_10018A760, &qword_100124970);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v43 - v5;
  v7 = sub_100003768(&qword_10018F188, &qword_10012BFB8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v43 - v13);
  type metadata accessor for FlowViewDataProvider(0);
  v15 = *(a1 + *(type metadata accessor for FlowListItemView() + 20));
  sub_100090CF0(v15);
  v16 = Image.init(_internalSystemName:)();
  v17 = sub_10005A4EC();
  v18 = (v14 + *(sub_100003768(&qword_10018F190, &qword_10012BFC0) + 36));
  v19 = *(sub_100003768(&qword_10018F198, &qword_10012BFC8) + 28);
  static SymbolColorRenderingMode.gradient.getter();
  v20 = type metadata accessor for SymbolColorRenderingMode();
  sub_100003CE8(v18 + v19, 0, 1, v20);
  *v18 = swift_getKeyPath();
  *v14 = v16;
  v14[1] = v17;
  v21 = (v14 + *(sub_100003768(&qword_10018F1A0, &unk_10012C000) + 36));
  v22 = *(sub_100003768(&qword_10018A7F8, &qword_100124AE8) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v23 = type metadata accessor for SymbolRenderingMode();
  sub_100003CE8(v21 + v22, 0, 1, v23);
  *v21 = swift_getKeyPath();
  v24 = v14 + *(sub_100003768(&qword_10018F1A8, &qword_10012C040) + 36);
  *v24 = 0;
  *(v24 + 4) = 1;
  static Font.Weight.semibold.getter();
  v25 = type metadata accessor for Font.Design();
  sub_100003CE8(v6, 1, 1, v25);
  v26 = static Font.system(size:weight:design:)();
  sub_10000ABCC(v6, qword_10018A760, &qword_100124970);
  KeyPath = swift_getKeyPath();
  v28 = (v14 + *(sub_100003768(&qword_10018F1B0, &qword_10012C078) + 36));
  *v28 = KeyPath;
  v28[1] = v26;
  LOBYTE(v26) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v14 + *(sub_100003768(&qword_10018F1B8, &unk_10012C080) + 36);
  *v37 = v26;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = (v14 + *(v8 + 44));
  v39 = v38 + *(sub_100003768(&qword_10018ACB0, &qword_100125420) + 28);
  sub_100090D40(v15);
  *v38 = swift_getKeyPath();
  sub_10000EC9C(v14, v12, &qword_10018F188, &qword_10012BFB8);
  v40 = v44;
  sub_10000EC9C(v12, v44, &qword_10018F188, &qword_10012BFB8);
  v41 = v40 + *(sub_100003768(&qword_10018F1C0, &qword_10012C0C0) + 48);
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_10000ABCC(v14, &qword_10018F188, &qword_10012BFB8);
  return sub_10000ABCC(v12, &qword_10018F188, &qword_10012BFB8);
}

unint64_t sub_1000AD044()
{
  result = qword_10018F0D0;
  if (!qword_10018F0D0)
  {
    sub_100004D48(&qword_10018F0B8, &qword_10012BF08);
    sub_1000AD0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F0D0);
  }

  return result;
}

unint64_t sub_1000AD0C8()
{
  result = qword_10018F0D8;
  if (!qword_10018F0D8)
  {
    sub_100004D48(&qword_10018F0E0, &qword_10012BF20);
    sub_10000AAEC(&qword_10018F0E8, &qword_10018F0F0, &qword_10012BF28);
    sub_10000AAEC(&qword_10018F0F8, &qword_10018F100, &qword_10012BF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F0D8);
  }

  return result;
}

uint64_t sub_1000AD1AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018F0C8, &qword_10012BF18);
  sub_10000AF7C(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000AD214(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018F138, &qword_10012BF68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AD354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = *(*(sub_100003768(a5, a6) - 8) + 64);
  sub_10000ED78();
  __chkstk_darwin(v12);
  v14 = &v16 - v13;
  sub_10000EC9C(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

unint64_t sub_1000AD43C()
{
  result = qword_10018F208;
  if (!qword_10018F208)
  {
    sub_100004D48(&qword_10018F108, &qword_10012BF38);
    sub_1000AD4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F208);
  }

  return result;
}

unint64_t sub_1000AD4C8()
{
  result = qword_10018F210[0];
  if (!qword_10018F210[0])
  {
    sub_100004D48(&qword_10018F0C8, &qword_10012BF18);
    sub_100004D48(&qword_10018F0B8, &qword_10012BF08);
    sub_1000AD044();
    swift_getOpaqueTypeConformance2();
    sub_1000233C4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10018F210);
  }

  return result;
}

uint64_t sub_1000AD5D4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ActionInfoType(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v26 - v13;
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  swift_storeEnumTagMultiPayload();
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_100003768(&qword_10018C108, &unk_10012AB40);
  v17 = *(v7 + 72);
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100121620;
  sub_10003F5BC(v16, v19 + v18);
  sub_10000B4E0(v30, v29);
  sub_10000B4E0(v29, v28);
  v27 = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for ActionInfo(0);
  sub_10003F5BC(v19 + v18, v14);
  swift_setDeallocating();
  sub_10006EB94();
  sub_10003F5BC(v14, v11);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  sub_1000ED69C(v11, 1, sub_10005A438, v20);
  sub_10003F620(v14);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v21 = v27[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v22 = v27;
  sub_10000B4E0(v28, a3 + 56);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v23 = Environment.init<A>(_:)();
  LOBYTE(v21) = v24;
  sub_10001035C(v28);
  sub_10001035C(v29);
  sub_10001035C(v30);
  result = sub_10003F620(v16);
  *a3 = v23;
  *(a3 + 8) = v21 & 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = v22;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  return result;
}

uint64_t sub_1000AD8AC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000AD8F4(uint64_t a1)
{
  sub_100019A50();
  if (v2 <= 0x3F)
  {
    type metadata accessor for ActionInfo(319);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        sub_1000ADD64();
        if (v6 <= 0x3F)
        {
          sub_1000ADDB4();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000AD9C4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1000ADB20);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  v18 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v6 & 0x80000000) != 0)
  {
    return sub_10000E5F0((v18 + v7 + 24) & ~v7, v6, v4);
  }

  v19 = *(v18 + 16);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

void sub_1000ADB34(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        return;
      case 2:
        *(a1 + v11) = v16;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v11) = v16;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x1000ADD24);
    case 4:
      *(a1 + v11) = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        v18 = a1 & 0xFFFFFFFFFFFFFFF8;
        if ((v8 & 0x80000000) != 0)
        {

          sub_100003CE8((v18 + v10 + 24) & ~v10, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v19 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v19 = (a2 - 1);
          }

          *(v18 + 16) = v19;
        }
      }

      return;
  }
}

void sub_1000ADD64()
{
  if (!qword_10018B490)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10018B490);
    }
  }
}

void sub_1000ADDB4()
{
  if (!qword_10018A9A0)
  {
    sub_100004D48(&qword_10018A9A8, qword_100125100);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10018A9A0);
    }
  }
}

uint64_t sub_1000ADE5C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = sub_100008780(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = *(v0 + 8);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    sub_100096B28();
    swift_getAtKeyPath();

    (*(v4 + 8))(v8, v1);
    return v13[1];
  }

  return v9;
}

uint64_t sub_1000ADF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71[1] = a2;
  v4 = sub_100004D48(&qword_10018F298, &unk_10012C280);
  v5 = *(a1 + 16);
  sub_1000AFEA4();
  v8 = sub_10000AAEC(v6, v7, &unk_10012C280);
  v9 = *(a1 + 24);
  v81 = v4;
  v109 = v4;
  v110 = v5;
  v80 = v5;
  v78 = v8;
  v111 = v8;
  v112 = v9;
  v77 = v9;
  swift_getOpaqueTypeMetadata2();
  sub_100004D48(&qword_10018F2A8, &qword_10012F6B0);
  v10 = type metadata accessor for ModifiedContent();
  sub_100004D48(&qword_10018F2B0, &qword_10012C290);
  v79 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for ModifiedContent();
  v12 = sub_100008780(v11);
  v72 = v13;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v12);
  v18 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v71 - v19;
  v21 = type metadata accessor for ModifiedContent();
  v22 = sub_100008780(v21);
  v71[0] = v23;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v22);
  __chkstk_darwin(v26);
  v28 = v71 - v27;
  v74 = type metadata accessor for _ConditionalContent();
  v29 = sub_100008780(v74);
  v73 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  v76 = v71 - v33;
  v34 = *(v2 + *(a1 + 48));
  v75 = v10;
  if (v34)
  {

    sub_1000AE720(a1, v20);
    v90 = v34;
    v35 = sub_1000AFE50();
    v36 = sub_10000AAEC(&qword_10018F2B8, &qword_10018F2A8, &qword_10012F6B0);
    v88 = v35;
    v89 = v36;
    sub_1000AFEC0();
    WitnessTable = swift_getWitnessTable();
    v38 = sub_10000AAEC(&qword_10018F2C0, &qword_10018F2B0, &qword_10012C290);
    v86 = WitnessTable;
    v87 = v38;
    v39 = swift_getWitnessTable();
    v40 = sub_10005D6CC();
    v84 = v39;
    v85 = v40;
    sub_100096B28();
    v41 = swift_getWitnessTable();
    View.tint<A>(_:)();
    (*(v72 + 8))(v20, v11);
    v82 = v41;
    v83 = v38;
    v42 = swift_getWitnessTable();
    v43 = sub_1000AFED8();
    sub_1000C6A00(v43, v44, v42);
    v45 = *(v71[0] + 8);
    v46 = sub_1000AFED8();
    v45(v46);
    sub_1000C6A00(v28, v21, v42);
    sub_1000AFED8();
    sub_1000C2A90();

    v47 = sub_1000AFED8();
    v45(v47);
    (v45)(v28, v21);
  }

  else
  {
    sub_1000AE720(a1, v18);
    v48 = sub_1000AFE50();
    v49 = sub_10000AAEC(&qword_10018F2B8, &qword_10018F2A8, &qword_10012F6B0);
    v107 = v48;
    v108 = v49;
    v50 = swift_getWitnessTable();
    v51 = sub_10000AAEC(&qword_10018F2C0, &qword_10018F2B0, &qword_10012C290);
    v105 = v50;
    v106 = v51;
    v52 = swift_getWitnessTable();
    v53 = sub_10005D6CC();
    v103 = v52;
    v104 = v53;
    v54 = swift_getWitnessTable();
    v55 = sub_100096B28();
    sub_1000C6A00(v55, v56, v54);
    v57 = *(v72 + 8);
    v58 = sub_100096B28();
    v57(v58);
    sub_1000C6A00(v20, v11, v54);
    v101 = v54;
    v102 = v51;
    swift_getWitnessTable();
    sub_1000C2B40();
    v59 = sub_100096B28();
    v57(v59);
    (v57)(v20, v11);
  }

  v60 = sub_1000AFE50();
  v61 = sub_10000AAEC(&qword_10018F2B8, &qword_10018F2A8, &qword_10012F6B0);
  v99 = v60;
  v100 = v61;
  v62 = swift_getWitnessTable();
  v63 = sub_10000AAEC(&qword_10018F2C0, &qword_10018F2B0, &qword_10012C290);
  v97 = v62;
  v98 = v63;
  v64 = swift_getWitnessTable();
  v65 = sub_10005D6CC();
  v95 = v64;
  v96 = v65;
  v66 = swift_getWitnessTable();
  v93 = v66;
  v94 = v63;
  v91 = swift_getWitnessTable();
  v92 = v66;
  sub_10009988C();
  v67 = v74;
  v68 = swift_getWitnessTable();
  v69 = v76;
  sub_1000C6A00(v76, v67, v68);
  return (*(v73 + 8))(v69, v67);
}

uint64_t sub_1000AE720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v51 = a2;
  v4 = type metadata accessor for ControlSize();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  __chkstk_darwin(v4);
  v48 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003768(&qword_10018F298, &unk_10012C280);
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = *(a1 + 16);
  v41 = sub_10000AAEC(&qword_10018F2A0, &qword_10018F298, &unk_10012C280);
  v12 = *(a1 + 24);
  v59 = v7;
  v60 = v11;
  v61 = v41;
  v62 = v12;
  v42 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  v13 = *(v43 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v15 = &v36 - v14;
  sub_100004D48(&qword_10018F2A8, &qword_10012F6B0);
  v16 = type metadata accessor for ModifiedContent();
  v46 = *(v16 - 8);
  v17 = *(v46 + 64);
  __chkstk_darwin(v16);
  v37 = &v36 - v18;
  sub_100004D48(&qword_10018F2B0, &qword_10012C290);
  v45 = type metadata accessor for ModifiedContent();
  v47 = *(v45 - 8);
  v19 = *(v47 + 64);
  __chkstk_darwin(v45);
  v40 = &v36 - v20;
  sub_1000AED2C(v2, v11, v12);
  v52 = v11;
  v53 = v12;
  v54 = v2;
  v36 = v2;
  sub_100003768(&qword_10018F2C8, &qword_10012C298);
  sub_1000AF60C();
  Button.init(action:label:)();
  v21 = v39;
  v22 = v2 + *(v39 + 40);
  v23 = v41;
  View.buttonStyle<A>(_:)();
  (*(v44 + 8))(v10, v7);
  v24 = v48;
  v25 = v49;
  v26 = v50;
  (*(v49 + 104))(v48, enum case for ControlSize.large(_:), v50);
  v59 = v7;
  v60 = v11;
  v61 = v23;
  v62 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v37;
  v29 = OpaqueTypeMetadata2;
  View.controlSize(_:)();
  (*(v25 + 8))(v24, v26);
  (*(v43 + 8))(v15, v29);
  v59 = *(v36 + *(v21 + 48));
  v30 = sub_10000AAEC(&qword_10018F2B8, &qword_10018F2A8, &qword_10012F6B0);
  v57 = OpaqueTypeConformance2;
  v58 = v30;
  WitnessTable = swift_getWitnessTable();
  v32 = v40;
  View.tint<A>(_:)();
  (*(v46 + 8))(v28, v16);
  v33 = sub_10000AAEC(&qword_10018F2C0, &qword_10018F2B0, &qword_10012C290);
  v55 = WitnessTable;
  v56 = v33;
  v34 = v45;
  swift_getWitnessTable();
  View.flowListRowStyle()();
  return (*(v47 + 8))(v32, v34);
}

uint64_t (*sub_1000AED2C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for FlowStepActionButton();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_1000AFB9C;
}

uint64_t sub_1000AEEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a2;
  v71 = a3;
  v66 = a1;
  v65 = a4;
  v64 = sub_100003768(&qword_10018F308, &qword_10012C2C0);
  v5 = *(*(v64 - 8) + 64);
  v6 = __chkstk_darwin(v64);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v56 - v8;
  v9 = type metadata accessor for DynamicTypeSize();
  v68 = *(v9 - 8);
  v10 = v68[8];
  v11 = __chkstk_darwin(v9);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v67 = &v56 - v13;
  v62 = sub_100003768(&qword_10018F2E0, &qword_10012C2A8);
  v14 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v61 = &v56 - v15;
  v16 = sub_100003768(&qword_10018F2F0, &unk_10012C2B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v56 - v18;
  v72 = sub_100003768(&qword_10018F2D8, &qword_10012C2A0);
  v20 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v22 = &v56 - v21;
  v60 = sub_100003768(&qword_10018F310, &qword_10012C2C8);
  v59 = *(v60 - 8);
  v23 = *(v59 + 64);
  __chkstk_darwin(v60);
  v58 = &v56 - v24;
  v25 = (*(a1 + 16) + OBJC_IVAR____TtC11SupportFlow10ActionInfo_text);
  v26 = v25[1];
  __src[0] = *v25;
  __src[1] = v26;
  sub_10000AC24();

  v27 = Text.init<A>(_:)();
  v29 = v28;
  __src[0] = v27;
  __src[1] = v28;
  v31 = v30 & 1;
  LOBYTE(__src[2]) = v30 & 1;
  __src[3] = v32;
  static String.stepSectionActionButtonTitle.getter();
  View.accessibilityIdentifier(_:)();

  v33 = v29;
  v34 = v67;
  sub_10000AC78(v27, v33, v31);

  KeyPath = swift_getKeyPath();
  v36 = &v19[*(v16 + 36)];
  *v36 = KeyPath;
  v36[8] = 1;
  static Font.Weight.semibold.getter();
  sub_1000AF828();
  v37 = v68;
  View.fontWeight(_:)();
  sub_100044F98(v19, &qword_10018F2F0, &unk_10012C2B0);
  v38 = *(v66 + *(type metadata accessor for FlowStepActionButton() + 44));
  v39 = swift_getKeyPath();
  v40 = *(v72 + 36);
  v71 = v22;
  v41 = &v22[v40];
  v42 = v69;
  *v41 = v39;
  v41[1] = v38;
  v43 = v37[13];
  v43(v34, enum case for DynamicTypeSize.medium(_:), v9);
  v43(v42, enum case for DynamicTypeSize.accessibility3(_:), v9);
  sub_1000AF8F0(&qword_10018F318, &type metadata accessor for DynamicTypeSize);

  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v45 = v37[4];
    v46 = v63;
    v45(v63, v34, v9);
    v47 = v64;
    v45((v46 + *(v64 + 48)), v42, v9);
    v48 = v57;
    sub_1000AF938(v46, v57);
    v49 = *(v47 + 48);
    v50 = v61;
    v45(v61, v48, v9);
    v51 = v37[1];
    v51(v48 + v49, v9);
    sub_1000AF9A8(v46, v48);
    v45((v50 + *(v62 + 36)), (v48 + *(v47 + 48)), v9);
    v51(v48, v9);
    sub_1000AF734();
    sub_10000AAEC(&qword_10018F300, &qword_10018F2E0, &qword_10012C2A8);
    v52 = v58;
    v53 = v71;
    View.dynamicTypeSize<A>(_:)();
    sub_100044F98(v50, &qword_10018F2E0, &qword_10012C2A8);
    sub_1000AFA18(v53);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v54 = v65;
    (*(v59 + 32))(v65, v52, v60);
    v55 = sub_100003768(&qword_10018F2C8, &qword_10012C298);
    return memcpy((v54 + *(v55 + 36)), __src, 0x70uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000AF60C()
{
  result = qword_10018F2D0;
  if (!qword_10018F2D0)
  {
    sub_100004D48(&qword_10018F2C8, &qword_10012C298);
    sub_100004D48(&qword_10018F2D8, &qword_10012C2A0);
    sub_100004D48(&qword_10018F2E0, &qword_10012C2A8);
    sub_1000AF734();
    sub_10000AAEC(&qword_10018F300, &qword_10018F2E0, &qword_10012C2A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F2D0);
  }

  return result;
}

unint64_t sub_1000AF734()
{
  result = qword_10018F2E8;
  if (!qword_10018F2E8)
  {
    sub_100004D48(&qword_10018F2D8, &qword_10012C2A0);
    sub_100004D48(&qword_10018F2F0, &unk_10012C2B0);
    sub_1000AF828();
    swift_getOpaqueTypeConformance2();
    sub_10000AAEC(&qword_1001895D0, &qword_1001895D8, &qword_10012F6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F2E8);
  }

  return result;
}

unint64_t sub_1000AF828()
{
  result = qword_10018F2F8;
  if (!qword_10018F2F8)
  {
    sub_100004D48(&qword_10018F2F0, &unk_10012C2B0);
    sub_1000AA5AC();
    sub_10000AAEC(&qword_100189DB8, &qword_100189DC0, &qword_100124BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F2F8);
  }

  return result;
}

uint64_t sub_1000AF8F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000AF938(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018F308, &qword_10012C2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AF9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018F308, &qword_10012C2C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AFA18(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018F2D8, &qword_10012C2A0);
  sub_10000C31C(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000AFA74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for FlowStepActionButton() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5);

  v8 = *(v0 + v5 + 16);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[12], v2);
  v9 = *(v0 + v5 + v3[13]);

  v10 = *(v0 + v5 + v3[14]);

  v11 = (v0 + v5 + v3[15]);
  if (*v11)
  {
    v12 = v11[1];
  }

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_1000AFB9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for FlowStepActionButton() - 8) + 80);

  return sub_1000AEE64();
}

uint64_t sub_1000AFC20(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_100004D48(&qword_10018F298, &unk_10012C280);
  sub_1000AFEA4();
  sub_10000AAEC(v3, v4, &unk_10012C280);
  swift_getOpaqueTypeMetadata2();
  sub_100004D48(&qword_10018F2A8, &qword_10012F6B0);
  type metadata accessor for ModifiedContent();
  sub_100004D48(&qword_10018F2B0, &qword_10012C290);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  sub_10000AAEC(&qword_10018F2B8, &qword_10018F2A8, &qword_10012F6B0);
  sub_1000AFEC0();
  swift_getWitnessTable();
  sub_10000AAEC(&qword_10018F2C0, &qword_10018F2B0, &qword_10012C290);
  swift_getWitnessTable();
  sub_10005D6CC();
  sub_100096B28();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10009988C();
  return swift_getWitnessTable();
}

uint64_t sub_1000AFE50()
{
  v2 = *(v0 - 352);
  *(v0 - 120) = *(v0 - 344);
  *(v0 - 112) = v2;
  v3 = *(v0 - 376);
  *(v0 - 104) = *(v0 - 368);
  *(v0 - 96) = v3;

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000AFEE4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_10000C30C();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10000C30C();
  v4 = type metadata accessor for SupportFlowIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000C30C();
  v9 = v8 - v7;
  ObservationRegistrar.init()();
  (*(v5 + 104))(v9, enum case for SupportFlowIdentifier.disabledAccount(_:), v4);

  sub_100105728();
  v11 = v10;
  swift_retain_n();
  sub_1001081CC(0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100106418();
  if (qword_100188238 != -1)
  {
    swift_once();
  }

  sub_100104A98();

  return v11;
}

uint64_t sub_1000B0134()
{
  v1 = qword_10018F320;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_1000B0190()
{
  v0 = sub_10011484C();
  v1 = qword_10018F320;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for DisabledAccountFlowViewModel()
{
  result = qword_10018F350;
  if (!qword_10018F350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000B02A0@<D0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  v10 = sub_100064C6C();

  v11 = sub_10000737C();
  *a2 = 0xD000000000000010;
  *(a2 + 8) = 0x8000000100137D80;
  *(a2 + 16) = v10;
  result = v14[0];
  *(a2 + 17) = *v14;
  *(a2 + 32) = *(&v14[1] + 7);
  *(a2 + 40) = &type metadata for WiFiStepProvider;
  *(a2 + 48) = v11;
  return result;
}

unint64_t sub_1000B0448()
{
  result = qword_10018F658;
  if (!qword_10018F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F658);
  }

  return result;
}

uint64_t type metadata accessor for FlowImage()
{
  result = qword_10018F6D0;
  if (!qword_10018F6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B04E8()
{
  result = type metadata accessor for FlowAsset();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FlowSymbol();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B0590()
{
  v0 = static HorizontalAlignment.center.getter();
  v10 = 1;
  static Font.title.getter();
  v1 = Text.font(_:)();
  v3 = v2;
  v5 = v4;
  v7 = v6;

  __src[0] = v0;
  LOBYTE(__src[1]) = 1;
  *(&__src[1] + 1) = v1;
  *&__src[2] = v3;
  BYTE8(__src[2]) = v5 & 1;
  *&__src[3] = v7;
  BYTE8(__src[3]) = static Edge.Set.all.getter();
  memset(&__src[4], 0, 32);
  LOBYTE(__src[6]) = 1;
  sub_100003768(&qword_10018F708, &qword_10012C4C8);
  sub_1000B06E0();
  sub_10000AC24();
  View.navigationTitle<A>(_:)();
  memcpy(__dst, __src, 0x61uLL);
  return sub_1000B0744(__dst);
}

uint64_t sub_1000B06D8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1000B0590();
}

unint64_t sub_1000B06E0()
{
  result = qword_10018F710;
  if (!qword_10018F710)
  {
    sub_100004D48(&qword_10018F708, &qword_10012C4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F710);
  }

  return result;
}

uint64_t sub_1000B0744(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018F708, &qword_10012C4C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B07AC()
{
  sub_100004D48(&qword_10018F708, &qword_10012C4C8);
  sub_1000B06E0();
  sub_10000AC24();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B0838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAsset();

  return sub_10000E5F0(a1, a2, v4);
}

uint64_t sub_1000B0894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAsset();

  return sub_100003CE8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FlowAssetView()
{
  result = qword_10018F770;
  if (!qword_10018F770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B092C()
{
  result = type metadata accessor for FlowAsset();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1000B09B4@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = sub_100008780(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000C30C();
  v11 = v10 - v9;
  v12 = type metadata accessor for ImageResource();
  v13 = sub_100008780(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_10000C30C();
  v20 = v19 - v18;
  v21 = type metadata accessor for FlowAsset();
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  sub_10000C30C();
  v26 = v25 - v24;
  sub_1000B0CB0(v1, v25 - v24);
  (*(v15 + 32))(v20, v26, v12);
  Image.init(_:)();
  (*(v6 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v3);
  v27 = Image.resizable(capInsets:resizingMode:)();

  (*(v6 + 8))(v11, v3);
  v28 = *(v1 + *(v22 + 32));
  v29 = (a1 + *(sub_100003768(&qword_10018F7A8, &qword_10012C538) + 36));
  v30 = *(type metadata accessor for RoundedRectangle() + 20);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = type metadata accessor for RoundedCornerStyle();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  *v29 = v28;
  *(v29 + 1) = v28;
  *&v29[*(sub_100003768(&qword_10018C370, &qword_100127460) + 36)] = 256;
  *a1 = v27;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v33 = (v1 + *(v22 + 28));
  v34 = *v33;
  v35 = v33[1];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = (a1 + *(sub_100003768(&qword_10018F7B0, &unk_10012C540) + 36));
  *v36 = v38;
  v36[1] = v39;
  result = *&v40;
  v36[2] = v40;
  return result;
}

uint64_t sub_1000B0CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B0D18()
{
  result = qword_10018F7B8;
  if (!qword_10018F7B8)
  {
    sub_100004D48(&qword_10018F7B0, &unk_10012C540);
    sub_1000B0DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F7B8);
  }

  return result;
}

unint64_t sub_1000B0DA4()
{
  result = qword_10018F7C0;
  if (!qword_10018F7C0)
  {
    sub_100004D48(&qword_10018F7A8, &qword_10012C538);
    sub_100010DA8();
    sub_1000B0E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F7C0);
  }

  return result;
}

unint64_t sub_1000B0E30()
{
  result = qword_10018C368;
  if (!qword_10018C368)
  {
    sub_100004D48(&qword_10018C370, &qword_100127460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C368);
  }

  return result;
}

double sub_1000B0EC0@<D0>(unsigned int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  v10 = a1 >> 8;
  v11 = sub_10010C478();
  v13 = v12;

  *(a2 + 40) = &type metadata for AirPodsStepProvider;
  *(a2 + 48) = sub_100004C8C();
  *(a2 + 16) = v10;
  *a2 = v11;
  *(a2 + 8) = v13;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WiFiStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000B1138);
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

uint64_t sub_1000B118C(char a1)
{
  result = 0x73692069462D6957;
  switch(a1)
  {
    case 1:
      result = 0x6E6E6F4320746F4ELL;
      break;
    case 2:
      result = 0x53206C616D726F4ELL;
      break;
    case 3:
      result = 0x676953206B616557;
      break;
    case 4:
      result = 0x2074726174736552;
      break;
    case 5:
      result = 0x65746544204E5056;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = sub_1000B184C(0x6F53u);
      break;
    case 8:
      result = 0x20746361746E6F43;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000B1310(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176BB8, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000B135C(char a1)
{
  result = 0x64656C6261736964;
  switch(a1)
  {
    case 1:
      result = 0x656E6E6F63736964;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6E6769536B616577;
      break;
    case 4:
      result = 0x4474726174736572;
      break;
    case 5:
      result = 0x63657465446E7076;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = sub_1000B184C(0x6F73u);
      break;
    case 8:
      result = 0x53746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000B14D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B1310(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B1508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B135C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000B1580()
{
  result = qword_10018F7C8;
  if (!qword_10018F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F7C8);
  }

  return result;
}

unint64_t sub_1000B15D4()
{
  result = qword_10018F7D0;
  if (!qword_10018F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F7D0);
  }

  return result;
}

uint64_t sub_1000B1690(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018F7E0, &qword_10012C6B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000B1748()
{
  result = qword_10018F828;
  if (!qword_10018F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F828);
  }

  return result;
}

unint64_t sub_1000B179C()
{
  result = qword_10018F830;
  if (!qword_10018F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F830);
  }

  return result;
}

unint64_t sub_1000B17F4()
{
  result = qword_10018F838;
  if (!qword_10018F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F838);
  }

  return result;
}

uint64_t sub_1000B185C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();

  return sub_10000E5F0(a1, a2, v4);
}

uint64_t sub_1000B18A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();

  return sub_100003CE8(a1, a2, a3, v6);
}

uint64_t type metadata accessor for SupportPlacardInfoItemType()
{
  result = qword_10018F8F8;
  if (!qword_10018F8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B1948(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

unint64_t sub_1000B1A0C@<X0>(void *a1@<X8>)
{
  result = sub_1000B19F0();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000B1A3C(uint64_t a1)
{
  result = sub_1000B2408(&qword_10018F928);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B1A80(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = sub_100008780(v2);
  v55 = v4;
  v56 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_10000C30C();
  v9 = v8 - v7;
  v10 = type metadata accessor for URL();
  v11 = sub_100008780(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000C30C();
  v18 = v17 - v16;
  v53 = type metadata accessor for SupportPlacardInfoItemType();
  v19 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  sub_10000C30C();
  v22 = v21 - v20;
  v23 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v51 - v28;
  v30 = type metadata accessor for FlowImage();
  sub_100003CE8(v29, 1, 1, v30);
  sub_1000B24A8();
  v57 = a1;
  sub_1000B22C8(a1, v22, v31);
  v32 = *(v13 + 32);
  v54 = v10;
  v32(v18, v22, v10);
  if (qword_100188258 != -1)
  {
    swift_once();
  }

  v33 = sub_10000C2D4(v30, qword_10018F870);
  sub_1000B22C8(v33, v27, type metadata accessor for FlowImage);
  sub_1000B2330(v29);
  sub_100003CE8(v27, 0, 1, v30);
  sub_1000B2398(v27, v29);
  if (qword_100188240 != -1)
  {
    swift_once();
  }

  v34 = *algn_10018F848;
  v52 = qword_10018F840;
  v35 = qword_100188248;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_10018F850;
  v37 = *algn_10018F858;
  type metadata accessor for ActionInfo(0);
  v38 = qword_100188250;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = sub_1000EDC40(qword_10018F860, *algn_10018F868, v18);
  (*(v13 + 8))(v18, v54);
  sub_1000295B0(v29, v27);
  v58[3] = v53;
  v58[4] = sub_1000B2408(&qword_10018F930);
  sub_10003EE2C(v58);
  sub_1000B24A8();
  v40 = v57;
  sub_1000B22C8(v57, v41, v42);

  UUID.init()();
  v43 = UUID.uuidString.getter();
  v45 = v44;
  (*(v55 + 8))(v9, v56);
  v46 = type metadata accessor for PlacardInfoItem(0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = sub_1000F04E8(0, v43, v45, v27, v52, v34, v36, v37, v39, v58);

  sub_1000B244C(v40);
  sub_1000B2330(v29);
  return v49;
}

uint64_t sub_1000B1F0C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018F840 = result;
  *algn_10018F848 = v5;
  return result;
}

uint64_t sub_1000B2014()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018F850 = result;
  *algn_10018F858 = v5;
  return result;
}

uint64_t sub_1000B211C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018F860 = result;
  *algn_10018F868 = v5;
  return result;
}

uint64_t sub_1000B2224()
{
  v0 = type metadata accessor for FlowImage();
  sub_10000C270(v0, qword_10018F870);
  v1 = sub_10000C2D4(v0, qword_10018F870);
  v1->i64[0] = 0xD00000000000001FLL;
  v1->i64[1] = 0x8000000100137F60;
  v1[1].i8[0] = 0;
  v1[1].i64[1] = 0;
  v1[2].i64[0] = 0;
  v1[2].i8[8] = 1;
  v1[3] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000B22C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B2330(uint64_t a1)
{
  v2 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B2398(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B2408(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SupportPlacardInfoItemType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B244C(uint64_t a1)
{
  v2 = type metadata accessor for SupportPlacardInfoItemType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B24D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HandoffBundle();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000B25A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HandoffBundle();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for ShareDataWelcomeContent()
{
  result = qword_10018F990;
  if (!qword_10018F990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B2698()
{
  result = type metadata accessor for HandoffBundle();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B27D8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for WelcomeContentType.welcome(_:);
  v3 = type metadata accessor for WelcomeContentType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000B2854()
{
  v1 = type metadata accessor for Locale();
  v2 = sub_10000ED84(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000C30C();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = sub_10000ED84(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000C30C();
  *(v0 + *(type metadata accessor for ShareDataWelcomeContent() + 20));
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_1000B2C2C();
  String.init(localized:table:bundle:locale:comment:)();
  static WelcomeAction.primary(title:)();

  v9 = type metadata accessor for WelcomeAction();
  return sub_1000B2C40(v9);
}

uint64_t sub_1000B29BC()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_10000ED84(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = sub_10000ED84(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000C30C();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_1000B2C2C();
  String.init(localized:table:bundle:locale:comment:)();
  static WelcomeAction.secondary(title:)();

  v8 = type metadata accessor for WelcomeAction();
  return sub_1000B2C40(v8);
}

unint64_t sub_1000B2B94@<X0>(void *a1@<X8>)
{
  result = sub_1000B270C();
  *a1 = 0xD00000000000001FLL;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000B2BC8()
{
  result = qword_10018F9C8;
  if (!qword_10018F9C8)
  {
    type metadata accessor for ShareDataWelcomeContent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F9C8);
  }

  return result;
}

uint64_t sub_1000B2C40(uint64_t a1)
{

  return sub_100003CE8(v1, 0, 1, a1);
}

uint64_t sub_1000B2C60()
{

  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t sub_1000B2C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100189108, &unk_1001226E0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_10000E5F0(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000B2D64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_100189108, &unk_1001226E0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_100003CE8(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ContactOptionsView()
{
  result = qword_10018FA28;
  if (!qword_10018FA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B2E68()
{
  sub_1000B2F7C(319, &qword_100189460, type metadata accessor for FlowViewDataProvider, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000B2F7C(319, &qword_100189178, type metadata accessor for SupportSolutions.ChatInfo, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000116B4();
      if (v2 <= 0x3F)
      {
        sub_100082404();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000B2F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000B2FFC()
{
  v1 = v0;
  v2 = 0x69662E656E6F6870;
  v3 = type metadata accessor for ContactType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 != enum case for ContactType.call(_:))
  {
    if (v8 == enum case for ContactType.chat(_:))
    {
      return 0x2E6567617373656DLL;
    }

    else
    {
      (*(v4 + 8))(v7, v3);
    }
  }

  return v2;
}

uint64_t sub_1000B3164@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for PlainButtonStyle();
  v35 = sub_100008780(v2);
  v36 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v35);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ListSectionSpacing();
  v9 = sub_100008780(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003768(&qword_10018A8B8, &qword_100124F50);
  v17 = sub_10000AF7C(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = sub_100003768(&qword_10018FA68, &qword_10012C9C0);
  v21 = sub_10000AF7C(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v34 - v24;
  v38 = v1;
  sub_1000B35FC();
  sub_100003768(&qword_10018FA70, &qword_10012C9C8);
  sub_1000350A8();
  sub_1000B471C();
  Section<>.init(header:content:)();
  static ListSectionSpacing.custom(_:)();
  v26 = *(sub_100003768(&qword_10018FA90, &qword_10012C9D8) + 36);
  (*(v11 + 16))(&v25[v26], v15, v8);
  sub_100003CE8(&v25[v26], 0, 1, v8);
  KeyPath = swift_getKeyPath();
  v28 = &v25[*(v20 + 36)];
  v29 = *(sub_100003768(&qword_100188FE8, &qword_100124FA0) + 28);
  (*(v11 + 32))(v28 + v29, v15, v8);
  sub_100003CE8(v28 + v29, 0, 1, v8);
  *v28 = KeyPath;
  PlainButtonStyle.init()();
  sub_1000B480C();
  sub_100035550();
  sub_1000353A4(v30, v31);
  v32 = v35;
  View.buttonStyle<A>(_:)();
  (*(v36 + 8))(v7, v32);
  return sub_10000ABCC(v25, &qword_10018FA68, &qword_10012C9C0);
}

uint64_t sub_1000B34C4(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018FA88, &qword_10012C9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_100003768(&qword_10018FAB8, &qword_10012CA28);
  sub_1000B389C(a1, &v5[*(v6 + 44)]);
  static String.stepSectionContactOptions.getter();
  sub_10000AAEC(&qword_10018FA80, &qword_10018FA88, &qword_10012C9D0);
  View.accessibilityIdentifier(_:)();

  return sub_10000ABCC(v5, &qword_10018FA88, &qword_10012C9D0);
}

uint64_t sub_1000B35FC()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for FlowStepSectionHeaderView();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100188438 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for ImageResource();
  v9 = sub_10000C2D4(v8, qword_1001A5B00);
  (*(*(v8 - 8) + 16))(v7, v9, v8);
  v10 = type metadata accessor for FlowAsset();
  __asm { FMOV            V0.2D, #20.0 }

  *&v7[*(v10 + 20)] = _Q0;
  *&v7[*(v10 + 24)] = 0x4018000000000000;
  v16 = type metadata accessor for FlowImage();
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v7, 0, 1, v16);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v18 = &v7[*(v4 + 20)];
  *v18 = v17;
  v18[1] = v19;
  static String.stepSectionContactSupport.getter();
  sub_1000353A4(&qword_10018A8D0, type metadata accessor for FlowStepSectionHeaderView);
  View.accessibilityIdentifier(_:)();

  return sub_1000B4A14(v7);
}

uint64_t sub_1000B389C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = type metadata accessor for ContactType();
  v71 = *(v3 - 8);
  v4 = *(v71 + 64);
  __chkstk_darwin(v3);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100003768(&qword_10018FAC0, &qword_10012CA30);
  v6 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v68 = &v67 - v7;
  v79 = sub_100003768(&qword_10018FAC8, &qword_10012CA38);
  v8 = *(*(v79 - 8) + 64);
  v9 = __chkstk_darwin(v79);
  v72 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v67 - v11;
  v13 = sub_100003768(&qword_100189108, &unk_1001226E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v67 - v15;
  v17 = sub_100003768(&qword_10018FAD0, &qword_10012CA40);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v76 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v75 = &v67 - v22;
  v23 = __chkstk_darwin(v21);
  v78 = &v67 - v24;
  __chkstk_darwin(v23);
  v26 = &v67 - v25;
  v27 = sub_100003768(&qword_10018FAD8, &qword_10012CA48);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v74 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v67 - v31;
  *v32 = static HorizontalAlignment.leading.getter();
  *(v32 + 1) = 0;
  v33 = 1;
  v32[16] = 1;
  v34 = *(sub_100003768(&qword_10018FAE0, &qword_10012CA50) + 44);
  v80 = v32;
  sub_1000B4080();
  v35 = type metadata accessor for ContactOptionsView();
  v36 = a1;
  sub_10000EC9C(a1 + *(v35 + 20), v16, &qword_100189108, &unk_1001226E0);
  v37 = type metadata accessor for SupportSolutions.ChatInfo(0);
  LODWORD(a1) = sub_10000E5F0(v16, 1, v37);
  sub_10000ABCC(v16, &qword_100189108, &unk_1001226E0);
  if (a1 != 1)
  {
    v38 = v71;
    v39 = v69;
    (*(v71 + 104))(v69, enum case for ContactType.chat(_:), v3);
    v40 = v68;
    sub_1000B41BC(v39, v68);
    (*(v38 + 8))(v39, v3);
    sub_1000B4A70();
    v73 = v3;
    v41 = v12;
    v42 = v72;
    View.accessibility(sortPriority:)();
    sub_10000ABCC(v40, &qword_10018FAC0, &qword_10012CA30);
    LocalizedStringKey.init(stringLiteral:)();
    v43 = Text.init(_:tableName:bundle:comment:)();
    v45 = v44;
    LOBYTE(v40) = v46;
    ModifiedContent<>.accessibilityLabel(_:)();
    sub_10000AC78(v43, v45, v40 & 1);

    v47 = v42;
    v12 = v41;
    v3 = v73;
    sub_10000ABCC(v47, &qword_10018FAC8, &qword_10012CA38);
    sub_1000B4C10(v12, v26);
    v33 = 0;
  }

  v73 = v26;
  v48 = v79;
  sub_100003CE8(v26, v33, 1, v79);
  v49 = 1;
  if (*(v36 + *(v35 + 24) + 8) != 1)
  {
    v50 = v71;
    v51 = v69;
    (*(v71 + 104))(v69, enum case for ContactType.call(_:), v3);
    v52 = v68;
    sub_1000B41BC(v51, v68);
    (*(v50 + 8))(v51, v3);
    sub_1000B4A70();
    v53 = v72;
    View.accessibility(sortPriority:)();
    sub_10000ABCC(v52, &qword_10018FAC0, &qword_10012CA30);
    LocalizedStringKey.init(stringLiteral:)();
    v54 = Text.init(_:tableName:bundle:comment:)();
    v56 = v55;
    LOBYTE(v52) = v57;
    ModifiedContent<>.accessibilityLabel(_:)();
    sub_10000AC78(v54, v56, v52 & 1);

    sub_10000ABCC(v53, &qword_10018FAC8, &qword_10012CA38);
    sub_1000B4C10(v12, v78);
    v49 = 0;
  }

  v58 = v78;
  sub_100003CE8(v78, v49, 1, v48);
  v59 = v74;
  sub_10000EC9C(v80, v74, &qword_10018FAD8, &qword_10012CA48);
  v60 = v73;
  v61 = v75;
  sub_10000EC9C(v73, v75, &qword_10018FAD0, &qword_10012CA40);
  v62 = v76;
  sub_10000EC9C(v58, v76, &qword_10018FAD0, &qword_10012CA40);
  v63 = v77;
  sub_10000EC9C(v59, v77, &qword_10018FAD8, &qword_10012CA48);
  v64 = sub_100003768(&qword_10018FAE8, &qword_10012CA58);
  v65 = v63 + v64[12];
  *v65 = 0;
  *(v65 + 8) = 1;
  sub_10000EC9C(v61, v63 + v64[16], &qword_10018FAD0, &qword_10012CA40);
  sub_10000EC9C(v62, v63 + v64[20], &qword_10018FAD0, &qword_10012CA40);
  sub_10000ABCC(v58, &qword_10018FAD0, &qword_10012CA40);
  sub_10000ABCC(v60, &qword_10018FAD0, &qword_10012CA40);
  sub_10000ABCC(v80, &qword_10018FAD8, &qword_10012CA48);
  sub_10000ABCC(v62, &qword_10018FAD0, &qword_10012CA40);
  sub_10000ABCC(v61, &qword_10018FAD0, &qword_10012CA40);
  return sub_10000ABCC(v59, &qword_10018FAD8, &qword_10012CA48);
}

uint64_t sub_1000B4080()
{
  LocalizedStringKey.init(stringLiteral:)();
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  static Font.Weight.semibold.getter();
  v5 = Text.fontWeight(_:)();
  v7 = v6;
  v9 = v8;
  sub_10000AC78(v0, v2, v4 & 1);

  static String.stepSectionContactOptionsTitle.getter();
  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v5, v7, v9 & 1);
}

uint64_t sub_1000B41BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26[1] = a2;
  v5 = type metadata accessor for ContactType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for ContactOptionsView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = sub_100003768(&qword_10018FB00, &qword_10012CA60);
  v12 = *(*(v26[0] - 8) + 64);
  __chkstk_darwin(v26[0]);
  v14 = v26 - v13;
  sub_1000B4C80(v3, v11);
  (*(v6 + 16))(v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + *(v6 + 80) + v15) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_1000B4EC4(v11, v17 + v15);
  (*(v6 + 32))(v17 + v16, v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v26[4] = a1;
  sub_100003768(&qword_10018FB28, &qword_10012CA78);
  sub_1000B4FFC();
  Button.init(action:label:)();
  v18 = [objc_opt_self() quaternarySystemFillColor];
  v19 = Color.init(_:)();
  v20 = &v14[*(v26[0] + 36)];
  *v20 = v19;
  *(v20 + 4) = 256;
  static String.stepSectionContactOptionFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100121620;
  v22 = ContactType.id.getter();
  v24 = v23;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_100017A18();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  String.init(format:_:)();

  sub_1000B4B2C();
  View.accessibilityIdentifier(_:)();

  return sub_10000ABCC(v14, &qword_10018FB00, &qword_10012CA60);
}

uint64_t sub_1000B4534(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for ContactOptionsView() + 28);
  v4 = *(v3 + 8);
  return (*v3)(a2);
}

uint64_t sub_1000B4578@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000B2FFC();
  Image.init(systemName:)();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v6, v2);
  v8 = static Color.blue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15[0] = 1;
  LOBYTE(v2) = static Edge.Set.all.getter();
  result = EdgeInsets.init(_all:)();
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v8;
  v10 = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = v10;
  *(a1 + 64) = v18;
  *(a1 + 80) = v2;
  *(a1 + 88) = v11;
  *(a1 + 96) = v12;
  *(a1 + 104) = v13;
  *(a1 + 112) = v14;
  *(a1 + 120) = 0;
  return result;
}

unint64_t sub_1000B471C()
{
  result = qword_10018FA78;
  if (!qword_10018FA78)
  {
    sub_100004D48(&qword_10018FA70, &qword_10012C9C8);
    sub_10000AAEC(&qword_10018FA80, &qword_10018FA88, &qword_10012C9D0);
    sub_1000353A4(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FA78);
  }

  return result;
}

unint64_t sub_1000B480C()
{
  result = qword_10018FA98;
  if (!qword_10018FA98)
  {
    sub_100004D48(&qword_10018FA68, &qword_10012C9C0);
    sub_1000B48C4();
    sub_10000AAEC(&qword_100189010, &qword_100188FE8, &qword_100124FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FA98);
  }

  return result;
}

unint64_t sub_1000B48C4()
{
  result = qword_10018FAA0;
  if (!qword_10018FAA0)
  {
    sub_100004D48(&qword_10018FA90, &qword_10012C9D8);
    sub_1000B497C();
    sub_10000AAEC(&qword_100189000, &qword_100189008, &qword_100122380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FAA0);
  }

  return result;
}

unint64_t sub_1000B497C()
{
  result = qword_10018FAA8;
  if (!qword_10018FAA8)
  {
    sub_100004D48(&qword_10018FAB0, &unk_10012CA18);
    sub_1000350A8();
    sub_1000B471C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FAA8);
  }

  return result;
}

uint64_t sub_1000B4A14(uint64_t a1)
{
  v2 = type metadata accessor for FlowStepSectionHeaderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B4A70()
{
  result = qword_10018FAF0;
  if (!qword_10018FAF0)
  {
    sub_100004D48(&qword_10018FAC0, &qword_10012CA30);
    sub_1000B4B2C();
    sub_1000353A4(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FAF0);
  }

  return result;
}

unint64_t sub_1000B4B2C()
{
  result = qword_10018FAF8;
  if (!qword_10018FAF8)
  {
    sub_100004D48(&qword_10018FB00, &qword_10012CA60);
    sub_10000AAEC(&qword_10018FB08, &qword_10018FB10, &qword_10012CA68);
    sub_10000AAEC(&qword_10018FB18, &qword_10018FB20, &qword_10012CA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FAF8);
  }

  return result;
}

uint64_t sub_1000B4C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018FAC8, &qword_10012CA38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B4C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactOptionsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B4CE4()
{
  v1 = type metadata accessor for ContactOptionsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for ContactType();
  sub_100008780(v4);
  v6 = v5;
  v7 = *(v5 + 80);
  v19 = *(v8 + 64);
  v9 = v0 + v3;
  v10 = *(v0 + v3);

  v11 = v1[5];
  v12 = type metadata accessor for SupportSolutions.ChatInfo(0);
  if (!sub_10000E5F0(v0 + v3 + v11, 1, v12))
  {
    v13 = type metadata accessor for URL();
    if (!sub_10000E5F0(v9 + v11, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v9 + v11, v13);
    }
  }

  if (*(v9 + v1[6] + 8) != 1)
  {
  }

  v14 = v2 | v7;
  v15 = (v3 + v18 + v7) & ~v7;
  v16 = *(v9 + v1[7] + 8);

  (*(v6 + 8))(v0 + v15, v4);

  return _swift_deallocObject(v0, v15 + v19, v14 | 7);
}

uint64_t sub_1000B4EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactOptionsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B4F28()
{
  v1 = *(type metadata accessor for ContactOptionsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ContactType() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1000B4534(v0 + v2, v5);
}

unint64_t sub_1000B4FFC()
{
  result = qword_10018FB30;
  if (!qword_10018FB30)
  {
    sub_100004D48(&qword_10018FB28, &qword_10012CA78);
    sub_1000B5088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FB30);
  }

  return result;
}

unint64_t sub_1000B5088()
{
  result = qword_10018FB38;
  if (!qword_10018FB38)
  {
    sub_100004D48(&qword_10018FB40, &qword_10012CA80);
    sub_1000B5114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FB38);
  }

  return result;
}

unint64_t sub_1000B5114()
{
  result = qword_10018FB48;
  if (!qword_10018FB48)
  {
    sub_100004D48(&qword_10018FB50, &qword_10012CA88);
    sub_100010DA8();
    sub_10000AAEC(&qword_10018ACE8, &qword_10018ACF0, &unk_100125430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FB48);
  }

  return result;
}

uint64_t sub_1000B51CC()
{
  sub_100004D48(&qword_10018FA68, &qword_10012C9C0);
  type metadata accessor for PlainButtonStyle();
  sub_1000B480C();
  sub_100035550();
  sub_1000353A4(v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B5278(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B52CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1000B5364()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1000B54A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PlacardInfoItemType(0);
  v5 = sub_10000AF7C(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 40) == 1 && *(v2 + 32) == 2)
  {
    v52[1] = a1;
    if (*(v2 + 24))
    {
      v14 = *(v2 + 16);
      v15 = *(v2 + 24);
    }

    else
    {
      v15 = 0x8000000100132C80;
      v14 = 0xD000000000000014;
    }

    type metadata accessor for PlacardInfoItem(0);
    *v9 = 1;
    sub_100096D88();
    swift_storeEnumTagMultiPayload();
    v33 = *(v2 + 88);
    v34 = *(v2 + 96);

    sub_100006568(v33);
    v35 = sub_100096D88();
    v37 = sub_1000EFDB8(v35, v36, v34);
    sub_1000B5F6C();
    sub_10000EC9C(v38, v39, v40, &qword_1001221A0);
    sub_100003768(&qword_10018B570, &qword_100125E78);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100125DA0;
    *(v41 + 32) = v37;
    sub_1000B5F78(__src);
    type metadata accessor for FlowViewDataProvider(0);
    sub_10000B550();
    v42 = Environment.init<A>(_:)();
    LOBYTE(v34) = v43;
    sub_10000ABCC(v53, &qword_100189310, &qword_1001221A0);
    __src[0] = v42;
    LOBYTE(__src[1]) = v34 & 1;
    __src[2] = v14;
    __src[3] = v15;
    __src[10] = 0;
    __src[11] = 0;
    __src[4] = v41;
    sub_10000B5A8(v2, v53);
    v44 = swift_allocObject();
    memcpy((v44 + 16), v53, 0x68uLL);
    memcpy(v55, __src, sizeof(v55));
    sub_10000B5A8(v2, v53);
    v45 = swift_allocObject();
    memcpy((v45 + 16), v53, 0x68uLL);
    memcpy(__src, v55, 0x60uLL);
    __src[12] = sub_1000B5CE4;
    __src[13] = v44;
    v57 = 0u;
    v58 = 0u;
    v59 = sub_1000B5D4C;
    v60 = v45;
    v26 = &qword_10018FB58;
    v27 = &qword_10012CBE0;
    sub_1000B5F6C();
    sub_10000EC9C(v46, v47, v48, &qword_10012CBE0);
    v54 = 0;
    sub_100003768(&qword_10018FB58, &qword_10012CBE0);
    sub_100003768(&qword_10018FB60, &qword_10012CBE8);
    sub_1000B5F54();
    sub_1000B5D84(v49, &qword_10018FB58, &qword_10012CBE0, v50);
    sub_1000B5E08();
  }

  else
  {
    if (*(v2 + 41) == 1)
    {
      sub_10000EC9C(v2 + 48, &v55[2], &qword_100189310, &qword_1001221A0);
      strcpy(v55, "SU_COMING_SOON");
      HIBYTE(v55[1]) = -18;
      memset(&v55[7], 0, 40);
      sub_1000B5F6C();
      sub_10000EC9C(v11, v12, v13, &unk_100121480);
      v53[96] = 0;
      sub_100003768(&unk_1001893B0, &unk_100121480);
      sub_100004CE4();
      sub_1000103C8();
      _ConditionalContent<>.init(storage:)();
      sub_10000ABCC(v55, &unk_1001893B0, &unk_100121480);
    }

    else
    {
      type metadata accessor for PlacardInfoItem(0);
      *v9 = 0;
      sub_100096D88();
      swift_storeEnumTagMultiPayload();
      v16 = *(v2 + 96);
      sub_100006568(*(v2 + 88));
      v17 = sub_100096D88();
      v19 = sub_1000EFDB8(v17, v18, v16);
      sub_1000B5F6C();
      sub_10000EC9C(v20, v21, v22, &qword_1001221A0);
      sub_100003768(&qword_10018B570, &qword_100125E78);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100125DA0;
      *(v23 + 32) = v19;
      sub_1000B5F78(v55);
      type metadata accessor for FlowViewDataProvider(0);
      sub_10000B550();
      v24 = Environment.init<A>(_:)();
      LOBYTE(v16) = v25;
      sub_10000ABCC(v53, &qword_100189310, &qword_1001221A0);
      v55[0] = v24;
      LOBYTE(v55[1]) = v16 & 1;
      v55[2] = 0xD00000000000001BLL;
      v55[3] = 0x8000000100132C30;
      v55[10] = 0;
      v55[11] = 0;
      v55[4] = v23;
      sub_10002BE1C(v55, v53);
      v53[96] = 1;
      sub_100003768(&unk_1001893B0, &unk_100121480);
      sub_100004CE4();
      sub_1000103C8();
      _ConditionalContent<>.init(storage:)();
      sub_1000688DC(v55);
    }

    v26 = &qword_10018FB60;
    v27 = &qword_10012CBE8;
    sub_1000B5F6C();
    sub_10000EC9C(v28, v29, v30, &qword_10012CBE8);
    v54 = 1;
    sub_100003768(&qword_10018FB58, &qword_10012CBE0);
    sub_100003768(&qword_10018FB60, &qword_10012CBE8);
    sub_1000B5F54();
    sub_1000B5D84(v31, &qword_10018FB58, &qword_10012CBE0, v32);
    sub_1000B5E08();
  }

  _ConditionalContent<>.init(storage:)();
  return sub_10000ABCC(__src, v26, v27);
}

uint64_t sub_1000B5A98(uint64_t a1)
{
  v2 = sub_100003768(&qword_100189750, &qword_10012CC00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_1000B5364();
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  static ReentrySignal.softwareUpdate.getter();
  v8 = type metadata accessor for ReentrySignal();
  sub_100003CE8(v5, 0, 1, v8);
  sub_100085E7C();

  return sub_10000ABCC(v5, &qword_100189750, &qword_10012CC00);
}

uint64_t sub_1000B5B7C(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v10[1] = *a1;
  }

  else
  {
    v7 = *a1;

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  return static DeviceEventCoordinator.clearReentryNotification()();
}

uint64_t sub_1000B5CEC()
{
  v1 = v0[2];

  v2 = v0[5];

  if (v0[11])
  {
    sub_1000086BC(v0 + 8);
  }

  if (v0[13])
  {
    v3 = v0[14];
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000B5D84(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B5E08()
{
  result = qword_10018FB80;
  if (!qword_10018FB80)
  {
    sub_100004D48(&qword_10018FB60, &qword_10012CBE8);
    sub_100004CE4();
    sub_1000103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FB80);
  }

  return result;
}

unint64_t sub_1000B5E98()
{
  result = qword_10018FB88;
  if (!qword_10018FB88)
  {
    sub_100004D48(&qword_10018FB90, &qword_10012CC08);
    sub_1000B5D84(&qword_10018FB68, &qword_10018FB58, &qword_10012CBE0, sub_1000B5D54);
    sub_1000B5E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FB88);
  }

  return result;
}

uint64_t sub_1000B5F78@<X0>(uint64_t a1@<X8>)
{

  return sub_10000EC9C(v1 + 16, a1 + 40, v2, v3);
}

uint64_t sub_1000B5FC4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

unint64_t sub_1000B6104@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_100058208(a3);
  v10 = v9;
  v11 = sub_1000B61C0(a1, a2 & 1, a3);
  sub_1000B5FC4(a1, a2 & 1);
  v12 = sub_1000DEC54(a3, 0);

  a4[5] = &type metadata for MessagesStepProvider;
  result = sub_10001362C();
  a4[1] = v10;
  a4[2] = v12;
  *a4 = v8;
  a4[6] = result;
  a4[7] = 0;
  a4[8] = 0;
  a4[9] = v11;
  a4[10] = 0;
  a4[11] = 0;
  return result;
}

uint64_t sub_1000B61C0(uint64_t a1, char a2, unint64_t a3)
{
  v6 = type metadata accessor for ActionInfoType(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionInfo(0);
  *v9 = 1;
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = a3;

  sub_1000136E0(a3);
  return sub_1000ED69C(v9, 1, sub_1000B637C, v10);
}

uint64_t sub_1000B62CC(uint64_t a1, char a2, unint64_t a3)
{
  sub_1000B5FC4(a1, a2 & 1);
  sub_1000DF334(a3);
}

uint64_t sub_1000B6334()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000B6394(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176D10, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000B63E0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x53656761726F7473;
}

unint64_t sub_1000B6474@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B6394(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B64A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B63E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1000B64D0(void *a1@<X8>)
{
  sub_1000E7430(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1000B64FC(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "Settings.General/STORAGE_MGMT";
      v3 = 0xD000000000000045;
      if (qword_100188268 != -1)
      {
        swift_once();
      }

      v4 = &qword_10018FBA8;
    }

    else
    {
      v2 = "t options section in step view.";
      v3 = 0xD00000000000003DLL;
      if (qword_100188270 != -1)
      {
        swift_once();
      }

      v4 = &qword_10018FBB8;
    }
  }

  else
  {
    v3 = 0xD000000000000032;
    v2 = "/ResetNetworkSettings";
    if (qword_100188260 != -1)
    {
      swift_once();
    }

    v4 = &qword_10018FB98;
  }

  v5 = *v4;
  v6 = v4[1];

  v9 = &type metadata for GeneralActionInfoType;
  v10 = sub_1000B698C();
  v8[0] = a1;
  return sub_1000ED3F8(v5, v6, v3, v2 | 0x8000000000000000, v8);
}

uint64_t sub_1000B6674()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018FB98 = result;
  unk_10018FBA0 = v5;
  return result;
}

uint64_t sub_1000B677C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018FBA8 = result;
  unk_10018FBB0 = v5;
  return result;
}

uint64_t sub_1000B6884()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018FBB8 = result;
  unk_10018FBC0 = v5;
  return result;
}

unint64_t sub_1000B698C()
{
  result = qword_10018FBC8;
  if (!qword_10018FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FBC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GeneralActionInfoType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000B6AACLL);
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

unint64_t sub_1000B6AE8()
{
  result = qword_10018FBD0;
  if (!qword_10018FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FBD0);
  }

  return result;
}

unint64_t sub_1000B6B3C(uint64_t a1)
{
  result = sub_1000B6B64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B6B64()
{
  result = qword_10018FBD8;
  if (!qword_10018FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FBD8);
  }

  return result;
}

uint64_t sub_1000B6BE4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

unint64_t sub_1000B6D24@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_100058208(a3);
  v10 = v9;
  v11 = sub_1000B6DE0(a1, a2 & 1, a3);
  sub_1000B6BE4(a1, a2 & 1);
  v12 = sub_1000DEC54(a3, 0);

  a4[5] = &type metadata for MessagesStepProvider;
  result = sub_10001362C();
  a4[1] = v10;
  a4[2] = v12;
  *a4 = v8;
  a4[6] = result;
  a4[7] = 0;
  a4[8] = 0;
  a4[9] = v11;
  a4[10] = 0;
  a4[11] = 0;
  return result;
}

uint64_t sub_1000B6DE0(uint64_t a1, char a2, unint64_t a3)
{
  v6 = type metadata accessor for ActionInfoType(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionInfo(0);
  *v9 = 1;
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = a3;

  sub_1000136E0(a3);
  return sub_1000ED69C(v9, 1, sub_1000B6F9C, v10);
}

uint64_t sub_1000B6EEC(uint64_t a1, char a2, unint64_t a3)
{
  sub_1000B6BE4(a1, a2 & 1);
  sub_1000DF334(a3);
}

uint64_t sub_1000B6F54()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B6FB4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SharedResetPasswordViewModel();
  *(swift_allocObject() + 16) = 0;
  result = State.init(wrappedValue:)();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0xD000000000000026;
  *(a1 + 24) = 0x8000000100132E80;
  *(a1 + 32) = 2;
  return result;
}

__n128 sub_1000B7038(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B704C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1000B708C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B70FC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlacardInfoItemType(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - v10;
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v15 = *(v1 + 16);
  v14 = *(v1 + 24);
  *(&v25 - v12) = 0;
  swift_storeEnumTagMultiPayload();
  v16 = *(v1 + 32);
  v29 = &type metadata for CompromisedAccountStepProvider;
  v30 = sub_100010248();
  v28[0] = v16;
  sub_100003768(&qword_1001890A0, &qword_1001224B0);
  v17 = *(v4 + 72);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100121620;
  sub_10001029C(v13, v19 + v18);
  sub_10000B4E0(v28, v27);
  v26 = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for PlacardInfoItem(0);
  sub_10001029C(v19 + v18, v11);
  swift_setDeallocating();
  sub_10006EB7C();
  sub_10001029C(v11, v8);
  sub_1000EFDB8(v8, 0, 0);
  sub_100010300(v11);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v20 = v26[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v21 = v26;
  sub_10000B4E0(v27, a1 + 40);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v22 = Environment.init<A>(_:)();
  LOBYTE(v20) = v23;
  sub_10001035C(v27);
  sub_100010300(v13);
  result = sub_10001035C(v28);
  *a1 = v22;
  *(a1 + 8) = v20 & 1;
  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  *(a1 + 32) = v21;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_1000B744C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  v4 = sub_1000BBBF8();
  sub_100096938(v4, v5, v6, v7, v8, v9, v10, v11, v16, v2);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = (v2 + *a2);
  v13 = *v12;
  v14 = v12[1];

  return sub_10000AFAC();
}

uint64_t sub_1000B74C8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return sub_1000B7528(v7, v6, a5);
}

uint64_t sub_1000B7528(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (v8 = v6[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000B739C();
  }
}

uint64_t sub_1000B7630()
{
  swift_getKeyPath();
  v1 = sub_1000BBBF8();
  sub_100096938(v1, v2, v3, v4, v5, v6, v7, v8, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v0 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName);
  v10 = *(v0 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName + 8);

  return sub_10000AFAC();
}

uint64_t sub_1000B76B4()
{
  sub_100096B04();
  v3 = (v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName);
  if (sub_100080F60(*(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName), *(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName + 8), v2, v0))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000B739C();
  }

  else
  {
    *v3 = v2;
    v3[1] = v0;
  }
}

uint64_t sub_1000B77AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName);
  v4 = *(a1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName + 8);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1000B77F4()
{
  swift_getKeyPath();
  v1 = sub_1000BBBF8();
  sub_100096938(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__isAutomaticDateAndTimeEnforced);
}

uint64_t sub_1000B7868(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__isAutomaticDateAndTimeEnforced) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__isAutomaticDateAndTimeEnforced) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000B739C();
  }

  return result;
}

uint64_t sub_1000B7918()
{
  v0 = type metadata accessor for TimeZone();
  v1 = sub_100008780(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v8 = v7 - v6;
  if (!TMIsAutomaticTimeZoneEnabled())
  {
    v11 = TMCopyComputedTimeZone();
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = [objc_opt_self() systemTimeZone];
      static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = TimeZone.identifier.getter();
      v19 = v18;
      (*(v3 + 8))(v8, v0);
      if (v13 != v17 || v15 != v19)
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v9 = v21 ^ 1;
        return v9 & 1;
      }
    }
  }

  v9 = 0;
  return v9 & 1;
}

uint64_t sub_1000B7A94()
{
  v1 = v0;
  v2 = sub_100003768(&qword_10018A898, &qword_10012D140);
  v3 = sub_100008780(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v31 - v8;
  v10 = OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_observationTasks;
  v11 = *(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_observationTasks);
  v12 = *(v11 + 16);
  if (v12)
  {
    v31 = OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_observationTasks;
    v32 = v2;

    v13 = 32;
    do
    {
      v14 = *(v11 + v13);

      Task.cancel()();

      v13 += 8;
      --v12;
    }

    while (v12);

    v10 = v31;
    v2 = v32;
  }

  v15 = OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_reloadStreamContinuation;
  (*(v5 + 16))(v9, v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_reloadStreamContinuation, v2);
  AsyncStream.Continuation.finish()();
  v16 = *(v5 + 8);
  v16(v9, v2);
  v17 = OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTime;
  v18 = type metadata accessor for Date();
  sub_10000C31C(v18);
  (*(v19 + 8))(v1 + v17);
  v20 = *(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__dateString + 8);

  v21 = *(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__timeString + 8);

  v22 = *(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName + 8);

  v23 = *(v1 + v10);

  v24 = OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_reloadStream;
  v25 = sub_100003768(&qword_10018A890, &unk_100124D30);
  sub_10000C31C(v25);
  (*(v26 + 8))(v1 + v24);
  v16((v1 + v15), v2);
  v27 = OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel___observationRegistrar;
  v28 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v28);
  (*(v29 + 8))(v1 + v27);
  return v1;
}

uint64_t sub_1000B7D14()
{
  sub_1000B7A94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_1000B7D6C()
{
  v1 = v0;
  v116 = *v0;
  v2 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v124 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v132 = &v106 - v7;
  __chkstk_darwin(v6);
  v114 = &v106 - v8;
  v9 = sub_100003768(&qword_10018A880, &qword_100124D20);
  v10 = sub_100008780(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = (&v106 - v15);
  v17 = sub_100003768(&qword_10018A898, &qword_10012D140);
  v18 = sub_100008780(v17);
  v127 = v19;
  v128 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_1000BC028();
  v122 = v22;
  v123 = v23;
  __chkstk_darwin(v24);
  v26 = &v106 - v25;
  v27 = sub_100003768(&qword_10018A890, &unk_100124D30);
  v28 = sub_100008780(v27);
  v115 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  sub_1000BC028();
  v112 = v32;
  v111 = v33;
  __chkstk_darwin(v34);
  v36 = &v106 - v35;
  v37 = type metadata accessor for Date();
  v38 = sub_100008780(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38);
  sub_10000C30C();
  v45 = v44 - v43;
  static Date.now.getter();
  (*(v40 + 32))(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTime, v45, v37);
  v46 = (v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__dateString);
  *v46 = 0;
  v46[1] = 0xE000000000000000;
  v47 = (v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__timeString);
  *v47 = 0;
  v47[1] = 0xE000000000000000;
  v48 = (v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName);
  *v48 = 0;
  v48[1] = 0;
  result = [objc_opt_self() sharedConnection];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v50 = result;
  v51 = [result isAutomaticDateAndTimeEnforced];

  *(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__isAutomaticDateAndTimeEnforced) = v51;
  ObservationRegistrar.init()();
  v52 = sub_1000B8850();
  v54 = v53;
  v55 = v48[1];

  *v48 = v52;
  v48[1] = v54;
  *v16 = 1;
  (*(v12 + 104))(v16, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v9);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v12 + 8))(v16, v9);
  v56 = v115 + 16;
  v57 = *(v115 + 16);
  v57(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_reloadStream, v36, v27);
  v58 = v127;
  v59 = *(v127 + 16);
  v110 = v1;
  v121 = v127 + 16;
  v120 = v59;
  v59(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_reloadStreamContinuation, v26, v128);
  sub_100003768(&qword_10018D470, &unk_100128ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100122C90;
  result = TMTimeZoneConfirmedNotification;
  if (!TMTimeZoneConfirmedNotification)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v107 = v57;
  v108 = v56;
  v113 = v36;
  v109 = v27;
  v119 = inited + 32;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v61;
  *(inited + 48) = 0xD000000000000021;
  *(inited + 56) = 0x80000001001385E0;
  v106 = inited;
  v125 = type metadata accessor for MainActor();
  v62 = type metadata accessor for TaskPriority();
  v63 = 0;
  v64 = 0;
  v118 = v58 + 32;
  v117 = v62 - 8;
  v65 = _swiftEmptyArrayStorage;
  v66 = &qword_1001228F0;
  v126 = v26;
  do
  {
    v131 = v65;
    v130 = v63;
    v67 = (v119 + 16 * v64);
    v68 = v67[1];
    v129 = *v67;
    v69 = v132;
    sub_1000BC00C(v132);
    v70 = v66;
    v71 = v122;
    v72 = v62;
    v73 = v128;
    v120(v122, v26, v128);

    v74 = static MainActor.shared.getter();
    v75 = v127;
    v76 = (*(v127 + 80) + 48) & ~*(v127 + 80);
    v77 = swift_allocObject();
    *(v77 + 2) = v74;
    v78 = v129;
    *(v77 + 3) = &protocol witness table for MainActor;
    *(v77 + 4) = v78;
    *(v77 + 5) = v68;
    v79 = v71;
    v66 = v70;
    v80 = v73;
    v62 = v72;
    (*(v75 + 32))(&v77[v76], v79, v80);
    v81 = v124;
    sub_1000BBEBC(v69, v124, &qword_1001888B0, v70);
    LODWORD(v74) = sub_10000E5F0(v81, 1, v72);

    if (v74 == 1)
    {
      sub_100044F98(v81, &qword_1001888B0, v70);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(*(v72 - 8) + 8))(v81, v72);
    }

    v82 = *(v77 + 2);
    v83 = *(v77 + 3);
    swift_unknownObjectRetain();

    v26 = v126;
    v65 = v131;
    if (v82)
    {
      swift_getObjectType();
      v84 = dispatch thunk of Actor.unownedExecutor.getter();
      v86 = v85;
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = 0;
      v86 = 0;
    }

    sub_100044F98(v132, &qword_1001888B0, v70);
    v87 = swift_allocObject();
    *(v87 + 16) = &unk_10012D150;
    *(v87 + 24) = v77;
    if (v86 | v84)
    {
      v133 = 0;
      v134 = 0;
      v135 = v84;
      v136 = v86;
    }

    v88 = swift_task_create();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = v65[2];
      sub_1000D0910();
      v65 = v91;
    }

    v89 = v65[2];
    if (v89 >= v65[3] >> 1)
    {
      sub_1000D0910();
      v65 = v92;
    }

    v65[2] = (v89 + 1);
    v65[v89 + 4] = v88;
    v63 = 1;
    v64 = 1;
  }

  while ((v130 & 1) == 0);
  swift_setDeallocating();
  sub_10006EB40();
  v93 = v110;
  *(v110 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_observationTasks) = v65;
  v94 = v114;
  sub_1000BC00C(v114);
  sub_1000BC054();
  v95 = swift_allocObject();
  swift_weakInit();

  v96 = static MainActor.shared.getter();
  v97 = swift_allocObject();
  v97[2] = v96;
  v97[3] = &protocol witness table for MainActor;
  v97[4] = v95;

  sub_100085200();

  sub_1000BC00C(v94);
  sub_1000BC054();
  v98 = swift_allocObject();
  swift_weakInit();

  v99 = v112;
  v100 = v109;
  v107(v112, v113, v109);

  v101 = static MainActor.shared.getter();
  v102 = v115;
  v103 = (*(v115 + 80) + 32) & ~*(v115 + 80);
  v104 = (v111 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = swift_allocObject();
  *(v105 + 16) = v101;
  *(v105 + 24) = &protocol witness table for MainActor;
  (*(v102 + 32))(v105 + v103, v99, v100);
  *(v105 + v104) = v98;
  *(v105 + ((v104 + 15) & 0xFFFFFFFFFFFFFFF8)) = v116;

  sub_100085200();

  sub_1000B9F7C();
  (*(v127 + 8))(v126, v128);
  (*(v102 + 8))(v113, v100);
  return v93;
}

uint64_t sub_1000B8850()
{
  v0 = type metadata accessor for TimeZone();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v55 - v7;
  __chkstk_darwin(v6);
  v10 = &v55 - v9;
  [objc_opt_self() resetSystemTimeZone];
  static TimeZone.current.getter();
  if (qword_100188278 != -1)
  {
    swift_once();
  }

  v11 = qword_10018FBE0;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v61, 0, sizeof(v61));
  }

  sub_1000BBEBC(v61, &v59, &unk_10018A520, &unk_100124310);
  if (v60)
  {
    sub_1000BBF20(&v59, &v57);
    sub_100025734(&v57, v58);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    v15 = DTResolveCity(v14);
    swift_unknownObjectRelease();
    sub_100044F98(v61, &unk_10018A520, &unk_100124310);
    sub_1000086BC(&v57);
  }

  else
  {
    sub_100044F98(v61, &unk_10018A520, &unk_100124310);
    v15 = 0;
  }

  p_base_prots = &Defaults.base_prots;
  if (TMIsAutomaticTimeZoneEnabled())
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    v18 = DTCityNameForTimeZone(isa);

    if (v18)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      goto LABEL_22;
    }
  }

  if (v15)
  {
    v22 = v15;
    v23 = [v22 name];
    if (v23)
    {
      v24 = v23;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v25;

      p_base_prots = (&Defaults + 40);
      goto LABEL_22;
    }
  }

  if (qword_1001882C8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000C2D4(v26, qword_1001A5858);
  (*(v1 + 16))(v8, v10, v0);
  v27 = Logger.logObject.getter();
  v28 = v8;
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v55 = v5;
    v32 = v31;
    *&v61[0] = v31;
    *v30 = 141558275;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    v33 = TimeZone.identifier.getter();
    v56 = v15;
    v34 = v1;
    v35 = v0;
    v37 = v36;
    (*(v34 + 8))(v28, v35);
    v38 = sub_10009CACC(v33, v37, v61);
    v0 = v35;
    v1 = v34;
    v15 = v56;

    *(v30 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v27, v29, "Failed to find a city matching the current time zone identifier %{private,mask.hash}s", v30, 0x16u);
    sub_1000086BC(v32);
    v5 = v55;

    p_base_prots = (&Defaults + 40);
  }

  else
  {

    (*(v1 + 8))(v28, v0);
  }

  v19 = TimeZone.identifier.getter();
  v21 = v39;
LABEL_22:

  v40 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v40 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    (*(v1 + 8))(v10, v0);
  }

  else
  {

    if (p_base_prots[89] != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000C2D4(v41, qword_1001A5858);
    (*(v1 + 16))(v5, v10, v0);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v61[0] = v45;
      *v44 = 141558275;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      v46 = TimeZone.identifier.getter();
      v56 = v15;
      v47 = v0;
      v49 = v48;
      v50 = v5;
      v51 = *(v1 + 8);
      v51(v50, v47);
      v52 = sub_10009CACC(v46, v49, v61);
      v0 = v47;
      v15 = v56;

      *(v44 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to find a city matching the current time zone identifier (empty name) %{private,mask.hash}s", v44, 0x16u);
      sub_1000086BC(v45);
    }

    else
    {

      v53 = v5;
      v51 = *(v1 + 8);
      v51(v53, v0);
    }

    v19 = TimeZone.identifier.getter();

    v51(v10, v0);
  }

  return v19;
}

uint64_t sub_1000B8F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_100003768(&qword_10018A8A8, &qword_100124D40);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = sub_100003768(&qword_10018A890, &unk_100124D30);
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v16 = sub_100003768(&qword_10018FD40, &qword_10012D1D0);
  v6[14] = v16;
  v17 = *(v16 - 8);
  v6[15] = v17;
  v18 = *(v17 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = type metadata accessor for MainActor();
  v6[18] = static MainActor.shared.getter();
  v20 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[19] = v20;
  v6[20] = v19;

  return _swift_task_switch(sub_1000B913C, v20, v19);
}

uint64_t sub_1000B913C()
{
  v17 = v0;
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v6 = v0[2];
  v5 = v0[3];
  sub_10003C2F0();
  (*(v3 + 104))(v2, enum case for DispatchQoS.QoSClass.userInitiated(_:), v4);
  v7 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v2, v4);
  sub_100033A4C(v6, v5, v7, v1);
  v8 = v0[16];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];

  AsyncStream.makeAsyncIterator()();
  (*(v10 + 8))(v9, v11);
  v12 = v0[17];
  v0[21] = static MainActor.shared.getter();
  v13 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  swift_task_alloc();
  sub_10004F4B0();
  v0[22] = v14;
  *v14 = v15;
  sub_1000BBF7C(v14);
  sub_1000BC048();

  return AsyncStream.Iterator.next(isolation:)();
}

uint64_t sub_1000B955C()
{
  sub_10003DCD8();
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *v0;
  sub_10000870C();
  *v5 = v4;

  v6 = *(v1 + 160);
  v7 = *(v1 + 152);

  return _swift_task_switch(sub_1000B9694, v7, v6);
}

uint64_t sub_1000B9694()
{
  if (*(v0 + 184) == 1)
  {
    v1 = *(v0 + 144);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    if (qword_1001882C8 != -1)
    {
      sub_1000BBF30();
    }

    v2 = *(v0 + 24);
    v3 = type metadata accessor for Logger();
    sub_10000C2D4(v3, qword_1001A5858);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 16);
      v6 = *(v0 + 24);
      v8 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *(v8 + 4) = sub_1000BC094(4.8751e-34, v23);
      sub_1000BC03C();
      _os_log_impl(v9, v10, v11, v12, v8, 0xCu);
      sub_1000086BC(v23);
      sub_100008744();
      sub_100008744();
    }

    sub_1000BC074();

    sub_10000875C();

    return v13();
  }

  else
  {
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 32);
    v18 = *(v0 + 40);
    AsyncStream.Continuation.yield<A>()();
    (*(v16 + 8))(v15, v18);
    v19 = *(v0 + 136);
    *(v0 + 168) = static MainActor.shared.getter();
    v20 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    swift_task_alloc();
    sub_10004F4B0();
    *(v0 + 176) = v21;
    *v21 = v22;
    sub_1000BBF7C();
    sub_1000BC048();

    return AsyncStream.Iterator.next(isolation:)();
  }
}

uint64_t sub_1000B98CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_100003768(&qword_10018FD48, &qword_10012D228) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_100003768(&qword_10018FD50, &qword_10012D230);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_100003768(&qword_10018FD58, &qword_10012D238);
  v4[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v11;
  v4[14] = v10;

  return _swift_task_switch(sub_1000B9A18, v11, v10);
}

uint64_t sub_1000B9A18()
{
  sub_10003DCD8();
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  static Clock<>.suspending.getter();
  *(v2 + *(v3 + 36)) = xmmword_10012CFF0;
  v5 = v2 + *(v3 + 40);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  AsyncTimerSequence.makeAsyncIterator()();
  sub_100044F98(v2, &qword_10018FD50, &qword_10012D230);
  swift_beginAccess();
  v6 = v0[11];
  v0[15] = static MainActor.shared.getter();
  v7 = async function pointer to AsyncTimerSequence.Iterator.next()[1];
  swift_task_alloc();
  sub_10004F4B0();
  v0[16] = v8;
  *v8 = v9;
  v10 = sub_1000BBF50(v8);

  return AsyncTimerSequence.Iterator.next()(v10);
}

uint64_t sub_1000B9B10()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *v0;
  sub_10000870C();
  *v5 = v4;

  if (v3)
  {
    v6 = *(v1 + 120);
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_1000B9C40, v7, v9);
}

uint64_t sub_1000B9C40()
{
  sub_100025A94();
  v1 = v0[15];

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_1000B9CA0, v2, v3);
}

uint64_t sub_1000B9CA0()
{
  sub_10003DCD8();
  v1 = v0[6];
  v2 = type metadata accessor for SuspendingClock.Instant();
  if (sub_10000E5F0(v1, 1, v2) == 1)
  {
    v3 = v0[12];
    sub_100044F98(v0[10], &qword_10018FD58, &qword_10012D238);

LABEL_8:
    if (qword_1001882C8 != -1)
    {
      sub_1000BBF30();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C2D4(v7, qword_1001A5858);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      sub_1000BC03C();
      _os_log_impl(v11, v12, v13, v14, v10, 2u);
      sub_100008744();
    }

    v15 = v0[10];
    v16 = v0[8];
    v17 = v0[6];

    sub_10000875C();

    return v18();
  }

  v4 = v0[5];
  if (!swift_weakLoadStrong())
  {
    v6 = v0[12];
    sub_100044F98(v0[10], &qword_10018FD58, &qword_10012D238);
    goto LABEL_7;
  }

  if (static Task<>.isCancelled.getter())
  {
    v5 = v0[12];
    sub_100044F98(v0[10], &qword_10018FD58, &qword_10012D238);

LABEL_7:

    sub_100044F98(v0[6], &qword_10018FD48, &qword_10012D228);
    goto LABEL_8;
  }

  if (!sub_1000B9F0C())
  {
    sub_1000B9F7C();
  }

  v20 = v0[6];

  sub_100044F98(v20, &qword_10018FD48, &qword_10012D228);
  v21 = v0[11];
  v0[15] = static MainActor.shared.getter();
  v22 = async function pointer to AsyncTimerSequence.Iterator.next()[1];
  swift_task_alloc();
  sub_10004F4B0();
  v0[16] = v23;
  *v23 = v24;
  v25 = sub_1000BBF50();

  return AsyncTimerSequence.Iterator.next()(v25);
}

BOOL sub_1000B9F0C()
{
  swift_getKeyPath();
  v1 = sub_1000BBBF8();
  sub_100096938(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return TMIsAutomaticTimeZoneEnabled() != 0;
}

uint64_t sub_1000B9F7C()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_100008780(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v8 = v7 - v6;
  v9 = type metadata accessor for Date();
  v10 = sub_100008780(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000C30C();
  v17 = v16 - v15;
  static Date.now.getter();
  v18 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v8, v0);
  [v18 setLocale:isa];

  [v18 setDateStyle:2];
  v20 = Date._bridgeToObjectiveC()().super.isa;
  v21 = [v18 stringFromDate:v20];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  sub_1000BBFE4();
  sub_1000B7528(v22, v24, v25);
  [v18 setDateStyle:0];
  [v18 setTimeStyle:1];
  v26 = Date._bridgeToObjectiveC()().super.isa;
  v27 = [v18 stringFromDate:v26];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  sub_1000BBFCC();
  sub_1000B7528(v28, v30, v31);

  return (*(v12 + 8))(v17, v9);
}

uint64_t sub_1000BA20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_100003768(&qword_10018FD40, &qword_10012D1D0);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = type metadata accessor for MainActor();
  v6[12] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[13] = v11;
  v6[14] = v10;

  return _swift_task_switch(sub_1000BA314, v11, v10);
}

uint64_t sub_1000BA314()
{
  sub_10003DCD8();
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  sub_100003768(&qword_10018A890, &unk_100124D30);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v0[15] = 0;
  v4 = v0[11];
  v0[16] = static MainActor.shared.getter();
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  swift_task_alloc();
  sub_10004F4B0();
  v0[17] = v6;
  *v6 = v7;
  sub_1000BBFA4(v6);
  sub_1000BC048();

  return AsyncStream.Iterator.next(isolation:)();
}

uint64_t sub_1000BA3E8()
{
  sub_10003DCD8();
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *v0;
  sub_10000870C();
  *v5 = v4;

  v6 = *(v1 + 112);
  v7 = *(v1 + 104);

  return _swift_task_switch(sub_1000BA520, v7, v6);
}

uint64_t sub_1000BA520()
{
  if (*(v0 + 144) == 1 || (v1 = *(v0 + 48), !swift_weakLoadStrong()))
  {
    v4 = sub_1000BC060();
    v5(v4);
    goto LABEL_6;
  }

  if (static Task<>.isCancelled.getter())
  {
    v2 = sub_1000BC060();
    v3(v2);

LABEL_6:

    if (qword_1001882C8 != -1)
    {
      sub_1000BBF30();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C2D4(v6, qword_1001A5858);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      sub_1000BC03C();
      _os_log_impl(v10, v11, v12, v13, v9, 2u);
      sub_100008744();
    }

    v14 = *(v0 + 80);

    sub_10000875C();

    return v15();
  }

  v17 = *(v0 + 120);
  v18 = *(v0 + 56);
  sub_1000BC054();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_task_alloc();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  *(v0 + 120) = v17;
  v21 = *(v0 + 88);
  *(v0 + 128) = static MainActor.shared.getter();
  v22 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  swift_task_alloc();
  sub_10004F4B0();
  *(v0 + 136) = v23;
  *v23 = v24;
  sub_1000BBFA4();
  sub_1000BC048();

  return AsyncStream.Iterator.next(isolation:)();
}

id sub_1000BA784()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    result = [objc_opt_self() sharedConnection];
    if (result)
    {
      v1 = result;
      v2 = [result isAutomaticDateAndTimeEnforced];

      sub_1000B7868(v2);
      swift_getKeyPath();
      sub_1000B739C();

      sub_1000B8850();
      sub_1000B76B4();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

BOOL sub_1000BA88C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000B9F0C();
  *v1 = result;
  return result;
}

uint64_t sub_1000BA8B8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000BA8E0();
}

uint64_t sub_1000BA8E0()
{
  swift_getKeyPath();
  sub_1000B739C();
}

uint64_t sub_1000BA950(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_1000B739C();

  TMSetAutomaticTimeZoneEnabled();
  if (a2)
  {
    TMSetAutomaticTimeEnabled();
    return sub_1000B9F7C();
  }

  v3 = sub_1000BAA98();
  if (!v4)
  {
    return sub_1000B9F7C();
  }

  v5 = v3;
  v6 = v4;
  v7 = String._bridgeToObjectiveC()();
  v8 = DTResolveCity(v7);

  if (!v8)
  {
LABEL_8:

    return sub_1000B9F7C();
  }

  result = sub_10005CD84(v8, &selRef_name);
  if (v10)
  {
    v11 = result;
    v12 = v10;
    result = sub_10005CD84(v8, &selRef_timeZone);
    if (v13)
    {
      v14[0] = v11;
      v14[1] = v12;
      v14[2] = result;
      v14[3] = v13;
      v14[4] = v5;
      v14[5] = v6;
      sub_1000BAB50(v14);

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BAA98()
{
  swift_getKeyPath();
  sub_1000BBBF8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (qword_100188278 != -1)
  {
    swift_once();
  }

  return sub_1000BACA8();
}

id sub_1000BAB50(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  sub_1000B76B4();
  v4 = a1[4];
  v5 = a1[5];

  sub_1000BABE8();
  v6 = a1[2];
  v7 = a1[3];
  String.utf8CString.getter();
  tzlink();

  v8 = objc_opt_self();

  return [v8 resetSystemTimeZone];
}

uint64_t sub_1000BABE8()
{
  swift_getKeyPath();
  sub_1000B739C();
}

uint64_t sub_1000BAC60(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_1000BACA8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_1000BAD24(uint64_t a1, uint64_t a2)
{
  if (qword_100188278 != -1)
  {
    swift_once();
  }

  v4 = qword_10018FBE0;
  if (a2)
  {
    v5 = &type metadata for String;
    v6 = a2;
  }

  else
  {
    a1 = 0;
    v6 = 0;
    v5 = 0;
    v8[2] = 0;
  }

  v8[0] = a1;
  v8[1] = v6;
  v9 = v5;

  sub_1000BAE60(v8);
  sub_100044F98(v8, &unk_10018A520, &unk_100124310);
  v9 = &type metadata for Bool;
  LOBYTE(v8[0]) = 1;
  sub_1000BAE60(v8);
  sub_100044F98(v8, &unk_10018A520, &unk_100124310);
  return [v4 synchronize];
}