uint64_t sub_10007E5A4()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A7340);
  sub_10000B614(v0, qword_1000A7340);
  return sub_100084F98();
}

unint64_t sub_10007E5F0(char a1)
{
  result = 0x6E65644965707974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6954746E65726170;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x4164657461657263;
      break;
    case 7:
      result = 0x6465696669646F6DLL;
      break;
    case 8:
      result = 0x656C746974;
      break;
    case 9:
      result = 0x64656E6E69507369;
      break;
    case 10:
      result = 0x4E6B636975517369;
      break;
    case 11:
      result = 0x7974537265706170;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0x7441646577656976;
      break;
    case 16:
    case 22:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x6574707972636E65;
      break;
    case 21:
      result = 0x746E65746E6F63;
      break;
    case 23:
      result = 0x6974697669746361;
      break;
    case 24:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10007E948(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A7538, &qword_10008FDE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100082098();
  sub_100085A78();
  LOBYTE(v60[0]) = *v3;
  LOBYTE(v53) = 0;
  sub_100040CF8();
  sub_1000858D8();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v60[0]) = 1;
    sub_100085898();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v60[0]) = 2;
    sub_100085848();
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    LOBYTE(v60[0]) = 3;
    sub_100085848();
    v17 = *(v3 + 56);
    LOBYTE(v60[0]) = 4;
    sub_100085858();
    v18 = *(v3 + 57);
    LOBYTE(v60[0]) = 5;
    sub_100085858();
    v67 = type metadata accessor for ICNoteArchiveModel();
    v19 = v67[10];
    LOBYTE(v60[0]) = 6;
    sub_1000848B8();
    sub_100082430(&qword_1000A5630, &type metadata accessor for Date);
    sub_100085888();
    v20 = v67;
    v21 = v67[11];
    LOBYTE(v60[0]) = 7;
    sub_100085888();
    v22 = (v3 + v20[12]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v60[0]) = 8;
    sub_100085848();
    v25 = *(v3 + v20[13]);
    LOBYTE(v60[0]) = 9;
    sub_100085858();
    v26 = *(v3 + v67[14]);
    LOBYTE(v60[0]) = 10;
    sub_100085858();
    LOBYTE(v60[0]) = *(v3 + v67[15]);
    LOBYTE(v53) = 11;
    sub_1000820EC();
    sub_100085888();
    LOBYTE(v60[0]) = *(v3 + v67[16]);
    LOBYTE(v53) = 12;
    sub_100082140();
    sub_100085888();
    LOBYTE(v60[0]) = *(v3 + v67[17]);
    LOBYTE(v53) = 13;
    sub_10005CAC0();
    sub_100085888();
    v27 = (v3 + v67[18]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v60[0]) = 14;
    sub_100085848();
    v30 = v67[19];
    LOBYTE(v60[0]) = 15;
    sub_100085888();
    v31 = v67[20];
    LOBYTE(v60[0]) = 16;
    sub_100085888();
    v32 = v67[21];
    LOBYTE(v60[0]) = 17;
    sub_100085888();
    v33 = v67[22];
    LOBYTE(v60[0]) = 18;
    sub_100085888();
    v34 = v67[23];
    v66 = 19;
    sub_100085888();
    v35 = (v3 + v67[24]);
    v36 = v35[3];
    v37 = v35[5];
    v63 = v35[4];
    v64 = v37;
    v38 = v35[1];
    v60[0] = *v35;
    v60[1] = v38;
    v39 = v35[3];
    v41 = *v35;
    v40 = v35[1];
    v61 = v35[2];
    v62 = v39;
    v42 = v35[5];
    v57 = v63;
    v58 = v42;
    v53 = v41;
    v54 = v40;
    v65 = *(v35 + 12);
    v59 = *(v35 + 12);
    v55 = v61;
    v56 = v36;
    v52 = 20;
    sub_100005888(v60, v50, &qword_1000A7360, &qword_10008F8A8);
    sub_100082194();
    sub_100085888();
    v50[4] = v57;
    v50[5] = v58;
    v51 = v59;
    v50[0] = v53;
    v50[1] = v54;
    v50[2] = v55;
    v50[3] = v56;
    sub_1000058F0(v50, &qword_1000A7360, &qword_10008F8A8);
    v43 = (v3 + v67[25]);
    v44 = *(v43 + 2);
    v48 = *v43;
    v49 = v44;
    v47 = 21;
    sub_100055624();
    sub_100085888();
    *&v48 = *(v3 + v67[26]);
    v47 = 22;
    sub_100005740(&qword_1000A7408, &unk_10008F8D8);
    sub_1000822F8(&qword_1000A7560, &qword_1000A6070);
    sub_100085888();
    *&v48 = *(v3 + v67[27]);
    v47 = 23;
    sub_100005740(&unk_1000A6F28, &qword_10008EB50);
    sub_100082394(&qword_1000A70F8, &qword_1000A7100);
    sub_100085888();
    *&v48 = *(v3 + v67[28]);
    v47 = 24;
    sub_100005740(&unk_1000A7418, &qword_10008F8E8);
    sub_1000821E8();
    sub_100085888();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10007F1B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v103 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v95 = v91 - v8;
  v9 = __chkstk_darwin(v7);
  v94 = v91 - v10;
  v11 = __chkstk_darwin(v9);
  v93 = v91 - v12;
  v13 = __chkstk_darwin(v11);
  v97 = v91 - v14;
  v15 = __chkstk_darwin(v13);
  v98 = v91 - v16;
  __chkstk_darwin(v15);
  v99 = v91 - v17;
  v18 = sub_100005740(&qword_1000A7570, &qword_10008FDE8);
  v100 = *(v18 - 8);
  v101 = v18;
  v19 = *(v100 + 64);
  __chkstk_darwin(v18);
  v21 = v91 - v20;
  v22 = type metadata accessor for ICNoteArchiveModel();
  v23 = *(*(v22 - 1) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v24 + 40);
  v28 = sub_1000848B8();
  v29 = *(*(v28 - 8) + 56);
  v113 = v27;
  v29(&v26[v27], 1, 1, v28);
  v111 = v22[11];
  v29(&v26[v111], 1, 1, v28);
  v109 = v22[19];
  v29(&v26[v109], 1, 1, v28);
  v108 = v22[20];
  v29(&v26[v108], 1, 1, v28);
  v107 = v22[21];
  v29(&v26[v107], 1, 1, v28);
  v106 = v22[22];
  v29(&v26[v106], 1, 1, v28);
  v105 = v22[23];
  v29(&v26[v105], 1, 1, v28);
  v30 = v22[24];
  v135 = v26;
  v31 = &v26[v30];
  *(v31 + 12) = 0;
  *(v31 + 4) = 0u;
  *(v31 + 5) = 0u;
  *(v31 + 2) = 0u;
  *(v31 + 3) = 0u;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v104 = v31;
  v33 = a1[3];
  v32 = a1[4];
  v110 = a1;
  sub_10000626C(a1, v33);
  sub_100082098();
  v102 = v21;
  v34 = v112;
  sub_100085A68();
  if (v34)
  {
    v112 = v34;
    sub_100006304(v110);
    swift_bridgeObjectRelease_n();
    v103 = 0;
    v38 = 0;
    v39 = 0;
    v110 = 0;
LABEL_4:
    v40 = v135;
    sub_1000058F0(&v135[v113], &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(&v40[v111], &qword_1000A5490, &qword_10008CD80);

    sub_1000058F0(&v40[v109], &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(&v40[v108], &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(&v40[v107], &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(&v40[v106], &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(&v40[v105], &qword_1000A5490, &qword_10008CD80);
    v41 = *(v104 + 5);
    v132 = *(v104 + 4);
    v133 = v41;
    v134 = *(v104 + 12);
    v42 = *(v104 + 1);
    v128 = *v104;
    v129 = v42;
    v43 = *(v104 + 3);
    v130 = *(v104 + 2);
    v131 = v43;
    sub_1000058F0(&v128, &qword_1000A7360, &qword_10008F8A8);
    sub_100031130(v39, v38);
  }

  v35 = v99;
  v92 = v22;
  v36 = v103;
  LOBYTE(v125[0]) = 0;
  sub_100041428();
  sub_100085828();
  v37 = v135;
  *v135 = v128;
  LOBYTE(v128) = 1;
  *(v37 + 1) = sub_1000857E8();
  *(v37 + 2) = v45;
  LOBYTE(v128) = 2;
  *(v37 + 3) = sub_100085798();
  *(v37 + 4) = v46;
  v91[1] = v46;
  LOBYTE(v128) = 3;
  *(v37 + 5) = sub_100085798();
  *(v37 + 6) = v47;
  v91[0] = v47;
  LOBYTE(v128) = 4;
  v37[56] = sub_1000857A8();
  LOBYTE(v128) = 5;
  v37[57] = sub_1000857A8();
  LOBYTE(v128) = 6;
  sub_100082430(&qword_1000A55F8, &type metadata accessor for Date);
  sub_1000857D8();
  sub_100040A94(v35, &v37[v113]);
  LOBYTE(v128) = 7;
  v49 = v98;
  sub_1000857D8();
  sub_100040A94(v49, &v37[v111]);
  LOBYTE(v128) = 8;
  v50 = sub_100085798();
  v112 = 0;
  v52 = &v135[v92[12]];
  *v52 = v50;
  v52[1] = v51;
  v98 = v51;
  LOBYTE(v128) = 9;
  v53 = v112;
  v54 = sub_1000857A8();
  v112 = v53;
  if (v53)
  {
    goto LABEL_11;
  }

  v135[v92[13]] = v54;
  LOBYTE(v128) = 10;
  v55 = v112;
  v56 = sub_1000857A8();
  v112 = v55;
  if (v55)
  {
    goto LABEL_11;
  }

  v135[v92[14]] = v56;
  LOBYTE(v125[0]) = 11;
  sub_100081DCC();
  v57 = v112;
  sub_1000857D8();
  v112 = v57;
  if (v57)
  {
    goto LABEL_11;
  }

  v135[v92[15]] = v128;
  LOBYTE(v125[0]) = 12;
  sub_100081EAC();
  v58 = v112;
  sub_1000857D8();
  v112 = v58;
  if (v58)
  {
    goto LABEL_11;
  }

  v135[v92[16]] = v128;
  LOBYTE(v125[0]) = 13;
  sub_10005CD34();
  v59 = v112;
  sub_1000857D8();
  v112 = v59;
  if (v59 || (v135[v92[17]] = v128, LOBYTE(v128) = 14, v60 = v112, v61 = sub_100085798(), v99 = v62, (v112 = v60) != 0))
  {
LABEL_11:
    (*(v100 + 8))(v102, v101);
    v63 = 0;
    v39 = 0;
    v38 = 0;
    v103 = 0;
    v99 = 0;
LABEL_12:
    v64 = v110;
    v110 = v63;
    sub_100006304(v64);
    v48 = *(v135 + 2);

    goto LABEL_4;
  }

  v65 = &v135[v92[18]];
  v66 = v99;
  *v65 = v61;
  v65[1] = v66;
  LOBYTE(v128) = 15;
  v67 = v112;
  sub_1000857D8();
  v112 = v67;
  if (v67)
  {
    goto LABEL_20;
  }

  sub_100040A94(v97, &v135[v109]);
  LOBYTE(v128) = 16;
  v68 = v112;
  sub_1000857D8();
  v112 = v68;
  if (v68)
  {
    goto LABEL_20;
  }

  sub_100040A94(v93, &v135[v108]);
  LOBYTE(v128) = 17;
  v69 = v112;
  sub_1000857D8();
  v112 = v69;
  if (v69)
  {
    goto LABEL_20;
  }

  sub_100040A94(v94, &v135[v107]);
  LOBYTE(v128) = 18;
  v70 = v112;
  sub_1000857D8();
  v112 = v70;
  if (v70)
  {
    goto LABEL_20;
  }

  sub_100040A94(v95, &v135[v106]);
  LOBYTE(v128) = 19;
  v71 = v112;
  sub_1000857D8();
  v112 = v71;
  if (v71)
  {
    goto LABEL_20;
  }

  sub_100040A94(v36, &v135[v105]);
  v127 = 20;
  sub_1000822A4();
  v72 = v112;
  sub_1000857D8();
  v112 = v72;
  if (v72)
  {
    goto LABEL_20;
  }

  v122 = v132;
  v123 = v133;
  v124 = v134;
  v118 = v128;
  v119 = v129;
  v120 = v130;
  v121 = v131;
  v73 = v104;
  v74 = *(v104 + 1);
  v125[0] = *v104;
  v125[1] = v74;
  v75 = *(v104 + 2);
  v76 = *(v104 + 3);
  v77 = *(v104 + 4);
  v78 = *(v104 + 5);
  v126 = *(v104 + 12);
  v125[4] = v77;
  v125[5] = v78;
  v125[2] = v75;
  v125[3] = v76;
  sub_1000058F0(v125, &qword_1000A7360, &qword_10008F8A8);
  v79 = v123;
  *(v73 + 4) = v122;
  *(v73 + 5) = v79;
  *(v73 + 12) = v124;
  v80 = v119;
  *v73 = v118;
  *(v73 + 1) = v80;
  v81 = v121;
  *(v73 + 2) = v120;
  *(v73 + 3) = v81;
  v114 = 21;
  sub_100055534();
  v82 = v112;
  sub_1000857D8();
  v112 = v82;
  if (v82)
  {
LABEL_20:
    (*(v100 + 8))(v102, v101);
    v63 = 0;
    v39 = 0;
    v38 = 0;
    v103 = 0;
    goto LABEL_12;
  }

  v83 = &v135[v92[25]];
  v84 = v116;
  v85 = v117;
  v39 = v115;
  *v83 = v115;
  v83[1] = v84;
  v38 = v84;
  v103 = v85;
  v83[2] = v85;
  sub_100005740(&qword_1000A7408, &unk_10008F8D8);
  v114 = 22;
  sub_1000822F8(&qword_1000A7580, &qword_1000A6060);
  v86 = v112;
  sub_1000857D8();
  v112 = v86;
  if (v86)
  {
    (*(v100 + 8))(v102, v101);
    v63 = 0;
    goto LABEL_12;
  }

  v63 = v115;
  *&v135[v92[26]] = v115;
  sub_100005740(&unk_1000A6F28, &qword_10008EB50);
  v114 = 23;
  sub_100082394(&qword_1000A7110, &qword_1000A7118);
  v87 = v112;
  sub_1000857D8();
  v112 = v87;
  if (v87 || (*&v135[v92[27]] = v115, sub_100005740(&unk_1000A7418, &qword_10008F8E8), v114 = 24, sub_100082478(), v88 = v112, sub_1000857D8(), (v112 = v88) != 0))
  {
    (*(v100 + 8))(v102, v101);
    goto LABEL_12;
  }

  v89 = v92[28];
  (*(v100 + 8))(v102, v101);
  v90 = v135;
  *&v135[v89] = v115;
  sub_100082534(v90, v96, type metadata accessor for ICNoteArchiveModel);
  sub_100006304(v110);
  return sub_10008259C(v90, type metadata accessor for ICNoteArchiveModel);
}

uint64_t sub_1000800D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000825FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000800F8(uint64_t a1)
{
  v2 = sub_100082098();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100080134(uint64_t a1)
{
  v2 = sub_100082098();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000801A0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_100084918();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = [a1 timestamp];
  if (v14)
  {
    v15 = v14;
    sub_100084888();

    v16 = sub_1000848B8();
    (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
    sub_1000058F0(v13, &qword_1000A5490, &qword_10008CD80);
    isa = sub_1000859D8().super.super.isa;
    v18 = [a1 replicaID];
    sub_1000848F8();

    v19 = sub_1000848E8().super.isa;
    (*(v6 + 8))(v9, v5);
    [a3 setNotesVersion:isa forReplicaID:v19];
  }

  else
  {
    v20 = sub_1000848B8();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    sub_1000058F0(v13, &qword_1000A5490, &qword_10008CD80);
  }
}

uint64_t sub_10008040C()
{
  *v0;
  *v0;
  *v0;
  sub_100085118();
}

uint64_t sub_100080544@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100082DA8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100080574(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1162760014;
  v5 = 0xEC00000053454E49;
  v6 = 0x4C5F4D554944454DLL;
  if (v2 != 5)
  {
    v6 = 0x494C5F454752414CLL;
    v5 = 0xEB0000000053454ELL;
  }

  v7 = 0x52475F454752414CLL;
  v8 = 0xEA00000000004449;
  if (v2 != 3)
  {
    v7 = 0x494C5F4C4C414D53;
    v8 = 0xEB0000000053454ELL;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x52475F4C4C414D53;
  v10 = 0xEA00000000004449;
  if (v2 != 1)
  {
    v9 = 0x475F4D554944454DLL;
    v10 = 0xEB00000000444952;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_10008078C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x544847494CLL;
  }

  else
  {
    v4 = 0x544C5541464544;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x544847494CLL;
  }

  else
  {
    v6 = 0x544C5541464544;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100085948();
  }

  return v9 & 1;
}

Swift::Int sub_100080830()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_1000808B0()
{
  *v0;
  sub_100085118();
}

Swift::Int sub_10008091C()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100080998@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10009E540;
  v8._object = v3;
  v5 = sub_100085788(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1000809F8(uint64_t *a1@<X8>)
{
  v2 = 0x544C5541464544;
  if (*v1)
  {
    v2 = 0x544847494CLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100080B4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x49414E424D554854;
  v4 = 0xE90000000000004CLL;
  if (v2 != 1)
  {
    v3 = 0x4D554944454DLL;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x57454956455250;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x49414E424D554854;
  v8 = 0xE90000000000004CLL;
  if (*a2 != 1)
  {
    v7 = 0x4D554944454DLL;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x57454956455250;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100085948();
  }

  return v11 & 1;
}

Swift::Int sub_100080C50()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100080CF4()
{
  *v0;
  *v0;
  sub_100085118();
}

Swift::Int sub_100080D84()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100080E24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100082DF4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100080E54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE90000000000004CLL;
  v5 = 0x49414E424D554854;
  if (v2 != 1)
  {
    v5 = 0x4D554944454DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x57454956455250;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100080FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return sub_100084A28();
}

uint64_t sub_100081060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return sub_100084A48();
}

uint64_t sub_1000810EC(uint64_t result)
{
  if (result >= 3u)
  {
    if (qword_1000A5470 != -1)
    {
      swift_once();
    }

    v1 = sub_100084FB8();
    sub_10000B614(v1, qword_1000A7340);
    v2 = sub_100084FA8();
    v3 = sub_100085388();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unknown attachment view type — returning default", v4, 2u);
    }

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ICNoteArchiveModel()
{
  result = qword_1000A73D0;
  if (!qword_1000A73D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100081224(unint64_t a1)
{
  if (a1 < 8)
  {
    return 0x605040302010007uLL >> (8 * a1);
  }

  if (qword_1000A5470 != -1)
  {
    swift_once();
  }

  v2 = sub_100084FB8();
  sub_10000B614(v2, qword_1000A7340);
  v3 = sub_100084FA8();
  v4 = sub_100085388();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown paper style — returning nil", v5, 2u);
  }

  return 7;
}

uint64_t sub_100081328(unsigned __int16 a1)
{
  if (a1 < 3u)
  {
    return 0x10002u >> (8 * a1);
  }

  if (qword_1000A5470 != -1)
  {
    swift_once();
  }

  v2 = sub_100084FB8();
  sub_10000B614(v2, qword_1000A7340);
  v3 = sub_100084FA8();
  v4 = sub_100085388();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown preferred background color — returning nil", v5, 2u);
  }

  return 2;
}

uint64_t sub_100081428(uint64_t a1, char a2, uint64_t *a3)
{
  v70 = a3;
  v5 = sub_100084918();
  v63 = *(v5 - 8);
  v6 = v63[8];
  __chkstk_darwin(v5);
  v69 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005740(&qword_1000A5A28, &unk_10008F890);
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v68 = &v59 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return result;
  }

  v14 = v68;
  v15 = (v68 + *(result + 48));
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v65 = *(v11 + 72);
  v60 = v16;
  sub_100005888(a1 + v16, v68, &qword_1000A5A28, &unk_10008F890);
  v17 = v63[4];
  v18 = v69;
  v66 = (v63 + 4);
  v67 = v5;
  v17(v69, v14, v5);
  v64 = v15;
  v19 = *v15;
  v20 = v15[1];
  v21 = *v70;
  v23 = sub_1000391F4(v18);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    goto LABEL_24;
  }

  LOBYTE(v18) = v22;
  v27 = v21[3];
  v61 = v19;
  if (v27 >= v26)
  {
    v19 = v66;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v32 = v20;
    while (1)
    {
LABEL_8:
      v20 = v19 - 3;
      v33 = *v70;
      if (v18)
      {
        v18 = v67;
        (*v20)(v69, v67);
        v34 = (v33[7] + 16 * v23);
        v35 = v34[1];
        *v34 = v61;
        v34[1] = v32;

        v36 = v13 - 1;
        if (v13 == 1)
        {
          return result;
        }
      }

      else
      {
        v33[(v23 >> 6) + 8] |= 1 << v23;
        v18 = v67;
        result = (v17)(v33[6] + v63[9] * v23, v69, v67);
        v37 = (v33[7] + 16 * v23);
        *v37 = v61;
        v37[1] = v32;
        v38 = v33[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_25;
        }

        v33[2] = v40;
        v36 = v13 - 1;
        if (v13 == 1)
        {
          return result;
        }
      }

      v13 = a1 + v65 + v60;
      v62 = (v19 - 3);
      while (1)
      {
        v43 = v68;
        sub_100005888(v13, v68, &qword_1000A5A28, &unk_10008F890);
        v20 = *v19;
        v44 = v69;
        (*v19)(v69, v43, v18);
        a1 = *v64;
        v17 = v64[1];
        v45 = *v70;
        v23 = sub_1000391F4(v44);
        v47 = v45[2];
        v48 = (v46 & 1) == 0;
        v49 = v47 + v48;
        if (__OFADD__(v47, v48))
        {
          break;
        }

        v50 = v46;
        if (v45[3] < v49)
        {
          v51 = v70;
          sub_100039E64(v49, 1);
          v52 = *v51;
          v53 = sub_1000391F4(v69);
          if ((v50 & 1) != (v54 & 1))
          {
            goto LABEL_27;
          }

          v23 = v53;
        }

        v55 = *v70;
        if (v50)
        {
          v18 = v67;
          (*v62)(v69, v67);
          v41 = (v55[7] + 16 * v23);
          v42 = v41[1];
          *v41 = a1;
          v41[1] = v17;

          v19 = v66;
        }

        else
        {
          v55[(v23 >> 6) + 8] |= 1 << v23;
          v19 = v66;
          v18 = v67;
          result = (v20)(v55[6] + v63[9] * v23, v69, v67);
          v56 = (v55[7] + 16 * v23);
          *v56 = a1;
          v56[1] = v17;
          v57 = v55[2];
          v39 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v39)
          {
            goto LABEL_25;
          }

          v55[2] = v58;
        }

        v13 += v65;
        if (!--v36)
        {
          return result;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v32 = v20;
      sub_10002BF44();
    }
  }

  v28 = v70;
  sub_100039E64(v26, a2 & 1);
  v29 = *v28;
  v30 = sub_1000391F4(v69);
  if ((v18 & 1) == (v31 & 1))
  {
    v23 = v30;
    v32 = v20;
    v19 = v66;
    goto LABEL_8;
  }

LABEL_27:
  result = sub_100085978();
  __break(1u);
  return result;
}

uint64_t sub_1000818D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100081920(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100081938(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005740(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000819B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100081A84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100081B34()
{
  sub_1000341B8(319, &qword_1000A5538);
  if (v0 <= 0x3F)
  {
    sub_1000341B8(319, &unk_1000A5880);
    if (v1 <= 0x3F)
    {
      sub_100054660();
      if (v2 <= 0x3F)
      {
        sub_1000341B8(319, &qword_1000A73E0);
        if (v3 <= 0x3F)
        {
          sub_1000341B8(319, &qword_1000A73E8);
          if (v4 <= 0x3F)
          {
            sub_1000341B8(319, &qword_1000A6A88);
            if (v5 <= 0x3F)
            {
              sub_1000341B8(319, &qword_1000A73F0);
              if (v6 <= 0x3F)
              {
                sub_1000341B8(319, &qword_1000A73F8);
                if (v7 <= 0x3F)
                {
                  sub_10005C578(319, &qword_1000A7400, &qword_1000A7408, &unk_10008F8D8);
                  if (v8 <= 0x3F)
                  {
                    sub_10005C578(319, &qword_1000A6F20, &unk_1000A6F28, &qword_10008EB50);
                    if (v9 <= 0x3F)
                    {
                      sub_10005C578(319, &qword_1000A7410, &unk_1000A7418, &qword_10008F8E8);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100081DCC()
{
  result = qword_1000A74A8;
  if (!qword_1000A74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A74A8);
  }

  return result;
}

unint64_t sub_100081E54()
{
  result = qword_1000A74C0;
  if (!qword_1000A74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A74C0);
  }

  return result;
}

unint64_t sub_100081EAC()
{
  result = qword_1000A74C8;
  if (!qword_1000A74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A74C8);
  }

  return result;
}

unint64_t sub_100081F34()
{
  result = qword_1000A74E0;
  if (!qword_1000A74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A74E0);
  }

  return result;
}

unint64_t sub_100081FC0()
{
  result = qword_1000A74F8;
  if (!qword_1000A74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A74F8);
  }

  return result;
}

uint64_t sub_100082014(uint64_t a1)
{
  *(a1 + 8) = sub_100082430(&qword_1000A6700, type metadata accessor for ICNoteArchiveModel);
  result = sub_100082430(&qword_1000A7190, type metadata accessor for ICNoteArchiveModel);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100082098()
{
  result = qword_1000A7540;
  if (!qword_1000A7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7540);
  }

  return result;
}

unint64_t sub_1000820EC()
{
  result = qword_1000A7548;
  if (!qword_1000A7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7548);
  }

  return result;
}

unint64_t sub_100082140()
{
  result = qword_1000A7550;
  if (!qword_1000A7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7550);
  }

  return result;
}

unint64_t sub_100082194()
{
  result = qword_1000A7558;
  if (!qword_1000A7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7558);
  }

  return result;
}

unint64_t sub_1000821E8()
{
  result = qword_1000A7568;
  if (!qword_1000A7568)
  {
    sub_100011888(&unk_1000A7418, &qword_10008F8E8);
    sub_100082430(&qword_1000A6070, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7568);
  }

  return result;
}

unint64_t sub_1000822A4()
{
  result = qword_1000A7578;
  if (!qword_1000A7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7578);
  }

  return result;
}

uint64_t sub_1000822F8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A7408, &unk_10008F8D8);
    sub_100082430(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100082394(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&unk_1000A6F28, &qword_10008EB50);
    sub_100082430(a2, _s8ActivityVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100082430(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100082478()
{
  result = qword_1000A7588;
  if (!qword_1000A7588)
  {
    sub_100011888(&unk_1000A7418, &qword_10008F8E8);
    sub_100082430(&qword_1000A6060, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7588);
  }

  return result;
}

uint64_t sub_100082534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008259C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000825FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000871D0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000871F0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100087210 == a2 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_100085948() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (sub_100085948() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100085948() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64656E6E69507369 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4E6B636975517369 && a2 == 0xEB0000000065746FLL || (sub_100085948() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7974537265706170 && a2 == 0xEA0000000000656CLL || (sub_100085948() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100087350 == a2 || (sub_100085948() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100087370 == a2 || (sub_100085948() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000100087390 == a2 || (sub_100085948() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7441646577656976 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001000873B0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000873D0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000873F0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100087410 == a2 || (sub_100085948() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464 || (sub_100085948() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_100085948() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100087430 == a2 || (sub_100085948() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6974697669746361 && a2 == 0xEA00000000007365 || (sub_100085948() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000100087450 == a2)
  {

    return 24;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

uint64_t sub_100082DA8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E450;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100082DF4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E5B8;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100082E40()
{
  result = qword_1000A7590;
  if (!qword_1000A7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7590);
  }

  return result;
}

unint64_t sub_100082E94()
{
  result = qword_1000A7598;
  if (!qword_1000A7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7598);
  }

  return result;
}

unint64_t sub_100082EE8()
{
  result = qword_1000A75A0;
  if (!qword_1000A75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75A0);
  }

  return result;
}

unint64_t sub_100082F3C()
{
  result = qword_1000A75A8;
  if (!qword_1000A75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75A8);
  }

  return result;
}

unint64_t sub_100082F90()
{
  result = qword_1000A75B0;
  if (!qword_1000A75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75B0);
  }

  return result;
}

unint64_t sub_100082FE4()
{
  result = qword_1000A75B8;
  if (!qword_1000A75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75B8);
  }

  return result;
}

unint64_t sub_10008304C()
{
  result = qword_1000A75C0;
  if (!qword_1000A75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75C0);
  }

  return result;
}

unint64_t sub_1000830A4()
{
  result = qword_1000A75C8;
  if (!qword_1000A75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75C8);
  }

  return result;
}

unint64_t sub_1000830FC()
{
  result = qword_1000A75D0;
  if (!qword_1000A75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A75D0);
  }

  return result;
}

uint64_t sub_100083164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_100083250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for ICArchiveModel()
{
  result = qword_1000A7630;
  if (!qword_1000A7630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100083364()
{
  sub_100054660();
  if (v0 <= 0x3F)
  {
    sub_100083460();
    if (v1 <= 0x3F)
    {
      sub_10005C578(319, &unk_1000A7648, &qword_1000A6570, &qword_10008CE60);
      if (v2 <= 0x3F)
      {
        sub_10005C578(319, &qword_1000A6A80, &qword_1000A6588, &qword_10008CE68);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100083460()
{
  if (!qword_1000A7640)
  {
    v0 = sub_1000854E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A7640);
    }
  }
}

uint64_t sub_1000834B0(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A76A0, &qword_10008FF78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100083EC8();
  sub_100085A78();
  LOBYTE(v17[0]) = *v3;
  v18 = 0;
  sub_100040CF8();
  sub_1000858D8();
  if (!v2)
  {
    v11 = *(v3 + 8);
    LOBYTE(v17[0]) = 1;
    sub_1000858C8();
    v12 = type metadata accessor for ICArchiveModel();
    v13 = v12[6];
    LOBYTE(v17[0]) = 2;
    sub_1000848B8();
    sub_100084120(&qword_1000A5630, &type metadata accessor for Date);
    sub_100085888();
    v14 = (v3 + v12[7]);
    v15 = v14[1];
    v17[0] = *v14;
    v17[1] = v15;
    v17[2] = v14[2];
    v18 = 3;
    sub_100084030();
    sub_100085888();
    *&v17[0] = *(v3 + v12[8]);
    v18 = 4;
    sub_100005740(&qword_1000A6570, &qword_10008CE60);
    sub_100084084(&qword_1000A6578, &qword_1000A6580);
    sub_100085888();
    *&v17[0] = *(v3 + v12[9]);
    v18 = 5;
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    sub_100041558(&qword_1000A6590);
    sub_100085888();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100083808@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v37 = &v31 - v5;
  v38 = sub_100005740(&qword_1000A7688, &qword_10008FF70);
  v36 = *(v38 - 8);
  v6 = *(v36 + 64);
  __chkstk_darwin(v38);
  v8 = &v31 - v7;
  v9 = type metadata accessor for ICArchiveModel();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 0;
  *(v13 + 1) = 1;
  v14 = v10[8];
  sub_1000848A8();
  v15 = sub_1000848B8();
  (*(*(v15 - 8) + 56))(&v13[v14], 0, 1, v15);
  v16 = &v13[v10[9]];
  *v16 = xmmword_10008B800;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  v17 = v10[10];
  *&v13[v17] = 0;
  v18 = v10[11];
  v41 = v13;
  *&v13[v18] = 0;
  v19 = a1;
  v20 = a1[3];
  v21 = a1[4];
  v42 = v19;
  sub_10000626C(v19, v20);
  sub_100083EC8();
  v39 = v8;
  v22 = v40;
  sub_100085A68();
  if (v22)
  {
    v23 = v41;
  }

  else
  {
    v33 = v17;
    v34 = v16;
    v40 = v14;
    v25 = v36;
    v24 = v37;
    v32 = v18;
    v46 = 0;
    sub_100041428();
    v26 = v38;
    sub_100085828();
    v23 = v41;
    *v41 = v43;
    LOBYTE(v43) = 1;
    *(v23 + 8) = sub_100085818();
    LOBYTE(v43) = 2;
    sub_100084120(&qword_1000A55F8, &type metadata accessor for Date);
    sub_1000857D8();
    sub_100040A94(v24, v23 + v40);
    v46 = 3;
    sub_100083F78();
    sub_1000857D8();
    v28 = v44;
    v29 = v34;
    *v34 = v43;
    *(v29 + 1) = v28;
    *(v29 + 2) = v45;
    sub_100005740(&qword_1000A6570, &qword_10008CE60);
    v46 = 4;
    sub_100084084(&qword_1000A65B0, &qword_1000A65B8);
    sub_1000857D8();
    *(v23 + v33) = v43;
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    v46 = 5;
    sub_100041558(&qword_1000A65C0);
    v30 = v39;
    sub_1000857D8();
    (*(v25 + 8))(v30, v26);
    *(v23 + v32) = v43;
    sub_100083FCC(v23, v35);
  }

  sub_100006304(v42);
  return sub_100083F1C(v23);
}

uint64_t sub_100083D28()
{
  v1 = *v0;
  v2 = 0x6E65644965707974;
  v3 = 0x4264657461657263;
  v4 = 1936154996;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697369766572;
  if (v1 != 1)
  {
    v5 = 0x4164657461657263;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100083DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100084280(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100083E20(uint64_t a1)
{
  v2 = sub_100083EC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100083E5C(uint64_t a1)
{
  v2 = sub_100083EC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100083EC8()
{
  result = qword_1000A7690;
  if (!qword_1000A7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7690);
  }

  return result;
}

uint64_t sub_100083F1C(uint64_t a1)
{
  v2 = type metadata accessor for ICArchiveModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100083F78()
{
  result = qword_1000A7698;
  if (!qword_1000A7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7698);
  }

  return result;
}

uint64_t sub_100083FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICArchiveModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100084030()
{
  result = qword_1000A76A8;
  if (!qword_1000A76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A76A8);
  }

  return result;
}

uint64_t sub_100084084(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A6570, &qword_10008CE60);
    sub_100084120(a2, _s3TagVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100084120(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10008417C()
{
  result = qword_1000A76B0;
  if (!qword_1000A76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A76B0);
  }

  return result;
}

unint64_t sub_1000841D4()
{
  result = qword_1000A76B8;
  if (!qword_1000A76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A76B8);
  }

  return result;
}

unint64_t sub_10008422C()
{
  result = qword_1000A76C0;
  if (!qword_1000A76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A76C0);
  }

  return result;
}

uint64_t sub_100084280(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4264657461657263 && a2 == 0xE900000000000079 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100086EF0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}